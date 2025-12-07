uint64_t sub_20DF7E584()
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DF7E62C(uint64_t a1)
{
  sub_20E009194();
}

uint64_t sub_20DF7E6C0(uint64_t a1)
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

unint64_t sub_20DF7E764@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20DF82970(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20DF7E794(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x73736572646461;
  if (v2 != 1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x800000020E0147C0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v5)
  {
    v3 = 0x800000020E0147A0;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_20DF7E7F8()
{
  v1 = 0x73736572646461;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

unint64_t sub_20DF7E858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DF82970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DF7E880(uint64_t a1)
{
  v2 = sub_20DF7EB1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF7E8BC(uint64_t a1)
{
  v2 = sub_20DF7EB1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InEligibleUtilityServiceLocation.init(serviceLocationID:address:ineligibilityDetail:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 24) = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  return result;
}

uint64_t InEligibleUtilityServiceLocation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8527E8, &qword_20E00C1D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v14[0] = *(v1 + 16);
  v15 = *(v1 + 24);
  v8 = a1[3];
  v9 = a1;
  v11 = v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);
  sub_20DF7EB1C();
  sub_20E009A84();
  v19 = 0;
  sub_20E009914();
  if (!v2)
  {
    v12 = v15;
    v14[1] = v14[0];
    v18 = 1;
    type metadata accessor for UtilityServiceAddress();
    sub_20DF811BC(&qword_27C852268, type metadata accessor for UtilityServiceAddress, &protocol conformance descriptor for UtilityServiceAddress);
    sub_20E009944();
    v17 = v12;
    v16 = 2;
    sub_20DF7EB70();
    sub_20E009944();
  }

  return (*(v5 + 8))(v7, v11);
}

unint64_t sub_20DF7EB1C()
{
  result = qword_27C8527F0;
  if (!qword_27C8527F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8527F0);
  }

  return result;
}

unint64_t sub_20DF7EB70()
{
  result = qword_27C8527F8;
  if (!qword_27C8527F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8527F8);
  }

  return result;
}

void InEligibleUtilityServiceLocation.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852800, &qword_20E00C1D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF7EB1C();
  sub_20E009A74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v22 = 0;
    v9 = sub_20E009894();
    v11 = v10;
    v17 = v9;
    type metadata accessor for UtilityServiceAddress();
    v21 = 1;
    sub_20DF811BC(&qword_27C852280, type metadata accessor for UtilityServiceAddress, &protocol conformance descriptor for UtilityServiceAddress);
    sub_20E0098C4();
    v16 = v18;
    v19 = 2;
    sub_20DF7EE84();
    sub_20E0098C4();
    (*(v6 + 8))(v8, v5);
    v12 = v20;
    v13 = v16;
    *a2 = v17;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
    *(a2 + 24) = v12;

    v14 = v13;
    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

unint64_t sub_20DF7EE84()
{
  result = qword_27C852808;
  if (!qword_27C852808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852808);
  }

  return result;
}

uint64_t sub_20DF7EF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20E009984();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20DF7EFB8(uint64_t a1)
{
  v2 = sub_20DF7F17C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF7EFF4(uint64_t a1)
{
  v2 = sub_20DF7F17C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServiceLocationIneligibilityDetail.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852810, &qword_20E00C1E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF7F17C();
  sub_20E009A84();
  v10 = v7;
  sub_20DF7F1D0();
  sub_20E009944();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20DF7F17C()
{
  result = qword_27C852818;
  if (!qword_27C852818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852818);
  }

  return result;
}

unint64_t sub_20DF7F1D0()
{
  result = qword_27C852820;
  if (!qword_27C852820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852820);
  }

  return result;
}

uint64_t ServiceLocationIneligibilityDetail.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852828, &qword_20E00C1E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF7F17C();
  sub_20E009A74();
  if (!v2)
  {
    sub_20DF7F390();
    sub_20E0098C4();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_20DF7F390()
{
  result = qword_27C852830;
  if (!qword_27C852830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852830);
  }

  return result;
}

uint64_t ServiceLocationIneligibilityReason.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E009A64();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v7 = sub_20E0099A4();
  v8 = v6;
  v9 = v7 == 0x5452414D535F4F4ELL && v6 == 0xEE00524554454D5FLL;
  if (v9 || (sub_20E009984() & 1) != 0)
  {

    v10 = 0;
  }

  else if (v7 == 0xD000000000000018 && 0x800000020E0156F0 == v8 || (sub_20E009984() & 1) != 0)
  {

    v10 = 1;
  }

  else if (v7 == 0xD000000000000013 && 0x800000020E015710 == v8 || (sub_20E009984() & 1) != 0)
  {

    v10 = 2;
  }

  else
  {
    if (v7 != 0x4E574F4E4B4E55 || v8 != 0xE700000000000000)
    {
      sub_20E009984();
    }

    v10 = 3;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  *a2 = v10;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

HomeUtilityServices::ServiceLocationIneligibilityReason_optional __swiftcall ServiceLocationIneligibilityReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E009844();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ServiceLocationIneligibilityReason.rawValue.getter()
{
  v1 = 0x4D7472616D536F6ELL;
  v2 = 0x6E776F6E6B6E75;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
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
    return v2;
  }
}

uint64_t sub_20DF7F70C()
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DF7F7DC(uint64_t a1)
{
  sub_20E009194();
}

uint64_t sub_20DF7F898(uint64_t a1)
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

void sub_20DF7F970(unint64_t *a1@<X8>)
{
  v2 = 0xEC00000072657465;
  v3 = 0x4D7472616D536F6ELL;
  v4 = 0x800000020E014810;
  v5 = 0x6E776F6E6B6E75;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000016;
    v2 = 0x800000020E0147F0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t UtilityServiceAddress.addressLine1.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine1);

  return v1;
}

uint64_t UtilityServiceAddress.addressLine2.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine2);

  return v1;
}

id sub_20DF7FB00(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_20E0091C4();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t UtilityServiceAddress.addressLine3.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine3);

  return v1;
}

uint64_t UtilityServiceAddress.city.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_city);

  return v1;
}

uint64_t UtilityServiceAddress.state.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_state);

  return v1;
}

uint64_t UtilityServiceAddress.postalCode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_postalCode);

  return v1;
}

uint64_t UtilityServiceAddress.country.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_country);

  return v1;
}

id UtilityServiceAddress.__allocating_init(addressLine1:addressLine2:addressLine3:city:state:postalCode:country:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v22 = objc_allocWithZone(v14);
  v23 = &v22[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine1];
  *v23 = a1;
  *(v23 + 1) = a2;
  v24 = &v22[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine2];
  *v24 = a3;
  *(v24 + 1) = a4;
  v25 = &v22[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine3];
  *v25 = a5;
  *(v25 + 1) = a6;
  v26 = &v22[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_city];
  *v26 = a7;
  *(v26 + 1) = a8;
  v27 = &v22[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_state];
  *v27 = a9;
  *(v27 + 1) = a10;
  v28 = &v22[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_postalCode];
  *v28 = a11;
  *(v28 + 1) = a12;
  v29 = &v22[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_country];
  *v29 = a13;
  *(v29 + 1) = a14;
  v32.receiver = v22;
  v32.super_class = v14;
  return objc_msgSendSuper2(&v32, sel_init);
}

id UtilityServiceAddress.init(addressLine1:addressLine2:addressLine3:city:state:postalCode:country:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = &v14[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine1];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = &v14[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine2];
  *v16 = a3;
  *(v16 + 1) = a4;
  v17 = &v14[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine3];
  *v17 = a5;
  *(v17 + 1) = a6;
  v18 = &v14[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_city];
  *v18 = a7;
  *(v18 + 1) = a8;
  v19 = &v14[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_state];
  *v19 = a9;
  *(v19 + 1) = a10;
  v20 = &v14[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_postalCode];
  *v20 = a11;
  *(v20 + 1) = a12;
  v21 = &v14[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_country];
  *v21 = a13;
  *(v21 + 1) = a14;
  v23.receiver = v14;
  v23.super_class = type metadata accessor for UtilityServiceAddress();
  return objc_msgSendSuper2(&v23, sel_init);
}

id UtilityServiceAddress.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_20DF800A0()
{
  v1 = *v0;
  v2 = 0x6F436C6174736F70;
  if (v1 != 5)
  {
    v2 = 0x7972746E756F63;
  }

  v3 = 2037672291;
  if (v1 != 3)
  {
    v3 = 0x6574617473;
  }

  if (*v0 <= 4u)
  {
    v2 = v3;
  }

  if (*v0 <= 2u)
  {
    return 0x4C73736572646461;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20DF80164@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20DF829BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20DF8018C(uint64_t a1)
{
  v2 = sub_20DF80580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF801C8(uint64_t a1)
{
  v2 = sub_20DF80580();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_20DF8021C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20DF8030C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852870, &qword_20E00C1F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF80580();
  sub_20E009A84();
  v8[15] = 0;
  sub_20E009914();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_20E0098D4();
  v8[13] = 2;
  sub_20E0098D4();
  v8[12] = 3;
  sub_20E009914();
  v8[11] = 4;
  sub_20E009914();
  v8[10] = 5;
  sub_20E009914();
  v8[9] = 6;
  sub_20E009914();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20DF80580()
{
  result = qword_27C852878;
  if (!qword_27C852878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852878);
  }

  return result;
}

void *UtilityServiceAddress.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852880, &qword_20E00C1F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF80580();
  sub_20E009A74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for UtilityServiceAddress();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = 0;
    v9 = sub_20E009894();
    v11 = (v1 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine1);
    *v11 = v9;
    v11[1] = v12;
    v33 = 1;
    v13 = sub_20E009854();
    v14 = (v1 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine2);
    *v14 = v13;
    v14[1] = v15;
    v33 = 2;
    v16 = sub_20E009854();
    v17 = (v1 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine3);
    *v17 = v16;
    v17[1] = v18;
    v33 = 3;
    v19 = sub_20E009894();
    v20 = (v1 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_city);
    *v20 = v19;
    v20[1] = v21;
    v33 = 4;
    v22 = sub_20E009894();
    v23 = (v1 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_state);
    *v23 = v22;
    v23[1] = v24;
    v33 = 5;
    v25 = sub_20E009894();
    v26 = (v1 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_postalCode);
    *v26 = v25;
    v26[1] = v27;
    v33 = 6;
    v28 = sub_20E009894();
    v29 = (v1 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_country);
    *v29 = v28;
    v29[1] = v30;
    v31 = type metadata accessor for UtilityServiceAddress();
    v32.receiver = v1;
    v32.super_class = v31;
    v3 = objc_msgSendSuper2(&v32, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t sub_20DF80AC8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = objc_allocWithZone(a2());
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

id AccountVerificationResponse.accessToken.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t AccountVerificationResponse.authorizationCode.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AccountVerificationResponse.init(accessToken:authorizationCode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_20DF80BB0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6F54737365636361;
  }
}

uint64_t sub_20DF80BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F54737365636361 && a2 == 0xEB000000006E656BLL;
  if (v6 || (sub_20E009984() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020E014AC0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E009984();

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

uint64_t sub_20DF80CE0(uint64_t a1)
{
  v2 = sub_20DF80F24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF80D1C(uint64_t a1)
{
  v2 = sub_20DF80F24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AccountVerificationResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852888, &qword_20E00C200);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v8 = *v1;
  v7 = *(v1 + 8);
  v12[0] = *(v1 + 16);
  v12[1] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF80F24();
  v9 = v8;
  sub_20E009A84();
  v15 = v8;
  v14 = 0;
  type metadata accessor for UtilitySubscriptionTokenSet();
  sub_20DF811BC(&qword_27C852898, type metadata accessor for UtilitySubscriptionTokenSet, &protocol conformance descriptor for UtilitySubscriptionTokenSet);
  v10 = v12[2];
  sub_20E009904();

  if (!v10)
  {
    v13 = 1;
    sub_20E0098D4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20DF80F24()
{
  result = qword_27C852890;
  if (!qword_27C852890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852890);
  }

  return result;
}

void AccountVerificationResponse.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8528A0, &qword_20E00C208);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF80F24();
  sub_20E009A74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    type metadata accessor for UtilitySubscriptionTokenSet();
    v14[15] = 0;
    sub_20DF811BC(&qword_27C8528A8, type metadata accessor for UtilitySubscriptionTokenSet, &protocol conformance descriptor for UtilitySubscriptionTokenSet);
    sub_20E009884();
    v9 = v15;
    v14[14] = 1;
    v10 = sub_20E009854();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;

    v13 = v9;
    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_20DF811BC(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
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

unint64_t sub_20DF81204()
{
  result = qword_27C8528B0;
  if (!qword_27C8528B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8528B0);
  }

  return result;
}

uint64_t sub_20DF81720(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_20DF81768(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_20DF818AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_20DF81908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VerifiedServiceAddress.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VerifiedServiceAddress.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UtilityTariffType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UtilityTariffType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20DF81CA0()
{
  result = qword_27C8528B8;
  if (!qword_27C8528B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8528B8);
  }

  return result;
}

unint64_t sub_20DF81CF8()
{
  result = qword_27C8528C0;
  if (!qword_27C8528C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8528C0);
  }

  return result;
}

unint64_t sub_20DF81D50()
{
  result = qword_27C8528C8;
  if (!qword_27C8528C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8528C8);
  }

  return result;
}

unint64_t sub_20DF81DA8()
{
  result = qword_27C8528D0;
  if (!qword_27C8528D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8528D0);
  }

  return result;
}

unint64_t sub_20DF81E00()
{
  result = qword_27C8528D8;
  if (!qword_27C8528D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8528D8);
  }

  return result;
}

unint64_t sub_20DF81E58()
{
  result = qword_27C8528E0;
  if (!qword_27C8528E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8528E0);
  }

  return result;
}

unint64_t sub_20DF81EB0()
{
  result = qword_27C8528E8;
  if (!qword_27C8528E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8528E8);
  }

  return result;
}

unint64_t sub_20DF81F08()
{
  result = qword_27C8528F0;
  if (!qword_27C8528F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8528F0);
  }

  return result;
}

unint64_t sub_20DF81F60()
{
  result = qword_27C8528F8;
  if (!qword_27C8528F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8528F8);
  }

  return result;
}

unint64_t sub_20DF81FB8()
{
  result = qword_27C852900;
  if (!qword_27C852900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852900);
  }

  return result;
}

unint64_t sub_20DF82010()
{
  result = qword_27C852908;
  if (!qword_27C852908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852908);
  }

  return result;
}

unint64_t sub_20DF82068()
{
  result = qword_27C852910;
  if (!qword_27C852910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852910);
  }

  return result;
}

unint64_t sub_20DF820C0()
{
  result = qword_27C852918;
  if (!qword_27C852918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852918);
  }

  return result;
}

unint64_t sub_20DF82118()
{
  result = qword_27C852920;
  if (!qword_27C852920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852920);
  }

  return result;
}

unint64_t sub_20DF82170()
{
  result = qword_27C852928;
  if (!qword_27C852928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852928);
  }

  return result;
}

