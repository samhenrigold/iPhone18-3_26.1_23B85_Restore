uint64_t sub_217ED43B8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    return sub_217ED3A44(*(a1 + 2), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

double sub_217ED43E8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_217ED43F4(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double sub_217ED4424@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  v5 = *(v1 + 18);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  *(a1 + 10) = v5;
  return result;
}

double sub_217ED4448(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 10);
  *(v1 + 8) = *a1;
  *(v1 + 16) = v3;
  *(v1 + 17) = v4;
  *(v1 + 18) = v5;
  return result;
}

uint64_t sub_217ED4538()
{
  v1 = 0x52656C6369747261;
  v2 = 0x73694C6B63617274;
  if (*v0 != 2)
  {
    v2 = 0x7369566B63617274;
  }

  if (*v0)
  {
    v1 = 0x61547374726F7073;
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

uint64_t sub_217ED45DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217EFFA7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217ED4610(uint64_t a1)
{
  v2 = sub_217EF6814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED464C(uint64_t a1)
{
  v2 = sub_217EF6814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED4688(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D88, &qword_217F52148);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v22 = *(v1 + 16);
  v11 = *(v1 + 17);
  v16 = *(v1 + 18);
  v17 = v11;
  v12 = v1[4];
  v15 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6814();
  sub_217F4B294();
  v18 = v10;
  v23 = 0;
  sub_217EF6868();
  sub_217F4B0C4();
  if (!v2)
  {
    v13 = v15;
    v18 = v9;
    v19 = v22;
    v20 = v17;
    v21 = v16;
    v23 = 1;
    sub_217EF68BC();
    sub_217F4B0C4();
    v18 = v13;
    v23 = 2;
    sub_217EF6910();
    sub_217F4B0C4();
    v18 = v12;
    v23 = 3;
    sub_217EF6964();
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_217ED48D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5DB8, &qword_217F52150);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6814();
  sub_217F4B274();
  if (!v2)
  {
    v26 = 0;
    sub_217EF69B8();
    sub_217F4AFC4();
    v10 = v21;
    v26 = 1;
    sub_217EF6A0C();
    sub_217F4AFC4();
    v11 = v21;
    v25 = v22;
    v12 = v23;
    v13 = v24;
    v26 = 2;
    sub_217EF6A60();
    sub_217F4AFC4();
    v19 = v12;
    v20 = v13;
    v15 = v21;
    v26 = 3;
    sub_217EF6AB4();
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    v16 = v21;
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v25;
    v17 = v20;
    *(a2 + 17) = v19;
    *(a2 + 18) = v17;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217ED4BA0(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217ED4BCC;
}

uint64_t sub_217ED4C20(uint64_t a1)
{
  v2 = sub_217EF6B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED4C5C(uint64_t a1)
{
  v2 = sub_217EF6B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED4C98(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5DE0, &qword_217F52158);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6B08();
  sub_217F4B294();
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5DF0, &qword_217F52160);
  sub_217EF8694(&qword_27CBF5DF8, &qword_27CBF5DF0, &qword_217F52160, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_217ED4E24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E00, &qword_217F52168);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6B08();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5DF0, &qword_217F52160);
    sub_217EF8694(&qword_27CBF5E08, &qword_27CBF5DF0, &qword_217F52160, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217ED5028(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217ED5054;
}

uint64_t (*sub_217ED5094(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return sub_217F03FF8;
}

uint64_t (*sub_217ED50D8(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 9);
  return sub_217ED5104;
}

uint64_t (*sub_217ED512C(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 10);
  return sub_217ED5158;
}

unint64_t sub_217ED5168()
{
  v1 = 0x6E6F697461727564;
  v2 = 0xD00000000000001CLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000022;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_217ED51F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217EFFBF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217ED5224(uint64_t a1)
{
  v2 = sub_217EF6B5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED5260(uint64_t a1)
{
  v2 = sub_217EF6B5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED529C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E10, &qword_217F52170);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v15 = *(v1 + 9);
  v16 = v10;
  v11 = *(v1 + 10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6B5C();
  sub_217F4B294();
  v24 = v9;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E20, &qword_217F52178);
  sub_217EF8694(&qword_27CBF5E28, &qword_27CBF5E20, &qword_217F52178, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  if (!v2)
  {
    v12 = v15;
    v22 = v16;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E30, &qword_217F52180);
    sub_217EF8694(&qword_27CBF5E38, &qword_27CBF5E30, &qword_217F52180, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4B0C4();
    v20 = v12;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E40, &qword_217F52188);
    sub_217EF8694(&qword_27CBF5E48, &qword_27CBF5E40, &qword_217F52188, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4B0C4();
    v18 = v11;
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E50, &qword_217F52190);
    sub_217EF8694(&qword_27CBF5E58, &qword_27CBF5E50, &qword_217F52190, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_217ED55C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E60, &qword_217F52198);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6B5C();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E20, &qword_217F52178);
    v23 = 0;
    sub_217EF8694(&qword_27CBF5E68, &qword_27CBF5E20, &qword_217F52178, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v10 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E30, &qword_217F52180);
    v21 = 1;
    sub_217EF8694(&qword_27CBF5E70, &qword_27CBF5E30, &qword_217F52180, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    v16 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E40, &qword_217F52188);
    v19 = 2;
    sub_217EF8694(&qword_27CBF5E78, &qword_27CBF5E40, &qword_217F52188, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    v15 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E50, &qword_217F52190);
    v17 = 3;
    sub_217EF8694(&qword_27CBF5E80, &qword_27CBF5E50, &qword_217F52190, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    v12 = v18;
    *a2 = v10;
    v13 = v15;
    *(a2 + 8) = v16;
    *(a2 + 9) = v13;
    *(a2 + 10) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_217ED5978(void *a1))(uint64_t *a1)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_217ED59A0;
}

uint64_t sub_217ED59F0(uint64_t a1)
{
  v2 = sub_217EF6BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED5A2C(uint64_t a1)
{
  v2 = sub_217EF6BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED5A68(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E88, &qword_217F521A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6BB0();
  sub_217F4B294();
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E98, &qword_217F521A8);
  sub_217EF8694(&qword_27CBF5EA0, &qword_27CBF5E98, &qword_217F521A8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_217ED5BF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5EA8, &qword_217F521B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6BB0();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E98, &qword_217F521A8);
    sub_217EF8694(&qword_27CBF5EB0, &qword_27CBF5E98, &qword_217F521A8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_217ED5DE4(void *a1))(uint64_t *a1)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_217ED5E0C;
}

uint64_t sub_217ED5E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217F4B144();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217ED5EE4(uint64_t a1)
{
  v2 = sub_217EF6C04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED5F20(uint64_t a1)
{
  v2 = sub_217EF6C04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED5F5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5EB8, &qword_217F521B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6C04();
  sub_217F4B294();
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5EC8, &qword_217F521C0);
  sub_217EF8694(&qword_27CBF5ED0, &qword_27CBF5EC8, &qword_217F521C0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_217ED60E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5ED8, &qword_217F521C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6C04();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5EC8, &qword_217F521C0);
    sub_217EF8694(&qword_27CBF5EE0, &qword_27CBF5EC8, &qword_217F521C0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217ED62DC@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (a2 & 1) != 0 || (a4)
  {

    result = 0x3FF0000000000000;
    v7 = MEMORY[0x277D84FA0];
    a3 = 1;
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
    if (a5)
    {
      v7 = a5;
    }
  }

  *a6 = result;
  a6[1] = a3;
  a6[2] = v7;
  return result;
}

uint64_t sub_217ED6338(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return sub_217ED6368(*(a1 + 16), *(a2 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217ED6368(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_217F4B224();

    sub_217F4AB24();
    v16 = sub_217F4B254();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_217F4B144() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217ED6520()
{
  v1 = 0x6953776F646E6977;
  if (*v0 != 1)
  {
    v1 = 0x546465776F6C6C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6F687365726874;
  }
}

uint64_t sub_217ED6590@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217EFFD64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217ED65C4(uint64_t a1)
{
  v2 = sub_217EF6C58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED6600(uint64_t a1)
{
  v2 = sub_217EF6C58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED663C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5EE8, &qword_217F521D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  v9 = *(v1 + 16);
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6C58();
  sub_217F4B294();
  v15 = 0;
  sub_217F4B0A4();
  if (!v2)
  {
    v14 = 1;
    sub_217F4B0B4();
    v13 = v9;
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5EF0, &qword_217F521D8);
    sub_217EF6CAC(&qword_280C27688, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_217ED6868@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5EF8, &qword_217F521E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6C58();
  sub_217F4B274();
  if (!v2)
  {
    v18 = 0;
    sub_217F4AFA4();
    v11 = v10;
    v17 = 1;
    v13 = sub_217F4AFB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5EF0, &qword_217F521D8);
    v15[15] = 2;
    sub_217EF6CAC(&qword_27CBF5F00, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v11;
    *(a2 + 1) = v13;
    *(a2 + 2) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217ED6AC0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return sub_217ED6368(*(a1 + 16), *(a2 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217ED6AF0@<X0>(char *a3@<X8>)
{
  v4 = sub_217F4AEE4();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_217ED6B4C()
{
  v1 = 0x6C616E6F73726570;
  if (*v0 != 1)
  {
    v1 = 0x6669737265766964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616369706F74;
  }
}

uint64_t sub_217ED6BB8()
{
  sub_217F4B224();
  sub_217F4AB24();

  return sub_217F4B254();
}

uint64_t sub_217ED6C6C(uint64_t a1)
{
  sub_217F4AB24();
}

uint64_t sub_217ED6D0C(uint64_t a1)
{
  sub_217F4B224();
  sub_217F4AB24();

  return sub_217F4B254();
}

void sub_217ED6DC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEC00000064657A69;
  v5 = 0x6C616E6F73726570;
  if (v2 != 1)
  {
    v5 = 0x6669737265766964;
    v4 = 0xEB00000000646569;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C616369706F74;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_217ED6EE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6C616E6F73726570;
  v4 = 0xEC00000064657A69;
  if (v2 != 1)
  {
    v3 = 0x6669737265766964;
    v4 = 0xEB00000000646569;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C616369706F74;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6C616E6F73726570;
  v8 = 0xEC00000064657A69;
  if (*a2 != 1)
  {
    v7 = 0x6669737265766964;
    v8 = 0xEB00000000646569;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C616369706F74;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217F4B144();
  }

  return v11 & 1;
}

uint64_t sub_217ED700C()
{
  if (qword_280C27E70 != -1)
  {
    swift_once();
  }

  *&xmmword_280C27A48 = 0;
  *(&xmmword_280C27A48 + 1) = MEMORY[0x277D84F90];
  xmmword_280C27A58 = xmmword_280C27E78;
  xmmword_280C27A68 = *&qword_280C27E88;
  qword_280C27A78 = qword_280C27E98;
  result = sub_217ED72A0(MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  qword_280C27A80 = result;
  return result;
}

uint64_t sub_217ED7090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = *(a2 + 32);
  *a4 = a5;
  *(a4 + 8) = a1;
  v9 = *(a2 + 16);
  *(a4 + 16) = *a2;
  *(a4 + 32) = v9;
  *(a4 + 48) = v8;

  v10 = sub_217ED72A0(a3, a1);

  *(a4 + 56) = v10;
  return result;
}

uint64_t sub_217ED713C(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

double sub_217ED718C@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 48);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

double sub_217ED71A0(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = result;
  return result;
}

uint64_t sub_217ED71E0(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

double sub_217ED7230@<D0>(uint64_t a1@<X8>)
{
  if (qword_280C27E70 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&qword_280C27E98;
  v2 = *&qword_280C27E88;
  *a1 = xmmword_280C27E78;
  *(a1 + 16) = v2;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_217ED72A0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if (qword_280C27E70 == -1)
    {
      v4 = *(a2 + 16);
      if (!v4)
      {
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      swift_once();
      v4 = *(a2 + 16);
      if (!v4)
      {
        return MEMORY[0x277D84F90];
      }
    }

    v5 = xmmword_280C27E78;
    v6 = qword_280C27E88;
    v7 = qword_280C27E90;
    v8 = qword_280C27E98;
    result = sub_217F4AC54();
    *(result + 16) = v4;
    v9 = result + 32;
    if (v4 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = v4 & 0x7FFFFFFFFFFFFFFELL;
      v9 += 40 * (v4 & 0x7FFFFFFFFFFFFFFELL);
      v27 = (result + 56);
      v28 = v4 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        *(v27 - 3) = v5;
        v27[3] = *(&v5 + 1);
        v27[4] = v6;
        *(v27 - 1) = v6;
        *v27 = v7;
        v27[1] = v8;
        v27[2] = v5;
        v27[5] = v7;
        v27[6] = v8;
        v27 += 10;
        v28 -= 2;
      }

      while (v28);
      if (v4 == v10)
      {
        return result;
      }
    }

    v29 = v4 - v10;
    do
    {
      *v9 = v5;
      *(v9 + 16) = v6;
      *(v9 + 24) = v7;
      *(v9 + 32) = v8;
      v9 += 40;
      --v29;
    }

    while (v29);
    return result;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16) == v2)
  {
  }

  if (qword_280C28EA0 != -1)
  {
    swift_once();
  }

  v11 = qword_280C28EA8;
  v12 = sub_217F4AD34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_217F4C8A0;
  v14 = sub_217F4B104();
  v16 = v15;
  v17 = MEMORY[0x277D837D0];
  *(v13 + 56) = MEMORY[0x277D837D0];
  v18 = sub_217E86438();
  *(v13 + 64) = v18;
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v19 = sub_217F4B104();
  *(v13 + 96) = v17;
  *(v13 + 104) = v18;
  *(v13 + 72) = v19;
  *(v13 + 80) = v20;
  sub_217F4AA44("Encountered slottedRatiosDepthTransforms with %{public}@ items paired with a slottedRatios with %{public}@ items. These collections need to have a matching shape, disregarding slottedRatiosDepthTransforms", 204, 2, &dword_217E7B000, v11, v12, v13);

  if (qword_280C27E70 != -1)
  {
    swift_once();
    if (v2)
    {
      goto LABEL_12;
    }

    return MEMORY[0x277D84F90];
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_12:
  v21 = xmmword_280C27E78;
  v22 = qword_280C27E88;
  v23 = qword_280C27E90;
  v24 = qword_280C27E98;
  result = sub_217F4AC54();
  *(result + 16) = v2;
  v25 = result + 32;
  if (v2 == 1)
  {
    v26 = 0;
LABEL_23:
    v32 = v2 - v26;
    do
    {
      *v25 = v21;
      *(v25 + 16) = v22;
      *(v25 + 24) = v23;
      *(v25 + 32) = v24;
      v25 += 40;
      --v32;
    }

    while (v32);
    return result;
  }

  v26 = v2 & 0x7FFFFFFFFFFFFFFELL;
  v25 += 40 * (v2 & 0x7FFFFFFFFFFFFFFELL);
  v30 = (result + 56);
  v31 = v2 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    *(v30 - 3) = v21;
    v30[3] = *(&v21 + 1);
    v30[4] = v22;
    *(v30 - 1) = v22;
    *v30 = v23;
    v30[1] = v24;
    v30[2] = v21;
    v30[5] = v23;
    v30[6] = v24;
    v30 += 10;
    v31 -= 2;
  }

  while (v31);
  if (v2 != v26)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_217ED75D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 56);

  sub_217ED77A8(a1);
  v8 = v7;
  v9 = sub_217EFFE94(v5, v6, sub_217F03A08);

  if (qword_280C27E70 != -1)
  {
    swift_once();
  }

  v10 = xmmword_280C27E78;
  v11 = qword_280C27E88;
  v12 = qword_280C27E90;
  v13 = qword_280C27E98;
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  v14 = *(v9 + 2);

  if (!v14)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v15 = sub_217F4AC54();
  v16 = v15;
  *(v15 + 16) = v14;
  v17 = v15 + 32;
  if (v14 == 1)
  {
    v18 = 0;
LABEL_10:
    v21 = v14 - v18;
    do
    {
      *v17 = v10;
      *(v17 + 16) = v11;
      *(v17 + 24) = v12;
      *(v17 + 32) = v13;
      v17 += 40;
      --v21;
    }

    while (v21);
    goto LABEL_12;
  }

  v18 = v14 & 0x7FFFFFFFFFFFFFFELL;
  v17 += 40 * (v14 & 0x7FFFFFFFFFFFFFFELL);
  v19 = (v15 + 56);
  v20 = v14 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    *(v19 - 3) = v10;
    v19[3] = *(&v10 + 1);
    v19[4] = v11;
    *(v19 - 1) = v11;
    *v19 = v12;
    v19[1] = v13;
    v19[2] = v10;
    v19[5] = v12;
    v19[6] = v13;
    v19 += 10;
    v20 -= 2;
  }

  while (v20);
  if (v14 != v18)
  {
    goto LABEL_10;
  }

LABEL_12:

  *(a2 + 56) = v16;
  return result;
}

void sub_217ED77A8(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2].f64[0];
  if (qword_280C27E70 != -1)
  {
    v5 = a1;
    v6 = *v1;
    v7 = v1[1];
    swift_once();
    v3 = v6;
    v2 = v7;
    a1 = v5;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, xmmword_280C27E78), vceqq_f64(v2, *&qword_280C27E88)))) & 1) == 0 || v4 != *&qword_280C27E98)
  {
    if (v2.f64[1] > v4)
    {
      __break(1u);
    }

    else
    {
      pow(2.71828183, a1 * v2.f64[0]);
    }
  }
}

uint64_t sub_217ED78C0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217ED791C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 64);
  v4 = (a2 + 64);
  while (v2)
  {
    result = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v3 - 4), *(v4 - 4)), vceqq_f64(*(v3 - 2), *(v4 - 2))))) & (*v3 == *v4);
    v5 = result != 1 || v2-- == 1;
    v3 += 5;
    v4 += 5;
    if (v5)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_217ED79AC()
{
  v1 = 0x52746C7561666564;
  v2 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0x52646574746F6C73;
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

uint64_t sub_217ED7A40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217F00164(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217ED7A74(uint64_t a1)
{
  v2 = sub_217EF6D18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED7AB0(uint64_t a1)
{
  v2 = sub_217EF6D18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED7AEC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F08, &qword_217F521E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - v7;
  v15 = *(v1 + 8);
  v9 = *(v1 + 16);
  v13 = *(v1 + 32);
  v14 = v9;
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6D18();
  sub_217F4B294();
  LOBYTE(v16) = 0;
  sub_217F4B0A4();
  if (!v2)
  {
    *&v16 = v15;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F10, &qword_217F521F0);
    sub_217EF6D6C();
    sub_217F4B0C4();
    v17 = v13;
    v16 = v14;
    v18 = v10;
    v19 = 2;
    sub_217EF6DE8();
    sub_217F4B0C4();
    *&v16 = v11;
    v19 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F18, &qword_217F521F8);
    sub_217EF6F0C(&qword_280C276A8, sub_217EF6DE8, MEMORY[0x277D83948]);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_217ED7D6C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F20, &qword_217F52200);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6D18();
  sub_217F4B274();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v26) = 0;
  sub_217F4AFA4();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F10, &qword_217F521F0);
  LOBYTE(v22) = 1;
  sub_217EF6E3C();
  sub_217F4AFC4();
  v12 = v26;
  LOBYTE(v22) = 2;
  sub_217EF6EB8();
  sub_217F4AFC4();
  v13 = v26;
  v14 = v27;
  v15 = v28;
  v16 = v29;
  v17 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F18, &qword_217F521F8);
  v34[0] = 3;
  sub_217EF6F0C(&qword_27CBF5F30, sub_217EF6EB8, MEMORY[0x277D83978]);
  sub_217F4AFC4();
  (*(v6 + 8))(v9, v5);
  v18 = v35;
  *&v22 = v11;
  *(&v22 + 1) = v12;
  *&v23 = v13;
  *(&v23 + 1) = v14;
  *&v24 = v15;
  *(&v24 + 1) = v16;
  *&v25 = v17;
  *(&v25 + 1) = v35;
  v19 = v23;
  *a2 = v22;
  a2[1] = v19;
  v20 = v25;
  a2[2] = v24;
  a2[3] = v20;
  sub_217EB2994(&v22, &v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v26 = v11;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  return sub_217EB2A44(&v26);
}

void (*sub_217ED8104(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217ED8130;
}

double sub_217ED8178@<D0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  sub_217EBA594(a2);
  if (a5 > a6)
  {
    if (qword_280C27E70 != -1)
    {
      swift_once();
    }

    a5 = *&qword_280C27E90;
    a6 = *&qword_280C27E98;
  }

  result = a2;
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  return result;
}

void sub_217ED8220(double a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, double a7@<X6>, char a8@<W7>, double *a9@<X8>, double a10, char a11)
{
  if (qword_280C27E70 != -1)
  {
    v28 = a1;
    v21 = a2;
    v22 = a8;
    v23 = a7;
    v24 = a6;
    v25 = a5;
    v26 = a4;
    v27 = a3;
    swift_once();
    a1 = v28;
    a2 = v21;
    a3 = v27;
    a4 = v26;
    a5 = v25;
    a6 = v24;
    a7 = v23;
    a8 = v22;
  }

  v12 = *&xmmword_280C27E78;
  v13 = qword_280C27E90;
  v14 = qword_280C27E98;
  if ((a2 & 1) == 0)
  {
    v12 = a1;
  }

  if (a4)
  {
    v15 = *(&xmmword_280C27E78 + 1);
  }

  else
  {
    v15 = a3;
  }

  if (a6)
  {
    v16 = *&qword_280C27E88;
  }

  else
  {
    v16 = a5;
  }

  if (a8)
  {
    v17 = *&qword_280C27E90;
  }

  else
  {
    v17 = a7;
  }

  if (a11)
  {
    v18 = *&qword_280C27E98;
  }

  else
  {
    v18 = a10;
  }

  v29 = v12;
  sub_217EBA594(v12);
  if (v17 <= v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = *&v13;
  }

  if (v17 <= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = *&v14;
  }

  *a9 = v29;
  a9[1] = v15;
  a9[2] = v16;
  a9[3] = v19;
  a9[4] = v20;
}

uint64_t sub_217ED8374(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2].f64[0];
  if (qword_280C27E70 != -1)
  {
    v13 = result;
    v14 = a2;
    v15 = v4;
    v16 = v3;
    swift_once();
    v4 = v15;
    v3 = v16;
    a2 = v14;
    result = v13;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, xmmword_280C27E78), vceqq_f64(v3, *&qword_280C27E88)))) & 1) == 0 || v5 != *&qword_280C27E98)
  {
    v6 = result;
    sub_217ED77A8(a2);
    v8 = round(v7);
    if (v8 > -9.22337204e18 && v8 < 9.22337204e18)
    {
      return v8;
    }

    else
    {
      if (qword_280C28EA0 != -1)
      {
        swift_once();
      }

      v10 = qword_280C28EA8;
      v11 = sub_217F4AD34();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_217F4BC20;
      *&v17 = 0;
      *(&v17 + 1) = 0xE000000000000000;
      sub_217F4ACB4();
      *(v12 + 56) = MEMORY[0x277D837D0];
      *(v12 + 64) = sub_217E86438();
      *(v12 + 32) = v17;
      sub_217F4AA44("Failed to transform value %{public}@ exactly into an Int, returning value unmodified", 84, 2, &dword_217E7B000, v10, v11, v12);

      return v6;
    }
  }

  return result;
}

double sub_217ED8568()
{
  sub_217EBA594(1.0);
  xmmword_280C27E78 = 0x3FF0000000000000uLL;
  qword_280C27E88 = 0;
  result = -1.79769313e308;
  *&qword_280C27E90 = xmmword_217F520F0;
  return result;
}

uint64_t sub_217ED85CC()
{
  sub_217F4B224();
  sub_217F4AB24();

  return sub_217F4B254();
}

uint64_t sub_217ED8684(uint64_t a1)
{
  sub_217F4AB24();
}

uint64_t sub_217ED8728(uint64_t a1)
{
  sub_217F4B224();
  sub_217F4AB24();

  return sub_217F4B254();
}

unint64_t sub_217ED87DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_217F002E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_217ED880C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6168706C61;
  v5 = 0xE100000000000000;
  v6 = 100;
  v7 = 7235949;
  if (v2 != 3)
  {
    v7 = 7889261;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = 109;
    v3 = 0xE100000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_217ED8880()
{
  v1 = *v0;
  v2 = 0x6168706C61;
  v3 = 100;
  v4 = 7235949;
  if (v1 != 3)
  {
    v4 = 7889261;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 109;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_217ED88F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F002E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217ED8930(uint64_t a1)
{
  v2 = sub_217EF6F84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED896C(uint64_t a1)
{
  v2 = sub_217EF6F84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED89A8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F38, &qword_217F52208);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2].f64[0];
  if (qword_280C27E70 != -1)
  {
    v13 = v1[1];
    v14 = v10;
    swift_once();
    v9 = v13;
    v10 = v14;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v10, xmmword_280C27E78), vceqq_f64(v9, *&qword_280C27E88)))) & 1) != 0 && v11 == *&qword_280C27E98)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217F4B284();
    __swift_mutable_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_217F4B174();
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v13 = v9;
    v14 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217EF6F84();
    sub_217F4B294();
    LOBYTE(v15[0]) = 0;
    sub_217F4B0A4();
    if (!v2)
    {
      LOBYTE(v15[0]) = 1;
      sub_217F4B0A4();
      LOBYTE(v15[0]) = 2;
      sub_217F4B0A4();
      LOBYTE(v15[0]) = 3;
      sub_217F4B0A4();
      LOBYTE(v15[0]) = 4;
      sub_217F4B0A4();
    }

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_217ED8C78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F48, &qword_217F52210);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v34 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217F4B264();
  if (v2)
  {
    MEMORY[0x21CEAF510](v2);
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_217F03AD0(v34, &qword_27CBF5F50, &qword_217F52218);
LABEL_4:
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217EF6F84();
    sub_217F4B274();
    if (qword_280C27E70 != -1)
    {
      swift_once();
    }

    v12 = *(&xmmword_280C27E78 + 1);
    v13 = *&qword_280C27E88;
    v14 = *&qword_280C27E90;
    v15 = *&qword_280C27E98;
    LOBYTE(v36[0]) = 0;
    sub_217F4AFA4();
    v17 = v16;
    LOBYTE(v36[0]) = 1;
    v18 = COERCE_DOUBLE(sub_217F4AF34());
    if ((v19 & 1) == 0)
    {
      v12 = v18;
    }

    LOBYTE(v36[0]) = 2;
    v20 = COERCE_DOUBLE(sub_217F4AF34());
    if ((v21 & 1) == 0)
    {
      v13 = v20;
    }

    LOBYTE(v36[0]) = 3;
    *&v22 = COERCE_DOUBLE(sub_217F4AF34());
    v24 = v23;
    v25 = *&v22;
    LOBYTE(v36[0]) = 4;
    v26 = COERCE_DOUBLE(sub_217F4AF34());
    if (v24)
    {
      v32 = v14;
    }

    else
    {
      v32 = v25;
    }

    if (v27)
    {
      v33 = v15;
    }

    else
    {
      v33 = v26;
    }

    *v36 = v17;
    sub_217EBA594(v17);
    (*(v6 + 8))(v9, v5);
    if (v32 <= v33)
    {
      v14 = v32;
      v15 = v33;
    }

    v30 = v36[0];
    goto LABEL_21;
  }

  sub_217EF6FD8(v34, v36);
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  v10 = sub_217F4B154();
  if (v10 == 0x797469746E656469 && v11 == 0xE800000000000000)
  {
  }

  else
  {
    v29 = sub_217F4B144();

    if ((v29 & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(v36);
      goto LABEL_4;
    }
  }

  if (qword_280C27E70 != -1)
  {
    swift_once();
  }

  v12 = *(&xmmword_280C27E78 + 1);
  v30 = xmmword_280C27E78;
  v13 = *&qword_280C27E88;
  v14 = *&qword_280C27E90;
  v15 = *&qword_280C27E98;
  __swift_destroy_boxed_opaque_existential_1(v36);
LABEL_21:
  *a2 = v30;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 sub_217ED90D0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  result = *(v1 + 8);
  v5 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_217ED90F0(uint64_t a1, char a2)
{
  result = *v2;
  if ((*(v2 + 48) & 1) == 0 && (a2 & 1) == 0)
  {
    return sub_217ED8374(result, a1);
  }

  return result;
}

uint64_t sub_217ED914C()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x657A69536E696DLL;
  }
}

