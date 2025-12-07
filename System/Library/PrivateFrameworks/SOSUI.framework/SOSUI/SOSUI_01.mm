uint64_t sub_2643A5F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v5 || (sub_2643B0888() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2643B0888();

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

uint64_t sub_2643A6004(uint64_t a1)
{
  v2 = sub_2643A9888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A6040(uint64_t a1)
{
  v2 = sub_2643A9888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2643A6094(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF670A0, &qword_2643B20D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A9888();
  sub_2643B0978();
  v8[15] = 0;
  sub_2643B0838();
  if (!v1)
  {
    v8[14] = 1;
    sub_2643B0838();
  }

  return (*(v4 + 8))(v6, v3);
}

void *SOSUIWebtRTCDoubleRange.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF670A8, &qword_2643B20D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A9888();
  sub_2643B0958();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for SOSUIWebtRTCDoubleRange();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    sub_2643B0788();
    *(v1 + OBJC_IVAR____TtC5SOSUI23SOSUIWebtRTCDoubleRange_min) = v9;
    v14 = 1;
    sub_2643B0788();
    *(v1 + OBJC_IVAR____TtC5SOSUI23SOSUIWebtRTCDoubleRange_max) = v11;
    v12 = type metadata accessor for SOSUIWebtRTCDoubleRange();
    v13.receiver = v1;
    v13.super_class = v12;
    v3 = objc_msgSendSuper2(&v13, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t sub_2643A6458@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_2643A64E8(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC5SOSUI24SOSUIWebtRTCCapabilities_zoom] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

void *SOSUIWebtRTCCapabilities.zoom.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5SOSUI24SOSUIWebtRTCCapabilities_zoom);
  v2 = v1;
  return v1;
}

uint64_t sub_2643A65C8()
{
  sub_2643B0918();
  MEMORY[0x266736720](0);
  return sub_2643B0938();
}

uint64_t sub_2643A660C(uint64_t a1)
{
  sub_2643B0918();
  MEMORY[0x266736720](0);
  return sub_2643B0938();
}

uint64_t sub_2643A665C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1836019578 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2643B0888();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2643A66E4(uint64_t a1)
{
  v2 = sub_2643A9900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2643A6720(uint64_t a1)
{
  v2 = sub_2643A9900();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_2643A6774(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2643A67BC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF670B8, &qword_2643B20E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A9900();
  sub_2643B0978();
  v9[1] = *(v2 + OBJC_IVAR____TtC5SOSUI24SOSUIWebtRTCCapabilities_zoom);
  type metadata accessor for SOSUIWebtRTCDoubleRange();
  sub_2643ABB70(&qword_27FF670C0, type metadata accessor for SOSUIWebtRTCDoubleRange, &protocol conformance descriptor for SOSUIWebtRTCDoubleRange);
  sub_2643B0808();
  return (*(v5 + 8))(v7, v4);
}

void *SOSUIWebtRTCCapabilities.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF670C8, &qword_2643B20E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A9900();
  sub_2643B0958();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for SOSUIWebtRTCCapabilities();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for SOSUIWebtRTCDoubleRange();
    sub_2643ABB70(&qword_27FF670D0, type metadata accessor for SOSUIWebtRTCDoubleRange, &protocol conformance descriptor for SOSUIWebtRTCDoubleRange);
    sub_2643B0758();
    *&v3[OBJC_IVAR____TtC5SOSUI24SOSUIWebtRTCCapabilities_zoom] = v13;
    v11 = type metadata accessor for SOSUIWebtRTCCapabilities();
    v12.receiver = v3;
    v12.super_class = v11;
    v9 = objc_msgSendSuper2(&v12, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

uint64_t sub_2643A6B90@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2643A6C20(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643B0948();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v4 = sub_2643B08A8();
    v7 = v4;
    v8 = v5;
    v9 = v4 == 0x646F6F676C6C6163 && v5 == 0xE800000000000000;
    if (v9 || (sub_2643B0888() & 1) != 0)
    {

      v3 = 1;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_0(v14);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v3;
    }

    if (v7 == 0x737561706C6C6163 && v8 == 0xEA00000000006465 || (sub_2643B0888() & 1) != 0)
    {

      v3 = 2;
      goto LABEL_12;
    }

    if (v7 == 0x726F6F706C6C6163 && v8 == 0xE800000000000000 || (sub_2643B0888() & 1) != 0)
    {

      v3 = 3;
      goto LABEL_12;
    }

    if (v7 == 1701602409 && v8 == 0xE400000000000000 || (sub_2643B0888() & 1) != 0)
    {

      v3 = 4;
      goto LABEL_12;
    }

    if (v7 == 0x77656976657270 && v8 == 0xE700000000000000 || (sub_2643B0888() & 1) != 0)
    {

      v3 = 5;
      goto LABEL_12;
    }

    if (v7 == 0x7272656C61746166 && v8 == 0xEA0000000000726FLL || (sub_2643B0888() & 1) != 0)
    {

      v3 = 6;
      goto LABEL_12;
    }

    if (v7 == 0x697463656E6E6F63 && v8 == 0xEA0000000000676ELL || (sub_2643B0888() & 1) != 0)
    {

      v3 = 7;
      goto LABEL_12;
    }

    if (v7 == 0x6465646E65 && v8 == 0xE500000000000000)
    {

LABEL_41:
      v3 = 8;
      goto LABEL_12;
    }

    v10 = sub_2643B0888();

    if (v10)
    {
      goto LABEL_41;
    }

    v11 = sub_2643B06C8();
    swift_allocError();
    v13 = v12;
    v3 = __swift_project_boxed_opaque_existential_1(v14, v15);
    sub_2643B0898();
    sub_2643B06B8();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84168], v11);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

unint64_t sub_2643A7008(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2643A7018(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643B0948();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v4 = sub_2643B08A8();
    v7 = v4;
    v8 = v5;
    v9 = v4 == 1919251317 && v5 == 0xE400000000000000;
    if (v9 || (sub_2643B0888() & 1) != 0)
    {

      v3 = 0;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_0(v14);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v3;
    }

    if (v7 == 0x6D6E6F7269766E65 && v8 == 0xEB00000000746E65)
    {

LABEL_17:
      v3 = 1;
      goto LABEL_12;
    }

    v10 = sub_2643B0888();

    if (v10)
    {
      goto LABEL_17;
    }

    v11 = sub_2643B06C8();
    swift_allocError();
    v13 = v12;
    v3 = __swift_project_boxed_opaque_existential_1(v14, v15);
    sub_2643B0898();
    sub_2643B06B8();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84168], v11);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_2643A7240(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643B0948();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v4 = sub_2643B08A8();
    v7 = v4;
    v8 = v5;
    v9 = v4 == 0x6E6F69746F6DLL && v5 == 0xE600000000000000;
    if (v9 || (sub_2643B0888() & 1) != 0)
    {

      v3 = 0;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_0(v14);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v3;
    }

    if (v7 == 0x6C6961746564 && v8 == 0xE600000000000000 || (sub_2643B0888() & 1) != 0)
    {

      v3 = 1;
      goto LABEL_12;
    }

    if (v7 == 0x6465636E616C6162 && v8 == 0xE800000000000000)
    {

LABEL_21:
      v3 = 2;
      goto LABEL_12;
    }

    v10 = sub_2643B0888();

    if (v10)
    {
      goto LABEL_21;
    }

    v11 = sub_2643B06C8();
    swift_allocError();
    v13 = v12;
    v3 = __swift_project_boxed_opaque_existential_1(v14, v15);
    sub_2643B0898();
    sub_2643B06B8();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84168], v11);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

unint64_t sub_2643A74CC()
{
  result = qword_27FF67310;
  if (!qword_27FF67310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67310);
  }

  return result;
}

unint64_t sub_2643A7520()
{
  result = qword_27FF66F00;
  if (!qword_27FF66F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF66F00);
  }

  return result;
}

unint64_t sub_2643A7574()
{
  result = qword_27FF66F08;
  if (!qword_27FF66F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF66F08);
  }

  return result;
}

