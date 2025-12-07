void sub_1DB3B6EBC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1DB3B6F3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1DB3B6F84(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1DB3B7004(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB3B704C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB3B70C0()
{
  result = qword_1ECC44BA8;
  if (!qword_1ECC44BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44BA8);
  }

  return result;
}

unint64_t sub_1DB3B7118()
{
  result = qword_1ECC44BB0;
  if (!qword_1ECC44BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44BB0);
  }

  return result;
}

unint64_t sub_1DB3B7170()
{
  result = qword_1ECC44BB8;
  if (!qword_1ECC44BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44BB8);
  }

  return result;
}

unint64_t sub_1DB3B71C8()
{
  result = qword_1ECC44BC0;
  if (!qword_1ECC44BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44BC0);
  }

  return result;
}

unint64_t sub_1DB3B7220()
{
  result = qword_1ECC44BC8;
  if (!qword_1ECC44BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44BC8);
  }

  return result;
}

unint64_t sub_1DB3B7278()
{
  result = qword_1ECC44BD0;
  if (!qword_1ECC44BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44BD0);
  }

  return result;
}

uint64_t sub_1DB3B72CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7079547475706E69 && a2 == 0xE900000000000065 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7269757165527369 && a2 == 0xEA00000000006465 || (sub_1DB50BA30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C6D756D6978616DLL && a2 == 0xED00006874676E65)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DB50BA30();

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

uint64_t sub_1DB3B74D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DB50BA30();

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

unint64_t sub_1DB3B76A8()
{
  result = qword_1ECC44BD8;
  if (!qword_1ECC44BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44BD8);
  }

  return result;
}

unint64_t sub_1DB3B76FC()
{
  result = qword_1ECC44BE0;
  if (!qword_1ECC44BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44BE0);
  }

  return result;
}

unint64_t sub_1DB3B7750()
{
  result = qword_1ECC44BE8;
  if (!qword_1ECC44BE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC44BE8);
  }

  return result;
}

unint64_t sub_1DB3B779C()
{
  result = qword_1ECC44BF0;
  if (!qword_1ECC44BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44BF0);
  }

  return result;
}

uint64_t BaseObjectGraph._inject<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1DB50B120();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22[-v10];
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  BaseObjectGraph._injectIfAvailable<A>(_:)(a1, a2);
  if ((*(v12 + 48))(v11, 1, a2) == 1)
  {
    (*(v9 + 8))(v11, v8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v17 = BaseObjectGraph._downcast<A>(to:)(AssociatedTypeWitness, AssociatedTypeWitness);
    v18 = MEMORY[0x1EEE9AC00](v17);
    *&v22[-32] = a2;
    *&v22[-24] = a3;
    *&v22[-16] = v19;
    (*(*v19 + 104))(sub_1DB3B7AD0, v18);
  }

  else
  {
    v21 = *(v12 + 32);
    v21(v15, v11, a2);
    return v21(a4, v15, a2);
  }
}

uint64_t BaseObjectGraph._inject<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v8 = sub_1DB50B120();
  v5[6] = v8;
  v5[7] = *(v8 - 8);
  v9 = swift_task_alloc();
  v5[8] = v9;
  v5[9] = *(a3 - 8);
  v5[10] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[11] = v10;
  *v10 = v5;
  v10[1] = sub_1DB3B7C58;

  return BaseObjectGraph._injectIfAvailable<A>(_:)(v9, a2, a3);
}

uint64_t sub_1DB3B7C58()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1DB3B7F18;
  }

  else
  {
    v2 = sub_1DB3B7D6C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB3B7D6C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[3];
  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    v4 = v0[4];
    (*(v0[7] + 8))(v2, v0[6]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = BaseObjectGraph._downcast<A>(to:)(AssociatedTypeWitness, AssociatedTypeWitness);
    v7 = swift_task_alloc();
    v7[2] = v3;
    v7[3] = v4;
    v7[4] = v6;
    (*(*v6 + 104))(sub_1DB3B8030, v7, v3);
  }

  else
  {
    v8 = v0[10];
    v9 = v0[2];
    v10 = *(v1 + 32);
    v10(v8, v2, v3);
    v10(v9, v8, v3);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DB3B7F18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB3B7F88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);

  return v3(v4, v1, v2);
}

void CompoundError.init(_:)(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (!*(result + 16))
  {
    sub_1DB3CCA10("JetCore/CompoundError.swift", 0x1BuLL, 2, 0x15uLL);
  }

  *a2 = result;
}

uint64_t CompoundError.errorDescription.getter()
{
  v1 = *(*v0 + 16);
  if (v1 == 1)
  {
    v3 = *(*v0 + 32);
    swift_getErrorValue();
    v4 = v3;
    v2 = sub_1DB50BC80();
  }

  else if (v1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44C08, &qword_1DB517538);
    sub_1DB3B81EC();
    v2 = sub_1DB50A5E0();
  }

  else
  {
    return 0x1000000000000026;
  }

  return v2;
}

uint64_t sub_1DB3B81A4@<X0>(uint64_t *a2@<X8>)
{
  swift_getErrorValue();
  result = sub_1DB50BC80();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1DB3B81EC()
{
  result = qword_1ECC44C10;
  if (!qword_1ECC44C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44C08, &qword_1DB517538);
    sub_1DB3B8270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44C10);
  }

  return result;
}

unint64_t sub_1DB3B8270()
{
  result = qword_1ECC44C18;
  if (!qword_1ECC44C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43558, &unk_1DB511B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44C18);
  }

  return result;
}

unint64_t CompoundError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB50EE90;
    *(inited + 32) = sub_1DB50A650();
    v6 = inited + 32;
    *(inited + 40) = v7;
    swift_getErrorValue();
    *(inited + 72) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_0);
LABEL_8:
    v10 = sub_1DB3135C0(inited);
    swift_setDeallocating();
    sub_1DB351638(v6);
    return v10;
  }

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB50EE90;
    *(inited + 32) = sub_1DB50A650();
    v6 = inited + 32;
    *(inited + 40) = v9;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43558, &unk_1DB511B80);
    *(inited + 48) = v1;

    goto LABEL_8;
  }

  v3 = MEMORY[0x1E69E7CC0];

  return sub_1DB3135C0(v3);
}

uint64_t sub_1DB3B8470(uint64_t a1)
{
  v2 = sub_1DB3B84F8();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DB3B84AC(uint64_t a1)
{
  v2 = sub_1DB3B84F8();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1DB3B84F8()
{
  result = qword_1ECC44C20[0];
  if (!qword_1ECC44C20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC44C20);
  }

  return result;
}

uint64_t EventEmitter.addObserver(on:singleUse:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v14 = type metadata accessor for SingleUseClosureEventObserver(0, AssociatedTypeWitness, v12, v13);
    sub_1DB30BE90(a1, v26);
    v15 = swift_allocObject();

    sub_1DB3B8954(v26, a3, a4);
    v26[0] = v15;
    v16 = *(a6 + 24);
    WitnessTable = swift_getWitnessTable();
    v16(v26, v14, WitnessTable, a5, a6);
  }

  else
  {
    sub_1DB30BE90(a1, v25);
    v19 = swift_getAssociatedTypeWitness();
    sub_1DB2FEA0C(v25, v26);
    v26[5] = a3;
    v26[6] = a4;
    v20 = *(a6 + 24);
    v23 = type metadata accessor for ClosureEventObserver(0, v19, v21, v22);

    v24 = swift_getWitnessTable();
    v20(v26, v23, v24, a5, a6);
    return (*(*(v23 - 8) + 8))(v26, v23);
  }
}

uint64_t sub_1DB3B8778(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v2[3];
  v8 = v2[4];
  v15[1] = __swift_project_boxed_opaque_existential_1(v2, v7);
  v10 = v2[5];
  v9 = v2[6];
  (*(v5 + 16))(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v4;
  *(v12 + 3) = v10;
  *(v12 + 4) = v9;
  (*(v5 + 32))(&v12[v11], v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v13 = *(v8 + 8);

  v13(sub_1DB3B8FB4, v12, v7, v8);
}

uint64_t sub_1DB3B88FC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1DB3B8954(a1, a2, a3);
  return v6;
}

uint64_t *sub_1DB3B8954(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1DB30BE90(a1, v13);
  v14 = a2;
  v15 = a3;
  v10 = type metadata accessor for SingleUseClosureEventObserver.State(0, *(v7 + 80), v8, v9);
  v11 = sub_1DB388A48(v13, v10);
  (*(*(v10 - 8) + 8))(v13, v10);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v3[2] = v11;
  return v3;
}

uint64_t sub_1DB3B8A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v9 = *(*v4 + 80);
  v6 = type metadata accessor for SingleUseClosureEventObserver.State(0, v9, a3, a4);
  sub_1DB35B4EC(sub_1DB3B9100, &v8, v5, v6, MEMORY[0x1E69E6370]);
  return v10;
}

uint64_t sub_1DB3B8A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for SingleUseClosureEventObserver.State(0, a2, a4, a5);
  result = (*(*(v7 - 8) + 16))(v10, a1, v7);
  v9 = v11;
  if (v11)
  {

    result = __swift_destroy_boxed_opaque_existential_0(v10);
    v9 = 1;
  }

  *a3 = v9;
  return result;
}

uint64_t sub_1DB3B8B34(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v20 - v5;
  v7 = v1[2];
  v25 = v3;
  v10 = type metadata accessor for SingleUseClosureEventObserver.State(0, v3, v8, v9);
  sub_1DB47D0C4(sub_1DB3B8FB8, v24, v7);
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v26, v33, v10);
  if (v27)
  {
    v12 = v29;
    v21 = v28;
    sub_1DB2FEA0C(&v26, v30);
    v13 = v32;
    v23 = v31;
    v22 = __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v4 + 16))(v6, a1, v3);
    v14 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v15 = swift_allocObject();
    v16 = v21;
    *(v15 + 2) = v3;
    *(v15 + 3) = v16;
    *(v15 + 4) = v12;
    (*(v4 + 32))(&v15[v14], v6, v3);
    v17 = *(v13 + 8);

    v17(sub_1DB3B911C, v15, v23, v13);

    (*(v11 + 8))(v33, v10);
    return __swift_destroy_boxed_opaque_existential_0(v30);
  }

  else
  {
    v19 = *(v11 + 8);
    v19(v33, v10);
    return (v19)(&v26, v10);
  }
}

uint64_t sub_1DB3B8DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_7JetCore29SingleUseClosureEventObserverC5StateOyx_G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB3B8E34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB3B8E84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1DB3B8EE4(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DB3B8F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_1DB3B8FB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t Dictionary<>._partiallyEncode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v72 = a3;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v53 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v67 = sub_1DB50B120();
  v71 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v53 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A60, &unk_1DB5177A0);
  v54 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v17 = &v53 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3053A8();
  v64 = v17;
  sub_1DB50BE40();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1DB50BE30();
  sub_1DB31F900(0xD000000000000027, 0x80000001DB529830, v18, v76);
  v19 = v8;

  v20 = a2 + 64;
  v21 = 1 << *(a2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a2 + 64);
  v24 = (v21 + 63) >> 6;
  v68 = TupleTypeMetadata2 - 8;
  v55 = v6 + 16;
  v70 = (v6 + 32);
  v63 = (v71 + 32);
  v59 = v6;
  v61 = (v6 + 8);
  v60 = a2;

  v26 = 0;
  v58 = v19;
  v69 = TupleTypeMetadata2;
  v56 = v13;
  if (!v23)
  {
    goto LABEL_6;
  }

  do
  {
    v30 = v26;
LABEL_16:
    v34 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v35 = v34 | (v30 << 6);
    v36 = (*(v60 + 48) + 16 * v35);
    v38 = *v36;
    v37 = v36[1];
    v39 = v59;
    v40 = v57;
    v41 = v72;
    (*(v59 + 16))(v57, *(v60 + 56) + *(v59 + 72) * v35, v72);
    v42 = v69;
    v43 = *(v69 + 48);
    v44 = v56;
    *v56 = v38;
    *(v44 + 1) = v37;
    v45 = *(v39 + 32);
    v46 = v40;
    v29 = v42;
    v33 = v44;
    v45(&v44[v43], v46, v41);
    v32 = *(v29 - 8);
    (*(v32 + 56))(v33, 0, 1, v29);

    v71 = v30;
    v31 = v58;
LABEL_17:
    v47 = v65;
    (*v63)(v65, v33, v67);
    if ((*(v32 + 48))(v47, 1, v29) == 1)
    {

      sub_1DB3A1C04(v76);
      return (*(v54 + 8))(v64, v66);
    }

    v48 = v29;
    v13 = v33;
    v49 = *v47;
    v50 = v47[1];
    v51 = v47 + *(v48 + 48);
    v19 = v31;
    v52 = v72;
    (*v70)(v31, v51, v72);
    v73 = v49;
    v74 = v50;
    v75 = 1;
    sub_1DB50B8A0();

    result = (*v61)(v31, v52);
    v26 = v71;
  }

  while (v23);
LABEL_6:
  v27 = v13;
  if (v24 <= v26 + 1)
  {
    v28 = v26 + 1;
  }

  else
  {
    v28 = v24;
  }

  v29 = v69;
  while (1)
  {
    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v30 >= v24)
    {
      v31 = v19;
      v71 = v28 - 1;
      v32 = *(v69 - 8);
      v33 = v27;
      (*(v32 + 56))(v27, 1, 1, v69);
      v23 = 0;
      goto LABEL_17;
    }

    v23 = *(v20 + 8 * v30);
    ++v26;
    if (v23)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t Optional<A>._partiallyEncode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v28[0] = a3;
  v29 = 0;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_1DB50BE20();
  v15 = a1[3];
  v16 = a1;
  v17 = a2;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  v18 = sub_1DB50BE30();
  sub_1DB31F900(0xD000000000000027, 0x80000001DB529830, v18, v33);

  (*(v10 + 16))(v13, v28[1], a2);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    v19 = v29;
  }

  else
  {
    (*(v6 + 32))(v8, v13, v5);
    __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
    v20 = v29;
    sub_1DB50BB00();
    if (!v20)
    {
      (*(v6 + 8))(v8, v5);
LABEL_11:
      v26 = v33;
LABEL_13:
      sub_1DB3A1C04(v26);
      return __swift_destroy_boxed_opaque_existential_0(v34);
    }

    v21 = v20;
    v19 = 0;
    sub_1DB3A1B94(v33, v30);
    v22 = v31;
    if (v31)
    {
      v23 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      (*(v23 + 16))(v5, v21, v22, v23);

      (*(v6 + 8))(v8, v5);
      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    else
    {
      (*(v6 + 8))(v8, v5);

      sub_1DB3A1C04(v30);
    }
  }

  __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
  sub_1DB50BB10();
  if (!v19)
  {
    goto LABEL_11;
  }

  sub_1DB3A1B94(v33, v30);
  v24 = v31;
  if (!v31)
  {
    sub_1DB3A1C04(v33);

    v26 = v30;
    goto LABEL_13;
  }

  v25 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v25 + 16))(v17, v19, v24, v25);

  sub_1DB3A1C04(v33);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return __swift_destroy_boxed_opaque_existential_0(v34);
}

uint64_t Bool._partiallyEncode(to:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DB50BAD0();
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t Array<A>._partiallyEncode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = v8;
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_1DB50BE10();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1DB50BE30();
  sub_1DB31F900(0xD000000000000027, 0x80000001DB529830, v11, v22);

  if (!sub_1DB50AA00())
  {
LABEL_11:
    sub_1DB3A1C04(v22);
    return __swift_destroy_boxed_opaque_existential_0(v23);
  }

  v12 = 0;
  v18 = (v7 + 8);
  v19 = (v7 + 16);
  while (1)
  {
    v13 = sub_1DB50A9F0();
    sub_1DB50A9B0();
    if (v13)
    {
      (*(v7 + 16))(v9, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, a3);
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    result = sub_1DB50B380();
    if (v17 != 8)
    {
      break;
    }

    v21[0] = result;
    (*v19)(v9, v21, a3);
    swift_unknownObjectRelease();
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_6:
    __swift_mutable_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_1DB50B9E0();
    (*v18)(v9, a3);
    ++v12;
    if (v14 == sub_1DB50AA00())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB3BA0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB3BA10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a5 = sub_1DB30286C(0, a5[2] + 1, 1, a5);
  }

  v20 = a5[2];
  v19 = a5[3];
  if (v20 >= v19 >> 1)
  {
    a5 = sub_1DB30286C((v19 > 1), v20 + 1, 1, a5);
  }

  a5[2] = v20 + 1;
  v21 = &a5[2 * v20];
  v21[4] = sub_1DB3BA500;
  v21[5] = v16;
  a8[3] = type metadata accessor for DependentObjectGraphBuilder(0, a6, v17, v18);
  a8[4] = &off_1F56F7748;

  *a8 = a4;
  a8[1] = a5;
  return result;
}

char *sub_1DB3BA248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F70, &qword_1DB518F20);
  v7 = sub_1DB3BA49C();
  v10[3] = &type metadata for SyncTaskScheduler;
  v10[4] = &protocol witness table for SyncTaskScheduler;

  v8 = Promise.flatMap<A>(on:_:)(v10, sub_1DB3BA494, v5, v6, v7);

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v8;
}

uint64_t sub_1DB3BA324(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3)
  {
    v14 = &type metadata for StandaloneObjectGraphBuilder;
    v15 = &off_1F56F8D18;
    v13[0] = v2;
    v13[1] = MEMORY[0x1E69E7CC0];

    v5 = a2 + 40;
    do
    {
      v6 = *(v5 - 8);

      v6(v12, v13);

      __swift_destroy_boxed_opaque_existential_0(v13);
      sub_1DB2FEA0C(v12, v13);
      v5 += 16;
      --v3;
    }

    while (v3);
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v9 = (v8[2])(v7, v8);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F70, &qword_1DB518F20);
    v9 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v9 + 16) = v10;
    *(v9 + 24) = v2;
    *(v9 + 32) = 1;
  }

  return v9;
}

unint64_t sub_1DB3BA49C()
{
  result = qword_1ECC44D28;
  if (!qword_1ECC44D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC44F70, &qword_1DB518F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44D28);
  }

  return result;
}

uint64_t sub_1DB3BA500(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  v4 = v1[6];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  return (*(v7 + 8))(v3, v5, v4, v2, v6, v7);
}

__n128 MetricsEventLinterBagConfiguration.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

