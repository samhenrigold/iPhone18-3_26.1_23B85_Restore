uint64_t sub_23B5AB490@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

unint64_t sub_23B5AB508()
{
  v1 = 0x65636976726573;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x616D726F66726570;
  }

  if (*v0)
  {
    v1 = 0x73656369766564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23B5AB594@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23B5B3E98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23B5AB6F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDC0, &qword_23B5DD0A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23B5AB76C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDC0, &qword_23B5DD0A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23B5AB7F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B5AB828()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_23B5D8468();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_23B5AB994()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B5AB9DC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_23B5ABA0C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_23B5ABAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WAEndpoint(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for WAPerformanceReport(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5ABB98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WAEndpoint(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for WAPerformanceReport(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5ABCC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WAPublisherListener.Devices(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23B5ABD70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WAPublisherListener.Devices(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B5ABE74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WASubscriberBrowser.Devices(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23B5ABF20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WASubscriberBrowser.Devices(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B5ABFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B5D8448();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23B5D8AA8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_23B5AC100(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23B5D8448();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_23B5D8AA8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23B5AC208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23B5D84D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23B5AC2B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_23B5D84D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23B5AC4E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23B5D84B8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_23B5D84A8();
}

uint64_t sub_23B5AC560()
{
  sub_23B5D8A08();

  v0 = objc_opt_self();
  v1 = [v0 processInfo];
  v2 = [v1 processName];

  v3 = sub_23B5D86B8();
  v5 = v4;

  MEMORY[0x23EE9F750](v3, v5);

  MEMORY[0x23EE9F750](10272, 0xE200000000000000);
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v8 = sub_23B5D86B8();
    v10 = v9;
  }

  else
  {
    v10 = 0x800000023B5DEED0;
    v8 = 0xD000000000000011;
  }

  MEMORY[0x23EE9F750](v8, v10);

  MEMORY[0x23EE9F750](0x203A4449505B2029, 0xE800000000000000);
  v11 = [v0 processInfo];
  [v11 processIdentifier];

  v12 = sub_23B5D8C58();
  MEMORY[0x23EE9F750](v12);

  result = MEMORY[0x23EE9F750](23901, 0xE200000000000000);
  qword_27E15D498 = 91;
  unk_27E15D4A0 = 0xE100000000000000;
  return result;
}

void sub_23B5AC7A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{

  oslog = sub_23B5D8498();
  v6 = a3();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v11 = v8;
    sub_23B5D8A08();

    MEMORY[0x23EE9F750](a1, a2);
    MEMORY[0x23EE9F750](32, 0xE100000000000000);
    if (qword_27E15C310 != -1)
    {
      swift_once();
    }

    MEMORY[0x23EE9F750](qword_27E15D498, unk_27E15D4A0);
    v9 = sub_23B5AC96C(0x7261774169466957, 0xEB00000000203A65, &v11);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_23B5AA000, oslog, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EEA0310](v8, -1, -1);
    MEMORY[0x23EEA0310](v7, -1, -1);
  }
}

unint64_t sub_23B5AC96C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23B5ACA38(v11, 0, 0, 1, a1, a2);
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
    sub_23B5ACF60(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23B5ACA38(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23B5ACB44(a5, a6);
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
    result = sub_23B5D8A48();
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

void *sub_23B5ACB44(uint64_t a1, unint64_t a2)
{
  v3 = sub_23B5ACB90(a1, a2);
  sub_23B5ACCC0(&unk_284E1DB80);
  return v3;
}

void *sub_23B5ACB90(uint64_t a1, unint64_t a2)
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

  v6 = sub_23B5ACDAC(v5, 0);
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

  result = sub_23B5D8A48();
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
        v10 = sub_23B5D8758();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23B5ACDAC(v10, 0);
        result = sub_23B5D89D8();
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

uint64_t sub_23B5ACCC0(uint64_t result)
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

  result = sub_23B5ACE20(result, v11, 1, v3);
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

void *sub_23B5ACDAC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C3B8, &qword_23B5D95C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23B5ACE20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C3B8, &qword_23B5D95C8);
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

uint64_t sub_23B5ACF60(uint64_t a1, uint64_t a2)
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

uint64_t sub_23B5AD020(uint64_t a1)
{
  v2 = sub_23B5ADC64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5AD05C(uint64_t a1)
{
  v2 = sub_23B5ADC64();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5AD098()
{
  v1 = 0x64657463656C6573;
  if (*v0 != 2)
  {
    v1 = 0x676E69686374616DLL;
  }

  v2 = 0xD000000000000010;
  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_23B5AD118@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23B5B3D24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23B5AD140(uint64_t a1)
{
  v2 = sub_23B5ADACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5AD17C(uint64_t a1)
{
  v2 = sub_23B5ADACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5AD1CC(uint64_t a1)
{
  v2 = sub_23B5ADB20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5AD208(uint64_t a1)
{
  v2 = sub_23B5ADB20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5AD244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23B5D8C88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23B5AD2C4(uint64_t a1)
{
  v2 = sub_23B5ADBBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5AD300(uint64_t a1)
{
  v2 = sub_23B5ADBBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5AD33C(uint64_t a1)
{
  v2 = sub_23B5ADC10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5AD378(uint64_t a1)
{
  v2 = sub_23B5ADC10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WADevicesAgentInterface.Devices.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C420, &unk_23B5D95D0);
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v43 = &v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C428, &qword_23B5DDF80);
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C430, &qword_23B5D95E0);
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v37 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C438, &qword_23B5D95E8);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C440, &qword_23B5D95F0);
  v34 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for WADevicesAgentInterface.Devices(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C448, &qword_23B5D95F8);
  v47 = *(v17 - 8);
  v48 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5ADACC();
  sub_23B5D8D78();
  sub_23B5AF2EC(v46, v16, type metadata accessor for WADevicesAgentInterface.Devices);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v50 = 0;
      sub_23B5ADC64();
      v26 = v48;
      sub_23B5D8BD8();
      (*(v34 + 8))(v13, v11);
    }

    else
    {
      v51 = 1;
      sub_23B5ADC10();
      v26 = v48;
      sub_23B5D8BD8();
      (*(v35 + 8))(v10, v36);
    }

    return (*(v47 + 8))(v19, v26);
  }

  else if (EnumCaseMultiPayload)
  {
    v27 = v40;
    v28 = v41;
    v29 = v42;
    (*(v41 + 32))(v40, v16, v42);
    v53 = 3;
    sub_23B5ADB20();
    v30 = v43;
    v31 = v48;
    sub_23B5D8BD8();
    sub_23B5B2774(&qword_27E15C460, &qword_27E15C428, &qword_23B5DDF80, MEMORY[0x277CC9B48]);
    v32 = v45;
    sub_23B5D8C28();
    (*(v44 + 8))(v30, v32);
    (*(v28 + 8))(v27, v29);
    return (*(v47 + 8))(v19, v31);
  }

  else
  {
    v21 = *v16;
    v52 = 2;
    sub_23B5ADBBC();
    v22 = v37;
    v23 = v48;
    sub_23B5D8BD8();
    v49 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C470, &qword_23B5D9600);
    sub_23B5AE614(&qword_27E15C478, MEMORY[0x277D84C60], MEMORY[0x277D83B50]);
    v24 = v39;
    sub_23B5D8C28();
    (*(v38 + 8))(v22, v24);
    (*(v47 + 8))(v19, v23);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23B5ADACC()
{
  result = qword_27E15C450;
  if (!qword_27E15C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C450);
  }

  return result;
}

unint64_t sub_23B5ADB20()
{
  result = qword_27E15C458;
  if (!qword_27E15C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C458);
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

unint64_t sub_23B5ADBBC()
{
  result = qword_27E15C468;
  if (!qword_27E15C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C468);
  }

  return result;
}

unint64_t sub_23B5ADC10()
{
  result = qword_27E15C480;
  if (!qword_27E15C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C480);
  }

  return result;
}

unint64_t sub_23B5ADC64()
{
  result = qword_27E15C488;
  if (!qword_27E15C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C488);
  }

  return result;
}

uint64_t WADevicesAgentInterface.Devices.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C490, &qword_23B5D9608);
  v61 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v66 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C498, &qword_23B5D9610);
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v63 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C4A0, &qword_23B5D9618);
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x28223BE20](v6);
  v65 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C4A8, &qword_23B5D9620);
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v62 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C4B0, &qword_23B5D9628);
  v64 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v13 = type metadata accessor for WADevicesAgentInterface.Devices(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v50 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  v22 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_23B5ADACC();
  v23 = v68;
  sub_23B5D8D68();
  if (!v23)
  {
    v50 = v19;
    v51 = v16;
    v24 = v65;
    v25 = v66;
    v52 = v21;
    v53 = v13;
    v26 = v64;
    v27 = v67;
    v68 = v10;
    v28 = v12;
    v29 = sub_23B5D8BC8();
    v30 = v29;
    v31 = *(v29 + 16);
    if (!v31 || ((v32 = *(v29 + 32), v31 == 1) ? (v33 = v32 == 4) : (v33 = 1), v33))
    {
      v34 = sub_23B5D8A38();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C4B8, &qword_23B5D9630);
      *v36 = v53;
      v37 = v68;
      sub_23B5D8B48();
      sub_23B5D8A28();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v26 + 8))(v28, v37);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v29 + 32) > 1u)
      {
        if (v32 == 2)
        {
          v73 = 2;
          sub_23B5ADBBC();
          v41 = v68;
          sub_23B5D8B38();
          v66 = v12;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C470, &qword_23B5D9600);
          sub_23B5AE614(&qword_27E15C4C8, MEMORY[0x277D84C88], MEMORY[0x277D83B70]);
          v44 = v60;
          v45 = v63;
          sub_23B5D8B98();
          (*(v59 + 8))(v45, v44);
          (*(v26 + 8))(v66, v41);
          swift_unknownObjectRelease();
          v48 = v50;
          *v50 = v70;
          swift_storeEnumTagMultiPayload();
          v49 = v48;
        }

        else
        {
          v74 = 3;
          sub_23B5ADB20();
          sub_23B5D8B38();
          v65 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C428, &qword_23B5DDF80);
          sub_23B5B2774(&qword_27E15C4C0, &qword_27E15C428, &qword_23B5DDF80, MEMORY[0x277CC9B50]);
          v46 = v51;
          v47 = v58;
          sub_23B5D8B98();
          (*(v61 + 8))(v25, v47);
          (*(v26 + 8))(v28, v68);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v49 = v46;
        }

        v43 = v52;
        sub_23B5AE5B0(v49, v52);
      }

      else
      {
        if (*(v29 + 32))
        {
          v72 = 1;
          sub_23B5ADC10();
          v42 = v68;
          sub_23B5D8B38();
          (*(v56 + 8))(v24, v57);
          (*(v26 + 8))(v28, v42);
        }

        else
        {
          v71 = 0;
          sub_23B5ADC64();
          v39 = v62;
          v40 = v68;
          sub_23B5D8B38();
          (*(v54 + 8))(v39, v55);
          (*(v26 + 8))(v12, v40);
        }

        swift_unknownObjectRelease();
        v43 = v52;
        swift_storeEnumTagMultiPayload();
      }

      sub_23B5AE5B0(v43, v27);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v69);
}

uint64_t sub_23B5AE5B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WADevicesAgentInterface.Devices(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B5AE614(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E15C470, &qword_23B5D9600);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B5AE680()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 15;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_23B5AE6B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_23B5AE6E0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23B5AE714()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WABrowserAgentInterface.DescriptorToAgent.service.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t WABrowserAgentInterface.DescriptorToAgent.performanceMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WABrowserAgentInterface.DescriptorToAgent(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_23B5AE940(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_23B5AEA24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B5AEA6C(uint64_t a1)
{
  v2 = sub_23B5AED60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5AEAA8(uint64_t a1)
{
  v2 = sub_23B5AED60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WABrowserAgentInterface.DescriptorToAgent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C4E0, &qword_23B5D9638);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5AED60();
  sub_23B5D8D78();
  v9 = v3[1];
  *&v15 = *v3;
  *(&v15 + 1) = v9;
  v14 = 0;
  sub_23B5AEDB4();

  sub_23B5D8C28();
  if (v2)
  {
  }

  else
  {

    v10 = type metadata accessor for WABrowserAgentInterface.DescriptorToAgent(0);
    v14 = 1;
    type metadata accessor for WADevicesAgentInterface.Devices(0);
    sub_23B5AEA24(&qword_27E15C4F8, type metadata accessor for WADevicesAgentInterface.Devices, &protocol conformance descriptor for WADevicesAgentInterface.Devices);
    sub_23B5D8C28();
    v15 = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_23B5D8C28();
    LOBYTE(v15) = *(v3 + *(v10 + 28));
    v13 = 3;
    sub_23B5AEE08();
    sub_23B5D8C28();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_23B5AED60()
{
  result = qword_27E15C4E8;
  if (!qword_27E15C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C4E8);
  }

  return result;
}

unint64_t sub_23B5AEDB4()
{
  result = qword_27E15C4F0;
  if (!qword_27E15C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C4F0);
  }

  return result;
}

unint64_t sub_23B5AEE08()
{
  result = qword_27E15C500;
  if (!qword_27E15C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C500);
  }

  return result;
}

uint64_t WABrowserAgentInterface.DescriptorToAgent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = type metadata accessor for WADevicesAgentInterface.Devices(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C508, &qword_23B5D9640);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for WABrowserAgentInterface.DescriptorToAgent(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5AED60();
  v22 = v8;
  v12 = v23;
  sub_23B5D8D68();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = v20;
  v23 = v9;
  v14 = v11;
  LOBYTE(v24) = 0;
  sub_23B5AF244();
  sub_23B5D8B98();
  v15 = v26;
  *v11 = v25;
  v11[1] = v15;
  v29 = 1;
  sub_23B5AEA24(&qword_27E15C518, type metadata accessor for WADevicesAgentInterface.Devices, &protocol conformance descriptor for WADevicesAgentInterface.Devices);
  sub_23B5D8B98();
  v16 = v23;
  sub_23B5AE5B0(v5, v14 + *(v23 + 20));
  v28 = 2;
  sub_23B5D8B98();
  *(v14 + *(v16 + 24)) = v24;
  v27 = 3;
  sub_23B5AF298();
  sub_23B5D8B98();
  (*(v13 + 8))(v22, v21);
  *(v14 + *(v16 + 28)) = v28;
  sub_23B5AF2EC(v14, v19, type metadata accessor for WABrowserAgentInterface.DescriptorToAgent);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23B5AF354(v14, type metadata accessor for WABrowserAgentInterface.DescriptorToAgent);
}

unint64_t sub_23B5AF244()
{
  result = qword_27E15C510;
  if (!qword_27E15C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C510);
  }

  return result;
}

unint64_t sub_23B5AF298()
{
  result = qword_27E15C520;
  if (!qword_27E15C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C520);
  }

  return result;
}

