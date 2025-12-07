void sub_237FDCFF4(uint64_t a1)
{
  sub_237FDD0E0(319);
  if (v1 <= 0x3F)
  {
    sub_237FDD144(319, &qword_280C350E0, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    if (v2 <= 0x3F)
    {
      sub_237FDD144(319, &qword_280C350D0, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237FDD0E0(uint64_t a1)
{
  if (!qword_280C35100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE4FF0, &unk_238033980);
    v1 = sub_2380321B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280C35100);
    }
  }
}

void sub_237FDD144(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_238032024();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_237FDD1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE53A8;
  if (!qword_27DEE53A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE53A8);
  }

  return result;
}

unint64_t sub_237FDD204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C34FC0;
  if (!qword_280C34FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34FC0);
  }

  return result;
}

unint64_t sub_237FDD25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C34FC8;
  if (!qword_280C34FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34FC8);
  }

  return result;
}

uint64_t sub_237FDD2B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2380324E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_2380324E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000238036DA0 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000238036E70 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000238036E90 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_2380324E4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

__n128 DeviceActivityData.Device.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 48) + 1;
  if (v3 >= 6)
  {
    LOBYTE(v3) = 0;
  }

  *a2 = *a1;
  *(a2 + 8) = v2;
  result = *(a1 + 16);
  v5 = *(a1 + 32);
  *(a2 + 16) = result;
  *(a2 + 32) = v5;
  *(a2 + 48) = v3;
  return result;
}

uint64_t static DeviceActivityData.Device.Model.current.getter@<X0>(_BYTE *a1@<X8>)
{
  result = MGCopyAnswer();
  if (result)
  {
    result = swift_dynamicCast();
    if (result && (v4 - 1) <= 8)
    {
      v3 = byte_2380350BE[v4 - 1];
    }

    else
    {
      v3 = 0;
    }

    *a1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DeviceActivityData.Device.Model.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if ((result + 1) < 6)
  {
    v2 = result + 1;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_237FDD570()
{
  v1 = *v0;
  sub_2380325B4();
  MEMORY[0x2383E5730](v1 - 1);
  return sub_2380325F4();
}

uint64_t sub_237FDD5E8(uint64_t a1)
{
  v2 = *v1;
  sub_2380325B4();
  MEMORY[0x2383E5730](v2 - 1);
  return sub_2380325F4();
}

uint64_t DeviceActivityData.Device.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeviceActivityData.Device.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeviceActivityData.Device.coreDuetIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DeviceActivityData.Device.coreDuetIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DeviceActivityData.Device.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DeviceActivityData.Device.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t static DeviceActivityData.Device.currentDeviceName.getter()
{
  result = MGCopyAnswer();
  if (result)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DeviceActivityData.Device.init(identifier:coreDuetIdentifier:name:model:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a7;
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = v8;
  return result;
}

uint64_t DeviceActivityData.Device.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_238031ED4();
  if (!v2)
  {
    sub_2380325D4();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2380325D4();
    return MEMORY[0x2383E5730](v4 - 1);
  }

  sub_2380325D4();
  sub_238031ED4();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2380325D4();
  sub_238031ED4();
  return MEMORY[0x2383E5730](v4 - 1);
}

uint64_t DeviceActivityData.Device.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_2380325B4();
  sub_238031ED4();
  if (!v1)
  {
    sub_2380325D4();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2380325D4();
    goto LABEL_6;
  }

  sub_2380325D4();
  sub_238031ED4();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2380325D4();
  sub_238031ED4();
LABEL_6:
  MEMORY[0x2383E5730](v3 - 1);
  return sub_2380325F4();
}

uint64_t sub_237FDDA10()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);
  v5[9] = *v0;
  v5[10] = v1;
  v3 = *(v0 + 32);
  v6 = *(v0 + 16);
  v7 = v3;
  v8 = v2;
  sub_2380325B4();
  DeviceActivityData.Device.hash(into:)(v5);
  return sub_2380325F4();
}

uint64_t sub_237FDDA74(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 48);
  v6[9] = *v1;
  v6[10] = v2;
  v4 = *(v1 + 32);
  v7 = *(v1 + 16);
  v8 = v4;
  v9 = v3;
  sub_2380325B4();
  DeviceActivityData.Device.hash(into:)(v6);
  return sub_2380325F4();
}

uint64_t _DeviceActivityData.Device.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _DeviceActivityData.Device.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _DeviceActivityData.Device.coreDuetIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t _DeviceActivityData.Device.coreDuetIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t _DeviceActivityData.Device.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t _DeviceActivityData.Device.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t _DeviceActivityData.Device.init(identifier:coreDuetIdentifier:name:model:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

unint64_t sub_237FDDCB0()
{
  v1 = 0x696669746E656469;
  v2 = 1701667182;
  if (*v0 != 2)
  {
    v2 = 0x6C65646F6DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_237FDDD28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_237FDEBD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_237FDDD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237FDE738(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_237FDDD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237FDE738(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t _DeviceActivityData.Device.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE53B0, &qword_238034D28);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = v1[2];
  v14[3] = v1[3];
  v14[4] = v7;
  v8 = v1[4];
  v14[1] = v1[5];
  v14[2] = v8;
  v14[0] = v1[6];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FDE738(v9, v10, v11);
  sub_238032614();
  v18 = 0;
  v12 = v14[5];
  sub_238032464();
  if (v12)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = 1;
  sub_238032444();
  v16 = 2;
  sub_238032444();
  v15 = 3;
  sub_238032494();
  return (*(v4 + 8))(v6, v3);
}

uint64_t _DeviceActivityData.Device.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[6];
  sub_238031ED4();
  if (!v2)
  {
    sub_2380325D4();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2380325D4();
    return MEMORY[0x2383E5730](v4);
  }

  sub_2380325D4();
  sub_238031ED4();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2380325D4();
  sub_238031ED4();
  return MEMORY[0x2383E5730](v4);
}

uint64_t _DeviceActivityData.Device.hashValue.getter()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[6];
  sub_2380325B4();
  sub_238031ED4();
  if (!v1)
  {
    sub_2380325D4();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2380325D4();
    goto LABEL_6;
  }

  sub_2380325D4();
  sub_238031ED4();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2380325D4();
  sub_238031ED4();
LABEL_6:
  MEMORY[0x2383E5730](v3);
  return sub_2380325F4();
}

uint64_t _DeviceActivityData.Device.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE53B8, &qword_238034D30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FDE738(v9, v10, v11);
  sub_238032604();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v30 = 0;
  v12 = sub_2380323F4();
  v26 = v13;
  v29 = 1;
  v24 = sub_2380323D4();
  v25 = v14;
  v28 = 2;
  v15 = sub_2380323D4();
  v17 = v16;
  v23 = v15;
  v27 = 3;
  v19 = sub_238032424();
  (*(v6 + 8))(v8, v5);
  v21 = v25;
  v20 = v26;
  *a2 = v12;
  a2[1] = v20;
  v22 = v23;
  a2[2] = v24;
  a2[3] = v21;
  a2[4] = v22;
  a2[5] = v17;
  a2[6] = v19;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_237FDE454(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[6];
  sub_2380325B4();
  sub_238031ED4();
  if (!v2)
  {
    sub_2380325D4();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2380325D4();
    goto LABEL_6;
  }

  sub_2380325D4();
  sub_238031ED4();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2380325D4();
  sub_238031ED4();
LABEL_6:
  MEMORY[0x2383E5730](v4);
  return sub_2380325F4();
}

BOOL _s14DeviceActivity01_aB4DataV0A0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2380324E4() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_2380324E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (v9 && (v3 == v10 && v5 == v9 || (sub_2380324E4() & 1) != 0))
    {
      return v6 == v11;
    }
  }

  else if (!v9)
  {
    return v6 == v11;
  }

  return 0;
}

BOOL _s14DeviceActivity0aB4DataV0A0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_2380324E4() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_2380324E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (v9 && (v3 == v10 && v5 == v9 || (sub_2380324E4() & 1) != 0))
    {
      return v6 == v11;
    }
  }

  else if (!v9)
  {
    return v6 == v11;
  }

  return 0;
}

unint64_t sub_237FDE738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C35308;
  if (!qword_280C35308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C35308);
  }

  return result;
}

unint64_t sub_237FDE790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE53C0;
  if (!qword_27DEE53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE53C0);
  }

  return result;
}

unint64_t sub_237FDE7E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE53C8;
  if (!qword_27DEE53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE53C8);
  }

  return result;
}

unint64_t sub_237FDE840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE53D0;
  if (!qword_27DEE53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE53D0);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_237FDE8B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_237FDE8F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_237FDE984(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_237FDE9CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s6DeviceV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_237FDEACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE53D8;
  if (!qword_27DEE53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE53D8);
  }

  return result;
}

unint64_t sub_237FDEB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C352F8;
  if (!qword_280C352F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C352F8);
  }

  return result;
}

unint64_t sub_237FDEB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C35300;
  if (!qword_280C35300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C35300);
  }

  return result;
}

uint64_t sub_237FDEBD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2380324E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000238036EB0 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2380324E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2380324E4();

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

char *sub_237FDED4C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 40);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v5;
    v16[0] = *(v5 - 1);
    v16[1] = v8;

    v17(&v14, v16);
    if (v3)
    {
      break;
    }

    v9 = v15;
    if (v15)
    {
      v10 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_237FB5A94(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_237FB5A94((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      v7 = &v6[16 * v12];
      *(v7 + 4) = v10;
      *(v7 + 5) = v9;
    }

    v5 += 2;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t sub_237FDEE8C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t static _DeviceActivityData.teamIdentifier.getter()
{
  swift_beginAccess();
  v0 = *aApple;

  return v0;
}

uint64_t static _DeviceActivityData.teamIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aApple = a1;
  qword_27DEE53E8 = a2;
}

uint64_t sub_237FDF044()
{
  v0 = sub_238031CE4();
  __swift_allocate_value_buffer(v0, qword_27DEE9550);
  __swift_project_value_buffer(v0, qword_27DEE9550);
  return sub_238031CD4();
}

char *sub_237FDF090(uint64_t a1, char *a2)
{
  v44 = a2;
  v3 = sub_238031B64();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238031A64();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v37 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v34 - v8;
  v10 = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v34 - v14;
  v16 = sub_238031654();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_238031B74();
  v38 = *(v20 - 8);
  v39 = v20;
  MEMORY[0x28223BE20](v20);
  v35 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238031B44();
  sub_237FA4D64(a1, v15, type metadata accessor for DeviceActivityFilter.SegmentInterval);
  v22 = *(v17 + 32);
  v34[0] = v16;
  v22(v19, v15, v16);
  v23 = v9;
  sub_238031634();
  v24 = v37;
  sub_238031604();
  sub_237FA4D64(a1, v13, type metadata accessor for DeviceActivityFilter.SegmentInterval);
  v25 = qword_278A454B0[swift_getEnumCaseMultiPayload()];
  v26 = *(v17 + 8);
  v34[1] = v17 + 8;
  v26(v13, v16);
  v27 = v40;
  v28 = v41;
  v29 = v36;
  (*(v40 + 104))(v36, *v25, v41);
  v30 = v35;
  v46 = v35;
  v47 = v29;
  v48 = v23;
  v49 = v24;
  v44 = sub_237FDED4C(sub_237FDFEA4, v45, v44);
  v26(v19, v34[0]);
  (*(v27 + 8))(v29, v28);
  v31 = v43;
  v32 = *(v42 + 8);
  v32(v24, v43);
  v32(v23, v31);
  (*(v38 + 8))(v30, v39);
  return v44;
}

uint64_t sub_237FDF4CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v33 = a5;
  v34 = a4;
  v35 = a3;
  v36 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = sub_238031A64();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v29 - v20;
  v22 = *a1;
  v23 = a1[1];
  v37 = 0;
  v32 = v22;
  result = sub_238010DB8(v22, v23, &v37);
  if ((result & 1) == 0)
  {
    *a6 = 0;
    a6[1] = 0;
    return result;
  }

  v30 = a6;
  v31 = v6;
  sub_2380319D4();
  sub_238031B24();
  sub_237FA90E4(v14, v12, &qword_27DEE51E0, &qword_2380365F0);
  if ((*(v16 + 48))(v12, 1, v15) == 1)
  {
    sub_237FA5750(v14, &qword_27DEE51E0, &qword_2380365F0);
    (*(v16 + 8))(v21, v15);
    result = sub_237FA5750(v12, &qword_27DEE51E0, &qword_2380365F0);
LABEL_7:
    v26 = v30;
LABEL_8:
    *v26 = 0;
    v26[1] = 0;
    return result;
  }

  (*(v16 + 32))(v19, v12, v15);
  sub_237FDFEC4();
  if (sub_238031E44())
  {
    v25 = *(v16 + 8);
    v25(v19, v15);
    sub_237FA5750(v14, &qword_27DEE51E0, &qword_2380365F0);
    result = (v25)(v21, v15);
    goto LABEL_7;
  }

  v27 = sub_238031E44();
  v28 = *(v16 + 8);
  v28(v19, v15);
  sub_237FA5750(v14, &qword_27DEE51E0, &qword_2380365F0);
  result = (v28)(v21, v15);
  v26 = v30;
  if (v27)
  {
    goto LABEL_8;
  }

  *v30 = v32;
  v26[1] = v23;
}

uint64_t sub_237FDF81C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_237FDF890(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_237FDF8EC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_237FDF8EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_237FDF9B8(v11, 0, 0, 1, a1, a2);
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
    sub_237FD4FB0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_237FDF9B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_237FDFAC4(a5, a6);
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
    result = sub_2380322F4();
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

void *sub_237FDFAC4(uint64_t a1, unint64_t a2)
{
  v3 = sub_237FDFB10(a1, a2);
  sub_237FDFC40(&unk_284AE5A90);
  return v3;
}

void *sub_237FDFB10(uint64_t a1, unint64_t a2)
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

  v6 = sub_237FDFD2C(v5, 0);
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

  result = sub_2380322F4();
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
        v10 = sub_238031EF4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_237FDFD2C(v10, 0);
        result = sub_238032294();
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

uint64_t sub_237FDFC40(uint64_t result)
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

  result = sub_237FDFDA0(result, v11, 1, v3);
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

void *sub_237FDFD2C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE53F8, &qword_2380350D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_237FDFDA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE53F8, &qword_2380350D0);
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

_BYTE **sub_237FDFE94(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_237FDFEC4()
{
  result = qword_280C35028;
  if (!qword_280C35028)
  {
    sub_238031A64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C35028);
  }

  return result;
}

uint64_t sub_237FDFF94(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2380324E4() & 1;
  }
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

uint64_t DeviceActivityData.User.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DeviceActivityData.User(0);
  v5 = *(v4 + 24);
  v6 = sub_2380317D4();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  *a2 = *a1;
  v7 = *(a1 + 24);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v7;
  v8 = type metadata accessor for _DeviceActivityData.User(0);
  v9 = *(v8 + 24);

  sub_237FC7B94(a1 + v9, a2 + v5);
  v10 = *(a1 + *(v8 + 28));
  result = sub_237FE1D00(a1);
  *(a2 + *(v4 + 28)) = v10 == 1;
  return result;
}

uint64_t DeviceActivityData.User.FamilyRole.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void *sub_237FE01B8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t DeviceActivityData.User.role.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DeviceActivityData.User(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t DeviceActivityData.User.role.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DeviceActivityData.User(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t DeviceActivityData.User.init(altDSID:appleID:nameComponents:role:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X8>)
{
  v19 = *a6;
  v11 = type metadata accessor for DeviceActivityData.User(0);
  v12 = *(v11 + 24);
  v13 = sub_2380317D4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(&a7[v12], 1, 1, v13);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  sub_237FA5750(&a7[v12], &qword_27DEE5108, &qword_238033EE0);
  (*(v14 + 32))(&a7[v12], a5, v13);
  result = (v15)(&a7[v12], 0, 1, v13);
  a7[*(v11 + 28)] = v19;
  return result;
}

uint64_t DeviceActivityData.User.hash(into:)(uint64_t a1)
{
  v2 = sub_2380317D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  if (*(v1 + 8))
  {
    sub_2380325D4();
    sub_238031ED4();
    if (*(v1 + 24))
    {
LABEL_3:
      sub_2380325D4();
      sub_238031ED4();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2380325D4();
    if (*(v1 + 24))
    {
      goto LABEL_3;
    }
  }

  sub_2380325D4();
LABEL_6:
  v9 = type metadata accessor for DeviceActivityData.User(0);
  sub_237FE1D5C(v1 + *(v9 + 24), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_2380325D4();
    sub_237FE1E90(&qword_27DEE5110, MEMORY[0x277CC8E50], MEMORY[0x277CC8E60]);
    sub_238031E34();
    (*(v3 + 8))(v5, v2);
  }

  return MEMORY[0x2383E5730](*(v1 + *(v9 + 28)));
}

uint64_t _DeviceActivityData.User.altDSID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _DeviceActivityData.User.altDSID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _DeviceActivityData.User.appleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t _DeviceActivityData.User.appleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_237FE0860@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 24);

  return sub_237FE1D5C(v4, a2);
}

uint64_t sub_237FE08C4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 24);

  return sub_237FE1DCC(a1, v4);
}

uint64_t _DeviceActivityData.User.role.setter(uint64_t a1)
{
  result = type metadata accessor for _DeviceActivityData.User(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t _DeviceActivityData.User.init(altDSID:appleID:nameComponents:role:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for _DeviceActivityData.User(0);
  v15 = *(v14 + 24);
  v16 = sub_2380317D4();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  result = sub_237FE1DCC(a5, &a7[v15]);
  *&a7[*(v14 + 28)] = a6;
  return result;
}

uint64_t sub_237FE0AB4()
{
  v1 = 0x44495344746C61;
  v2 = 0x706D6F43656D616ELL;
  if (*v0 != 2)
  {
    v2 = 1701605234;
  }

  if (*v0)
  {
    v1 = 0x4449656C707061;
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

uint64_t sub_237FE0B34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_237FE23E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_237FE0B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237FE1E3C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_237FE0B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237FE1E3C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t _DeviceActivityData.User.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5400, &qword_2380350D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FE1E3C(v7, v8, v9);
  sub_238032614();
  v11[15] = 0;
  sub_238032444();
  if (!v1)
  {
    v11[14] = 1;
    sub_238032444();
    type metadata accessor for _DeviceActivityData.User(0);
    v11[13] = 2;
    sub_2380317D4();
    sub_237FE1E90(&qword_280C35060, MEMORY[0x277CC8E50], MEMORY[0x277CC8E58]);
    sub_238032454();
    v11[12] = 3;
    sub_238032494();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t _DeviceActivityData.User.hash(into:)(uint64_t a1)
{
  v2 = sub_2380317D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  if (*(v1 + 8))
  {
    sub_2380325D4();
    sub_238031ED4();
    if (*(v1 + 24))
    {
LABEL_3:
      sub_2380325D4();
      sub_238031ED4();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2380325D4();
    if (*(v1 + 24))
    {
      goto LABEL_3;
    }
  }

  sub_2380325D4();
LABEL_6:
  v9 = type metadata accessor for _DeviceActivityData.User(0);
  sub_237FE1D5C(v1 + *(v9 + 24), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_2380325D4();
    sub_237FE1E90(&qword_27DEE5110, MEMORY[0x277CC8E50], MEMORY[0x277CC8E60]);
    sub_238031E34();
    (*(v3 + 8))(v5, v2);
  }

  return MEMORY[0x2383E5730](*(v1 + *(v9 + 28)));
}

uint64_t sub_237FE10A0(uint64_t (*a1)(void *))
{
  sub_2380325B4();
  a1(v3);
  return sub_2380325F4();
}

uint64_t _DeviceActivityData.User.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5408, &qword_2380350E0);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for _DeviceActivityData.User(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 24);
  v14 = sub_2380317D4();
  v15 = *(*(v14 - 8) + 56);
  v34 = v13;
  v15(v12 + v13, 1, 1, v14);
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FE1E3C(v16, v17, v18);
  v19 = v35;
  sub_238032604();
  if (v19)
  {
    v35 = v19;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    return sub_237FA5750(v12 + v34, &qword_27DEE5108, &qword_238033EE0);
  }

  v30 = v9;
  v20 = v32;
  v39 = 0;
  *v12 = sub_2380323D4();
  v12[1] = v22;
  v38 = 1;
  v23 = sub_2380323D4();
  v35 = 0;
  v12[2] = v23;
  v12[3] = v24;
  v37 = 2;
  sub_237FE1E90(&qword_280C35358, MEMORY[0x277CC8E50], MEMORY[0x277CC8E70]);
  v25 = v35;
  sub_2380323E4();
  v35 = v25;
  if (v25)
  {
    (*(v20 + 8))(v8, v33);
    goto LABEL_4;
  }

  sub_237FE1DCC(v5, v12 + v34);
  v36 = 3;
  v26 = v33;
  v27 = v35;
  v28 = sub_238032424();
  (*(v20 + 8))(v8, v26);
  v35 = v27;
  if (v27)
  {
    goto LABEL_4;
  }

  v29 = v31;
  *(v12 + *(v30 + 28)) = v28;
  sub_237FE1ED8(v12, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_237FE1D00(v12);
}

uint64_t sub_237FE14F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_2380325B4();
  a3(v5);
  return sub_2380325F4();
}

uint64_t sub_237FE155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_2380325B4();
  a4(v6);
  return sub_2380325F4();
}

uint64_t _s14DeviceActivity0aB4DataV4UserV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_2380317D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5440, &qword_238035408);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_2380324E4() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v15)
  {
    goto LABEL_21;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (sub_2380324E4() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v17)
  {
    goto LABEL_21;
  }

  v26 = type metadata accessor for DeviceActivityData.User(0);
  v18 = *(v26 + 24);
  v19 = *(v11 + 48);
  sub_237FE1D5C(a1 + v18, v13);
  sub_237FE1D5C(a2 + v18, &v13[v19]);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v19], 1, v4) == 1)
    {
      sub_237FA5750(v13, &qword_27DEE5108, &qword_238033EE0);
LABEL_24:
      v21 = *(a1 + *(v26 + 28)) ^ *(a2 + *(v26 + 28)) ^ 1;
      return v21 & 1;
    }

    goto LABEL_20;
  }

  sub_237FE1D5C(v13, v10);
  if (v20(&v13[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_20:
    sub_237FA5750(v13, &qword_27DEE5440, &qword_238035408);
    goto LABEL_21;
  }

  (*(v5 + 32))(v7, &v13[v19], v4);
  sub_237FE1E90(&qword_27DEE5448, MEMORY[0x277CC8E50], MEMORY[0x277CC8E68]);
  v23 = sub_238031E64();
  v24 = *(v5 + 8);
  v24(v7, v4);
  v24(v10, v4);
  sub_237FA5750(v13, &qword_27DEE5108, &qword_238033EE0);
  if (v23)
  {
    goto LABEL_24;
  }

LABEL_21:
  v21 = 0;
  return v21 & 1;
}

BOOL _s14DeviceActivity01_aB4DataV4UserV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_2380317D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5440, &qword_238035408);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_2380324E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (sub_2380324E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v25 = type metadata accessor for _DeviceActivityData.User(0);
  v18 = *(v25 + 24);
  v19 = *(v11 + 48);
  sub_237FE1D5C(a1 + v18, v13);
  sub_237FE1D5C(a2 + v18, &v13[v19]);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v19], 1, v4) == 1)
    {
      sub_237FA5750(v13, &qword_27DEE5108, &qword_238033EE0);
      return *(a1 + *(v25 + 28)) == *(a2 + *(v25 + 28));
    }

    goto LABEL_20;
  }

  sub_237FE1D5C(v13, v10);
  if (v20(&v13[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_20:
    sub_237FA5750(v13, &qword_27DEE5440, &qword_238035408);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v19], v4);
  sub_237FE1E90(&qword_27DEE5448, MEMORY[0x277CC8E50], MEMORY[0x277CC8E68]);
  v22 = sub_238031E64();
  v23 = *(v5 + 8);
  v23(v7, v4);
  v23(v10, v4);
  sub_237FA5750(v13, &qword_27DEE5108, &qword_238033EE0);
  if (v22)
  {
    return *(a1 + *(v25 + 28)) == *(a2 + *(v25 + 28));
  }

  return 0;
}

uint64_t sub_237FE1D00(uint64_t a1)
{
  v2 = type metadata accessor for _DeviceActivityData.User(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237FE1D5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237FE1DCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_237FE1E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C352D8;
  if (!qword_280C352D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C352D8);
  }

  return result;
}

uint64_t sub_237FE1E90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_237FE1ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DeviceActivityData.User(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_237FE1F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5410;
  if (!qword_27DEE5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5410);
  }

  return result;
}

void sub_237FE2058(uint64_t a1)
{
  if (!qword_280C356C8)
  {
    sub_2380317D4();
    v1 = sub_2380321B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280C356C8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_237FE2244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_237FD6BDC();
  if (v4 <= 0x3F)
  {
    sub_237FE2058(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_237FE22E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5438;
  if (!qword_27DEE5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5438);
  }

  return result;
}

unint64_t sub_237FE2338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C352C8;
  if (!qword_280C352C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C352C8);
  }

  return result;
}

unint64_t sub_237FE2390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C352D0;
  if (!qword_280C352D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C352D0);
  }

  return result;
}