double sub_1DB3BA598@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!a4)
  {
LABEL_7:
    sub_1DB330D60(v5, v14);
    if (v15)
    {
      __swift_project_boxed_opaque_existential_1(v14, v15);
      sub_1DB40860C(a1, a2, &v16);
      __swift_destroy_boxed_opaque_existential_0(v14);
      if (*(&v17 + 1) != 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1DB30623C(v14, &qword_1ECC42E38, &qword_1DB50FB80);
    }

    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

  JSONObject.subscript.getter(a3, a4, v14);
  JSONObject.subscript.getter(a1, a2, &v16);
  sub_1DB3151CC(v14);
  sub_1DB330D60(&v16, v14);
  if (!v15)
  {
    sub_1DB30623C(v14, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_6;
  }

  v9 = __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1DB300B14(v9, v13);
  sub_1DB315520();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(v14);
LABEL_6:
    sub_1DB3151CC(&v16);
    goto LABEL_7;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
LABEL_13:
  result = *&v16;
  v11 = v17;
  *a5 = v16;
  *(a5 + 16) = v11;
  *(a5 + 32) = v18;
  return result;
}

Swift::OpaquePointer_optional __swiftcall MetricsEventLinterBagConfiguration.baseFields(forTopic:)(Swift::String forTopic)
{
  sub_1DB3BA598(0x427363697274656DLL, 0xEB00000000657361, forTopic._countAndFlagsBits, forTopic._object, v6);
  sub_1DB330D60(v6, v4);
  if (!v5)
  {
    sub_1DB3151CC(v6);
    sub_1DB30623C(v4, &qword_1ECC42E38, &qword_1DB50FB80);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
    goto LABEL_5;
  }

  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_1DB408B14(&v7);
  sub_1DB3151CC(v6);
  __swift_destroy_boxed_opaque_existential_0(v4);
  if (!*(&v8 + 1))
  {
LABEL_5:
    sub_1DB30623C(&v7, &qword_1ECC42EA0, &qword_1DB50FB88);
    v1 = 0;
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
  v4[0] = 0;
  sub_1DB50A4A0();
  v1 = v4[0];
  sub_1DB317740(&v7);
LABEL_6:
  v3 = v1;
  result.value._rawValue = v3;
  result.is_nil = v2;
  return result;
}

Swift::String_optional __swiftcall MetricsEventLinterBagConfiguration.compoundSeparator(forTopic:)(Swift::String forTopic)
{
  sub_1DB3BA598(0xD000000000000011, 0x80000001DB52C1C0, forTopic._countAndFlagsBits, forTopic._object, v7);
  v1 = JSONObject.string.getter();
  v3 = v2;
  sub_1DB3151CC(v7);
  v4 = v1;
  v5 = v3;
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t MetricsEventLinterBagConfiguration.deResolutionRules(forTopic:)(uint64_t a1, uint64_t a2)
{
  sub_1DB3BA598(0x6569467365526564, 0xEB0000000073646CLL, a1, a2, v6);
  v2 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  v3 = sub_1DB320CB8(v6, v2);
  v4 = sub_1DB375454(v3);

  return v4;
}

double MetricsEventLinterBagConfiguration.additionalRules(forTopic:)(uint64_t a1, uint64_t a2)
{
  sub_1DB3BA598(0xD00000000000001DLL, 0x80000001DB52C1E0, a1, a2, v5);
  v2 = JSONObject.BOOL.getter();
  sub_1DB3151CC(v5);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43400, &qword_1DB5178F0);
    v4 = swift_allocObject();
    *&result = 1;
    *(v4 + 16) = xmmword_1DB50EE90;
    *(v4 + 56) = &type metadata for MetricsEventLinterEmptyImpressionsRule;
    *(v4 + 64) = &off_1F56FA088;
  }

  return result;
}

uint64_t sub_1DB3BA9EC(uint64_t a1, uint64_t a2)
{
  sub_1DB3BA598(0xD000000000000011, 0x80000001DB52C1C0, a1, a2, v4);
  v2 = JSONObject.string.getter();
  sub_1DB3151CC(v4);
  return v2;
}

uint64_t sub_1DB3BAA58(uint64_t a1, uint64_t a2)
{
  sub_1DB3BA598(0x6569467365526564, 0xEB0000000073646CLL, a1, a2, v6);
  v2 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  v3 = sub_1DB320CB8(v6, v2);
  v4 = sub_1DB375454(v3);

  return v4;
}

uint64_t ExpressibleByJSON.init(tryDeserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v11;
  sub_1DB30C4B8(v13, v21, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v22)
  {
    v14 = __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_1DB300B14(v14, v20);
    sub_1DB315520();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v19 = a4;
      __swift_destroy_boxed_opaque_existential_0(v21);
      sub_1DB3171C0(a1, v21);
      v20[0] = v12;
      v16 = *(a3 + 8);

      v16(v21, v20, a2, a3);
      sub_1DB3151CC(a1);

      a4 = v19;
      (*(v8 + 32))(v19, v10, a2);
      v15 = 0;
      return (*(v8 + 56))(a4, v15, 1, a2);
    }

    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  else
  {

    sub_1DB30623C(v21, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  v15 = 1;
  return (*(v8 + 56))(a4, v15, 1, a2);
}

void ExpressibleByJSON<>.init(deserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1DB50B3E0();
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  JSONObject.decode<A>(_:using:)(a3, a2, a3, a5);
  if (v5)
  {
    v24 = v5;
    v16 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {

      v17 = v23;
      (*(v23 + 32))(v15, v12, v10);
      sub_1DB315178();
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DB50EE90;
      *(v20 + 32) = swift_allocError();
      (*(v17 + 16))(v21, v15, v10);
      *v19 = a3;
      v19[1] = v20;
      v19[2] &= 0xFFFFFFFFFFFFFF8uLL;
      swift_willThrow();

      sub_1DB3151CC(a1);
      (*(v17 + 8))(v15, v10);
    }

    else
    {

      sub_1DB3151CC(a1);
    }
  }

  else
  {

    sub_1DB3151CC(a1);
  }
}

uint64_t sub_1DB3BB184@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1DB3924C8(a1, *a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

unint64_t sub_1DB3BB1EC@<X0>(uint64_t a1@<X0>, id *a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_1DB39350C(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

unint64_t sub_1DB3BB218@<X0>(uint64_t a1@<X0>, void **a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_1DB392794(a1, *a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t ModelMergingError.errorDescription.getter()
{
  sub_1DB3BB3F4(v0, &v6);
  if (!v7)
  {
    return 0xD000000000000047;
  }

  if (v7 == 1)
  {
    return 0xD00000000000004DLL;
  }

  sub_1DB30C200(&v6, &v4);
  sub_1DB30C200(&v8, &v2);
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000026, 0x80000001DB52C2A0);
  __swift_project_boxed_opaque_existential_1(&v4, v5);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0xD000000000000018, 0x80000001DB52C2D0);
  __swift_project_boxed_opaque_existential_1(&v2, v3);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](46, 0xE100000000000000);
  __swift_destroy_boxed_opaque_existential_0(&v2);
  __swift_destroy_boxed_opaque_existential_0(&v4);
  return 0;
}

unint64_t sub_1DB3BB430()
{
  result = qword_1ECC44D30[0];
  if (!qword_1ECC44D30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC44D30);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7JetCore17ModelMergingErrorO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB3BB4DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 64))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB3BB530(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_1DB3BB594(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void JSONInitFailureObserver.tryingToEncode(_:didFailWith:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DB50B400();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  sub_1DB50BC80();
  v12 = a2;
  sub_1DB50B3C0();
  v13 = sub_1DB50B410();
  v14 = swift_allocError();
  v16 = v15;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0) + 48);
  *(v16 + 3) = swift_getMetatypeMetadata();
  *v16 = a1;
  (*(v9 + 16))(&v16[v17], v11, v8);
  (*(*(v13 - 8) + 104))(v16, *MEMORY[0x1E69E6B30], v13);
  (*(a4 + 8))(a1, v14, a3, a4);
  (*(v9 + 8))(v11, v8);
}

uint64_t AsyncObjectGraphMetrics.BuiltDependency.typeName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AsyncObjectGraphMetrics.BuiltDependency.typeName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

BOOL static AsyncObjectGraphMetrics.BuiltDependency.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1DB50BA30();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

BOOL sub_1DB3BB94C(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1DB50BA30();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

char *sub_1DB3BB9D4(uint64_t *a1, double a2)
{
  v3 = v2;
  if (qword_1ECC42228 != -1)
  {
    swift_once();
  }

  v5 = qword_1ECC466F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50F8D0;
  v48 = sub_1DB301BC0(0, 10, 0, MEMORY[0x1E69E7CC0]);
  v7._countAndFlagsBits = 0x676E69646C697542;
  v7._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v8 = sub_1DB50BEE0();
  v9 = MEMORY[0x1E69E6158];
  v47 = MEMORY[0x1E69E6158];
  v46[0] = v8;
  v46[1] = v10;
  sub_1DB301CDC(v46, v42);
  v43 = 0u;
  v44 = 0u;
  sub_1DB301D4C(v42, &v43);
  v45 = 0;
  v11 = v48;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1DB301BC0(0, *(v11 + 2) + 1, 1, v11);
    v48 = v11;
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1DB301BC0((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[40 * v13];
  v15 = v43;
  v16 = v44;
  v14[64] = v45;
  *(v14 + 2) = v15;
  *(v14 + 3) = v16;
  v48 = v11;
  sub_1DB301DBC(v46);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  *(v6 + 32) = v48;
  v48 = sub_1DB301BC0(0, 14, 0, MEMORY[0x1E69E7CC0]);
  v18._countAndFlagsBits = 0x206B6F6F74;
  v18._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  v47 = MEMORY[0x1E69E63B0];
  *v46 = a2;
  sub_1DB301CDC(v46, v42);
  v43 = 0u;
  v44 = 0u;
  sub_1DB301D4C(v42, &v43);
  v45 = 0;
  v19 = v48;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = v43;
  v24 = v44;
  v22[64] = v45;
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  v48 = v19;
  sub_1DB301DBC(v46);
  v25._countAndFlagsBits = 0x73646E6F63657320;
  v25._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v6 + 40) = v48;
  v26 = sub_1DB50AF40();
  if (os_log_type_enabled(v5, v26))
  {
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v27 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v27[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v27 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v29 = swift_allocObject();
    *(v29 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v43 = v6;
    *(&v43 + 1) = sub_1DB31485C;
    *&v44 = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v30 = sub_1DB50A5E0();
    v32 = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1DB50EE90;
    *(v33 + 56) = v9;
    *(v33 + 64) = sub_1DB31494C();
    *(v33 + 32) = v30;
    *(v33 + 40) = v32;
    sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v5, v26, v33);
  }

  v34 = sub_1DB50BEE0();
  v36 = v35;
  v37 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v37;
  if ((result & 1) == 0)
  {
    result = sub_1DB30324C(0, *(v37 + 2) + 1, 1, v37);
    v37 = result;
    *v3 = result;
  }

  v40 = *(v37 + 2);
  v39 = *(v37 + 3);
  if (v40 >= v39 >> 1)
  {
    result = sub_1DB30324C((v39 > 1), v40 + 1, 1, v37);
    v37 = result;
  }

  *(v37 + 2) = v40 + 1;
  v41 = &v37[24 * v40];
  *(v41 + 4) = v34;
  *(v41 + 5) = v36;
  *(v41 + 6) = a2;
  *v3 = v37;
  return result;
}

unint64_t JSONError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v3 >> 61;
  if ((v3 >> 61) > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        v28 = 0;
        sub_1DB50B320();
        MEMORY[0x1E1285C70](0xD00000000000002CLL, 0x80000001DB52C390);
        v17 = sub_1DB50BEE0();
        MEMORY[0x1E1285C70](v17);

        v7 = "presenting polymorphic type ";
        v8 = 0xD000000000000015;
        goto LABEL_13;
      }

      if (v5 == 4)
      {
        v28 = 0;
        sub_1DB50B320();
        MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52C340);
        v6 = sub_1DB50BEE0();
        MEMORY[0x1E1285C70](v6);

        v7 = "presenting enum-like type ";
        v8 = 0xD000000000000012;
LABEL_13:
        MEMORY[0x1E1285C70](v8, v7 | 0x8000000000000000);
        MEMORY[0x1E1285C70](v1, v2);
        v10 = 46;
        v11 = 0xE100000000000000;
        goto LABEL_14;
      }

LABEL_18:
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52C320);
      sub_1DB50B530();
      return 0;
    }

    v12 = v4[2];
    if (v12)
    {
      if (v12 == 1)
      {
        v13 = v4[4];
        swift_getErrorValue();
        v14 = v13;
        v12 = sub_1DB50BC80();
        v16 = v15;
      }

      else
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44C08, &qword_1DB517538);
        sub_1DB3B81EC();
        v12 = sub_1DB50A5E0();
        v16 = v22;
      }
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v28 = 0;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB52C3E0);
    v23 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v23);

    MEMORY[0x1E1285C70](0xD00000000000001CLL, 0x80000001DB52C400);
    MEMORY[0x1E1285C70](v1, v2);
    v24 = 2109024;
    v25 = 0xE300000000000000;
LABEL_25:
    MEMORY[0x1E1285C70](v24, v25);
    MEMORY[0x1E1285C70](v12, v16);

    return v28;
  }

  if (!v5)
  {
    v12 = v2[2];
    if (v12)
    {
      if (v12 == 1)
      {
        v18 = v2[4];
        swift_getErrorValue();
        v19 = v18;
        v12 = sub_1DB50BC80();
        v16 = v20;
      }

      else
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44C08, &qword_1DB517538);
        sub_1DB3B81EC();
        v12 = sub_1DB50A5E0();
        v16 = v26;
        sub_1DB3BC478(v1, v2, v3, v4);
      }
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    sub_1DB50B320();

    v28 = 0xD00000000000001BLL;
    v27 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v27);

    v24 = 0x666C616D20736920;
    v25 = 0xEF202E64656D726FLL;
    goto LABEL_25;
  }

  if (v5 != 1)
  {
    goto LABEL_18;
  }

  v28 = 0;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB52C3E0);
  v9 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v9);

  MEMORY[0x1E1285C70](0xD00000000000001FLL, 0x80000001DB52C420);
  MEMORY[0x1E1285C70](v1, v2);
  v10 = 11872;
  v11 = 0xE200000000000000;
LABEL_14:
  MEMORY[0x1E1285C70](v10, v11);
  return v28;
}

void sub_1DB3BC478(int a1, id a2, unint64_t a3, void *a4)
{
  v5 = a3 >> 61;
  if ((a3 >> 61) <= 3)
  {
    if (v5 <= 1)
    {

LABEL_5:

      return;
    }

    if (v5 == 2)
    {

      goto LABEL_5;
    }

LABEL_16:

    goto LABEL_5;
  }

  if (v5 > 5)
  {
    if (v5 == 6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v5 == 4)
    {
      goto LABEL_16;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7JetCore9JSONErrorO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 61;
  if (v1 == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DB3BC54C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 32))
  {
    return (*a1 + 121);
  }

  v3 = (((*(a1 + 16) >> 57) >> 4) | (8 * ((*(a1 + 16) >> 57) & 8 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DB3BC5A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 121;
    *(result + 8) = 0;
    if (a3 >= 0x79)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_1DB3BC610(uint64_t result, uint64_t a2)
{
  if (a2 < 7)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 7);
    *(result + 8) = xmmword_1DB517BB0;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t BaseObjectGraph.inject<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DB306AF4;

  return BaseObjectGraph._inject<A>(_:)(a1, a2, a3, a4);
}

__n128 CodeAnyHashable.init(wrappedValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

double CodeAnyHashable.init(from:)@<D0>(void *a1@<X0>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  sub_1DB30BE90(v8, v11);
  sub_1DB50ADB0();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    sub_1DB50B2B0();
    __swift_destroy_boxed_opaque_existential_0(a1);
    result = *&v12;
    v10 = v13;
    *a5 = v12;
    *(a5 + 16) = v10;
    *(a5 + 32) = v14;
  }

  return result;
}

uint64_t CodeAnyHashable.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1DB50B120();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB50B290();
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v8, 0, 1, v4);
    (*(v9 + 32))(v12, v8, v4);
    sub_1DB50A5B0();
    return (*(v9 + 8))(v12, v4);
  }

  else
  {
    v14(v8, 1, 1, v4);
    (*(v6 + 8))(v8, v5);
    v16 = sub_1DB50B410();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0);
    v18[3] = MEMORY[0x1E69E69B8];
    v19 = swift_allocObject();
    *v18 = v19;
    sub_1DB314C3C(v2, v19 + 16);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE00();
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_1DB50B320();

    strcpy(v21, "Value is not <");
    HIBYTE(v21[1]) = -18;
    v20 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v20);

    MEMORY[0x1E1285C70](62, 0xE100000000000000);
    sub_1DB50B3C0();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B30], v16);
    return swift_willThrow();
  }
}

uint64_t CodeAnyHashable.hashValue.getter()
{
  sub_1DB50BCF0();
  _s7JetCore15CodeAnyHashableV4hash4intoys6HasherVz_tF_0();
  return sub_1DB50BD30();
}

uint64_t sub_1DB3BCC78(uint64_t a1)
{
  sub_1DB50BCF0();
  CodeAnyHashable.hash(into:)();
  return sub_1DB50BD30();
}

uint64_t sub_1DB3BCD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB3BCD64()
{
  v0 = sub_1DB50AFA0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DB50AF80();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DB50A440();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1DB357BD4();
  sub_1DB50A430();
  sub_1DB50AF70();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1DB50AFD0();
  qword_1ECC44DB8 = result;
  return result;
}