uint64_t sub_23B5AF2EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B5AF354(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WABrowserAgentInterface.AgentToEndpoint.service.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t WABrowserAgentInterface.AgentToEndpoint.device.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v9 = *(v1 + 48);
  v10 = v2;
  v11 = *(v1 + 80);
  v3 = v11;
  v4 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_23B5AF43C(v8, v7);
}

__n128 WABrowserAgentInterface.AgentToEndpoint.init(service:device:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  *(a3 + 8) = v3;
  v4 = *(a2 + 48);
  *(a3 + 48) = *(a2 + 32);
  *(a3 + 64) = v4;
  *(a3 + 80) = *(a2 + 64);
  result = *(a2 + 16);
  *(a3 + 16) = *a2;
  *(a3 + 32) = result;
  return result;
}

void *WABrowserAgentInterface.AgentToEndpoint.encode()()
{
  v14 = *MEMORY[0x277D85DE8];
  sub_23B5D8318();
  swift_allocObject();
  v2 = sub_23B5D8308();
  v3 = *(v0 + 48);
  v12[2] = *(v0 + 32);
  v12[3] = v3;
  v12[4] = *(v0 + 64);
  v13 = *(v0 + 80);
  v4 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v4;
  sub_23B5AF638();
  v5 = sub_23B5D82F8();
  v7 = v6;

  if (!v1)
  {
    v8 = sub_23B5D8418();
    *&v12[0] = 0;
    v9 = [v8 compressedDataUsingAlgorithm:3 error:v12];

    v10 = *&v12[0];
    if (v9)
    {
      v2 = sub_23B5D8428();
      sub_23B5AE940(v5, v7);
    }

    else
    {
      v2 = v10;
      sub_23B5D83E8();

      swift_willThrow();
      sub_23B5AE940(v5, v7);
    }
  }

  return v2;
}

unint64_t sub_23B5AF638()
{
  result = qword_27E15C528;
  if (!qword_27E15C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C528);
  }

  return result;
}

uint64_t static WABrowserAgentInterface.AgentToEndpoint.decode(from:)(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23B5D8418();
  v12[0] = 0;
  v3 = [v2 decompressedDataUsingAlgorithm:3 error:v12];

  v4 = v12[0];
  if (v3)
  {
    sub_23B5D82E8();
    swift_allocObject();
    v5 = v4;
    sub_23B5D82D8();
    v6 = v3;
    v7 = sub_23B5D8428();
    v9 = v8;

    sub_23B5AF7DC();
    sub_23B5D82C8();
    sub_23B5AE940(v7, v9);
  }

  else
  {
    v11 = v12[0];
    sub_23B5D83E8();

    return swift_willThrow();
  }
}

unint64_t sub_23B5AF7DC()
{
  result = qword_27E15C530;
  if (!qword_27E15C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C530);
  }

  return result;
}

uint64_t sub_23B5AF830()
{
  v1 = *v0;
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](v1);
  return sub_23B5D8D58();
}

uint64_t sub_23B5AF878(uint64_t a1)
{
  v2 = *v1;
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](v2);
  return sub_23B5D8D58();
}

uint64_t sub_23B5AF8BC()
{
  if (*v0)
  {
    return 0x656369766564;
  }

  else
  {
    return 0x65636976726573;
  }
}

uint64_t sub_23B5AF8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
  if (v6 || (sub_23B5D8C88() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23B5D8C88();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23B5AF9CC(uint64_t a1)
{
  v2 = sub_23B5AFC88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5AFA08(uint64_t a1)
{
  v2 = sub_23B5AFC88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WABrowserAgentInterface.AgentToEndpoint.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C538, &qword_23B5D9648);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 4);
  v23 = *(v1 + 3);
  v24 = v9;
  v25 = v1[10];
  v10 = *(v1 + 2);
  v21 = *(v1 + 1);
  v22 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5AFC88();

  sub_23B5D8D78();
  *&v16 = v7;
  *(&v16 + 1) = v8;
  LOBYTE(v14[0]) = 0;
  sub_23B5AEDB4();
  v11 = v13[1];
  sub_23B5D8C28();

  if (!v11)
  {
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v16 = v21;
    v17 = v22;
    v26 = 1;
    sub_23B5AF43C(&v21, v14);
    sub_23B5AFCDC();
    sub_23B5D8C28();
    v14[2] = v18;
    v14[3] = v19;
    v15 = v20;
    v14[1] = v17;
    v14[0] = v16;
    sub_23B5AFD30(v14);
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23B5AFC88()
{
  result = qword_27E15C540;
  if (!qword_27E15C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C540);
  }

  return result;
}

unint64_t sub_23B5AFCDC()
{
  result = qword_27E15C548;
  if (!qword_27E15C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C548);
  }

  return result;
}

uint64_t WABrowserAgentInterface.AgentToEndpoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C550, &qword_23B5D9650);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5AFC88();
  sub_23B5D8D68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  v9 = v39;
  LOBYTE(v19[0]) = 0;
  sub_23B5AF244();
  sub_23B5D8B98();
  v10 = v22;
  v18 = v21;
  v28 = 1;
  sub_23B5B000C();
  sub_23B5D8B98();
  (*(v8 + 8))(v7, v4);
  v11 = v31;
  v12 = v32;
  v36 = v31;
  v37 = v32;
  v13 = v33;
  v38 = v33;
  v14 = v29;
  v34 = v29;
  v35 = v30;
  v15 = v18;
  *&v19[0] = v18;
  *(&v19[0] + 1) = v10;
  v19[3] = v31;
  v19[4] = v32;
  v20 = v33;
  v19[1] = v29;
  v19[2] = v30;
  *(v9 + 32) = v30;
  *(v9 + 48) = v11;
  *(v9 + 64) = v12;
  *(v9 + 80) = v13;
  *v9 = v19[0];
  *(v9 + 16) = v14;
  sub_23B5B0060(v19, &v21);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v21 = v15;
  v22 = v10;
  v25 = v36;
  v26 = v37;
  v27 = v38;
  v24 = v35;
  v23 = v34;
  return sub_23B5B0098(&v21);
}

unint64_t sub_23B5B000C()
{
  result = qword_27E15C558;
  if (!qword_27E15C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C558);
  }

  return result;
}

uint64_t sub_23B5B0184(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WAListenerAgentInterface.DescriptorToAgent.performanceMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WAListenerAgentInterface.DescriptorToAgent(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_23B5B0250@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t (*a6)(void)@<X5>, void *a7@<X8>)
{
  v11 = a1[1];
  v12 = *a5;
  *a7 = *a1;
  a7[1] = v11;
  v13 = a6(0);
  result = sub_23B5AE5B0(a2, a7 + v13[5]);
  v15 = (a7 + v13[6]);
  *v15 = a3;
  v15[1] = a4;
  *(a7 + v13[7]) = v12;
  return result;
}

uint64_t _s9WiFiAware23WABrowserAgentInterfaceO012DescriptorToE0V9OperationO9hashValueSivg_0()
{
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](0);
  return sub_23B5D8D58();
}

unint64_t *sub_23B5B03C4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  sub_23B5D8318();
  swift_allocObject();
  sub_23B5D8308();
  a1(0);
  sub_23B5AEA24(a2, a3, a4);
  v9 = sub_23B5D82F8();
  v11 = v10;

  if (!v4)
  {
    v12 = sub_23B5D8418();
    v16[0] = 0;
    v13 = [v12 compressedDataUsingAlgorithm:3 error:v16];

    v14 = v16[0];
    if (v13)
    {
      a2 = sub_23B5D8428();
      sub_23B5AE940(v9, v11);
    }

    else
    {
      a2 = v14;
      sub_23B5D83E8();

      swift_willThrow();
      sub_23B5AE940(v9, v11);
    }
  }

  return a2;
}

uint64_t sub_23B5B05E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v10 = sub_23B5D8418();
  v20[0] = 0;
  v11 = [v10 decompressedDataUsingAlgorithm:3 error:v20];

  v12 = v20[0];
  if (v11)
  {
    sub_23B5D82E8();
    swift_allocObject();
    v13 = v12;
    sub_23B5D82D8();
    a3(0);
    v14 = v11;
    v15 = sub_23B5D8428();
    v17 = v16;

    sub_23B5AEA24(a4, a5, a6);
    sub_23B5D82C8();
    sub_23B5AE940(v15, v17);
  }

  else
  {
    v19 = v20[0];
    sub_23B5D83E8();

    return swift_willThrow();
  }
}

uint64_t sub_23B5B076C(uint64_t a1)
{
  v2 = sub_23B5B0A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B07A8(uint64_t a1)
{
  v2 = sub_23B5B0A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAListenerAgentInterface.DescriptorToAgent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C570, &qword_23B5D9658);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5B0A60();
  sub_23B5D8D78();
  v9 = v3[1];
  *&v15 = *v3;
  *(&v15 + 1) = v9;
  v14 = 0;
  sub_23B5B0AB4();

  sub_23B5D8C28();
  if (v2)
  {
  }

  else
  {

    v10 = type metadata accessor for WAListenerAgentInterface.DescriptorToAgent(0);
    v14 = 1;
    type metadata accessor for WADevicesAgentInterface.Devices(0);
    sub_23B5AEA24(&qword_27E15C4F8, type metadata accessor for WADevicesAgentInterface.Devices, &protocol conformance descriptor for WADevicesAgentInterface.Devices);
    sub_23B5D8C28();
    v15 = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_23B5D8C28();
    LOBYTE(v15) = *(v3 + *(v10 + 28));
    v13 = 3;
    sub_23B5AEE08();
    sub_23B5D8C28();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_23B5B0A60()
{
  result = qword_27E15C578;
  if (!qword_27E15C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C578);
  }

  return result;
}

unint64_t sub_23B5B0AB4()
{
  result = qword_27E15C580;
  if (!qword_27E15C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C580);
  }

  return result;
}

uint64_t WAListenerAgentInterface.DescriptorToAgent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = type metadata accessor for WADevicesAgentInterface.Devices(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C588, &qword_23B5D9660);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for WAListenerAgentInterface.DescriptorToAgent(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5B0A60();
  v22 = v8;
  v12 = v23;
  sub_23B5D8D68();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = v20;
  v23 = v9;
  v14 = v11;
  LOBYTE(v24) = 0;
  sub_23B5B0EF0();
  sub_23B5D8B98();
  v15 = v26;
  *v11 = v25;
  v11[1] = v15;
  v29 = 1;
  sub_23B5AEA24(&qword_27E15C518, type metadata accessor for WADevicesAgentInterface.Devices, &protocol conformance descriptor for WADevicesAgentInterface.Devices);
  sub_23B5D8B98();
  v16 = v23;
  sub_23B5AE5B0(v5, v14 + *(v23 + 20));
  v28 = 2;
  sub_23B5D8B98();
  *(v14 + *(v16 + 24)) = v24;
  v27 = 3;
  sub_23B5AF298();
  sub_23B5D8B98();
  (*(v13 + 8))(v22, v21);
  *(v14 + *(v16 + 28)) = v28;
  sub_23B5AF2EC(v14, v19, type metadata accessor for WAListenerAgentInterface.DescriptorToAgent);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23B5AF354(v14, type metadata accessor for WAListenerAgentInterface.DescriptorToAgent);
}

unint64_t sub_23B5B0EF0()
{
  result = qword_27E15C590;
  if (!qword_27E15C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C590);
  }

  return result;
}

void *WAParametersAgentInterface.Parameters.encode()()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  sub_23B5D8318();
  swift_allocObject();
  v3 = sub_23B5D8308();
  LOBYTE(v11[0]) = v2;
  sub_23B5B10EC();
  v4 = sub_23B5D82F8();
  v6 = v5;

  if (!v1)
  {
    v7 = sub_23B5D8418();
    v11[0] = 0;
    v8 = [v7 compressedDataUsingAlgorithm:3 error:v11];

    v9 = v11[0];
    if (v8)
    {
      v3 = sub_23B5D8428();
      sub_23B5AE940(v4, v6);
    }

    else
    {
      v3 = v9;
      sub_23B5D83E8();

      swift_willThrow();
      sub_23B5AE940(v4, v6);
    }
  }

  return v3;
}

unint64_t sub_23B5B10EC()
{
  result = qword_27E15C598;
  if (!qword_27E15C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C598);
  }

  return result;
}

uint64_t static WAParametersAgentInterface.Parameters.decode(from:)(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23B5D8418();
  v12[0] = 0;
  v3 = [v2 decompressedDataUsingAlgorithm:3 error:v12];

  v4 = v12[0];
  if (v3)
  {
    sub_23B5D82E8();
    swift_allocObject();
    v5 = v4;
    sub_23B5D82D8();
    v6 = v3;
    v7 = sub_23B5D8428();
    v9 = v8;

    sub_23B5B1290();
    sub_23B5D82C8();
    sub_23B5AE940(v7, v9);
  }

  else
  {
    v11 = v12[0];
    sub_23B5D83E8();

    return swift_willThrow();
  }
}

unint64_t sub_23B5B1290()
{
  result = qword_27E15C5A0;
  if (!qword_27E15C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C5A0);
  }

  return result;
}

uint64_t sub_23B5B12E4(uint64_t a1)
{
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](0);
  return sub_23B5D8D58();
}

uint64_t sub_23B5B1348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x616D726F66726570 && a2 == 0xEF65646F4D65636ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23B5D8C88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23B5B13D8(uint64_t a1)
{
  v2 = sub_23B5B159C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B1414(uint64_t a1)
{
  v2 = sub_23B5B159C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAParametersAgentInterface.Parameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C5A8, &qword_23B5D9668);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5B159C();
  sub_23B5D8D78();
  v10 = v7;
  sub_23B5AEE08();
  sub_23B5D8C28();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23B5B159C()
{
  result = qword_27E15C5B0;
  if (!qword_27E15C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C5B0);
  }

  return result;
}

uint64_t WAParametersAgentInterface.Parameters.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C5B8, &qword_23B5D9670);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5B159C();
  sub_23B5D8D68();
  if (!v2)
  {
    sub_23B5AF298();
    sub_23B5D8B98();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t WAPathAgentInterface.AgentToPath.publishedService.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t WAPathAgentInterface.AgentToPath.subscribedService.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t WAPathAgentInterface.AgentToPath.device.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v9 = *(v1 + 64);
  v10 = v2;
  v11 = *(v1 + 96);
  v3 = v11;
  v4 = *(v1 + 48);
  v8[0] = *(v1 + 32);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_23B5AF43C(v8, v7);
}

