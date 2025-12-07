uint64_t sub_255D45510@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  sub_255DDF1BC(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
  if (v4)
  {

    return sub_255D3CE1C(a1, a3);
  }

  else
  {
    sub_255DDF1BC(a2, v8, v9, v10, v11);
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = sub_255E38AE8();
    a3[3] = v14;
    v15[0] = v13;
    v15[1] = MEMORY[0x277CDFC48];
    a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v14, v15);
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_255E39CD8();
  }
}

unint64_t sub_255D45664(uint64_t a1)
{
  result = sub_255D4568C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D4568C()
{
  result = qword_27F7E64B0;
  if (!qword_27F7E64B0)
  {
    result = swift_getWitnessTable(byte_255E3D8F4, &type metadata for FixedSizeModifier, v0, v1);
    atomic_store(result, &qword_27F7E64B0);
  }

  return result;
}

unint64_t sub_255D456E0()
{
  result = qword_27F7E64C0;
  if (!qword_27F7E64C0)
  {
    result = swift_getWitnessTable(byte_255E3DA44, &type metadata for FixedSizeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E64C0);
  }

  return result;
}

unint64_t sub_255D45734()
{
  result = qword_27F7E64D0;
  if (!qword_27F7E64D0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E64C8, &qword_255E3D940);
    result = swift_getWitnessTable(protocol conformance descriptor for Referenceable<A>, v3, v0, v1);
    atomic_store(result, &qword_27F7E64D0);
  }

  return result;
}

unint64_t sub_255D45814()
{
  result = qword_27F7E64D8;
  if (!qword_27F7E64D8)
  {
    result = swift_getWitnessTable(byte_255E3DA1C, &type metadata for FixedSizeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E64D8);
  }

  return result;
}

unint64_t sub_255D4586C()
{
  result = qword_27F7E64E0;
  if (!qword_27F7E64E0)
  {
    result = swift_getWitnessTable(aM_26, &type metadata for FixedSizeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E64E0);
  }

  return result;
}

unint64_t sub_255D458C4()
{
  result = qword_27F7E64E8;
  if (!qword_27F7E64E8)
  {
    result = swift_getWitnessTable(asc_255E3D97C, &type metadata for FixedSizeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E64E8);
  }

  return result;
}

uint64_t type metadata accessor for ControlSizeModifier(uint64_t a1)
{
  result = qword_27F7E64F0;
  if (!qword_27F7E64F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255D4598C(uint64_t a1)
{
  result = sub_255E38868();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255D45A04()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D45AB4(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D45B50(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D45BFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D46728(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D45C2C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1768843629;
  v4 = 0xE700000000000000;
  v5 = 0x72616C75676572;
  if (*v1 != 2)
  {
    v5 = 0x656772616CLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C6C616D73;
    v2 = 0xE500000000000000;
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

uint64_t sub_255D45D48()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D45DA4(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D45DEC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_255E3AB48();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_255D45E64@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255D45EBC(uint64_t a1)
{
  v2 = sub_255D46308();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D45EF8(uint64_t a1)
{
  v2 = sub_255D46308();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D45F34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6518, &unk_255E3DB10);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = type metadata accessor for ControlSizeModifier(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D46308();
  sub_255E3AE28();
  if (!v2)
  {
    v11 = v16;
    sub_255D4635C();
    sub_255E3ABC8();
    (*(v5 + 8))(v7, v4);
    v12 = v17;
    v13 = sub_255E38868();
    (*(*(v13 - 8) + 104))(v10, **(&unk_279812170 + v12), v13);
    sub_255D463B0(v10, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D4613C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6508, &unk_255E53830);
  v4 = sub_255E38AE8();
  a2[3] = v4;
  v6[0] = v3;
  v6[1] = sub_255D462A4();
  a2[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v4, v6);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255E398C8();
}

unint64_t sub_255D46224(uint64_t a1)
{
  result = sub_255D4624C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D4624C()
{
  result = qword_27F7E6500;
  if (!qword_27F7E6500)
  {
    v3 = type metadata accessor for ControlSizeModifier(255);
    result = swift_getWitnessTable(aE_29, v3, v0, v1);
    atomic_store(result, &qword_27F7E6500);
  }

  return result;
}

unint64_t sub_255D462A4()
{
  result = qword_27F7E6510;
  if (!qword_27F7E6510)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6508, &unk_255E53830);
    result = swift_getWitnessTable(MEMORY[0x277CE0868], v3, v0, v1);
    atomic_store(result, &qword_27F7E6510);
  }

  return result;
}

unint64_t sub_255D46308()
{
  result = qword_27F7E6520;
  if (!qword_27F7E6520)
  {
    result = swift_getWitnessTable(asc_255E3DD20, &type metadata for ControlSizeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6520);
  }

  return result;
}

unint64_t sub_255D4635C()
{
  result = qword_27F7E6528;
  if (!qword_27F7E6528)
  {
    result = swift_getWitnessTable(byte_255E3DCF8, &type metadata for ControlSizeString, v0, v1);
    atomic_store(result, &qword_27F7E6528);
  }

  return result;
}

uint64_t sub_255D463B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlSizeModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ControlSizeString(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ControlSizeString(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_255D46578()
{
  result = qword_27F7E6530;
  if (!qword_27F7E6530)
  {
    result = swift_getWitnessTable(byte_255E3DC08, &type metadata for ControlSizeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6530);
  }

  return result;
}

unint64_t sub_255D465D0()
{
  result = qword_27F7E6538;
  if (!qword_27F7E6538)
  {
    result = swift_getWitnessTable(byte_255E3DCD0, &type metadata for ControlSizeString, v0, v1);
    atomic_store(result, &qword_27F7E6538);
  }

  return result;
}

unint64_t sub_255D46628()
{
  result = qword_27F7E6540;
  if (!qword_27F7E6540)
  {
    result = swift_getWitnessTable(aA_21, &type metadata for ControlSizeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6540);
  }

  return result;
}

unint64_t sub_255D46680()
{
  result = qword_27F7E6548;
  if (!qword_27F7E6548)
  {
    result = swift_getWitnessTable(aQ_13, &type metadata for ControlSizeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6548);
  }

  return result;
}

unint64_t sub_255D466D4()
{
  result = qword_27F7E6550;
  if (!qword_27F7E6550)
  {
    result = swift_getWitnessTable(aI_12, &type metadata for ControlSizeString, v0, v1);
    atomic_store(result, &qword_27F7E6550);
  }

  return result;
}

unint64_t sub_255D46728(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t AnyViewContent<>.body.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  (*(a1 + 40))(v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = View.anyView.getter(v3, v4);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v7);
  *a2 = v5;
  return result;
}

uint64_t AnyViewContent<>.anyView.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_255E3A038();
}

uint64_t View.view.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_1, v3, a1);
}

unint64_t sub_255D46990@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = MEMORY[0x277CE1120];
  result = sub_255D3EF4C();
  *(a1 + 32) = result;
  return result;
}

uint64_t AnyViewContent<>.partialBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  (*(a2 + 24))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(v7 + 16);
  v14(v12, v10, AssociatedTypeWitness);
  v15 = *(v7 + 8);
  v15(v10, AssociatedTypeWitness);
  a3[3] = AssociatedTypeWitness;
  a3[4] = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v14(boxed_opaque_existential_1, v12, AssociatedTypeWitness);
  return (v15)(v12, AssociatedTypeWitness);
}

unint64_t sub_255D46BA0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = MEMORY[0x277CE1278];
  result = sub_255D3EEF8();
  *(a1 + 32) = result;
  return result;
}

__n128 sub_255D46C34@<Q0>(__n128 *a1@<X8>)
{
  sub_255D3ACDC(&v4);
  v2 = sub_255D3D120();
  result = v4;
  a1[1].n128_u64[1] = &type metadata for AnyShape;
  a1[2].n128_u64[0] = v2;
  *a1 = result;
  return result;
}

unint64_t sub_255D46CD0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = MEMORY[0x277CE14A8];
  result = sub_255D3EAC8();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_255D46D04(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v21 = v1[4];
  v22 = v3;
  v4 = v1[1];
  v18[0] = *v1;
  v18[1] = v4;
  v5 = v1[3];
  v7 = *v1;
  v6 = v1[1];
  v19 = v1[2];
  v20 = v5;
  v8 = v1[5];
  v15 = v21;
  v16 = v8;
  v11 = v7;
  v12 = v6;
  v23 = *(v1 + 12);
  v17 = *(v1 + 12);
  v13 = v19;
  v14 = v2;
  sub_255D3EA60(v18, v10);
  sub_255D3E34C();
  return sub_255E3A038();
}

uint64_t sub_255D46D94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 80);
  v13[4] = *(v2 + 64);
  v13[5] = v4;
  v14 = *(v2 + 96);
  v5 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v5;
  v6 = *(v2 + 48);
  v13[2] = *(v2 + 32);
  v13[3] = v6;
  a2[3] = a1;
  a2[4] = sub_255D3E34C();
  v7 = swift_allocObject();
  *a2 = v7;
  v8 = *(v2 + 80);
  *(v7 + 80) = *(v2 + 64);
  *(v7 + 96) = v8;
  *(v7 + 112) = *(v2 + 96);
  v9 = *(v2 + 16);
  *(v7 + 16) = *v2;
  *(v7 + 32) = v9;
  v10 = *(v2 + 48);
  *(v7 + 48) = *(v2 + 32);
  *(v7 + 64) = v10;
  return sub_255D3EA60(v13, v12);
}

__n128 sub_255D46E30@<Q0>(__n128 *a1@<X8>)
{
  sub_255D3BAA4(&v4);
  v2 = sub_255D3D120();
  result = v4;
  a1[1].n128_u64[1] = &type metadata for AnyShape;
  a1[2].n128_u64[0] = v2;
  *a1 = result;
  return result;
}

uint64_t View.anyView.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  return sub_255E3A038();
}

uint64_t View.liftUI_viewWithAppliedModifiers(_:store:localStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  a6[3] = a4;
  a6[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  result = (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v7, a4);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = (a1 + 32);
    do
    {
      v17 = v16[3];
      v18 = v16[4];
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v18 + 16))(&v19, a6, a2, a3, v17, v18);
      sub_255D34630(&v19, v20);
      __swift_destroy_boxed_opaque_existential_1Tm(a6);
      result = sub_255D34630(v20, a6);
      v16 += 5;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t ViewContent.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ViewContent.modifiers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_255D47204(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t ViewContent.store.getter()
{
  if (*(v0 + 120))
  {
  }

  else
  {
    type metadata accessor for RemoteStateStore(0);
    sub_255D4EE70(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t ViewContent.$store.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = type metadata accessor for RemoteStateStore(0);
  v4 = sub_255D4EE70(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);

  return MEMORY[0x282131550](v1, v2, v3, v4);
}

uint64_t ViewContent.localStore.getter()
{
  if (*(v0 + 136))
  {
  }

  else
  {
    type metadata accessor for LocalStateStore(0);
    sub_255D4EE70(&qword_27F7E5EF8, type metadata accessor for LocalStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t ViewContent.$localStore.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = type metadata accessor for LocalStateStore(0);
  v4 = sub_255D4EE70(&qword_27F7E5EF8, type metadata accessor for LocalStateStore, protocol conformance descriptor for StateDict<A, B>);

  return MEMORY[0x282131550](v1, v2, v3, v4);
}

unint64_t sub_255D474B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D4C62C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_255D474E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D4C62C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D4750C(uint64_t a1)
{
  v2 = sub_255D4C11C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D47548(uint64_t a1)
{
  v2 = sub_255D4C11C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ViewContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_255E385D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6568, &unk_255E3DD90);
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  v64 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x28223BE20](v9);
  v68 = &v51 - v10;
  type metadata accessor for RemoteStateStore(0);
  sub_255D4EE70(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  memset(v74, 0, sizeof(v74));
  v79 = sub_255E38CC8();
  v75 = v79;
  v76 = v11;
  type metadata accessor for LocalStateStore(0);
  sub_255D4EE70(&qword_27F7E5EF8, type metadata accessor for LocalStateStore, protocol conformance descriptor for StateDict<A, B>);
  v12 = sub_255E38CC8();
  v77 = v12;
  v78 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_255E3AE18();
  if (qword_27F7E5E88 != -1)
  {
    swift_once();
  }

  v15 = sub_255E3AAE8();
  v16 = __swift_project_value_buffer(v15, qword_27F8152F0);
  if (!*(v14 + 16) || (v17 = sub_255D3CA98(v16), (v18 & 1) == 0))
  {

    goto LABEL_10;
  }

  sub_255D3951C(*(v14 + 56) + 32 * v17, v71);

  type metadata accessor for ContentRegistry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    type metadata accessor for ContentRegistryError(0);
    sub_255D4EE70(&qword_27F7E61A0, type metadata accessor for ContentRegistryError, aQ_9);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_11;
  }

  v57 = v3;
  v58 = v4;
  v59 = a1;
  v60 = v12;
  v19 = v70[0];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_255D3CAFC();
  v21 = v67;
  v22 = v68;
  sub_255E3AE28();
  if (v21)
  {

LABEL_8:
    a1 = v59;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_255D395E4(v74, &qword_27F7E6558, &qword_255E3DD80);
    sub_255D395E4(&v74[40], &qword_27F7E6560, &qword_255E3DD88);
  }

  v56 = v20;
  v67 = v19;
  v24 = v66;
  v25 = sub_255E3ABD8();
  if (!*(v25 + 16))
  {

    type metadata accessor for DynamicKeyError(0);
    sub_255D4EE70(&qword_27F7E61D8, type metadata accessor for DynamicKeyError, byte_255E482E4);
    swift_allocError();
    sub_255E3AB68();
    sub_255E3A9C8();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v65 + 8))(v22, v24);
    goto LABEL_8;
  }

  v27 = *(v25 + 32);
  v26 = *(v25 + 40);
  v28 = *(v25 + 48);
  v29 = *(v25 + 56);

  v73[2] = v27;
  v73[3] = v26;
  v71[0] = v27;
  v71[1] = v26;
  v55 = v28;
  v71[2] = v28;
  v54 = v29;
  v72 = v29;
  sub_255D4C11C();

  sub_255E3AB58();
  v52 = v27;
  v53 = v26;
  LOBYTE(v71[0]) = 0;
  v30 = sub_255E3AB88();
  if (!v31)
  {
    sub_255E385C8();
    v32 = sub_255E385B8();
    v34 = v33;
    (*(v58 + 8))(v6, v57);
    v31 = v34;
    v30 = v32;
  }

  v35 = v53;
  v36 = v55;
  v73[0] = v30;
  v73[1] = v31;
  v58 = v31;

  v37 = sub_255E3AB68();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61B0, &qword_255E3BBE0);
  inited = swift_initStackObject();
  v51 = xmmword_255E3BBC0;
  *(inited + 16) = xmmword_255E3BBC0;
  v39 = v56;
  *(inited + 56) = &type metadata for DynamicKey;
  *(inited + 64) = v39;
  v40 = swift_allocObject();
  *(inited + 32) = v40;
  v41 = v52;
  *(v40 + 16) = v52;
  *(v40 + 24) = v35;
  *(v40 + 32) = v36;
  *(v40 + 40) = v54;
  v71[0] = v37;

  sub_255D3CDA0(inited);
  v42 = sub_255E0800C(v41, v35, v71[0]);
  v44 = v43;
  v45 = v42;

  swift_bridgeObjectRelease_n();
  LOBYTE(v70[0]) = 1;
  v46 = v63;
  sub_255E3AB78();
  sub_255D3CE1C(v71, &v69);
  v70[3] = v45;
  v70[4] = v44;
  __swift_allocate_boxed_opaque_existential_1(v70);
  sub_255E3A7B8();
  v47 = v59;
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  sub_255D47204(v70, &v74[40], &qword_27F7E6560, &qword_255E3DD88);
  v48 = v68;
  v49 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61C0, &qword_255E3BBE8);
  LOBYTE(v70[0]) = 2;
  sub_255D3CF34();
  sub_255E3ABA8();
  v50 = v71[0];

  if (!v50)
  {
    v50 = MEMORY[0x277D84F90];
  }

  (*(v62 + 8))(v49, v46);
  (*(v65 + 8))(v48, v66);
  v73[4] = v50;
  sub_255D4C170(v73, v61);
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  return sub_255D4C1A8(v73);
}

uint64_t ViewContent.view.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for ViewContent;
  a1[4] = sub_255D4C1D8();
  v3 = swift_allocObject();
  *a1 = v3;

  return sub_255D4C170(v1, v3 + 16);
}

uint64_t ViewContent.partialBody.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_255D3957C((v1 + 5), &v39, &qword_27F7E6558, &qword_255E3DD80);
  if (v40)
  {
    sub_255D34630(&v39, &v42);
    v4 = v45;
    v5 = v46;
    __swift_project_boxed_opaque_existential_1(&v42, v45);
    (*(v5 + 32))(&v39, v4, v5);
    v6 = v40;
    v7 = v41;
    __swift_project_boxed_opaque_existential_1(&v39, v40);
    v8 = sub_255D48C6C(v2[4]);
    v9 = v2[15];
    if (v9)
    {
      v10 = v2[17];
      if (v10)
      {
        v11 = v8;

        View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v11, v9, v10, v6, v7, &v36);

        v12 = v37;
        v13 = v38;
        __swift_project_boxed_opaque_existential_1(&v36, v37);
        v14 = View.anyView.getter(v12, v13);
        __swift_destroy_boxed_opaque_existential_1Tm(&v36);
        __swift_destroy_boxed_opaque_existential_1Tm(&v39);
        *&v36 = v14;
        BYTE8(v36) = 0;

        v15 = MEMORY[0x277CE11C0];
        sub_255E39258();
        *&v36 = v39;
        WORD4(v36) = BYTE8(v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6580, &qword_255E3DDA0);
        sub_255D4C8D4(&qword_27F7E6588, &qword_27F7E6580, &qword_255E3DDA0, v15);
        sub_255E39258();

        v16 = v39;
        v17 = BYTE8(v39);
        v18 = BYTE9(v39);
        __swift_destroy_boxed_opaque_existential_1Tm(&v42);
LABEL_18:
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6590, &qword_255E3DDA8);
        result = sub_255D4C22C();
        *(a1 + 32) = result;
        *a1 = v16;
        *(a1 + 8) = v17;
        *(a1 + 9) = v18;
        return result;
      }

      goto LABEL_20;
    }

LABEL_19:
    type metadata accessor for RemoteStateStore(0);
    sub_255D4EE70(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    sub_255E38CB8();
    __break(1u);
LABEL_20:
    type metadata accessor for LocalStateStore(0);
    sub_255D4EE70(&qword_27F7E5EF8, type metadata accessor for LocalStateStore, protocol conformance descriptor for StateDict<A, B>);

    sub_255E38CB8();
    __break(1u);
    goto LABEL_21;
  }

  sub_255D395E4(&v39, &qword_27F7E6558, &qword_255E3DD80);
  sub_255D3957C((v1 + 10), &v42, &qword_27F7E6560, &qword_255E3DD88);
  v19 = v45;
  if (!v45)
  {
    sub_255D395E4(&v42, &qword_27F7E6560, &qword_255E3DD88);
    *&v39 = 0;
    WORD4(v39) = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6580, &qword_255E3DDA0);
    sub_255D4C8D4(&qword_27F7E6588, &qword_27F7E6580, &qword_255E3DDA0, MEMORY[0x277CE11C0]);
    sub_255E39258();
LABEL_17:
    v16 = v42;
    v17 = v43;
    v18 = v44;
    goto LABEL_18;
  }

  v20 = v46;
  __swift_project_boxed_opaque_existential_1(&v42, v45);
  v21 = v1[15];
  if (!v21)
  {
    goto LABEL_19;
  }

  v22 = v1[17];
  if (v22)
  {
    v23 = *(v20 + 48);

    v23(&v39, v21, v22, v19, v20);

    v24 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    v25 = sub_255D48C6C(v1[4]);
    v40 = &type metadata for AnyShape;
    v41 = sub_255D3D120();
    v39 = v24;
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = v25 + 32;

      do
      {
        sub_255D3CE1C(v27, &v42);
        v28 = v45;
        v29 = v46;
        __swift_project_boxed_opaque_existential_1(&v42, v45);
        (*(v29 + 16))(&v35, &v39, v21, v22, v28, v29);
        __swift_destroy_boxed_opaque_existential_1Tm(&v42);
        sub_255D34630(&v35, &v36);
        __swift_destroy_boxed_opaque_existential_1Tm(&v39);
        sub_255D34630(&v36, &v39);
        v27 += 40;
        --v26;
      }

      while (v26);
    }

    else
    {
    }

    sub_255D34630(&v39, &v42);
    v30 = v45;
    v31 = v46;
    __swift_project_boxed_opaque_existential_1(&v42, v45);
    v32 = View.anyView.getter(v30, v31);
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    *&v39 = v32;
    BYTE8(v39) = 1;

    v33 = MEMORY[0x277CE11C0];
    sub_255E39258();
    *&v39 = v42;
    WORD4(v39) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6580, &qword_255E3DDA0);
    sub_255D4C8D4(&qword_27F7E6588, &qword_27F7E6580, &qword_255E3DDA0, v33);
    sub_255E39258();

    goto LABEL_17;
  }

