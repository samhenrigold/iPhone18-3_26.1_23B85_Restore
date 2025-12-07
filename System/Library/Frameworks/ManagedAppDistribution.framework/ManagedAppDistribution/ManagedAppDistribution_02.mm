uint64_t sub_1D956BA88(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB066E8, &qword_1D95C4278);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D956B8A8();
  sub_1D95C05BC();
  sub_1D95C035C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D956BBC4()
{
  v1 = *v0;
  v2 = 0x746172616C636564;
  v3 = 0x6542726961706572;
  if (v1 != 5)
  {
    v3 = 0x654265766F6D6572;
  }

  v4 = 0x74736566696E616DLL;
  if (v1 != 3)
  {
    v4 = 0x426C6C6174736E69;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 != 1)
  {
    v5 = 0x656D6567616E616DLL;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1D956BCE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D956D49C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D956BD10(uint64_t a1)
{
  v2 = sub_1D956C0DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D956BD4C(uint64_t a1)
{
  v2 = sub_1D956C0DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedPackageDeclaration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06700, &qword_1D95C4288);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D956C0DC();
  sub_1D95C05BC();
  LOBYTE(v19) = 0;
  sub_1D95C038C();
  if (!v2)
  {
    LOBYTE(v19) = 1;
    sub_1D95C038C();
    LOBYTE(v19) = *(v3 + 32);
    v22 = 2;
    sub_1D956C130();
    sub_1D95C03CC();
    v9 = type metadata accessor for ManagedPackageDeclaration(0);
    LOBYTE(v19) = 3;
    sub_1D95BFBAC();
    sub_1D956C888(&qword_1ECB05E10, MEMORY[0x1E6968FB8]);
    sub_1D95C03CC();
    v10 = v3 + v9[8];
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    LOBYTE(v19) = *v10;
    *&v20 = v11;
    *(&v20 + 1) = v12;
    v22 = 4;
    sub_1D956C184();

    sub_1D95C03CC();

    v13 = (v3 + v9[9]);
    v14 = v13[3];
    v19 = *v13;
    v20 = *(v13 + 1);
    v21 = v14;
    v22 = 5;
    sub_1D956C1D8();

    sub_1D95C03CC();

    v15 = (v3 + v9[10]);
    v16 = v15[1];
    v19 = *v15;
    *&v20 = v16;
    v22 = 6;
    sub_1D956C22C();

    sub_1D95C03CC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D956C0DC()
{
  result = qword_1ECB06708;
  if (!qword_1ECB06708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06708);
  }

  return result;
}

unint64_t sub_1D956C130()
{
  result = qword_1ECB06710;
  if (!qword_1ECB06710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06710);
  }

  return result;
}

unint64_t sub_1D956C184()
{
  result = qword_1ECB06718;
  if (!qword_1ECB06718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06718);
  }

  return result;
}

unint64_t sub_1D956C1D8()
{
  result = qword_1ECB06720;
  if (!qword_1ECB06720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06720);
  }

  return result;
}

unint64_t sub_1D956C22C()
{
  result = qword_1ECB06728;
  if (!qword_1ECB06728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06728);
  }

  return result;
}

uint64_t ManagedPackageDeclaration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1D95BFBAC();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06730, &qword_1D95C4290);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ManagedPackageDeclaration(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v13);
  sub_1D956C0DC();
  v31 = v9;
  sub_1D95C059C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v32);
  }

  v14 = v6;
  v15 = v29;
  v16 = v30;
  v33[0] = 0;
  v17 = v31;
  *v12 = sub_1D95C02CC();
  *(v12 + 1) = v19;
  v25 = v19;
  v33[0] = 1;
  *(v12 + 2) = sub_1D95C02CC();
  *(v12 + 3) = v20;
  v34 = 2;
  sub_1D956C834();
  sub_1D95C030C();
  v26 = 0;
  v12[32] = v33[0];
  v33[0] = 3;
  sub_1D956C888(&qword_1ECB05E88, MEMORY[0x1E6968FD0]);
  v21 = v26;
  sub_1D95C030C();
  if (v21)
  {
    (*(v15 + 8))(v17, v16);
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    (*(v28 + 32))(&v12[v10[7]], v14, v4);
    v34 = 4;
    sub_1D956C8CC();
    sub_1D95C030C();
    v22 = &v12[v10[8]];
    *v22 = v33[0];
    *(v22 + 8) = *&v33[8];
    v34 = 5;
    sub_1D956C920();
    sub_1D95C030C();
    v23 = &v12[v10[9]];
    v24 = *&v33[16];
    *v23 = *v33;
    *(v23 + 1) = v24;
    v34 = 6;
    sub_1D956C974();
    sub_1D95C030C();
    (*(v15 + 8))(v31, v16);
    *&v12[v10[10]] = *v33;
    sub_1D956C9C8(v12, v27);
    __swift_destroy_boxed_opaque_existential_0(v32);
    return sub_1D956CA2C(v12);
  }
}

unint64_t sub_1D956C834()
{
  result = qword_1ECB06738;
  if (!qword_1ECB06738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06738);
  }

  return result;
}

uint64_t sub_1D956C888(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D95BFBAC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D956C8CC()
{
  result = qword_1ECB06740;
  if (!qword_1ECB06740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06740);
  }

  return result;
}

unint64_t sub_1D956C920()
{
  result = qword_1ECB06748;
  if (!qword_1ECB06748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06748);
  }

  return result;
}

unint64_t sub_1D956C974()
{
  result = qword_1ECB06750;
  if (!qword_1ECB06750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06750);
  }

  return result;
}

uint64_t sub_1D956C9C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedPackageDeclaration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D956CA2C(uint64_t a1)
{
  v2 = type metadata accessor for ManagedPackageDeclaration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D956CA8C()
{
  result = qword_1ECB06758;
  if (!qword_1ECB06758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06758);
  }

  return result;
}

uint64_t sub_1D956CB38(uint64_t a1)
{
  result = sub_1D95BFBAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t sub_1D956CBF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1D956CC50(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1D956CCD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1D956CD30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1D956CE18()
{
  result = qword_1ECB06770;
  if (!qword_1ECB06770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06770);
  }

  return result;
}

unint64_t sub_1D956CE70()
{
  result = qword_1ECB06778;
  if (!qword_1ECB06778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06778);
  }

  return result;
}

unint64_t sub_1D956CEC8()
{
  result = qword_1ECB06780;
  if (!qword_1ECB06780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06780);
  }

  return result;
}

unint64_t sub_1D956CF20()
{
  result = qword_1ECB06788;
  if (!qword_1ECB06788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06788);
  }

  return result;
}

unint64_t sub_1D956CF78()
{
  result = qword_1ECB06790;
  if (!qword_1ECB06790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06790);
  }

  return result;
}

unint64_t sub_1D956CFD0()
{
  result = qword_1ECB06798;
  if (!qword_1ECB06798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06798);
  }

  return result;
}

unint64_t sub_1D956D028()
{
  result = qword_1ECB067A0;
  if (!qword_1ECB067A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067A0);
  }

  return result;
}

unint64_t sub_1D956D080()
{
  result = qword_1ECB067A8;
  if (!qword_1ECB067A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067A8);
  }

  return result;
}

unint64_t sub_1D956D0D8()
{
  result = qword_1ECB067B0;
  if (!qword_1ECB067B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067B0);
  }

  return result;
}

unint64_t sub_1D956D130()
{
  result = qword_1ECB067B8;
  if (!qword_1ECB067B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067B8);
  }

  return result;
}

unint64_t sub_1D956D188()
{
  result = qword_1ECB067C0;
  if (!qword_1ECB067C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067C0);
  }

  return result;
}

unint64_t sub_1D956D1E0()
{
  result = qword_1ECB067C8;
  if (!qword_1ECB067C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067C8);
  }

  return result;
}

unint64_t sub_1D956D238()
{
  result = qword_1ECB067D0;
  if (!qword_1ECB067D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067D0);
  }

  return result;
}

unint64_t sub_1D956D290()
{
  result = qword_1ECB067D8;
  if (!qword_1ECB067D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067D8);
  }

  return result;
}

unint64_t sub_1D956D2E8()
{
  result = qword_1ECB067E0;
  if (!qword_1ECB067E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067E0);
  }

  return result;
}

unint64_t sub_1D956D340()
{
  result = qword_1ECB067E8;
  if (!qword_1ECB067E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067E8);
  }

  return result;
}

unint64_t sub_1D956D398()
{
  result = qword_1ECB067F0;
  if (!qword_1ECB067F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067F0);
  }

  return result;
}

unint64_t sub_1D956D3F0()
{
  result = qword_1ECB067F8;
  if (!qword_1ECB067F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB067F8);
  }

  return result;
}

unint64_t sub_1D956D448()
{
  result = qword_1ECB06800;
  if (!qword_1ECB06800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06800);
  }

  return result;
}

uint64_t sub_1D956D49C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746172616C636564 && a2 == 0xEE0079654B6E6F69;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D95D0210 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6567616E616DLL && a2 == 0xEF65706F6353746ELL || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xEB000000004C5255 || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x426C6C6174736E69 && a2 == 0xEF726F6976616865 || (sub_1D95C041C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6542726961706572 && a2 == 0xEE00726F69766168 || (sub_1D95C041C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x654265766F6D6572 && a2 == 0xEE00726F69766168)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D95C041C();

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

uint64_t AppLaunchRequest.target.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 16);
  return sub_1D955AFDC(v2, v3);
}

uint64_t sub_1D956D744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D956D7CC(uint64_t a1)
{
  v2 = sub_1D956DFC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D956D808(uint64_t a1)
{
  v2 = sub_1D956DFC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D956D844()
{
  if (*v0)
  {
    return 0x41646567616E616DLL;
  }

  else
  {
    return 7368801;
  }
}

uint64_t sub_1D956D87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x41646567616E616DLL && a2 == 0xEA00000000007070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D956D960(uint64_t a1)
{
  v2 = sub_1D956DF18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D956D99C(uint64_t a1)
{
  v2 = sub_1D956DF18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D956D9D8()
{
  if (*v0)
  {
    return 0x65706F6373;
  }

  else
  {
    return 0x746172616C636564;
  }
}

uint64_t sub_1D956DA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746172616C636564 && a2 == 0xED000044496E6F69;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D956DAFC(uint64_t a1)
{
  v2 = sub_1D956DF6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D956DB38(uint64_t a1)
{
  v2 = sub_1D956DF6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppLaunchRequest.Target.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06808, &qword_1D95C4CA0);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v21 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06810, &qword_1D95C4CA8);
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06818, &qword_1D95C4CB0);
  v8 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v21 - v9;
  v11 = *v1;
  v25 = v1[1];
  v26 = v11;
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D956DF18();
  sub_1D95C05BC();
  if (v12 < 0)
  {
    v15 = v21;
    v16 = v8;
    v33 = 1;
    sub_1D956DF6C();
    v17 = v28;
    sub_1D95C034C();
    v32 = 0;
    v18 = v22;
    v19 = v27;
    sub_1D95C038C();
    if (v19)
    {
      (*(v15 + 8))(v24, v18);
      return (*(v8 + 8))(v10, v17);
    }

    else
    {
      v31 = v12 & 1;
      v30 = 1;
      sub_1D9547DB0();
      v20 = v24;
      sub_1D95C03CC();
      (*(v15 + 8))(v20, v18);
      return (*(v16 + 8))(v10, v17);
    }
  }

  else
  {
    v29 = 0;
    sub_1D956DFC0();
    v13 = v28;
    sub_1D95C034C();
    sub_1D95C038C();
    (*(v23 + 8))(v7, v5);
    return (*(v8 + 8))(v10, v13);
  }
}

unint64_t sub_1D956DF18()
{
  result = qword_1ECB06820;
  if (!qword_1ECB06820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06820);
  }

  return result;
}

unint64_t sub_1D956DF6C()
{
  result = qword_1ECB06828;
  if (!qword_1ECB06828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06828);
  }

  return result;
}

unint64_t sub_1D956DFC0()
{
  result = qword_1ECB06830;
  if (!qword_1ECB06830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06830);
  }

  return result;
}

uint64_t AppLaunchRequest.Target.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06838, &qword_1D95C4CB8);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06840, &qword_1D95C4CC0);
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06848, &unk_1D95C4CC8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - v11;
  v13 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v13);
  sub_1D956DF18();
  v14 = v40;
  sub_1D95C059C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0(v41);
  }

  v40 = v10;
  v15 = v38;
  v16 = v39;
  v17 = sub_1D95C032C();
  v18 = (2 * *(v17 + 16)) | 1;
  v42 = v17;
  v43 = v17 + 32;
  v44 = 0;
  v45 = v18;
  v19 = sub_1D954A268();
  if (v19 == 2 || v44 != v45 >> 1)
  {
    v24 = sub_1D95C01FC();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250);
    *v26 = &type metadata for AppLaunchRequest.Target;
    sub_1D95C028C();
    sub_1D95C01EC();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    (*(v40 + 8))(v12, v9);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v41);
  }

  if (v19)
  {
    v47 = 1;
    sub_1D956DF6C();
    v20 = v5;
    sub_1D95C027C();
    v21 = v16;
    v47 = 0;
    v22 = sub_1D95C02CC();
    v23 = v40;
    v32 = v31;
    v36 = v22;
    v46 = 1;
    sub_1D9548104();
    sub_1D95C030C();
    (*(v37 + 8))(v20, v15);
    (*(v23 + 8))(v12, v9);
    swift_unknownObjectRelease();
    v34 = v47 | 0x80;
    v35 = v36;
  }

  else
  {
    v47 = 0;
    sub_1D956DFC0();
    v28 = v8;
    sub_1D95C027C();
    v21 = v16;
    v29 = sub_1D95C02CC();
    v30 = (v40 + 8);
    v35 = v29;
    v32 = v33;
    (*(v36 + 8))(v28, v6);
    (*v30)(v12, v9);
    swift_unknownObjectRelease();
    v34 = 0;
  }

  *v21 = v35;
  *(v21 + 8) = v32;
  *(v21 + 16) = v34;
  return __swift_destroy_boxed_opaque_existential_0(v41);
}

uint64_t AppLaunchRequest.init(declarationID:scope:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1 | 0x80;
  return result;
}

uint64_t AppLaunchRequest.launch()()
{
  *(v1 + 16) = *v0;
  *(v1 + 40) = *(v0 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D956E658, 0, 0);
}

uint64_t sub_1D956E658()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D9568BBC;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);

  return sub_1D954CAB0(1, v2, v3, v4, sub_1D956E754, 0);
}