unint64_t sub_20DF821C8()
{
  result = qword_27C852930;
  if (!qword_27C852930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852930);
  }

  return result;
}

unint64_t sub_20DF82220()
{
  result = qword_27C852938;
  if (!qword_27C852938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852938);
  }

  return result;
}

unint64_t sub_20DF82278()
{
  result = qword_27C852940;
  if (!qword_27C852940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852940);
  }

  return result;
}

unint64_t sub_20DF822D0()
{
  result = qword_27C852948;
  if (!qword_27C852948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852948);
  }

  return result;
}

unint64_t sub_20DF82328()
{
  result = qword_27C852950;
  if (!qword_27C852950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852950);
  }

  return result;
}

unint64_t sub_20DF82380()
{
  result = qword_27C852958;
  if (!qword_27C852958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852958);
  }

  return result;
}

unint64_t sub_20DF823D8()
{
  result = qword_27C852960;
  if (!qword_27C852960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852960);
  }

  return result;
}

unint64_t sub_20DF82430()
{
  result = qword_27C852968;
  if (!qword_27C852968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852968);
  }

  return result;
}

unint64_t sub_20DF82488()
{
  result = qword_27C852970;
  if (!qword_27C852970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852970);
  }

  return result;
}

unint64_t sub_20DF824E0()
{
  result = qword_27C852978;
  if (!qword_27C852978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852978);
  }

  return result;
}

unint64_t sub_20DF82538()
{
  result = qword_27C852980;
  if (!qword_27C852980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852980);
  }

  return result;
}

unint64_t sub_20DF82590()
{
  result = qword_27C852988;
  if (!qword_27C852988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852988);
  }

  return result;
}

unint64_t sub_20DF825E8()
{
  result = qword_27C852990;
  if (!qword_27C852990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852990);
  }

  return result;
}

unint64_t sub_20DF82640()
{
  result = qword_27C852998;
  if (!qword_27C852998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852998);
  }

  return result;
}

unint64_t sub_20DF82698()
{
  result = qword_27C8529A0;
  if (!qword_27C8529A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8529A0);
  }

  return result;
}

unint64_t sub_20DF826F0()
{
  result = qword_27C8529A8;
  if (!qword_27C8529A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8529A8);
  }

  return result;
}

unint64_t sub_20DF82748()
{
  result = qword_27C8529B0;
  if (!qword_27C8529B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8529B0);
  }

  return result;
}

unint64_t sub_20DF827A0()
{
  result = qword_27C8529B8;
  if (!qword_27C8529B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8529B8);
  }

  return result;
}

unint64_t sub_20DF827F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_20E009844();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20DF82840(uint64_t a1, uint64_t a2)
{
  v2 = sub_20E009844();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20DF8288C(uint64_t a1, uint64_t a2)
{
  v2 = sub_20E009844();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20DF828D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_20E009844();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20DF82924(uint64_t a1, uint64_t a2)
{
  v2 = sub_20E009844();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20DF82970(uint64_t a1, uint64_t a2)
{
  v2 = sub_20E009844();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20DF829BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x4C73736572646461 && a2 == 0xEC00000031656E69;
  if (v3 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C73736572646461 && a2 == 0xEC00000032656E69 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C73736572646461 && a2 == 0xEC00000033656E69 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564 || (sub_20E009984() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_20DF82C08()
{
  result = qword_27C8529C0;
  if (!qword_27C8529C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8529C0);
  }

  return result;
}

unint64_t sub_20DF82C5C()
{
  result = qword_27C8529D0[0];
  if (!qword_27C8529D0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8529C8, &qword_20E00D648);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8529D0);
  }

  return result;
}

uint64_t sub_20DF82D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v37 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  v8 = sub_20E008AF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v36 - v13);
  v15 = type metadata accessor for UtilityServicesConfigurationsModel(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DF9EE34(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v19 = &qword_27C852A60;
    v20 = &unk_20E00EBE0;
    v21 = v14;
LABEL_5:
    sub_20DF66E28(v21, v19, v20);
    v22 = a3;
    if (qword_2811230C8 != -1)
    {
      swift_once();
    }

    v23 = sub_20E009094();
    __swift_project_value_buffer(v23, qword_2811249D0);
    v24 = sub_20E009074();
    v25 = sub_20E009544();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20DF62000, v24, v25, "Unable to baseURL", v26, 2u);
      MEMORY[0x20F32B3A0](v26, -1, -1);
    }

    goto LABEL_10;
  }

  sub_20DF85D48(v14, v18);
  sub_20E008AC4();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20DF85E5C(v18);
    v19 = &qword_27C8520D0;
    v20 = &qword_20E00AB70;
    v21 = v7;
    goto LABEL_5;
  }

  (*(v9 + 32))(v11, v7, v8);
  v29 = sub_20DF8520C(a1, v37);
  v22 = a3;
  if (v30)
  {
    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      sub_20DFE8E54(v29, v30, a3);

      (*(v9 + 8))(v11, v8);
      sub_20DF85E5C(v18);
      v27 = 0;
      return (*(v9 + 56))(v22, v27, 1, v8);
    }
  }

  if (qword_2811230C8 != -1)
  {
    swift_once();
  }

  v32 = sub_20E009094();
  __swift_project_value_buffer(v32, qword_2811249D0);
  v33 = sub_20E009074();
  v34 = sub_20E009544();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_20DF62000, v33, v34, "Unable to generate API Path", v35, 2u);
    MEMORY[0x20F32B3A0](v35, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_20DF85E5C(v18);
LABEL_10:
  v27 = 1;
  return (*(v9 + 56))(v22, v27, 1, v8);
}

uint64_t sub_20DF83234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_20DF83258, 0, 0);
}

uint64_t sub_20DF83258()
{
  if (sub_20DF85EB8(v0[11]))
  {
    if (qword_2811230C8 != -1)
    {
      swift_once();
    }

    v1 = sub_20E009094();
    v0[12] = __swift_project_value_buffer(v1, qword_2811249D0);
    v2 = sub_20E009074();
    v3 = sub_20E009554();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_20DF62000, v2, v3, "Adding BAA", v4, 2u);
      MEMORY[0x20F32B3A0](v4, -1, -1);
    }

    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_20DF833FC;
    v6 = v0[9];

    return URLRequest.addBAAHeaders()(v6);
  }

  else
  {
    sub_20DFEE628(v0[9]);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_20DF833FC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20DF85FE4;
  }

  else
  {
    v2 = sub_20DF85FE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF83510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_20DF83534, 0, 0);
}

uint64_t sub_20DF83534()
{
  if (sub_20DF85EB8(v0[11]))
  {
    if (qword_2811230C8 != -1)
    {
      swift_once();
    }

    v1 = sub_20E009094();
    v0[12] = __swift_project_value_buffer(v1, qword_2811249D0);
    v2 = sub_20E009074();
    v3 = sub_20E009554();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_20DF62000, v2, v3, "Adding BAA", v4, 2u);
      MEMORY[0x20F32B3A0](v4, -1, -1);
    }

    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_20DF836D8;
    v6 = v0[9];

    return URLRequest.addBAAHeaders()(v6);
  }

  else
  {
    sub_20DFEE628(v0[9]);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_20DF836D8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20DF8388C;
  }

  else
  {
    v2 = sub_20DF837EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF837EC()
{
  v1 = *(v0 + 72);
  v2 = sub_20E008714();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20DF8388C()
{
  v24 = v0;
  v1 = *(v0 + 112);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    sub_20DF85D20(v3, v4);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    sub_20DF85D34(v3, v4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23[0] = v8;
      *v7 = 136315138;
      v9 = sub_20DFE4DB0(v3, v4);
      v11 = sub_20DF74468(v9, v10, v23);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_20DF62000, v5, v6, "Error while adding BAA Header: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F32B3A0](v8, -1, -1);
      MEMORY[0x20F32B3A0](v7, -1, -1);
      sub_20DF85D34(v3, v4);
    }

    else
    {

      sub_20DF85D34(v3, v4);
    }
  }

  else
  {
    v12 = *(v0 + 112);
    v13 = v12;
    v14 = sub_20E009074();
    v15 = sub_20E009544();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_20E0099E4();
      v20 = sub_20DF74468(v18, v19, v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_20DF62000, v14, v15, "Error while adding BAA Header: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x20F32B3A0](v17, -1, -1);
      MEMORY[0x20F32B3A0](v16, -1, -1);
    }
  }

  swift_willThrow();
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_20DF83B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_20DF8564C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_20DFB85D0(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_20DFFBF88();
        v16 = v18;
      }

      result = sub_20DF8549C(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_20DF83C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v15;
  *(v8 + 136) = v14;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 88) = a1;
  *(v8 + 96) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  *(v8 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0);
  *(v8 + 168) = swift_task_alloc();
  v9 = sub_20E008C14();
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  v10 = sub_20E008714();
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  *(v8 + 248) = swift_task_alloc();
  v11 = sub_20E008AF4();
  *(v8 + 256) = v11;
  *(v8 + 264) = *(v11 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF83F00, 0, 0);
}

uint64_t sub_20DF83F00()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  sub_20DF82D70(*(v0 + 144), *(v0 + 152), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(*(v0 + 248), &qword_27C8520D0, &qword_20E00AB70);
    if (qword_27C852098 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862728);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Request URL for resend API not found", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = *(v0 + 200);
    v9 = *(v0 + 208);
    v10 = *(v0 + 88);

    (*(v9 + 56))(v10, 1, 1, v8);
LABEL_19:

    v61 = *(v0 + 8);

    return v61();
  }

  v12 = *(v0 + 272);
  v11 = *(v0 + 280);
  v13 = *(v0 + 256);
  v14 = *(v0 + 264);
  v15 = *(v0 + 224);
  v16 = *(v0 + 232);
  v17 = *(v0 + 208);
  v18 = *(v0 + 216);
  v19 = *(v0 + 200);
  v64 = *(v0 + 192);
  v65 = *(v0 + 176);
  v67 = *(v0 + 168);
  v68 = *(v0 + 184);
  v62 = *(v0 + 240);
  v66 = *(v0 + 120);
  (*(v14 + 32))(v11, *(v0 + 248), v13);
  (*(v14 + 16))(v12, v11, v13);
  sub_20E0086B4();
  sub_20DFDF668(v15);
  v20 = *(v17 + 8);
  *(v0 + 288) = v20;
  *(v0 + 296) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v18, v19);
  v21 = *(v17 + 16);
  v21(v16, v15, v19);
  sub_20E0086D4();
  v20(v15, v19);
  v21(v62, v16, v19);
  sub_20E0086D4();
  v63 = v20;
  v20(v16, v19);
  sub_20E008694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E00AB50;
  *(inited + 32) = 0x7461447472617473;
  *(inited + 40) = 0xE900000000000065;
  sub_20DF84E08(v64);
  v23 = sub_20E008BA4();
  v25 = v24;
  v26 = *(v68 + 8);
  v26(v64, v65);
  *(inited + 48) = v23;
  *(inited + 56) = v25;
  sub_20DF74E1C(inited);
  swift_setDeallocating();
  sub_20DF66E28(inited + 32, &qword_27C852140, &qword_20E011050);
  sub_20DF85990(v66, v67);
  v27 = sub_20E008CD4();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v67, 1, v27) == 1)
  {
    sub_20DF66E28(*(v0 + 168), &qword_27C852A58, &qword_20E00F7A0);
  }

  else
  {
    v29 = *(v0 + 192);
    v30 = *(v0 + 168);
    v31 = *(v0 + 176);
    sub_20DF84E08(v29);
    v32 = sub_20E008BA4();
    v34 = v33;
    v26(v29, v31);
    (*(v28 + 8))(v30, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20DF8564C(v32, v34, 0x65746144646E65, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  }

  v36 = objc_opt_self();
  v37 = sub_20E009154();

  *(v0 + 80) = 0;
  v38 = [v36 dataWithJSONObject:v37 options:0 error:v0 + 80];

  v39 = *(v0 + 80);
  if (!v38)
  {
    v48 = v39;
    v49 = sub_20E008A34();

    swift_willThrow();
    if (qword_27C852098 != -1)
    {
      swift_once();
    }

    v50 = sub_20E009094();
    __swift_project_value_buffer(v50, qword_27C862728);
    v51 = sub_20E009074();
    v52 = sub_20E009544();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_20DF62000, v51, v52, "Unable to encode Token request body", v53, 2u);
      MEMORY[0x20F32B3A0](v53, -1, -1);
    }

    v54 = *(v0 + 280);
    v55 = *(v0 + 256);
    v56 = *(v0 + 264);
    v57 = *(v0 + 240);
    v58 = *(v0 + 200);
    v59 = *(v0 + 208);
    v60 = *(v0 + 88);

    v63(v57, v58);
    (*(v56 + 8))(v54, v55);
    (*(v59 + 56))(v60, 1, 1, v58);
    goto LABEL_19;
  }

  v40 = sub_20E008B84();
  v42 = v41;

  *(v0 + 304) = v40;
  *(v0 + 312) = v42;
  sub_20DF67FA8(v40, v42);
  sub_20E0086F4();
  v43 = swift_task_alloc();
  *(v0 + 320) = v43;
  *v43 = v0;
  v43[1] = sub_20DF84714;
  v44 = *(v0 + 240);
  v45 = *(v0 + 160);
  v46 = *(v0 + 144);

  return sub_20DF83234(v45, v44, v46);
}

uint64_t sub_20DF84714()
{

  if (v0)
  {

    v1 = sub_20DF84BA0;
  }

  else
  {
    v1 = sub_20DF84858;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20DF84858()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[20];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_27C852098 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862728);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to sign resend historical data request", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v9 = v0[38];
    v8 = v0[39];
    v10 = v0[36];
    v12 = v0[32];
    v11 = v0[33];
    v13 = v0[30];
    v14 = v5;
    v16 = v0[25];
    v15 = v0[26];
    v25 = v0[35];
    v27 = v0[11];

    sub_20DF67FFC(v9, v8);
    v10(v13, v16);
    (*(v11 + 8))(v25, v12);
    (*(v15 + 56))(v27, 1, 1, v16);
  }

  else
  {
    v18 = v0[38];
    v17 = v0[39];
    v19 = v0[36];
    v28 = v0[35];
    v20 = v0[33];
    v26 = v0[32];
    v21 = v0[30];
    v22 = v0[11];
    (*(v2 + 32))(v22, v3, v1);
    sub_20E008704();
    sub_20DF67FFC(v18, v17);
    v19(v21, v1);
    (*(v20 + 8))(v28, v26);
    (*(v2 + 56))(v22, 0, 1, v1);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_20DF84BA0()
{
  (*(v0[26] + 56))(v0[20], 1, 1, v0[25]);
  sub_20DF66E28(v0[20], &qword_27C8520C8, &qword_20E010830);
  if (qword_27C852098 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_27C862728);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Unable to sign resend historical data request", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[36];
  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[30];
  v11 = v2;
  v13 = v0[25];
  v12 = v0[26];
  v16 = v0[35];
  v17 = v0[11];

  sub_20DF67FFC(v6, v5);
  v7(v10, v13);
  (*(v8 + 8))(v16, v9);
  (*(v12 + 56))(v17, 1, 1, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_20DF84E08@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A68, &qword_20E00D728);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v24 - v2;
  v28 = sub_20E008DD4();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20E008C04();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20E008BE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20E008BC4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20E008BD4();
  MEMORY[0x28223BE20](v16);
  (*(v18 + 104))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v19 = v12;
  v20 = v28;
  (*(v13 + 104))(v15, *MEMORY[0x277CC9458], v19);
  v21 = v7;
  v22 = v29;
  (*(v9 + 104))(v11, *MEMORY[0x277CC9468], v8);
  (*(v5 + 104))(v21, *MEMORY[0x277CC9480], v27);
  sub_20E008DC4();
  result = (*(v3 + 48))(v22, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v25, v22, v20);
    return sub_20E008BF4();
  }

  return result;
}