id static InMemoryJetPackLoader.sharedUnpackQueue.getter()
{
  if (qword_1ECC420A8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECC44DB8;

  return v1;
}

__n128 InMemoryJetPackLoader.init(signingPolicy:keyProvider:)@<Q0>(__n128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *a2;
  v5 = a2[1];
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  *(a3 + 48) = *(a2 + 4);
  return result;
}

__n128 InMemoryJetPackLoader.init(signingPolicy:keyProviders:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  a3[2].n128_u64[1] = &type metadata for JetPackCompoundKeyProvider;
  a3[3].n128_u64[0] = &off_1F5701348;
  a3[1].n128_u64[0] = a2;
  result = *a1;
  *a3 = *a1;
  return result;
}

uint64_t InMemoryJetPackLoader.bundle(from:on:)(void *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v6 = __swift_project_boxed_opaque_existential_1(a2, v4);

  return sub_1DB3BE8C0(a1, v6, v2, v4, v5);
}

uint64_t sub_1DB3BD00C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v20 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BE0, &unk_1DB518FC0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21[-1] - v8);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 8))(v10, v11);
  sub_1DB30BE90(a1, v29);
  sub_1DB3BEB60(a3, &v24);
  v12 = swift_allocObject();
  sub_1DB2FEA0C(v29, v12 + 16);
  v13 = v25;
  *(v12 + 56) = v24;
  *(v12 + 72) = v13;
  *(v12 + 88) = v26;
  *(v12 + 104) = v27;
  *v9 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DC0, &unk_1DB518040);
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v14[2] = v15;
  sub_1DB30C06C(v9, v14 + *(*v14 + 96), &unk_1ECC42BE0, &unk_1DB518FC0);
  v16 = swift_allocObject();
  v16[2] = sub_1DB3BEBB4;
  v16[3] = v12;
  v16[4] = v14;
  *&v24 = sub_1DB3BEBD4;
  *(&v24 + 1) = v16;
  *&v25 = sub_1DB3BEBE0;
  *(&v25 + 1) = v14;
  sub_1DB30BE90(a2, &v26);
  v28 = 0;
  swift_retain_n();

  sub_1DB30828C(&v24);

  sub_1DB30623C(&v24, &unk_1ECC45030, &qword_1DB50F4D0);
  sub_1DB30BE90(a1, &v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430C8, &unk_1DB51C850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DC8, &unk_1DB518050);
  if (swift_dynamicCast())
  {
    sub_1DB2FEA0C(v22, v29);
    sub_1DB30BE90(v29, &v24);
    v17 = swift_allocObject();
    sub_1DB2FEA0C(&v24, v17 + 16);
    sub_1DB30BE90(v29, v22);
    v18 = swift_allocObject();
    sub_1DB2FEA0C(v22, v18 + 16);
    v21[3] = &type metadata for SyncTaskScheduler;
    v21[4] = &protocol witness table for SyncTaskScheduler;
    *&v24 = sub_1DB3BEBE8;
    *(&v24 + 1) = v17;
    *&v25 = sub_1DB3BEC3C;
    *(&v25 + 1) = v18;
    sub_1DB30BE90(v21, &v26);
    v28 = 0;

    sub_1DB30908C(&v24);

    sub_1DB30623C(&v24, qword_1ECC453B0, &qword_1DB50F720);
    __swift_destroy_boxed_opaque_existential_0(v29);
    result = __swift_destroy_boxed_opaque_existential_0(v21);
  }

  else
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    result = sub_1DB30623C(v22, &qword_1ECC44DD0, &unk_1DB51C860);
  }

  *v20 = v14;
  return result;
}

uint64_t sub_1DB3BD450@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v39 = *a1;
  sub_1DB30BE90(a2, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430C8, &unk_1DB51C850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DD8, &unk_1DB518250);
  if (swift_dynamicCast())
  {
    v13 = *(&v41 + 1);
    v14 = *v42;
    __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
    (*(v14 + 8))(v13, v14);
    __swift_destroy_boxed_opaque_existential_0(&v40);
  }

  else
  {
    *v42 = 0;
    v40 = 0u;
    v41 = 0u;
    sub_1DB30623C(&v40, &qword_1ECC44DE0, &unk_1DB518060);
    v15 = sub_1DB509CA0();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  }

  v16 = type metadata accessor for InMemoryJetPackResourceBundle(0);
  v17 = swift_allocBox();
  v19 = v18;
  sub_1DB30C4B8(v12, v9, &unk_1ECC42B20, &unk_1DB50F6A0);
  v20 = MEMORY[0x1E69E7CC0];
  *v19 = sub_1DB313EF8(MEMORY[0x1E69E7CC0]);
  v19[1] = sub_1DB313FFC(v20);
  sub_1DB30C06C(v9, v19 + *(v16 + 24), &unk_1ECC42B20, &unk_1DB50F6A0);
  v21 = [objc_allocWithZone(MEMORY[0x1E69AB848]) init];
  sub_1DB3BEB60(a3, &v40);
  v22 = swift_allocObject();
  v23 = v41;
  *(v22 + 16) = v40;
  *(v22 + 32) = v23;
  *(v22 + 48) = *v42;
  *(v22 + 64) = *&v42[16];
  aBlock[4] = sub_1DB3BECA0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3BEFF4;
  aBlock[3] = &block_descriptor_8;
  v24 = _Block_copy(aBlock);

  [v21 setKeyForIdentifier_];
  _Block_release(v24);
  *v42 = sub_1DB3BECC0;
  *&v42[8] = v17;
  *&v40 = MEMORY[0x1E69E9820];
  *(&v40 + 1) = 1107296256;
  *&v41 = sub_1DB3BF08C;
  *(&v41 + 1) = &block_descriptor_16;
  v25 = _Block_copy(&v40);

  [v21 setFileEntryFound_];
  _Block_release(v25);
  *v42 = sub_1DB3BECC8;
  *&v42[8] = v17;
  *&v40 = MEMORY[0x1E69E9820];
  *(&v40 + 1) = 1107296256;
  *&v41 = sub_1DB3BF108;
  *(&v41 + 1) = &block_descriptor_19_0;
  v26 = _Block_copy(&v40);

  [v21 setDataSegmentFound_];
  _Block_release(v26);
  v27 = *(a3 + 8);
  if ((v27 & 0x3000000000000000) == 0x2000000000000000 && v27 == 0x2000000000000000 && *a3 == 2)
  {
    v28 = xmmword_1DB517E90;
  }

  else
  {
    v44 = 0;
    v43 = 0u;
    *&v42[8] = 0u;
    *(&v41 + 1) = &type metadata for DefaultCoreAnalyticsLoggerProvider;
    *v42 = &protocol witness table for DefaultCoreAnalyticsLoggerProvider;
    sub_1DB3C19F8();
    sub_1DB3BECD0(&v40);
    v28 = *a3;
  }

  v40 = v28;
  v29 = sub_1DB46D38C();
  v30 = *(a3 + 8);
  v31 = (v30 >> 60) & 3;
  v32 = !v31 || v31 != 1 && !(*a3 & 0xFFFFFFFFFFFFFFFELL | v30 ^ 0x2000000000000000);
  aBlock[0] = 0;
  v33 = [v21 processStream:v39 signatureVerifier:v29 options:v32 error:aBlock];

  if (v33)
  {
    v34 = aBlock[0];
    sub_1DB30623C(v12, &unk_1ECC42B20, &unk_1DB50F6A0);

    swift_beginAccess();
    sub_1DB3BED24(v19, v38);
  }

  else
  {
    v36 = aBlock[0];
    sub_1DB509B20();

    swift_willThrow();
    sub_1DB30623C(v12, &unk_1ECC42B20, &unk_1DB50F6A0);
  }
}

uint64_t sub_1DB3BDA18(uint64_t a1, uint64_t a2)
{
  sub_1DB30C4B8(a2 + 16, v7, &qword_1ECC44DE8, &unk_1DB518070);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 8))(a1, v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    sub_1DB30623C(v7, &qword_1ECC44DE8, &unk_1DB518070);
    return 0;
  }

  return v5;
}

uint64_t sub_1DB3BDADC(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for InMemoryJetPackResourceBundle(0);
  v5 = swift_projectBox();
  v6 = [a2 readData];
  v7 = sub_1DB509CE0();
  v9 = v8;

  v10 = [a1 pathname];
  v11 = sub_1DB50A650();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  JetPackPath.init(_:)(v14);
  swift_beginAccess();
  sub_1DB30C1AC(v7, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v5;
  *v5 = 0x8000000000000000;
  sub_1DB31DDCC(v7, v9, v18, isUniquelyReferenced_nonNull_native);

  *v5 = v17;
  swift_endAccess();
  sub_1DB30C158(v7, v9);
  return 1;
}

uint64_t sub_1DB3BDC14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1DB50A6B0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  type metadata accessor for InMemoryJetPackResourceBundle(0);
  v8 = swift_projectBox();
  v9 = [a3 readData];
  v10 = sub_1DB509CE0();
  v12 = v11;

  swift_beginAccess();

  sub_1DB30C1AC(v10, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42[0] = *(v8 + 8);
  *(v8 + 8) = 0x8000000000000000;
  sub_1DB31DF40(v10, v12, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v8 + 8) = v42[0];
  swift_endAccess();
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {
    sub_1DB50A690();
    v14 = sub_1DB50A670();
    v16 = v15;
    if (qword_1ECC42238 != -1)
    {
      swift_once();
    }

    v17 = qword_1ECC466F8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DB50EE90;
    v43 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v19._object = 0x80000001DB52C4F0;
    v19._countAndFlagsBits = 0xD00000000000001BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    if (v16)
    {
      v20 = MEMORY[0x1E69E6158];
    }

    else
    {
      v14 = 0;
      v20 = 0;
      v42[2] = 0;
    }

    v42[0] = v14;
    v42[1] = v16;
    v42[3] = v20;
    sub_1DB30C4B8(v42, v38, &qword_1ECC426B0, &qword_1DB50EEB0);
    v39 = 0u;
    v40 = 0u;
    sub_1DB301D4C(v38, &v39);
    v41 = 0;
    v21 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[40 * v23];
    v25 = v39;
    v26 = v40;
    v24[64] = v41;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v43 = v21;
    sub_1DB30623C(v42, &qword_1ECC426B0, &qword_1DB50EEB0);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v18 + 32) = v43;
    v28 = sub_1DB50AF40();
    if (os_log_type_enabled(v17, v28))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v29 = MEMORY[0x1E69E6158];
      v30 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v30[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v30 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v32 = swift_allocObject();
      *(v32 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v39 = v18;
      *(&v39 + 1) = sub_1DB31485C;
      *&v40 = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v33 = sub_1DB50A5E0();
      v35 = v34;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1DB50EE90;
      *(v36 + 56) = v29;
      *(v36 + 64) = sub_1DB31494C();
      *(v36 + 32) = v33;
      *(v36 + 40) = v35;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v17, v28, v36);
    }
  }

  sub_1DB30C158(v10, v12);
  return 1;
}

uint64_t sub_1DB3BE110(uint64_t a1, void *a2)
{
  if (qword_1ECC42238 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECC466F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v24 = sub_1DB301BC0(0, 63, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001DB52C440;
  v5._countAndFlagsBits = 0xD00000000000003ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  swift_getErrorValue();
  v23[3] = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v21, v22);
  sub_1DB30C4B8(v23, v17, &qword_1ECC426B0, &qword_1DB50EEB0);
  v18 = 0u;
  v19 = 0u;
  sub_1DB301D4C(v17, &v18);
  v20 = 0;
  v7 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v7 + 2) + 1, 1, v7);
    v24 = v7;
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[40 * v9];
  v11 = v18;
  v12 = v19;
  v10[64] = v20;
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  v24 = v7;
  sub_1DB30623C(v23, &qword_1ECC426B0, &qword_1DB50EEB0);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v4 + 32) = v24;
  *&v18 = v3;
  LOBYTE(v23[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v4, v23);

  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  return (*(v15 + 8))(v14, v15);
}

uint64_t InMemoryJetPackLoader.bundle(from:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  type metadata accessor for InMemoryJetPackResourceBundle(0);
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB3BE40C, 0, 0);
}

uint64_t sub_1DB3BE40C()
{
  v6 = v0;
  v0[23] = &type metadata for SyncTaskScheduler;
  v0[24] = &protocol witness table for SyncTaskScheduler;
  type metadata accessor for BaseObjectGraph();
  v1 = static BaseObjectGraph.current.getter();
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v3 = v0[27];
  v2 = v0[28];
  v0[25] = v1;

  swift_task_localValuePush();
  sub_1DB3BD00C(v3, (v0 + 20), v2, &v5);
  swift_task_localValuePop();

  v0[30] = v5;
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);

  return MEMORY[0x1EEE6DFA0](sub_1DB3BE550, 0, 0);
}

uint64_t sub_1DB3BE550()
{
  v1 = v0 + 2;
  v2 = v0[29];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1DB3BE618;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB30908C(v3);
  sub_1DB30623C(v3, qword_1ECC453B0, &qword_1DB50F720);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB3BE618(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 48);
  *(*v1 + 248) = v4;
  if (v4)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB3BE780, 0, 0);
  }

  else
  {
    v5 = *(v2 + 232);
    v6 = *(v2 + 208);

    sub_1DB3BE9DC(v5, v6);

    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t sub_1DB3BE780()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB3BE7EC(uint64_t *a1, void (*a2)(uint64_t *, __n128))
{
  v4 = type metadata accessor for InMemoryJetPackResourceBundle(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  a2(&v10, v5);
  sub_1DB3F8DEC(v7);
  return sub_1DB3BEC44(v7);
}

uint64_t sub_1DB3BE8C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[3] = a4;
  v14[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a2, a4);
  type metadata accessor for BaseObjectGraph();
  v10 = static BaseObjectGraph.current.getter();
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v13 = v10;

  swift_task_localValuePush();
  sub_1DB3BD00C(a1, v14, a3, &v13);
  swift_task_localValuePop();

  v11 = v13;
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

uint64_t sub_1DB3BE9DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InMemoryJetPackResourceBundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t get_enum_tag_for_layout_string_7JetCore0A17PackSigningPolicyO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_7JetCore0A15PackKeyProvider_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB3BEA94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1DB3BEAF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB3BEB98(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_1DB30C158(result, a2);
}

uint64_t sub_1DB3BEBE8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1DB3BEC44(uint64_t a1)
{
  v2 = type metadata accessor for InMemoryJetPackResourceBundle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DB3BED24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InMemoryJetPackResourceBundle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *SendableWrapper.__allocating_init(_:)(uint64_t a1)
{
  v3 = swift_allocObject();
  v3[2] = sub_1DB388A48(a1, *(*v3 + 80));
  (*(*(*(v1 + 80) - 8) + 8))(a1);
  return v3;
}

void *SendableWrapper.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1DB3BEF54(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

void SendableWrapper.withValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[2];
  v7 = *(*v3 + 80);
  v8 = a3;
  v9 = a1;
  v10 = a2;
  sub_1DB35B4EC(sub_1DB3BEF88, &v6, v5, v7, a3);
}

uint64_t SendableWrapper.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

id sub_1DB3BEFF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v8 = sub_1DB509CD0();
    sub_1DB32E340(v4, v6);
    v7 = v8;
  }

  return v7;
}

uint64_t sub_1DB3BF08C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  LOBYTE(a2) = v5(v6, v7);

  return a2 & 1;
}

uint64_t sub_1DB3BF108(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1DB50A650();
  v7 = v6;

  v8 = a3;
  LOBYTE(v5) = v4(v5, v7, v8);

  return v5 & 1;
}

uint64_t sub_1DB3BF18C()
{
  v0 = sub_1DB50AFA0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DB50AF80();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DB50A440();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1DB357BD4();
  sub_1DB50A430();
  sub_1DB50AF70();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1DB50AFD0();
  qword_1ECC44DF0 = result;
  return result;
}

id static DiskJetPackLoader.sharedUnpackQueue.getter()
{
  if (qword_1ECC420B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECC44DF0;

  return v1;
}

__n128 DiskJetPackLoader.init(signingPolicy:keyProvider:)@<Q0>(__n128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *a2;
  v5 = a2[1];
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  *(a3 + 48) = *(a2 + 4);
  return result;
}

__n128 DiskJetPackLoader.init(signingPolicy:keyProviders:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  a3[2].n128_u64[1] = &type metadata for JetPackCompoundKeyProvider;
  a3[3].n128_u64[0] = &off_1F5701348;
  a3[1].n128_u64[0] = a2;
  result = *a1;
  *a3 = *a1;
  return result;
}

void *DiskJetPackLoader.bundle(from:baseURL:automaticallyCleanUp:on:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = a4[3];
  v9 = a4[4];
  v10 = __swift_project_boxed_opaque_existential_1(a4, v8);

  return sub_1DB3C11CC(a1, a2, v5, v10, v4, v8, v9);
}

uint64_t sub_1DB3BF44C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a5;
  LODWORD(v74) = a4;
  v76 = a3;
  v65 = a6;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v73 = type metadata accessor for DiskJetPackResourceBundle(0);
  MEMORY[0x1EEE9AC00](v73);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DB509CA0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v65 - v21;
  v68 = *a1;
  sub_1DB30BE90(a2, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430C8, &unk_1DB51C850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DD8, &unk_1DB518250);
  v23 = swift_dynamicCast();
  v66 = v6;
  v75 = v10;
  v71 = v16;
  if (v23)
  {
    v25 = *(&v80 + 1);
    v24 = *v81;
    __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
    (*(v24 + 8))(v25, v24);
    __swift_destroy_boxed_opaque_existential_0(&v79);
  }

  else
  {
    *v81 = 0;
    v79 = 0u;
    v80 = 0u;
    sub_1DB30623C(&v79, &qword_1ECC44DE0, &unk_1DB518060);
    (*(v12 + 56))(v22, 1, 1, v11);
  }

  v26 = v22;
  v27 = v12;
  v70 = v12;
  v28 = v73;
  v77 = swift_allocBox();
  v30 = v29;
  v31 = *(v27 + 16);
  v67 = v27 + 16;
  v32 = v71;
  v31(v71, v76, v11);
  v78 = v31;
  v33 = v11;
  v76 = v26;
  sub_1DB30C4B8(v26, v19, &unk_1ECC42B20, &unk_1DB50F6A0);
  *v30 = sub_1DB313FFC(MEMORY[0x1E69E7CC0]);
  sub_1DB30C4B8(v19, v30 + v28[6], &unk_1ECC42B20, &unk_1DB50F6A0);
  v34 = v72;
  v31(v72, v32, v11);
  type metadata accessor for JetPackResourceBundleDiskLocation(0);
  swift_allocObject();
  v35 = sub_1DB4A9360(v34, v74 & 1);
  v36 = v70;
  sub_1DB30623C(v19, &unk_1ECC42B20, &unk_1DB50F6A0);
  v37 = *(v36 + 8);
  v37(v32, v33);
  *(v30 + 8) = v35;
  v73 = objc_opt_self();
  v38 = [v73 defaultManager];
  v74 = v30;
  v39 = v75;
  sub_1DB3C196C(v30, v75);
  v78(v32, *(v39 + 8) + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url, v33);
  sub_1DB3C1910(v39);
  sub_1DB509C40();
  v37(v32, v33);
  v40 = sub_1DB50A620();

  LOBYTE(v30) = [v38 fileExistsAtPath_];

  if ((v30 & 1) == 0)
  {
    v41 = [v73 defaultManager];
    sub_1DB3C196C(v74, v39);
    v78(v32, *(v39 + 8) + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url, v33);
    sub_1DB3C1910(v39);
    v42 = sub_1DB509BC0();
    v37(v32, v33);
    *&v79 = 0;
    v43 = [v41 createDirectoryAtURL:v42 withIntermediateDirectories:1 attributes:0 error:&v79];

    if (!v43)
    {
      v64 = v79;
      sub_1DB509B20();

      swift_willThrow();
      goto LABEL_21;
    }

    v44 = v79;
  }

  v45 = [objc_allocWithZone(MEMORY[0x1E69AB848]) init];
  v46 = v69;
  sub_1DB3C17BC(v69, &v79);
  v47 = swift_allocObject();
  v48 = v80;
  *(v47 + 16) = v79;
  *(v47 + 32) = v48;
  *(v47 + 48) = *v81;
  *(v47 + 64) = *&v81[16];
  aBlock[4] = sub_1DB3BECA0;
  aBlock[5] = v47;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3BEFF4;
  aBlock[3] = &block_descriptor_9;
  v49 = _Block_copy(aBlock);

  [v45 setKeyForIdentifier_];
  _Block_release(v49);
  v50 = v77;
  *v81 = sub_1DB3C19E8;
  *&v81[8] = v77;
  *&v79 = MEMORY[0x1E69E9820];
  *(&v79 + 1) = 1107296256;
  *&v80 = sub_1DB3BF08C;
  *(&v80 + 1) = &block_descriptor_16_0;
  v51 = _Block_copy(&v79);

  [v45 setFileEntryFound_];
  _Block_release(v51);
  *v81 = sub_1DB3C19F0;
  *&v81[8] = v50;
  *&v79 = MEMORY[0x1E69E9820];
  *(&v79 + 1) = 1107296256;
  *&v80 = sub_1DB3BF108;
  *(&v80 + 1) = &block_descriptor_19_1;
  v52 = _Block_copy(&v79);

  [v45 setDataSegmentFound_];
  _Block_release(v52);
  v53 = *(v46 + 8);
  if ((v53 & 0x3000000000000000) == 0x2000000000000000 && v53 == 0x2000000000000000 && *v46 == 2)
  {
    v54 = xmmword_1DB517E90;
  }

  else
  {
    v83 = 0;
    v82 = 0u;
    *&v81[8] = 0u;
    *(&v80 + 1) = &type metadata for DefaultCoreAnalyticsLoggerProvider;
    *v81 = &protocol witness table for DefaultCoreAnalyticsLoggerProvider;
    sub_1DB3C19F8();
    sub_1DB3BECD0(&v79);
    v54 = *v46;
  }

  v79 = v54;
  v55 = sub_1DB46D38C();
  v56 = *(v46 + 8);
  v57 = (v56 >> 60) & 3;
  v58 = !v57 || v57 != 1 && !(*v46 & 0xFFFFFFFFFFFFFFFELL | v56 ^ 0x2000000000000000);
  aBlock[0] = 0;
  v59 = [v45 processStream:v68 signatureVerifier:v55 options:v58 error:{aBlock, v65}];

  if (v59)
  {
    v60 = aBlock[0];
    sub_1DB30623C(v76, &unk_1ECC42B20, &unk_1DB50F6A0);

    v61 = v74;
    swift_beginAccess();
    sub_1DB3C196C(v61, v65);
  }

  v63 = aBlock[0];
  sub_1DB509B20();

  swift_willThrow();
LABEL_21:
  sub_1DB30623C(v76, &unk_1ECC42B20, &unk_1DB50F6A0);
}