void sub_1D956E754(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D95BFBBC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D95A3C64;
  v10[3] = &block_descriptor_3;
  v9 = _Block_copy(v10);

  [a1 handleLaunchAppRequest:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D956E844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D956E8C8(uint64_t a1)
{
  v2 = sub_1D956EC60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D956E904(uint64_t a1)
{
  v2 = sub_1D956EC60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppLaunchRequest.encode(to:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06850, &qword_1D95C4CE0);
  v3 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D955AFDC(v6, v7);
  sub_1D956EC60();
  sub_1D95C05BC();
  v12 = v6;
  v13 = v7;
  v14 = v8;
  sub_1D956ECB4();
  v9 = v11;
  sub_1D95C03CC();
  sub_1D955AFE4(v12, v13);
  return (*(v3 + 8))(v5, v9);
}

uint64_t AppLaunchRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06868, &qword_1D95C4CE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D956EC60();
  sub_1D95C059C();
  if (!v2)
  {
    sub_1D956ED08();
    sub_1D95C030C();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1D956EC60()
{
  result = qword_1ECB06858;
  if (!qword_1ECB06858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06858);
  }

  return result;
}

unint64_t sub_1D956ECB4()
{
  result = qword_1ECB06860;
  if (!qword_1ECB06860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06860);
  }

  return result;
}

unint64_t sub_1D956ED08()
{
  result = qword_1ECB06870;
  if (!qword_1ECB06870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06870);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D956ED8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D956EDDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_1D956EEA8()
{
  result = qword_1ECB06878;
  if (!qword_1ECB06878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06878);
  }

  return result;
}

unint64_t sub_1D956EF00()
{
  result = qword_1ECB06880;
  if (!qword_1ECB06880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06880);
  }

  return result;
}

unint64_t sub_1D956EF58()
{
  result = qword_1ECB06888;
  if (!qword_1ECB06888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06888);
  }

  return result;
}

unint64_t sub_1D956EFB0()
{
  result = qword_1ECB06890;
  if (!qword_1ECB06890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06890);
  }

  return result;
}

unint64_t sub_1D956F008()
{
  result = qword_1ECB06898;
  if (!qword_1ECB06898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06898);
  }

  return result;
}

unint64_t sub_1D956F060()
{
  result = qword_1ECB068A0;
  if (!qword_1ECB068A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068A0);
  }

  return result;
}

unint64_t sub_1D956F0B8()
{
  result = qword_1ECB068A8;
  if (!qword_1ECB068A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068A8);
  }

  return result;
}

unint64_t sub_1D956F110()
{
  result = qword_1ECB068B0;
  if (!qword_1ECB068B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068B0);
  }

  return result;
}

unint64_t sub_1D956F168()
{
  result = qword_1ECB068B8;
  if (!qword_1ECB068B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068B8);
  }

  return result;
}

unint64_t sub_1D956F1C0()
{
  result = qword_1ECB068C0;
  if (!qword_1ECB068C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068C0);
  }

  return result;
}

unint64_t sub_1D956F218()
{
  result = qword_1ECB068C8;
  if (!qword_1ECB068C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068C8);
  }

  return result;
}

unint64_t sub_1D956F270()
{
  result = qword_1ECB068D0;
  if (!qword_1ECB068D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068D0);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id BundleID.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id BundleID.init(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t BundleID.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue);

  return v1;
}

id sub_1D956F3E0(uint64_t a1)
{

  v1 = sub_1D95BFD8C();

  return v1;
}

uint64_t BundleID.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1D956F50C(a1, v7);
  if (!v8)
  {
    sub_1D953F434(v7);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue) == *&v6[OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue] && *(v1 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue + 8) == *&v6[OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue + 8])
  {

    v4 = 1;
  }

  else
  {
    v4 = sub_1D95C041C();
  }

  return v4 & 1;
}

uint64_t sub_1D956F50C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C20, &qword_1D95C1010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static BundleID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue) == *(a2 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue) && *(a1 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue + 8) == *(a2 + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue + 8))
  {
    return 1;
  }

  else
  {
    return sub_1D95C041C();
  }
}

id BundleID.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BundleID.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BundleID.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C05AC();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D95C045C();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

void *sub_1D956F838@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D956F910(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D956F864(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C05AC();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D95C045C();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

void *sub_1D956F910(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C058C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v12, v12[3]);
    v5 = sub_1D95C042C();
    v7 = v6;
    v8 = type metadata accessor for BundleID();
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue];
    *v10 = v5;
    v10[1] = v7;
    v11.receiver = v9;
    v11.super_class = v8;
    v3 = objc_msgSendSuper2(&v11, sel_init);
    __swift_destroy_boxed_opaque_existential_0(v12);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

const char *LogKey.Prefix.fallbackActivityName.getter()
{
  result = "App Review";
  switch(*v0)
  {
    case 1:
      result = "VPP";
      break;
    case 2:
      result = "Manifest";
      break;
    case 3:
      result = "DDM";
      break;
    case 4:
      result = "Automatic Update";
      break;
    case 5:
      result = "UPD";
      break;
    case 6:
      result = "Apple Distribution Package";
      break;
    case 7:
      result = "License";
      break;
    case 8:
      result = "PDS";
      break;
    case 9:
      result = "Bootstrap";
      break;
    case 0xA:
      result = "RSP";
      break;
    case 0xB:
      result = "RSD";
      break;
    case 0xC:
      result = "???";
      break;
    case 0xD:
      return result;
    case 0xE:
      result = "madctl";
      break;
    case 0xF:
      result = "Internal";
      break;
    case 0x10:
      result = "Migrator";
      break;
    case 0x11:
      result = "None";
      break;
    default:
      result = "General";
      break;
  }

  return result;
}

uint64_t LogKey.Prefix.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1D95C048C();

  v6 = 18;
  if (v4 < 0x12)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t LogKey.Prefix.rawValue.getter()
{
  result = 5129543;
  switch(*v0)
  {
    case 1:
      result = 5263446;
      break;
    case 2:
      result = 5128525;
      break;
    case 3:
      result = 5063748;
      break;
    case 4:
      result = 4280405;
      break;
    case 5:
      result = 4477013;
      break;
    case 6:
      result = 5260353;
      break;
    case 7:
      result = 4409676;
      break;
    case 8:
      result = 5456976;
      break;
    case 9:
      result = 5461058;
      break;
    case 0xA:
      result = 5264210;
      break;
    case 0xB:
      result = 4477778;
      break;
    case 0xC:
      result = 4144959;
      break;
    case 0xD:
      result = 5394497;
      break;
    case 0xE:
      result = 0x4C544344414DLL;
      break;
    case 0xF:
      result = 5525065;
      break;
    case 0x10:
      result = 4671821;
      break;
    case 0x11:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D956FD20()
{
  v0 = LogKey.Prefix.rawValue.getter();
  v2 = v1;
  if (v0 == LogKey.Prefix.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D95C041C();
  }

  return v5 & 1;
}

uint64_t sub_1D956FDBC()
{
  sub_1D95C051C();
  LogKey.Prefix.rawValue.getter();
  sub_1D95BFE1C();

  return sub_1D95C055C();
}

uint64_t sub_1D956FE24(uint64_t a1)
{
  LogKey.Prefix.rawValue.getter();
  sub_1D95BFE1C();
}

uint64_t sub_1D956FE88(uint64_t a1)
{
  sub_1D95C051C();
  LogKey.Prefix.rawValue.getter();
  sub_1D95BFE1C();

  return sub_1D95C055C();
}

uint64_t sub_1D956FEF8@<X0>(uint64_t *a1@<X8>)
{
  result = LogKey.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t LogKey.Representation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C058C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
    v5 = sub_1D95C042C();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v9);
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t LogKey.Representation.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C05AC();
  if (v3 == 1)
  {
  }

  else
  {
    LogKey.Prefix.rawValue.getter();
    v7 = HIDWORD(v2);
    sub_1D95701A0();
    v4 = sub_1D95BFE6C();
    MEMORY[0x1DA732490](v4);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1D95C045C();

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t LogKey.Representation.description.getter()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
  }

  else
  {
    v4 = LogKey.Prefix.rawValue.getter();
    sub_1D95701A0();
    v2 = sub_1D95BFE6C();
    MEMORY[0x1DA732490](v2);

    return v4;
  }

  return v1;
}

unint64_t sub_1D95701A0()
{
  result = qword_1EDCF9B00;
  if (!qword_1EDCF9B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9B00);
  }

  return result;
}

uint64_t sub_1D95701F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C058C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
    v5 = sub_1D95C042C();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v9);
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t LogKey.representation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation);
  v3 = *(v1 + OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation + 8);
  v4 = *(v1 + OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1D953FCA8(v2, v3, v4);
}

id LogKey.appending(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05FC0, &unk_1D95C5380);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D95C2A10;
  *(v2 + 32) = LogKey.description.getter();
  *(v2 + 40) = v3;

  sub_1D9570C6C(v4);
  v5 = v2;
  v6 = objc_allocWithZone(ObjectType);
  v13 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05DE0, &qword_1D95C12B0);
  sub_1D955F910();
  v7 = sub_1D95BFD4C();
  v9 = v8;

  v10 = &v6[OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation];
  *v10 = v7;
  *(v10 + 1) = v9;
  v10[16] = 1;
  v12.receiver = v6;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id LogKey.__allocating_init(strings:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05DE0, &qword_1D95C12B0);
  sub_1D955F910();
  v5 = sub_1D95BFD4C();
  v7 = v6;

  v8 = &v4[OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation];
  *v8 = v5;
  *(v8 + 1) = v7;
  v8[16] = 1;
  v10.receiver = v4;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, sel_init);
}

id LogKey.__allocating_init(prefix:)(unsigned __int8 *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  v8 = 0;
  MEMORY[0x1DA733220](&v8, 8);
  v5 = &v3[OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation];
  *v5 = v4 | (v8 << 32);
  *(v5 + 1) = 0;
  v5[16] = 0;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id LogKey.init(prefix:)(unsigned __int8 *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v8 = 0;
  MEMORY[0x1DA733220](&v8, 8);
  v5 = &v1[OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation];
  *v5 = v4 | (v8 << 32);
  *(v5 + 1) = 0;
  v5[16] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id LogKey.__allocating_init(string:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation];
  *v6 = a1;
  *(v6 + 1) = a2;
  v6[16] = 1;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id LogKey.init(string:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation];
  *v6 = a1;
  *(v6 + 1) = a2;
  v6[16] = 1;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id LogKey.init(strings:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05DE0, &qword_1D95C12B0);
  sub_1D955F910();
  v5 = sub_1D95BFD4C();
  v7 = v6;

  v8 = &v2[OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation];
  *v8 = v5;
  *(v8 + 1) = v7;
  v8[16] = 1;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void *LogKey.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C058C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v12, v12[3]);
    sub_1D9570D60();
    sub_1D95C044C();
    v8 = v11;
    v9 = &v3[OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation];
    *v9 = v10[1];
    LOBYTE(v9[1].receiver) = v8;
    __swift_destroy_boxed_opaque_existential_0(v12);
    v10[0].receiver = v3;
    v10[0].super_class = ObjectType;
    v6 = [(objc_super *)v10 init];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v6;
}

uint64_t LogKey.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C05AC();
  v2 = *(v1 + OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation + 16);
  v4 = *(v1 + OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation);
  v5 = *(v1 + OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation + 8);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1D953FCA8(v4, v5, v2);
  sub_1D9570DB4();
  sub_1D95C047C();
  sub_1D953FCF0(v4, v5, v2);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t sub_1D95709DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation);
  if (*(v0 + OBJC_IVAR____TtC22ManagedAppDistribution6LogKey_representation + 16) == 1)
  {
  }

  else
  {
    v4 = LogKey.Prefix.rawValue.getter();
    sub_1D95701A0();
    v2 = sub_1D95BFE6C();
    MEMORY[0x1DA732490](v2);

    return v4;
  }

  return v1;
}

id sub_1D9570AA4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1D95BFD8C();

  return v5;
}

id LogKey.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LogKey.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1D9570BF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = LogKey.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

char *sub_1D9570C6C(char *result)
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

  result = sub_1D9547324(result, v10, 1, v3);
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

unint64_t sub_1D9570D60()
{
  result = qword_1ECB068E8;
  if (!qword_1ECB068E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068E8);
  }

  return result;
}

unint64_t sub_1D9570DB4()
{
  result = qword_1ECB068F0;
  if (!qword_1ECB068F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068F0);
  }

  return result;
}