uint64_t sub_20DF8520C(uint64_t a1, uint64_t a2)
{
  v3 = sub_20DF85A00(a1);
  if (v4)
  {
    v5 = v3;
    if (!a2)
    {
      return v5;
    }

    v6 = 1 << *(a2 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a2 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    while (v8)
    {
      v11 = v10;
LABEL_11:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = (*(a2 + 48) + ((v11 << 10) | (16 * v12)));
      v14 = *v13;
      v15 = v13[1];

      MEMORY[0x20F32A4B0](v14, v15);

      MEMORY[0x20F32A4B0](125, 0xE100000000000000);
      sub_20DF751E4();
      v5 = sub_20E0095F4();
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        return v5;
      }

      v8 = *(a2 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (qword_2811230C8 != -1)
  {
LABEL_20:
    swift_once();
  }

  v16 = sub_20E009094();
  __swift_project_value_buffer(v16, qword_2811249D0);
  v17 = sub_20E009074();
  v18 = sub_20E009544();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_20DF62000, v17, v18, "Unable decode API Path", v19, 2u);
    MEMORY[0x20F32B3A0](v19, -1, -1);
  }

  return 0;
}

uint64_t sub_20DF8549C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20E009684() + 1) & ~v5;
    do
    {
      sub_20E009A34();

      sub_20E009194();
      v9 = sub_20E009A54();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_20DF8564C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_20DFB85D0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_20DFFB490(v18, a5 & 1);
      v13 = sub_20DFB85D0(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_20E0099D4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_20DFFBF88();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

_OWORD *sub_20DF857D4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20DFB85D0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_20DFFC100();
      v11 = v19;
      goto LABEL_8;
    }

    sub_20DFFB750(v16, a4 & 1);
    v11 = sub_20DFB85D0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_20E0099D4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_20DF77A64(a1, v22);
  }

  else
  {
    sub_20DF85924(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_20DF85924(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20DF77A64(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_20DF85990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DF85A00(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (v25 - v2);
  v4 = type metadata accessor for UtilityServicesConfigurationsModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DF9EE34(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20DF66E28(v3, &qword_27C852A60, &unk_20E00EBE0);
    if (qword_2811230C8 != -1)
    {
      swift_once();
    }

    v8 = sub_20E009094();
    __swift_project_value_buffer(v8, qword_2811249D0);
    v9 = sub_20E009074();
    v10 = sub_20E009544();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20DF62000, v9, v10, "Unable to baseURL", v11, 2u);
      MEMORY[0x20F32B3A0](v11, -1, -1);
    }

    return 0;
  }

  else
  {
    sub_20DF85D48(v3, v7);
    v13 = *(v7 + 184);
    v14 = *(v7 + 216);
    v39[10] = *(v7 + 200);
    v39[11] = v14;
    v39[12] = *(v7 + 232);
    v15 = *(v7 + 120);
    v16 = *(v7 + 152);
    v39[6] = *(v7 + 136);
    v39[7] = v16;
    v39[8] = *(v7 + 168);
    v39[9] = v13;
    v17 = *(v7 + 56);
    v18 = *(v7 + 88);
    v39[2] = *(v7 + 72);
    v39[3] = v18;
    v39[4] = *(v7 + 104);
    v39[5] = v15;
    v39[0] = *(v7 + 40);
    v39[1] = v17;
    v19 = *(v7 + 184);
    v20 = *(v7 + 216);
    v36 = *(v7 + 200);
    v37 = v20;
    v38 = *(v7 + 232);
    v21 = *(v7 + 120);
    v22 = *(v7 + 152);
    v32 = *(v7 + 136);
    v33 = v22;
    v34 = *(v7 + 168);
    v35 = v19;
    v23 = *(v7 + 56);
    v24 = *(v7 + 88);
    v28 = *(v7 + 72);
    v29 = v24;
    v30 = *(v7 + 104);
    v31 = v21;
    v26 = *(v7 + 40);
    v27 = v23;
    sub_20DF85DAC(v39, v40);
    swift_getAtKeyPath();
    v40[10] = v36;
    v40[11] = v37;
    v40[12] = v38;
    v40[6] = v32;
    v40[7] = v33;
    v40[8] = v34;
    v40[9] = v35;
    v40[2] = v28;
    v40[3] = v29;
    v40[4] = v30;
    v40[5] = v31;
    v40[0] = v26;
    v40[1] = v27;
    sub_20DF85E08(v40);
    sub_20DF85E5C(v7);
    return v25[0];
  }
}

id sub_20DF85D20(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

void sub_20DF85D34(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

uint64_t sub_20DF85D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityServicesConfigurationsModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DF85E5C(uint64_t a1)
{
  v2 = type metadata accessor for UtilityServicesConfigurationsModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DF85EB8(uint64_t a1)
{
  v1 = sub_20DF85A00(a1);
  if (!v2)
  {
    if (qword_2811230C8 != -1)
    {
      swift_once();
    }

    v5 = sub_20E009094();
    __swift_project_value_buffer(v5, qword_2811249D0);
    v6 = sub_20E009074();
    v7 = sub_20E009544();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20DF62000, v6, v7, "Unable decode API Path", v8, 2u);
      MEMORY[0x20F32B3A0](v8, -1, -1);
    }

    return 0;
  }

  v3 = v2;
  v4 = v1;
  if (sub_20DFE7E38() <= 1u)
  {

    return 0;
  }

  v10 = sub_20DFE8294(v4, v3);

  return v10 & 1;
}

uint64_t sub_20DF85FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v13;
  v8[11] = a6;
  v8[12] = a7;
  v8[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v8[15] = swift_task_alloc();
  v9 = sub_20E008714();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v10 = sub_20E008AF4();
  v8[23] = v10;
  v8[24] = *(v10 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF861D4, 0, 0);
}

uint64_t sub_20DF861D4()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  sub_20DF85FEC();
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v0[22], &qword_27C8520D0, &qword_20E00AB70);
    if (qword_27C8520A0 != -1)
    {
      swift_once();
    }

    v5 = sub_20E009094();
    __swift_project_value_buffer(v5, qword_27C862740);
    v6 = sub_20E009074();
    v7 = sub_20E009544();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20DF62000, v6, v7, "Request URL for peaks API not found", v8, 2u);
      MEMORY[0x20F32B3A0](v8, -1, -1);
    }

    v9 = v0[16];
    v10 = v0[17];
    v11 = v0[10];

    (*(v10 + 56))(v11, 1, 1, v9);
LABEL_15:

    v36 = v0[1];

    return v36();
  }

  v12 = v0[23];
  v13 = v0[20];
  v15 = v0[11];
  v14 = v0[12];
  v51 = *(v0[24] + 32);
  v51(v0[28], v0[22], v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
  inited = swift_initStackObject();
  v0[29] = inited;
  *(inited + 16) = xmmword_20E00AB50;
  *(inited + 32) = 0x7461447472617473;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = v15;
  *(inited + 56) = v14;

  sub_20E008A54();
  sub_20E008AC4();
  if (v4(v13, 1, v12) == 1)
  {
    v17 = v0[23];
    v18 = v0[24];
    v20 = v0[20];
    v19 = v0[21];

    sub_20DF66E28(v20, &qword_27C8520D0, &qword_20E00AB70);
    (*(v18 + 56))(v19, 1, 1, v17);
LABEL_10:
    sub_20DF66E28(v0[21], &qword_27C8520D0, &qword_20E00AB70);
    if (qword_27C8520A0 != -1)
    {
      swift_once();
    }

    v26 = sub_20E009094();
    __swift_project_value_buffer(v26, qword_27C862740);
    v27 = sub_20E009074();
    v28 = sub_20E009544();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_20DF62000, v27, v28, "Unable to generate Request URL for peaks API.", v29, 2u);
      MEMORY[0x20F32B3A0](v29, -1, -1);
    }

    v30 = v0[28];
    v31 = v0[23];
    v32 = v0[24];
    v33 = v0[16];
    v34 = v0[17];
    v35 = v0[10];

    (*(v32 + 8))(v30, v31);
    (*(v34 + 56))(v35, 1, 1, v33);
    goto LABEL_15;
  }

  v21 = v0[26];
  v22 = v0[23];
  v23 = v0[24];
  v24 = v0[21];
  v51(v21, v0[20], v22);
  sub_20DFE91DC(inited, 1, 0, v24);

  v25 = *(v23 + 8);
  v0[30] = v25;
  v0[31] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v21, v22);
  if (v4(v24, 1, v22) == 1)
  {
    goto LABEL_10;
  }

  v38 = v0[27];
  v40 = v0[24];
  v39 = v0[25];
  v41 = v0[23];
  v43 = v0[18];
  v42 = v0[19];
  v44 = v0[16];
  v45 = v0[17];
  v51(v38, v0[21], v41);
  (*(v40 + 16))(v39, v38, v41);
  sub_20E0086B4();
  sub_20DFDF668(v42);
  v46 = *(v45 + 8);
  v0[32] = v46;
  v0[33] = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v46(v43, v44);
  sub_20E008694();
  v47 = swift_task_alloc();
  v0[34] = v47;
  *v47 = v0;
  v47[1] = sub_20DF867CC;
  v48 = v0[19];
  v49 = v0[15];
  v50 = v0[13];

  return sub_20DF83234(v49, v48, v50);
}

uint64_t sub_20DF867CC()
{

  if (v0)
  {

    v1 = sub_20DF86BEC;
  }

  else
  {
    v1 = sub_20DF868E4;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20DF868E4()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_27C852098 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862728);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to sign Peaks API request", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = v0[32];
    v9 = v0[30];
    v10 = v0[27];
    v11 = v0[23];
    v12 = v0[19];
    v14 = v0[16];
    v13 = v0[17];
    v23 = v0[28];
    v24 = v0[10];

    v8(v12, v14);
    v9(v10, v11);
    v9(v23, v11);
    (*(v13 + 56))(v24, 1, 1, v14);
  }

  else
  {
    v22 = v0[32];
    v15 = v0[30];
    v16 = v0[27];
    v25 = v0[28];
    v17 = v0[23];
    v18 = v0[19];
    v19 = v0[10];
    (*(v2 + 32))(v19, v3, v1);
    sub_20E008704();
    v22(v18, v1);
    v15(v16, v17);
    v15(v25, v17);
    (*(v2 + 56))(v19, 0, 1, v1);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_20DF86BEC()
{
  (*(v0[17] + 56))(v0[15], 1, 1, v0[16]);
  sub_20DF66E28(v0[15], &qword_27C8520C8, &qword_20E010830);
  if (qword_27C852098 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_27C862728);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Unable to sign Peaks API request", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v5 = v0[32];
  v6 = v0[30];
  v7 = v0[27];
  v8 = v0[23];
  v9 = v0[19];
  v11 = v0[16];
  v10 = v0[17];
  v14 = v0[28];
  v15 = v0[10];

  v5(v9, v11);
  v6(v7, v8);
  v6(v14, v8);
  (*(v10 + 56))(v15, 1, 1, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_20DF86E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_20DF86E40, 0, 0);
}

uint64_t sub_20DF86E40()
{
  v1 = [objc_opt_self() ephemeralSessionConfiguration];
  v2 = [objc_opt_self() sessionWithConfiguration_];
  v0[8] = v2;

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_20DF86F2C;
  v5 = v0[6];
  v4 = v0[7];

  return sub_20DFCFC94(v5, v4, v2);
}

uint64_t sub_20DF86F2C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 80) = a1;

  v4 = *(v3 + 64);
  if (v1)
  {

    v5 = sub_20DF8722C;
  }

  else
  {

    v5 = sub_20DF87074;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_20DF87074()
{
  v1 = *(*(*(v0 + 40) + OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionResponse_subscription) + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_customerAgreements);
  if (v1 >> 62)
  {
    v2 = sub_20E009804();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:
    v12 = *(v0 + 80);
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v2; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x20F32A900](i, v1);
    }

    else
    {
      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    v6 = &v4[OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_alternateSupplier];
    swift_beginAccess();
    v7 = v6[1];
    if (v7 && (v8 = *v6, , v9 = sub_20DF6DA28(v8, v7), v11 = v10, , v11))
    {
      *v6 = v9;
      v6[1] = v11;
    }

    else
    {
    }
  }

  v12 = *(v0 + 80);

LABEL_16:

  v14 = *(v0 + 8);
  v13 = *(v0 + 40);

  v14(v13);
}

uint64_t sub_20DF8722C()
{
  if (qword_27C852090 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_27C862710);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Error while trying to fetch UtilityConfiguration.", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v5 = sub_20E009074();
  v6 = sub_20E009544();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20DF62000, v5, v6, "Returning Subscription without altering Alternate Supplier Name", v7, 2u);
    MEMORY[0x20F32B3A0](v7, -1, -1);
  }

  v10 = *(v0 + 8);
  v8 = *(v0 + 40);

  return v10(v8);
}

uint64_t sub_20DF873C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v7[10] = swift_task_alloc();
  v9 = sub_20E008714();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[14] = v10;
  *v10 = v7;
  v10[1] = sub_20DF874FC;

  return sub_20DF9D6CC(a7);
}

uint64_t sub_20DF874FC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[15] = v3;
  *v3 = v2;
  v3[1] = sub_20DF876B8;
  v4 = v1[10];
  v5 = v1[8];
  v6 = v1[7];
  v7 = v1[6];
  v8 = v1[5];
  v9 = v1[4];
  v10 = v1[3];

  return sub_20DF9712C(v4, v10, v9, v8, v7, v6, v5);
}

uint64_t sub_20DF876B8()
{

  return MEMORY[0x2822009F8](sub_20DF877B4, 0, 0);
}

uint64_t sub_20DF877B4()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF8B6B4(v3);
    if (qword_27C852090 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862710);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to generate request URL for ServiceLocation Subscription", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    type metadata accessor for NetworkError(0);
    sub_20DF8B71C(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    sub_20DFDF8DC(0xD00000000000003BLL, 0x800000020E015D40, 0xD00000000000003ALL, 0x800000020E015D80);
    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    v11[1] = sub_20DF87A70;
    v12 = v0[13];

    return MEMORY[0x28211ECF8](v12, 0);
  }
}