uint64_t sub_217ED918C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657A69536E696DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F5ED60 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

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

uint64_t sub_217ED927C(uint64_t a1)
{
  v2 = sub_217EF6FF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED92B8(uint64_t a1)
{
  v2 = sub_217EF6FF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED92F4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F58, &qword_217F52220);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  v9 = *(v1 + 8);
  v13 = *(v1 + 24);
  v14 = v9;
  v12 = *(v1 + 40);
  v19 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6FF0();
  sub_217F4B294();
  LOBYTE(v15) = 0;
  sub_217F4B0B4();
  if (!v2)
  {
    v15 = v14;
    v16 = v13;
    v17 = v12;
    v18 = v19;
    v20 = 1;
    sub_217EF6DE8();
    sub_217F4B054();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_217ED94A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F60, &qword_217F52228);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6FF0();
  sub_217F4B274();
  if (!v2)
  {
    LOBYTE(v16[0]) = 0;
    v10 = sub_217F4AFB4();
    v19 = 1;
    sub_217EF6EB8();
    sub_217F4AF54();
    (*(v6 + 8))(v9, v5);
    v11 = v17;
    v12 = v18;
    v13 = v16[0];
    v14 = v16[1];
    *a2 = v10;
    *(a2 + 8) = v13;
    *(a2 + 24) = v14;
    *(a2 + 40) = v11;
    *(a2 + 48) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217ED9678(uint64_t a1)
{
  v6[4] = *v1;
  v2 = *(a1 + 80);
  v6[0] = *(a1 + 16);
  v6[1] = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  v6[2] = v2;
  v6[3] = &off_280C27760;
  v3 = type metadata accessor for ConditionalConfigurableValue(0, v6);
  ConditionalConfigurableValue.wrappedValue.getter(v3, v4, v6);
  return v6[0];
}

uint64_t sub_217ED96E0(uint64_t a1)
{
  v6[4] = *(v1 + 48);
  v2 = *(a1 + 88);
  v6[0] = *(a1 + 24);
  v6[1] = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  v6[2] = v2;
  v6[3] = &off_280C27760;
  v3 = type metadata accessor for ConditionalConfigurableValue(0, v6);
  ConditionalConfigurableValue.wrappedValue.getter(v3, v4, v6);
  return v6[0];
}

uint64_t sub_217ED9748(uint64_t a1)
{
  v6[4] = *(v1 + 96);
  v2 = *(a1 + 96);
  v6[0] = *(a1 + 32);
  v6[1] = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  v6[2] = v2;
  v6[3] = &off_280C27760;
  v3 = type metadata accessor for ConditionalConfigurableValue(0, v6);
  ConditionalConfigurableValue.wrappedValue.getter(v3, v4, v6);
  return v6[0];
}

uint64_t sub_217ED97B0(uint64_t a1)
{
  v6[4] = *(v1 + 152);
  v2 = *(a1 + 104);
  v6[0] = *(a1 + 40);
  v6[1] = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  v6[2] = v2;
  v6[3] = &off_280C27760;
  v3 = type metadata accessor for ConditionalConfigurableValue(0, v6);
  ConditionalConfigurableValue.wrappedValue.getter(v3, v4, v6);
  return v6[0];
}

uint64_t sub_217ED9818(uint64_t a1)
{
  v6[4] = *(v1 + 200);
  v2 = *(a1 + 112);
  v6[0] = *(a1 + 48);
  v6[1] = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  v6[2] = v2;
  v6[3] = &off_280C27760;
  v3 = type metadata accessor for ConditionalConfigurableValue(0, v6);
  ConditionalConfigurableValue.wrappedValue.getter(v3, v4, v6);
  return v6[0];
}

uint64_t sub_217ED9880(uint64_t a1)
{
  v6[4] = *(v1 + 248);
  v2 = *(a1 + 120);
  v6[0] = *(a1 + 56);
  v6[1] = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  v6[2] = v2;
  v6[3] = &off_280C27760;
  v3 = type metadata accessor for ConditionalConfigurableValue(0, v6);
  ConditionalConfigurableValue.wrappedValue.getter(v3, v4, v6);
  return v6[0];
}

uint64_t sub_217ED991C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 312);
  v11 = *(v2 + 296);
  v12 = v4;
  v5 = *(v2 + 344);
  v13 = *(v2 + 328);
  v14 = v5;
  v6 = *(a1 + 128);
  v10[0] = *(a1 + 64);
  v10[1] = &_s14descr2829CD401O22QuotaConditionProviderVN;
  v10[2] = v6;
  v10[3] = sub_217EF7044();
  v7 = type metadata accessor for ConditionalConfigurableValue(0, v10);
  return ConditionalConfigurableValue.wrappedValue.getter(v7, v8, a2);
}

double sub_217ED9994@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v4 = *(a1 + a2 - 112);
  v12[0] = *(a1 + a2 - 128);
  v12[1] = v4;
  v5 = *(a1 + a2 - 80);
  v12[2] = *(a1 + a2 - 96);
  v12[3] = v5;
  v6 = *(a1 + a2 - 48);
  v12[4] = *(a1 + a2 - 64);
  v12[5] = v6;
  v7 = *(a1 + a2 - 16);
  v12[6] = *(a1 + a2 - 32);
  v12[7] = v7;
  v8 = _s14descr2829CD401O13ConfigurationV23ClusteringConfigurationV15ClusteringKnobsVMa(0, v12);
  sub_217ED991C(v8, v13);
  v9 = v13[1];
  *a3 = v13[0];
  a3[1] = v9;
  result = *&v14;
  v11 = v15;
  a3[2] = v14;
  a3[3] = v11;
  return result;
}

uint64_t sub_217ED9A08(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v18[0] = *a1;
  v18[1] = v5;
  v6 = a1[3];
  v18[2] = a1[2];
  v18[3] = v6;
  v15 = *(a3 + a4 - 112);
  v16 = *(a3 + a4 - 128);
  v13 = *(a3 + a4 - 80);
  v14 = *(a3 + a4 - 96);
  v11 = *(a3 + a4 - 48);
  v12 = *(a3 + a4 - 64);
  v9 = *(a3 + a4 - 16);
  v10 = *(a3 + a4 - 32);
  sub_217EB2994(v18, v17);
  v17[0] = v16;
  v17[1] = v15;
  v17[2] = v14;
  v17[3] = v13;
  v17[4] = v12;
  v17[5] = v11;
  v17[6] = v10;
  v17[7] = v9;
  v7 = _s14descr2829CD401O13ConfigurationV23ClusteringConfigurationV15ClusteringKnobsVMa(0, v17);
  return sub_217ED9AB4(a1, v7);
}

uint64_t sub_217ED9AB4(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v8[0] = *a1;
  v8[1] = v2;
  v3 = a1[3];
  v8[2] = a1[2];
  v8[3] = v3;
  v4 = *(a2 + 128);
  v7[0] = *(a2 + 64);
  v7[1] = &_s14descr2829CD401O22QuotaConditionProviderVN;
  v7[2] = v4;
  v7[3] = sub_217EF7044();
  v5 = type metadata accessor for ConditionalConfigurableValue(0, v7);
  return ConditionalConfigurableValue.wrappedValue.setter(v8, v5);
}

void (*sub_217ED9B28(uint64_t *a1, uint64_t a2))(__int128 **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x150uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 320) = v2;
  v7 = *(v2 + 296);
  v8 = *(v2 + 312);
  v9 = *(v2 + 344);
  *(v5 + 96) = *(v2 + 328);
  *(v5 + 112) = v9;
  *(v5 + 64) = v7;
  *(v5 + 80) = v8;
  v10 = *(a2 + 64);
  v11 = *(a2 + 128);
  v12 = sub_217EF7044();
  v6[16] = v10;
  v6[17] = &_s14descr2829CD401O22QuotaConditionProviderVN;
  v6[18] = v11;
  v6[19] = v12;
  v13 = type metadata accessor for ConditionalConfigurableValue(0, (v6 + 16));
  v6[41] = v13;
  ConditionalConfigurableValue.wrappedValue.getter(v13, v14, v6);
  return sub_217ED9BEC;
}

void sub_217ED9BEC(__int128 **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 41);
    v4 = *v2;
    v5 = v2[1];
    v2[8] = *v2;
    v2[9] = v5;
    v6 = v2[2];
    v7 = v2[3];
    v2[10] = v6;
    v2[11] = v7;
    v2[12] = v4;
    v2[13] = v5;
    v2[14] = v6;
    v2[15] = v7;
    sub_217EB2994((v2 + 8), (v2 + 16));
    ConditionalConfigurableValue.wrappedValue.setter(v2 + 192, v3);
    v8 = v2[1];
    v2[4] = *v2;
    v2[5] = v8;
    v9 = v2[3];
    v2[6] = v2[2];
    v2[7] = v9;
    sub_217EB2A44((v2 + 4));
  }

  else
  {
    v10 = *(v2 + 41);
    v11 = v2[1];
    v2[4] = *v2;
    v2[5] = v11;
    v12 = v2[3];
    v2[6] = v2[2];
    v2[7] = v12;
    ConditionalConfigurableValue.wrappedValue.setter(v2 + 64, v10);
  }

  free(v2);
}

uint64_t sub_217ED9CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[46];
  v5 = v2[47];
  v10[4] = v2[45];
  v10[5] = v4;
  v10[6] = v5;
  v6 = *(a1 + 136);
  v10[0] = *(a1 + 72);
  v10[1] = &_s14descr2829CD401O31TopicDiversityConditionProviderVN;
  v10[2] = v6;
  v10[3] = sub_217EF7098();
  v7 = type metadata accessor for ConditionalConfigurableValue(0, v10);
  return ConditionalConfigurableValue.wrappedValue.getter(v7, v8, a2);
}

double sub_217ED9D14@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + a2 - 112);
  v12 = *(a1 + a2 - 128);
  v13 = v4;
  v5 = *(a1 + a2 - 80);
  v14 = *(a1 + a2 - 96);
  v15 = v5;
  v6 = *(a1 + a2 - 48);
  v16 = *(a1 + a2 - 64);
  v17 = v6;
  v7 = *(a1 + a2 - 16);
  v18 = *(a1 + a2 - 32);
  v19 = v7;
  v8 = _s14descr2829CD401O13ConfigurationV23ClusteringConfigurationV15ClusteringKnobsVMa(0, &v12);
  sub_217ED9CA0(v8, &v12);
  v11 = *(&v12 + 1);
  result = *&v12;
  v9 = v13;
  *a3 = v12;
  a3[1] = v11;
  a3[2] = v9;
  return result;
}

uint64_t sub_217ED9D88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + a4;
  v5 = *a1;
  v7 = a1[1];
  v6 = a1[2];
  v15[0] = v5;
  v15[1] = v7;
  v15[2] = v6;

  v8 = *(v4 - 112);
  v14[0] = *(v4 - 128);
  v14[1] = v8;
  v9 = *(v4 - 80);
  v14[2] = *(v4 - 96);
  v14[3] = v9;
  v10 = *(v4 - 48);
  v14[4] = *(v4 - 64);
  v14[5] = v10;
  v11 = *(v4 - 16);
  v14[6] = *(v4 - 32);
  v14[7] = v11;
  v12 = _s14descr2829CD401O13ConfigurationV23ClusteringConfigurationV15ClusteringKnobsVMa(0, v14);
  return sub_217ED9E00(v15, v12);
}

uint64_t sub_217ED9E00(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v8[0] = *a1;
  v8[1] = v2;
  v8[2] = v3;
  v4 = *(a2 + 136);
  v7[0] = *(a2 + 72);
  v7[1] = &_s14descr2829CD401O31TopicDiversityConditionProviderVN;
  v7[2] = v4;
  v7[3] = sub_217EF7098();
  v5 = type metadata accessor for ConditionalConfigurableValue(0, v7);
  return ConditionalConfigurableValue.wrappedValue.setter(v8, v5);
}

void (*sub_217ED9E74(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x60uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[10] = v2;
  v7 = v2[46];
  v8 = v2[47];
  v5[7] = v2[45];
  v5[8] = v7;
  v5[9] = v8;
  v9 = *(a2 + 72);
  v10 = *(a2 + 136);
  v11 = sub_217EF7098();
  *v6 = v9;
  v6[1] = &_s14descr2829CD401O31TopicDiversityConditionProviderVN;
  v6[2] = v10;
  v6[3] = v11;
  v12 = type metadata accessor for ConditionalConfigurableValue(0, v6);
  v6[11] = v12;
  ConditionalConfigurableValue.wrappedValue.getter(v12, v13, (v6 + 4));
  return sub_217ED9F38;
}

void sub_217ED9F38(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(v2 + 88);
  *v2 = v3;
  *(v2 + 8) = v5;
  *(v2 + 16) = v4;
  if (a2)
  {

    ConditionalConfigurableValue.wrappedValue.setter(v2, v6);
  }

  else
  {
    ConditionalConfigurableValue.wrappedValue.setter(v2, v6);
  }

  free(v2);
}

__n128 sub_217ED9FC0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 400);
  *a1 = *(v1 + 384);
  *(a1 + 16) = v2;
  result = *(v1 + 416);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v1 + 432);
  return result;
}

uint64_t sub_217ED9FDC(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    memcpy(v8, (v3 + 48), sizeof(v8));
    return sub_217ED9678(a3);
  }

  else
  {
    memcpy(v8, (v3 + 48), sizeof(v8));
    v7 = sub_217ED9678(a3);
    return sub_217ED8374(v7, a1);
  }
}

uint64_t sub_217EDA0A0(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    memcpy(v8, (v3 + 96), sizeof(v8));
    return sub_217ED96E0(a3);
  }

  else
  {
    memcpy(v8, (v3 + 96), sizeof(v8));
    v7 = sub_217ED96E0(a3);
    return sub_217ED8374(v7, a1);
  }
}

uint64_t sub_217EDA188(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    memcpy(v8, (v3 + 144), sizeof(v8));
    return sub_217ED9748(a3);
  }

  else
  {
    memcpy(v8, (v3 + 144), sizeof(v8));
    v7 = sub_217ED9748(a3);
    return sub_217ED8374(v7, a1);
  }
}

uint64_t sub_217EDA280(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return sub_217ED97B0(a3);
  }

  v5 = sub_217ED97B0(a3);
  return sub_217ED8374(v5, a1);
}

uint64_t sub_217EDA3FC(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return sub_217ED9818(a3);
  }

  v5 = sub_217ED9818(a3);
  return sub_217ED8374(v5, a1);
}

uint64_t sub_217EDA578(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return sub_217ED9880(a3);
  }

  v5 = sub_217ED9880(a3);
  return sub_217ED8374(v5, a1);
}