unint64_t sub_2643A75EC()
{
  result = qword_27FF66F20;
  if (!qword_27FF66F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF66F20);
  }

  return result;
}

unint64_t sub_2643A7640()
{
  result = qword_27FF66F28;
  if (!qword_27FF66F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF66F28);
  }

  return result;
}

unint64_t sub_2643A7694()
{
  result = qword_27FF67318;
  if (!qword_27FF67318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67318);
  }

  return result;
}

unint64_t sub_2643A76E8()
{
  result = qword_27FF66F40;
  if (!qword_27FF66F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF66F40);
  }

  return result;
}

unint64_t sub_2643A773C()
{
  result = qword_27FF66F50;
  if (!qword_27FF66F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF66F50);
  }

  return result;
}

unint64_t sub_2643A7790()
{
  result = qword_27FF67320;
  if (!qword_27FF67320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67320);
  }

  return result;
}

unint64_t sub_2643A7808()
{
  result = qword_27FF67328;
  if (!qword_27FF67328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67328);
  }

  return result;
}

unint64_t sub_2643A7880()
{
  result = qword_27FF67330;
  if (!qword_27FF67330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67330);
  }

  return result;
}

unint64_t sub_2643A78F8()
{
  result = qword_27FF67338;
  if (!qword_27FF67338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67338);
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

uint64_t sub_2643A7994(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF671C0, &unk_2643B3C90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2643A7A00()
{
  result = qword_27FF67340;
  if (!qword_27FF67340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67340);
  }

  return result;
}

unint64_t sub_2643A7A54()
{
  result = qword_27FF67348;
  if (!qword_27FF67348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67348);
  }

  return result;
}

unint64_t sub_2643A7AA8()
{
  result = qword_27FF67350;
  if (!qword_27FF67350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67350);
  }

  return result;
}

unint64_t sub_2643A7AFC()
{
  result = qword_27FF67358;
  if (!qword_27FF67358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67358);
  }

  return result;
}

unint64_t sub_2643A7B50()
{
  result = qword_27FF67360;
  if (!qword_27FF67360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67360);
  }

  return result;
}

unint64_t sub_2643A7BA4()
{
  result = qword_27FF67368;
  if (!qword_27FF67368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67368);
  }

  return result;
}

unint64_t sub_2643A7BF8()
{
  result = qword_27FF67370;
  if (!qword_27FF67370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67370);
  }

  return result;
}