LABEL_21:
  type metadata accessor for LocalStateStore(0);
  sub_255D4EE70(&qword_27F7E5EF8, type metadata accessor for LocalStateStore, protocol conformance descriptor for StateDict<A, B>);

  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255D48968(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_255DE5F30(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_255D4C170(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_255DE5F30((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for ViewContent;
      v10 = sub_255D44794();
      *&v8 = swift_allocObject();
      sub_255D4C170(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_255D34630(&v8, v2 + 40 * v6 + 32);
      sub_255D4C1A8(v11);
      v4 += 152;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_255D48A94(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v19 = MEMORY[0x277D84F90];
    sub_255DE6070(0, v1, 0);
    v4 = a1 + 32;
    v2 = v19;
    do
    {
      sub_255D3CE1C(v4, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6330, &qword_255E3E0F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E65D0, &qword_255E3E0F8);
      swift_dynamicCast();
      v19 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_255DE6070((v5 > 1), v6 + 1, 1);
      }

      v7 = v17;
      v8 = v18;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      MEMORY[0x28223BE20](v9);
      v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v12 + 16))(v11);
      sub_255D4C594(v6, v11, &v19, v7, v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      v2 = v19;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_255D48C6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_255DE6070(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_255D4C728(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_255DE6070((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for AnyViewModifier;
      v10 = sub_255D4C784();
      *&v8 = swift_allocObject();
      sub_255D4C728(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_255D34630(&v8, v2 + 40 * v6 + 32);
      sub_255D4C7D8(v11);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t ViewContent.body.getter@<X0>(uint64_t *a1@<X8>)
{
  ViewContent.partialBody.getter(v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = View.anyView.getter(v2, v3);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v6);
  *a1 = v4;
  return result;
}

uint64_t sub_255D48E14(uint64_t a1)
{
  sub_255D4C170(v1, v3);
  sub_255D4C1D8();
  return sub_255E3A038();
}

uint64_t sub_255D48E94@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_255D48EA0@<X0>(uint64_t *a1@<X8>)
{
  ViewContent.partialBody.getter(v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = View.anyView.getter(v2, v3);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v6);
  *a1 = v4;
  return result;
}

unint64_t ViewContent.description.getter()
{
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_255E3A9A8();

  v5 = 0xD000000000000016;
  v6 = 0x8000000255E65C20;
  sub_255D3957C(v0 + 40, v4, &qword_27F7E6558, &qword_255E3DD80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6558, &qword_255E3DD80);
  v1 = sub_255E3A528();
  MEMORY[0x259C4E8F0](v1);

  MEMORY[0x259C4E8F0](0x696669646F6D202CLL, 0xED0000203A737265);
  v2 = MEMORY[0x259C4E9D0](*(v0 + 32), &type metadata for AnyViewModifier);
  MEMORY[0x259C4E8F0](v2);

  MEMORY[0x259C4E8F0](15904, 0xE200000000000000);
  return v5;
}

uint64_t sub_255D49060@<X0>(uint64_t a1@<X0>, uint64_t *a7@<X8>)
{
  v9 = sub_255D4D04C();
  v10 = *(v9 + 24);
  a7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66B8, &qword_255E3E180);
  a7[4] = sub_255D38950(&qword_27F7E66C0, &qword_27F7E66B8, &qword_255E3E180, MEMORY[0x277CDE5A0]);
  __swift_allocate_boxed_opaque_existential_1(a7);
  return v10(a1, v9);
}

uint64_t sub_255D49144(uint64_t a1)
{
  sub_255D4D2E4(v1, &v3);
  sub_255D4D290();
  return sub_255E3A038();
}

uint64_t sub_255D491C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_255D4D0F4();
  v5 = *(v4 + 24);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66D8, &qword_255E3E188);
  a2[4] = sub_255D4D148();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v5(a1, v4);
}

uint64_t sub_255D4927C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_255E3A0C8();
  a1[4] = sub_255D4EE70(&qword_27F7E6710, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255E3A0B8();
}

uint64_t sub_255D492F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  v14 = *(v1 + 32);
  v15 = v3;
  v4 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v4;
  v5 = *(v1 + 48);
  v10 = v14;
  v11 = v5;
  v16 = *(v1 + 64);
  v12 = *(v1 + 64);
  v8 = v13[0];
  v9 = v2;
  sub_255D4CA38(v13, v7);
  sub_255D4C9DC();
  return sub_255E3A038();
}

uint64_t sub_255D49370@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 48);
  v11[2] = *(v2 + 32);
  v11[3] = v4;
  v12 = *(v2 + 64);
  v5 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v5;
  a2[3] = a1;
  a2[4] = sub_255D4C9DC();
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = *(v2 + 48);
  *(v6 + 48) = *(v2 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v2 + 64);
  v8 = *(v2 + 16);
  *(v6 + 16) = *v2;
  *(v6 + 32) = v8;
  return sub_255D4CA38(v11, v10);
}

__n128 sub_255D493F8@<Q0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v17 = v1[2];
  v18 = v3;
  v19 = *(v1 + 8);
  v4 = v1[1];
  v15 = *v1;
  v16 = v4;
  sub_255D66948(v12);
  v5 = v13;
  v6 = v14;
  v7 = sub_255D4C82C();
  v10 = v12[1];
  v11 = v12[0];
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E65D8, &unk_255E3E100);
  a1[4] = v7;
  v8 = swift_allocObject();
  *a1 = v8;
  result = v11;
  *(v8 + 16) = v11;
  *(v8 + 32) = v10;
  *(v8 + 48) = v5;
  *(v8 + 49) = v6;
  return result;
}

uint64_t sub_255D494D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, _BYTE *), uint64_t (*a4)(uint64_t))
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 48);
  v19 = *(v4 + 32);
  v20 = v7;
  v8 = *(v4 + 16);
  v18[0] = *v4;
  v18[1] = v8;
  v9 = *(v4 + 48);
  v15 = v19;
  v16 = v9;
  v21 = *(v4 + 64);
  v17 = *(v4 + 64);
  v13 = v18[0];
  v14 = v6;
  v10 = a3(v18, v12);
  a4(v10);
  return sub_255E3A038();
}

uint64_t sub_255D4959C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a4)(_OWORD *, char *)@<X4>, uint64_t *a5@<X8>)
{
  v8 = *(v5 + 48);
  v15[2] = *(v5 + 32);
  v15[3] = v8;
  v16 = *(v5 + 64);
  v9 = *(v5 + 16);
  v15[0] = *v5;
  v15[1] = v9;
  a5[3] = a1;
  a5[4] = a2();
  v10 = swift_allocObject();
  *a5 = v10;
  v11 = *(v5 + 48);
  *(v10 + 48) = *(v5 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(v5 + 64);
  v12 = *(v5 + 16);
  *(v10 + 16) = *v5;
  *(v10 + 32) = v12;
  return a4(v15, v14);
}

unint64_t sub_255D49638@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v14 = v1[2];
  v15 = v3;
  v16 = *(v1 + 8);
  v4 = v1[1];
  v12 = *v1;
  v13 = v4;
  sub_255D67B50(&v9);
  v5 = v9;
  v6 = v10;
  v7 = v11;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6788, &qword_255E3E1D0);
  result = sub_255D4D738();
  *(a1 + 32) = result;
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 9) = v7;
  return result;
}

void *sub_255D49754@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E67A8, &qword_255E3E1D8);
  a1[4] = sub_255D4D914();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255D684D8(boxed_opaque_existential_1);
}

uint64_t sub_255D497DC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F08, &qword_255E3B9A0);
  a1[4] = sub_255D38950(&qword_27F7E5FC8, &qword_27F7E5F08, &qword_255E3B9A0, MEMORY[0x277CDD7F8]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255E388C8();
}

uint64_t sub_255D49860(uint64_t a1)
{
  sub_255D4DA74(v1, &v3);
  sub_255D4DA20();
  return sub_255E3A038();
}

void *sub_255D498DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_255D4D9CC();
  result = (*(v4 + 24))(&v8, a1, v4);
  v6 = v8;
  v7 = MEMORY[0x277CE0F70];
  a2[3] = MEMORY[0x277CE0F78];
  a2[4] = v7;
  *a2 = v6;
  return result;
}

uint64_t sub_255D49950(uint64_t a1)
{
  sub_255D4E190(v1, v3);
  sub_255D4E13C();
  return sub_255E3A038();
}

uint64_t sub_255D49998@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  a2[4] = sub_255D4E13C();
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_255D4E190(v2, v4 + 16);
}

uint64_t sub_255D499F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_255D4E0E8();
  v5 = *(v4 + 24);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E68A8, &qword_255E3E228);
  a2[4] = sub_255D38950(&qword_27F7E68B0, &qword_27F7E68A8, &qword_255E3E228, MEMORY[0x277CDD6E0]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v5(a1, v4);
}

uint64_t sub_255D49AAC(uint64_t a1)
{
  sub_255D4DF88(v1, &v3);
  sub_255D4DF34();
  return sub_255E3A038();
}

uint64_t sub_255D49B28@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6868, &qword_255E3E218);
  a1[4] = sub_255D38950(&qword_27F7E6870, &qword_27F7E6868, &qword_255E3E218, MEMORY[0x277CDF068]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255D6AF58();
}

uint64_t sub_255D49BAC(uint64_t a1)
{
  sub_255D4E08C(v1, v3);
  sub_255D4E038();
  return sub_255E3A038();
}

uint64_t sub_255D49BF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  a2[4] = sub_255D4E038();
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_255D4E08C(v2, v4 + 16);
}

uint64_t sub_255D49C50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_255D4DFE4();
  v5 = *(v4 + 24);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6888, &qword_255E3E220);
  a2[4] = sub_255D38950(&qword_27F7E6890, &qword_27F7E6888, &qword_255E3E220, MEMORY[0x277CDEFF0]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v5(a1, v4);
}

uint64_t sub_255D49D40@<X0>(uint64_t a1@<X0>, uint64_t *a7@<X8>)
{
  v9 = sub_255D4E1EC();
  v10 = *(v9 + 24);
  a7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E68C8, &unk_255E3E230);
  a7[4] = sub_255D4E240();
  __swift_allocate_boxed_opaque_existential_1(a7);
  return v10(a1, v9);
}

uint64_t sub_255D49DF0(uint64_t a1)
{
  sub_255D4E744(v1, &v3);
  sub_255D4E68C();
  return sub_255E3A038();
}

uint64_t sub_255D49E6C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E68E8, &qword_255E44080);
  a1[4] = sub_255D4E474();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255D6CA20(boxed_opaque_existential_1);
}

uint64_t sub_255D49ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  a3(a1, a2, a3, a4, a5, a6);

  return sub_255E3A038();
}

uint64_t sub_255D49F84@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, void *a4@<X8>)
{
  v7 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  v11 = v4[4];
  v10 = v4[5];
  a4[3] = a1;
  a4[4] = a2();
  v12 = swift_allocObject();
  *a4 = v12;
  v12[2] = v7;
  v12[3] = v6;
  v12[4] = v8;
  v12[5] = v9;
  v12[6] = v11;
  v12[7] = v10;
}

uint64_t sub_255D4A028@<X0>(uint64_t a1@<X0>, uint64_t *a7@<X8>)
{
  v9 = sub_255D4E7A0();
  v10 = *(v9 + 24);
  a7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6938, &unk_255E44030);
  a7[4] = sub_255D38950(&qword_27F7E6940, &qword_27F7E6938, &unk_255E44030, MEMORY[0x277CDE580]);
  __swift_allocate_boxed_opaque_existential_1(a7);
  return v10(a1, v9);
}

uint64_t sub_255D4A124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();

  return sub_255E3A038();
}

uint64_t sub_255D4A1CC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, void *a4@<X8>)
{
  v7 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  a4[3] = a1;
  a4[4] = a2();
  v11 = swift_allocObject();
  *a4 = v11;
  v11[2] = v7;
  v11[3] = v6;
  v11[4] = v8;
  v11[5] = v9;
  v11[6] = v10;
}

void sub_255D4A268(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277CE1410];
  *(a1 + 24) = MEMORY[0x277CE1428];
  *(a1 + 32) = v1;
}

uint64_t sub_255D4A280(uint64_t a1)
{
  sub_255D4E418(v1, &v3);
  sub_255D4E344();
  return sub_255E3A038();
}

uint64_t sub_255D4A2FC@<X0>(uint64_t a1@<X8>)
{
  sub_255D715C0(&v5);
  v2 = v5;
  v3 = v6;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6580, &qword_255E3DDA0);
  result = sub_255D4C8D4(&qword_27F7E6588, &qword_27F7E6580, &qword_255E3DDA0, MEMORY[0x277CE11C0]);
  *(a1 + 32) = result;
  *a1 = v2;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_255D4A3BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_255D4EF0C();
  v5 = *(v4 + 24);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A08, &unk_255E4A890);
  a2[4] = sub_255D4EF60();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v5(a1, v4);
}

uint64_t sub_255D4A45C(uint64_t a1)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 80);
  v19 = *(v1 + 96);
  v20 = v2;
  v4 = *(v1 + 112);
  v21 = *(v1 + 128);
  v5 = *(v1 + 48);
  v6 = *(v1 + 16);
  v15 = *(v1 + 32);
  v16 = v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  v17 = *(v1 + 64);
  v18 = v8;
  v9 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v9;
  v12[6] = v19;
  v12[7] = v4;
  v12[8] = *(v1 + 128);
  v12[2] = v15;
  v12[3] = v7;
  v12[4] = v17;
  v12[5] = v3;
  v22 = *(v1 + 144);
  v13 = *(v1 + 144);
  v12[0] = v14[0];
  v12[1] = v6;
  sub_255D4C6CC(v14, v11);
  sub_255D4C678();
  return sub_255E3A038();
}

uint64_t sub_255D4A508@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 112);
  v15[6] = *(v2 + 96);
  v15[7] = v4;
  v15[8] = *(v2 + 128);
  v16 = *(v2 + 144);
  v5 = *(v2 + 48);
  v15[2] = *(v2 + 32);
  v15[3] = v5;
  v6 = *(v2 + 80);
  v15[4] = *(v2 + 64);
  v15[5] = v6;
  v7 = *(v2 + 16);
  v15[0] = *v2;
  v15[1] = v7;
  a2[3] = a1;
  a2[4] = sub_255D4C678();
  v8 = swift_allocObject();
  *a2 = v8;
  v9 = *(v2 + 112);
  *(v8 + 112) = *(v2 + 96);
  *(v8 + 128) = v9;
  *(v8 + 144) = *(v2 + 128);
  *(v8 + 160) = *(v2 + 144);
  v10 = *(v2 + 48);
  *(v8 + 48) = *(v2 + 32);
  *(v8 + 64) = v10;
  v11 = *(v2 + 80);
  *(v8 + 80) = *(v2 + 64);
  *(v8 + 96) = v11;
  v12 = *(v2 + 16);
  *(v8 + 16) = *v2;
  *(v8 + 32) = v12;
  return sub_255D4C6CC(v15, v14);
}

uint64_t sub_255D4A5C4@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for RemoteContentView(0);
  a1[4] = sub_255D4EE70(&qword_27F7E65B8, type metadata accessor for RemoteContentView, protocol conformance descriptor for RemoteContentView);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return DecodableRemoteContentView.unmodifiedBody.getter(boxed_opaque_existential_1);
}

uint64_t sub_255D4A674(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  v16 = *(v1 + 32);
  v17 = v2;
  v4 = *(v1 + 48);
  v18 = *(v1 + 64);
  v5 = *(v1 + 16);
  v15[0] = *v1;
  v15[1] = v5;
  v10 = v3;
  v11 = v16;
  v6 = *(v1 + 64);
  v12 = v4;
  v13 = v6;
  v19 = *(v1 + 80);
  v14 = *(v1 + 80);
  v9 = v15[0];
  sub_255D4CBEC(v15, v8);
  sub_255D4CB44();
  return sub_255E3A038();
}

uint64_t sub_255D4A700@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *(v2 + 64);
  v12[3] = *(v2 + 48);
  v12[4] = v5;
  v13 = *(v2 + 80);
  v6 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v6;
  v12[2] = v4;
  a2[3] = a1;
  a2[4] = sub_255D4CB44();
  v7 = swift_allocObject();
  *a2 = v7;
  v8 = *(v2 + 48);
  *(v7 + 48) = *(v2 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(v2 + 64);
  *(v7 + 96) = *(v2 + 80);
  v9 = *(v2 + 16);
  *(v7 + 16) = *v2;
  *(v7 + 32) = v9;
  return sub_255D4CBEC(v12, v11);
}

uint64_t sub_255D4A79C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6600, &qword_255E3E110);
  a1[4] = sub_255D4CA94();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255D97C4C(boxed_opaque_existential_1);
}

uint64_t sub_255D4A818(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[3];
  v9 = v1[2];
  v10 = v3;
  v4 = v1[3];
  v11 = v1[4];
  v5 = v1[1];
  v8[0] = *v1;
  v8[1] = v5;
  v7[7] = v9;
  v7[8] = v4;
  v7[9] = v1[4];
  v7[5] = v8[0];
  v7[6] = v2;
  sub_255D4CD4C(v8, v7);
  sub_255D4CCF8();
  return sub_255E3A038();
}

uint64_t sub_255D4A890@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2[3];
  v11[2] = v2[2];
  v11[3] = v4;
  v11[4] = v2[4];
  v5 = v2[1];
  v11[0] = *v2;
  v11[1] = v5;
  a2[3] = a1;
  a2[4] = sub_255D4CCF8();
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v2[3];
  v6[3] = v2[2];
  v6[4] = v7;
  v6[5] = v2[4];
  v8 = v2[1];
  v6[1] = *v2;
  v6[2] = v8;
  return sub_255D4CD4C(v11, &v10);
}

uint64_t sub_255D4A918@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6628, &unk_255E3E120);
  a1[4] = sub_255D4CC48();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255D98968(boxed_opaque_existential_1);
}

uint64_t sub_255D4A98C(uint64_t a1)
{
  v2 = v1[1];
  v9[0] = *v1;
  v9[1] = v2;
  v3 = v1[3];
  v5 = *v1;
  v4 = v1[1];
  v9[2] = v1[2];
  v9[3] = v3;
  v8[4] = v5;
  v8[5] = v4;
  v6 = v1[3];
  v8[6] = v1[2];
  v8[7] = v6;
  sub_255D4CDFC(v9, v8);
  sub_255D4CDA8();
  return sub_255E3A038();
}

uint64_t sub_255D4A9F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2[1];
  v11[0] = *v2;
  v11[1] = v4;
  v5 = v2[3];
  v11[2] = v2[2];
  v11[3] = v5;
  a2[3] = a1;
  a2[4] = sub_255D4CDA8();
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v2[1];
  v6[1] = *v2;
  v6[2] = v7;
  v8 = v2[3];
  v6[3] = v2[2];
  v6[4] = v8;
  return sub_255D4CDFC(v11, &v10);
}

uint64_t sub_255D4AA6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6650, &unk_255E3E130);
  a1[4] = sub_255D38950(&qword_27F7E6658, &qword_27F7E6650, &unk_255E3E130, MEMORY[0x277CE11A8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  *boxed_opaque_existential_1 = v3;
  boxed_opaque_existential_1[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6660, &qword_255E4D0F0);
  v11 = v5;
  KeyPath = swift_getKeyPath();

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  v9 = sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0, MEMORY[0x277D83980]);
  return sub_255E3A0E8(&v11, KeyPath, sub_255D5F848, 0, v8, MEMORY[0x277CE11C8], v9, MEMORY[0x277D837E0], MEMORY[0x277CE11C0]);
}

uint64_t sub_255D4AC30@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6680, &qword_255E3E170);
  a1[4] = sub_255D38950(&qword_27F7E6688, &qword_27F7E6680, &qword_255E3E170, MEMORY[0x277CDF340]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255D99ED4(boxed_opaque_existential_1);
}

uint64_t sub_255D4AD14(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, _BYTE *), uint64_t (*a4)(uint64_t))
{
  v6 = *(v4 + 80);
  v7 = *(v4 + 112);
  v24 = *(v4 + 96);
  v25 = v7;
  v8 = *(v4 + 16);
  v9 = *(v4 + 48);
  v20 = *(v4 + 32);
  v21 = v9;
  v10 = *(v4 + 48);
  v11 = *(v4 + 80);
  v22 = *(v4 + 64);
  v23 = v11;
  v12 = *(v4 + 16);
  v19[0] = *v4;
  v19[1] = v12;
  v13 = *(v4 + 112);
  v17[6] = v24;
  v17[7] = v13;
  v17[2] = v20;
  v17[3] = v10;
  v17[4] = v22;
  v17[5] = v6;
  v26 = *(v4 + 128);
  v18 = *(v4 + 128);
  v17[0] = v19[0];
  v17[1] = v8;
  v14 = a3(v19, v16);
  a4(v14);
  return sub_255E3A038();
}

uint64_t sub_255D4ADFC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a4)(_OWORD *, char *)@<X4>, uint64_t *a5@<X8>)
{
  v8 = *(v5 + 112);
  v19[6] = *(v5 + 96);
  v19[7] = v8;
  v20 = *(v5 + 128);
  v9 = *(v5 + 48);
  v19[2] = *(v5 + 32);
  v19[3] = v9;
  v10 = *(v5 + 80);
  v19[4] = *(v5 + 64);
  v19[5] = v10;
  v11 = *(v5 + 16);
  v19[0] = *v5;
  v19[1] = v11;
  a5[3] = a1;
  a5[4] = a2();
  v12 = swift_allocObject();
  *a5 = v12;
  v13 = *(v5 + 112);
  *(v12 + 112) = *(v5 + 96);
  *(v12 + 128) = v13;
  *(v12 + 144) = *(v5 + 128);
  v14 = *(v5 + 48);
  *(v12 + 48) = *(v5 + 32);
  *(v12 + 64) = v14;
  v15 = *(v5 + 80);
  *(v12 + 80) = *(v5 + 64);
  *(v12 + 96) = v15;
  v16 = *(v5 + 16);
  *(v12 + 16) = *v5;
  *(v12 + 32) = v16;
  return a4(v19, v18);
}

uint64_t sub_255D4AEBC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6698, &qword_255E3E178);
  a1[4] = sub_255D38950(&qword_27F7E66A0, &qword_27F7E6698, &qword_255E3E178, MEMORY[0x277CDF330]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255D9A5D0(boxed_opaque_existential_1);
}

uint64_t sub_255D4AF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_255D4DB24();

  return sub_255E3A038();
}

uint64_t sub_255D4B00C@<X0>(uint64_t a1@<X0>, void *a7@<X8>)
{
  v10 = *v7;
  v9 = v7[1];
  v11 = v7[2];
  v12 = v7[3];
  v14 = v7[4];
  v13 = v7[5];
  a7[3] = a1;
  a7[4] = sub_255D4DB24();
  v15 = swift_allocObject();
  *a7 = v15;
  v15[2] = v10;
  v15[3] = v9;
  v15[4] = v11;
  v15[5] = v12;
  v15[6] = v14;
  v15[7] = v13;
}

uint64_t sub_255D4B0B4@<X0>(uint64_t a1@<X0>, uint64_t *a7@<X8>)
{
  v9 = sub_255D4DAD0();
  v10 = *(v9 + 24);
  a7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E67E8, &qword_255E4DB90);
  a7[4] = sub_255D38950(&qword_27F7E67F0, &qword_27F7E67E8, &qword_255E4DB90, MEMORY[0x277CDDA18]);
  __swift_allocate_boxed_opaque_existential_1(a7);
  return v10(a1, v9);
}

uint64_t sub_255D4B198(uint64_t a1)
{
  sub_255D4DC70(v1, &v3);
  sub_255D4DBCC();
  return sub_255E3A038();
}

uint64_t sub_255D4B214@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a4)(uint64_t, uint64_t)@<X4>, uint64_t *a5@<X8>)
{
  a5[3] = a1;
  a5[4] = a2();
  v7 = swift_allocObject();
  *a5 = v7;

  return a4(v5, v7 + 16);
}

uint64_t sub_255D4B290@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_255D4DB78();
  v5 = *(v4 + 24);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6808, &qword_255E3E1F0);
  a2[4] = sub_255D38950(&qword_27F7E6810, &qword_27F7E6808, &qword_255E3E1F0, MEMORY[0x277CDD978]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v5(a1, v4);
}

uint64_t sub_255D4B348(uint64_t a1)
{
  sub_255D4DED8(v1, v3);
  sub_255D4DE30();
  return sub_255E3A038();
}

uint64_t sub_255D4B390@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  a2[4] = sub_255D4DE30();
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_255D4DED8(v2, v4 + 16);
}

uint64_t sub_255D4B3EC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6820, &qword_255E3E1F8);
  a1[4] = sub_255D4DCCC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255D9D2F0(boxed_opaque_existential_1);
}

uint64_t sub_255D4B43C(uint64_t a1)
{
  sub_255D4EE14(v1, &v3);
  sub_255D4EDC0();
  return sub_255E3A038();
}

uint64_t sub_255D4B484@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  a2[4] = sub_255D4EDC0();
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_255D4EE14(v2, v4 + 16);
}