unint64_t sub_1D9570E0C()
{
  result = qword_1ECB068F8;
  if (!qword_1ECB068F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB068F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogKey.Prefix(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogKey.Prefix(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D957105C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9571098(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1D95710E0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D9571124()
{
  if (*v0)
  {
    return 0x656D75736572;
  }

  else
  {
    return 0x6573756170;
  }
}

uint64_t sub_1D9571158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6573756170 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D75736572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D957122C(uint64_t a1)
{
  v2 = sub_1D9571650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9571268(uint64_t a1)
{
  v2 = sub_1D9571650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95712A4(uint64_t a1)
{
  v2 = sub_1D95716F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95712E0(uint64_t a1)
{
  v2 = sub_1D95716F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D957131C(uint64_t a1)
{
  v2 = sub_1D95716A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9571358(uint64_t a1)
{
  v2 = sub_1D95716A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DDMRestoreControlRequest.RestoreState.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06900, &qword_1D95C55F0);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06908, &qword_1D95C55F8);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06910, &qword_1D95C5600);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9571650();
  sub_1D95C05BC();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1D95716A4();
    sub_1D95C034C();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1D95716F8();
    sub_1D95C034C();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_1D9571650()
{
  result = qword_1ECB06918;
  if (!qword_1ECB06918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06918);
  }

  return result;
}

unint64_t sub_1D95716A4()
{
  result = qword_1ECB06920;
  if (!qword_1ECB06920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06920);
  }

  return result;
}

unint64_t sub_1D95716F8()
{
  result = qword_1ECB06928;
  if (!qword_1ECB06928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06928);
  }

  return result;
}

uint64_t DDMRestoreControlRequest.RestoreState.hashValue.getter(char a1)
{
  sub_1D95C051C();
  MEMORY[0x1DA732B80](a1 & 1);
  return sub_1D95C055C();
}

uint64_t sub_1D95717D8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D9574BB0(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1D9571864()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1D955BACC;

  return sub_1D954D4B0(1, v1, sub_1D9571964, 0);
}

void DDMRestoreControlRequest.send(to:)()
{
  v1 = *v0;
  if (qword_1EDCFA278 != -1)
  {
    v2 = *v0;
    swift_once();
    v1 = v2;
  }

  sub_1D9571EE8(1, v1, sub_1D95719F8, 0);
}

void sub_1D9571A04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1D95BFBBC();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D95A3C64;
  v12[3] = a6;
  v11 = _Block_copy(v12);

  [a1 setRestoreControl:v10 reply:v11];
  _Block_release(v11);
}

uint64_t sub_1D9571AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5365726F74736572 && a2 == 0xEC00000065746174)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9571B88(uint64_t a1)
{
  v2 = sub_1D957506C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9571BC4(uint64_t a1)
{
  v2 = sub_1D957506C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DDMRestoreControlRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06930, &qword_1D95C5610);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957506C();
  sub_1D95C05BC();
  v10 = v7;
  sub_1D95750C0();
  sub_1D95C03CC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t DDMRestoreControlRequest.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06948, &qword_1D95C5618);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957506C();
  sub_1D95C059C();
  if (!v2)
  {
    sub_1D9575114();
    sub_1D95C030C();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void sub_1D9571EE8(uint64_t a1, char a2, void (*a3)(id, uint64_t, unint64_t, uint64_t (*)(), uint64_t), uint64_t a4)
{
  v54 = a4;
  v55 = a3;
  v7 = *v4;
  v52 = a1;
  v53 = v7;
  v8 = sub_1D95BFA3C();
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069B0, &unk_1D95C5B10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = -1;
  v12 = v4[2];
  aBlock[4] = sub_1D9575770;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_47;
  v13 = _Block_copy(aBlock);

  v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(v58, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (!swift_dynamicCast())
  {
    sub_1D955A9C4();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  v49 = v10;
  v50 = v8;
  v48 = v4;
  v15 = v59;
  sub_1D95BFADC();
  swift_allocObject();
  sub_1D95BFACC();
  v16 = a2 & 1;
  LOBYTE(aBlock[0]) = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06150, &qword_1D95C24B0);
  sub_1D95756E0(&qword_1ECB06158, &qword_1ECB06150, &qword_1D95C24B0);
  v17 = sub_1D95BFABC();
  if (v5)
  {

    swift_unknownObjectRelease();
LABEL_5:

    __swift_destroy_boxed_opaque_existential_0(v58);
    return;
  }

  v20 = v17;
  v21 = v18;
  v45 = v16;

  v22 = swift_allocObject();
  v23 = v53;
  *(v22 + 16) = v11;
  *(v22 + 24) = v23;

  v53 = v15;
  v46 = v20;
  v47 = v21;
  v24 = v21;
  v25 = v54;
  v55(v15, v20, v24, sub_1D9575750, v22);

  swift_beginAccess();
  v26 = *(v11 + 24);
  if (v26 == 255)
  {
    sub_1D955A9C4();
    v27 = swift_allocError();
    *v30 = 0;
    swift_willThrow();
    v29 = v49;
    v28 = v50;
  }

  else
  {
    v27 = *(v11 + 16);
    v29 = v49;
    v28 = v50;
    if ((v26 & 1) == 0)
    {
      swift_unknownObjectRelease();
      sub_1D955AA18(v46, v47);

      __swift_destroy_boxed_opaque_existential_0(v58);
      return;
    }

    v59 = *(v11 + 16);
    sub_1D953C470(v27, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    swift_willThrowTypedImpl();
  }

  v31 = v27;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v32 = sub_1D95BFA7C();

  (*(v51 + 8))(v29, v28);
  v33 = v52;
  if ((v32 & 1) != 0 && v52)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v34 = sub_1D95BFC8C();
    __swift_project_value_buffer(v34, qword_1EDCFA2D0);
    v35 = sub_1D95BFC6C();
    v36 = sub_1D95C009C();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v45;
    if (v37)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D953A000, v35, v36, "Connection interrupted, retrying request", v39, 2u);
      MEMORY[0x1DA733200](v39, -1, -1);
    }

    sub_1D9571EE8(v33 - 1, v38, v55, v25);
    __swift_destroy_boxed_opaque_existential_0(v58);
    swift_unknownObjectRelease();

    sub_1D955AA18(v46, v47);
  }

  else
  {
    v59 = v27;
    v40 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    if (!swift_dynamicCast())
    {

      sub_1D955A9C4();
      swift_allocError();
      *v43 = 0;
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_1D955AA18(v46, v47);

      goto LABEL_5;
    }

    v41 = v56;
    sub_1D955A9C4();
    swift_allocError();
    *v42 = v41;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1D955AA18(v46, v47);

    __swift_destroy_boxed_opaque_existential_0(v58);
  }
}

void *sub_1D95725B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void, void, void), void *a5)
{
  v51 = a4;
  v52 = a2;
  v9 = *v5;
  v49 = a1;
  v50 = v9;
  v10 = sub_1D95BFA3C();
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v47 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069C8, &qword_1D95C5B60);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = -1;
  v13 = v5[2];
  v58 = sub_1D9575770;
  v59 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1D9589AB4;
  v57 = &block_descriptor_42;
  v14 = _Block_copy(&aBlock);

  v15 = [v13 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(v60, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (!swift_dynamicCast())
  {
    sub_1D955A9C4();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
LABEL_5:

    __swift_destroy_boxed_opaque_existential_0(v60);
    return a5;
  }

  v45 = v10;
  v46 = a5;
  v44[1] = v5;
  v16 = v61;
  sub_1D95BFADC();
  swift_allocObject();
  sub_1D95BFACC();
  aBlock = v52;
  v55 = a3;

  a5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06130, &qword_1D95C2490);
  sub_1D95756E0(&qword_1ECB06138, &qword_1ECB06130, &qword_1D95C2490);
  v17 = sub_1D95BFABC();
  if (v6)
  {

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(v60);

    return a5;
  }

  v21 = v17;
  v22 = v18;
  v44[0] = a3;

  v23 = swift_allocObject();
  v24 = v50;
  *(v23 + 16) = v12;
  *(v23 + 24) = v24;

  v50 = v21;
  v25 = v21;
  v26 = v51;
  v51(v16, v25, v22, sub_1D95756A4, v23);

  swift_beginAccess();
  v27 = *(v12 + 24);
  if (v27 == 255)
  {
    sub_1D955A9C4();
    a5 = swift_allocError();
    *v28 = 0;
    swift_willThrow();
  }

  else
  {
    a5 = *(v12 + 16);
    if ((v27 & 1) == 0)
    {

      swift_unknownObjectRelease();
      sub_1D955AA18(v50, v22);

      __swift_destroy_boxed_opaque_existential_0(v60);
      return a5;
    }

    v61 = *(v12 + 16);
    sub_1D95756D4(a5, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    swift_willThrowTypedImpl();
  }

  v29 = a5;
  v30 = v47;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v31 = v45;
  v32 = sub_1D95BFA7C();

  (*(v48 + 8))(v30, v31);
  if ((v32 & 1) == 0 || !v49)
  {
    v61 = a5;
    v40 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    if (swift_dynamicCast())
    {

      v41 = v53;
      sub_1D955A9C4();
      swift_allocError();
      *v42 = v41;
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_1D955AA18(v50, v22);

      __swift_destroy_boxed_opaque_existential_0(v60);

      return a5;
    }

    sub_1D955A9C4();
    swift_allocError();
    *v43 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1D955AA18(v50, v22);

    goto LABEL_5;
  }

  v48 = v22;

  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v33 = sub_1D95BFC8C();
  __swift_project_value_buffer(v33, qword_1EDCFA2D0);
  v34 = sub_1D95BFC6C();
  v35 = sub_1D95C009C();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v46;
  v38 = v44[0];
  if (v36)
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1D953A000, v34, v35, "Connection interrupted, retrying request", v39, 2u);
    MEMORY[0x1DA733200](v39, -1, -1);
  }

  a5 = sub_1D95725B8(v49 - 1, v52, v38, v26, v37);
  __swift_destroy_boxed_opaque_existential_0(v60);
  swift_unknownObjectRelease();

  sub_1D955AA18(v50, v48);
  return a5;
}

void sub_1D9572CAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void, void, void), uint64_t a5)
{
  v57 = a4;
  v9 = *v5;
  v55 = a1;
  v56 = v9;
  v10 = sub_1D95BFA3C();
  v54 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069B0, &unk_1D95C5B10);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = -1;
  v13 = v5[2];
  v64 = sub_1D9575770;
  v65 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v61 = 1107296256;
  v62 = sub_1D9589AB4;
  v63 = &block_descriptor_37;
  v14 = _Block_copy(&aBlock);

  v15 = [v13 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(v66, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (!swift_dynamicCast())
  {
    sub_1D955A9C4();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  v51 = v10;
  v52 = a5;
  v50 = v5;
  v16 = v67;
  sub_1D95BFADC();
  swift_allocObject();
  sub_1D95BFACC();
  aBlock = a2;
  v61 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06110, &qword_1D95C2478);
  sub_1D95756E0(&qword_1ECB06118, &qword_1ECB06110, &qword_1D95C2478);
  v17 = v58;
  v18 = sub_1D95BFABC();
  if (v17)
  {

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(v66);

    return;
  }

  v21 = v19;
  v47 = a2;
  v22 = v18;

  v48 = a3;

  v23 = swift_allocObject();
  v24 = v56;
  *(v23 + 16) = v12;
  *(v23 + 24) = v24;

  v58 = v16;
  v49 = v22;
  v56 = v21;
  v25 = v21;
  v26 = v52;
  v27 = v57;
  v57(v16, v22, v25, sub_1D9575750, v23);

  swift_beginAccess();
  v28 = *(v12 + 24);
  if (v28 == 255)
  {
    sub_1D955A9C4();
    v29 = swift_allocError();
    *v31 = 0;
    swift_willThrow();
    v30 = v51;
  }

  else
  {
    v29 = *(v12 + 16);
    v30 = v51;
    if ((v28 & 1) == 0)
    {
      swift_unknownObjectRelease();
      sub_1D955AA18(v49, v56);

      __swift_destroy_boxed_opaque_existential_0(v66);
      return;
    }

    v67 = *(v12 + 16);
    sub_1D953C470(v29, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    swift_willThrowTypedImpl();
  }

  v32 = v29;
  v33 = v53;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v34 = sub_1D95BFA7C();

  (*(v54 + 8))(v33, v30);
  v35 = v48;
  if ((v34 & 1) == 0 || !v55)
  {
    v67 = v29;
    v43 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    if (swift_dynamicCast())
    {

      v44 = v59;
      sub_1D955A9C4();
      swift_allocError();
      *v45 = v44;
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_1D955AA18(v49, v56);

      __swift_destroy_boxed_opaque_existential_0(v66);

      return;
    }

    sub_1D955A9C4();
    swift_allocError();
    *v46 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1D955AA18(v49, v56);

LABEL_5:

    __swift_destroy_boxed_opaque_existential_0(v66);
    return;
  }

  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v36 = sub_1D95BFC8C();
  __swift_project_value_buffer(v36, qword_1EDCFA2D0);
  v37 = sub_1D95BFC6C();
  v38 = sub_1D95C009C();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v47;
  if (v39)
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1D953A000, v37, v38, "Connection interrupted, retrying request", v41, 2u);
    v42 = v41;
    v35 = v48;
    MEMORY[0x1DA733200](v42, -1, -1);
  }

  sub_1D9572CAC(v55 - 1, v40, v35, v27, v26);
  __swift_destroy_boxed_opaque_existential_0(v66);
  swift_unknownObjectRelease();

  sub_1D955AA18(v49, v56);
}

void *sub_1D95733E8(uint64_t a1, char a2, void (*a3)(void (**)(unint64_t, uint64_t), uint64_t, unint64_t, uint64_t (*)(), uint64_t), void *a4)
{
  v46 = a1;
  v47 = *v4;
  v48 = a3;
  v8 = sub_1D95BFA3C();
  v45 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069B8, &qword_1D95C5B38);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = v4[2];
  aBlock[4] = sub_1D9575770;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_27;
  v12 = _Block_copy(aBlock);

  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v12);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(v51, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (!swift_dynamicCast())
  {
    sub_1D955A9C4();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  v42 = v8;
  v43 = a4;
  v41[1] = v4;
  v14 = v52;
  sub_1D95BFADC();
  swift_allocObject();
  sub_1D95BFACC();
  LOBYTE(aBlock[0]) = a2 & 1;
  a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06058, &qword_1D95C5B40);
  sub_1D95756E0(&qword_1EDCFA1B0, &qword_1ECB06058, &qword_1D95C5B40);
  v15 = sub_1D95BFABC();
  if (v5)
  {

    swift_unknownObjectRelease();
LABEL_5:

    __swift_destroy_boxed_opaque_existential_0(v51);
    return a4;
  }

  v19 = v15;
  v20 = v16;

  v21 = swift_allocObject();
  v22 = v47;
  *(v21 + 16) = v10;
  *(v21 + 24) = v22;

  v47 = v19;
  v48(v14, v19, v20, sub_1D9575644, v21);

  swift_beginAccess();
  v23 = *(v10 + 24);
  v24 = v14;
  if (v23 == 255)
  {
    sub_1D955A9C4();
    a4 = swift_allocError();
    *v26 = 0;
    swift_willThrow();
    v25 = v42;
  }

  else
  {
    a4 = *(v10 + 16);
    v25 = v42;
    if ((v23 & 1) == 0)
    {

      swift_unknownObjectRelease();
      sub_1D955AA18(v47, v20);

      __swift_destroy_boxed_opaque_existential_0(v51);
      return a4;
    }

    v52 = *(v10 + 16);
    sub_1D95756D4(a4, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    swift_willThrowTypedImpl();
  }

  v27 = a4;
  v28 = v44;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v29 = sub_1D95BFA7C();

  v45[1](v28, v25);
  v30 = v46;
  if ((v29 & 1) == 0 || !v46)
  {
    v52 = a4;
    v37 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    if (swift_dynamicCast())
    {

      v38 = v49;
      sub_1D955A9C4();
      swift_allocError();
      *v39 = v38;
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_1D955AA18(v47, v20);

      __swift_destroy_boxed_opaque_existential_0(v51);

      return a4;
    }

    sub_1D955A9C4();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1D955AA18(v47, v20);

    goto LABEL_5;
  }

  v44 = v20;
  v45 = v24;

  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v31 = sub_1D95BFC8C();
  __swift_project_value_buffer(v31, qword_1EDCFA2D0);
  v32 = sub_1D95BFC6C();
  v33 = sub_1D95C009C();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v43;
  if (v34)
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1D953A000, v32, v33, "Connection interrupted, retrying request", v36, 2u);
    MEMORY[0x1DA733200](v36, -1, -1);
  }

  a4 = sub_1D95733E8(v30 - 1, a2 & 1, v48, v35);
  __swift_destroy_boxed_opaque_existential_0(v51);
  swift_unknownObjectRelease();

  sub_1D955AA18(v47, v44);
  return a4;
}