uint64_t sub_2643A7C4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_2643B0888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064 || (sub_2643B0888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEA0000000000676ELL || (sub_2643B0888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x78456172656D6163 && a2 == 0xEC00000073747369 || (sub_2643B0888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x63416172656D6163 && a2 == 0xEC00000065766974 || (sub_2643B0888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61466172656D6163 && a2 == 0xEC000000676E6963 || (sub_2643B0888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6576654C6D6F6F7ALL && a2 == 0xE90000000000006CLL || (sub_2643B0888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6863726F74 && a2 == 0xE500000000000000 || (sub_2643B0888() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_2643B0888();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_2643A7F40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000002643B48A0 == a2;
  if (v3 || (sub_2643B0888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002643B48C0 == a2 || (sub_2643B0888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002643B48E0 == a2 || (sub_2643B0888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002643B4900 == a2 || (sub_2643B0888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x426D756D696E696DLL && a2 == 0xEE00657461727469 || (sub_2643B0888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x426D756D6978616DLL && a2 == 0xEE00657461727469 || (sub_2643B0888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6572506F65646976 && a2 == 0xEF65636E65726566 || (sub_2643B0888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7453646573756170 && a2 == 0xEC000000676E6972 || (sub_2643B0888() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F436775626564 && a2 == 0xEF6E6F697463656ELL || (sub_2643B0888() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746152656D617266 && a2 == 0xE900000000000065)
  {

    return 9;
  }

  else
  {
    v6 = sub_2643B0888();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_2643A8298(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_2643B0888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_2643B0888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B63617473 && a2 == 0xE500000000000000 || (sub_2643B0888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746174537473616CLL && a2 == 0xE900000000000065 || (sub_2643B0888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C62617972746572 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v6 = sub_2643B0888();

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

uint64_t sub_2643A8450(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65746172746962 && a2 == 0xE700000000000000;
  if (v4 || (sub_2643B0888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002643B4760 == a2 || (sub_2643B0888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4C74656B636170 && a2 == 0xEA00000000007373 || (sub_2643B0888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002643B4780 == a2 || (sub_2643B0888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x655073656D617266 && a2 == 0xEF646E6F63655372 || (sub_2643B0888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72657474696ALL && a2 == 0xE600000000000000 || (sub_2643B0888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEE00726F6F506E6FLL || (sub_2643B0888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E65537365747962 && a2 == 0xE900000000000074)
  {

    return 7;
  }

  else
  {
    v6 = sub_2643B0888();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_2643A870C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73654D6574617473 && a2 == 0xEC00000065676173;
  if (v4 || (sub_2643B0888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173 || (sub_2643B0888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D7974696C617571 && a2 == 0xEE00656761737365 || (sub_2643B0888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74736F4C6C6C6163 && a2 == 0xEF6567617373654DLL || (sub_2643B0888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617373654D676F6CLL && a2 == 0xEA00000000006567 || (sub_2643B0888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002643B4920 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_2643B0888();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_2643A8934(void *a1)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67110, &qword_2643B3C30);
  v56 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v60 = &v42 - v2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67118, &qword_2643B3C38);
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v57 = &v42 - v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67120, &qword_2643B3C40);
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v59 = &v42 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67128, &qword_2643B3C48);
  v54 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v58 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67130, &qword_2643B3C50);
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67138, &qword_2643B3C58);
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67140, &qword_2643B3C60);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_2643A7A00();
  v18 = v61;
  sub_2643B0958();
  if (!v18)
  {
    v43 = v9;
    v44 = 0;
    v20 = v58;
    v19 = v59;
    v16 = v60;
    v45 = v13;
    v61 = sub_2643B07B8();
    if (*(v61 + 16) != 1 || (v21 = *(v61 + 32), v21 == 6))
    {
      v16 = sub_2643B06C8();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67108, &qword_2643B3C28);
      *v27 = &type metadata for SOSUIWebRTCMessage;
      sub_2643B0718();
      sub_2643B06B8();
      (*(*(v16 - 8) + 104))(v27, *MEMORY[0x277D84160], v16);
      swift_willThrow();
      (*(v45 + 8))(v15, v12);
    }

    else
    {
      if (*(v61 + 32) > 2u)
      {
        if (v21 == 3)
        {
          LOBYTE(v63) = 3;
          sub_2643A7AFC();
          v33 = v44;
          sub_2643B0708();
          v34 = v45;
          if (!v33)
          {
            (*(v48 + 8))(v19, v51);
            (*(v34 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v16 = 0xA000000000000000;
            goto LABEL_11;
          }

          v16 = v45 + 8;
          (*(v45 + 8))(v15, v12);
          goto LABEL_10;
        }

        v24 = v45;
        if (v21 == 4)
        {
          LOBYTE(v63) = 4;
          sub_2643A7AA8();
          v29 = v57;
          v30 = v44;
          sub_2643B0708();
          if (!v30)
          {
            type metadata accessor for SOSUIWebRTCLogMessage();
            sub_2643ABB70(&qword_27FF67150, type metadata accessor for SOSUIWebRTCLogMessage, &protocol conformance descriptor for SOSUIWebRTCLogMessage);
            v31 = v53;
            sub_2643B07A8();
            (*(v55 + 8))(v29, v31);
            (*(v24 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v16 = v63 | 0x6000000000000000;
            goto LABEL_11;
          }
        }

        else
        {
          LOBYTE(v63) = 5;
          sub_2643A7A54();
          v39 = v44;
          sub_2643B0708();
          if (!v39)
          {
            type metadata accessor for SOSUIWebRTCConnectionInfoMessage();
            sub_2643ABB70(&qword_27FF67148, type metadata accessor for SOSUIWebRTCConnectionInfoMessage, &protocol conformance descriptor for SOSUIWebRTCConnectionInfoMessage);
            v40 = v52;
            sub_2643B07A8();
            (*(v56 + 8))(v16, v40);
            (*(v24 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v16 = v63 | 0x8000000000000000;
            goto LABEL_11;
          }
        }

        goto LABEL_25;
      }

      if (*(v61 + 32))
      {
        if (v21 == 1)
        {
          LOBYTE(v63) = 1;
          sub_2643A7BA4();
          v22 = v8;
          v23 = v44;
          sub_2643B0708();
          v24 = v45;
          if (!v23)
          {
            type metadata accessor for SOSUIWebRTCErrorMessage();
            sub_2643ABB70(&qword_27FF66F30, type metadata accessor for SOSUIWebRTCErrorMessage, &protocol conformance descriptor for SOSUIWebRTCErrorMessage);
            v25 = v50;
            sub_2643B07A8();
            (*(v49 + 8))(v22, v25);
            (*(v24 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v16 = v63 | 0x2000000000000000;
            goto LABEL_11;
          }

LABEL_25:
          (*(v24 + 8))(v15, v12);
          goto LABEL_10;
        }

        LOBYTE(v63) = 2;
        sub_2643A7B50();
        v35 = v20;
        v36 = v44;
        sub_2643B0708();
        v37 = v45;
        if (!v36)
        {
          type metadata accessor for SOSUIWebRTCQualityMessage();
          sub_2643ABB70(&qword_27FF67158, type metadata accessor for SOSUIWebRTCQualityMessage, &protocol conformance descriptor for SOSUIWebRTCQualityMessage);
          v38 = v47;
          sub_2643B07A8();
          (*(v54 + 8))(v35, v38);
          (*(v37 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v16 = v63 | 0x4000000000000000;
          goto LABEL_11;
        }
      }

      else
      {
        LOBYTE(v63) = 0;
        sub_2643A7BF8();
        v32 = v44;
        sub_2643B0708();
        if (!v32)
        {
          type metadata accessor for SOSUIWebRTCState();
          sub_2643ABB70(&unk_27FF67160, type metadata accessor for SOSUIWebRTCState, &protocol conformance descriptor for SOSUIWebRTCState);
          v41 = v43;
          sub_2643B07A8();
          (*(v46 + 8))(v11, v41);
          (*(v45 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v16 = v63;
          goto LABEL_11;
        }
      }

      (*(v45 + 8))(v15, v12);
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_0(v62);
  return v16;
}

unint64_t sub_2643A94C8()
{
  result = qword_27FF67378;
  if (!qword_27FF67378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67378);
  }

  return result;
}

unint64_t sub_2643A951C()
{
  result = qword_27FF67380;
  if (!qword_27FF67380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67380);
  }

  return result;
}

uint64_t sub_2643A9570(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF670F8, &qword_2643B3C18);
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67100, &qword_2643B3C20);
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2643A94C8();
  sub_2643B0958();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_2643B07B8() + 16) == 1)
    {
      sub_2643A951C();
      sub_2643B0708();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_2643B06C8();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67108, &qword_2643B3C28);
      *v13 = &type metadata for SOSUIWebRTCInternalMessage;
      sub_2643B0718();
      sub_2643B06B8();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84160], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_2643A9888()
{
  result = qword_27FF67388;
  if (!qword_27FF67388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67388);
  }

  return result;
}

unint64_t sub_2643A9900()
{
  result = qword_27FF67390[0];
  if (!qword_27FF67390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF67390);
  }

  return result;
}

unint64_t sub_2643A9958()
{
  result = qword_27FF670D8;
  if (!qword_27FF670D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF670D8);
  }

  return result;
}

unint64_t sub_2643A99B0()
{
  result = qword_27FF670E0;
  if (!qword_27FF670E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF670E0);
  }

  return result;
}

unint64_t sub_2643A9A08()
{
  result = qword_27FF670E8;
  if (!qword_27FF670E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF670E8);
  }

  return result;
}

unint64_t sub_2643A9A60()
{
  result = qword_27FF670F0;
  if (!qword_27FF670F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF670F0);
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_2643A9BB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 120);
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

uint64_t sub_2643A9C10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5SOSUI18SOSUIWebRTCMessageO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

uint64_t sub_2643A9EE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2643A9F40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_2643A9FA0(void *result, uint64_t a2)
{
  if (a2 < 5)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SOSUIWebRTCMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SOSUIWebRTCMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s5SOSUI18SOSUIWebRTCMessageO20LogMessageCodingKeysOwet_0(unsigned int *a1, int a2)
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

_WORD *_s5SOSUI18SOSUIWebRTCMessageO20LogMessageCodingKeysOwst_0(_WORD *result, int a2, int a3)
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

uint64_t sub_2643AA3E8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2643AA47C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SOSUIWebRTCQualityMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SOSUIWebRTCQualityMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SOSUIWebRTCErrorMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SOSUIWebRTCErrorMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SOSUIWebRTCConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SOSUIWebRTCConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SOSUIWebRTCState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SOSUIWebRTCState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2643AAA9C()
{
  result = qword_27FF68720[0];
  if (!qword_27FF68720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF68720);
  }

  return result;
}

unint64_t sub_2643AAAF4()
{
  result = qword_27FF68930[0];
  if (!qword_27FF68930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF68930);
  }

  return result;
}

unint64_t sub_2643AAB4C()
{
  result = qword_27FF68B40[0];
  if (!qword_27FF68B40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF68B40);
  }

  return result;
}

unint64_t sub_2643AABA4()
{
  result = qword_27FF68D50[0];
  if (!qword_27FF68D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF68D50);
  }

  return result;
}

unint64_t sub_2643AABFC()
{
  result = qword_27FF68F60[0];
  if (!qword_27FF68F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF68F60);
  }

  return result;
}

unint64_t sub_2643AAC54()
{
  result = qword_27FF69170[0];
  if (!qword_27FF69170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF69170);
  }

  return result;
}

unint64_t sub_2643AACAC()
{
  result = qword_27FF69380[0];
  if (!qword_27FF69380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF69380);
  }

  return result;
}

unint64_t sub_2643AAD04()
{
  result = qword_27FF69590[0];
  if (!qword_27FF69590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF69590);
  }

  return result;
}

unint64_t sub_2643AAD5C()
{
  result = qword_27FF698A0[0];
  if (!qword_27FF698A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF698A0);
  }

  return result;
}

unint64_t sub_2643AADB4()
{
  result = qword_27FF69AB0[0];
  if (!qword_27FF69AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF69AB0);
  }

  return result;
}

unint64_t sub_2643AAE0C()
{
  result = qword_27FF69CC0[0];
  if (!qword_27FF69CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF69CC0);
  }

  return result;
}

unint64_t sub_2643AAE64()
{
  result = qword_27FF69ED0[0];
  if (!qword_27FF69ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF69ED0);
  }

  return result;
}

unint64_t sub_2643AAEBC()
{
  result = qword_27FF6A1E0[0];
  if (!qword_27FF6A1E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6A1E0);
  }

  return result;
}

unint64_t sub_2643AAF14()
{
  result = qword_27FF6A3F0[0];
  if (!qword_27FF6A3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6A3F0);
  }

  return result;
}

unint64_t sub_2643AAF6C()
{
  result = qword_27FF6A600[0];
  if (!qword_27FF6A600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6A600);
  }

  return result;
}

unint64_t sub_2643AAFC4()
{
  result = qword_27FF6A710;
  if (!qword_27FF6A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6A710);
  }

  return result;
}

unint64_t sub_2643AB01C()
{
  result = qword_27FF6A718[0];
  if (!qword_27FF6A718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6A718);
  }

  return result;
}

unint64_t sub_2643AB074()
{
  result = qword_27FF6A7A0;
  if (!qword_27FF6A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6A7A0);
  }

  return result;
}

unint64_t sub_2643AB0CC()
{
  result = qword_27FF6A7A8[0];
  if (!qword_27FF6A7A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6A7A8);
  }

  return result;
}

unint64_t sub_2643AB124()
{
  result = qword_27FF6A830;
  if (!qword_27FF6A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6A830);
  }

  return result;
}

unint64_t sub_2643AB17C()
{
  result = qword_27FF6A838[0];
  if (!qword_27FF6A838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6A838);
  }

  return result;
}

unint64_t sub_2643AB1D4()
{
  result = qword_27FF6A8C0;
  if (!qword_27FF6A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6A8C0);
  }

  return result;
}

unint64_t sub_2643AB22C()
{
  result = qword_27FF6A8C8[0];
  if (!qword_27FF6A8C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6A8C8);
  }

  return result;
}

unint64_t sub_2643AB284()
{
  result = qword_27FF6A950;
  if (!qword_27FF6A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6A950);
  }

  return result;
}

unint64_t sub_2643AB2DC()
{
  result = qword_27FF6A958[0];
  if (!qword_27FF6A958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6A958);
  }

  return result;
}

unint64_t sub_2643AB334()
{
  result = qword_27FF6A9E0;
  if (!qword_27FF6A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6A9E0);
  }

  return result;
}

unint64_t sub_2643AB38C()
{
  result = qword_27FF6A9E8[0];
  if (!qword_27FF6A9E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6A9E8);
  }

  return result;
}

unint64_t sub_2643AB3E4()
{
  result = qword_27FF6AA70;
  if (!qword_27FF6AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6AA70);
  }

  return result;
}

unint64_t sub_2643AB43C()
{
  result = qword_27FF6AA78;
  if (!qword_27FF6AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6AA78);
  }

  return result;
}

unint64_t sub_2643AB494()
{
  result = qword_27FF6AB00;
  if (!qword_27FF6AB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6AB00);
  }

  return result;
}