uint64_t sub_255D4B4E0@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6998, &qword_255E3E270);
  a1[4] = sub_255D4EB9C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255DA1088(boxed_opaque_existential_1);
}

uint64_t sub_255D4B530(uint64_t a1)
{
  sub_255D4D8B8(v1, v3);
  sub_255D4D864();
  return sub_255E3A038();
}

uint64_t sub_255D4B578@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  a2[4] = sub_255D4D864();
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_255D4D8B8(v2, v4 + 16);
}

void *sub_255D4B5D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255DA695C(&v5);
  v3 = v5;
  v4 = MEMORY[0x277CE11C0];
  a1[3] = MEMORY[0x277CE11C8];
  a1[4] = v4;
  *a1 = v3;
  return result;
}

uint64_t sub_255D4B638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();

  return sub_255E3A038();
}

uint64_t sub_255D4B6BC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, void *a3@<X8>)
{
  v6 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  a3[3] = a1;
  a3[4] = a2();
  *a3 = v6;
  a3[1] = v5;
  a3[2] = v7;
}

uint64_t sub_255D4B720@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_255E38808();
  a1[4] = sub_255D4EE70(&qword_27F7E69F0, MEMORY[0x277CDD680], MEMORY[0x277CDD678]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255E387F8();
}

uint64_t sub_255D4B794(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[7];
  v17 = v1[6];
  v18 = v3;
  v4 = v1[7];
  v19 = v1[8];
  v5 = v1[1];
  v6 = v1[3];
  v13 = v1[2];
  v14 = v6;
  v7 = v1[3];
  v8 = v1[5];
  v15 = v1[4];
  v16 = v8;
  v9 = v1[1];
  v12[0] = *v1;
  v12[1] = v9;
  v11[15] = v17;
  v11[16] = v4;
  v11[17] = v1[8];
  v11[11] = v13;
  v11[12] = v7;
  v11[13] = v15;
  v11[14] = v2;
  v11[9] = v12[0];
  v11[10] = v5;
  sub_255D4D4F8(v12, v11);
  sub_255D4D4A4();
  return sub_255E3A038();
}

uint64_t sub_255D4B82C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2[7];
  v15[6] = v2[6];
  v15[7] = v4;
  v15[8] = v2[8];
  v5 = v2[3];
  v15[2] = v2[2];
  v15[3] = v5;
  v6 = v2[5];
  v15[4] = v2[4];
  v15[5] = v6;
  v7 = v2[1];
  v15[0] = *v2;
  v15[1] = v7;
  a2[3] = a1;
  a2[4] = sub_255D4D4A4();
  v8 = swift_allocObject();
  *a2 = v8;
  v9 = v2[7];
  v8[7] = v2[6];
  v8[8] = v9;
  v8[9] = v2[8];
  v10 = v2[3];
  v8[3] = v2[2];
  v8[4] = v10;
  v11 = v2[5];
  v8[5] = v2[4];
  v8[6] = v11;
  v12 = v2[1];
  v8[1] = *v2;
  v8[2] = v12;
  return sub_255D4D4F8(v15, &v14);
}

unint64_t sub_255D4B8D4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v20 = v1[6];
  v21 = v3;
  v22 = v1[8];
  v4 = v1[3];
  v16 = v1[2];
  v17 = v4;
  v5 = v1[5];
  v18 = v1[4];
  v19 = v5;
  v6 = v1[1];
  v14 = *v1;
  v15 = v6;
  sub_255E12E5C(&v11);
  v7 = v11;
  v8 = v12;
  v9 = v13;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6720, &unk_255E3E1A0);
  result = sub_255D4D394();
  *(a1 + 32) = result;
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 9) = v9;
  return result;
}

uint64_t sub_255D4B970(uint64_t a1)
{
  sub_255D4D688(v1, v3);
  sub_255D4D634();
  return sub_255E3A038();
}

uint64_t sub_255D4B9EC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a4)(uint64_t, uint64_t)@<X4>, uint64_t *a5@<X8>)
{
  a5[3] = a1;
  a5[4] = a2();
  v7 = swift_allocObject();
  *a5 = v7;

  return a4(v5, v7 + 16);
}

uint64_t sub_255D4BA68@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6748, &qword_255E3E1B0);
  a1[4] = sub_255D4D554();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255E13EE8(boxed_opaque_existential_1);
}

uint64_t sub_255D4BB00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), const char *a6)
{
  v10 = MEMORY[0x28223BE20](v6);
  sub_255D4EAE0(v10, &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  sub_255D4EE70(a4, a5, a6);
  return sub_255E3A038();
}

uint64_t sub_255D4BBF4@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, const char *a4@<X4>, uint64_t *a5@<X8>, uint64_t (*a6)(void)@<X5>)
{
  a5[3] = a1;
  a5[4] = sub_255D4EE70(a2, a3, a4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  return sub_255D4EAE0(v6, boxed_opaque_existential_1, a6);
}

uint64_t sub_255D4BC68(uint64_t a1)
{
  sub_255D4E898(v1, &v3);
  sub_255D4E8FC();
  return sub_255E3A038();
}

uint64_t sub_255D4BCE4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a4)(uint64_t, uint64_t)@<X4>, uint64_t *a5@<X8>)
{
  a5[3] = a1;
  a5[4] = a2();
  v7 = swift_allocObject();
  *a5 = v7;

  return a4(v5, v7 + 16);
}

uint64_t (*sub_255D4BD60@<X0>(uint64_t (**a1)@<X0>(uint64_t *x8_0@<X8>)@<X8>))@<X0>(uint64_t *x8_0@<X8>)
{
  sub_255D4E898(v1, v8);
  v3 = swift_allocObject();
  v4 = v8[5];
  *(v3 + 5) = v8[4];
  *(v3 + 6) = v4;
  *(v3 + 7) = v8[6];
  v5 = v8[1];
  *(v3 + 1) = v8[0];
  *(v3 + 2) = v5;
  v6 = v8[3];
  *(v3 + 3) = v8[2];
  *(v3 + 4) = v6;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6958, &unk_255E3E260);
  result = sub_255D38950(&qword_27F7E6960, &qword_27F7E6958, &unk_255E3E260, MEMORY[0x277CDF7D8]);
  a1[4] = result;
  *a1 = sub_255D4E8F4;
  a1[1] = v3;
  return result;
}

uint64_t sub_255D4BE34(uint64_t a1)
{
  sub_255D4E9B8(v1, &v3);
  sub_255D4EA1C();
  return sub_255E3A038();
}

uint64_t sub_255D4BEB0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a4)(uint64_t, uint64_t)@<X4>, uint64_t *a5@<X8>)
{
  a5[3] = a1;
  a5[4] = a2();
  v7 = swift_allocObject();
  *a5 = v7;

  return a4(v5, v7 + 16);
}

uint64_t (*sub_255D4BF2C@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>))@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_255D4E9B8(v1, v9);
  v3 = swift_allocObject();
  v4 = v9[5];
  *(v3 + 5) = v9[4];
  *(v3 + 6) = v4;
  v5 = v9[7];
  *(v3 + 7) = v9[6];
  *(v3 + 8) = v5;
  v6 = v9[1];
  *(v3 + 1) = v9[0];
  *(v3 + 2) = v6;
  v7 = v9[3];
  *(v3 + 3) = v9[2];
  *(v3 + 4) = v7;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6970, &qword_255E62DC0);
  result = sub_255D38950(&qword_27F7E6978, &qword_27F7E6970, &qword_255E62DC0, MEMORY[0x277CDDB40]);
  a1[4] = result;
  *a1 = sub_255D4EA14;
  a1[1] = v3;
  return result;
}

__n128 sub_255D4C0A8@<Q0>(void (*a1)(__n128 *__return_ptr)@<X2>, __n128 *a2@<X8>)
{
  a1(&v7);
  v3 = v8;
  v4 = sub_255D3849C();
  v6 = v7;
  a2[1].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F80, &unk_255E43FF0);
  a2[2].n128_u64[0] = v4;
  result = v6;
  *a2 = v6;
  a2[1].n128_u64[0] = v3;
  return result;
}

unint64_t sub_255D4C11C()
{
  result = qword_27F7E6570;
  if (!qword_27F7E6570)
  {
    result = swift_getWitnessTable(byte_255E3E0A0, &type metadata for ViewContent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6570);
  }

  return result;
}

unint64_t sub_255D4C1D8()
{
  result = qword_27F7E6578;
  if (!qword_27F7E6578)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewContent, &type metadata for ViewContent, v0, v1);
    atomic_store(result, &qword_27F7E6578);
  }

  return result;
}

unint64_t sub_255D4C22C()
{
  result = qword_27F7E6598;
  if (!qword_27F7E6598)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6590, &qword_255E3DDA8);
    v4[0] = sub_255D4C8D4(&qword_27F7E6588, &qword_27F7E6580, &qword_255E3DDA0, MEMORY[0x277CE11C0]);
    v4[1] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27F7E6598);
  }

  return result;
}

unint64_t sub_255D4C2D8(uint64_t a1)
{
  result = sub_255D447E8();
  *(a1 + 16) = result;
  return result;
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

uint64_t sub_255D4C3C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_255D4C408(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_255D4C490()
{
  result = qword_27F7E65A0;
  if (!qword_27F7E65A0)
  {
    result = swift_getWitnessTable(aQ_14, &type metadata for ViewContent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E65A0);
  }

  return result;
}

unint64_t sub_255D4C4E8()
{
  result = qword_27F7E65A8;
  if (!qword_27F7E65A8)
  {
    result = swift_getWitnessTable(byte_255E3DFB0, &type metadata for ViewContent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E65A8);
  }

  return result;
}

unint64_t sub_255D4C540()
{
  result = qword_27F7E65B0;
  if (!qword_27F7E65B0)
  {
    result = swift_getWitnessTable(byte_255E3DFD8, &type metadata for ViewContent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E65B0);
  }

  return result;
}

uint64_t sub_255D4C594(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_255D34630(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_255D4C62C(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255D4C678()
{
  result = qword_27F7E65C0;
  if (!qword_27F7E65C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DecodableRemoteContentView, &type metadata for DecodableRemoteContentView, v0, v1);
    atomic_store(result, &qword_27F7E65C0);
  }

  return result;
}

unint64_t sub_255D4C784()
{
  result = qword_27F7E65C8;
  if (!qword_27F7E65C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyViewModifier, &type metadata for AnyViewModifier, v0, v1);
    atomic_store(result, &qword_27F7E65C8);
  }

  return result;
}

unint64_t sub_255D4C82C()
{
  result = qword_27F7E65E0;
  if (!qword_27F7E65E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E65D8, &unk_255E3E100);
    v4[0] = MEMORY[0x277CE0BC8];
    v4[1] = sub_255D4C8D4(&qword_27F7E65E8, &qword_27F7E65F0, &qword_255E43FA0, MEMORY[0x277CE0BC8]);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27F7E65E0);
  }

  return result;
}

uint64_t sub_255D4C8D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4;
    v8[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255D4C93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {

    return sub_255D4C9A0(a1, a2, a3, a4);
  }

  else
  {
    sub_255D4C990(a1, a2, a3 & 1);
  }
}

uint64_t sub_255D4C990(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_255D4C9A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_255D4C990(a1, a2, a3 & 1);
}

unint64_t sub_255D4C9DC()
{
  result = qword_27F7E65F8;
  if (!qword_27F7E65F8)
  {
    result = swift_getWitnessTable(byte_255E436A0, &type metadata for TextView, v0, v1);
    atomic_store(result, &qword_27F7E65F8);
  }

  return result;
}

unint64_t sub_255D4CA94()
{
  result = qword_27F7E6608;
  if (!qword_27F7E6608)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6600, &qword_255E3E110);
    v4[0] = sub_255D38950(&qword_27F7E6610, &qword_27F7E6618, &qword_255E3E118, MEMORY[0x277CE1198]);
    v4[1] = v4[0];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27F7E6608);
  }

  return result;
}

unint64_t sub_255D4CB44()
{
  result = qword_27F7E6620;
  if (!qword_27F7E6620)
  {
    result = swift_getWitnessTable(byte_255E4CCF0, &type metadata for VStackView, v0, v1);
    atomic_store(result, &qword_27F7E6620);
  }

  return result;
}

void sub_255D4CB98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 < 0)
  {
  }

  else
  {
    v5 = a4 & 1;

    sub_255D34870(a1, a2, a3, v5);
  }
}

unint64_t sub_255D4CC48()
{
  result = qword_27F7E6630;
  if (!qword_27F7E6630)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6628, &unk_255E3E120);
    v4[0] = sub_255D38950(&qword_27F7E6638, &qword_27F7E6640, &qword_255E4D0B0, MEMORY[0x277CE1138]);
    v4[1] = v4[0];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27F7E6630);
  }

  return result;
}

unint64_t sub_255D4CCF8()
{
  result = qword_27F7E6648;
  if (!qword_27F7E6648)
  {
    result = swift_getWitnessTable("%G<,", v0);
    atomic_store(result, &qword_27F7E6648);
  }

  return result;
}

unint64_t sub_255D4CDA8()
{
  result = qword_27F7E6678;
  if (!qword_27F7E6678)
  {
    result = swift_getWitnessTable(byte_255E4CE38, &type metadata for ZStackView, v0, v1);
    atomic_store(result, &qword_27F7E6678);
  }

  return result;
}

unint64_t sub_255D4CE58()
{
  result = qword_27F7E6690;
  if (!qword_27F7E6690)
  {
    result = swift_getWitnessTable(byte_255E4CEDC, &type metadata for LazyVStackView, v0, v1);
    atomic_store(result, &qword_27F7E6690);
  }

  return result;
}

unint64_t sub_255D4CF08()
{
  result = qword_27F7E66A8;
  if (!qword_27F7E66A8)
  {
    result = swift_getWitnessTable(a9e, &type metadata for LazyHStackView, v0, v1);
    atomic_store(result, &qword_27F7E66A8);
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{

  v1 = *(v0 + 96);
  if (v1 != 254)
  {
    if (v1 != 255)
    {
      sub_255D34870(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96) & 1);
    }

    v2 = *(v0 + 128);
    if (v2 != 255)
    {
      sub_255D34870(*(v0 + 104), *(v0 + 112), *(v0 + 120), v2 & 1);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

unint64_t sub_255D4D04C()
{
  result = qword_27F7E66B0;
  if (!qword_27F7E66B0)
  {
    result = swift_getWitnessTable(byte_255E3F31C, &type metadata for ListView, v0, v1);
    atomic_store(result, &qword_27F7E66B0);
  }

  return result;
}

unint64_t sub_255D4D0A0()
{
  result = qword_27F7E66C8;
  if (!qword_27F7E66C8)
  {
    result = swift_getWitnessTable(byte_255E3F338, &type metadata for ListView, v0, v1);
    atomic_store(result, &qword_27F7E66C8);
  }

  return result;
}

unint64_t sub_255D4D0F4()
{
  result = qword_27F7E66D0;
  if (!qword_27F7E66D0)
  {
    result = swift_getWitnessTable(aY_5, &type metadata for SectionView, v0, v1);
    atomic_store(result, &qword_27F7E66D0);
  }

  return result;
}

unint64_t sub_255D4D148()
{
  result = qword_27F7E66E0;
  if (!qword_27F7E66E0)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66D8, &qword_255E3E188);
    v4[0] = sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190, MEMORY[0x277CE1550]);
    v4[1] = sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840, MEMORY[0x277CE1290]);
    v4[2] = v4[0];
    result = swift_getWitnessTable(MEMORY[0x277CDF0A8], v3, v4);
    atomic_store(result, &qword_27F7E66E0);
  }

  return result;
}

uint64_t sub_255D4D230(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = MEMORY[0x277CE11C0];
    result = swift_getWitnessTable(a4, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255D4D290()
{
  result = qword_27F7E6708;
  if (!qword_27F7E6708)
  {
    result = swift_getWitnessTable(byte_255E3F3DC, &type metadata for SectionView, v0, v1);
    atomic_store(result, &qword_27F7E6708);
  }

  return result;
}

unint64_t sub_255D4D340()
{
  result = qword_27F7E6718;
  if (!qword_27F7E6718)
  {
    result = swift_getWitnessTable(a9T, &type metadata for DividerView, v0, v1);
    atomic_store(result, &qword_27F7E6718);
  }

  return result;
}

unint64_t sub_255D4D394()
{
  result = qword_27F7E6728;
  if (!qword_27F7E6728)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6720, &unk_255E3E1A0);
    v4 = sub_255D4D420();
    v5[0] = MEMORY[0x277CE1078];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v5);
    atomic_store(result, &qword_27F7E6728);
  }

  return result;
}

unint64_t sub_255D4D420()
{
  result = qword_27F7E6730;
  if (!qword_27F7E6730)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6738, &unk_255E5BC00);
    v4[0] = MEMORY[0x277CE1078];
    v4[1] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27F7E6730);
  }

  return result;
}

unint64_t sub_255D4D4A4()
{
  result = qword_27F7E6740;
  if (!qword_27F7E6740)
  {
    result = swift_getWitnessTable(byte_255E5BAD0, &type metadata for SymbolView, v0, v1);
    atomic_store(result, &qword_27F7E6740);
  }

  return result;
}

unint64_t sub_255D4D554()
{
  result = qword_27F7E6750;
  if (!qword_27F7E6750)
  {
    v5[6] = v0;
    v5[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6748, &qword_255E3E1B0);
    v4 = MEMORY[0x277CDD638];
    v5[0] = sub_255D38950(&qword_27F7E6758, &qword_27F7E6760, &qword_255E3E1B8, MEMORY[0x277CDD638]);
    v5[1] = sub_255D38950(&qword_27F7E6768, &qword_27F7E6770, &unk_255E3E1C0, v4);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v5);
    atomic_store(result, &qword_27F7E6750);
  }

  return result;
}

unint64_t sub_255D4D634()
{
  result = qword_27F7E6778;
  if (!qword_27F7E6778)
  {
    result = swift_getWitnessTable(aEy, &type metadata for AsyncImageView, v0, v1);
    atomic_store(result, &qword_27F7E6778);
  }

  return result;
}

unint64_t sub_255D4D6E4()
{
  result = qword_27F7E6780;
  if (!qword_27F7E6780)
  {
    result = swift_getWitnessTable(aU_0, &type metadata for ProgressView, v0, v1);
    atomic_store(result, &qword_27F7E6780);
  }

  return result;
}

unint64_t sub_255D4D738()
{
  result = qword_27F7E6790;
  if (!qword_27F7E6790)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6788, &qword_255E3E1D0);
    v4[0] = MEMORY[0x277CE1170];
    v4[1] = MEMORY[0x277CE1170];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27F7E6790);
  }

  return result;
}

unint64_t sub_255D4D7B4()
{
  result = qword_27F7E6798;
  if (!qword_27F7E6798)
  {
    result = swift_getWitnessTable(byte_255E437E8, &type metadata for SpacerView, v0, v1);
    atomic_store(result, &qword_27F7E6798);
  }

  return result;
}

unint64_t sub_255D4D864()
{
  result = qword_27F7E67A0;
  if (!qword_27F7E67A0)
  {
    result = swift_getWitnessTable(byte_255E4F6A0, &type metadata for ButtonView, v0, v1);
    atomic_store(result, &qword_27F7E67A0);
  }

  return result;
}

unint64_t sub_255D4D914()
{
  result = qword_27F7E67B0;
  if (!qword_27F7E67B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E67A8, &qword_255E3E1D8);
    v4[0] = sub_255D38950(&qword_27F7E67B8, &qword_27F7E67C0, &unk_255E3E1E0, MEMORY[0x277CDE598]);
    v4[1] = MEMORY[0x277CE0BC8];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27F7E67B0);
  }

  return result;
}

unint64_t sub_255D4D9CC()
{
  result = qword_27F7E67D0;
  if (!qword_27F7E67D0)
  {
    result = swift_getWitnessTable(asc_255E43914, &type metadata for ColorView, v0, v1);
    atomic_store(result, &qword_27F7E67D0);
  }

  return result;
}

unint64_t sub_255D4DA20()
{
  result = qword_27F7E67D8;
  if (!qword_27F7E67D8)
  {
    result = swift_getWitnessTable(byte_255E43930, &type metadata for ColorView, v0, v1);
    atomic_store(result, &qword_27F7E67D8);
  }

  return result;
}

unint64_t sub_255D4DAD0()
{
  result = qword_27F7E67E0;
  if (!qword_27F7E67E0)
  {
    result = swift_getWitnessTable(asc_255E4D90C, &type metadata for NavigationStackView, v0, v1);
    atomic_store(result, &qword_27F7E67E0);
  }

  return result;
}

unint64_t sub_255D4DB24()
{
  result = qword_27F7E67F8;
  if (!qword_27F7E67F8)
  {
    result = swift_getWitnessTable(byte_255E4D928, &type metadata for NavigationStackView, v0, v1);
    atomic_store(result, &qword_27F7E67F8);
  }

  return result;
}

unint64_t sub_255D4DB78()
{
  result = qword_27F7E6800;
  if (!qword_27F7E6800)
  {
    result = swift_getWitnessTable(byte_255E4D9B0, &type metadata for NavigatingView, v0, v1);
    atomic_store(result, &qword_27F7E6800);
  }

  return result;
}

unint64_t sub_255D4DBCC()
{
  result = qword_27F7E6818;
  if (!qword_27F7E6818)
  {
    result = swift_getWitnessTable(byte_255E4D9CC, &type metadata for NavigatingView, v0, v1);
    atomic_store(result, &qword_27F7E6818);
  }

  return result;
}

uint64_t objectdestroy_64Tm()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

unint64_t sub_255D4DCCC()
{
  result = qword_27F7E6828;
  if (!qword_27F7E6828)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6820, &qword_255E3E1F8);
    v4[0] = sub_255D4DD50();
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27F7E6828);
  }

  return result;
}

unint64_t sub_255D4DD50()
{
  result = qword_27F7E6830;
  if (!qword_27F7E6830)
  {
    v5[6] = v0;
    v5[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6838, &qword_255E3E200);
    v4 = MEMORY[0x277CDD938];
    v5[0] = sub_255D38950(&qword_27F7E6840, &qword_27F7E6848, &qword_255E3E208, MEMORY[0x277CDD938]);
    v5[1] = sub_255D38950(&qword_27F7E6850, &qword_27F7E6858, &qword_255E3E210, v4);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v5);
    atomic_store(result, &qword_27F7E6830);
  }

  return result;
}

unint64_t sub_255D4DE30()
{
  result = qword_27F7E6860;
  if (!qword_27F7E6860)
  {
    result = swift_getWitnessTable(aI, &type metadata for NavigationLinkView, v0, v1);
    atomic_store(result, &qword_27F7E6860);
  }

  return result;
}

uint64_t sub_255D4DE84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return sub_255D2F870(a3);
  }

  else
  {
  }
}

unint64_t sub_255D4DF34()
{
  result = qword_27F7E6878;
  if (!qword_27F7E6878)
  {
    result = swift_getWitnessTable(byte_255E439D4, &type metadata for ToggleView, v0, v1);
    atomic_store(result, &qword_27F7E6878);
  }

  return result;
}