uint64_t sub_20DF87A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[17] = a1;
  v5[18] = a2;
  v5[19] = a3;
  v5[20] = v3;

  if (v3)
  {
    v6 = sub_20DF8B768;
  }

  else
  {
    v6 = sub_20DF87B88;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20DF87B88()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    if (qword_27C852090 != -1)
    {
      swift_once();
    }

    v9 = sub_20E009094();
    __swift_project_value_buffer(v9, qword_27C862710);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20DF62000, v10, v11, "Unable to process ServiceLocation Subscription Response.", v12, 2u);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }

    v13 = *(v0 + 144);
    v14 = *(v0 + 152);
    v15 = *(v0 + 136);
    v17 = *(v0 + 96);
    v16 = *(v0 + 104);
    v18 = *(v0 + 88);

    type metadata accessor for NetworkError(0);
    sub_20DF8B71C(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v19 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v15, v13);
    goto LABEL_58;
  }

  v2 = v1;
  v3 = *(v0 + 152);
  v4 = [v2 statusCode];
  if (v4 > 408)
  {
    if (v4 > 428)
    {
      if (v4 == 429)
      {
        if (qword_27C852090 != -1)
        {
          swift_once();
        }

        v58 = sub_20E009094();
        __swift_project_value_buffer(v58, qword_27C862710);
        v6 = sub_20E009074();
        v59 = sub_20E009544();
        if (os_log_type_enabled(v6, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_20DF62000, v6, v59, "TOO MANY REQUESTS | Server rejected calls cause of too many requests being made", v60, 2u);
          MEMORY[0x20F32B3A0](v60, -1, -1);
        }

        goto LABEL_57;
      }

      if (v4 == 500)
      {
        if (qword_27C852090 != -1)
        {
          swift_once();
        }

        v23 = sub_20E009094();
        __swift_project_value_buffer(v23, qword_27C862710);
        v24 = sub_20E009074();
        v25 = sub_20E009544();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_20DF62000, v24, v25, "Internal Server Error", v26, 2u);
          MEMORY[0x20F32B3A0](v26, -1, -1);
        }

        v28 = *(v0 + 144);
        v27 = *(v0 + 152);
        v29 = *(v0 + 136);
        v30 = *(v0 + 96);
        v76 = *(v0 + 88);
        v78 = *(v0 + 104);

        type metadata accessor for NetworkError(0);
        sub_20DF8B71C(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
        swift_allocError();
        *v31 = [v2 statusCode];
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_20DF67FFC(v29, v28);

        (*(v30 + 8))(v78, v76);
        goto LABEL_59;
      }
    }

    else
    {
      if (v4 == 409)
      {
        if (qword_27C852090 != -1)
        {
          swift_once();
        }

        v55 = sub_20E009094();
        __swift_project_value_buffer(v55, qword_27C862710);
        v6 = sub_20E009074();
        v56 = sub_20E009544();
        if (os_log_type_enabled(v6, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_20DF62000, v6, v56, "Unable to create Subscription due to too many existing subscriptions", v57, 2u);
          MEMORY[0x20F32B3A0](v57, -1, -1);
        }

        goto LABEL_57;
      }

      if (v4 == 412)
      {
        if (qword_27C852090 != -1)
        {
          swift_once();
        }

        v5 = sub_20E009094();
        __swift_project_value_buffer(v5, qword_27C862710);
        v6 = sub_20E009074();
        v7 = sub_20E009544();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&dword_20DF62000, v6, v7, "Access Token expired. Retry after refreshing token", v8, 2u);
          MEMORY[0x20F32B3A0](v8, -1, -1);
        }

LABEL_57:
        v64 = *(v0 + 144);
        v14 = *(v0 + 152);
        v65 = *(v0 + 136);
        v17 = *(v0 + 96);
        v16 = *(v0 + 104);
        v18 = *(v0 + 88);

        type metadata accessor for NetworkError(0);
        sub_20DF8B71C(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_20DF67FFC(v65, v64);

LABEL_58:
        (*(v17 + 8))(v16, v18);
LABEL_59:

        v66 = *(v0 + 8);

        return v66();
      }
    }

LABEL_39:
    if (qword_27C852090 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 152);
    v48 = sub_20E009094();
    __swift_project_value_buffer(v48, qword_27C862710);
    v49 = v47;
    v50 = sub_20E009074();
    v51 = sub_20E009544();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 152);
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      *(v53 + 4) = [v2 statusCode];

      _os_log_impl(&dword_20DF62000, v50, v51, "Request failed : Status Code %ld", v53, 0xCu);
      MEMORY[0x20F32B3A0](v53, -1, -1);
      v54 = *(v0 + 152);
    }

    else
    {

      v54 = *(v0 + 152);
      v50 = v54;
    }

    v69 = *(v0 + 136);
    v68 = *(v0 + 144);
    v70 = *(v0 + 96);
    v77 = *(v0 + 88);
    v79 = *(v0 + 104);

    type metadata accessor for NetworkError(0);
    sub_20DF8B71C(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v71 = [v2 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v69, v68);

    (*(v70 + 8))(v79, v77);
    goto LABEL_59;
  }

  if (v4 != 201)
  {
    if (v4 == 400)
    {
      if (qword_27C852090 != -1)
      {
        swift_once();
      }

      v61 = sub_20E009094();
      __swift_project_value_buffer(v61, qword_27C862710);
      v6 = sub_20E009074();
      v62 = sub_20E009544();
      if (os_log_type_enabled(v6, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_20DF62000, v6, v62, "BAD REQUEST | Check request", v63, 2u);
        MEMORY[0x20F32B3A0](v63, -1, -1);
      }

      goto LABEL_57;
    }

    if (v4 == 401)
    {
      if (qword_27C852090 != -1)
      {
        swift_once();
      }

      v20 = sub_20E009094();
      __swift_project_value_buffer(v20, qword_27C862710);
      v6 = sub_20E009074();
      v21 = sub_20E009544();
      if (os_log_type_enabled(v6, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_20DF62000, v6, v21, "Request Unauthorized or Access Token Expired.", v22, 2u);
        MEMORY[0x20F32B3A0](v22, -1, -1);
      }

      goto LABEL_57;
    }

    goto LABEL_39;
  }

  if (qword_27C852090 != -1)
  {
    swift_once();
  }

  v32 = sub_20E009094();
  __swift_project_value_buffer(v32, qword_27C862710);
  v33 = sub_20E009074();
  v34 = sub_20E009554();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_20DF62000, v33, v34, "ServiceLocation Subscription Response received", v35, 2u);
    MEMORY[0x20F32B3A0](v35, -1, -1);
  }

  v36 = *(v0 + 160);

  sub_20E008744();
  swift_allocObject();
  sub_20E008734();
  type metadata accessor for UtilitySubscriptionResponse();
  sub_20DF8B71C(&qword_27C852A70, type metadata accessor for UtilitySubscriptionResponse, &protocol conformance descriptor for UtilitySubscriptionResponse);
  sub_20E008724();
  v37 = v36;

  if (v36)
  {
    v38 = sub_20E009074();
    v39 = sub_20E009544();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_20DF62000, v38, v39, "Error while decoding response from server", v40, 2u);
      MEMORY[0x20F32B3A0](v40, -1, -1);
    }

    v41 = *(v0 + 144);
    v42 = *(v0 + 152);
    v43 = *(v0 + 136);
    v45 = *(v0 + 96);
    v44 = *(v0 + 104);
    v46 = *(v0 + 88);

    sub_20DFFE0B0(v37);
    swift_willThrow();
    sub_20DF67FFC(v43, v41);

    (*(v45 + 8))(v44, v46);
    goto LABEL_59;
  }

  v72 = *(v0 + 16);
  *(v0 + 168) = v72;
  v73 = swift_task_alloc();
  *(v0 + 176) = v73;
  *v73 = v0;
  v73[1] = sub_20DF88990;
  v74 = *(v0 + 56);
  v75 = *(v0 + 64);

  return sub_20DF86E1C(v72, v74, v75);
}

uint64_t sub_20DF88990(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return MEMORY[0x2822009F8](sub_20DF8B764, 0, 0);
}

uint64_t sub_20DF88A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v7[10] = swift_task_alloc();
  v9 = sub_20E008714();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[14] = v10;
  *v10 = v7;
  v10[1] = sub_20DF88BC8;

  return sub_20DF9D6CC(a7);
}

uint64_t sub_20DF88BC8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[15] = v3;
  *v3 = v2;
  v3[1] = sub_20DF88D84;
  v4 = v1[10];
  v5 = v1[8];
  v6 = v1[7];
  v7 = v1[6];
  v8 = v1[5];
  v9 = v1[4];
  v10 = v1[3];

  return sub_20DF980CC(v4, v8, v7, v6, v5, v10, v9);
}

uint64_t sub_20DF88D84()
{

  return MEMORY[0x2822009F8](sub_20DF88E80, 0, 0);
}

uint64_t sub_20DF88E80()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF8B6B4(v3);
    if (qword_27C852090 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862710);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to generate request URL for  Subscription Details", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    type metadata accessor for NetworkError(0);
    sub_20DF8B71C(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    sub_20DFDF8DC(0xD000000000000047, 0x800000020E015CB0, 0xD00000000000001ALL, 0x800000020E015D00);
    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    v11[1] = sub_20DF8913C;
    v12 = v0[13];

    return MEMORY[0x28211ECF8](v12, 0);
  }
}

uint64_t sub_20DF8913C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[17] = a1;
  v5[18] = a2;
  v5[19] = a3;
  v5[20] = v3;

  if (v3)
  {
    v6 = sub_20DF8A260;
  }

  else
  {
    v6 = sub_20DF89254;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20DF89254()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    if (qword_27C852090 != -1)
    {
      swift_once();
    }

    v9 = sub_20E009094();
    __swift_project_value_buffer(v9, qword_27C862710);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20DF62000, v10, v11, "Unable to process ServiceLocation Subscription Response.", v12, 2u);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }

    v13 = *(v0 + 144);
    v14 = *(v0 + 152);
    v15 = *(v0 + 136);
    v17 = *(v0 + 96);
    v16 = *(v0 + 104);
    v18 = *(v0 + 88);

    type metadata accessor for NetworkError(0);
    sub_20DF8B71C(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v19 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v15, v13);
    goto LABEL_58;
  }

  v2 = v1;
  v3 = *(v0 + 152);
  sub_20DFDFFF8(0xD00000000000001BLL, 0x800000020E015D20, [v2 statusCode], &unk_28252D9E8);
  v4 = [v2 statusCode];
  if (v4 > 403)
  {
    if (v4 > 428)
    {
      if (v4 == 429)
      {
        if (qword_27C852090 != -1)
        {
          swift_once();
        }

        v58 = sub_20E009094();
        __swift_project_value_buffer(v58, qword_27C862710);
        v6 = sub_20E009074();
        v59 = sub_20E009544();
        if (os_log_type_enabled(v6, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_20DF62000, v6, v59, "TOO MANY REQUESTS | Server rejected calls cause of too many requests being made", v60, 2u);
          MEMORY[0x20F32B3A0](v60, -1, -1);
        }

        goto LABEL_57;
      }

      if (v4 == 500)
      {
        if (qword_27C852090 != -1)
        {
          swift_once();
        }

        v23 = sub_20E009094();
        __swift_project_value_buffer(v23, qword_27C862710);
        v24 = sub_20E009074();
        v25 = sub_20E009544();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_20DF62000, v24, v25, "Internal Server Error", v26, 2u);
          MEMORY[0x20F32B3A0](v26, -1, -1);
        }

        v28 = *(v0 + 144);
        v27 = *(v0 + 152);
        v29 = *(v0 + 136);
        v30 = *(v0 + 96);
        v76 = *(v0 + 88);
        v78 = *(v0 + 104);

        type metadata accessor for NetworkError(0);
        sub_20DF8B71C(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
        swift_allocError();
        *v31 = [v2 statusCode];
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_20DF67FFC(v29, v28);

        (*(v30 + 8))(v78, v76);
        goto LABEL_59;
      }
    }

    else
    {
      if (v4 == 404)
      {
        if (qword_27C852090 != -1)
        {
          swift_once();
        }

        v55 = sub_20E009094();
        __swift_project_value_buffer(v55, qword_27C862710);
        v6 = sub_20E009074();
        v56 = sub_20E009544();
        if (os_log_type_enabled(v6, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_20DF62000, v6, v56, "Subscription Not Found! Proceed to user Off-boarding Actions.", v57, 2u);
          MEMORY[0x20F32B3A0](v57, -1, -1);
        }

        goto LABEL_57;
      }

      if (v4 == 412)
      {
        if (qword_27C852090 != -1)
        {
          swift_once();
        }

        v5 = sub_20E009094();
        __swift_project_value_buffer(v5, qword_27C862710);
        v6 = sub_20E009074();
        v7 = sub_20E009544();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&dword_20DF62000, v6, v7, "Invalid Access Token. Try again after refreshing acces token", v8, 2u);
          MEMORY[0x20F32B3A0](v8, -1, -1);
        }

LABEL_57:
        v64 = *(v0 + 144);
        v14 = *(v0 + 152);
        v65 = *(v0 + 136);
        v17 = *(v0 + 96);
        v16 = *(v0 + 104);
        v18 = *(v0 + 88);

        type metadata accessor for NetworkError(0);
        sub_20DF8B71C(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_20DF67FFC(v65, v64);

LABEL_58:
        (*(v17 + 8))(v16, v18);
LABEL_59:

        v66 = *(v0 + 8);

        return v66();
      }
    }