unint64_t sub_2643AB4EC()
{
  result = qword_27FF6AB08[0];
  if (!qword_27FF6AB08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6AB08);
  }

  return result;
}

unint64_t sub_2643AB544()
{
  result = qword_27FF6AB90;
  if (!qword_27FF6AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6AB90);
  }

  return result;
}

unint64_t sub_2643AB59C()
{
  result = qword_27FF6AB98[0];
  if (!qword_27FF6AB98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6AB98);
  }

  return result;
}

unint64_t sub_2643AB5F4()
{
  result = qword_27FF6AC20;
  if (!qword_27FF6AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6AC20);
  }

  return result;
}

unint64_t sub_2643AB64C()
{
  result = qword_27FF6AC28[0];
  if (!qword_27FF6AC28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6AC28);
  }

  return result;
}

unint64_t sub_2643AB6A4()
{
  result = qword_27FF6ACB0;
  if (!qword_27FF6ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6ACB0);
  }

  return result;
}

unint64_t sub_2643AB6FC()
{
  result = qword_27FF6ACB8[0];
  if (!qword_27FF6ACB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6ACB8);
  }

  return result;
}

unint64_t sub_2643AB754()
{
  result = qword_27FF6AD40;
  if (!qword_27FF6AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6AD40);
  }

  return result;
}

unint64_t sub_2643AB7AC()
{
  result = qword_27FF6AD48[0];
  if (!qword_27FF6AD48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6AD48);
  }

  return result;
}

unint64_t sub_2643AB804()
{
  result = qword_27FF6ADD0;
  if (!qword_27FF6ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6ADD0);
  }

  return result;
}

unint64_t sub_2643AB85C()
{
  result = qword_27FF6ADD8[0];
  if (!qword_27FF6ADD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6ADD8);
  }

  return result;
}

unint64_t sub_2643AB8B4()
{
  result = qword_27FF6AE60;
  if (!qword_27FF6AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6AE60);
  }

  return result;
}

unint64_t sub_2643AB90C()
{
  result = qword_27FF6AE68[0];
  if (!qword_27FF6AE68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6AE68);
  }

  return result;
}

unint64_t sub_2643AB964()
{
  result = qword_27FF6AEF0;
  if (!qword_27FF6AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6AEF0);
  }

  return result;
}

unint64_t sub_2643AB9BC()
{
  result = qword_27FF6AEF8[0];
  if (!qword_27FF6AEF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6AEF8);
  }

  return result;
}

unint64_t sub_2643ABA14()
{
  result = qword_27FF6AF80;
  if (!qword_27FF6AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6AF80);
  }

  return result;
}

unint64_t sub_2643ABA6C()
{
  result = qword_27FF6AF88[0];
  if (!qword_27FF6AF88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6AF88);
  }

  return result;
}