uint64_t sub_1DB3BFDC8(void *a1, uint64_t a2, uint64_t a3)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v5 = sub_1DB509CA0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DiskJetPackResourceBundle(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  swift_beginAccess();
  sub_1DB3C196C(v12, v11);
  (*(v6 + 16))(v8, *(v11 + 1) + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url, v5);
  sub_1DB3C1910(v11);
  sub_1DB509C40();
  (*(v6 + 8))(v8, v5);
  v13 = sub_1DB50A620();

  v19[0] = 0;
  LODWORD(a1) = [a1 writeStream:a2 toDirectory:v13 error:v19];

  if (a1)
  {
    v14 = v19[0];
  }

  else
  {
    v15 = v19[0];
    v16 = sub_1DB509B20();

    swift_willThrow();
  }

  return 1;
}

uint64_t sub_1DB3BFFF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1DB50A6B0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  type metadata accessor for DiskJetPackResourceBundle(0);
  v8 = swift_projectBox();
  v9 = [a3 readData];
  v10 = sub_1DB509CE0();
  v12 = v11;

  swift_beginAccess();

  sub_1DB30C1AC(v10, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42[0] = *v8;
  *v8 = 0x8000000000000000;
  sub_1DB31DF40(v10, v12, a1, a2, isUniquelyReferenced_nonNull_native);

  *v8 = v42[0];
  swift_endAccess();
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {
    sub_1DB50A690();
    v14 = sub_1DB50A670();
    v16 = v15;
    if (qword_1ECC42238 != -1)
    {
      swift_once();
    }

    v17 = qword_1ECC466F8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DB50EE90;
    v43 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v19._object = 0x80000001DB52C4F0;
    v19._countAndFlagsBits = 0xD00000000000001BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    if (v16)
    {
      v20 = MEMORY[0x1E69E6158];
    }

    else
    {
      v14 = 0;
      v20 = 0;
      v42[2] = 0;
    }

    v42[0] = v14;
    v42[1] = v16;
    v42[3] = v20;
    sub_1DB30C4B8(v42, v38, &qword_1ECC426B0, &qword_1DB50EEB0);
    v39 = 0u;
    v40 = 0u;
    sub_1DB301D4C(v38, &v39);
    v41 = 0;
    v21 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[40 * v23];
    v25 = v39;
    v26 = v40;
    v24[64] = v41;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v43 = v21;
    sub_1DB30623C(v42, &qword_1ECC426B0, &qword_1DB50EEB0);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v18 + 32) = v43;
    v28 = sub_1DB50AF40();
    if (os_log_type_enabled(v17, v28))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v29 = MEMORY[0x1E69E6158];
      v30 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v30[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v30 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v32 = swift_allocObject();
      *(v32 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v39 = v18;
      *(&v39 + 1) = sub_1DB31485C;
      *&v40 = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v33 = sub_1DB50A5E0();
      v35 = v34;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1DB50EE90;
      *(v36 + 56) = v29;
      *(v36 + 64) = sub_1DB31494C();
      *(v36 + 32) = v33;
      *(v36 + 40) = v35;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v17, v28, v36);
    }
  }

  sub_1DB30C158(v10, v12);
  return 1;
}

uint64_t sub_1DB3C04F4(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v2);
  return (*(v3 + 16))(v2, v3);
}

uint64_t sub_1DB3C0548(uint64_t a1, void *a2)
{
  if (qword_1ECC42238 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECC466F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v24 = sub_1DB301BC0(0, 59, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001DB52C540;
  v5._countAndFlagsBits = 0xD00000000000003ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  swift_getErrorValue();
  v23[3] = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v21, v22);
  sub_1DB30C4B8(v23, v17, &qword_1ECC426B0, &qword_1DB50EEB0);
  v18 = 0u;
  v19 = 0u;
  sub_1DB301D4C(v17, &v18);
  v20 = 0;
  v7 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v7 + 2) + 1, 1, v7);
    v24 = v7;
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[40 * v9];
  v11 = v18;
  v12 = v19;
  v10[64] = v20;
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  v24 = v7;
  sub_1DB30623C(v23, &qword_1ECC426B0, &qword_1DB50EEB0);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v4 + 32) = v24;
  *&v18 = v3;
  LOBYTE(v23[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v4, v23);

  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  return (*(v15 + 8))(v14, v15);
}

uint64_t DiskJetPackLoader.bundle(from:baseURL:automaticallyCleanUp:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 728) = v4;
  *(v5 + 153) = a4;
  *(v5 + 720) = a3;
  *(v5 + 712) = a2;
  *(v5 + 704) = a1;
  type metadata accessor for DiskJetPackResourceBundle(0);
  *(v5 + 736) = swift_task_alloc();
  *(v5 + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BD0, &unk_1DB518FB0);
  *(v5 + 752) = swift_task_alloc();
  v6 = sub_1DB509CA0();
  *(v5 + 760) = v6;
  v7 = *(v6 - 8);
  *(v5 + 768) = v7;
  *(v5 + 776) = *(v7 + 64);
  *(v5 + 784) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB3C08F0, 0, 0);
}

uint64_t sub_1DB3C08F0()
{
  v25 = (v0 + 536);
  *(v0 + 400) = &type metadata for SyncTaskScheduler;
  *(v0 + 408) = &protocol witness table for SyncTaskScheduler;
  type metadata accessor for BaseObjectGraph();
  v1 = static BaseObjectGraph.current.getter();
  if (qword_1EE30EAE0 != -1)
  {
    v20 = v1;
    swift_once();
    v1 = v20;
  }

  v2 = *(v0 + 784);
  v22 = *(v0 + 776);
  v3 = *(v0 + 768);
  v4 = *(v0 + 760);
  v24 = *(v0 + 752);
  v5 = *(v0 + 728);
  v23 = *(v0 + 153);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  *(v0 + 696) = v1;

  swift_task_localValuePush();
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v9 + 8))(v8, v9);
  sub_1DB30BE90(v7, v0 + 416);
  (*(v3 + 16))(v2, v6, v4);
  sub_1DB3C17BC(v5, v0 + 320);
  v10 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1DB2FEA0C((v0 + 416), v11 + 16);
  (*(v3 + 32))(v11 + v10, v2, v4);
  *(v11 + v10 + v22) = v23;
  v12 = v11 + ((v10 + v22) & 0xFFFFFFFFFFFFFFF8);
  *(v12 + 56) = *(v0 + 368);
  v13 = *(v0 + 336);
  *(v12 + 40) = *(v0 + 352);
  v14 = *(v0 + 320);
  *(v12 + 24) = v13;
  *(v12 + 8) = v14;
  *v24 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DF8, &qword_1DB5180B0);
  v15 = swift_allocObject();
  *(v0 + 792) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v15[2] = v16;
  sub_1DB3C180C(v24, v15 + *(*v15 + 96));
  v17 = swift_allocObject();
  v17[2] = sub_1DB3C17F4;
  v17[3] = v11;
  v17[4] = v15;
  *(v0 + 80) = sub_1DB3C187C;
  *(v0 + 88) = v17;
  *(v0 + 96) = sub_1DB3C1888;
  *(v0 + 104) = v15;
  sub_1DB30BE90(v0 + 376, v0 + 112);
  *(v0 + 152) = 0;
  swift_retain_n();

  sub_1DB30828C(v0 + 80);

  sub_1DB30623C(v0 + 80, &unk_1ECC45030, &qword_1DB50F4D0);
  sub_1DB30BE90(v7, v0 + 496);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430C8, &unk_1DB51C850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DC8, &unk_1DB518050);
  if (swift_dynamicCast())
  {
    sub_1DB2FEA0C(v25, v0 + 456);
    sub_1DB30BE90(v0 + 456, v0 + 576);
    v18 = swift_allocObject();
    sub_1DB2FEA0C((v0 + 576), v18 + 16);
    sub_1DB30BE90(v0 + 456, v0 + 616);
    v19 = swift_allocObject();
    sub_1DB2FEA0C((v0 + 616), v19 + 16);
    *(v0 + 680) = &type metadata for SyncTaskScheduler;
    *(v0 + 688) = &protocol witness table for SyncTaskScheduler;
    *(v0 + 240) = sub_1DB3C18F4;
    *(v0 + 248) = v18;
    *(v0 + 256) = sub_1DB3C18F8;
    *(v0 + 264) = v19;
    sub_1DB30BE90(v0 + 656, v0 + 272);
    *(v0 + 312) = 0;

    sub_1DB309368(v0 + 240);

    sub_1DB30623C(v0 + 240, &unk_1ECC453A0, &unk_1DB50F710);
    __swift_destroy_boxed_opaque_existential_0((v0 + 456));
    __swift_destroy_boxed_opaque_existential_0((v0 + 656));
  }

  else
  {
    *(v0 + 568) = 0;
    *v25 = 0u;
    *(v0 + 552) = 0u;
    sub_1DB30623C(v25, &qword_1ECC44DD0, &unk_1DB51C860);
  }

  swift_task_localValuePop();

  __swift_destroy_boxed_opaque_existential_0((v0 + 376));

  return MEMORY[0x1EEE6DFA0](sub_1DB3C0E0C, 0, 0);
}

uint64_t sub_1DB3C0E0C()
{
  v1 = v0 + 2;
  v2 = v0[92];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1DB3C0ED8;
  v0[20] = swift_continuation_init();
  v3 = (v0 + 20);
  *(v3 + 72) = 1;
  sub_1DB309368(v3);
  sub_1DB30623C(v3, &unk_1ECC453A0, &unk_1DB50F710);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB3C0ED8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 48);
  *(*v1 + 800) = v4;
  if (v4)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB3C1068, 0, 0);
  }

  else
  {
    v5 = *(v2 + 736);
    v6 = *(v2 + 704);

    sub_1DB3C1890(v5, v6);

    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t sub_1DB3C1068()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB3C10F8(uint64_t *a1, void (*a2)(uint64_t *, __n128))
{
  v4 = type metadata accessor for DiskJetPackResourceBundle(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  a2(&v10, v5);
  sub_1DB3F92C0(v7);
  return sub_1DB3C1910(v7);
}

void *sub_1DB3C11CC(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a5;
  v36 = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BD0, &unk_1DB518FB0);
  MEMORY[0x1EEE9AC00](v37);
  v13 = (&v34 - v12);
  v14 = sub_1DB509CA0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[3] = a6;
  v48[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v48);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_0, a4, a6);
  type metadata accessor for BaseObjectGraph();
  v19 = static BaseObjectGraph.current.getter();
  if (qword_1EE30EAE0 != -1)
  {
    v33 = v19;
    swift_once();
    v19 = v33;
  }

  *&v42 = v19;
  v38 = v19;

  swift_task_localValuePush();
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  (*(v21 + 8))(v20, v21);
  sub_1DB30BE90(a1, v47);
  (*(v15 + 16))(&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14);
  sub_1DB3C17BC(v35, &v42);
  v22 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v23 = v22 + v16;
  v24 = swift_allocObject();
  sub_1DB2FEA0C(v47, v24 + 16);
  (*(v15 + 32))(v24 + v22, v17, v14);
  *(v24 + v23) = v36 & 1;
  v25 = v24 + (v23 & 0xFFFFFFFFFFFFFFF8);
  *(v25 + 56) = v45;
  *(v25 + 40) = v44;
  v26 = v42;
  *(v25 + 24) = v43;
  *(v25 + 8) = v26;
  *v13 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DF8, &qword_1DB5180B0);
  v27 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v27[2] = v28;
  sub_1DB3C180C(v13, v27 + *(*v27 + 96));
  v29 = swift_allocObject();
  v29[2] = sub_1DB3C1CB8;
  v29[3] = v24;
  v29[4] = v27;
  *&v42 = sub_1DB3C1CD4;
  *(&v42 + 1) = v29;
  *&v43 = sub_1DB3C1CE0;
  *(&v43 + 1) = v27;
  sub_1DB30BE90(v48, &v44);
  v46 = 0;
  swift_retain_n();

  sub_1DB30828C(&v42);

  sub_1DB30623C(&v42, &unk_1ECC45030, &qword_1DB50F4D0);
  sub_1DB30BE90(a1, &v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430C8, &unk_1DB51C850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DC8, &unk_1DB518050);
  if (swift_dynamicCast())
  {
    sub_1DB2FEA0C(v40, v47);
    sub_1DB30BE90(v47, &v42);
    v30 = swift_allocObject();
    sub_1DB2FEA0C(&v42, v30 + 16);
    sub_1DB30BE90(v47, v40);
    v31 = swift_allocObject();
    sub_1DB2FEA0C(v40, v31 + 16);
    v39[3] = &type metadata for SyncTaskScheduler;
    v39[4] = &protocol witness table for SyncTaskScheduler;
    *&v42 = sub_1DB3C1CE4;
    *(&v42 + 1) = v30;
    *&v43 = sub_1DB3C1CD0;
    *(&v43 + 1) = v31;
    sub_1DB30BE90(v39, &v44);
    v46 = 0;

    sub_1DB309368(&v42);

    sub_1DB30623C(&v42, &unk_1ECC453A0, &unk_1DB50F710);
    __swift_destroy_boxed_opaque_existential_0(v47);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    sub_1DB30623C(v40, &qword_1ECC44DD0, &unk_1DB51C860);
  }

  swift_task_localValuePop();

  __swift_destroy_boxed_opaque_existential_0(v48);
  return v27;
}

uint64_t sub_1DB3C180C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BD0, &unk_1DB518FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB3C1890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiskJetPackResourceBundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB3C1910(uint64_t a1)
{
  v2 = type metadata accessor for DiskJetPackResourceBundle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB3C196C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiskJetPackResourceBundle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DB3C19F8()
{
  sub_1DB30C4B8((v0 + 5), v6, &qword_1ECC44E00, &unk_1DB518260);
  if (v7)
  {
    v1 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    sub_1DB49C068();
    v2 = (*(v1 + 8))();

    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_1DB30623C(v6, &qword_1ECC44E00, &unk_1DB518260);
    v2 = sub_1DB49C068();
  }

  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  (*(v4 + 8))(0xD000000000000025, 0x80000001DB52C580, v2, v3, v4);
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_1DB509CA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);
  sub_1DB3BEB98(*(v0 + v5 + 8), *(v0 + v5 + 16));
  if (*(v0 + v5 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + v5 + 24));
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 64, v3 | 7);
}

uint64_t sub_1DB3C1C00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1DB509CA0() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  return sub_1DB3BF44C(a1, v2 + 16, v2 + v6, *(v2 + v6 + *(v5 + 64)), v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8, a2);
}

void EventTimeMetricsFieldProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = sub_1DB509DD0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
  if (qword_1ECC420B8 != -1)
  {
    v7 = swift_once();
  }

  v8 = qword_1ECC44E08;
  MEMORY[0x1EEE9AC00](v7);
  v14[-2] = v6;
  os_unfair_lock_lock((v8 + 24));
  sub_1DB3C207C((v8 + 16), v14);
  os_unfair_lock_unlock((v8 + 24));
  if (v1)
  {
    __break(1u);
  }

  else
  {
    v9 = v14[0];
    (*(v4 + 8))(v6, v3);
    v14[3] = sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
    v14[0] = v9;
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
    v12 = *(v11 + 16);
    v13 = v9;
    v12(v14, 0x6D6954746E657665, 0xE900000000000065, v10, v11);

    __swift_destroy_boxed_opaque_existential_0(v14);
  }
}

uint64_t sub_1DB3C1EFC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC44E10, qword_1DB5182B0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1ECC44E08 = result;
  return result;
}