uint64_t WAPathAgentInterface.AgentToPath.peerMacAddress.getter()
{
  v1 = *(v0 + 112);
  sub_23B5B182C(v1, *(v0 + 120));
  return v1;
}

void sub_23B5B182C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

__n128 WAPathAgentInterface.AgentToPath.init(publishedService:subscribedService:device:datapathID:peerMacAddress:)@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  *a7 = *a1;
  *(a7 + 16) = v7;
  v8 = *(a3 + 48);
  *(a7 + 64) = *(a3 + 32);
  *(a7 + 80) = v8;
  *(a7 + 96) = *(a3 + 64);
  result = *(a3 + 16);
  *(a7 + 32) = *a3;
  *(a7 + 48) = result;
  *(a7 + 104) = a4;
  *(a7 + 112) = a5;
  *(a7 + 120) = a6;
  return result;
}

void *WAPathAgentInterface.AgentToPath.encode()()
{
  v15 = *MEMORY[0x277D85DE8];
  sub_23B5D8318();
  swift_allocObject();
  v2 = sub_23B5D8308();
  v3 = v0[5];
  v14[4] = v0[4];
  v14[5] = v3;
  v4 = v0[7];
  v14[6] = v0[6];
  v14[7] = v4;
  v5 = v0[1];
  v14[0] = *v0;
  v14[1] = v5;
  v6 = v0[3];
  v14[2] = v0[2];
  v14[3] = v6;
  sub_23B5B1A2C();
  v7 = sub_23B5D82F8();
  v9 = v8;

  if (!v1)
  {
    v10 = sub_23B5D8418();
    *&v14[0] = 0;
    v11 = [v10 compressedDataUsingAlgorithm:3 error:v14];

    v12 = *&v14[0];
    if (v11)
    {
      v2 = sub_23B5D8428();
      sub_23B5AE940(v7, v9);
    }

    else
    {
      v2 = v12;
      sub_23B5D83E8();

      swift_willThrow();
      sub_23B5AE940(v7, v9);
    }
  }

  return v2;
}

unint64_t sub_23B5B1A2C()
{
  result = qword_27E15C5C0;
  if (!qword_27E15C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C5C0);
  }

  return result;
}

uint64_t static WAPathAgentInterface.AgentToPath.decode(from:)(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23B5D8418();
  v12[0] = 0;
  v3 = [v2 decompressedDataUsingAlgorithm:3 error:v12];

  v4 = v12[0];
  if (v3)
  {
    sub_23B5D82E8();
    swift_allocObject();
    v5 = v4;
    sub_23B5D82D8();
    v6 = v3;
    v7 = sub_23B5D8428();
    v9 = v8;

    sub_23B5B1BD0();
    sub_23B5D82C8();
    sub_23B5AE940(v7, v9);
  }

  else
  {
    v11 = v12[0];
    sub_23B5D83E8();

    return swift_willThrow();
  }
}

unint64_t sub_23B5B1BD0()
{
  result = qword_27E15C5C8;
  if (!qword_27E15C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C5C8);
  }

  return result;
}

unint64_t sub_23B5B1C24()
{
  v1 = *v0;
  v2 = 0x656369766564;
  v3 = 0x6874617061746164;
  if (v1 != 3)
  {
    v3 = 0x4163614D72656570;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000010;
  if (*v0)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23B5B1CD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23B5B400C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23B5B1D04(uint64_t a1)
{
  v2 = sub_23B5B20E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B1D40(uint64_t a1)
{
  v2 = sub_23B5B20E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAPathAgentInterface.AgentToPath.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C5D0, &qword_23B5D9678);
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[3];
  *&v20 = v1[2];
  *(&v20 + 1) = v8;
  v9 = *(v1 + 5);
  v35 = *(v1 + 4);
  v36 = v9;
  v37 = v1[12];
  v10 = *(v1 + 3);
  v33 = *(v1 + 2);
  v34 = v10;
  v19 = *(v1 + 104);
  v11 = v1[14];
  v17 = v1[15];
  v18 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5B20E0();

  sub_23B5D8D78();
  *&v28 = v6;
  *(&v28 + 1) = v7;
  LOBYTE(v25[0]) = 0;
  sub_23B5B0AB4();
  v12 = v38;
  sub_23B5D8C08();
  if (v12)
  {

    return (*(v21 + 8))(v5, v3);
  }

  else
  {
    v14 = v18;
    v15 = v21;

    v28 = v20;
    LOBYTE(v25[0]) = 1;
    sub_23B5AEDB4();

    sub_23B5D8C08();

    v30 = v35;
    v31 = v36;
    v32 = v37;
    v28 = v33;
    v29 = v34;
    v27 = 2;
    sub_23B5AF43C(&v33, v25);
    sub_23B5AFCDC();
    sub_23B5D8C28();
    v25[2] = v30;
    v25[3] = v31;
    v26 = v32;
    v25[0] = v28;
    v25[1] = v29;
    sub_23B5AFD30(v25);
    LOBYTE(v23) = 3;
    sub_23B5D8C38();
    v23 = v14;
    v24 = v17;
    v22 = 4;
    sub_23B5B182C(v14, v17);
    sub_23B5B2134();
    sub_23B5D8C28();
    sub_23B5AE940(v23, v24);
    return (*(v15 + 8))(0, v3);
  }
}

unint64_t sub_23B5B20E0()
{
  result = qword_27E15C5D8;
  if (!qword_27E15C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C5D8);
  }

  return result;
}

unint64_t sub_23B5B2134()
{
  result = qword_27E15C5E0;
  if (!qword_27E15C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C5E0);
  }

  return result;
}

uint64_t WAPathAgentInterface.AgentToPath.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C5E8, &qword_23B5D9680);
  v5 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v7 = &v20 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5B20E0();
  sub_23B5D8D68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  LOBYTE(v26) = 0;
  sub_23B5B0EF0();
  sub_23B5D8B78();
  v9 = v34;
  v25 = v35;
  LOBYTE(v26) = 1;
  sub_23B5AF244();
  sub_23B5D8B78();
  v23 = v9;
  v10 = v34;
  v24 = v35;
  v48 = 2;
  sub_23B5B000C();
  sub_23B5D8B98();
  v56 = v51;
  v57 = v52;
  v58 = v53;
  v54 = v49;
  v55 = v50;
  LOBYTE(v34) = 3;
  v22 = sub_23B5D8BA8();
  v46 = 4;
  sub_23B5B2580();
  sub_23B5D8B98();
  (*(v8 + 8))(v7, v59);
  v59 = v47;
  v12 = v24;
  v11 = v25;
  v21 = *(&v47 + 1);
  v13 = v23;
  *&v26 = v23;
  *(&v26 + 1) = v25;
  *&v27 = v10;
  *(&v27 + 1) = v24;
  *&v32 = v58;
  v30 = v56;
  v31 = v57;
  v28 = v54;
  v29 = v55;
  v14 = v22;
  BYTE8(v32) = v22;
  v33 = v47;
  v15 = v27;
  *a2 = v26;
  a2[1] = v15;
  v16 = v29;
  a2[2] = v28;
  a2[3] = v16;
  v17 = v33;
  a2[6] = v32;
  a2[7] = v17;
  v18 = v31;
  a2[4] = v30;
  a2[5] = v18;
  sub_23B5B25D4(&v26, &v34);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v34 = v13;
  v35 = v11;
  v36 = v10;
  v37 = v12;
  v40 = v56;
  v41 = v57;
  v42 = v58;
  v38 = v54;
  v39 = v55;
  v43 = v14;
  v44 = v59;
  v45 = v21;
  return sub_23B5B260C(&v34);
}

unint64_t sub_23B5B2580()
{
  result = qword_27E15C5F0;
  if (!qword_27E15C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C5F0);
  }

  return result;
}

unint64_t sub_23B5B2640()
{
  result = qword_27E15C5F8;
  if (!qword_27E15C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C5F8);
  }

  return result;
}

unint64_t sub_23B5B26DC()
{
  result = qword_27E15C610;
  if (!qword_27E15C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C610);
  }

  return result;
}

uint64_t sub_23B5B2774(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_23B5B2860(uint64_t a1)
{
  sub_23B5B28D4();
  if (v1 <= 0x3F)
  {
    sub_23B5B292C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23B5B28D4()
{
  if (!qword_2814F8940[0])
  {
    v0 = sub_23B5D88E8();
    if (!v1)
    {
      atomic_store(v0, qword_2814F8940);
    }
  }
}

void sub_23B5B292C()
{
  if (!qword_2814F8A88)
  {
    v0 = sub_23B5D8488();
    if (!v1)
    {
      atomic_store(v0, &qword_2814F8A88);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9WiFiAware14WAPairedDeviceV11PairingInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_23B5B2A20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_23B5B2A68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WADevicesAgentInterface.Devices(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WADevicesAgentInterface.Devices(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B5B2C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for WADevicesAgentInterface.Devices(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_23B5B2D78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_23B5B2DD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WAPathAgentInterface.AgentToPath.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WAPathAgentInterface.AgentToPath.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WAParameters(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WAParameters(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23B5B3128(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23B5B31B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23B5B32A8(unsigned int *a1, int a2)
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

_WORD *sub_23B5B32F8(_WORD *result, int a2, int a3)
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

unint64_t sub_23B5B3388()
{
  result = qword_27E15C638;
  if (!qword_27E15C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C638);
  }

  return result;
}

unint64_t sub_23B5B33E0()
{
  result = qword_27E15C640;
  if (!qword_27E15C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C640);
  }

  return result;
}

unint64_t sub_23B5B3438()
{
  result = qword_27E15C648;
  if (!qword_27E15C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C648);
  }

  return result;
}

unint64_t sub_23B5B3490()
{
  result = qword_27E15C650;
  if (!qword_27E15C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C650);
  }

  return result;
}

unint64_t sub_23B5B34E8()
{
  result = qword_27E15C658;
  if (!qword_27E15C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C658);
  }

  return result;
}

unint64_t sub_23B5B3540()
{
  result = qword_27E15C660;
  if (!qword_27E15C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C660);
  }

  return result;
}

unint64_t sub_23B5B3598()
{
  result = qword_27E15C668;
  if (!qword_27E15C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C668);
  }

  return result;
}

unint64_t sub_23B5B35F0()
{
  result = qword_27E15C670;
  if (!qword_27E15C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C670);
  }

  return result;
}

unint64_t sub_23B5B3648()
{
  result = qword_27E15C678;
  if (!qword_27E15C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C678);
  }

  return result;
}

unint64_t sub_23B5B36A0()
{
  result = qword_27E15C680;
  if (!qword_27E15C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C680);
  }

  return result;
}

unint64_t sub_23B5B36F8()
{
  result = qword_27E15C688;
  if (!qword_27E15C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C688);
  }

  return result;
}

unint64_t sub_23B5B3750()
{
  result = qword_27E15C690;
  if (!qword_27E15C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C690);
  }

  return result;
}

unint64_t sub_23B5B37A8()
{
  result = qword_27E15C698;
  if (!qword_27E15C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C698);
  }

  return result;
}

unint64_t sub_23B5B3800()
{
  result = qword_27E15C6A0;
  if (!qword_27E15C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6A0);
  }

  return result;
}

unint64_t sub_23B5B3858()
{
  result = qword_27E15C6A8;
  if (!qword_27E15C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6A8);
  }

  return result;
}

unint64_t sub_23B5B38B0()
{
  result = qword_27E15C6B0;
  if (!qword_27E15C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6B0);
  }

  return result;
}

unint64_t sub_23B5B3908()
{
  result = qword_27E15C6B8;
  if (!qword_27E15C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6B8);
  }

  return result;
}

unint64_t sub_23B5B3960()
{
  result = qword_27E15C6C0;
  if (!qword_27E15C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6C0);
  }

  return result;
}

unint64_t sub_23B5B39B8()
{
  result = qword_27E15C6C8;
  if (!qword_27E15C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6C8);
  }

  return result;
}

unint64_t sub_23B5B3A10()
{
  result = qword_27E15C6D0;
  if (!qword_27E15C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6D0);
  }

  return result;
}

unint64_t sub_23B5B3A68()
{
  result = qword_27E15C6D8;
  if (!qword_27E15C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6D8);
  }

  return result;
}

unint64_t sub_23B5B3AC0()
{
  result = qword_27E15C6E0;
  if (!qword_27E15C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6E0);
  }

  return result;
}

unint64_t sub_23B5B3B18()
{
  result = qword_27E15C6E8;
  if (!qword_27E15C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6E8);
  }

  return result;
}

unint64_t sub_23B5B3B70()
{
  result = qword_27E15C6F0;
  if (!qword_27E15C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6F0);
  }

  return result;
}

unint64_t sub_23B5B3BC8()
{
  result = qword_27E15C6F8;
  if (!qword_27E15C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C6F8);
  }

  return result;
}

unint64_t sub_23B5B3C20()
{
  result = qword_27E15C700;
  if (!qword_27E15C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C700);
  }

  return result;
}

unint64_t sub_23B5B3C78()
{
  result = qword_27E15C708;
  if (!qword_27E15C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C708);
  }

  return result;
}

unint64_t sub_23B5B3CD0()
{
  result = qword_27E15C710;
  if (!qword_27E15C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C710);
  }

  return result;
}