unint64_t sub_2643ABAC4()
{
  result = qword_27FF6B010;
  if (!qword_27FF6B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6B010);
  }

  return result;
}

unint64_t sub_2643ABB1C()
{
  result = qword_27FF6B018[0];
  if (!qword_27FF6B018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6B018);
  }

  return result;
}

uint64_t sub_2643ABB70(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2643ABC24(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_2643ABC80(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27FF67170;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2643ABD18;
}

void sub_2643ABD18(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_2643ABDE4(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2643ABE44(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27FF67178;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2643852BC;
}

uint64_t sub_2643ABEDC()
{
  v1 = (v0 + qword_27FF671A0);
  swift_beginAccess();
  v2 = *v1;
  sub_26439FC58(*v1, v1[1]);
  return v2;
}

uint64_t sub_2643ABF38(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27FF671A0);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_26439B0AC(v6, v7);
}

uint64_t sub_2643ABFF8()
{
  v1 = qword_27FF671A8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2643AC03C(char a1)
{
  v3 = qword_27FF671A8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2643AC0F0(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x88);

  return v6(a1, a2);
}

uint64_t sub_2643AC180@<X0>(uint64_t a1@<X0>, id a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = [a2 body];
  sub_2643B0688();
  swift_unknownObjectRelease();
  sub_2643AF3C4(a1, v11, a3, a4, a5);
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

void sub_2643AC214(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_2643AF870(v7);
}

id sub_2643AC28C()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = (v0 + qword_27FF671A0);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + qword_27FF671A8) = 0;
  v3 = *(v1 + 96);
  v6[0] = *(v1 + 80);
  v6[1] = v3;
  v4 = type metadata accessor for SOSUIWebRTCRPC.LoadedListener(0, v6);
  v7.receiver = v0;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_2643AC344()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v4[0] = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v4[1] = v1;
  v2 = type metadata accessor for SOSUIWebRTCRPC.LoadedListener(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_2643AC3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_allocWithZone(v3);
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2643AC488;

  return sub_2643AC588(a1, a2, a3);
}

uint64_t sub_2643AC488(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2643AC588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v4[30] = *MEMORY[0x277D85000] & *v3;
  v5 = sub_2643B04B8();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = sub_2643B05D8();
  v4[38] = sub_2643B05C8();
  v7 = sub_2643B05A8();
  v4[39] = v7;
  v4[40] = v6;

  return MEMORY[0x2822009F8](sub_2643AC6E0, v7, v6);
}

uint64_t sub_2643AC6E0()
{
  receiver = v0[18].receiver;
  v2 = v0[16].receiver;
  super_class = v0[15].super_class;
  v3 = v0[14].super_class;
  v4 = v0[15].receiver;
  v5 = v0[14].receiver;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6 = v3 + qword_27FF67188;
  strcpy(v3 + qword_27FF67188, "webRTCParent");
  v6[13] = 0;
  *(v6 + 7) = -5120;
  v7 = (v3 + qword_27FF67190);
  *v7 = 0xD000000000000012;
  v7[1] = 0x80000002643B49D0;
  v8 = v3 + qword_27FF67198;
  strcpy(v3 + qword_27FF67198, "WebRTCClient");
  v8[13] = 0;
  *(v8 + 7) = -5120;
  *(v3 + qword_27FF671B0) = 1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v3 + qword_27FF67180) = v5;
  v9 = v4[10];
  v10 = v4[11];
  v12 = v4[12];
  v11 = v4[13];
  v38 = v9;
  v0[1].receiver = v9;
  v0[1].super_class = v10;
  v0[2].receiver = v12;
  v0[2].super_class = v11;
  v13 = type metadata accessor for SOSUIWebRTCRPC(0, &v0[1]);
  v0[12].receiver = v3;
  v0[12].super_class = v13;
  v14 = objc_msgSendSuper2(v0 + 12, sel_init);
  v0[20].super_class = v14;
  v15 = v14;
  v16 = sub_2643845D8();
  v0[21].receiver = v16;
  v17 = *(v2 + 2);
  v0[21].super_class = v17;
  v0[22].receiver = ((v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
  (v17)(receiver, v16, super_class);
  v18 = sub_2643B0498();
  v19 = sub_2643B0648();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_264382000, v18, v19, "SOSUIWebRTCRPC.init: waiting for web client connection", v20, 2u);
    MEMORY[0x266736CC0](v20, -1, -1);
  }

  v21 = v0[18].receiver;
  v22 = v0[15].super_class;
  v23 = v0[16].receiver;
  v24 = v0[13].receiver;

  v23[1](v21, v22);
  v0[3].receiver = v38;
  v0[3].super_class = v10;
  v0[4].receiver = v12;
  v0[4].super_class = v11;
  v25 = [objc_allocWithZone(type metadata accessor for SOSUIWebRTCRPC.LoadedListener(0 &v0[3]))];
  v0[22].super_class = v25;
  v26 = [v24 configuration];
  v27 = [v26 userContentController];

  v0[23].receiver = qword_27FF67190;
  v28 = v25;

  v29 = sub_2643B04E8();

  [v27 addScriptMessageHandler:v28 name:v29];

  v30 = [v24 configuration];
  v31 = [v30 userContentController];

  v32 = sub_2643B04E8();

  [v31 addScriptMessageHandler:v15 name:v32];

  v33 = MEMORY[0x277D84F90];
  v34 = sub_26439B2CC(MEMORY[0x277D84F90]);
  v0[23].super_class = v34;
  v35 = *((*MEMORY[0x277D85000] & *v15) + 0xF8);
  v39 = (*MEMORY[0x277D85000] & *v15) + 248;
  v0[24].receiver = v35;
  v0[24].super_class = (v39 & 0xFFFFFFFFFFFFLL | 0xE2DD000000000000);
  v41 = (v35 + *v35);
  v36 = swift_task_alloc();
  v0[25].receiver = v36;
  *v36 = v0;
  v36[1] = sub_2643ACBE0;

  return v41(v0 + 5, 0x4364694474736F68, 0xEE007463656E6E6FLL, v33, v34);
}

uint64_t sub_2643ACBE0()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = *(v2 + 312);
    v4 = *(v2 + 320);
    v5 = sub_2643AD51C;
  }

  else
  {
    sub_26439E21C(v2 + 80, &qword_27FF66D38, &unk_2643B3C80);

    v3 = *(v2 + 312);
    v4 = *(v2 + 320);
    v5 = sub_2643ACD18;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2643ACD18()
{
  v1 = v0[43];
  v2 = v0[42];
  v3 = v0[35];
  v4 = v0[31];

  v1(v3, v2, v4);
  v5 = sub_2643B0498();
  v6 = sub_2643B0648();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_264382000, v5, v6, "SOSUIWebRTCRPC.init: web client already loaded", v7, 2u);
    MEMORY[0x266736CC0](v7, -1, -1);
  }

  v8 = v0[35];
  v9 = v0[31];
  v10 = v0[32];
  v11 = v0[26];

  v12 = *(v10 + 8);
  v12(v8, v9);
  v13 = [v11 configuration];
  v14 = [v13 userContentController];

  v15 = sub_2643B04E8();

  [v14 removeScriptMessageHandlerForName_];

  (v0[43])(v0[34], v0[42], v0[31]);
  v16 = sub_2643B0498();
  v17 = sub_2643B0648();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[45];
  v20 = v0[26];
  if (v18)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_264382000, v16, v17, "SOSUIWebRTCRPC.init: web client connected", v21, 2u);
    MEMORY[0x266736CC0](v21, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v12(v0[34], v0[31]);

  v22 = v0[1];
  v23 = v0[41];

  return v22(v23);
}

uint64_t sub_2643ACFC4()
{
  v1 = *v0;

  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  return MEMORY[0x2822009F8](sub_2643AD124, v3, v2);
}

uint64_t sub_2643AD124()
{
  v1 = v0[48];
  v2 = MEMORY[0x277D84F90];
  v3 = sub_26439B2CC(MEMORY[0x277D84F90]);
  v0[56] = v3;
  v6 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[57] = v4;
  *v4 = v0;
  v4[1] = sub_2643AD260;

  return (v6)(v0 + 14, 0x4364694474736F68, 0xEE007463656E6E6FLL, v2, v3);
}

uint64_t sub_2643AD260()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = *(v2 + 312);
    v4 = *(v2 + 320);
    v5 = sub_2643AD848;
  }

  else
  {
    sub_26439E21C(v2 + 112, &qword_27FF66D38, &unk_2643B3C80);

    v3 = *(v2 + 312);
    v4 = *(v2 + 320);
    v5 = sub_2643AD398;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2643AD398()
{
  v1 = *(v0 + 408);

  v2 = *(v0 + 416);
  (*(v0 + 344))(*(v0 + 272), *(v0 + 336), *(v0 + 248));
  v3 = sub_2643B0498();
  v4 = sub_2643B0648();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 360);
  v7 = *(v0 + 208);
  if (v5)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_264382000, v3, v4, "SOSUIWebRTCRPC.init: web client connected", v8, 2u);
    MEMORY[0x266736CC0](v8, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v2(*(v0 + 272), *(v0 + 248));

  v9 = *(v0 + 8);
  v10 = *(v0 + 328);

  return v9(v10);
}