uint64_t sub_237FE23E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44495344746C61 && a2 == 0xE700000000000000;
  if (v4 || (sub_2380324E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C707061 && a2 == 0xE700000000000000 || (sub_2380324E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706D6F43656D616ELL && a2 == 0xEE0073746E656E6FLL || (sub_2380324E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2380324E4();

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

uint64_t _DeviceActivityData.WebDomainActivity.init(domain:token:totalActivityDuration:isTrusted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>, double a6@<D0>)
{
  v12 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v13 = v12[5];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  *a5 = a1;
  *(a5 + 1) = a2;
  result = sub_237FAD474(a3, &a5[v13]);
  *&a5[v12[6]] = a6;
  a5[v12[7]] = a4;
  return result;
}

double _DeviceActivityData.WebDomainActivity.update(using:)(uint64_t a1)
{
  v3 = *(type metadata accessor for _DeviceActivityData.WebDomainActivity(0) + 24);
  result = *(a1 + v3) + *(v1 + v3);
  *(v1 + v3) = result;
  return result;
}

uint64_t DeviceActivityData.WebDomainActivity.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v14 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  sub_237FE28D4(a1 + v14[5], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_237FA5750(v6, &qword_27DEE51B0, &qword_2380343D0);

    sub_238031C94();
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);

    sub_238031C84();
    (*(v8 + 8))(v13, v7);
  }

  v15 = *(a1 + v14[6]);
  v16 = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  *(a2 + *(v16 + 20)) = v15;
  v17 = *(a1 + v14[7]);
  result = sub_237FAD548(a1);
  *(a2 + *(v16 + 24)) = v17;
  return result;
}

uint64_t sub_237FE28D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DeviceActivityData.WebDomainActivity.webDomain.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238031CC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DeviceActivityData.WebDomainActivity.webDomain.setter(uint64_t a1)
{
  v3 = sub_238031CC4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DeviceActivityData.WebDomainActivity.totalActivityDuration.setter(double a1)
{
  result = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t DeviceActivityData.WebDomainActivity.isTrusted.setter(char a1)
{
  result = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t DeviceActivityData.WebDomainActivity.init(_:totalActivityDuration:isTrusted:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_238031CC4();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  result = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  *(a3 + *(result + 20)) = a4;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t static DeviceActivityData.WebDomainActivity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x2383E4DE0]() & 1) != 0 && (v4 = type metadata accessor for DeviceActivityData.WebDomainActivity(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t DeviceActivityData.WebDomainActivity.hash(into:)(uint64_t a1)
{
  sub_238031CC4();
  sub_237FE3B0C(&qword_280C34AD0, MEMORY[0x277CD4B20], MEMORY[0x277CD4B28]);
  sub_238031E34();
  v2 = *(v1 + *(type metadata accessor for DeviceActivityData.WebDomainActivity(0) + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x2383E5750](*&v2);
  return sub_2380325D4();
}

uint64_t DeviceActivityData.WebDomainActivity.hashValue.getter()
{
  sub_2380325B4();
  sub_238031CC4();
  sub_237FE3B0C(&qword_280C34AD0, MEMORY[0x277CD4B20], MEMORY[0x277CD4B28]);
  sub_238031E34();
  v1 = *(v0 + *(type metadata accessor for DeviceActivityData.WebDomainActivity(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x2383E5750](*&v1);
  sub_2380325D4();
  return sub_2380325F4();
}

uint64_t sub_237FE2E10(uint64_t a1, uint64_t a2)
{
  sub_2380325B4();
  sub_238031CC4();
  sub_237FE3B0C(&qword_280C34AD0, MEMORY[0x277CD4B20], MEMORY[0x277CD4B28]);
  sub_238031E34();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x2383E5750](*&v4);
  sub_2380325D4();
  return sub_2380325F4();
}

uint64_t sub_237FE2ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x2383E4DE0]() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t _DeviceActivityData.WebDomainActivity.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _DeviceActivityData.WebDomainActivity.domain.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _DeviceActivityData.WebDomainActivity.token.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for _DeviceActivityData.WebDomainActivity(0) + 20);

  return sub_237FE28D4(v3, a1);
}

uint64_t _DeviceActivityData.WebDomainActivity.token.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for _DeviceActivityData.WebDomainActivity(0) + 20);

  return sub_237FAD474(a1, v3);
}

uint64_t _DeviceActivityData.WebDomainActivity.totalActivityDuration.setter(double a1)
{
  result = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t _DeviceActivityData.WebDomainActivity.isTrusted.setter(char a1)
{
  result = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_237FE31D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_237FE3E80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_237FE31FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237FAD2A4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_237FE3238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237FAD2A4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t _DeviceActivityData.WebDomainActivity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5450, &qword_238035420);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FAD2A4(v7, v8, v9);
  sub_238032614();
  v11[15] = 0;
  sub_238032464();
  if (!v1)
  {
    type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
    v11[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
    sub_237FAD424(&qword_280C34AE8, MEMORY[0x277CD4AF8]);
    sub_238032454();
    v11[13] = 2;
    sub_238032484();
    v11[12] = 3;
    sub_238032474();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t _DeviceActivityData.WebDomainActivity.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  sub_238031ED4();
  v10 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  sub_237FE28D4(v2 + *(v10 + 20), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_2380325D4();
    sub_237FAD424(&qword_280C34AE0, MEMORY[0x277CD4B00]);
    sub_238031E34();
    (*(v4 + 8))(v6, v3);
  }

  v11 = *(v2 + *(v10 + 24));
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x2383E5750](*&v11);
  return sub_2380325D4();
}

uint64_t _DeviceActivityData.WebDomainActivity.hashValue.getter()
{
  sub_2380325B4();
  _DeviceActivityData.WebDomainActivity.hash(into:)(v1);
  return sub_2380325F4();
}

uint64_t sub_237FE36E8()
{
  sub_2380325B4();
  _DeviceActivityData.WebDomainActivity.hash(into:)(v1);
  return sub_2380325F4();
}

uint64_t sub_237FE372C(uint64_t a1)
{
  sub_2380325B4();
  _DeviceActivityData.WebDomainActivity.hash(into:)(v2);
  return sub_2380325F4();
}

uint64_t _s14DeviceActivity01_aB4DataV09WebDomainB0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B8, &qword_2380343D8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_2380324E4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v22 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v14 = v22[5];
  v15 = *(v11 + 48);
  sub_237FE28D4(a1 + v14, v13);
  sub_237FE28D4(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_237FA5750(v13, &qword_27DEE51B0, &qword_2380343D0);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_237FE28D4(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_237FA5750(v13, &qword_27DEE51B8, &qword_2380343D8);
LABEL_12:
    v19 = 0;
    return v19 & 1;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_237FAD424(&qword_27DEE5090, MEMORY[0x277CD4B08]);
  v17 = sub_238031E64();
  v18 = *(v5 + 8);
  v18(v7, v4);
  v18(v10, v4);
  sub_237FA5750(v13, &qword_27DEE51B0, &qword_2380343D0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (*(a1 + v22[6]) != *(a2 + v22[6]))
  {
    goto LABEL_12;
  }

  v19 = *(a1 + v22[7]) ^ *(a2 + v22[7]) ^ 1;
  return v19 & 1;
}

uint64_t sub_237FE3B0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_237FE3BC4(uint64_t a1)
{
  result = sub_238031CC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_237FE3C70(uint64_t a1)
{
  sub_237FE3D04(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_237FE3D04(uint64_t a1)
{
  if (!qword_280C350F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE4FE8, &unk_238035410);
    v1 = sub_2380321B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280C350F8);
    }
  }
}

unint64_t sub_237FE3D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5480;
  if (!qword_27DEE5480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5480);
  }

  return result;
}

unint64_t sub_237FE3DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C34F98;
  if (!qword_280C34F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34F98);
  }

  return result;
}

unint64_t sub_237FE3E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C34FA0;
  if (!qword_280C34FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34FA0);
  }

  return result;
}

uint64_t sub_237FE3E80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_2380324E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_2380324E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000238036DA0 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574737572547369 && a2 == 0xE900000000000064)
  {

    return 3;
  }

  else
  {
    v6 = sub_2380324E4();

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

uint64_t DeviceActivityDataLocating.localDeviceIdentifierURL.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031994();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  sub_2380318F4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t DeviceActivityDataLocating.localStartDateURL.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031994();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  sub_2380318F4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t DeviceActivityDataLocating.localFirstWeekdayURL.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031994();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  sub_2380318F4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t DeviceActivityDataLocating.localDataDirectory(segmentInterval:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_238031994();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 40))(a2, a3);
  sub_2380318F4();

  return (*(v6 + 8))(v8, v5);
}

uint64_t DeviceActivityDataLocating.localMetadataURL(segmentInterval:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  (*(a3 + 48))(&v12, a2, a3);
  sub_2380318F4();
  return (*(v7 + 8))(v9, v6);
}

uint64_t DeviceActivityDataLocating.localActivitySegmentsDirectory(segmentInterval:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  (*(a3 + 48))(&v12, a2, a3);
  sub_2380318F4();
  return (*(v7 + 8))(v9, v6);
}

uint64_t DeviceActivityDataLocating.localActivitySegmentURL(segmentInterval:recordName:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_238031994();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v15[0]) = *a1;
  (*(a5 + 64))(v15, a4, a5);
  v15[0] = a2;
  v15[1] = a3;

  MEMORY[0x2383E5050](0x7473696C702ELL, 0xE600000000000000);
  sub_2380318F4();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_237FE48A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_238031994();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  sub_2380318F4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_237FE49BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_238031994();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v12 = *(v3 + 8);
  v12(v6, v2);
  sub_2380318F4();
  v12(v9, v2);
  sub_2380318F4();
  return (v12)(v11, v2);
}

uint64_t DeviceActivityDataLocating.cloudUserDirectory(userAltDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 80))(a3, a4);
  sub_2380318F4();
  return (*(v7 + 8))(v9, v6);
}

uint64_t DeviceActivityDataLocating.cloudDeviceDirectory(userAltDSID:deviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[1] = a4;
  v10 = sub_238031994();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a6 + 88))(a1, a2, a5, a6);
  sub_2380318F4();
  return (*(v11 + 8))(v13, v10);
}

uint64_t DeviceActivityDataLocating.cloudDataDirectory(userAltDSID:deviceIdentifier:segmentInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v18[0] = a6;
  v18[1] = a8;
  v13 = sub_238031994();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a7 + 96))(a1, a2, a3, a4, v18[0], a7);
  sub_2380318F4();

  return (*(v14 + 8))(v16, v13);
}

uint64_t DeviceActivityDataLocating.cloudMetadataURL(userAltDSID:deviceIdentifier:segmentInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = a6;
  v21 = a8;
  v14 = sub_238031994();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a5;
  (*(a7 + 104))(a1, a2, a3, a4, &v22, v20, a7);
  sub_2380318F4();
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_237FE5100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = sub_238031994();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_237FACC88(a3, a4, v11);
  sub_2380318F4();

  v14 = *(v8 + 8);
  v14(v11, v7);
  sub_2380318F4();
  return (v14)(v13, v7);
}

uint64_t DeviceActivityDataLocating.cloudActivitySegmentsDirectory(userAltDSID:deviceIdentifier:segmentInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = a6;
  v21 = a8;
  v14 = sub_238031994();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a5;
  (*(a7 + 104))(a1, a2, a3, a4, &v22, v20, a7);
  sub_2380318F4();
  return (*(v15 + 8))(v17, v14);
}

uint64_t DeviceActivityDataLocating.cloudActivitySegmentURL(userAltDSID:deviceIdentifier:segmentInterval:recordName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v22 = a8;
  v23 = a6;
  v24 = a9;
  v16 = sub_238031994();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v25[0]) = *a5;
  (*(a10 + 120))(a1, a2, a3, a4, v25, v22, a10);
  v25[0] = v23;
  v25[1] = a7;

  MEMORY[0x2383E5050](0x7473696C702ELL, 0xE600000000000000);
  sub_2380318F4();

  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_237FE559C()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v10 = *(v1 + 8);
  v10(v4, v0);
  sub_2380318F4();
  v10(v7, v0);
  sub_2380318F4();
  return (v10)(v9, v0);
}

uint64_t DeviceActivityDataLocating.privateSyncStateURL.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031994();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 80))(a1, a2);
  sub_2380318F4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_237FE58C4()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v10 = *(v1 + 8);
  v10(v4, v0);
  sub_2380318F4();
  v10(v7, v0);
  sub_2380318F4();
  return (v10)(v9, v0);
}

uint64_t DeviceActivityDataLocating.sharedSyncStateURL.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031994();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 80))(a1, a2);
  sub_2380318F4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t DeviceActivityDataLocating.localTimeZoneURL.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031994();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  sub_2380318F4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_237FE5E74()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_2380318F4();
  return (v7)(v6, v0);
}

uint64_t sub_237FE6028()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_2380318F4();
  return (v7)(v6, v0);
}

uint64_t sub_237FE61F4(char *a1)
{
  v2 = sub_238031994();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237FAC7A4(*a1);
  sub_2380318F4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_237FE62F8(char *a1)
{
  v2 = sub_238031994();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237FAC7A4(*a1);
  sub_2380318F4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_237FE6404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_238031994();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v10 = *(v4 + 8);
  v10(v7, v3);
  sub_2380318F4();
  return (v10)(v9, v3);
}

uint64_t sub_237FE65B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v7 = sub_238031994();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237FACC88(a3, a4, v10);
  sub_2380318F4();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_237FE6718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v7 = sub_238031994();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_237FACC88(a3, a4, v11);
  sub_2380318F4();

  v14 = *(v8 + 8);
  v14(v11, v7);
  sub_2380318F4();
  return (v14)(v13, v7);
}

uint64_t DeviceActivityDataLocations.baseDirectory.getter()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  return (*(v1 + 8))(v3, v0);
}

void sub_237FE6A40()
{
  v0 = sub_238031994();
  __swift_allocate_value_buffer(v0, qword_280C353C0);
  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_237FE6A8C();
}

void sub_237FE6A8C()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5488, "b*");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v5 - v1;
  v6 = 1;
  sub_238031EC4();
  v3 = container_system_group_path_for_identifier();

  if (v3)
  {
    v4 = sub_238031994();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    sub_238031924();
    sub_237FE6EC0(v2);
    free(v3);
  }

  else
  {
    v5[2] = 0;
    v5[3] = 0xE000000000000000;
    sub_2380322B4();
    MEMORY[0x2383E5050](0xD00000000000002ALL, 0x8000000238037060);
    v5[1] = v6;
    type metadata accessor for container_error_t(0);
    sub_238032354();
    sub_238032364();
    __break(1u);
  }
}