id sub_1DB3C1F68@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = sub_1DB509D40();
  v6 = [v4 serverTimeFromDate_];

  sub_1DB336FD4(0, &qword_1EE30C798, 0x1E69E58C0);
  v7 = *a1;
  v8 = v6;
  LOBYTE(v5) = sub_1DB50B0C0();

  if (v5)
  {
    [v8 doubleValue];
    v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];

    v8 = v10;
  }

  *a1 = v8;
  *a2 = v8;
  return v8;
}

void sub_1DB3C20C0()
{
  v2 = *v0;

  sub_1DB330080();
  v3 = v13;
  v4 = sub_1DB330884(&v13);
  if (v1)
  {
    v13.i64[0] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      v11 = v12;
      sub_1DB330A34();
      sub_1DB50BC80();
    }

    else
    {

      v13.i64[0] = 0;
      v13.i64[1] = 0xE000000000000000;
      MEMORY[0x1E1285C70](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1DB50BA00();
    }

    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v5 = v0[2];
    MEMORY[0x1EEE9AC00](v4);
    v9[2] = v0;
    v10 = v3;
    type metadata accessor for ThrowingDependencyCell.ObjectState(0, *(v2 + 80), v6, v7);
    sub_1DB47D0C4(sub_1DB3C2DBC, v9, v5);
  }
}

uint64_t sub_1DB3C22D0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1DB3C2320(a1, a2, v7, v5, v6);
  return v4;
}

void *sub_1DB3C2320(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for ThrowingDependencyCell.ObjectState(0, *(*v5 + 80), a4, a5);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v14 - v10);
  *v11 = a1;
  v11[1] = a2;
  swift_storeEnumTagMultiPayload();
  v12 = sub_1DB388A48(v11, v8);
  (*(v9 + 8))(v11, v8);
  v5[2] = v12;
  return v5;
}

uint64_t sub_1DB3C2424@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a4;
  v56 = a3;
  v8 = *a2;
  v9 = sub_1DB50A230();
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v15 = *(v8 + 80);
  v18 = type metadata accessor for ThrowingDependencyCell.ObjectState(0, v15, v16, v17);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (&v50 - v20);
  v23 = *(v22 + 16);
  v57 = a1;
  v23(v21, a1, v18, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(v15 - 8) + 32))(a5, v21, v15);
  }

  v25 = v21[1];
  v51 = *v21;
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v26 = sub_1DB50A270();
  __swift_project_value_buffer(v26, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v27 = sub_1DB50A250();
  v28 = sub_1DB50B070();
  v29 = sub_1DB50B0E0();
  v52 = a5;
  v53 = v5;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v50 = v25;
    v31 = v28;
    v32 = v30;
    v33 = swift_slowAlloc();
    v58.tv_sec = v33;
    *v32 = 136315138;
    v34 = sub_1DB50BEE0();
    v36 = sub_1DB3D4EE8(v34, v35, &v58.tv_sec);

    *(v32 + 4) = v36;
    v37 = sub_1DB50A210();
    v38 = v31;
    v25 = v50;
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v27, v38, v37, "MakeDependency", "object=%s,type=lazy", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x1E1288220](v33, -1, -1);
    MEMORY[0x1E1288220](v32, -1, -1);
  }

  v40 = v54;
  v39 = v55;
  (*(v54 + 16))(v11, v14, v55);
  sub_1DB50A2C0();
  swift_allocObject();
  v41 = sub_1DB50A2B0();
  (*(v40 + 8))(v14, v39);
  static MonotonicTime.now.getter(&v58);
  tv_sec = v58.tv_sec;
  tv_nsec = v58.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v44 = v58.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v45 = swift_allocObject();
  *(v45 + 24) = 0;
  *(v45 + 16) = 0;
  v58.tv_sec = v45;
  MEMORY[0x1EEE9AC00](v45);
  v46 = v51;
  *(&v50 - 12) = v15;
  *(&v50 - 11) = v46;
  v47 = v56;
  *(&v50 - 10) = v25;
  *(&v50 - 9) = v47;
  v48 = v57;
  *(&v50 - 8) = v59;
  *(&v50 - 7) = v48;
  *(&v50 - 6) = tv_sec;
  *(&v50 - 5) = tv_nsec;
  *(&v50 - 4) = v41;
  *(&v50 - 3) = v49;
  *(&v50 - 2) = v44;
  sub_1DB50BEC0();
}

void sub_1DB3C2904(uint64_t a1@<X0>, uint64_t a2@<X1>, __darwin_time_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v56 = a7;
  v57 = a8;
  v55 = a6;
  v58 = a5;
  v59 = a1;
  v60 = a2;
  v15 = sub_1DB50A280();
  v54 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DB50A230();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61.tv_sec = a3;
  v61.tv_nsec = a4;
  v22 = a9;
  v23 = v62;
  sub_1DB330574(v59, v60, &v61.tv_sec, a12);
  if (!v23)
  {
    v26 = v55;
    v27 = v56;
    v52 = v17;
    v53 = v15;
    v62 = v21;
    v60 = 0;
    v28 = type metadata accessor for ThrowingDependencyCell.ObjectState(0, a12, v24, v25);
    v29 = v58;
    (*(*(v28 - 8) + 8))(v58, v28);
    (*(*(a12 - 8) + 16))(v29, v22, a12);
    swift_storeEnumTagMultiPayload();
    static MonotonicTime.now.getter(&v61);
    tv_sec = v61.tv_sec;
    tv_nsec = v61.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v32 = tv_nsec / *&qword_1EE30ED50 + tv_sec;
    v33 = v27 / *&qword_1EE30ED50 + v26;
    v59 = v18;
    v34 = v62;
    if (qword_1EE30EAE8 != -1)
    {
      swift_once();
    }

    v35 = v32 - v33;
    v36 = sub_1DB50A270();
    __swift_project_value_buffer(v36, qword_1EE312DE8);

    v37 = sub_1DB50A250();
    sub_1DB50A2A0();
    v38 = sub_1DB50B060();

    v39 = v19;
    if (sub_1DB50B0E0())
    {
      v40 = v38;

      v41 = v52;
      sub_1DB50A2D0();

      v42 = v53;
      v43 = v54;
      if ((*(v54 + 88))(v41, v53) == *MEMORY[0x1E69E93E8])
      {
        v44 = 0;
        v45 = "[Error] Interval already ended";
      }

      else
      {
        (*(v43 + 8))(v41, v42);
        v45 = "selfTime=%f";
        v44 = 1;
      }

      v46 = swift_slowAlloc();
      *v46 = 0;
      *(v46 + 1) = v44;
      *(v46 + 2) = 2048;
      os_unfair_lock_lock((a10 + 24));
      v47 = *(a10 + 16);
      os_unfair_lock_unlock((a10 + 24));
      *(v46 + 4) = v35 - v47;
      v48 = v62;
      v49 = sub_1DB50A210();
      v50 = v45;
      v34 = v48;
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v37, v40, v49, "MakeDependency", v50, v46, 0xCu);
      MEMORY[0x1E1288220](v46, -1, -1);
    }

    (*(v39 + 8))(v34, v59);
    os_unfair_lock_lock((a11 + 24));
    *(a11 + 16) = v35 + *(a11 + 16);
    os_unfair_lock_unlock((a11 + 24));
  }
}

uint64_t AssetPushSubscriptionRecord.assetURLString.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AssetPushSubscriptionRecord.channelID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AssetPushSubscriptionRecord.bundleID.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AssetPushSubscriptionRecord.usageID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t AssetPushSubscriptionRecord.scheduleFromDate.getter@<X0>(uint64_t a2@<X8>)
{
  if (*(v2 + 80))
  {
    v4 = 1;
  }

  else
  {
    sub_1DB509D80();
    v4 = 0;
  }

  v5 = sub_1DB509DD0();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t AssetPushSubscriptionRecord.scheduleToDate.getter@<X0>(uint64_t a2@<X8>)
{
  if (*(v2 + 96))
  {
    v4 = 1;
  }

  else
  {
    sub_1DB509D80();
    v4 = 0;
  }

  v5 = sub_1DB509DD0();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t AssetPushSubscriptionRecord.serverDate.getter@<X0>(uint64_t a2@<X8>)
{
  if (*(v2 + 120))
  {
    v4 = 1;
  }

  else
  {
    sub_1DB509D80();
    v4 = 0;
  }

  v5 = sub_1DB509DD0();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t AssetPushSubscriptionRecord.modifiedAtDate.getter@<X0>(uint64_t a2@<X8>)
{
  if (*(v2 + 144))
  {
    v4 = 1;
  }

  else
  {
    sub_1DB509D80();
    v4 = 0;
  }

  v5 = sub_1DB509DD0();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t AssetPushSubscriptionRecord.init(assetURLString:channelID:bundleID:usageID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = 0;
  *(a9 + 4) = 1;
  *(a9 + 8) = result;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = 0;
  *(a9 + 80) = 1;
  *(a9 + 88) = 0;
  *(a9 + 96) = 1;
  *(a9 + 100) = 0;
  *(a9 + 104) = 1;
  *(a9 + 112) = 0;
  *(a9 + 120) = 1;
  *(a9 + 124) = 0;
  *(a9 + 128) = 1;
  *(a9 + 136) = 0;
  *(a9 + 144) = 1;
  return result;
}

uint64_t sub_1DB3C324C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6E69646E65507369;
    v7 = 0xD000000000000010;
    if (a1 != 10)
    {
      v7 = 0x6465696669646F6DLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x656C756465686373;
    v9 = 0x797469726F697270;
    if (a1 != 7)
    {
      v9 = 0x6954726576726573;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
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
    v1 = 25705;
    v2 = 0x4449656C646E7562;
    v3 = 0x44496567617375;
    if (a1 != 4)
    {
      v3 = 0x656C756465686373;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x4C52557465737361;
    if (a1 != 1)
    {
      v4 = 0x496C656E6E616863;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DB3C3404@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB3C42CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB3C3438(uint64_t a1)
{
  v2 = sub_1DB3C388C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3C3474(uint64_t a1)
{
  v2 = sub_1DB3C388C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetPushSubscriptionRecord.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44E98, &qword_1DB518360);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - v5;
  v7 = *(v1 + 4);
  v8 = *(v1 + 8);
  v34 = *(v1 + 16);
  v35 = v8;
  v9 = *(v1 + 24);
  v32 = *(v1 + 32);
  v33 = v9;
  v10 = *(v1 + 40);
  v30 = *(v1 + 48);
  v31 = v10;
  v11 = *(v1 + 56);
  v28 = *(v1 + 64);
  v29 = v11;
  v26 = *(v1 + 72);
  v27 = *(v1 + 80);
  v12 = *(v1 + 88);
  v25 = *(v1 + 96);
  v23 = *(v1 + 100);
  v24 = v12;
  LODWORD(v12) = *(v1 + 104);
  v20 = *(v1 + 112);
  v21 = *(v1 + 120);
  v22 = v12;
  v19 = *(v1 + 121);
  v18 = *(v1 + 124);
  v17 = *(v1 + 128);
  v15[1] = *(v1 + 136);
  v16 = *(v1 + 144);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3C388C();
  sub_1DB50BE40();
  v51 = 0;
  v48 = v7;
  v13 = v36;
  sub_1DB50B840();
  if (!v13)
  {
    v50 = 1;
    sub_1DB50B800();
    v49 = 2;
    sub_1DB50B800();
    v36 = v4;
    v47 = 3;
    sub_1DB50B800();
    v46 = 4;
    sub_1DB50B800();
    v45 = 5;
    sub_1DB50B850();
    v44 = 6;
    sub_1DB50B850();
    v43[0] = 7;
    v42 = v22;
    sub_1DB50B840();
    v41 = 8;
    sub_1DB50B850();
    v40 = 9;
    sub_1DB50B870();
    v39 = 10;
    v38 = v17;
    sub_1DB50B840();
    v37 = 11;
    sub_1DB50B850();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DB3C388C()
{
  result = qword_1ECC44EA0;
  if (!qword_1ECC44EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44EA0);
  }

  return result;
}

uint64_t AssetPushSubscriptionRecord.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44EA8, &qword_1DB518368);
  v5 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v7 = &v34 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3C388C();
  sub_1DB50BDF0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v52 = v5;
    LOBYTE(v63) = 0;
    v8 = sub_1DB50B720();
    v103 = BYTE4(v8) & 1;
    LOBYTE(v63) = 1;
    v9 = sub_1DB50B6E0();
    v51 = v10;
    LOBYTE(v63) = 2;
    v48 = sub_1DB50B6E0();
    v49 = v9;
    v50 = v11;
    LOBYTE(v63) = 3;
    v12 = sub_1DB50B6E0();
    v14 = v13;
    v47 = v12;
    LOBYTE(v63) = 4;
    v15 = sub_1DB50B6E0();
    v17 = v16;
    v46 = v15;
    LOBYTE(v63) = 5;
    v45 = sub_1DB50B730();
    v102 = v18 & 1;
    LOBYTE(v63) = 6;
    v44 = sub_1DB50B730();
    v100 = v19 & 1;
    LOBYTE(v63) = 7;
    v42 = sub_1DB50B720();
    v43 = v8;
    v97 = BYTE4(v42) & 1;
    LOBYTE(v63) = 8;
    v41 = sub_1DB50B730();
    v95 = v20 & 1;
    LOBYTE(v63) = 9;
    v40 = sub_1DB50B750();
    LOBYTE(v63) = 10;
    v21 = sub_1DB50B720();
    v22 = v21;
    v94 = BYTE4(v21) & 1;
    v91 = 11;
    v39 = sub_1DB50B730();
    v24 = v23;
    v40 &= 1u;
    (*(v52 + 8))(v7, v104);
    v92 = v24 & 1;
    LODWORD(v53) = v43;
    v36 = v103;
    BYTE4(v53) = v103;
    v25 = v51;
    *(&v53 + 1) = v49;
    *&v54 = v51;
    *(&v54 + 1) = v48;
    *&v55 = v50;
    *(&v55 + 1) = v47;
    *&v56 = v14;
    *(&v56 + 1) = v46;
    *&v57 = v17;
    *(&v57 + 1) = v45;
    v35 = v102;
    LOBYTE(v58) = v102;
    *(&v58 + 1) = v44;
    v37 = v100;
    LOBYTE(v59) = v100;
    DWORD1(v59) = v42;
    v38 = v97;
    BYTE8(v59) = v97;
    *&v60 = v41;
    LODWORD(v104) = v95;
    BYTE8(v60) = v95;
    BYTE9(v60) = v40;
    HIDWORD(v60) = v22;
    LODWORD(v52) = v94;
    LOBYTE(v61) = v94;
    *(&v61 + 1) = v39;
    v24 &= 1u;
    v62 = v24;
    v26 = v59;
    v27 = v60;
    v28 = v61;
    *(a2 + 144) = v24;
    *(a2 + 112) = v27;
    *(a2 + 128) = v28;
    v29 = v54;
    *a2 = v53;
    *(a2 + 16) = v29;
    v30 = v55;
    v31 = v56;
    v32 = v57;
    *(a2 + 80) = v58;
    *(a2 + 96) = v26;
    *(a2 + 48) = v31;
    *(a2 + 64) = v32;
    *(a2 + 32) = v30;
    sub_1DB348C18(&v53, &v63);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v63 = v43;
    v64 = v36;
    v65 = v49;
    v66 = v25;
    v67 = v48;
    v68 = v50;
    v69 = v47;
    v70 = v14;
    v71 = v46;
    v72 = v17;
    v73 = v45;
    v74 = v35;
    *v75 = *v101;
    *&v75[3] = *&v101[3];
    v76 = v44;
    v77 = v37;
    v79 = v99;
    v78 = v98;
    v80 = v42;
    v81 = v38;
    *v82 = *v96;
    *&v82[3] = *&v96[3];
    v83 = v41;
    v84 = v104;
    v85 = v40;
    v86 = v22;
    v87 = v52;
    *&v88[3] = *&v93[3];
    *v88 = *v93;
    v89 = v39;
    v90 = v24;
    return sub_1DB348C74(&v63);
  }
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

uint64_t sub_1DB3C3F8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
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

uint64_t sub_1DB3C3FE8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetPushSubscriptionRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetPushSubscriptionRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DB3C41C8()
{
  result = qword_1ECC44EB0;
  if (!qword_1ECC44EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44EB0);
  }

  return result;
}

unint64_t sub_1DB3C4220()
{
  result = qword_1ECC44EB8;
  if (!qword_1ECC44EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44EB8);
  }

  return result;
}

unint64_t sub_1DB3C4278()
{
  result = qword_1ECC44EC0;
  if (!qword_1ECC44EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44EC0);
  }

  return result;
}

uint64_t sub_1DB3C42CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52557465737361 && a2 == 0xEE00676E69727453 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44496567617375 && a2 == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEC0000006D6F7246 || (sub_1DB50BA30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEA00000000006F54 || (sub_1DB50BA30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6954726576726573 && a2 == 0xEF706D617473656DLL || (sub_1DB50BA30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E69646E65507369 && a2 == 0xE900000000000067 || (sub_1DB50BA30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB52C5E0 == a2 || (sub_1DB50BA30() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441)
  {

    return 11;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t Dependency.init<A>(satisfying:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4 + 1);
  v7 = *(*(a3 - 8) + 32);

  return v7(boxed_opaque_existential_0, a2, a3);
}

void Dependency.init<A>(satisfying:with:)(uint64_t a1)
{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](60, 0xE100000000000000);
  v1 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v1);

  MEMORY[0x1E1285C70](0xD00000000000005DLL, 0x80000001DB52C620);
  sub_1DB50B580();
  __break(1u);
}

{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](60, 0xE100000000000000);
  v1 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v1);

  MEMORY[0x1E1285C70](0xD00000000000005DLL, 0x80000001DB52C620);
  sub_1DB50B580();
  __break(1u);
}

{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](60, 0xE100000000000000);
  v1 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v1);

  MEMORY[0x1E1285C70](0xD00000000000005CLL, 0x80000001DB52C850);
  sub_1DB50B580();
  __break(1u);
}

uint64_t static Dependency.satisfying<A>(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  *a3 = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 1);
  return (*(v6 + 32))(boxed_opaque_existential_0, v9, a2);
}

{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  *a3 = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 1);
  return (*(v6 + 32))(boxed_opaque_existential_0, v9, a2);
}

uint64_t Dependency._Personality.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t static Dependency.satisfying<A>(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a2;
  *a4 = a1;
  a4[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4 + 1);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, &v7, a3);
  return swift_unknownObjectRetain();
}