BOOL sub_217EDA6E4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    return result;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 56), *(a2 + 56)), vceqq_f64(*(a1 + 72), *(a2 + 72))))) & 1) == 0 || *(a1 + 88) != *(a2 + 88))
  {
    return result;
  }

  if (*(a1 + 96) != *(a2 + 96))
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 104), *(a2 + 104)), vceqq_f64(*(a1 + 120), *(a2 + 120))))) & 1) != 0 && *(a1 + 136) == *(a2 + 136))
  {
    v15 = v2;
    v16 = v3;
    v6 = a1;
    if ((sub_217ED3610(*(a1 + 144), *(a2 + 144)) & 1) == 0 || *(v6 + 152) != *(a2 + 152))
    {
      return 0;
    }

    result = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v6 + 160), *(a2 + 160)), vceqq_f64(*(v6 + 176), *(a2 + 176))))) & 1) != 0 && *(v6 + 192) == *(a2 + 192))
    {
      if (*(v6 + 200) != *(a2 + 200))
      {
        return 0;
      }

      result = 0;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v6 + 208), *(a2 + 208)), vceqq_f64(*(v6 + 224), *(a2 + 224))))) & 1) != 0 && *(v6 + 240) == *(a2 + 240))
      {
        if (*(v6 + 248) != *(a2 + 248))
        {
          return 0;
        }

        result = 0;
        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v6 + 256), *(a2 + 256)), vceqq_f64(*(v6 + 272), *(a2 + 272))))) & 1) != 0 && *(v6 + 288) == *(a2 + 288))
        {
          v8 = *(v6 + 312);
          v14[0] = *(v6 + 296);
          v14[1] = v8;
          v9 = *(v6 + 344);
          v14[2] = *(v6 + 328);
          v14[3] = v9;
          v10 = *(a2 + 312);
          v13[0] = *(a2 + 296);
          v13[1] = v10;
          v11 = *(a2 + 344);
          v13[2] = *(a2 + 328);
          v13[3] = v11;
          if (sub_217ED177C(v14, v13) & 1) != 0 && *(v6 + 360) == *(a2 + 360) && *(v6 + 368) == *(a2 + 368) && (sub_217ED6368(*(v6 + 376), *(a2 + 376)))
          {
            v12 = *(a2 + 433);
            if (*(v6 + 433))
            {
              return (v12 & 1) != 0;
            }

            if ((*(a2 + 433) & 1) == 0 && *(v6 + 384) == *(a2 + 384))
            {
              v12 = *(a2 + 432);
              if (*(v6 + 432))
              {
                return (v12 & 1) != 0;
              }

              if ((*(a2 + 432) & 1) == 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v6 + 392), *(a2 + 392)), vceqq_f64(*(v6 + 408), *(a2 + 408))))) & 1) != 0 && *(v6 + 424) == *(a2 + 424))
              {
                return 1;
              }
            }
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_217EDA9E8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *a1;
  v21 = *(a1 + 5);
  v22 = a1[6];
  v23 = *(a1 + 11);
  v24 = a1[12];
  v25 = *(a1 + 17);
  v26 = a1[18];
  v87 = a1[19];
  v82 = *(a1 + 24);
  v80 = a1[25];
  v75 = *(a1 + 30);
  v73 = a1[31];
  v67 = *(a1 + 36);
  v27 = *(a1 + 39);
  v112 = *(a1 + 37);
  v113 = v27;
  v28 = *(a1 + 43);
  v114 = *(a1 + 41);
  v115 = v28;
  v64 = a1[45];
  v63 = a1[46];
  v65 = a1[47];
  v58 = a1[48];
  v50 = *(a1 + 53);
  v56 = *(a1 + 432);
  v60 = *(a1 + 433);
  v29 = *a2;
  v99 = *(a1 + 1);
  v100 = *(a1 + 3);
  v97 = *(a2 + 1);
  v98 = *(a2 + 3);
  v30 = *(a2 + 5);
  v31 = a2[6];
  v95 = *(a1 + 7);
  v96 = *(a1 + 9);
  v93 = *(a2 + 7);
  v94 = *(a2 + 9);
  v32 = *(a2 + 11);
  v33 = a2[12];
  v91 = *(a1 + 13);
  v92 = *(a1 + 15);
  v89 = *(a2 + 13);
  v90 = *(a2 + 15);
  v35 = a2[18];
  v34 = a2[19];
  v85 = *(a1 + 10);
  v86 = *(a1 + 11);
  v36 = a2[25];
  v78 = *(a1 + 13);
  v79 = *(a1 + 14);
  v72 = a2[31];
  v70 = *(a1 + 16);
  v71 = *(a1 + 17);
  v37 = *(a2 + 39);
  v116 = *(a2 + 37);
  v117 = v37;
  v38 = *(a2 + 43);
  v118 = *(a2 + 41);
  v119 = v38;
  *(&v61 + 1) = a2[46];
  v62 = a2[47];
  v53 = *(a1 + 49);
  v54 = *(a1 + 51);
  v51 = *(a2 + 49);
  v52 = *(a2 + 51);
  v57 = a2[48];
  *v111 = v20;
  v55 = *(a2 + 432);
  *v110 = v29;
  v59 = *(a2 + 433);
  v39 = *(a2 + 17);
  v83 = *(a2 + 10);
  v84 = *(a2 + 11);
  v40 = *(a2 + 24);
  v76 = *(a2 + 13);
  v77 = *(a2 + 14);
  v41 = *(a2 + 30);
  v68 = *(a2 + 16);
  v69 = *(a2 + 17);
  v66 = *(a2 + 36);
  *&v61 = a2[45];
  v49 = *(a2 + 53);
  if ((static ConditionalConfigurableValue.== infix(_:_:)(v111, v110, a3, &_s14descr2829CD401O28PositiveIntConditionProviderVN, a11) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v99, v97), vceqq_f64(v100, v98)))) & 1) == 0 || v21 != v30)
  {
    return result;
  }

  *&v111[0] = v22;
  *&v110[0] = v31;
  if ((static ConditionalConfigurableValue.== infix(_:_:)(v111, v110, a4, &_s14descr2829CD401O28PositiveIntConditionProviderVN, a12) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v95, v93), vceqq_f64(v96, v94)))) & 1) == 0 || v23 != v32)
  {
    return result;
  }

  *&v111[0] = v24;
  *&v110[0] = v33;
  if ((static ConditionalConfigurableValue.== infix(_:_:)(v111, v110, a5, &_s14descr2829CD401O28PositiveIntConditionProviderVN, a13) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v91, v89), vceqq_f64(v92, v90)))) & 1) == 0 || v25 != v39)
  {
    return result;
  }

  if ((sub_217ED3610(v26, v35) & 1) == 0)
  {
    return 0;
  }

  *&v111[0] = v87;
  *&v110[0] = v34;
  if ((static ConditionalConfigurableValue.== infix(_:_:)(v111, v110, a6, &_s14descr2829CD401O28PositiveIntConditionProviderVN, a14) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v85, v83), vceqq_f64(v86, v84)))) & 1) == 0 || v82 != v40)
  {
    return result;
  }

  *&v111[0] = v80;
  *&v110[0] = v36;
  if ((static ConditionalConfigurableValue.== infix(_:_:)(v111, v110, a7, &_s14descr2829CD401O28PositiveIntConditionProviderVN, a15) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v78, v76), vceqq_f64(v79, v77)))) & 1) == 0 || v75 != v41)
  {
    return result;
  }

  *&v111[0] = v73;
  *&v110[0] = v72;
  if ((static ConditionalConfigurableValue.== infix(_:_:)(v111, v110, a8, &_s14descr2829CD401O28PositiveIntConditionProviderVN, a16) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v70, v68), vceqq_f64(v71, v69)))) & 1) != 0 && v67 == v66)
  {
    v106 = v112;
    v107 = v113;
    v108 = v114;
    v109 = v115;
    v102 = v116;
    v103 = v117;
    v104 = v118;
    v105 = v119;
    v101[0] = a9;
    v101[1] = &_s14descr2829CD401O22QuotaConditionProviderVN;
    v101[2] = a17;
    v101[3] = sub_217EF7044();
    v43 = type metadata accessor for ConditionalConfigurableValue(0, v101);
    v44 = *(v43 - 8);
    v45 = *(v44 + 16);
    v45(v101, &v112, v43);
    v45(v101, &v116, v43);
    v46 = static ConditionalConfigurableValue.== infix(_:_:)(&v106, &v102, a9, &_s14descr2829CD401O22QuotaConditionProviderVN, a17);
    v110[0] = v102;
    v110[1] = v103;
    v110[2] = v104;
    v110[3] = v105;
    v47 = *(v44 + 8);
    v47(v110, v43);
    v111[0] = v106;
    v111[1] = v107;
    v111[2] = v108;
    v111[3] = v109;
    v47(v111, v43);
    if (v46)
    {
      *&v106 = v64;
      *(&v106 + 1) = v63;
      *&v107 = v65;
      v102 = v61;
      *&v103 = v62;
      sub_217EF7098();

      v48 = static ConditionalConfigurableValue.== infix(_:_:)(&v106, &v102, a10, &_s14descr2829CD401O31TopicDiversityConditionProviderVN, a18);

      if (v48)
      {
        if (v60)
        {
          if (v59)
          {
            return 1;
          }
        }

        else if ((v59 & 1) == 0 && v58 == v57)
        {
          if (v56)
          {
            if (v55)
            {
              return 1;
            }
          }

          else if ((v55 & 1) == 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v53, v51), vceqq_f64(v54, v52)))) & 1) != 0 && v50 == v49)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_217EDB0A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x8000000217F5ED80 == a2;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000217F5EDA0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217F5EDD0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000217F5EDF0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217F5EE20 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000217F5EE40 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000217F5EE70 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x414347494178616DLL && a2 == 0xEF73656C63697472 || (sub_217F4B144() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217F5EEA0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x657A695378616DLL && a2 == 0xE700000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F5EEC0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x657A69536E696DLL && a2 == 0xE700000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F5ED60 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217F5EEE0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7669446369706F74 && a2 == 0xEE00797469737265 || (sub_217F4B144() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F5EF00 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_217EDB5D8(unsigned __int8 a1)
{
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](a1);
  return sub_217F4B254();
}

uint64_t sub_217EDB620(char a1)
{
  result = 0x414347494178616DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000022;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
    case 5:
      result = 0xD000000000000025;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000024;
      break;
    case 7:
      return result;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      v3 = 1400398189;
      goto LABEL_7;
    case 10:
    case 12:
      result = 0xD000000000000015;
      break;
    case 11:
      v3 = 1399744877;
LABEL_7:
      result = v3 | 0x657A6900000000;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0x7669446369706F74;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_217EDB8E0(uint64_t a1)
{
  sub_217F4B224();
  sub_217EDB5B0(v3, *v1);
  return sub_217F4B254();
}

uint64_t sub_217EDB99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217EDB0A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EDBA00@<X0>(_BYTE *a2@<X8>)
{
  result = sub_217F0032C();
  *a2 = result;
  return result;
}

uint64_t sub_217EDBA5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_217EDBAB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_217EDBB04(void *a1, void *a2)
{
  v4 = a2[3];
  v87 = a2[2];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  v11 = a2[11];
  v86 = a2[10];
  v12 = a2[12];
  v13 = a2[13];
  v15 = a2[14];
  v14 = a2[15];
  v17 = a2[16];
  v16 = a2[17];
  *&v103 = v87;
  v83 = v11;
  v84 = v4;
  *(&v103 + 1) = v4;
  v76 = v5;
  v77 = v12;
  *&v104 = v5;
  v70 = v13;
  v71 = v6;
  *(&v104 + 1) = v6;
  v65 = v15;
  v66 = v7;
  *&v105 = v7;
  v60 = v14;
  v61 = v8;
  *(&v105 + 1) = v8;
  v55 = v17;
  v56 = v9;
  *&v106 = v9;
  v53 = v16;
  v54 = v10;
  *(&v106 + 1) = v10;
  v107 = v86;
  v108 = v11;
  v109 = v12;
  v110 = v13;
  v111 = v15;
  v112 = v14;
  v113 = v17;
  v114 = v16;
  _s14descr2829CD401O13ConfigurationV23ClusteringConfigurationV15ClusteringKnobsV10CodingKeysOMa(255, &v103);
  swift_getWitnessTable();
  v18 = sub_217F4B0E4();
  v89 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v51 - v20;
  v85 = *v2;
  v22 = *(v2 + 1);
  v81 = *(v2 + 3);
  v82 = v22;
  v23 = v2[5];
  v80 = v2[6];
  v24 = *(v2 + 7);
  v78 = *(v2 + 9);
  v79 = v24;
  v25 = v2[11];
  v75 = v2[12];
  v26 = *(v2 + 13);
  v73 = *(v2 + 15);
  v74 = v26;
  v27 = v2[17];
  v28 = v2[19];
  v72 = v2[18];
  v69 = v28;
  v29 = *(v2 + 10);
  v67 = *(v2 + 11);
  v68 = v29;
  v30 = v2[24];
  v64 = v2[25];
  v31 = *(v2 + 13);
  v62 = *(v2 + 14);
  v63 = v31;
  v32 = v2[30];
  v59 = v2[31];
  v33 = *(v2 + 16);
  v57 = *(v2 + 17);
  v58 = v33;
  v34 = v2[36];
  v35 = *(v2 + 39);
  v115 = *(v2 + 37);
  v116 = v35;
  v36 = *(v2 + 43);
  v117 = *(v2 + 41);
  v118 = v36;
  v37 = v2[45];
  v38 = v2[47];
  v51 = v2[46];
  v52 = v38;
  v39 = *(v2 + 25);
  v119 = *(v2 + 24);
  v120 = v39;
  v121 = *(v2 + 26);
  v122 = *(v2 + 216);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = v18;
  sub_217F4B294();
  *&v98 = v85;
  LOBYTE(v90) = 0;
  *&v103 = v87;
  *(&v103 + 1) = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  *&v104 = v86;
  *(&v104 + 1) = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue(0, &v103);
  swift_getWitnessTable();
  v41 = v88;
  sub_217F4B0C4();
  if (v41)
  {
    return (*(v89 + 8))(v21, v18);
  }

  v43 = v80;
  v44 = v83;
  v45 = v84;
  v103 = v82;
  v104 = v81;
  *&v105 = v23;
  LOBYTE(v98) = 1;
  v46 = sub_217EF6DE8();
  sub_217F4B0C4();
  v87 = v46;
  *&v98 = v43;
  LOBYTE(v90) = 2;
  *&v103 = v45;
  *(&v103 + 1) = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  *&v104 = v44;
  *(&v104 + 1) = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue(0, &v103);
  swift_getWitnessTable();
  v88 = v40;
  sub_217F4B0C4();
  v103 = v79;
  v104 = v78;
  *&v105 = v25;
  LOBYTE(v98) = 3;
  sub_217F4B0C4();
  *&v98 = v75;
  LOBYTE(v90) = 4;
  *&v103 = v76;
  *(&v103 + 1) = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  *&v104 = v77;
  *(&v104 + 1) = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue(0, &v103);
  swift_getWitnessTable();
  sub_217F4B0C4();
  v103 = v74;
  v104 = v73;
  *&v105 = v27;
  LOBYTE(v98) = 5;
  sub_217F4B0C4();
  *&v103 = v72;
  LOBYTE(v98) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F68, &qword_217F52230);
  sub_217EF7104();
  sub_217F4B0C4();
  *&v98 = v69;
  LOBYTE(v90) = 7;
  *&v103 = v71;
  *(&v103 + 1) = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  *&v104 = v70;
  *(&v104 + 1) = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue(0, &v103);
  swift_getWitnessTable();
  sub_217F4B0C4();
  v103 = v68;
  v104 = v67;
  *&v105 = v30;
  LOBYTE(v98) = 8;
  sub_217F4B0C4();
  *&v98 = v64;
  LOBYTE(v90) = 9;
  *&v103 = v66;
  *(&v103 + 1) = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  *&v104 = v65;
  *(&v104 + 1) = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue(0, &v103);
  swift_getWitnessTable();
  sub_217F4B0C4();
  v103 = v63;
  v104 = v62;
  *&v105 = v32;
  LOBYTE(v98) = 10;
  sub_217F4B0C4();
  *&v98 = v59;
  LOBYTE(v90) = 11;
  *&v103 = v61;
  *(&v103 + 1) = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  *&v104 = v60;
  *(&v104 + 1) = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue(0, &v103);
  swift_getWitnessTable();
  sub_217F4B0C4();
  v103 = v58;
  v104 = v57;
  *&v105 = v34;
  LOBYTE(v98) = 12;
  sub_217F4B0C4();
  v103 = v115;
  v104 = v116;
  v105 = v117;
  v106 = v118;
  v102 = 13;
  v47 = sub_217EF7044();
  *&v98 = v56;
  *(&v98 + 1) = &_s14descr2829CD401O22QuotaConditionProviderVN;
  *&v99 = v55;
  *(&v99 + 1) = v47;
  v48 = type metadata accessor for ConditionalConfigurableValue(0, &v98);
  v49 = *(v48 - 8);
  (*(v49 + 16))(&v98, &v115, v48);
  swift_getWitnessTable();
  sub_217F4B0C4();
  v98 = v103;
  v99 = v104;
  v100 = v105;
  v101 = v106;
  (*(v49 + 8))(&v98, v48);
  v95 = v37;
  v96 = v51;
  v97 = v52;
  v94 = 14;
  v50 = sub_217EF7098();

  *&v90 = v54;
  *(&v90 + 1) = &_s14descr2829CD401O31TopicDiversityConditionProviderVN;
  *&v91 = v53;
  *(&v91 + 1) = v50;
  type metadata accessor for ConditionalConfigurableValue(0, &v90);
  swift_getWitnessTable();
  sub_217F4B0C4();

  v90 = v119;
  v91 = v120;
  v92 = v121;
  v93 = v122;
  LOBYTE(v95) = 15;
  sub_217EF7188();
  sub_217F4B054();
  return (*(v89 + 8))(v21, v88);
}

uint64_t sub_217EDC50C@<X0>(void *a1@<X0>, ValueMetadata *a2@<X1>, ValueMetadata *a3@<X2>, ValueMetadata *a4@<X3>, ValueMetadata *a5@<X4>, ValueMetadata *a6@<X5>, ValueMetadata *a7@<X6>, ValueMetadata *a8@<X7>, void *a9@<X8>, ValueMetadata *a10, ValueMetadata *a11, ValueMetadata *a12, ValueMetadata *a13, ValueMetadata *a14, ValueMetadata *a15, ValueMetadata *a16, ValueMetadata *a17, ValueMetadata *a18)
{
  v86 = a9;
  v100 = a11;
  v101 = a2;
  v106 = a2;
  v98 = a12;
  v99 = a3;
  v107 = a3;
  v95 = a8;
  v96 = a4;
  v108 = a4;
  v92 = a5;
  v93 = a14;
  v109 = a5;
  v90 = a6;
  v91 = a15;
  v110 = a6;
  v88 = a7;
  v89 = a16;
  v111 = a7;
  v112 = a8;
  v113 = a10;
  v114 = a11;
  v115 = a12;
  v97 = a13;
  v116 = a13;
  v117 = a14;
  v118 = a15;
  v119 = a16;
  v94 = a17;
  v120 = a17;
  v87 = a18;
  v121 = a18;
  _s14descr2829CD401O13ConfigurationV23ClusteringConfigurationV15ClusteringKnobsV10CodingKeysOMa(255, &v106);
  swift_getWitnessTable();
  v103 = sub_217F4AFF4();
  v19 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v20);
  v22 = &v56 - v21;
  v23 = a1[3];
  v104 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v102 = v22;
  v24 = v172;
  sub_217F4B274();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v104);
  }

  v25 = v19;
  v172 = a10;
  v106 = v101;
  v107 = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  v26 = v99;
  v108 = v100;
  v109 = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue(0, &v106);
  LOBYTE(v106) = 0;
  swift_getWitnessTable();
  sub_217F4AFC4();
  v27 = *v105;
  v105[0] = 1;
  v28 = sub_217EF6EB8();
  sub_217F4AFC4();
  v84 = v27;
  v85 = v28;
  v29 = v106;
  v30 = v107;
  v31 = v108;
  v32 = v109;
  v33 = v110;
  v106 = v26;
  v107 = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  v108 = v98;
  v109 = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue(0, &v106);
  LOBYTE(v106) = 2;
  swift_getWitnessTable();
  sub_217F4AFC4();
  v34 = *v105;
  v105[0] = 3;
  sub_217F4AFC4();
  v81 = v30;
  v82 = v29;
  v83 = v34;
  v35 = v106;
  v36 = v107;
  v37 = v108;
  v38 = v109;
  v39 = v110;
  v106 = v96;
  v107 = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  v108 = v97;
  v109 = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue(0, &v106);
  LOBYTE(v106) = 4;
  swift_getWitnessTable();
  sub_217F4AFC4();
  v76 = v39;
  v77 = v37;
  v78 = v36;
  v79 = v35;
  v80 = v38;
  v40 = *v105;
  v105[0] = 5;
  sub_217F4AFC4();
  v75 = v40;
  v41 = v106;
  v42 = v107;
  v43 = v108;
  v44 = v109;
  v45 = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F68, &qword_217F52230);
  v105[0] = 6;
  sub_217EF71DC();
  sub_217F4AFC4();
  v74 = v106;
  v106 = v92;
  v107 = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  v108 = v93;
  v109 = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue(0, &v106);
  LOBYTE(v106) = 7;
  swift_getWitnessTable();
  sub_217F4AFC4();
  v73 = *v105;
  v105[0] = 8;
  sub_217F4AFC4();
  v72 = v45;
  v46 = v106;
  v70 = v108;
  v71 = v107;
  v68 = v110;
  v69 = v109;
  v106 = v90;
  v107 = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  v108 = v91;
  v109 = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue(0, &v106);
  LOBYTE(v106) = 9;
  swift_getWitnessTable();
  sub_217F4AFC4();
  v47 = *v105;
  v105[0] = 10;
  sub_217F4AFC4();
  v66 = v107;
  v67 = v106;
  v64 = v109;
  v65 = v108;
  v63 = v110;
  v106 = v88;
  v107 = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  v108 = v89;
  v109 = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue(0, &v106);
  LOBYTE(v106) = 11;
  swift_getWitnessTable();
  sub_217F4AFC4();
  v48 = *v105;
  v105[0] = 12;
  sub_217F4AFC4();
  v61 = v107;
  v62 = v106;
  v59 = v109;
  v60 = v108;
  v85 = v110;
  v49 = sub_217EF7044();
  v106 = v95;
  v107 = &_s14descr2829CD401O22QuotaConditionProviderVN;
  v108 = v94;
  v109 = v49;
  type metadata accessor for ConditionalConfigurableValue(0, &v106);
  v159 = 13;
  swift_getWitnessTable();
  sub_217F4AFC4();
  v168 = v160;
  v169 = v161;
  v170 = v162;
  v171 = v163;
  v50 = sub_217EF7098();
  v106 = v172;
  v107 = &_s14descr2829CD401O31TopicDiversityConditionProviderVN;
  v108 = v87;
  v109 = v50;
  type metadata accessor for ConditionalConfigurableValue(0, &v106);
  LOBYTE(v106) = 14;
  swift_getWitnessTable();
  sub_217F4AFC4();
  v58 = *v105;
  v51 = *&v105[16];
  v57 = *&v105[8];
  v154 = 15;
  sub_217EF7260();
  sub_217F4AF54();
  (*(v25 + 8))(v102, v103);
  v164 = v155;
  v165 = v156;
  v166 = v157;
  *&v105[328] = v170;
  *&v105[344] = v171;
  *&v105[296] = v168;
  *&v105[312] = v169;
  *&v105[416] = v157;
  v167 = v158;
  v52 = v84;
  *v105 = v84;
  *&v105[8] = v82;
  *&v105[16] = v81;
  *&v105[24] = v31;
  *&v105[32] = v32;
  *&v105[40] = v33;
  *&v105[48] = v83;
  *&v105[56] = v79;
  *&v105[64] = v78;
  *&v105[72] = v77;
  *&v105[80] = v80;
  *&v105[88] = v76;
  *&v105[96] = v75;
  *&v105[104] = v41;
  *&v105[112] = v42;
  *&v105[120] = v43;
  *&v105[128] = v44;
  *&v105[136] = v72;
  *&v105[144] = v74;
  *&v105[152] = v73;
  *&v105[160] = v46;
  *&v105[168] = v71;
  *&v105[176] = v70;
  *&v105[184] = v69;
  *&v105[192] = v68;
  *&v105[200] = v47;
  *&v105[208] = v67;
  *&v105[216] = v66;
  *&v105[224] = v65;
  *&v105[232] = v64;
  *&v105[240] = v63;
  *&v105[248] = v48;
  *&v105[256] = v62;
  *&v105[264] = v61;
  *&v105[272] = v60;
  *&v105[280] = v59;
  *&v105[288] = v85;
  *&v105[360] = v58;
  *&v105[368] = v57;
  *&v105[376] = v51;
  *&v105[432] = v158;
  *&v105[400] = v156;
  *&v105[384] = v155;
  memcpy(v86, v105, 0x1B2uLL);
  v106 = v101;
  v107 = v26;
  v108 = v96;
  v109 = v92;
  v110 = v90;
  v111 = v88;
  v112 = v95;
  v113 = v172;
  v114 = v100;
  v115 = v98;
  v116 = v97;
  v117 = v93;
  v118 = v91;
  v119 = v89;
  v120 = v94;
  v121 = v87;
  v53 = _s14descr2829CD401O13ConfigurationV23ClusteringConfigurationV15ClusteringKnobsVMa(0, &v106);
  v54 = *(v53 - 8);
  (*(v54 + 16))(&v106, v105, v53);
  __swift_destroy_boxed_opaque_existential_1(v104);
  v106 = v52;
  v107 = v82;
  v108 = v81;
  v109 = v31;
  v110 = v32;
  v111 = v33;
  v112 = v83;
  v113 = v79;
  v114 = v78;
  v115 = v77;
  v116 = v80;
  v117 = v76;
  v118 = v75;
  v119 = v41;
  v120 = v42;
  v121 = v43;
  v122 = v44;
  v123 = v72;
  v124 = v74;
  v125 = v73;
  v126 = v46;
  v127 = v71;
  v128 = v70;
  v129 = v69;
  v130 = v68;
  v131 = v47;
  v132 = v67;
  v133 = v66;
  v134 = v65;
  v135 = v64;
  v136 = v63;
  v137 = v48;
  v138 = v62;
  v139 = v61;
  v140 = v60;
  v141 = v59;
  v145 = v170;
  v146 = v171;
  v143 = v168;
  v144 = v169;
  v142 = v85;
  v147 = v58;
  v148 = v57;
  v149 = v51;
  v153 = v167;
  v151 = v165;
  v152 = v166;
  v150 = v164;
  return (*(v54 + 8))(&v106, v53);
}

uint64_t sub_217EDD2D4@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x1B2uLL);
  memcpy(a1, v1, 0x1B2uLL);
  return sub_217F03A50(__dst, v4, &qword_27CBF5F80, &qword_217F52238);
}

void *sub_217EDD338(const void *a1)
{
  memcpy(v4, v1, 0x1B2uLL);
  sub_217F03AD0(v4, &qword_27CBF5F80, &qword_217F52238);
  return memcpy(v1, a1, 0x1B2uLL);
}

uint64_t sub_217EDD3C4@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 440), 0x1B2uLL);
  memcpy(a1, (v1 + 440), 0x1B2uLL);
  return sub_217F03A50(__dst, v4, &qword_27CBF5F88, &qword_217F52240);
}

void *sub_217EDD428(const void *a1)
{
  memcpy(v4, (v1 + 440), 0x1B2uLL);
  sub_217F03AD0(v4, &qword_27CBF5F88, &qword_217F52240);
  return memcpy((v1 + 440), a1, 0x1B2uLL);
}

void (*sub_217EDD4E0(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 880);
  return sub_217EDD50C;
}

uint64_t (*sub_217EDD560(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 888);
  return sub_217EDD58C;
}

uint64_t sub_217EDD5D4(uint64_t a1)
{

  *(v1 + 896) = a1;
  return result;
}

uint64_t (*sub_217EDD63C(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 904);
  return sub_217EDD668;
}

uint64_t (*sub_217EDD6AC(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 912);
  a1[1] = v1;
  return sub_217EDD6D4;
}

uint64_t (*sub_217EDD714(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 920);
  return sub_217EDD740;
}

uint64_t (*sub_217EDD768(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 921);
  return sub_217EDD794;
}

void (*sub_217EDD7D0(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 928);
  return sub_217EDD7FC;
}

void (*sub_217EDD854(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 936);
  return sub_217EDD880;
}