uint64_t sub_23B5B3D24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000023B5DEF20 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023B5DEF40 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xE800000000000000 || (sub_23B5D8C88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69686374616DLL && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_23B5D8C88();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23B5B3E98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
  if (v4 || (sub_23B5D8C88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000 || (sub_23B5D8C88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023B5DEF60 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616D726F66726570 && a2 == 0xEF65646F4D65636ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_23B5D8C88();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23B5B400C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000023B5DEF80 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023B5DEFA0 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (sub_23B5D8C88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6874617061746164 && a2 == 0xEA00000000004449 || (sub_23B5D8C88() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4163614D72656570 && a2 == 0xEE00737365726464)
  {

    return 4;
  }

  else
  {
    v5 = sub_23B5D8C88();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_23B5B4238(uint64_t a1)
{
  v2 = sub_23B5B42F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B4274(uint64_t a1)
{
  v2 = sub_23B5B42F4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B42F4()
{
  result = qword_27E15C720;
  if (!qword_27E15C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C720);
  }

  return result;
}

uint64_t sub_23B5B438C(uint64_t a1)
{
  v2 = sub_23B5B4448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B43C8(uint64_t a1)
{
  v2 = sub_23B5B4448();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B4448()
{
  result = qword_27E15C730;
  if (!qword_27E15C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C730);
  }

  return result;
}

uint64_t sub_23B5B4508(uint64_t a1)
{
  v2 = sub_23B5B45C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B4544(uint64_t a1)
{
  v2 = sub_23B5B45C4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B45C4()
{
  result = qword_27E15C740;
  if (!qword_27E15C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C740);
  }

  return result;
}

uint64_t sub_23B5B465C(uint64_t a1)
{
  v2 = sub_23B5B4718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B4698(uint64_t a1)
{
  v2 = sub_23B5B4718();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B4718()
{
  result = qword_27E15C750;
  if (!qword_27E15C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C750);
  }

  return result;
}

uint64_t sub_23B5B47B0(uint64_t a1)
{
  v2 = sub_23B5B486C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B47EC(uint64_t a1)
{
  v2 = sub_23B5B486C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B486C()
{
  result = qword_27E15C760;
  if (!qword_27E15C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C760);
  }

  return result;
}

uint64_t sub_23B5B4904(uint64_t a1)
{
  v2 = sub_23B5B49C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B4940(uint64_t a1)
{
  v2 = sub_23B5B49C0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B49C0()
{
  result = qword_27E15C770;
  if (!qword_27E15C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C770);
  }

  return result;
}

uint64_t sub_23B5B4A58(uint64_t a1)
{
  v2 = sub_23B5B4B14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B4A94(uint64_t a1)
{
  v2 = sub_23B5B4B14();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B4B14()
{
  result = qword_27E15C780;
  if (!qword_27E15C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C780);
  }

  return result;
}

uint64_t sub_23B5B4BAC(uint64_t a1)
{
  v2 = sub_23B5B4C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B4BE8(uint64_t a1)
{
  v2 = sub_23B5B4C68();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B4C68()
{
  result = qword_27E15C790;
  if (!qword_27E15C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C790);
  }

  return result;
}

uint64_t sub_23B5B4D00(uint64_t a1)
{
  v2 = sub_23B5B4DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B4D3C(uint64_t a1)
{
  v2 = sub_23B5B4DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B4DBC()
{
  result = qword_27E15C7A0;
  if (!qword_27E15C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C7A0);
  }

  return result;
}

uint64_t sub_23B5B4E54(uint64_t a1)
{
  v2 = sub_23B5B4F10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B4E90(uint64_t a1)
{
  v2 = sub_23B5B4F10();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B4F10()
{
  result = qword_27E15C7B0;
  if (!qword_27E15C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C7B0);
  }

  return result;
}

uint64_t sub_23B5B4FA8(uint64_t a1)
{
  v2 = sub_23B5B5064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B4FE4(uint64_t a1)
{
  v2 = sub_23B5B5064();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B5064()
{
  result = qword_27E15C7C0;
  if (!qword_27E15C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C7C0);
  }

  return result;
}

uint64_t sub_23B5B50FC(uint64_t a1)
{
  v2 = sub_23B5B51B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5138(uint64_t a1)
{
  v2 = sub_23B5B51B8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B51B8()
{
  result = qword_27E15C7D0;
  if (!qword_27E15C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C7D0);
  }

  return result;
}

uint64_t sub_23B5B5250(uint64_t a1)
{
  v2 = sub_23B5B530C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B528C(uint64_t a1)
{
  v2 = sub_23B5B530C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B530C()
{
  result = qword_27E15C7E0;
  if (!qword_27E15C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C7E0);
  }

  return result;
}

uint64_t sub_23B5B53A4(uint64_t a1)
{
  v2 = sub_23B5B5460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B53E0(uint64_t a1)
{
  v2 = sub_23B5B5460();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5B5460()
{
  result = qword_27E15C7F0;
  if (!qword_27E15C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C7F0);
  }

  return result;
}

uint64_t sub_23B5B54F8(uint64_t a1)
{
  v2 = sub_23B5B56D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5534(uint64_t a1)
{
  v2 = sub_23B5B56D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B55B4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_23B5D8D78();
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_23B5B56D4()
{
  result = qword_27E15C800;
  if (!qword_27E15C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C800);
  }

  return result;
}

uint64_t sub_23B5B576C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_23B5D8D78();
  return (*(v10 + 8))(v12, v9);
}

WiFiAware::WAError::ErrorCode_optional __swiftcall WAError.ErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 33;
  if ((rawValue + 11999) >= 0xF)
  {
    v2 = 15;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_23B5B599C()
{
  v1 = *v0;
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](v1 - 11999);
  return sub_23B5D8D58();
}

uint64_t sub_23B5B5A1C(uint64_t a1)
{
  v2 = *v1;
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](v2 - 11999);
  return sub_23B5D8D58();
}

unint64_t sub_23B5B5A64(char a1)
{
  result = 0x726F727265;
  switch(a1)
  {
    case 1:
    case 14:
      result = 0xD000000000000014;
      break;
    case 2:
    case 4:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 5:
      v3 = 9;
      goto LABEL_11;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0x6465726961506F6ELL;
      break;
    case 8:
      result = 0x6E49656369766564;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      v3 = 5;
LABEL_11:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B5B5C34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23B5BB7E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23B5B5C68(uint64_t a1)
{
  v2 = sub_23B5B73D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5CA4(uint64_t a1)
{
  v2 = sub_23B5B73D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B5CE0(uint64_t a1)
{
  v2 = sub_23B5B7578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5D1C(uint64_t a1)
{
  v2 = sub_23B5B7578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B5D58(uint64_t a1)
{
  v2 = sub_23B5B74D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5D94(uint64_t a1)
{
  v2 = sub_23B5B74D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B5DD0(uint64_t a1)
{
  v2 = sub_23B5B7428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5E0C(uint64_t a1)
{
  v2 = sub_23B5B7428();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B5E48(uint64_t a1)
{
  v2 = sub_23B5B7818();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5E84(uint64_t a1)
{
  v2 = sub_23B5B7818();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B5EC0(uint64_t a1)
{
  v2 = sub_23B5B7770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5EFC(uint64_t a1)
{
  v2 = sub_23B5B7770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B5F38(uint64_t a1)
{
  v2 = sub_23B5B7C08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5F74(uint64_t a1)
{
  v2 = sub_23B5B7C08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B5FB0(uint64_t a1)
{
  v2 = sub_23B5B7D58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B5FEC(uint64_t a1)
{
  v2 = sub_23B5B7D58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B6028(uint64_t a1)
{
  v2 = sub_23B5B78C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B6064(uint64_t a1)
{
  v2 = sub_23B5B78C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B60A0(uint64_t a1)
{
  v2 = sub_23B5B7B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B60DC(uint64_t a1)
{
  v2 = sub_23B5B7B60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B6118(uint64_t a1)
{
  v2 = sub_23B5B76C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B6154(uint64_t a1)
{
  v2 = sub_23B5B76C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B6190(uint64_t a1)
{
  v2 = sub_23B5B7968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B61CC(uint64_t a1)
{
  v2 = sub_23B5B7968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B6208(uint64_t a1)
{
  v2 = sub_23B5B7A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B6244(uint64_t a1)
{
  v2 = sub_23B5B7A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B6280(uint64_t a1)
{
  v2 = sub_23B5B7AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B62BC(uint64_t a1)
{
  v2 = sub_23B5B7AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B62F8(uint64_t a1)
{
  v2 = sub_23B5B7620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B6334(uint64_t a1)
{
  v2 = sub_23B5B7620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5B6370(uint64_t a1)
{
  v2 = sub_23B5B7CB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5B63AC(uint64_t a1)
{
  v2 = sub_23B5B7CB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAError.encode(to:)(void *a1)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C808, &qword_23B5DA6F8);
  v33[11] = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = v33 - v3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C810, &qword_23B5DA700);
  v33[10] = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = v33 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C818, &qword_23B5DA708);
  v33[9] = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = v33 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C820, &qword_23B5DA710);
  v33[8] = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = v33 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C828, &qword_23B5DA718);
  v33[7] = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = v33 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C830, &qword_23B5DA720);
  v33[6] = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = v33 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C838, &qword_23B5DA728);
  v33[5] = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = v33 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C840, &qword_23B5DA730);
  v33[4] = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = v33 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C848, &qword_23B5DA738);
  v33[3] = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = v33 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C850, &qword_23B5DA740);
  v33[2] = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = v33 - v12;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C858, &qword_23B5DA748);
  v33[1] = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v33 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C860, &qword_23B5DA750);
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = v33 - v14;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C868, &qword_23B5DA758);
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = v33 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C870, &qword_23B5DA760);
  v35 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C878, &qword_23B5DA768);
  v34 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v33 - v20;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C880, &qword_23B5DA770);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v23 = v33 - v22;
  v24 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5B73D4();
  v65 = v23;
  sub_23B5D8D78();
  switch(v24)
  {
    case 1:
      v68 = 1;
      sub_23B5B7CB0();
      v30 = v65;
      v29 = v66;
      sub_23B5D8BD8();
      sub_23B5B7D04();
      sub_23B5D8C28();
      (*(v35 + 8))(v18, v16);
      goto LABEL_18;
    case 2:
      v69 = 2;
      sub_23B5B7C08();
      v28 = v36;
      v30 = v65;
      v29 = v66;
      sub_23B5D8BD8();
      sub_23B5B7C5C();
      v31 = v38;
      sub_23B5D8C28();
      v32 = v74;
      goto LABEL_17;
    case 3:
      v70 = 3;
      sub_23B5B7B60();
      v28 = v39;
      v30 = v65;
      v29 = v66;
      sub_23B5D8BD8();
      sub_23B5B7BB4();
      v31 = v41;
      sub_23B5D8C28();
      v32 = &v75;
      goto LABEL_17;
    case 4:
      v71 = 4;
      sub_23B5B7AB8();
      v28 = v42;
      v30 = v65;
      v29 = v66;
      sub_23B5D8BD8();
      sub_23B5B7B0C();
      v31 = v43;
      sub_23B5D8C28();
      v32 = &v55;
      goto LABEL_17;
    case 5:
      v72 = 5;
      sub_23B5B7A10();
      v28 = v44;
      v30 = v65;
      v29 = v66;
      sub_23B5D8BD8();
      sub_23B5B7A64();
      v31 = v45;
      sub_23B5D8C28();
      v32 = &v56;
      goto LABEL_17;
    case 6:
      v73 = 6;
      sub_23B5B7968();
      v28 = v46;
      v30 = v65;
      v29 = v66;
      sub_23B5D8BD8();
      sub_23B5B79BC();
      v31 = v47;
      sub_23B5D8C28();
      v32 = &v57;
      goto LABEL_17;
    case 7:
      v74[16] = 7;
      sub_23B5B78C0();
      v28 = v48;
      v30 = v65;
      v29 = v66;
      sub_23B5D8BD8();
      sub_23B5B7914();
      v31 = v49;
      sub_23B5D8C28();
      v32 = &v58;
      goto LABEL_17;
    case 8:
      v74[17] = 8;
      sub_23B5B7818();
      v28 = v50;
      v30 = v65;
      v29 = v66;
      sub_23B5D8BD8();
      sub_23B5B786C();
      v31 = v51;
      sub_23B5D8C28();
      v32 = &v59;
      goto LABEL_17;
    case 9:
      v74[18] = 9;
      sub_23B5B7770();
      v28 = v52;
      v30 = v65;
      v29 = v66;
      sub_23B5D8BD8();
      sub_23B5B77C4();
      v31 = v53;
      sub_23B5D8C28();
      v32 = &v60;
      goto LABEL_17;
    case 10:
      v74[19] = 10;
      sub_23B5B76C8();
      v28 = v54;
      v30 = v65;
      v29 = v66;
      sub_23B5D8BD8();
      sub_23B5B771C();
      v31 = v55;
      sub_23B5D8C28();
      v32 = &v61;
      goto LABEL_17;
    case 11:
      v74[20] = 11;
      sub_23B5B7620();
      v28 = v56;
      v30 = v65;
      v29 = v66;
      sub_23B5D8BD8();
      sub_23B5B7674();
      v31 = v57;
      sub_23B5D8C28();
      v32 = &v62;
      goto LABEL_17;
    case 12:
      v74[21] = 12;
      sub_23B5B7578();
      v28 = v58;
      v30 = v65;
      v29 = v66;
      sub_23B5D8BD8();
      sub_23B5B75CC();
      v31 = v59;
      sub_23B5D8C28();
      v32 = &v63;
      goto LABEL_17;
    case 13:
      v74[22] = 13;
      sub_23B5B74D0();
      v28 = v60;
      v30 = v65;
      v29 = v66;
      sub_23B5D8BD8();
      sub_23B5B7524();
      v31 = v61;
      sub_23B5D8C28();
      v32 = &v64;
      goto LABEL_17;
    case 14:
      v74[23] = 14;
      sub_23B5B7428();
      v28 = v62;
      v30 = v65;
      v29 = v66;
      sub_23B5D8BD8();
      sub_23B5B747C();
      v31 = v63;
      sub_23B5D8C28();
      v32 = &v65;
LABEL_17:
      (*(*(v32 - 32) + 8))(v28, v31);
LABEL_18:
      result = (*(v64 + 8))(v30, v29);
      break;
    default:
      v67 = 0;
      sub_23B5B7D58();
      v26 = v65;
      v25 = v66;
      sub_23B5D8BD8();
      sub_23B5B7DAC();
      sub_23B5D8C28();
      (*(v34 + 8))(v21, v19);
      result = (*(v64 + 8))(v26, v25);
      break;
  }

  return result;
}

unint64_t sub_23B5B73D4()
{
  result = qword_27E15C888;
  if (!qword_27E15C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C888);
  }

  return result;
}

unint64_t sub_23B5B7428()
{
  result = qword_27E15C890;
  if (!qword_27E15C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C890);
  }

  return result;
}

unint64_t sub_23B5B747C()
{
  result = qword_27E15C898;
  if (!qword_27E15C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C898);
  }

  return result;
}

unint64_t sub_23B5B74D0()
{
  result = qword_27E15C8A0;
  if (!qword_27E15C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8A0);
  }

  return result;
}

unint64_t sub_23B5B7524()
{
  result = qword_27E15C8A8;
  if (!qword_27E15C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8A8);
  }

  return result;
}

unint64_t sub_23B5B7578()
{
  result = qword_27E15C8B0;
  if (!qword_27E15C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8B0);
  }

  return result;
}

unint64_t sub_23B5B75CC()
{
  result = qword_27E15C8B8;
  if (!qword_27E15C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8B8);
  }

  return result;
}

unint64_t sub_23B5B7620()
{
  result = qword_27E15C8C0;
  if (!qword_27E15C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8C0);
  }

  return result;
}

unint64_t sub_23B5B7674()
{
  result = qword_27E15C8C8;
  if (!qword_27E15C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8C8);
  }

  return result;
}

unint64_t sub_23B5B76C8()
{
  result = qword_27E15C8D0;
  if (!qword_27E15C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8D0);
  }

  return result;
}

unint64_t sub_23B5B771C()
{
  result = qword_27E15C8D8;
  if (!qword_27E15C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8D8);
  }

  return result;
}

unint64_t sub_23B5B7770()
{
  result = qword_27E15C8E0;
  if (!qword_27E15C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8E0);
  }

  return result;
}

unint64_t sub_23B5B77C4()
{
  result = qword_27E15C8E8;
  if (!qword_27E15C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8E8);
  }

  return result;
}

unint64_t sub_23B5B7818()
{
  result = qword_27E15C8F0;
  if (!qword_27E15C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8F0);
  }

  return result;
}

unint64_t sub_23B5B786C()
{
  result = qword_27E15C8F8;
  if (!qword_27E15C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C8F8);
  }

  return result;
}

unint64_t sub_23B5B78C0()
{
  result = qword_27E15C900;
  if (!qword_27E15C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C900);
  }

  return result;
}

unint64_t sub_23B5B7914()
{
  result = qword_27E15C908;
  if (!qword_27E15C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C908);
  }

  return result;
}

unint64_t sub_23B5B7968()
{
  result = qword_27E15C910;
  if (!qword_27E15C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C910);
  }

  return result;
}

unint64_t sub_23B5B79BC()
{
  result = qword_27E15C918;
  if (!qword_27E15C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C918);
  }

  return result;
}

unint64_t sub_23B5B7A10()
{
  result = qword_27E15C920;
  if (!qword_27E15C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C920);
  }

  return result;
}

unint64_t sub_23B5B7A64()
{
  result = qword_27E15C928;
  if (!qword_27E15C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C928);
  }

  return result;
}

unint64_t sub_23B5B7AB8()
{
  result = qword_27E15C930;
  if (!qword_27E15C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C930);
  }

  return result;
}

unint64_t sub_23B5B7B0C()
{
  result = qword_27E15C938;
  if (!qword_27E15C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C938);
  }

  return result;
}

unint64_t sub_23B5B7B60()
{
  result = qword_27E15C940;
  if (!qword_27E15C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C940);
  }

  return result;
}

unint64_t sub_23B5B7BB4()
{
  result = qword_27E15C948;
  if (!qword_27E15C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C948);
  }

  return result;
}

unint64_t sub_23B5B7C08()
{
  result = qword_27E15C950;
  if (!qword_27E15C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C950);
  }

  return result;
}

unint64_t sub_23B5B7C5C()
{
  result = qword_27E15C958;
  if (!qword_27E15C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C958);
  }

  return result;
}

unint64_t sub_23B5B7CB0()
{
  result = qword_27E15C960;
  if (!qword_27E15C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C960);
  }

  return result;
}

unint64_t sub_23B5B7D04()
{
  result = qword_27E15C968;
  if (!qword_27E15C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C968);
  }

  return result;
}

unint64_t sub_23B5B7D58()
{
  result = qword_27E15C970;
  if (!qword_27E15C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C970);
  }

  return result;
}

unint64_t sub_23B5B7DAC()
{
  result = qword_27E15C978;
  if (!qword_27E15C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15C978);
  }

  return result;
}

uint64_t WAError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v105 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C980, &qword_23B5DA778);
  v96 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v110 = &v64 - v3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C988, &qword_23B5DA780);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v109 = &v64 - v4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C990, &qword_23B5DA788);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v104 = &v64 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C998, &qword_23B5DA790);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v103 = &v64 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9A0, &qword_23B5DA798);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v102 = &v64 - v7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9A8, &qword_23B5DA7A0);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v101 = &v64 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9B0, &qword_23B5DA7A8);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v100 = &v64 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9B8, &qword_23B5DA7B0);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v108 = &v64 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9C0, &qword_23B5DA7B8);
  v80 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v99 = &v64 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9C8, &qword_23B5DA7C0);
  v79 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v107 = &v64 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9D0, &qword_23B5DA7C8);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v106 = &v64 - v13;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9D8, &qword_23B5DA7D0);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v98 = &v64 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9E0, &qword_23B5DA7D8);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v97 = &v64 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9E8, &qword_23B5DA7E0);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9F0, &qword_23B5DA7E8);
  v68 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v64 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C9F8, &unk_23B5DA7F0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v64 - v23;
  v25 = a1[3];
  v112 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_23B5B73D4();
  v26 = v111;
  sub_23B5D8D68();
  if (v26)
  {
LABEL_13:
    v47 = v112;
    return __swift_destroy_boxed_opaque_existential_0(v47);
  }

  v65 = v20;
  v64 = v18;
  v66 = v17;
  v28 = v106;
  v27 = v107;
  v29 = v108;
  v30 = v109;
  v67 = 0;
  v31 = v110;
  v111 = v22;
  v32 = sub_23B5D8BC8();
  v33 = (2 * *(v32 + 16)) | 1;
  v113[0] = v32;
  v113[1] = v32 + 32;
  v114 = 0;
  v115 = v33;
  v34 = sub_23B5AE680();
  if (v114 != v115 >> 1)
  {
LABEL_6:
    v40 = sub_23B5D8A38();
    swift_allocError();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C4B8, &qword_23B5D9630);
    *v42 = &type metadata for WAError;
    sub_23B5D8B48();
    sub_23B5D8A28();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
    swift_willThrow();
    (*(v111 + 8))(v24, v21);