uint64_t _s7JetCore10DependencyV11_satisfying4withACxm_xyYaYbKctcs8SendableRzlufC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v8 = type metadata accessor for DependencyPromise(0, a4, a3, a4);
  result = sub_1DB3891D4(a2, a3);
  a5[4] = v8;
  a5[1] = result;
  return result;
}

uint64_t sub_1DB3C4B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t)@<X4>, uint64_t (*a6)(uint64_t, uint64_t)@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  v11 = a5(0, a4);

  v12 = a6(a2, a3);
  a7[4] = v11;

  a7[1] = v12;
  return result;
}

unint64_t sub_1DB3C4BFC()
{
  result = qword_1ECC44EC8;
  if (!qword_1ECC44EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44EC8);
  }

  return result;
}

uint64_t sub_1DB3C4C50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB3C4C98(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t JSONObject.encode(to:)(void *a1)
{
  v4 = sub_1DB50B400();
  v50 = *(v4 - 1);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A60, &unk_1DB5177A0);
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v45 - v7;
  v9 = sub_1DB509B40();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v1;
  JSONObject.untyped.getter(&v70);
  if (!v71)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE20();
    __swift_mutable_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
    sub_1DB50BB10();
    v14 = &v64;
    goto LABEL_18;
  }

  sub_1DB30C4B8(&v70, v69, &qword_1ECC426B0, &qword_1DB50EEB0);
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    v13 = v60;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE20();
    if (*MEMORY[0x1E695E4D0] && v13 == *MEMORY[0x1E695E4D0] || *MEMORY[0x1E695E4C0] && v13 == *MEMORY[0x1E695E4C0])
    {
      [v13 BOOLValue];
      __swift_mutable_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
      sub_1DB50BAD0();
    }

    else
    {
      [v13 doubleValue];
      __swift_mutable_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
      sub_1DB50BAE0();
    }

    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE20();
    __swift_mutable_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
    sub_1DB50BAD0();
LABEL_15:
    v15 = &v64;
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE20();
    __swift_mutable_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
    sub_1DB50BAE0();
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE20();
    __swift_mutable_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
    sub_1DB50BAC0();

    goto LABEL_15;
  }

  sub_1DB336FD4(0, &qword_1ECC45BD0, 0x1E695DEC8);
  if (swift_dynamicCast())
  {
    v17 = v56[0];
    v18 = a1[3];
    v51 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    sub_1DB50BE10();
    v51 = v17;
    sub_1DB50B0A0();
    sub_1DB509B30();
    if (v59)
    {
      while (1)
      {
        sub_1DB30C200(&v58, v57);
        *(&v61 + 1) = &type metadata for FoundationValue;
        *&v62 = &off_1F56FB6B0;
        *&v60 = swift_allocObject();
        sub_1DB30C200(v57, (v60 + 16));
        __swift_mutable_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
        sub_1DB325078();
        sub_1DB50B9E0();
        if (v2)
        {
          break;
        }

        sub_1DB3151CC(&v60);
        sub_1DB509B30();
        if (!v59)
        {
          goto LABEL_26;
        }
      }

      sub_1DB3151CC(&v60);
      (*(v10 + 8))(v12, v9);
    }

    else
    {
LABEL_26:
      (*(v10 + 8))(v12, v9);
    }

    goto LABEL_15;
  }

  sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v69);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE00();
    v25 = v48;
    JSONObject.untyped.getter(&v64);
    sub_1DB30623C(&v64, &qword_1ECC426B0, &qword_1DB50EEB0);
    v26 = v49;
    sub_1DB50B3C0();
    v27 = sub_1DB50B410();
    swift_allocError();
    v29 = v28;
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0) + 48);
    v29[3] = &type metadata for JSONObject;
    v31 = swift_allocObject();
    *v29 = v31;
    sub_1DB3171C0(v25, v31 + 16);
    v32 = v50;
    v33 = v29 + v30;
    v34 = v51;
    (*(v50 + 16))(v33, v26, v51);
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6B30], v27);
    swift_willThrow();
    (*(v32 + 8))(v26, v34);
    return sub_1DB30623C(&v70, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  v19 = v68;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3053A8();
  sub_1DB50BE40();
  v46 = v19;
  v20 = sub_1DB50AEE0();
  sub_1DB50AEF0();
  v64 = v60;
  v65 = v61;
  v66 = v62;
  v67 = v63;
  if (!*(&v61 + 1))
  {
LABEL_40:
    (*(v47 + 8))(v8, v6);

    goto LABEL_17;
  }

  while (1)
  {
    sub_1DB30C200(&v64, &v58);
    sub_1DB30C200(&v66, v57);
    sub_1DB300B14(&v58, v56);
    if (swift_dynamicCast())
    {
      break;
    }

    if (!swift_dynamicCast())
    {
      v45[1] = v20;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1DB50BE00();
      *&v60 = 0;
      *(&v60 + 1) = 0xE000000000000000;
      sub_1DB50B320();

      *&v60 = 0xD000000000000022;
      *(&v60 + 1) = 0x80000001DB52C6C0;
      __swift_project_boxed_opaque_existential_1(&v58, v59);
      swift_getDynamicType();
      v35 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v35);

      v36 = v49;
      sub_1DB50B3C0();
      v37 = sub_1DB50B410();
      swift_allocError();
      v39 = v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0) + 48);
      v39[3] = &type metadata for JSONObject;
      v41 = swift_allocObject();
      *v39 = v41;
      sub_1DB3171C0(v48, v41 + 16);
      v42 = v50;
      v43 = v39 + v40;
      v44 = v51;
      (*(v50 + 16))(v43, v36, v51);
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6B30], v37);
      swift_willThrow();

      (*(v42 + 8))(v36, v44);
      goto LABEL_44;
    }

    v24 = v54;
    sub_1DB300B14(v57, &v52);
    *(&v61 + 1) = &type metadata for FoundationValue;
    *&v62 = &off_1F56FB6B0;
    *&v60 = swift_allocObject();
    sub_1DB30C200(&v52, (v60 + 16));
    v52 = v24;
    v53 = 0;
    sub_1DB325078();
    sub_1DB50B8A0();
    if (v2)
    {
      goto LABEL_43;
    }

    sub_1DB3151CC(&v60);
    __swift_destroy_boxed_opaque_existential_0(v57);
    __swift_destroy_boxed_opaque_existential_0(&v58);
LABEL_31:
    __swift_destroy_boxed_opaque_existential_0(v56);
    sub_1DB50AEF0();
    v64 = v60;
    v65 = v61;
    v66 = v62;
    v67 = v63;
    if (!*(&v61 + 1))
    {
      goto LABEL_40;
    }
  }

  v21 = v20;
  v22 = v54;
  v23 = v55;
  sub_1DB300B14(v57, &v52);
  *(&v61 + 1) = &type metadata for FoundationValue;
  *&v62 = &off_1F56FB6B0;
  *&v60 = swift_allocObject();
  sub_1DB30C200(&v52, (v60 + 16));
  *&v52 = v22;
  *(&v52 + 1) = v23;
  v53 = 1;
  sub_1DB325078();
  sub_1DB50B8A0();
  if (!v2)
  {

    sub_1DB3151CC(&v60);
    __swift_destroy_boxed_opaque_existential_0(v57);
    __swift_destroy_boxed_opaque_existential_0(&v58);
    v20 = v21;
    goto LABEL_31;
  }

LABEL_43:

  sub_1DB3151CC(&v60);
LABEL_44:
  __swift_destroy_boxed_opaque_existential_0(v57);
  __swift_destroy_boxed_opaque_existential_0(&v58);
  (*(v47 + 8))(v8, v6);
  v15 = v56;
LABEL_16:
  __swift_destroy_boxed_opaque_existential_0(v15);
LABEL_17:
  v14 = v69;
LABEL_18:
  __swift_destroy_boxed_opaque_existential_0(v14);
  return sub_1DB30623C(&v70, &qword_1ECC426B0, &qword_1DB50EEB0);
}

uint64_t JSONObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB30BE90(a1, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44ED0, &unk_1DB518DC0);
  if (swift_dynamicCast())
  {
    v29 = v22;
    v30 = v23;
    v31 = v24;
    v32 = v25;
    sub_1DB3171C0(&v29, &v26);
    sub_1DB34A204(&v29);
    v20[0] = v26;
    v20[1] = v27;
    v21 = v28;
    if (*(&v27 + 1))
    {
      sub_1DB2FEA0C(v20, &v22);
      sub_1DB2FEA0C(&v22, &v33);
LABEL_18:
      v18 = v34;
      *a2 = v33;
      *(a2 + 16) = v18;
      *(a2 + 32) = v35;
      return __swift_destroy_boxed_opaque_existential_0(a1);
    }

    v5 = &qword_1ECC42E38;
    v6 = &qword_1DB50FB80;
    v7 = v20;
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v5 = &qword_1ECC44ED8;
    v6 = &qword_1DB518618;
    v7 = &v22;
  }

  sub_1DB30623C(v7, v5, v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    if (sub_1DB50BA90())
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      *(&v23 + 1) = sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
      *&v22 = v8;
      *(&v34 + 1) = &type metadata for FoundationValue;
      v35 = &off_1F56FB6B0;
      *&v33 = swift_allocObject();
      sub_1DB30C200(&v22, (v33 + 16));
LABEL_17:
      __swift_destroy_boxed_opaque_existential_0(&v29);
      goto LABEL_18;
    }

    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    v9 = sub_1DB50BA50();
    v10 = MEMORY[0x1E695E4C0];
    if (v9)
    {
      v10 = MEMORY[0x1E695E4D0];
    }

    v11 = *v10;
    if (*v10)
    {
      type metadata accessor for CFBoolean(0);
      *&v22 = v11;
      *(&v23 + 1) = v12;
      if (v12)
      {
        v13 = swift_allocObject();
        sub_1DB30C200(&v22, (v13 + 16));
        v14 = v11;
        v15 = &type metadata for FoundationValue;
        v16 = &off_1F56FB6B0;
LABEL_16:
        v33 = v13;
        *&v34 = 0;
        *(&v34 + 1) = v15;
        v35 = v16;
        goto LABEL_17;
      }
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    v17 = v11;
    sub_1DB30623C(&v22, &qword_1ECC426B0, &qword_1DB50EEB0);
    v16 = 0;
    v15 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB3C63F8()
{
  result = qword_1ECC44EE8;
  if (!qword_1ECC44EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44EE0, &qword_1DB518620);
    sub_1DB324D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44EE8);
  }

  return result;
}

unint64_t sub_1DB3C6484()
{
  result = qword_1ECC44EF8;
  if (!qword_1ECC44EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44EF0, &qword_1DB518628);
    sub_1DB324D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44EF8);
  }

  return result;
}

double FlowActionModel.tabSection.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t FlowActionStackDestinationNavigation<>.shouldStackPush<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = *(a6 + 24);
  v12(a3, a6, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F00, &qword_1DB518680);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v18);
    v18[3] = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v6, a2);
    v17[3] = AssociatedTypeWitness;
    __swift_allocate_boxed_opaque_existential_0(v17);
    (v12)(a3, a6);
    v14 = _isStructurallyEqual(_:to:with:at:)(v18, v17, 3uLL, 0);
    __swift_destroy_boxed_opaque_existential_0(v17);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v15 = v14 ^ 1;
  }

  else
  {
    v15 = 1;
  }

  return v15 & 1;
}

unint64_t sub_1DB3C68E0()
{
  result = qword_1ECC44F08;
  if (!qword_1ECC44F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44F08);
  }

  return result;
}

unint64_t sub_1DB3C69A8()
{
  result = qword_1ECC44F10;
  if (!qword_1ECC44F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44F10);
  }

  return result;
}

uint64_t MetricsEventType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = sub_1DB50BA40();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t MetricsEventType.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DB50BAC0();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t MetricsEventType.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1DB3C6B98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = sub_1DB50BA40();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DB3C6C5C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DB50BAC0();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

void static MetricsEventType.playActivity.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "playActivity");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static MetricsEventType.seekActivity.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "seekActivity");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

unint64_t sub_1DB3C6EBC()
{
  result = qword_1ECC44F18;
  if (!qword_1ECC44F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44F18);
  }

  return result;
}

uint64_t sub_1DB3C6F20()
{
  v0 = sub_1DB3AD72C(&unk_1F56F0158);
  result = swift_arrayDestroy();
  qword_1ECC67938 = v0;
  return result;
}

uint64_t sub_1DB3C6F6C()
{
  v0 = sub_1DB3AD72C(&unk_1F56F0228);
  result = swift_arrayDestroy();
  qword_1ECC67940 = v0;
  return result;
}

uint64_t sub_1DB3C6FB8()
{
  v0 = sub_1DB3AD72C(&unk_1F56F0268);
  result = sub_1DB3C7208(&unk_1F56F0288);
  qword_1ECC67948 = v0;
  return result;
}

uint64_t sub_1DB3C6FF8()
{
  if (qword_1ECC420C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECC67938;
  v1 = qword_1ECC420C8;

  if (v1 != -1)
  {
    swift_once();
  }

  result = sub_1DB3F5318(v2, v0);
  qword_1ECC67950 = result;
  return result;
}

uint64_t sub_1DB3C70A0()
{
  if (qword_1ECC420D8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECC67950;
  v1 = qword_1ECC420D0;

  if (v1 != -1)
  {
    swift_once();
  }

  result = sub_1DB3F5318(v2, v0);
  qword_1ECC67958 = result;
  return result;
}

uint64_t sub_1DB3C7148(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 16) && (v4 = sub_1DB306160(0x707954746E657665, 0xE900000000000065), (v5 & 1) != 0) && (sub_1DB300B14(*(a1 + 56) + 32 * v4, v10), (swift_dynamicCast() & 1) != 0))
    {
      v6 = sub_1DB33114C(v8, v9, a2);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_1DB3C7258()
{
  *(v0 + 296) = (*(**(v0 + 288) + 88))();

  return MEMORY[0x1EEE6DFA0](sub_1DB3C72E4, 0, 0);
}

uint64_t sub_1DB3C72E4()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1DB3C73B0;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1DB308440(v2);
  sub_1DB30623C(v2, &qword_1ECC42840, &qword_1DB5142D0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB3C73B0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 304) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB3C7548;
  }

  else
  {

    *(v2 + 312) = *(v2 + 160);
    v4 = sub_1DB3C74DC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB3C74DC()
{
  v1 = *(v0 + 312);
  if (!v1)
  {
    v1 = sub_1DB313804(MEMORY[0x1E69E7CC0]);
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DB3C7548()
{
  v19 = v0;

  swift_getErrorValue();
  if ((sub_1DB3C8450(*(v0 + 232), *(v0 + 240)) & 1) == 0)
  {
    if (qword_1ECC422A8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1DB50EE90;
    v17 = sub_1DB301BC0(0, 34, 0, MEMORY[0x1E69E7CC0]);
    v2._object = 0x80000001DB52BB40;
    v2._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v2);
    swift_getErrorValue();
    v3 = *(v0 + 248);
    v4 = *(v0 + 256);
    *(v0 + 184) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 160));
    (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v3, v4);
    sub_1DB301CDC(v0 + 160, v0 + 192);
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    sub_1DB301D4C(v0 + 192, v0 + 80);
    *(v0 + 112) = 0;
    v6 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DB301BC0(0, *(v17 + 2) + 1, 1, v17);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1DB301BC0((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[40 * v8];
    v10 = *(v0 + 80);
    v11 = *(v0 + 96);
    v9[64] = *(v0 + 112);
    *(v9 + 2) = v10;
    *(v9 + 3) = v11;
    sub_1DB30623C(v0 + 160, &qword_1ECC426B0, &qword_1DB50EEB0);
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    *(v1 + 32) = v6;
    v18 = 0;
    OSLogger.log(contentsOf:withLevel:)(v1, &v18);
  }

  v13 = *(v0 + 304);
  v14 = sub_1DB313804(MEMORY[0x1E69E7CC0]);

  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t Bag.Value.current(or:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v5[26] = *(a4 + 16);
  v6 = sub_1DB50B120();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *v4;
  v5[29] = v7;
  v5[30] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1DB3C78B8, 0, 0);
}

uint64_t sub_1DB3C78B8()
{
  v1 = *(v0 + 216);
  *(v0 + 248) = (*(**(v0 + 240) + 88))();
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  v5 = type metadata accessor for Promise(0, v1, v3, v4);
  WitnessTable = swift_getWitnessTable();
  *v2 = v0;
  v2[1] = sub_1DB3C79C0;
  v7 = *(v0 + 232);

  return Future.result.getter(v7, v5, WitnessTable);
}

uint64_t sub_1DB3C79C0()
{
  *(*v1 + 264) = v0;

  if (v0)
  {

    v2 = sub_1DB3C7C34;
  }

  else
  {
    v2 = sub_1DB3C7ADC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB3C7ADC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);

  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = *(v0 + 232);
  v7 = *(v0 + 208);
  if (v5 == 1)
  {
    (*(v0 + 192))();
    if (v4(v6, 1, v7) != 1)
    {
      (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    }
  }

  else
  {
    (*(v3 + 32))(*(v0 + 184), *(v0 + 232), *(v0 + 208));
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1DB3C7C34()
{
  v19 = v0;
  swift_getErrorValue();
  v1 = sub_1DB3C8450(*(v0 + 128), *(v0 + 136));
  if ((v1 & 1) == 0)
  {
    if (qword_1ECC422A8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1DB50EE90;
    v17 = sub_1DB301BC0(0, 34, 0, MEMORY[0x1E69E7CC0]);
    v3._object = 0x80000001DB52BB40;
    v3._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v3);
    swift_getErrorValue();
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    *(v0 + 80) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
    sub_1DB301CDC(v0 + 56, v0 + 88);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1DB301D4C(v0 + 88, v0 + 16);
    *(v0 + 48) = 0;
    v7 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DB301BC0(0, *(v17 + 2) + 1, 1, v17);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[40 * v9];
    v11 = *(v0 + 16);
    v12 = *(v0 + 32);
    v10[64] = *(v0 + 48);
    *(v10 + 2) = v11;
    *(v10 + 3) = v12;
    sub_1DB30623C(v0 + 56, &qword_1ECC426B0, &qword_1DB50EEB0);
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    *(v2 + 32) = v7;
    v18 = 0;
    OSLogger.log(contentsOf:withLevel:)(v2, &v18);
  }

  v14 = *(v0 + 264);
  (*(v0 + 192))(v1);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t Bag.Value.currentOrNil()(uint64_t a1, uint64_t a2)
{
  v3[23] = a1;
  v3[24] = a2;
  v3[25] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DB3C7EF4, 0, 0);
}

uint64_t sub_1DB3C7EF4()
{
  v1 = *(v0 + 192);
  *(v0 + 208) = (*(**(v0 + 200) + 88))();
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *(v0 + 224) = *(v1 + 16);
  v3 = sub_1DB50B120();
  v6 = type metadata accessor for Promise(0, v3, v4, v5);
  WitnessTable = swift_getWitnessTable();
  *v2 = v0;
  v2[1] = sub_1DB3C8008;
  v8 = *(v0 + 184);

  return Future.result.getter(v8, v6, WitnessTable);
}

uint64_t sub_1DB3C8008()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1DB3C817C;
  }

  else
  {
    v2 = sub_1DB3C811C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB3C811C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB3C817C()
{
  v19 = v0;

  swift_getErrorValue();
  if (sub_1DB3C8450(*(v0 + 128), *(v0 + 136)))
  {
    v1 = *(v0 + 232);
  }

  else
  {
    if (qword_1ECC422A8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1DB50EE90;
    v17 = sub_1DB301BC0(0, 34, 0, MEMORY[0x1E69E7CC0]);
    v3._object = 0x80000001DB52BB40;
    v3._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v3);
    swift_getErrorValue();
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    *(v0 + 80) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
    sub_1DB301CDC(v0 + 56, v0 + 88);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1DB301D4C(v0 + 88, v0 + 16);
    *(v0 + 48) = 0;
    v7 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DB301BC0(0, *(v17 + 2) + 1, 1, v17);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
    }

    v10 = *(v0 + 232);
    *(v7 + 2) = v9 + 1;
    v11 = &v7[40 * v9];
    v12 = *(v0 + 16);
    v13 = *(v0 + 32);
    v11[64] = *(v0 + 48);
    *(v11 + 2) = v12;
    *(v11 + 3) = v13;
    sub_1DB30623C(v0 + 56, &qword_1ECC426B0, &qword_1DB50EEB0);
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    *(v2 + 32) = v7;
    v18 = 0;
    OSLogger.log(contentsOf:withLevel:)(v2, &v18);

    v1 = v10;
  }

  (*(*(*(v0 + 224) - 8) + 56))(*(v0 + 184), 1, 1);
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1DB3C8450(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a1, v4);
  v8 = sub_1DB50B9F0();
  if (v8)
  {
    v9 = v8;
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v3 + 32))(v10, v6, a1);
  }

  v11 = sub_1DB509B10();

  IsEqual = AMSErrorIsEqual();
  return IsEqual;
}

char *sub_1DB3C8680()
{
  v1 = *v0;
  v2 = sub_1DB50B120();
  v5 = type metadata accessor for Promise(0, v2, v3, v4);
  v9 = Promise.__allocating_init()(v5, v6, v7, v8);
  v10 = *(v1 + 112);
  type metadata accessor for Promise(0, v10, v11, v12);
  v13 = [v0[2] valuePromise];
  Promise<A>.init(_:)(v13, v17, v14, v15, v16);
  v19 = v0[3];
  v18 = v0[4];
  v20 = swift_allocObject();
  v20[2] = v10;
  v20[3] = v9;
  v20[4] = v19;
  v20[5] = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = v10;
  *(v21 + 24) = v9;
  v22 = sub_1DB336FD4(0, &qword_1EE30E320, 0x1E69E9610);
  swift_retain_n();

  v24[3] = v22;
  v24[4] = &protocol witness table for OS_dispatch_queue;
  v24[0] = sub_1DB50AFB0();
  Promise.then(perform:orCatchError:on:)(sub_1DB3C9AEC, v20, sub_1DB3C9AF8, v21, v24);

  __swift_destroy_boxed_opaque_existential_0(v24);
  return v9;
}

uint64_t sub_1DB3C881C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v13 - v5;
  v8(*v7, v4);
  (*(*(*(v2 + 16) - 8) + 56))(v6, 0, 1);
  Promise.resolve(_:)(v6, v9, v10, v11);
  return (*(v3 + 8))(v6, v2);
}

void sub_1DB3C893C(void *a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v13 - v5;
  swift_getErrorValue();
  if (sub_1DB3C8450(v13[1], v13[2]))
  {
    (*(*(*(v3 + 16) - 8) + 56))(v6, 1, 1);
    Promise.resolve(_:)(v6, v10, v11, v12);
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    Promise.reject(_:)(a1, v7, v8, v9);
  }
}

uint64_t sub_1DB3C8A7C@<X0>(uint64_t a1@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = v1[2];
  v17[0] = 0;
  v5 = v3;
  v6 = [v4 valueWithError_];
  v7 = v17[0];
  if (v6)
  {
    v17[0] = v6;
    v8 = MEMORY[0x1EEE9AC00](v6);
    v9 = *(v5 + 112);
    v10 = *(v5 + 120);
    v15[2] = v9;
    v15[3] = v10;
    v16 = v8;
    sub_1DB50B120();
    v11 = v7;
    sub_1DB4A2A50(sub_1DB3C9AB8, v15, MEMORY[0x1E69E73E0], v10, v12, a1);
    return swift_unknownObjectRelease();
  }

  else
  {
    v14 = v17[0];
    sub_1DB509B20();

    return swift_willThrow();
  }
}

uint64_t sub_1DB3C8C04()
{
}

uint64_t sub_1DB3C8C34()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

id sub_1DB3C8C74@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 BOOLValue];
  *a2 = result;
  return result;
}

id sub_1DB3C8CA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 integerValue];
  *a2 = result;
  return result;
}