void *sub_1D9573AC8(uint64_t a1, uint64_t a2, void (*a3)(void, void, void, void, void), void *a4)
{
  v46 = a1;
  v47 = *v4;
  v48 = a3;
  v8 = sub_1D95BFA3C();
  v45 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069C0, &qword_1D95C5B48);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = v4[2];
  aBlock[4] = sub_1D9575770;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_32;
  v12 = _Block_copy(aBlock);

  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v12);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(v51, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (!swift_dynamicCast())
  {
    sub_1D955A9C4();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
LABEL_5:

    __swift_destroy_boxed_opaque_existential_0(v51);
    return a4;
  }

  v42 = v8;
  v43 = a4;
  v41 = v4;
  v14 = v52;
  sub_1D95BFADC();
  swift_allocObject();
  sub_1D95BFACC();
  aBlock[0] = a2;

  a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06020, &unk_1D95C5B50);
  sub_1D95756E0(&qword_1EDCFA1C0, &qword_1ECB06020, &unk_1D95C5B50);
  v15 = sub_1D95BFABC();
  if (v5)
  {

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(v51);

    return a4;
  }

  v19 = v15;
  v20 = v16;

  v21 = swift_allocObject();
  v22 = v47;
  *(v21 + 16) = v10;
  *(v21 + 24) = v22;

  v40 = v19;
  v47 = v20;
  v23 = v20;
  v24 = v48;
  v48(v14, v19, v23, sub_1D9575674, v21);

  swift_beginAccess();
  v25 = *(v10 + 24);
  if (v25 == 255)
  {
    sub_1D955A9C4();
    a4 = swift_allocError();
    *v27 = 0;
    swift_willThrow();
    v26 = v42;
  }

  else
  {
    a4 = *(v10 + 16);
    v26 = v42;
    if ((v25 & 1) == 0)
    {
      swift_unknownObjectRelease();
      sub_1D955AA18(v40, v47);

      __swift_destroy_boxed_opaque_existential_0(v51);
      return a4;
    }

    v52 = *(v10 + 16);
    sub_1D953C470(a4, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    swift_willThrowTypedImpl();
  }

  v28 = a4;
  v29 = v44;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v30 = sub_1D95BFA7C();

  (*(v45 + 8))(v29, v26);
  if ((v30 & 1) == 0 || !v46)
  {
    v52 = a4;
    v35 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    if (swift_dynamicCast())
    {

      v36 = v49;
      sub_1D955A9C4();
      swift_allocError();
      *v37 = v36;
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_1D955AA18(v40, v47);

      __swift_destroy_boxed_opaque_existential_0(v51);

      return a4;
    }

    sub_1D955A9C4();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1D955AA18(v40, v47);

    goto LABEL_5;
  }

  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v31 = sub_1D95BFC8C();
  __swift_project_value_buffer(v31, qword_1EDCFA2D0);
  v32 = sub_1D95BFC6C();
  v33 = sub_1D95C009C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1D953A000, v32, v33, "Connection interrupted, retrying request", v34, 2u);
    MEMORY[0x1DA733200](v34, -1, -1);
  }

  a4 = sub_1D9573AC8(v46 - 1, a2, v24, v43);
  __swift_destroy_boxed_opaque_existential_0(v51);
  swift_unknownObjectRelease();

  sub_1D955AA18(v40, v47);
  return a4;
}

void sub_1D95741A4(uint64_t a1, uint64_t a2, void (*a3)(void, void, void, void, void), uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v7 = *v4;
  v51 = a1;
  v52 = v7;
  v8 = sub_1D95BFA3C();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06070, &unk_1D95C23C0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069B0, &unk_1D95C5B10);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = -1;
  v14 = v4[2];
  aBlock[4] = sub_1D9575590;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_4;
  v15 = _Block_copy(aBlock);

  v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(v57, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (!swift_dynamicCast())
  {
    sub_1D955A9C4();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  v47 = v4;
  v17 = v58;
  sub_1D95BFADC();
  swift_allocObject();
  sub_1D95BFACC();
  sub_1D95755C4(a2, v12);
  sub_1D95756E0(&qword_1ECB06078, &qword_1ECB06070, &unk_1D95C23C0);
  v18 = sub_1D95BFABC();
  if (v5)
  {

    swift_unknownObjectRelease();

    sub_1D9547EAC(v12, &qword_1ECB06070, &unk_1D95C23C0);
LABEL_6:
    __swift_destroy_boxed_opaque_existential_0(v57);
    return;
  }

  v21 = v19;
  v22 = a2;
  v23 = v18;
  sub_1D9547EAC(v12, &qword_1ECB06070, &unk_1D95C23C0);

  v24 = v17;
  v25 = swift_allocObject();
  v26 = v52;
  *(v25 + 16) = v13;
  *(v25 + 24) = v26;

  v52 = v24;
  v45 = v23;
  v46 = v21;
  v27 = v21;
  v29 = v53;
  v28 = v54;
  v53(v24, v23, v27, sub_1D9575628, v25);

  swift_beginAccess();
  v30 = *(v13 + 24);
  if (v30 == 255)
  {
    sub_1D955A9C4();
    v31 = swift_allocError();
    *v32 = 0;
    swift_willThrow();
  }

  else
  {
    v31 = *(v13 + 16);
    if ((v30 & 1) == 0)
    {
      swift_unknownObjectRelease();
      sub_1D955AA18(v45, v46);

      __swift_destroy_boxed_opaque_existential_0(v57);
      return;
    }

    v58 = *(v13 + 16);
    sub_1D953C470(v31, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    swift_willThrowTypedImpl();
  }

  v33 = v31;
  v34 = v48;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v35 = v50;
  v36 = sub_1D95BFA7C();

  (*(v49 + 8))(v34, v35);
  if ((v36 & 1) == 0 || !v51)
  {
    v58 = v31;
    v41 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    if (swift_dynamicCast())
    {

      v42 = v55;
      sub_1D955A9C4();
      swift_allocError();
      *v43 = v42;
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_1D955AA18(v45, v46);

      __swift_destroy_boxed_opaque_existential_0(v57);

      return;
    }

    sub_1D955A9C4();
    swift_allocError();
    *v44 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1D955AA18(v45, v46);

LABEL_5:

    goto LABEL_6;
  }

  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v37 = sub_1D95BFC8C();
  __swift_project_value_buffer(v37, qword_1EDCFA2D0);
  v38 = sub_1D95BFC6C();
  v39 = sub_1D95C009C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1D953A000, v38, v39, "Connection interrupted, retrying request", v40, 2u);
    MEMORY[0x1DA733200](v40, -1, -1);
  }

  sub_1D95741A4(v51 - 1, v22, v29, v28);
  __swift_destroy_boxed_opaque_existential_0(v57);
  swift_unknownObjectRelease();

  sub_1D955AA18(v45, v46);
}

id sub_1D95748E8(void *a1, uint64_t a2)
{
  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D95BFC8C();
  __swift_project_value_buffer(v4, qword_1EDCFA2D0);
  v5 = a1;
  v6 = sub_1D95BFC6C();
  v7 = sub_1D95C009C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D953A000, v6, v7, "Error fetching synchronous remote object proxy: %{public}@", v8, 0xCu);
    sub_1D9547EAC(v9, &qword_1ECB06050, &qword_1D95C5B30);
    MEMORY[0x1DA733200](v9, -1, -1);
    MEMORY[0x1DA733200](v8, -1, -1);
  }

  result = swift_beginAccess();
  if (*(a2 + 24) == 255)
  {
    *(a2 + 16) = a1;
    *(a2 + 24) = 1;
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9574A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t))
{
  a5(&v11, a1, a2, a3, a4);
  v6 = v11;
  v7 = v12;
  if (v12 == 1)
  {
    sub_1D955A9C4();
    v8 = swift_allocError();
    *v9 = v6;
    v6 = v8;
  }

  result = swift_beginAccess();
  if (*(a3 + 24) == 255)
  {
    *(a3 + 16) = v6;
    *(a3 + 24) = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9574B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D9559F58(&v9);
  v4 = v9;
  v5 = v10;
  if (v10)
  {
    sub_1D955A9C4();
    v6 = swift_allocError();
    *v7 = v4;
  }

  else
  {
    v6 = v9 & 1;
  }

  result = swift_beginAccess();
  if (*(a3 + 24) == 255)
  {
    *(a3 + 16) = v6;
    *(a3 + 24) = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9574BB0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069D0, &qword_1D95C5B68);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069D8, &qword_1D95C5B70);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069E0, &qword_1D95C5B78);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9571650();
  v11 = v26;
  sub_1D95C059C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1D95C032C();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1D954A268();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_1D95C01FC();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250);
    *v19 = &type metadata for DDMRestoreControlRequest.RestoreState;
    sub_1D95C028C();
    sub_1D95C01EC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1D95716A4();
    sub_1D95C027C();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1D95716F8();
    sub_1D95C027C();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v31 & 1;
}

unint64_t sub_1D957506C()
{
  result = qword_1ECB06938;
  if (!qword_1ECB06938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06938);
  }

  return result;
}

unint64_t sub_1D95750C0()
{
  result = qword_1ECB06940;
  if (!qword_1ECB06940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06940);
  }

  return result;
}

unint64_t sub_1D9575114()
{
  result = qword_1ECB06950;
  if (!qword_1ECB06950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06950);
  }

  return result;
}

unint64_t sub_1D957516C()
{
  result = qword_1ECB06958;
  if (!qword_1ECB06958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06958);
  }

  return result;
}

unint64_t sub_1D9575224()
{
  result = qword_1ECB06960;
  if (!qword_1ECB06960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06960);
  }

  return result;
}

unint64_t sub_1D957527C()
{
  result = qword_1ECB06968;
  if (!qword_1ECB06968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06968);
  }

  return result;
}

unint64_t sub_1D95752D4()
{
  result = qword_1ECB06970;
  if (!qword_1ECB06970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06970);
  }

  return result;
}

unint64_t sub_1D957532C()
{
  result = qword_1ECB06978;
  if (!qword_1ECB06978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06978);
  }

  return result;
}

unint64_t sub_1D9575384()
{
  result = qword_1ECB06980;
  if (!qword_1ECB06980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06980);
  }

  return result;
}

unint64_t sub_1D95753DC()
{
  result = qword_1ECB06988;
  if (!qword_1ECB06988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06988);
  }

  return result;
}

unint64_t sub_1D9575434()
{
  result = qword_1ECB06990;
  if (!qword_1ECB06990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06990);
  }

  return result;
}

unint64_t sub_1D957548C()
{
  result = qword_1ECB06998;
  if (!qword_1ECB06998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06998);
  }

  return result;
}

unint64_t sub_1D95754E4()
{
  result = qword_1ECB069A0;
  if (!qword_1ECB069A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB069A0);
  }

  return result;
}

unint64_t sub_1D957553C()
{
  result = qword_1ECB069A8;
  if (!qword_1ECB069A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB069A8);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D95755C4(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for DDMAddOrUpdateManagedAppRequest(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

id sub_1D95756D4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1D95756E0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D95757E0()
{
  v1 = v0[2];
  v3 = *v1;
  v2 = v1[1];
  v0[3] = v2;
  v4 = *(v1 + *(type metadata accessor for ManagedApp(0) + 124));
  v5 = qword_1EDCFA278;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_1D955FDAC;

  return sub_1D954CAB0(1, v3, v2, *&v4 | 0xFFFFFF80, sub_1D956E754, 0);
}

uint64_t ManagedApp.state.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069E8, &qword_1D95C5B90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069F0, &qword_1D95CD1D0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21[-v11];
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8650], v2);
  sub_1D95BFF9C();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 16))(v10, v12, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB069F8, &qword_1D95C5B98);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + *(*v13 + 88), v10, v6);
  v15 = *(v1 + 16);
  v14 = *(v1 + 24);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  *(v16 + 32) = v14;
  *(v16 + 40) = 1;

  v17 = sub_1D95BFFAC();
  if (qword_1EDCFA1A0 != -1)
  {
    v17 = swift_once();
  }

  v18 = *(qword_1EDCFA1A8 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  MEMORY[0x1EEE9AC00](v17);
  *&v21[-48] = v15;
  *&v21[-40] = v14;
  v21[-32] = 1;
  *&v21[-24] = v13;
  *&v21[-16] = v19;
  os_unfair_lock_lock(v18 + 26);
  sub_1D9575D50(&v18[4]);
  os_unfair_lock_unlock(v18 + 26);

  return (*(v7 + 8))(v12, v6);
}