LABEL_12:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v35 = v34;
  switch(v34)
  {
    case 0:
      v118 = 0;
      sub_23B5B7D58();
      v36 = v65;
      v37 = v67;
      sub_23B5D8B38();
      if (v37)
      {
        goto LABEL_11;
      }

      sub_23B5B95D0();
      v38 = v64;
      sub_23B5D8B98();
      (*(v68 + 8))(v36, v38);
      (*(v111 + 8))(v24, v21);
      swift_unknownObjectRelease();
      v39 = v112;
      goto LABEL_22;
    case 1:
      v118 = 1;
      sub_23B5B7CB0();
      v29 = v66;
      v56 = v67;
      sub_23B5D8B38();
      if (v56)
      {
        goto LABEL_11;
      }

      sub_23B5B957C();
      v44 = v70;
      sub_23B5D8B98();
      v46 = &v101;
      goto LABEL_19;
    case 2:
      v118 = 2;
      sub_23B5B7C08();
      v29 = v97;
      v53 = v67;
      sub_23B5D8B38();
      if (v53)
      {
        goto LABEL_11;
      }

      sub_23B5B9528();
      v44 = v72;
      sub_23B5D8B98();
      v46 = &v103;
      goto LABEL_19;
    case 3:
      v118 = 3;
      sub_23B5B7B60();
      v29 = v98;
      v54 = v67;
      sub_23B5D8B38();
      if (v54)
      {
        goto LABEL_11;
      }

      sub_23B5B94D4();
      v44 = v74;
      sub_23B5D8B98();
      v46 = &v105;
      goto LABEL_19;
    case 4:
      v118 = 4;
      sub_23B5B7AB8();
      v49 = v67;
      sub_23B5D8B38();
      if (v49)
      {
        goto LABEL_11;
      }

      sub_23B5B9480();
      v50 = v77;
      sub_23B5D8B98();
      (*(v76 + 8))(v28, v50);
      goto LABEL_21;
    case 5:
      v118 = 5;
      sub_23B5B7A10();
      v29 = v27;
      v57 = v67;
      sub_23B5D8B38();
      if (v57)
      {
        goto LABEL_11;
      }

      sub_23B5B942C();
      v44 = v75;
      sub_23B5D8B98();
      v46 = &v111;
      goto LABEL_19;
    case 6:
      v118 = 6;
      sub_23B5B7968();
      v29 = v99;
      v60 = v67;
      sub_23B5D8B38();
      if (v60)
      {
        goto LABEL_11;
      }

      sub_23B5B93D8();
      v44 = v78;
      sub_23B5D8B98();
      v46 = &v112;
      goto LABEL_19;
    case 7:
      v118 = 7;
      sub_23B5B78C0();
      v55 = v67;
      sub_23B5D8B38();
      if (v55)
      {
        goto LABEL_11;
      }

      sub_23B5B9384();
      v44 = v82;
      sub_23B5D8B98();
      v46 = v113;
      goto LABEL_19;
    case 8:
      v118 = 8;
      sub_23B5B7818();
      v29 = v100;
      v62 = v67;
      sub_23B5D8B38();
      if (v62)
      {
        goto LABEL_11;
      }

      sub_23B5B9330();
      v44 = v84;
      sub_23B5D8B98();
      v46 = &v114;
      goto LABEL_19;
    case 9:
      v118 = 9;
      sub_23B5B7770();
      v29 = v101;
      v52 = v67;
      sub_23B5D8B38();
      if (v52)
      {
        goto LABEL_11;
      }

      sub_23B5B92DC();
      v44 = v86;
      sub_23B5D8B98();
      v46 = &v116;
      goto LABEL_19;
    case 10:
      v118 = 10;
      sub_23B5B76C8();
      v29 = v102;
      v61 = v67;
      sub_23B5D8B38();
      if (v61)
      {
        goto LABEL_11;
      }

      sub_23B5B9288();
      v44 = v88;
      sub_23B5D8B98();
      v46 = &v117;
      goto LABEL_19;
    case 11:
      v118 = 11;
      sub_23B5B7620();
      v29 = v103;
      v45 = v67;
      sub_23B5D8B38();
      if (v45)
      {
        goto LABEL_11;
      }

      sub_23B5B9234();
      v44 = v90;
      sub_23B5D8B98();
      v46 = &v119;
      goto LABEL_19;
    case 12:
      v118 = 12;
      sub_23B5B7578();
      v29 = v104;
      v51 = v67;
      sub_23B5D8B38();
      if (v51)
      {
        goto LABEL_11;
      }

      sub_23B5B91E0();
      v44 = v92;
      sub_23B5D8B98();
      v46 = &v120;
LABEL_19:
      v63 = *(v46 - 32);
      goto LABEL_20;
    case 13:
      v118 = 13;
      sub_23B5B74D0();
      v58 = v67;
      sub_23B5D8B38();
      if (v58)
      {
        goto LABEL_11;
      }

      sub_23B5B918C();
      v59 = v95;
      sub_23B5D8B98();
      (*(v94 + 8))(v30, v59);
      goto LABEL_21;
    case 14:
      v118 = 14;
      sub_23B5B7428();
      v29 = v31;
      v43 = v67;
      sub_23B5D8B38();
      if (v43)
      {
LABEL_11:
        (*(v111 + 8))(v24, v21);
        goto LABEL_12;
      }

      sub_23B5B9138();
      v44 = v93;
      sub_23B5D8B98();
      v63 = v96;
LABEL_20:
      (*(v63 + 8))(v29, v44);
LABEL_21:
      v39 = v112;
      (*(v111 + 8))(v24, v21);
      swift_unknownObjectRelease();
LABEL_22:
      *v105 = v35;
      v47 = v39;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0(v47);
}

unint64_t sub_23B5B9138()
{
  result = qword_27E15CA00;
  if (!qword_27E15CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA00);
  }

  return result;
}

unint64_t sub_23B5B918C()
{
  result = qword_27E15CA08;
  if (!qword_27E15CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA08);
  }

  return result;
}

unint64_t sub_23B5B91E0()
{
  result = qword_27E15CA10;
  if (!qword_27E15CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA10);
  }

  return result;
}

unint64_t sub_23B5B9234()
{
  result = qword_27E15CA18;
  if (!qword_27E15CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA18);
  }

  return result;
}

unint64_t sub_23B5B9288()
{
  result = qword_27E15CA20;
  if (!qword_27E15CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA20);
  }

  return result;
}

unint64_t sub_23B5B92DC()
{
  result = qword_27E15CA28;
  if (!qword_27E15CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA28);
  }

  return result;
}

unint64_t sub_23B5B9330()
{
  result = qword_27E15CA30;
  if (!qword_27E15CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA30);
  }

  return result;
}

unint64_t sub_23B5B9384()
{
  result = qword_27E15CA38;
  if (!qword_27E15CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA38);
  }

  return result;
}

unint64_t sub_23B5B93D8()
{
  result = qword_27E15CA40;
  if (!qword_27E15CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA40);
  }

  return result;
}

unint64_t sub_23B5B942C()
{
  result = qword_27E15CA48;
  if (!qword_27E15CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA48);
  }

  return result;
}

unint64_t sub_23B5B9480()
{
  result = qword_27E15CA50;
  if (!qword_27E15CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA50);
  }

  return result;
}

unint64_t sub_23B5B94D4()
{
  result = qword_27E15CA58;
  if (!qword_27E15CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA58);
  }

  return result;
}

unint64_t sub_23B5B9528()
{
  result = qword_27E15CA60;
  if (!qword_27E15CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA60);
  }

  return result;
}

unint64_t sub_23B5B957C()
{
  result = qword_27E15CA68;
  if (!qword_27E15CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA68);
  }

  return result;
}

unint64_t sub_23B5B95D0()
{
  result = qword_27E15CA70;
  if (!qword_27E15CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA70);
  }

  return result;
}

unint64_t sub_23B5B9628()
{
  result = qword_27E15CA78;
  if (!qword_27E15CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA78);
  }

  return result;
}

unint64_t sub_23B5B9680()
{
  result = qword_27E15CA80;
  if (!qword_27E15CA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E15CA88, &qword_23B5DADA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA80);
  }

  return result;
}

unint64_t sub_23B5B96F8()
{
  result = qword_27E15CA90;
  if (!qword_27E15CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WAError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 0xE)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for WAError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23B5B99E0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23B5B9A70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23B5B9D14()
{
  result = qword_27E15CA98;
  if (!qword_27E15CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CA98);
  }

  return result;
}

unint64_t sub_23B5B9D6C()
{
  result = qword_27E15CAA0;
  if (!qword_27E15CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAA0);
  }

  return result;
}

unint64_t sub_23B5B9DC4()
{
  result = qword_27E15CAA8;
  if (!qword_27E15CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAA8);
  }

  return result;
}

unint64_t sub_23B5B9E1C()
{
  result = qword_27E15CAB0;
  if (!qword_27E15CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAB0);
  }

  return result;
}

unint64_t sub_23B5B9E74()
{
  result = qword_27E15CAB8;
  if (!qword_27E15CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAB8);
  }

  return result;
}

unint64_t sub_23B5B9ECC()
{
  result = qword_27E15CAC0;
  if (!qword_27E15CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAC0);
  }

  return result;
}

unint64_t sub_23B5B9F24()
{
  result = qword_27E15CAC8;
  if (!qword_27E15CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAC8);
  }

  return result;
}

unint64_t sub_23B5B9F7C()
{
  result = qword_27E15CAD0;
  if (!qword_27E15CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAD0);
  }

  return result;
}