LABEL_39:
    if (qword_27C852090 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 152);
    v48 = sub_20E009094();
    __swift_project_value_buffer(v48, qword_27C862710);
    v49 = v47;
    v50 = sub_20E009074();
    v51 = sub_20E009544();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 152);
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      *(v53 + 4) = [v2 statusCode];

      _os_log_impl(&dword_20DF62000, v50, v51, "Request failed : Status Code %ld", v53, 0xCu);
      MEMORY[0x20F32B3A0](v53, -1, -1);
      v54 = *(v0 + 152);
    }

    else
    {

      v54 = *(v0 + 152);
      v50 = v54;
    }

    v69 = *(v0 + 136);
    v68 = *(v0 + 144);
    v70 = *(v0 + 96);
    v77 = *(v0 + 88);
    v79 = *(v0 + 104);

    type metadata accessor for NetworkError(0);
    sub_20DF8B71C(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v71 = [v2 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v69, v68);

    (*(v70 + 8))(v79, v77);
    goto LABEL_59;
  }

  if (v4 != 200)
  {
    if (v4 == 400)
    {
      if (qword_27C852090 != -1)
      {
        swift_once();
      }

      v61 = sub_20E009094();
      __swift_project_value_buffer(v61, qword_27C862710);
      v6 = sub_20E009074();
      v62 = sub_20E009544();
      if (os_log_type_enabled(v6, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_20DF62000, v6, v62, "BAD REQUEST | Check request", v63, 2u);
        MEMORY[0x20F32B3A0](v63, -1, -1);
      }

      goto LABEL_57;
    }

    if (v4 == 401)
    {
      if (qword_27C852090 != -1)
      {
        swift_once();
      }

      v20 = sub_20E009094();
      __swift_project_value_buffer(v20, qword_27C862710);
      v6 = sub_20E009074();
      v21 = sub_20E009544();
      if (os_log_type_enabled(v6, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_20DF62000, v6, v21, "Request Unauthorized.", v22, 2u);
        MEMORY[0x20F32B3A0](v22, -1, -1);
      }

      goto LABEL_57;
    }

    goto LABEL_39;
  }

  if (qword_27C852090 != -1)
  {
    swift_once();
  }

  v32 = sub_20E009094();
  __swift_project_value_buffer(v32, qword_27C862710);
  v33 = sub_20E009074();
  v34 = sub_20E009554();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_20DF62000, v33, v34, "ServiceLocation Subscription Response received", v35, 2u);
    MEMORY[0x20F32B3A0](v35, -1, -1);
  }

  v36 = *(v0 + 160);

  sub_20E008744();
  swift_allocObject();
  sub_20E008734();
  type metadata accessor for UtilitySubscriptionResponse();
  sub_20DF8B71C(&qword_27C852A70, type metadata accessor for UtilitySubscriptionResponse, &protocol conformance descriptor for UtilitySubscriptionResponse);
  sub_20E008724();
  v37 = v36;

  if (v36)
  {
    v38 = sub_20E009074();
    v39 = sub_20E009544();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_20DF62000, v38, v39, "Error while decoding response from server", v40, 2u);
      MEMORY[0x20F32B3A0](v40, -1, -1);
    }

    v41 = *(v0 + 144);
    v42 = *(v0 + 152);
    v43 = *(v0 + 136);
    v45 = *(v0 + 96);
    v44 = *(v0 + 104);
    v46 = *(v0 + 88);

    sub_20DFFE0B0(v37);
    swift_willThrow();
    sub_20DF67FFC(v43, v41);

    (*(v45 + 8))(v44, v46);
    goto LABEL_59;
  }

  v72 = *(v0 + 16);
  *(v0 + 168) = v72;
  v73 = swift_task_alloc();
  *(v0 + 176) = v73;
  *v73 = v0;
  v73[1] = sub_20DF8A094;
  v74 = *(v0 + 56);
  v75 = *(v0 + 64);

  return sub_20DF86E1C(v72, v74, v75);
}

uint64_t sub_20DF8A094(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return MEMORY[0x2822009F8](sub_20DF8A194, 0, 0);
}

uint64_t sub_20DF8A194()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);

  sub_20DF67FFC(v3, v1);
  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);
  v8 = *(v0 + 184);

  return v7(v8);
}

uint64_t sub_20DF8A260()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20DF8A2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v7[9] = swift_task_alloc();
  v9 = sub_20E008714();
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[13] = v10;
  *v10 = v7;
  v10[1] = sub_20DF8A420;

  return sub_20DF9D6CC(a7);
}

uint64_t sub_20DF8A420()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[14] = v3;
  *v3 = v2;
  v3[1] = sub_20DF8A5DC;
  v4 = v1[9];
  v5 = v1[7];
  v6 = v1[6];
  v7 = v1[5];
  v8 = v1[4];
  v9 = v1[3];
  v10 = v1[2];

  return sub_20DF98D5C(v4, v8, v7, v6, v5, v10, v9);
}

uint64_t sub_20DF8A5DC()
{

  return MEMORY[0x2822009F8](sub_20DF8A6D8, 0, 0);
}

uint64_t sub_20DF8A6D8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF8B6B4(v3);
    if (qword_27C852090 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862710);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to generate request URL for  Subscription Details", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    type metadata accessor for NetworkError(0);
    sub_20DF8B71C(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v9 = v0[1];

    return v9(0);
  }

  else
  {
    (*(v2 + 32))(v0[12], v3, v1);
    sub_20DFDF8DC(0xD000000000000048, 0x800000020E015C20, 0xD00000000000001ELL, 0x800000020E015C70);
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = sub_20DF8A998;
    v12 = v0[12];

    return MEMORY[0x28211ECF8](v12, 0);
  }
}

uint64_t sub_20DF8A998(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(v7 + 128) = a3;
  *(v7 + 136) = v3;

  if (v3)
  {
    v8 = sub_20DF8B628;
  }

  else
  {
    sub_20DF67FFC(a1, a2);
    v8 = sub_20DF8AAC8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_20DF8AAC8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    if (qword_27C852090 != -1)
    {
      swift_once();
    }

    v9 = sub_20E009094();
    __swift_project_value_buffer(v9, qword_27C862710);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20DF62000, v10, v11, "Unable to process ServiceLocation Subscription Response.", v12, 2u);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }

    v13 = *(v0 + 128);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    type metadata accessor for NetworkError(0);
    sub_20DF8B71C(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v17 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_47;
  }

  v2 = v1;
  v3 = *(v0 + 128);
  sub_20DFDFFF8(0xD00000000000001BLL, 0x800000020E015C90, [v2 statusCode], &unk_28252DA10);
  v4 = [v2 statusCode];
  if (v4 > 411)
  {
    switch(v4)
    {
      case 412:
        if (qword_27C852098 != -1)
        {
          swift_once();
        }

        v33 = sub_20E009094();
        __swift_project_value_buffer(v33, qword_27C862728);
        v6 = sub_20E009074();
        v34 = sub_20E009544();
        if (os_log_type_enabled(v6, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_20DF62000, v6, v34, "Authorization Token expired. Retry after refreshing token", v35, 2u);
          MEMORY[0x20F32B3A0](v35, -1, -1);
        }

        goto LABEL_46;
      case 429:
        if (qword_27C852090 != -1)
        {
          swift_once();
        }

        v47 = sub_20E009094();
        __swift_project_value_buffer(v47, qword_27C862710);
        v6 = sub_20E009074();
        v48 = sub_20E009544();
        if (os_log_type_enabled(v6, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_20DF62000, v6, v48, "TOO MANY REQUESTS | Server rejected calls cause of too many requests being made", v49, 2u);
          MEMORY[0x20F32B3A0](v49, -1, -1);
        }

        goto LABEL_46;
      case 500:
        if (qword_27C852090 != -1)
        {
          swift_once();
        }

        v18 = sub_20E009094();
        __swift_project_value_buffer(v18, qword_27C862710);
        v19 = sub_20E009074();
        v20 = sub_20E009544();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_20DF62000, v19, v20, "Internal Server Error", v21, 2u);
          MEMORY[0x20F32B3A0](v21, -1, -1);
        }

        v22 = *(v0 + 128);
        v24 = *(v0 + 88);
        v23 = *(v0 + 96);
        v25 = *(v0 + 80);

        type metadata accessor for NetworkError(0);
        sub_20DF8B71C(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
        swift_allocError();
        *v26 = [v2 statusCode];
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*(v24 + 8))(v23, v25);
        goto LABEL_48;
    }

    goto LABEL_33;
  }

  if (v4 != 204)
  {
    if (v4 == 400)
    {
      if (qword_27C852090 != -1)
      {
        swift_once();
      }

      v44 = sub_20E009094();
      __swift_project_value_buffer(v44, qword_27C862710);
      v6 = sub_20E009074();
      v45 = sub_20E009544();
      if (os_log_type_enabled(v6, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_20DF62000, v6, v45, "BAD REQUEST | Check request", v46, 2u);
        MEMORY[0x20F32B3A0](v46, -1, -1);
      }

      goto LABEL_46;
    }

    if (v4 == 401)
    {
      if (qword_27C852090 != -1)
      {
        swift_once();
      }

      v5 = sub_20E009094();
      __swift_project_value_buffer(v5, qword_27C862710);
      v6 = sub_20E009074();
      v7 = sub_20E009544();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_20DF62000, v6, v7, "Request Unauthorized or Access Token Expired.", v8, 2u);
        MEMORY[0x20F32B3A0](v8, -1, -1);
      }

LABEL_46:
      v13 = *(v0 + 128);
      v15 = *(v0 + 88);
      v14 = *(v0 + 96);
      v16 = *(v0 + 80);

      type metadata accessor for NetworkError(0);
      sub_20DF8B71C(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_47:
      (*(v15 + 8))(v14, v16);
LABEL_48:

      v50 = *(v0 + 8);
      v51 = 0;
      goto LABEL_49;
    }

LABEL_33:
    if (qword_27C852090 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 128);
    v37 = sub_20E009094();
    __swift_project_value_buffer(v37, qword_27C862710);
    v38 = v36;
    v39 = sub_20E009074();
    v40 = sub_20E009544();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = *(v0 + 128);
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = [v2 statusCode];

      _os_log_impl(&dword_20DF62000, v39, v40, "Request failed : Status Code %ld", v42, 0xCu);
      MEMORY[0x20F32B3A0](v42, -1, -1);
      v43 = *(v0 + 128);
    }

    else
    {

      v43 = *(v0 + 128);
      v39 = v43;
    }

    v57 = *(v0 + 88);
    v56 = *(v0 + 96);
    v58 = *(v0 + 80);

    type metadata accessor for NetworkError(0);
    sub_20DF8B71C(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v59 = [v2 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v57 + 8))(v56, v58);
    goto LABEL_48;
  }

  if (qword_27C852090 != -1)
  {
    swift_once();
  }

  v27 = sub_20E009094();
  __swift_project_value_buffer(v27, qword_27C862710);
  v28 = sub_20E009074();
  v29 = sub_20E009554();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_20DF62000, v28, v29, "ServiceLocation Subscription revoked successfully", v30, 2u);
    MEMORY[0x20F32B3A0](v30, -1, -1);
    v31 = *(v0 + 128);
    v32 = v31;
  }

  else
  {
    v31 = *(v0 + 128);
    v32 = v28;
    v28 = v31;
  }

  v54 = *(v0 + 88);
  v53 = *(v0 + 96);
  v55 = *(v0 + 80);

  (*(v54 + 8))(v53, v55);

  v50 = *(v0 + 8);
  v51 = 1;
LABEL_49:

  return v50(v51);
}

uint64_t sub_20DF8B628()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_20DF8B6B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DF8B71C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20DF8B76C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000011;
      v4 = 0x800000020E014810;
    }

    else
    {
      v4 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x4D7472616D536F6ELL;
    }

    if (v2)
    {
      v4 = 0x800000020E0147F0;
    }

    else
    {
      v4 = 0xEC00000072657465;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x800000020E014810;
      if (v3 != 0xD000000000000011)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE700000000000000;
      if (v3 != 0x6E776F6E6B6E75)
      {
LABEL_26:
        v7 = sub_20E009984();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0x4D7472616D536F6ELL;
    }

    if (a2)
    {
      v6 = 0x800000020E0147F0;
    }

    else
    {
      v6 = 0xEC00000072657465;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_20DF8B8D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x74616E6974736564;
    }

    else
    {
      v3 = 0x736B6E696C5FLL;
    }

    if (v2 == 2)
    {
      v4 = 0xEB000000006E6F69;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x7954726F74636166;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xEA00000000006570;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0x74616E6974736564;
  v8 = 0xEB000000006E6F69;
  if (a2 != 2)
  {
    v7 = 0x736B6E696C5FLL;
    v8 = 0xE600000000000000;
  }

  if (a2)
  {
    v6 = 0x7954726F74636166;
    v5 = 0xEA00000000006570;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v8;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E009984();
  }

  return v11 & 1;
}

uint64_t sub_20DF8BA2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006C61;
  v3 = 0x6E7265746E496171;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 1953654115;
    }

    else
    {
      v5 = 1685025392;
    }

    v6 = 0xE400000000000000;
  }

  else
  {
    if (a1)
    {
      v5 = 7759204;
    }

    else
    {
      v5 = 0x6E7265746E496171;
    }

    if (v4)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xEA00000000006C61;
    }
  }

  v7 = 1953654115;
  if (a2 != 2)
  {
    v7 = 1685025392;
  }

  if (a2)
  {
    v3 = 7759204;
    v2 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_20E009984();
  }

  return v10 & 1;
}

uint64_t sub_20DF8BB40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x7461447472617473;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x736B616570;
    }

    else
    {
      v5 = 0x617461646174656DLL;
    }

    if (v4 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x65746144646E65;
    }

    else
    {
      v5 = 0x7461447472617473;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x736B616570;
  if (a2 != 2)
  {
    v8 = 0x617461646174656DLL;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x65746144646E65;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E009984();
  }

  return v11 & 1;
}

uint64_t sub_20DF8BC7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE900000000000079;
  v6 = 0x696F506567617375;
  if (a1 == 5)
  {
    v6 = 0x7469646F6D6D6F63;
  }

  else
  {
    v5 = 0xEC0000006449746ELL;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6C65646F6DLL;
  if (a1 != 3)
  {
    v8 = 0xD000000000000015;
    v7 = 0x800000020E014700;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x754E6C6169726573;
  v10 = 0xEC0000007265626DLL;
  if (a1 != 1)
  {
    v9 = 1701536109;
    v10 = 0xE400000000000000;
  }

  if (a1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v13 = 0xE200000000000000;
      if (v11 != 25705)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (a2 != 1)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1701536109)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v14 = 0x754E6C6169726573;
    v15 = 1919246957;
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x6C65646F6DLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v13 = 0x800000020E014700;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_37;
    }

    if (a2 == 5)
    {
      v13 = 0xE900000000000079;
      if (v11 != 0x7469646F6D6D6F63)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v14 = 0x696F506567617375;
    v15 = 1682535534;
  }

  v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v11 != v14)
  {
LABEL_39:
    v16 = sub_20E009984();
    goto LABEL_40;
  }

LABEL_37:
  if (v12 != v13)
  {
    goto LABEL_39;
  }

  v16 = 1;
LABEL_40:

  return v16 & 1;
}

uint64_t sub_20DF8BEA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6574617473;
    }

    else
    {
      v5 = 0x7069726373627573;
    }

    if (v2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEE0064496E6F6974;
    }
  }

  else
  {
    v3 = 0x4C65636976726573;
    v4 = 0xEF6E6F697461636FLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000012;
      v4 = 0x800000020E014640;
    }

    if (a1 == 2)
    {
      v5 = 0x7461447472617473;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE900000000000065;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x6574617473;
    }

    else
    {
      v11 = 0x7069726373627573;
    }

    if (a2)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = 0xEE0064496E6F6974;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x4C65636976726573;
    v8 = 0x800000020E014640;
    if (a2 == 3)
    {
      v8 = 0xEF6E6F697461636FLL;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v9 = 0x7461447472617473;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE900000000000065;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_20E009984();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_20DF8C050(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x49746E756F636361;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (v2)
    {
      v3 = 0xE900000000000064;
    }

    else
    {
      v3 = 0x800000020E014660;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x736D6172676F7270;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x73726574656DLL;
  }

  else
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000020E014690;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x49746E756F636361;
    }

    else
    {
      v7 = 0xD000000000000013;
    }

    if (a2)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0x800000020E014660;
    }

    if (v4 != v7)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xE800000000000000;
    if (v4 != 0x736D6172676F7270)
    {
LABEL_34:
      v8 = sub_20E009984();
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0x73726574656DLL;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 3)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x800000020E014690;
    }

    if (v4 != v5)
    {
      goto LABEL_34;
    }
  }

  if (v3 != v6)
  {
    goto LABEL_34;
  }

  v8 = 1;