void sub_1D9575C64(uint64_t a1)
{
  if (qword_1EDCFA1A0 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(qword_1EDCFA1A8 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v1 + 26);
  sub_1D9575D7C(&v1[4]);
  os_unfair_lock_unlock(v1 + 26);
}

uint64_t sub_1D9575DD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64657070617277 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D95C041C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D9575E4C(void *a1, void *a2)
{
  v3 = a2[3];
  v9 = a2[2];
  type metadata accessor for XPCValue.CodingKeys(255, v9, v3, a2[4]);
  swift_getWitnessTable();
  v4 = sub_1D95C03EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C05BC();
  sub_1D95C03CC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D9575FC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v31 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCValue.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable();
  v34 = sub_1D95C033C();
  v29 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v14 = &v25 - v13;
  v30 = a2;
  v32 = a3;
  v15 = type metadata accessor for XPCValue(0, a2, a3, a4);
  v27 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v18 = v35;
  sub_1D95C059C();
  if (!v18)
  {
    v26 = v17;
    v35 = v15;
    v20 = v29;
    v19 = v30;
    v21 = v31;
    v22 = v33;
    sub_1D95C030C();
    (*(v20 + 8))(v14, v34);
    v23 = v26;
    (*(v21 + 32))(v26, v22, v19);
    (*(v27 + 32))(v28, v23, v35);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D95762C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9575DD4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D95762F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D955CF10();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D9576330(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9576384(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t encodeXPCValues<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for XPCValue(0, v7, v8, v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  sub_1D95BFADC();
  swift_allocObject();
  sub_1D95BFACC();
  (*(v4 + 16))(v6, a1, a2);
  (*(v4 + 32))(v13, v6, a2);
  swift_getWitnessTable();
  v14 = sub_1D95BFABC();
  (*(v11 + 8))(v13, v10);

  return v14;
}

uint64_t decodeXPCValues<A>(from:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = type metadata accessor for XPCValue(0, a3, a4, a5);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1D95BFAAC();
  swift_allocObject();
  sub_1D95BFA9C();
  swift_getWitnessTable();
  sub_1D95BFA8C();

  if (!v6)
  {
    return (*(*(a3 - 8) + 32))(a6, v11, a3);
  }

  return result;
}

uint64_t sub_1D9576774(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D95767E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1D9576924(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t ManagedPackage.declarationIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ManagedPackage.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ManagedPackage.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ManagedPackage.packageID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1D9576C68(uint64_t a1)
{
  v2 = sub_1D957708C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9576CA4(uint64_t a1)
{
  v2 = sub_1D957708C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9576CE0(uint64_t a1)
{
  v2 = sub_1D9577134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9576D1C(uint64_t a1)
{
  v2 = sub_1D9577134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9576D58(uint64_t a1)
{
  v2 = sub_1D95770E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9576D94(uint64_t a1)
{
  v2 = sub_1D95770E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedPackage.ManagementScope.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06A00, &qword_1D95C5D40);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06A08, &qword_1D95C5D48);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06A10, &qword_1D95C5D50);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957708C();
  sub_1D95C05BC();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1D95770E0();
    sub_1D95C034C();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1D9577134();
    sub_1D95C034C();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_1D957708C()
{
  result = qword_1ECB06A18;
  if (!qword_1ECB06A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A18);
  }

  return result;
}

unint64_t sub_1D95770E0()
{
  result = qword_1ECB06A20;
  if (!qword_1ECB06A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A20);
  }

  return result;
}

unint64_t sub_1D9577134()
{
  result = qword_1ECB06A28;
  if (!qword_1ECB06A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A28);
  }

  return result;
}

uint64_t ManagedPackage.ManagementScope.hashValue.getter(char a1)
{
  sub_1D95C051C();
  MEMORY[0x1DA732B80](a1 & 1);
  return sub_1D95C055C();
}

uint64_t sub_1D9577214@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D9577BD4(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t ManagedPackage.init(declarationIdentifier:name:packageID:subtitle:scope:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 32) = a7;
  *(a9 + 40) = a8;
  *(a9 + 64) = a10 & 1;
  return result;
}

unint64_t sub_1D9577288()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x656C746974627573;
  v4 = 0x496567616B636170;
  if (v1 != 3)
  {
    v4 = 0x65706F6373;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_1D9577320@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9578734(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9577348(uint64_t a1)
{
  v2 = sub_1D9578090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9577384(uint64_t a1)
{
  v2 = sub_1D9578090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static ManagedPackage.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D95C041C();
  }
}

uint64_t ManagedPackage.hash(into:)(uint64_t a1)
{

  sub_1D95BFE1C();
}

uint64_t ManagedPackage.hashValue.getter()
{
  sub_1D95C051C();
  sub_1D95BFE1C();
  return sub_1D95C055C();
}

uint64_t sub_1D9577494()
{
  sub_1D95C051C();
  sub_1D95BFE1C();
  return sub_1D95C055C();
}

uint64_t sub_1D95774E0(uint64_t a1)
{

  sub_1D95BFE1C();
}

uint64_t sub_1D9577538(uint64_t a1)
{
  sub_1D95C051C();
  sub_1D95BFE1C();
  return sub_1D95C055C();
}

uint64_t ManagedPackage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06A30, &qword_1D95C5D58);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = v7;
  v8 = *(v1 + 32);
  v16 = *(v1 + 40);
  v17 = v8;
  v9 = *(v1 + 48);
  v14 = *(v1 + 56);
  v15 = v9;
  HIDWORD(v13) = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9578090();
  sub_1D95C05BC();
  v26 = 0;
  v10 = v20;
  sub_1D95C038C();
  if (!v10)
  {
    v11 = BYTE4(v13);
    v25 = 1;
    sub_1D95C038C();
    v24 = 2;
    sub_1D95C035C();
    v23 = 3;
    sub_1D95C038C();
    v22 = v11;
    v21 = 4;
    sub_1D95780E4();
    sub_1D95C03CC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ManagedPackage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06A48, &qword_1D95C5D60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9578090();
  sub_1D95C059C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v35[0]) = 0;
  v9 = sub_1D95C02CC();
  v29 = v10;
  LOBYTE(v35[0]) = 1;
  v11 = sub_1D95C02CC();
  v28 = v12;
  v25 = v11;
  LOBYTE(v35[0]) = 2;
  v24 = sub_1D95C029C();
  v27 = v13;
  LOBYTE(v35[0]) = 3;
  v23 = sub_1D95C02CC();
  v26 = v14;
  v37 = 4;
  sub_1D9578138();
  sub_1D95C030C();
  (*(v6 + 8))(v8, v5);
  v15 = v38;
  v17 = v28;
  v16 = v29;
  *&v30 = v9;
  *(&v30 + 1) = v29;
  *&v31 = v25;
  *(&v31 + 1) = v28;
  v18 = v27;
  *&v32 = v24;
  *(&v32 + 1) = v27;
  v19 = v26;
  *&v33 = v23;
  *(&v33 + 1) = v26;
  v34 = v38;
  *(a2 + 64) = v38;
  v20 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v20;
  v21 = v31;
  *a2 = v30;
  *(a2 + 16) = v21;
  sub_1D957818C(&v30, v35);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v35[0] = v9;
  v35[1] = v16;
  v35[2] = v25;
  v35[3] = v17;
  v35[4] = v24;
  v35[5] = v18;
  v35[6] = v23;
  v35[7] = v19;
  v36 = v15;
  return sub_1D95781C4(v35);
}

uint64_t sub_1D9577BD4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06AB8, &qword_1D95C6310);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06AC0, &qword_1D95C6318);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06AC8, &unk_1D95C6320);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957708C();
  v11 = v26;
  sub_1D95C059C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1D95C032C();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1D954A268();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_1D95C01FC();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250);
    *v19 = &type metadata for ManagedPackage.ManagementScope;
    sub_1D95C028C();
    sub_1D95C01EC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1D95770E0();
    sub_1D95C027C();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1D9577134();
    sub_1D95C027C();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v31 & 1;
}

unint64_t sub_1D9578090()
{
  result = qword_1ECB06A38;
  if (!qword_1ECB06A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A38);
  }

  return result;
}

unint64_t sub_1D95780E4()
{
  result = qword_1ECB06A40;
  if (!qword_1ECB06A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A40);
  }

  return result;
}

unint64_t sub_1D9578138()
{
  result = qword_1ECB06A50;
  if (!qword_1ECB06A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A50);
  }

  return result;
}

unint64_t sub_1D95781F8()
{
  result = qword_1ECB06A58;
  if (!qword_1ECB06A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A58);
  }

  return result;
}

unint64_t sub_1D9578250()
{
  result = qword_1ECB06A60;
  if (!qword_1ECB06A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A60);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D95782C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1D9578310(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D95783C8()
{
  result = qword_1ECB06A68;
  if (!qword_1ECB06A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A68);
  }

  return result;
}

unint64_t sub_1D9578420()
{
  result = qword_1ECB06A70;
  if (!qword_1ECB06A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A70);
  }

  return result;
}

unint64_t sub_1D9578478()
{
  result = qword_1ECB06A78;
  if (!qword_1ECB06A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A78);
  }

  return result;
}

unint64_t sub_1D95784D0()
{
  result = qword_1ECB06A80;
  if (!qword_1ECB06A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A80);
  }

  return result;
}

unint64_t sub_1D9578528()
{
  result = qword_1ECB06A88;
  if (!qword_1ECB06A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A88);
  }

  return result;
}

unint64_t sub_1D9578580()
{
  result = qword_1ECB06A90;
  if (!qword_1ECB06A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A90);
  }

  return result;
}

unint64_t sub_1D95785D8()
{
  result = qword_1ECB06A98;
  if (!qword_1ECB06A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06A98);
  }

  return result;
}

unint64_t sub_1D9578630()
{
  result = qword_1ECB06AA0;
  if (!qword_1ECB06AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06AA0);
  }

  return result;
}

unint64_t sub_1D9578688()
{
  result = qword_1ECB06AA8;
  if (!qword_1ECB06AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06AA8);
  }

  return result;
}

unint64_t sub_1D95786E0()
{
  result = qword_1ECB06AB0;
  if (!qword_1ECB06AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06AB0);
  }

  return result;
}

uint64_t sub_1D9578734(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001D95D0210 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x496567616B636170 && a2 == 0xE900000000000044 || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1D95C041C();

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

uint64_t DDMDeclarationStatusRequest.declarationKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D9578954()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D95794B8;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1D954DD2C(1, v2, v3, sub_1D9578DB0, 0);
}

uint64_t DDMDeclarationStatusRequest.send(to:)(char a1)
{
  *(v2 + 40) = a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D9578A74, 0, 0);
}

uint64_t sub_1D9578A74()
{
  if (*(v0 + 40))
  {
    __break(1u);
  }

  else if (qword_1EDCFA278 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D9578B78;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1D954DD2C(1, v2, v3, sub_1D9578DB0, 0);
}

uint64_t sub_1D9578B78(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void *DDMDeclarationStatusRequest.request()()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_1EDCFA278 != -1)
  {
    v4 = *v0;
    v5 = v0[1];
    swift_once();
    v2 = v5;
    v1 = v4;
  }

  return sub_1D95725B8(1, v1, v2, sub_1D9578DBC, 0);
}

void *DDMDeclarationStatusRequest.send(to:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    __break(1u);
    goto LABEL_5;
  }

  a2 = *v3;
  a3 = v3[1];
  if (qword_1EDCFA278 != -1)
  {
LABEL_5:
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  return sub_1D95725B8(1, a2, a3, sub_1D9578DBC, 0);
}

void sub_1D9578DC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1D95BFBBC();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D95A3C64;
  v12[3] = a6;
  v11 = _Block_copy(v12);

  [a1 getDeclarationStatus:v10 reply:v11];
  _Block_release(v11);
}

uint64_t sub_1D9578EA0(uint64_t a1)
{
  v2 = sub_1D957931C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9578EDC(uint64_t a1)
{
  v2 = sub_1D957931C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DDMDeclarationStatusRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06AD0, &qword_1D95C6340);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957931C();
  sub_1D95C05BC();
  sub_1D95C035C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t DDMDeclarationStatusRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06AE0, &qword_1D95C6348);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957931C();
  sub_1D95C059C();
  if (!v2)
  {
    v9 = sub_1D95C029C();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D95791E0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06AD0, &qword_1D95C6340);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957931C();
  sub_1D95C05BC();
  sub_1D95C035C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D957931C()
{
  result = qword_1ECB06AD8;
  if (!qword_1ECB06AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06AD8);
  }

  return result;
}

unint64_t sub_1D9579394()
{
  result = qword_1ECB06AE8;
  if (!qword_1ECB06AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06AE8);
  }

  return result;
}

unint64_t sub_1D95793EC()
{
  result = qword_1ECB06AF0;
  if (!qword_1ECB06AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06AF0);
  }

  return result;
}

unint64_t sub_1D9579444()
{
  result = qword_1ECB06AF8;
  if (!qword_1ECB06AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06AF8);
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AppInstallRequestType.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1D95C026C();

  v6 = 12;
  if (v4 < 0xC)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t AppInstallRequestType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v6 = 0x5550505672657375;
    v7 = 7368821;
    if (v1 != 10)
    {
      v7 = 0x5565726F74736572;
    }

    if (v1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x5056656369766564;
    v9 = 0x5056656369766564;
    if (v1 != 7)
    {
      v9 = 0x50505672657375;
    }

    if (v1 != 6)
    {
      v8 = v9;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6C6C6174736E69;
    v3 = 0x657461647075;
    v4 = 0x6F69746F6D6F7270;
    if (v1 != 4)
    {
      v4 = 0x65726F74736572;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    if (v1 != 1)
    {
      v2 = 0x6974616D6F747561;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000010;
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
}

uint64_t sub_1D95796CC()
{
  v0 = AppInstallRequestType.rawValue.getter();
  v2 = v1;
  if (v0 == AppInstallRequestType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D95C041C();
  }

  return v5 & 1;
}

unint64_t sub_1D957976C()
{
  result = qword_1ECB06B00;
  if (!qword_1ECB06B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B00);
  }

  return result;
}

uint64_t sub_1D95797C0()
{
  sub_1D95C051C();
  AppInstallRequestType.rawValue.getter();
  sub_1D95BFE1C();

  return sub_1D95C055C();
}

uint64_t sub_1D9579828(uint64_t a1)
{
  AppInstallRequestType.rawValue.getter();
  sub_1D95BFE1C();
}

uint64_t sub_1D957988C(uint64_t a1)
{
  sub_1D95C051C();
  AppInstallRequestType.rawValue.getter();
  sub_1D95BFE1C();

  return sub_1D95C055C();
}

unint64_t sub_1D95798FC@<X0>(unint64_t *a1@<X8>)
{
  result = AppInstallRequestType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D95799E4()
{
  result = qword_1ECB06B08;
  if (!qword_1ECB06B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B08);
  }

  return result;
}

uint64_t DDMRemoveManagedPackageRequest.declarationIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DDMRemoveManagedPackageRequest.declarationIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DDMRemoveManagedPackageRequest.send(to:)()
{
  return MEMORY[0x1EEE6DFA0](sub_1D955CE30, 0, 0);
}

{
  sub_1D955A9C4();
  swift_allocError();
  *v0 = 3;
  return swift_willThrow();
}

uint64_t DDMRemoveManagedAppRequest.declarationIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DDMRemoveManagedAppRequest.declarationIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DDMRemoveManagedAppRequest.request()()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D9579BF8, 0, 0);
}

uint64_t sub_1D9579BF8()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D957A074;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1D954E6A8(1, v2, v3, sub_1D9579F54, 0);
}

uint64_t DDMRemoveManagedAppRequest.send(to:)(char a1)
{
  *(v2 + 40) = a1;
  v3 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D9579D18, 0, 0);
}

uint64_t sub_1D9579D18()
{
  if (*(v0 + 40))
  {
    __break(1u);
  }

  else if (qword_1EDCFA278 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D9568BBC;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1D954E6A8(1, v2, v3, sub_1D9579F54, 0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DDMRemoveManagedAppRequest.request()()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_1EDCFA278 != -1)
  {
    v3 = *v0;
    v4 = v0[1];
    swift_once();
    v2 = v4;
    v1 = v3;
  }

  sub_1D9572CAC(1, v1, v2, sub_1D9579F60, 0);
}

void DDMRemoveManagedAppRequest.send(to:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    __break(1u);
    goto LABEL_5;
  }

  a2 = *v3;
  a3 = v3[1];
  if (qword_1EDCFA278 != -1)
  {
LABEL_5:
    v4 = a2;
    v5 = a3;
    swift_once();
    a3 = v5;
    a2 = v4;
  }

  sub_1D9572CAC(1, a2, a3, sub_1D9579F60, 0);
}