id sub_1DB3C8CD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 doubleValue];
  *a2 = v4;
  return result;
}

uint64_t sub_1DB3C8D04@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1DB50A650();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DB3C8D30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *&v17 = 0;
  sub_1DB50A990();
  if (qword_1ECC422A8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECC67CA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v21 = sub_1DB301BC0(0, 40, 0, MEMORY[0x1E69E7CC0]);
  v6._object = 0x80000001DB52C7F0;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v20[3] = sub_1DB336FD4(0, &qword_1ECC45BD0, 0x1E695DEC8);
  v20[0] = a1;
  sub_1DB301CDC(v20, v16);
  v17 = 0u;
  v18 = 0u;
  v7 = a1;
  sub_1DB301D4C(v16, &v17);
  v19 = 1;
  v8 = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v17;
  v13 = v18;
  v11[64] = v19;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v21 = v8;
  sub_1DB30623C(v20, &qword_1ECC426B0, &qword_1DB50EEB0);
  v14._countAndFlagsBits = 0x796E415B206F7420;
  v14._object = 0xE90000000000005DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v5 + 32) = v21;
  *&v17 = v4;
  LOBYTE(v20[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v5, v20);

  *a2 = MEMORY[0x1E69E7CC0];
  return result;
}

unint64_t sub_1DB3C8F68@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  *&v17 = 0;
  sub_1DB50A4A0();
  if (qword_1ECC422A8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECC67CA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v21 = sub_1DB301BC0(0, 53, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  v6._object = 0x80000001DB52C7F0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v20[3] = sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
  v20[0] = a1;
  sub_1DB301CDC(v20, v16);
  v17 = 0u;
  v18 = 0u;
  v7 = a1;
  sub_1DB301D4C(v16, &v17);
  v19 = 1;
  v8 = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v17;
  v13 = v18;
  v11[64] = v19;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v21 = v8;
  sub_1DB30623C(v20, &qword_1ECC426B0, &qword_1DB50EEB0);
  v14._object = 0x80000001DB52C810;
  v14._countAndFlagsBits = 0xD000000000000016;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v5 + 32) = v21;
  *&v17 = v4;
  LOBYTE(v20[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v5, v20);

  result = sub_1DB313804(MEMORY[0x1E69E7CC0]);
  *a2 = result;
  return result;
}

uint64_t Bag.Value.current(or:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = sub_1DB50B120();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10 + 16;
  (*(**v3 + 96))(v9);
  v12 = *(v6 - 8);
  if ((*(v12 + 48))(v11, 1, v6) != 1)
  {
    return (*(v12 + 32))(a3, v11, v6);
  }

  (*(v8 + 8))(v11, v7);
  if (qword_1ECC422A8 != -1)
  {
    swift_once();
  }

  v13 = qword_1ECC67CA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v14 = swift_allocObject();
  v18 = xmmword_1DB50EE90;
  *(v14 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v15 = swift_allocObject();
  *(v15 + 16) = v18;
  v19[3] = MEMORY[0x1E69E6158];
  v19[0] = 0xD00000000000001CLL;
  v19[1] = 0x80000001DB52C760;
  *(v15 + 48) = 0u;
  *(v15 + 32) = 0u;
  sub_1DB301D4C(v19, v15 + 32);
  *(v15 + 64) = 0;
  *(v14 + 32) = v15;
  v19[0] = v13;
  v20 = 0;
  OSLogger.log(contentsOf:withLevel:)(v14, &v20);

  return a1(v16);
}

uint64_t sub_1DB3C9A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t UserAgentFieldProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 64) = a1;
  *(v2 + 72) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DB3C9B30, 0, 0);
}

uint64_t sub_1DB3C9B30()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = v5;
  if (!v2)
  {

LABEL_9:
    v11 = v0[8];
    v12 = objc_opt_self();
    v13 = [objc_opt_self() currentProcess];
    v14 = [v12 userAgentForProcessInfo_];

    v15 = sub_1DB50A650();
    v17 = v16;

    v0[5] = MEMORY[0x1E69E6158];
    v0[2] = v15;
    v0[3] = v17;
    v19 = v1[3];
    v18 = v1[4];
    __swift_mutable_project_boxed_opaque_existential_1(v11, v19);
    (*(v18 + 16))(v0 + 2, 0x6E65674172657375, 0xE900000000000074, v19, v18);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    goto LABEL_10;
  }

  if (!*(v5 + 16) || (v7 = v0[9], v8 = sub_1DB306160(0x707954746E657665, 0xE900000000000065), (v9 & 1) == 0) || (sub_1DB300B14(*(v6 + 56) + 32 * v8, (v0 + 2)), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_10;
  }

  v10 = sub_1DB33114C(v0[6], v0[7], v7);

  if (v10)
  {
    goto LABEL_9;
  }

LABEL_10:
  v20 = v0[1];

  return v20();
}

uint64_t sub_1DB3C9D6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB306AF4;

  return UserAgentFieldProvider.addExpensiveMetricsFields(into:using:)(a1);
}

uint64_t ActionOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB3CA020()
{
  result = qword_1ECC44F20;
  if (!qword_1ECC44F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44F20);
  }

  return result;
}

uint64_t EventSubscription.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConcreteEventObserverBox(0, v9, v10, v10);
  (*(v6 + 16))(v8, a1, a2);
  v11 = sub_1DB3CA328(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v11;
  return result;
}

uint64_t sub_1DB3CA328(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 120) - 8) + 32))(v2 + *(*v2 + 136), a1);
  return v2;
}

uint64_t sub_1DB3CA434(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - v6, v1 + *(v4 + 136), v2, v3);
  return sub_1DB50A6C0();
}

uint64_t sub_1DB3CA5E4()
{
  (*(*(*(*v0 + 120) - 8) + 8))(v0 + *(*v0 + 136));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t EventSubscription.description.getter(uint64_t a1)
{
  v2 = *v1;
  v6 = sub_1DB50BEE0();
  v3 = MEMORY[0x1E1285C70](40, 0xE100000000000000);
  v4 = (*(*v2 + 96))(v3);
  MEMORY[0x1E1285C70](v4);

  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  return v6;
}

uint64_t EventSubscription.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB3CA7B8(uint64_t a1)
{
  sub_1DB50BCF0();
  EventSubscription.hash(into:)();
  return sub_1DB50BD30();
}

uint64_t sub_1DB3CA82C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB3CA8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Decoder.withUserInfo(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v11[3] = a2;
  v11[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v4, a2);
  a4[3] = &type metadata for _Wrapped_Decoder;
  a4[4] = sub_1DB3CAFA4();
  v9 = swift_allocObject();
  *a4 = v9;

  return sub_1DB3CA9D0(v11, a1, (v9 + 16));
}

uint64_t sub_1DB3CA9D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1DB50BDE0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v41 = v6;
  sub_1DB3CB254(a2, sub_1DB3CB1A4, 0, isUniquelyReferenced_nonNull_native, &v41);

  v8 = v41;
  sub_1DB30BE90(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44ED0, &unk_1DB518DC0);
  if (swift_dynamicCast())
  {
    v41 = v36;
    v42 = v37;
    v43 = v38;
    v44 = v39;
    *(&v37 + 1) = &type metadata for _JSONObjectDecoder;
    *&v38 = sub_1DB34A154();
    v9 = swift_allocObject();
    *&v36 = v9;
    sub_1DB3171C0(&v41, v9 + 16);
    v10 = v44;
    *(v9 + 56) = v8;
    *(v9 + 64) = v10;

    sub_1DB34A204(&v41);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    sub_1DB30623C(&v36, &qword_1ECC44ED8, &qword_1DB518618);
    if (qword_1ECC42218 != -1)
    {
      swift_once();
    }

    v11 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DB511620;
    v35 = sub_1DB301BC0(0, 60, 0, MEMORY[0x1E69E7CC0]);
    v13._countAndFlagsBits = 0xD000000000000028;
    v13._object = 0x80000001DB52C8F0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    *(&v37 + 1) = swift_getMetatypeMetadata();
    *&v36 = DynamicType;
    sub_1DB301CDC(&v36, v40);
    v41 = 0u;
    v42 = 0u;
    sub_1DB301D4C(v40, &v41);
    LOBYTE(v43) = 0;
    v15 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1DB301BC0(0, *(v35 + 2) + 1, 1, v35);
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1DB301BC0((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[40 * v17];
    v19 = v41;
    v20 = v42;
    v18[64] = v43;
    *(v18 + 2) = v19;
    *(v18 + 3) = v20;
    sub_1DB30623C(&v36, &qword_1ECC426B0, &qword_1DB50EEB0);
    v21._object = 0x80000001DB52C920;
    v21._countAndFlagsBits = 0xD000000000000013;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    *(v12 + 32) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1DB50EE90;
    v23 = MEMORY[0x1E69E6158];
    *(&v42 + 1) = MEMORY[0x1E69E6158];
    *&v41 = 0xD000000000000057;
    *(&v41 + 1) = 0x80000001DB52C940;
    *(v22 + 48) = 0u;
    *(v22 + 32) = 0u;
    sub_1DB301D4C(&v41, v22 + 32);
    *(v22 + 64) = 0;
    *(v12 + 40) = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1DB50EE90;
    *(&v42 + 1) = v23;
    *&v41 = 0xD000000000000026;
    *(&v41 + 1) = 0x80000001DB52C9A0;
    *(v24 + 48) = 0u;
    *(v24 + 32) = 0u;
    sub_1DB301D4C(&v41, v24 + 32);
    *(v24 + 64) = 0;
    *(v12 + 48) = v24;
    v25 = sub_1DB50AF40();
    if (os_log_type_enabled(v11, v25))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v26 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v26[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v26 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v28 = swift_allocObject();
      *(v28 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v41 = v12;
      *(&v41 + 1) = sub_1DB31485C;
      *&v42 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v29 = sub_1DB50A5E0();
      v31 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1DB50EE90;
      *(v32 + 56) = v23;
      *(v32 + 64) = sub_1DB31494C();
      *(v32 + 32) = v29;
      *(v32 + 40) = v31;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v11, v25, v32);
    }

    sub_1DB30BE90(a1, &v36);
  }

  *(&v38 + 1) = v8;
  v33 = v37;
  *a3 = v36;
  a3[1] = v33;
  a3[2] = v38;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB3CAFA4()
{
  result = qword_1ECC44F28;
  if (!qword_1ECC44F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44F28);
  }

  return result;
}

uint64_t sub_1DB3CB140(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  return a3(v5, v6);
}

uint64_t sub_1DB3CB1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44918, &qword_1DB518DE0) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC44928, &qword_1DB516B70) + 48);
  v6 = sub_1DB50B560();
  (*(*(v6 - 8) + 16))(a2, a1, v6);

  return sub_1DB300B14(a1 + v4, a2 + v5);
}

uint64_t sub_1DB3CB254(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v9 = sub_1DB50B560();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F30, &unk_1DB518DD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v41 - v14;
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v45 = a1;
  v46 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v47 = v17;
  v48 = 0;
  v49 = v20 & v18;
  v50 = a2;
  v51 = a3;
  v21 = (v10 + 32);
  v42 = (v10 + 8);
  v43 = v10;

  v41[1] = a3;

  while (1)
  {
    sub_1DB3AF284(v15);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC44928, &qword_1DB516B70);
    if ((*(*(v23 - 8) + 48))(v15, 1, v23) == 1)
    {
      sub_1DB2FEA60(v45);
    }

    v24 = *(v23 + 48);
    v25 = *v21;
    v26 = v9;
    (*v21)(v12, v15, v9);
    sub_1DB30C200(&v15[v24], v44);
    v27 = *v52;
    v29 = sub_1DB30EDEC(v12);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if ((a4 & 1) == 0)
      {
        sub_1DB311750();
      }
    }

    else
    {
      sub_1DB319D74(v32, a4 & 1);
      v34 = sub_1DB30EDEC(v12);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_19;
      }

      v29 = v34;
    }

    v36 = *v52;
    if (v33)
    {
      v9 = v26;
      (*v42)(v12, v26);
      v22 = (v36[7] + 32 * v29);
      __swift_destroy_boxed_opaque_existential_0(v22);
      sub_1DB30C200(v44, v22);
      a4 = 1;
    }

    else
    {
      v36[(v29 >> 6) + 8] |= 1 << v29;
      v9 = v26;
      v25((v36[6] + *(v43 + 72) * v29), v12, v26);
      sub_1DB30C200(v44, (v36[7] + 32 * v29));
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v36[2] = v39;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

uint64_t sub_1DB3CB5C4()
{
  v0 = sub_1DB50A3A0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E6977AC0], v0, v2);
  sub_1DB50A3D0();
  return (*(v1 + 8))(v4, v0);
}

void require(_:_:file:line:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1() & 1) == 0)
  {

    sub_1DB3D66F0(a5, a6, a7, a8, a3);
  }
}