uint64_t sub_2643AD51C()
{
  v1 = v0[43];
  v2 = v0[42];
  v3 = v0[33];
  v4 = v0[31];

  v1(v3, v2, v4);
  v5 = sub_2643B0498();
  v6 = sub_2643B0648();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_264382000, v5, v6, "SOSUIWebRTCRPC.init: web client not loaded, waiting for load", v7, 2u);
    MEMORY[0x266736CC0](v7, -1, -1);
  }

  v8 = v0[45];
  v10 = v0[32];
  v9 = v0[33];
  v11 = v0[31];

  v12 = *(v10 + 8);
  v0[52] = v12;
  v13 = v12(v9, v11);
  if ((*((*MEMORY[0x277D85000] & *v8) + 0x98))(v13))
  {
    v14 = v0[48];
    v15 = MEMORY[0x277D84F90];
    v16 = sub_26439B2CC(MEMORY[0x277D84F90]);
    v0[56] = v16;
    v24 = (v14 + *v14);
    v17 = swift_task_alloc();
    v0[57] = v17;
    *v17 = v0;
    v17[1] = sub_2643AD260;

    return (v24)(v0 + 14, 0x4364694474736F68, 0xEE007463656E6E6FLL, v15, v16);
  }

  else
  {
    v19 = v0[45];
    v20 = v0[41];
    v21 = v0[26];
    v0[53] = sub_2643B05C8();
    v22 = swift_task_alloc();
    v0[54] = v22;
    v22[2] = v19;
    v22[3] = v21;
    v22[4] = v20;
    v23 = swift_task_alloc();
    v0[55] = v23;
    *v23 = v0;
    v23[1] = sub_2643ACFC4;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_2643AD848()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 360);
  v3 = *(v0 + 208);

  swift_unknownObjectRelease();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2643AD94C(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v21 = a4;
  v7 = *a2;
  v8 = *MEMORY[0x277D85000];
  v20 = *MEMORY[0x277D85000] & *a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF67260, &unk_2643B3DC0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  (*(v10 + 16))(&v20 - v11, a1, v9);
  v13 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *((v8 & v7) + 0x50);
  v15 = v21;
  *(v14 + 24) = *(v20 + 88);
  *(v14 + 40) = *((v8 & v7) + 0x68);
  *(v14 + 48) = a3;
  *(v14 + 56) = v15;
  (*(v10 + 32))(v14 + v13, v12, v9);
  v16 = *((*MEMORY[0x277D85000] & *a2) + 0xB0);
  v17 = a3;
  v18 = v15;
  v16(sub_2643B02BC, v14);
}

uint64_t sub_2643ADB58(void *a1, uint64_t a2)
{
  v3 = sub_2643B04B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2643845D8();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_2643B0498();
  v9 = sub_2643B0648();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_264382000, v8, v9, "SOSUIWebRTCRPC.init: received load message", v10, 2u);
    MEMORY[0x266736CC0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v11 = [a1 configuration];
  v12 = [v11 userContentController];

  v13 = sub_2643B04E8();
  [v12 removeScriptMessageHandlerForName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF67260, &unk_2643B3DC0);
  return sub_2643B05B8();
}

id sub_2643ADD50()
{
  v1 = v0;
  v2 = *MEMORY[0x277D85000] & *v0;
  v3 = sub_2643B04B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2643845D8();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_2643B0498();
  v9 = sub_2643B0618();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_264382000, v8, v9, "SOSUIWebRTCRPC.deinit", v10, 2u);
    MEMORY[0x266736CC0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong configuration];

    v14 = [v13 userContentController];

    v15 = sub_2643B04E8();

    [v14 removeScriptMessageHandlerForName_];
  }

  v16 = *(v2 + 96);
  v19[0] = *(v2 + 80);
  v19[1] = v16;
  v17 = type metadata accessor for SOSUIWebRTCRPC(0, v19);
  v20.receiver = v1;
  v20.super_class = v17;
  return objc_msgSendSuper2(&v20, sel_dealloc);
}

uint64_t sub_2643ADFEC(uint64_t a1)
{
  MEMORY[0x266736D40](a1 + qword_27FF67170);
  MEMORY[0x266736D40](a1 + qword_27FF67178);
}

uint64_t sub_2643AE074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[48] = a5;
  v6[49] = v5;
  v6[46] = a3;
  v6[47] = a4;
  v6[44] = a1;
  v6[45] = a2;
  v7 = sub_2643B04B8();
  v6[50] = v7;
  v6[51] = *(v7 - 8);
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  sub_2643B05D8();
  v6[54] = sub_2643B05C8();
  v9 = sub_2643B05A8();
  v6[55] = v9;
  v6[56] = v8;

  return MEMORY[0x2822009F8](sub_2643AE17C, v9, v8);
}