void sub_1D9579F6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1D95BFBBC();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D95A3C64;
  v12[3] = a6;
  v11 = _Block_copy(v12);

  [a1 removeManagedAppWithDeclarationIdentifier:v10 reply:v11];
  _Block_release(v11);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t DDMPurchaseMethod.description.getter()
{
  v1 = 0x74736566696E614DLL;
  v2 = 0x74736E692D657250;
  if (*v0 != 2)
  {
    v2 = 0x726568744FLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000017;
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

unint64_t sub_1D957A114()
{
  v1 = 0x74736566696E616DLL;
  v2 = 0x6174736E49657270;
  if (*v0 != 2)
  {
    v2 = 0x726568746FLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_1D957A198@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D957B5FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D957A1C0(uint64_t a1)
{
  v2 = sub_1D957A850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957A1FC(uint64_t a1)
{
  v2 = sub_1D957A850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D957A238(uint64_t a1)
{
  v2 = sub_1D957A94C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957A274(uint64_t a1)
{
  v2 = sub_1D957A94C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D957A2B0(uint64_t a1)
{
  v2 = sub_1D957A8A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957A2EC(uint64_t a1)
{
  v2 = sub_1D957A8A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D957A328(uint64_t a1)
{
  v2 = sub_1D957A8F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957A364(uint64_t a1)
{
  v2 = sub_1D957A8F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D957A3A0(uint64_t a1)
{
  v2 = sub_1D957A9A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957A3DC(uint64_t a1)
{
  v2 = sub_1D957A9A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DDMPurchaseMethod.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B10, &qword_1D95C6700);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B18, &qword_1D95C6708);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B20, &qword_1D95C6710);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B28, &qword_1D95C6718);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B30, &qword_1D95C6720);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957A850();
  sub_1D95C05BC();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1D957A8F8();
      v18 = v27;
      sub_1D95C034C();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1D957A8A4();
      v18 = v30;
      sub_1D95C034C();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1D957A94C();
    v18 = v24;
    sub_1D95C034C();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1D957A9A0();
  sub_1D95C034C();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1D957A850()
{
  result = qword_1ECB06B38;
  if (!qword_1ECB06B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B38);
  }

  return result;
}

unint64_t sub_1D957A8A4()
{
  result = qword_1ECB06B40;
  if (!qword_1ECB06B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B40);
  }

  return result;
}

unint64_t sub_1D957A8F8()
{
  result = qword_1ECB06B48;
  if (!qword_1ECB06B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B48);
  }

  return result;
}

unint64_t sub_1D957A94C()
{
  result = qword_1ECB06B50;
  if (!qword_1ECB06B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B50);
  }

  return result;
}

unint64_t sub_1D957A9A0()
{
  result = qword_1ECB06B58;
  if (!qword_1ECB06B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B58);
  }

  return result;
}

uint64_t DDMPurchaseMethod.hashValue.getter()
{
  v1 = *v0;
  sub_1D95C051C();
  MEMORY[0x1DA732B80](v1);
  return sub_1D95C055C();
}

uint64_t DDMPurchaseMethod.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B60, &qword_1D95C6728);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B68, &qword_1D95C6730);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B70, &qword_1D95C6738);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B78, &qword_1D95C6740);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06B80, &unk_1D95C6748);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v14);
  sub_1D957A850();
  v15 = v46;
  sub_1D95C059C();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1D95C032C();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1D954A270();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1D95C01FC();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250);
      *v28 = &type metadata for DDMPurchaseMethod;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1D957A94C();
        v32 = v35;
        sub_1D95C027C();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1D957A9A0();
        v25 = v35;
        sub_1D95C027C();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_0(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1D957A8F8();
      v31 = v35;
      sub_1D95C027C();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1D957A8A4();
      v33 = v35;
      sub_1D95C027C();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v47);
}

unint64_t sub_1D957B0C8()
{
  result = qword_1ECB06B88;
  if (!qword_1ECB06B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B88);
  }

  return result;
}

unint64_t sub_1D957B14C()
{
  v1 = 0x74736566696E614DLL;
  v2 = 0x74736E692D657250;
  if (*v0 != 2)
  {
    v2 = 0x726568744FLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000017;
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

unint64_t sub_1D957B238()
{
  result = qword_1ECB06B90;
  if (!qword_1ECB06B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B90);
  }

  return result;
}

unint64_t sub_1D957B290()
{
  result = qword_1ECB06B98;
  if (!qword_1ECB06B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06B98);
  }

  return result;
}

unint64_t sub_1D957B2E8()
{
  result = qword_1ECB06BA0;
  if (!qword_1ECB06BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06BA0);
  }

  return result;
}

unint64_t sub_1D957B340()
{
  result = qword_1ECB06BA8;
  if (!qword_1ECB06BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06BA8);
  }

  return result;
}

unint64_t sub_1D957B398()
{
  result = qword_1ECB06BB0;
  if (!qword_1ECB06BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06BB0);
  }

  return result;
}

unint64_t sub_1D957B3F0()
{
  result = qword_1ECB06BB8;
  if (!qword_1ECB06BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06BB8);
  }

  return result;
}

unint64_t sub_1D957B448()
{
  result = qword_1ECB06BC0;
  if (!qword_1ECB06BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06BC0);
  }

  return result;
}

unint64_t sub_1D957B4A0()
{
  result = qword_1ECB06BC8;
  if (!qword_1ECB06BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06BC8);
  }

  return result;
}

unint64_t sub_1D957B4F8()
{
  result = qword_1ECB06BD0;
  if (!qword_1ECB06BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06BD0);
  }

  return result;
}

unint64_t sub_1D957B550()
{
  result = qword_1ECB06BD8;
  if (!qword_1ECB06BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06BD8);
  }

  return result;
}

unint64_t sub_1D957B5A8()
{
  result = qword_1ECB06BE0;
  if (!qword_1ECB06BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06BE0);
  }

  return result;
}

uint64_t sub_1D957B5FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001D95D0840 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xE800000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174736E49657270 && a2 == 0xEC00000064656C6CLL || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D95C041C();

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

uint64_t sub_1D957B78C(uint64_t a1)
{
  v2 = sub_1D957BD68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957B7C8(uint64_t a1)
{
  v2 = sub_1D957BD68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D957B804()
{
  if (*v0)
  {
    return 0x7465736572;
  }

  else
  {
    return 0x61727473746F6F62;
  }
}

uint64_t sub_1D957B840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61727473746F6F62 && a2 == 0xE900000000000070;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7465736572 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D957B920(uint64_t a1)
{
  v2 = sub_1D957BCC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957B95C(uint64_t a1)
{
  v2 = sub_1D957BCC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D957B998(uint64_t a1)
{
  v2 = sub_1D957BD14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957B9D4(uint64_t a1)
{
  v2 = sub_1D957BD14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RestoreRequestType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06BE8, &qword_1D95C6C60);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06BF0, &qword_1D95C6C68);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06BF8, &qword_1D95C6C70);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957BCC0();
  sub_1D95C05BC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1D957BD14();
    v14 = v18;
    sub_1D95C034C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1D957BD68();
    sub_1D95C034C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1D957BCC0()
{
  result = qword_1ECB06C00;
  if (!qword_1ECB06C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C00);
  }

  return result;
}

unint64_t sub_1D957BD14()
{
  result = qword_1ECB06C08;
  if (!qword_1ECB06C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C08);
  }

  return result;
}

unint64_t sub_1D957BD68()
{
  result = qword_1ECB06C10;
  if (!qword_1ECB06C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C10);
  }

  return result;
}

uint64_t RestoreRequestType.hashValue.getter()
{
  v1 = *v0;
  sub_1D95C051C();
  MEMORY[0x1DA732B80](v1);
  return sub_1D95C055C();
}

uint64_t RestoreRequestType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06C18, &qword_1D95C6C78);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06C20, &qword_1D95C6C80);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06C28, &unk_1D95C6C88);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957BCC0();
  v12 = v31;
  sub_1D95C059C();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1D95C032C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1D954A268();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1D95C01FC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250);
      *v22 = &type metadata for RestoreRequestType;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1D957BD14();
        sub_1D95C027C();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1D957BD68();
        sub_1D95C027C();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_1D957C358()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1D955BACC;

  return sub_1D954EE0C(1, v1, sub_1D957C458, 0);
}

void sub_1D957C458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D95BFBBC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D95A3C64;
  v10[3] = &block_descriptor_7;
  v9 = _Block_copy(v10);

  [a1 handleRestore:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D957C554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5474736575716572 && a2 == 0xEB00000000657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D957C5E0(uint64_t a1)
{
  v2 = sub_1D957C940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957C61C(uint64_t a1)
{
  v2 = sub_1D957C940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RestoreRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06C30, &qword_1D95C6CA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957C940();
  sub_1D95C05BC();
  v10 = v7;
  sub_1D957C994();
  sub_1D95C03CC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t RestoreRequest.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06C48, &qword_1D95C6CA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957C940();
  sub_1D95C059C();
  if (!v2)
  {
    sub_1D957C9E8();
    sub_1D95C030C();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1D957C940()
{
  result = qword_1ECB06C38;
  if (!qword_1ECB06C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C38);
  }

  return result;
}

unint64_t sub_1D957C994()
{
  result = qword_1ECB06C40;
  if (!qword_1ECB06C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C40);
  }

  return result;
}

unint64_t sub_1D957C9E8()
{
  result = qword_1ECB06C50;
  if (!qword_1ECB06C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C50);
  }

  return result;
}

unint64_t sub_1D957CA40()
{
  result = qword_1ECB06C58;
  if (!qword_1ECB06C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C58);
  }

  return result;
}

unint64_t sub_1D957CAF8()
{
  result = qword_1ECB06C60;
  if (!qword_1ECB06C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C60);
  }

  return result;
}

unint64_t sub_1D957CB50()
{
  result = qword_1ECB06C68;
  if (!qword_1ECB06C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C68);
  }

  return result;
}

unint64_t sub_1D957CBA8()
{
  result = qword_1ECB06C70;
  if (!qword_1ECB06C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C70);
  }

  return result;
}

unint64_t sub_1D957CC00()
{
  result = qword_1ECB06C78;
  if (!qword_1ECB06C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C78);
  }

  return result;
}

unint64_t sub_1D957CC58()
{
  result = qword_1ECB06C80;
  if (!qword_1ECB06C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C80);
  }

  return result;
}

unint64_t sub_1D957CCB0()
{
  result = qword_1ECB06C88;
  if (!qword_1ECB06C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C88);
  }

  return result;
}

unint64_t sub_1D957CD08()
{
  result = qword_1ECB06C90;
  if (!qword_1ECB06C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C90);
  }

  return result;
}

unint64_t sub_1D957CD60()
{
  result = qword_1ECB06C98;
  if (!qword_1ECB06C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06C98);
  }

  return result;
}

unint64_t sub_1D957CDB8()
{
  result = qword_1ECB06CA0;
  if (!qword_1ECB06CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06CA0);
  }

  return result;
}

unint64_t sub_1D957CE10()
{
  result = qword_1ECB06CA8;
  if (!qword_1ECB06CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06CA8);
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DDMPackageDeclarationKeysRequest.send(to:)()
{
  return MEMORY[0x1EEE6DFA0](sub_1D955CE30, 0, 0);
}

{
  sub_1D955A9C4();
  swift_allocError();
  *v0 = 3;
  return swift_willThrow();
}

uint64_t sub_1D957CEEC(uint64_t a1)
{
  v2 = sub_1D957D078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957CF28(uint64_t a1)
{
  v2 = sub_1D957D078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DDMPackageDeclarationKeysRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06CB0, &qword_1D95C71A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957D078();
  sub_1D95C05BC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D957D078()
{
  result = qword_1ECB06CB8;
  if (!qword_1ECB06CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06CB8);
  }

  return result;
}

uint64_t sub_1D957D11C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06CB0, &qword_1D95C71A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957D078();
  sub_1D95C05BC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D957D254()
{
  result = qword_1ECB06CC0;
  if (!qword_1ECB06CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06CC0);
  }

  return result;
}

unint64_t sub_1D957D2AC()
{
  result = qword_1ECB06CC8;
  if (!qword_1ECB06CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06CC8);
  }

  return result;
}

uint64_t sub_1D957D31C()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D955C654;

  return sub_1D954F7DC(1, 1, sub_1D957D538, 0);
}

uint64_t sub_1D957D434()
{
  if (*(v0 + 24))
  {
    __break(1u);
  }

  else if (qword_1EDCFA278 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D955BACC;

  return sub_1D954F7DC(1, 1, sub_1D957D538, 0);
}

void sub_1D957D538(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[4] = a4;
  v7[5] = a5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D95A3C64;
  v7[3] = &block_descriptor_8;
  v6 = _Block_copy(v7);

  [a1 resetManagedAppInstallHistoryWithReply_];
  _Block_release(v6);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OAuthInvalidateRequest.accountID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OAuthInvalidateRequest.server.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t OAuthInvalidateRequest.request()()
{
  *(v1 + 16) = *v0;
  *(v1 + 24) = *(v0 + 8);
  *(v1 + 40) = *(v0 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1D957D6B8, 0, 0);
}

uint64_t sub_1D957D6B8()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1D957D7B4;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_1D954FF30(1, v4, v5, v2, v3, sub_1D957D8A8, 0);
}

uint64_t sub_1D957D7B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1D957D8A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D95BFBBC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D95A3C64;
  v10[3] = &block_descriptor_9;
  v9 = _Block_copy(v10);

  [a1 oauthInvalidate:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D957D984()
{
  if (*v0)
  {
    return 0x726576726573;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

uint64_t sub_1D957D9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726576726573 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D957DAA0(uint64_t a1)
{
  v2 = sub_1D957DEDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957DADC(uint64_t a1)
{
  v2 = sub_1D957DEDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OAuthInvalidateRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06CD0, &qword_1D95C7318);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957DEDC();
  sub_1D95C05BC();
  v12 = 0;
  v8 = v10[3];
  sub_1D95C038C();
  if (!v8)
  {
    v11 = 1;
    sub_1D95C038C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t OAuthInvalidateRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06CE0, &qword_1D95C7320);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957DEDC();
  sub_1D95C059C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v9 = sub_1D95C02CC();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1D95C02CC();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1D957DEDC()
{
  result = qword_1ECB06CD8;
  if (!qword_1ECB06CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06CD8);
  }

  return result;
}

unint64_t sub_1D957DF54()
{
  result = qword_1ECB06CE8;
  if (!qword_1ECB06CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06CE8);
  }

  return result;
}

unint64_t sub_1D957DFAC()
{
  result = qword_1ECB06CF0;
  if (!qword_1ECB06CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06CF0);
  }

  return result;
}

unint64_t sub_1D957E004()
{
  result = qword_1ECB06CF8;
  if (!qword_1ECB06CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06CF8);
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t XPCApp.bundleID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void XPCApp.installedMetadata.getter(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_1D957E0CC(v2, v3, v4, v5, v6, v7, v8);
}

void sub_1D957E0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
  }
}

__n128 XPCApp.installedMetadata.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_1D957E184(v1[3], v1[4], v1[5], v1[6], v1[7], v1[8], v1[9]);
  v4 = *a1;
  *(v1 + 5) = a1[1];
  *(v1 + 3) = v4;
  result = v6;
  *(v1 + 7) = v6;
  v1[9] = v3;
  return result;
}