unint64_t sub_255D4DFE4()
{
  result = qword_27F7E6880;
  if (!qword_27F7E6880)
  {
    result = swift_getWitnessTable(asc_255E43A5C, &type metadata for LabelView, v0, v1);
    atomic_store(result, &qword_27F7E6880);
  }

  return result;
}

unint64_t sub_255D4E038()
{
  result = qword_27F7E6898;
  if (!qword_27F7E6898)
  {
    result = swift_getWitnessTable(aA, &type metadata for LabelView, v0, v1);
    atomic_store(result, &qword_27F7E6898);
  }

  return result;
}

unint64_t sub_255D4E0E8()
{
  result = qword_27F7E68A0;
  if (!qword_27F7E68A0)
  {
    result = swift_getWitnessTable(a9, &type metadata for ScrollingView, v0, v1);
    atomic_store(result, &qword_27F7E68A0);
  }

  return result;
}

unint64_t sub_255D4E13C()
{
  result = qword_27F7E68B8;
  if (!qword_27F7E68B8)
  {
    result = swift_getWitnessTable(byte_255E43B1C, &type metadata for ScrollingView, v0, v1);
    atomic_store(result, &qword_27F7E68B8);
  }

  return result;
}

unint64_t sub_255D4E1EC()
{
  result = qword_27F7E68C0;
  if (!qword_27F7E68C0)
  {
    result = swift_getWitnessTable(byte_255E43BA4, &type metadata for GroupView, v0, v1);
    atomic_store(result, &qword_27F7E68C0);
  }

  return result;
}

unint64_t sub_255D4E240()
{
  result = qword_27F7E68D0;
  if (!qword_27F7E68D0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E68C8, &unk_255E3E230);
    v4[0] = sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840, MEMORY[0x277CE1290]);
    result = swift_getWitnessTable(MEMORY[0x277CE0FB0], v3, v4);
    atomic_store(result, &qword_27F7E68D0);
  }

  return result;
}

unint64_t sub_255D4E2F0()
{
  result = qword_27F7E68D8;
  if (!qword_27F7E68D8)
  {
    result = swift_getWitnessTable(byte_255E43BC0, &type metadata for GroupView, v0, v1);
    atomic_store(result, &qword_27F7E68D8);
  }

  return result;
}

unint64_t sub_255D4E344()
{
  result = qword_27F7E68E0;
  if (!qword_27F7E68E0)
  {
    result = swift_getWitnessTable(byte_255E456BC, &type metadata for IfView, v0, v1);
    atomic_store(result, &qword_27F7E68E0);
  }

  return result;
}

uint64_t objectdestroy_43Tm(void (*a1)(void))
{

  if (v1[8])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 5);
  }

  if (v1[13])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 10);
  }

  a1(v1[15]);

  return MEMORY[0x2821FE8E8](v1, 144, 7);
}

unint64_t sub_255D4E474()
{
  result = qword_27F7E68F0;
  if (!qword_27F7E68F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E68E8, &qword_255E44080);
    v4[0] = sub_255D4E500();
    v4[1] = sub_255D4E584();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27F7E68F0);
  }

  return result;
}

unint64_t sub_255D4E500()
{
  result = qword_27F7E68F8;
  if (!qword_27F7E68F8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6900, &qword_255E3E240);
    v4[0] = sub_255D3849C();
    result = swift_getWitnessTable(MEMORY[0x277CE1290], v3, v4);
    atomic_store(result, &qword_27F7E68F8);
  }

  return result;
}

unint64_t sub_255D4E584()
{
  result = qword_27F7E6908;
  if (!qword_27F7E6908)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6910, &qword_255E3E248);
    v4[0] = sub_255D4E608();
    result = swift_getWitnessTable(MEMORY[0x277CE1290], v3, v4);
    atomic_store(result, &qword_27F7E6908);
  }

  return result;
}

unint64_t sub_255D4E608()
{
  result = qword_27F7E6918;
  if (!qword_27F7E6918)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6920, &unk_255E3E250);
    v4[0] = sub_255D3849C();
    v4[1] = v4[0];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27F7E6918);
  }

  return result;
}

unint64_t sub_255D4E68C()
{
  result = qword_27F7E6928;
  if (!qword_27F7E6928)
  {
    result = swift_getWitnessTable(asc_255E43CAC, &type metadata for ForEachView, v0, v1);
    atomic_store(result, &qword_27F7E6928);
  }

  return result;
}

uint64_t sub_255D4E6E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t))
{
  if (a4)
  {

    return a5(a3);
  }

  else
  {
  }
}

unint64_t sub_255D4E7A0()
{
  result = qword_27F7E6930;
  if (!qword_27F7E6930)
  {
    result = swift_getWitnessTable(byte_255E43D34, &type metadata for FormView, v0, v1);
    atomic_store(result, &qword_27F7E6930);
  }

  return result;
}

unint64_t sub_255D4E7F4()
{
  result = qword_27F7E6948;
  if (!qword_27F7E6948)
  {
    result = swift_getWitnessTable(aI_0, &type metadata for FormView, v0, v1);
    atomic_store(result, &qword_27F7E6948);
  }

  return result;
}

uint64_t objectdestroy_40Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_255D4E8FC()
{
  result = qword_27F7E6968;
  if (!qword_27F7E6968)
  {
    result = swift_getWitnessTable(asc_255E62B5C, &type metadata for GeometryReaderView, v0, v1);
    atomic_store(result, &qword_27F7E6968);
  }

  return result;
}

uint64_t objectdestroy_97Tm()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = *(v0 + 96);
  if (v1 <= 0xFD)
  {
    sub_255D38060(*(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

unint64_t sub_255D4EA1C()
{
  result = qword_27F7E6980;
  if (!qword_27F7E6980)
  {
    result = swift_getWitnessTable(byte_255E62C00, &type metadata for ScrollViewReaderView, v0, v1);
    atomic_store(result, &qword_27F7E6980);
  }

  return result;
}

uint64_t objectdestroy_103Tm()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = *(v0 + 96);
  if (v1 <= 0xFD)
  {
    sub_255D38060(*(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_255D4EAE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_255D4EB48()
{
  result = qword_27F7E6990;
  if (!qword_27F7E6990)
  {
    result = swift_getWitnessTable(byte_255E43DF4, &type metadata for EmptyViewView, v0, v1);
    atomic_store(result, &qword_27F7E6990);
  }

  return result;
}

unint64_t sub_255D4EB9C()
{
  result = qword_27F7E69A0;
  if (!qword_27F7E69A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6998, &qword_255E3E270);
    v4[0] = sub_255D4EC28();
    v4[1] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27F7E69A0);
  }

  return result;
}

unint64_t sub_255D4EC28()
{
  result = qword_27F7E69A8;
  if (!qword_27F7E69A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E69B0, &qword_255E3E278);
    v4[0] = sub_255D4ECE0();
    v4[1] = sub_255D38950(&qword_27F7E69D8, &qword_27F7E69E0, &unk_255E3E290, MEMORY[0x277CDF038]);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27F7E69A8);
  }

  return result;
}

unint64_t sub_255D4ECE0()
{
  result = qword_27F7E69B8;
  if (!qword_27F7E69B8)
  {
    v5[6] = v0;
    v5[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E69C0, &qword_255E3E280);
    v4 = MEMORY[0x277CDF038];
    v5[0] = sub_255D38950(&qword_27F7E69C8, &qword_27F7E69D0, &qword_255E3E288, MEMORY[0x277CDF038]);
    v5[1] = sub_255D38950(&qword_27F7E69D8, &qword_27F7E69E0, &unk_255E3E290, v4);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v5);
    atomic_store(result, &qword_27F7E69B8);
  }

  return result;
}

unint64_t sub_255D4EDC0()
{
  result = qword_27F7E69E8;
  if (!qword_27F7E69E8)
  {
    result = swift_getWitnessTable(byte_255E4EA00, &type metadata for PickerView, v0, v1);
    atomic_store(result, &qword_27F7E69E8);
  }

  return result;
}

uint64_t sub_255D4EE70(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255D4EEB8()
{
  result = qword_27F7E69F8;
  if (!qword_27F7E69F8)
  {
    result = swift_getWitnessTable(aU_1, &type metadata for EditButtonView, v0, v1);
    atomic_store(result, &qword_27F7E69F8);
  }

  return result;
}

unint64_t sub_255D4EF0C()
{
  result = qword_27F7E6A00;
  if (!qword_27F7E6A00)
  {
    result = swift_getWitnessTable(a52, &type metadata for MaterialEffectContainerView, v0, v1);
    atomic_store(result, &qword_27F7E6A00);
  }

  return result;
}

unint64_t sub_255D4EF60()
{
  result = qword_27F7E6A10;
  if (!qword_27F7E6A10)
  {
    v6[5] = v0;
    v6[6] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6A08, &unk_255E4A890);
    v4 = sub_255D38950(&qword_27F7E6A18, &qword_27F7E6A20, &qword_255E3E2A0, MEMORY[0x277CE0480]);
    v5 = sub_255D4E240();
    v6[0] = MEMORY[0x277CE1340];
    v6[1] = v4;
    v6[2] = v5;
    result = swift_getWitnessTable(MEMORY[0x277CE1360], v3, v6);
    atomic_store(result, &qword_27F7E6A10);
  }

  return result;
}

unint64_t sub_255D4F024()
{
  result = qword_27F7E6A28;
  if (!qword_27F7E6A28)
  {
    result = swift_getWitnessTable(byte_255E4A820, &type metadata for MaterialEffectContainerView, v0, v1);
    atomic_store(result, &qword_27F7E6A28);
  }

  return result;
}

uint64_t objectdestroy_58Tm(void (*a1)(void, void, void))
{

  if (*(v1 + 56) <= 0xFDu)
  {
    a1(*(v1 + 32), *(v1 + 40), *(v1 + 48));
  }

  return MEMORY[0x2821FE8E8](v1, 88, 7);
}

uint64_t objectdestroy_46Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
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

uint64_t sub_255D4F164(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_255D4F1C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_255D4F238@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 64);
  if (v6 > 0xFD)
  {
    goto LABEL_6;
  }

  v8 = a1;
  v9 = *(v3 + 48);
  v10 = *(v3 + 56);
  v24 = *(v3 + 40);
  v25 = v9;
  v26 = v10;
  v27 = v6;
  sub_255D3E5A8(v24, v9, v10, v6);
  v11 = StringResolvable.resolved(with:)(a2);
  if (v4)
  {

    sub_255D38060(v24, v25, v26, v27);
LABEL_5:
    a1 = v8;
LABEL_6:
    v16 = a1[4];
    v17 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    MEMORY[0x28223BE20](v17);
    sub_255E3A228();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6A38, &qword_255E3E560);
    v18 = sub_255E38AE8();
    a3[3] = v18;
    v28[0] = v16;
    v28[1] = sub_255D4FC30();
    a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v18, v28);
    __swift_allocate_boxed_opaque_existential_1(a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66F0, &unk_255E3E190);
    sub_255D4FC94();
    return sub_255E39B88();
  }

  v13 = v11;
  v14 = v12;
  sub_255D38060(v24, v25, v26, v27);
  v15 = sub_255E0C470(v13, v14);
  if (v15 == 9)
  {
    goto LABEL_5;
  }

  v20 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  if (v15 <= 3)
  {
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v21 = sub_255E3A248();
      }

      else
      {
        v21 = sub_255E3A208();
      }
    }

    else if (v15)
    {
      v21 = sub_255E3A238();
    }

    else
    {
      v21 = sub_255E3A228();
    }
  }

  else if (v15 <= 5)
  {
    if (v15 == 4)
    {
      v21 = sub_255E3A218();
    }

    else
    {
      v21 = sub_255E3A1C8();
    }
  }

  else if (v15 == 6)
  {
    v21 = sub_255E3A1D8();
  }

  else if (v15 == 7)
  {
    v21 = sub_255E3A1E8();
  }

  else
  {
    v21 = sub_255E3A1F8();
  }

  MEMORY[0x28223BE20](v21);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6A38, &qword_255E3E560);
  v22 = sub_255E38AE8();
  a3[3] = v22;
  v23[0] = v20;
  v23[1] = sub_255D4FC30();
  a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v22, v23);
  __swift_allocate_boxed_opaque_existential_1(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66F0, &unk_255E3E190);
  sub_255D4FC94();
  return sub_255E39B88();
}

uint64_t sub_255D4F5A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_255D4FB3C(a1, v7);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 24))(v3, v4);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    result = sub_255D4FBAC(v7);
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_255D4F630()
{
  v1 = *v0;
  sub_255E3AD98();
  MEMORY[0x259C4F100](v1);
  return sub_255E3ADD8();
}

uint64_t sub_255D4F678(uint64_t a1)
{
  v2 = *v1;
  sub_255E3AD98();
  MEMORY[0x259C4F100](v2);
  return sub_255E3ADD8();
}

uint64_t sub_255D4F6BC()
{
  if (*v0)
  {
    return 0x6E656D6E67696C61;
  }

  else
  {
    return 1802723693;
  }
}

uint64_t sub_255D4F6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1802723693 && a2 == 0xE400000000000000;
  if (v5 || (sub_255E3AC68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();

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

uint64_t sub_255D4F7D8(uint64_t a1)
{
  v2 = sub_255D4FD10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D4F814(uint64_t a1)
{
  v2 = sub_255D4FD10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D4F850@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A48, &qword_255E3E568);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D4FD10();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11 = 0;
  sub_255D447E8();
  sub_255E3ABC8();
  sub_255D4FB3C(&v15, v16);
  sub_255D4C1A8(&v12);
  v11 = 1;
  sub_255D3EA0C();
  sub_255E3ABA8();
  (*(v6 + 8))(v8, v5);
  v17 = v12;
  v18 = v13;
  v19 = v14;
  sub_255D4FD64(v16, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_255D4FD9C(v16);
}

unint64_t sub_255D4FAC0(uint64_t a1)
{
  result = sub_255D4FAE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D4FAE8()
{
  result = qword_27F7E6A30;
  if (!qword_27F7E6A30)
  {
    result = swift_getWitnessTable(byte_255E3E51C, &type metadata for MaskModifier, v0, v1);
    atomic_store(result, &qword_27F7E6A30);
  }

  return result;
}

uint64_t sub_255D4FB3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6558, &qword_255E3DD80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255D4FBAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6558, &qword_255E3DD80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255D4FC30()
{
  result = qword_27F7E6A40;
  if (!qword_27F7E6A40)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6A38, &qword_255E3E560);
    result = swift_getWitnessTable(MEMORY[0x277CE03E8], v3, v0, v1);
    atomic_store(result, &qword_27F7E6A40);
  }

  return result;
}

unint64_t sub_255D4FC94()
{
  result = qword_27F7E66E8;
  if (!qword_27F7E66E8)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66F0, &unk_255E3E190);
    v4[0] = MEMORY[0x277CE11C0];
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27F7E66E8);
  }

  return result;
}

unint64_t sub_255D4FD10()
{
  result = qword_27F7E6A50;
  if (!qword_27F7E6A50)
  {
    result = swift_getWitnessTable(byte_255E3E634, &type metadata for MaskModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6A50);
  }

  return result;
}

unint64_t sub_255D4FDE0()
{
  result = qword_27F7E6A58;
  if (!qword_27F7E6A58)
  {
    result = swift_getWitnessTable(byte_255E3E60C, &type metadata for MaskModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6A58);
  }

  return result;
}

unint64_t sub_255D4FE38()
{
  result = qword_27F7E6A60;
  if (!qword_27F7E6A60)
  {
    result = swift_getWitnessTable(asc_255E3E57C, &type metadata for MaskModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6A60);
  }

  return result;
}

unint64_t sub_255D4FE90()
{
  result = qword_27F7E6A68;
  if (!qword_27F7E6A68)
  {
    result = swift_getWitnessTable(a5, &type metadata for MaskModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6A68);
  }

  return result;
}

uint64_t sub_255D4FF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_255D5D0A4;

  return sub_255D5AAD8(a2, a3);
}

uint64_t RemoteAction.performAction(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_255D5D0A4;

  return sub_255D5AAD8(a2, a3);
}

uint64_t sub_255D50074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_255D50138;

  return sub_255D5ABF0(a1, a3, a4);
}

uint64_t sub_255D50138()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t RemoteAction.performAction(with:localStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_255D5D0A4;

  return sub_255D5ABF0(a1, a3, a4);
}

uint64_t sub_255D50308(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - v7;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v9 = sub_255E386A8();
  __swift_project_value_buffer(v9, qword_27F8152D8);
  v10 = sub_255E38688();
  v11 = sub_255E3A848();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_255D378C0(0x6974634165766F4DLL, 0xEA00000000006E6FLL, v19);
    _os_log_impl(&dword_255D2E000, v10, v11, "%s has not implemented a synchronous action. Running async.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x259C4F9E0](v13, -1, -1);
    MEMORY[0x259C4F9E0](v12, -1, -1);
  }

  v14 = sub_255E3A778();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = v3[3];
  *(v15 + 64) = v3[2];
  *(v15 + 80) = v16;
  *(v15 + 96) = v3[4];
  *(v15 + 105) = *(v3 + 73);
  v17 = v3[1];
  *(v15 + 32) = *v3;
  *(v15 + 48) = v17;
  *(v15 + 128) = a1;
  *(v15 + 136) = a2;
  sub_255D5CB60(v3, v19);

  sub_255D51B90(0, 0, v8, &unk_255E3EFF8, v15);
}

uint64_t sub_255D50580(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - v7;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v9 = sub_255E386A8();
  __swift_project_value_buffer(v9, qword_27F8152D8);
  v10 = sub_255E38688();
  v11 = sub_255E3A848();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_255D378C0(0x63416574656C6544, 0xEC0000006E6F6974, v18);
    _os_log_impl(&dword_255D2E000, v10, v11, "%s has not implemented a synchronous action. Running async.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x259C4F9E0](v13, -1, -1);
    MEMORY[0x259C4F9E0](v12, -1, -1);
  }

  v14 = sub_255E3A778();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = v3[1];
  *(v15 + 32) = *v3;
  *(v15 + 48) = v16;
  *(v15 + 64) = v3[2];
  *(v15 + 73) = *(v3 + 41);
  *(v15 + 96) = a1;
  *(v15 + 104) = a2;
  sub_255D5CC94(v3, v18);

  sub_255D51B90(0, 0, v8, &unk_255E3F018, v15);
}

uint64_t sub_255D507F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v22 - v7;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v9 = sub_255E386A8();
  __swift_project_value_buffer(v9, qword_27F8152D8);
  v10 = sub_255E38688();
  v11 = sub_255E3A848();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_255D378C0(0x634164616F6C6552, 0xEC0000006E6F6974, v22);
    _os_log_impl(&dword_255D2E000, v10, v11, "%s has not implemented a synchronous action. Running async.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x259C4F9E0](v13, -1, -1);
    MEMORY[0x259C4F9E0](v12, -1, -1);
  }

  v14 = sub_255E3A778();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = *(v3 + 144);
  *(v15 + 160) = *(v3 + 128);
  *(v15 + 176) = v16;
  *(v15 + 192) = *(v3 + 160);
  v17 = *(v3 + 80);
  *(v15 + 96) = *(v3 + 64);
  *(v15 + 112) = v17;
  v18 = *(v3 + 112);
  *(v15 + 128) = *(v3 + 96);
  *(v15 + 144) = v18;
  v19 = *(v3 + 16);
  *(v15 + 32) = *v3;
  *(v15 + 48) = v19;
  v20 = *(v3 + 48);
  *(v15 + 64) = *(v3 + 32);
  *(v15 + 80) = v20;
  *(v15 + 200) = a1;
  *(v15 + 208) = a2;
  sub_255D5C7BC(v3, v22);

  sub_255D51B90(0, 0, v8, &unk_255E3EF98, v15);
}

uint64_t sub_255D50A80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v9 = sub_255E386A8();
  __swift_project_value_buffer(v9, qword_27F8152D8);
  v10 = sub_255E38688();
  v11 = sub_255E3A848();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_255D378C0(0x417373696D736944, 0xED00006E6F697463, &v18);
    _os_log_impl(&dword_255D2E000, v10, v11, "%s has not implemented a synchronous action. Running async.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x259C4F9E0](v13, -1, -1);
    MEMORY[0x259C4F9E0](v12, -1, -1);
  }

  v14 = sub_255E3A778();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;

  sub_255D51B90(0, 0, v8, &unk_255E3E930, v15);
}

uint64_t sub_255D50CDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - v7;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v9 = sub_255E386A8();
  __swift_project_value_buffer(v9, qword_27F8152D8);
  v10 = sub_255E38688();
  v11 = sub_255E3A848();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_255D378C0(0x6F6974616D696E41, 0xEF6E6F697463416ELL, v19);
    _os_log_impl(&dword_255D2E000, v10, v11, "%s has not implemented a synchronous action. Running async.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x259C4F9E0](v13, -1, -1);
    MEMORY[0x259C4F9E0](v12, -1, -1);
  }

  v14 = sub_255E3A778();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = v3[3];
  *(v15 + 64) = v3[2];
  *(v15 + 80) = v16;
  *(v15 + 89) = *(v3 + 57);
  v17 = v3[1];
  *(v15 + 32) = *v3;
  *(v15 + 48) = v17;
  *(v15 + 112) = a1;
  *(v15 + 120) = a2;
  sub_255D5C9C8(v3, v19);

  sub_255D51B90(0, 0, v8, &unk_255E3EFD8, v15);
}

uint64_t sub_255D50F54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - v7;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v9 = sub_255E386A8();
  __swift_project_value_buffer(v9, qword_27F8152D8);
  v10 = sub_255E38688();
  v11 = sub_255E3A848();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_255D378C0(0xD000000000000010, 0x8000000255E65CF0, v18);
    _os_log_impl(&dword_255D2E000, v10, v11, "%s has not implemented a synchronous action. Running async.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x259C4F9E0](v13, -1, -1);
    MEMORY[0x259C4F9E0](v12, -1, -1);
  }

  v14 = sub_255E3A778();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = v3[1];
  *(v15 + 32) = *v3;
  *(v15 + 48) = v16;
  *(v15 + 64) = v3[2];
  *(v15 + 73) = *(v3 + 41);
  *(v15 + 96) = a1;
  *(v15 + 104) = a2;
  sub_255D5CDC8(v3, v18);

  sub_255D51B90(0, 0, v8, &unk_255E3F038, v15);
}

uint64_t sub_255D511C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v23 - v7;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v9 = sub_255E386A8();
  __swift_project_value_buffer(v9, qword_27F8152D8);
  v10 = sub_255E38688();
  v11 = sub_255E3A848();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_255D378C0(0xD000000000000011, 0x8000000255E65CD0, v23);
    _os_log_impl(&dword_255D2E000, v10, v11, "%s has not implemented a synchronous action. Running async.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x259C4F9E0](v13, -1, -1);
    MEMORY[0x259C4F9E0](v12, -1, -1);
  }

  v14 = sub_255E3A778();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = *(v3 + 144);
  *(v15 + 160) = *(v3 + 128);
  *(v15 + 176) = v16;
  v17 = *(v3 + 160);
  v18 = *(v3 + 80);
  *(v15 + 96) = *(v3 + 64);
  *(v15 + 112) = v18;
  v19 = *(v3 + 112);
  *(v15 + 128) = *(v3 + 96);
  *(v15 + 144) = v19;
  v20 = *(v3 + 16);
  *(v15 + 32) = *v3;
  *(v15 + 48) = v20;
  v21 = *(v3 + 48);
  *(v15 + 64) = *(v3 + 32);
  *(v15 + 80) = v21;
  *(v15 + 192) = v17;
  *(v15 + 200) = a1;
  *(v15 + 208) = a2;
  sub_255D5C4D4(v3, v23);

  sub_255D51B90(0, 0, v8, &unk_255E3EF70, v15);
}