uint64_t sub_2643AE17C()
{
  v66 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);
  v4 = *(v0 + 392);
  v5 = *(v0 + 368);
  v6 = *(v0 + 376);
  v7 = *(v0 + 360);
  sub_2643B06A8();

  v64 = 0x206E7275746572;
  v65 = 0xE700000000000000;
  MEMORY[0x266736370](*(v4 + qword_27FF67198), *(v4 + qword_27FF67198 + 8));
  MEMORY[0x266736370](46, 0xE100000000000000);
  MEMORY[0x266736370](v7, v5);
  MEMORY[0x266736370](40, 0xE100000000000000);
  *(v0 + 344) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF671C0, &unk_2643B3C90);
  sub_2643AFC1C();
  v8 = sub_2643B04C8();
  MEMORY[0x266736370](v8);

  MEMORY[0x266736370](41, 0xE100000000000000);
  v10 = v64;
  v9 = v65;
  *(v0 + 456) = v64;
  *(v0 + 464) = v9;
  v11 = sub_2643845D8();
  *(v0 + 472) = v11;
  v12 = *(v3 + 16);
  *(v0 + 480) = v12;
  *(v0 + 488) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v1, v11, v2);

  v13 = sub_2643B0498();
  v14 = sub_2643B0648();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 424);
  v18 = *(v0 + 400);
  v17 = *(v0 + 408);
  v60 = v9;
  v61 = v10;
  if (v15)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v64 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_26439AA1C(v10, v9, &v64);
    _os_log_impl(&dword_264382000, v13, v14, "SOSUIWebRTCRPC.rpcCall:argumentNames:arguments: making rpc call %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x266736CC0](v20, -1, -1);
    MEMORY[0x266736CC0](v19, -1, -1);
  }

  v21 = *(v17 + 8);
  v21(v16, v18);
  *(v0 + 496) = v21;
  v22 = *(v0 + 384);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF66E30, &qword_2643B1FF0);
  v23 = sub_2643B06E8();
  v29 = v23;
  v30 = 0;
  *(v0 + 504) = v23;
  v31 = v22 + 64;
  v32 = 1 << *(v22 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v22 + 64);
  v35 = (v32 + 63) >> 6;
  v62 = v23 + 64;
  v63 = v22;
  if (v34)
  {
    while (1)
    {
      v36 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
LABEL_12:
      v39 = v36 | (v30 << 6);
      v40 = (*(v63 + 48) + 16 * v39);
      v41 = *v40;
      v42 = v40[1];
      sub_26439FFA4(*(v63 + 56) + 32 * v39, v0 + 256);

      sub_26439FFA4(v0 + 256, v0 + 96);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_26439FFA4(v0 + 256, v0 + 128);
      if (swift_dynamicCast())
      {
        goto LABEL_16;
      }

      sub_26439FFA4(v0 + 256, v0 + 160);
      if (swift_dynamicCast())
      {
        goto LABEL_16;
      }

      sub_26439FFA4(v0 + 256, v0 + 192);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67248, &qword_2643B3DB0);
      if (swift_dynamicCast())
      {
        sub_2643B01CC((v0 + 56), v0 + 16);
        v47 = *(v0 + 40);
        v59 = *(v0 + 48);
        v48 = __swift_project_boxed_opaque_existential_1((v0 + 16), v47);
        v49 = sub_2643AECDC(v48, v47, v59);
        if (v50)
        {
          *(v0 + 248) = MEMORY[0x277D837D0];
          *(v0 + 224) = v49;
          *(v0 + 232) = v50;
          sub_26439B448((v0 + 224), (v0 + 288));
        }

        else
        {
          *(v0 + 224) = 0u;
          *(v0 + 240) = 0u;
          v52 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
          *(v0 + 312) = sub_2643B0180();
          *(v0 + 288) = v52;
          if (*(v0 + 248))
          {
            sub_26439E21C(v0 + 224, &qword_27FF66D38, &unk_2643B3C80);
          }
        }

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
        sub_26439E21C(v0 + 56, &qword_27FF67250, &qword_2643B3DB8);
        v51 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
        *(v0 + 312) = sub_2643B0180();
        *(v0 + 288) = v51;
      }

LABEL_17:
      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      *(v62 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      v43 = (v29[6] + 16 * v39);
      *v43 = v41;
      v43[1] = v42;
      v23 = sub_26439B448((v0 + 288), (v29[7] + 32 * v39));
      v44 = v29[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
LABEL_35:
        __break(1u);
        return MEMORY[0x282135BA8](v23, v24, v25, v26, v27, v28);
      }

      v29[2] = v46;
      if (!v34)
      {
        goto LABEL_7;
      }
    }

LABEL_16:
    sub_26439FFA4(v0 + 256, v0 + 288);
    goto LABEL_17;
  }

LABEL_7:
  v37 = v30;
  while (1)
  {
    v30 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v30 >= v35)
    {
      break;
    }

    v38 = *(v31 + 8 * v30);
    ++v37;
    if (v38)
    {
      v36 = __clz(__rbit64(v38));
      v34 = (v38 - 1) & v38;
      goto LABEL_12;
    }
  }

  v53 = (*((*MEMORY[0x277D85000] & **(v0 + 392)) + 0xA8))();
  *(v0 + 512) = v53;
  if (v53)
  {
    v54 = [objc_opt_self() pageWorld];
    *(v0 + 520) = v54;
    v55 = swift_task_alloc();
    *(v0 + 528) = v55;
    *v55 = v0;
    v55[1] = sub_2643AE878;
    v23 = *(v0 + 352);
    v24 = v61;
    v25 = v60;
    v26 = v29;
    v27 = 0;
    v28 = v54;

    return MEMORY[0x282135BA8](v23, v24, v25, v26, v27, v28);
  }

  else
  {
    v56 = *(v0 + 352);

    *v56 = 0u;
    v56[1] = 0u;

    v57 = *(v0 + 8);

    return v57();
  }
}