uint64_t (*sub_217EDD8EC(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 944);
  a1[1] = v1;
  return sub_217EDD914;
}

void (*sub_217EDD970(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 952);
  return sub_217EDD99C;
}

void (*sub_217EDD9FC(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 960);
  return sub_217EDDA28;
}

uint64_t _s10XavierNews7ClassicV13ConfigurationV010ClusteringD0V012DefaultTopicE28KnobsPaidBundleArticleQuotasV12defaultValueAG0L0VvgZ_0@<X0>(_OWORD *a1@<X8>)
{
  if (qword_280C27A40 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_280C27A58;
  v7[0] = xmmword_280C27A48;
  v7[1] = xmmword_280C27A58;
  v2 = xmmword_280C27A68;
  v3 = *&qword_280C27A78;
  v7[2] = xmmword_280C27A68;
  v7[3] = *&qword_280C27A78;
  *a1 = xmmword_280C27A48;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_217EB2994(v7, &v6);
}

uint64_t Classic.Configuration.ClusteringConfiguration.moreForYouClusteringKnobs.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 968), 0x1B2uLL);
  memcpy(a1, (v1 + 968), 0x1B2uLL);
  return sub_217F03A50(__dst, v4, &qword_27CBF5F90, &qword_217F52248);
}

void *Classic.Configuration.ClusteringConfiguration.moreForYouClusteringKnobs.setter(const void *a1)
{
  memcpy(v4, (v1 + 968), 0x1B2uLL);
  sub_217F03AD0(v4, &qword_27CBF5F90, &qword_217F52248);
  return memcpy((v1 + 968), a1, 0x1B2uLL);
}

void (*sub_217EDDC4C(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 1408);
  return sub_217EDDC78;
}

void (*sub_217EDDCE0(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 1416);
  return sub_217EDDD0C;
}

uint64_t (*sub_217EDDD78(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 1424);
  a1[1] = v1;
  return sub_217EDDDA0;
}

void (*sub_217EDDE14(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 1432);
  return sub_217EDDE40;
}

uint64_t sub_217EDDE74@<X0>(_OWORD *a1@<X8>)
{
  if (qword_280C27A40 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_280C27A58;
  v7[0] = xmmword_280C27A48;
  v7[1] = xmmword_280C27A58;
  v2 = xmmword_280C27A68;
  v3 = *&qword_280C27A78;
  v7[2] = xmmword_280C27A68;
  v7[3] = *&qword_280C27A78;
  *a1 = xmmword_280C27A48;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_217EB2994(v7, &v6);
}

uint64_t sub_217EDDEFC@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 1440), 0x1B2uLL);
  memcpy(a1, (v1 + 1440), 0x1B2uLL);
  return sub_217F03A50(__dst, v4, &qword_27CBF5F98, &qword_217F52250);
}

void *sub_217EDDF60(const void *a1)
{
  memcpy(v4, (v1 + 1440), 0x1B2uLL);
  sub_217F03AD0(v4, &qword_27CBF5F98, &qword_217F52250);
  return memcpy((v1 + 1440), a1, 0x1B2uLL);
}

void (*sub_217EDE024(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 1880);
  return sub_217EDE050;
}

void (*sub_217EDE0B0(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 1888);
  return sub_217EDE0DC;
}

void (*sub_217EDE13C(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 1896);
  return sub_217EDE168;
}

void (*sub_217EDE1C8(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 1904);
  return sub_217EDE1F4;
}

void (*sub_217EDE254(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 1912);
  return sub_217EDE280;
}

unint64_t sub_217EDE2B0(char a1)
{
  result = 0xD00000000000001BLL;
  switch(a1)
  {
    case 1:
    case 9:
    case 15:
      result = 0xD000000000000016;
      break;
    case 2:
    case 13:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 8:
    case 11:
      result = 0xD000000000000025;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD000000000000027;
      break;
    case 10:
    case 18:
      result = 0xD00000000000001CLL;
      break;
    case 12:
    case 19:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 16:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0xD00000000000001BLL;
      break;
    case 20:
    case 21:
    case 22:
      result = 0xD000000000000018;
      break;
    case 23:
      result = 0xD000000000000010;
      break;
    case 24:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217EDE4D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217F00334(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EDE510(uint64_t a1)
{
  v2 = sub_217EF72CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EDE54C(uint64_t a1)
{
  v2 = sub_217EF72CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EDE588(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v62 = v3;
  v4 = v2;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FA0, &qword_217F52258);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v27 - v10;
  memcpy(v58, v4, 0x1B2uLL);
  memcpy(v59, (v4 + 440), 0x1B2uLL);
  v46 = *(v4 + 880);
  v47 = *(v4 + 888);
  v45 = *(v4 + 896);
  v44 = *(v4 + 904);
  v43 = *(v4 + 912);
  v12 = *(v4 + 920);
  v41 = *(v4 + 921);
  v42 = v12;
  v13 = *(v4 + 928);
  v39 = *(v4 + 936);
  v40 = v13;
  v38 = *(v4 + 944);
  v14 = *(v4 + 952);
  v36 = *(v4 + 960);
  v37 = v14;
  memcpy(v60, (v4 + 968), 0x1B2uLL);
  v15 = *(v4 + 1408);
  v16 = *(v4 + 1416);
  v35 = *(v4 + 1424);
  v17 = *(v4 + 1432);
  memcpy(v61, (v4 + 1440), 0x1B2uLL);
  v18 = *(v4 + 1880);
  v19 = *(v4 + 1888);
  v20 = *(v4 + 1896);
  v21 = *(v4 + 1904);
  v22 = *(v4 + 1912);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_217F03A50(v58, v57, &qword_27CBF5F80, &qword_217F52238);
  sub_217EF72CC();
  sub_217F4B294();
  memcpy(v57, v58, 0x1B2uLL);
  v56[439] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F80, &qword_217F52238);
  v23 = v11;
  sub_217EF8694(&qword_280C27EF8, &qword_27CBF5F80, &qword_217F52238, &unk_217F52F98);
  v24 = v62;
  sub_217F4B0C4();
  if (v24)
  {
    memcpy(v56, v57, 0x1B2uLL);
    sub_217F03AD0(v56, &qword_27CBF5F80, &qword_217F52238);
  }

  else
  {
    v25 = v47;
    v62 = v15;
    v33 = v17;
    v34 = v16;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    memcpy(v56, v57, 0x1B2uLL);
    sub_217F03AD0(v56, &qword_27CBF5F80, &qword_217F52238);
    memcpy(v55, v59, sizeof(v55));
    v54[439] = 1;
    sub_217F03A50(v59, v54, &qword_27CBF5F88, &qword_217F52240);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F88, &qword_217F52240);
    sub_217EF8694(&qword_280C27F08, &qword_27CBF5F88, &qword_217F52240, &unk_217F52F98);
    sub_217F4B0C4();
    v27 = v11;
    memcpy(v54, v55, 0x1B2uLL);
    sub_217F03AD0(v54, &qword_27CBF5F88, &qword_217F52240);
    v53[0] = v46;
    v52[0] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FA8, &qword_217F52260);
    sub_217EF8694(&qword_280C28778, &qword_27CBF5FA8, &qword_217F52260, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    LOBYTE(v53[0]) = v25;
    v52[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FB0, &qword_217F52268);
    sub_217EF8694(qword_280C28860, &qword_27CBF5FB0, &qword_217F52268, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4B0C4();
    v53[0] = v45;
    v52[0] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FB8, &unk_217F52270);
    sub_217EF7320();
    sub_217F4B0C4();
    LOBYTE(v53[0]) = v44;
    v52[0] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FC8, &qword_217F52280);
    sub_217EF8694(&qword_280C28858, &qword_27CBF5FC8, &qword_217F52280, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4B0C4();
    v53[0] = v43;
    v52[0] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FD0, &qword_217F52288);
    sub_217EF8694(&qword_280C28710, &qword_27CBF5FD0, &qword_217F52288, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    LOBYTE(v53[0]) = v42;
    v52[0] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FD8, &qword_217F52290);
    sub_217EF8694(&qword_280C28848, &qword_27CBF5FD8, &qword_217F52290, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4B0C4();
    LOBYTE(v53[0]) = v41;
    v52[0] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FE0, &qword_217F52298);
    sub_217EF8694(&qword_280C28850, &qword_27CBF5FE0, &qword_217F52298, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4B0C4();
    v53[0] = v40;
    v52[0] = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FE8, &qword_217F522A0);
    sub_217EF8694(&qword_280C28760, &qword_27CBF5FE8, &qword_217F522A0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v53[0] = v39;
    v52[0] = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FF0, &qword_217F522A8);
    sub_217EF8694(&qword_280C28720, &qword_27CBF5FF0, &qword_217F522A8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v53[0] = v38;
    v52[0] = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FF8, &qword_217F522B0);
    sub_217EF8694(&qword_280C28708, &qword_27CBF5FF8, &qword_217F522B0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v53[0] = v37;
    v52[0] = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6000, &qword_217F522B8);
    sub_217EF8694(&qword_280C28768, &qword_27CBF6000, &qword_217F522B8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v53[0] = v36;
    v52[0] = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6008, &qword_217F522C0);
    sub_217EF8694(&qword_280C28770, &qword_27CBF6008, &qword_217F522C0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    memcpy(v53, v60, 0x1B2uLL);
    v52[439] = 14;
    sub_217F03A50(v60, v52, &qword_27CBF5F90, &qword_217F52248);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F90, &qword_217F52248);
    sub_217EF8694(&qword_280C27F00, &qword_27CBF5F90, &qword_217F52248, &unk_217F52F98);
    sub_217F4B0C4();
    memcpy(v52, v53, 0x1B2uLL);
    sub_217F03AD0(v52, &qword_27CBF5F90, &qword_217F52248);
    v51[0] = v62;
    v50[0] = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6010, &qword_217F522C8);
    sub_217EF8694(&qword_280C28758, &qword_27CBF6010, &qword_217F522C8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v51[0] = v34;
    v50[0] = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6018, &qword_217F522D0);
    sub_217EF8694(&qword_280C28750, &qword_27CBF6018, &qword_217F522D0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v51[0] = v35;
    v50[0] = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6020, &qword_217F522D8);
    sub_217EF8694(&qword_280C28728, &qword_27CBF6020, &qword_217F522D8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v51[0] = v33;
    v50[0] = 18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6028, &qword_217F522E0);
    sub_217EF8694(&qword_280C28718, &qword_27CBF6028, &qword_217F522E0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    memcpy(v51, v61, 0x1B2uLL);
    v50[439] = 19;
    sub_217F03A50(v61, v50, &qword_27CBF5F98, &qword_217F52250);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F98, &qword_217F52250);
    sub_217EF8694(qword_280C27F18, &qword_27CBF5F98, &qword_217F52250, &unk_217F52F98);
    sub_217F4B0C4();
    memcpy(v50, v51, 0x1B2uLL);
    sub_217F03AD0(v50, &qword_27CBF5F98, &qword_217F52250);
    v49 = v28;
    v48 = 20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6030, &qword_217F522E8);
    sub_217EF8694(&qword_280C28748, &qword_27CBF6030, &qword_217F522E8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v49 = v29;
    v48 = 21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6038, &qword_217F522F0);
    sub_217EF8694(&qword_280C28740, &qword_27CBF6038, &qword_217F522F0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v49 = v30;
    v48 = 22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6040, &qword_217F522F8);
    sub_217EF8694(&qword_280C28738, &qword_27CBF6040, &qword_217F522F8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v49 = v31;
    v48 = 23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6048, &qword_217F52300);
    sub_217EF8694(qword_280C28780, &qword_27CBF6048, &qword_217F52300, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v49 = v32;
    v48 = 24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6050, &qword_217F52308);
    sub_217EF8694(&qword_280C28730, &qword_27CBF6050, &qword_217F52308, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    v23 = v27;
    sub_217F4B0C4();
  }

  return (*(v8 + 8))(v23, v7);
}

uint64_t sub_217EDF60C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6058, &qword_217F52310);
  v7 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_217EF72CC();
  sub_217F4B274();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  v36 = v6;
  v37 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F80, &qword_217F52238);
  v75[439] = 0;
  sub_217EF8694(&qword_27CBF6060, &qword_27CBF5F80, &qword_217F52238, &unk_217F52F70);
  sub_217F4AFC4();
  memcpy(v87, v76, 0x1B2uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F88, &qword_217F52240);
  v74[439] = 1;
  sub_217EF8694(&qword_27CBF6068, &qword_27CBF5F88, &qword_217F52240, &unk_217F52F70);
  sub_217F4AFC4();
  memcpy(&v87[440], v75, 0x1B2uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FA8, &qword_217F52260);
  LOBYTE(v38[0]) = 2;
  sub_217EF8694(&qword_27CBF6070, &qword_27CBF5FA8, &qword_217F52260, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  v35 = 0;
  sub_217F4AFC4();
  v11 = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FB0, &qword_217F52268);
  LOBYTE(v38[0]) = 3;
  sub_217EF8694(&qword_27CBF6078, &qword_27CBF5FB0, &qword_217F52268, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4AFC4();
  v12 = LOBYTE(v39[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FB8, &unk_217F52270);
  LOBYTE(v38[0]) = 4;
  sub_217EF73D8();
  sub_217F4AFC4();
  v33 = v12;
  v34 = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FC8, &qword_217F52280);
  LOBYTE(v38[0]) = 5;
  sub_217EF8694(&qword_27CBF6090, &qword_27CBF5FC8, &qword_217F52280, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4AFC4();
  v32 = LOBYTE(v39[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FD0, &qword_217F52288);
  LOBYTE(v38[0]) = 6;
  sub_217EF8694(&qword_27CBF6098, &qword_27CBF5FD0, &qword_217F52288, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4AFC4();
  v31 = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FD8, &qword_217F52290);
  LOBYTE(v38[0]) = 7;
  sub_217EF8694(&qword_27CBF60A0, &qword_27CBF5FD8, &qword_217F52290, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4AFC4();
  v30 = LOBYTE(v39[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FE0, &qword_217F52298);
  LOBYTE(v38[0]) = 8;
  sub_217EF8694(&qword_27CBF60A8, &qword_27CBF5FE0, &qword_217F52298, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4AFC4();
  v13 = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FE8, &qword_217F522A0);
  LOBYTE(v38[0]) = 9;
  sub_217EF8694(&qword_27CBF60B0, &qword_27CBF5FE8, &qword_217F522A0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4AFC4();
  v14 = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FF0, &qword_217F522A8);
  LOBYTE(v38[0]) = 10;
  sub_217EF8694(&qword_27CBF60B8, &qword_27CBF5FF0, &qword_217F522A8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4AFC4();
  v15 = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FF8, &qword_217F522B0);
  LOBYTE(v38[0]) = 11;
  sub_217EF8694(&qword_27CBF60C0, &qword_27CBF5FF8, &qword_217F522B0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4AFC4();
  v16 = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6000, &qword_217F522B8);
  LOBYTE(v38[0]) = 12;
  sub_217EF8694(&qword_27CBF60C8, &qword_27CBF6000, &qword_217F522B8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4AFC4();
  v17 = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6008, &qword_217F522C0);
  LOBYTE(v38[0]) = 13;
  sub_217EF8694(&qword_27CBF60D0, &qword_27CBF6008, &qword_217F522C0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4AFC4();
  v18 = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F90, &qword_217F52248);
  v73[439] = 14;
  sub_217EF8694(&qword_27CBF60D8, &qword_27CBF5F90, &qword_217F52248, &unk_217F52F70);
  sub_217F4AFC4();
  memcpy(v82, v74, sizeof(v82));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6010, &qword_217F522C8);
  LOBYTE(v38[0]) = 15;
  sub_217EF8694(&qword_27CBF60E0, &qword_27CBF6010, &qword_217F522C8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4AFC4();
  v19 = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6018, &qword_217F522D0);
  LOBYTE(v38[0]) = 16;
  sub_217EF8694(&qword_27CBF60E8, &qword_27CBF6018, &qword_217F522D0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4AFC4();
  v20 = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6020, &qword_217F522D8);
  LOBYTE(v38[0]) = 17;
  sub_217EF8694(&qword_27CBF60F0, &qword_27CBF6020, &qword_217F522D8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4AFC4();
  v29 = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6028, &qword_217F522E0);
  LOBYTE(v38[0]) = 18;
  sub_217EF8694(&qword_27CBF60F8, &qword_27CBF6028, &qword_217F522E0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4AFC4();
  v21 = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F98, &qword_217F52250);
  v72 = 19;
  sub_217EF8694(&qword_27CBF6100, &qword_27CBF5F98, &qword_217F52250, &unk_217F52F70);
  sub_217F4AFC4();
  memcpy(v79, v73, sizeof(v79));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6030, &qword_217F522E8);
  LOBYTE(v38[0]) = 20;
  sub_217EF8694(&qword_27CBF6108, &qword_27CBF6030, &qword_217F522E8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4AFC4();
  v35 = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6038, &qword_217F522F0);
  LOBYTE(v38[0]) = 21;
  sub_217EF8694(&qword_27CBF6110, &qword_27CBF6038, &qword_217F522F0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4AFC4();
  v28 = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6040, &qword_217F522F8);
  LOBYTE(v38[0]) = 22;
  sub_217EF8694(&qword_27CBF6118, &qword_27CBF6040, &qword_217F522F8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4AFC4();
  v27 = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6048, &qword_217F52300);
  LOBYTE(v38[0]) = 23;
  sub_217EF8694(&qword_27CBF6120, &qword_27CBF6048, &qword_217F52300, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4AFC4();
  v26 = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6050, &qword_217F52308);
  v70 = 24;
  sub_217EF8694(&qword_27CBF6128, &qword_27CBF6050, &qword_217F52308, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4AFC4();
  (*(v37 + 8))(v10, v88);
  v88 = v71;
  memcpy(v38, v87, 0x370uLL);
  v38[110] = v11;
  v22 = v33;
  LOBYTE(v38[111]) = v33;
  *(&v38[111] + 1) = *v86;
  HIDWORD(v38[111]) = *&v86[3];
  v38[112] = v34;
  LOBYTE(v38[113]) = v32;
  *(&v38[113] + 1) = *v85;
  HIDWORD(v38[113]) = *&v85[3];
  v38[114] = v31;
  LOBYTE(v38[115]) = v30;
  BYTE1(v38[115]) = v13;
  *(&v38[115] + 2) = v83;
  HIWORD(v38[115]) = v84;
  v38[116] = v14;
  v38[117] = v15;
  v25 = v16;
  v38[118] = v16;
  v38[119] = v17;
  v38[120] = v18;
  memcpy(&v38[121], v82, 0x1B2uLL);
  *(&v38[175] + 2) = v80;
  HIWORD(v38[175]) = v81;
  v38[176] = v19;
  v38[177] = v20;
  v23 = v29;
  v38[178] = v29;
  v38[179] = v21;
  memcpy(&v38[180], v79, 0x1B2uLL);
  *(&v38[234] + 2) = v77;
  HIWORD(v38[234]) = v78;
  v38[235] = v35;
  v38[236] = v28;
  v38[237] = v27;
  v38[238] = v26;
  v38[239] = v71;
  memcpy(v36, v38, 0x780uLL);
  sub_217EB4358(v38, v39);
  __swift_destroy_boxed_opaque_existential_1(v4);
  memcpy(v39, v87, 0x370uLL);
  v39[110] = v11;
  v40 = v22;
  *v41 = *v86;
  *&v41[3] = *&v86[3];
  v42 = v34;
  v43 = v32;
  *v44 = *v85;
  *&v44[3] = *&v85[3];
  v45 = v31;
  v46 = v30;
  v47 = v13;
  v48 = v83;
  v49 = v84;
  v50 = v14;
  v51 = v15;
  v52 = v25;
  v53 = v17;
  v54 = v18;
  memcpy(v55, v82, sizeof(v55));
  v56 = v80;
  v57 = v81;
  v58 = v19;
  v59 = v20;
  v60 = v23;
  v61 = v21;
  memcpy(v62, v79, sizeof(v62));
  v63 = v77;
  v64 = v78;
  v65 = v35;
  v66 = v28;
  v67 = v27;
  v68 = v26;
  v69 = v88;
  return sub_217EB5CB8(v39);
}

void (*sub_217EE0A50(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217EE0A7C;
}

void (*sub_217EE0AD8(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_217EE0B04;
}

double sub_217EE0B30@<D0>(_OWORD *a1@<X8>)
{
  result = 0.04;
  *a1 = xmmword_217F51D60;
  a1[1] = xmmword_217F51D70;
  return result;
}

double sub_217EE0B48@<D0>(_OWORD *a1@<X8>)
{
  result = 0.04;
  *a1 = xmmword_217F51D60;
  a1[1] = xmmword_217F51D70;
  return result;
}

__n128 sub_217EE0B60@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void (*sub_217EE0B98(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 32);
  *v3 = *(v1 + 16);
  *(v3 + 16) = v4;
  return sub_217EE0C04;
}

void sub_217EE0C04(double **a1)
{
  v1 = *a1;
  sub_217EC2A74(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

void (*sub_217EE0C80(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 48);
  return sub_217EE0CAC;
}

void (*sub_217EE0D04(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 56);
  return sub_217EE0D30;
}

uint64_t (*sub_217EE0D6C(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 64);
  return sub_217EE0D98;
}

void (*sub_217EE0DD4(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 72);
  return sub_217EE0E00;
}

void (*sub_217EE0E58(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 80);
  return sub_217EE0E84;
}

void (*sub_217EE0EDC(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 88);
  return sub_217EE0F08;
}

void (*sub_217EE0F60(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 96);
  return sub_217EE0F8C;
}

void (*sub_217EE0FE4(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 104);
  return sub_217EE1010;
}

void (*sub_217EE1068(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 112);
  return sub_217EE1094;
}

uint64_t (*sub_217EE10D8(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 120);
  return sub_217EE1104;
}

double sub_217EE1114@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  result = *(v1 + 168);
  *a1 = *(v1 + 128);
  *(a1 + 16) = v2;
  *(a1 + 24) = *(v1 + 152);
  *(a1 + 40) = result;
  return result;
}

__n128 sub_217EE1138@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 256);
  *(a1 + 64) = *(v1 + 240);
  *(a1 + 80) = v2;
  v3 = *(v1 + 192);
  *a1 = *(v1 + 176);
  *(a1 + 16) = v3;
  result = *(v1 + 224);
  *(a1 + 32) = *(v1 + 208);
  *(a1 + 48) = result;
  *(a1 + 95) = *(v1 + 271);
  return result;
}

void (*sub_217EE1194(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 280);
  return sub_217EE11C0;
}

void (*sub_217EE1220(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 288);
  return sub_217EE124C;
}

__n128 sub_217EE1278@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 312);
  *a1 = *(v1 + 296);
  *(a1 + 16) = v2;
  result = *(v1 + 328);
  *(a1 + 32) = result;
  return result;
}

void (*sub_217EE12C4(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 344);
  return sub_217EE12F0;
}

void (*sub_217EE1350(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 352);
  return sub_217EE137C;
}

void (*sub_217EE13DC(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 360);
  return sub_217EE1408;
}

uint64_t (*sub_217EE144C(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 368);
  return sub_217EE1478;
}

void (*sub_217EE14BC(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 376);
  return sub_217EE14E8;
}

__n128 sub_217EE1514@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 528);
  *(a1 + 128) = *(v1 + 512);
  *(a1 + 144) = v2;
  *(a1 + 160) = *(v1 + 544);
  *(a1 + 176) = *(v1 + 560);
  v3 = *(v1 + 464);
  *(a1 + 64) = *(v1 + 448);
  *(a1 + 80) = v3;
  v4 = *(v1 + 496);
  *(a1 + 96) = *(v1 + 480);
  *(a1 + 112) = v4;
  v5 = *(v1 + 400);
  *a1 = *(v1 + 384);
  *(a1 + 16) = v5;
  result = *(v1 + 416);
  v7 = *(v1 + 432);
  *(a1 + 32) = result;
  *(a1 + 48) = v7;
  return result;
}