unint64_t sub_23B5B9FD4()
{
  result = qword_27E15CAD8;
  if (!qword_27E15CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAD8);
  }

  return result;
}

unint64_t sub_23B5BA02C()
{
  result = qword_27E15CAE0;
  if (!qword_27E15CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAE0);
  }

  return result;
}

unint64_t sub_23B5BA084()
{
  result = qword_27E15CAE8;
  if (!qword_27E15CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAE8);
  }

  return result;
}

unint64_t sub_23B5BA0DC()
{
  result = qword_27E15CAF0;
  if (!qword_27E15CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAF0);
  }

  return result;
}

unint64_t sub_23B5BA134()
{
  result = qword_27E15CAF8;
  if (!qword_27E15CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CAF8);
  }

  return result;
}

unint64_t sub_23B5BA18C()
{
  result = qword_27E15CB00;
  if (!qword_27E15CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB00);
  }

  return result;
}

unint64_t sub_23B5BA1E4()
{
  result = qword_27E15CB08;
  if (!qword_27E15CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB08);
  }

  return result;
}

unint64_t sub_23B5BA23C()
{
  result = qword_27E15CB10;
  if (!qword_27E15CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB10);
  }

  return result;
}

unint64_t sub_23B5BA294()
{
  result = qword_27E15CB18;
  if (!qword_27E15CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB18);
  }

  return result;
}

unint64_t sub_23B5BA2EC()
{
  result = qword_27E15CB20;
  if (!qword_27E15CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB20);
  }

  return result;
}

unint64_t sub_23B5BA344()
{
  result = qword_27E15CB28;
  if (!qword_27E15CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB28);
  }

  return result;
}

unint64_t sub_23B5BA39C()
{
  result = qword_27E15CB30;
  if (!qword_27E15CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB30);
  }

  return result;
}

unint64_t sub_23B5BA3F4()
{
  result = qword_27E15CB38;
  if (!qword_27E15CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB38);
  }

  return result;
}

unint64_t sub_23B5BA44C()
{
  result = qword_27E15CB40;
  if (!qword_27E15CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB40);
  }

  return result;
}

unint64_t sub_23B5BA4A4()
{
  result = qword_27E15CB48;
  if (!qword_27E15CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB48);
  }

  return result;
}

unint64_t sub_23B5BA4FC()
{
  result = qword_27E15CB50;
  if (!qword_27E15CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB50);
  }

  return result;
}

unint64_t sub_23B5BA554()
{
  result = qword_27E15CB58;
  if (!qword_27E15CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB58);
  }

  return result;
}

unint64_t sub_23B5BA5AC()
{
  result = qword_27E15CB60;
  if (!qword_27E15CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB60);
  }

  return result;
}

unint64_t sub_23B5BA604()
{
  result = qword_27E15CB68;
  if (!qword_27E15CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB68);
  }

  return result;
}

unint64_t sub_23B5BA65C()
{
  result = qword_27E15CB70;
  if (!qword_27E15CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB70);
  }

  return result;
}

unint64_t sub_23B5BA6B4()
{
  result = qword_27E15CB78;
  if (!qword_27E15CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB78);
  }

  return result;
}

unint64_t sub_23B5BA70C()
{
  result = qword_27E15CB80;
  if (!qword_27E15CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB80);
  }

  return result;
}

unint64_t sub_23B5BA764()
{
  result = qword_27E15CB88;
  if (!qword_27E15CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB88);
  }

  return result;
}

unint64_t sub_23B5BA7BC()
{
  result = qword_27E15CB90;
  if (!qword_27E15CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB90);
  }

  return result;
}

unint64_t sub_23B5BA814()
{
  result = qword_27E15CB98;
  if (!qword_27E15CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CB98);
  }

  return result;
}

unint64_t sub_23B5BA86C()
{
  result = qword_27E15CBA0;
  if (!qword_27E15CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBA0);
  }

  return result;
}

unint64_t sub_23B5BA8C4()
{
  result = qword_27E15CBA8;
  if (!qword_27E15CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBA8);
  }

  return result;
}

unint64_t sub_23B5BA91C()
{
  result = qword_27E15CBB0;
  if (!qword_27E15CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBB0);
  }

  return result;
}

unint64_t sub_23B5BA974()
{
  result = qword_27E15CBB8;
  if (!qword_27E15CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBB8);
  }

  return result;
}

unint64_t sub_23B5BA9CC()
{
  result = qword_27E15CBC0;
  if (!qword_27E15CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBC0);
  }

  return result;
}

unint64_t sub_23B5BAA24()
{
  result = qword_27E15CBC8;
  if (!qword_27E15CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBC8);
  }

  return result;
}

unint64_t sub_23B5BAA7C()
{
  result = qword_27E15CBD0;
  if (!qword_27E15CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBD0);
  }

  return result;
}

unint64_t sub_23B5BAAD4()
{
  result = qword_27E15CBD8;
  if (!qword_27E15CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBD8);
  }

  return result;
}

unint64_t sub_23B5BAB2C()
{
  result = qword_27E15CBE0;
  if (!qword_27E15CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBE0);
  }

  return result;
}

unint64_t sub_23B5BAB84()
{
  result = qword_27E15CBE8;
  if (!qword_27E15CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBE8);
  }

  return result;
}

unint64_t sub_23B5BABDC()
{
  result = qword_27E15CBF0;
  if (!qword_27E15CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBF0);
  }

  return result;
}

unint64_t sub_23B5BAC34()
{
  result = qword_27E15CBF8;
  if (!qword_27E15CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CBF8);
  }

  return result;
}

unint64_t sub_23B5BAC8C()
{
  result = qword_27E15CC00;
  if (!qword_27E15CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC00);
  }

  return result;
}

unint64_t sub_23B5BACE4()
{
  result = qword_27E15CC08;
  if (!qword_27E15CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC08);
  }

  return result;
}

unint64_t sub_23B5BAD3C()
{
  result = qword_27E15CC10;
  if (!qword_27E15CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC10);
  }

  return result;
}

unint64_t sub_23B5BAD94()
{
  result = qword_27E15CC18;
  if (!qword_27E15CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC18);
  }

  return result;
}

unint64_t sub_23B5BADEC()
{
  result = qword_27E15CC20;
  if (!qword_27E15CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC20);
  }

  return result;
}

unint64_t sub_23B5BAE44()
{
  result = qword_27E15CC28;
  if (!qword_27E15CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC28);
  }

  return result;
}

unint64_t sub_23B5BAE9C()
{
  result = qword_27E15CC30;
  if (!qword_27E15CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC30);
  }

  return result;
}

unint64_t sub_23B5BAEF4()
{
  result = qword_27E15CC38;
  if (!qword_27E15CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC38);
  }

  return result;
}

unint64_t sub_23B5BAF4C()
{
  result = qword_27E15CC40;
  if (!qword_27E15CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC40);
  }

  return result;
}

unint64_t sub_23B5BAFA4()
{
  result = qword_27E15CC48;
  if (!qword_27E15CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC48);
  }

  return result;
}

unint64_t sub_23B5BAFFC()
{
  result = qword_27E15CC50;
  if (!qword_27E15CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC50);
  }

  return result;
}

unint64_t sub_23B5BB054()
{
  result = qword_27E15CC58;
  if (!qword_27E15CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC58);
  }

  return result;
}

unint64_t sub_23B5BB0AC()
{
  result = qword_27E15CC60;
  if (!qword_27E15CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC60);
  }

  return result;
}

unint64_t sub_23B5BB104()
{
  result = qword_27E15CC68;
  if (!qword_27E15CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC68);
  }

  return result;
}

unint64_t sub_23B5BB15C()
{
  result = qword_27E15CC70;
  if (!qword_27E15CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC70);
  }

  return result;
}

unint64_t sub_23B5BB1B4()
{
  result = qword_27E15CC78;
  if (!qword_27E15CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC78);
  }

  return result;
}

unint64_t sub_23B5BB20C()
{
  result = qword_27E15CC80;
  if (!qword_27E15CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC80);
  }

  return result;
}

unint64_t sub_23B5BB264()
{
  result = qword_27E15CC88;
  if (!qword_27E15CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC88);
  }

  return result;
}

unint64_t sub_23B5BB2BC()
{
  result = qword_27E15CC90;
  if (!qword_27E15CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC90);
  }

  return result;
}

unint64_t sub_23B5BB314()
{
  result = qword_27E15CC98;
  if (!qword_27E15CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CC98);
  }

  return result;
}

unint64_t sub_23B5BB36C()
{
  result = qword_27E15CCA0;
  if (!qword_27E15CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCA0);
  }

  return result;
}

unint64_t sub_23B5BB3C4()
{
  result = qword_27E15CCA8;
  if (!qword_27E15CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCA8);
  }

  return result;
}

unint64_t sub_23B5BB41C()
{
  result = qword_27E15CCB0;
  if (!qword_27E15CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCB0);
  }

  return result;
}

unint64_t sub_23B5BB474()
{
  result = qword_27E15CCB8;
  if (!qword_27E15CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCB8);
  }

  return result;
}

unint64_t sub_23B5BB4CC()
{
  result = qword_27E15CCC0;
  if (!qword_27E15CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCC0);
  }

  return result;
}

unint64_t sub_23B5BB524()
{
  result = qword_27E15CCC8;
  if (!qword_27E15CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCC8);
  }

  return result;
}

unint64_t sub_23B5BB57C()
{
  result = qword_27E15CCD0;
  if (!qword_27E15CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCD0);
  }

  return result;
}

unint64_t sub_23B5BB5D4()
{
  result = qword_27E15CCD8;
  if (!qword_27E15CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCD8);
  }

  return result;
}

unint64_t sub_23B5BB62C()
{
  result = qword_27E15CCE0;
  if (!qword_27E15CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCE0);
  }

  return result;
}

unint64_t sub_23B5BB684()
{
  result = qword_27E15CCE8;
  if (!qword_27E15CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCE8);
  }

  return result;
}

unint64_t sub_23B5BB6DC()
{
  result = qword_27E15CCF0;
  if (!qword_27E15CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCF0);
  }

  return result;
}

unint64_t sub_23B5BB734()
{
  result = qword_27E15CCF8;
  if (!qword_27E15CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CCF8);
  }

  return result;
}

unint64_t sub_23B5BB78C()
{
  result = qword_27E15CD00;
  if (!qword_27E15CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD00);
  }

  return result;
}

uint64_t sub_23B5BB7E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_23B5D8C88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023B5DEFC0 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023B5DEFE0 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023B5DF000 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023B5DF020 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x800000023B5DF040 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x800000023B5DF060 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6465726961506F6ELL && a2 == 0xEF73656369766544 || (sub_23B5D8C88() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E49656369766564 && a2 == 0xED000064696C6176 || (sub_23B5D8C88() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023B5DF080 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023B5DF0A0 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023B5DF0C0 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023B5DF0E0 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023B5DF100 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023B5DF120 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_23B5D8C88();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

unint64_t sub_23B5BBC90()
{
  result = qword_27E15CD08;
  if (!qword_27E15CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD08);
  }

  return result;
}

uint64_t sub_23B5BBE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7261774169666977 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23B5D8C88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23B5BBF08(uint64_t a1)
{
  v2 = sub_23B5BC1DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5BBF44(uint64_t a1)
{
  v2 = sub_23B5BC1DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5BBF80(uint64_t a1)
{
  v2 = sub_23B5BC230();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5BBFBC(uint64_t a1)
{
  v2 = sub_23B5BC230();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WACapabilities.Feature.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CD10, &qword_23B5DCD30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CD18, &qword_23B5DCD38);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5BC1DC();
  sub_23B5D8D78();
  sub_23B5BC230();
  sub_23B5D8BD8();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_23B5BC1DC()
{
  result = qword_27E15CD20;
  if (!qword_27E15CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD20);
  }

  return result;
}

unint64_t sub_23B5BC230()
{
  result = qword_27E15CD28;
  if (!qword_27E15CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD28);
  }

  return result;
}

uint64_t WACapabilities.Feature.hashValue.getter()
{
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](0);
  return sub_23B5D8D58();
}

uint64_t WACapabilities.Feature.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CD30, &qword_23B5DCD40);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CD38, &unk_23B5DCD48);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5BC1DC();
  sub_23B5D8D68();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_23B5D8BC8();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if (sub_23B5AE6B4() || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_23B5D8A38();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C4B8, &qword_23B5D9630);
    *v16 = &type metadata for WACapabilities.Feature;
    sub_23B5D8B48();
    sub_23B5D8A28();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  sub_23B5BC230();
  sub_23B5D8B38();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_23B5BC664(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CD10, &qword_23B5DCD30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CD18, &qword_23B5DCD38);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5BC1DC();
  sub_23B5D8D78();
  sub_23B5BC230();
  sub_23B5D8BD8();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t static WACapabilities.supportedFeatures.getter()
{
  if (qword_27E15C318 != -1)
  {
    swift_once();
  }

  if (!qword_27E15CD98)
  {
    return MEMORY[0x277D84FA0];
  }

  v0 = [qword_27E15CD98 supportedFeatures];
  sub_23B5BCA08();
  sub_23B5BCA54();
  v1 = sub_23B5D88C8();

  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v3 = sub_23B5BCAAC(v2, v1);

  if ((v3 & 1) == 0)
  {
    return MEMORY[0x277D84FA0];
  }

  return sub_23B5BCBB4(&unk_284E1DCC8);
}

uint64_t sub_23B5BC96C(SEL *a1)
{
  if (qword_27E15C318 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  if (qword_27E15CD98)
  {
    result = [qword_27E15CD98 *a1];
    if (result > 11)
    {
      v2 = result / 3uLL;
      goto LABEL_8;
    }
  }

  else
  {
    result = 0;
  }

  v2 = 4;
LABEL_8:
  if (v2 < result)
  {
    return v2;
  }

  return result;
}

unint64_t sub_23B5BCA08()
{
  result = qword_27E15CD40;
  if (!qword_27E15CD40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E15CD40);
  }

  return result;
}

unint64_t sub_23B5BCA54()
{
  result = qword_27E15CD48;
  if (!qword_27E15CD48)
  {
    sub_23B5BCA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD48);
  }

  return result;
}