void sub_1D957E184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
  }
}

void XPCApp.installingMetadata.getter(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_1D957E0CC(v2, v3, v4, v5, v6, v7, v8);
}

__n128 XPCApp.installingMetadata.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1D957E184(v1[10], v1[11], v1[12], v1[13], v1[14], v1[15], v1[16]);
  v4 = *(a1 + 16);
  *(v1 + 5) = *a1;
  *(v1 + 6) = v4;
  result = v6;
  *(v1 + 7) = v6;
  v1[16] = v3;
  return result;
}

uint64_t XPCApp.installErrorData.getter()
{
  v1 = *(v0 + 136);
  sub_1D957E2D0(v1, *(v0 + 144));
  return v1;
}

uint64_t sub_1D957E2D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D955F8A8(result, a2);
  }

  return result;
}

uint64_t XPCApp.installErrorData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D955F8FC(*(v2 + 136), *(v2 + 144));
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

uint64_t XPCApp.Metadata.version.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t XPCApp.Metadata.version.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t XPCApp.Metadata.shortVersion.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t XPCApp.Metadata.shortVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t XPCApp.Metadata.account.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t XPCApp.Metadata.account.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void __swiftcall XPCApp.Metadata.init(appleVersionID:version:shortVersion:account:)(Swift::UInt64 appleVersionID, Swift::String version, Swift::String shortVersion, Swift::String_optional account)
{
  *v4 = appleVersionID;
  *(v4 + 8) = version;
  *(v4 + 24) = shortVersion;
  *(v4 + 40) = account;
}

uint64_t sub_1D957E518()
{
  v1 = 0x726556656C707061;
  v2 = 0x72655674726F6873;
  if (*v0 != 2)
  {
    v2 = 0x746E756F636361;
  }

  if (*v0)
  {
    v1 = 0x6E6F6973726576;
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

uint64_t sub_1D957E5A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D957FC74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D957E5CC(uint64_t a1)
{
  v2 = sub_1D957E834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957E608(uint64_t a1)
{
  v2 = sub_1D957E834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCApp.Metadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D00, &qword_1D95C74E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = v1[1];
  v8 = v1[3];
  v12[3] = v1[2];
  v12[4] = v7;
  v9 = v1[5];
  v12[1] = v1[4];
  v12[2] = v8;
  v12[0] = v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957E834();
  sub_1D95C05BC();
  v16 = 0;
  v10 = v12[5];
  sub_1D95C03DC();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_1D95C038C();
  v14 = 2;
  sub_1D95C038C();
  v13 = 3;
  sub_1D95C035C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D957E834()
{
  result = qword_1EDCFA130;
  if (!qword_1EDCFA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA130);
  }

  return result;
}

uint64_t XPCApp.Metadata.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D08, &qword_1D95C74E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957E834();
  sub_1D95C059C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v30 = 0;
  v9 = sub_1D95C031C();
  v29 = 1;
  v10 = sub_1D95C02CC();
  v12 = v11;
  v26 = v10;
  v28 = 2;
  v24 = sub_1D95C02CC();
  v25 = v13;
  v27 = 3;
  v14 = sub_1D95C029C();
  v16 = v15;
  v17 = *(v6 + 8);
  v23 = v14;
  v17(v8, v5);
  v19 = v25;
  v18 = v26;
  *a2 = v9;
  a2[1] = v18;
  v20 = v23;
  v21 = v24;
  a2[2] = v12;
  a2[3] = v21;
  a2[4] = v19;
  a2[5] = v20;
  a2[6] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t XPCApp.init(appleItemID:bundleID:installedMetadata:installingMetadata:installErrorData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *(a4 + 6);
  v18 = a5[1];
  v19 = *a5;
  v16 = a4[2];
  v17 = a5[2];
  v13 = *(a5 + 6);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  sub_1D957E184(0, 0, 0, 0, 0, 0, 0);
  v14 = *a4;
  *(a8 + 40) = a4[1];
  *(a8 + 24) = v14;
  *(a8 + 56) = v16;
  *(a8 + 72) = v12;
  sub_1D957E184(0, 0, 0, 0, 0, 0, 0);
  *(a8 + 80) = v19;
  *(a8 + 96) = v18;
  *(a8 + 112) = v17;
  *(a8 + 128) = v13;
  result = sub_1D955F8FC(0, 0xF000000000000000);
  *(a8 + 136) = a6;
  *(a8 + 144) = a7;
  return result;
}

unint64_t sub_1D957EC30()
{
  v1 = *v0;
  v2 = 0x657449656C707061;
  v3 = 0xD000000000000012;
  if (v1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0x4449656C646E7562;
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

uint64_t sub_1D957ECE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D957FDE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D957ED08(uint64_t a1)
{
  v2 = sub_1D957F0BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957ED44(uint64_t a1)
{
  v2 = sub_1D957F0BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCApp.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D10, &qword_1D95C74F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = v1[1];
  v8 = v1[3];
  v37 = v1[2];
  v38 = v7;
  v9 = v1[5];
  v35 = v1[4];
  v36 = v8;
  v10 = v1[7];
  v33 = v1[6];
  v34 = v9;
  v11 = v1[9];
  v31 = v1[8];
  v32 = v10;
  v30 = v11;
  v12 = v1[11];
  v23 = v1[10];
  v24 = v12;
  v13 = v1[12];
  v28 = v1[13];
  v29 = v13;
  v14 = v1[14];
  v26 = v1[15];
  v27 = v14;
  v15 = v1[17];
  v25 = v1[16];
  v22 = v15;
  v16 = v1[18];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957F0BC();
  sub_1D95C05BC();
  LOBYTE(v40) = 0;
  v17 = v39;
  sub_1D95C03DC();
  if (v17)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v18 = v34;
  v19 = v35;
  v20 = v36;
  v39 = v16;
  LOBYTE(v40) = 1;
  sub_1D95C038C();
  v40 = v20;
  v41 = v19;
  v42 = v18;
  v43 = v33;
  v44 = v32;
  v45 = v31;
  v46 = v30;
  v47 = 2;
  sub_1D957E0CC(v20, v19, v18, v33, v32, v31, v30);
  sub_1D957F110();
  sub_1D95C036C();
  sub_1D957E184(v40, v41, v42, v43, v44, v45, v46);
  v40 = v23;
  v41 = v24;
  v42 = v29;
  v43 = v28;
  v44 = v27;
  v45 = v26;
  v46 = v25;
  v47 = 3;
  sub_1D957E0CC(v23, v24, v29, v28, v27, v26, v25);
  sub_1D95C036C();
  sub_1D957E184(v40, v41, v42, v43, v44, v45, v46);
  v40 = v22;
  v41 = v39;
  v47 = 4;
  sub_1D957E2D0(v22, v39);
  sub_1D957F164();
  sub_1D95C036C();
  sub_1D955F8FC(v40, v41);
  return (*(v4 + 8))(v6, 0);
}

unint64_t sub_1D957F0BC()
{
  result = qword_1EDCFA148;
  if (!qword_1EDCFA148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA148);
  }

  return result;
}

unint64_t sub_1D957F110()
{
  result = qword_1EDCF9CB0;
  if (!qword_1EDCF9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CB0);
  }

  return result;
}

unint64_t sub_1D957F164()
{
  result = qword_1EDCFA070;
  if (!qword_1EDCFA070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA070);
  }

  return result;
}

uint64_t XPCApp.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D18, &qword_1D95C74F8);
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v6 = &v25 - v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D957F0BC();
  sub_1D95C059C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_1D957E184(0, 0, 0, 0, 0, 0, 0);
    sub_1D957E184(0, 0, 0, 0, 0, 0, 0);
    return sub_1D955F8FC(0, 0xF000000000000000);
  }

  else
  {
    v36 = a1;
    v37 = v4;
    v8 = v38;
    v7 = v39;
    LOBYTE(v50) = 0;
    v9 = v6;
    v10 = sub_1D95C031C();
    LOBYTE(v50) = 1;
    v11 = sub_1D95C02CC();
    *&v33 = v12;
    LOBYTE(v40) = 2;
    sub_1D957F6F8();
    sub_1D95C02AC();
    v30 = v11;
    v31 = v51;
    *(&v33 + 1) = v50;
    *v34 = v52;
    *&v34[16] = v53;
    v35 = *v54;
    sub_1D957E184(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v40) = 3;
    sub_1D95C02AC();
    v13 = v36;
    v14 = v50;
    v15 = v51;
    v32 = v52;
    v28 = v53;
    v29 = *(&v52 + 1);
    v26 = *&v54[8];
    v27 = *v54;
    sub_1D957E184(0, 0, 0, 0, 0, 0, 0);
    v67 = 4;
    sub_1D957F74C();
    sub_1D95C02AC();
    (*(v37 + 8))(v9, v7);
    v16 = v65;
    v17 = v66;
    sub_1D955F8FC(0, 0xF000000000000000);
    *&v40 = v10;
    *(&v40 + 1) = v30;
    v41 = v33;
    v39 = v10;
    v18 = v31;
    *&v42 = v31;
    *(&v42 + 1) = *v34;
    v43 = *&v34[8];
    v44 = v35;
    *&v45 = v14;
    *(&v45 + 1) = v15;
    *&v46 = v32;
    *(&v46 + 1) = v29;
    *&v47 = v28;
    *(&v47 + 1) = v27;
    *&v48 = v26;
    *(&v48 + 1) = v16;
    v49 = v17;
    *(v8 + 144) = v17;
    v19 = v45;
    *(v8 + 64) = v44;
    *(v8 + 80) = v19;
    v20 = v43;
    *(v8 + 32) = v42;
    *(v8 + 48) = v20;
    v21 = v48;
    v22 = v46;
    *(v8 + 112) = v47;
    *(v8 + 128) = v21;
    *(v8 + 96) = v22;
    v23 = v41;
    *v8 = v40;
    *(v8 + 16) = v23;
    sub_1D957F7A0(&v40, &v50);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v50 = v39;
    v51 = v30;
    v52 = v33;
    v53 = v18;
    *v54 = *v34;
    *&v54[8] = *&v34[8];
    v55 = v35;
    v56 = v14;
    v57 = v15;
    v58 = v32;
    v59 = v29;
    v60 = v28;
    v61 = v27;
    v62 = v26;
    v63 = v16;
    v64 = v17;
    return sub_1D957F7D8(&v50);
  }
}

unint64_t sub_1D957F6F8()
{
  result = qword_1EDCFA088[0];
  if (!qword_1EDCFA088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCFA088);
  }

  return result;
}

unint64_t sub_1D957F74C()
{
  result = qword_1EDCFA118;
  if (!qword_1EDCFA118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA118);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22ManagedAppDistribution6XPCAppV8MetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D957F8C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1D957F910(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
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

uint64_t sub_1D957F9A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D957F9E8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1D957FA68()
{
  result = qword_1ECB06D20;
  if (!qword_1ECB06D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06D20);
  }

  return result;
}

unint64_t sub_1D957FAC0()
{
  result = qword_1ECB06D28;
  if (!qword_1ECB06D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06D28);
  }

  return result;
}

unint64_t sub_1D957FB18()
{
  result = qword_1EDCFA138;
  if (!qword_1EDCFA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA138);
  }

  return result;
}

unint64_t sub_1D957FB70()
{
  result = qword_1EDCFA140;
  if (!qword_1EDCFA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA140);
  }

  return result;
}

unint64_t sub_1D957FBC8()
{
  result = qword_1EDCFA120;
  if (!qword_1EDCFA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA120);
  }

  return result;
}

unint64_t sub_1D957FC20()
{
  result = qword_1EDCFA128;
  if (!qword_1EDCFA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA128);
  }

  return result;
}

uint64_t sub_1D957FC74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726556656C707061 && a2 == 0xEE0044496E6F6973;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72655674726F6873 && a2 == 0xEC0000006E6F6973 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E756F636361 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D95C041C();

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

uint64_t sub_1D957FDE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D95D0860 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D95D0880 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D95D08A0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D95C041C();

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