LABEL_35:

  return v8 & 1;
}

uint64_t sub_20DF8C1F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x444552454954;
    }

    else
    {
      v4 = 5590868;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x4445584946;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1413565510;
  }

  else
  {
    v4 = 0x524F505055534E55;
    v3 = 0xEB00000000444554;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x444552454954;
    }

    else
    {
      v9 = 5590868;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1413565510;
    if (a2 != 3)
    {
      v6 = 0x524F505055534E55;
      v5 = 0xEB00000000444554;
    }

    if (a2 == 2)
    {
      v7 = 0x4445584946;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_20E009984();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_20DF8C368(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "tionToken";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD00000000000001BLL;
    }

    if (v3 == 2)
    {
      v4 = "customerServiceEmail";
    }

    else
    {
      v4 = "customerServiceSms";
    }
  }

  else
  {
    if (a1)
    {
      v4 = "customerServicePhone";
    }

    else
    {
      v4 = "tionToken";
    }

    v5 = 0xD000000000000014;
  }

  v6 = "customerServiceEmail";
  v7 = 0xD000000000000012;
  if (a2 != 2)
  {
    v7 = 0xD00000000000001BLL;
    v6 = "customerServiceSms";
  }

  if (a2)
  {
    v2 = "customerServicePhone";
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000014;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v5 == v8 && (v4 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_20E009984();
  }

  return v10 & 1;
}

void sub_20DF8C488(uint64_t a1@<X8>)
{
  sub_20DF8F8C8();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_20DF8C4C4(uint64_t a2@<X8>)
{
  sub_20DF8F8C8();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

uint64_t sub_20DF8C4FC(uint64_t a1, uint64_t a2)
{
  sub_20E009A34();
  sub_20E009184();
  return sub_20E009A54();
}

uint64_t sub_20DF8C568(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DF8F874();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20DF8C5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20E009A34();
  sub_20E009184();
  return sub_20E009A54();
}

BOOL sub_20DF8C648(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if ((v5 & 0x2000000000000000) != 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      v5 &= ~0x2000000000000000uLL;
      v6 &= ~0x2000000000000000uLL;
      return sub_20DF8F1A4(v4, v5, *a2, v6);
    }
  }

  else if ((v6 & 0x2000000000000000) == 0)
  {
    return sub_20DF8F1A4(v4, v5, *a2, v6);
  }

  return 0;
}

uint64_t sub_20DF8C680()
{
  v0 = sub_20E009064();
  __swift_allocate_value_buffer(v0, qword_27C862590);
  __swift_project_value_buffer(v0, qword_27C862590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852AE8, &qword_20E00DCC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852AF0, qword_20E00DCC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E00D7A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E009044();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "INVALID_TOKEN";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SUBSCRIPTION_NOT_FOUND";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "BAD_REQUEST";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "INTERNAL_SERVER_ERROR";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "CLOUDKIT_ERROR";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "UNKNOWN_ERROR";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  return sub_20E009054();
}

uint64_t sub_20DF8C9A8()
{
  v0 = sub_20E009064();
  __swift_allocate_value_buffer(v0, qword_27C8625A8);
  __swift_project_value_buffer(v0, qword_27C8625A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852AE8, &qword_20E00DCC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852AF0, qword_20E00DCC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E00D7B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "localSerialization";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E009044();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "wireSerialization";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "pccEncryptedMasterKey";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_20E009054();
}

uint64_t sub_20DF8CBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E008F14();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        type metadata accessor for RecordTransport(0);
        sub_20E008F54();
        break;
      case 2:
        sub_20DF8CD78(a1, v5, a2, a3);
        break;
      case 1:
        sub_20DF8CC8C(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_20DF8CE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  if ((~v8 & 0x3000000000000000) != 0)
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      result = sub_20DF8CFA4(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      result = sub_20DF8CF1C(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }
  }

  result = sub_20DF8D040(v3, a1, a2, a3);
  if (!v4)
  {
    type metadata accessor for RecordTransport(0);
    return sub_20E008EB4();
  }

  return result;
}

uint64_t *sub_20DF8CF1C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result[1];
  if ((v4 & 0x2000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *result;
    sub_20DF8EAF4(*result, v4);
    sub_20E009004();
    return sub_20DF8EAFC(v5, v4);
  }

  return result;
}

uint64_t *sub_20DF8CFA4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result[1];
  if ((~v4 & 0x3000000000000000) == 0 || (v4 & 0x2000000000000000) == 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *result;
    sub_20DF8EAF4(*result, v4);
    sub_20E009004();
    return sub_20DF8EAFC(v6, v4);
  }

  return result;
}

uint64_t sub_20DF8D040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for RecordTransport(0);
  v6 = a1 + *(result + 24);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_20DF67FA8(*v6, *(v6 + 8));
    sub_20E009004();
    return sub_20DF64DE8(v8, v7);
  }

  return result;
}

double sub_20DF8D0E0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_20E00D7D0;
  sub_20E008EC4();
  result = 0.0;
  *(a2 + *(a1 + 24)) = xmmword_20E00D7C0;
  return result;
}

uint64_t sub_20DF8D150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_20E008ED4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20DF8D1C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_20E008ED4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20DF8D28C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DF8E698(&qword_27C852AF8, type metadata accessor for RecordTransport, &unk_20E00DBA8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20DF8D32C(uint64_t a1)
{
  v2 = sub_20DF8E698(&qword_27C852AC0, type metadata accessor for RecordTransport, &unk_20E00DBE0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_20DF8D398(uint64_t a1, uint64_t a2)
{
  sub_20DF8E698(&qword_27C852AC0, type metadata accessor for RecordTransport, &unk_20E00DBE0);

  return sub_20E008FC4();
}

uint64_t sub_20DF8D418()
{
  v0 = sub_20E009064();
  __swift_allocate_value_buffer(v0, qword_27C8625C0);
  __swift_project_value_buffer(v0, qword_27C8625C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852AE8, &qword_20E00DCC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852AF0, qword_20E00DCC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E00D7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E009044();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "limit";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "offset";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "time";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "recordType";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return sub_20E009054();
}

uint64_t sub_20DF8D6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E008F14();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        goto LABEL_2;
      }

      if (result == 2)
      {
        sub_20E008F74();
      }
    }

    else if (result == 3)
    {
      sub_20E008F64();
    }

    else if (result == 4 || result == 5)
    {
LABEL_2:
      sub_20E008F84();
    }
  }
}

uint64_t sub_20DF8D780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_20E009024(), !v4))
  {
    if (!v3[2] || (result = sub_20E009014(), !v4))
    {
      v8 = v3[3];
      v9 = v3[4];
      v10 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v10 != 2)
        {
          goto LABEL_16;
        }

        v11 = *(v8 + 16);
        v12 = *(v8 + 24);
      }

      else
      {
        if (!v10)
        {
          if ((v9 & 0xFF000000000000) == 0)
          {
            goto LABEL_16;
          }

LABEL_15:
          result = sub_20E009004();
          if (v4)
          {
            return result;
          }

          goto LABEL_16;
        }

        v11 = v8;
        v12 = v8 >> 32;
      }

      if (v11 != v12)
      {
        goto LABEL_15;
      }

LABEL_16:
      v13 = v3[6];
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v3[5] & 0xFFFFFFFFFFFFLL;
      }

      if (!v14 || (result = sub_20E009024(), !v4))
      {
        v15 = v3[8];
        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = v3[7] & 0xFFFFFFFFFFFFLL;
        }

        if (!v16 || (result = sub_20E009024(), !v4))
        {
          type metadata accessor for GetRequest(0);
          return sub_20E008EB4();
        }
      }
    }
  }

  return result;
}

uint64_t sub_20DF8D8EC@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_20E00D7F0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  return sub_20E008EC4();
}

uint64_t sub_20DF8D948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_20E008ED4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20DF8D9BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_20E008ED4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20DF8DA84(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DF8E698(&qword_27C852B08, type metadata accessor for GetRequest, &unk_20E00DA40);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20DF8DB24(uint64_t a1)
{
  v2 = sub_20DF8E698(&qword_27C852AA0, type metadata accessor for GetRequest, &unk_20E00DA78);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_20DF8DB90(uint64_t a1, uint64_t a2)
{
  sub_20DF8E698(&qword_27C852AA0, type metadata accessor for GetRequest, &unk_20E00DA78);

  return sub_20E008FC4();
}

uint64_t sub_20DF8DC10()
{
  v0 = sub_20E009064();
  __swift_allocate_value_buffer(v0, qword_27C8625D8);
  __swift_project_value_buffer(v0, qword_27C8625D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852AE8, &qword_20E00DCC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852AF0, qword_20E00DCC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E00D800;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "records";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E009044();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "offset";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "moreToCome";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "error";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_20E009054();
}

uint64_t sub_20DF8DE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E008F14();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_20E008F34();
        }

        else if (result == 4)
        {
          sub_20DF8F874();
          sub_20E008F44();
        }
      }

      else if (result == 1)
      {
        sub_20E008E54();
        sub_20DF8E698(&qword_27C852B18, MEMORY[0x277CFB080], MEMORY[0x277CFB078]);
        sub_20E008F94();
      }

      else if (result == 2)
      {
        sub_20E008F64();
      }

      result = sub_20E008F14();
    }
  }

  return result;
}

uint64_t sub_20DF8DFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*v3 + 16))
  {
    sub_20E008E54();
    sub_20DF8E698(&qword_27C852B18, MEMORY[0x277CFB080], MEMORY[0x277CFB078]);
    result = sub_20E009034();
    if (v4)
    {
      return result;
    }
  }

  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
  }

  else
  {
    if (!v8)
    {
      if ((v7 & 0xFF000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_11:
      result = sub_20E009004();
      if (v4)
      {
        return result;
      }

      goto LABEL_12;
    }

    v9 = v6;
    v10 = v6 >> 32;
  }

  if (v9 != v10)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (*(v3 + 24) != 1 || (result = sub_20E008FE4(), !v4))
  {
    if (!*(v3 + 32) || (sub_20DF8F874(), result = sub_20E008FF4(), !v4))
    {
      type metadata accessor for RecordsResponse(0);
      return sub_20E008EB4();
    }
  }

  return result;
}

uint64_t sub_20DF8E16C@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_20E00D810;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  return sub_20E008EC4();
}