uint64_t sub_255D5144C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v29 - v12;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v14 = sub_255E386A8();
  __swift_project_value_buffer(v14, qword_27F8152D8);
  v15 = sub_255E38688();
  v16 = sub_255E3A848();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29[1] = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29[0] = a5;
    v20 = a1;
    v21 = a2;
    v22 = a3;
    v23 = a4;
    v24 = v19;
    v30 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_255D378C0(0x6E6F697463416649, 0xE800000000000000, &v30);
    _os_log_impl(&dword_255D2E000, v15, v16, "%s has not implemented a synchronous action. Running async.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v25 = v24;
    a4 = v23;
    a3 = v22;
    a2 = v21;
    a1 = v20;
    a5 = v29[0];
    MEMORY[0x259C4F9E0](v25, -1, -1);
    MEMORY[0x259C4F9E0](v18, -1, -1);
  }

  v26 = sub_255E3A778();
  (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = a3;
  v27[5] = a4;
  v27[6] = a5;
  v27[7] = a1;
  v27[8] = a2;

  sub_255D51B90(0, 0, v13, &unk_255E3EFB8, v27);
}

uint64_t RemoteAction.performSynchronousAction(with:localStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a1;
  v5 = v4;
  v39 = a4;
  v6 = a3;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v38 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v10 - 8);
  v37 = &v34 - v11;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v12 = sub_255E386A8();
  __swift_project_value_buffer(v12, qword_27F8152D8);
  v13 = sub_255E38688();
  v14 = sub_255E3A848();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = v15;
    v36 = swift_slowAlloc();
    v41 = v36;
    *v15 = 136315138;
    v16 = sub_255E3AEA8();
    v18 = v9;
    v19 = v8;
    v20 = v6;
    v21 = v5;
    v22 = a2;
    v23 = sub_255D378C0(v16, v17, &v41);

    v24 = v35;
    *(v35 + 1) = v23;
    a2 = v22;
    v5 = v21;
    v6 = v20;
    v8 = v19;
    v9 = v18;
    _os_log_impl(&dword_255D2E000, v13, v14, "%s has not implemented a synchronous action. Running async.", v24, 0xCu);
    v25 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x259C4F9E0](v25, -1, -1);
    MEMORY[0x259C4F9E0](v24, -1, -1);
  }

  v26 = sub_255E3A778();
  v27 = v37;
  (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
  v28 = v38;
  (*(v8 + 16))(v38, v5, v6);
  v29 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v30 = (v9 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  v32 = v39;
  *(v31 + 4) = v6;
  *(v31 + 5) = v32;
  (*(v8 + 32))(&v31[v29], v28, v6);
  *&v31[v30] = v40;
  *&v31[(v30 + 15) & 0xFFFFFFFFFFFFFFF8] = a2;

  sub_255D51B90(0, 0, v27, &unk_255E3E6C8, v31);
}

uint64_t sub_255D51A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = (*(a8 + 32) + **(a8 + 32));
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_255D5D0A4;

  return v15(a5, a6, a7, a8);
}

uint64_t sub_255D51B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_255D3957C(a3, v22 - v9, &qword_27F7E6A70, &unk_255E559E0);
  v11 = sub_255E3A778();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_255D395E4(v10, &qword_27F7E6A70, &unk_255E559E0);
  }

  else
  {
    sub_255E3A768();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_255E3A738();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_255E3A548() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_255D395E4(a3, &qword_27F7E6A70, &unk_255E559E0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_255D395E4(a3, &qword_27F7E6A70, &unk_255E559E0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t Array<A>.performAllAsync(store:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_255E3A778();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;
  v8[5] = a1;

  sub_255D52540(0, 0, v6, &unk_255E3E6D8, v8);
}

uint64_t sub_255D51FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255D52058, 0, 0);
}

uint64_t sub_255D52058()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v4 = *(v0 + 144);
      v5 = *(v0 + 152);
      v6 = *(v0 + 136);
      sub_255D3CE1C(v3, v0 + 16);
      v7 = sub_255E3A778();
      v8 = *(v7 - 8);
      (*(v8 + 56))(v5, 1, 1, v7);
      sub_255D3CE1C(v0 + 16, v0 + 56);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      sub_255D34630((v0 + 56), (v9 + 4));
      v9[9] = v6;
      sub_255D3957C(v5, v4, &qword_27F7E6A70, &unk_255E559E0);
      LODWORD(v4) = (*(v8 + 48))(v4, 1, v7);

      v10 = *(v0 + 144);
      if (v4 == 1)
      {
        sub_255D395E4(*(v0 + 144), &qword_27F7E6A70, &unk_255E559E0);
      }

      else
      {
        sub_255E3A768();
        (*(v8 + 8))(v10, v7);
      }

      v11 = v9[2];
      swift_unknownObjectRetain();

      if (v11)
      {
        swift_getObjectType();
        v12 = sub_255E3A738();
        v14 = v13;
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      sub_255D395E4(*(v0 + 152), &qword_27F7E6A70, &unk_255E559E0);
      if (v14 | v12)
      {
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v12;
        *(v0 + 120) = v14;
      }

      swift_task_create();

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_255D52300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_255D52320, 0, 0);
}

uint64_t sub_255D52320()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_255D5244C;
  v5 = v0[3];

  return v7(v5, v2, v3);
}

uint64_t sub_255D5244C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_255D52540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_255D3957C(a3, v25 - v10, &qword_27F7E6A70, &unk_255E559E0);
  v12 = sub_255E3A778();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_255D395E4(v11, &qword_27F7E6A70, &unk_255E559E0);
  }

  else
  {
    sub_255E3A768();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_255E3A738();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_255E3A548() + 32;
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

      sub_255D395E4(a3, &qword_27F7E6A70, &unk_255E559E0);

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

  sub_255D395E4(a3, &qword_27F7E6A70, &unk_255E559E0);
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

uint64_t Array<A>.performAllAsync(store:localStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_255E3A778();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a3;
  v10[5] = a1;
  v10[6] = a2;

  sub_255D52540(0, 0, v8, &unk_255E5A580, v10);
}

uint64_t sub_255D52970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255D52A1C, 0, 0);
}

uint64_t sub_255D52A1C()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v18 = v3;
      v19 = v2;
      v5 = *(v0 + 152);
      v4 = *(v0 + 160);
      v7 = *(v0 + 136);
      v6 = *(v0 + 144);
      sub_255D3CE1C(v3, v0 + 16);
      v8 = sub_255E3A778();
      v9 = *(v8 - 8);
      (*(v9 + 56))(v4, 1, 1, v8);
      sub_255D3CE1C(v0 + 16, v0 + 56);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      sub_255D34630((v0 + 56), (v10 + 4));
      v10[9] = v7;
      v10[10] = v6;
      sub_255D3957C(v4, v5, &qword_27F7E6A70, &unk_255E559E0);
      LODWORD(v4) = (*(v9 + 48))(v5, 1, v8);

      v11 = *(v0 + 152);
      if (v4 == 1)
      {
        sub_255D395E4(*(v0 + 152), &qword_27F7E6A70, &unk_255E559E0);
      }

      else
      {
        sub_255E3A768();
        (*(v9 + 8))(v11, v8);
      }

      v12 = v10[2];
      swift_unknownObjectRetain();

      if (v12)
      {
        swift_getObjectType();
        v13 = sub_255E3A738();
        v15 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      sub_255D395E4(*(v0 + 160), &qword_27F7E6A70, &unk_255E559E0);
      if (v15 | v13)
      {
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v13;
        *(v0 + 120) = v15;
      }

      swift_task_create();

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      v3 = v18 + 40;
      v2 = v19 - 1;
    }

    while (v19 != 1);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_255D52CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_255D52D00, 0, 0);
}