uint64_t sub_237FE6C94()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t getEnumTagSinglePayload for DeviceActivityDataLocations(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DeviceActivityDataLocations(_WORD *result, int a2, int a3)
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

uint64_t sub_237FE6EC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5488, "b*");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237FE6F28(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  v24 = *(a1 + 16);
  sub_23800F1F4(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_2380321F4();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_23800F1F4((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v11 - 1;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_237FC1560(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_237FC1560(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_237FE7148(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for _DeviceActivityData(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_23800F214(0, v10, 0);
  v11 = v21;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a3 + v18;
  v13 = *(v7 + 72);
  while (1)
  {
    v19(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_23800F214((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_237FAB70C(v9, v11 + v18 + v15 * v13, type metadata accessor for _DeviceActivityData);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void sub_237FE7398(void (*a1)(id *), uint64_t a2, unint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v25 = a6;
  v26 = a1;
  v8 = v6;
  v27 = a2;
  v10 = a4(0);
  v24 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_238032374())
  {
    v29 = MEMORY[0x277D84F90];
    a5(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v14 = 0;
    v15 = v29;
    v22 = i;
    v23 = a3 & 0xC000000000000001;
    v20 = a5;
    v21 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      a5 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v23)
      {
        v16 = MEMORY[0x2383E5440](v14, a3);
      }

      else
      {
        if (v14 >= *(v21 + 16))
        {
          goto LABEL_17;
        }

        v16 = *(a3 + 8 * v14 + 32);
      }

      i = v16;
      v28 = v16;
      v26(&v28);
      if (v8)
      {
        goto LABEL_20;
      }

      v8 = 0;

      v29 = v15;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        v20(v17 > 1, v18 + 1, 1);
        v15 = v29;
      }

      *(v15 + 16) = v18 + 1;
      sub_237FAB70C(v12, v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18, v25);
      ++v14;
      if (a5 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

char *sub_237FE7624(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_237FB5CAC(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_237FE7718(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_237FB5E30(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for _DeviceActivityData(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_237FE7844(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id DeviceActivityDataSource.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_237FFCE24(0, &qword_280C356D0, 0x277D77B48);
  *a1 = v2;
  a1[1] = &off_284AE4AE8;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v4 = result;
    v9 = sub_237FFCE24(0, &qword_280C35378, 0x277CB8F48);
    v10 = &off_284AE4B38;
    *&v8 = v4;
    sub_237FB0034(&v8, (a1 + 2));
    v5 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
    a1[10] = sub_237FFCE24(0, &qword_280C35368, 0x277D08280);
    a1[11] = &off_284AE4A88;
    a1[7] = v5;
    a1[15] = &type metadata for DeviceActivityDataStore;
    a1[16] = &protocol witness table for DeviceActivityDataStore;
    v6 = swift_allocObject();
    a1[12] = v6;
    v9 = &type metadata for DeviceActivityDataLocations;
    v10 = &protocol witness table for DeviceActivityDataLocations;
    sub_237FC1C9C(&v8, (v6 + 2));
    v6[9] = [objc_opt_self() defaultManager];
    v7 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
    __swift_destroy_boxed_opaque_existential_1Tm(&v8);
    v6[10] = v7;
    v6[7] = v2;
    v6[8] = &off_284AE4AE8;
    _s14DeviceActivity12EventStreamsV29useTestBiomeDirectoryIfNeededyyFZ_0();
    result = [objc_allocWithZone(MEMORY[0x277D77B48]) init];
    a1[20] = v2;
    a1[21] = &off_284AE4AE8;
    a1[17] = result;
    a1[22] = sub_237FFD10C;
    a1[23] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DeviceActivityDataSource.init(dataStoring:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_237FFCE24(0, &qword_280C356D0, 0x277D77B48);
  *a2 = v4;
  a2[1] = &off_284AE4AE8;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v6 = result;
    v10 = sub_237FFCE24(0, &qword_280C35378, 0x277CB8F48);
    v11 = &off_284AE4B38;
    *&v9 = v6;
    sub_237FB0034(&v9, (a2 + 2));
    v7 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
    a2[10] = sub_237FFCE24(0, &qword_280C35368, 0x277D08280);
    a2[11] = &off_284AE4A88;
    a2[7] = v7;
    sub_237FC1C9C(a1, (a2 + 12));
    v8 = [objc_allocWithZone(MEMORY[0x277D77B48]) init];
    a2[20] = v4;
    a2[21] = &off_284AE4AE8;
    a2[17] = v8;
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    a2[22] = sub_237FFD10C;
    a2[23] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_237FE7BD8()
{
  v0 = [objc_opt_self() newConnection];
  [v0 activate];
  return v0;
}

void *DeviceActivityDataSource.devicesByUser.getter()
{
  v2 = v0;
  v3 = type metadata accessor for _DeviceActivityData.User(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[15];
  v7 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v6);
  v8 = (*(v7 + 128))(v6, v7);
  if (v1)
  {
    if (qword_280C353A0 != -1)
    {
      swift_once();
    }

    v9 = sub_238031DB4();
    __swift_project_value_buffer(v9, qword_280C36C80);
    v10 = v1;
    v11 = sub_238031D94();
    v12 = sub_238032114();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v39 = v14;
      *v13 = 136446210;
      v38[1] = v1;
      v15 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
      v16 = sub_238031EB4();
      v18 = sub_237FDF8EC(v16, v17, &v39);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_237FA1000, v11, v12, "Couldn't fetch devices by user: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x2383E5E30](v14, -1, -1);
      MEMORY[0x2383E5E30](v13, -1, -1);
    }

    v19 = sub_237FD40EC(MEMORY[0x277D84F90]);
  }

  else
  {
    v19 = v8;
  }

  v20 = v2[15];
  v21 = v2[16];
  __swift_project_boxed_opaque_existential_1(v2 + 12, v20);
  v22 = (*(v21 + 120))(v20, v21);
  v24 = v23;
  sub_237FAB488(v5);
  v26 = *v5;
  v25 = v5[1];

  sub_237FAB7D4(v5, type metadata accessor for _DeviceActivityData.User);
  if (v25)
  {
    if (*(v19 + 16) && (v27 = sub_237FA4E8C(v26, v25), (v28 & 1) != 0))
    {
      v29 = *(*(v19 + 56) + 8 * v27);
      swift_bridgeObjectRetain_n();
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    v30 = v29 + 40;
    v31 = *(v29 + 2) + 1;
    while (--v31)
    {
      if (*(v30 - 1) != v22 || *v30 != v24)
      {
        v30 += 2;
        if ((sub_2380324E4() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_27;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_237FB5A94(0, *(v29 + 2) + 1, 1, v29);
    }

    v34 = *(v29 + 2);
    v33 = *(v29 + 3);
    if (v34 >= v33 >> 1)
    {
      v29 = sub_237FB5A94((v33 > 1), v34 + 1, 1, v29);
    }

    *(v29 + 2) = v34 + 1;
    v35 = &v29[16 * v34];
    *(v35 + 4) = v22;
    *(v35 + 5) = v24;
LABEL_27:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v19;
    sub_237FFBBFC(v29, v26, v25, isUniquelyReferenced_nonNull_native, sub_237FCE9B0, sub_237FCD3A4, sub_238012028);

    return v39;
  }

  else
  {
  }

  return v19;
}

uint64_t sub_237FE82DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = (*(*(v3 + 8) + 32))();
  v9 = v8;
  result = MGCopyAnswer();
  if (result)
  {
    v15[2] = result;
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v15[0];
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = v15[1];
    }

    else
    {
      v13 = 0;
    }

    static DeviceActivityData.Device.Model.current.getter(v15);
    v14 = LOBYTE(v15[0]) - 1;
    *a3 = a1;
    a3[1] = a2;
    a3[2] = v7;
    a3[3] = v9;
    a3[4] = v12;
    a3[5] = v13;
    a3[6] = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237FE8534()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54E8, &qword_2380358A0);
  __swift_allocate_value_buffer(v0, qword_280C35278);
  v1 = __swift_project_value_buffer(v0, qword_280C35278);
  v2 = type metadata accessor for _DeviceActivityData.User(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t DeviceActivityDataSource.localUser.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v58 - v8;
  v10 = v1[5];
  v11 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v10);
  (*(v11 + 8))(&v72, v10, v11);
  if (v73)
  {
    sub_237FB0034(&v72, v75);
    if (qword_280C353A0 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v12 = sub_238031DB4();
      __swift_project_value_buffer(v12, qword_280C36C80);
      v13 = sub_238031D94();
      v14 = sub_238032114();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_237FA1000, v13, v14, "Found a primary Apple Account for the local user.", v15, 2u);
        MEMORY[0x2383E5E30](v15, -1, -1);
      }

      v16 = v2[10];
      v17 = v2[11];
      __swift_project_boxed_opaque_existential_1(v2 + 7, v16);
      (*(v17 + 8))(&v72, v16, v17);
      v66 = a1;
      v65 = v9;
      v64 = v7;
      v27 = v73;
      v28 = v74;
      __swift_project_boxed_opaque_existential_1(&v72, v73);
      v29 = (*(v28 + 8))(v27, v28);
      v2 = v29;
      v30 = *(v29 + 16);
      if (!v30)
      {
        break;
      }

      v31 = 0;
      v32 = v29 + 32;
      while (v31 < v2[2])
      {
        sub_237FC1C9C(v32, &v67);
        v33 = v68;
        v34 = v69;
        __swift_project_boxed_opaque_existential_1(&v67, v68);
        if ((*(v34 + 8))(v33, v34))
        {

          sub_237FB0034(&v67, v70);
          goto LABEL_18;
        }

        ++v31;
        __swift_destroy_boxed_opaque_existential_1Tm(&v67);
        v32 += 40;
        if (v30 == v31)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_23:
      swift_once();
    }

LABEL_16:

    v71 = 0;
    memset(v70, 0, sizeof(v70));
LABEL_18:
    sub_237FA90E4(v70, &v67, &qword_27DEE54A0, &qword_238035788);
    v35 = v68;
    if (v68)
    {
      v36 = v69;
      __swift_project_boxed_opaque_existential_1(&v67, v68);
      v37 = (*(v36 + 16))(v35, v36);
      sub_237FA5750(v70, &qword_27DEE54A0, &qword_238035788);
      __swift_destroy_boxed_opaque_existential_1Tm(&v67);
      v63 = (v37 - 1) < 2;
      __swift_destroy_boxed_opaque_existential_1Tm(&v72);
    }

    else
    {
      sub_237FA5750(v70, &qword_27DEE54A0, &qword_238035788);
      sub_237FA5750(&v67, &qword_27DEE54A0, &qword_238035788);
      __swift_destroy_boxed_opaque_existential_1Tm(&v72);
      v63 = 0;
    }

    v38 = v76;
    v39 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    v62 = (*(v39 + 8))(v38, v39);
    v61 = v40;
    v41 = v76;
    v42 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    v60 = (*(v42 + 16))(v41, v42);
    v59 = v43;
    v44 = v76;
    v45 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    (*(v45 + 24))(v44, v45);
    v47 = v76;
    v46 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    (*(v46 + 32))(v47, v46);
    v48 = v76;
    v49 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    (*(v49 + 40))(v48, v49);
    v50 = sub_2380317D4();
    v51 = *(*(v50 - 8) + 56);
    v51(v64, 1, 1, v50);
    v52 = v65;
    sub_2380317C4();
    v51(v52, 0, 1, v50);
    v53 = type metadata accessor for _DeviceActivityData.User(0);
    v54 = *(v53 + 24);
    v55 = v66;
    v51(v66 + v54, 1, 1, v50);
    v56 = v61;
    *v55 = v62;
    v55[1] = v56;
    v57 = v59;
    v55[2] = v60;
    v55[3] = v57;
    sub_237FA39BC(v52, v55 + v54, &qword_27DEE5108, &qword_238033EE0);
    *(v55 + *(v53 + 28)) = v63;
    return __swift_destroy_boxed_opaque_existential_1Tm(v75);
  }

  else
  {
    sub_237FA5750(&v72, &qword_27DEE5498, &qword_238035780);
    if (qword_280C353A0 != -1)
    {
      swift_once();
    }

    v18 = sub_238031DB4();
    __swift_project_value_buffer(v18, qword_280C36C80);
    v19 = sub_238031D94();
    v20 = sub_238032114();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_237FA1000, v19, v20, "Did not find a primary Apple Account for the local user.", v21, 2u);
      MEMORY[0x2383E5E30](v21, -1, -1);
    }

    v22 = sub_2380317D4();
    v23 = *(*(v22 - 8) + 56);
    v23(v9, 1, 1, v22);
    v24 = type metadata accessor for _DeviceActivityData.User(0);
    v25 = *(v24 + 24);
    v23(a1 + v25, 1, 1, v22);
    *a1 = 0u;
    *(a1 + 1) = 0u;
    result = sub_237FA39BC(v9, a1 + v25, &qword_27DEE5108, &qword_238033EE0);
    *(a1 + *(v24 + 28)) = 0;
  }

  return result;
}

uint64_t DeviceActivityDataSource.requestActivity(filteredBy:refreshActivity:)(uint64_t a1, char a2)
{
  *(v3 + 104) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  *(v3 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237FE8F20, 0, 0);
}

uint64_t sub_237FE8F20()
{
  if (*(v0 + 104) == 1)
  {
    v1 = *(v0 + 80);
    v2 = sub_238031A64();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_237FE9074;
    v4 = *(v0 + 80);

    return DeviceActivityDataSource.refreshLocalActivity(since:segmentIntervals:)(v4, &unk_284AE5AB8);
  }

  else
  {
    v6 = DeviceActivityDataSource.activity(filteredBy:)(*(v0 + 64));

    v7 = *(v0 + 8);

    return v7(v6);
  }
}

uint64_t sub_237FE9074()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  sub_237FA5750(*(v2 + 80), &qword_27DEE51E0, &qword_2380365F0);
  if (v0)
  {
    v3 = sub_237FE9328;
  }

  else
  {
    v3 = sub_237FE91B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_237FE91B8()
{
  v1 = (*(v0[9] + 176))();
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v0[6] = sub_237FFC7B8;
  v0[7] = v3;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_237FC0DB8;
  v0[5] = &block_descriptor_0;
  v4 = _Block_copy(v0 + 2);
  v5 = v1;

  [v2 proxyFromConnection:v5 withRetryCount:1 proxyHandler:v4];
  _Block_release(v4);

  v6 = v0[12];
  v7 = DeviceActivityDataSource.activity(filteredBy:)(v0[8]);

  v9 = v0[1];
  if (!v6)
  {
    v8 = v7;
  }

  return v9(v8);
}

uint64_t sub_237FE9328()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DeviceActivityDataSource.refreshLocalActivity()()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237FE9428, 0, 0);
}

uint64_t sub_237FE9428()
{
  v1 = *(v0 + 24);
  v2 = sub_238031A64();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_237FE9508;
  v4 = *(v0 + 24);

  return DeviceActivityDataSource.refreshLocalActivity(since:segmentIntervals:)(v4, &unk_284AE5AB8);
}

uint64_t sub_237FE9508()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 40) = v0;

  sub_237FA5750(v2, &qword_27DEE51E0, &qword_2380365F0);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_237FE967C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_237FE967C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DeviceActivityDataSource.activity(filteredBy:)(uint64_t a1)
{
  v122 = a1;
  v3 = type metadata accessor for _DeviceActivityData(0);
  v4 = *(v3 - 8);
  v116 = v3;
  v117 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v113 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v115 = &v111 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v112 = &v111 - v10;
  MEMORY[0x28223BE20](v9);
  v114 = &v111 - v11;
  v12 = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for _DeviceActivityData.User(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = MEMORY[0x277D84F90];
  sub_237FAB488(v17);
  v18 = v17[1];
  v120 = *v17;

  sub_237FAB7D4(v17, type metadata accessor for _DeviceActivityData.User);
  v19 = v1[15];
  v20 = v1[16];
  v121 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 12, v19);
  v21 = (*(v20 + 120))(v19, v20);
  if (v2)
  {

    v118 = 0;
    v23 = 0;
  }

  else
  {
    v23 = v22;
    v118 = v21;
  }

  v24 = 0;
  v25 = DeviceActivityDataSource.devicesByUser.getter();
  if (v18)
  {
    v26 = v23 == 0;
  }

  else
  {
    v26 = 1;
  }

  if (!v26)
  {
    v27 = *(v25 + 16);

    if (v27 && (v28 = sub_237FA4E8C(v120, v18), (v29 & 1) != 0))
    {
      v111 = v25;
      v20 = *(*(v25 + 56) + 8 * v28);
      v123[0] = v118;
      v123[1] = v23;
      MEMORY[0x28223BE20](v28);
      *(&v111 - 2) = v123;
      swift_bridgeObjectRetain_n();
      v30 = sub_237FDEE8C(sub_237FDFF94, (&v111 - 4), v20);

      if ((v30 & 1) == 0)
      {
        v57 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_62;
        }

        goto LABEL_102;
      }

      v25 = v111;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50A8, &qword_238033C90);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_238035770;
      *(v20 + 32) = v118;
      *(v20 + 40) = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v123[0] = v25;
      sub_237FFBBFC(v20, v120, v18, isUniquelyReferenced_nonNull_native, sub_237FCE9B0, sub_237FCD3A4, sub_238012028);

      v25 = v123[0];
    }
  }

  while (1)
  {
    v32 = v122;
    sub_237FFD060(v122, v14, type metadata accessor for DeviceActivityFilter.SegmentInterval);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v33 = sub_238031654();
    (*(*(v33 - 8) + 8))(v14, v33);
    v34 = type metadata accessor for DeviceActivityFilter(0);
    v35 = (v32 + v34[6]);
    v36 = v35[1];
    if (v36)
    {
      v37 = *v35;
      v38 = (v122 + v34[8]);
      v20 = v38[1];
      if (!v20)
      {

        if (!*(v25 + 16))
        {
          goto LABEL_88;
        }

        v48 = sub_237FA4E8C(v37, v36);
        if ((v49 & 1) == 0)
        {
          goto LABEL_88;
        }

        v51 = *(*(v25 + 56) + 8 * v48);
        LOBYTE(v123[0]) = EnumCaseMultiPayload;

        v52 = sub_237FEA514(v37, v36, v51, v122, v123);
        if (!v24)
        {
          v108 = v52;

          v89 = v108;
          goto LABEL_93;
        }

        goto LABEL_32;
      }

      v14 = *v38;
      if (!v18)
      {
        goto LABEL_75;
      }

      if (v37 != v120 || v36 != v18)
      {
        v39 = v34;
        v40 = sub_2380324E4();
        v34 = v39;
        if ((v40 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      if (!v23)
      {
        goto LABEL_75;
      }

      if (v14 != v118 || v20 != v23)
      {
        v41 = v37;
        v42 = v34;
        v43 = sub_2380324E4();
        v34 = v42;
        if ((v43 & 1) == 0)
        {
          v37 = v41;
LABEL_74:

LABEL_75:

          if (*(v25 + 16))
          {
            v118 = v37;
            v48 = sub_237FA4E8C(v37, v36);
            if (v49)
            {
              v120 = v24;
              v111 = v25;
              v94 = *(*(v25 + 56) + 8 * v48);
              v95 = (v94 + 40);
              v96 = *(v94 + 16) + 1;
              do
              {
                if (!--v96)
                {
                  sub_237FFC764(v48, v49, v50);
                  swift_allocError();
                  *v107 = 2;
                  swift_willThrow();
                  goto LABEL_89;
                }

                if (*(v95 - 1) == v14 && v20 == *v95)
                {
                  break;
                }

                v95 += 2;
                v48 = sub_2380324E4();
              }

              while ((v48 & 1) == 0);
              v98 = v121[15];
              v99 = v121[16];
              __swift_project_boxed_opaque_existential_1(v121 + 12, v98);
              LOBYTE(v123[0]) = EnumCaseMultiPayload;
              v100 = v114;
              v101 = v120;
              (*(v99 + 24))(v118, v36, v14, v20, v123, v98, v99);
              if (v101)
              {
                goto LABEL_89;
              }

              v102 = v112;
              sub_237FFD060(v100, v112, type metadata accessor for _DeviceActivityData);
              v103 = sub_237FB5E30(0, 1, 1, MEMORY[0x277D84F90]);
              v105 = *(v103 + 2);
              v104 = *(v103 + 3);
              if (v105 >= v104 >> 1)
              {
                v103 = sub_237FB5E30((v104 > 1), v105 + 1, 1, v103);
              }

              sub_237FAB7D4(v100, type metadata accessor for _DeviceActivityData);
              *(v103 + 2) = v105 + 1;
              v78 = sub_237FAB70C(v102, &v103[((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v105], type metadata accessor for _DeviceActivityData);
              v124 = v103;
              goto LABEL_94;
            }
          }

LABEL_88:
          sub_237FFC764(v48, v49, v50);
          swift_allocError();
          *v106 = 1;
          swift_willThrow();
LABEL_89:

          return v25;
        }
      }
    }

    if (*(v122 + v34[5] + 8))
    {
      break;
    }

    v120 = v24;

    v18 = v25 + 64;
    v53 = 1 << *(v25 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v25 + 64);
    v23 = (v53 + 63) >> 6;

    v56 = 0;
    v57 = MEMORY[0x277D84F90];
    v118 = v23;
    while (v55)
    {
LABEL_43:
      v59 = __clz(__rbit64(v55)) | (v56 << 6);
      v60 = (*(v25 + 48) + 16 * v59);
      v61 = *v60;
      v62 = v60[1];
      v63 = *(*(v25 + 56) + 8 * v59);
      LOBYTE(v123[0]) = EnumCaseMultiPayload;

      v64 = v61;
      v65 = v120;
      v66 = sub_237FEA514(v64, v62, v63, v122, v123);
      v120 = v65;
      if (v65)
      {

        return v25;
      }

      v67 = v66;

      v14 = v67[2];
      v68 = v57;
      v20 = *(v57 + 2);
      v57 = &v14[v20];
      if (__OFADD__(v20, v14))
      {
        goto LABEL_98;
      }

      v69 = v18;
      v70 = v68;
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v70;
      if (!v71 || (v73 = *(v70 + 3) >> 1, v73 < v57))
      {
        if (v20 <= v57)
        {
          v74 = &v14[v20];
        }

        else
        {
          v74 = v20;
        }

        v72 = sub_237FB5E30(v71, v74, 1, v70);
        v73 = *(v72 + 3) >> 1;
      }

      v18 = v69;
      v23 = v118;
      if (v67[2])
      {
        if (v73 - *(v72 + 2) < v14)
        {
          goto LABEL_100;
        }

        v57 = v72;
        swift_arrayInitWithCopy();

        if (v14)
        {
          v75 = *(v57 + 2);
          v76 = __OFADD__(v75, v14);
          v77 = &v14[v75];
          if (v76)
          {
            goto LABEL_101;
          }

          *(v57 + 2) = v77;
        }
      }

      else
      {
        v57 = v72;

        if (v14)
        {
          goto LABEL_99;
        }
      }

      v55 &= v55 - 1;
      v124 = v57;
    }

    while (1)
    {
      v58 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v58 >= v23)
      {

        goto LABEL_94;
      }

      v55 = *(v18 + 8 * v58);
      ++v56;
      if (v55)
      {
        v56 = v58;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    v20 = sub_237FB5A94(0, *(v20 + 16) + 1, 1, v20);
LABEL_62:
    v83 = *(v20 + 16);
    v82 = *(v20 + 24);
    if (v83 >= v82 >> 1)
    {
      v20 = sub_237FB5A94((v82 > 1), v83 + 1, 1, v20);
    }

    *(v20 + 16) = v83 + 1;
    v84 = v20 + 16 * v83;
    *(v84 + 32) = v118;
    *(v84 + 40) = v23;
    v85 = v111;
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v123[0] = v85;
    sub_237FFBBFC(v20, v120, v18, v86, sub_237FCE9B0, sub_237FCD3A4, sub_238012028);

    v25 = v123[0];
    v24 = v57;
  }

  if (!*(v122 + v34[7]))
  {

    v79 = v121[15];
    v80 = v121[16];
    __swift_project_boxed_opaque_existential_1(v121 + 12, v79);
    LOBYTE(v123[0]) = EnumCaseMultiPayload;
    v81 = v115;
    (*(v80 + 16))(v120, v18, v123, v79, v80);
    if (!v24)
    {

      v90 = v113;
      sub_237FFD060(v81, v113, type metadata accessor for _DeviceActivityData);
      v91 = sub_237FB5E30(0, 1, 1, MEMORY[0x277D84F90]);
      v93 = *(v91 + 2);
      v92 = *(v91 + 3);
      if (v93 >= v92 >> 1)
      {
        v91 = sub_237FB5E30((v92 > 1), v93 + 1, 1, v91);
      }

      sub_237FAB7D4(v81, type metadata accessor for _DeviceActivityData);
      *(v91 + 2) = v93 + 1;
      v78 = sub_237FAB70C(v90, &v91[((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v93], type metadata accessor for _DeviceActivityData);
      v124 = v91;
      goto LABEL_94;
    }

LABEL_32:

    goto LABEL_89;
  }

  if (v18 && *(v25 + 16) && (, v44 = sub_237FA4E8C(v120, v18), v46 = v45, , (v46 & 1) != 0))
  {

    v47 = *(*(v25 + 56) + 8 * v44);
  }

  else if (v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50A8, &qword_238033C90);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_238035770;
    *(v47 + 32) = v118;
    *(v47 + 40) = v23;
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

  LOBYTE(v123[0]) = EnumCaseMultiPayload;
  v87 = sub_237FEA514(v120, v18, v47, v122, v123);
  if (v24)
  {

    goto LABEL_89;
  }

  v88 = v87;

  v89 = v88;
LABEL_93:
  v78 = sub_237FE7718(v89);
LABEL_94:
  v109 = v124;
  MEMORY[0x28223BE20](v78);
  *(&v111 - 2) = v122;
  v25 = sub_237FE7148(sub_237FFC818, (&v111 - 4), v109);

  return v25;
}

void *sub_237FEA514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v7 = v5;
  v75 = a4;
  v73 = a2;
  v77 = a1;
  v10 = type metadata accessor for _DeviceActivityData(0);
  v11 = *(v10 - 8);
  v71 = v10;
  v72 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v76 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v83 = &v69 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54F0, &qword_2380358A8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v86 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v74 = &v69 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v79 = &v69 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v69 - v22;
  v90 = *a5;
  v24 = v7[15];
  v25 = v7[16];
  __swift_project_boxed_opaque_existential_1(v7 + 12, v24);
  v26 = (*(v25 + 120))(v24, v25);
  if (v6)
  {

    v26 = 0;
    v27 = 0;
  }

  v89 = 0;
  v28 = v73;
  v29 = v71;
  v82 = *(a3 + 16);
  if (v82)
  {
    v78 = v26;
    v85 = v27;
    v30 = 0;
    v87 = *(v72 + 56);
    v88 = v72 + 56;
    v69 = v83 + 48;
    v80 = (v72 + 48);
    v81 = a3 + 32;
    v84 = MEMORY[0x277D84F90];
    v31 = v86;
    v70 = v7;
    while (1)
    {
      v32 = (v81 + 16 * v30);
      v33 = *v32;
      v34 = v32[1];
      v87(v23, 1, 1, v29);
      if (v85 && (v33 == v78 ? (v35 = v85 == v34) : (v35 = 0), v35 || (sub_2380324E4() & 1) != 0))
      {
        v37 = v7[15];
        v36 = v7[16];
        __swift_project_boxed_opaque_existential_1(v7 + 12, v37);
        v91 = v90;
        v38 = v89;
        (*(v36 + 16))(v77, v28, &v91, v37, v36);
        if (v38)
        {

          sub_237FA5750(v23, &qword_27DEE54F0, &qword_2380358A8);
          v89 = 0;
          v39 = 1;
        }

        else
        {
          v89 = 0;
          sub_237FA5750(v23, &qword_27DEE54F0, &qword_2380358A8);
          v39 = 0;
        }

        v45 = v83;
        v31 = v86;
        v46 = v79;
        v87(v79, v39, 1, v29);
        v47 = v46;
      }

      else
      {
        if (!v28)
        {
          v45 = v83;
          goto LABEL_24;
        }

        v40 = v7[15];
        v41 = v7[16];
        __swift_project_boxed_opaque_existential_1(v7 + 12, v40);
        v92 = v90;
        v42 = *(v41 + 24);

        v43 = v89;
        v42(v77, v28, v33, v34, &v92, v40, v41);
        if (v43)
        {

          sub_237FA5750(v23, &qword_27DEE54F0, &qword_2380358A8);
          v89 = 0;
          v44 = 1;
        }

        else
        {
          v89 = 0;
          sub_237FA5750(v23, &qword_27DEE54F0, &qword_2380358A8);

          v44 = 0;
        }

        v29 = v71;
        v48 = v74;
        v87(v74, v44, 1, v71);
        v47 = v48;
        v7 = v70;
        v28 = v73;
        v45 = v83;
        v31 = v86;
      }

      sub_237FA5AE0(v47, v23, &qword_27DEE54F0, &qword_2380358A8);
LABEL_24:
      sub_237FA90E4(v23, v31, &qword_27DEE54F0, &qword_2380358A8);
      if ((*v80)(v31, 1, v29) != 1)
      {
        sub_237FAB70C(v31, v45, type metadata accessor for _DeviceActivityData);
        v49 = type metadata accessor for DeviceActivityFilter(0);
        v50 = *(v75 + *(v49 + 28));
        if (!v50)
        {
          goto LABEL_33;
        }

        v51 = v89;
        v52 = sub_237FE6F28(v50);
        v89 = v51;
        v53 = *(v52 + 16);
        if (v53)
        {
          v54 = v52;
          v55 = type metadata accessor for _DeviceActivityData.Metadata(0);
          v56 = v54;
          v28 = v73;
          v57 = *&v69[*(v55 + 28)];
          v58 = 32;
          while (v53)
          {
            v59 = *(v56 + v58);
            v58 += 8;
            --v53;
            if (v59 == v57)
            {
              goto LABEL_30;
            }
          }

          sub_237FAB7D4(v45, type metadata accessor for _DeviceActivityData);
          v67 = v23;
LABEL_40:
          sub_237FA5750(v67, &qword_27DEE54F0, &qword_2380358A8);
LABEL_41:
          v31 = v86;
          goto LABEL_6;
        }

LABEL_30:

        v60 = v75 + *(v49 + 20);
        v61 = v84;
        if ((*(v60 + 8) & 1) == 0 && !*v60)
        {
          v62 = v45 + *(type metadata accessor for _DeviceActivityData.Metadata(0) + 24);
          if (*(v62 + *(type metadata accessor for _DeviceActivityData.User(0) + 28)) != 1)
          {
            sub_237FAB7D4(v45, type metadata accessor for _DeviceActivityData);
            v67 = v23;
            goto LABEL_40;
          }

LABEL_33:
          v61 = v84;
        }

        sub_237FFD060(v45, v76, type metadata accessor for _DeviceActivityData);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_237FB5E30(0, v61[2] + 1, 1, v61);
        }

        v63 = v61;
        v64 = v61[2];
        v84 = v63;
        v65 = v63[3];
        if (v64 >= v65 >> 1)
        {
          v84 = sub_237FB5E30((v65 > 1), v64 + 1, 1, v84);
        }

        sub_237FAB7D4(v45, type metadata accessor for _DeviceActivityData);
        sub_237FA5750(v23, &qword_27DEE54F0, &qword_2380358A8);
        v66 = v84;
        v84[2] = v64 + 1;
        sub_237FAB70C(v76, v66 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v64, type metadata accessor for _DeviceActivityData);
        goto LABEL_41;
      }

      sub_237FA5750(v23, &qword_27DEE54F0, &qword_2380358A8);
      sub_237FA5750(v31, &qword_27DEE54F0, &qword_2380358A8);
LABEL_6:
      if (++v30 == v82)
      {

        return v84;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_237FEACD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for _DeviceActivityData.Metadata(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237FFD060(a1, v9, type metadata accessor for _DeviceActivityData.Metadata);
  v10 = type metadata accessor for _DeviceActivityData(0);
  v11 = sub_237FDF090(a2, *(a1 + *(v10 + 20)));
  sub_237FFD060(v9, a3, type metadata accessor for _DeviceActivityData.Metadata);
  v14 = v11;

  sub_237FC696C(&v14);
  if (v3)
  {

    __break(1u);
  }

  else
  {

    result = sub_237FAB7D4(v9, type metadata accessor for _DeviceActivityData.Metadata);
    *(a3 + *(v10 + 20)) = v14;
  }

  return result;
}

uint64_t DeviceActivityDataSource.refreshLocalActivity(since:segmentIntervals:)(uint64_t a1, uint64_t a2)
{
  v3[154] = v2;
  v3[153] = a2;
  v3[152] = a1;
  v3[155] = type metadata accessor for _DeviceActivityData.Metadata(0);
  v3[156] = swift_task_alloc();
  v3[157] = swift_task_alloc();
  v3[158] = swift_task_alloc();
  v3[159] = swift_task_alloc();
  v3[160] = swift_task_alloc();
  v3[161] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54B0, &qword_2380357B0);
  v3[162] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54B8, &qword_2380357B8);
  v3[163] = swift_task_alloc();
  v4 = sub_2380316C4();
  v3[164] = v4;
  v3[165] = *(v4 - 8);
  v3[166] = swift_task_alloc();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0) - 8);
  v3[167] = v5;
  v3[168] = *(v5 + 64);
  v3[169] = swift_task_alloc();
  v3[170] = swift_task_alloc();
  v3[171] = swift_task_alloc();
  v3[172] = swift_task_alloc();
  v3[173] = swift_task_alloc();
  v3[174] = swift_task_alloc();
  v3[175] = swift_task_alloc();
  v3[176] = swift_task_alloc();
  v6 = sub_238031654();
  v3[177] = v6;
  v3[178] = *(v6 - 8);
  v3[179] = swift_task_alloc();
  v3[180] = swift_task_alloc();
  v3[181] = swift_task_alloc();
  v3[182] = swift_task_alloc();
  v3[183] = swift_task_alloc();
  v3[184] = swift_task_alloc();
  v7 = sub_238031B64();
  v3[185] = v7;
  v3[186] = *(v7 - 8);
  v3[187] = swift_task_alloc();
  v8 = sub_238031B74();
  v3[188] = v8;
  v3[189] = *(v8 - 8);
  v3[190] = swift_task_alloc();
  v3[191] = swift_task_alloc();
  v9 = *(type metadata accessor for _DeviceActivityData.User(0) - 8);
  v3[192] = v9;
  v3[193] = *(v9 + 64);
  v3[194] = swift_task_alloc();
  v3[195] = swift_task_alloc();
  v3[196] = swift_task_alloc();
  v3[197] = swift_task_alloc();
  v3[198] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v3[199] = swift_task_alloc();
  v3[200] = swift_task_alloc();
  v3[201] = swift_task_alloc();
  v3[202] = swift_task_alloc();
  v3[203] = swift_task_alloc();
  v10 = sub_238031A64();
  v3[204] = v10;
  v3[205] = *(v10 - 8);
  v3[206] = swift_task_alloc();
  v3[207] = swift_task_alloc();
  v3[208] = swift_task_alloc();
  v3[209] = swift_task_alloc();
  v3[210] = swift_task_alloc();
  v3[211] = swift_task_alloc();
  v3[212] = swift_task_alloc();
  v3[213] = swift_task_alloc();
  v3[214] = swift_task_alloc();
  v3[215] = swift_task_alloc();
  v3[216] = swift_task_alloc();
  v3[217] = swift_task_alloc();
  v3[218] = swift_task_alloc();
  v3[219] = swift_task_alloc();
  v3[220] = swift_task_alloc();
  v3[221] = swift_task_alloc();
  v3[222] = swift_task_alloc();
  v3[223] = swift_task_alloc();
  v3[224] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237FEB404, 0, 0);
}

uint64_t sub_237FEB404()
{
  v395 = v0;
  v1 = *(v0 + 1232);
  sub_238031A54();
  v2 = v1[15];
  v3 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  (*(v3 + 136))(v2, v3);
  v4 = *(v0 + 1640);
  v5 = *(v0 + 1632);
  v6 = *(v0 + 1624);
  v7 = *(v4 + 48);
  if (v7(v6, 1, v5) == 1)
  {
    sub_237FA5750(v6, &qword_27DEE51E0, &qword_2380365F0);
    if (qword_280C35388 != -1)
    {
      swift_once();
    }

    v8 = sub_238031DB4();
    __swift_project_value_buffer(v8, qword_280C36C50);
    v9 = sub_238031D94();
    v10 = sub_2380320F4();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 1792);
    v13 = *(v0 + 1640);
    v14 = *(v0 + 1632);
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_237FA1000, v9, v10, "Failed to compute local start date", v15, 2u);
      MEMORY[0x2383E5E30](v15, -1, -1);
    }

    (*(v13 + 8))(v12, v14);
    goto LABEL_45;
  }

  v359 = *(v0 + 1616);
  v368 = v5;
  v377 = v7;
  v16 = *(v0 + 1584);
  v17 = v5;
  v18 = *(v0 + 1496);
  v19 = *(v0 + 1488);
  v354 = *(v0 + 1480);
  v344 = *(v4 + 32);
  v344(*(v0 + 1784), v6, v17);
  DeviceActivityDataSource.localUser.getter(v16);
  sub_238031B44();
  sub_238031AC4();
  (*(v19 + 104))(v18, *MEMORY[0x277CC9968], v354);
  sub_238031B24();
  (*(v19 + 8))(v18, v354);
  if (v377(v359, 1, v368) == 1)
  {
    sub_237FA5750(*(v0 + 1616), &qword_27DEE51E0, &qword_2380365F0);
    if (qword_280C35388 != -1)
    {
      swift_once();
    }

    v20 = sub_238031DB4();
    __swift_project_value_buffer(v20, qword_280C36C50);
    v21 = sub_238031D94();
    v22 = sub_2380320F4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_237FA1000, v21, v22, "Failed to compute thirty days ago", v23, 2u);
      MEMORY[0x2383E5E30](v23, -1, -1);
    }

    v24 = *(v0 + 1792);
    v25 = *(v0 + 1784);
    v26 = *(v0 + 1776);
    v27 = *(v0 + 1640);
    v28 = *(v0 + 1632);
    v386 = *(v0 + 1584);
    v29 = *(v0 + 1528);
    v30 = *(v0 + 1512);
    v31 = *(v0 + 1504);

    v32 = *(v27 + 8);
    v32(v26, v28);
    (*(v30 + 8))(v29, v31);
    v32(v25, v28);
    v32(v24, v28);
    v33 = v386;
    goto LABEL_44;
  }

  v34 = *(v0 + 1632);
  v35 = *(v0 + 1600);
  v36 = *(v0 + 1216);
  v344(*(v0 + 1768), *(v0 + 1616), v34);
  sub_237FA90E4(v36, v35, &qword_27DEE51E0, &qword_2380365F0);
  if (v377(v35, 1, v34) == 1)
  {
    v369 = *(v0 + 1632);
    v37 = *(v0 + 1600);
    v38 = *(v0 + 1584);
    v39 = *(v0 + 1224);
    v40 = v1[15];
    v41 = v1[16];
    __swift_project_boxed_opaque_existential_1(v1 + 12, v40);
    (*(v41 + 184))(*v38, v38[1], v39, v40, v41);
    if (v377(v37, 1, v369) != 1)
    {
      sub_237FA5750(*(v0 + 1600), &qword_27DEE51E0, &qword_2380365F0);
    }
  }

  else
  {
    v42 = *(v0 + 1640);
    v43 = *(v0 + 1632);
    v44 = *(v0 + 1608);
    v344(v44, *(v0 + 1600), v43);
    (*(v42 + 56))(v44, 0, 1, v43);
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1784);
  v47 = *(v0 + 1768);
  v48 = *(v0 + 1760);
  v49 = *(v0 + 1752);
  v50 = *(v0 + 1640);
  v51 = *(v0 + 1632);
  sub_237FFCDA8(&qword_280C35028, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v52 = sub_238031E54();
  v55 = *(v50 + 16);
  v53 = v50 + 16;
  v54 = v55;
  *(v0 + 1800) = v55;
  if (v52)
  {
    v56 = v47;
  }

  else
  {
    v56 = v46;
  }

  v54(v48, v56, v51);
  *(v0 + 1808) = v53 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v370 = v54;
  v54(v49, v45, v51);
  if ((sub_238031A14() & 1) == 0)
  {
    if (qword_280C35388 != -1)
    {
      swift_once();
    }

    v66 = *(v0 + 1792);
    v67 = *(v0 + 1784);
    v68 = *(v0 + 1768);
    v69 = *(v0 + 1664);
    v70 = *(v0 + 1656);
    v71 = *(v0 + 1648);
    v72 = *(v0 + 1632);
    v73 = sub_238031DB4();
    __swift_project_value_buffer(v73, qword_280C36C50);
    v54(v69, v67, v72);
    v54(v70, v68, v72);
    v54(v71, v66, v72);
    v74 = sub_238031D94();
    v339 = sub_238032114();
    v75 = os_log_type_enabled(v74, v339);
    v76 = *(v0 + 1792);
    v77 = *(v0 + 1784);
    v78 = *(v0 + 1776);
    v360 = *(v0 + 1760);
    v371 = *(v0 + 1768);
    v79 = *(v0 + 1664);
    v80 = *(v0 + 1656);
    v345 = *(v0 + 1648);
    v350 = *(v0 + 1752);
    v81 = *(v0 + 1640);
    v82 = *(v0 + 1632);
    v355 = *(v0 + 1608);
    v83 = *(v0 + 1512);
    v378 = *(v0 + 1504);
    v387 = *(v0 + 1528);
    if (v75)
    {
      v336 = *(v0 + 1776);
      v84 = swift_slowAlloc();
      v325 = swift_slowAlloc();
      v394[0] = v325;
      *v84 = 136446722;
      sub_237FFCDA8(&qword_280C35020, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v333 = v76;
      v328 = v83;
      v331 = v77;
      v85 = sub_2380324C4();
      v87 = v86;
      v322 = v74;
      v88 = *(v81 + 8);
      v88(v79, v82);
      v89 = sub_237FDF8EC(v85, v87, v394);

      *(v84 + 4) = v89;
      *(v84 + 12) = 2082;
      v90 = sub_2380324C4();
      v92 = v91;
      v88(v80, v82);
      v93 = sub_237FDF8EC(v90, v92, v394);

      *(v84 + 14) = v93;
      *(v84 + 22) = 2082;
      v94 = sub_2380324C4();
      v96 = v95;
      v88(v345, v82);
      v97 = sub_237FDF8EC(v94, v96, v394);

      *(v84 + 24) = v97;
      _os_log_impl(&dword_237FA1000, v322, v339, "Skipping refresh because query interval has invalid bounds using local start date: %{public}s, thirty days ago: %{public}s, now: %{public}s", v84, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2383E5E30](v325, -1, -1);
      MEMORY[0x2383E5E30](v84, -1, -1);

      v88(v350, v82);
      v88(v360, v82);
      sub_237FA5750(v355, &qword_27DEE51E0, &qword_2380365F0);
      v88(v371, v82);
      v88(v336, v82);
      (*(v328 + 8))(v387, v378);
      v88(v331, v82);
      v88(v333, v82);
    }

    else
    {

      v101 = *(v81 + 8);
      v101(v345, v82);
      v101(v80, v82);
      v101(v79, v82);
      v101(v350, v82);
      v101(v360, v82);
      sub_237FA5750(v355, &qword_27DEE51E0, &qword_2380365F0);
      v101(v371, v82);
      v101(v78, v82);
      (*(v83 + 8))(v387, v378);
      v101(v77, v82);
      v101(v76, v82);
    }

    goto LABEL_43;
  }

  v57 = *(v0 + 1632);
  v58 = *(v0 + 1592);
  sub_237FA90E4(*(v0 + 1608), v58, &qword_27DEE51E0, &qword_2380365F0);
  v59 = v377(v58, 1, v57);
  v60 = *(v0 + 1760);
  v61 = *(v0 + 1632);
  if (v59 == 1)
  {
    v62 = *(v0 + 1744);
    sub_237FA5750(*(v0 + 1592), &qword_27DEE51E0, &qword_2380365F0);
    v63 = v62;
    v64 = v60;
    v65 = v61;
LABEL_29:
    v54(v63, v64, v65);
    goto LABEL_32;
  }

  v344(*(v0 + 1736), *(v0 + 1592), *(v0 + 1632));
  if (sub_238031E54())
  {
    v98 = *(v0 + 1760);
    v99 = *(v0 + 1744);
    v100 = *(v0 + 1632);
    (*(*(v0 + 1640) + 8))(*(v0 + 1736), v100);
    v63 = v99;
    v64 = v98;
    v65 = v100;
    goto LABEL_29;
  }

  v344(*(v0 + 1744), *(v0 + 1736), *(v0 + 1632));
LABEL_32:
  if ((sub_238031A14() & 1) == 0)
  {
    if (qword_280C35388 != -1)
    {
      swift_once();
    }

    v118 = *(v0 + 1760);
    v119 = *(v0 + 1752);
    v120 = *(v0 + 1744);
    v121 = *(v0 + 1688);
    v122 = *(v0 + 1680);
    v123 = *(v0 + 1672);
    v124 = *(v0 + 1632);
    v125 = sub_238031DB4();
    __swift_project_value_buffer(v125, qword_280C36C50);
    v54(v121, v120, v124);
    v54(v122, v118, v124);
    v54(v123, v119, v124);
    v126 = sub_238031D94();
    v337 = sub_238032114();
    v127 = os_log_type_enabled(v126, v337);
    v128 = *(v0 + 1792);
    v129 = *(v0 + 1784);
    v130 = *(v0 + 1776);
    v361 = *(v0 + 1760);
    v372 = *(v0 + 1768);
    v346 = *(v0 + 1744);
    v351 = *(v0 + 1752);
    v131 = *(v0 + 1688);
    v132 = *(v0 + 1680);
    v340 = *(v0 + 1672);
    v133 = *(v0 + 1640);
    v134 = *(v0 + 1632);
    v356 = *(v0 + 1608);
    v135 = *(v0 + 1512);
    v380 = *(v0 + 1504);
    v389 = *(v0 + 1528);
    if (v127)
    {
      v334 = *(v0 + 1776);
      v136 = swift_slowAlloc();
      v323 = swift_slowAlloc();
      v394[0] = v323;
      *v136 = 136446722;
      sub_237FFCDA8(&qword_280C35020, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v326 = v135;
      v329 = v129;
      v137 = sub_2380324C4();
      v139 = v138;
      v140 = *(v133 + 8);
      v140(v131, v134);
      v141 = sub_237FDF8EC(v137, v139, v394);

      *(v136 + 4) = v141;
      *(v136 + 12) = 2082;
      v142 = sub_2380324C4();
      v144 = v143;
      v140(v132, v134);
      v145 = sub_237FDF8EC(v142, v144, v394);

      *(v136 + 14) = v145;
      *(v136 + 22) = 2082;
      v146 = sub_2380324C4();
      v148 = v147;
      v140(v340, v134);
      v149 = sub_237FDF8EC(v146, v148, v394);

      *(v136 + 24) = v149;
      _os_log_impl(&dword_237FA1000, v126, v337, "Skipping refresh because query start: %{public}s, is out of bounds: %{public}s - %{public}s", v136, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2383E5E30](v323, -1, -1);
      MEMORY[0x2383E5E30](v136, -1, -1);

      v140(v346, v134);
      v140(v351, v134);
      v140(v361, v134);
      sub_237FA5750(v356, &qword_27DEE51E0, &qword_2380365F0);
      v140(v372, v134);
      v140(v334, v134);
      (*(v326 + 8))(v389, v380);
      v140(v329, v134);
      v140(v128, v134);
    }

    else
    {

      v154 = *(v133 + 8);
      v154(v340, v134);
      v154(v132, v134);
      v154(v131, v134);
      v154(v346, v134);
      v154(v351, v134);
      v154(v361, v134);
      sub_237FA5750(v356, &qword_27DEE51E0, &qword_2380365F0);
      v154(v372, v134);
      v154(v130, v134);
      (*(v135 + 8))(v389, v380);
      v154(v129, v134);
      v154(v128, v134);
    }

LABEL_43:
    v33 = *(v0 + 1584);
LABEL_44:
    sub_237FAB7D4(v33, type metadata accessor for _DeviceActivityData.User);
LABEL_45:

    v155 = *(v0 + 8);

    return v155();
  }

  if (qword_280C35388 != -1)
  {
LABEL_76:
    swift_once();
  }

  v102 = *(v0 + 1744);
  v103 = *(v0 + 1728);
  v104 = *(v0 + 1632);
  v105 = sub_238031DB4();
  __swift_project_value_buffer(v105, qword_280C36C50);
  v370(v103, v102, v104);
  v106 = sub_238031D94();
  v107 = sub_238032114();
  v108 = os_log_type_enabled(v106, v107);
  v109 = *(v0 + 1728);
  v110 = *(v0 + 1640);
  v111 = *(v0 + 1632);
  if (v108)
  {
    v112 = swift_slowAlloc();
    v388 = swift_slowAlloc();
    v394[0] = v388;
    *v112 = 136446210;
    sub_237FFCDA8(&qword_280C35020, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v113 = sub_2380324C4();
    v115 = v114;
    v379 = v107;
    v116 = *(v110 + 8);
    v116(v109, v111);
    v117 = sub_237FDF8EC(v113, v115, v394);

    *(v112 + 4) = v117;
    _os_log_impl(&dword_237FA1000, v106, v379, "Refreshing DeviceActivity starting from: %{public}s", v112, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v388);
    MEMORY[0x2383E5E30](v388, -1, -1);
    MEMORY[0x2383E5E30](v112, -1, -1);
  }

  else
  {

    v116 = *(v110 + 8);
    v116(v109, v111);
  }

  *(v0 + 1816) = v116;
  v150 = *(v0 + 1752);
  v151 = *(v0 + 1712);
  v152 = *(v0 + 1632);
  v153 = *(v0 + 1224);
  v370(*(v0 + 1720), *(v0 + 1744), v152);
  v370(v151, v150, v152);
  sub_238031614();
  v394[0] = v153;

  sub_237FFBA84(v394);
  v157 = v394[0];
  *(v0 + 1824) = v394[0];
  v158 = *(v157 + 2);
  *(v0 + 1832) = v158;
  if (!v158)
  {
    v250 = *(v0 + 1424);

    v168 = *(v250 + 8);
LABEL_69:
    v251 = *(v0 + 1816);
    v366 = *(v0 + 1776);
    v374 = *(v0 + 1784);
    v252 = *(v0 + 1760);
    v253 = *(v0 + 1752);
    v254 = *(v0 + 1744);
    v255 = *(v0 + 1632);
    v343 = *(v0 + 1608);
    v349 = *(v0 + 1768);
    v383 = *(v0 + 1584);
    v391 = *(v0 + 1792);
    v256 = *(v0 + 1512);
    v353 = *(v0 + 1504);
    v358 = *(v0 + 1528);
    v168(*(v0 + 1472), *(v0 + 1416));
    v251(v254, v255);
    v251(v253, v255);
    v251(v252, v255);
    sub_237FA5750(v343, &qword_27DEE51E0, &qword_2380365F0);
    v251(v349, v255);
    v251(v366, v255);
    (*(v256 + 8))(v358, v353);
    v251(v374, v255);
    v251(v391, v255);
    v33 = v383;
    goto LABEL_44;
  }

  v159 = 0;
  v335 = (v0 + 512);
  v338 = (v0 + 456);
  v330 = (v0 + 568);
  v332 = (v0 + 848);
  v327 = (v0 + 904);
  while (1)
  {
    *(v0 + 1840) = v159;
    v169 = *(v0 + 1824);
    if (v159 >= *(v169 + 16))
    {
      __break(1u);
      goto LABEL_76;
    }

    v170 = *(v0 + 1424);
    v171 = *(v0 + 1416);
    v172 = *(v0 + 1408);
    v173 = *(v170 + 56);
    v174 = *(v169 + v159 + 32);
    *(v0 + 1965) = v174;
    *(v0 + 1848) = v173;
    *(v0 + 1856) = (v170 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v381 = v173;
    v173(v172, 1, 1, v171);
    LODWORD(v370) = v174;
    if (v174)
    {
      if (v174 == 1)
      {
        v175 = *(v0 + 1464);
        v176 = *(v0 + 1328);
        v177 = *(v0 + 1320);
        v178 = *(v0 + 1312);
        v179 = *(v0 + 1296);
        (*(*(v0 + 1512) + 56))(*(v0 + 1304), 1, 1, *(v0 + 1504));
        v180 = sub_238031B94();
        (*(*(v180 - 8) + 56))(v179, 1, 1, v180);
        sub_2380316B4();
        DateInterval.rounded(to:)(v176, v175);
        (*(v177 + 8))(v176, v178);
      }

      else
      {
        v193 = *(v0 + 1520);
        v194 = *(v0 + 1512);
        v195 = *(v0 + 1504);
        v196 = *(v0 + 1464);
        v197 = *(v0 + 1328);
        v198 = *(v0 + 1320);
        v364 = *(v0 + 1312);
        v199 = *(v0 + 1304);
        v200 = *(v0 + 1296);
        sub_238031B44();
        (*(v194 + 56))(v199, 1, 1, v195);
        v201 = sub_238031B94();
        (*(*(v201 - 8) + 56))(v200, 1, 1, v201);
        sub_238031AE4();
        sub_2380316B4();
        DateInterval.rounded(to:)(v197, v196);
        (*(v198 + 8))(v197, v364);
        (*(v194 + 8))(v193, v195);
      }
    }

    else
    {
      v181 = *(v0 + 1720);
      v357 = *(v0 + 1632);
      v362 = *(v0 + 1816);
      v182 = *(v0 + 1464);
      v183 = *(v0 + 1328);
      v184 = *(v0 + 1320);
      v341 = *(v0 + 1312);
      v185 = *(v0 + 1296);
      v324 = *(*(v0 + 1512) + 56);
      v324(*(v0 + 1304), 1, 1, *(v0 + 1504));
      v186 = sub_238031B94();
      v321 = *(*(v186 - 8) + 56);
      v321(v185, 1, 1, v186);
      sub_2380316B4();
      DateInterval.rounded(to:)(v183, v182);
      v187 = *(v184 + 8);
      v187(v183, v341);
      sub_238031634();
      v188 = sub_238031A04();
      v362(v181, v357);
      if (v188)
      {
        v189 = *(v0 + 1456);
        v347 = *(v0 + 1424);
        v352 = *(v0 + 1416);
        v363 = *(v0 + 1408);
        v319 = *(v0 + 1504);
        v320 = *(v0 + 1400);
        v190 = *(v0 + 1328);
        v342 = *(v0 + 1312);
        v191 = *(v0 + 1304);
        v192 = *(v0 + 1296);
        sub_238031634();
        sub_238031624();
        v324(v191, 1, 1, v319);
        v321(v192, 1, 1, v186);
        sub_2380316B4();
        DateInterval.rounded(to:)(v190, v320);
        v187(v190, v342);
        (*(v347 + 8))(v189, v352);
        sub_237FA5750(v363, &qword_27DEE50C8, &qword_2380357C0);
        v381(v320, 0, 1, v352);
        sub_237FA5AE0(v320, v363, &qword_27DEE50C8, &qword_2380357C0);
      }
    }

    v202 = *(v0 + 1424);
    v203 = *(v0 + 1416);
    v204 = *(v0 + 1392);
    sub_237FA90E4(*(v0 + 1408), v204, &qword_27DEE50C8, &qword_2380357C0);
    if ((*(v202 + 48))(v204, 1, v203) == 1)
    {
      v205 = *(v0 + 1560);
      v206 = *(v0 + 1416);
      v207 = *(v0 + 1360);
      v208 = *(v0 + 1232);
      sub_237FA5750(*(v0 + 1392), &qword_27DEE50C8, &qword_2380357C0);
      v381(v207, 1, 1, v206);
      DeviceActivityDataSource.localUser.getter(v205);
      v209 = v208[15];
      v210 = v208[16];
      __swift_project_boxed_opaque_existential_1(v208 + 12, v209);
      v211 = (*(v210 + 120))(v209, v210);
      sub_237FE82DC(v211, v212, v335);

      v213 = *(v0 + 528);
      *(v0 + 400) = *v335;
      *(v0 + 416) = v213;
      *(v0 + 432) = *(v0 + 544);
      *(v0 + 448) = *(v0 + 560);
      if (v370)
      {
        v214 = *(v0 + 1792);
        v215 = *(v0 + 1560);
        v216 = *(v0 + 1464);
        v217 = *(v0 + 416);
        *v330 = *(v0 + 400);
        *(v0 + 584) = v217;
        *(v0 + 600) = *(v0 + 432);
        *(v0 + 616) = *(v0 + 448);
        *(v0 + 1960) = v370;
        sub_237FF6740(v215, v330, (v0 + 1960), v216, v214);
        v218 = *(v0 + 1560);
        sub_237FA5750(*(v0 + 1360), &qword_27DEE50C8, &qword_2380357C0);
        sub_237FAB7D4(v218, type metadata accessor for _DeviceActivityData.User);
        sub_237FFC838(v0 + 400);
        v219 = *(v0 + 1464);
        v220 = *(v0 + 1424);
        v221 = *(v0 + 1416);
        sub_237FA5750(*(v0 + 1408), &qword_27DEE50C8, &qword_2380357C0);
        v168 = *(v220 + 8);
        v168(v219, v221);
        goto LABEL_51;
      }

      v261 = *(v0 + 1232);
      v262 = v261[15];
      v263 = v261[16];
      __swift_project_boxed_opaque_existential_1(v261 + 12, v262);
      v264 = (*(v263 + 120))(v262, v263);
      v293 = *(v0 + 1560);
      v294 = *(v0 + 1552);
      v295 = *(v0 + 1544);
      v296 = *(v0 + 1536);
      v297 = *(v0 + 1360);
      v298 = *(v0 + 1352);
      v376 = *(v0 + 1344);
      v385 = v298;
      v299 = *(v0 + 1336);
      v300 = *(v0 + 1232);
      *(v0 + 1184) = v264;
      *(v0 + 1192) = v301;
      MEMORY[0x2383E5050](95, 0xE100000000000000);
      MEMORY[0x2383E5050](0x796C72756F48, 0xE600000000000000);
      v393 = *(v0 + 1184);
      *(v0 + 1920) = v393;
      v302 = *(v0 + 1192);
      *(v0 + 1928) = v302;
      sub_237FFD060(v293, v294, type metadata accessor for _DeviceActivityData.User);
      sub_237FFC88C(v300, v0 + 16);
      sub_237FA90E4(v297, v298, &qword_27DEE50C8, &qword_2380357C0);
      v303 = (*(v296 + 80) + 16) & ~*(v296 + 80);
      v304 = (v295 + v303 + 7) & 0xFFFFFFFFFFFFFFF8;
      v305 = (v304 + 199) & 0xFFFFFFFFFFFFFFF8;
      v306 = (*(v299 + 80) + v305 + 56) & ~*(v299 + 80);
      v307 = swift_allocObject();
      *(v0 + 1936) = v307;
      sub_237FAB70C(v294, v307 + v303, type metadata accessor for _DeviceActivityData.User);
      v308 = (v307 + v304);
      v309 = *(v0 + 128);
      v308[6] = *(v0 + 112);
      v308[7] = v309;
      v310 = *(v0 + 96);
      v308[4] = *(v0 + 80);
      v308[5] = v310;
      v311 = *(v0 + 192);
      v308[10] = *(v0 + 176);
      v308[11] = v311;
      v312 = *(v0 + 160);
      v308[8] = *(v0 + 144);
      v308[9] = v312;
      v313 = *(v0 + 32);
      *v308 = *(v0 + 16);
      v308[1] = v313;
      v314 = *(v0 + 64);
      v308[2] = *(v0 + 48);
      v308[3] = v314;
      v315 = v307 + v305;
      *(v315 + 48) = *(v0 + 448);
      v316 = *(v0 + 432);
      *(v315 + 16) = *(v0 + 416);
      *(v315 + 32) = v316;
      *v315 = *(v0 + 400);
      sub_237FA5AE0(v385, v307 + v306, &qword_27DEE50C8, &qword_2380357C0);
      v317 = (v307 + ((v376 + v306 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v317 = v393;
      v317[1] = v302;
      sub_237FFC8DC(v0 + 400, v0 + 624);

      v318 = swift_task_alloc();
      *(v0 + 1944) = v318;
      *v318 = v0;
      v318[1] = sub_237FF2C14;
      v290 = sub_237FFC8C4;
      v291 = *(v0 + 1464);
      v292 = v307;
LABEL_72:

      return sub_237FF9244(v291, v290, v292);
    }

    v222 = *(v0 + 1784);
    v223 = *(v0 + 1720);
    v224 = *(v0 + 1632);
    v365 = *(v0 + 1576);
    v225 = *(v0 + 1448);
    v348 = *(v0 + 1800);
    v226 = *(v0 + 1424);
    v227 = *(v0 + 1416);
    v228 = *(v0 + 1384);
    v229 = *(v0 + 1232);
    (*(v226 + 32))(v225, *(v0 + 1392), v227);
    v348(v223, v222, v224);
    sub_238031604();
    sub_238031614();
    (*(v226 + 16))(v228, v225, v227);
    v381(v228, 0, 1, v227);
    DeviceActivityDataSource.localUser.getter(v365);
    v230 = v229[15];
    v231 = v229[16];
    __swift_project_boxed_opaque_existential_1(v229 + 12, v230);
    v232 = (*(v231 + 120))(v230, v231);
    sub_237FE82DC(v232, v233, v332);

    v234 = *(v0 + 864);
    *v338 = *v332;
    *(v0 + 472) = v234;
    *(v0 + 488) = *(v0 + 880);
    *(v0 + 504) = *(v0 + 896);
    if (!v370)
    {
      v257 = *(v0 + 1232);
      v258 = v257[15];
      v259 = v257[16];
      __swift_project_boxed_opaque_existential_1(v257 + 12, v258);
      v260 = (*(v259 + 120))(v258, v259);
      v265 = *(v0 + 1576);
      v266 = *(v0 + 1568);
      v267 = *(v0 + 1544);
      v268 = *(v0 + 1536);
      v269 = *(v0 + 1384);
      v270 = *(v0 + 1376);
      v375 = *(v0 + 1344);
      v384 = v270;
      v367 = *(v0 + 1336);
      v271 = *(v0 + 1232);
      *(v0 + 1200) = v260;
      *(v0 + 1208) = v272;
      MEMORY[0x2383E5050](95, 0xE100000000000000);
      MEMORY[0x2383E5050](0x796C72756F48, 0xE600000000000000);
      v392 = *(v0 + 1200);
      *(v0 + 1864) = v392;
      v273 = *(v0 + 1208);
      *(v0 + 1872) = v273;
      sub_237FFD060(v265, v266, type metadata accessor for _DeviceActivityData.User);
      sub_237FFC88C(v271, v0 + 208);
      sub_237FA90E4(v269, v270, &qword_27DEE50C8, &qword_2380357C0);
      v274 = (*(v268 + 80) + 16) & ~*(v268 + 80);
      v275 = (v267 + v274 + 7) & 0xFFFFFFFFFFFFFFF8;
      v276 = (v275 + 199) & 0xFFFFFFFFFFFFFFF8;
      v277 = (*(v367 + 80) + v276 + 56) & ~*(v367 + 80);
      v278 = swift_allocObject();
      *(v0 + 1880) = v278;
      sub_237FAB70C(v266, v278 + v274, type metadata accessor for _DeviceActivityData.User);
      v279 = (v278 + v275);
      v280 = *(v0 + 320);
      v279[6] = *(v0 + 304);
      v279[7] = v280;
      v281 = *(v0 + 288);
      v279[4] = *(v0 + 272);
      v279[5] = v281;
      v282 = *(v0 + 384);
      v279[10] = *(v0 + 368);
      v279[11] = v282;
      v283 = *(v0 + 352);
      v279[8] = *(v0 + 336);
      v279[9] = v283;
      v284 = *(v0 + 224);
      *v279 = *(v0 + 208);
      v279[1] = v284;
      v285 = *(v0 + 256);
      v279[2] = *(v0 + 240);
      v279[3] = v285;
      v286 = v278 + v276;
      *(v286 + 48) = *(v0 + 504);
      v287 = *(v0 + 488);
      *(v286 + 16) = *(v0 + 472);
      *(v286 + 32) = v287;
      *v286 = *v338;
      sub_237FA5AE0(v384, v278 + v277, &qword_27DEE50C8, &qword_2380357C0);
      v288 = (v278 + ((v375 + v277 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v288 = v392;
      v288[1] = v273;
      sub_237FFC8DC(v338, v0 + 960);

      v289 = swift_task_alloc();
      *(v0 + 1888) = v289;
      *v289 = v0;
      v289[1] = sub_237FEE484;
      v290 = sub_237FFD128;
      v291 = *(v0 + 1440);
      v292 = v278;
      goto LABEL_72;
    }

    v235 = *(v0 + 1792);
    v236 = *(v0 + 1576);
    v237 = *(v0 + 1440);
    v238 = *(v0 + 472);
    *v327 = *v338;
    *(v0 + 920) = v238;
    *(v0 + 936) = *(v0 + 488);
    *(v0 + 952) = *(v0 + 504);
    *(v0 + 1962) = v370;
    sub_237FF6740(v236, v327, (v0 + 1962), v237, v235);
    sub_237FAB7D4(*(v0 + 1576), type metadata accessor for _DeviceActivityData.User);
    sub_237FFC838(v338);
    sub_237FA5750(*(v0 + 1384), &qword_27DEE50C8, &qword_2380357C0);
    sub_238031604();
    sub_238031604();
    if (sub_238031A04())
    {
      break;
    }

    v160 = *(v0 + 1816);
    v161 = *(v0 + 1704);
    v162 = *(v0 + 1632);
    v390 = *(v0 + 1464);
    v163 = *(v0 + 1448);
    v164 = *(v0 + 1440);
    v165 = *(v0 + 1424);
    v166 = *(v0 + 1416);
    v167 = *(v0 + 1408);
    v160(*(v0 + 1696), v162);
    v160(v161, v162);
    v168 = *(v165 + 8);
    v168(v164, v166);
    v168(v163, v166);
    sub_237FA5750(v167, &qword_27DEE50C8, &qword_2380357C0);
    v168(v390, v166);
LABEL_51:
    v159 = *(v0 + 1840) + 1;
    if (v159 == *(v0 + 1832))
    {

      goto LABEL_69;
    }
  }

  v382 = *(v0 + 1848);
  v373 = *(v0 + 1965);
  v239 = *(v0 + 1800);
  v240 = *(v0 + 1712);
  v241 = *(v0 + 1704);
  v242 = *(v0 + 1632);
  v243 = *(v0 + 1416);
  v244 = *(v0 + 1368);
  v239(*(v0 + 1720), *(v0 + 1696), v242);
  v239(v240, v241, v242);
  sub_238031614();
  *(v0 + 1963) = v373;
  v382(v244, 1, 1, v243);
  v245 = swift_task_alloc();
  *(v0 + 1904) = v245;
  *v245 = v0;
  v245[1] = sub_237FF0C78;
  v246 = *(v0 + 1792);
  v247 = *(v0 + 1584);
  v248 = *(v0 + 1432);
  v249 = *(v0 + 1368);

  return sub_237FF59F0(v247, (v0 + 1963), v248, v249, v246);
}

uint64_t sub_237FEE484()
{
  *(*v1 + 1896) = v0;

  if (v0)
  {

    v2 = sub_237FF0708;
  }

  else
  {
    v2 = sub_237FEE5B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_237FEE5B4()
{
  v1 = *(v0 + 1576);
  v2 = v1[1];
  v230 = (v0 + 456);
  if (v2)
  {
    v3 = *(v0 + 1896);
    v4 = *(v0 + 1232);
    v5 = *v1;
    v6 = v4[15];
    v7 = v4[16];
    __swift_project_boxed_opaque_existential_1(v4 + 12, v6);
    v8 = *(v0 + 456);
    v9 = *(v0 + 464);
    *(v0 + 1964) = 0;
    (*(v7 + 56))(v5, v2, v8, v9, v0 + 1964, v6, v7);
    v10 = *(v0 + 1872);
    if (v3)
    {
      v272 = *(v0 + 1864);
      v11 = *(v0 + 1800);
      v12 = *(v0 + 1792);
      v13 = *(v0 + 1632);
      v14 = *(v0 + 1576);
      v15 = *(v0 + 1288);
      v16 = *(v0 + 1240);

      sub_237FFD060(v14, v15 + v16[6], type metadata accessor for _DeviceActivityData.User);
      v11(v15 + v16[9], v12, v13);
      *(v15 + 16) = xmmword_238033ED0;
      *v15 = v272;
      *(v15 + 8) = v10;
      v17 = v0 + 456;
      sub_237FFC8DC(v230, v0 + 1072);
      sub_237FA38D0(0, 0xF000000000000000);
      *(v15 + 16) = xmmword_238033ED0;
      v18 = v15 + v16[7];
      v19 = *v230;
      v20 = *(v0 + 472);
      v21 = *(v0 + 488);
      *(v18 + 48) = *(v0 + 504);
      *(v18 + 16) = v20;
      *(v18 + 32) = v21;
      *v18 = v19;
      *(v15 + v16[8]) = 0;
    }

    else
    {
      v114 = *(v0 + 1792);
      v115 = *(v0 + 1640);
      v116 = *(v0 + 1632);
      v117 = *(v0 + 1576);
      v118 = *(v0 + 1288);
      v119 = *(v0 + 1280);
      v120 = *(v0 + 1240);

      sub_237FAB70C(v119, v118, type metadata accessor for _DeviceActivityData.Metadata);
      (*(v115 + 24))(v118 + v120[9], v114, v116);
      sub_237FFC938(v117, v118 + v120[6]);
      v121 = v118 + v120[7];
      v17 = v0 + 456;
      sub_237FFC8DC(v230, v0 + 1128);

      v122 = *v230;
      v123 = *(v0 + 472);
      v124 = *(v0 + 488);
      *(v121 + 48) = *(v0 + 504);
      *(v121 + 16) = v123;
      *(v121 + 32) = v124;
      *v121 = v122;
    }

    v25 = (v0 + 1288);
    v125 = *(v0 + 1288);
    v126 = *(v0 + 1232);
    v127 = v126[15];
    v128 = v126[16];
    __swift_project_boxed_opaque_existential_1(v126 + 12, v127);
    (*(v128 + 64))(v125, v127, v128);
  }

  else
  {
    v273 = *(v0 + 1896);
    v242 = *(v0 + 1864);
    v247 = *(v0 + 1872);
    v22 = *(v0 + 1800);
    v23 = *(v0 + 1792);
    v24 = *(v0 + 1632);
    v25 = (v0 + 1272);
    v26 = *(v0 + 1272);
    v27 = *(v0 + 1240);
    v28 = *(v0 + 1232);
    v258 = v28[16];
    v265 = v28[15];
    __swift_project_boxed_opaque_existential_1(v28 + 12, v265);
    sub_237FFD060(v1, v26 + v27[6], type metadata accessor for _DeviceActivityData.User);
    v22(v26 + v27[9], v23, v24);
    *(v26 + 16) = xmmword_238033ED0;
    *v26 = v242;
    *(v26 + 8) = v247;
    sub_237FFC8DC(v0 + 456, v0 + 1016);
    sub_237FA38D0(0, 0xF000000000000000);
    *(v26 + 16) = xmmword_238033ED0;
    v29 = v26 + v27[7];
    v30 = *(v0 + 456);
    v31 = *(v0 + 472);
    v32 = *(v0 + 488);
    *(v29 + 48) = *(v0 + 504);
    *(v29 + 16) = v31;
    *(v29 + 32) = v32;
    *v29 = v30;
    *(v26 + v27[8]) = 0;
    (v258[8])(v26, v265);
    v17 = v0 + 456;
    if (v273)
    {
      sub_237FAB7D4(*v25, type metadata accessor for _DeviceActivityData.Metadata);
      v129 = *(v0 + 1576);
      sub_237FFC838(v17);
      sub_237FAB7D4(v129, type metadata accessor for _DeviceActivityData.User);
      v130 = *(v0 + 1816);
      v260 = *(v0 + 1784);
      v267 = *(v0 + 1792);
      v229 = *(v0 + 1752);
      v231 = *(v0 + 1760);
      v227 = *(v0 + 1744);
      v131 = *(v0 + 1632);
      v234 = *(v0 + 1608);
      v276 = *(v0 + 1584);
      v252 = *(v0 + 1528);
      v255 = *(v0 + 1776);
      v237 = *(v0 + 1512);
      v240 = *(v0 + 1768);
      v245 = *(v0 + 1504);
      v223 = *(v0 + 1464);
      v225 = *(v0 + 1472);
      v132 = *(v0 + 1448);
      v133 = *(v0 + 1440);
      v134 = *(v0 + 1424);
      v135 = *(v0 + 1416);
      v222 = *(v0 + 1408);
      sub_237FA5750(*(v0 + 1384), &qword_27DEE50C8, &qword_2380357C0);

      v136 = *(v134 + 8);
      v136(v133, v135);
      v136(v132, v135);
      sub_237FA5750(v222, &qword_27DEE50C8, &qword_2380357C0);
      v136(v223, v135);
      v136(v225, v135);
      v130(v227, v131);
      v130(v229, v131);
      v130(v231, v131);
      sub_237FA5750(v234, &qword_27DEE51E0, &qword_2380365F0);
      v130(v240, v131);
      v130(v255, v131);
      (*(v237 + 8))(v252, v245);
      v130(v260, v131);
      v130(v267, v131);
      sub_237FAB7D4(v276, type metadata accessor for _DeviceActivityData.User);

      v148 = *(v0 + 8);
LABEL_26:

      return v148();
    }
  }

  v254 = (v0 + 568);
  v259 = (v0 + 512);
  v218 = (v0 + 904);
  v219 = (v0 + 848);
  v33 = *v25;
  v34 = *(v0 + 1576);
  sub_237FFC838(v17);
  sub_237FAB7D4(v33, type metadata accessor for _DeviceActivityData.Metadata);
  sub_237FAB7D4(v34, type metadata accessor for _DeviceActivityData.User);
  while (2)
  {
    sub_237FA5750(*(v0 + 1384), &qword_27DEE50C8, &qword_2380357C0);
    sub_238031604();
    sub_238031604();
    if (sub_238031A04())
    {
      v270 = *(v0 + 1848);
      v263 = *(v0 + 1965);
      v178 = *(v0 + 1800);
      v179 = *(v0 + 1712);
      v180 = *(v0 + 1704);
      v181 = *(v0 + 1632);
      v182 = *(v0 + 1416);
      v183 = *(v0 + 1368);
      v178(*(v0 + 1720), *(v0 + 1696), v181);
      v178(v179, v180, v181);
      sub_238031614();
      *(v0 + 1963) = v263;
      v270(v183, 1, 1, v182);
      v184 = swift_task_alloc();
      *(v0 + 1904) = v184;
      *v184 = v0;
      v184[1] = sub_237FF0C78;
      v185 = *(v0 + 1792);
      v186 = *(v0 + 1584);
      v187 = *(v0 + 1432);
      v188 = *(v0 + 1368);

      return sub_237FF59F0(v186, (v0 + 1963), v187, v188, v185);
    }

    else
    {
      v35 = *(v0 + 1816);
      v36 = *(v0 + 1704);
      v37 = *(v0 + 1632);
      v274 = *(v0 + 1464);
      v38 = *(v0 + 1448);
      v39 = *(v0 + 1440);
      v40 = *(v0 + 1424);
      v41 = *(v0 + 1416);
      v42 = *(v0 + 1408);
      v35(*(v0 + 1696), v37);
      v35(v36, v37);
      v43 = *(v40 + 8);
      v43(v39, v41);
      v43(v38, v41);
      sub_237FA5750(v42, &qword_27DEE50C8, &qword_2380357C0);
      for (result = (v43)(v274, v41); ; result = (v43)(v95, v97))
      {
        v45 = *(v0 + 1840) + 1;
        if (v45 == *(v0 + 1832))
        {

          v137 = *(v0 + 1816);
          v277 = *(v0 + 1792);
          v256 = *(v0 + 1776);
          v261 = *(v0 + 1784);
          v241 = *(v0 + 1768);
          v138 = *(v0 + 1760);
          v139 = *(v0 + 1752);
          v140 = *(v0 + 1744);
          v141 = *(v0 + 1632);
          v142 = *(v0 + 1608);
          v268 = *(v0 + 1584);
          v143 = *(v0 + 1512);
          v246 = *(v0 + 1504);
          v253 = *(v0 + 1528);
          v43(*(v0 + 1472), *(v0 + 1416));
          v137(v140, v141);
          v137(v139, v141);
          v137(v138, v141);
          sub_237FA5750(v142, &qword_27DEE51E0, &qword_2380365F0);
          v137(v241, v141);
          v137(v256, v141);
          (*(v143 + 8))(v253, v246);
          v137(v261, v141);
          v137(v277, v141);
          sub_237FAB7D4(v268, type metadata accessor for _DeviceActivityData.User);

          v148 = *(v0 + 8);
          goto LABEL_26;
        }

        *(v0 + 1840) = v45;
        v46 = *(v0 + 1824);
        if (v45 >= *(v46 + 16))
        {
          __break(1u);
          return result;
        }

        v47 = *(v0 + 1424);
        v48 = *(v0 + 1416);
        v49 = *(v0 + 1408);
        v50 = *(v47 + 56);
        v51 = *(v46 + v45 + 32);
        *(v0 + 1965) = v51;
        *(v0 + 1848) = v50;
        *(v0 + 1856) = (v47 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
        v275 = v50;
        v50(v49, 1, 1, v48);
        v266 = v51;
        if (v51)
        {
          if (v51 == 1)
          {
            v52 = *(v0 + 1464);
            v53 = *(v0 + 1328);
            v54 = *(v0 + 1320);
            v55 = *(v0 + 1312);
            v56 = *(v0 + 1296);
            (*(*(v0 + 1512) + 56))(*(v0 + 1304), 1, 1, *(v0 + 1504));
            v57 = sub_238031B94();
            (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
            sub_2380316B4();
            DateInterval.rounded(to:)(v53, v52);
            (*(v54 + 8))(v53, v55);
          }

          else
          {
            v70 = *(v0 + 1520);
            v71 = *(v0 + 1512);
            v72 = *(v0 + 1504);
            v239 = *(v0 + 1464);
            v73 = *(v0 + 1328);
            v74 = *(v0 + 1320);
            v250 = *(v0 + 1312);
            v75 = *(v0 + 1304);
            v76 = *(v0 + 1296);
            sub_238031B44();
            (*(v71 + 56))(v75, 1, 1, v72);
            v77 = sub_238031B94();
            (*(*(v77 - 8) + 56))(v76, 1, 1, v77);
            sub_238031AE4();
            sub_2380316B4();
            DateInterval.rounded(to:)(v73, v239);
            (*(v74 + 8))(v73, v250);
            (*(v71 + 8))(v70, v72);
          }
        }

        else
        {
          v58 = *(v0 + 1720);
          v243 = *(v0 + 1632);
          v248 = *(v0 + 1816);
          v59 = *(v0 + 1464);
          v60 = *(v0 + 1328);
          v61 = *(v0 + 1320);
          v232 = *(v0 + 1312);
          v62 = *(v0 + 1296);
          v228 = *(*(v0 + 1512) + 56);
          v228(*(v0 + 1304), 1, 1, *(v0 + 1504));
          v63 = sub_238031B94();
          v224 = *(*(v63 - 8) + 56);
          v226 = v63;
          v224(v62, 1, 1);
          sub_2380316B4();
          DateInterval.rounded(to:)(v60, v59);
          v221 = *(v61 + 8);
          v221(v60, v232);
          sub_238031634();
          v64 = sub_238031A04();
          v248(v58, v243);
          if (v64)
          {
            v65 = *(v0 + 1504);
            v66 = *(v0 + 1456);
            v244 = *(v0 + 1416);
            v249 = *(v0 + 1408);
            v220 = *(v0 + 1400);
            v67 = *(v0 + 1328);
            v235 = *(v0 + 1312);
            v238 = *(v0 + 1424);
            v68 = *(v0 + 1304);
            v69 = *(v0 + 1296);
            sub_238031634();
            sub_238031624();
            v228(v68, 1, 1, v65);
            (v224)(v69, 1, 1, v226);
            sub_2380316B4();
            DateInterval.rounded(to:)(v67, v220);
            v221(v67, v235);
            (*(v238 + 8))(v66, v244);
            sub_237FA5750(v249, &qword_27DEE50C8, &qword_2380357C0);
            v275(v220, 0, 1, v244);
            sub_237FA5AE0(v220, v249, &qword_27DEE50C8, &qword_2380357C0);
          }
        }

        v78 = *(v0 + 1424);
        v79 = *(v0 + 1416);
        v80 = *(v0 + 1392);
        sub_237FA90E4(*(v0 + 1408), v80, &qword_27DEE50C8, &qword_2380357C0);
        if ((*(v78 + 48))(v80, 1, v79) != 1)
        {
          break;
        }

        v81 = *(v0 + 1560);
        v82 = *(v0 + 1416);
        v83 = *(v0 + 1360);
        v84 = *(v0 + 1232);
        sub_237FA5750(*(v0 + 1392), &qword_27DEE50C8, &qword_2380357C0);
        v275(v83, 1, 1, v82);
        DeviceActivityDataSource.localUser.getter(v81);
        v85 = v84[15];
        v86 = v84[16];
        __swift_project_boxed_opaque_existential_1(v84 + 12, v85);
        v87 = (*(v86 + 120))(v85, v86);
        sub_237FE82DC(v87, v88, v259);

        v89 = *(v0 + 528);
        *(v0 + 400) = *v259;
        *(v0 + 416) = v89;
        *(v0 + 432) = *(v0 + 544);
        *(v0 + 448) = *(v0 + 560);
        if (!v266)
        {
          v144 = *(v0 + 1232);
          v145 = v144[15];
          v146 = v144[16];
          __swift_project_boxed_opaque_existential_1(v144 + 12, v145);
          v147 = (*(v146 + 120))(v145, v146);
          v149 = *(v0 + 1560);
          v150 = *(v0 + 1552);
          v151 = *(v0 + 1544);
          v152 = *(v0 + 1536);
          v153 = *(v0 + 1360);
          v154 = *(v0 + 1352);
          v262 = *(v0 + 1344);
          v269 = v154;
          v155 = *(v0 + 1336);
          v156 = *(v0 + 1232);
          *(v0 + 1184) = v147;
          *(v0 + 1192) = v157;
          MEMORY[0x2383E5050](95, 0xE100000000000000);
          MEMORY[0x2383E5050](0x796C72756F48, 0xE600000000000000);
          v278 = *(v0 + 1184);
          *(v0 + 1920) = v278;
          v158 = *(v0 + 1192);
          *(v0 + 1928) = v158;
          sub_237FFD060(v149, v150, type metadata accessor for _DeviceActivityData.User);
          sub_237FFC88C(v156, v0 + 16);
          sub_237FA90E4(v153, v154, &qword_27DEE50C8, &qword_2380357C0);
          v159 = (*(v152 + 80) + 16) & ~*(v152 + 80);
          v160 = (v151 + v159 + 7) & 0xFFFFFFFFFFFFFFF8;
          v161 = (v160 + 199) & 0xFFFFFFFFFFFFFFF8;
          v162 = (*(v155 + 80) + v161 + 56) & ~*(v155 + 80);
          v163 = swift_allocObject();
          *(v0 + 1936) = v163;
          sub_237FAB70C(v150, v163 + v159, type metadata accessor for _DeviceActivityData.User);
          v164 = (v163 + v160);
          v165 = *(v0 + 128);
          v164[6] = *(v0 + 112);
          v164[7] = v165;
          v166 = *(v0 + 96);
          v164[4] = *(v0 + 80);
          v164[5] = v166;
          v167 = *(v0 + 192);
          v164[10] = *(v0 + 176);
          v164[11] = v167;
          v168 = *(v0 + 160);
          v164[8] = *(v0 + 144);
          v164[9] = v168;
          v169 = *(v0 + 32);
          *v164 = *(v0 + 16);
          v164[1] = v169;
          v170 = *(v0 + 64);
          v164[2] = *(v0 + 48);
          v164[3] = v170;
          v171 = v163 + v161;
          *(v171 + 48) = *(v0 + 448);
          v172 = *(v0 + 432);
          *(v171 + 16) = *(v0 + 416);
          *(v171 + 32) = v172;
          *v171 = *(v0 + 400);
          sub_237FA5AE0(v269, v163 + v162, &qword_27DEE50C8, &qword_2380357C0);
          v173 = (v163 + ((v262 + v162 + 7) & 0xFFFFFFFFFFFFFFF8));
          *v173 = v278;
          v173[1] = v158;
          sub_237FFC8DC(v0 + 400, v0 + 624);

          v174 = swift_task_alloc();
          *(v0 + 1944) = v174;
          *v174 = v0;
          v174[1] = sub_237FF2C14;
          v175 = sub_237FFC8C4;
          v176 = *(v0 + 1464);
          v177 = v163;
          goto LABEL_29;
        }

        v90 = *(v0 + 1792);
        v91 = *(v0 + 1560);
        v92 = *(v0 + 1464);
        v93 = *(v0 + 416);
        *v254 = *(v0 + 400);
        *(v0 + 584) = v93;
        *(v0 + 600) = *(v0 + 432);
        *(v0 + 616) = *(v0 + 448);
        *(v0 + 1960) = v266;
        sub_237FF6740(v91, v254, (v0 + 1960), v92, v90);
        v94 = *(v0 + 1560);
        sub_237FA5750(*(v0 + 1360), &qword_27DEE50C8, &qword_2380357C0);
        sub_237FAB7D4(v94, type metadata accessor for _DeviceActivityData.User);
        sub_237FFC838(v0 + 400);
        v95 = *(v0 + 1464);
        v96 = *(v0 + 1424);
        v97 = *(v0 + 1416);
        sub_237FA5750(*(v0 + 1408), &qword_27DEE50C8, &qword_2380357C0);
        v43 = *(v96 + 8);
      }

      v233 = *(v0 + 1784);
      v236 = *(v0 + 1800);
      v98 = *(v0 + 1720);
      v99 = *(v0 + 1632);
      v251 = *(v0 + 1576);
      v100 = *(v0 + 1448);
      v101 = *(v0 + 1424);
      v102 = *(v0 + 1416);
      v103 = *(v0 + 1384);
      v104 = *(v0 + 1232);
      (*(v101 + 32))(v100, *(v0 + 1392), v102);
      v236(v98, v233, v99);
      sub_238031604();
      sub_238031614();
      (*(v101 + 16))(v103, v100, v102);
      v275(v103, 0, 1, v102);
      DeviceActivityDataSource.localUser.getter(v251);
      v105 = v104[15];
      v106 = v104[16];
      __swift_project_boxed_opaque_existential_1(v104 + 12, v105);
      v107 = (*(v106 + 120))(v105, v106);
      sub_237FE82DC(v107, v108, v219);

      v109 = *(v0 + 864);
      *v230 = *v219;
      *(v0 + 472) = v109;
      *(v0 + 488) = *(v0 + 880);
      *(v0 + 504) = *(v0 + 896);
      if (v266)
      {
        v110 = *(v0 + 1792);
        v111 = *(v0 + 1576);
        v112 = *(v0 + 1440);
        v113 = *(v0 + 472);
        *v218 = *v230;
        *(v0 + 920) = v113;
        *(v0 + 936) = *(v0 + 488);
        *(v0 + 952) = *(v0 + 504);
        *(v0 + 1962) = v266;
        sub_237FF6740(v111, v218, (v0 + 1962), v112, v110);
        sub_237FAB7D4(*(v0 + 1576), type metadata accessor for _DeviceActivityData.User);
        sub_237FFC838(v230);
        continue;
      }

      v189 = *(v0 + 1232);
      v190 = v189[15];
      v191 = v189[16];
      __swift_project_boxed_opaque_existential_1(v189 + 12, v190);
      v192 = (*(v191 + 120))(v190, v191);
      v193 = *(v0 + 1576);
      v194 = *(v0 + 1568);
      v195 = *(v0 + 1544);
      v196 = *(v0 + 1536);
      v197 = *(v0 + 1384);
      v198 = *(v0 + 1376);
      v264 = *(v0 + 1344);
      v271 = v198;
      v257 = *(v0 + 1336);
      v199 = *(v0 + 1232);
      *(v0 + 1200) = v192;
      *(v0 + 1208) = v200;
      MEMORY[0x2383E5050](95, 0xE100000000000000);
      MEMORY[0x2383E5050](0x796C72756F48, 0xE600000000000000);
      v279 = *(v0 + 1200);
      *(v0 + 1864) = v279;
      v201 = *(v0 + 1208);
      *(v0 + 1872) = v201;
      sub_237FFD060(v193, v194, type metadata accessor for _DeviceActivityData.User);
      sub_237FFC88C(v199, v0 + 208);
      sub_237FA90E4(v197, v198, &qword_27DEE50C8, &qword_2380357C0);
      v202 = (*(v196 + 80) + 16) & ~*(v196 + 80);
      v203 = (v195 + v202 + 7) & 0xFFFFFFFFFFFFFFF8;
      v204 = (v203 + 199) & 0xFFFFFFFFFFFFFFF8;
      v205 = (*(v257 + 80) + v204 + 56) & ~*(v257 + 80);
      v206 = swift_allocObject();
      *(v0 + 1880) = v206;
      sub_237FAB70C(v194, v206 + v202, type metadata accessor for _DeviceActivityData.User);
      v207 = (v206 + v203);
      v208 = *(v0 + 320);
      v207[6] = *(v0 + 304);
      v207[7] = v208;
      v209 = *(v0 + 288);
      v207[4] = *(v0 + 272);
      v207[5] = v209;
      v210 = *(v0 + 384);
      v207[10] = *(v0 + 368);
      v207[11] = v210;
      v211 = *(v0 + 352);
      v207[8] = *(v0 + 336);
      v207[9] = v211;
      v212 = *(v0 + 224);
      *v207 = *(v0 + 208);
      v207[1] = v212;
      v213 = *(v0 + 256);
      v207[2] = *(v0 + 240);
      v207[3] = v213;
      v214 = v206 + v204;
      *(v214 + 48) = *(v0 + 504);
      v215 = *(v0 + 488);
      *(v214 + 16) = *(v0 + 472);
      *(v214 + 32) = v215;
      *v214 = *v230;
      sub_237FA5AE0(v271, v206 + v205, &qword_27DEE50C8, &qword_2380357C0);
      v216 = (v206 + ((v264 + v205 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v216 = v279;
      v216[1] = v201;
      sub_237FFC8DC(v230, v0 + 960);

      v217 = swift_task_alloc();
      *(v0 + 1888) = v217;
      *v217 = v0;
      v217[1] = sub_237FEE484;
      v175 = sub_237FFD128;
      v176 = *(v0 + 1440);
      v177 = v206;
LABEL_29:

      return sub_237FF9244(v176, v175, v177);
    }
  }
}

uint64_t sub_237FF0708()
{
  v1 = v0[197];
  sub_237FFC838((v0 + 57));
  sub_237FAB7D4(v1, type metadata accessor for _DeviceActivityData.User);
  v2 = v0[227];
  v22 = v0[222];
  v23 = v0[223];
  v15 = v0[219];
  v16 = v0[220];
  v14 = v0[218];
  v3 = v0[204];
  v17 = v0[201];
  v18 = v0[221];
  v24 = v0[198];
  v25 = v0[224];
  v19 = v0[189];
  v20 = v0[188];
  v21 = v0[191];
  v12 = v0[183];
  v13 = v0[184];
  v4 = v0[181];
  v5 = v0[180];
  v6 = v0[178];
  v7 = v0[177];
  v8 = v0[176];
  sub_237FA5750(v0[173], &qword_27DEE50C8, &qword_2380357C0);

  v9 = *(v6 + 8);
  v9(v5, v7);
  v9(v4, v7);
  sub_237FA5750(v8, &qword_27DEE50C8, &qword_2380357C0);
  v9(v12, v7);
  v9(v13, v7);
  v2(v14, v3);
  v2(v15, v3);
  v2(v16, v3);
  sub_237FA5750(v17, &qword_27DEE51E0, &qword_2380365F0);
  v2(v18, v3);
  v2(v22, v3);
  (*(v19 + 8))(v21, v20);
  v2(v23, v3);
  v2(v25, v3);
  sub_237FAB7D4(v24, type metadata accessor for _DeviceActivityData.User);

  v10 = v0[1];

  return v10();
}

uint64_t sub_237FF0C78()
{
  v2 = *v1;
  *(*v1 + 1912) = v0;

  sub_237FA5750(*(v2 + 1368), &qword_27DEE50C8, &qword_2380357C0);
  if (v0)
  {

    v3 = sub_237FF5474;
  }

  else
  {
    v3 = sub_237FF0DC8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_237FF0DC8()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1704);
  v3 = *(v0 + 1696);
  v4 = *(v0 + 1632);
  v251 = *(v0 + 1448);
  v5 = *(v0 + 1440);
  v6 = *(v0 + 1416);
  v259 = *(v0 + 1408);
  v267 = *(v0 + 1464);
  v7 = *(*(v0 + 1424) + 8);
  v7(*(v0 + 1432), v6);
  v1(v3, v4);
  v1(v2, v4);
  v7(v5, v6);
  v7(v251, v6);
  sub_237FA5750(v259, &qword_27DEE50C8, &qword_2380357C0);
  result = (v7)(v267, v6);
  v9 = *(v0 + 1840) + 1;
  if (v9 != *(v0 + 1832))
  {
    v217 = (v0 + 512);
    v220 = (v0 + 456);
    v212 = (v0 + 568);
    v214 = (v0 + 848);
    v210 = (v0 + 904);
    v18 = *(v0 + 1912);
    do
    {
      *(v0 + 1840) = v9;
      v25 = *(v0 + 1824);
      if (v9 >= *(v25 + 16))
      {
        __break(1u);
        return result;
      }

      v26 = *(v0 + 1424);
      v27 = *(v0 + 1416);
      v28 = *(v0 + 1408);
      v29 = *(v26 + 56);
      v30 = *(v25 + v9 + 32);
      *(v0 + 1965) = v30;
      *(v0 + 1848) = v29;
      *(v0 + 1856) = (v26 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v261 = v29;
      v29(v28, 1, 1, v27);
      v247 = v30;
      v253 = v18;
      if (v30)
      {
        if (v30 == 1)
        {
          v31 = *(v0 + 1464);
          v32 = *(v0 + 1328);
          v33 = *(v0 + 1320);
          v34 = *(v0 + 1312);
          v35 = *(v0 + 1296);
          (*(*(v0 + 1512) + 56))(*(v0 + 1304), 1, 1, *(v0 + 1504));
          v36 = sub_238031B94();
          (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
          LOBYTE(v204) = 1;
          LOBYTE(v203) = 1;
          v202 = 0;
          LOBYTE(v201) = 0;
          LOBYTE(v200) = 0;
          LOBYTE(v199) = 0;
          LOBYTE(v198) = 0;
          LOBYTE(v197) = 1;
          sub_2380316B4();
          DateInterval.rounded(to:)(v32, v31);
          (*(v33 + 8))(v32, v34);
        }

        else
        {
          v49 = *(v0 + 1520);
          v50 = *(v0 + 1512);
          v51 = *(v0 + 1504);
          v52 = *(v0 + 1464);
          v53 = *(v0 + 1328);
          v54 = *(v0 + 1320);
          v242 = *(v0 + 1312);
          v55 = *(v0 + 1304);
          v56 = *(v0 + 1296);
          sub_238031B44();
          (*(v50 + 56))(v55, 1, 1, v51);
          v57 = sub_238031B94();
          (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
          LOBYTE(v204) = 1;
          LOBYTE(v203) = 0;
          v202 = sub_238031AE4();
          LOBYTE(v201) = 0;
          LOBYTE(v200) = 0;
          LOBYTE(v199) = 0;
          LOBYTE(v198) = 0;
          LOBYTE(v197) = 1;
          sub_2380316B4();
          DateInterval.rounded(to:)(v53, v52);
          (*(v54 + 8))(v53, v242);
          (*(v50 + 8))(v49, v51);
        }
      }

      else
      {
        v37 = *(v0 + 1720);
        v236 = *(v0 + 1632);
        v240 = *(v0 + 1816);
        v38 = *(v0 + 1464);
        v39 = *(v0 + 1328);
        v40 = *(v0 + 1320);
        v223 = *(v0 + 1312);
        v41 = *(v0 + 1296);
        v208 = *(*(v0 + 1512) + 56);
        v208(*(v0 + 1304), 1, 1, *(v0 + 1504));
        v42 = sub_238031B94();
        v207 = *(*(v42 - 8) + 56);
        v207(v41, 1, 1, v42);
        LOBYTE(v204) = 1;
        LOBYTE(v203) = 1;
        v202 = 0;
        LOBYTE(v201) = 0;
        LOBYTE(v200) = 0;
        LOBYTE(v199) = 0;
        LOBYTE(v198) = 1;
        LOBYTE(v197) = 1;
        sub_2380316B4();
        DateInterval.rounded(to:)(v39, v38);
        v43 = *(v40 + 8);
        v43(v39, v223);
        sub_238031634();
        v44 = sub_238031A04();
        v240(v37, v236);
        if (v44)
        {
          v45 = *(v0 + 1456);
          v227 = *(v0 + 1424);
          v232 = *(v0 + 1416);
          v241 = *(v0 + 1408);
          v205 = *(v0 + 1504);
          v206 = *(v0 + 1400);
          v46 = *(v0 + 1328);
          v224 = *(v0 + 1312);
          v47 = *(v0 + 1304);
          v48 = *(v0 + 1296);
          sub_238031634();
          sub_238031624();
          v208(v47, 1, 1, v205);
          v207(v48, 1, 1, v42);
          LOBYTE(v204) = 1;
          LOBYTE(v203) = 1;
          v202 = 0;
          LOBYTE(v201) = 0;
          LOBYTE(v200) = 0;
          LOBYTE(v199) = 0;
          LOBYTE(v198) = 1;
          LOBYTE(v197) = 1;
          sub_2380316B4();
          DateInterval.rounded(to:)(v46, v206);
          v43(v46, v224);
          (*(v227 + 8))(v45, v232);
          sub_237FA5750(v241, &qword_27DEE50C8, &qword_2380357C0);
          v261(v206, 0, 1, v232);
          sub_237FA5AE0(v206, v241, &qword_27DEE50C8, &qword_2380357C0);
        }
      }

      v58 = *(v0 + 1424);
      v59 = *(v0 + 1416);
      v60 = *(v0 + 1392);
      sub_237FA90E4(*(v0 + 1408), v60, &qword_27DEE50C8, &qword_2380357C0);
      if ((*(v58 + 48))(v60, 1, v59) == 1)
      {
        v61 = *(v0 + 1560);
        v62 = *(v0 + 1416);
        v63 = *(v0 + 1360);
        v64 = *(v0 + 1232);
        sub_237FA5750(*(v0 + 1392), &qword_27DEE50C8, &qword_2380357C0);
        v261(v63, 1, 1, v62);
        DeviceActivityDataSource.localUser.getter(v61);
        v65 = v64[15];
        v66 = v64[16];
        __swift_project_boxed_opaque_existential_1(v64 + 12, v65);
        v67 = (*(v66 + 120))(v65, v66);
        if (v253)
        {
          v109 = *(v0 + 1560);
          sub_237FA5750(*(v0 + 1360), &qword_27DEE50C8, &qword_2380357C0);

          sub_237FAB7D4(v109, type metadata accessor for _DeviceActivityData.User);
          v125 = *(v0 + 1816);
          v255 = *(v0 + 1784);
          v263 = *(v0 + 1792);
          v222 = *(v0 + 1752);
          v226 = *(v0 + 1760);
          v219 = *(v0 + 1744);
          v126 = *(v0 + 1632);
          v230 = *(v0 + 1608);
          v234 = *(v0 + 1768);
          v270 = *(v0 + 1584);
          v245 = *(v0 + 1528);
          v249 = *(v0 + 1776);
          v127 = *(v0 + 1512);
          v238 = *(v0 + 1504);
          v216 = *(v0 + 1472);
          v128 = *(v0 + 1464);
          v129 = *(v0 + 1424);
          v130 = *(v0 + 1416);
          sub_237FA5750(*(v0 + 1408), &qword_27DEE50C8, &qword_2380357C0);
          v131 = *(v129 + 8);
          v131(v128, v130);
          v131(v216, v130);
          v125(v219, v126);
          v125(v222, v126);
          v125(v226, v126);
          sub_237FA5750(v230, &qword_27DEE51E0, &qword_2380365F0);
          v125(v234, v126);
          v125(v249, v126);
          (*(v127 + 8))(v245, v238);
          v125(v255, v126);
          v125(v263, v126);
LABEL_24:
          sub_237FAB7D4(v270, type metadata accessor for _DeviceActivityData.User);

          v17 = *(v0 + 8);
          goto LABEL_25;
        }

        sub_237FE82DC(v67, v68, v217);

        v69 = *(v0 + 528);
        *(v0 + 400) = *v217;
        *(v0 + 416) = v69;
        *(v0 + 432) = *(v0 + 544);
        *(v0 + 448) = *(v0 + 560);
        if (!v247)
        {
          v121 = *(v0 + 1232);
          v122 = v121[15];
          v123 = v121[16];
          __swift_project_boxed_opaque_existential_1(v121 + 12, v122);
          v124 = (*(v123 + 120))(v122, v123);
          v171 = *(v0 + 1560);
          v172 = *(v0 + 1552);
          v173 = *(v0 + 1544);
          v174 = *(v0 + 1536);
          v175 = *(v0 + 1360);
          v176 = *(v0 + 1352);
          v258 = *(v0 + 1344);
          v266 = v176;
          v177 = *(v0 + 1336);
          v178 = *(v0 + 1232);
          *(v0 + 1184) = v124;
          *(v0 + 1192) = v179;
          MEMORY[0x2383E5050](95, 0xE100000000000000);
          MEMORY[0x2383E5050](0x796C72756F48, 0xE600000000000000);
          v272 = *(v0 + 1184);
          *(v0 + 1920) = v272;
          v180 = *(v0 + 1192);
          *(v0 + 1928) = v180;
          sub_237FFD060(v171, v172, type metadata accessor for _DeviceActivityData.User);
          sub_237FFC88C(v178, v0 + 16);
          sub_237FA90E4(v175, v176, &qword_27DEE50C8, &qword_2380357C0);
          v181 = (*(v174 + 80) + 16) & ~*(v174 + 80);
          v182 = (v173 + v181 + 7) & 0xFFFFFFFFFFFFFFF8;
          v183 = (v182 + 199) & 0xFFFFFFFFFFFFFFF8;
          v184 = (*(v177 + 80) + v183 + 56) & ~*(v177 + 80);
          v185 = swift_allocObject();
          *(v0 + 1936) = v185;
          sub_237FAB70C(v172, v185 + v181, type metadata accessor for _DeviceActivityData.User);
          v186 = (v185 + v182);
          v187 = *(v0 + 128);
          v186[6] = *(v0 + 112);
          v186[7] = v187;
          v188 = *(v0 + 96);
          v186[4] = *(v0 + 80);
          v186[5] = v188;
          v189 = *(v0 + 192);
          v186[10] = *(v0 + 176);
          v186[11] = v189;
          v190 = *(v0 + 160);
          v186[8] = *(v0 + 144);
          v186[9] = v190;
          v191 = *(v0 + 32);
          *v186 = *(v0 + 16);
          v186[1] = v191;
          v192 = *(v0 + 64);
          v186[2] = *(v0 + 48);
          v186[3] = v192;
          v193 = v185 + v183;
          *(v193 + 48) = *(v0 + 448);
          v194 = *(v0 + 432);
          *(v193 + 16) = *(v0 + 416);
          *(v193 + 32) = v194;
          *v193 = *(v0 + 400);
          sub_237FA5AE0(v266, v185 + v184, &qword_27DEE50C8, &qword_2380357C0);
          v195 = (v185 + ((v258 + v184 + 7) & 0xFFFFFFFFFFFFFFF8));
          *v195 = v272;
          v195[1] = v180;
          sub_237FFC8DC(v0 + 400, v0 + 624);

          v196 = swift_task_alloc();
          *(v0 + 1944) = v196;
          *v196 = v0;
          v196[1] = sub_237FF2C14;
          v168 = sub_237FFC8C4;
          v169 = *(v0 + 1464);
          v170 = v185;
          goto LABEL_31;
        }

        v70 = *(v0 + 1792);
        v71 = *(v0 + 1560);
        v72 = *(v0 + 1464);
        v73 = *(v0 + 416);
        *v212 = *(v0 + 400);
        *(v0 + 584) = v73;
        *(v0 + 600) = *(v0 + 432);
        *(v0 + 616) = *(v0 + 448);
        *(v0 + 1960) = v247;
        sub_237FF6740(v71, v212, (v0 + 1960), v72, v70);
        v74 = *(v0 + 1560);
        sub_237FA5750(*(v0 + 1360), &qword_27DEE50C8, &qword_2380357C0);
        sub_237FAB7D4(v74, type metadata accessor for _DeviceActivityData.User);
        sub_237FFC838(v0 + 400);
        v75 = *(v0 + 1464);
        v76 = *(v0 + 1424);
        v77 = *(v0 + 1416);
        sub_237FA5750(*(v0 + 1408), &qword_27DEE50C8, &qword_2380357C0);
        v7 = *(v76 + 8);
        result = (v7)(v75, v77, v78, v79, v80, v81, v82, v83, 0, v197, 0, v198, 0, v199, 0, v200, 0, v201, v202, v203, 0, v204);
      }

      else
      {
        v84 = *(v0 + 1784);
        v85 = *(v0 + 1720);
        v86 = *(v0 + 1632);
        v243 = *(v0 + 1576);
        v87 = *(v0 + 1448);
        v228 = *(v0 + 1800);
        v88 = *(v0 + 1424);
        v89 = *(v0 + 1416);
        v90 = *(v0 + 1384);
        v91 = *(v0 + 1232);
        (*(v88 + 32))(v87, *(v0 + 1392), v89);
        v228(v85, v84, v86);
        sub_238031604();
        sub_238031614();
        (*(v88 + 16))(v90, v87, v89);
        v261(v90, 0, 1, v89);
        DeviceActivityDataSource.localUser.getter(v243);
        v92 = v91[15];
        v93 = v91[16];
        __swift_project_boxed_opaque_existential_1(v91 + 12, v92);
        v94 = (*(v93 + 120))(v92, v93);
        if (v253)
        {
          sub_237FAB7D4(*(v0 + 1576), type metadata accessor for _DeviceActivityData.User);
          v114 = *(v0 + 1816);
          v254 = *(v0 + 1784);
          v262 = *(v0 + 1792);
          v218 = *(v0 + 1752);
          v221 = *(v0 + 1760);
          v215 = *(v0 + 1744);
          v115 = *(v0 + 1632);
          v225 = *(v0 + 1608);
          v270 = *(v0 + 1584);
          v244 = *(v0 + 1528);
          v248 = *(v0 + 1776);
          v229 = *(v0 + 1512);
          v233 = *(v0 + 1768);
          v237 = *(v0 + 1504);
          v211 = *(v0 + 1464);
          v213 = *(v0 + 1472);
          v116 = *(v0 + 1448);
          v117 = *(v0 + 1440);
          v118 = *(v0 + 1424);
          v119 = *(v0 + 1416);
          v209 = *(v0 + 1408);
          sub_237FA5750(*(v0 + 1384), &qword_27DEE50C8, &qword_2380357C0);

          v120 = *(v118 + 8);
          v120(v117, v119);
          v120(v116, v119);
          sub_237FA5750(v209, &qword_27DEE50C8, &qword_2380357C0);
          v120(v211, v119);
          v120(v213, v119);
          v114(v215, v115);
          v114(v218, v115);
          v114(v221, v115);
          sub_237FA5750(v225, &qword_27DEE51E0, &qword_2380365F0);
          v114(v233, v115);
          v114(v248, v115);
          (*(v229 + 8))(v244, v237);
          v114(v254, v115);
          v114(v262, v115);
          goto LABEL_24;
        }

        sub_237FE82DC(v94, v95, v214);

        v96 = *(v0 + 864);
        *v220 = *v214;
        *(v0 + 472) = v96;
        *(v0 + 488) = *(v0 + 880);
        *(v0 + 504) = *(v0 + 896);
        if (!v247)
        {
          v110 = *(v0 + 1232);
          v111 = v110[15];
          v112 = v110[16];
          __swift_project_boxed_opaque_existential_1(v110 + 12, v111);
          v113 = (*(v112 + 120))(v111, v112);
          v143 = *(v0 + 1576);
          v144 = *(v0 + 1568);
          v145 = *(v0 + 1544);
          v146 = *(v0 + 1536);
          v147 = *(v0 + 1384);
          v148 = *(v0 + 1376);
          v257 = *(v0 + 1344);
          v265 = v148;
          v250 = *(v0 + 1336);
          v149 = *(v0 + 1232);
          *(v0 + 1200) = v113;
          *(v0 + 1208) = v150;
          MEMORY[0x2383E5050](95, 0xE100000000000000);
          MEMORY[0x2383E5050](0x796C72756F48, 0xE600000000000000);
          v271 = *(v0 + 1200);
          *(v0 + 1864) = v271;
          v151 = *(v0 + 1208);
          *(v0 + 1872) = v151;
          sub_237FFD060(v143, v144, type metadata accessor for _DeviceActivityData.User);
          sub_237FFC88C(v149, v0 + 208);
          sub_237FA90E4(v147, v148, &qword_27DEE50C8, &qword_2380357C0);
          v152 = (*(v146 + 80) + 16) & ~*(v146 + 80);
          v153 = (v145 + v152 + 7) & 0xFFFFFFFFFFFFFFF8;
          v154 = (v153 + 199) & 0xFFFFFFFFFFFFFFF8;
          v155 = (*(v250 + 80) + v154 + 56) & ~*(v250 + 80);
          v156 = swift_allocObject();
          *(v0 + 1880) = v156;
          sub_237FAB70C(v144, v156 + v152, type metadata accessor for _DeviceActivityData.User);
          v157 = (v156 + v153);
          v158 = *(v0 + 320);
          v157[6] = *(v0 + 304);
          v157[7] = v158;
          v159 = *(v0 + 288);
          v157[4] = *(v0 + 272);
          v157[5] = v159;
          v160 = *(v0 + 384);
          v157[10] = *(v0 + 368);
          v157[11] = v160;
          v161 = *(v0 + 352);
          v157[8] = *(v0 + 336);
          v157[9] = v161;
          v162 = *(v0 + 224);
          *v157 = *(v0 + 208);
          v157[1] = v162;
          v163 = *(v0 + 256);
          v157[2] = *(v0 + 240);
          v157[3] = v163;
          v164 = v156 + v154;
          *(v164 + 48) = *(v0 + 504);
          v165 = *(v0 + 488);
          *(v164 + 16) = *(v0 + 472);
          *(v164 + 32) = v165;
          *v164 = *v220;
          sub_237FA5AE0(v265, v156 + v155, &qword_27DEE50C8, &qword_2380357C0);
          v166 = (v156 + ((v257 + v155 + 7) & 0xFFFFFFFFFFFFFFF8));
          *v166 = v271;
          v166[1] = v151;
          sub_237FFC8DC(v220, v0 + 960);

          v167 = swift_task_alloc();
          *(v0 + 1888) = v167;
          *v167 = v0;
          v167[1] = sub_237FEE484;
          v168 = sub_237FFD128;
          v169 = *(v0 + 1440);
          v170 = v156;
LABEL_31:

          return sub_237FF9244(v169, v168, v170);
        }

        v97 = *(v0 + 1792);
        v98 = *(v0 + 1576);
        v99 = *(v0 + 1440);
        v100 = *(v0 + 472);
        *v210 = *v220;
        *(v0 + 920) = v100;
        *(v0 + 936) = *(v0 + 488);
        *(v0 + 952) = *(v0 + 504);
        *(v0 + 1962) = v247;
        sub_237FF6740(v98, v210, (v0 + 1962), v99, v97);
        sub_237FAB7D4(*(v0 + 1576), type metadata accessor for _DeviceActivityData.User);
        sub_237FFC838(v220);
        sub_237FA5750(*(v0 + 1384), &qword_27DEE50C8, &qword_2380357C0);
        sub_238031604();
        sub_238031604();
        if (sub_238031A04())
        {
          v264 = *(v0 + 1848);
          v256 = *(v0 + 1965);
          v132 = *(v0 + 1800);
          v133 = *(v0 + 1712);
          v134 = *(v0 + 1704);
          v135 = *(v0 + 1632);
          v136 = *(v0 + 1416);
          v137 = *(v0 + 1368);
          v132(*(v0 + 1720), *(v0 + 1696), v135);
          v132(v133, v134, v135);
          sub_238031614();
          *(v0 + 1963) = v256;
          v264(v137, 1, 1, v136);
          v138 = swift_task_alloc();
          *(v0 + 1904) = v138;
          *v138 = v0;
          v138[1] = sub_237FF0C78;
          v139 = *(v0 + 1792);
          v140 = *(v0 + 1584);
          v141 = *(v0 + 1432);
          v142 = *(v0 + 1368);

          return sub_237FF59F0(v140, (v0 + 1963), v141, v142, v139);
        }

        v101 = *(v0 + 1816);
        v102 = *(v0 + 1704);
        v103 = *(v0 + 1632);
        v269 = *(v0 + 1464);
        v104 = *(v0 + 1448);
        v105 = *(v0 + 1440);
        v106 = *(v0 + 1424);
        v107 = *(v0 + 1416);
        v108 = *(v0 + 1408);
        v101(*(v0 + 1696), v103);
        v101(v102, v103);
        v7 = *(v106 + 8);
        v7(v105, v107);
        v7(v104, v107);
        sub_237FA5750(v108, &qword_27DEE50C8, &qword_2380357C0);
        result = (v7)(v269, v107, v19, v20, v21, v22, v23, v24, 0, v197, 0, v198, 0, v199, 0, v200, 0, v201, v202, v203, 0, v204);
      }

      v18 = 0;
      v9 = *(v0 + 1840) + 1;
    }

    while (v9 != *(v0 + 1832));
  }

  v10 = *(v0 + 1816);
  v246 = *(v0 + 1776);
  v252 = *(v0 + 1784);
  v11 = *(v0 + 1760);
  v12 = *(v0 + 1752);
  v13 = *(v0 + 1744);
  v14 = *(v0 + 1632);
  v15 = *(v0 + 1608);
  v260 = *(v0 + 1584);
  v268 = *(v0 + 1792);
  v239 = *(v0 + 1528);
  v16 = *(v0 + 1512);
  v231 = *(v0 + 1768);
  v235 = *(v0 + 1504);
  v7(*(v0 + 1472), *(v0 + 1416));
  v10(v13, v14);
  v10(v12, v14);
  v10(v11, v14);
  sub_237FA5750(v15, &qword_27DEE51E0, &qword_2380365F0);
  v10(v231, v14);
  v10(v246, v14);
  (*(v16 + 8))(v239, v235);
  v10(v252, v14);
  v10(v268, v14);
  sub_237FAB7D4(v260, type metadata accessor for _DeviceActivityData.User);

  v17 = *(v0 + 8);
LABEL_25:

  return v17();
}

uint64_t sub_237FF2C14()
{
  *(*v1 + 1952) = v0;

  if (v0)
  {

    v2 = sub_237FF4F4C;
  }

  else
  {
    v2 = sub_237FF2D58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_237FF2D58()
{
  v1 = *(v0 + 1560);
  v2 = v1[1];
  if (v2)
  {
    v3 = *(v0 + 1952);
    v4 = *(v0 + 1232);
    v5 = *v1;
    v6 = v4[15];
    v7 = v4[16];
    __swift_project_boxed_opaque_existential_1(v4 + 12, v6);
    v8 = *(v0 + 400);
    v9 = *(v0 + 408);
    *(v0 + 1961) = 0;
    (*(v7 + 56))(v5, v2, v8, v9, v0 + 1961, v6, v7);
    v10 = *(v0 + 1928);
    if (v3)
    {
      v275 = *(v0 + 1920);
      v11 = *(v0 + 1800);
      v12 = *(v0 + 1792);
      v13 = *(v0 + 1632);
      v14 = *(v0 + 1560);
      v15 = *(v0 + 1264);
      v16 = *(v0 + 1240);

      sub_237FFD060(v14, v15 + v16[6], type metadata accessor for _DeviceActivityData.User);
      v11(v15 + v16[9], v12, v13);
      *(v15 + 16) = xmmword_238033ED0;
      *v15 = v275;
      *(v15 + 8) = v10;
      sub_237FFC8DC(v0 + 400, v0 + 736);
      sub_237FA38D0(0, 0xF000000000000000);
      *(v15 + 16) = xmmword_238033ED0;
      v17 = v15 + v16[7];
      v18 = *(v0 + 400);
      v19 = *(v0 + 416);
      v20 = *(v0 + 432);
      *(v17 + 48) = *(v0 + 448);
      *(v17 + 16) = v19;
      *(v17 + 32) = v20;
      *v17 = v18;
      *(v15 + v16[8]) = 0;
    }

    else
    {
      v34 = *(v0 + 1792);
      v35 = *(v0 + 1640);
      v36 = *(v0 + 1632);
      v37 = *(v0 + 1560);
      v38 = *(v0 + 1264);
      v39 = *(v0 + 1256);
      v40 = *(v0 + 1240);

      sub_237FAB70C(v39, v38, type metadata accessor for _DeviceActivityData.Metadata);
      (*(v35 + 24))(v38 + v40[9], v34, v36);
      sub_237FFC938(v37, v38 + v40[6]);
      v41 = v38 + v40[7];
      sub_237FFC8DC(v0 + 400, v0 + 792);

      v42 = *(v0 + 400);
      v43 = *(v0 + 416);
      v44 = *(v0 + 432);
      *(v41 + 48) = *(v0 + 448);
      *(v41 + 16) = v43;
      *(v41 + 32) = v44;
      *v41 = v42;
    }

    v45 = *(v0 + 1264);
    v46 = *(v0 + 1232);
    v47 = v46[15];
    v48 = v46[16];
    __swift_project_boxed_opaque_existential_1(v46 + 12, v47);
    (*(v48 + 64))(v45, v47, v48);
    v60 = (v0 + 1264);
  }

  else
  {
    v276 = *(v0 + 1952);
    v254 = *(v0 + 1920);
    v262 = *(v0 + 1928);
    v21 = *(v0 + 1800);
    v22 = *(v0 + 1792);
    v23 = *(v0 + 1632);
    v24 = *(v0 + 1248);
    v25 = *(v0 + 1240);
    v26 = *(v0 + 1232);
    v27 = v26[15];
    v28 = v26[16];
    __swift_project_boxed_opaque_existential_1(v26 + 12, v27);
    sub_237FFD060(v1, v24 + v25[6], type metadata accessor for _DeviceActivityData.User);
    v21(v24 + v25[9], v22, v23);
    *(v24 + 16) = xmmword_238033ED0;
    *v24 = v254;
    *(v24 + 8) = v262;
    sub_237FFC8DC(v0 + 400, v0 + 680);
    sub_237FA38D0(0, 0xF000000000000000);
    *(v24 + 16) = xmmword_238033ED0;
    v29 = v24 + v25[7];
    v30 = *(v0 + 400);
    v31 = *(v0 + 416);
    v32 = *(v0 + 432);
    *(v29 + 48) = *(v0 + 448);
    *(v29 + 16) = v31;
    *(v29 + 32) = v32;
    *v29 = v30;
    *(v24 + v25[8]) = 0;
    (*(v28 + 64))(v24, v27, v28);
    if (v276)
    {
      v33 = *(v0 + 1248);

      sub_237FAB7D4(v33, type metadata accessor for _DeviceActivityData.Metadata);
      v49 = *(v0 + 1560);
      v50 = *(v0 + 1360);
      sub_237FFC838(v0 + 400);
      sub_237FA5750(v50, &qword_27DEE50C8, &qword_2380357C0);
      sub_237FAB7D4(v49, type metadata accessor for _DeviceActivityData.User);
      v51 = *(v0 + 1816);
      v255 = *(v0 + 1784);
      v263 = *(v0 + 1792);
      v235 = *(v0 + 1752);
      v237 = *(v0 + 1760);
      v233 = *(v0 + 1744);
      v52 = *(v0 + 1632);
      v239 = *(v0 + 1608);
      v241 = *(v0 + 1768);
      v269 = *(v0 + 1584);
      v248 = *(v0 + 1528);
      v251 = *(v0 + 1776);
      v53 = *(v0 + 1512);
      v244 = *(v0 + 1504);
      v54 = *(v0 + 1472);
      v55 = *(v0 + 1464);
      v56 = *(v0 + 1424);
      v57 = *(v0 + 1416);
      sub_237FA5750(*(v0 + 1408), &qword_27DEE50C8, &qword_2380357C0);
      v58 = *(v56 + 8);
      v58(v55, v57);
      v58(v54, v57);
      v51(v233, v52);
      v51(v235, v52);
      v51(v237, v52);
      sub_237FA5750(v239, &qword_27DEE51E0, &qword_2380365F0);
      v51(v241, v52);
      v51(v251, v52);
      (*(v53 + 8))(v248, v244);
      v51(v255, v52);
      v51(v263, v52);
      sub_237FAB7D4(v269, type metadata accessor for _DeviceActivityData.User);

      v59 = *(v0 + 8);
LABEL_11:

      return v59();
    }

    v60 = (v0 + 1248);
  }

  v61 = *v60;
  v62 = *(v0 + 1560);
  v63 = *(v0 + 1360);
  sub_237FFC838(v0 + 400);
  sub_237FAB7D4(v61, type metadata accessor for _DeviceActivityData.Metadata);
  sub_237FA5750(v63, &qword_27DEE50C8, &qword_2380357C0);
  sub_237FAB7D4(v62, type metadata accessor for _DeviceActivityData.User);
  v64 = *(v0 + 1464);
  v65 = *(v0 + 1424);
  v66 = *(v0 + 1416);
  sub_237FA5750(*(v0 + 1408), &qword_27DEE50C8, &qword_2380357C0);
  v67 = *(v65 + 8);
  result = v67(v64, v66);
  v69 = *(v0 + 1840) + 1;
  if (v69 == *(v0 + 1832))
  {
LABEL_10:

    v70 = *(v0 + 1816);
    v277 = *(v0 + 1792);
    v256 = *(v0 + 1776);
    v264 = *(v0 + 1784);
    v71 = *(v0 + 1760);
    v72 = *(v0 + 1752);
    v73 = *(v0 + 1744);
    v74 = *(v0 + 1632);
    v75 = *(v0 + 1608);
    v270 = *(v0 + 1584);
    v252 = *(v0 + 1528);
    v76 = *(v0 + 1512);
    v245 = *(v0 + 1768);
    v249 = *(v0 + 1504);
    v67(*(v0 + 1472), *(v0 + 1416));
    v70(v73, v74);
    v70(v72, v74);
    v70(v71, v74);
    sub_237FA5750(v75, &qword_27DEE51E0, &qword_2380365F0);
    v70(v245, v74);
    v70(v256, v74);
    (*(v76 + 8))(v252, v249);
    v70(v264, v74);
    v70(v277, v74);
    sub_237FAB7D4(v270, type metadata accessor for _DeviceActivityData.User);

    v59 = *(v0 + 8);
    goto LABEL_11;
  }

  v238 = (v0 + 512);
  v240 = (v0 + 456);
  v234 = (v0 + 568);
  v236 = (v0 + 848);
  v232 = (v0 + 904);
  while (1)
  {
    *(v0 + 1840) = v69;
    v77 = *(v0 + 1824);
    if (v69 >= *(v77 + 16))
    {
      __break(1u);
      return result;
    }

    v78 = *(v0 + 1424);
    v79 = *(v0 + 1416);
    v80 = *(v0 + 1408);
    v81 = *(v78 + 56);
    v82 = *(v77 + v69 + 32);
    *(v0 + 1965) = v82;
    *(v0 + 1848) = v81;
    *(v0 + 1856) = (v78 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v271 = v81;
    v81(v80, 1, 1, v79);
    v265 = v82;
    if (v82)
    {
      if (v82 == 1)
      {
        v83 = *(v0 + 1464);
        v84 = *(v0 + 1328);
        v85 = *(v0 + 1320);
        v86 = *(v0 + 1312);
        v87 = *(v0 + 1296);
        (*(*(v0 + 1512) + 56))(*(v0 + 1304), 1, 1, *(v0 + 1504));
        v88 = sub_238031B94();
        (*(*(v88 - 8) + 56))(v87, 1, 1, v88);
        sub_2380316B4();
        DateInterval.rounded(to:)(v84, v83);
        (*(v85 + 8))(v84, v86);
      }

      else
      {
        v101 = *(v0 + 1520);
        v102 = *(v0 + 1512);
        v103 = *(v0 + 1504);
        v104 = *(v0 + 1464);
        v105 = *(v0 + 1328);
        v106 = *(v0 + 1320);
        v259 = *(v0 + 1312);
        v107 = *(v0 + 1304);
        v108 = *(v0 + 1296);
        sub_238031B44();
        (*(v102 + 56))(v107, 1, 1, v103);
        v109 = sub_238031B94();
        (*(*(v109 - 8) + 56))(v108, 1, 1, v109);
        sub_238031AE4();
        sub_2380316B4();
        DateInterval.rounded(to:)(v105, v104);
        (*(v106 + 8))(v105, v259);
        (*(v102 + 8))(v101, v103);
      }
    }

    else
    {
      v257 = *(v0 + 1816);
      v89 = *(v0 + 1720);
      v253 = *(v0 + 1632);
      v90 = *(v0 + 1464);
      v91 = *(v0 + 1328);
      v92 = *(v0 + 1320);
      v93 = *(v0 + 1296);
      v242 = *(v0 + 1312);
      v231 = *(*(v0 + 1512) + 56);
      v231(*(v0 + 1304), 1, 1, *(v0 + 1504));
      v94 = sub_238031B94();
      v230 = *(*(v94 - 8) + 56);
      v230(v93, 1, 1, v94);
      sub_2380316B4();
      DateInterval.rounded(to:)(v91, v90);
      v95 = *(v92 + 8);
      v95(v91, v242);
      sub_238031634();
      v96 = sub_238031A04();
      v257(v89, v253);
      if (v96)
      {
        v97 = *(v0 + 1456);
        v246 = *(v0 + 1424);
        v250 = *(v0 + 1416);
        v258 = *(v0 + 1408);
        v228 = *(v0 + 1504);
        v229 = *(v0 + 1400);
        v98 = *(v0 + 1328);
        v243 = *(v0 + 1312);
        v99 = *(v0 + 1304);
        v100 = *(v0 + 1296);
        sub_238031634();
        sub_238031624();
        v231(v99, 1, 1, v228);
        v230(v100, 1, 1, v94);
        sub_2380316B4();
        DateInterval.rounded(to:)(v98, v229);
        v95(v98, v243);
        (*(v246 + 8))(v97, v250);
        sub_237FA5750(v258, &qword_27DEE50C8, &qword_2380357C0);
        v271(v229, 0, 1, v250);
        sub_237FA5AE0(v229, v258, &qword_27DEE50C8, &qword_2380357C0);
      }
    }

    v110 = *(v0 + 1424);
    v111 = *(v0 + 1416);
    v112 = *(v0 + 1392);
    sub_237FA90E4(*(v0 + 1408), v112, &qword_27DEE50C8, &qword_2380357C0);
    if ((*(v110 + 48))(v112, 1, v111) != 1)
    {
      break;
    }

    v113 = *(v0 + 1560);
    v114 = *(v0 + 1416);
    v115 = *(v0 + 1360);
    v116 = *(v0 + 1232);
    sub_237FA5750(*(v0 + 1392), &qword_27DEE50C8, &qword_2380357C0);
    v271(v115, 1, 1, v114);
    DeviceActivityDataSource.localUser.getter(v113);
    v117 = v116[15];
    v118 = v116[16];
    __swift_project_boxed_opaque_existential_1(v116 + 12, v117);
    v119 = (*(v118 + 120))(v117, v118);
    sub_237FE82DC(v119, v120, v238);

    v121 = *(v0 + 528);
    *(v0 + 400) = *v238;
    *(v0 + 416) = v121;
    *(v0 + 432) = *(v0 + 544);
    *(v0 + 448) = *(v0 + 560);
    if (!v265)
    {
      v159 = *(v0 + 1232);
      v160 = v159[15];
      v161 = v159[16];
      __swift_project_boxed_opaque_existential_1(v159 + 12, v160);
      v162 = (*(v161 + 120))(v160, v161);
      v202 = *(v0 + 1560);
      v203 = *(v0 + 1552);
      v204 = *(v0 + 1544);
      v205 = *(v0 + 1536);
      v206 = *(v0 + 1360);
      v207 = *(v0 + 1352);
      v268 = *(v0 + 1344);
      v274 = v207;
      v208 = *(v0 + 1336);
      v209 = *(v0 + 1232);
      *(v0 + 1184) = v162;
      *(v0 + 1192) = v210;
      MEMORY[0x2383E5050](95, 0xE100000000000000);
      MEMORY[0x2383E5050](0x796C72756F48, 0xE600000000000000);
      v280 = *(v0 + 1184);
      *(v0 + 1920) = v280;
      v211 = *(v0 + 1192);
      *(v0 + 1928) = v211;
      sub_237FFD060(v202, v203, type metadata accessor for _DeviceActivityData.User);
      sub_237FFC88C(v209, v0 + 16);
      sub_237FA90E4(v206, v207, &qword_27DEE50C8, &qword_2380357C0);
      v212 = (*(v205 + 80) + 16) & ~*(v205 + 80);
      v213 = (v204 + v212 + 7) & 0xFFFFFFFFFFFFFFF8;
      v214 = (v213 + 199) & 0xFFFFFFFFFFFFFFF8;
      v215 = (*(v208 + 80) + v214 + 56) & ~*(v208 + 80);
      v216 = swift_allocObject();
      *(v0 + 1936) = v216;
      sub_237FAB70C(v203, v216 + v212, type metadata accessor for _DeviceActivityData.User);
      v217 = (v216 + v213);
      v218 = *(v0 + 128);
      v217[6] = *(v0 + 112);
      v217[7] = v218;
      v219 = *(v0 + 96);
      v217[4] = *(v0 + 80);
      v217[5] = v219;
      v220 = *(v0 + 192);
      v217[10] = *(v0 + 176);
      v217[11] = v220;
      v221 = *(v0 + 160);
      v217[8] = *(v0 + 144);
      v217[9] = v221;
      v222 = *(v0 + 32);
      *v217 = *(v0 + 16);
      v217[1] = v222;
      v223 = *(v0 + 64);
      v217[2] = *(v0 + 48);
      v217[3] = v223;
      v224 = v216 + v214;
      *(v224 + 48) = *(v0 + 448);
      v225 = *(v0 + 432);
      *(v224 + 16) = *(v0 + 416);
      *(v224 + 32) = v225;
      *v224 = *(v0 + 400);
      sub_237FA5AE0(v274, v216 + v215, &qword_27DEE50C8, &qword_2380357C0);
      v226 = (v216 + ((v268 + v215 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v226 = v280;
      v226[1] = v211;
      sub_237FFC8DC(v0 + 400, v0 + 624);

      v227 = swift_task_alloc();
      *(v0 + 1944) = v227;
      *v227 = v0;
      v227[1] = sub_237FF2C14;
      v199 = sub_237FFC8C4;
      v200 = *(v0 + 1464);
      v201 = v216;
      goto LABEL_34;
    }

    v122 = *(v0 + 1792);
    v123 = *(v0 + 1560);
    v124 = *(v0 + 1464);
    v125 = *(v0 + 416);
    *v234 = *(v0 + 400);
    *(v0 + 584) = v125;
    *(v0 + 600) = *(v0 + 432);
    *(v0 + 616) = *(v0 + 448);
    *(v0 + 1960) = v265;
    sub_237FF6740(v123, v234, (v0 + 1960), v124, v122);
    v126 = *(v0 + 1560);
    sub_237FA5750(*(v0 + 1360), &qword_27DEE50C8, &qword_2380357C0);
    sub_237FAB7D4(v126, type metadata accessor for _DeviceActivityData.User);
    sub_237FFC838(v0 + 400);
    v127 = *(v0 + 1464);
    v128 = *(v0 + 1424);
    v129 = *(v0 + 1416);
    sub_237FA5750(*(v0 + 1408), &qword_27DEE50C8, &qword_2380357C0);
    v67 = *(v128 + 8);
    result = v67(v127, v129);
LABEL_15:
    v69 = *(v0 + 1840) + 1;
    if (v69 == *(v0 + 1832))
    {
      goto LABEL_10;
    }
  }

  v247 = *(v0 + 1800);
  v130 = *(v0 + 1784);
  v131 = *(v0 + 1720);
  v132 = *(v0 + 1632);
  v260 = *(v0 + 1576);
  v133 = *(v0 + 1448);
  v134 = *(v0 + 1424);
  v135 = *(v0 + 1416);
  v136 = *(v0 + 1384);
  v137 = *(v0 + 1232);
  (*(v134 + 32))(v133, *(v0 + 1392), v135);
  v247(v131, v130, v132);
  sub_238031604();
  sub_238031614();
  (*(v134 + 16))(v136, v133, v135);
  v271(v136, 0, 1, v135);
  DeviceActivityDataSource.localUser.getter(v260);
  v138 = v137[15];
  v139 = v137[16];
  __swift_project_boxed_opaque_existential_1(v137 + 12, v138);
  v140 = (*(v139 + 120))(v138, v139);
  sub_237FE82DC(v140, v141, v236);

  v142 = *(v0 + 864);
  *v240 = *v236;
  *(v0 + 472) = v142;
  *(v0 + 488) = *(v0 + 880);
  *(v0 + 504) = *(v0 + 896);
  if (!v265)
  {
    v155 = *(v0 + 1232);
    v156 = v155[15];
    v157 = v155[16];
    __swift_project_boxed_opaque_existential_1(v155 + 12, v156);
    v158 = (*(v157 + 120))(v156, v157);
    v174 = *(v0 + 1576);
    v175 = *(v0 + 1568);
    v176 = *(v0 + 1544);
    v177 = *(v0 + 1536);
    v178 = *(v0 + 1384);
    v179 = *(v0 + 1376);
    v267 = *(v0 + 1344);
    v273 = v179;
    v261 = *(v0 + 1336);
    v180 = *(v0 + 1232);
    *(v0 + 1200) = v158;
    *(v0 + 1208) = v181;
    MEMORY[0x2383E5050](95, 0xE100000000000000);
    MEMORY[0x2383E5050](0x796C72756F48, 0xE600000000000000);
    v279 = *(v0 + 1200);
    *(v0 + 1864) = v279;
    v182 = *(v0 + 1208);
    *(v0 + 1872) = v182;
    sub_237FFD060(v174, v175, type metadata accessor for _DeviceActivityData.User);
    sub_237FFC88C(v180, v0 + 208);
    sub_237FA90E4(v178, v179, &qword_27DEE50C8, &qword_2380357C0);
    v183 = (*(v177 + 80) + 16) & ~*(v177 + 80);
    v184 = (v176 + v183 + 7) & 0xFFFFFFFFFFFFFFF8;
    v185 = (v184 + 199) & 0xFFFFFFFFFFFFFFF8;
    v186 = (*(v261 + 80) + v185 + 56) & ~*(v261 + 80);
    v187 = swift_allocObject();
    *(v0 + 1880) = v187;
    sub_237FAB70C(v175, v187 + v183, type metadata accessor for _DeviceActivityData.User);
    v188 = (v187 + v184);
    v189 = *(v0 + 320);
    v188[6] = *(v0 + 304);
    v188[7] = v189;
    v190 = *(v0 + 288);
    v188[4] = *(v0 + 272);
    v188[5] = v190;
    v191 = *(v0 + 384);
    v188[10] = *(v0 + 368);
    v188[11] = v191;
    v192 = *(v0 + 352);
    v188[8] = *(v0 + 336);
    v188[9] = v192;
    v193 = *(v0 + 224);
    *v188 = *(v0 + 208);
    v188[1] = v193;
    v194 = *(v0 + 256);
    v188[2] = *(v0 + 240);
    v188[3] = v194;
    v195 = v187 + v185;
    *(v195 + 48) = *(v0 + 504);
    v196 = *(v0 + 488);
    *(v195 + 16) = *(v0 + 472);
    *(v195 + 32) = v196;
    *v195 = *v240;
    sub_237FA5AE0(v273, v187 + v186, &qword_27DEE50C8, &qword_2380357C0);
    v197 = (v187 + ((v267 + v186 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v197 = v279;
    v197[1] = v182;
    sub_237FFC8DC(v240, v0 + 960);

    v198 = swift_task_alloc();
    *(v0 + 1888) = v198;
    *v198 = v0;
    v198[1] = sub_237FEE484;
    v199 = sub_237FFD128;
    v200 = *(v0 + 1440);
    v201 = v187;
LABEL_34:

    return sub_237FF9244(v200, v199, v201);
  }

  v143 = *(v0 + 1792);
  v144 = *(v0 + 1576);
  v145 = *(v0 + 1440);
  v146 = *(v0 + 472);
  *v232 = *v240;
  *(v0 + 920) = v146;
  *(v0 + 936) = *(v0 + 488);
  *(v0 + 952) = *(v0 + 504);
  *(v0 + 1962) = v265;
  sub_237FF6740(v144, v232, (v0 + 1962), v145, v143);
  sub_237FAB7D4(*(v0 + 1576), type metadata accessor for _DeviceActivityData.User);
  sub_237FFC838(v240);
  sub_237FA5750(*(v0 + 1384), &qword_27DEE50C8, &qword_2380357C0);
  sub_238031604();
  sub_238031604();
  if ((sub_238031A04() & 1) == 0)
  {
    v147 = *(v0 + 1816);
    v148 = *(v0 + 1704);
    v149 = *(v0 + 1632);
    v278 = *(v0 + 1464);
    v150 = *(v0 + 1448);
    v151 = *(v0 + 1440);
    v152 = *(v0 + 1424);
    v153 = *(v0 + 1416);
    v154 = *(v0 + 1408);
    v147(*(v0 + 1696), v149);
    v147(v148, v149);
    v67 = *(v152 + 8);
    v67(v151, v153);
    v67(v150, v153);
    sub_237FA5750(v154, &qword_27DEE50C8, &qword_2380357C0);
    result = v67(v278, v153);
    goto LABEL_15;
  }

  v272 = *(v0 + 1848);
  v266 = *(v0 + 1965);
  v163 = *(v0 + 1800);
  v164 = *(v0 + 1712);
  v165 = *(v0 + 1704);
  v166 = *(v0 + 1632);
  v167 = *(v0 + 1416);
  v168 = *(v0 + 1368);
  v163(*(v0 + 1720), *(v0 + 1696), v166);
  v163(v164, v165, v166);
  sub_238031614();
  *(v0 + 1963) = v266;
  v272(v168, 1, 1, v167);
  v169 = swift_task_alloc();
  *(v0 + 1904) = v169;
  *v169 = v0;
  v169[1] = sub_237FF0C78;
  v170 = *(v0 + 1792);
  v171 = *(v0 + 1584);
  v172 = *(v0 + 1432);
  v173 = *(v0 + 1368);

  return sub_237FF59F0(v171, (v0 + 1963), v172, v173, v170);
}

uint64_t sub_237FF4F4C()
{
  v1 = v0[195];
  v2 = v0[170];
  sub_237FFC838((v0 + 50));
  sub_237FA5750(v2, &qword_27DEE50C8, &qword_2380357C0);
  sub_237FAB7D4(v1, type metadata accessor for _DeviceActivityData.User);
  v3 = v0[227];
  v20 = v0[222];
  v21 = v0[223];
  v14 = v0[219];
  v15 = v0[220];
  v13 = v0[218];
  v4 = v0[204];
  v16 = v0[201];
  v17 = v0[221];
  v22 = v0[198];
  v23 = v0[224];
  v5 = v0[189];
  v18 = v0[188];
  v19 = v0[191];
  v6 = v0[184];
  v7 = v0[183];
  v8 = v0[178];
  v9 = v0[177];
  sub_237FA5750(v0[176], &qword_27DEE50C8, &qword_2380357C0);
  v10 = *(v8 + 8);
  v10(v7, v9);
  v10(v6, v9);
  v3(v13, v4);
  v3(v14, v4);
  v3(v15, v4);
  sub_237FA5750(v16, &qword_27DEE51E0, &qword_2380365F0);
  v3(v17, v4);
  v3(v20, v4);
  (*(v5 + 8))(v19, v18);
  v3(v21, v4);
  v3(v23, v4);
  sub_237FAB7D4(v22, type metadata accessor for _DeviceActivityData.User);

  v11 = v0[1];

  return v11();
}

uint64_t sub_237FF5474()
{
  v1 = v0[227];
  v25 = v0[224];
  v22 = v0[222];
  v23 = v0[223];
  v14 = v0[218];
  v15 = v0[219];
  v10 = v0[213];
  v2 = v0[212];
  v3 = v0[204];
  v16 = v0[201];
  v17 = v0[220];
  v24 = v0[198];
  v18 = v0[189];
  v19 = v0[221];
  v20 = v0[188];
  v21 = v0[191];
  v12 = v0[183];
  v13 = v0[184];
  v4 = v0[181];
  v5 = v0[180];
  v6 = v0[177];
  v11 = v0[176];
  v7 = *(v0[178] + 8);
  v7(v0[179], v6);
  v1(v2, v3);
  v1(v10, v3);
  v7(v5, v6);
  v7(v4, v6);
  sub_237FA5750(v11, &qword_27DEE50C8, &qword_2380357C0);
  v7(v12, v6);
  v7(v13, v6);
  v1(v14, v3);
  v1(v15, v3);
  v1(v17, v3);
  sub_237FA5750(v16, &qword_27DEE51E0, &qword_2380365F0);
  v1(v19, v3);
  v1(v22, v3);
  (*(v18 + 8))(v21, v20);
  v1(v23, v3);
  v1(v25, v3);
  sub_237FAB7D4(v24, type metadata accessor for _DeviceActivityData.User);

  v8 = v0[1];

  return v8();
}

uint64_t sub_237FF59F0(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 504) = a5;
  *(v6 + 512) = v5;
  *(v6 + 488) = a3;
  *(v6 + 496) = a4;
  *(v6 + 520) = type metadata accessor for _DeviceActivityData.Metadata(0);
  *(v6 + 528) = swift_task_alloc();
  *(v6 + 536) = swift_task_alloc();
  *(v6 + 544) = swift_task_alloc();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0) - 8);
  *(v6 + 552) = v8;
  *(v6 + 560) = *(v8 + 64);
  *(v6 + 568) = swift_task_alloc();
  v9 = *(type metadata accessor for _DeviceActivityData.User(0) - 8);
  *(v6 + 576) = v9;
  *(v6 + 584) = *(v9 + 64);
  *(v6 + 592) = swift_task_alloc();
  *(v6 + 600) = swift_task_alloc();
  *(v6 + 648) = *a2;

  return MEMORY[0x2822009F8](sub_237FF5B84, 0, 0);
}

uint64_t sub_237FF5B84()
{
  v50 = v0;
  v1 = *(v0 + 512);
  DeviceActivityDataSource.localUser.getter(*(v0 + 600));
  v2 = v1[15];
  v3 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  v4 = (*(v3 + 120))(v2, v3);
  v6 = *(v0 + 648);
  sub_237FE82DC(v4, v7, (v0 + 208));

  if (v6)
  {
    v8 = *(v0 + 648);
    v9 = *(v0 + 600);
    v10 = *(v0 + 504);
    v11 = *(v0 + 488);
    v12 = *(v0 + 224);
    v47[0] = *(v0 + 208);
    v47[1] = v12;
    v47[2] = *(v0 + 240);
    v48 = *(v0 + 256);
    v49[0] = v8;
    sub_237FF6740(v9, v47, v49, v11, v10);
    sub_237FAB7D4(*(v0 + 600), type metadata accessor for _DeviceActivityData.User);
    sub_237FFC838(v0 + 208);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v14 = v1[15];
    v15 = v1[16];
    __swift_project_boxed_opaque_existential_1(v1 + 12, v14);
    v16 = (*(v15 + 120))(v14, v15);
    v17 = *(v0 + 600);
    v18 = *(v0 + 592);
    v19 = *(v0 + 584);
    v20 = *(v0 + 576);
    v21 = *(v0 + 568);
    v44 = *(v0 + 560);
    v45 = v21;
    v22 = *(v0 + 552);
    v23 = *(v0 + 512);
    v24 = *(v0 + 496);
    *&v47[0] = v16;
    *(&v47[0] + 1) = v25;
    MEMORY[0x2383E5050](95, 0xE100000000000000);
    MEMORY[0x2383E5050](0x796C72756F48, 0xE600000000000000);
    v26 = *(&v47[0] + 1);
    v46 = *&v47[0];
    *(v0 + 608) = *&v47[0];
    *(v0 + 616) = v26;
    sub_237FFD060(v17, v18, type metadata accessor for _DeviceActivityData.User);
    sub_237FFC88C(v23, v0 + 16);
    sub_237FA90E4(v24, v21, &qword_27DEE50C8, &qword_2380357C0);
    v27 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v28 = (v19 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 199) & 0xFFFFFFFFFFFFFFF8;
    v30 = (*(v22 + 80) + v29 + 56) & ~*(v22 + 80);
    v31 = swift_allocObject();
    *(v0 + 624) = v31;
    sub_237FAB70C(v18, v31 + v27, type metadata accessor for _DeviceActivityData.User);
    v32 = (v31 + v28);
    v33 = *(v0 + 128);
    v32[6] = *(v0 + 112);
    v32[7] = v33;
    v34 = *(v0 + 96);
    v32[4] = *(v0 + 80);
    v32[5] = v34;
    v35 = *(v0 + 192);
    v32[10] = *(v0 + 176);
    v32[11] = v35;
    v36 = *(v0 + 160);
    v32[8] = *(v0 + 144);
    v32[9] = v36;
    v37 = *(v0 + 32);
    *v32 = *(v0 + 16);
    v32[1] = v37;
    v38 = *(v0 + 64);
    v32[2] = *(v0 + 48);
    v32[3] = v38;
    v39 = v31 + v29;
    *(v39 + 48) = *(v0 + 256);
    v40 = *(v0 + 240);
    *(v39 + 16) = *(v0 + 224);
    *(v39 + 32) = v40;
    *v39 = *(v0 + 208);
    sub_237FA5AE0(v45, v31 + v30, &qword_27DEE50C8, &qword_2380357C0);
    v41 = (v31 + ((v44 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v41 = v46;
    v41[1] = v26;
    sub_237FFC8DC(v0 + 208, v0 + 264);

    v42 = swift_task_alloc();
    *(v0 + 632) = v42;
    *v42 = v0;
    v42[1] = sub_237FF6020;
    v43 = *(v0 + 488);

    return sub_237FF9244(v43, sub_237FFD128, v31);
  }
}

uint64_t sub_237FF6020()
{
  *(*v1 + 640) = v0;

  if (v0)
  {

    v2 = sub_237FF6668;
  }

  else
  {
    v2 = sub_237FF6150;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_237FF6150()
{
  v58 = v0;
  v1 = *(v0 + 600);
  v2 = v1[1];
  if (v2)
  {
    v3 = *(v0 + 640);
    v4 = *(v0 + 512);
    v5 = *v1;
    v6 = v4[15];
    v7 = v4[16];
    __swift_project_boxed_opaque_existential_1(v4 + 12, v6);
    v8 = *(v0 + 208);
    v9 = *(v0 + 216);
    v57[0] = 0;
    (*(v7 + 56))(v5, v2, v8, v9, v57, v6, v7);
    v10 = *(v0 + 616);
    v11 = *(v0 + 520);
    v12 = *(v0 + 504);
    if (v3)
    {
      v13 = *(v0 + 608);
      v14 = *(v0 + 600);
      v15 = *(v0 + 544);

      sub_237FFD060(v14, v15 + v11[6], type metadata accessor for _DeviceActivityData.User);
      v16 = v11[9];
      v17 = sub_238031A64();
      (*(*(v17 - 8) + 16))(v15 + v16, v12, v17);
      *(v15 + 16) = xmmword_238033ED0;
      *v15 = v13;
      *(v15 + 8) = v10;
      sub_237FFC8DC(v0 + 208, v0 + 376);
      sub_237FA38D0(0, 0xF000000000000000);
      *(v15 + 16) = xmmword_238033ED0;
      v18 = v15 + v11[7];
      v19 = *(v0 + 208);
      v20 = *(v0 + 224);
      v21 = *(v0 + 240);
      *(v18 + 48) = *(v0 + 256);
      *(v18 + 16) = v20;
      *(v18 + 32) = v21;
      *v18 = v19;
      *(v15 + v11[8]) = 0;
    }

    else
    {
      v38 = *(v0 + 600);
      v39 = *(v0 + 544);
      v40 = *(v0 + 536);

      sub_237FAB70C(v40, v39, type metadata accessor for _DeviceActivityData.Metadata);
      v41 = v11[9];
      v42 = sub_238031A64();
      (*(*(v42 - 8) + 24))(v39 + v41, v12, v42);
      sub_237FFC938(v38, v39 + v11[6]);
      v43 = v39 + v11[7];
      sub_237FFC8DC(v0 + 208, v0 + 432);

      v44 = *(v0 + 208);
      v45 = *(v0 + 224);
      v46 = *(v0 + 240);
      *(v43 + 48) = *(v0 + 256);
      *(v43 + 16) = v45;
      *(v43 + 32) = v46;
      *v43 = v44;
    }

    v24 = (v0 + 544);
    v47 = *(v0 + 544);
    v48 = *(v0 + 512);
    v49 = v48[15];
    v50 = v48[16];
    __swift_project_boxed_opaque_existential_1(v48 + 12, v49);
    v37 = 0;
    (*(v50 + 64))(v47, v49, v50);
  }

  else
  {
    v56 = *(v0 + 640);
    v22 = *(v0 + 616);
    v23 = *(v0 + 608);
    v24 = (v0 + 528);
    v25 = *(v0 + 528);
    v26 = *(v0 + 520);
    v28 = *(v0 + 504);
    v27 = *(v0 + 512);
    v29 = v27[15];
    v30 = v27[16];
    __swift_project_boxed_opaque_existential_1(v27 + 12, v29);
    sub_237FFD060(v1, v25 + v26[6], type metadata accessor for _DeviceActivityData.User);
    v31 = v26[9];
    v32 = sub_238031A64();
    (*(*(v32 - 8) + 16))(v25 + v31, v28, v32);
    *(v25 + 16) = xmmword_238033ED0;
    *v25 = v23;
    *(v25 + 8) = v22;
    sub_237FFC8DC(v0 + 208, v0 + 320);
    sub_237FA38D0(0, 0xF000000000000000);
    *(v25 + 16) = xmmword_238033ED0;
    v33 = v25 + v26[7];
    v34 = *(v0 + 208);
    v35 = *(v0 + 224);
    v36 = *(v0 + 240);
    *(v33 + 48) = *(v0 + 256);
    *(v33 + 16) = v35;
    *(v33 + 32) = v36;
    *v33 = v34;
    *(v25 + v26[8]) = 0;
    v37 = v56;
    (*(v30 + 64))(v25, v29, v30);
  }

  if (v37)
  {
    sub_237FAB7D4(*v24, type metadata accessor for _DeviceActivityData.Metadata);
    v51 = *(v0 + 600);
    sub_237FFC838(v0 + 208);
    sub_237FAB7D4(v51, type metadata accessor for _DeviceActivityData.User);
  }

  else
  {
    v53 = *v24;
    v54 = *(v0 + 600);
    sub_237FFC838(v0 + 208);
    sub_237FAB7D4(v53, type metadata accessor for _DeviceActivityData.Metadata);
    sub_237FAB7D4(v54, type metadata accessor for _DeviceActivityData.User);
  }

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_237FF6668()
{
  v1 = *(v0 + 600);
  sub_237FFC838(v0 + 208);
  sub_237FAB7D4(v1, type metadata accessor for _DeviceActivityData.User);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_237FF6740(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v253 = a5;
  v283 = a4;
  v269 = a1;
  v254 = type metadata accessor for _DeviceActivityData.Metadata(0);
  v8 = MEMORY[0x28223BE20](v254);
  v248 = &v233[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v250 = &v233[-v11];
  MEMORY[0x28223BE20](v10);
  v257 = &v233[-v12];
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54E8, &qword_2380358A0);
  v13 = MEMORY[0x28223BE20](v305);
  v304 = &v233[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v303 = &v233[-v15];
  v302 = type metadata accessor for _DeviceActivityData.User(0);
  v324 = *(v302 - 8);
  MEMORY[0x28223BE20](v302);
  v301 = &v233[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  MEMORY[0x28223BE20](v17 - 8);
  v272 = &v233[-v18];
  v298 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  v318 = *(v298 - 8);
  v19 = MEMORY[0x28223BE20](v298);
  v264 = &v233[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v309 = &v233[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v271 = &v233[-v24];
  MEMORY[0x28223BE20](v23);
  v299 = &v233[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54A8, &qword_2380359E0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v270 = &v233[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x28223BE20](v27);
  v296 = &v233[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v311 = &v233[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v297 = &v233[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  *&v319 = &v233[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v312 = &v233[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v266 = &v233[-v40];
  MEMORY[0x28223BE20](v39);
  v288 = &v233[-v41];
  v294 = sub_238031654();
  v314 = *(v294 - 8);
  v42 = MEMORY[0x28223BE20](v294);
  v285 = &v233[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v42);
  v291 = &v233[-v44];
  v281 = sub_238031B64();
  v282 = *(v281 - 8);
  MEMORY[0x28223BE20](v281);
  v280 = &v233[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v47 = MEMORY[0x28223BE20](v46 - 8);
  v284 = &v233[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v47);
  v279 = &v233[-v49];
  v289 = sub_238031A64();
  v263 = *(v289 - 8);
  v50 = MEMORY[0x28223BE20](v289);
  v278 = &v233[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = MEMORY[0x28223BE20](v50);
  v287 = &v233[-v53];
  v54 = MEMORY[0x28223BE20](v52);
  v292 = &v233[-v55];
  MEMORY[0x28223BE20](v54);
  v290 = &v233[-v56];
  v256 = sub_238031B74();
  v255 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v58 = &v233[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = type metadata accessor for _DeviceActivityData(0);
  MEMORY[0x28223BE20](v59);
  v61 = &v233[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = a2[1];
  v307 = *a2;
  v308 = v62;
  v63 = a2[3];
  v251 = a2[2];
  v252 = v63;
  v64 = a2[4];
  v65 = a2[5];
  v66 = a2[6];
  v293 = *a3;
  v68 = v5[15];
  v67 = v5[16];
  v317 = v5;
  __swift_project_boxed_opaque_existential_1(v5 + 12, v68);
  v69 = v320;
  result = (*(v67 + 120))(v68, v67);
  if (v69)
  {
    return result;
  }

  v265 = v59;
  v235 = v64;
  v267 = v65;
  v268 = v66;
  v274 = v58;
  v286 = v61;
  v322 = result;
  v323 = v71;
  MEMORY[0x2383E5050](95, 0xE100000000000000);
  *&v320 = 0;
  if (v293)
  {
    v72 = v289;
    if (v293 == 1)
    {
      v73 = 0xE500000000000000;
      v74 = 0x796C696144;
    }

    else
    {
      v73 = 0xE600000000000000;
      v74 = 0x796C6B656557;
    }
  }

  else
  {
    v73 = 0xE600000000000000;
    v74 = 0x796C72756F48;
    v72 = v289;
  }

  MEMORY[0x2383E5050](v74, v73);

  v75 = v322;
  v76 = v323;
  v77 = v317[15];
  v78 = v317[16];
  __swift_project_boxed_opaque_existential_1(v317 + 12, v77);
  v79 = *v269;
  v80 = v269[1];
  LOBYTE(v322) = 0;
  v81 = v320;
  (*(v78 + 16))(v79, v80, &v322, v77, v78);
  *&v320 = v81;
  if (v81)
  {
  }

  v316 = v80;
  v306 = v79;
  v277 = v75;
  v240 = v76;
  sub_238031B44();
  sub_238031634();
  v82 = v292;
  sub_238031604();
  v249 = sub_237FFCDA8(&qword_280C35028, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v83 = sub_238031E44();
  v84 = v263;
  v85 = *(v263 + 8);
  v261 = v263 + 8;
  v260 = v85;
  v85(v82, v72);
  if (v83)
  {
    v86 = v268;
    v87 = v267;
    v88 = v277;
LABEL_80:
    v200 = v88;
    v201 = v316;
    if (v316)
    {
      v202 = v317[15];
      v203 = v317[16];
      __swift_project_boxed_opaque_existential_1(v317 + 12, v202);
      LOBYTE(v321) = v293;
      v204 = v250;
      v205 = v201;
      v206 = v307;
      v207 = v308;
      v208 = v320;
      (*(v203 + 56))(v306, v205, v307, v308, &v321, v202, v203);
      v209 = v254;
      if (v208)
      {

        v210 = v257;
        sub_237FFD060(v269, &v257[v209[6]], type metadata accessor for _DeviceActivityData.User);
        (*(v263 + 16))(&v210[v209[9]], v253, v289);
        v320 = xmmword_238033ED0;
        *(v210 + 1) = xmmword_238033ED0;
        v211 = v240;
        *v210 = v200;
        *(v210 + 1) = v211;

        v212 = v252;

        sub_237FA38D0(0, 0xF000000000000000);
        *(v210 + 1) = v320;
        v213 = &v210[v209[7]];
        *v213 = v206;
        v213[1] = v207;
        v213[2] = v251;
        v213[3] = v212;
        v213[4] = v235;
        v213[5] = v87;
        v213[6] = v86;
        v210[v209[8]] = v293;
      }

      else
      {

        v222 = v257;
        sub_237FAB70C(v204, v257, type metadata accessor for _DeviceActivityData.Metadata);
        (*(v263 + 24))(&v222[v209[9]], v253, v289);
        sub_237FFC938(v269, &v222[v209[6]]);
        v223 = &v257[v209[7]];

        v224 = v252;

        *v223 = v206;
        v223[1] = v207;
        v223[2] = v251;
        v223[3] = v224;
        v223[4] = v235;
        v223[5] = v87;
        v223[6] = v86;
        v210 = v257;
      }

      v225 = v317[15];
      v226 = v317[16];
      __swift_project_boxed_opaque_existential_1(v317 + 12, v225);
      (*(v226 + 64))(v210, v225, v226);
    }

    else
    {
      v214 = v317[15];
      v215 = v317[16];
      __swift_project_boxed_opaque_existential_1(v317 + 12, v214);
      v216 = v86;
      v217 = v254;
      v210 = v248;
      sub_237FFD060(v269, &v248[*(v254 + 24)], type metadata accessor for _DeviceActivityData.User);
      (*(v263 + 16))(&v210[v217[9]], v253, v289);
      v319 = xmmword_238033ED0;
      *(v210 + 1) = xmmword_238033ED0;
      v218 = v240;
      *v210 = v200;
      *(v210 + 1) = v218;

      v219 = v308;

      v220 = v252;

      sub_237FA38D0(0, 0xF000000000000000);
      *(v210 + 1) = v319;
      v221 = &v210[v217[7]];
      *v221 = v307;
      v221[1] = v219;
      v221[2] = v251;
      v221[3] = v220;
      v221[4] = v235;
      v221[5] = v87;
      v221[6] = v216;
      v210[v217[8]] = v293;
      (*(v215 + 64))(v210, v214, v215);
    }

    v227 = v289;
    v228 = v286;
    (*(v255 + 8))(v274, v256);
    sub_237FAB7D4(v228, type metadata accessor for _DeviceActivityData);
    sub_237FAB7D4(v210, type metadata accessor for _DeviceActivityData.Metadata);
    return (v260)(v290, v227);
  }

  v247 = *(v282 + 104);
  v246 = (v282 + 8);
  v245 = (v84 + 48);
  v243 = (v84 + 32);
  v242 = (v84 + 16);
  v315 = (v318 + 56);
  v310 = (v318 + 48);
  v234 = *MEMORY[0x277CC9940];
  v262 = (v314 + 16);
  v238 = (v314 + 56);
  v239 = *MEMORY[0x277CC9968];
  v237 = (v84 + 56);
  v273 = (v314 + 8);
  v244 = *MEMORY[0x277CC9980];
  v300 = (v324 + 48);
  v295 = (v324 + 56);
  v241 = (v84 + 24);
  v236 = xmmword_238033ED0;
  v86 = v268;
  v87 = v267;
  v282 += 104;
  while (1)
  {
    v92 = v86;
    v93 = v244;
    if (v293)
    {
      v93 = v239;
      if (v293 != 1)
      {
        v93 = v234;
      }
    }

    v94 = v280;
    v95 = v281;
    v247(v280, v93, v281);
    v96 = v279;
    v97 = v290;
    sub_238031B24();
    (*v246)(v94, v95);
    if ((*v245)(v96, 1, v72) == 1)
    {
      sub_237FA5750(v96, &qword_27DEE51E0, &qword_2380365F0);
      if (qword_280C353A0 != -1)
      {
        swift_once();
      }

      v194 = sub_238031DB4();
      __swift_project_value_buffer(v194, qword_280C36C80);
      v195 = sub_238031D94();
      v196 = sub_238032104();
      v197 = os_log_type_enabled(v195, v196);
      v198 = v277;
      v86 = v92;
      if (v197)
      {
        v199 = swift_slowAlloc();
        *v199 = 0;
        _os_log_impl(&dword_237FA1000, v195, v196, "Failed to create activity segment end date", v199, 2u);
        MEMORY[0x2383E5E30](v199, -1, -1);
      }

      v88 = v198;
      goto LABEL_80;
    }

    v98 = v287;
    (*v243)(v287, v96, v72);
    v99 = *v242;
    (*v242)(v292, v97, v72);
    v99(v278, v98, v72);
    v100 = v291;
    v101 = sub_238031614();
    v102 = *&v286[*(v265 + 20)];
    MEMORY[0x28223BE20](v101);
    v231 = v97;
    v232 = v98;

    v103 = v102;
    v104 = v320;
    v105 = sub_237FFA068(sub_237FFCF10, &v233[-32], v103);
    *&v320 = v104;
    if (*(v105 + 16))
    {
      break;
    }

    (*v273)(v100, v294);

    (*v241)(v97, v98, v72);
    v88 = v277;
LABEL_13:
    v89 = v260;
    v260(v98, v72);
    v90 = v292;
    sub_238031604();
    v91 = sub_238031E44();
    v89(v90, v72);
    v86 = v268;
    v87 = v267;
    if (v91)
    {
      goto LABEL_80;
    }
  }

  v318 = *(v105 + 16);
  v276 = v105;
  v106 = v288;
  v314 = *v315;
  (v314)(v288, 1, 1, v298);
  v107 = v316;
  if (v316)
  {
    v108 = v317[15];
    v109 = v317[16];
    __swift_project_boxed_opaque_existential_1(v317 + 12, v108);
    LOBYTE(v321) = v293;
    v110 = v266;
    v111 = v320;
    (*(v109 + 80))(v306, v107, v307, v308, &v321, v97, v108, v109);
    v112 = v272;
    v113 = v285;
    if (v111)
    {

      v114 = 1;
    }

    else
    {
      v114 = 0;
    }

    v117 = v298;
    (v314)(v110, v114, 1, v298);
    sub_237FA39BC(v110, v106, &qword_27DEE54A8, &qword_2380359E0);
    v118 = (*v310)(v106, 1, v117);
    *&v320 = 0;
    if (v118)
    {
      v115 = 0;
      v275 = 0xF000000000000000;
    }

    else
    {
      v115 = *v106;
      v119 = *v106;
      v275 = v106[1];
      sub_237FC75C8(v119, v275);
    }

    v116 = v294;
    v100 = v291;
  }

  else
  {
    v115 = 0;
    v275 = 0xF000000000000000;
    v112 = v272;
    v116 = v294;
    v113 = v285;
  }

  v324 = *v262;
  (v324)(v113, v100, v116);
  v120 = *v238;
  (*v238)(v112, 1, 1, v116);
  v121 = v112;
  v122 = *v237;
  v123 = v289;
  (*v237)(v284, 1, 1, v289);
  v124 = v271;
  *v271 = v236;
  v125 = v298;
  v313 = *(v298 + 28);
  v120(v124 + v313, 1, 1, v294);
  v258 = v125[8];
  v122(&v258[v124], 1, 1, v123);
  v126 = *v124;
  v127 = v124[1];
  v128 = v275;
  sub_237FC75C8(v115, v275);
  v129 = v240;

  v130 = v126;
  v131 = v294;
  v132 = v115;
  v133 = v125;
  v134 = v127;
  v135 = v285;
  sub_237FA38D0(v130, v134);
  v259 = v132;
  *v124 = v132;
  v124[1] = v128;
  v124[2] = v277;
  v124[3] = v129;
  (v324)(v124 + v125[6], v135, v131);
  *(v124 + v125[9]) = 0;
  sub_237FD3ACC(v121, v124 + v313, &qword_27DEE50C8, &qword_2380357C0);
  v136 = v284;
  sub_237FD3ACC(v284, &v258[v124], &qword_27DEE51E0, &qword_2380365F0);
  *(v124 + v125[10]) = 0;
  v321 = MEMORY[0x277D84F90];
  v137 = v320;
  sub_237FCBD54(&v321);
  *&v320 = v137;
  if (v137)
  {

    __break(1u);
    return result;
  }

  sub_237FA5750(v136, &qword_27DEE51E0, &qword_2380365F0);
  sub_237FA5750(v121, &qword_27DEE50C8, &qword_2380357C0);
  v258 = *v273;
  (v258)(v135, v131);
  *(v124 + v125[11]) = v321;
  sub_237FAB70C(v124, v299, type metadata accessor for _DeviceActivityData.ActivitySegment);
  v138 = (v276 + 40);
  v139 = v319;
  v140 = v310;
  do
  {
    v141 = *v138;
    v313 = *(v138 - 1);
    (v314)(v139, 1, 1, v133);
    v324 = v141;
    if (v316)
    {
      v142 = v140;
      v143 = v133;
      v144 = qword_280C35270;

      v145 = v305;
      if (v144 != -1)
      {
        v180 = v305;
        swift_once();
        v145 = v180;
      }

      v146 = __swift_project_value_buffer(v145, qword_280C35278);
      swift_beginAccess();
      v147 = v303;
      sub_237FA90E4(v146, v303, &qword_27DEE54E8, &qword_2380358A0);
      v148 = v302;
      v149 = (*v300)(v147, 1, v302);
      v150 = v304;
      if (v149 == 1)
      {
        sub_237FA5750(v147, &qword_27DEE54E8, &qword_2380358A0);
        v151 = v301;
        DeviceActivityDataSource.localUser.getter(v301);
        sub_237FFD060(v151, v150, type metadata accessor for _DeviceActivityData.User);
        (*v295)(v150, 0, 1, v148);
        swift_beginAccess();
        v152 = v150;
        v153 = v151;
        v142 = v310;
        v143 = v298;
        sub_237FA39BC(v152, v146, &qword_27DEE54E8, &qword_2380358A0);
        swift_endAccess();
      }

      else
      {
        v153 = v301;
        sub_237FAB70C(v147, v301, type metadata accessor for _DeviceActivityData.User);
      }

      v157 = *v153;
      v156 = v153[1];

      sub_237FAB7D4(v153, type metadata accessor for _DeviceActivityData.User);
      v155 = v320;
      if (v156)
      {
        if (v306 == v157 && v316 == v156)
        {
          v133 = v143;

          v154 = 1;
        }

        else
        {
          v133 = v143;
          v154 = sub_2380324E4();
        }
      }

      else
      {
        v133 = v143;
        v154 = 0;
      }

      v140 = v142;
    }

    else
    {

      v154 = 1;
      v155 = v320;
    }

    v159 = v317[15];
    v158 = v317[16];
    __swift_project_boxed_opaque_existential_1(v317 + 12, v159);
    v160 = (*(v158 + 120))(v159, v158);
    if (v155)
    {

      *&v320 = 0;
    }

    else
    {
      if (v307 == v160 && v308 == v161)
      {

        if (v154)
        {
LABEL_53:
          v164 = v317[15];
          v165 = v317[16];
          __swift_project_boxed_opaque_existential_1(v317 + 12, v164);
          LOBYTE(v321) = 0;
          (*(v165 + 72))(&v321, v313, v324, v164, v165);
          *&v320 = 0;
          v176 = v319;
          sub_237FA5750(v319, &qword_27DEE54A8, &qword_2380359E0);
          v177 = v311;
          v178 = v297;
          (v314)(v297, 0, 1, v133);
          sub_237FA5AE0(v178, v176, &qword_27DEE54A8, &qword_2380359E0);
          v179 = v176;
          goto LABEL_57;
        }
      }

      else
      {
        v163 = sub_2380324E4();

        if (v154 & v163)
        {
          goto LABEL_53;
        }
      }

      *&v320 = 0;
    }

    v177 = v311;
    v179 = v319;
LABEL_57:
    sub_237FA90E4(v179, v177, &qword_27DEE54A8, &qword_2380359E0);
    v166 = *v140;
    if ((*v140)(v177, 1, v133) == 1)
    {
      v167 = v320;
      sub_237FA5750(v177, &qword_27DEE54A8, &qword_2380359E0);
      v168 = v316;
      if (v316)
      {
        v169 = v317[15];
        v170 = v317[16];
        __swift_project_boxed_opaque_existential_1(v317 + 12, v169);
        LOBYTE(v321) = 0;
        v171 = *(v170 + 88);
        v231 = v170;
        v172 = v296;
        v171(v306, v168, v307, v308, &v321, v313, v324, v169, v231);
        if (v167)
        {

          v139 = v319;
          sub_237FA5750(v319, &qword_27DEE54A8, &qword_2380359E0);
          v173 = v312;
          (v314)(v312, 1, 1, v133);
          *&v320 = 0;
          v140 = v310;
          goto LABEL_66;
        }

        *&v320 = 0;
        v179 = v319;
        sub_237FA5750(v319, &qword_27DEE54A8, &qword_2380359E0);

        (v314)(v172, 0, 1, v133);
        sub_237FA5AE0(v172, v179, &qword_27DEE54A8, &qword_2380359E0);
        v140 = v310;
      }

      else
      {

        v140 = v310;
      }
    }

    else
    {

      sub_237FA5750(v177, &qword_27DEE54A8, &qword_2380359E0);
    }

    v173 = v312;
    sub_237FA5AE0(v179, v312, &qword_27DEE54A8, &qword_2380359E0);
    v174 = v166(v173, 1, v133);
    v175 = v309;
    if (v174 != 1)
    {
      sub_237FAB70C(v173, v309, type metadata accessor for _DeviceActivityData.ActivitySegment);
      _DeviceActivityData.ActivitySegment.update(using:)(v175);
      sub_237FAB7D4(v175, type metadata accessor for _DeviceActivityData.ActivitySegment);
      v139 = v319;
      goto LABEL_31;
    }

    v139 = v319;
LABEL_66:
    sub_237FA5750(v173, &qword_27DEE54A8, &qword_2380359E0);
LABEL_31:
    v138 += 2;
    --v318;
  }

  while (v318);

  v181 = v270;
  sub_237FA90E4(v288, v270, &qword_27DEE54A8, &qword_2380359E0);
  if (v166(v181, 1, v133) != 1)
  {
    v191 = v181;
    v192 = v264;
    sub_237FAB70C(v191, v264, type metadata accessor for _DeviceActivityData.ActivitySegment);
    v183 = v299;
    v193 = _s14DeviceActivity01_aB4DataV0B7SegmentV2eeoiySbAE_AEtFZ_0(v299, v192);
    sub_237FAB7D4(v192, type metadata accessor for _DeviceActivityData.ActivitySegment);
    v184 = v290;
    v185 = v286;
    v186 = v294;
    v88 = v277;
    if ((v193 & 1) == 0)
    {
      goto LABEL_70;
    }

LABEL_73:
    (v258)(v291, v186);
    sub_237FA38D0(v259, v275);
    sub_237FAB7D4(v183, type metadata accessor for _DeviceActivityData.ActivitySegment);
    v72 = v289;
    v190 = v288;
LABEL_74:
    v98 = v287;
    (*v241)(v184, v287, v72);
    sub_237FA5750(v190, &qword_27DEE54A8, &qword_2380359E0);
    goto LABEL_13;
  }

  sub_237FA5750(v181, &qword_27DEE54A8, &qword_2380359E0);
  v182 = v133[9];
  v183 = v299;
  v184 = v290;
  v185 = v286;
  v186 = v294;
  v88 = v277;
  if (*(v299 + v182) == 0.0 && !*(*(v299 + *(v298 + 44)) + 16))
  {
    goto LABEL_73;
  }

LABEL_70:
  v187 = v317[15];
  v188 = v317[16];
  __swift_project_boxed_opaque_existential_1(v317 + 12, v187);
  LOBYTE(v321) = v293;
  v189 = v320;
  (*(v188 + 96))(v183, &v321, v187, v188);
  v190 = v288;
  *&v320 = v189;
  if (!v189)
  {
    (v258)(v291, v186);
    sub_237FA38D0(v259, v275);
    sub_237FAB7D4(v183, type metadata accessor for _DeviceActivityData.ActivitySegment);
    v72 = v289;
    goto LABEL_74;
  }

  sub_237FA38D0(v259, v275);
  (v258)(v291, v186);
  (*(v255 + 8))(v274, v256);
  sub_237FAB7D4(v185, type metadata accessor for _DeviceActivityData);
  sub_237FAB7D4(v183, type metadata accessor for _DeviceActivityData.ActivitySegment);
  sub_237FA5750(v190, &qword_27DEE54A8, &qword_2380359E0);
  v229 = v289;
  v230 = v260;
  v260(v287, v289);
  return v230(v184, v229);
}

uint64_t sub_237FF8A80(void *a1, uint64_t *a2, void *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  v86 = a1;
  v84 = a7;
  v81 = a5;
  v82 = a6;
  v75 = a4;
  v9 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v74 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v14 = (&v66 - v13);
  v15 = sub_238031A64();
  v76 = *(v15 - 8);
  v77 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_238031654();
  v18 = *(v78 - 8);
  v19 = MEMORY[0x28223BE20](v78);
  v67 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v66 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54A8, &qword_2380359E0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v79 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v66 - v27;
  MEMORY[0x28223BE20](v26);
  v83 = v10;
  v29 = *(v10 + 56);
  v80 = &v66 - v30;
  v85 = v9;
  v68 = v29;
  v29();
  v31 = a2[1];
  if (v31)
  {
    v72 = a3;
    v73 = v14;
    v71 = *a2;
    v32 = a3[15];
    v33 = a3[16];
    v34 = __swift_project_boxed_opaque_existential_1(a3 + 12, v32);
    v35 = v75[1];
    v69 = *v75;
    v70 = v34;
    v75 = v35;
    v89 = 0;
    v36 = [v86 interval];
    sub_2380315F4();

    sub_238031634();
    v38 = *(v18 + 8);
    v37 = v18 + 8;
    v66 = v38;
    v38(v22, v78);
    v39 = v87;
    (*(v33 + 80))(v71, v31, v69, v75, &v89, v17, v32, v33);
    v87 = v39;
    if (v39)
    {
      (v76[1])(v17, v77);
      if (qword_280C353A0 != -1)
      {
        swift_once();
      }

      v40 = sub_238031DB4();
      __swift_project_value_buffer(v40, qword_280C36C80);
      v41 = v86;
      v42 = sub_238031D94();
      v43 = sub_238032114();

      v44 = os_log_type_enabled(v42, v43);
      v14 = v73;
      if (v44)
      {
        v45 = swift_slowAlloc();
        v77 = v37;
        v46 = v45;
        v76 = swift_slowAlloc();
        v88 = v76;
        *v46 = 136446210;
        v47 = [v41 interval];
        v48 = v67;
        sub_2380315F4();

        sub_237FFCDA8(&qword_280C35068, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
        v49 = v78;
        v50 = sub_2380324C4();
        v52 = v51;
        v66(v48, v49);
        v53 = sub_237FDF8EC(v50, v52, &v88);

        *(v46 + 4) = v53;
        _os_log_impl(&dword_237FA1000, v42, v43, "Creating a new segment for interval: %{public}s", v46, 0xCu);
        v54 = v76;
        __swift_destroy_boxed_opaque_existential_1Tm(v76);
        MEMORY[0x2383E5E30](v54, -1, -1);
        MEMORY[0x2383E5E30](v46, -1, -1);
      }

      v87 = 0;
      a3 = v72;
      v55 = v85;
      v56 = v80;
    }

    else
    {
      (v76[1])(v17, v77);
      v57 = v80;
      sub_237FA5750(v80, &qword_27DEE54A8, &qword_2380359E0);
      v55 = v85;
      (v68)(v28, 0, 1, v85);
      v56 = v57;
      sub_237FA5AE0(v28, v57, &qword_27DEE54A8, &qword_2380359E0);
      a3 = v72;
      v14 = v73;
    }
  }

  else
  {
    v55 = v85;
    v56 = v80;
  }

  sub_238030420(v56, v81, v82, v84, v14);
  v58 = v79;
  sub_237FA90E4(v56, v79, &qword_27DEE54A8, &qword_2380359E0);
  if ((*(v83 + 48))(v58, 1, v55) == 1)
  {
    sub_237FA5750(v58, &qword_27DEE54A8, &qword_2380359E0);
    if (*(v14 + *(v55 + 36)) != 0.0 || *(*(v14 + *(v55 + 44)) + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v64 = v74;
    sub_237FAB70C(v58, v74, type metadata accessor for _DeviceActivityData.ActivitySegment);
    v65 = _s14DeviceActivity01_aB4DataV0B7SegmentV2eeoiySbAE_AEtFZ_0(v14, v64);
    sub_237FAB7D4(v64, type metadata accessor for _DeviceActivityData.ActivitySegment);
    if ((v65 & 1) == 0)
    {
LABEL_13:
      v59 = a3;
      v60 = a3[15];
      v61 = a3[16];
      __swift_project_boxed_opaque_existential_1(v59 + 12, v60);
      v90 = 0;
      v62 = v87;
      (*(v61 + 96))(v14, &v90, v60, v61);
      sub_237FA5750(v56, &qword_27DEE54A8, &qword_2380359E0);
      result = sub_237FAB7D4(v14, type metadata accessor for _DeviceActivityData.ActivitySegment);
      v87 = v62;
      return result;
    }
  }

  sub_237FA5750(v56, &qword_27DEE54A8, &qword_2380359E0);
  return sub_237FAB7D4(v14, type metadata accessor for _DeviceActivityData.ActivitySegment);
}

uint64_t sub_237FF9244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v5 = sub_238031A64();
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v6 = sub_238031654();
  v4[34] = v6;
  v4[35] = *(v6 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237FF937C, 0, 0);
}

uint64_t sub_237FF937C()
{
  v1 = swift_beginAccess();
  if (byte_27DEE58A1 == 2)
  {
    v0[5] = &type metadata for Feature.FeatureFlags;
    v4 = sub_237FBEFF4(v1, v2, v3);
    *(v0 + 16) = 1;
    v0[6] = v4;
    v5 = sub_238031BA4();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      v6 = v0[29];
      v7 = v0[26];
      v8 = swift_task_alloc();
      v0[39] = v8;
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      v9 = swift_task_alloc();
      v0[40] = v9;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54D0, &qword_238035880);
      *v9 = v0;
      v9[1] = sub_237FF96D4;

      return MEMORY[0x2822008A0](v0 + 25, 0, 0, 0xD000000000000029, 0x8000000238037090, sub_237FFCDA0, v8, v10);
    }
  }

  else if ((byte_27DEE58A1 & 1) == 0)
  {
    goto LABEL_3;
  }

  v11 = swift_task_alloc();
  v0[38] = v11;
  *v11 = v0;
  v11[1] = sub_237FF9560;
  v12 = v0[28];
  v14 = v0[26];
  v13 = v0[27];

  return sub_237FFA81C(v14, v13, v12);
}