__n128 sub_217EE1550@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 584);
  *a1 = *(v1 + 568);
  *(a1 + 16) = v2;
  result = *(v1 + 600);
  *(a1 + 32) = result;
  return result;
}

__n128 sub_217EE1568@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 616);
  v3 = *(v1 + 632);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void (*sub_217EE15AC(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 648);
  return sub_217EE15D8;
}

void (*sub_217EE1638(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 656);
  return sub_217EE1664;
}

void (*sub_217EE16C4(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 664);
  return sub_217EE16F0;
}

void (*sub_217EE1750(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 672);
  return sub_217EE177C;
}

uint64_t (*sub_217EE17C0(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 680);
  return sub_217EE17EC;
}

void (*sub_217EE1830(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 688);
  return sub_217EE185C;
}

void (*sub_217EE18BC(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 696);
  return sub_217EE18E8;
}

void (*sub_217EE1948(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 704);
  return sub_217EE1974;
}

void (*sub_217EE19D4(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 712);
  return sub_217EE1A00;
}

void (*sub_217EE1A60(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 720);
  return sub_217EE1A8C;
}

void (*sub_217EE1AEC(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 728);
  return sub_217EE1B18;
}

void (*sub_217EE1B78(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 736);
  return sub_217EE1BA4;
}

void (*sub_217EE1C04(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 744);
  return sub_217EE1C30;
}

void (*sub_217EE1C90(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 752);
  return sub_217EE1CBC;
}

void (*sub_217EE1D1C(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 760);
  return sub_217EE1D48;
}

void (*sub_217EE1DA8(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 768);
  return sub_217EE1DD4;
}

void (*sub_217EE1E34(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 776);
  return sub_217EE1E60;
}

double sub_217EE1E8C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.1;
  *a1 = xmmword_217F51D80;
  a1[1] = xmmword_217F51D90;
  return result;
}

double sub_217EE1EA4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.1;
  *a1 = xmmword_217F51D80;
  a1[1] = xmmword_217F51D90;
  return result;
}

__n128 sub_217EE1EBC@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 784);
  v3 = *(v1 + 800);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void (*sub_217EE1EF4(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 800);
  *v3 = *(v1 + 784);
  *(v3 + 16) = v4;
  return sub_217EE1F60;
}

void sub_217EE1F60(double **a1)
{
  v1 = *a1;
  sub_217EC5D20(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

void (*sub_217EE1FDC(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 816);
  return sub_217EE2008;
}

__n128 sub_217EE2034@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 840);
  *a1 = *(v1 + 824);
  *(a1 + 16) = v2;
  result = *(v1 + 856);
  *(a1 + 32) = result;
  return result;
}