void sub_1DB3CB74C(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000080;
    *(&v42 + 1) = 0x80000001DB52CA30;
    v8(&v42);
    sub_1DB365724(v8, v9);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v10 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v11 = sub_1DB50B0F0();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1DB50B350();
        v16 = sub_1DB3D4EE8(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1DB3D4EE8(0xD000000000000080, 0x80000001DB52CA30, &v42);
        _os_log_impl(&dword_1DB2F5000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v13, -1, -1);
        MEMORY[0x1E1288220](v12, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v17 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1DB301DBC(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1DB301DBC(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000080;
      v46 = 0x80000001DB52CA30;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1DB301BC0(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1DB301BC0((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1DB301DBC(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3CBD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v9 = v49;
  if (v49)
  {
    v10 = *(&v49 + 1);
    sub_1DB50B320();

    *&v49 = 0xD000000000000030;
    *(&v49 + 1) = 0x80000001DB52CEA0;
    v11 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v11);

    v9(&v49);
    sub_1DB365724(v9, v10);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    sub_1DB50B320();

    *&v49 = 0xD000000000000030;
    *(&v49 + 1) = 0x80000001DB52CEA0;
    v12 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v12);

    v13 = v49;
    v14 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v15 = sub_1DB50B0F0();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v49 = v17;
      *v16 = 136446722;
      v18 = sub_1DB50B350();
      v20 = sub_1DB3D4EE8(v18, v19, &v49);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2050;
      *(v16 + 14) = a4;
      *(v16 + 22) = 2082;
      v21 = sub_1DB3D4EE8(v13, *(&v13 + 1), &v49);

      *(v16 + 24) = v21;
      _os_log_impl(&dword_1DB2F5000, v15, v14, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v17, -1, -1);
      MEMORY[0x1E1288220](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v22 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1DB50EE90;
      v55 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      v54 = MEMORY[0x1E69E6A70];
      *&v52 = a1;
      *(&v52 + 1) = a2;
      v53 = v6;
      sub_1DB301CDC(&v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1DB301D4C(v48, &v49);
      v51 = 0;
      v25 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1DB301BC0(0, *(v25 + 2) + 1, 1, v25);
        v55 = v25;
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1DB301BC0((v26 > 1), v27 + 1, 1, v25);
      }

      *(v25 + 2) = v27 + 1;
      v28 = &v25[40 * v27];
      v29 = v49;
      v30 = v50;
      v28[64] = v51;
      *(v28 + 2) = v29;
      *(v28 + 3) = v30;
      v55 = v25;
      sub_1DB301DBC(&v52);
      v31._countAndFlagsBits = 58;
      v31._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      v54 = MEMORY[0x1E69E6810];
      *&v52 = a4;
      sub_1DB301CDC(&v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1DB301D4C(v48, &v49);
      v51 = 0;
      v32 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1DB301BC0(0, *(v32 + 2) + 1, 1, v32);
        v55 = v32;
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = sub_1DB301BC0((v33 > 1), v34 + 1, 1, v32);
      }

      *(v32 + 2) = v34 + 1;
      v35 = &v32[40 * v34];
      v36 = v49;
      v37 = v50;
      v35[64] = v51;
      *(v35 + 2) = v36;
      *(v35 + 3) = v37;
      v55 = v32;
      sub_1DB301DBC(&v52);
      v38._countAndFlagsBits = 0xD00000000000001BLL;
      v38._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v38);
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      sub_1DB50B320();

      *&v49 = 0xD000000000000030;
      *(&v49 + 1) = 0x80000001DB52CEA0;
      v39 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v39);

      v54 = MEMORY[0x1E69E6158];
      v52 = v49;
      sub_1DB301CDC(&v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1DB301D4C(v48, &v49);
      v51 = 0;
      v40 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1DB301BC0(0, *(v40 + 2) + 1, 1, v40);
      }

      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1DB301BC0((v41 > 1), v42 + 1, 1, v40);
      }

      *(v40 + 2) = v42 + 1;
      v43 = &v40[40 * v42];
      v44 = v49;
      v45 = v50;
      v43[64] = v51;
      *(v43 + 2) = v44;
      *(v43 + 3) = v45;
      v55 = v40;
      sub_1DB301DBC(&v52);
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v46);
      *(v23 + 32) = v55;
      *&v49 = v22;
      LOBYTE(v52) = 0;
      OSLogger.log(contentsOf:withLevel:)(v23, &v52);
      goto LABEL_26;
    }

    sub_1DB50B320();

    v47 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v47);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3CC438(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD00000000000001ALL;
    *(&v42 + 1) = 0x80000001DB52CD10;
    v8(&v42);
    sub_1DB365724(v8, v9);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v10 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v11 = sub_1DB50B0F0();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1DB50B350();
        v16 = sub_1DB3D4EE8(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1DB3D4EE8(0xD00000000000001ALL, 0x80000001DB52CD10, &v42);
        _os_log_impl(&dword_1DB2F5000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v13, -1, -1);
        MEMORY[0x1E1288220](v12, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v17 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1DB301DBC(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1DB301DBC(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD00000000000001ALL;
      v46 = 0x80000001DB52CD10;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1DB301BC0(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1DB301BC0((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1DB301DBC(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3CCA10(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000022;
    *(&v42 + 1) = 0x80000001DB52CF10;
    v8(&v42);
    sub_1DB365724(v8, v9);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v10 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v11 = sub_1DB50B0F0();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1DB50B350();
        v16 = sub_1DB3D4EE8(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1DB3D4EE8(0xD000000000000022, 0x80000001DB52CF10, &v42);
        _os_log_impl(&dword_1DB2F5000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v13, -1, -1);
        MEMORY[0x1E1288220](v12, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v17 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1DB301DBC(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1DB301DBC(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000022;
      v46 = 0x80000001DB52CF10;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1DB301BC0(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1DB301BC0((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1DB301DBC(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3CCFE8(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000019;
    *(&v42 + 1) = 0x80000001DB52AA80;
    v8(&v42);
    sub_1DB365724(v8, v9);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v10 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v11 = sub_1DB50B0F0();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1DB50B350();
        v16 = sub_1DB3D4EE8(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1DB3D4EE8(0xD000000000000019, 0x80000001DB52AA80, &v42);
        _os_log_impl(&dword_1DB2F5000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v13, -1, -1);
        MEMORY[0x1E1288220](v12, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v17 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1DB301DBC(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1DB301DBC(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000019;
      v46 = 0x80000001DB52AA80;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1DB301BC0(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1DB301BC0((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1DB301DBC(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3CD5C0(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000027;
    *(&v42 + 1) = 0x80000001DB52CCC0;
    v8(&v42);
    sub_1DB365724(v8, v9);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v10 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v11 = sub_1DB50B0F0();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1DB50B350();
        v16 = sub_1DB3D4EE8(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1DB3D4EE8(0xD000000000000027, 0x80000001DB52CCC0, &v42);
        _os_log_impl(&dword_1DB2F5000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v13, -1, -1);
        MEMORY[0x1E1288220](v12, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v17 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1DB301DBC(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1DB301DBC(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000027;
      v46 = 0x80000001DB52CCC0;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1DB301BC0(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1DB301BC0((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1DB301DBC(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3CDB98(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000034;
    *(&v42 + 1) = 0x80000001DB52CC40;
    v8(&v42);
    sub_1DB365724(v8, v9);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v10 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v11 = sub_1DB50B0F0();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1DB50B350();
        v16 = sub_1DB3D4EE8(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1DB3D4EE8(0xD000000000000034, 0x80000001DB52CC40, &v42);
        _os_log_impl(&dword_1DB2F5000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v13, -1, -1);
        MEMORY[0x1E1288220](v12, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v17 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1DB301DBC(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1DB301DBC(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000034;
      v46 = 0x80000001DB52CC40;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1DB301BC0(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1DB301BC0((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1DB301DBC(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3CE170(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD000000000000032;
    *(&v42 + 1) = 0x80000001DB52CC80;
    v8(&v42);
    sub_1DB365724(v8, v9);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v10 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v11 = sub_1DB50B0F0();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1DB50B350();
        v16 = sub_1DB3D4EE8(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1DB3D4EE8(0xD000000000000032, 0x80000001DB52CC80, &v42);
        _os_log_impl(&dword_1DB2F5000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v13, -1, -1);
        MEMORY[0x1E1288220](v12, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v17 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1DB301DBC(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1DB301DBC(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD000000000000032;
      v46 = 0x80000001DB52CC80;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1DB301BC0(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1DB301BC0((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1DB301DBC(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3CE748(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v42;
  if (v42)
  {
    v9 = *(&v42 + 1);
    *&v42 = 0xD00000000000002ALL;
    *(&v42 + 1) = 0x80000001DB52CEE0;
    v8(&v42);
    sub_1DB365724(v8, v9);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v10 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v11 = sub_1DB50B0F0();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v42 = v13;
        *v12 = 136446722;
        v14 = sub_1DB50B350();
        v16 = sub_1DB3D4EE8(v14, v15, &v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2050;
        *(v12 + 14) = a4;
        *(v12 + 22) = 2082;
        *(v12 + 24) = sub_1DB3D4EE8(0xD00000000000002ALL, 0x80000001DB52CEE0, &v42);
        _os_log_impl(&dword_1DB2F5000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v13, -1, -1);
        MEMORY[0x1E1288220](v12, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v17 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v48 = MEMORY[0x1E69E6A70];
      v45 = a1;
      v46 = a2;
      v47 = v5;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
        v49 = v20;
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[40 * v22];
      v24 = v42;
      v25 = v43;
      v23[64] = v44;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v49 = v20;
      sub_1DB301DBC(&v45);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v48 = MEMORY[0x1E69E6810];
      v45 = a4;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v27 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
        v49 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v42;
      v32 = v43;
      v30[64] = v44;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v49 = v27;
      sub_1DB301DBC(&v45);
      v33._countAndFlagsBits = 0xD00000000000001BLL;
      v33._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v48 = MEMORY[0x1E69E6158];
      v45 = 0xD00000000000002ALL;
      v46 = 0x80000001DB52CEE0;
      sub_1DB301CDC(&v45, v41);
      v42 = 0u;
      v43 = 0u;
      sub_1DB301D4C(v41, &v42);
      v44 = 0;
      v34 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1DB301BC0(0, *(v34 + 2) + 1, 1, v34);
        v49 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1DB301BC0((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v42;
      v39 = v43;
      v37[64] = v44;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v49 = v34;
      sub_1DB301DBC(&v45);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v18 + 32) = v49;
      *&v42 = v17;
      LOBYTE(v45) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, &v45);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3CED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v44;
  if (v44)
  {
    v9 = *(&v44 + 1);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000014, 0x80000001DB52CC20);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v8(&v44);
    sub_1DB365724(v8, v9);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000014, 0x80000001DB52CC20);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v10 = v44;
    v11 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v12 = sub_1DB50B0F0();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v44 = v14;
      *v13 = 136446722;
      v15 = sub_1DB50B350();
      v17 = sub_1DB3D4EE8(v15, v16, &v44);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2050;
      *(v13 + 14) = a4;
      *(v13 + 22) = 2082;
      v18 = sub_1DB3D4EE8(v10, *(&v10 + 1), &v44);

      *(v13 + 24) = v18;
      _os_log_impl(&dword_1DB2F5000, v12, v11, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v14, -1, -1);
      MEMORY[0x1E1288220](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v19 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DB50EE90;
      v50 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v49 = MEMORY[0x1E69E6A70];
      *&v47 = a1;
      *(&v47 + 1) = a2;
      v48 = v5;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v22 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1DB301BC0(0, *(v22 + 2) + 1, 1, v22);
        v50 = v22;
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1DB301BC0((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[40 * v24];
      v26 = v44;
      v27 = v45;
      v25[64] = v46;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      v50 = v22;
      sub_1DB301DBC(&v47);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v49 = MEMORY[0x1E69E6810];
      *&v47 = a4;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v29 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
        v50 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v44;
      v34 = v45;
      v32[64] = v46;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v50 = v29;
      sub_1DB301DBC(&v47);
      v35._countAndFlagsBits = 0xD00000000000001BLL;
      v35._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
      MEMORY[0x1E1285C70](0xD000000000000014, 0x80000001DB52CC20);
      MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

      v49 = MEMORY[0x1E69E6158];
      v47 = v44;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v36 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
        v50 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1DB301BC0((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = v44;
      v41 = v45;
      v39[64] = v46;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v50 = v36;
      sub_1DB301DBC(&v47);
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *(v20 + 32) = v50;
      *&v44 = v19;
      LOBYTE(v47) = 0;
      OSLogger.log(contentsOf:withLevel:)(v20, &v47);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000014, 0x80000001DB52CC20);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3CF598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v44;
  if (v44)
  {
    v9 = *(&v44 + 1);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000013, 0x80000001DB52CBE0);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v8(&v44);
    sub_1DB365724(v8, v9);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000013, 0x80000001DB52CBE0);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v10 = v44;
    v11 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v12 = sub_1DB50B0F0();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v44 = v14;
      *v13 = 136446722;
      v15 = sub_1DB50B350();
      v17 = sub_1DB3D4EE8(v15, v16, &v44);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2050;
      *(v13 + 14) = a4;
      *(v13 + 22) = 2082;
      v18 = sub_1DB3D4EE8(v10, *(&v10 + 1), &v44);

      *(v13 + 24) = v18;
      _os_log_impl(&dword_1DB2F5000, v12, v11, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v14, -1, -1);
      MEMORY[0x1E1288220](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v19 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DB50EE90;
      v50 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v49 = MEMORY[0x1E69E6A70];
      *&v47 = a1;
      *(&v47 + 1) = a2;
      v48 = v5;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v22 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1DB301BC0(0, *(v22 + 2) + 1, 1, v22);
        v50 = v22;
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1DB301BC0((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[40 * v24];
      v26 = v44;
      v27 = v45;
      v25[64] = v46;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      v50 = v22;
      sub_1DB301DBC(&v47);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v49 = MEMORY[0x1E69E6810];
      *&v47 = a4;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v29 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
        v50 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v44;
      v34 = v45;
      v32[64] = v46;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v50 = v29;
      sub_1DB301DBC(&v47);
      v35._countAndFlagsBits = 0xD00000000000001BLL;
      v35._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
      MEMORY[0x1E1285C70](0xD000000000000013, 0x80000001DB52CBE0);
      MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

      v49 = MEMORY[0x1E69E6158];
      v47 = v44;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v36 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
        v50 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1DB301BC0((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = v44;
      v41 = v45;
      v39[64] = v46;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v50 = v36;
      sub_1DB301DBC(&v47);
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *(v20 + 32) = v50;
      *&v44 = v19;
      LOBYTE(v47) = 0;
      OSLogger.log(contentsOf:withLevel:)(v20, &v47);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000013, 0x80000001DB52CBE0);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3CFE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v44;
  if (v44)
  {
    v9 = *(&v44 + 1);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52CB20);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v8(&v44);
    sub_1DB365724(v8, v9);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52CB20);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v10 = v44;
    v11 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v12 = sub_1DB50B0F0();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v44 = v14;
      *v13 = 136446722;
      v15 = sub_1DB50B350();
      v17 = sub_1DB3D4EE8(v15, v16, &v44);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2050;
      *(v13 + 14) = a4;
      *(v13 + 22) = 2082;
      v18 = sub_1DB3D4EE8(v10, *(&v10 + 1), &v44);

      *(v13 + 24) = v18;
      _os_log_impl(&dword_1DB2F5000, v12, v11, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v14, -1, -1);
      MEMORY[0x1E1288220](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v19 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DB50EE90;
      v50 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v49 = MEMORY[0x1E69E6A70];
      *&v47 = a1;
      *(&v47 + 1) = a2;
      v48 = v5;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v22 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1DB301BC0(0, *(v22 + 2) + 1, 1, v22);
        v50 = v22;
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1DB301BC0((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[40 * v24];
      v26 = v44;
      v27 = v45;
      v25[64] = v46;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      v50 = v22;
      sub_1DB301DBC(&v47);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v49 = MEMORY[0x1E69E6810];
      *&v47 = a4;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v29 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
        v50 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v44;
      v34 = v45;
      v32[64] = v46;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v50 = v29;
      sub_1DB301DBC(&v47);
      v35._countAndFlagsBits = 0xD00000000000001BLL;
      v35._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52CB20);
      MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

      v49 = MEMORY[0x1E69E6158];
      v47 = v44;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v36 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
        v50 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1DB301BC0((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = v44;
      v41 = v45;
      v39[64] = v46;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v50 = v36;
      sub_1DB301DBC(&v47);
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *(v20 + 32) = v50;
      *&v44 = v19;
      LOBYTE(v47) = 0;
      OSLogger.log(contentsOf:withLevel:)(v20, &v47);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52CB20);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D0694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v44;
  if (v44)
  {
    v9 = *(&v44 + 1);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000023, 0x80000001DB52CB60);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v8(&v44);
    sub_1DB365724(v8, v9);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000023, 0x80000001DB52CB60);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v10 = v44;
    v11 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v12 = sub_1DB50B0F0();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v44 = v14;
      *v13 = 136446722;
      v15 = sub_1DB50B350();
      v17 = sub_1DB3D4EE8(v15, v16, &v44);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2050;
      *(v13 + 14) = a4;
      *(v13 + 22) = 2082;
      v18 = sub_1DB3D4EE8(v10, *(&v10 + 1), &v44);

      *(v13 + 24) = v18;
      _os_log_impl(&dword_1DB2F5000, v12, v11, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v14, -1, -1);
      MEMORY[0x1E1288220](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v19 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DB50EE90;
      v50 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v49 = MEMORY[0x1E69E6A70];
      *&v47 = a1;
      *(&v47 + 1) = a2;
      v48 = v5;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v22 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1DB301BC0(0, *(v22 + 2) + 1, 1, v22);
        v50 = v22;
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1DB301BC0((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[40 * v24];
      v26 = v44;
      v27 = v45;
      v25[64] = v46;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      v50 = v22;
      sub_1DB301DBC(&v47);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v49 = MEMORY[0x1E69E6810];
      *&v47 = a4;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v29 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
        v50 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v44;
      v34 = v45;
      v32[64] = v46;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v50 = v29;
      sub_1DB301DBC(&v47);
      v35._countAndFlagsBits = 0xD00000000000001BLL;
      v35._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
      MEMORY[0x1E1285C70](0xD000000000000023, 0x80000001DB52CB60);
      MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

      v49 = MEMORY[0x1E69E6158];
      v47 = v44;
      sub_1DB301CDC(&v47, v43);
      v44 = 0u;
      v45 = 0u;
      sub_1DB301D4C(v43, &v44);
      v46 = 0;
      v36 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
        v50 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1DB301BC0((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = v44;
      v41 = v45;
      v39[64] = v46;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v50 = v36;
      sub_1DB301DBC(&v47);
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *(v20 + 32) = v50;
      *&v44 = v19;
      LOBYTE(v47) = 0;
      OSLogger.log(contentsOf:withLevel:)(v20, &v47);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000023, 0x80000001DB52CB60);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    sub_1DB50B580();
    __break(1u);
  }
}