uint64_t sub_255D52D00()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_255D52E2C;
  v6 = v0[3];
  v5 = v0[4];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_255D52E2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Array<A>.performAllSync(store:localStore:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = a3 + 32;
    do
    {
      sub_255D3CE1C(v7, v10);
      v8 = v11;
      v9 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v9 + 40))(v6, a2, v8, v9);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v10);
      if (v3)
      {
        break;
      }

      v7 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t RemoteActionBox.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_255E3AE18();
  if (qword_27F7E5E88 != -1)
  {
    swift_once();
  }

  v10 = sub_255E3AAE8();
  v11 = __swift_project_value_buffer(v10, qword_27F8152F0);
  if (!*(v9 + 16) || (v12 = sub_255D3CA98(v11), (v13 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_255D3951C(*(v9 + 56) + 32 * v12, &v40);

  type metadata accessor for ContentRegistry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    type metadata accessor for ContentRegistryError(0);
    sub_255D5AFE4(&qword_27F7E61A0, type metadata accessor for ContentRegistryError, aQ_9);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v36 = v5;
  v45 = v6;
  v35 = a2;
  v14 = v39[0];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_255D3CAFC();
  sub_255E3AE28();
  if (v2)
  {
  }

  else
  {
    v34 = v14;
    v17 = v36;
    v18 = sub_255E3ABD8();
    if (*(v18 + 16))
    {
      v19 = *(v18 + 32);
      v20 = *(v18 + 40);
      v33 = *(v18 + 48);
      v32 = *(v18 + 56);
      swift_bridgeObjectRetain_n();

      v21 = sub_255E3AB68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61B0, &qword_255E3BBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_255E3BBC0;
      *(inited + 56) = &type metadata for DynamicKey;
      *(inited + 64) = v15;
      v23 = swift_allocObject();
      *(inited + 32) = v23;
      *(v23 + 16) = v19;
      *(v23 + 24) = v20;
      *(v23 + 32) = v33;
      *(v23 + 40) = v32;
      *&v40 = v21;

      sub_255D3CDA0(inited);
      v24 = v19;
      v25 = sub_255E08654(v19, v20, v40);
      v26 = v45;
      v31 = v27;
      v30 = v25;

      v37[0] = v24;
      v37[1] = v20;
      v37[2] = v33;
      v38 = v32;
      sub_255E3AB78();

      v41 = v30;
      v42 = v31;
      __swift_allocate_boxed_opaque_existential_1(&v40);
      sub_255E3A7B8();
      (*(v26 + 8))(v8, v17);

      sub_255D34630(&v40, v43);
      v28 = v43[1];
      v29 = v35;
      *v35 = v43[0];
      v29[1] = v28;
      *(v29 + 4) = v44;
    }

    else
    {

      type metadata accessor for DynamicKeyError(0);
      sub_255D5AFE4(&qword_27F7E61D8, type metadata accessor for DynamicKeyError, byte_255E482E4);
      swift_allocError();
      sub_255E3AB68();
      sub_255E3A9C8();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v45 + 8))(v8, v17);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D53600()
{
  v1 = sub_255E3A3B8();
  v11 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_255E3A3D8();
  v4 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255D5C2AC(0, &qword_27F7E6AD8, 0x277D85C78);
  v7 = sub_255E3A878();
  aBlock[4] = sub_255D5B874;
  v13 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_255D5D0C8;
  aBlock[3] = &block_descriptor;
  v8 = _Block_copy(aBlock);

  sub_255E3A3C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_255D5AFE4(&qword_27F7E6AE0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6AE8, &qword_255E3E938);
  sub_255D38950(&qword_27F7E6AF0, &qword_27F7E6AE8, &qword_255E3E938, MEMORY[0x277D83970]);
  sub_255E3A928();
  MEMORY[0x259C4EBE0](0, v6, v3, v8);
  _Block_release(v8);

  (*(v11 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v10);
}

uint64_t sub_255D538E0(uint64_t a1)
{
  v2 = sub_255E38918();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v6 = sub_255E386A8();
  __swift_project_value_buffer(v6, qword_27F8152D8);
  v7 = sub_255E38688();
  v8 = sub_255E3A868();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_255D2E000, v7, v8, "Dismiss Action", v9, 2u);
    MEMORY[0x259C4F9E0](v9, -1, -1);
  }

  v10 = OBJC_IVAR____TtC6LiftUI13DismissAction_dismissAction;
  swift_beginAccess();
  result = (*(v3 + 48))(a1 + v10, 1, v2);
  if (!result)
  {
    (*(v3 + 16))(v5, a1 + v10, v2);
    sub_255E38908();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_255D53ACC()
{
  sub_255D395E4(v0 + OBJC_IVAR____TtC6LiftUI13DismissAction_dismissAction, &qword_27F7E6B00, &qword_255E3E970);

  return swift_deallocClassInstance();
}

uint64_t sub_255D53B40()
{
  sub_255D53600();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255D53C0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  sub_255E38918();
  sub_255D5AFE4(&qword_27F7E6AF8, MEMORY[0x277CDD848], protocol conformance descriptor for DismissAction);
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_255E39A98();
}

uint64_t sub_255D53D64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC6LiftUI13DismissAction_dismissAction;
  v5 = sub_255E38918();
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *a2 = v3;
  return result;
}

void sub_255D53DF8(unint64_t a1)
{
  v3 = *v1;
  v353 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v356 = *(v1 + 40);
  v357 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v358 = v8;
  v355 = v6;
  if (!*v1)
  {
LABEL_244:
    if (v6 != 255 && v8 != 255)
    {
      v304 = v8;
      sub_255D5C240(v353, v5, v4, v6);
      sub_255D5C240(v356, v357, v7, v304);
      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v305 = sub_255E386A8();
      __swift_project_value_buffer(v305, qword_27F8152D8);
      v306 = sub_255E38688();
      v307 = sub_255E3A868();
      if (os_log_type_enabled(v306, v307))
      {
        v308 = swift_slowAlloc();
        *v308 = 0;
        _os_log_impl(&dword_255D2E000, v306, v307, "LiftUI Set Action with reference", v308, 2u);
        MEMORY[0x259C4F9E0](v308, -1, -1);
      }

      sub_255DDEBF8(a1, v356, v357, v7, v358 & 1, &v380);
      v309 = v380;
      v380 = v353;
      v381 = v5;
      v382 = v4;
      v383 = v355 & 1;
      v384 = v309;
      RemoteStateStore.set(reference:value:)(&v380, &v384);
      sub_255D5C2F4(v356, v357, v7, v358);

      sub_255D5C2F4(v353, v5, v4, v355);
    }

    return;
  }

  v352 = *(v1 + 56);
  if (qword_27F7E5E80 != -1)
  {
LABEL_253:
    swift_once();
  }

  v9 = sub_255E386A8();
  __swift_project_value_buffer(v9, qword_27F8152D8);

  v10 = sub_255E38688();
  v11 = sub_255E3A868();

  v359 = a1;
  v349 = v5;
  v350 = v4;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v375 = swift_slowAlloc();
    v380 = v375;
    *v12 = 136315138;
    v386[0] = sub_255D570D4(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B70, &qword_255E3EF60);
    sub_255D38950(&qword_27F7E6B78, &qword_27F7E6B70, &qword_255E3EF60, MEMORY[0x277D83958]);
    v13 = sub_255E3A498();
    v15 = v14;

    v16 = sub_255D378C0(v13, v15, &v380);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_255D2E000, v10, v11, "Set Action: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v375);
    MEMORY[0x259C4F9E0](v375, -1, -1);
    MEMORY[0x259C4F9E0](v12, -1, -1);
  }

  v17 = v3 + 64;
  v18 = 1 << *(v3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v4 = v19 & *(v3 + 64);
  v354 = qword_27F7E85F8;
  v351 = qword_27F7E8600;
  v20 = (v18 + 63) >> 6;

  v5 = 0;
  v368 = v3;
  v360 = v20;
  for (i = v3 + 64; ; v17 = i)
  {
    while (1)
    {
      while (1)
      {
        if (!v4)
        {
          while (1)
          {
            v24 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              break;
            }

            if (v24 >= v20)
            {

              v5 = v349;
              v4 = v350;
              v6 = v355;
              v7 = v352;
              v8 = v358;
              goto LABEL_244;
            }

            v4 = *(v17 + 8 * v24);
            ++v5;
            if (v4)
            {
              v5 = v24;
              goto LABEL_16;
            }
          }

          __break(1u);
          goto LABEL_253;
        }

LABEL_16:
        v25 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v26 = v25 | (v5 << 6);
        v27 = (*(v368 + 48) + 16 * v26);
        v3 = v27[1];
        v28 = *(v368 + 56) + 32 * v26;
        v22 = *v28;
        v29 = *(v28 + 8);
        v30 = *(v28 + 16);
        v369 = *(v28 + 24);
        v374 = v30;
        v376 = *v27;
        if ((v369 & 1) == 0)
        {
          sub_255D5C258(v22, v29, v30, 0);
          sub_255D5C258(v22, v29, v30, 0);

          v57 = v22;
          v35 = v29;
          v31 = v3;
          goto LABEL_31;
        }

        v367 = v27[1];
        v370 = *v28;
        v372 = *(v28 + 8);
        if ((~v30 & 0xF000000000000007) == 0)
        {
          v3 = *(a1 + v354);
          v31 = v27[1];
          if (!v3)
          {
            v35 = *(v28 + 8);
            sub_255D5C258(v22, v372, *(v28 + 16), 1);

            goto LABEL_58;
          }

          swift_beginAccess();
          v32 = *(a1 + v351);
          v33 = *(v32 + 16);
          v34 = v30;
          v35 = v372;
          sub_255D5C258(v22, v372, v34, 1);

          if (!v33 || (v36 = sub_255D3CA20(v22, v372), (v37 & 1) == 0))
          {
            swift_endAccess();

            v20 = v360;
            goto LABEL_58;
          }

          v38 = *(v32 + 56) + 32 * v36;
          v40 = *v38;
          v39 = *(v38 + 8);
          v41 = *(v38 + 16);
          v42 = *(v38 + 24);
          swift_endAccess();
          v20 = v360;
          if ((v42 & 1) == 0)
          {
            sub_255D5C258(v40, v39, v41, 0);

            v387[0] = v40;
            v121 = v40;
            v22 = v370;
            v35 = v372;
            v31 = v367;
            goto LABEL_79;
          }

          v345 = v39;
          v347 = v40;
          v343 = v41;
          if ((~v41 & 0xF000000000000007) == 0)
          {
            v43 = *(v3 + qword_27F7E85F8);
            if (v43)
            {
              v44 = qword_27F7E8600;
              swift_beginAccess();
              v45 = *(v3 + v44);
              v46 = *(v45 + 16);
              sub_255D5C258(v40, v345, v41, 1);

              if (v46)
              {
                v47 = sub_255D3CA20(v40, v345);
                if (v48)
                {
                  v49 = *(v45 + 56) + 32 * v47;
                  v50 = *(v49 + 8);
                  v339 = *v49;
                  v51 = *(v49 + 16);
                  v52 = *(v49 + 24);
                  swift_endAccess();
                  v20 = v360;
                  if ((v52 & 1) == 0)
                  {
                    sub_255D5C258(v339, v50, v51, 0);

                    v213 = v339;
                    v378 = v339;
                    v22 = v370;
                    v35 = v372;
                    v31 = v367;
                    goto LABEL_153;
                  }

                  v331 = v51;
                  v335 = v50;
                  v35 = v372;
                  if ((~v51 & 0xF000000000000007) == 0)
                  {

                    sub_255D34858(v51);
                    RemoteStateStore.subscript.getter(v339, v335, &v380);
                    v53 = v380;
                    v22 = v370;
                    if ((~v380 & 0xF000000000000007) != 0)
                    {
                      sub_255D5C30C(v380);
                      sub_255D5C324(v53);

                      sub_255D4DE84(v339, v335, v51, 1);
                      v378 = v53;
                      v213 = v53;
                      v31 = v367;
                      goto LABEL_153;
                    }

                    sub_255D5C324(v380);
                    sub_255D5C33C();
                    v54 = swift_allocError();
                    *v55 = v339;
                    *(v55 + 8) = v335;
                    *(v55 + 16) = &type metadata for DecodableState;
                    *(v55 + 32) = 0;
                    swift_willThrow();
                    a1 = v359;

                    v31 = v367;
                    v56 = v331;
                    goto LABEL_222;
                  }

                  v232 = *(v43 + qword_27F7E85F8);
                  v233 = v43;
                  v22 = v370;
                  v330 = v233;
                  if (v232)
                  {
                    v234 = qword_27F7E8600;
                    swift_beginAccess();
                    v235 = *(v233 + v234);
                    v320 = *(v235 + 16);
                    v236 = v335;
                    sub_255D5C258(v339, v335, v51, 1);
                    sub_255D34858(v51);
                    v325 = v232;

                    v31 = v367;
                    if (v320)
                    {
                      v237 = sub_255D3CA20(v339, v335);
                      if (v238)
                      {
                        v239 = *(v235 + 56) + 32 * v237;
                        v240 = *v239;
                        v241 = *(v239 + 8);
                        v242 = *(v239 + 16);
                        v243 = *(v239 + 24);
                        swift_endAccess();
                        sub_255D5C258(v240, v241, v242, v243);
                        sub_255DDEBF8(v325, v240, v241, v242, v243, &v380);

                        sub_255D4DE84(v240, v241, v242, v243);
                        v299 = v380;
                        v20 = v360;
                        v22 = v370;
                        v35 = v372;
                        v31 = v367;
LABEL_219:
                        if ((~v299 & 0xF000000000000007) != 0)
                        {
                          sub_255DE08EC(v299, v330, v331, &v377);
                          sub_255D5C324(v299);
                          sub_255D2F870(v331);

                          sub_255D4DE84(v339, v335, v331, 1);
                          v213 = v377;
                          v378 = v377;
                          a1 = v359;
                          goto LABEL_153;
                        }

                        sub_255D5C33C();
                        v364 = swift_allocError();
                        *v291 = v339;
                        *(v291 + 8) = v335;
                        *(v291 + 16) = &type metadata for DecodableState;
                        *(v291 + 32) = 0;
                        swift_willThrow();

                        v56 = v331;
                        sub_255D2F870(v331);

                        a1 = v359;
LABEL_222:

                        sub_255D4DE84(v339, v335, v56, 1);
                        v179 = v345;
LABEL_114:
                        v380 = v347;
                        v381 = v179;
                        v180 = *(*v3 + 112);
                        swift_beginAccess();
                        v181 = *(v3 + v180);
                        if (*(v181 + 16))
                        {

                          v182 = sub_255D3CA20(v347, v345);
                          if (v183)
                          {
                            v184 = *(*(v181 + 56) + 8 * v182);

                            MEMORY[0x28223BE20](v185);
                            KeyPath = swift_getKeyPath();
                            MEMORY[0x28223BE20](KeyPath);
                            swift_getKeyPath();
                            sub_255E38728();

                            if ((v184 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_260;
                            }

                            v20 = v360;
                            v22 = v370;
                            if (v184 >= *(v377 + 16))
                            {
                              goto LABEL_264;
                            }

                            v378 = *(v377 + 8 * v184 + 32);

                            v35 = v372;
                            v31 = v367;
                            goto LABEL_152;
                          }
                        }

                        v209 = *(v3 + *(*v3 + 120));
                        if (v209)
                        {
                          (*(*v209 + 248))(&v378, &v380);
                        }

                        else
                        {
                          v378 = 0xF000000000000007;
                        }

LABEL_152:
                        v213 = v378;
LABEL_153:
                        if ((~v213 & 0xF000000000000007) != 0)
                        {
                          v342 = v213;
                          sub_255D5C30C(v213);
                          sub_255D5C324(v342);

                          sub_255D4DE84(v347, v345, v343, 1);
                          v121 = v342;
                          v387[0] = v342;
                          goto LABEL_79;
                        }

                        sub_255D5C324(v213);
                        sub_255D5C33C();
                        v214 = v22;
                        v215 = v35;
                        v216 = swift_allocError();
                        v217 = v345;
                        *v218 = v347;
                        *(v218 + 8) = v345;
                        *(v218 + 16) = &type metadata for DecodableState;
                        *(v218 + 32) = 0;
                        swift_willThrow();
                        a1 = v359;

                        v219 = v216;
                        v35 = v215;
                        v22 = v214;
                        v31 = v367;

                        goto LABEL_166;
                      }
                    }

                    swift_endAccess();

                    v20 = v360;
                    v277 = v339;
                  }

                  else
                  {
                    v236 = v335;
                    v277 = v339;
                    sub_255D5C258(v339, v335, v51, 1);
                    sub_255D34858(v51);
                    v31 = v367;
                  }

                  sub_255DE3530(v277, v236, &v380);
                  v299 = v380;
                  goto LABEL_219;
                }
              }

              swift_endAccess();

              v20 = v360;
            }

            else
            {

              sub_255D34858(v41);
            }

            v22 = v370;
            v35 = v372;
            v179 = v345;
            v31 = v367;
            goto LABEL_114;
          }

          v128 = *(v3 + qword_27F7E85F8);
          if (v128)
          {
            v129 = qword_27F7E8600;
            swift_beginAccess();
            v130 = *(v3 + v129);
            v131 = *(v130 + 16);
            v132 = v40;
            sub_255D5C258(v40, v345, v41, 1);
            sub_255D34858(v41);

            v35 = v372;
            if (v131)
            {
              v133 = sub_255D3CA20(v40, v345);
              if (v134)
              {
                v341 = v128;
                v135 = *(v130 + 56) + 32 * v133;
                v136 = *v135;
                v137 = *(v135 + 8);
                v138 = *(v135 + 16);
                v139 = *(v135 + 24);
                swift_endAccess();
                v22 = v370;
                if ((v139 & 1) == 0)
                {
                  sub_255D5C258(v136, v137, v138, 0);

                  v20 = v360;
                  v298 = v136;
                  v31 = v367;
                  goto LABEL_163;
                }

                v333 = v137;
                v337 = v136;
                v328 = v138;
                v140 = (~v138 & 0xF000000000000007) == 0;
                v20 = v360;
                v31 = v367;
                if (!v140)
                {
                  v254 = *(v341 + qword_27F7E85F8);
                  if (v254)
                  {
                    v255 = qword_27F7E8600;
                    swift_beginAccess();
                    v256 = *(v341 + v255);
                    v326 = *(v256 + 16);
                    sub_255D5C258(v136, v333, v328, 1);
                    sub_255D34858(v328);

                    v257 = v254;
                    if (v326)
                    {
                      v258 = sub_255D3CA20(v337, v333);
                      if (v259)
                      {
                        v260 = *(v256 + 56) + 32 * v258;
                        v261 = *v260;
                        v262 = *(v260 + 8);
                        v263 = *(v260 + 16);
                        v264 = *(v260 + 24);
                        swift_endAccess();
                        sub_255D5C258(v261, v262, v263, v264);
                        sub_255DDEBF8(v257, v261, v262, v263, v264, &v380);

                        sub_255D4DE84(v261, v262, v263, v264);
                        v302 = v380;
                        v20 = v360;
                        v22 = v370;
                        v35 = v372;
                        v31 = v367;
LABEL_231:
                        if ((~v302 & 0xF000000000000007) != 0)
                        {
                          v294 = v302;
                          sub_255DE08EC(v302, v341, v328, &v378);
                          sub_255D5C324(v294);
                          sub_255D2F870(v328);

                          sub_255D4DE84(v337, v333, v328, 1);
                          v298 = v378;
                          goto LABEL_163;
                        }

                        sub_255D5C33C();
                        v366 = swift_allocError();
                        v284 = v333;
                        *v293 = v337;
                        *(v293 + 8) = v333;
                        *(v293 + 16) = &type metadata for DecodableState;
                        *(v293 + 32) = 0;
                        swift_willThrow();

                        v286 = v328;
                        sub_255D2F870(v328);

LABEL_234:

                        sub_255D4DE84(v337, v284, v286, 1);
                        v194 = v345;
                        v132 = v347;
LABEL_127:
                        v380 = v132;
                        v381 = v194;
                        v195 = *(*v3 + 112);
                        swift_beginAccess();
                        v196 = *(v3 + v195);
                        if (*(v196 + 16))
                        {

                          v197 = sub_255D3CA20(v347, v345);
                          if (v198)
                          {
                            v199 = *(*(v196 + 56) + 8 * v197);

                            MEMORY[0x28223BE20](v200);
                            v201 = swift_getKeyPath();
                            MEMORY[0x28223BE20](v201);
                            swift_getKeyPath();
                            sub_255E38728();

                            if ((v199 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_263;
                            }

                            v20 = v360;
                            v22 = v370;
                            if (v199 >= *(v378 + 16))
                            {
                              goto LABEL_267;
                            }

                            v378 = *(v378 + 8 * v199 + 32);

                            v35 = v372;
                            v31 = v367;
                            goto LABEL_162;
                          }
                        }

                        v211 = *(v3 + *(*v3 + 120));
                        if (v211)
                        {
                          (*(*v211 + 248))(&v378, &v380);
                        }

                        else
                        {
                          v378 = 0xF000000000000007;
                        }

LABEL_162:
                        v298 = v378;
LABEL_163:
                        if ((~v298 & 0xF000000000000007) != 0)
                        {
                          sub_255DE08EC(v298, v3, v343, &v379);
                          sub_255D5C324(v298);
                          sub_255D2F870(v343);

                          sub_255D4DE84(v347, v345, v343, 1);
                          v121 = v379;
                          v387[0] = v379;
                          a1 = v359;
                          goto LABEL_79;
                        }

                        sub_255D5C33C();
                        v225 = v22;
                        v226 = v35;
                        v227 = swift_allocError();
                        v217 = v345;
                        *v228 = v347;
                        *(v228 + 8) = v345;
                        *(v228 + 16) = &type metadata for DecodableState;
                        *(v228 + 32) = 0;
                        swift_willThrow();

                        sub_255D2F870(v343);
                        v229 = v227;
                        v35 = v226;
                        v22 = v225;
                        v31 = v367;

                        a1 = v359;
LABEL_166:

                        sub_255D4DE84(v347, v217, v343, 1);
LABEL_58:
                        v380 = v22;
                        v381 = v35;
                        v105 = *(*a1 + 112);
                        swift_beginAccess();
                        v106 = *(a1 + v105);
                        if (*(v106 + 16))
                        {

                          v107 = sub_255D3CA20(v22, v35);
                          if (v108)
                          {
                            v3 = *(*(v106 + 56) + 8 * v107);

                            MEMORY[0x28223BE20](v109);
                            v110 = swift_getKeyPath();
                            MEMORY[0x28223BE20](v110);
                            swift_getKeyPath();
                            sub_255E38728();

                            if ((v3 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_256;
                            }

                            v20 = v360;
                            if (v3 >= *(v379 + 16))
                            {
                              goto LABEL_258;
                            }

                            v387[0] = *(v379 + 8 * v3 + 32);

                            v22 = v370;
                            v35 = v372;
                            v31 = v367;
                            goto LABEL_78;
                          }
                        }

                        v119 = *(a1 + *(*a1 + 120));
                        if (v119)
                        {
                          (*(*v119 + 248))(v387, &v380);
                        }

                        else
                        {
                          v387[0] = 0xF000000000000007;
                        }

LABEL_78:
                        v121 = v387[0];
LABEL_79:
                        if ((~v121 & 0xF000000000000007) == 0)
                        {
                          sub_255D5C324(v121);
                          sub_255D5C33C();
                          v21 = swift_allocError();
                          *v122 = v22;
                          *(v122 + 8) = v35;
                          *(v122 + 16) = &type metadata for DecodableState;
                          *(v122 + 32) = 0;
                          swift_willThrow();

                          goto LABEL_9;
                        }

                        v3 = a1;
                        v123 = v31;
                        v124 = v22;
                        v125 = v35;
                        v126 = v121;
                        sub_255D5C30C(v121);
                        sub_255D5C324(v126);
                        v57 = v126;
                        v35 = v125;
                        v22 = v124;
                        v31 = v123;
                        a1 = v3;
                        goto LABEL_31;
                      }
                    }

                    swift_endAccess();

                    v20 = v360;
                    v279 = v337;
                  }

                  else
                  {
                    v279 = v136;
                    sub_255D5C258(v136, v333, v328, 1);
                    sub_255D34858(v328);
                  }

                  sub_255DE3530(v279, v333, &v380);
                  v302 = v380;
                  goto LABEL_231;
                }

                v141 = *(v341 + qword_27F7E85F8);
                if (v141)
                {
                  v142 = qword_27F7E8600;
                  swift_beginAccess();
                  v314 = *(v341 + v142);
                  v318 = *(v314 + 16);
                  v143 = v333;
                  sub_255D5C258(v337, v333, v328, 1);
                  v323 = v141;

                  if (v318)
                  {
                    v144 = sub_255D3CA20(v337, v333);
                    if (v145)
                    {
                      v146 = *(v314 + 56) + 32 * v144;
                      v147 = *v146;
                      v148 = *(v146 + 8);
                      v149 = *(v146 + 16);
                      v150 = *(v146 + 24);
                      swift_endAccess();
                      sub_255D5C258(v147, v148, v149, v150);
                      sub_255DDEBF8(v323, v147, v148, v149, v150, &v380);

                      sub_255D4DE84(v147, v148, v149, v150);
                      v298 = v380;
                      v20 = v360;
                      v22 = v370;
                      v35 = v372;
                      v31 = v367;
LABEL_209:
                      if ((~v298 & 0xF000000000000007) != 0)
                      {
                        sub_255D5C30C(v298);
                        sub_255D5C324(v298);

                        sub_255D4DE84(v337, v333, v328, 1);
                        goto LABEL_163;
                      }

                      sub_255D5C324(v298);
                      sub_255D5C33C();
                      v363 = swift_allocError();
                      v284 = v333;
                      *v285 = v337;
                      *(v285 + 8) = v333;
                      *(v285 + 16) = &type metadata for DecodableState;
                      *(v285 + 32) = 0;
                      swift_willThrow();

                      v286 = v328;
                      goto LABEL_234;
                    }
                  }

                  swift_endAccess();

                  v20 = v360;
                }

                else
                {
                  v143 = v333;

                  sub_255D34858(v328);
                }

                sub_255DE3530(v337, v143, &v377);
                v298 = v377;
                goto LABEL_209;
              }
            }

            swift_endAccess();

            v20 = v360;
          }

          else
          {
            v132 = v40;
            sub_255D5C258(v40, v345, v41, 1);
            sub_255D34858(v41);
            v35 = v372;
          }

          v22 = v370;
          v194 = v345;
          v31 = v367;
          goto LABEL_127;
        }

        v71 = *(a1 + v354);
        v31 = v27[1];
        if (!v71)
        {
          v111 = *(v28 + 16);
          v35 = *(v28 + 8);
          sub_255D5C258(v22, v372, v111, 1);

          sub_255D34858(v111);
          goto LABEL_64;
        }

        swift_beginAccess();
        v72 = *(a1 + v351);
        v73 = *(v72 + 16);
        sub_255D5C258(v22, v372, v30, 1);

        v74 = v30;
        v35 = v372;
        sub_255D34858(v74);

        if (!v73 || (v75 = sub_255D3CA20(v370, v372), (v76 & 1) == 0))
        {
          swift_endAccess();

          v20 = v360;
          goto LABEL_64;
        }

        v348 = v71;
        v77 = *(v72 + 56) + 32 * v75;
        v78 = *v77;
        v79 = *(v77 + 8);
        v80 = *(v77 + 16);
        v81 = *(v77 + 24);
        swift_endAccess();
        v20 = v360;
        if ((v81 & 1) == 0)
        {
          v127 = v78;
          v3 = v370;
          sub_255D5C258(v127, v79, v80, 0);

          v35 = v372;
          v31 = v367;
          goto LABEL_84;
        }

        v344 = v79;
        v346 = v78;
        v82 = v80;
        v340 = v80;
        if ((~v80 & 0xF000000000000007) == 0)
        {
          v83 = *(v348 + qword_27F7E85F8);
          if (!v83)
          {
            v87 = v344;

            sub_255D34858(v80);
            v178 = v346;
            v35 = v372;
            v31 = v367;
            goto LABEL_120;
          }

          v84 = qword_27F7E8600;
          swift_beginAccess();
          v85 = *(v348 + v84);
          v86 = *(v85 + 16);
          v87 = v344;
          sub_255D5C258(v346, v344, v80, 1);
          v336 = v83;

          v31 = v367;
          if (!v86 || (v88 = sub_255D3CA20(v346, v344), (v89 & 1) == 0))
          {
            swift_endAccess();

            v20 = v360;
            v178 = v346;
            v35 = v372;
            goto LABEL_120;
          }

          v90 = *(v85 + 56) + 32 * v88;
          v327 = *(v90 + 8);
          v332 = *v90;
          v91 = *(v90 + 16);
          v92 = *(v90 + 24);
          swift_endAccess();
          v20 = v360;
          v35 = v372;
          if ((v92 & 1) == 0)
          {
            sub_255D5C258(v332, v327, v91, 0);

            v220 = v332;
            v379 = v332;
            goto LABEL_158;
          }

          v322 = v91;
          if ((~v91 & 0xF000000000000007) == 0)
          {
            v93 = *(v336 + qword_27F7E85F8);
            if (v93)
            {
              v94 = qword_27F7E8600;
              swift_beginAccess();
              v310 = *(v336 + v94);
              v313 = *(v310 + 16);
              v95 = v327;
              sub_255D5C258(v332, v327, v322, 1);
              v317 = v93;

              if (v313)
              {
                v96 = sub_255D3CA20(v332, v327);
                if (v97)
                {
                  v98 = *(v310 + 56) + 32 * v96;
                  v99 = *v98;
                  v100 = *(v98 + 8);
                  v101 = *(v98 + 16);
                  v102 = *(v98 + 24);
                  swift_endAccess();
                  sub_255D5C258(v99, v100, v101, v102);
                  sub_255DDEBF8(v317, v99, v100, v101, v102, &v380);

                  sub_255D4DE84(v99, v100, v101, v102);
                  v297 = v380;
                  a1 = v359;
                  v20 = v360;
                  v22 = v370;
                  v35 = v372;
                  v31 = v367;
LABEL_204:
                  if ((~v297 & 0xF000000000000007) != 0)
                  {
                    sub_255D5C30C(v297);
                    sub_255D5C324(v297);

                    sub_255D4DE84(v332, v327, v322, 1);
                    v379 = v297;
                    v220 = v297;
                    goto LABEL_158;
                  }

                  sub_255D5C324(v297);
                  sub_255D5C33C();
                  v362 = swift_allocError();
                  v281 = v327;
                  v282 = v332;
                  *v283 = v332;
                  *(v283 + 8) = v327;
                  *(v283 + 16) = &type metadata for DecodableState;
                  *(v283 + 32) = 0;
                  swift_willThrow();
                  a1 = v359;

                  goto LABEL_228;
                }
              }

              swift_endAccess();

              v20 = v360;
            }

            else
            {
              v95 = v327;

              sub_255D34858(v322);
            }

            sub_255DE3530(v332, v95, &v377);
            v297 = v377;
            goto LABEL_204;
          }

          v244 = *(v336 + qword_27F7E85F8);
          if (v244)
          {
            v245 = qword_27F7E8600;
            swift_beginAccess();
            v312 = *(v336 + v245);
            v316 = *(v312 + 16);
            sub_255D5C258(v332, v327, v322, 1);
            sub_255D34858(v322);
            v321 = v244;
            v246 = v332;

            if (v316)
            {
              v247 = sub_255D3CA20(v332, v327);
              if (v248)
              {
                v249 = *(v312 + 56) + 32 * v247;
                v250 = *v249;
                v251 = *(v249 + 8);
                v252 = *(v249 + 16);
                v253 = *(v249 + 24);
                swift_endAccess();
                sub_255D5C258(v250, v251, v252, v253);
                sub_255DDEBF8(v321, v250, v251, v252, v253, &v380);

                sub_255D4DE84(v250, v251, v252, v253);
                v300 = v380;
                v20 = v360;
                v22 = v370;
                v35 = v372;
                v31 = v367;
                v301 = v322;
LABEL_225:
                if ((~v300 & 0xF000000000000007) != 0)
                {
                  sub_255DE08EC(v300, v336, v301, &v378);
                  sub_255D5C324(v300);
                  sub_255D2F870(v301);

                  sub_255D4DE84(v332, v327, v301, 1);
                  v220 = v378;
                  v379 = v378;
                  a1 = v359;
                  goto LABEL_158;
                }

                sub_255D5C33C();
                v365 = swift_allocError();
                v281 = v327;
                v282 = v332;
                *v292 = v332;
                *(v292 + 8) = v327;
                *(v292 + 16) = &type metadata for DecodableState;
                *(v292 + 32) = 0;
                swift_willThrow();

                sub_255D2F870(v322);

                a1 = v359;
LABEL_228:

                sub_255D4DE84(v282, v281, v322, 1);
                v87 = v344;
                v178 = v346;
LABEL_120:
                v380 = v178;
                v381 = v87;
                v187 = *(*v348 + 112);
                swift_beginAccess();
                v188 = *(v348 + v187);
                if (*(v188 + 16))
                {

                  v189 = sub_255D3CA20(v346, v344);
                  if (v190)
                  {
                    v191 = *(*(v188 + 56) + 8 * v189);

                    MEMORY[0x28223BE20](v192);
                    v193 = swift_getKeyPath();
                    MEMORY[0x28223BE20](v193);
                    swift_getKeyPath();
                    sub_255E38728();

                    if ((v191 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_262;
                    }

                    v20 = v360;
                    v31 = v367;
                    if (v191 >= *(v378 + 16))
                    {
                      goto LABEL_266;
                    }

                    v379 = *(v378 + 8 * v191 + 32);

                    a1 = v359;
                    v22 = v370;
                    v35 = v372;
                    goto LABEL_157;
                  }
                }

                v210 = *(v348 + *(*v348 + 120));
                if (v210)
                {
                  (*(*v210 + 248))(&v379, &v380);
                }

                else
                {
                  v379 = 0xF000000000000007;
                }

LABEL_157:
                v220 = v379;
LABEL_158:
                if ((~v220 & 0xF000000000000007) != 0)
                {
                  v3 = v22;
                  v127 = v220;
                  sub_255D5C30C(v220);
                  sub_255D5C324(v127);

                  sub_255D4DE84(v346, v344, v340, 1);
                  goto LABEL_84;
                }

                sub_255D5C324(v220);
                sub_255D5C33C();
                v221 = swift_allocError();
                *v222 = v346;
                *(v222 + 8) = v344;
                *(v222 + 16) = &type metadata for DecodableState;
                *(v222 + 32) = 0;
                swift_willThrow();
                a1 = v359;

                v223 = v221;
                v224 = v346;
                v35 = v372;

                goto LABEL_172;
              }
            }

            swift_endAccess();

            v20 = v360;
            v278 = v327;
            v301 = v322;
          }

          else
          {
            v278 = v327;
            v246 = v332;
            v301 = v322;
            sub_255D5C258(v332, v327, v322, 1);
            sub_255D34858(v322);
          }

          sub_255DE3530(v246, v278, &v380);
          v300 = v380;
          goto LABEL_225;
        }

        v151 = *(v348 + qword_27F7E85F8);
        if (!v151)
        {
          v158 = v79;
          v156 = v346;
          sub_255D5C258(v346, v79, v82, 1);
          sub_255D34858(v82);
          goto LABEL_133;
        }

        v152 = v82;
        v153 = qword_27F7E8600;
        swift_beginAccess();
        v154 = *(v348 + v153);
        v155 = *(v154 + 16);
        v156 = v346;
        sub_255D5C258(v346, v79, v152, 1);
        v157 = v152;
        v158 = v79;
        sub_255D34858(v157);

        if (!v155 || (v159 = sub_255D3CA20(v346, v79), (v160 & 1) == 0))
        {
          swift_endAccess();

          v20 = v360;
LABEL_133:
          v31 = v367;
          goto LABEL_134;
        }

        v338 = v151;
        v161 = *(v154 + 56) + 32 * v159;
        v163 = *v161;
        v162 = *(v161 + 8);
        v164 = *(v161 + 16);
        v165 = *(v161 + 24);
        swift_endAccess();
        v31 = v367;
        if ((v165 & 1) == 0)
        {
          sub_255D5C258(v163, v162, v164, 0);

          v20 = v360;
LABEL_177:
          v166 = v348;
          goto LABEL_169;
        }

        v329 = v162;
        v334 = v163;
        v324 = v164;
        v140 = (~v164 & 0xF000000000000007) == 0;
        v20 = v360;
        v166 = v348;
        if (!v140)
        {
          v265 = v338;
          v266 = *(v338 + qword_27F7E85F8);
          if (v266)
          {
            v267 = qword_27F7E8600;
            swift_beginAccess();
            v268 = *(v338 + v267);
            v269 = *(v268 + 16);
            sub_255D5C258(v334, v329, v324, 1);
            sub_255D34858(v324);

            if (v269)
            {
              v270 = sub_255D3CA20(v334, v329);
              if (v271)
              {
                v272 = *(v268 + 56) + 32 * v270;
                v273 = *v272;
                v274 = *(v272 + 8);
                v275 = *(v272 + 16);
                v276 = *(v272 + 24);
                swift_endAccess();
                sub_255D5C258(v273, v274, v275, v276);
                sub_255DDEBF8(v266, v273, v274, v275, v276, &v380);

                sub_255D4DE84(v273, v274, v275, v276);
                v303 = v380;
                v20 = v360;
                v22 = v370;
                v31 = v367;
                v265 = v338;
LABEL_237:
                if ((~v303 & 0xF000000000000007) != 0)
                {
                  sub_255DE08EC(v303, v265, v324, &v379);
                  sub_255D5C324(v303);
                  sub_255D2F870(v324);

                  sub_255D4DE84(v334, v329, v324, 1);
                  v163 = v379;
                  goto LABEL_177;
                }

                sub_255D5C33C();
                v295 = swift_allocError();
                v288 = v329;
                *v296 = v334;
                *(v296 + 8) = v329;
                *(v296 + 16) = &type metadata for DecodableState;
                *(v296 + 32) = 0;
                swift_willThrow();

                v290 = v324;
                sub_255D2F870(v324);

                goto LABEL_240;
              }
            }

            swift_endAccess();

            v20 = v360;
            v280 = v334;
            v265 = v338;
          }

          else
          {
            v280 = v334;
            sub_255D5C258(v334, v329, v324, 1);
            sub_255D34858(v324);
          }

          sub_255DE3530(v280, v329, &v380);
          v303 = v380;
          goto LABEL_237;
        }

        v167 = *(v338 + qword_27F7E85F8);
        if (!v167)
        {
          v170 = v329;

          sub_255D34858(v324);
          goto LABEL_213;
        }

        v168 = qword_27F7E8600;
        swift_beginAccess();
        v311 = *(v338 + v168);
        v315 = *(v311 + 16);
        v169 = v167;
        v170 = v329;
        sub_255D5C258(v334, v329, v324, 1);
        v319 = v169;

        if (!v315 || (v171 = sub_255D3CA20(v334, v329), (v172 & 1) == 0))
        {
          swift_endAccess();

          v20 = v360;
LABEL_213:
          sub_255DE3530(v334, v170, &v378);
          v163 = v378;
          goto LABEL_214;
        }

        v173 = *(v311 + 56) + 32 * v171;
        v174 = *v173;
        v175 = *(v173 + 8);
        v176 = *(v173 + 16);
        v177 = *(v173 + 24);
        swift_endAccess();
        sub_255D5C258(v174, v175, v176, v177);
        sub_255DDEBF8(v319, v174, v175, v176, v177, &v380);

        sub_255D4DE84(v174, v175, v176, v177);
        v163 = v380;
        v20 = v360;
        v22 = v370;
        v31 = v367;
        v166 = v348;
LABEL_214:
        if ((~v163 & 0xF000000000000007) != 0)
        {
          sub_255D5C30C(v163);
          sub_255D5C324(v163);

          sub_255D4DE84(v334, v329, v324, 1);
          goto LABEL_169;
        }

        sub_255D5C324(v163);
        sub_255D5C33C();
        v287 = swift_allocError();
        v288 = v329;
        *v289 = v334;
        *(v289 + 8) = v329;
        *(v289 + 16) = &type metadata for DecodableState;
        *(v289 + 32) = 0;
        swift_willThrow();

        v290 = v324;
LABEL_240:

        sub_255D4DE84(v334, v288, v290, 1);
        v156 = v346;
LABEL_134:
        v380 = v156;
        v381 = v158;
        v166 = v348;
        v202 = *(*v348 + 112);
        swift_beginAccess();
        v203 = *(v348 + v202);
        if (*(v203 + 16))
        {

          v204 = sub_255D3CA20(v346, v158);
          if (v205)
          {
            v206 = *(*(v203 + 56) + 8 * v204);

            MEMORY[0x28223BE20](v207);
            v208 = swift_getKeyPath();
            MEMORY[0x28223BE20](v208);
            swift_getKeyPath();
            sub_255E38728();

            if ((v206 & 0x8000000000000000) != 0)
            {
              goto LABEL_261;
            }

            v20 = v360;
            v31 = v367;
            if (v206 >= *(v379 + 16))
            {
              goto LABEL_265;
            }

            v379 = *(v379 + 8 * v206 + 32);

            v22 = v370;
            goto LABEL_168;
          }
        }

        v212 = *(v348 + *(*v348 + 120));
        if (v212)
        {
          (*(*v212 + 248))(&v379, &v380);
        }

        else
        {
          v379 = 0xF000000000000007;
        }

LABEL_168:
        v163 = v379;
LABEL_169:
        if ((~v163 & 0xF000000000000007) != 0)
        {
          v3 = v22;
          sub_255DE08EC(v163, v166, v340, v387);
          sub_255D5C324(v163);
          sub_255D2F870(v340);

          sub_255D4DE84(v346, v344, v340, 1);
          v127 = v387[0];
          a1 = v359;
          v35 = v372;
          goto LABEL_84;
        }

        sub_255D5C33C();
        v230 = swift_allocError();
        v224 = v346;
        *v231 = v346;
        *(v231 + 8) = v158;
        *(v231 + 16) = &type metadata for DecodableState;
        *(v231 + 32) = 0;
        swift_willThrow();

        sub_255D2F870(v340);

        a1 = v359;
        v35 = v372;
LABEL_172:

        sub_255D4DE84(v224, v344, v340, 1);
LABEL_64:
        v380 = v22;
        v381 = v35;
        v112 = *(*a1 + 112);
        swift_beginAccess();
        v113 = *(a1 + v112);
        if (*(v113 + 16))
        {

          v114 = sub_255D3CA20(v22, v35);
          if (v115)
          {
            v116 = *(*(v113 + 56) + 8 * v114);

            MEMORY[0x28223BE20](v117);
            v118 = swift_getKeyPath();
            MEMORY[0x28223BE20](v118);
            swift_getKeyPath();
            sub_255E38728();

            if ((v116 & 0x8000000000000000) != 0)
            {
              goto LABEL_257;
            }

            v20 = v360;
            if (v116 >= *(v387[0] + 16))
            {
              goto LABEL_259;
            }

            v387[0] = *(v387[0] + 8 * v116 + 32);

            v3 = v370;
            v35 = v372;
            v31 = v367;
            goto LABEL_83;
          }
        }

        v3 = v22;
        v120 = *(a1 + *(*a1 + 120));
        if (v120)
        {
          (*(*v120 + 248))(v387, &v380);
        }

        else
        {
          v387[0] = 0xF000000000000007;
        }

LABEL_83:
        v127 = v387[0];
LABEL_84:
        if ((~v127 & 0xF000000000000007) == 0)
        {
          sub_255D5C33C();
          v21 = swift_allocError();
          v22 = v3;
          *v23 = v3;
          *(v23 + 8) = v35;
          *(v23 + 16) = &type metadata for DecodableState;
          *(v23 + 32) = 0;
          swift_willThrow();

          sub_255D2F870(v374);
LABEL_9:

          v384 = v376;
          v385 = v31;
          a1 = v359;
          goto LABEL_10;
        }

        sub_255DE08EC(v127, a1, v374, &v384);
        v22 = v3;
        sub_255D5C324(v127);
        sub_255D2F870(v374);
        v57 = v384;
        a1 = v359;
        v35 = v372;
LABEL_31:
        v384 = v376;
        v385 = v31;
        if ((~v57 & 0xF000000000000007) != 0)
        {
          break;
        }

LABEL_10:

        sub_255D4DE84(v22, v35, v374, v369);
        v17 = i;
      }

      v371 = v22;
      v373 = v35;
      v58 = v57;
      v59 = *(*a1 + 112);
      swift_beginAccess();
      v60 = *(a1 + v59);
      v61 = *(v60 + 16);

      if (!v61)
      {
        goto LABEL_55;
      }

      v62 = sub_255D3CA20(v376, v31);
      if (v63)
      {
        break;
      }

LABEL_55:
      v103 = *(a1 + *(*a1 + 120));
      if (v103)
      {
        v380 = v58;
        v104 = *(*v103 + 256);
        v3 = *v103 + 256;
        sub_255D5C30C(v58);

        v104(&v380, &v384);

        sub_255D5C324(v58);
      }

      else
      {
        sub_255DD5C54(v376, v31, v58);
        sub_255D5C324(v58);
        swift_bridgeObjectRelease_n();
      }

      sub_255D4DE84(v22, v373, v374, v369);
      v20 = v360;
      v17 = i;
    }

    v64 = *(*(v60 + 56) + 8 * v62);

    MEMORY[0x28223BE20](v65);
    v66 = swift_getKeyPath();
    MEMORY[0x28223BE20](v66);
    swift_getKeyPath();
    v67 = sub_255E38718();
    v3 = v68;
    v69 = *v68;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v69;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      break;
    }

    if ((v64 & 0x8000000000000000) != 0)
    {
      goto LABEL_254;
    }

LABEL_36:
    if (v64 >= *(v69 + 2))
    {
      goto LABEL_255;
    }

    *&v69[8 * v64 + 32] = v58;

    v67(&v380, 0);

    sub_255D5C324(v58);

    sub_255D4DE84(v371, v373, v374, v369);
    a1 = v359;
    v20 = v360;
  }

  v69 = sub_255DF5ECC(v69);
  *v3 = v69;
  if ((v64 & 0x8000000000000000) == 0)
  {
    goto LABEL_36;
  }

LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
}

uint64_t sub_255D570D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v38 = MEMORY[0x277D84F90];
  sub_255DE5D20(0, v1, 0);
  v2 = v38;
  v4 = v3 + 64;
  result = sub_255E3A938();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v31 = v3 + 72;
  v32 = v1;
  v33 = v8;
  v34 = v3 + 64;
  v35 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v36 = v7;
    v11 = *(v3 + 56);
    v12 = (*(v3 + 48) + 16 * v6);
    v13 = *v12;
    v14 = v12[1];
    v15 = v11 + 32 * v6;
    v37 = v2;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    swift_bridgeObjectRetain_n();
    sub_255D5C258(v17, v16, v18, v19);
    sub_255D5C258(v17, v16, v18, v19);

    sub_255D4DE84(v17, v16, v18, v19);
    MEMORY[0x259C4E8F0](v13, v14);
    MEMORY[0x259C4E8F0](2112800, 0xE300000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    sub_255E3AAC8();

    v20 = v16;
    v2 = v37;
    result = sub_255D4DE84(v17, v20, v18, v19);
    v22 = *(v37 + 16);
    v21 = *(v37 + 24);
    if (v22 >= v21 >> 1)
    {
      result = sub_255DE5D20((v21 > 1), v22 + 1, 1);
      v2 = v37;
    }

    *(v2 + 16) = v22 + 1;
    v23 = v2 + 16 * v22;
    *(v23 + 32) = 0;
    *(v23 + 40) = 0xE000000000000000;
    v3 = v35;
    v9 = 1 << *(v35 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v34;
    v24 = *(v34 + 8 * v10);
    if ((v24 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v33;
    if (v33 != *(v35 + 36))
    {
      goto LABEL_26;
    }

    v25 = v24 & (-2 << (v6 & 0x3F));
    if (v25)
    {
      v9 = __clz(__rbit64(v25)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v10 << 6;
      v27 = v10 + 1;
      v28 = (v31 + 8 * v10);
      while (v27 < (v9 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_255D5C390(v6, v33, 0);
          v9 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_255D5C390(v6, v33, 0);
    }

LABEL_4:
    v7 = v36 + 1;
    v6 = v9;
    if (v36 + 1 == v32)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_255D573FC(uint64_t a1)
{
  v3 = sub_255E3A3B8();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_255E3A3D8();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[2];
  v10 = v1[3];
  v11 = *v1;
  v23[1] = v1[1];
  v23[2] = v9;
  v23[3] = v10;
  v24 = *(v1 + 64);
  v23[0] = v11;
  sub_255D5C2AC(0, &qword_27F7E6AD8, 0x277D85C78);
  v12 = sub_255E3A878();
  v13 = swift_allocObject();
  v14 = v1[3];
  *(v13 + 48) = v1[2];
  *(v13 + 64) = v14;
  *(v13 + 80) = *(v1 + 64);
  v15 = v1[1];
  *(v13 + 16) = *v1;
  *(v13 + 32) = v15;
  *(v13 + 88) = a1;
  aBlock[4] = sub_255D5C39C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_255D5D0C8;
  aBlock[3] = &block_descriptor_115;
  v16 = _Block_copy(aBlock);
  sub_255D5C3C4(v23, v21);

  sub_255E3A3C8();
  v21[0] = MEMORY[0x277D84F90];
  sub_255D5AFE4(&qword_27F7E6AE0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6AE8, &qword_255E3E938);
  sub_255D38950(&qword_27F7E6AF0, &qword_27F7E6AE8, &qword_255E3E938, MEMORY[0x277D83970]);
  sub_255E3A928();
  MEMORY[0x259C4EBE0](0, v8, v5, v16);
  _Block_release(v16);

  (*(v20 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v19);
}

uint64_t sub_255D57750(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x636E657265666572;
  }

  else
  {
    v3 = 0x65756C6176;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x636E657265666572;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255D577F8()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D5787C(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D578EC(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D5796C@<X0>(char *a2@<X8>)
{
  v3 = sub_255E3AB48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_255D579CC(uint64_t *a1@<X8>)
{
  v2 = 0x65756C6176;
  if (*v1)
  {
    v2 = 0x636E657265666572;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D57A0C()
{
  if (*v0)
  {
    return 0x636E657265666572;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_255D57A48@<X0>(char *a3@<X8>)
{
  v4 = sub_255E3AB48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_255D57AAC(uint64_t a1)
{
  v2 = sub_255D5CEF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D57AE8(uint64_t a1)
{
  v2 = sub_255D5CEF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D57B24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v69 = &v63 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B88, &qword_255E3F070);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v63 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B90, &qword_255E3F078);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v63 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D5CEF8();
  sub_255E3AE28();
  if (v2)
  {

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_255D395E4(v7, &qword_27F7E6B88, &qword_255E3F070);
  }

  else
  {
    (*(v9 + 56))(v7, 0, 1, v8);
    (*(v9 + 32))(v11, v7, v8);
    LOBYTE(v79) = 1;
    if (sub_255E3ABE8())
    {
      sub_255D3CE1C(a1, &v79);
      sub_255D8F230(&v79, &v74);
      v63 = a1;
      v54 = *(&v74 + 1);
      v55 = v74;
      v73 = v75;
      v56 = BYTE8(v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
      LOBYTE(v74) = 0;
      sub_255D38950(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600, protocol conformance descriptor for Referenceable<A>);
      sub_255E3ABC8();
      (*(v9 + 8))(v11, v8);
      v90 = 0;
      v57 = 0;
      v59 = v79;
      v58 = v80;
      v60 = v81;
      v61 = v82;
      v62 = v73;
LABEL_23:
      *&v74 = v57;
      *(&v74 + 1) = v55;
      *&v75 = v54;
      *(&v75 + 1) = v62;
      LOBYTE(v76) = v56;
      *(&v76 + 1) = v89[0];
      DWORD1(v76) = *(v89 + 3);
      *(&v76 + 1) = v59;
      *&v77 = v58;
      *(&v77 + 1) = v60;
      v78 = v61;
      v48 = v64;
      *(v64 + 64) = v61;
      v49 = v77;
      v48[2] = v76;
      v48[3] = v49;
      v50 = v75;
      *v48 = v74;
      v48[1] = v50;
      v51 = v56;
      v52 = v62;
      sub_255D5C3C4(&v74, &v79);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      v79 = v57;
      v80 = v55;
      v81 = v54;
      v82 = v52;
      v83 = v51;
      *v84 = v89[0];
      *&v84[3] = *(v89 + 3);
      v85 = v59;
      v86 = v58;
      v87 = v60;
      v88 = v61;
      return sub_255D5CF4C(&v79);
    }

    (*(v9 + 8))(v11, v8);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D3CAFC();
  v12 = v69;
  sub_255E3AE28();
  v90 = 0;
  v63 = a1;
  v13 = sub_255E3ABD8();
  v14 = v13;
  v67 = *(v13 + 16);
  if (!v67)
  {
    v57 = MEMORY[0x277D84F98];
LABEL_22:
    (*(v65 + 8))(v12, v68);

    v60 = 0;
    v58 = 0;
    v59 = 0;
    v62 = 0;
    v54 = 0;
    v55 = 0;
    v61 = -1;
    v56 = -1;
    goto LABEL_23;
  }

  v15 = 0;
  v57 = MEMORY[0x277D84F98];
  v16 = (v13 + 56);
  v66 = v13;
  while (v15 < *(v14 + 16))
  {
    v22 = v57;
    v72 = v16;
    v73 = v15;
    v24 = *(v16 - 3);
    v23 = *(v16 - 2);
    v25 = *v16;
    v26 = v12;
    v27 = *(v16 - 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    *&v74 = v24;
    *(&v74 + 1) = v23;
    *&v75 = v27;
    BYTE8(v75) = v25;
    sub_255D38950(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600, protocol conformance descriptor for Referenceable<A>);
    swift_bridgeObjectRetain_n();
    v28 = v90;
    sub_255E3ABC8();
    if (v28)
    {
      (*(v65 + 8))(v26, v68);

      swift_bridgeObjectRelease_n();
      return __swift_destroy_boxed_opaque_existential_1Tm(v63);
    }

    v90 = 0;

    v29 = v80;
    v70 = v79;
    v71 = v81;
    v30 = v82;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v74 = v22;
    v33 = sub_255D3CA20(v24, v23);
    v34 = v22[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_26;
    }

    v37 = v32;
    if (v22[3] >= v36)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_255D824D4();
      }
    }

    else
    {
      sub_255D80994(v36, isUniquelyReferenced_nonNull_native);
      v38 = sub_255D3CA20(v24, v23);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_28;
      }

      v33 = v38;
    }

    v40 = v30;
    v41 = v70;
    v42 = v71;
    if (v37)
    {

      v57 = v74;
      v17 = *(v74 + 56) + 32 * v33;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      *v17 = v41;
      *(v17 + 8) = v29;
      *(v17 + 16) = v42;
      *(v17 + 24) = v40;
      sub_255D4DE84(v18, v19, v20, v21);
    }

    else
    {
      v57 = v74;
      *(v74 + 8 * (v33 >> 6) + 64) |= 1 << v33;
      v43 = (v57[6] + 16 * v33);
      *v43 = v24;
      v43[1] = v23;
      v44 = v57[7] + 32 * v33;
      *v44 = v41;
      *(v44 + 8) = v29;
      *(v44 + 16) = v42;
      *(v44 + 24) = v40;
      v45 = v57[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_27;
      }

      v57[2] = v47;
    }

    v15 = v73 + 1;
    v16 = v72 + 32;
    v12 = v69;
    v14 = v66;
    if (v67 == v73 + 1)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_255E3AD28();
  __break(1u);
  return result;
}

uint64_t sub_255D5833C(uint64_t a1)
{
  sub_255D573FC(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_255D583DC()
{
  sub_255E3AD98();
  MEMORY[0x259C4F100](0);
  return sub_255E3ADD8();
}

uint64_t sub_255D58420(uint64_t a1)
{
  sub_255E3AD98();
  MEMORY[0x259C4F100](0);
  return sub_255E3ADD8();
}

uint64_t sub_255D58470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255D584F8(uint64_t a1)
{
  v2 = sub_255D5BB10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D58534(uint64_t a1)
{
  v2 = sub_255D5BB10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D58570(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_255E3A3B8();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_255E3A3D8();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255D5868C, 0, 0);
}

uint64_t sub_255D5868C()
{
  v2 = v0[9];
  v1 = v0[10];
  v18 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = *(v1 + 32);
  v21 = *(v1 + 40);
  sub_255D3E5A8(v18, v19, v20, v21);
  v3 = StringResolvable.resolved(with:)(v2);
  v5 = v4;
  v6 = v0[16];
  v7 = v0[13];
  v16 = v0[15];
  v17 = v0[14];
  v8 = v0[11];
  v15 = v0[12];
  v9 = v0[10];
  sub_255D38060(v18, v19, v20, v21);
  sub_255D5C2AC(0, &qword_27F7E6AD8, 0x277D85C78);
  v14 = sub_255E3A878();
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v5;
  v10[4] = v9;
  v0[6] = sub_255D5BB64;
  v0[7] = v10;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_255D5D0C8;
  v0[5] = &block_descriptor_63;
  v11 = _Block_copy(v0 + 2);

  sub_255E3A3C8();
  v0[8] = MEMORY[0x277D84F90];
  sub_255D5AFE4(&qword_27F7E6AE0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6AE8, &qword_255E3E938);
  sub_255D38950(&qword_27F7E6AF0, &qword_27F7E6AE8, &qword_255E3E938, MEMORY[0x277D83970]);
  sub_255E3A928();
  MEMORY[0x259C4EBE0](0, v6, v7, v11);
  _Block_release(v11);

  (*(v15 + 8))(v7, v8);
  (*(v16 + 8))(v6, v17);

  v12 = v0[1];

  return v12();
}

uint64_t sub_255D58960(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v36 = a3;
  v38 = a1;
  v4 = sub_255E38958();
  v37 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B10, &qword_255E3E9A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_255E38588();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v34 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v16 = sub_255E386A8();
  __swift_project_value_buffer(v16, qword_27F8152D8);

  v17 = sub_255E38688();
  v18 = sub_255E3A868();

  v19 = os_log_type_enabled(v17, v18);
  v35 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v33 = v6;
    v21 = v4;
    v22 = v20;
    v23 = swift_slowAlloc();
    v39[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_255D378C0(v38, a2, v39);
    _os_log_impl(&dword_255D2E000, v17, v18, "Open URL Action: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x259C4F9E0](v23, -1, -1);
    v24 = v22;
    v4 = v21;
    v6 = v33;
    MEMORY[0x259C4F9E0](v24, -1, -1);
  }

  sub_255E38578();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_255D395E4(v12, &qword_27F7E6B28, &unk_255E48060);
  }

  v26 = v34;
  (*(v14 + 32))(v34, v12, v13);
  v27 = OBJC_IVAR____TtC6LiftUI13OpenURLAction_openURLAction;
  v28 = v36;
  swift_beginAccess();
  v29 = v28 + v27;
  v30 = v35;
  sub_255D3957C(v29, v35, &qword_27F7E6B10, &qword_255E3E9A8);
  if ((*(v37 + 48))(v30, 1, v4))
  {
    (*(v14 + 8))(v26, v13);
    return sub_255D395E4(v30, &qword_27F7E6B10, &qword_255E3E9A8);
  }

  else
  {
    v31 = v37;
    (*(v37 + 16))(v6, v30, v4);
    sub_255D395E4(v30, &qword_27F7E6B10, &qword_255E3E9A8);
    sub_255E38948();
    (*(v31 + 8))(v6, v4);
    return (*(v14 + 8))(v26, v13);
  }
}

uint64_t sub_255D58DF4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_255D58E38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B18, qword_255E3E9B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC6LiftUI13OpenURLAction_openURLAction;
  v10 = sub_255E38958();
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D5BB10();
  sub_255E3AE28();
  if (v2)
  {
    sub_255D395E4(v3 + OBJC_IVAR____TtC6LiftUI13OpenURLAction_openURLAction, &qword_27F7E6B10, &qword_255E3E9A8);
    type metadata accessor for OpenURLAction(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_255D3EA0C();
    sub_255E3ABC8();
    (*(v6 + 8))(v8, v5);
    v12 = v15;
    v13 = v16;
    *(v3 + 16) = v14;
    *(v3 + 32) = v12;
    *(v3 + 40) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_255D59080(uint64_t a1)
{
  v2 = sub_255E38958();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_255E38D28();
}

uint64_t sub_255D59148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v23[1] = a4;
  v24 = a2;
  v8 = sub_255E3A3B8();
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_255E3A3D8();
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v23 - v16;
  sub_255D5C2AC(0, &qword_27F7E6AD8, 0x277D85C78);
  v18 = sub_255E3A878();
  (*(v15 + 16))(v17, a1, v14);
  v19 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v24;
  (*(v15 + 32))(v20 + v19, v17, v14);
  aBlock[4] = v25;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_255D5D0C8;
  aBlock[3] = v26;
  v21 = _Block_copy(aBlock);

  sub_255E3A3C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_255D5AFE4(&qword_27F7E6AE0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6AE8, &qword_255E3E938);
  sub_255D38950(&qword_27F7E6AF0, &qword_27F7E6AE8, &qword_255E3E938, MEMORY[0x277D83970]);
  sub_255E3A928();
  MEMORY[0x259C4EBE0](0, v13, v10, v21);
  _Block_release(v21);

  (*(v29 + 8))(v10, v8);
  return (*(v27 + 8))(v13, v28);
}

uint64_t sub_255D59500(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  v15 = a5(0);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a2, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v17 = *a6;
  swift_beginAccess();
  sub_255D47204(v14, a1 + v17, a3, a4);
  return swift_endAccess();
}

uint64_t sub_255D59644()
{
  sub_255D38060(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_255D395E4(v0 + OBJC_IVAR____TtC6LiftUI13OpenURLAction_openURLAction, &qword_27F7E6B10, &qword_255E3E9A8);

  return swift_deallocClassInstance();
}

uint64_t sub_255D596C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255D5D0A4;

  return sub_255D58570(a1);
}

uint64_t sub_255D59760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_255D5D0A4;

  return sub_255D5ABF0(a1, a3, a4);
}

uint64_t sub_255D5989C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  sub_255E38958();
  sub_255D5AFE4(&qword_27F7E6B08, MEMORY[0x277CDF708], protocol conformance descriptor for OpenURLAction);
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_255E39A98();
}

uint64_t sub_255D599F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OpenURLAction(0);
  v5 = swift_allocObject();
  result = sub_255D58E38(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_255D59AF8(uint64_t a1)
{
  v4 = *(v1 + 144);
  *(v2 + 144) = *(v1 + 128);
  *(v2 + 160) = v4;
  *(v2 + 176) = *(v1 + 160);
  v5 = *(v1 + 80);
  *(v2 + 80) = *(v1 + 64);
  *(v2 + 96) = v5;
  v6 = *(v1 + 112);
  *(v2 + 112) = *(v1 + 96);
  *(v2 + 128) = v6;
  v7 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v7;
  v8 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v8;
  v9 = swift_task_alloc();
  *(v2 + 184) = v9;
  *v9 = v2;
  v9[1] = sub_255D59BC0;

  return sub_255E1BFF4(a1);
}

uint64_t sub_255D59BC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_255D59E04(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_255D59EFC;

  return v6(a1);
}

uint64_t sub_255D59EFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_255D59FF4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_255D5A068(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v7 = a4[3];
  *(v5 + 48) = a4[2];
  *(v5 + 64) = v7;
  *(v5 + 80) = a4[4];
  *(v5 + 89) = *(a4 + 73);
  v8 = a4[1];
  *(v5 + 16) = *a4;
  *(v5 + 32) = v8;
  v9 = swift_task_alloc();
  *(v5 + 112) = v9;
  *v9 = v5;
  v9[1] = sub_255D5A138;

  return sub_255E2D990(a5);
}

uint64_t sub_255D5A138()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_255D5A22C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v7 = a4[1];
  *(v5 + 16) = *a4;
  *(v5 + 32) = v7;
  *(v5 + 48) = a4[2];
  *(v5 + 57) = *(a4 + 41);
  v8 = swift_task_alloc();
  *(v5 + 80) = v8;
  *v8 = v5;
  v8[1] = sub_255D5A2F4;

  return sub_255E2E0A8(a5);
}

uint64_t sub_255D5A2F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_255D5A3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 + 144);
  *(v5 + 144) = *(a4 + 128);
  *(v5 + 160) = v7;
  *(v5 + 176) = *(a4 + 160);
  v8 = *(a4 + 80);
  *(v5 + 80) = *(a4 + 64);
  *(v5 + 96) = v8;
  v9 = *(a4 + 112);
  *(v5 + 112) = *(a4 + 96);
  *(v5 + 128) = v9;
  v10 = *(a4 + 16);
  *(v5 + 16) = *a4;
  *(v5 + 32) = v10;
  v11 = *(a4 + 48);
  *(v5 + 48) = *(a4 + 32);
  *(v5 + 64) = v11;
  v12 = swift_task_alloc();
  *(v5 + 184) = v12;
  *v12 = v5;
  v12[1] = sub_255D5D0C4;

  return sub_255E1BFF4(a5);
}

uint64_t sub_255D5A4B0()
{
  sub_255D53600();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255D5A514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  sub_255DF6C98(a5, a6);
  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_255D5A5B0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  *(v5 + 144) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  *(v5 + 152) = swift_task_alloc();
  v7 = a4[1];
  *(v5 + 16) = *a4;
  *(v5 + 32) = v7;
  *(v5 + 48) = a4[2];
  *(v5 + 57) = *(a4 + 41);

  return MEMORY[0x2822009F8](sub_255D5A668, 0, 0);
}

uint64_t sub_255D5A668()
{
  v1 = sub_255DDEDA0(*(v0 + 144), *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v3 = v2;
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = sub_255E3A778();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_255E3A758();
  sub_255D5CDC8(v0 + 16, v0 + 80);

  v7 = sub_255E3A748();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = *(v0 + 32);
  *(v8 + 32) = *(v0 + 16);
  *(v8 + 48) = v10;
  *(v8 + 64) = *(v0 + 48);
  *(v8 + 73) = *(v0 + 57);
  *(v8 + 96) = v5;
  *(v8 + 104) = v1;
  *(v8 + 112) = v3;
  sub_255D51B90(0, 0, v4, &unk_255E60820, v8);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_255D5A7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 352) = a5;
  *(v6 + 360) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  *(v6 + 368) = swift_task_alloc();
  v8 = *(a4 + 144);
  *(v6 + 144) = *(a4 + 128);
  *(v6 + 160) = v8;
  *(v6 + 176) = *(a4 + 160);
  v9 = *(a4 + 80);
  *(v6 + 80) = *(a4 + 64);
  *(v6 + 96) = v9;
  v10 = *(a4 + 112);
  *(v6 + 112) = *(a4 + 96);
  *(v6 + 128) = v10;
  v11 = *(a4 + 16);
  *(v6 + 16) = *a4;
  *(v6 + 32) = v11;
  v12 = *(a4 + 48);
  *(v6 + 48) = *(a4 + 32);
  *(v6 + 64) = v12;

  return MEMORY[0x2822009F8](sub_255D5A8CC, 0, 0);
}

uint64_t sub_255D5A8CC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  v4 = sub_255E3A778();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = *(v0 + 160);
  *(v5 + 160) = *(v0 + 144);
  *(v5 + 176) = v6;
  v7 = *(v0 + 176);
  v8 = *(v0 + 96);
  *(v5 + 96) = *(v0 + 80);
  *(v5 + 112) = v8;
  v9 = *(v0 + 128);
  *(v5 + 128) = *(v0 + 112);
  *(v5 + 144) = v9;
  v10 = *(v0 + 32);
  *(v5 + 32) = *(v0 + 16);
  *(v5 + 48) = v10;
  v11 = *(v0 + 64);
  *(v5 + 64) = *(v0 + 48);
  *(v5 + 80) = v11;
  *(v5 + 192) = v7;
  *(v5 + 200) = v3;
  *(v5 + 208) = v1;
  sub_255D5C4D4(v0 + 16, v0 + 184);

  sub_255D51B90(0, 0, v2, &unk_255E3EF78, v5);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_255D5AA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = a4[2];
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_255D5D0A4;

  return sub_255E2982C(a5, a6, v9, v10, v11);
}

uint64_t sub_255D5AAD8(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_255D5D0A4;

  return v7(a1, a2);
}

uint64_t sub_255D5ABF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_255D5D0A4;

  return v9(a1, a2, a3);
}

uint64_t sub_255D5AD18(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_255D5D0A4;

  return sub_255D51A58(a1, v8, v9, v1 + v6, v10, v11, v5, v4);
}

uint64_t sub_255D5AE5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D5D0A4;

  return sub_255D51FB0(a1, v4, v5, v7, v6);
}

uint64_t sub_255D5AF1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_255D50138;

  return sub_255D52970(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_255D5AFE4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of RemoteAction.performAction()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_255D5D0A4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of RemoteAction.performAction(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_255D5D0A4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of RemoteAction.performAction(with:localStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_255D50138;

  return v11(a1, a2, a3, a4);
}

void sub_255D5B3FC(uint64_t a1)
{
  sub_255D5B588(319, &qword_27F7E6A90, MEMORY[0x277CDD848]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_255D5B4D0(uint64_t a1)
{
  sub_255D5B588(319, &qword_27F7E6AB0, MEMORY[0x277CDF708]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_255D5B588(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255E3A8A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_255D5B5DC(uint64_t a1)
{
  result = sub_255D5AFE4(&qword_27F7E6AB8, type metadata accessor for OpenURLAction, asc_255E3E830);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_255D5B634(uint64_t a1)
{
  result = sub_255D5AFE4(&qword_27F7E6AC0, type metadata accessor for OpenURLAction, byte_255E3E858);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_255D5B68C(uint64_t a1)
{
  result = sub_255D5AFE4(&qword_27F7E6AC8, type metadata accessor for DismissAction, asc_255E3E8AC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_255D5B6E4(uint64_t a1)
{
  result = sub_255D5AFE4(&qword_27F7E6AD0, type metadata accessor for DismissAction, byte_255E3E8D4);
  *(a1 + 8) = result;
  return result;
}

uint64_t objectdestroy_11Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t sub_255D5B79C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_255D5D0A4;

  return sub_255D5A4B0();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_39Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

unint64_t sub_255D5BB10()
{
  result = qword_27F7E6B20;
  if (!qword_27F7E6B20)
  {
    result = swift_getWitnessTable(asc_255E3EEAC, &type metadata for OpenURLAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6B20);
  }

  return result;
}

uint64_t sub_255D5BB70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D5D0A4;

  return sub_255D52CDC(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_255D5BC34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_255D5D0A4;

  return sub_255D59E04(a1, v4);
}

uint64_t sub_255D5BCEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_255D5D0A4;

  return sub_255D52300(a1, v4, v5, (v1 + 4), v6);
}

uint64_t get_enum_tag_for_layout_string_6LiftUI12SubReferenceOyAA14DecodableStateOGSg(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x38 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 6) | (2 * v2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_6LiftUI13ReferenceableOyAA14DecodableStateOGSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255D5BE10(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t sub_255D5BE6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_255D5BEF8()
{
  result = qword_27F7E6B30;
  if (!qword_27F7E6B30)
  {
    result = swift_getWitnessTable(byte_255E3EE08, &type metadata for OpenURLAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6B30);
  }

  return result;
}

unint64_t sub_255D5BF4C(uint64_t a1)
{
  result = sub_255D5BF74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D5BF74()
{
  result = qword_27F7E6B38;
  if (!qword_27F7E6B38)
  {
    result = swift_getWitnessTable(aH_1, &type metadata for SetAction, v0, v1);
    atomic_store(result, &qword_27F7E6B38);
  }

  return result;
}

unint64_t sub_255D5BFC8(uint64_t a1)
{
  result = sub_255D5BFF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D5BFF0()
{
  result = qword_27F7E6B40;
  if (!qword_27F7E6B40)
  {
    result = swift_getWitnessTable(byte_255E3EE58, &type metadata for SetAction, v0, v1);
    atomic_store(result, &qword_27F7E6B40);
  }

  return result;
}

unint64_t sub_255D5C048()
{
  result = qword_27F7E6B48;
  if (!qword_27F7E6B48)
  {
    result = swift_getWitnessTable(asc_255E3ED78, &type metadata for OpenURLAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6B48);
  }

  return result;
}

unint64_t sub_255D5C0A0()
{
  result = qword_27F7E6B50;
  if (!qword_27F7E6B50)
  {
    result = swift_getWitnessTable(a9_0, &type metadata for OpenURLAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6B50);
  }

  return result;
}

void sub_255D5C0F4(unint64_t a1)
{
  LOBYTE(v7) = *(v1 + 64);
  if ([objc_opt_self() isMainThread])
  {

    sub_255D53DF8(a1);
  }

  else
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v3 = sub_255E386A8();
    __swift_project_value_buffer(v3, qword_27F8152D8);
    v4 = sub_255E38688();
    v5 = sub_255E3A868();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_255D2E000, v4, v5, "Synchronous call to SetAction is not on main thread, falling back to default performAction", v6, 2u);
      MEMORY[0x259C4F9E0](v6, -1, -1);
    }

    sub_255D573FC(a1);
  }
}

uint64_t sub_255D5C240(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_255D5C258(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_255D5C258(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return sub_255D34858(a3);
  }

  else
  {
  }
}

uint64_t sub_255D5C2AC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_255D5C2F4(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_255D4DE84(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_255D5C30C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_255D5C324(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_255D5C33C()
{
  result = qword_27F7E6B68;
  if (!qword_27F7E6B68)
  {
    result = swift_getWitnessTable(byte_255E54184, &type metadata for ReferenceableError, v0, v1);
    atomic_store(result, &qword_27F7E6B68);
  }

  return result;
}

uint64_t sub_255D5C390(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_255D5C3FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[25];
  v7 = v1[26];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D5D0A4;

  return sub_255D5A7FC(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t objectdestroy_117Tm()
{
  swift_unknownObjectRelease();
  sub_255D38060(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 88);
  if (v1 <= 0xFD)
  {
    sub_255D38060(*(v0 + 64), *(v0 + 72), *(v0 + 80), v1);
  }

  v2 = *(v0 + 120);
  if (v2 != 255)
  {
    sub_255D5CA24(*(v0 + 96), *(v0 + 104), *(v0 + 112), v2 & 1, sub_255D398A4);
  }

  v3 = *(v0 + 152);
  if (v3 != 255)
  {
    sub_255D5CA24(*(v0 + 128), *(v0 + 136), *(v0 + 144), v3 & 1, sub_255D398A4);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 216, 7);
}

uint64_t sub_255D5C620(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[25];
  v7 = v1[26];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D5D0A4;

  return sub_255D78980(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_255D5C6E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[25];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_255D5D0A4;

  return sub_255D5A3E8(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_255D5C818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D5D0A4;

  return sub_255D5AA18(a1, v4, v5, v1 + 4, v6, v7);
}

uint64_t sub_255D5C8F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D5D0A4;

  return sub_255D5A514(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_255D5CA24(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t))
{
  if (a4)
  {

    return a5(a3);
  }

  else
  {
  }
}

uint64_t sub_255D5CA88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 128);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_255D5D0A4;

  return sub_255D5A068(a1, v4, v5, (v1 + 32), v6);
}

uint64_t sub_255D5CBBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 96);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_255D5D0A4;

  return sub_255D5A22C(a1, v4, v5, (v1 + 32), v6);
}

uint64_t sub_255D5CCF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 96);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_255D5D0A4;

  return sub_255D5A5B0(a1, v4, v5, (v1 + 32), v6);
}

uint64_t sub_255D5CE24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_255D5D0A4;

  return sub_255E28F80(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

unint64_t sub_255D5CEF8()
{
  result = qword_27F7E6B98;
  if (!qword_27F7E6B98)
  {
    result = swift_getWitnessTable(byte_255E3F170, &type metadata for SetAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6B98);
  }

  return result;
}

unint64_t sub_255D5CF90()
{
  result = qword_27F7E6BA8;
  if (!qword_27F7E6BA8)
  {
    result = swift_getWitnessTable(byte_255E3F148, &type metadata for SetAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6BA8);
  }

  return result;
}

unint64_t sub_255D5CFE8()
{
  result = qword_27F7E6BB0;
  if (!qword_27F7E6BB0)
  {
    result = swift_getWitnessTable(asc_255E3F080, &type metadata for SetAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6BB0);
  }

  return result;
}

unint64_t sub_255D5D040()
{
  result = qword_27F7E6BB8;
  if (!qword_27F7E6BB8)
  {
    result = swift_getWitnessTable(a1, &type metadata for SetAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6BB8);
  }

  return result;
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

uint64_t sub_255D5D114(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_255D5D15C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
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

uint64_t sub_255D5D1E0(uint64_t a1, int a2)
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

uint64_t sub_255D5D228(uint64_t result, int a2, int a3)
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

uint64_t sub_255D5D284(uint64_t a1)
{
  v5 = *(a1 + 16);
  KeyPath = swift_getKeyPath();

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  v3 = sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0, MEMORY[0x277D83980]);
  return sub_255E3A0E8(&v5, KeyPath, sub_255D5F848, 0, v2, MEMORY[0x277CE11C8], v3, MEMORY[0x277D837E0], MEMORY[0x277CE11C0]);
}

uint64_t sub_255D5D370(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7377656976;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7377656976;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255D5D408()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D5D47C(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D5D4EC@<X0>(char *a2@<X8>)
{
  v3 = sub_255E3AB48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_255D5D54C@<X0>(char *a3@<X8>)
{
  v4 = sub_255E3AB48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_255D5D5B0(uint64_t a1)
{
  v2 = sub_255D5F460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D5D5EC(uint64_t a1)
{
  v2 = sub_255D5F460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D5D628@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66B8, &qword_255E3E180);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = v2[3];
  v16 = *v2;
  v17 = *(v2 + 1);
  v18 = v12;
  v19 = *(v2 + 2);
  v13 = sub_255D4D04C();
  (*(v13 + 24))(a1, v13);
  (*(v6 + 16))(v9, v11, v5);
  sub_255D38950(&qword_27F7E66C0, &qword_27F7E66B8, &qword_255E3E180, MEMORY[0x277CDE5A0]);
  v14 = sub_255E3A038();
  result = (*(v6 + 8))(v11, v5);
  *a2 = v14;
  return result;
}

uint64_t sub_255D5D7E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
  sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840, MEMORY[0x277CE1290]);
  return sub_255E397C8();
}

double sub_255D5D898@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_255D5F0EC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

unint64_t sub_255D5D924()
{
  result = qword_27F7E6BC0;
  if (!qword_27F7E6BC0)
  {
    result = swift_getWitnessTable(aA_0, &type metadata for ListView, v0, v1);
    atomic_store(result, &qword_27F7E6BC0);
  }

  return result;
}

uint64_t sub_255D5D978@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_255D5D9DC()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D5DA8C(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D5DB28(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D5DBD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D5F7FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D5DC04(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0x726564616568;
  if (*v1 != 2)
  {
    v4 = 0x7265746F6F66;
  }

  if (*v1)
  {
    v3 = 0x746E65746E6F63;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_255D5DC70()
{
  v1 = 25705;
  v2 = 0x726564616568;
  if (*v0 != 2)
  {
    v2 = 0x7265746F6F66;
  }

  if (*v0)
  {
    v1 = 0x746E65746E6F63;
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

unint64_t sub_255D5DCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D5F7FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D5DD00(uint64_t a1)
{
  v2 = sub_255D5EFE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D5DD3C(uint64_t a1)
{
  v2 = sub_255D5EFE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D5DD78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_255E385D8();
  v41 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C00, &qword_255E3F558);
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v54[13] = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255D5EF40(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v42 = sub_255E38CC8();
  v54[14] = v42;
  v54[15] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D5EFE4();
  v10 = v43;
  sub_255E3AE28();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v43 = v3;
    v11 = v40;
    v12 = v41;
    LOBYTE(v44) = 0;
    v13 = sub_255E3AB88();
    v38 = a1;
    if (!v14)
    {
      v16 = v5;
      sub_255E385C8();
      v17 = sub_255E385B8();
      v37 = v6;
      v19 = v18;
      (*(v12 + 8))(v16, v43);
      v14 = v19;
      v6 = v37;
      v13 = v17;
    }

    v54[0] = v13;
    v54[1] = v14;
    v43 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    v55 = 1;
    sub_255D5F038();
    sub_255E3ABA8();
    if (v44)
    {
      v20 = v44;
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    v21 = sub_255D48968(v20);

    v54[2] = v21;
    v55 = 2;
    sub_255D447E8();
    sub_255E3ABA8();
    v37 = v6;
    if (*(&v44 + 1))
    {
      v22 = sub_255D44794();
      v23 = swift_allocObject();
      v24 = v51;
      *(v23 + 112) = v50;
      *(v23 + 128) = v24;
      *(v23 + 144) = v52;
      *(v23 + 160) = v53;
      v25 = v47;
      *(v23 + 48) = v46;
      *(v23 + 64) = v25;
      v26 = v49;
      *(v23 + 80) = v48;
      *(v23 + 96) = v26;
      v27 = v45;
      *(v23 + 16) = v44;
      *(v23 + 32) = v27;
      v28 = &type metadata for ViewContent;
    }

    else
    {
      sub_255D395E4(&v44, &qword_27F7E6C20, &qword_255E58D80);
      v23 = 0;
      v28 = 0;
      v22 = 0;
    }

    v54[3] = v23;
    v54[4] = 0;
    v54[5] = 0;
    v54[6] = v28;
    v54[7] = v22;
    v55 = 3;
    sub_255E3ABA8();
    if (*(&v44 + 1))
    {
      v29 = sub_255D44794();
      v30 = swift_allocObject();
      v31 = v51;
      *(v30 + 112) = v50;
      *(v30 + 128) = v31;
      *(v30 + 144) = v52;
      *(v30 + 160) = v53;
      v32 = v47;
      *(v30 + 48) = v46;
      *(v30 + 64) = v32;
      v33 = v49;
      *(v30 + 80) = v48;
      *(v30 + 96) = v33;
      v34 = v45;
      *(v30 + 16) = v44;
      *(v30 + 32) = v34;
      (*(v11 + 8))(v8, v37);
      v35 = &type metadata for ViewContent;
    }

    else
    {
      (*(v11 + 8))(v8, v37);
      sub_255D395E4(&v44, &qword_27F7E6C20, &qword_255E58D80);
      v29 = 0;
      v35 = 0;
      v30 = 0;
    }

    v54[8] = v30;
    v54[9] = 0;
    v54[10] = 0;
    v54[11] = v35;
    v54[12] = v29;
    sub_255D4D2E4(v54, v39);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    return sub_255D5F0BC(v54);
  }
}

uint64_t sub_255D5E31C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66D8, &qword_255E3E188);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = sub_255D4D0F4();
  (*(v11 + 24))(a1, v11);
  (*(v5 + 16))(v8, v10, v4);
  sub_255D4D148();
  v12 = sub_255E3A038();
  result = (*(v5 + 8))(v10, v4);
  *a2 = v12;
  return result;
}

uint64_t sub_255D5E478()
{
  v1 = v0;
  sub_255D4FB3C(v0 + 24, v9);
  v2 = v10;
  if (v10)
  {
    v3 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = (*(v3 + 24))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    sub_255D395E4(v9, &qword_27F7E6558, &qword_255E3DD80);
    v4 = 0;
  }

  v12 = v4;
  sub_255D4FB3C(v1 + 64, v9);
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v7 = (*(v6 + 24))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    sub_255D395E4(v9, &qword_27F7E6558, &qword_255E3DD80);
    v7 = 0;
  }

  v9[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66F0, &unk_255E3E190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
  sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190, MEMORY[0x277CE1550]);
  sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840, MEMORY[0x277CE1290]);
  return sub_255E3A0F8();
}