__n128 sub_217EE204C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 952);
  *(a1 + 64) = *(v1 + 936);
  *(a1 + 80) = v2;
  *(a1 + 95) = *(v1 + 967);
  v3 = *(v1 + 888);
  *a1 = *(v1 + 872);
  *(a1 + 16) = v3;
  result = *(v1 + 920);
  *(a1 + 32) = *(v1 + 904);
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_217EE2088(char a1)
{
  result = 0x69746C754D666E61;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
    case 19:
    case 39:
      result = 0xD00000000000001FLL;
      break;
    case 3:
    case 17:
    case 24:
      result = 0xD000000000000024;
      break;
    case 4:
    case 45:
      result = 0xD000000000000025;
      break;
    case 5:
    case 36:
    case 38:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000032;
      break;
    case 7:
      result = 0xD00000000000003ALL;
      break;
    case 8:
    case 9:
    case 41:
      result = 0xD000000000000029;
      break;
    case 10:
      result = 0xD000000000000033;
      break;
    case 11:
      result = 0xD00000000000002DLL;
      break;
    case 12:
      result = 0x72656E65706D6164;
      break;
    case 13:
    case 25:
      result = 0xD000000000000023;
      break;
    case 14:
    case 16:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 0x64656E657473696CLL;
      break;
    case 21:
    case 22:
    case 37:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0xD00000000000001ELL;
      break;
    case 26:
    case 30:
      result = 0xD000000000000017;
      break;
    case 27:
      v3 = 1684104562;
      goto LABEL_14;
    case 28:
    case 43:
      result = 0xD000000000000021;
      break;
    case 29:
    case 32:
    case 35:
      result = 0xD00000000000001ALL;
      break;
    case 31:
      v3 = 1852138867;
LABEL_14:
      result = v3 | 0x616E655000000000;
      break;
    case 33:
      result = 0xD00000000000001ELL;
      break;
    case 34:
      result = 0xD000000000000027;
      break;
    case 40:
      result = 0xD00000000000001ELL;
      break;
    case 42:
      result = 0xD00000000000001BLL;
      break;
    case 44:
      result = 0xD000000000000014;
      break;
    case 46:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217EE2510@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217F00ABC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EE2550(uint64_t a1)
{
  v2 = sub_217EF7490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EE258C(uint64_t a1)
{
  v2 = sub_217EF7490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EE25C8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6130, &qword_217F52318);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v44 - v6;
  v8 = *v1;
  v94 = v1[1];
  v95 = v8;
  v9 = *(v1 + 1);
  v92 = *(v1 + 2);
  v93 = v9;
  v10 = v1[6];
  v90 = v1[7];
  v91 = v10;
  v89 = *(v1 + 64);
  v11 = v1[9];
  v87 = v1[10];
  v88 = v11;
  v12 = v1[11];
  v85 = v1[12];
  v86 = v12;
  v13 = v1[13];
  v83 = v1[14];
  v84 = v13;
  v82 = *(v1 + 120);
  v14 = v1[16];
  v80 = v1[17];
  v81 = v14;
  v76 = v1[18];
  v15 = v1[19];
  v78 = v1[20];
  v79 = v15;
  v77 = v1[21];
  v16 = *(v1 + 16);
  v108 = *(v1 + 15);
  v109[0] = v16;
  *(v109 + 15) = *(v1 + 271);
  v17 = *(v1 + 12);
  v104 = *(v1 + 11);
  v105 = v17;
  v18 = *(v1 + 14);
  v106 = *(v1 + 13);
  v107 = v18;
  *&v17 = v1[35];
  v74 = v1[36];
  v75 = v17;
  v19 = *(v1 + 37);
  v46 = *(v1 + 39);
  v47 = v19;
  *&v17 = v1[41];
  v44 = v1[42];
  v45 = v17;
  *&v19 = v1[44];
  v48 = v1[43];
  v49 = v19;
  v51 = v1[45];
  v52 = *(v1 + 368);
  v20 = *(v1 + 33);
  v118 = *(v1 + 32);
  v119 = v20;
  v120 = *(v1 + 34);
  v121 = v1[70];
  v21 = *(v1 + 29);
  v114 = *(v1 + 28);
  v115 = v21;
  v22 = *(v1 + 31);
  v116 = *(v1 + 30);
  v117 = v22;
  v23 = *(v1 + 25);
  v110 = *(v1 + 24);
  v111 = v23;
  v24 = *(v1 + 27);
  v112 = *(v1 + 26);
  v113 = v24;
  v25 = *(v1 + 71);
  v56 = *(v1 + 73);
  v57 = v25;
  v26 = *(v1 + 77);
  v58 = *(v1 + 79);
  v59 = v26;
  v27 = *(v1 + 680);
  v28 = *(v1 + 119);
  v126 = *(v1 + 117);
  v127[0] = v28;
  v29 = *(v1 + 111);
  v122 = *(v1 + 109);
  v123 = v29;
  v30 = *(v1 + 113);
  v125 = *(v1 + 115);
  v124 = v30;
  v31 = *(v1 + 103);
  v72 = *(v1 + 105);
  v73 = v31;
  *(v127 + 15) = *(v1 + 967);
  v32 = a1[3];
  v50 = v1[47];
  *&v30 = v1[75];
  v53 = v1[76];
  v54 = v30;
  v55 = v1[81];
  *&v31 = v1[83];
  v60 = v1[82];
  v61 = v31;
  *&v31 = v1[86];
  v62 = v1[84];
  v63 = v31;
  *&v31 = v1[88];
  v64 = v1[87];
  v65 = v31;
  *&v31 = v1[90];
  v66 = v1[89];
  v67 = v31;
  *&v31 = v1[92];
  v68 = v1[91];
  v69 = v31;
  v33 = v1[93];
  v34 = v1[94];
  v35 = v1[95];
  v36 = v1[96];
  v37 = v1[97];
  v38 = *(v1 + 49);
  v70 = *(v1 + 50);
  v71 = v38;
  v39 = v1[102];
  v40 = v1[107];
  v41 = v1[108];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_217EF7490();
  sub_217F4B294();
  *&v96 = v95;
  v103 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6140, &qword_217F52320);
  sub_217EF8694(&qword_27CBF6148, &qword_27CBF6140, &qword_217F52320, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  v42 = v128;
  sub_217F4B0C4();
  if (v42)
  {
    return (*(v4 + 8))(v7, v3);
  }

  LODWORD(v95) = v27;
  v128 = v4;
  *&v96 = v94;
  v103 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6150, &qword_217F52328);
  sub_217EF8694(&qword_27CBF6158, &qword_27CBF6150, &qword_217F52328, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v96 = v93;
  v97 = v92;
  v103 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6160, &qword_217F52330);
  sub_217EF8694(&qword_27CBF6168, &qword_27CBF6160, &qword_217F52330, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v91;
  v103 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6170, &qword_217F52338);
  sub_217EF8694(&qword_27CBF6178, &qword_27CBF6170, &qword_217F52338, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v90;
  v103 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6180, &qword_217F52340);
  sub_217EF8694(&qword_27CBF6188, &qword_27CBF6180, &qword_217F52340, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  LOBYTE(v96) = v89;
  v103 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6190, &qword_217F52348);
  sub_217EF8694(&qword_27CBF6198, &qword_27CBF6190, &qword_217F52348, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4B0C4();
  *&v96 = v88;
  v103 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61A0, &qword_217F52350);
  sub_217EF8694(&qword_27CBF61A8, &qword_27CBF61A0, &qword_217F52350, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v87;
  v103 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61B0, &qword_217F52358);
  sub_217EF8694(&qword_27CBF61B8, &qword_27CBF61B0, &qword_217F52358, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v86;
  v103 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61C0, &qword_217F52360);
  sub_217EF8694(&qword_27CBF61C8, &qword_27CBF61C0, &qword_217F52360, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v85;
  v103 = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61D0, &qword_217F52368);
  sub_217EF8694(&qword_27CBF61D8, &qword_27CBF61D0, &qword_217F52368, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v84;
  v103 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61E0, &qword_217F52370);
  sub_217EF8694(&qword_27CBF61E8, &qword_27CBF61E0, &qword_217F52370, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v83;
  v103 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61F0, &qword_217F52378);
  sub_217EF8694(&qword_27CBF61F8, &qword_27CBF61F0, &qword_217F52378, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  LOBYTE(v96) = v82;
  v103 = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6200, &qword_217F52380);
  sub_217EF8694(&qword_27CBF6208, &qword_27CBF6200, &qword_217F52380, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4B0C4();
  *&v96 = v81;
  *(&v96 + 1) = v80;
  *&v97 = v76;
  *(&v97 + 1) = v79;
  *&v98 = v78;
  *(&v98 + 1) = v77;
  v103 = 13;
  sub_217EF74E4();
  sub_217F4B0C4();
  v100 = v108;
  v101[0] = v109[0];
  *(v101 + 15) = *(v109 + 15);
  v96 = v104;
  v97 = v105;
  v98 = v106;
  v99 = v107;
  v103 = 14;
  sub_217EF7538();
  sub_217F4B0C4();
  *&v96 = v75;
  v103 = 15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6220, &qword_217F52388);
  sub_217EF8694(&qword_27CBF6228, &qword_27CBF6220, &qword_217F52388, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v74;
  v103 = 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6230, &qword_217F52390);
  sub_217EF8694(&qword_27CBF6238, &qword_27CBF6230, &qword_217F52390, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v96 = v47;
  v97 = v46;
  *&v98 = v45;
  *(&v98 + 1) = v44;
  v103 = 17;
  v94 = sub_217EF758C();
  sub_217F4B0C4();
  *&v96 = v48;
  v103 = 18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6248, &qword_217F52398);
  sub_217EF8694(&qword_27CBF6250, &qword_27CBF6248, &qword_217F52398, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v49;
  v103 = 19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6258, &qword_217F523A0);
  sub_217EF8694(&qword_27CBF6260, &qword_27CBF6258, &qword_217F523A0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v51;
  v103 = 20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6268, &qword_217F523A8);
  sub_217EF8694(&qword_27CBF6270, &qword_27CBF6268, &qword_217F523A8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  LOBYTE(v96) = v52;
  v103 = 21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6278, &qword_217F523B0);
  sub_217EF8694(&qword_27CBF6280, &qword_27CBF6278, &qword_217F523B0, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4B0C4();
  *&v96 = v50;
  v103 = 22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6288, &qword_217F523B8);
  sub_217EF8694(&qword_27CBF6290, &qword_27CBF6288, &qword_217F523B8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v101[3] = v118;
  v101[4] = v119;
  v101[5] = v120;
  v102 = v121;
  v100 = v114;
  v101[0] = v115;
  v101[1] = v116;
  v101[2] = v117;
  v96 = v110;
  v97 = v111;
  v98 = v112;
  v99 = v113;
  v103 = 23;
  sub_217EF75E0();
  sub_217F4B0C4();
  v96 = v57;
  v97 = v56;
  *&v98 = v54;
  *(&v98 + 1) = v53;
  v103 = 24;
  sub_217F4B0C4();
  v96 = v59;
  v97 = v58;
  v103 = 25;
  sub_217EF7634();
  sub_217F4B0C4();
  *&v96 = v55;
  v103 = 26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62A8, &qword_217F523C0);
  sub_217EF8694(&qword_27CBF62B0, &qword_27CBF62A8, &qword_217F523C0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v60;
  v103 = 27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62B8, &qword_217F523C8);
  sub_217EF8694(&qword_27CBF62C0, &qword_27CBF62B8, &qword_217F523C8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v61;
  v103 = 28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62C8, &qword_217F523D0);
  sub_217EF8694(&qword_27CBF62D0, &qword_27CBF62C8, &qword_217F523D0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v62;
  v103 = 29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62D8, &qword_217F523D8);
  sub_217EF8694(&qword_27CBF62E0, &qword_27CBF62D8, &qword_217F523D8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  LOBYTE(v96) = v95;
  v103 = 30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62E8, &qword_217F523E0);
  sub_217EF8694(&qword_27CBF62F0, &qword_27CBF62E8, &qword_217F523E0, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4B0C4();
  *&v96 = v63;
  v103 = 31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62F8, &qword_217F523E8);
  sub_217EF8694(&qword_27CBF6300, &qword_27CBF62F8, &qword_217F523E8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v64;
  v103 = 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6308, &qword_217F523F0);
  sub_217EF8694(&qword_27CBF6310, &qword_27CBF6308, &qword_217F523F0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v65;
  v103 = 33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6318, &qword_217F523F8);
  sub_217EF8694(&qword_27CBF6320, &qword_27CBF6318, &qword_217F523F8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v66;
  v103 = 34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6328, &qword_217F52400);
  sub_217EF8694(&qword_27CBF6330, &qword_27CBF6328, &qword_217F52400, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v67;
  v103 = 35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6338, &qword_217F52408);
  sub_217EF8694(&qword_27CBF6340, &qword_27CBF6338, &qword_217F52408, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v68;
  v103 = 36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6348, &qword_217F52410);
  sub_217EF8694(&qword_27CBF6350, &qword_27CBF6348, &qword_217F52410, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v69;
  v103 = 37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6358, &qword_217F52418);
  sub_217EF8694(&qword_27CBF6360, &qword_27CBF6358, &qword_217F52418, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v33;
  v103 = 38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6368, &qword_217F52420);
  sub_217EF8694(&qword_27CBF6370, &qword_27CBF6368, &qword_217F52420, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v34;
  v103 = 39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6378, &qword_217F52428);
  sub_217EF8694(&qword_27CBF6380, &qword_27CBF6378, &qword_217F52428, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v35;
  v103 = 40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6388, &qword_217F52430);
  sub_217EF8694(&qword_27CBF6390, &qword_27CBF6388, &qword_217F52430, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v36;
  v103 = 41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6398, &qword_217F52438);
  sub_217EF8694(&qword_27CBF63A0, &qword_27CBF6398, &qword_217F52438, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v37;
  v103 = 42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF63A8, &qword_217F52440);
  sub_217EF8694(&qword_27CBF63B0, &qword_27CBF63A8, &qword_217F52440, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v96 = v71;
  v97 = v70;
  v103 = 43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF63B8, &qword_217F52448);
  sub_217EF8694(&qword_27CBF63C0, &qword_27CBF63B8, &qword_217F52448, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  *&v96 = v39;
  v103 = 44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF63C8, &qword_217F52450);
  sub_217EF8694(&qword_27CBF63D0, &qword_27CBF63C8, &qword_217F52450, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v96 = v73;
  v97 = v72;
  *&v98 = v40;
  *(&v98 + 1) = v41;
  v103 = 45;
  sub_217F4B0C4();
  v100 = v126;
  v101[0] = v127[0];
  *(v101 + 15) = *(v127 + 15);
  v96 = v122;
  v97 = v123;
  v98 = v124;
  v99 = v125;
  v103 = 46;
  sub_217F4B0C4();
  return (*(v128 + 8))(v7, v3);
}

uint64_t sub_217EE3F74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF63D8, &qword_217F52458);
  v5 = *(v142 - 8);
  MEMORY[0x28223BE20](v142, v6);
  v8 = &v43 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7490();
  sub_217F4B274();
  if (!v2)
  {
    v96 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6140, &qword_217F52320);
    LOBYTE(v118) = 0;
    sub_217EF8694(&qword_27CBF63E0, &qword_27CBF6140, &qword_217F52320, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v9 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6150, &qword_217F52328);
    LOBYTE(v118) = 1;
    sub_217EF8694(&qword_27CBF63E8, &qword_27CBF6150, &qword_217F52328, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v10 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6160, &qword_217F52330);
    LOBYTE(v118) = 2;
    sub_217EF8694(&qword_27CBF63F0, &qword_27CBF6160, &qword_217F52330, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v94 = v106;
    v95 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6170, &qword_217F52338);
    LOBYTE(v118) = 3;
    sub_217EF8694(&qword_27CBF63F8, &qword_27CBF6170, &qword_217F52338, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v11 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6180, &qword_217F52340);
    LOBYTE(v118) = 4;
    sub_217EF8694(&qword_27CBF6400, &qword_27CBF6180, &qword_217F52340, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v12 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6190, &qword_217F52348);
    LOBYTE(v118) = 5;
    sub_217EF8694(&qword_27CBF6408, &qword_27CBF6190, &qword_217F52348, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    v93 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61A0, &qword_217F52350);
    LOBYTE(v118) = 6;
    sub_217EF8694(&qword_27CBF6410, &qword_27CBF61A0, &qword_217F52350, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v13 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61B0, &qword_217F52358);
    LOBYTE(v118) = 7;
    sub_217EF8694(&qword_27CBF6418, &qword_27CBF61B0, &qword_217F52358, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v14 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61C0, &qword_217F52360);
    LOBYTE(v118) = 8;
    sub_217EF8694(&qword_27CBF6420, &qword_27CBF61C0, &qword_217F52360, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v16 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61D0, &qword_217F52368);
    LOBYTE(v118) = 9;
    sub_217EF8694(&qword_27CBF6428, &qword_27CBF61D0, &qword_217F52368, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v17 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61E0, &qword_217F52370);
    LOBYTE(v118) = 10;
    sub_217EF8694(&qword_27CBF6430, &qword_27CBF61E0, &qword_217F52370, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v92 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61F0, &qword_217F52378);
    LOBYTE(v118) = 11;
    sub_217EF8694(&qword_27CBF6438, &qword_27CBF61F0, &qword_217F52378, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v91 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6200, &qword_217F52380);
    LOBYTE(v118) = 12;
    sub_217EF8694(&qword_27CBF6440, &qword_27CBF6200, &qword_217F52380, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    v18 = v105;
    LOBYTE(v118) = 13;
    sub_217EF7688();
    sub_217F4AFC4();
    v88 = *(&v105 + 1);
    v89 = v105;
    v90 = v106;
    v86 = v107;
    v87 = *(&v106 + 1);
    v85 = *(&v107 + 1);
    v117 = 14;
    v84 = sub_217EF76DC();
    sub_217F4AFC4();
    v140 = v122;
    v141[0] = *v123;
    *(v141 + 15) = *&v123[15];
    v136 = v118;
    v137 = v119;
    v139 = v121;
    v138 = v120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6220, &qword_217F52388);
    LOBYTE(v97) = 15;
    sub_217EF8694(&qword_27CBF6458, &qword_27CBF6220, &qword_217F52388, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v83 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6230, &qword_217F52390);
    LOBYTE(v97) = 16;
    sub_217EF8694(&qword_27CBF6460, &qword_27CBF6230, &qword_217F52390, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v81 = v105;
    LOBYTE(v97) = 17;
    *&v82 = sub_217EF7730();
    sub_217F4AFC4();
    v79 = v106;
    v80 = v105;
    v77 = *(&v107 + 1);
    v78 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6248, &qword_217F52398);
    LOBYTE(v97) = 18;
    sub_217EF8694(&qword_27CBF6470, &qword_27CBF6248, &qword_217F52398, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v76 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6258, &qword_217F523A0);
    LOBYTE(v97) = 19;
    sub_217EF8694(&qword_27CBF6478, &qword_27CBF6258, &qword_217F523A0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v75 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6268, &qword_217F523A8);
    LOBYTE(v97) = 20;
    sub_217EF8694(&qword_27CBF6480, &qword_27CBF6268, &qword_217F523A8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v74 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6278, &qword_217F523B0);
    LOBYTE(v97) = 21;
    sub_217EF8694(&qword_27CBF6488, &qword_27CBF6278, &qword_217F523B0, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    v73 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6288, &qword_217F523B8);
    LOBYTE(v97) = 22;
    sub_217EF8694(&qword_27CBF6490, &qword_27CBF6288, &qword_217F523B8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v72 = v105;
    v104 = 23;
    sub_217EF7784();
    sub_217F4AFC4();
    v132 = v113;
    v133 = v114;
    v134 = v115;
    v135 = v116;
    v128 = v109;
    v129 = v110;
    v130 = v111;
    v131 = v112;
    v124 = v105;
    v125 = v106;
    v126 = v107;
    v127 = v108;
    v103 = 24;
    sub_217F4AFC4();
    v70 = v98;
    v71 = v97;
    v68 = *(&v99 + 1);
    v69 = v99;
    v103 = 25;
    sub_217EF77D8();
    sub_217F4AFC4();
    v66 = v98;
    v67 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62A8, &qword_217F523C0);
    v103 = 26;
    sub_217EF8694(&qword_27CBF64A8, &qword_27CBF62A8, &qword_217F523C0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v65 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62B8, &qword_217F523C8);
    v103 = 27;
    sub_217EF8694(&qword_27CBF64B0, &qword_27CBF62B8, &qword_217F523C8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v64 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62C8, &qword_217F523D0);
    v103 = 28;
    sub_217EF8694(&qword_27CBF64B8, &qword_27CBF62C8, &qword_217F523D0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v63 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62D8, &qword_217F523D8);
    v103 = 29;
    sub_217EF8694(&qword_27CBF64C0, &qword_27CBF62D8, &qword_217F523D8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v62 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62E8, &qword_217F523E0);
    v103 = 30;
    sub_217EF8694(&qword_27CBF64C8, &qword_27CBF62E8, &qword_217F523E0, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    v61 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62F8, &qword_217F523E8);
    v103 = 31;
    sub_217EF8694(&qword_27CBF64D0, &qword_27CBF62F8, &qword_217F523E8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v60 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6308, &qword_217F523F0);
    v103 = 32;
    sub_217EF8694(&qword_27CBF64D8, &qword_27CBF6308, &qword_217F523F0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v59 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6318, &qword_217F523F8);
    v103 = 33;
    sub_217EF8694(&qword_27CBF64E0, &qword_27CBF6318, &qword_217F523F8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v58 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6328, &qword_217F52400);
    v103 = 34;
    sub_217EF8694(&qword_27CBF64E8, &qword_27CBF6328, &qword_217F52400, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v57 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6338, &qword_217F52408);
    v103 = 35;
    sub_217EF8694(&qword_27CBF64F0, &qword_27CBF6338, &qword_217F52408, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v56 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6348, &qword_217F52410);
    v103 = 36;
    sub_217EF8694(&qword_27CBF64F8, &qword_27CBF6348, &qword_217F52410, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v55 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6358, &qword_217F52418);
    v103 = 37;
    sub_217EF8694(&qword_27CBF6500, &qword_27CBF6358, &qword_217F52418, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v54 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6368, &qword_217F52420);
    v103 = 38;
    sub_217EF8694(&qword_27CBF6508, &qword_27CBF6368, &qword_217F52420, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v53 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6378, &qword_217F52428);
    v103 = 39;
    sub_217EF8694(&qword_27CBF6510, &qword_27CBF6378, &qword_217F52428, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v52 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6388, &qword_217F52430);
    v103 = 40;
    sub_217EF8694(&qword_27CBF6518, &qword_27CBF6388, &qword_217F52430, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v51 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6398, &qword_217F52438);
    v103 = 41;
    sub_217EF8694(&qword_27CBF6520, &qword_27CBF6398, &qword_217F52438, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v50 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF63A8, &qword_217F52440);
    v103 = 42;
    sub_217EF8694(&qword_27CBF6528, &qword_27CBF63A8, &qword_217F52440, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v49 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF63B8, &qword_217F52448);
    v103 = 43;
    sub_217EF8694(&qword_27CBF6530, &qword_27CBF63B8, &qword_217F52448, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v47 = v98;
    v48 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF63C8, &qword_217F52450);
    v103 = 44;
    sub_217EF8694(&qword_27CBF6538, &qword_27CBF63C8, &qword_217F52450, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v46 = v97;
    v103 = 45;
    sub_217F4AFC4();
    v82 = v98;
    v43 = v97;
    v44 = *(&v99 + 1);
    v45 = v99;
    v103 = 46;
    sub_217F4AFC4();
    (*(v96 + 8))(v8, v142);
    *a2 = v9;
    *(a2 + 8) = v10;
    v19 = v94;
    *(a2 + 16) = v95;
    *(a2 + 32) = v19;
    *(a2 + 48) = v11;
    *(a2 + 56) = v12;
    *(a2 + 72) = v13;
    *(a2 + 80) = v14;
    *(a2 + 88) = v16;
    *(a2 + 96) = v17;
    v20 = v91;
    *(a2 + 104) = v92;
    *(a2 + 112) = v20;
    v21 = v88;
    *(a2 + 128) = v89;
    *(a2 + 136) = v21;
    v22 = v86;
    *(a2 + 152) = v87;
    *(a2 + 160) = v22;
    *(a2 + 168) = v85;
    v23 = v81;
    *(a2 + 280) = v83;
    *(a2 + 288) = v23;
    v24 = v79;
    *(a2 + 296) = v80;
    *(a2 + 312) = v24;
    v25 = v77;
    *(a2 + 328) = v78;
    *(a2 + 336) = v25;
    v26 = v75;
    *(a2 + 344) = v76;
    *(a2 + 352) = v26;
    v27 = v141[0];
    *(a2 + 240) = v140;
    *(a2 + 256) = v27;
    v28 = v137;
    *(a2 + 176) = v136;
    *(a2 + 192) = v28;
    v29 = v139;
    *(a2 + 208) = v138;
    *(a2 + 224) = v29;
    *(a2 + 64) = v93;
    *(a2 + 120) = v18;
    *(a2 + 144) = v90;
    *(a2 + 271) = *(v141 + 15);
    *(a2 + 360) = v74;
    *(a2 + 368) = v73;
    *(a2 + 376) = v72;
    v30 = v127;
    *(a2 + 416) = v126;
    *(a2 + 432) = v30;
    v31 = v125;
    *(a2 + 384) = v124;
    *(a2 + 400) = v31;
    v32 = v131;
    *(a2 + 480) = v130;
    *(a2 + 496) = v32;
    v33 = v129;
    *(a2 + 448) = v128;
    *(a2 + 464) = v33;
    *(a2 + 560) = v135;
    v34 = v134;
    v35 = v132;
    *(a2 + 528) = v133;
    *(a2 + 544) = v34;
    *(a2 + 512) = v35;
    v36 = v70;
    *(a2 + 568) = v71;
    *(a2 + 584) = v36;
    *&v33 = v68;
    *(a2 + 600) = v69;
    *(a2 + 608) = v33;
    v37 = v66;
    *(a2 + 616) = v67;
    *(a2 + 632) = v37;
    *&v33 = v64;
    *(a2 + 648) = v65;
    *(a2 + 656) = v33;
    *&v33 = v62;
    *(a2 + 664) = v63;
    *(a2 + 672) = v33;
    *(a2 + 680) = v61;
    *&v33 = v59;
    *(a2 + 688) = v60;
    *(a2 + 696) = v33;
    *&v33 = v57;
    *(a2 + 704) = v58;
    *(a2 + 712) = v33;
    *&v33 = v55;
    *(a2 + 720) = v56;
    *(a2 + 728) = v33;
    *&v33 = v53;
    *(a2 + 736) = v54;
    *(a2 + 744) = v33;
    *&v33 = v51;
    *(a2 + 752) = v52;
    *(a2 + 760) = v33;
    *&v33 = v49;
    *(a2 + 768) = v50;
    *(a2 + 776) = v33;
    v38 = v47;
    *(a2 + 784) = v48;
    *(a2 + 800) = v38;
    *(a2 + 816) = v46;
    v39 = v82;
    *(a2 + 824) = v43;
    *(a2 + 840) = v39;
    *&v39 = v44;
    *(a2 + 856) = v45;
    *(a2 + 864) = v39;
    v40 = *v102;
    *(a2 + 936) = v101;
    *(a2 + 952) = v40;
    *(a2 + 967) = *&v102[15];
    v41 = v98;
    *(a2 + 872) = v97;
    *(a2 + 888) = v41;
    v42 = v100;
    *(a2 + 904) = v99;
    *(a2 + 920) = v42;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217EE5A44()
{
  v1 = 0xD000000000000014;
  v2 = *v0;
  if (v2 == 2)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217EE5AB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217F018EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EE5AE4(uint64_t a1)
{
  v2 = sub_217EF782C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EE5B20(uint64_t a1)
{
  v2 = sub_217EF782C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EE5B5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6540, &qword_217F52460);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF782C();
  sub_217F4B294();
  v9[15] = 0;
  sub_217F4B0A4();
  if (!v1)
  {
    v9[14] = 1;
    sub_217F4B0A4();
    v9[13] = 2;
    sub_217F4B0A4();
    v9[12] = 3;
    sub_217F4B0A4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_217EE5D30@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6550, &qword_217F52468);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF782C();
  sub_217F4B274();
  if (!v2)
  {
    v23 = 0;
    sub_217F4AFA4();
    v11 = v10;
    v22 = 1;
    sub_217F4AFA4();
    v13 = v12;
    v21 = 2;
    sub_217F4AFA4();
    v16 = v15;
    v20 = 3;
    sub_217F4AFA4();
    v18 = v17;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 1) = v13;
    *(a2 + 2) = v16;
    *(a2 + 3) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217EE5F60(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217EE5F8C;
}

void (*sub_217EE5FE0(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_217EE600C;
}

uint64_t (*sub_217EE6078(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  return sub_217EE60A0;
}

void (*sub_217EE60F4(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 24);
  return sub_217EE6120;
}

void (*sub_217EE6178(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 32);
  return sub_217EE61A4;
}

void (*sub_217EE61FC(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 40);
  return sub_217EE6228;
}

unint64_t sub_217EE6254()
{
  v1 = *v0;
  v2 = 0x65706D614478616DLL;
  v3 = 0x65726F63536E696DLL;
  v4 = 0x70784565726F6373;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x746E65764578616DLL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217EE6340@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217F01A5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EE6374(uint64_t a1)
{
  v2 = sub_217EF7880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EE63B0(uint64_t a1)
{
  v2 = sub_217EF7880();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EE63EC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6558, &qword_217F52470);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v13 = v1[3];
  v12 = v1[4];
  v14 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7880();
  sub_217F4B294();
  v17 = v10;
  HIBYTE(v16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6568, &qword_217F52478);
  sub_217EF8694(&qword_27CBF6570, &qword_27CBF6568, &qword_217F52478, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  if (!v2)
  {
    v17 = v9;
    HIBYTE(v16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6578, &qword_217F52480);
    sub_217EF8694(&qword_27CBF6580, &qword_27CBF6578, &qword_217F52480, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v17 = v11;
    HIBYTE(v16) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6588, &qword_217F52488);
    sub_217EF8694(&qword_27CBF6590, &qword_27CBF6588, &qword_217F52488, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v17 = v13;
    HIBYTE(v16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6598, &qword_217F52490);
    sub_217EF8694(&qword_27CBF65A0, &qword_27CBF6598, &qword_217F52490, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v17 = v12;
    HIBYTE(v16) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF65A8, &qword_217F52498);
    sub_217EF8694(&qword_27CBF65B0, &qword_27CBF65A8, &qword_217F52498, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v17 = v14;
    HIBYTE(v16) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF65B8, &qword_217F524A0);
    sub_217EF8694(&qword_27CBF65C0, &qword_27CBF65B8, &qword_217F524A0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_217EE6814@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF65C8, &qword_217F524A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7880();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6568, &qword_217F52478);
    v17 = 0;
    sub_217EF8694(&qword_27CBF65D0, &qword_27CBF6568, &qword_217F52478, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v10 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6578, &qword_217F52480);
    v17 = 1;
    sub_217EF8694(&qword_27CBF65D8, &qword_27CBF6578, &qword_217F52480, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v11 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6588, &qword_217F52488);
    v17 = 2;
    sub_217EF8694(&qword_27CBF65E0, &qword_27CBF6588, &qword_217F52488, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v16 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6598, &qword_217F52490);
    v17 = 3;
    sub_217EF8694(&qword_27CBF65E8, &qword_27CBF6598, &qword_217F52490, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v12 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF65A8, &qword_217F52498);
    v17 = 4;
    sub_217EF8694(&qword_27CBF65F0, &qword_27CBF65A8, &qword_217F52498, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v14 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF65B8, &qword_217F524A0);
    v17 = 5;
    sub_217EF8694(&qword_27CBF65F8, &qword_27CBF65B8, &qword_217F524A0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    v15 = v18;
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v16;
    a2[3] = v12;
    a2[4] = v14;
    a2[5] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217EE6CE4(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217EE6D10;
}

uint64_t (*sub_217EE6D50(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return sub_217EE6D7C;
}

void (*sub_217EE6DC0(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_217EE6DEC;
}

uint64_t (*sub_217EE6E30(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return sub_217EE6E5C;
}

void (*sub_217EE6EA0(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 32);
  return sub_217EE6ECC;
}

void (*sub_217EE6F30(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 40);
  return sub_217EE6F5C;
}

void (*sub_217EE6FC8(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 48);
  return sub_217EE6FF4;
}

void (*sub_217EE7054(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 56);
  return sub_217EE7080;
}

void (*sub_217EE70E0(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 64);
  return sub_217EE710C;
}

uint64_t (*sub_217EE716C(void *a1))()
{
  a1[1] = v1;
  *a1 = *(v1 + 72);
  return sub_217EE7198;
}

uint64_t (*sub_217EE71F8(void *a1))()
{
  a1[1] = v1;
  *a1 = *(v1 + 80);
  return sub_217EE7224;
}

void (*sub_217EE728C(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 88);
  return sub_217EE72B8;
}

uint64_t (*sub_217EE72FC(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 96);
  return sub_217EE7328;
}

uint64_t (*sub_217EE7350(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 97);
  return sub_217EE737C;
}

uint64_t (*sub_217EE73A4(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 98);
  return sub_217EE73D0;
}

unint64_t sub_217EE73E0(char a1)
{
  result = 0x6E6F6974756C6964;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0x65576C61626F6C67;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
    case 13:
      v3 = 9;
      goto LABEL_12;
    case 8:
      result = 0x46676E6964646170;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x6269726373627573;
      break;
    case 12:
      result = 0xD000000000000023;
      break;
    case 14:
      v3 = 11;
LABEL_12:
      result = v3 | 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_217EE75D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217F01C84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EE7610(uint64_t a1)
{
  v2 = sub_217EF78D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EE764C(uint64_t a1)
{
  v2 = sub_217EF78D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EE7688(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6600, &qword_217F524B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - v7;
  v9 = *v1;
  v31 = *(v1 + 8);
  v30 = v1[2];
  v29 = *(v1 + 24);
  v10 = v1[5];
  v28 = v1[4];
  v12 = v1[6];
  v11 = v1[7];
  v14 = v1[8];
  v13 = v1[9];
  v16 = v1[10];
  v15 = v1[11];
  v17 = *(v1 + 96);
  v26 = *(v1 + 97);
  v27 = v17;
  v18 = *(v1 + 98);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF78D4();
  sub_217F4B294();
  v33 = v9;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6610, &qword_217F524B8);
  sub_217EF8694(&qword_27CBF6618, &qword_27CBF6610, &qword_217F524B8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  v19 = v4;
  sub_217F4B0C4();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v21 = v30;
  v22 = v29;
  v24 = v18;
  v25 = v5;
  LOBYTE(v33) = v31;
  v32 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6620, &qword_217F524C0);
  sub_217EF8694(&qword_27CBF6628, &qword_27CBF6620, &qword_217F524C0, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4B0C4();
  v33 = v21;
  v32 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6630, &qword_217F524C8);
  sub_217EF8694(&qword_27CBF6638, &qword_27CBF6630, &qword_217F524C8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  LOBYTE(v33) = v22;
  v32 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6640, &qword_217F524D0);
  sub_217EF8694(&qword_27CBF6648, &qword_27CBF6640, &qword_217F524D0, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4B0C4();
  v33 = v28;
  v32 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6650, &qword_217F524D8);
  sub_217EF8694(&qword_27CBF6658, &qword_27CBF6650, &qword_217F524D8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v33 = v10;
  v32 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6660, &qword_217F524E0);
  sub_217EF8694(&qword_27CBF6668, &qword_27CBF6660, &qword_217F524E0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v33 = v12;
  v32 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6670, &qword_217F524E8);
  sub_217EF8694(&qword_27CBF6678, &qword_27CBF6670, &qword_217F524E8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v33 = v11;
  v32 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6680, &qword_217F524F0);
  sub_217EF8694(&qword_27CBF6688, &qword_27CBF6680, &qword_217F524F0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v33 = v14;
  v32 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6690, &qword_217F524F8);
  sub_217EF8694(&qword_27CBF6698, &qword_27CBF6690, &qword_217F524F8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v33 = v13;
  v32 = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66A0, &qword_217F52500);
  sub_217EF8694(&qword_27CBF66A8, &qword_27CBF66A0, &qword_217F52500, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v33 = v16;
  v32 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66B0, &qword_217F52508);
  sub_217EF8694(&qword_27CBF66B8, &qword_27CBF66B0, &qword_217F52508, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v33 = v15;
  v32 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66C0, &qword_217F52510);
  sub_217EF8694(&qword_27CBF66C8, &qword_27CBF66C0, &qword_217F52510, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  LOBYTE(v33) = v27;
  v32 = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66D0, &qword_217F52518);
  sub_217EF8694(&qword_27CBF66D8, &qword_27CBF66D0, &qword_217F52518, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4B0C4();
  LOBYTE(v33) = v26;
  v32 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66E0, &qword_217F52520);
  sub_217EF8694(&qword_27CBF66E8, &qword_27CBF66E0, &qword_217F52520, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4B0C4();
  LOBYTE(v33) = v24;
  v32 = 14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66F0, &qword_217F52528);
  sub_217EF8694(&qword_27CBF66F8, &qword_27CBF66F0, &qword_217F52528, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4B0C4();
  return (*(v25 + 8))(v8, v19);
}

uint64_t sub_217EE7FCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6700, &qword_217F52530);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF78D4();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6610, &qword_217F524B8);
    v30 = 0;
    sub_217EF8694(&qword_27CBF6708, &qword_27CBF6610, &qword_217F524B8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v10 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6620, &qword_217F524C0);
    v30 = 1;
    sub_217EF8694(&qword_27CBF6710, &qword_27CBF6620, &qword_217F524C0, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    v29 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6630, &qword_217F524C8);
    v30 = 2;
    sub_217EF8694(&qword_27CBF6718, &qword_27CBF6630, &qword_217F524C8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v11 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6640, &qword_217F524D0);
    v30 = 3;
    sub_217EF8694(&qword_27CBF6720, &qword_27CBF6640, &qword_217F524D0, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    v28 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6650, &qword_217F524D8);
    v30 = 4;
    sub_217EF8694(&qword_27CBF6728, &qword_27CBF6650, &qword_217F524D8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v12 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6660, &qword_217F524E0);
    v30 = 5;
    sub_217EF8694(&qword_27CBF6730, &qword_27CBF6660, &qword_217F524E0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v13 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6670, &qword_217F524E8);
    v30 = 6;
    sub_217EF8694(&qword_27CBF6738, &qword_27CBF6670, &qword_217F524E8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v14 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6680, &qword_217F524F0);
    v30 = 7;
    sub_217EF8694(&qword_27CBF6740, &qword_27CBF6680, &qword_217F524F0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v15 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6690, &qword_217F524F8);
    v30 = 8;
    sub_217EF8694(&qword_27CBF6748, &qword_27CBF6690, &qword_217F524F8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v16 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66A0, &qword_217F52500);
    v30 = 9;
    sub_217EF8694(&qword_27CBF6750, &qword_27CBF66A0, &qword_217F52500, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v17 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66B0, &qword_217F52508);
    v30 = 10;
    sub_217EF8694(&qword_27CBF6758, &qword_27CBF66B0, &qword_217F52508, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v27 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66C0, &qword_217F52510);
    v30 = 11;
    sub_217EF8694(&qword_27CBF6760, &qword_27CBF66C0, &qword_217F52510, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v26 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66D0, &qword_217F52518);
    v30 = 12;
    sub_217EF8694(&qword_27CBF6768, &qword_27CBF66D0, &qword_217F52518, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    v25 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66E0, &qword_217F52520);
    v30 = 13;
    sub_217EF8694(&qword_27CBF6770, &qword_27CBF66E0, &qword_217F52520, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    v24 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66F0, &qword_217F52528);
    v30 = 14;
    sub_217EF8694(&qword_27CBF6778, &qword_27CBF66F0, &qword_217F52528, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    v19 = v31;
    *a2 = v10;
    v20 = v28;
    *(a2 + 8) = v29;
    *(a2 + 16) = v11;
    *(a2 + 24) = v20;
    *(a2 + 32) = v12;
    *(a2 + 40) = v13;
    *(a2 + 48) = v14;
    *(a2 + 56) = v15;
    *(a2 + 64) = v16;
    *(a2 + 72) = v17;
    v21 = v26;
    *(a2 + 80) = v27;
    *(a2 + 88) = v21;
    v22 = v24;
    *(a2 + 96) = v25;
    *(a2 + 97) = v22;
    *(a2 + 98) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217EE8958(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217EE8984;
}

void (*sub_217EE89E4(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_217EE8A10;
}

void (*sub_217EE8A74(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_217EE8AA0;
}

void (*sub_217EE8B00(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 24);
  return sub_217EE8B2C;
}

void (*sub_217EE8B8C(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 32);
  return sub_217EE8BB8;
}

void (*sub_217EE8C1C(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 40);
  return sub_217EE8C48;
}

unint64_t sub_217EE8C74()
{
  v1 = *v0;
  v2 = 0x6C754D6F69647561;
  v3 = 0xD000000000000012;
  if (v1 == 4)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217EE8D4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217F02168(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EE8D80(uint64_t a1)
{
  v2 = sub_217EF7928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EE8DBC(uint64_t a1)
{
  v2 = sub_217EF7928();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EE8DF8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6780, &qword_217F52538);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v14 = v1[4];
  v13 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7928();
  sub_217F4B294();
  v17 = v10;
  HIBYTE(v16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6790, &qword_217F52540);
  sub_217EF8694(&qword_27CBF6798, &qword_27CBF6790, &qword_217F52540, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  if (!v2)
  {
    v17 = v9;
    HIBYTE(v16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67A0, &qword_217F52548);
    sub_217EF8694(&qword_27CBF67A8, &qword_27CBF67A0, &qword_217F52548, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v17 = v12;
    HIBYTE(v16) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67B0, &qword_217F52550);
    sub_217EF8694(&qword_27CBF67B8, &qword_27CBF67B0, &qword_217F52550, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v17 = v11;
    HIBYTE(v16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67C0, &qword_217F52558);
    sub_217EF8694(&qword_27CBF67C8, &qword_27CBF67C0, &qword_217F52558, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v17 = v14;
    HIBYTE(v16) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67D0, &qword_217F52560);
    sub_217EF8694(&qword_27CBF67D8, &qword_27CBF67D0, &qword_217F52560, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v17 = v13;
    HIBYTE(v16) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67E0, &qword_217F52568);
    sub_217EF8694(&qword_27CBF67E8, &qword_27CBF67E0, &qword_217F52568, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_217EE9214@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67F0, &qword_217F52570);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7928();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6790, &qword_217F52540);
    HIBYTE(v17) = 0;
    sub_217EF8694(&qword_27CBF67F8, &qword_27CBF6790, &qword_217F52540, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v10 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67A0, &qword_217F52548);
    HIBYTE(v17) = 1;
    sub_217EF8694(&qword_27CBF6800, &qword_27CBF67A0, &qword_217F52548, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v11 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67B0, &qword_217F52550);
    HIBYTE(v17) = 2;
    sub_217EF8694(&qword_27CBF6808, &qword_27CBF67B0, &qword_217F52550, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v12 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67C0, &qword_217F52558);
    HIBYTE(v17) = 3;
    sub_217EF8694(&qword_27CBF6810, &qword_27CBF67C0, &qword_217F52558, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v13 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67D0, &qword_217F52560);
    HIBYTE(v17) = 4;
    sub_217EF8694(&qword_27CBF6818, &qword_27CBF67D0, &qword_217F52560, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v15 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67E0, &qword_217F52568);
    HIBYTE(v17) = 5;
    sub_217EF8694(&qword_27CBF6820, &qword_27CBF67E0, &qword_217F52568, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    v16 = v18;
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v13;
    a2[4] = v15;
    a2[5] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_217EE96D4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_217EE9700;
}

void (*sub_217EE9744(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_217EE9770;
}

void (*sub_217EE97D0(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_217EE97FC;
}

double sub_217EE9828@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

uint64_t (*sub_217EE9854(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 48);
  return sub_217EE9880;
}

double sub_217EE9890@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = result;
  return result;
}

void (*sub_217EE98D8(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 80);
  return sub_217EE9904;
}

void (*sub_217EE9964(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 88);
  return sub_217EE9990;
}

void (*sub_217EE99F0(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 96);
  return sub_217EE9A1C;
}

void (*sub_217EE9A7C(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 104);
  return sub_217EE9AA8;
}

uint64_t (*sub_217EE9AEC(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 112);
  return sub_217EE9B18;
}

void (*sub_217EE9B60(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 120);
  return sub_217EE9B8C;
}

void (*sub_217EE9BEC(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 128);
  return sub_217EE9C18;
}

void (*sub_217EE9C78(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 136);
  return sub_217EE9CA4;
}

void (*sub_217EE9D20(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 144);
  return sub_217EE9D4C;
}

void (*sub_217EE9DAC(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 152);
  return sub_217EE9DD8;
}

uint64_t (*sub_217EE9E1C(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 160);
  return sub_217EE9E48;
}

void (*sub_217EE9E8C(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 168);
  return sub_217EE9EB8;
}

void (*sub_217EE9F18(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 176);
  return sub_217EE9F44;
}

unint64_t sub_217EE9F74(char a1)
{
  result = 0x46746C7561666564;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0xD000000000000017;
    case 3:
    case 5:
      return 0xD00000000000001ELL;
    case 4:
    case 18:
      v3 = 9;
      goto LABEL_16;
    case 6:
      return 0x6F6C466863746566;
    case 7:
    case 17:
      return 0xD000000000000011;
    case 8:
      return 0xD000000000000026;
    case 9:
      return 0x696C7069746C756DLL;
    case 10:
      return 0xD00000000000002ALL;
    case 11:
      v3 = 10;
      goto LABEL_16;
    case 12:
      v3 = 5;
      goto LABEL_16;
    case 13:
      v3 = 13;
LABEL_16:
      result = v3 | 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD00000000000001CLL;
      break;
  }

  return result;
}

uint64_t sub_217EEA1AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217F02370(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EEA1EC(uint64_t a1)
{
  v2 = sub_217EF797C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EEA228(uint64_t a1)
{
  v2 = sub_217EF797C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EEA264(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6828, &qword_217F52578);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v28 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v48 = *(v1 + 1);
  v10 = *(v1 + 4);
  v45 = *(v1 + 3);
  v46 = v9;
  v43 = *(v1 + 5);
  v44 = v10;
  v53 = v1[48];
  v11 = *(v1 + 7);
  v41 = *(v1 + 8);
  v42 = v11;
  v12 = *(v1 + 10);
  v40 = *(v1 + 9);
  v39 = v12;
  v13 = *(v1 + 12);
  v38 = *(v1 + 11);
  v37 = v13;
  v14 = *(v1 + 13);
  v47 = v1[112];
  v15 = *(v1 + 15);
  v16 = *(v1 + 16);
  v18 = *(v1 + 17);
  v17 = *(v1 + 18);
  v19 = *(v1 + 19);
  v20 = v1[160];
  v22 = *(v1 + 21);
  v21 = *(v1 + 22);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF797C();
  sub_217F4B294();
  LOBYTE(v50) = v8;
  v54 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6838, &qword_217F52580);
  sub_217EF8694(&qword_27CBF6840, &qword_27CBF6838, &qword_217F52580, &protocol conformance descriptor for ConfigurableValue<A>);
  v23 = v49;
  sub_217F4B0C4();
  if (v23)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v24 = v53;
  v49 = v14;
  v25 = v47;
  v36 = v15;
  v35 = v16;
  v34 = v18;
  v33 = v17;
  v32 = v19;
  v31 = v20;
  v30 = v22;
  v29 = v21;
  v50 = v48;
  v54 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6848, &qword_217F52588);
  sub_217EF8694(&qword_27CBF6850, &qword_27CBF6848, &qword_217F52588, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v50 = v46;
  v54 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6858, &qword_217F52590);
  sub_217EF8694(&qword_27CBF6860, &qword_27CBF6858, &qword_217F52590, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  v48 = v3;
  sub_217F4B0C4();
  v50 = v45;
  v51 = v44;
  v52 = v43;
  v54 = 3;
  sub_217EF79D0();
  sub_217F4B0C4();
  LOBYTE(v50) = v24;
  v54 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6870, &qword_217F52598);
  sub_217EF8694(&qword_27CBF6878, &qword_27CBF6870, &qword_217F52598, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4B0C4();
  v50 = v42;
  v51 = v41;
  v52 = v40;
  v54 = 5;
  sub_217F4B0C4();
  v50 = v39;
  v54 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6880, &qword_217F525A0);
  sub_217EF8694(&qword_27CBF6888, &qword_27CBF6880, &qword_217F525A0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v50 = v38;
  v54 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6890, &qword_217F525A8);
  sub_217EF8694(&qword_27CBF6898, &qword_27CBF6890, &qword_217F525A8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v50 = v37;
  v54 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68A0, &qword_217F525B0);
  sub_217EF8694(&qword_27CBF68A8, &qword_27CBF68A0, &qword_217F525B0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v50 = v49;
  v54 = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68B0, &qword_217F525B8);
  sub_217EF8694(&qword_27CBF68B8, &qword_27CBF68B0, &qword_217F525B8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  LOBYTE(v50) = v25;
  v54 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68C0, &qword_217F525C0);
  sub_217EF8694(&qword_27CBF68C8, &qword_27CBF68C0, &qword_217F525C0, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4B0C4();
  v50 = v36;
  v54 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68D0, &qword_217F525C8);
  sub_217EF8694(&qword_27CBF68D8, &qword_27CBF68D0, &qword_217F525C8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v50 = v35;
  v54 = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68E0, &qword_217F525D0);
  sub_217EF8694(&qword_27CBF68E8, &qword_27CBF68E0, &qword_217F525D0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v50 = v34;
  v54 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68F0, &qword_217F525D8);
  sub_217EF8694(&qword_27CBF68F8, &qword_27CBF68F0, &qword_217F525D8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v50 = v33;
  v54 = 14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6900, &qword_217F525E0);
  sub_217EF8694(&qword_27CBF6908, &qword_27CBF6900, &qword_217F525E0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v50 = v32;
  v54 = 15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6910, &qword_217F525E8);
  sub_217EF8694(&qword_27CBF6918, &qword_27CBF6910, &qword_217F525E8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  LOBYTE(v50) = v31;
  v54 = 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6920, &qword_217F525F0);
  sub_217EF8694(&qword_27CBF6928, &qword_27CBF6920, &qword_217F525F0, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4B0C4();
  v50 = v30;
  v54 = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6930, &qword_217F525F8);
  sub_217EF8694(&qword_27CBF6938, &qword_27CBF6930, &qword_217F525F8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v50 = v29;
  v54 = 18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6940, &qword_217F52600);
  sub_217EF8694(&qword_27CBF6948, &qword_27CBF6940, &qword_217F52600, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  v26 = v48;
  sub_217F4B0C4();
  return (*(v4 + 8))(v7, v26);
}

uint64_t sub_217EEADAC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6950, &qword_217F52608);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v28 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF797C();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6838, &qword_217F52580);
    v46 = 0;
    sub_217EF8694(&qword_27CBF6958, &qword_27CBF6838, &qword_217F52580, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    v41 = a2;
    v10 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6848, &qword_217F52588);
    v46 = 1;
    sub_217EF8694(&qword_27CBF6960, &qword_27CBF6848, &qword_217F52588, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v45 = v10;
    v11 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6858, &qword_217F52590);
    v46 = 2;
    sub_217EF8694(&qword_27CBF6968, &qword_27CBF6858, &qword_217F52590, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v12 = v42;
    v46 = 3;
    sub_217EF7A24();
    sub_217F4AFC4();
    v13 = v42;
    v14 = v43;
    v15 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6870, &qword_217F52598);
    v46 = 4;
    sub_217EF8694(&qword_27CBF6978, &qword_27CBF6870, &qword_217F52598, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    LOBYTE(v10) = v42;
    v46 = 5;
    sub_217F4AFC4();
    v16 = v42;
    v17 = v43;
    v18 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6880, &qword_217F525A0);
    v46 = 6;
    sub_217EF8694(&qword_27CBF6980, &qword_27CBF6880, &qword_217F525A0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v40 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6890, &qword_217F525A8);
    v46 = 7;
    sub_217EF8694(&qword_27CBF6988, &qword_27CBF6890, &qword_217F525A8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v39 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68A0, &qword_217F525B0);
    v46 = 8;
    sub_217EF8694(&qword_27CBF6990, &qword_27CBF68A0, &qword_217F525B0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v38 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68B0, &qword_217F525B8);
    v46 = 9;
    sub_217EF8694(&qword_27CBF6998, &qword_27CBF68B0, &qword_217F525B8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v37 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68C0, &qword_217F525C0);
    v46 = 10;
    sub_217EF8694(&qword_27CBF69A0, &qword_27CBF68C0, &qword_217F525C0, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    v36 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68D0, &qword_217F525C8);
    v46 = 11;
    sub_217EF8694(&qword_27CBF69A8, &qword_27CBF68D0, &qword_217F525C8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v35 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68E0, &qword_217F525D0);
    v46 = 12;
    sub_217EF8694(&qword_27CBF69B0, &qword_27CBF68E0, &qword_217F525D0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v34 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68F0, &qword_217F525D8);
    v46 = 13;
    sub_217EF8694(&qword_27CBF69B8, &qword_27CBF68F0, &qword_217F525D8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v33 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6900, &qword_217F525E0);
    v46 = 14;
    sub_217EF8694(&qword_27CBF69C0, &qword_27CBF6900, &qword_217F525E0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v32 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6910, &qword_217F525E8);
    v46 = 15;
    sub_217EF8694(&qword_27CBF69C8, &qword_27CBF6910, &qword_217F525E8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v31 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6920, &qword_217F525F0);
    v46 = 16;
    sub_217EF8694(&qword_27CBF69D0, &qword_27CBF6920, &qword_217F525F0, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    v30 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6930, &qword_217F525F8);
    v46 = 17;
    sub_217EF8694(&qword_27CBF69D8, &qword_27CBF6930, &qword_217F525F8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v29 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6940, &qword_217F52600);
    v46 = 18;
    sub_217EF8694(&qword_27CBF69E0, &qword_27CBF6940, &qword_217F52600, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    v20 = v42;
    v21 = v41;
    *v41 = v45;
    *(v21 + 1) = v11;
    *(v21 + 2) = v12;
    *(v21 + 3) = v13;
    *(v21 + 4) = v14;
    *(v21 + 5) = v15;
    v21[48] = v10;
    *(v21 + 7) = v16;
    *(v21 + 8) = v17;
    v23 = v39;
    v22 = v40;
    *(v21 + 9) = v18;
    *(v21 + 10) = v22;
    v24 = v37;
    v25 = v38;
    *(v21 + 11) = v23;
    *(v21 + 12) = v25;
    *(v21 + 13) = v24;
    v21[112] = v36;
    v26 = v34;
    *(v21 + 15) = v35;
    *(v21 + 16) = v26;
    v27 = v32;
    *(v21 + 17) = v33;
    *(v21 + 18) = v27;
    *(v21 + 19) = v31;
    v21[160] = v30;
    *(v21 + 21) = v29;
    *(v21 + 22) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217EEB918(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217EEB944;
}

void (*sub_217EEB9A0(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_217EEB9CC;
}

void (*sub_217EEBA30(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_217EEBA5C;
}

uint64_t sub_217EEBA88()
{
  v1 = 0x676E6964646170;
  if (*v0 != 1)
  {
    v1 = 0x726F697270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E656E6F707865;
  }
}

uint64_t sub_217EEBAE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217F02950(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EEBB14(uint64_t a1)
{
  v2 = sub_217EF7A78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EEBB50(uint64_t a1)
{
  v2 = sub_217EF7A78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EEBB8C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF69E8, &qword_217F52610);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7A78();
  sub_217F4B294();
  v15 = v10;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF69F8, &qword_217F52618);
  sub_217EF8694(&qword_27CBF6A00, &qword_27CBF69F8, &qword_217F52618, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  if (!v2)
  {
    v15 = v9;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A08, &qword_217F52620);
    sub_217EF8694(&qword_27CBF6A10, &qword_27CBF6A08, &qword_217F52620, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v15 = v11;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A18, &qword_217F52628);
    sub_217EF8694(&qword_27CBF6A20, &qword_27CBF6A18, &qword_217F52628, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_217EEBE28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A28, &qword_217F52630);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7A78();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF69F8, &qword_217F52618);
    v15 = 0;
    sub_217EF8694(&qword_27CBF6A30, &qword_27CBF69F8, &qword_217F52618, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v10 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A08, &qword_217F52620);
    v15 = 1;
    sub_217EF8694(&qword_27CBF6A38, &qword_27CBF6A08, &qword_217F52620, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v12 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A18, &qword_217F52628);
    v15 = 2;
    sub_217EF8694(&qword_27CBF6A40, &qword_27CBF6A18, &qword_217F52628, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    v13 = v16;
    *a2 = v10;
    a2[1] = v12;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217EEC148(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217EEC174;
}

void (*sub_217EEC1C8(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_217EEC1F4;
}

uint64_t (*sub_217EEC24C(void *a1))()
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_217EEC278;
}

uint64_t (*sub_217EEC2D0(void *a1))()
{
  a1[1] = v1;
  *a1 = *(v1 + 24);
  return sub_217EEC2FC;
}

unint64_t sub_217EEC328()
{
  v1 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000012;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_217EEC394@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217F02A64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EEC3C8(uint64_t a1)
{
  v2 = sub_217EF7ACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EEC404(uint64_t a1)
{
  v2 = sub_217EF7ACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EEC440(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A48, &qword_217F52638);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7ACC();
  sub_217F4B294();
  v15 = v10;
  HIBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A58, &qword_217F52640);
  sub_217EF8694(&qword_27CBF6A60, &qword_27CBF6A58, &qword_217F52640, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  if (!v2)
  {
    v15 = v9;
    HIBYTE(v14) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A68, &qword_217F52648);
    sub_217EF8694(&qword_27CBF6A70, &qword_27CBF6A68, &qword_217F52648, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v15 = v12;
    HIBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A78, &qword_217F52650);
    sub_217EF8694(&qword_27CBF6A80, &qword_27CBF6A78, &qword_217F52650, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v15 = v11;
    HIBYTE(v14) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A88, &qword_217F52658);
    sub_217EF8694(&qword_27CBF6A90, &qword_27CBF6A88, &qword_217F52658, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_217EEC758@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A98, &qword_217F52660);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7ACC();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A58, &qword_217F52640);
    HIBYTE(v15) = 0;
    sub_217EF8694(&qword_27CBF6AA0, &qword_27CBF6A58, &qword_217F52640, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v10 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A68, &qword_217F52648);
    HIBYTE(v15) = 1;
    sub_217EF8694(&qword_27CBF6AA8, &qword_27CBF6A68, &qword_217F52648, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v11 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A78, &qword_217F52650);
    HIBYTE(v15) = 2;
    sub_217EF8694(&qword_27CBF6AB0, &qword_27CBF6A78, &qword_217F52650, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v13 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A88, &qword_217F52658);
    HIBYTE(v15) = 3;
    sub_217EF8694(&qword_27CBF6AB8, &qword_27CBF6A88, &qword_217F52658, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v13;
    a2[3] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217EECB04(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217EECB30;
}

void (*sub_217EECBA4(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_217EECBD0;
}

void (*sub_217EECC48(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_217EECC74;
}

__n128 sub_217EECCA0@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void (*sub_217EECCE4(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 56);
  return sub_217EECD10;
}

uint64_t (*sub_217EECD70(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 64);
  a1[1] = v1;
  return sub_217EECD98;
}

unint64_t sub_217EECDC4()
{
  v1 = *v0;
  v2 = 0x73726F697270;
  v3 = 0xD00000000000001FLL;
  if (v1 == 4)
  {
    v3 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001CLL;
  v5 = 0xD00000000000001ALL;
  if (v1 != 1)
  {
    v5 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217EECE8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217F02BD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EECEC0(uint64_t a1)
{
  v2 = sub_217EF7EF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EECEFC(uint64_t a1)
{
  v2 = sub_217EF7EF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EECF38(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6AC0, &qword_217F52668);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = *(v1 + 3);
  v16 = *(v1 + 5);
  v17 = v12;
  v13 = v1[7];
  v14 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7EF0();
  sub_217F4B294();
  *&v18 = v10;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6AD0, &qword_217F52670);
  sub_217EF8694(&qword_27CBF6AD8, &qword_27CBF6AD0, &qword_217F52670, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  if (!v2)
  {
    *&v18 = v9;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6AE0, &qword_217F52678);
    sub_217EF8694(&qword_27CBF6AE8, &qword_27CBF6AE0, &qword_217F52678, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    *&v18 = v11;
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6AF0, &qword_217F52680);
    sub_217EF8694(&qword_27CBF6AF8, &qword_27CBF6AF0, &qword_217F52680, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v18 = v17;
    v19 = v16;
    v20 = 3;
    sub_217EF7F44();
    sub_217F4B0C4();
    *&v18 = v13;
    v20 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B08, &qword_217F52688);
    sub_217EF8694(&qword_27CBF6B10, &qword_27CBF6B08, &qword_217F52688, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    *&v18 = v14;
    v20 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B18, &qword_217F52690);
    sub_217EF8694(&qword_27CBF6B20, &qword_27CBF6B18, &qword_217F52690, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_217EED328@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B28, &qword_217F52698);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7EF0();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6AD0, &qword_217F52670);
    v21 = 0;
    sub_217EF8694(&qword_27CBF6B30, &qword_27CBF6AD0, &qword_217F52670, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v10 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6AE0, &qword_217F52678);
    v21 = 1;
    sub_217EF8694(&qword_27CBF6B38, &qword_27CBF6AE0, &qword_217F52678, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v11 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6AF0, &qword_217F52680);
    v21 = 2;
    sub_217EF8694(&qword_27CBF6B40, &qword_27CBF6AF0, &qword_217F52680, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v12 = v19;
    v21 = 3;
    sub_217EF7F98();
    sub_217F4AFC4();
    v17 = v19;
    v18 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B08, &qword_217F52688);
    v21 = 4;
    sub_217EF8694(&qword_27CBF6B50, &qword_27CBF6B08, &qword_217F52688, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v14 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B18, &qword_217F52690);
    v21 = 5;
    sub_217EF8694(&qword_27CBF6B58, &qword_27CBF6B18, &qword_217F52690, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    v15 = v19;
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    v16 = v18;
    *(a2 + 24) = v17;
    *(a2 + 40) = v16;
    *(a2 + 56) = v14;
    *(a2 + 64) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217EED7A4(uint64_t a1))(double *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return sub_217EED7D0;
}

double sub_217EED7F8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_217F51DA0;
  return result;
}

void (*sub_217EED830(uint64_t a1))(double *a1)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 16);
  return sub_217EED85C;
}

uint64_t sub_217EED888()
{
  if (*v0)
  {
    return 0x6C6172656E6567;
  }

  else
  {
    return 0x656E696C65736162;
  }
}

uint64_t sub_217EED8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656E696C65736162 && a2 == 0xE800000000000000;
  if (v6 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6172656E6567 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

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

uint64_t sub_217EED9AC(uint64_t a1)
{
  v2 = sub_217EF7FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EED9E8(uint64_t a1)
{
  v2 = sub_217EF7FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EEDA24(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B60, &qword_217F526A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7FEC();
  sub_217F4B294();
  v16 = v9;
  v17 = v10;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B70, &qword_217F526A8);
  sub_217EF8694(&qword_27CBF6B78, &qword_27CBF6B70, &qword_217F526A8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  if (!v2)
  {
    v16 = v11;
    v17 = v12;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B80, &qword_217F526B0);
    sub_217EF8694(&qword_27CBF6B88, &qword_27CBF6B80, &qword_217F526B0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_217EEDC44@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B90, &qword_217F526B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7FEC();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B70, &qword_217F526A8);
    v14 = 0;
    sub_217EF8694(&qword_27CBF6B98, &qword_27CBF6B70, &qword_217F526A8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v10 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B80, &qword_217F526B0);
    v14 = 1;
    sub_217EF8694(&qword_27CBF6BA0, &qword_27CBF6B80, &qword_217F526B0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    v11 = v13;
    *a2 = v10;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217EEDF1C(uint64_t a1)
{
  v2 = sub_217EF8040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EEDF58(uint64_t a1)
{
  v2 = sub_217EF8040();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_217EEE058@<X0>(unint64_t *a1@<X8>)
{
  result = sub_217ECBAD8(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t (*sub_217EEE094(uint64_t *a1))(uint64_t *a1, char a2)
{
  *a1 = *v1;
  a1[1] = v1;

  return sub_217EEE0E0;
}

uint64_t sub_217EEE0E0(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_217EC7330(*a1);
  }

  sub_217EC7330(v2);
}

uint64_t sub_217EEE14C()
{
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](0);
  return sub_217F4B254();
}

uint64_t sub_217EEE190(uint64_t a1)
{
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](0);
  return sub_217F4B254();
}

uint64_t sub_217EEE1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000217F5FEF0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217F4B144();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217EEE28C(uint64_t a1)
{
  v2 = sub_217EF83A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EEE2C8(uint64_t a1)
{
  v2 = sub_217EF83A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EEE304(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6BC0, &qword_217F526D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF83A0();

  sub_217F4B294();
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6BD0, &qword_217F526D8);
  sub_217EF8694(&qword_27CBF6BD8, &qword_27CBF6BD0, &qword_217F526D8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_217EEE4A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6BE0, &qword_217F526E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF83A0();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6BD0, &qword_217F526D8);
    sub_217EF8694(&qword_27CBF6BE8, &qword_27CBF6BD0, &qword_217F526D8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_217EEE6A4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_217F03FF4;
}

void (*sub_217EEE704(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_217EEE730;
}

uint64_t (*sub_217EEE790(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  return sub_217EEE7B8;
}

void (*sub_217EEE814(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 24);
  return sub_217EEE840;
}

void (*sub_217EEE8A0(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 32);
  return sub_217EEE8CC;
}

uint64_t (*sub_217EEE910(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40);
  return sub_217EEE93C;
}

void (*sub_217EEE980(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 48);
  return sub_217EEE9AC;
}

uint64_t (*sub_217EEE9F0(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 56);
  return sub_217EEEA1C;
}

double sub_217EEEA2C@<D0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, _OWORD *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  LOBYTE(v17) = a1;
  *(&v17 + 1) = a6;
  sub_217EC9D8C(a6);
  *&v18 = a2;
  sub_217EC9F54(a2);
  *(&v18 + 1) = a7;
  sub_217ECA10C(a7);
  *v19 = a8;
  sub_217ECA2D4(a8);
  v19[8] = a3;
  *&v19[16] = a9;
  sub_217ECA4A0(a9);
  v19[24] = a4;
  *a5 = v17;
  a5[1] = v18;
  a5[2] = *v19;
  result = *&v19[9];
  *(a5 + 41) = *&v19[9];
  return result;
}

unint64_t sub_217EEEB04()
{
  v1 = *v0;
  v2 = 0x7361427441706163;
  v3 = 0x6867696557676174;
  if (v1 != 6)
  {
    v3 = 0xD00000000000001ELL;
  }

  v4 = 0x6C754D65726F6373;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x476E4974696D696CLL;
  if (v1 != 2)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217EEEC34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217F02DD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EEEC74(uint64_t a1)
{
  v2 = sub_217EF83F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EEECB0(uint64_t a1)
{
  v2 = sub_217EF83F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EEECEC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6BF0, &qword_217F526E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v20 = *(v1 + 2);
  v12 = *(v1 + 3);
  v11 = *(v1 + 4);
  v22 = v1[40];
  v13 = *(v1 + 6);
  v19 = v1[56];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF83F4();
  sub_217F4B294();
  LOBYTE(v21) = v9;
  v14 = v8;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6BF8, &qword_217F526F0);
  sub_217EF8694(&qword_280C28840, &qword_27CBF6BF8, &qword_217F526F0, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4B0C4();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = v20;
  v16 = v22;
  v21 = v10;
  v23 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C00, &qword_217F526F8);
  sub_217EF8694(&qword_280C286E0, &qword_27CBF6C00, &qword_217F526F8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v21 = v15;
  v23 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C08, &qword_217F52700);
  sub_217EF8694(&qword_280C286F0, &qword_27CBF6C08, &qword_217F52700, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v21 = v12;
  v23 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C10, &qword_217F52708);
  sub_217EF8694(&qword_280C28700, &qword_27CBF6C10, &qword_217F52708, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  v21 = v11;
  v23 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C18, &qword_217F52710);
  sub_217EF8694(&qword_280C286E8, &qword_27CBF6C18, &qword_217F52710, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  LOBYTE(v21) = v16;
  v23 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C20, &qword_217F52718);
  sub_217EF8694(&qword_280C28838, &qword_27CBF6C20, &qword_217F52718, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4B0C4();
  v21 = v13;
  v23 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C28, &qword_217F52720);
  sub_217EF8694(&qword_280C286F8, &qword_27CBF6C28, &qword_217F52720, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  LOBYTE(v21) = v19;
  v23 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C30, &qword_217F52728);
  sub_217EF8694(&qword_280C28830, &qword_27CBF6C30, &qword_217F52728, &protocol conformance descriptor for ConfigurableValue<A>);
  sub_217F4B0C4();
  return (*(v5 + 8))(v14, v4);
}

uint64_t sub_217EEF22C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C38, &qword_217F52730);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF83F4();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6BF8, &qword_217F526F0);
    v24 = 0;
    sub_217EF8694(&qword_27CBF6C40, &qword_27CBF6BF8, &qword_217F526F0, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    v21 = a2;
    v10 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C00, &qword_217F526F8);
    v24 = 1;
    sub_217EF8694(&qword_27CBF6C48, &qword_27CBF6C00, &qword_217F526F8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v23 = v10;
    v11 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C08, &qword_217F52700);
    v24 = 2;
    sub_217EF8694(&qword_27CBF6C50, &qword_27CBF6C08, &qword_217F52700, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v12 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C10, &qword_217F52708);
    v24 = 3;
    sub_217EF8694(&qword_27CBF6C58, &qword_27CBF6C10, &qword_217F52708, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v13 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C18, &qword_217F52710);
    v24 = 4;
    sub_217EF8694(&qword_27CBF6C60, &qword_27CBF6C18, &qword_217F52710, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v14 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C20, &qword_217F52718);
    v24 = 5;
    sub_217EF8694(&qword_27CBF6C68, &qword_27CBF6C20, &qword_217F52718, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    v20 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C28, &qword_217F52720);
    v24 = 6;
    sub_217EF8694(&qword_27CBF6C70, &qword_27CBF6C28, &qword_217F52720, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v16 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C30, &qword_217F52728);
    v24 = 7;
    sub_217EF8694(&qword_27CBF6C78, &qword_27CBF6C30, &qword_217F52728, &protocol conformance descriptor for ConfigurableValue<A>);
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    v17 = v22;
    v18 = v21;
    *v21 = v23;
    *(v18 + 1) = v11;
    *(v18 + 2) = v12;
    *(v18 + 3) = v13;
    *(v18 + 4) = v14;
    v18[40] = v20;
    *(v18 + 6) = v16;
    v18[56] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double sub_217EEF7F4@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_217EEF850()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_217EEF888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000217F5FF90 == a2 || (sub_217F4B144() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F5FFB0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_217F4B144();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_217EEF978(uint64_t a1)
{
  v2 = sub_217EF8448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EEF9B4(uint64_t a1)
{
  v2 = sub_217EF8448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EEF9F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C80, &qword_217F52738);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13[-1] - v8;
  v12 = *v3;
  v10 = *(v3 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF8448();
  sub_217F4B294();
  v13[0] = v12;
  *&v13[1] = v10;
  v14 = 0;
  sub_217EF849C();
  sub_217F4B0C4();
  if (!v2)
  {
    memcpy(v13, v3 + 24, sizeof(v13));
    v14 = 1;
    sub_217EF84F0();
    sub_217F4B0C4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_217EEFBB0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6CA0, &qword_217F52740);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF8448();
  sub_217F4B274();
  if (!v2)
  {
    v9 = v5;
    v10 = v16;
    v18 = 0;
    sub_217EF8544();
    sub_217F4AFC4();
    v11 = v17[0];
    v12 = v17[1];
    v13 = v17[2];
    v18 = 1;
    sub_217EF8598();
    sub_217F4AFC4();
    (*(v9 + 8))(v8, v4);
    *v10 = v11;
    v10[1] = v12;
    v10[2] = v13;
    memcpy(v10 + 3, v17, 0x220uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217EEFE10(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217EEFE3C;
}

void (*sub_217EEFE90(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_217EEFEBC;
}

void (*sub_217EEFF14(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_217EEFF40;
}

unint64_t sub_217EEFF6C()
{
  v1 = 0xD00000000000001CLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461527961636564;
  }
}

uint64_t sub_217EEFFD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217F03090(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EF000C(uint64_t a1)
{
  v2 = sub_217EF85EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EF0048(uint64_t a1)
{
  v2 = sub_217EF85EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EF0084(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6CB8, &qword_217F52748);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF85EC();
  sub_217F4B294();
  v15 = v10;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6CC8, &qword_217F52750);
  sub_217EF8694(&qword_27CBF6CD0, &qword_27CBF6CC8, &qword_217F52750, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  if (!v2)
  {
    v15 = v9;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6CD8, &qword_217F52758);
    sub_217EF8694(&qword_27CBF6CE0, &qword_27CBF6CD8, &qword_217F52758, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v15 = v11;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6CE8, &qword_217F52760);
    sub_217EF8694(&qword_27CBF6CF0, &qword_27CBF6CE8, &qword_217F52760, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_217EF0320@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6CF8, &qword_217F52768);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF85EC();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6CC8, &qword_217F52750);
    v15 = 0;
    sub_217EF8694(&qword_27CBF6D00, &qword_27CBF6CC8, &qword_217F52750, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v10 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6CD8, &qword_217F52758);
    v15 = 1;
    sub_217EF8694(&qword_27CBF6D08, &qword_27CBF6CD8, &qword_217F52758, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v12 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6CE8, &qword_217F52760);
    v15 = 2;
    sub_217EF8694(&qword_27CBF6D10, &qword_27CBF6CE8, &qword_217F52760, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    v13 = v16;
    *a2 = v10;
    a2[1] = v12;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 sub_217EF0660@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #1.0 }

  *a1 = result;
  a1[1] = result;
  return result;
}

__n128 sub_217EF066C@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 sub_217EF0678@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void (*sub_217EF06BC(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v4;
  return sub_217EF0728;
}

void sub_217EF0728(double **a1)
{
  v1 = *a1;
  sub_217EC7AA4(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

double sub_217EF076C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_217F4DD30;
  a1[1] = xmmword_217F4DD30;
  return result;
}

__n128 sub_217EF077C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF0788@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 32);
  v3 = *(a1 + 48);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF07EC(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 48);
  *v3 = *(v1 + 32);
  *(v3 + 16) = v4;
  return sub_217EF0858;
}

void sub_217EF0858(double **a1)
{
  v1 = *a1;
  sub_217EC7CAC(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

double sub_217EF08A0@<D0>(_OWORD *a1@<X8>)
{
  result = 1.0;
  *a1 = xmmword_217F51DB0;
  a1[1] = xmmword_217F51DB0;
  return result;
}

double sub_217EF08B0@<D0>(_OWORD *a1@<X8>)
{
  result = 1.0;
  *a1 = xmmword_217F51DB0;
  a1[1] = xmmword_217F51DB0;
  return result;
}

__n128 sub_217EF08C0@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  v3 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF08CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 64);
  v3 = *(a1 + 80);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF0930(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 80);
  *v3 = *(v1 + 64);
  *(v3 + 16) = v4;
  return sub_217EF099C;
}

void sub_217EF099C(double **a1)
{
  v1 = *a1;
  sub_217EC7EB8(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF09E4@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 96);
  v3 = *(v1 + 112);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF09F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 96);
  v3 = *(a1 + 112);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF0A54(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 112);
  *v3 = *(v1 + 96);
  *(v3 + 16) = v4;
  return sub_217EF0AC0;
}

void sub_217EF0AC0(double **a1)
{
  v1 = *a1;
  sub_217EC80C4(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF0B08@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #3.0 }

  *a1 = result;
  a1[1] = 0uLL;
  return result;
}

__n128 sub_217EF0B18@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #3.0 }

  *a1 = result;
  a1[1] = 0uLL;
  return result;
}

__n128 sub_217EF0B28@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 128);
  v3 = *(v1 + 144);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF0B34@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 128);
  v3 = *(a1 + 144);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF0B98(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 144);
  *v3 = *(v1 + 128);
  *(v3 + 16) = v4;
  return sub_217EF0C04;
}

void sub_217EF0C04(double **a1)
{
  v1 = *a1;
  sub_217EC82D8(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF0C4C@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #10.0 }

  *a1 = result;
  a1[1] = 0uLL;
  return result;
}

__n128 sub_217EF0C5C@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #10.0 }

  *a1 = result;
  a1[1] = 0uLL;
  return result;
}

__n128 sub_217EF0C6C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 160);
  v3 = *(v1 + 176);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF0C78@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 160);
  v3 = *(a1 + 176);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF0CDC(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 176);
  *v3 = *(v1 + 160);
  *(v3 + 16) = v4;
  return sub_217EF0D48;
}

void sub_217EF0D48(double **a1)
{
  v1 = *a1;
  sub_217EC84E8(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF0D90@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 192);
  v3 = *(v1 + 208);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void (*sub_217EF0DC8(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 208);
  *v3 = *(v1 + 192);
  *(v3 + 16) = v4;
  return sub_217EF0E34;
}

void sub_217EF0E34(double **a1)
{
  v1 = *a1;
  sub_217EC86F8(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF0E7C@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #2.0 }

  *a1 = result;
  a1[1] = 0uLL;
  return result;
}

__n128 sub_217EF0E8C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 224);
  v3 = *(v1 + 240);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF0E98@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 224);
  v3 = *(a1 + 240);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF0EFC(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 240);
  *v3 = *(v1 + 224);
  *(v3 + 16) = v4;
  return sub_217EF0F68;
}

void sub_217EF0F68(double **a1)
{
  v1 = *a1;
  sub_217EC890C(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

double sub_217EF0FB0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_217F51DC0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

__n128 sub_217EF0FC4@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 256);
  v3 = *(v1 + 272);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF0FD0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 256);
  v3 = *(a1 + 272);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF1034(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 272);
  *v3 = *(v1 + 256);
  *(v3 + 16) = v4;
  return sub_217EF10A0;
}

void sub_217EF10A0(double **a1)
{
  v1 = *a1;
  sub_217EC8B1C(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF10E8@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 288);
  v3 = *(v1 + 304);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF10F4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 288);
  v3 = *(a1 + 304);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF1158(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 304);
  *v3 = *(v1 + 288);
  *(v3 + 16) = v4;
  return sub_217EF11C4;
}

void sub_217EF11C4(double **a1)
{
  v1 = *a1;
  sub_217EC8D30(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF120C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 320);
  v3 = *(v1 + 336);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF1218@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 320);
  v3 = *(a1 + 336);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF127C(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 336);
  *v3 = *(v1 + 320);
  *(v3 + 16) = v4;
  return sub_217EF12E8;
}

void sub_217EF12E8(double **a1)
{
  v1 = *a1;
  sub_217EC8F40(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF1330@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 352);
  v3 = *(v1 + 368);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF133C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 352);
  v3 = *(a1 + 368);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF13A0(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 368);
  *v3 = *(v1 + 352);
  *(v3 + 16) = v4;
  return sub_217EF140C;
}

void sub_217EF140C(double **a1)
{
  v1 = *a1;
  sub_217EC9150(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF1454@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #10.0 }

  *a1 = result;
  a1[1] = result;
  return result;
}

__n128 sub_217EF1460@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #10.0 }

  *a1 = result;
  a1[1] = result;
  return result;
}

__n128 sub_217EF146C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 384);
  v3 = *(v1 + 400);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF1478@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 384);
  v3 = *(a1 + 400);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF14DC(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 400);
  *v3 = *(v1 + 384);
  *(v3 + 16) = v4;
  return sub_217EF1548;
}

void sub_217EF1548(double **a1)
{
  v1 = *a1;
  sub_217EC935C(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF1590@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #3.0 }

  *a1 = result;
  a1[1] = result;
  return result;
}

__n128 sub_217EF159C@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #3.0 }

  *a1 = result;
  a1[1] = result;
  return result;
}

__n128 sub_217EF15A8@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 416);
  v3 = *(v1 + 432);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF15B4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 416);
  v3 = *(a1 + 432);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF1618(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 432);
  *v3 = *(v1 + 416);
  *(v3 + 16) = v4;
  return sub_217EF1684;
}

void sub_217EF1684(double **a1)
{
  v1 = *a1;
  sub_217EC9564(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF16CC@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 448);
  v3 = *(v1 + 464);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF16D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 448);
  v3 = *(a1 + 464);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF173C(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 464);
  *v3 = *(v1 + 448);
  *(v3 + 16) = v4;
  return sub_217EF17A8;
}

void sub_217EF17A8(double **a1)
{
  v1 = *a1;
  sub_217EC976C(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF17F0@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 480);
  v3 = *(v1 + 496);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF17FC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 480);
  v3 = *(a1 + 496);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF1860(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 496);
  *v3 = *(v1 + 480);
  *(v3 + 16) = v4;
  return sub_217EF18CC;
}

void sub_217EF18CC(double **a1)
{
  v1 = *a1;
  sub_217EC9974(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

double sub_217EF1914@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_217EF1920@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 sub_217EF192C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 512);
  v3 = *(v1 + 528);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF1938@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 512);
  v3 = *(a1 + 528);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF199C(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 528);
  *v3 = *(v1 + 512);
  *(v3 + 16) = v4;
  return sub_217EF1A08;
}

void sub_217EF1A08(double **a1)
{
  v1 = *a1;
  sub_217EC9B88(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

uint64_t sub_217EF1A50(char a1)
{
  result = 0x52656C6369747261;
  switch(a1)
  {
    case 1:
      result = 0x53656C6369747261;
      break;
    case 2:
      result = 0x56656C6369747261;
      break;
    case 3:
      result = 0x656B696C736964;
      break;
    case 4:
      result = 0x7765695664656566;
      break;
    case 5:
      result = 0x776F6C6C6F66;
      break;
    case 6:
      result = 0x65726F6E6769;
      break;
    case 7:
      result = 1701538156;
      break;
    case 8:
      result = 1702131053;
      break;
    case 9:
      result = 0x6465766173;
      break;
    case 10:
      result = 0x6572616873;
      break;
    case 11:
      result = 0x61547374726F7073;
      break;
    case 12:
      result = 0x6E69466B63617274;
      break;
    case 13:
      result = 0x73694C6B63617274;
      break;
    case 14:
      result = 0x7369566B63617274;
      break;
    case 15:
      result = 0x776F6C6C6F666E75;
      break;
    case 16:
      result = 0x6574756D6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217EF1C38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217F031BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EF1C78(uint64_t a1)
{
  v2 = sub_217EF8640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EF1CB4(uint64_t a1)
{
  v2 = sub_217EF8640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EF1CF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D18, &qword_217F52770);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v28 - v8;
  v10 = v3[2];
  v58 = v3[3];
  v59 = v10;
  v11 = v3[4];
  v56 = v3[5];
  v57 = v11;
  v12 = v3[6];
  v54 = v3[7];
  v55 = v12;
  v13 = v3[8];
  v52 = v3[9];
  v53 = v13;
  v14 = v3[10];
  v50 = v3[11];
  v51 = v14;
  v15 = v3[12];
  v48 = v3[13];
  v49 = v15;
  v16 = v3[14];
  v46 = v3[15];
  v47 = v16;
  v17 = v3[16];
  v44 = v3[17];
  v45 = v17;
  v18 = v3[18];
  v42 = v3[19];
  v43 = v18;
  v19 = v3[20];
  v40 = v3[21];
  v41 = v19;
  v20 = v3[22];
  v38 = v3[23];
  v39 = v20;
  v21 = v3[24];
  v36 = v3[25];
  v37 = v21;
  v22 = v3[26];
  v34 = v3[27];
  v35 = v22;
  v23 = v3[28];
  v32 = v3[29];
  v33 = v23;
  v24 = v3[30];
  v30 = v3[31];
  v31 = v24;
  v25 = v3[32];
  v28 = v3[33];
  v29 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF8640();
  sub_217F4B294();
  v26 = v3[1];
  v60 = *v3;
  v61 = v26;
  v62 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D28, &qword_217F52778);
  sub_217EF8694(&qword_27CBF6D30, &qword_27CBF6D28, &qword_217F52778, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
  sub_217F4B0C4();
  if (!v2)
  {
    v60 = v59;
    v61 = v58;
    v62 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D38, &qword_217F52780);
    sub_217EF8694(&qword_27CBF6D40, &qword_27CBF6D38, &qword_217F52780, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v60 = v57;
    v61 = v56;
    v62 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D48, &qword_217F52788);
    sub_217EF8694(&qword_27CBF6D50, &qword_27CBF6D48, &qword_217F52788, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v60 = v55;
    v61 = v54;
    v62 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D58, &qword_217F52790);
    sub_217EF8694(&qword_27CBF6D60, &qword_27CBF6D58, &qword_217F52790, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v60 = v53;
    v61 = v52;
    v62 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D68, &qword_217F52798);
    sub_217EF8694(&qword_27CBF6D70, &qword_27CBF6D68, &qword_217F52798, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v60 = v51;
    v61 = v50;
    v62 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D78, &qword_217F527A0);
    sub_217EF8694(&qword_27CBF6D80, &qword_27CBF6D78, &qword_217F527A0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v60 = v49;
    v61 = v48;
    v62 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D88, &qword_217F527A8);
    sub_217EF8694(&qword_27CBF6D90, &qword_27CBF6D88, &qword_217F527A8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v60 = v47;
    v61 = v46;
    v62 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D98, &qword_217F527B0);
    sub_217EF8694(&qword_27CBF6DA0, &qword_27CBF6D98, &qword_217F527B0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v60 = v45;
    v61 = v44;
    v62 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DA8, &qword_217F527B8);
    sub_217EF8694(&qword_27CBF6DB0, &qword_27CBF6DA8, &qword_217F527B8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v60 = v43;
    v61 = v42;
    v62 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DB8, &qword_217F527C0);
    sub_217EF8694(&qword_27CBF6DC0, &qword_27CBF6DB8, &qword_217F527C0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v60 = v41;
    v61 = v40;
    v62 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DC8, &qword_217F527C8);
    sub_217EF8694(&qword_27CBF6DD0, &qword_27CBF6DC8, &qword_217F527C8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v60 = v39;
    v61 = v38;
    v62 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DD8, &qword_217F527D0);
    sub_217EF8694(&qword_27CBF6DE0, &qword_27CBF6DD8, &qword_217F527D0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v60 = v37;
    v61 = v36;
    v62 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DE8, &qword_217F527D8);
    sub_217EF8694(&qword_27CBF6DF0, &qword_27CBF6DE8, &qword_217F527D8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v60 = v35;
    v61 = v34;
    v62 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DF8, &qword_217F527E0);
    sub_217EF8694(&qword_27CBF6E00, &qword_27CBF6DF8, &qword_217F527E0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v60 = v33;
    v61 = v32;
    v62 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6E08, &qword_217F527E8);
    sub_217EF8694(&qword_27CBF6E10, &qword_27CBF6E08, &qword_217F527E8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v60 = v31;
    v61 = v30;
    v62 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6E18, &qword_217F527F0);
    sub_217EF8694(&qword_27CBF6E20, &qword_27CBF6E18, &qword_217F527F0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
    v60 = v29;
    v61 = v28;
    v62 = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6E28, &qword_217F527F8);
    sub_217EF8694(&qword_27CBF6E30, &qword_27CBF6E28, &qword_217F527F8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4B0C4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_217EF2824@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6E38, &qword_217F52800);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v28 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF8640();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D28, &qword_217F52778);
    v62 = 0;
    sub_217EF8694(&qword_27CBF6E40, &qword_27CBF6D28, &qword_217F52778, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v58 = v60;
    v59 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D38, &qword_217F52780);
    v62 = 1;
    sub_217EF8694(&qword_27CBF6E48, &qword_27CBF6D38, &qword_217F52780, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v56 = v60;
    v57 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D48, &qword_217F52788);
    v62 = 2;
    sub_217EF8694(&qword_27CBF6E50, &qword_27CBF6D48, &qword_217F52788, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v54 = v60;
    v55 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D58, &qword_217F52790);
    v62 = 3;
    sub_217EF8694(&qword_27CBF6E58, &qword_27CBF6D58, &qword_217F52790, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v52 = v60;
    v53 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D68, &qword_217F52798);
    v62 = 4;
    sub_217EF8694(&qword_27CBF6E60, &qword_27CBF6D68, &qword_217F52798, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v51 = v61;
    v50 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D78, &qword_217F527A0);
    v62 = 5;
    sub_217EF8694(&qword_27CBF6E68, &qword_27CBF6D78, &qword_217F527A0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v49 = v61;
    v48 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D88, &qword_217F527A8);
    v62 = 6;
    sub_217EF8694(&qword_27CBF6E70, &qword_27CBF6D88, &qword_217F527A8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v47 = v61;
    v46 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D98, &qword_217F527B0);
    v62 = 7;
    sub_217EF8694(&qword_27CBF6E78, &qword_27CBF6D98, &qword_217F527B0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v45 = v61;
    v44 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DA8, &qword_217F527B8);
    v62 = 8;
    sub_217EF8694(&qword_27CBF6E80, &qword_27CBF6DA8, &qword_217F527B8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v43 = v61;
    v42 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DB8, &qword_217F527C0);
    v62 = 9;
    sub_217EF8694(&qword_27CBF6E88, &qword_27CBF6DB8, &qword_217F527C0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v41 = v61;
    v40 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DC8, &qword_217F527C8);
    v62 = 10;
    sub_217EF8694(&qword_27CBF6E90, &qword_27CBF6DC8, &qword_217F527C8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v39 = v61;
    v38 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DD8, &qword_217F527D0);
    v62 = 11;
    sub_217EF8694(&qword_27CBF6E98, &qword_27CBF6DD8, &qword_217F527D0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v37 = v61;
    v36 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DE8, &qword_217F527D8);
    v62 = 12;
    sub_217EF8694(&qword_27CBF6EA0, &qword_27CBF6DE8, &qword_217F527D8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v35 = v61;
    v34 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DF8, &qword_217F527E0);
    v62 = 13;
    sub_217EF8694(&qword_27CBF6EA8, &qword_27CBF6DF8, &qword_217F527E0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v33 = v61;
    v32 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6E08, &qword_217F527E8);
    v62 = 14;
    sub_217EF8694(&qword_27CBF6EB0, &qword_27CBF6E08, &qword_217F527E8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v31 = v61;
    v30 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6E18, &qword_217F527F0);
    v62 = 15;
    sub_217EF8694(&qword_27CBF6EB8, &qword_27CBF6E18, &qword_217F527F0, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    v29 = v61;
    v28 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6E28, &qword_217F527F8);
    v62 = 16;
    sub_217EF8694(&qword_27CBF6EC0, &qword_27CBF6E28, &qword_217F527F8, &protocol conformance descriptor for ConditionalConfigurableValue<A, B>);
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    v11 = v59;
    *a2 = v58;
    a2[1] = v11;
    v12 = v57;
    a2[2] = v56;
    a2[3] = v12;
    v13 = v55;
    a2[4] = v54;
    a2[5] = v13;
    v14 = v53;
    a2[6] = v52;
    a2[7] = v14;
    v15 = v51;
    a2[8] = v50;
    a2[9] = v15;
    v16 = v49;
    a2[10] = v48;
    a2[11] = v16;
    v17 = v47;
    a2[12] = v46;
    a2[13] = v17;
    v18 = v45;
    a2[14] = v44;
    a2[15] = v18;
    v19 = v43;
    a2[16] = v42;
    a2[17] = v19;
    v20 = v41;
    a2[18] = v40;
    a2[19] = v20;
    v21 = v39;
    a2[20] = v38;
    a2[21] = v21;
    v22 = v37;
    a2[22] = v36;
    a2[23] = v22;
    v23 = v35;
    a2[24] = v34;
    a2[25] = v23;
    v24 = v33;
    a2[26] = v32;
    a2[27] = v24;
    v25 = v31;
    a2[28] = v30;
    a2[29] = v25;
    v26 = v29;
    a2[30] = v28;
    a2[31] = v26;
    v27 = v61;
    a2[32] = v60;
    a2[33] = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}