uint64_t sub_1D957FFB8(uint64_t a1)
{
  v2 = sub_1D9582798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D957FFF4(uint64_t a1)
{
  v2 = sub_1D9582798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9580030(uint64_t a1)
{
  v2 = sub_1D958269C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D958006C(uint64_t a1)
{
  v2 = sub_1D958269C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95800A8(uint64_t a1)
{
  v2 = sub_1D9582744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95800E4(uint64_t a1)
{
  v2 = sub_1D9582744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9580120(uint64_t a1)
{
  v2 = sub_1D95826F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D958015C(uint64_t a1)
{
  v2 = sub_1D95826F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PackageState.Availability.hashValue.getter()
{
  v1 = *v0;
  sub_1D95C051C();
  MEMORY[0x1DA732B80](v1);
  return sub_1D95C055C();
}

uint64_t PackageState.description.getter()
{
  v1 = sub_1D95BFB5C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D95BFC2C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB063E0, &qword_1D95C3220);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v23 - v12;
  v14 = *v0;
  v15 = *v0 >> 62;
  if (v15 <= 1)
  {
    if (!v15)
    {
      v16 = *(v14 + 16);
      if (!v16)
      {
        return 0x6C62616C69617641;
      }

      if (v16 == 1)
      {
        return 0x6F6C6E776F646552;
      }

      return 0x657461647055;
    }

    v20 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    strcpy(v26, "Installing (");
    BYTE5(v26[1]) = 0;
    HIWORD(v26[1]) = -5120;
    v23[1] = v20;
    v21 = v11;
    sub_1D95BFBFC();
    sub_1D9564DB8();
    sub_1D95BFB2C();
    sub_1D95BFB4C();
    MEMORY[0x1DA732190](v4, v21);
    (*(v2 + 8))(v4, v1);
    v22 = *(v7 + 8);
    v22(v10, v21);
    sub_1D9564E0C();
    sub_1D95BFD0C();
    v22(v13, v21);
    MEMORY[0x1DA732490](v24, v25);

    MEMORY[0x1DA732490](41, 0xE100000000000000);
    return v26[0];
  }

  if (v15 == 2)
  {
    v18 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    sub_1D953FCB8(v18);
    sub_1D95C01BC();

    v26[0] = 0xD000000000000010;
    v26[1] = 0x80000001D95D05E0;
    v24 = v18;
    v19 = AppState.description.getter();
    MEMORY[0x1DA732490](v19);

    sub_1D9564D80(v18);
    return v26[0];
  }

  if (v14 == 0xC000000000000000)
  {
    return 0x656C6C6174736E49;
  }

  else
  {
    return 0x676E6974696157;
  }
}

uint64_t sub_1D95805FC(uint64_t a1)
{
  v2 = sub_1D95825A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9580638(uint64_t a1)
{
  v2 = sub_1D95825A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9580674()
{
  v1 = *v0;
  v2 = 0x6C62616C69617661;
  v3 = 0x646573756170;
  v4 = 0x656C6C6174736E69;
  if (v1 != 3)
  {
    v4 = 0x676E6974696177;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696C6C6174736E69;
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

uint64_t sub_1D9580714@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D95832A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D958073C(uint64_t a1)
{
  v2 = sub_1D95823FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9580778(uint64_t a1)
{
  v2 = sub_1D95823FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95807B4(uint64_t a1)
{
  v2 = sub_1D95824A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95807F0(uint64_t a1)
{
  v2 = sub_1D95824A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D958082C(uint64_t a1)
{
  v2 = sub_1D958254C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9580868(uint64_t a1)
{
  v2 = sub_1D958254C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95808A4(uint64_t a1)
{
  v2 = sub_1D95824F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95808E0(uint64_t a1)
{
  v2 = sub_1D95824F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D958091C(uint64_t a1)
{
  v2 = sub_1D9582450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9580958(uint64_t a1)
{
  v2 = sub_1D9582450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t PackageState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D30, &qword_1D95C7958);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D38, &qword_1D95C7960);
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D40, &qword_1D95C7968);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D48, &qword_1D95C7970);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D50, &qword_1D95C7978);
  v39 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D58, &qword_1D95C7980);
  v45 = *(v15 - 8);
  v46 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95823FC();
  sub_1D95C05BC();
  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v19 == 2)
    {
      v22 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v51 = 2;
      sub_1D953FCB8(v22);
      sub_1D95824F8();
      v23 = v42;
      v24 = v46;
      sub_1D95C034C();
      v50 = v22;
      sub_1D9566C4C();
      v25 = v44;
      sub_1D95C03CC();
      (*(v43 + 8))(v23, v25);
      (*(v45 + 8))(v17, v24);
      return sub_1D9564D80(v22);
    }

    else
    {
      v28 = (v45 + 8);
      if (v18 == 0xC000000000000000)
      {
        v52 = 3;
        sub_1D95824A4();
        v29 = v33;
        v30 = v46;
        sub_1D95C034C();
        v32 = v34;
        v31 = v35;
      }

      else
      {
        v53 = 4;
        sub_1D9582450();
        v29 = v36;
        v30 = v46;
        sub_1D95C034C();
        v32 = v37;
        v31 = v38;
      }

      (*(v32 + 8))(v29, v31);
      return (*v28)(v17, v30);
    }
  }

  else
  {
    if (v19)
    {
      v49 = 1;
      sub_1D958254C();
      v21 = v46;
      sub_1D95C034C();
      v27 = v41;
      sub_1D95C03AC();
      (*(v40 + 8))(v11, v27);
    }

    else
    {
      v20 = *(v18 + 16);
      v48 = 0;
      sub_1D95825A0();
      v21 = v46;
      sub_1D95C034C();
      v47 = v20;
      sub_1D95825F4();
      sub_1D95C03CC();
      (*(v39 + 8))(v14, v12);
    }

    return (*(v45 + 8))(v17, v21);
  }
}

uint64_t PackageState.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v56 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06D98, &qword_1D95C7988);
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v46 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06DA0, &qword_1D95C7990);
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v58 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06DA8, &qword_1D95C7998);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v46 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06DB0, &qword_1D95C79A0);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06DB8, &qword_1D95C79A8);
  v46 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06DC0, &unk_1D95C79B0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - v15;
  v17 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v17);
  sub_1D95823FC();
  v18 = v60;
  sub_1D95C059C();
  if (v18)
  {
    goto LABEL_9;
  }

  v19 = v12;
  v60 = v10;
  v21 = v57;
  v20 = v58;
  v22 = sub_1D95C032C();
  v23 = (2 * *(v22 + 16)) | 1;
  v62 = v22;
  v63 = v22 + 32;
  v64 = 0;
  v65 = v23;
  v24 = sub_1D9542114();
  if (v24 == 5 || v64 != v65 >> 1)
  {
    v27 = sub_1D95C01FC();
    swift_allocError();
    v28 = v16;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250);
    *v30 = &type metadata for PackageState;
    sub_1D95C028C();
    sub_1D95C01EC();
    (*(*(v27 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    (*(v14 + 8))(v28, v13);
    swift_unknownObjectRelease();
LABEL_9:
    v31 = v59;
    return __swift_destroy_boxed_opaque_existential_0(v31);
  }

  if (v24 <= 1u)
  {
    if (v24)
    {
      v61 = 1;
      sub_1D958254C();
      v39 = v9;
      sub_1D95C027C();
      v42 = swift_allocObject();
      v43 = v49;
      sub_1D95C02EC();
      v45 = v44;
      (*(v47 + 8))(v39, v43);
      (*(v14 + 8))(v16, v13);
      swift_unknownObjectRelease();
      *(v42 + 16) = v45;
      v26 = v42 | 0x4000000000000000;
    }

    else
    {
      v61 = 0;
      sub_1D95825A0();
      sub_1D95C027C();
      v33 = v16;
      v26 = swift_allocObject();
      sub_1D9582648();
      v34 = v60;
      sub_1D95C030C();
      (*(v46 + 8))(v19, v34);
      (*(v14 + 8))(v33, v13);
      swift_unknownObjectRelease();
    }

    v31 = v59;
    v25 = v56;
  }

  else if (v24 == 2)
  {
    v35 = v56;
    v61 = 2;
    sub_1D95824F8();
    v36 = v21;
    sub_1D95C027C();
    v37 = v14;
    v40 = swift_allocObject();
    sub_1D9566DF0();
    v41 = v53;
    sub_1D95C030C();
    (*(v54 + 8))(v36, v41);
    (*(v37 + 8))(v16, v13);
    swift_unknownObjectRelease();
    v26 = v40 | 0x8000000000000000;
    v31 = v59;
    v25 = v35;
  }

  else
  {
    v25 = v56;
    if (v24 == 3)
    {
      v61 = 3;
      sub_1D95824A4();
      sub_1D95C027C();
      (*(v50 + 8))(v20, v52);
      (*(v14 + 8))(v16, v13);
      swift_unknownObjectRelease();
      v26 = 0xC000000000000000;
    }

    else
    {
      v61 = 4;
      sub_1D9582450();
      v38 = v55;
      sub_1D95C027C();
      (*(v48 + 8))(v38, v51);
      (*(v14 + 8))(v16, v13);
      swift_unknownObjectRelease();
      v26 = 0xC000000000000008;
    }

    v31 = v59;
  }

  *v25 = v26;
  return __swift_destroy_boxed_opaque_existential_0(v31);
}

uint64_t PackageState.Availability.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06DD0, &qword_1D95C79C0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06DD8, &qword_1D95C79C8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06DE0, &qword_1D95C79D0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06DE8, &qword_1D95C79D8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D958269C();
  sub_1D95C05BC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1D9582744();
      v9 = v21;
      sub_1D95C034C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1D95826F0();
      v9 = v24;
      sub_1D95C034C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1D9582798();
    sub_1D95C034C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t PackageState.Availability.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06E10, &qword_1D95C79E0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06E18, &qword_1D95C79E8);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06E20, &qword_1D95C79F0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06E28, &qword_1D95C79F8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v14);
  sub_1D958269C();
  v15 = v36;
  sub_1D95C059C();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1D95C032C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1D954A26C();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1D95C01FC();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250);
      *v24 = &type metadata for PackageState.Availability;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1D9582744();
          sub_1D95C027C();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1D95826F0();
          v26 = v17;
          sub_1D95C027C();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1D9582798();
        sub_1D95C027C();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t _s22ManagedAppDistribution12PackageStateO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v2 == 0xC000000000000000)
      {
        if (v3 != 0xC000000000000000)
        {
          goto LABEL_16;
        }

        sub_1D9583498(0xC000000000000000);
        v11 = 0xC000000000000000;
      }

      else
      {
        if (v3 != 0xC000000000000008)
        {
          goto LABEL_16;
        }

        sub_1D9583498(0xC000000000000008);
        v11 = 0xC000000000000008;
      }

      sub_1D9583498(v11);
      v7 = 1;
      return v7 & 1;
    }

    if (v3 >> 62 == 2)
    {
      v8 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = v8;
      sub_1D9583468(v3);
      sub_1D9583468(v2);
      v7 = static AppState.== infix(_:_:)(&v14, &v13);
      sub_1D9583498(v2);
      sub_1D9583498(v3);
      return v7 & 1;
    }

LABEL_16:
    sub_1D9583468(*a2);
    sub_1D9583468(v2);
    sub_1D9583498(v2);
    sub_1D9583498(v3);
    v7 = 0;
    return v7 & 1;
  }

  if (v4)
  {
    if (v3 >> 62 == 1)
    {
      v9 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D9583468(*a2);
      sub_1D9583468(v2);
      sub_1D9583498(v2);
      sub_1D9583498(v3);
      v7 = v9 == v10;
      return v7 & 1;
    }

    goto LABEL_16;
  }

  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  v5 = *(v2 + 16);
  v6 = *(v3 + 16);
  sub_1D9583468(*a2);
  sub_1D9583468(v2);
  sub_1D9583498(v2);
  sub_1D9583498(v3);
  v7 = v5 == v6;
  return v7 & 1;
}

unint64_t sub_1D95823FC()
{
  result = qword_1ECB06D60;
  if (!qword_1ECB06D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06D60);
  }

  return result;
}

unint64_t sub_1D9582450()
{
  result = qword_1ECB06D68;
  if (!qword_1ECB06D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06D68);
  }

  return result;
}

unint64_t sub_1D95824A4()
{
  result = qword_1ECB06D70;
  if (!qword_1ECB06D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06D70);
  }

  return result;
}

unint64_t sub_1D95824F8()
{
  result = qword_1ECB06D78;
  if (!qword_1ECB06D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06D78);
  }

  return result;
}

unint64_t sub_1D958254C()
{
  result = qword_1ECB06D80;
  if (!qword_1ECB06D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06D80);
  }

  return result;
}

unint64_t sub_1D95825A0()
{
  result = qword_1ECB06D88;
  if (!qword_1ECB06D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06D88);
  }

  return result;
}

unint64_t sub_1D95825F4()
{
  result = qword_1ECB06D90;
  if (!qword_1ECB06D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06D90);
  }

  return result;
}

unint64_t sub_1D9582648()
{
  result = qword_1ECB06DC8;
  if (!qword_1ECB06DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06DC8);
  }

  return result;
}

unint64_t sub_1D958269C()
{
  result = qword_1ECB06DF0;
  if (!qword_1ECB06DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06DF0);
  }

  return result;
}

unint64_t sub_1D95826F0()
{
  result = qword_1ECB06DF8;
  if (!qword_1ECB06DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06DF8);
  }

  return result;
}

unint64_t sub_1D9582744()
{
  result = qword_1ECB06E00;
  if (!qword_1ECB06E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E00);
  }

  return result;
}

unint64_t sub_1D9582798()
{
  result = qword_1ECB06E08;
  if (!qword_1ECB06E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E08);
  }

  return result;
}

unint64_t sub_1D95827F0()
{
  result = qword_1ECB06E30;
  if (!qword_1ECB06E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E30);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22ManagedAppDistribution12PackageStateO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D9582860(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D95828BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1D958291C(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

unint64_t sub_1D9582A0C()
{
  result = qword_1ECB06E38;
  if (!qword_1ECB06E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E38);
  }

  return result;
}

unint64_t sub_1D9582A64()
{
  result = qword_1ECB06E40;
  if (!qword_1ECB06E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E40);
  }

  return result;
}

unint64_t sub_1D9582ABC()
{
  result = qword_1ECB06E48;
  if (!qword_1ECB06E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E48);
  }

  return result;
}

unint64_t sub_1D9582B14()
{
  result = qword_1ECB06E50;
  if (!qword_1ECB06E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E50);
  }

  return result;
}

unint64_t sub_1D9582B6C()
{
  result = qword_1ECB06E58;
  if (!qword_1ECB06E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E58);
  }

  return result;
}

unint64_t sub_1D9582BC4()
{
  result = qword_1ECB06E60;
  if (!qword_1ECB06E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E60);
  }

  return result;
}

unint64_t sub_1D9582C1C()
{
  result = qword_1ECB06E68;
  if (!qword_1ECB06E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E68);
  }

  return result;
}

unint64_t sub_1D9582C74()
{
  result = qword_1ECB06E70;
  if (!qword_1ECB06E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E70);
  }

  return result;
}

unint64_t sub_1D9582CCC()
{
  result = qword_1ECB06E78;
  if (!qword_1ECB06E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E78);
  }

  return result;
}

unint64_t sub_1D9582D24()
{
  result = qword_1ECB06E80;
  if (!qword_1ECB06E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E80);
  }

  return result;
}

unint64_t sub_1D9582D7C()
{
  result = qword_1ECB06E88;
  if (!qword_1ECB06E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E88);
  }

  return result;
}

unint64_t sub_1D9582DD4()
{
  result = qword_1ECB06E90;
  if (!qword_1ECB06E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E90);
  }

  return result;
}

unint64_t sub_1D9582E2C()
{
  result = qword_1ECB06E98;
  if (!qword_1ECB06E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06E98);
  }

  return result;
}

unint64_t sub_1D9582E84()
{
  result = qword_1ECB06EA0;
  if (!qword_1ECB06EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EA0);
  }

  return result;
}

unint64_t sub_1D9582EDC()
{
  result = qword_1ECB06EA8;
  if (!qword_1ECB06EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EA8);
  }

  return result;
}

unint64_t sub_1D9582F34()
{
  result = qword_1ECB06EB0;
  if (!qword_1ECB06EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EB0);
  }

  return result;
}

unint64_t sub_1D9582F8C()
{
  result = qword_1ECB06EB8;
  if (!qword_1ECB06EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EB8);
  }

  return result;
}

unint64_t sub_1D9582FE4()
{
  result = qword_1ECB06EC0;
  if (!qword_1ECB06EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EC0);
  }

  return result;
}

unint64_t sub_1D958303C()
{
  result = qword_1ECB06EC8;
  if (!qword_1ECB06EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EC8);
  }

  return result;
}