uint64_t sub_20DF8E1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_20E008ED4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20DF8E24C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_20E008ED4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20DF8E314(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DF8E698(&qword_27C852B10, type metadata accessor for RecordsResponse, &unk_20E00D8D8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20DF8E3B4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_20E009064();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_20DF8E450(uint64_t a1)
{
  v2 = sub_20DF8E698(&qword_27C852A80, type metadata accessor for RecordsResponse, &unk_20E00D910);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_20DF8E4BC(uint64_t a1, uint64_t a2)
{
  sub_20E009A34();
  sub_20E009184();
  return sub_20E009A54();
}

uint64_t sub_20DF8E514(uint64_t a1, uint64_t a2)
{
  sub_20DF8E698(&qword_27C852A80, type metadata accessor for RecordsResponse, &unk_20E00D910);

  return sub_20E008FC4();
}

uint64_t sub_20DF8E590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20E009A34();
  sub_20E009184();
  return sub_20E009A54();
}

uint64_t sub_20DF8E698(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20DF8E918(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20DF8EA2C()
{
  result = qword_27C852AD8;
  if (!qword_27C852AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852AE0, qword_20E00DC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852AD8);
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

uint64_t sub_20DF8EAFC(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_20DF8EB10(a1, a2);
  }

  return a1;
}

uint64_t sub_20DF8EB18@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_20E008904();
    if (v10)
    {
      v11 = sub_20E008934();
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
      result = sub_20E008924();
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
  v10 = sub_20E008904();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_20E008934();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_20E008924();
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

uint64_t sub_20DF8ED48(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_20DF8F0EC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_20DF67FFC(a3, a4);
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
  sub_20DF8EB18(v13, a3, a4, &v12);
  v10 = v4;
  sub_20DF67FFC(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_20DF8EED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E008E54();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_20DF8E698(&qword_27C852B28, MEMORY[0x277CFB080], MEMORY[0x277CFB088]);
    v21 = sub_20E0091B4();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20DF8F0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_20E008904();
  v11 = result;
  if (result)
  {
    result = sub_20E008934();
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

  sub_20E008924();
  sub_20DF8EB18(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_20DF8F1A4(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_20DF67FA8(a3, a4);
          return sub_20DF8ED48(v13, a2, a3, a4) & 1;
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

uint64_t sub_20DF8F30C(uint64_t a1, uint64_t a2)
{
  if ((sub_20DF8EED8(*a1, *a2) & 1) == 0 || !sub_20DF8F1A4(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v6 <= 2)
    {
      if (v6)
      {
        if (v6 == 1)
        {
          if (v5 == 1)
          {
            goto LABEL_12;
          }
        }

        else if (v5 == 2)
        {
          goto LABEL_12;
        }
      }

      else if (!v5)
      {
        goto LABEL_12;
      }
    }

    else if (v6 > 4)
    {
      if (v6 == 5)
      {
        if (v5 == 5)
        {
          goto LABEL_12;
        }
      }

      else if (v5 == 6)
      {
        goto LABEL_12;
      }
    }

    else if (v6 == 3)
    {
      if (v5 == 3)
      {
        goto LABEL_12;
      }
    }

    else if (v5 == 4)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v5 != v6)
  {
    return 0;
  }

LABEL_12:
  type metadata accessor for RecordsResponse(0);
  sub_20E008ED4();
  sub_20DF8E698(&qword_27C852B00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E0091B4() & 1;
}

uint64_t sub_20DF8F470(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = v6 & 0x3000000000000000;
  if ((~v4 & 0x3000000000000000) == 0)
  {
    if (v8 == 0x3000000000000000)
    {
      sub_20DF8F724(*a1, v4);
      sub_20DF8F724(v7, v6);
      sub_20DF8EAFC(v5, v4);
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if (v8 == 0x3000000000000000)
  {
LABEL_8:
    sub_20DF8F724(*a1, v4);
    sub_20DF8F724(v7, v6);
    sub_20DF8EAFC(v5, v4);
    v15 = v7;
    v16 = v6;
LABEL_9:
    sub_20DF8EAFC(v15, v16);
    return 0;
  }

  v18 = *a1;
  if ((v4 & 0x2000000000000000) == 0)
  {
    sub_20DF8F724(v18, v4);
    sub_20DF8F724(v7, v6);
    if ((v6 & 0x2000000000000000) == 0)
    {
      v19 = v5;
      v20 = v4;
      v21 = v7;
      v22 = v6;
      goto LABEL_22;
    }

LABEL_18:
    sub_20DF8EAFC(v7, v6);
    v15 = v5;
    v16 = v4;
    goto LABEL_9;
  }

  if ((v6 & 0x2000000000000000) == 0)
  {
    sub_20DF8F724(v18, v4);
    sub_20DF8F724(v7, v6);
    goto LABEL_18;
  }

  sub_20DF8F724(v18, v4);
  sub_20DF8F724(v7, v6);
  v20 = v4 & 0xDFFFFFFFFFFFFFFFLL;
  v22 = v6 & 0xDFFFFFFFFFFFFFFFLL;
  v19 = v5;
  v21 = v7;
LABEL_22:
  v24 = sub_20DF8F1A4(v19, v20, v21, v22);
  sub_20DF8EAFC(v7, v6);
  sub_20DF8EAFC(v5, v4);
  if (!v24)
  {
    return 0;
  }

LABEL_4:
  v9 = *(type metadata accessor for RecordTransport(0) + 24);
  v11 = *(a1 + v9);
  v10 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v14 = *v12;
  v13 = v12[1];
  if (v10 >> 60 != 15)
  {
    if (v13 >> 60 == 15)
    {
      goto LABEL_15;
    }

    sub_20DF8F738(v11, v10);
    sub_20DF8F738(v14, v13);
    v23 = sub_20DF8F1A4(v11, v10, v14, v13);
    sub_20DF64DE8(v14, v13);
    sub_20DF64DE8(v11, v10);
    if (v23)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v13 >> 60 != 15)
  {
LABEL_15:
    sub_20DF8F738(v11, v10);
    sub_20DF8F738(v14, v13);
    sub_20DF64DE8(v11, v10);
    sub_20DF64DE8(v14, v13);
    return 0;
  }

  sub_20DF8F738(v11, v10);
  sub_20DF8F738(v14, v13);
  sub_20DF64DE8(v11, v10);
LABEL_20:
  sub_20E008ED4();
  sub_20DF8E698(&qword_27C852B00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E0091B4() & 1;
}

void sub_20DF8F724(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    sub_20DF8EAF4(a1, a2);
  }
}

void sub_20DF8F738(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_20DF67FA8(a1, a2);
  }
}

uint64_t sub_20DF8F74C(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E009984() & 1) == 0 || a1[2] != a2[2] || !sub_20DF8F1A4(a1[3], a1[4], a2[3], a2[4]) || (a1[5] != a2[5] || a1[6] != a2[6]) && (sub_20E009984() & 1) == 0 || (a1[7] != a2[7] || a1[8] != a2[8]) && (sub_20E009984() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for GetRequest(0);
  sub_20E008ED4();
  sub_20DF8E698(&qword_27C852B00, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E0091B4() & 1;
}

unint64_t sub_20DF8F874()
{
  result = qword_27C852B20;
  if (!qword_27C852B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852B20);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DataFetchError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DataFetchError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_20DF8F940(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20DF8F95C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_20DF8F9B4(uint64_t a1)
{
  sub_20DF8FA70(319, &qword_27C852B40, &type metadata for RecordTransport.OneOf_Contents);
  if (v1 <= 0x3F)
  {
    sub_20E008ED4();
    if (v2 <= 0x3F)
    {
      sub_20DF8FA70(319, &qword_27C852B48, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20DF8FA70(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_20E0095B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20DF8FAC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_20DF8FB1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t sub_20DF8FBC4(uint64_t a1)
{
  result = sub_20E008ED4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20DF8FC84(uint64_t a1)
{
  sub_20DF8FD24(319);
  if (v1 <= 0x3F)
  {
    sub_20E008ED4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20DF8FD24(uint64_t a1)
{
  if (!qword_27C852B70)
  {
    sub_20E008E54();
    v1 = sub_20E009474();
    if (!v2)
    {
      atomic_store(v1, &qword_27C852B70);
    }
  }
}

unint64_t sub_20DF8FD80()
{
  result = qword_27C852B78;
  if (!qword_27C852B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852B78);
  }

  return result;
}

unint64_t sub_20DF8FDD8()
{
  result = qword_27C852B80;
  if (!qword_27C852B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852B80);
  }

  return result;
}

unint64_t sub_20DF8FE30()
{
  result = qword_27C852B88;
  if (!qword_27C852B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852B88);
  }

  return result;
}

uint64_t sub_20DF8FE98()
{
  v1 = OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_fileHandle;
  [*(v0 + OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_fileHandle) closeFile];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_encoding;
  v4 = sub_20E009234();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_20DF64DE8(*(v0 + OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_delimData), *(v0 + OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_delimData + 8));
  return v0;
}

uint64_t sub_20DF8FF50()
{
  sub_20DF8FE98();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StreamReader(uint64_t a1)
{
  result = qword_27C852B90;
  if (!qword_27C852B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20DF8FFFC(uint64_t a1)
{
  result = sub_20E009234();
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

id sub_20DF900B8()
{
  result = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  qword_27C862620 = result;
  return result;
}

uint64_t sub_20DF900EC(void *a1)
{
  v1 = [a1 aa_primaryAppleAccount];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 aa_personID];
    if (v3)
    {
      v4 = v3;
      v5 = sub_20E0091D4();

      return v5;
    }
  }

  else
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v7 = sub_20E009094();
    __swift_project_value_buffer(v7, qword_27C862698);
    v2 = sub_20E009074();
    v8 = sub_20E009544();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20DF62000, v2, v8, "Unable to retrieve User Primary Apple Account information", v9, 2u);
      MEMORY[0x20F32B3A0](v9, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_20DF90244()
{
  v1 = v0[62];
  v0[2] = v0;
  v0[7] = v0 + 60;
  v0[3] = sub_20DF90360;
  v2 = swift_continuation_init();
  v0[47] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852BA0, &qword_20E00E028);
  v0[40] = MEMORY[0x277D85DD0];
  v0[41] = 1107296256;
  v0[42] = sub_20DF910F8;
  v0[43] = &block_descriptor;
  v0[44] = v2;
  [v1 aa:v0 + 40 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF90360()
{
  v1 = *(*v0 + 48);
  *(*v0 + 504) = v1;
  if (v1)
  {
    v2 = sub_20DF90DB4;
  }

  else
  {
    v2 = sub_20DF90470;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF90470()
{
  v1 = *(v0 + 480);
  *(v0 + 512) = v1;
  if (!v1)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v14 = sub_20E009094();
    __swift_project_value_buffer(v14, qword_27C862698);
    v15 = sub_20E009074();
    v16 = sub_20E009544();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20DF62000, v15, v16, "IDMS | Couldn't find primary apple account to generate GSToken.", v17, 2u);
      MEMORY[0x20F32B3A0](v17, -1, -1);
    }

    goto LABEL_22;
  }

  v2 = [*(v0 + 496) aida:v1 accountForiCloudAccount:?];
  *(v0 + 520) = v2;
  if (!v2)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v29 = sub_20E009094();
    __swift_project_value_buffer(v29, qword_27C862698);
    v15 = sub_20E009074();
    v30 = sub_20E009544();
    if (os_log_type_enabled(v15, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_20DF62000, v15, v30, "IDMS | Unknown account type or account store, failed to generate GSToken.", v31, 2u);
      MEMORY[0x20F32B3A0](v31, -1, -1);
    }

LABEL_22:
    v13 = 0;
    v12 = 0;
    goto LABEL_23;
  }

  v3 = *(v0 + 496);
  v4 = v2;
  v5 = sub_20E0091C4();
  v6 = [v3 credentialForAccount:v4 serviceID:v5];
  *(v0 + 528) = v6;

  if (v6)
  {
    v7 = [v6 token];
    if (v7)
    {
      v8 = v7;
      v9 = sub_20E0091D4();
      v11 = v10;

      v12 = v11;
      v13 = v9;
LABEL_23:
      v32 = *(v0 + 8);

      return v32(v13, v12);
    }
  }

  if (qword_27C852068 != -1)
  {
    swift_once();
  }

  v18 = sub_20E009094();
  *(v0 + 536) = __swift_project_value_buffer(v18, qword_27C862698);
  v19 = sub_20E009074();
  v20 = sub_20E009544();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_20DF62000, v19, v20, "IDMS | User account doesn't contain GSToken, so renewing tokens", v21, 2u);
    MEMORY[0x20F32B3A0](v21, -1, -1);
  }

  v22 = *(v0 + 496);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852BA8, &qword_20E00E030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E00E010;
  *(v0 + 448) = sub_20E0091D4();
  *(v0 + 456) = v24;
  sub_20E0096B4();
  v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 96) = sub_20DF912AC();
  *(inited + 72) = v25;
  *(v0 + 464) = sub_20E0091D4();
  *(v0 + 472) = v26;
  sub_20E0096B4();
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
  *(inited + 144) = &unk_28252DAC8;
  sub_20DF75060(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852588, &qword_20E00C110);
  swift_arrayDestroy();
  v27 = sub_20E009154();
  *(v0 + 544) = v27;

  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 488;
  *(v0 + 88) = sub_20DF90A38;
  v28 = swift_continuation_init();
  *(v0 + 440) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852BB0, &qword_20E00E038);
  *(v0 + 384) = MEMORY[0x277D85DD0];
  *(v0 + 392) = 1107296256;
  *(v0 + 400) = sub_20DF911C8;
  *(v0 + 408) = &block_descriptor_3;
  *(v0 + 416) = v28;
  [v22 renewCredentialsForAccount:v4 options:v27 completion:v0 + 384];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_20DF90A38()
{
  v1 = *(*v0 + 112);
  *(*v0 + 552) = v1;
  if (v1)
  {
    v2 = sub_20DF90EE4;
  }

  else
  {
    v2 = sub_20DF90B48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF90B48()
{
  v1 = *(v0 + 488);

  v2 = *(v0 + 520);
  if (v1)
  {

    v3 = sub_20E009074();
    v4 = sub_20E009544();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 528);
    v7 = *(v0 + 520);
    v8 = *(v0 + 512);
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20DF62000, v3, v4, "IDMS | Couldn't renew credentials while constructing GSToken.", v9, 2u);
      MEMORY[0x20F32B3A0](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v10 = *(v0 + 528);
    v11 = *(v0 + 496);
    v12 = sub_20E0091C4();
    v13 = [v11 credentialForAccount:v2 serviceID:v12];

    if (v13)
    {
      v14 = [v13 token];
      if (v14)
      {
        v15 = *(v0 + 520);
        v16 = *(v0 + 512);
        v17 = v14;
        v18 = sub_20E0091D4();
        v20 = v19;

        v21 = v20;
        v22 = v18;
        goto LABEL_12;
      }
    }

    v23 = sub_20E009074();
    v24 = sub_20E009544();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 520);
    v27 = *(v0 + 512);
    if (v25)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20DF62000, v23, v24, "IDMS | Error: still no grandslam token even after calling renew credentials.", v28, 2u);
      MEMORY[0x20F32B3A0](v28, -1, -1);
    }

    else
    {
    }
  }

  v22 = 0;
  v21 = 0;
LABEL_12:
  v29 = *(v0 + 8);

  return v29(v22, v21);
}

uint64_t sub_20DF90DB4(uint64_t a1)
{
  v2 = *(v1 + 504);
  swift_willThrow();

  if (qword_27C852068 != -1)
  {
    swift_once();
  }

  v3 = sub_20E009094();
  __swift_project_value_buffer(v3, qword_27C862698);
  v4 = sub_20E009074();
  v5 = sub_20E009544();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20DF62000, v4, v5, "IDMS | Couldn't find primary apple account to generate GSToken.", v6, 2u);
    MEMORY[0x20F32B3A0](v6, -1, -1);
  }

  v7 = *(v1 + 8);

  return v7(0, 0);
}

uint64_t sub_20DF90EE4(uint64_t a1)
{
  v2 = v1[69];
  v3 = v1[68];
  v4 = v1[65];
  swift_willThrow();

  v5 = v2;
  v6 = sub_20E009074();
  v7 = sub_20E009544();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[69];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_20DF62000, v6, v7, "IDMS | Error renewing credentials while constructing GSToken : %@", v10, 0xCu);
    sub_20DF912F8(v11);
    MEMORY[0x20F32B3A0](v11, -1, -1);
    MEMORY[0x20F32B3A0](v10, -1, -1);
  }

  else
  {
  }

  v14 = v1[66];
  v15 = sub_20E009074();
  v16 = sub_20E009544();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v1[65];
  v19 = v1[64];
  if (v17)
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_20DF62000, v15, v16, "IDMS | Error: still no grandslam token even after calling renew credentials.", v20, 2u);
    MEMORY[0x20F32B3A0](v20, -1, -1);
  }

  else
  {

    v15 = v19;
  }

  v21 = v1[1];

  return v21(0, 0);
}

uint64_t sub_20DF910F8(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_20DF911C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

unint64_t sub_20DF912AC()
{
  result = qword_27C852200;
  if (!qword_27C852200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C852200);
  }

  return result;
}

uint64_t sub_20DF912F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521E0, &unk_20E011080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static UtilityServices.utilityPeakPeriods(utilityID:tariffID:start:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_20DF6BA84;

  return sub_20DFC55B0(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t UtilityPeaks.start.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UtilityPeaks.end.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UtilityPeaks.descriptor.getter()
{
  if (!*(v0 + 48))
  {
    return 0;
  }

  v1 = *(v0 + 56);

  return v1;
}

void UtilityPeaks.tariffType.getter(char *a1@<X8>)
{
  if (!v1[6])
  {
    goto LABEL_69;
  }

  v4 = v1[9];
  v3 = v1[10];
  v5 = 5590868;

  v6 = 0xE300000000000000;
  v7 = byte_28252DB40;
  v8 = 0xE500000000000000;
  v9 = 0x4445584946;
  v10 = 0xE400000000000000;
  v11 = 1413565510;
  if (byte_28252DB40 != 3)
  {
    v11 = 0x524F505055534E55;
    v10 = 0xEB00000000444554;
  }

  if (byte_28252DB40 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  v12 = 0x444552454954;
  if (byte_28252DB40)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v12 = 5590868;
  }

  if (byte_28252DB40 <= 1u)
  {
    v13 = v12;
  }

  else
  {
    v13 = v9;
  }

  if (byte_28252DB40 <= 1u)
  {
    v14 = v6;
  }

  else
  {
    v14 = v8;
  }

  if (v13 == v4 && v3 == v14)
  {
    goto LABEL_17;
  }

  v15 = sub_20E009984();

  if (v15)
  {
LABEL_19:

    goto LABEL_70;
  }

  v7 = byte_28252DB41;
  if (byte_28252DB41 <= 1u)
  {
    if (byte_28252DB41)
    {
      v16 = 0xE600000000000000;
      v17 = 0x444552454954;
    }

    else
    {
      v16 = 0xE300000000000000;
      v17 = 5590868;
    }
  }

  else if (byte_28252DB41 == 2)
  {
    v16 = 0xE500000000000000;
    v17 = 0x4445584946;
  }

  else if (byte_28252DB41 == 3)
  {
    v16 = 0xE400000000000000;
    v17 = 1413565510;
  }

  else
  {
    v17 = 0x524F505055534E55;
    v16 = 0xEB00000000444554;
  }

  if (v17 != v4 || v3 != v16)
  {
    v18 = sub_20E009984();

    if (v18)
    {
      goto LABEL_19;
    }

    v7 = byte_28252DB42;
    if (byte_28252DB42 <= 1u)
    {
      if (byte_28252DB42)
      {
        v19 = 0xE600000000000000;
        v20 = 0x444552454954;
      }

      else
      {
        v19 = 0xE300000000000000;
        v20 = 5590868;
      }
    }

    else if (byte_28252DB42 == 2)
    {
      v19 = 0xE500000000000000;
      v20 = 0x4445584946;
    }

    else if (byte_28252DB42 == 3)
    {
      v19 = 0xE400000000000000;
      v20 = 1413565510;
    }

    else
    {
      v20 = 0x524F505055534E55;
      v19 = 0xEB00000000444554;
    }

    if (v20 != v4 || v3 != v19)
    {
      v21 = sub_20E009984();

      if (v21)
      {
        goto LABEL_19;
      }

      v7 = byte_28252DB43;
      if (byte_28252DB43 <= 1u)
      {
        if (byte_28252DB43)
        {
          v22 = 0xE600000000000000;
          v23 = 0x444552454954;
        }

        else
        {
          v22 = 0xE300000000000000;
          v23 = 5590868;
        }
      }

      else if (byte_28252DB43 == 2)
      {
        v22 = 0xE500000000000000;
        v23 = 0x4445584946;
      }

      else if (byte_28252DB43 == 3)
      {
        v22 = 0xE400000000000000;
        v23 = 1413565510;
      }

      else
      {
        v23 = 0x524F505055534E55;
        v22 = 0xEB00000000444554;
      }

      if (v23 != v4 || v3 != v22)
      {
        v24 = sub_20E009984();

        if (v24)
        {
          goto LABEL_19;
        }

        v7 = byte_28252DB44;
        if (byte_28252DB44 <= 1u)
        {
          if (byte_28252DB44)
          {
            v25 = 0xE600000000000000;
            v5 = 0x444552454954;
          }

          else
          {
            v25 = 0xE300000000000000;
          }
        }

        else if (byte_28252DB44 == 2)
        {
          v25 = 0xE500000000000000;
          v5 = 0x4445584946;
        }

        else if (byte_28252DB44 == 3)
        {
          v25 = 0xE400000000000000;
          v5 = 1413565510;
        }

        else
        {
          v5 = 0x524F505055534E55;
          v25 = 0xEB00000000444554;
        }

        if (v5 != v4 || v3 != v25)
        {
          v26 = sub_20E009984();

          if (v26)
          {
            goto LABEL_19;
          }

LABEL_69:
          v7 = 4;
          goto LABEL_70;
        }
      }
    }
  }

LABEL_17:

LABEL_70:
  *a1 = v7;
}

uint64_t UtilityTariffType.rawValue.getter()
{
  v1 = *v0;
  v2 = 5590868;
  v3 = 0x4445584946;
  v4 = 1413565510;
  if (v1 != 3)
  {
    v4 = 0x524F505055534E55;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x444552454954;
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

void UtilityPeaks.metadata.getter(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_20DF919D0(v2, v3, v4, v5, v6, v7);
}

void sub_20DF919D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_20DF91A2C()
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DF91AF0(uint64_t a1)
{
  sub_20E009194();
}

uint64_t sub_20DF91BA0(uint64_t a1)
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

unint64_t sub_20DF91C60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20DF94638(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20DF91C90(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = 0x7461447472617473;
  v4 = 0xE500000000000000;
  v5 = 0x736B616570;
  if (*v1 != 2)
  {
    v5 = 0x617461646174656DLL;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x65746144646E65;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_20DF91D10()
{
  v1 = 0x7461447472617473;
  v2 = 0x736B616570;
  if (*v0 != 2)
  {
    v2 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    v1 = 0x65746144646E65;
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

unint64_t sub_20DF91D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DF94638(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DF91DB4(uint64_t a1)
{
  v2 = sub_20DF92120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF91DF0(uint64_t a1)
{
  v2 = sub_20DF92120();

  return MEMORY[0x2821FE720](a1, v2);
}

void __swiftcall UtilityPeaks.init(start:end:periods:metadata:)(HomeUtilityServices::UtilityPeaks *__return_ptr retstr, Swift::String start, Swift::String end, Swift::OpaquePointer periods, HomeUtilityServices::RateMetaData_optional *metadata)
{
  tariffLabel = metadata->value.tariffLabel;
  retstr->metadata.value.tariffProfileId = metadata->value.tariffProfileId;
  retstr->start = start;
  retstr->end = end;
  retstr->periods = periods;
  retstr->metadata.value.tariffLabel = tariffLabel;
  retstr->metadata.value.tariffType = metadata->value.tariffType;
}

uint64_t UtilityPeaks.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852BB8, &qword_20E00E048);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = v1[2];
  v25 = v1[3];
  v26 = v7;
  v8 = v1[4];
  v23 = v1[5];
  v24 = v8;
  v9 = v1[6];
  v21 = v1[7];
  v22 = v9;
  v10 = v1[8];
  v20 = v1[9];
  v11 = v1[10];
  v18 = v10;
  v19 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF92120();
  sub_20E009A84();
  LOBYTE(v28) = 0;
  v12 = v27;
  sub_20E009914();
  if (!v12)
  {
    v14 = v23;
    v15 = v24;
    v17 = v21;
    v16 = v22;
    LOBYTE(v28) = 1;
    sub_20E009914();
    v28 = v15;
    v34 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852BC8, &qword_20E00E050);
    sub_20DF926B0(&qword_27C852BD0, sub_20DF92174, MEMORY[0x277D83948]);
    sub_20E009944();
    v28 = v14;
    v29 = v16;
    v30 = v17;
    v31 = v18;
    v32 = v20;
    v33 = v19;
    v34 = 3;
    sub_20DF919D0(v14, v16, v17, v18, v20, v19);
    sub_20DF921C8();
    sub_20E009904();
    sub_20DF9221C(v28, v29, v30, v31, v32, v33);
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20DF92120()
{
  result = qword_27C852BC0;
  if (!qword_27C852BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852BC0);
  }

  return result;
}

unint64_t sub_20DF92174()
{
  result = qword_27C852BD8;
  if (!qword_27C852BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852BD8);
  }

  return result;
}

unint64_t sub_20DF921C8()
{
  result = qword_27C852BE0;
  if (!qword_27C852BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852BE0);
  }

  return result;
}

void sub_20DF9221C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t UtilityPeaks.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852BE8, &qword_20E00E058);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF92120();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v38[0]) = 0;
  v9 = sub_20E009894();
  v11 = v10;
  v30 = v9;
  LOBYTE(v38[0]) = 1;
  v12 = sub_20E009894();
  v31 = v13;
  v29 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852BC8, &qword_20E00E050);
  LOBYTE(v32) = 2;
  sub_20DF926B0(&qword_27C852BF0, sub_20DF92728, MEMORY[0x277D83978]);
  sub_20E0098C4();
  v28 = v38[0];
  v43 = 3;
  sub_20DF9277C();
  sub_20E009884();
  (*(v6 + 8))(v8, v5);
  v27 = v39;
  v25 = *(&v40 + 1);
  v26 = v40;
  v24 = v41;
  v14 = v42;
  v23 = *(&v41 + 1);
  v15 = v30;
  *&v32 = v30;
  *(&v32 + 1) = v11;
  v16 = v29;
  *&v33 = v29;
  v17 = v31;
  *(&v33 + 1) = v31;
  v18 = v28;
  *&v34 = v28;
  *(&v34 + 1) = v39;
  v35 = v40;
  v36 = v41;
  v37 = v42;
  *(a2 + 80) = v42;
  v19 = v33;
  *a2 = v32;
  *(a2 + 16) = v19;
  v20 = v36;
  v21 = v34;
  *(a2 + 48) = v35;
  *(a2 + 64) = v20;
  *(a2 + 32) = v21;
  sub_20DF927D0(&v32, v38);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v38[0] = v15;
  v38[1] = v11;
  v38[2] = v16;
  v38[3] = v17;
  v38[4] = v18;
  v38[5] = v27;
  v38[6] = v26;
  v38[7] = v25;
  v38[8] = v24;
  v38[9] = v23;
  v38[10] = v14;
  return sub_20DF92808(v38);
}

uint64_t sub_20DF926B0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852BC8, &qword_20E00E050);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20DF92728()
{
  result = qword_27C852BF8;
  if (!qword_27C852BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852BF8);
  }

  return result;
}

unint64_t sub_20DF9277C()
{
  result = qword_27C852C00;
  if (!qword_27C852C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C00);
  }

  return result;
}

uint64_t UtilityPeakPeriod.start.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UtilityPeakPeriod.peakPeriodLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_20DF928D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v5 = 1802396018;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x7472617473;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x6C6562616CLL;
  if (*a2 != 1)
  {
    v8 = 1802396018;
    v3 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7472617473;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E009984();
  }

  return v11 & 1;
}

uint64_t sub_20DF929B4()
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DF92A48(uint64_t a1)
{
  sub_20E009194();
}

uint64_t sub_20DF92AC8(uint64_t a1)
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

unint64_t sub_20DF92B58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20DF94684(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20DF92B88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v5 = 1802396018;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7472617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_20DF92BD8()
{
  v1 = 0x6C6562616CLL;
  if (*v0 != 1)
  {
    v1 = 1802396018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

unint64_t sub_20DF92C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DF94684(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DF92C4C(uint64_t a1)
{
  v2 = sub_20DF92F30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF92C88(uint64_t a1)
{
  v2 = sub_20DF92F30();

  return MEMORY[0x2821FE720](a1, v2);
}

void __swiftcall UtilityPeakPeriod.init(start:peakPeriodLabel:rank:)(HomeUtilityServices::UtilityPeakPeriod *__return_ptr retstr, Swift::String start, Swift::String peakPeriodLabel, Swift::Int rank)
{
  retstr->start = start;
  retstr->peakPeriodLabel = peakPeriodLabel;
  retstr->rank = rank;
}

BOOL static UtilityPeakPeriod.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_20E009984()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_20E009984()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t UtilityPeakPeriod.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852C08, &qword_20E00E060);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = v1[2];
  v10[1] = v1[3];
  v10[2] = v7;
  v10[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF92F30();
  sub_20E009A84();
  v13 = 0;
  v8 = v10[3];
  sub_20E009914();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = 1;
  sub_20E009914();
  v11 = 2;
  sub_20E009934();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20DF92F30()
{
  result = qword_27C852C10;
  if (!qword_27C852C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C10);
  }

  return result;
}

uint64_t UtilityPeakPeriod.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_20E009194();
  sub_20E009194();
  return MEMORY[0x20F32AC10](v2);
}

uint64_t UtilityPeakPeriod.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_20E009A34();
  sub_20E009194();
  sub_20E009194();
  MEMORY[0x20F32AC10](v1);
  return sub_20E009A54();
}

uint64_t UtilityPeakPeriod.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852C18, &qword_20E00E068);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF92F30();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = 0;
  v9 = sub_20E009894();
  v11 = v10;
  v19 = v9;
  v21 = 1;
  v17 = sub_20E009894();
  v18 = v12;
  v20 = 2;
  v13 = sub_20E0098B4();
  (*(v6 + 8))(v8, v5);
  v14 = v18;
  *a2 = v19;
  a2[1] = v11;
  a2[2] = v17;
  a2[3] = v14;
  a2[4] = v13;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_20DF932EC()
{
  v1 = *(v0 + 32);
  sub_20E009A34();
  sub_20E009194();
  sub_20E009194();
  MEMORY[0x20F32AC10](v1);
  return sub_20E009A54();
}

uint64_t sub_20DF9336C(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_20E009194();
  sub_20E009194();
  return MEMORY[0x20F32AC10](v2);
}

uint64_t sub_20DF933C0(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_20E009A34();
  sub_20E009194();
  sub_20E009194();
  MEMORY[0x20F32AC10](v2);
  return sub_20E009A54();
}

BOOL sub_20DF9343C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_20E009984()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_20E009984()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t RateMetaData.tariffProfileId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RateMetaData.tariffLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RateMetaData.tariffType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall RateMetaData.init(tariffProfileId:tariffLabel:tariffType:)(HomeUtilityServices::RateMetaData *__return_ptr retstr, Swift::String tariffProfileId, Swift::String tariffLabel, Swift::String tariffType)
{
  retstr->tariffProfileId = tariffProfileId;
  retstr->tariffLabel = tariffLabel;
  retstr->tariffType = tariffType;
}

uint64_t sub_20DF93578()
{
  v1 = 0x614C666669726174;
  if (*v0 != 1)
  {
    v1 = 0x7954666669726174;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7250666669726174;
  }
}

uint64_t sub_20DF935EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20DF946D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20DF93614(uint64_t a1)
{
  v2 = sub_20DF93850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF93650(uint64_t a1)
{
  v2 = sub_20DF93850();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RateMetaData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852C20, &qword_20E00E070);
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
  sub_20DF93850();
  sub_20E009A84();
  v14 = 0;
  v9 = v11[5];
  sub_20E009914();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_20E009914();
  v12 = 2;
  sub_20E009914();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20DF93850()
{
  result = qword_27C852C28;
  if (!qword_27C852C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C28);
  }

  return result;
}

uint64_t RateMetaData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852C30, &qword_20E00E078);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF93850();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v9 = sub_20E009894();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_20E009894();
  v21 = v12;
  v23 = 2;
  v13 = sub_20E009894();
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

HomeUtilityServices::UtilityTariffType_optional __swiftcall UtilityTariffType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E009844();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_20DF93BAC()
{
  result = qword_281123348;
  if (!qword_281123348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123348);
  }

  return result;
}

unint64_t sub_20DF93C10()
{
  result = qword_27C852C38;
  if (!qword_27C852C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C38);
  }

  return result;
}

uint64_t sub_20DF93C64()
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DF93D38(uint64_t a1)
{
  sub_20E009194();
}

uint64_t sub_20DF93DF8(uint64_t a1)
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

void sub_20DF93ED4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5590868;
  v5 = 0xE500000000000000;
  v6 = 0x4445584946;
  v7 = 0xE400000000000000;
  v8 = 1413565510;
  if (v2 != 3)
  {
    v8 = 0x524F505055534E55;
    v7 = 0xEB00000000444554;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x444552454954;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_20DF94018()
{
  result = qword_27C852C40;
  if (!qword_27C852C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852C48, &qword_20E00E2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C40);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19HomeUtilityServices12RateMetaDataVSg(uint64_t a1)
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

uint64_t sub_20DF940C8(uint64_t a1, int a2)
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

uint64_t sub_20DF94110(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20DF94188(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_20DF941D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_20DF9423C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_20DF94284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20DF94324()
{
  result = qword_27C852C50;
  if (!qword_27C852C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C50);
  }

  return result;
}

unint64_t sub_20DF9437C()
{
  result = qword_27C852C58;
  if (!qword_27C852C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C58);
  }

  return result;
}

unint64_t sub_20DF943D4()
{
  result = qword_27C852C60;
  if (!qword_27C852C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C60);
  }

  return result;
}

unint64_t sub_20DF9442C()
{
  result = qword_27C852C68;
  if (!qword_27C852C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C68);
  }

  return result;
}

unint64_t sub_20DF94484()
{
  result = qword_27C852C70;
  if (!qword_27C852C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C70);
  }

  return result;
}