uint64_t sub_2643AE878()
{
  v2 = *v1;
  v2[67] = v0;

  v3 = v2[65];
  v4 = v2[64];
  if (v0)
  {

    v5 = v2[55];
    v6 = v2[56];
    v7 = sub_2643AEA74;
  }

  else
  {

    v5 = v2[55];
    v6 = v2[56];
    v7 = sub_2643AEA00;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2643AEA00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2643AEA74()
{
  v27 = v0;
  v1 = v0[67];
  v2 = v0[60];
  v3 = v0[59];
  v4 = v0[52];
  v5 = v0[50];

  v2(v4, v3, v5);

  v6 = v1;
  v7 = sub_2643B0498();
  v8 = sub_2643B0648();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[67];
    v10 = v0[57];
    v11 = v0[58];
    v24 = v0[52];
    v25 = v0[62];
    v23 = v0[50];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v12 = 136315394;
    v15 = sub_26439AA1C(v10, v11, &v26);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2112;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    *v13 = v17;
    _os_log_impl(&dword_264382000, v7, v8, "SOSUIWebRTCRPC.rpcCall:argumentNames:arguments: making rpc call %s failed, error: %@", v12, 0x16u);
    sub_26439E21C(v13, &qword_27FF671D8, &unk_2643B3CA0);
    MEMORY[0x266736CC0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x266736CC0](v14, -1, -1);
    MEMORY[0x266736CC0](v12, -1, -1);

    v25(v24, v23);
  }

  else
  {
    v18 = v0[62];
    v19 = v0[52];
    v20 = v0[50];

    v18(v19, v20);
  }

  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_2643AECDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2643B04B8();
  MEMORY[0x28223BE20](v3);
  v4 = sub_2643B0538();
  MEMORY[0x28223BE20](v4 - 8);
  sub_2643B0428();
  swift_allocObject();
  sub_2643B0418();
  v5 = sub_2643B0408();
  v7 = v6;
  sub_2643B0528();
  v8 = sub_2643B0518();
  sub_2643AFC80(v5, v7);

  return v8;
}

void sub_2643AEF38(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_2643AFCD4(v7);
}

uint64_t sub_2643AF018(uint64_t a1)
{
  v2 = sub_2643B04B8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v26[-v7];
  v9 = sub_2643B0538();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26439FFA4(a1, v27);
  if (swift_dynamicCast())
  {
    sub_2643B0528();
    v13 = sub_2643B0508();
    v15 = v14;

    (*(v10 + 8))(v12, v9);
    if (v15 >> 60 != 15)
    {
      sub_2643B03F8();
      swift_allocObject();
      sub_2643B03E8();
      sub_2643B032C();
      sub_2643B03D8();
      v24 = 0;

      sub_2643B00B0(v13, v15);
      goto LABEL_11;
    }

    v16 = sub_2643845D8();
    (*(v3 + 16))(v6, v16, v2);
    v17 = sub_2643B0498();
    v18 = sub_2643B0648();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_264382000, v17, v18, "decodeJson: unable to access json data", v19, 2u);
      MEMORY[0x266736CC0](v19, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v20 = sub_2643845D8();
    (*(v3 + 16))(v8, v20, v2);
    v21 = sub_2643B0498();
    v22 = sub_2643B0648();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_264382000, v21, v22, "decodeJson: malformed json", v23, 2u);
      MEMORY[0x266736CC0](v23, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
  }

  v24 = 1;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0(v27);
  return v24;
}

uint64_t sub_2643AF3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a1;
  v38 = a4;
  v41 = a5;
  v7 = sub_2643B04B8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = sub_2643B0678();
  v39 = *(v14 - 8);
  v40 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = sub_2643B0538();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26439FFA4(a2, v42);
  if (swift_dynamicCast())
  {
    v36 = a3;
    sub_2643B0528();
    v21 = sub_2643B0508();
    v23 = v22;

    (*(v18 + 8))(v20, v17);
    if (v23 >> 60 != 15)
    {
      sub_2643B03F8();
      swift_allocObject();
      sub_2643B03E8();
      v33 = v36;
      sub_2643B03D8();

      sub_2643B00B0(v21, v23);
      (*(*(v33 - 8) + 56))(v16, 0, 1, v33);
      (*(v39 + 32))(v41, v16, v40);
      return __swift_destroy_boxed_opaque_existential_0(v42);
    }

    v24 = sub_2643845D8();
    (*(v8 + 16))(v13, v24, v7);
    v25 = sub_2643B0498();
    v26 = sub_2643B0648();
    v27 = os_log_type_enabled(v25, v26);
    a3 = v36;
    if (v27)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_264382000, v25, v26, "decodeJson: unable to access json data", v28, 2u);
      MEMORY[0x266736CC0](v28, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
  }

  else
  {
    v29 = sub_2643845D8();
    (*(v8 + 16))(v11, v29, v7);
    v30 = sub_2643B0498();
    v31 = sub_2643B0648();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_264382000, v30, v31, "decodeJson: malformed json", v32, 2u);
      MEMORY[0x266736CC0](v32, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
  }

  (*(*(a3 - 8) + 56))(v41, 1, 1, a3);
  return __swift_destroy_boxed_opaque_existential_0(v42);
}

void (*sub_2643AF870(void *a1))(void)
{
  v2 = v1;
  v4 = sub_2643B04B8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v30[-v9];
  v11 = [a1 body];
  sub_2643B0688();
  swift_unknownObjectRelease();
  LOBYTE(a1) = sub_2643AF018(v31);
  __swift_destroy_boxed_opaque_existential_0(v31);
  v12 = sub_2643845D8();
  v13 = *(v5 + 16);
  if (a1)
  {
    v13(v8, v12, v4);
    v14 = sub_2643B0498();
    v15 = sub_2643B0648();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31[0] = v17;
      *v16 = 136315138;
      v30[15] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF67270, &unk_2643B3DD0);
      v18 = sub_2643B0548();
      v20 = sub_26439AA1C(v18, v19, v31);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_264382000, v14, v15, "SOSUIWebRTCRPC.LoadedListener: unhandled message %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x266736CC0](v17, -1, -1);
      MEMORY[0x266736CC0](v16, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v13(v10, v12, v4);
    v22 = sub_2643B0498();
    v23 = sub_2643B0648();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_264382000, v22, v23, "SOSUIWebRTCRPC.LoadedListener: web client loaded message received", v24, 2u);
      MEMORY[0x266736CC0](v24, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    v25 = MEMORY[0x277D85000];
    v26 = (*((*MEMORY[0x277D85000] & *v2) + 0xA0))(1);
    result = (*((*v25 & *v2) + 0x80))(v26);
    if (result)
    {
      v28 = v27;
      v29 = result;
      result();
      return sub_26439B0AC(v29, v28);
    }
  }

  return result;
}

unint64_t sub_2643AFC1C()
{
  result = qword_27FF671C8;
  if (!qword_27FF671C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF671C0, &unk_2643B3C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF671C8);
  }

  return result;
}

uint64_t sub_2643AFC80(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2643AFCD4(void *a1)
{
  v27 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v24 = *MEMORY[0x277D85000] & *v1;
  v4 = sub_2643B04B8();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((v3 & v2) + 0x50);
  v8 = sub_2643B0678();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = *(v7 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v24 - v14;
  sub_2643AC180(*(v1 + qword_27FF67180), v27, v7, *((v3 & v2) + 0x60), v12);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v16 = sub_2643845D8();
    v18 = v25;
    v17 = v26;
    (*(v25 + 16))(v6, v16, v26);
    v19 = sub_2643B0498();
    v20 = sub_2643B0648();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_264382000, v19, v20, "SOSUIWebRTCRPC.userContentController:didReceive: failed to decode message", v21, 2u);
      MEMORY[0x266736CC0](v21, -1, -1);
    }

    return (*(v18 + 8))(v6, v17);
  }

  else
  {
    v23 = (*(v13 + 32))(v15, v12, v7);
    if ((*((*MEMORY[0x277D85000] & *v1) + 0xC0))(v23))
    {
      (*(*(v24 + 104) + 16))(v15, *(v24 + 88));
      swift_unknownObjectRelease();
    }

    return (*(v13 + 8))(v15, v7);
  }
}

uint64_t sub_2643B00B0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2643AFC80(result, a2);
  }

  return result;
}

unint64_t sub_2643B0180()
{
  result = qword_27FF67258;
  if (!qword_27FF67258)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF67258);
  }

  return result;
}

uint64_t sub_2643B01CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2643B01E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF67260, &unk_2643B3DC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2643B02BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF67260, &unk_2643B3DC0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_2643ADB58(v1, v2);
}

unint64_t sub_2643B032C()
{
  result = qword_27FF67278;
  if (!qword_27FF67278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF67278);
  }

  return result;
}