uint64_t sub_23B5BCAAC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_23B5D8988();
  }

  else if (*(a2 + 16) && (sub_23B5BCA08(), v5 = sub_23B5D8918(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_23B5D8928();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_23B5BCBB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CD90, &unk_23B5DD050);
    v2 = sub_23B5D89C8();
    v3 = v2 + 56;
    while (1)
    {
      sub_23B5D8D18();
      MEMORY[0x23EE9FD40](0);
      result = sub_23B5D8D58();
      v5 = result & ~(-1 << *(v2 + 32));
      v6 = v5 >> 6;
      v7 = *(v3 + 8 * (v5 >> 6));
      v8 = 1 << v5;
      if ((v8 & v7) == 0)
      {
        *(v3 + 8 * v6) = v8 | v7;
        v9 = *(v2 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v2 + 16) = v11;
      }

      if (!--v1)
      {
        return v2;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_23B5BCC9C()
{
  result = qword_27E15CD50;
  if (!qword_27E15CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD50);
  }

  return result;
}

unint64_t sub_23B5BCCF4()
{
  result = qword_27E15CD58;
  if (!qword_27E15CD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E15CD60, &qword_23B5DCDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD58);
  }

  return result;
}

unint64_t sub_23B5BCD9C()
{
  result = qword_27E15CD68;
  if (!qword_27E15CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD68);
  }

  return result;
}

unint64_t sub_23B5BCDF4()
{
  result = qword_27E15CD70;
  if (!qword_27E15CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD70);
  }

  return result;
}

unint64_t sub_23B5BCE4C()
{
  result = qword_27E15CD78;
  if (!qword_27E15CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD78);
  }

  return result;
}

unint64_t sub_23B5BCEA4()
{
  result = qword_27E15CD80;
  if (!qword_27E15CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD80);
  }

  return result;
}

unint64_t sub_23B5BCEFC()
{
  result = qword_27E15CD88;
  if (!qword_27E15CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CD88);
  }

  return result;
}

id sub_23B5BCF50()
{
  result = [objc_opt_self() currentDeviceCapabilities];
  qword_27E15CD98 = result;
  return result;
}

uint64_t static WAPairedDevice.allDevices.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C428, &qword_23B5DDF80);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t static WAPairedDevice.allDevices(matching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C428, &qword_23B5DDF80);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t WAPairedDevice.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void WAPairedDevice.pairingInfo.getter(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_23B5BD168(v2, v3, v4, v5, v6, v7);
}

void sub_23B5BD168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

__n128 WAPairedDevice.init(id:name:pairingInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v5 = *(a4 + 16);
  *(a5 + 24) = *a4;
  *(a5 + 40) = v5;
  result = *(a4 + 32);
  *(a5 + 56) = result;
  return result;
}

unint64_t WAPairedDevice.description.getter()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];

  sub_23B5D8A08();

  v9 = sub_23B5D8C58();
  MEMORY[0x23EE9F750](v9);

  MEMORY[0x23EE9F750](0x203A656D616E202CLL, 0xE800000000000000);
  if (v3)
  {
    v10 = v1;
  }

  else
  {
    v10 = 0;
  }

  if (!v3)
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x23EE9F750](v10, v3);

  MEMORY[0x23EE9F750](0x6E6972696170202CLL, 0xEF203A6F666E4967);
  sub_23B5BD168(v2, v4, v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDA0, "84");
  v11 = sub_23B5D86C8();
  MEMORY[0x23EE9F750](v11);

  MEMORY[0x23EE9F750](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t WAPairedDevice.PairingInfo.pairingName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WAPairedDevice.PairingInfo.vendorName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WAPairedDevice.PairingInfo.modelName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WAPairedDevice.PairingInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_23B5D8A08();
  MEMORY[0x23EE9F750](0xD000000000000028, 0x800000023B5DF190);
  MEMORY[0x23EE9F750](v1, v2);
  MEMORY[0x23EE9F750](0x726F646E6576202CLL, 0xEE00203A656D614ELL);
  MEMORY[0x23EE9F750](v3, v4);
  MEMORY[0x23EE9F750](0x4E6C65646F6D202CLL, 0xED0000203A656D61);
  MEMORY[0x23EE9F750](v5, v6);
  MEMORY[0x23EE9F750](41, 0xE100000000000000);
  return 0;
}

void __swiftcall WAPairedDevice.PairingInfo.init(pairingName:vendorName:modelName:)(WiFiAware::WAPairedDevice::PairingInfo *__return_ptr retstr, Swift::String pairingName, Swift::String vendorName, Swift::String modelName)
{
  retstr->vendorName = vendorName;
  retstr->modelName = modelName;
  retstr->pairingName = pairingName;
}

uint64_t static WAPairedDevice.PairingInfo.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23B5D8C88() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_23B5D8C88() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_23B5D8C88();
}

uint64_t sub_23B5BD628()
{
  v1 = 0x614E726F646E6576;
  if (*v0 != 1)
  {
    v1 = 0x6D614E6C65646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4E676E6972696170;
  }
}

uint64_t sub_23B5BD694@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23B5C1F34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23B5BD6BC(uint64_t a1)
{
  v2 = sub_23B5BD8F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5BD6F8(uint64_t a1)
{
  v2 = sub_23B5BD8F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAPairedDevice.PairingInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDA8, "84");
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5BD8F8();
  sub_23B5D8D78();
  v14 = 0;
  v9 = v11[5];
  sub_23B5D8C18();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_23B5D8C18();
  v12 = 2;
  sub_23B5D8C18();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23B5BD8F8()
{
  result = qword_27E15CDB0;
  if (!qword_27E15CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CDB0);
  }

  return result;
}

uint64_t WAPairedDevice.PairingInfo.hash(into:)(uint64_t a1)
{
  sub_23B5D8708();
  sub_23B5D8708();

  return sub_23B5D8708();
}

uint64_t WAPairedDevice.PairingInfo.hashValue.getter()
{
  sub_23B5D8D18();
  sub_23B5D8708();
  sub_23B5D8708();
  sub_23B5D8708();
  return sub_23B5D8D58();
}

uint64_t WAPairedDevice.PairingInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDB8, &qword_23B5DD090);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5BD8F8();
  sub_23B5D8D68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v9 = sub_23B5D8B88();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_23B5D8B88();
  v21 = v12;
  v23 = 2;
  v13 = sub_23B5D8B88();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_23B5BDCB4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23B5D8C88() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_23B5D8C88() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_23B5D8C88();
}

uint64_t sub_23B5BDDAC()
{
  sub_23B5D8D18();
  sub_23B5D8708();
  sub_23B5D8708();
  sub_23B5D8708();
  return sub_23B5D8D58();
}

uint64_t sub_23B5BDE30(uint64_t a1)
{
  sub_23B5D8708();
  sub_23B5D8708();

  return sub_23B5D8708();
}

uint64_t sub_23B5BDE9C(uint64_t a1)
{
  sub_23B5D8D18();
  sub_23B5D8708();
  sub_23B5D8708();
  sub_23B5D8708();
  return sub_23B5D8D58();
}

uint64_t WAPairedDevice.DevicesSequence.current()()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDC0, &qword_23B5DD0A0);
  v1[3] = swift_task_alloc();
  type metadata accessor for WAPairedDevice.DevicesSequence(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B5BE018, 0, 0);
}

uint64_t sub_23B5BE018()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_23B5C059C(v0[2], v1);
  sub_23B5C32A0(v1, v2, &qword_27E15CDC0, &qword_23B5DD0A0);
  type metadata accessor for WAPairedDevice.DevicesSequence.AsyncIterator(0);
  swift_allocObject();
  v0[5] = sub_23B5BEAB0(v2);
  sub_23B5C0620(v1);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_23B5BE104;

  return sub_23B5BE320();
}

uint64_t sub_23B5BE104(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t WAPairedDevice.DevicesSequence.makeAsyncIterator()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDC0, &qword_23B5DD0A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v5 - v2;
  sub_23B5C32A0(v0, &v5 - v2, &qword_27E15CDC0, &qword_23B5DD0A0);
  type metadata accessor for WAPairedDevice.DevicesSequence.AsyncIterator(0);
  swift_allocObject();
  return sub_23B5BEAB0(v3);
}

uint64_t sub_23B5BE320()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDC0, &qword_23B5DD0A0);
  v1[6] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C428, &qword_23B5DDF80);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDC8, &qword_23B5DD0B0);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B5BE48C, 0, 0);
}

uint64_t sub_23B5BE48C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDD8, &qword_23B5DD0B8);
  sub_23B5D8898();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_23B5BE570;
  v2 = *(v0 + 80);

  return MEMORY[0x2822005A8](v0 + 16, 0, 0, v2, v0 + 24);
}

uint64_t sub_23B5BE570()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_23B5BEA14;
  }

  else
  {
    v2 = sub_23B5BE684;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23B5BE684()
{
  v1 = v0[2];
  if (!v1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    goto LABEL_17;
  }

  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  sub_23B5C32A0(v0[5] + OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_predicate, v4, &qword_27E15CDC0, &qword_23B5DD0A0);
  v5 = (*(v3 + 48))(v4, 1, v2);
  v6 = v0[6];
  if (v5 == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    sub_23B5C3308(v6, &qword_27E15CDC0, &qword_23B5DD0A0);
LABEL_17:

    v31 = v0[1];

    return v31(v1);
  }

  v7 = v0[14];
  (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDE8, &qword_23B5DD0C0);
  sub_23B5C067C();
  v8 = sub_23B5D87B8();
  if (!v7)
  {
    v17 = *(v8 + 16);
    if (v17)
    {
      v33 = MEMORY[0x277D84F90];
      v18 = v8;
      sub_23B5C14F8(0, v17, 0);
      v19 = v18;
      v20 = v33;
      v21 = *(v33 + 16);
      v22 = 32;
      do
      {
        v23 = *(v19 + v22);
        v24 = *(v33 + 24);
        if (v21 >= v24 >> 1)
        {
          sub_23B5C14F8((v24 > 1), v21 + 1, 1);
          v19 = v18;
        }

        *(v33 + 16) = v21 + 1;
        *(v33 + 8 * v21 + 32) = v23;
        v22 += 72;
        ++v21;
        --v17;
      }

      while (v17);
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }

    v25 = v0[11];
    v32 = v0[12];
    v27 = v0[9];
    v26 = v0[10];
    v29 = v0[7];
    v28 = v0[8];
    *(swift_task_alloc() + 16) = v20;
    v30 = sub_23B5C221C(v1, sub_23B5C1518);

    (*(v28 + 8))(v27, v29);
    (*(v25 + 8))(v32, v26);
    v1 = v30;
    goto LABEL_17;
  }

  v10 = v0[11];
  v9 = v0[12];
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[7];
  v14 = v0[8];

  (*(v14 + 8))(v12, v13);
  (*(v10 + 8))(v9, v11);

  v15 = v0[1];

  return v15();
}

uint64_t sub_23B5BEA14()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23B5BEAB0(uint64_t a1)
{
  v2 = v1;
  v50 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDF8, &qword_23B5DD7D0);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v39 - v5;
  v6 = sub_23B5D8468();
  v51 = *(v6 - 8);
  v52 = v6;
  v53 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v48 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CED0, &qword_23B5DD708);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  v42 = *(v49 - 8);
  v47 = *(v42 + 64);
  v12 = MEMORY[0x28223BE20](v49);
  v46 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDD8, &qword_23B5DD0B8);
  v17 = *(v16 - 8);
  v44 = v16;
  v45 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - v18;
  v43 = &v39 - v18;
  sub_23B5C32A0(a1, v2 + OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_predicate, &qword_27E15CDC0, &qword_23B5DD0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CE78, &qword_23B5DD490);
  (*(v9 + 104))(v11, *MEMORY[0x277D858A0], v8);
  v41 = v15;
  sub_23B5D8878();
  (*(v9 + 8))(v11, v8);
  v20 = v2;
  (*(v17 + 16))(v2 + OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_sequence, v19, v16);
  v21 = v48;
  sub_23B5D8458();
  v22 = v51;
  v39 = *(v51 + 32);
  v40 = v20;
  v23 = v20 + OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_iteratorId;
  v24 = v20;
  v25 = v52;
  v39(v23, v21, v52);
  v26 = OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_iteratorId;
  v27 = sub_23B5D8868();
  (*(*(v27 - 8) + 56))(v54, 1, 1, v27);
  v28 = v42;
  v29 = v46;
  v30 = v49;
  (*(v42 + 16))(v46, v15, v49);
  v31 = v24 + v26;
  v32 = v21;
  v33 = v21;
  v34 = v25;
  (*(v22 + 16))(v32, v31, v25);
  v35 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v36 = (v47 + *(v22 + 80) + v35) & ~*(v22 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  (*(v28 + 32))(v37 + v35, v29, v30);
  v39(v37 + v36, v33, v34);
  sub_23B5BF3D4(0, 0, v54, &unk_23B5DD720, v37);

  sub_23B5C3308(v50, &qword_27E15CDC0, &qword_23B5DD0A0);
  (*(v28 + 8))(v41, v30);
  (*(v45 + 8))(v43, v44);
  return v40;
}

uint64_t sub_23B5BF010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CF20, &unk_23B5DD830);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B5BF0DC, 0, 0);
}

uint64_t sub_23B5BF0DC()
{
  if (qword_27E15C320 != -1)
  {
    swift_once();
  }

  v1 = qword_27E15D4A8;
  *(v0 + 64) = qword_27E15D4A8;

  return MEMORY[0x2822009F8](sub_23B5BF174, v1, 0);
}

uint64_t sub_23B5BF174()
{
  sub_23B5C3858(v0[3], v0[4]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_23B5BF210;

  return sub_23B5C519C();
}

uint64_t sub_23B5BF210(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_23B5BF310, 0, 0);
}

uint64_t sub_23B5BF310()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v0[2] = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  sub_23B5D8888();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23B5BF3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDF8, &qword_23B5DD7D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23B5C32A0(a3, v25 - v10, &qword_27E15CDF8, &qword_23B5DD7D0);
  v12 = sub_23B5D8868();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23B5C3308(v11, &qword_27E15CDF8, &qword_23B5DD7D0);
  }

  else
  {
    sub_23B5D8858();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23B5D8818();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23B5D86D8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

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

      sub_23B5C3308(a3, &qword_27E15CDF8, &qword_23B5DD7D0);

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

  sub_23B5C3308(a3, &qword_27E15CDF8, &qword_23B5DD7D0);
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

uint64_t sub_23B5BF6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDF8, &qword_23B5DD7D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23B5C32A0(a3, v25 - v10, &qword_27E15CDF8, &qword_23B5DD7D0);
  v12 = sub_23B5D8868();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23B5C3308(v11, &qword_27E15CDF8, &qword_23B5DD7D0);
  }

  else
  {
    sub_23B5D8858();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23B5D8818();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23B5D86D8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEB0, &qword_23B5DD6D0);
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

      sub_23B5C3308(a3, &qword_27E15CDF8, &qword_23B5DD7D0);

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

  sub_23B5C3308(a3, &qword_27E15CDF8, &qword_23B5DD7D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEB0, &qword_23B5DD6D0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t WAPairedDevice.DevicesSequence.AsyncIterator.deinit()
{
  v1 = sub_23B5D8468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDF8, &qword_23B5DD7D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_iteratorId;
  v9 = sub_23B5D8868();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(v2 + 16))(v4, v0 + v8, v1);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v2 + 32))(v11 + v10, v4, v1);
  sub_23B5BF3D4(0, 0, v7, &unk_23B5DD0D0, v11);

  v12 = OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_sequence;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDD8, &qword_23B5DD0B8);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  sub_23B5C3308(v0 + OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_predicate, &qword_27E15CDC0, &qword_23B5DD0A0);
  (*(v2 + 8))(v0 + v8, v1);
  return v0;
}

uint64_t sub_23B5BFC68()
{
  if (qword_27E15C320 != -1)
  {
    swift_once();
  }

  v1 = qword_27E15D4A8;
  *(v0 + 24) = qword_27E15D4A8;

  return MEMORY[0x2822009F8](sub_23B5BFD00, v1, 0);
}

uint64_t sub_23B5BFD00()
{
  sub_23B5C3CE4(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t WAPairedDevice.DevicesSequence.AsyncIterator.__deallocating_deinit()
{
  v1 = sub_23B5D8468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDF8, &qword_23B5DD7D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_iteratorId;
  v9 = sub_23B5D8868();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(v2 + 16))(v4, v0 + v8, v1);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v2 + 32))(v11 + v10, v4, v1);
  sub_23B5BF3D4(0, 0, v7, &unk_23B5DD0D8, v11);

  v12 = OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_sequence;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDD8, &qword_23B5DD0B8);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  sub_23B5C3308(v0 + OBJC_IVAR____TtCVV9WiFiAware14WAPairedDevice15DevicesSequence13AsyncIterator_predicate, &qword_27E15CDC0, &qword_23B5DD0A0);
  (*(v2 + 8))(v0 + v8, v1);
  return swift_deallocClassInstance();
}

uint64_t sub_23B5BFFF0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23B5C0084;

  return sub_23B5BE320();
}

uint64_t sub_23B5C0084(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_23B5C0194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_23B5D8818();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x2822009F8](sub_23B5C022C, v6, v8);
}

uint64_t sub_23B5C022C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_23B5C02C0;

  return sub_23B5BE320();
}

uint64_t sub_23B5C02C0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_23B5C040C;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_23B5C03E8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23B5C040C()
{
  v1 = v0[9];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CF00, &qword_23B5DD498);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_23B5C04AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDC0, &qword_23B5DD0A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_23B5C32A0(v1, &v9 - v5, &qword_27E15CDC0, &qword_23B5DD0A0);
  type metadata accessor for WAPairedDevice.DevicesSequence.AsyncIterator(0);
  swift_allocObject();
  v7 = sub_23B5BEAB0(v6);
  result = sub_23B5C0620(v2);
  *a1 = v7;
  return result;
}

uint64_t sub_23B5C059C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WAPairedDevice.DevicesSequence(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B5C0620(uint64_t a1)
{
  v2 = type metadata accessor for WAPairedDevice.DevicesSequence(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B5C067C()
{
  result = qword_27E15CDF0;
  if (!qword_27E15CDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E15CDE8, &qword_23B5DD0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CDF0);
  }

  return result;
}

uint64_t sub_23B5C06E4()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x49676E6972696170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_23B5C0734@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23B5C318C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23B5C075C(uint64_t a1)
{
  v2 = sub_23B5C2550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5C0798(uint64_t a1)
{
  v2 = sub_23B5C2550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAPairedDevice.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CE08, &qword_23B5DD0E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = v1[1];
  v8 = v1[3];
  v23 = v1[2];
  v24 = v7;
  v9 = v1[5];
  v21 = v1[4];
  v22 = v8;
  v10 = v1[7];
  v19 = v1[6];
  v20 = v9;
  v18 = v10;
  v11 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5C2550();
  sub_23B5D8D78();
  LOBYTE(v26) = 0;
  v12 = v25;
  sub_23B5D8C48();
  if (!v12)
  {
    v25 = v11;
    v15 = v19;
    v14 = v20;
    v17 = v21;
    v16 = v22;
    LOBYTE(v26) = 1;
    sub_23B5D8BE8();
    v26 = v16;
    v27 = v17;
    v28 = v14;
    v29 = v15;
    v30 = v18;
    v31 = v25;
    v32 = 2;
    sub_23B5BD168(v16, v17, v14, v15, v18, v25);
    sub_23B5C25A4();
    sub_23B5D8C08();
    sub_23B5C25F8(v26, v27, v28, v29, v30, v31);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t WAPairedDevice.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[4];
  MEMORY[0x23EE9FD60](*v1);
  if (!v2)
  {
    sub_23B5D8D38();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_23B5D8D38();
  }

  sub_23B5D8D38();
  sub_23B5D8708();
  if (!v3)
  {
    return sub_23B5D8D38();
  }

LABEL_3:
  sub_23B5D8D38();
  sub_23B5D8708();
  sub_23B5D8708();

  return sub_23B5D8708();
}

uint64_t WAPairedDevice.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[4];
  sub_23B5D8D18();
  MEMORY[0x23EE9FD60](v1);
  if (!v2)
  {
    sub_23B5D8D38();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_23B5D8D38();
    return sub_23B5D8D58();
  }

  sub_23B5D8D38();
  sub_23B5D8708();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_23B5D8D38();
  sub_23B5D8708();
  sub_23B5D8708();
  sub_23B5D8708();
  return sub_23B5D8D58();
}

uint64_t WAPairedDevice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CE20, &qword_23B5DD0E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5C2550();
  sub_23B5D8D68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_23B5D8BB8();
  LOBYTE(v32[0]) = 1;
  v10 = sub_23B5D8B58();
  v12 = v11;
  v26 = v10;
  v37 = 2;
  sub_23B5C2648();
  sub_23B5D8B78();
  (*(v6 + 8))(v8, v5);
  v25 = v33;
  v13 = *(&v34 + 1);
  v24 = v34;
  v23 = *(&v35 + 1);
  v14 = v35;
  v15 = v36;
  *&v27 = v9;
  v16 = v26;
  *(&v27 + 1) = v26;
  *&v28 = v12;
  *(&v28 + 1) = v33;
  v29 = v34;
  v30 = v35;
  v31 = v36;
  v17 = v27;
  v18 = v28;
  v19 = v34;
  v20 = v35;
  *(a2 + 64) = v36;
  *(a2 + 32) = v19;
  *(a2 + 48) = v20;
  *a2 = v17;
  *(a2 + 16) = v18;
  sub_23B5AF43C(&v27, v32);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v32[0] = v9;
  v32[1] = v16;
  v32[2] = v12;
  v32[3] = v25;
  v32[4] = v24;
  v32[5] = v13;
  v32[6] = v14;
  v32[7] = v23;
  v32[8] = v15;
  return sub_23B5AFD30(v32);
}

uint64_t sub_23B5C0EF4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[4];
  sub_23B5D8D18();
  MEMORY[0x23EE9FD60](v2);
  if (!v3)
  {
    sub_23B5D8D38();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_23B5D8D38();
    return sub_23B5D8D58();
  }

  sub_23B5D8D38();
  sub_23B5D8708();
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_23B5D8D38();
  sub_23B5D8708();
  sub_23B5D8708();
  sub_23B5D8708();
  return sub_23B5D8D58();
}

uint64_t sub_23B5C1018(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23B5C1110;

  return v6(a1);
}

uint64_t sub_23B5C1110()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t *sub_23B5C1208(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, __int128 *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_23B5C2060(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_23B5C1298(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEC0, &qword_23B5DD820);
  result = sub_23B5D8B28();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  if (v10)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v16 = v13 | (v11 << 6);
      v17 = *(*(v4 + 48) + 8 * v16);
      v18 = *(v4 + 56) + 72 * v16;
      v19 = *(v18 + 16);
      v20 = *(v18 + 32);
      v21 = *(v18 + 48);
      v40 = *(v18 + 64);
      v38 = v20;
      v39 = v21;
      v36 = *v18;
      v37 = v19;
      result = sub_23B5D8D08();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        break;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      *(*(v9 + 48) + 8 * v25) = v17;
      v30 = *(v9 + 56) + 72 * v25;
      *v30 = v36;
      v31 = v37;
      v32 = v38;
      v33 = v39;
      *(v30 + 64) = v40;
      *(v30 + 32) = v32;
      *(v30 + 48) = v33;
      *(v30 + 16) = v31;
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_34;
      }

      if (!v5)
      {
        sub_23B5AF43C(&v36, v35);
        return v9;
      }

      result = sub_23B5AF43C(&v36, v35);
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    v26 = 0;
    v27 = (63 - v22) >> 6;
    while (++v24 != v27 || (v26 & 1) == 0)
    {
      v28 = v24 == v27;
      if (v24 == v27)
      {
        v24 = 0;
      }

      v26 |= v28;
      v29 = *(v12 + 8 * v24);
      if (v29 != -1)
      {
        v25 = __clz(__rbit64(~v29)) + (v24 << 6);
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = v11;
    while (1)
    {
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v11 >= a2)
      {
        return v9;
      }

      v15 = a1[v11];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

char *sub_23B5C14F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B5C1568(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

BOOL sub_23B5C1518(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = *v4++;
  }

  while (v7 != a1);
  return v5 != 0;
}

char *sub_23B5C1548(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B5C166C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23B5C1568(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEC8, &qword_23B5DD700);
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

char *sub_23B5C166C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEB8, &qword_23B5DD6E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t sub_23B5C1768(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_23B5C185C;

  return v5(v2 + 32);
}

uint64_t sub_23B5C185C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

BOOL _s9WiFiAware14WAPairedDeviceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v7 = a1[7];
  v9 = a1[8];
  v10 = a2[2];
  v11 = a2[3];
  v13 = a2[4];
  v12 = a2[5];
  v14 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    v87 = a2[8];
    v88 = a2[6];
    if (a1[1] != a2[1] || v3 != v10)
    {
      v15 = a1[5];
      v16 = a1[7];
      v17 = a2[5];
      v18 = a1[3];
      v19 = a1[6];
      v20 = a1[8];
      v21 = a2[3];
      v22 = sub_23B5D8C88();
      v11 = v21;
      v9 = v20;
      v8 = v19;
      v4 = v18;
      v12 = v17;
      v7 = v16;
      v6 = v15;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v87 = a2[8];
    v88 = a2[6];
    if (v10)
    {
      return 0;
    }
  }

  if (!v5)
  {
    v48 = v11;
    v49 = v6;
    v50 = v6;
    v51 = v7;
    v52 = v9;
    v53 = v4;
    v54 = v8;
    sub_23B5BD168(v4, 0, v49, v8, v7, v9);
    if (!v13)
    {
      sub_23B5BD168(v48, 0, v12, v88, v14, v87);
      v42 = v53;
      v43 = 0;
      v44 = v50;
      v45 = v54;
      v46 = v51;
      v47 = v52;
      goto LABEL_30;
    }

    v83 = v12;
    v85 = v53;
    v55 = v12;
    v56 = v88;
    v57 = v50;
    v58 = v87;
    sub_23B5BD168(v48, v13, v55, v88, v14, v87);
    goto LABEL_24;
  }

  if (!v13)
  {
    v59 = v6;
    v79 = v8;
    v81 = v6;
    v51 = v7;
    v52 = v9;
    v60 = v4;
    v48 = v11;
    sub_23B5BD168(v4, v5, v59, v8, v7, v9);
    v83 = v12;
    v58 = v87;
    v56 = v88;
    sub_23B5BD168(v48, 0, v12, v88, v14, v87);
    v85 = v60;
    v61 = v60;
    v54 = v79;
    v57 = v81;
    sub_23B5BD168(v61, v5, v81, v79, v51, v52);

LABEL_24:
    sub_23B5C25F8(v85, v5, v57, v54, v51, v52);
    v62 = v48;
    v63 = v13;
    v64 = v83;
    v65 = v56;
    v66 = v14;
    v67 = v58;
LABEL_26:
    sub_23B5C25F8(v62, v63, v64, v65, v66, v67);
    return 0;
  }

  v82 = v11;
  if ((v4 != v11 || v5 != v13) && (v24 = v6, v25 = v7, v26 = v12, v27 = v4, v28 = v8, v29 = v9, v30 = sub_23B5D8C88(), v9 = v29, v8 = v28, v4 = v27, v12 = v26, v7 = v25, v6 = v24, (v30 & 1) == 0) || (v6 != v12 || v8 != v88) && (v31 = v6, v32 = v7, v33 = v12, v34 = v4, v35 = v8, v36 = v9, v37 = sub_23B5D8C88(), v9 = v36, v8 = v35, v4 = v34, v12 = v33, v7 = v32, v6 = v31, (v37 & 1) == 0))
  {
    v80 = v8;
    v78 = v7;
    v68 = v9;
    v69 = v4;
    v86 = v4;
    sub_23B5BD168(v4, v5, v6, v8, v7, v9);
    sub_23B5BD168(v82, v13, v12, v88, v14, v87);
    sub_23B5BD168(v69, v5, v6, v80, v78, v68);
    sub_23B5C25F8(v82, v13, v12, v88, v14, v87);

    v62 = v86;
    v63 = v5;
    v64 = v6;
    v65 = v80;
    v66 = v78;
    v67 = v68;
    goto LABEL_26;
  }

  if (v7 == v14 && v9 == v87)
  {
    v38 = v7;
    v39 = v9;
    v40 = v4;
    v41 = v8;
    sub_23B5BD168(v4, v5, v6, v8, v7, v9);
    sub_23B5BD168(v82, v13, v12, v88, v38, v39);
    sub_23B5BD168(v40, v5, v6, v41, v38, v39);
    sub_23B5C25F8(v82, v13, v12, v88, v38, v39);

    v42 = v40;
    v43 = v5;
    v44 = v6;
    v45 = v41;
    v46 = v38;
    v47 = v39;
LABEL_30:
    sub_23B5C25F8(v42, v43, v44, v45, v46, v47);
    return 1;
  }

  v76 = v9;
  v70 = v6;
  v71 = v7;
  v72 = v12;
  v84 = v12;
  v73 = v4;
  v74 = v8;
  v75 = v9;
  v77 = sub_23B5D8C88();
  sub_23B5BD168(v73, v5, v70, v74, v71, v75);
  sub_23B5BD168(v82, v13, v72, v88, v14, v87);
  sub_23B5BD168(v73, v5, v70, v74, v71, v76);
  sub_23B5C25F8(v82, v13, v84, v88, v14, v87);

  sub_23B5C25F8(v73, v5, v70, v74, v71, v76);
  return (v77 & 1) != 0;
}