uint64_t sub_23BB6C438()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_23BB6C4F4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23BB6C554(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double sub_23BB6C598(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_23BB6C5DC(uint64_t a1, double a2)
{
  result = type metadata accessor for ProductViewStyleConfiguration(319);
  if (v3 <= 0x3F)
  {
    result = sub_23BBDB018();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BB6C678(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = type metadata accessor for ProductViewStyleConfiguration(0);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = a1;
  }

  else
  {
    v8 = sub_23BBDB018();
    v9 = a1 + *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_23BB6C72C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  v9 = type metadata accessor for ProductViewStyleConfiguration(0);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = a1;
  }

  else
  {
    v10 = sub_23BBDB018();
    v11 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_23BB6C824(uint64_t *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t getEnumTagSinglePayload for PackMuleView(uint64_t a1, int a2)
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

unint64_t sub_23BB6C8E4()
{
  result = qword_27E1A24B8;
  if (!qword_27E1A24B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A24C0, &qword_23BC01380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A24B8);
  }

  return result;
}

__n128 sub_23BB6C948@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t EnvironmentValues.displayStoreKitMessage.getter@<X0>(void (**a1)()@<X8>)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3, v6);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  result = (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *a1 = sub_23BB6CD78;
  a1[1] = v8;
  return result;
}

void sub_23BB6CAA4()
{
  v0 = type metadata accessor for SKLogger(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23BBDA658();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 scene];

    if (v5)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_23BBDC848();

        return;
      }
    }
  }

  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27E1BFC88);
  sub_23B9EA228(v6, v2);
  v7 = sub_23BBD9988();
  v8 = sub_23BBD99A8();
  (*(*(v8 - 8) + 8))(v2, v8);
  v9 = sub_23BBDD598();
  if (os_log_type_enabled(v7, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23B970000, v7, v9, "Attempting to present a message without being in the hierarchy.", v10, 2u);
    MEMORY[0x23EEB6DC0](v10, -1, -1);
  }

  v11 = sub_23BBDC608();
  sub_23BB6CDF4();
  swift_allocError();
  (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277CDD0C8], v11);
  swift_willThrow();
}

uint64_t sub_23BB6CCF0()
{
  v1 = sub_23BBDA928();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_23BB6CDF4()
{
  result = qword_27E19BE90;
  if (!qword_27E19BE90)
  {
    sub_23BBDC608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BE90);
  }

  return result;
}

uint64_t sub_23BB6CE4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BB6CE6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_23BB6CEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v3 & 1;
  return MEMORY[0x23EEB43C0](v6, a2, &type metadata for SafeAreaInsetViewModifier, a3);
}

uint64_t sub_23BB6CF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = sub_23BBDA9D8();
  v4 = *v2;
  v3 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v55 = *(v2 + 32);
  v7 = v55 | (v3 == 0.0);
  if (v55 & 1 | (v3 == 0.0))
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    sub_23BBDC318();
    sub_23BBD9DE8();
    v8 = v57;
    v9 = v58;
    v10 = v59;
    v11 = v60;
    v12 = v61;
    v13 = v62;
  }

  v14 = sub_23BBD9D58();
  v15 = MEMORY[0x23EEB3BE0]((2 * v14) | 1u);
  v16 = sub_23BBDA398();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A24C8, &qword_23BC01500);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A24D0, &qword_23BC01508) + 36);
  *v18 = v8;
  *(v18 + 8) = v9;
  *(v18 + 16) = v10;
  *(v18 + 24) = v11;
  *(v18 + 32) = v12;
  *(v18 + 40) = v13;
  *(v18 + 48) = v7 & 1;
  *(v18 + 56) = v16;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  *(v18 + 73) = v15;
  *(v18 + 80) = v54;
  v19 = sub_23BBDA9D8();
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (!(v55 & 1 | (v6 == 0.0)))
  {
    sub_23BBDC318();
    sub_23BBD9DE8();
    v20 = v63;
    v21 = v64;
    v22 = v65;
    v23 = v66;
    v24 = v67;
    v25 = v68;
  }

  v26 = sub_23BBD9D58();
  v27 = MEMORY[0x23EEB3BE0]((2 * v26) | 1u);
  v28 = sub_23BBDA398();
  v29 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A24D8, &qword_23BC01510) + 36);
  *v29 = v20;
  *(v29 + 8) = v21;
  *(v29 + 16) = v22;
  *(v29 + 24) = v23;
  *(v29 + 32) = v24;
  *(v29 + 40) = v25;
  *(v29 + 48) = v55 & 1 | (v6 == 0.0);
  *(v29 + 56) = v28;
  *(v29 + 64) = 0;
  *(v29 + 72) = 0;
  *(v29 + 73) = v27;
  *(v29 + 80) = v19;
  v30 = sub_23BBDAB48();
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  if (!(v55 & 1 | (v4 == 0.0)))
  {
    sub_23BBDC318();
    sub_23BBD9DE8();
    v31 = v69;
    v32 = v70;
    v33 = v71;
    v34 = v72;
    v35 = v73;
    v36 = v74;
  }

  v37 = sub_23BBD9D58();
  v38 = MEMORY[0x23EEB3BE0]((2 * v37));
  v39 = sub_23BBDA398();
  v40 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A24E0, &qword_23BC01518) + 36);
  *v40 = v31;
  *(v40 + 8) = v32;
  *(v40 + 16) = v33;
  *(v40 + 24) = v34;
  *(v40 + 32) = v35;
  *(v40 + 40) = v36;
  *(v40 + 48) = v55 & 1 | (v4 == 0.0);
  *(v40 + 56) = v39;
  *(v40 + 64) = 0;
  *(v40 + 72) = 0;
  *(v40 + 73) = v38;
  *(v40 + 80) = v30;
  v41 = sub_23BBDAB48();
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (!(v55 & 1 | (v5 == 0.0)))
  {
    sub_23BBDC318();
    sub_23BBD9DE8();
    v42 = v75;
    v43 = v76;
    v44 = v77;
    v45 = v78;
    v46 = v79;
    v47 = v80;
  }

  v48 = sub_23BBD9D58();
  v49 = MEMORY[0x23EEB3BE0]((2 * v48));
  v50 = sub_23BBDA398();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A24E8, &qword_23BC01520);
  v52 = a2 + *(result + 36);
  *v52 = v42;
  *(v52 + 8) = v43;
  *(v52 + 16) = v44;
  *(v52 + 24) = v45;
  *(v52 + 32) = v46;
  *(v52 + 40) = v47;
  *(v52 + 48) = v55 & 1 | (v5 == 0.0);
  *(v52 + 56) = v50;
  *(v52 + 64) = 0;
  *(v52 + 72) = 0;
  *(v52 + 73) = v49;
  *(v52 + 80) = v41;
  return result;
}

uint64_t sub_23BB6D40C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23B97B518(&qword_27E1A2518, &qword_27E1A2520, qword_23BC01528, MEMORY[0x277CE01C8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BB6D4EC()
{
  result = qword_27E1A2508;
  if (!qword_27E1A2508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A24D0, &qword_23BC01508);
    sub_23B97B518(&qword_27E1A2510, &qword_27E1A24C8, &qword_23BC01500, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E1A2518, &qword_27E1A2520, qword_23BC01528, MEMORY[0x277CE01C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2508);
  }

  return result;
}

uint64_t View.subscriptionOfferViewDetailAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x23EEB43C0](v4, a3, &type metadata for SubscriptionOfferViewDetailActionModifier);
}

uint64_t sub_23BB6D608(void *a1)
{
  sub_23BBDA358();
  sub_23BB6D66C();
  return swift_getWitnessTable();
}

unint64_t sub_23BB6D66C()
{
  result = qword_27E1A2528[0];
  if (!qword_27E1A2528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1A2528);
  }

  return result;
}

uint64_t sub_23BB6D6C0(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t, char *))
{
  v4 = sub_23BBDCB58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21[-1] - v12;
  sub_23BBDC8F8();
  sub_23BA98A1C(v13, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    result = sub_23BB6DF48(v10);
    __break(1u);
  }

  else
  {
    sub_23BB6DF48(v13);
    (*(v5 + 32))(v7, v10, v4);
    a2(v21, a1, v7);
    (*(v5 + 8))(v7, v4);
    v14 = __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v15 = MEMORY[0x28223BE20](v14);
    (*(v17 + 16))(&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
    v18 = sub_23BBDC0D8();
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v18;
  }

  return result;
}

uint64_t sub_23BB6D940()
{
  sub_23BB6E044();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BB6D97C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BB6D940();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23BB6D9A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23B9794F0(*a1, v2);
  return sub_23BB6D9EC(v1, v2);
}

uint64_t View.subscriptionStoreControlIcon<A>(icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v12 = sub_23BB6DADC(a1, a2, a4, a6);
  v14 = v13;
  v18[0] = v12;
  v18[1] = v13;
  v16 = type metadata accessor for SubscriptionIconModifier(0, a4, a6, v15);
  MEMORY[0x23EEB43C0](v18, a3, v16, a5);
  return sub_23BA16594(v12, v14);
}

uint64_t (*sub_23BB6DADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a3 != MEMORY[0x277CE1428])
  {
    return sub_23BB6DC44(a1, a2, a3, a4);
  }

  return 0;
}

uint64_t sub_23BB6DB30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubscriptionIconModifier(255, a1[1], a1[3], a4);
  sub_23BBDA358();
  OUTLINED_FUNCTION_0_53();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BB6DB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_17_StoreKit_SwiftUI23SubscriptionIconBuilderVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t (*sub_23BB6DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  return sub_23BB6E0D0;
}

uint64_t sub_23BB6DCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  a6[3] = a4;
  a6[4] = a5;
  __swift_allocate_boxed_opaque_existential_1(a6);
  return a3(a1, a2);
}

uint64_t sub_23BB6DD00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v18[1] = a5;
  type metadata accessor for SubscriptionIconModifier(255, a3, a4, a3);
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25B0, &qword_23BC01680);
  v7 = sub_23BBDA358();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  swift_getKeyPath();
  v18[4] = a1;
  v18[5] = a2;
  sub_23B9794F0(a1, a2);
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB748();

  sub_23BA16594(a1, a2);
  v15 = sub_23BB6DFE0();
  v18[2] = WitnessTable;
  v18[3] = v15;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v16 = *(v8 + 8);
  v16(v10, v7);
  sub_23B9D2D88();
  return (v16)(v13, v7);
}

uint64_t sub_23BB6DF48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BB6DFB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BB6D940();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23BB6DFE0()
{
  result = qword_27E1A25B8;
  if (!qword_27E1A25B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25B0, &qword_23BC01680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A25B8);
  }

  return result;
}

unint64_t sub_23BB6E044()
{
  result = qword_27E1A25C0;
  if (!qword_27E1A25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A25C0);
  }

  return result;
}

uint64_t sub_23BB6E098()
{

  return swift_deallocObject();
}

uint64_t sub_23BB6E0EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubscriptionIconModifier(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_0_53();
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25B0, &qword_23BC01680);
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23BB6DFE0();
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

_BYTE *storeEnumTagSinglePayload for AppStoreBadge(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23BB6E280);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BB6E2D4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_23BBDAF58();
  OUTLINED_FUNCTION_7();
  v31 = v3;
  v32 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25C8, &qword_23BC017B0);
  OUTLINED_FUNCTION_7();
  v29 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25D0, &qword_23BC017B8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25D8, &qword_23BC017C0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v36 = a1;
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25E0, &qword_23BC017C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25E8, &qword_23BC017D0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25F0, &qword_23BC017D8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25F8, &qword_23BC017E0);
  v19 = sub_23B97B518(&qword_27E1A2600, &qword_27E1A25F0, &qword_23BC017D8, MEMORY[0x277CE1138]);
  v20 = sub_23BB6F078();
  v37 = v17;
  v38 = MEMORY[0x277CE1350];
  v39 = v18;
  v40 = v17;
  v41 = v19;
  v42 = MEMORY[0x277CE1340];
  v43 = v20;
  v44 = v19;
  OUTLINED_FUNCTION_0_54();
  swift_getOpaqueTypeConformance2();
  sub_23BB6F130();
  sub_23BBDBE98();
  sub_23BBDAF48();
  sub_23B97B518(&qword_27E1A2648, &qword_27E1A25C8, &qword_23BC017B0, MEMORY[0x277CDEFF0]);
  sub_23BB6F640(&qword_27E1A2650, MEMORY[0x277CDE1B0], MEMORY[0x277CDE1A8]);
  v21 = v28;
  v22 = v31;
  sub_23BBDB6E8();
  (*(v32 + 8))(v6, v22);
  (*(v29 + 8))(v10, v21);
  sub_23BBDB428();
  v23 = sub_23BBDB448();

  KeyPath = swift_getKeyPath();
  v25 = &v13[*(v30 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  sub_23BB6F40C();
  sub_23BBDBA68();
  sub_23B979910(v13, &qword_27E1A25D0, &qword_23BC017B8);
  sub_23BBDC2B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2660, &qword_23BC01838);
  sub_23BB6F584();
  sub_23BB6F688();
  sub_23BBDBC48();
  return sub_23B979910(v16, &qword_27E1A25D8, &qword_23BC017C0);
}

uint64_t sub_23BB6E794(uint64_t a1)
{
  v1 = a1;
  v2 = sub_23BBDA9D8();
  __src[72] = 0;
  sub_23BB6E90C(v1, v6);
  *&__src[7] = v6[0];
  *&__src[23] = v6[1];
  *&__src[39] = v6[2];
  *&__src[55] = v6[3];
  v4[0] = v2;
  v4[1] = 0x4014000000000000;
  LOBYTE(v4[2]) = 0;
  memcpy(&v4[2] + 1, __src, 0x47uLL);
  sub_23BBDC2B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25F0, &qword_23BC017D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25F8, &qword_23BC017E0);
  sub_23B97B518(&qword_27E1A2600, &qword_27E1A25F0, &qword_23BC017D8, MEMORY[0x277CE1138]);
  sub_23BB6F078();
  sub_23BBDBC48();
  memcpy(__dst, v4, sizeof(__dst));
  return sub_23BB6F77C(__dst);
}

uint64_t sub_23BB6E90C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v3 = sub_23BBDAA38();
  MEMORY[0x28223BE20](v3 - 8);
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v4 = qword_27E1BF840;
  v5 = sub_23BBDB648();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  if ((v20 - 1) <= 1)
  {
    sub_23BBDAA28();
    sub_23BBDAA18();
    sub_23BBDAA08();

    sub_23BBDAA18();
    sub_23BBDAA58();
    v12 = sub_23BBDB648();
    v13 = v16;
    v15 = v17;
    v14 = v18 & 1;
    sub_23BA51B84(v12, v16, v18 & 1);
  }

  sub_23BA51B84(v5, v7, v9 & 1);

  sub_23BB6F854(v12, v13, v14, v15);
  sub_23BA82038(v12, v13, v14, v15);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  sub_23BA82038(v12, v13, v14, v15);
  sub_23BA51C9C(v5, v7, v9 & 1);
}

uint64_t sub_23BB6EBC0@<X0>(void *__src@<X0>, _WORD *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(a2, __src, 0x58uLL);
  a2[44] = 257;
  return sub_23BB6F7E4(__dst, &v5);
}

uint64_t sub_23BB6EC20@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(a2, __src, 0x58uLL);
  return sub_23BB6F7E4(__dst, &v5);
}

void *sub_23BB6EC78@<X0>(uint64_t a1@<X8>, unsigned __int8 a2@<W0>)
{
  sub_23BB6ED30(a2, __src);
  v3 = sub_23BBDC318();
  v5 = v4;
  result = memcpy(a1, __src, 0x68uLL);
  *(a1 + 104) = 0x403E000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x403E000000000000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0x403E000000000000;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x403E000000000000;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x403E000000000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0x403E000000000000;
  *(a1 + 192) = 0;
  *(a1 + 193) = 0;
  *(a1 + 200) = v3;
  *(a1 + 208) = v5;
  *(a1 + 216) = 256;
  return result;
}

void *sub_23BB6ED30@<X0>(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  v3 = a1;
  v4 = sub_23BBDBE48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 6;
  v8 = sub_23BBD9968();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 6;
  if ((v3 - 1) > 1)
  {
    sub_23BB6F948(0xD000000000000012, 0x800000023BBE2F30, &v18, 30.0, 30.0);
    v14 = 1;
    v17[0] = 1;
  }

  else
  {
    if (qword_27E197650 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v8, qword_27E1BFBA8);
    (*(v9 + 16))(v11, v12, v8);
    sub_23BBDBE88();
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v13 = sub_23BBDBE68();

    (*(v5 + 8))(v7, v4);
    v17[80] = 0;
    v16 = 0;
    v18.n128_u64[0] = v13;
    v18.n128_u64[1] = 0x3FF0000000000000;
    v19 = 0;
    memcpy(v20, v17, 0x4EuLL);
    v14 = 0;
  }

  v20[78] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199080, &qword_23BBE7450);
  sub_23B9AA45C();
  sub_23BA3A7D4();
  sub_23BBDACD8();
  return memcpy(a2, __src, 0x61uLL);
}

double sub_23BB6F004@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BB6F714(a1, a2);
  v3 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2660, &qword_23BC01838) + 36);
  result = 0.0;
  *v3 = xmmword_23BC01710;
  *(v3 + 16) = xmmword_23BC01710;
  *(v3 + 32) = 0;
  return result;
}

unint64_t sub_23BB6F078()
{
  result = qword_27E1A2608;
  if (!qword_27E1A2608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25F8, &qword_23BC017E0);
    sub_23B97B518(&qword_27E1A2600, &qword_27E1A25F0, &qword_23BC017D8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2608);
  }

  return result;
}

unint64_t sub_23BB6F130()
{
  result = qword_27E1A2610;
  if (!qword_27E1A2610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25E8, &qword_23BC017D0);
    sub_23BB6F1E8();
    sub_23B97B518(&qword_27E19D248, &qword_27E19D250, &unk_23BBF1B40, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2610);
  }

  return result;
}

unint64_t sub_23BB6F1E8()
{
  result = qword_27E1A2618;
  if (!qword_27E1A2618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2620, &qword_23BC017E8);
    sub_23BB6F274();
    sub_23B9A6A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2618);
  }

  return result;
}

unint64_t sub_23BB6F274()
{
  result = qword_27E1A2628;
  if (!qword_27E1A2628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2630, &qword_23BC017F0);
    sub_23BB6F2F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2628);
  }

  return result;
}

unint64_t sub_23BB6F2F8()
{
  result = qword_27E1A2638;
  if (!qword_27E1A2638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2640, &qword_23BC017F8);
    sub_23B9AA45C();
    sub_23BA3A7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2638);
  }

  return result;
}

uint64_t sub_23BB6F384@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BBDA808();
  *a1 = result;
  return result;
}

uint64_t sub_23BB6F3B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BBDA808();
  *a1 = result;
  return result;
}

unint64_t sub_23BB6F40C()
{
  result = qword_27E1A2658;
  if (!qword_27E1A2658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25D0, &qword_23BC017B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25C8, &qword_23BC017B0);
    sub_23BBDAF58();
    sub_23B97B518(&qword_27E1A2648, &qword_27E1A25C8, &qword_23BC017B0, MEMORY[0x277CDEFF0]);
    sub_23BB6F640(&qword_27E1A2650, MEMORY[0x277CDE1B0], MEMORY[0x277CDE1A8]);
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E198388, &qword_27E198390, qword_23BBE52B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2658);
  }

  return result;
}

unint64_t sub_23BB6F584()
{
  result = qword_27E1A2668;
  if (!qword_27E1A2668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25D8, &qword_23BC017C0);
    sub_23BB6F40C();
    sub_23BB6F640(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2668);
  }

  return result;
}

uint64_t sub_23BB6F640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23BB6F688()
{
  result = qword_27E1A2670;
  if (!qword_27E1A2670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2660, &qword_23BC01838);
    sub_23BB6F584();
    sub_23BA7AF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2670);
  }

  return result;
}

uint64_t sub_23BB6F714(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25D8, &qword_23BC017C0);
  OUTLINED_FUNCTION_4_1();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BB6F77C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25F0, &qword_23BC017D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BB6F7E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25F0, &qword_23BC017D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_23BB6F854(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23BA51B84(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23BB6F898()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25D8, &qword_23BC017C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2660, &qword_23BC01838);
  sub_23BB6F584();
  sub_23BB6F688();
  OUTLINED_FUNCTION_0_54();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_23BB6F948@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2698, &qword_23BC01A18);
  sub_23BBDBF58();
  result = v14;
  a3->n128_f64[0] = a4;
  a3->n128_f64[1] = a5;
  a3[1].n128_u64[0] = a1;
  a3[1].n128_u64[1] = a2;
  a3[2].n128_u64[0] = KeyPath;
  a3[2].n128_u8[8] = 0;
  a3[3].n128_u64[0] = v11;
  a3[3].n128_u8[8] = 0;
  a3[4].n128_u64[0] = v12;
  a3[4].n128_u8[8] = 0;
  a3[5] = v14;
  return result;
}

double sub_23BB6FA24(uint64_t a1, uint64_t a2)
{
  v6[0] = sub_23BB71E34();
  v6[1] = v4;
  MEMORY[0x23EEB43C0](v6, a1, &type metadata for ShareCurrentAppIconCacheModifier, a2);

  return result;
}

uint64_t sub_23BB6FAA0@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_23BBDC318();
  v6 = v5;
  sub_23BB6FB58(v2, v12);
  v7 = v12[0];
  v8 = v12[1];
  v9 = v13;
  v10 = swift_allocObject();
  memcpy((v10 + 16), v2, 0x60uLL);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = sub_23BB721D0;
  *(a1 + 48) = v10;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return sub_23BB721F4(v2, v12);
}

void *sub_23BB6FB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDBE48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BBDA928();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A26D0, &qword_23BC01C20);
  result = sub_23BBDBF68();
  v13 = v25;
  if (v25)
  {
    v26 = *(a1 + 72);
    v25 = *(a1 + 64);
    v23[0] = v4;
    if (v26 != 1)
    {

      sub_23BBDD5A8();
      v16 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B9EA92C(&v25, &qword_27E1A26D8, &qword_23BC01C28);
      (*(v9 + 8))(v11, v8);
    }

    v17 = [objc_opt_self() mainBundle];
    v18 = sub_23BAD97BC();
    v20 = v19;

    if (v20)
    {
      *&v24 = v18;
      *(&v24 + 1) = v20;
      sub_23B9F6A08();
      sub_23BBDB678();
    }

    else
    {
      sub_23BBDAA48();
      sub_23BBDB648();
    }

    v21 = v13;
    sub_23BBDBE78();
    v22 = v23[0];
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v23[0]);
    v14 = sub_23BBDBE68();

    result = (*(v5 + 8))(v7, v22);
    v15 = 0x3FF0000000000000;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23BB6FEDC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-v3];
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(v1 + 24))
  {
    v27 = *(v1 + 40);
    v15 = *(v1 + 32);
    v26 = v15;
    v16 = v27;

    if ((v16 & 1) == 0)
    {
      sub_23BBDD5A8();
      v17 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B9EA92C(&v26, &qword_27E1A26C0, &qword_23BC01C00);
      (*(v6 + 8))(v8, v5);
      v15 = v23[0];
    }

    if (v15)
    {
      sub_23BB70210();
      v18 = sub_23BB70444();
      if (v18)
      {
        v19 = *(v1 + 80);
        v24 = *(v1 + 88);
        v25 = v19;
        v23[0] = v19;
        v23[1] = v24;
        v22 = v18;
        v20 = v18;
        sub_23BA9B0D4(&v25, v21, &qword_27E1A2698, &qword_23BC01A18);
        sub_23BA9B0D4(&v24, v21, &qword_27E1A26C8, &qword_23BC01C18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A26D0, &qword_23BC01C20);
        sub_23BBDBF78();

        sub_23B9EA92C(&v25, &qword_27E1A2698, &qword_23BC01A18);
        v13 = &v24;
        v11 = &qword_27E1A26C8;
        v12 = &qword_23BC01C18;
        return sub_23B9EA92C(v13, v11, v12);
      }
    }
  }

  sub_23BBDD328();
  v9 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  memcpy(v10 + 4, v1, 0x60uLL);
  sub_23BB721F4(v1, v23);
  sub_23BB142C0(0, 0, v4);

  v11 = &qword_27E198320;
  v12 = &unk_23BBEEBC0;
  v13 = v4;
  return sub_23B9EA92C(v13, v11, v12);
}

uint64_t sub_23BB70210()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v0 + 72);
  v12 = *(v0 + 64);
  if (v13 != 1)
  {

    sub_23BBDD5A8();
    v5 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9EA92C(&v12, &qword_27E1A26D8, &qword_23BC01C28);
    (*(v2 + 8))(v4, v1);
  }

  v11 = *(v0 + 56);
  v6 = *(v0 + 48);
  v10 = v6;
  if (v11 != 1)
  {

    sub_23BBDD5A8();
    v7 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9EA92C(&v10, &qword_27E19E8A8, &qword_23BC01C30);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

void *sub_23BB70444()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
  }

  return v1;
}

uint64_t sub_23BB70490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[39] = a4;
  v5 = sub_23BBDA928();
  v4[40] = v5;
  v4[41] = *(v5 - 8);
  v4[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BB70550, 0, 0);
}

uint64_t sub_23BB70550()
{
  v1 = v0[39];
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    sub_23BAE0E08(0, &qword_27E1A26E0, 0x277D1B1A8);

    v4 = sub_23BB71194(v3, v2);
    v0[43] = v4;
    v5 = [objc_opt_self() imageDescriptorNamed_];
    v0[44] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A12F8, &qword_23BBFE088);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_23BBFE040;
    *(v6 + 32) = v5;
    sub_23BAE0E08(0, &qword_27E1A26E8, 0x277D1B1C8);
    v7 = v5;
    v8 = sub_23BBDD238();

    [v4 prepareImagesForImageDescriptors_];

    v0[2] = v0;
    v0[7] = v0 + 35;
    v0[3] = sub_23BB70800;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A26F0, &qword_23BC01C50);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23BB71208;
    v0[13] = &block_descriptor_0;
    v0[14] = v9;
    [v4 getImageForImageDescriptor:v7 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v0[45] = sub_23BBDD308();
    v0[46] = sub_23BBDD2F8();
    v11 = sub_23BBDD2D8();

    return MEMORY[0x2822009F8](sub_23BB70A48, v11, v10);
  }
}

uint64_t sub_23BB70800()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *v0;
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_23BB708D8, 0, 0);
}

uint64_t sub_23BB708D8()
{
  v1 = v0[43];
  v10 = v0[44];
  v2 = v0[39];
  v3 = v0[35];
  v4 = [v3 CGImage];

  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v0[28] = v5;
  v0[29] = v6;
  v0[22] = v5;
  v0[23] = v6;
  v0[36] = v4;
  sub_23BA9B0D4((v0 + 28), (v0 + 37), &qword_27E1A2698, &qword_23BC01A18);
  sub_23BA9B0D4((v0 + 29), (v0 + 38), &qword_27E1A26C8, &qword_23BC01C18);
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A26D0, &qword_23BC01C20);
  sub_23BBDBF78();

  sub_23B9EA92C((v0 + 28), &qword_27E1A2698, &qword_23BC01A18);
  sub_23B9EA92C((v0 + 29), &qword_27E1A26C8, &qword_23BC01C18);

  OUTLINED_FUNCTION_1_16();

  return v8();
}

uint64_t sub_23BB70A48()
{
  v1 = *(v0 + 312);

  v2 = *(v1 + 40);
  *(v0 + 192) = *(v1 + 32);
  *(v0 + 200) = v2;
  v3 = *(v0 + 192);
  v4 = v2;

  if ((v4 & 1) == 0)
  {
    v6 = *(v0 + 328);
    v5 = *(v0 + 336);
    v7 = *(v0 + 320);
    sub_23BBDD5A8();
    v8 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9EA92C(v0 + 192, &qword_27E1A26C0, &qword_23BC01C00);
    (*(v6 + 8))(v5, v7);
    v3 = *(v0 + 240);
  }

  *(v0 + 376) = v3;
  v9 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23BB70B84()
{
  OUTLINED_FUNCTION_3_13();
  if (v0[47])
  {
    v0[48] = sub_23BBDD2F8();
    v1 = sub_23BBDD2D8();
    v3 = v2;
    v4 = sub_23BB70C58;
  }

  else
  {
    v0[51] = type metadata accessor for CurrentAppIconCache();
    v0[52] = sub_23BBDD2F8();
    v1 = sub_23BBDD2D8();
    v3 = v5;
    v4 = sub_23BB70F50;
  }

  return MEMORY[0x2822009F8](v4, v1, v3);
}

uint64_t sub_23BB70C58()
{

  v1 = sub_23BB70210();
  v2 = swift_task_alloc();
  *(v0 + 392) = v2;
  *v2 = v0;
  v2[1] = sub_23BB70D1C;
  v3 = OUTLINED_FUNCTION_4_39();

  return sub_23BB71274(v1, v3, v4, v5);
}

uint64_t sub_23BB70D1C()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 400) = v3;

  v4 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23BB70E08()
{
  v1 = v0[50];
  v2 = v0[39];
  v4 = *(v2 + 80);
  v3 = *(v2 + 88);
  v0[26] = v4;
  v0[27] = v3;
  v0[20] = v4;
  v0[21] = v3;
  v0[32] = v1;
  sub_23BA9B0D4((v0 + 26), (v0 + 33), &qword_27E1A2698, &qword_23BC01A18);
  sub_23BA9B0D4((v0 + 27), (v0 + 34), &qword_27E1A26C8, &qword_23BC01C18);
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A26D0, &qword_23BC01C20);
  sub_23BBDBF78();

  sub_23B9EA92C((v0 + 26), &qword_27E1A2698, &qword_23BC01A18);
  sub_23B9EA92C((v0 + 27), &qword_27E1A26C8, &qword_23BC01C18);

  OUTLINED_FUNCTION_1_16();

  return v6();
}

uint64_t sub_23BB70F50()
{

  v1 = sub_23BB70210();
  v2 = swift_task_alloc();
  *(v0 + 424) = v2;
  *v2 = v0;
  v2[1] = sub_23BB71014;
  v3 = OUTLINED_FUNCTION_4_39();

  return sub_23BB715F0(v1, v3, v4, v5);
}

uint64_t sub_23BB71014()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 432) = v3;

  v4 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23BB71100()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 432);
  *(v0 + 144) = *(*(v0 + 312) + 80);
  *(v0 + 248) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A26D0, &qword_23BC01C20);
  sub_23BBDBF78();

  OUTLINED_FUNCTION_1_16();

  return v2();
}

id sub_23BB71194(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_23BBDCFE8();

  v4 = [v2 initWithBundleIdentifier_];

  return v4;
}

uint64_t sub_23BB71208(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_23BB71254(v3, a2);
}

uint64_t sub_23BB71274(char a1, double a2, double a3, double a4)
{
  *(v5 + 40) = v4;
  *(v5 + 96) = a1;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 16) = a2;
  *(v5 + 48) = *v4;
  sub_23BBDD308();
  *(v5 + 56) = sub_23BBDD2F8();
  v7 = sub_23BBDD2D8();
  *(v5 + 64) = v7;
  *(v5 + 72) = v6;

  return MEMORY[0x2822009F8](sub_23BB71340, v7, v6);
}

uint64_t sub_23BB71340()
{
  OUTLINED_FUNCTION_3_13();
  v1 = sub_23BB70444();
  if (v1)
  {
    v2 = v1;

    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_23BB71434;
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);
    v9 = *(v0 + 96);

    return sub_23BB715F0(v9, v8, v6, v7);
  }
}

uint64_t sub_23BB71434()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *v0;
  OUTLINED_FUNCTION_7_17();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_7_17();
  *v5 = v4;
  *(v7 + 88) = v6;

  v8 = *(v1 + 72);
  v9 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_23BB71550, v9, v8);
}

uint64_t sub_23BB71550()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 88);

  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 40);
    v4 = *(v0 + 96);
    v5 = *(v0 + 32);
    v6 = *(v3 + 16);
    v7 = *(v0 + 16);
    *(v3 + 16) = v2;
    *(v3 + 24) = v7;
    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    v8 = v2;

    v9 = *(v0 + 88);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_23BB715F0(char a1, double a2, double a3, double a4)
{
  *(v4 + 80) = a1;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  v5 = sub_23BBDC468();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BB716B8, 0, 0);
}

uint64_t sub_23BB716B8()
{
  v2 = *(v0 + 6);
  v1 = *(v0 + 7);
  v3 = *(v0 + 5);
  sub_23BAE0E08(0, &qword_27E1A26F8, 0x277D85C78);
  *v1 = sub_23BBDD5C8();
  (*(v2 + 104))(v1, *MEMORY[0x277D851F0], v3);
  v4 = sub_23BBDC478();
  result = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    *(v0 + 8) = [objc_opt_self() applicationIcon];
    v6 = swift_task_alloc();
    *(v0 + 9) = v6;
    *v6 = v0;
    v6[1] = sub_23BB71804;
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];

    return sub_23BB71A60(v9, v7, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BB71804(uint64_t a1)
{
  OUTLINED_FUNCTION_21_4();
  v4 = *(v3 + 64);
  v5 = *v1;
  OUTLINED_FUNCTION_7_17();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(a1);
}

uint64_t sub_23BB71934()
{
  sub_23BB71ECC();
  sub_23BBDA958();
  return v1;
}

BOOL sub_23BB719D8(char a1, char a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a3 == a6;
  if (a4 != a7)
  {
    v8 = 0;
  }

  if (a5 != a8)
  {
    v8 = 0;
  }

  return a1 == a2 && v8;
}

uint64_t sub_23BB71A60(double a1, double a2, double a3)
{
  *(v4 + 112) = v3;
  *(v4 + 96) = a2;
  *(v4 + 104) = a3;
  *(v4 + 88) = a1;
  return MEMORY[0x2822009F8](sub_23BB71A88, 0, 0);
}

uint64_t sub_23BB71A88()
{
  v1 = *(v0 + 14);
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 10;
  *(v0 + 3) = sub_23BB71B4C;
  v5 = swift_continuation_init();
  sub_23BB7244C(v5, v1, v4, v3, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23BB71B4C()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v2 = *(v1 + 80);
  v3 = *(*v0 + 8);

  return v3(v2);
}

uint64_t sub_23BB71C34()
{

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t sub_23BB71C90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 25))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 >= 7;
      v2 = v3 - 7;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BB71CCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_23BB71D50@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2678, &qword_23BC019A8);
  sub_23BBDBF68();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2680, &qword_23BC019B0);
  (*(*(v7 - 8) + 16))(a4, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2688, &qword_23BC019B8);
  v9 = (a4 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v10;
  return result;
}

uint64_t sub_23BB71E34()
{
  type metadata accessor for CurrentAppIconCache();
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_23BBDBF58();
  return v2;
}

uint64_t sub_23BB71E9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BB71934();
  *a1 = result;
  return result;
}

unint64_t sub_23BB71ECC()
{
  result = qword_27E1A2690;
  if (!qword_27E1A2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2690);
  }

  return result;
}

uint64_t sub_23BB71F90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BB71FE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_23BB72064()
{
  result = qword_27E1A26A0;
  if (!qword_27E1A26A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2688, &qword_23BC019B8);
    sub_23B97B518(&qword_27E1A26A8, &qword_27E1A2680, &qword_23BC019B0, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E1A26B0, &qword_27E1A26B8, &qword_23BC01B68, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A26A0);
  }

  return result;
}

uint64_t sub_23BB72164()
{

  j__swift_release(*(v0 + 48));
  sub_23B97B450(*(v0 + 64), *(v0 + 72));
  sub_23B97B450(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_23BB7222C()
{
  swift_unknownObjectRelease();

  j__swift_release(*(v0 + 64));
  sub_23B97B450(*(v0 + 80), *(v0 + 88));
  sub_23B97B450(*(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_23BB722A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23BB72350;

  return sub_23BB70490(a1, v4, v5, v1 + 32);
}

uint64_t sub_23BB72350()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;

  OUTLINED_FUNCTION_1_16();

  return v3();
}

void sub_23BB7244C(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a3 scale:{a4, a5}];
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v10[4] = sub_23BB725D0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23BB725D8;
  v10[3] = &block_descriptor_32;
  v9 = _Block_copy(v10);

  [a2 getCGImageForImageDescriptor:v7 completion:v9];
  _Block_release(v9);
}

uint64_t sub_23BB7256C(void *a1, uint64_t a2)
{
  **(*(a2 + 64) + 40) = a1;
  v3 = a1;

  return MEMORY[0x282200948](a2);
}

void sub_23BB725D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23BB72660()
{
  result = qword_27E1A2700;
  if (!qword_27E1A2700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2708, &qword_23BC01C60);
    sub_23B97B518(&qword_27E1A2710, &qword_27E1A2718, qword_23BC01C68, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2700);
  }

  return result;
}

uint64_t sub_23BB72748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBDCD08();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 <= 6)
    {
      v9 = 6;
    }

    else
    {
      v9 = *(a1 + *(a3 + 20));
    }

    v10 = v9 - 6;
    if (v8 >= 6)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23BB72810(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23BBDCD08();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  return result;
}

uint64_t _s20LocalizationResourceVMa(uint64_t a1)
{
  result = qword_27E1A2720;
  if (!qword_27E1A2720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BB72904(uint64_t a1)
{
  result = sub_23BBDCD08();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s20LocalizationResourceV6FormatOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && a1[16])
  {
    return (*a1 + 250);
  }

  v3 = *a1;
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t _s20LocalizationResourceV6FormatOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_23BB72A00(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

void *sub_23BB72A14(void *result, unsigned int a2)
{
  if (a2 > 0xFA)
  {
    *result = a2 - 251;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

void sub_23BB72A48()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v100 = v2;
  v101 = v3;
  sub_23BBDCD08();
  OUTLINED_FUNCTION_7();
  v96 = v5;
  v97 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = sub_23BBD9848();
  v10 = OUTLINED_FUNCTION_13_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v95[2] = v12 - v11;
  v13 = sub_23BBDCFC8();
  v14 = OUTLINED_FUNCTION_13_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v95[1] = v16 - v15;
  v17 = sub_23BBDCFA8();
  v18 = OUTLINED_FUNCTION_13_0(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v95[0] = v20 - v19;
  sub_23BBDCCC8();
  OUTLINED_FUNCTION_7();
  v102 = v21;
  v103 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v95 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = v95 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = v95 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = v95 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = v95 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = v95 - v41;
  sub_23BBD96B8();
  OUTLINED_FUNCTION_7();
  v99 = v43;
  MEMORY[0x28223BE20](v44);
  MEMORY[0x28223BE20](v45);
  MEMORY[0x28223BE20](v46);
  MEMORY[0x28223BE20](v47);
  MEMORY[0x28223BE20](v48);
  MEMORY[0x28223BE20](v49);
  MEMORY[0x28223BE20](v50);
  v98 = v95 - v58;
  if (v1 == 1)
  {
    v59 = v101;
    v60 = v51;
    switch(v100)
    {
      case 1:
        v79 = v53;
        sub_23BBDCCD8();
        v80 = v102;
        v81 = (*(v103 + 88))(v39, v102);
        v69 = v98;
        v64 = v99;
        if (v81 == *MEMORY[0x277CDD2D0])
        {
          goto LABEL_15;
        }

        if (v81 == *MEMORY[0x277CDD2D8])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_5_39();
          sub_23BBDCF88();
          v104 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_12_30();
          goto LABEL_46;
        }

        if (v81 == *MEMORY[0x277CDD2E8])
        {
LABEL_15:
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_5_39();
          sub_23BBDCF88();
          v104 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          goto LABEL_46;
        }

        if (v81 == *MEMORY[0x277CDD2E0])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_5_39();
          sub_23BBDCF88();
          v104 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_13_30();
          goto LABEL_46;
        }

        OUTLINED_FUNCTION_5_39();
        sub_23BBD9678();
        OUTLINED_FUNCTION_16_21();
        v93 = v39;
        v94 = v80;
        goto LABEL_71;
      case 2:
        v39 = v56;
        v70 = v54;
        v71 = sub_23BBDCCE8();
        v56 = v39;
        if (v71 != 1)
        {
          goto LABEL_12;
        }

        sub_23BBDCCD8();
        v72 = (*(v103 + 88))(v36, v102);
        v69 = v98;
        v64 = v99;
        if (v72 == *MEMORY[0x277CDD2D0])
        {
          OUTLINED_FUNCTION_3_42();
          v73 = sub_23BBDCF48();
          goto LABEL_31;
        }

        v78 = v59;
        if (v72 == *MEMORY[0x277CDD2D8] || v72 == *MEMORY[0x277CDD2E8] || v72 == *MEMORY[0x277CDD2E0])
        {
          OUTLINED_FUNCTION_3_42();
          v88 = sub_23BBDCF48();
          OUTLINED_FUNCTION_17_16(v88);
          sub_23BB73D2C();
        }

        else
        {
          OUTLINED_FUNCTION_5_39();
          sub_23BBD9678();
          (*(v103 + 8))(v36, v102);
        }

        v77 = v70;
        goto LABEL_49;
      case 3:
        v66 = v57;
        sub_23BBDCCD8();
        OUTLINED_FUNCTION_20_19();
        v68 = v67(v33, v39);
        v69 = v98;
        if (v68 == *MEMORY[0x277CDD2D0] || v68 == *MEMORY[0x277CDD2D8] || v68 == *MEMORY[0x277CDD2E8] || v68 == *MEMORY[0x277CDD2E0])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_5_39();
          sub_23BBDCF88();
          v104 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_3_42();
          sub_23BBDCF88();
          v84 = OUTLINED_FUNCTION_15_25();
          OUTLINED_FUNCTION_17_16(v84);
          OUTLINED_FUNCTION_18_21();
        }

        else
        {
          OUTLINED_FUNCTION_5_39();
          sub_23BBD9678();
          OUTLINED_FUNCTION_16_21();
          v90(v33, v39);
        }

        v77 = v66;
        v78 = v59;
        v64 = v99;
        goto LABEL_49;
      case 4:
        v79 = v52;
        sub_23BBDCCD8();
        OUTLINED_FUNCTION_20_19();
        v83 = v82(v30, v39);
        v69 = v98;
        v64 = v99;
        if (v83 == *MEMORY[0x277CDD2D0])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_11_26();
          v104 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_14_27();
LABEL_46:
          sub_23BBDCF88();
          v86 = OUTLINED_FUNCTION_15_25();
          OUTLINED_FUNCTION_17_16(v86);
          OUTLINED_FUNCTION_18_21();
          goto LABEL_47;
        }

        if (v83 == *MEMORY[0x277CDD2D8])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_11_26();
          v104 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_12_30();
          goto LABEL_46;
        }

        if (v83 == *MEMORY[0x277CDD2E8])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_11_26();
          v104 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_7_40();
          goto LABEL_46;
        }

        if (v83 == *MEMORY[0x277CDD2E0])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_11_26();
          v104 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_13_30();
          goto LABEL_46;
        }

        OUTLINED_FUNCTION_5_39();
        sub_23BBD9678();
        OUTLINED_FUNCTION_16_21();
        v93 = v30;
        v94 = v39;
LABEL_71:
        v92(v93, v94);
LABEL_47:
        v77 = v79;
LABEL_48:
        v78 = v59;
        goto LABEL_49;
      case 5:
LABEL_12:
        v70 = v56;
        sub_23BBDCCD8();
        OUTLINED_FUNCTION_20_19();
        v75 = v74(v27, v39);
        if (v75 == *MEMORY[0x277CDD2D0])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_6_33();
          v104 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_14_27();
          sub_23BBDCF88();
          v76 = OUTLINED_FUNCTION_15_25();
          OUTLINED_FUNCTION_17_16(v76);
          sub_23BB73D2C();
          v77 = v70;
          v78 = v59;
          v69 = v98;
          v64 = v99;
          goto LABEL_49;
        }

        v69 = v98;
        v64 = v99;
        if (v75 == *MEMORY[0x277CDD2D8])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_6_33();
          v104 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_12_30();
        }

        else if (v75 == *MEMORY[0x277CDD2E8])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_6_33();
          v104 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_7_40();
        }

        else
        {
          if (v75 != *MEMORY[0x277CDD2E0])
          {
            OUTLINED_FUNCTION_5_39();
            sub_23BBD9678();
            OUTLINED_FUNCTION_16_21();
            v89(v27, v39);
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_6_33();
          v104 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_13_30();
        }

        sub_23BBDCF88();
        v73 = OUTLINED_FUNCTION_15_25();
LABEL_31:
        OUTLINED_FUNCTION_17_16(v73);
        sub_23BB73D2C();
LABEL_32:
        v77 = v70;
        goto LABEL_48;
      default:
        v61 = v55;
        sub_23BBDCCD8();
        OUTLINED_FUNCTION_20_19();
        v63 = v62(v42, v39);
        v64 = v99;
        if (v63 == *MEMORY[0x277CDD2D0])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_5_39();
          sub_23BBDCF88();
          v104 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_14_27();
LABEL_40:
          sub_23BBDCF88();
          v85 = OUTLINED_FUNCTION_15_25();
          OUTLINED_FUNCTION_17_16(v85);
          OUTLINED_FUNCTION_18_21();
          goto LABEL_41;
        }

        if (v63 == *MEMORY[0x277CDD2D8])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_5_39();
          sub_23BBDCF88();
          v104 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_12_30();
          goto LABEL_40;
        }

        if (v63 == *MEMORY[0x277CDD2E8])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_5_39();
          sub_23BBDCF88();
          v104 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_7_40();
          goto LABEL_40;
        }

        if (v63 == *MEMORY[0x277CDD2E0])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_5_39();
          sub_23BBDCF88();
          v104 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_13_30();
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_5_39();
        sub_23BBD9678();
        OUTLINED_FUNCTION_16_21();
        v91(v42, v39);
LABEL_41:
        v77 = v61;
        v78 = v59;
        v69 = v98;
LABEL_49:
        v87 = *(v64 + 32);
        v87(v69, v77, v60);
        v87(v78, v69, v60);
        break;
    }
  }

  else
  {
    sub_23BBDCCD8();
    v65 = sub_23BBDCCE8();
    if ((v65 * v1) >> 64 != (v65 * v1) >> 63)
    {
      __break(1u);
      JUMPOUT(0x23BB7396CLL);
    }

    sub_23BBDCCF8();
    (*(v103 + 8))(v24, v102);
    sub_23BB72A48();
    (*(v96 + 8))(v8, v97);
  }

  OUTLINED_FUNCTION_9_1();
}

void sub_23BB73984()
{
  if (*(v0 + *(_s20LocalizationResourceVMa(0) + 20)) == 6)
  {

    sub_23BB74064();
  }

  else
  {

    sub_23BB72A48();
  }
}

void sub_23BB739F8()
{
  OUTLINED_FUNCTION_10_0();
  v1 = sub_23BBD9848();
  v2 = OUTLINED_FUNCTION_13_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v3 = sub_23BBDCFC8();
  v4 = OUTLINED_FUNCTION_13_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v5 = sub_23BBDCFA8();
  v6 = OUTLINED_FUNCTION_13_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v7 = sub_23BBDCCC8();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  (*(v9 + 16))(v12 - v11, v0, v7);
  v14 = (*(v9 + 88))(v13, v7);
  if (v14 == *MEMORY[0x277CDD2D0] || v14 == *MEMORY[0x277CDD2D8] || v14 == *MEMORY[0x277CDD2E8] || v14 == *MEMORY[0x277CDD2E0])
  {
    sub_23BBDCF98();
    OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_24_16(v15, v16);
    OUTLINED_FUNCTION_23_15();
    OUTLINED_FUNCTION_19_27();
    sub_23BBDCF88();
    sub_23BBDCFB8();
    sub_23BBD9838();
    sub_23BB73D2C();
  }

  else
  {
    OUTLINED_FUNCTION_5_39();
    sub_23BBD9678();
    (*(v9 + 8))(v13, v7);
  }

  OUTLINED_FUNCTION_9_1();
}

void sub_23BB73D2C()
{
  OUTLINED_FUNCTION_10_0();
  v24 = v0;
  v2 = v1;
  v3 = sub_23BBD9688();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = sub_23BBD9848();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  v17 = sub_23BBDCFC8();
  OUTLINED_FUNCTION_7();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  (*(v19 + 16))(v22 - v21, v2, v17);
  (*(v12 + 16))(v16, v24, v10);
  if (qword_27E197630 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v3, qword_27E1BF848);
  (*(v5 + 16))(v9, v23, v3);
  sub_23BBD96C8();
  (*(v12 + 8))(v24, v10);
  (*(v19 + 8))(v2, v17);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB73F90@<X0>(uint64_t a5@<X8>)
{
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v6 = qword_27E1BF840;

  result = sub_23BBDB648();
  *a5 = result;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9 & 1;
  *(a5 + 24) = v10;
  return result;
}

void sub_23BB74064()
{
  OUTLINED_FUNCTION_10_0();
  v0 = sub_23BBD9848();
  v1 = OUTLINED_FUNCTION_13_0(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v2 = sub_23BBDCFC8();
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v4 = sub_23BBD96B8();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = sub_23BBDCFA8();
  v12 = OUTLINED_FUNCTION_13_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  sub_23BBDCF98();
  OUTLINED_FUNCTION_25_9();
  sub_23BBDCF88();
  sub_23BB72A48();
  sub_23BBDCF78();
  (*(v6 + 8))(v10, v4);
  sub_23BBDCF88();
  sub_23BBDCFB8();
  sub_23BBD9838();
  sub_23BB73D2C();
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB7425C(uint64_t a1, uint64_t a2, double a3)
{
  if ((sub_23BBDCCA8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(_s20LocalizationResourceVMa(0) + 20);
  v6 = a1 + v5;
  v7 = *(a1 + v5);
  v8 = a2 + v5;
  v9 = *(a2 + v5);
  if (v7 == 6)
  {
    if (v9 != 6)
    {
      return 0;
    }
  }

  else
  {
    v11 = *(v8 + 8);
    v12 = *(v6 + 8);
    v13 = (v9 ^ v7);
    if (v9 == 6 || v13 != 0 || v12 != v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_23BB742EC(uint64_t a1)
{
  sub_23BBDCD08();
  OUTLINED_FUNCTION_9_28();
  sub_23BB74774(v2, v3, MEMORY[0x277CDD308]);
  sub_23BBDCE68();
  v4 = (v1 + *(_s20LocalizationResourceVMa(0) + 20));
  v5 = *v4;
  if (v5 == 6)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(v4 + 1);
    MEMORY[0x23EEB63A0](0);
    MEMORY[0x23EEB63A0](v5);
  }

  return MEMORY[0x23EEB63A0](v6);
}

uint64_t sub_23BB7439C()
{
  sub_23BBDDBB8();
  sub_23BBDCD08();
  OUTLINED_FUNCTION_9_28();
  sub_23BB74774(v1, v2, MEMORY[0x277CDD308]);
  sub_23BBDCE68();
  v3 = (v0 + *(_s20LocalizationResourceVMa(0) + 20));
  v4 = *v3;
  if (v4 == 6)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v3 + 1);
    MEMORY[0x23EEB63A0](0);
    MEMORY[0x23EEB63A0](v4);
  }

  MEMORY[0x23EEB63A0](v5);
  return sub_23BBDDBF8();
}

uint64_t sub_23BB74470(uint64_t a1, uint64_t a2)
{
  sub_23BBDDBB8();
  sub_23BBDCD08();
  sub_23BB74774(qword_27E19FD00, MEMORY[0x277CDD300], MEMORY[0x277CDD308]);
  sub_23BBDCE68();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  if (v5 == 6)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(v4 + 1);
    MEMORY[0x23EEB63A0](0);
    MEMORY[0x23EEB63A0](v5);
  }

  MEMORY[0x23EEB63A0](v6);
  return sub_23BBDDBF8();
}

BOOL sub_23BB7454C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a1 == 6)
  {
    return a3 == 6;
  }

  if (a3 == 6)
  {
    return 0;
  }

  return a3 == a1 && a2 == a4;
}

uint64_t sub_23BB74590(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v3 = a2;
  if (a2 == 6)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3;
    MEMORY[0x23EEB63A0](0);
    MEMORY[0x23EEB63A0](v3);
  }

  return MEMORY[0x23EEB63A0](v4);
}

uint64_t sub_23BB745E8(unsigned __int8 a1, uint64_t a2)
{
  sub_23BBDDBB8();
  if (a1 == 6)
  {
    a2 = 1;
  }

  else
  {
    MEMORY[0x23EEB63A0](0);
    MEMORY[0x23EEB63A0](a1);
  }

  MEMORY[0x23EEB63A0](a2);
  return sub_23BBDDBF8();
}

uint64_t sub_23BB74678(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_23BBDDBB8();
  sub_23BB74590(v5, v2, v3);
  return sub_23BBDDBF8();
}

unint64_t sub_23BB746D8()
{
  result = qword_27E1A2730;
  if (!qword_27E1A2730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2730);
  }

  return result;
}

uint64_t sub_23BB74774(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BB747BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_23BBDAA38();
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  sub_23BBDAA28();
  OUTLINED_FUNCTION_25_9();
  sub_23BBDAA18();
  sub_23BBDAA08();
  OUTLINED_FUNCTION_5_39();
  sub_23BBDAA18();
  return sub_23BBDAA58();
}

_BYTE *_s20LocalizationResourceV5StyleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23BB74938);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23BB74974()
{
  result = qword_27E1A2740;
  if (!qword_27E1A2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2740);
  }

  return result;
}

uint64_t sub_23BB749C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_23BBDAA38();
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  sub_23BBDAA28();
  OUTLINED_FUNCTION_25_9();
  sub_23BBDAA18();
  sub_23BBDAA08();
  sub_23BBDAA18();
  return sub_23BBDAA58();
}

uint64_t OUTLINED_FUNCTION_0_55()
{

  return MEMORY[0x28211E7C0](v0 - 88, 1684827173, 0xE400000000000000);
}

uint64_t OUTLINED_FUNCTION_6_33()
{

  return sub_23BBDCF88();
}

uint64_t OUTLINED_FUNCTION_11_26()
{

  return sub_23BBDCF88();
}

uint64_t OUTLINED_FUNCTION_15_25()
{

  return sub_23BBDCFB8();
}

uint64_t OUTLINED_FUNCTION_17_16(uint64_t a1)
{

  return sub_23BBD9838();
}

void OUTLINED_FUNCTION_18_21()
{

  sub_23BB73D2C();
}

uint64_t OUTLINED_FUNCTION_23_15()
{

  return sub_23BBDCF68();
}

uint64_t OUTLINED_FUNCTION_24_16(uint64_t a1, uint64_t a2)
{

  return sub_23BBDCF88();
}

uint64_t sub_23BB74C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ApplyStoreKitEnvironmentViewModifier(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B979510();
  *&v12[*(v9 + 20)] = a2;
  *&v12[*(v9 + 24)] = a3;

  MEMORY[0x23EEB43C0](v12, a4, v9, a5);
  return sub_23BB766B8(v12, type metadata accessor for ApplyStoreKitEnvironmentViewModifier);
}

void *sub_23BB74D2C()
{
  sub_23BB7654C();

  return sub_23BBDA958();
}

uint64_t sub_23BB74D98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199800, &qword_23BBE8388);
  v2 = OUTLINED_FUNCTION_13_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_40();
  return sub_23BB74E20(v0);
}

uint64_t sub_23BB74E20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199800, &qword_23BBE8388);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_40();
  sub_23BB7654C();
  sub_23BBDA968();
  return sub_23B979910(a1, &qword_27E199800, &qword_23BBE8388);
}

uint64_t sub_23BB74EC8(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v8);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2760, qword_23BC01E48);
  swift_storeEnumTagMultiPayload();
  *(v10 + *(v7 + 20)) = a1;
  MEMORY[0x23EEB43C0](v10, a2, v7, a3);
  return sub_23BB766B8(v10, type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier);
}

uint64_t sub_23BB74FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61 = a1;
  v67 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199800, &qword_23BBE8388);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = v57 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0, &unk_23BBFDD50);
  v57[1] = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v57 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A27F8, &qword_23BC02048);
  MEMORY[0x28223BE20](v58);
  v17 = v57 - v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2800, &qword_23BC02050);
  MEMORY[0x28223BE20](v59);
  v19 = v57 - v18;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2808, &qword_23BC02058);
  MEMORY[0x28223BE20](v60);
  v21 = v57 - v20;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2810, &qword_23BC02060);
  MEMORY[0x28223BE20](v62);
  v63 = v57 - v22;
  v57[0] = swift_getKeyPath();
  v65 = v3;
  sub_23B979510();
  v23 = type metadata accessor for StoreKitEnvironmentValues(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v23);
  v66 = v6;
  if (EnumTagSinglePayload == 1)
  {
    sub_23B979910(v11, &qword_27E199800, &qword_23BBE8388);
    v25 = 1;
  }

  else
  {
    sub_23BB76CC0();
    sub_23BB766B8(v11, type metadata accessor for StoreKitEnvironmentValues);
    v25 = 0;
  }

  v26 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  __swift_storeEnumTagSinglePayload(v15, v25, 1, v26);
  sub_23B979688();
  v27 = swift_allocObject();
  sub_23B979688();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2818, &qword_23BC02090);
  (*(*(v28 - 8) + 16))(v17, v61, v28);
  v29 = &v17[*(v58 + 36)];
  *v29 = v57[0];
  *(v29 + 1) = sub_23BB76BC4;
  *(v29 + 2) = v27;
  KeyPath = swift_getKeyPath();
  v31 = type metadata accessor for ApplyStoreKitEnvironmentViewModifier(0);
  v32 = v65;
  v33 = *(v65 + *(v31 + 20));
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  sub_23B979688();
  v35 = &v19[*(v59 + 36)];
  *v35 = KeyPath;
  v35[1] = sub_23BB76C88;
  v35[2] = v34;
  v36 = swift_getKeyPath();
  v37 = *(v32 + *(v31 + 24));
  sub_23B979688();
  v38 = &v21[*(v60 + 36)];
  *v38 = v36;
  v38[1] = v37;
  v39 = swift_getKeyPath();
  v40 = v64;
  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v40, 1, v23) == 1)
  {

    sub_23B979910(v40, &qword_27E199800, &qword_23BBE8388);
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v43 = (v40 + *(v23 + 20));
    v41 = *v43;
    v42 = v43[1];

    sub_23BB766B8(v40, type metadata accessor for StoreKitEnvironmentValues);
  }

  v44 = v63;
  sub_23B979688();
  v45 = &v44[*(v62 + 36)];
  *v45 = v39;
  v45[1] = v41;
  v45[2] = v42;
  v46 = swift_getKeyPath();
  v47 = v66;
  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v47, 1, v23) == 1)
  {
    sub_23B979910(v47, &qword_27E199800, &qword_23BBE8388);
    v48 = 2;
  }

  else
  {
    v49 = (v47 + *(v23 + 24));
    v50 = *v49;
    v51 = v49[1];
    sub_23BB766B8(v47, type metadata accessor for StoreKitEnvironmentValues);
    if (v51)
    {
      v52 = 256;
    }

    else
    {
      v52 = 0;
    }

    v48 = v52 | v50;
  }

  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  v54 = v67;
  sub_23B979688();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2820, &qword_23BC02138);
  v56 = (v54 + *(result + 36));
  *v56 = v46;
  v56[1] = sub_23BB76CB8;
  v56[2] = v53;
  return result;
}

_BYTE *sub_23BB7572C(_BYTE *result, __int16 a2)
{
  if (a2 != 2)
  {
    *result = a2 & 1;
    result[1] = HIBYTE(a2) & 1;
  }

  return result;
}

uint64_t sub_23BB75750(void *a1, uint64_t a2, __n128 a3)
{
  if (a2 != 1)
  {

    *a1 = a2;
  }

  return sub_23BB76D18(a2);
}

uint64_t sub_23BB7579C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0, &unk_23BBFDD50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_23B979510();
  v5 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_23B979910(v4, &qword_27E1A0BC0, &unk_23BBFDD50);
  }

  sub_23BB766B8(a1, type metadata accessor for SubscriptionStorePolicyConfiguration);
  return sub_23BB764F4();
}

uint64_t sub_23BB758B4@<X0>(void *a1@<X8>)
{
  sub_23BB2A448();
  sub_23BBDA958();
  sub_23BADA2DC();
  sub_23BBDA958();
  sub_23B97B158();
  sub_23BBDA958();
  result = type metadata accessor for StoreKitEnvironmentValues(0);
  v3 = (a1 + *(result + 20));
  *v3 = v4;
  v3[1] = v5;
  *(a1 + *(result + 24)) = v4;
  return result;
}

uint64_t sub_23BB75970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier(0);
  MEMORY[0x28223BE20](v4 - 8);
  KeyPath = swift_getKeyPath();
  sub_23BB76CC0();
  v6 = swift_allocObject();
  sub_23BB764F4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A27A0, &qword_23BC01F48);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A27A8, &unk_23BC01F50);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = sub_23BB76494;
  v9[2] = v6;
  return result;
}

uint64_t sub_23BB75B14(void *a1, uint64_t a2)
{
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2760, qword_23BC01E48);
  MEMORY[0x28223BE20](v8);
  result = type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier(0);
  if (*(a2 + *(result + 20)) == 1)
  {
    sub_23B979910(a1, &qword_27E199800, &qword_23BBE8388);
    sub_23B979510();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23BB764F4();
    }

    else
    {
      sub_23BBDD5A8();
      v10 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
    }

    v11 = type metadata accessor for StoreKitEnvironmentValues(0);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v11);
  }

  return result;
}

uint64_t sub_23BB75D40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199800, &qword_23BBE8388);
  __swift_allocate_value_buffer(v0, qword_27E1A2748);
  v1 = __swift_project_value_buffer(v0, qword_27E1A2748);
  v2 = type metadata accessor for StoreKitEnvironmentValues(0);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_23BB75DBC()
{
  if (qword_27E197820 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199800, &qword_23BBE8388);
  __swift_project_value_buffer(v0, qword_27E1A2748);
  return sub_23B979510();
}

uint64_t sub_23BB75EA4()
{
  OUTLINED_FUNCTION_7_41();
  type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  OUTLINED_FUNCTION_10_2();
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_3_43(*(v0 + *(v2 + 20) + 8));
  }

  v4 = OUTLINED_FUNCTION_6_34();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_23BB75F48()
{
  OUTLINED_FUNCTION_1_57();
  type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  OUTLINED_FUNCTION_10_2();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_15();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

void sub_23BB75FD8(uint64_t a1)
{
  type metadata accessor for SubscriptionStorePolicyConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_23B9989D8(319, &qword_27E1A2778, &type metadata for SubscriptionStoreDefaultMarketingView.DefaultMarketingInfo);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BB76088()
{
  OUTLINED_FUNCTION_7_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2780, &unk_23BC01E90);
  OUTLINED_FUNCTION_10_2();
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_6_34();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    v8 = *(v0 + *(v2 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_23BB76150()
{
  OUTLINED_FUNCTION_1_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2780, &unk_23BC01E90);
  OUTLINED_FUNCTION_10_2();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_15();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }
}

void sub_23BB761E8(uint64_t a1)
{
  sub_23BB76930(319, &qword_27E1A2798, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_23BB762BC()
{
  v1 = *(type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2760, qword_23BC01E48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
    }

    else if (!EnumCaseMultiPayload)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_4_1();
      (*(v4 + 8))(v0 + v2);
    }

    v5 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
    v6 = v5[5];
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 == 1)
    {
    }

    else if (!v7)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_4_1();
      (*(v8 + 8))(v0 + v2 + v6);
    }

    v9 = OUTLINED_FUNCTION_9_29(v5[6]);
    if (v10)
    {
      __swift_destroy_boxed_opaque_existential_1(v9);
    }

    v11 = OUTLINED_FUNCTION_9_29(v5[7]);
    if (v12)
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    type metadata accessor for StoreKitEnvironmentValues(0);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23BB76494()
{
  v0 = type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier(0);
  OUTLINED_FUNCTION_13_0(v0);
  v1 = OUTLINED_FUNCTION_11_27();

  return sub_23BB75B14(v1, v2);
}

uint64_t sub_23BB764F4()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

unint64_t sub_23BB7654C()
{
  result = qword_27E1A27B0;
  if (!qword_27E1A27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A27B0);
  }

  return result;
}

unint64_t sub_23BB765B4()
{
  result = qword_27E1A27B8;
  if (!qword_27E1A27B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A27A8, &unk_23BC01F50);
    sub_23B97B518(&qword_27E1A27C0, &qword_27E1A27A0, &qword_23BC01F48, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E1A27C8, &qword_27E1A27D0, &qword_23BC01F80, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A27B8);
  }

  return result;
}

uint64_t sub_23BB766B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BB76724()
{
  OUTLINED_FUNCTION_7_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199800, &qword_23BBE8388);
  OUTLINED_FUNCTION_10_2();
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_3_43(*(v0 + *(v2 + 20)));
  }

  v4 = OUTLINED_FUNCTION_6_34();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_23BB767D0()
{
  OUTLINED_FUNCTION_1_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199800, &qword_23BBE8388);
  OUTLINED_FUNCTION_10_2();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_15();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }
}

void sub_23BB76868(uint64_t a1)
{
  sub_23BB76930(319, &qword_27E1A27E8, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23B9989D8(319, qword_27E19FE30, &type metadata for PreferredSubscriptionOfferProvider);
    if (v2 <= 0x3F)
    {
      sub_23BB76990(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23BB76930(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StoreKitEnvironmentValues(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_23BB76990(uint64_t a1)
{
  if (!qword_27E1A27F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B620, &qword_23BBED028);
    v1 = sub_23BBDD648();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1A27F0);
    }
  }
}

uint64_t sub_23BB76A18()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0, &unk_23BBFDD50) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v3))
  {
    type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
    }

    else if (!EnumCaseMultiPayload)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_4_1();
      (*(v5 + 8))(v0 + v2);
    }

    v6 = v3[5];
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 == 1)
    {
    }

    else if (!v7)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_4_1();
      (*(v8 + 8))(v0 + v2 + v6);
    }

    v9 = OUTLINED_FUNCTION_9_29(v3[6]);
    if (v10)
    {
      __swift_destroy_boxed_opaque_existential_1(v9);
    }

    v11 = OUTLINED_FUNCTION_9_29(v3[7]);
    if (v12)
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_23BB76BC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0, &unk_23BBFDD50);
  OUTLINED_FUNCTION_13_0(v0);
  v1 = OUTLINED_FUNCTION_11_27();

  return sub_23BB7579C(v1);
}

uint64_t sub_23BB76C48()
{
  if (*(v0 + 16) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23BB76CC0()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB76D18(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_23BB76D2C()
{
  result = qword_27E1A2828;
  if (!qword_27E1A2828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2820, &qword_23BC02138);
    sub_23BB76DE4();
    sub_23B97B518(&qword_27E1A2878, qword_27E1A2880, qword_23BC02160, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2828);
  }

  return result;
}

unint64_t sub_23BB76DE4()
{
  result = qword_27E1A2830;
  if (!qword_27E1A2830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2810, &qword_23BC02060);
    sub_23BB76E9C();
    sub_23B97B518(&qword_27E1A2148, &qword_27E1A2140, &unk_23BC00980, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2830);
  }

  return result;
}

unint64_t sub_23BB76E9C()
{
  result = qword_27E1A2838;
  if (!qword_27E1A2838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2808, &qword_23BC02058);
    sub_23BB76F54();
    sub_23B97B518(&qword_27E19B638, &qword_27E19B640, &unk_23BC02150, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2838);
  }

  return result;
}

unint64_t sub_23BB76F54()
{
  result = qword_27E1A2840;
  if (!qword_27E1A2840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2800, &qword_23BC02050);
    sub_23BB7700C();
    sub_23B97B518(&qword_27E1A2868, &qword_27E1A2870, &qword_23BC02148, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2840);
  }

  return result;
}

unint64_t sub_23BB7700C()
{
  result = qword_27E1A2848;
  if (!qword_27E1A2848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A27F8, &qword_23BC02048);
    sub_23B97B518(&qword_27E1A2850, &qword_27E1A2818, &qword_23BC02090, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E1A2858, &qword_27E1A2860, &qword_23BC02140, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2848);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_43@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_5_40()
{

  return sub_23B979510();
}

uint64_t sub_23BB77190(uint64_t a1)
{
  if (sub_23BBDC2A8())
  {

    return sub_23BBDB578();
  }

  else
  {

    return sub_23BBDB438();
  }
}

uint64_t sub_23BB771D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v35 = MEMORY[0x277CE0BD8];
  v36 = v5;
  v37 = MEMORY[0x277CE0BC8];
  v38 = v4;
  v6 = sub_23BBDBEA8();
  OUTLINED_FUNCTION_7();
  v24 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198390, qword_23BBE52B0);
  v11 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v25 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  v30 = v5;
  v31 = v4;
  v32 = v2;
  v27 = v5;
  v28 = v4;
  v29 = v2;
  sub_23BBDBE98();
  sub_23BB77190(a1);
  OUTLINED_FUNCTION_0_56();
  WitnessTable = swift_getWitnessTable();
  sub_23BBDBAC8();

  (*(v24 + 8))(v10, v6);
  v20 = sub_23BB77F60();
  v33 = WitnessTable;
  v34 = v20;
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v21 = *(v25 + 8);
  v21(v15, v11);
  sub_23B9D2D88();
  return (v21)(v18, v11);
}

uint64_t sub_23BB77478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BB77FC4(a1, v6);
  result = sub_23BB95790(v6);
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_23BB77510(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SingleLineLabel(0, v6, v7, v8);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_23BB77608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  sub_23BB77698(a1, a4);
  v10 = type metadata accessor for SingleLineLabel(0, a3, a5, v9);
  v11 = *(*(a3 - 8) + 32);
  v12 = a4 + *(v10 + 36);

  return v11(v12, a2, a3);
}

uint64_t sub_23BB77698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB77714(uint64_t a1)
{
  result = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(319);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BB7779C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23BBDCD08() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_23BBDCBE8() - 8);
  v10 = *(v9 + 80);
  v11 = v7 | v10 | 7;
  v12 = (v8 + 7 + ((*(v9 + 64) + v7 + ((v10 + 16) & ~v10)) & ~v7)) & 0xFFFFFFFFFFFFFFF8;
  v13 = v12 + 8;
  v14 = v12 + 10;
  if (v14 <= v13)
  {
    v14 = v13;
  }

  if (v14 <= 3)
  {
    v14 = 3;
  }

  v15 = v14 + ((((v7 + 16) & ~v7) + v8 + v11) & ~v11);
  if (v15 + 1 > ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v16 <= 0x10)
  {
    v16 = 16;
  }

  v17 = v16 + 1;
  v18 = (v16 + 1 + v11) & ~v11;
  v19 = *(a3 + 16);
  v20 = *(v19 - 8);
  v21 = *(v20 + 84);
  if (v21 <= 0xFE)
  {
    v22 = 254;
  }

  else
  {
    v22 = *(v20 + 84);
  }

  v23 = v18 + v17;
  if (v23 <= 0x20)
  {
    v23 = 32;
  }

  v24 = *(v20 + 80);
  v25 = *(v20 + 64);
  if (!a2)
  {
    return 0;
  }

  v26 = v23 + v24 + 1;
  if (a2 <= v22)
  {
    goto LABEL_36;
  }

  v27 = (v26 & ~v24) + v25;
  v28 = 8 * v27;
  if (v27 <= 3)
  {
    v31 = ((a2 - v22 + ~(-1 << v28)) >> v28) + 1;
    if (HIWORD(v31))
    {
      v29 = *(a1 + v27);
      if (!v29)
      {
        goto LABEL_36;
      }

      goto LABEL_26;
    }

    if (v31 > 0xFF)
    {
      v29 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_36;
      }

      goto LABEL_26;
    }

    if (v31 < 2)
    {
LABEL_36:
      if (v21 > 0xFE)
      {

        return __swift_getEnumTagSinglePayload((a1 + v26) & ~v24, v21, v19);
      }

      else
      {
        v35 = *(a1 + v23);
        if (v35 >= 2)
        {
          return (v35 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v29 = *(a1 + v27);
  if (!*(a1 + v27))
  {
    goto LABEL_36;
  }

LABEL_26:
  v32 = (v29 - 1) << v28;
  if (v27 > 3)
  {
    v32 = 0;
  }

  if (v27)
  {
    if (v27 <= 3)
    {
      v33 = v27;
    }

    else
    {
      v33 = 4;
    }

    switch(v33)
    {
      case 2:
        v34 = *a1;
        break;
      case 3:
        v34 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v34 = *a1;
        break;
      default:
        v34 = *a1;
        break;
    }
  }

  else
  {
    v34 = 0;
  }

  return v22 + (v34 | v32) + 1;
}

void sub_23BB77AB4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23BBDCD08() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_23BBDCBE8() - 8);
  v12 = *(v11 + 80);
  v13 = v9 | v12 | 7;
  v14 = (v10 + 7 + ((*(v11 + 64) + v9 + ((v12 + 16) & ~v12)) & ~v9)) & 0xFFFFFFFFFFFFFFF8;
  v15 = v14 + 8;
  v16 = v14 + 10;
  if (v16 <= v15)
  {
    v16 = v15;
  }

  if (v16 <= 3)
  {
    v16 = 3;
  }

  v17 = v16 + ((((v9 + 16) & ~v9) + v10 + v13) & ~v13);
  if (v17 + 1 > ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v18 <= 0x10)
  {
    v18 = 16;
  }

  v19 = v18 + 1;
  v20 = (v18 + 1 + v13) & ~v13;
  v21 = *(a4 + 16);
  v22 = *(v21 - 8);
  v23 = *(v22 + 84);
  if (v23 <= 0xFE)
  {
    v24 = 254;
  }

  else
  {
    v24 = *(v22 + 84);
  }

  v25 = v20 + v19;
  if (v25 <= 0x20)
  {
    v25 = 32;
  }

  v26 = *(v22 + 80);
  v27 = v25 + v26 + 1;
  v28 = (v27 & ~v26) + *(v22 + 64);
  v29 = 8 * v28;
  if (a3 <= v24)
  {
    v30 = 0;
  }

  else if (v28 <= 3)
  {
    v33 = ((a3 - v24 + ~(-1 << v29)) >> v29) + 1;
    if (HIWORD(v33))
    {
      v30 = 4;
    }

    else
    {
      if (v33 < 0x100)
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }

      if (v33 >= 2)
      {
        v30 = v34;
      }

      else
      {
        v30 = 0;
      }
    }
  }

  else
  {
    v30 = 1;
  }

  if (v24 < a2)
  {
    v31 = ~v24 + a2;
    if (v28 < 4)
    {
      v32 = (v31 >> v29) + 1;
      if (v28)
      {
        v35 = v31 & ~(-1 << v29);
        bzero(a1, v28);
        if (v28 == 3)
        {
          *a1 = v35;
          a1[2] = BYTE2(v35);
        }

        else if (v28 == 2)
        {
          *a1 = v35;
        }

        else
        {
          *a1 = v31;
        }
      }
    }

    else
    {
      bzero(a1, v28);
      *a1 = v31;
      v32 = 1;
    }

    switch(v30)
    {
      case 1:
        a1[v28] = v32;
        return;
      case 2:
        *&a1[v28] = v32;
        return;
      case 3:
        goto LABEL_66;
      case 4:
        *&a1[v28] = v32;
        return;
      default:
        return;
    }
  }

  switch(v30)
  {
    case 1:
      a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    case 2:
      *&a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    case 3:
LABEL_66:
      __break(1u);
      JUMPOUT(0x23BB77EC8);
    case 4:
      *&a1[v28] = 0;
      goto LABEL_37;
    default:
LABEL_37:
      if (a2)
      {
LABEL_38:
        if (v23 > 0xFE)
        {

          __swift_storeEnumTagSinglePayload(&a1[v27] & ~v26, a2, v23, v21);
        }

        else if (a2 > 0xFE)
        {
          v36 = (v25 + 1);
          if (v36 <= 3)
          {
            v37 = ~(-1 << (8 * (v25 + 1)));
          }

          else
          {
            v37 = -1;
          }

          if (v25 != -1)
          {
            v38 = v37 & (a2 - 255);
            if (v36 <= 3)
            {
              v39 = v25 + 1;
            }

            else
            {
              v39 = 4;
            }

            bzero(a1, v36);
            switch(v39)
            {
              case 2:
                *a1 = v38;
                break;
              case 3:
                *a1 = v38;
                a1[2] = BYTE2(v38);
                break;
              case 4:
                *a1 = v38;
                break;
              default:
                *a1 = v38;
                break;
            }
          }
        }

        else
        {
          a1[v25] = -a2;
        }
      }

      return;
  }
}

unint64_t sub_23BB77F60()
{
  result = qword_27E198388;
  if (!qword_27E198388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198390, qword_23BBE52B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198388);
  }

  return result;
}

uint64_t sub_23BB77FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB78028(uint64_t *a1)
{
  sub_23BBDBEA8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198390, qword_23BBE52B0);
  sub_23BBDA358();
  OUTLINED_FUNCTION_0_56();
  swift_getWitnessTable();
  sub_23BB77F60();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t sub_23BB78108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v23[0] = a7;
  v23[1] = a8;
  v16 = *(a5 - 8);
  v17 = MEMORY[0x28223BE20](a1);
  (*(v16 + 16))(v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v19, v17);
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v21 = v23[0];
  v20[4] = a6;
  v20[5] = v21;
  v20[6] = a9;
  v20[7] = a10;
  v20[8] = a2;
  v20[9] = a3;
  sub_23BBDBE08();
  return (*(v16 + 8))(a1, a5);
}

uint64_t sub_23BB78268@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v38 = a7;
  v39 = a8;
  v36 = a5;
  v40 = a3;
  v41 = a2;
  v34 = a1;
  v42 = a9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00E0, &qword_23BBFA930);
  MEMORY[0x28223BE20](v37);
  v13 = &v33 - v12;
  v14 = sub_23BBDAA98();
  sub_23BB785D0(v15);
  v35 = sub_23BBDD8A8();
  v16 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v18 = &v33 - v17;
  v19 = *(a6 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v33 - v25;
  (*(*(v14 - 8) + 16))(v13, v34, v14, v24);
  v27 = swift_allocObject();
  v28 = v36;
  v27[2] = a4;
  v27[3] = v28;
  v30 = v38;
  v29 = v39;
  v27[4] = a6;
  v27[5] = v30;
  v27[6] = v29;
  v27[7] = a10;
  v27[8] = a4;
  sub_23BB78744();
  sub_23BBDD9B8();

  sub_23BB787A8(v13);
  v41(v18);
  (*(v16 + 8))(v18, v35);
  sub_23B9D2D88();
  v31 = *(v19 + 8);
  v31(v22, a6);
  sub_23B9D2D88();
  return (v31)(v26, a6);
}

uint64_t sub_23BB78564()
{

  return swift_deallocObject();
}

unint64_t sub_23BB785D0(double a1)
{
  result = qword_27E1A00F8;
  if (!qword_27E1A00F8)
  {
    sub_23BBDAA98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A00F8);
  }

  return result;
}

uint64_t sub_23BB78628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_23BBDC208();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a1, v10);
  return (*(a6 + 32))(v12, a3, a6);
}

unint64_t sub_23BB78744()
{
  result = qword_27E1A2908;
  if (!qword_27E1A2908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A00E0, &qword_23BBFA930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2908);
  }

  return result;
}

uint64_t sub_23BB787A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00E0, &qword_23BBFA930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_23BB78850(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = (a1)(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_23BB78900(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_23BBDCC88() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

void sub_23BB789D4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_23BBAE714(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x23EEB5F90](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_23BB78AC8()
{
  sub_23BB79610();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BB78B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a4;
  v24 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = sub_23BBDCC88();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 16);

  v18(a1, a2);

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    v19 = *(v15 + 32);
    v19(v17, v13, v14);
    sub_23BB78EB8(v17, v10);
    (*(v15 + 8))(v17, v14);
    if (__swift_getEnumTagSinglePayload(v10, 1, v14) != 1)
    {
      v20 = v24;
      v19(v24, v10, v14);
      v21 = 0;
      return __swift_storeEnumTagSinglePayload(v20, v21, 1, v14);
    }

    v13 = v10;
  }

  v20 = v24;
  sub_23B9C8F9C(v13);
  v21 = 1;
  return __swift_storeEnumTagSinglePayload(v20, v21, 1, v14);
}

uint64_t sub_23BB78D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = *v2;
  v6 = v2[1];
  v14 = *(v2 + 1);
  v15 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2910, &qword_23BC023C8);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2918, &qword_23BC023D0);
  v9 = swift_allocObject();
  *(v9 + 16) = *(v2 + 1);
  *(v9 + 32) = *(v2 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2920, &qword_23BC023D8);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2928, &unk_23BC023E0) + 36));
  *v11 = KeyPath;
  v11[1] = v8;
  v11[2] = v9;

  return sub_23BB79540(&v14, v13);
}

uint64_t sub_23BB78EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDCBA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  sub_23BBDCC48();
  sub_23BBDCB78();
  v11 = sub_23B9A07E0(v10, v7);
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  if ((v11 & 1) == 0 || (v13 = sub_23BBDCC38(), !v14))
  {
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v23, qword_27E1BFC88);
    v24 = sub_23BBDD598();
    v25 = sub_23BBD9988();
    if (!os_log_type_enabled(v25, v24))
    {
      goto LABEL_10;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v39 = v27;
    *v26 = 136446466;
    *(v26 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v39);
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_23BA5AB90(0xD0000000000000AFLL, 0x800000023BBE31A0, &v39);
    _os_log_impl(&dword_23B970000, v25, v24, "%{public}s%{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB6DC0](v27, -1, -1);
    v28 = v26;
LABEL_9:
    MEMORY[0x23EEB6DC0](v28, -1, -1);
LABEL_10:

LABEL_11:
    v22 = sub_23BBDCC88();
    v20 = a2;
    v21 = 1;
    return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
  }

  v15 = v13;
  v16 = v14;
  v17 = sub_23BBDCA88();
  MEMORY[0x28223BE20](v17);
  *(&v38 - 2) = a1;
  v18 = sub_23BB78900(sub_23BB794C0, (&v38 - 4), v17);

  if (!v18)
  {
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v30, qword_27E1BFC88);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_23BBDD768();
    MEMORY[0x23EEB5890](0xD00000000000002DLL, 0x800000023BBE3250);
    MEMORY[0x23EEB5890](v15, v16);

    MEMORY[0x23EEB5890](0xD00000000000003BLL, 0x800000023BBE3280);
    v31 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    MEMORY[0x23EEB5890](v31);

    MEMORY[0x23EEB5890](0xD000000000000029, 0x800000023BBE32C0);
    v33 = v39;
    v32 = v40;
    v34 = sub_23BBDD598();

    v25 = sub_23BBD9988();

    if (!os_log_type_enabled(v25, v34))
    {

      goto LABEL_11;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v35 = 136446466;
    *(v35 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v39);
    *(v35 + 12) = 2082;
    v37 = sub_23BA5AB90(v33, v32, &v39);

    *(v35 + 14) = v37;
    _os_log_impl(&dword_23B970000, v25, v34, "%{public}s%{public}s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB6DC0](v36, -1, -1);
    v28 = v35;
    goto LABEL_9;
  }

  v19 = sub_23BBDCC88();
  (*(*(v19 - 8) + 16))(a2, a1, v19);
  v20 = a2;
  v21 = 0;
  v22 = v19;
  return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
}

uint64_t sub_23BB7941C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_23BBDDA88() & 1;
  }
}

uint64_t sub_23BB79460(uint64_t a1, uint64_t a2)
{
  sub_23BBDCC88();
  sub_23BB794E0();
  return sub_23BBDCF38() & 1;
}

unint64_t sub_23BB794E0()
{
  result = qword_27E197B88;
  if (!qword_27E197B88)
  {
    sub_23BBDCC88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197B88);
  }

  return result;
}

unint64_t sub_23BB795CC()
{
  result = qword_27E19FED8;
  if (!qword_27E19FED8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E19FED8);
  }

  return result;
}

unint64_t sub_23BB79610()
{
  result = qword_27E1A2930;
  if (!qword_27E1A2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2930);
  }

  return result;
}

unint64_t sub_23BB79690()
{
  result = qword_27E1A2938;
  if (!qword_27E1A2938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2928, &unk_23BC023E0);
    sub_23B97B518(&qword_27E1A2940, &qword_27E1A2920, &qword_23BC023D8, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E1A2948, &qword_27E1A2950, &qword_23BC024B8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2938);
  }

  return result;
}

unint64_t sub_23BB79794(uint64_t a1)
{
  result = sub_23B9EE60C();
  if (v2 <= 0x3F)
  {
    result = sub_23BBD9728();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BB7981C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2968, qword_23BC02518);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + *(a3 + 28)));
  }

  v7 = v6;
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23BB798E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2968, qword_23BC02518);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
  }

  else
  {
    *(v5 + *(a4 + 28)) = (v4 - 1);
  }

  return result;
}

void sub_23BB799B4(uint64_t a1)
{
  sub_23BB7D460(319, &qword_27E198598, &type metadata for CommonUIHorizontalSizeClass, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_23BB7D460(319, &qword_27E199908, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_23BB7D4B0(319, &qword_27E1A2980, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AMSBagKey(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23BB79AE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  sub_23BBDB148();
  OUTLINED_FUNCTION_7();
  v58 = v4;
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v57 = v6 - v5;
  sub_23BBDA408();
  OUTLINED_FUNCTION_7();
  v53 = v7;
  v54 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v62 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2988, &qword_23BC025D0);
  OUTLINED_FUNCTION_7();
  v51 = v13;
  v52 = v14;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2990, &qword_23BC025D8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2998, &qword_23BC025E0);
  OUTLINED_FUNCTION_7();
  v55 = v22;
  v56 = v21;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - v24;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A29A0, &qword_23BC025E8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  v60 = &v50 - v27;
  v63 = v2;
  sub_23BB7D7A0();
  swift_allocObject();
  sub_23BB7D95C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A29A8, &unk_23BC025F0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AF18, &unk_23BBEBC38);
  v29 = type metadata accessor for SubscriptionOfferViewNoCodeLabelStyle(255);
  v30 = sub_23B97B518(&qword_27E19AF10, &qword_27E19AF18, &unk_23BBEBC38, MEMORY[0x277CDEFF0]);
  v31 = sub_23BB7B900(&qword_27E1A29B0, type metadata accessor for SubscriptionOfferViewNoCodeLabelStyle, &unk_23BC02758);
  v67 = v28;
  v68 = v29;
  v69 = v30;
  v70 = v31;
  swift_getOpaqueTypeConformance2();
  sub_23BBDBFA8();
  sub_23BBDA3F8();
  sub_23B97B518(&qword_27E1A29B8, &qword_27E1A2988, &qword_23BC025D0, MEMORY[0x277CDF028]);
  sub_23BB7B900(&qword_27E19AE90, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v32 = v51;
  v33 = v53;
  sub_23BBDB728();
  v34 = v11;
  v35 = v50;
  (*(v54 + 8))(v34, v33);
  (*(v52 + 8))(v17, v32);
  sub_23BBDB538();
  sub_23BBDB488();
  v36 = sub_23BBDB508();

  KeyPath = swift_getKeyPath();
  v38 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A29C0, &unk_23BC02630) + 36)];
  *v38 = KeyPath;
  v38[1] = v36;
  *&v20[*(v35 + 36)] = sub_23BBDAF28();
  v39 = v57;
  sub_23BBDB128();
  v40 = sub_23BB7C950();
  sub_23BBDB968();
  (*(v58 + 8))(v39, v59);
  sub_23B979910(v20, &qword_27E1A2990, &qword_23BC025D8);
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  v67 = v35;
  v68 = v40;
  swift_getOpaqueTypeConformance2();
  v41 = v60;
  v42 = v56;
  sub_23BBDBA28();

  (*(v55 + 8))(v25, v42);
  v43 = *(v63 + 24);
  v65 = *(v63 + 16);
  v66 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078, &unk_23BBEF500);
  sub_23BBDBF88();
  v44 = v67;
  v45 = v68;
  v46 = v69;
  v47 = v41 + *(v61 + 36);
  type metadata accessor for LicenseAgreementModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2968, qword_23BC02518);
  sub_23BBDBF88();
  *v47 = v44;
  *(v47 + 8) = v45;
  *(v47 + 16) = v46;
  v48 = sub_23BBDC2B8();
  MEMORY[0x28223BE20](v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A29D8, &qword_23BC02640);
  sub_23BB7CBA8();
  sub_23BB7CD5C();
  sub_23BBDBC58();
  return sub_23B979910(v41, &qword_27E1A29A0, &qword_23BC025E8);
}

uint64_t sub_23BB7A2A4()
{
  v1 = v0;
  v2 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton(0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-v4];
  v6 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_23BB7D7A0();
  sub_23BBDD308();
  v7 = sub_23BBDD2F8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  sub_23BB7D95C();
  sub_23BB5D2B8();

  v10 = *(v1 + 24);
  v12[16] = *(v1 + 16);
  v13 = v10;
  v12[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078, &unk_23BBEF500);
  return sub_23BBDBF78();
}

uint64_t sub_23BB7A49C()
{
  v0 = type metadata accessor for SubscriptionOfferViewNoCodeLabelStyle(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AF18, &unk_23BBEBC38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  sub_23BBDBE98();
  *v2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
  swift_storeEnumTagMultiPayload();
  sub_23B97B518(&qword_27E19AF10, &qword_27E19AF18, &unk_23BBEBC38, MEMORY[0x277CDEFF0]);
  sub_23BB7B900(&qword_27E1A29B0, type metadata accessor for SubscriptionOfferViewNoCodeLabelStyle, &unk_23BC02758);
  sub_23BBDB6E8();
  sub_23BB7D19C(v2, type metadata accessor for SubscriptionOfferViewNoCodeLabelStyle);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23BB7A6EC@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1BF840;
  result = sub_23BBDB648();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23BB7A7CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BBDBE38();
  *a1 = result;
  return result;
}

uint64_t sub_23BB7A814(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDB388();
  v8 = *a2;
  if (*(a2 + 8) != 1)
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v8, 0);
    (*(v5 + 8))(v7, v4);
  }

  sub_23BBD9B18();
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  v15[4] = v13;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A29D8, &qword_23BC02640);
  sub_23BBDB028();
  return sub_23BB7CE18();
}

uint64_t sub_23BB7A9D0()
{
  v0[2] = sub_23BBDD308();
  v0[3] = sub_23BBDD2F8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23BB7AA7C;

  return sub_23BB7ABB0();
}

uint64_t sub_23BB7AA7C()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *v0;
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;

  v4 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23B9E8CAC, v4, v3);
}

uint64_t sub_23BB7ABB0()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C6F0, &qword_23BBF0250);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_23BBDD308();
  v1[7] = sub_23BBDD2F8();
  v3 = sub_23BBDD2D8();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_23BB7ACA4, v3, v2);
}

uint64_t sub_23BB7ACA4()
{
  v1 = *(v0 + 48);
  *(v0 + 112) = *(type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton(0) + 24);
  *(v0 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2968, qword_23BC02518);
  sub_23BBDBF68();
  v2 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton.LicenseAgreementState(0);
  *(v0 + 88) = v2;
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) != 1)
  {
    v3 = *(v0 + 48);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        sub_23BB7D19C(v3, type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton.LicenseAgreementState);
      }

      else
      {
      }

      OUTLINED_FUNCTION_1_16();
      OUTLINED_FUNCTION_15_26();

      __asm { BRAA            X1, X16 }
    }

    sub_23BB7D19C(v3, type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton.LicenseAgreementState);
  }

  v5 = *(v0 + 40);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_8_40(v5);
  OUTLINED_FUNCTION_16_22();
  sub_23BBDBF78();
  sub_23B979910(v5, &qword_27E19C6F0, &qword_23BBF0250);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_23BB7AEBC;
  OUTLINED_FUNCTION_15_26();

  return sub_23BB7B1E4(v7, v8);
}

uint64_t sub_23BB7AEBC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_7_17();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 104) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_23BB7B0F0;
  }

  else
  {
    v7 = sub_23BB7AFF4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

void sub_23BB7AFF4()
{
  v1 = *(v0 + 24);

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_8_40(v1);
  sub_23B979510();
  sub_23BBDBF78();
  sub_23B979910(v1, &qword_27E19C6F0, &qword_23BBF0250);

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_15_26();

  __asm { BRAA            X1, X16 }
}

void sub_23BB7B0F0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 40);

  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_8_40(v2);
  OUTLINED_FUNCTION_16_22();
  sub_23BBDBF78();
  sub_23B979910(v2, &qword_27E19C6F0, &qword_23BBF0250);

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_15_26();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_23BB7B1E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x2822009F8](sub_23BB7B204, 0, 0);
}

uint64_t sub_23BB7B204()
{
  v1 = v0[21];
  sub_23BB7D1F4();
  v2 = sub_23BB7B588(0x74694B65726F7453, 0xE800000000000000, 49, 0xE100000000000000);
  v0[22] = v2;
  v3 = [v2 URLForKey_];
  v0[23] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23BB7B38C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A10, &unk_23BC026A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23BB7B61C;
  v0[13] = &block_descriptor_1;
  v0[14] = v4;
  [v3 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23BB7B38C()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  if (v4)
  {
    v5 = sub_23BB7B514;
  }

  else
  {
    v5 = sub_23BB7B494;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23BB7B494()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[18];
  sub_23BBD96F8();

  OUTLINED_FUNCTION_1_16();

  return v4();
}

uint64_t sub_23BB7B514(uint64_t a1)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 176);
  swift_willThrow();

  OUTLINED_FUNCTION_1_16();

  return v4();
}

id sub_23BB7B588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_23BBDCFE8();

  v5 = sub_23BBDCFE8();

  v6 = [swift_getObjCClassFromMetadata() bagForProfile:v4 profileVersion:v5];

  return v6;
}

uint64_t *sub_23BB7B61C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    v9 = a4;

    return sub_23BB7B6B4(v8, v9);
  }

  else if (a2)
  {
    v10 = a2;

    return sub_23BB7B720(v8, v10, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BB7B6B4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A450, &unk_23BBEA450);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_23BB7B720(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  *(v3 + 8) = a3;
  return MEMORY[0x282200950]();
}

uint64_t sub_23BB7B748()
{
  type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton(0);
  OUTLINED_FUNCTION_19_0();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_23B97B5C0(*v4, *(v4 + 8));

  if (!OUTLINED_FUNCTION_7_42())
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_4_1();
      (*(v7 + 8))(v2);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2968, qword_23BC02518);

  return swift_deallocObject();
}

uint64_t sub_23BB7B888()
{
  v0 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton(0);
  OUTLINED_FUNCTION_13_0(v0);
  return sub_23BB7A2A4();
}

uint64_t sub_23BB7B900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_23BB7B948()
{
  v0 = type metadata accessor for LicenseAgreementModifier(0);
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
  sub_23BBDC118();
  sub_23BB7D7A0();
  swift_allocObject();
  sub_23BB7D95C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A50, &qword_23BC027A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A58, &qword_23BC027B0);
  sub_23B97B518(&qword_27E1A2A60, &qword_27E1A2A50, &qword_23BC027A8, MEMORY[0x277CE04B0]);
  sub_23BB7DA14();
  sub_23BBDBB28();

  return result;
}

uint64_t sub_23BB7BB64@<X0>(void *a1@<X8>)
{
  v49 = a1;
  v1 = sub_23BBD9848();
  MEMORY[0x28223BE20](v1 - 8);
  v43 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23BBDCFC8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23BBD96B8();
  MEMORY[0x28223BE20](v4 - 8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DA8, &unk_23BBE9000);
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v38 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0610, &qword_23BBFB340);
  MEMORY[0x28223BE20](v48);
  v41 = &v38 - v7;
  v42 = sub_23BBD9728();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A80, &qword_23BC027C8);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A88, &unk_23BC027D0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v38 - v11);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A78, &unk_23BC027B8);
  MEMORY[0x28223BE20](v47);
  v45 = &v38 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C6F0, &qword_23BBF0250);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v38 - v15);
  type metadata accessor for LicenseAgreementModifier(0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A18, &unk_23BC026B0);
  MEMORY[0x23EEB48C0](v17);
  v18 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton.LicenseAgreementState(0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v18) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v34 = *v16;
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *v12 = sub_23BB7C3B0;
      v12[1] = 0;
      v12[2] = sub_23BB01920;
      v12[3] = v35;
      swift_storeEnumTagMultiPayload();
      v36 = v34;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA00, qword_23BBEACA0);
      sub_23B97B518(&qword_27E199DA0, &qword_27E199DA8, &unk_23BBE9000, MEMORY[0x277D7EAF0]);
      sub_23B97B518(&qword_27E19A9F8, &qword_27E19AA00, qword_23BBEACA0, &unk_23BBFE1F0);
      v37 = v45;
      sub_23BBDACD8();
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      sub_23BB7DAA0();
      sub_23BB01430();
      sub_23BBDACD8();

      return sub_23B979910(v37, &qword_27E1A2A78, &unk_23BC027B8);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v21 = v39;
      v20 = v40;
      v22 = v42;
      (*(v40 + 32))(v39, v16, v42);
      v23 = v41;
      (*(v20 + 16))(v41, v21, v22);
      v24 = sub_23BBDA398();
      v25 = sub_23BBDB398();
      v26 = v23 + *(v48 + 36);
      *v26 = v24;
      *(v26 + 8) = v25;
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      sub_23BB7DAA0();
      sub_23BB01430();
      sub_23BBDACD8();
      sub_23B979910(v23, &qword_27E1A0610, &qword_23BBFB340);
      return (*(v20 + 8))(v21, v22);
    }
  }

  sub_23BBDCF48();
  sub_23BBD9838();
  sub_23BB73D2C();
  v50 = sub_23BBDD028();
  v51 = v28;
  sub_23B9F6A08();
  sub_23BBD98A8();
  v29 = v6;
  v30 = v44;
  v31 = *(v44 + 16);
  v43 = v9;
  v32 = v46;
  v31(v12, v29, v46);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA00, qword_23BBEACA0);
  sub_23B97B518(&qword_27E199DA0, &qword_27E199DA8, &unk_23BBE9000, MEMORY[0x277D7EAF0]);
  sub_23B97B518(&qword_27E19A9F8, &qword_27E19AA00, qword_23BBEACA0, &unk_23BBFE1F0);
  v33 = v45;
  sub_23BBDACD8();
  sub_23B979510();
  swift_storeEnumTagMultiPayload();
  sub_23BB7DAA0();
  sub_23BB01430();
  sub_23BBDACD8();
  sub_23B979910(v33, &qword_27E1A2A78, &unk_23BC027B8);
  return (*(v30 + 8))(v29, v32);
}

uint64_t sub_23BB7C3B0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23BBD9848();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23BBDCFC8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23BBD96B8();
  MEMORY[0x28223BE20](v4 - 8);
  sub_23BBDCF48();
  sub_23BBD9838();
  sub_23BB73D2C();
  result = sub_23BBDB668();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_23BB7C4FC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_23BBDA308();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19AC20, &unk_23BC02790);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_23B9B70F0();
  v14 = sub_23BBDA2E8();
  (*(v5 + 8))(v9, v3);
  if (v14)
  {
    v15 = sub_23BBDA9D8();
  }

  else
  {
    v15 = sub_23BBDA998();
  }

  v16 = v15;
  if (qword_27E197698 != -1)
  {
    swift_once();
  }

  v17 = qword_27E1BFC58;
  *v13 = v16;
  *(v13 + 1) = v17;
  v13[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ABF8, &qword_23BBEB1F0);
  sub_23BB7C6B4(&v13[*(v18 + 44)]);
  sub_23BB7D730(v13, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A48, &qword_23BC027A0);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_23BB7C6B4@<X0>(char *a1@<X8>)
{
  v29 = a1;
  v2 = sub_23BBDAFB8();
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = sub_23BBDAFD8();
  v28 = *(v9 - 8);
  v10 = v28;
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  sub_23BBDAFE8();
  sub_23BBDAFC8();
  v16 = *(v10 + 16);
  v16(v12, v15, v9);
  v17 = *(v3 + 16);
  v17(v5, v8, v2);
  v18 = v29;
  v16(v29, v12, v9);
  v19 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AC00, &qword_23BBEB1F8) + 48)];
  v20 = v26;
  v17(v19, v5, v26);
  v21 = *(v27 + 8);
  v22 = v8;
  v23 = v20;
  v21(v22, v20);
  v24 = *(v28 + 8);
  v24(v15, v9);
  v21(v5, v23);
  return (v24)(v12, v9);
}

unint64_t sub_23BB7C950()
{
  result = qword_27E1A29C8;
  if (!qword_27E1A29C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2990, &qword_23BC025D8);
    sub_23BB7CA08();
    sub_23B97B518(&qword_27E19CDC0, &qword_27E19CDC8, &qword_23BBF2BF0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A29C8);
  }

  return result;
}

unint64_t sub_23BB7CA08()
{
  result = qword_27E1A29D0;
  if (!qword_27E1A29D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A29C0, &unk_23BC02630);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2988, &qword_23BC025D0);
    sub_23BBDA408();
    sub_23B97B518(&qword_27E1A29B8, &qword_27E1A2988, &qword_23BC025D0, MEMORY[0x277CDF028]);
    sub_23BB7B900(&qword_27E19AE90, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E198388, &qword_27E198390, qword_23BBE52B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A29D0);
  }

  return result;
}

unint64_t sub_23BB7CBA8()
{
  result = qword_27E1A29E0;
  if (!qword_27E1A29E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A29A0, &qword_23BC025E8);
    sub_23BB7CC64();
    sub_23BB7B900(&qword_27E1A29F8, type metadata accessor for LicenseAgreementModifier, &unk_23BC02708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A29E0);
  }

  return result;
}

unint64_t sub_23BB7CC64()
{
  result = qword_27E1A29E8;
  if (!qword_27E1A29E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A29F0, &qword_23BC02648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2990, &qword_23BC025D8);
    sub_23BB7C950();
    swift_getOpaqueTypeConformance2();
    sub_23BB7B900(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A29E8);
  }

  return result;
}

unint64_t sub_23BB7CD5C()
{
  result = qword_27E1A2A00;
  if (!qword_27E1A2A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A29D8, &qword_23BC02640);
    sub_23BB7CBA8();
    sub_23BB7B900(&qword_27E1985A8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2A00);
  }

  return result;
}

uint64_t sub_23BB7CE18()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A29A0, &qword_23BC025E8);
  OUTLINED_FUNCTION_4_1();
  v1 = OUTLINED_FUNCTION_17_0();
  v2(v1);
  return v0;
}

uint64_t sub_23BB7CE80()
{
  type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton(0);
  OUTLINED_FUNCTION_19_0();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  sub_23B97B5C0(*(v1 + v4), *(v1 + v4 + 8));

  if (!OUTLINED_FUNCTION_7_42())
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_4_1();
      (*(v7 + 8))(v2);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2968, qword_23BC02518);

  return swift_deallocObject();
}

uint64_t sub_23BB7CFC8()
{
  v1 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton(0);
  OUTLINED_FUNCTION_13_0(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_23BB7D0B4;

  return sub_23BB7A9D0();
}

uint64_t sub_23BB7D0B4()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *v0;
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;

  OUTLINED_FUNCTION_1_16();

  return v3();
}

uint64_t sub_23BB7D19C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_23BB7D1F4()
{
  result = qword_27E1A2A08;
  if (!qword_27E1A2A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1A2A08);
  }

  return result;
}

uint64_t sub_23BB7D278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A18, &unk_23BC026B0);
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void sub_23BB7D314()
{
  OUTLINED_FUNCTION_19();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A18, &unk_23BC026B0);
    v6 = v1 + *(v4 + 20);

    __swift_storeEnumTagSinglePayload(v6, v0, v0, v5);
  }
}

void sub_23BB7D39C(uint64_t a1)
{
  sub_23BB7D460(319, &qword_27E19A2A8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_23BB7D4B0(319, &qword_27E1A2A30, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BB7D460(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23BB7D4B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C6F0, &qword_23BBF0250);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_23BB7D530()
{
  OUTLINED_FUNCTION_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30, &unk_23BBEB0A0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_23BB7D594()
{
  OUTLINED_FUNCTION_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30, &unk_23BBEB0A0);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void sub_23BB7D5E8(uint64_t a1)
{
  sub_23B9C68B0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_23BB7D654()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A29A0, &qword_23BC025E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A29D8, &qword_23BC02640);
  sub_23BB7CBA8();
  sub_23BB7CD5C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BB7D730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19AC20, &unk_23BC02790);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB7D7A0()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB7D7F8()
{
  v1 = (type metadata accessor for LicenseAgreementModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[7];

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A18, &unk_23BC026B0) + 32);
  v5 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton.LicenseAgreementState(0);
  if (!__swift_getEnumTagSinglePayload(v3 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_4_1();
      (*(v8 + 8))(v3 + v4);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_23BB7D95C()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB7D9B4@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for LicenseAgreementModifier(0);
  OUTLINED_FUNCTION_13_0(v2);
  return sub_23BB7BB64(a1);
}

unint64_t sub_23BB7DA14()
{
  result = qword_27E1A2A68;
  if (!qword_27E1A2A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2A58, &qword_23BC027B0);
    sub_23BB7DAA0();
    sub_23BB01430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2A68);
  }

  return result;
}

unint64_t sub_23BB7DAA0()
{
  result = qword_27E1A2A70;
  if (!qword_27E1A2A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2A78, &unk_23BC027B8);
    sub_23B97B518(&qword_27E199DA0, &qword_27E199DA8, &unk_23BBE9000, MEMORY[0x277D7EAF0]);
    sub_23B97B518(&qword_27E19A9F8, &qword_27E19AA00, qword_23BBEACA0, &unk_23BBFE1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2A70);
  }

  return result;
}

uint64_t sub_23BB7DB84()
{

  return swift_deallocObject();
}

unint64_t sub_23BB7DBC0()
{
  result = qword_27E1A2A90;
  if (!qword_27E1A2A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2A48, &qword_23BC027A0);
    sub_23B97B518(&qword_27E19AC18, qword_27E19AC20, &unk_23BC02790, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2A90);
  }

  return result;
}

uint64_t sub_23BB7DC78()
{
  v0 = OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2A58, &qword_23BC027B0);
  sub_23B97B518(&qword_27E1A2A60, &qword_27E1A2A50, &qword_23BC027A8, MEMORY[0x277CE04B0]);
  sub_23BB7DA14();
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_7_42()
{
  v2 = v1 + *(v0 + 24);
  v3 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton.LicenseAgreementState(0);

  return __swift_getEnumTagSinglePayload(v2, 1, v3);
}

uint64_t OUTLINED_FUNCTION_8_40(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_16_22()
{

  return sub_23B979510();
}

uint64_t sub_23BB7DDC4()
{
  v1 = v0;
  v2 = sub_23BBDCE08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BBDCDF8();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_23BBDD018();
    v48 = v1;
    v13 = v12;

    sub_23BB02B28(v11, v13);
    sub_23B9A935C();
    sub_23BBDCDE8();
    v14 = OUTLINED_FUNCTION_0_7();
    sub_23B9A93B4(v14, v15);
    v16 = OUTLINED_FUNCTION_0_7();
    sub_23BB05734(v16, v17, v5);
    v18 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v18, v19);
    sub_23BBDCDD8();
    (*(v3 + 8))(v5, v2);
    v20 = OUTLINED_FUNCTION_0_7();
    v22 = sub_23B9A940C(v20, v21);
    v23 = sub_23BB02FE4(v8, v22);
    v25 = v24;
    v1 = v48;

    v26 = sub_23BBD97D8();
    v28 = v27;
    sub_23B9A940C(v23, v25);
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = sub_23B9D4CA8(v26, v28);

  if (v29)
  {
    return 0;
  }

  sub_23BBC909C();
  if (!v30)
  {
    return 0;
  }

  v31 = v30;
  v32 = *(v1 + 40);
  v50 = *(v1 + 24);
  v51 = v32;
  v52 = *(v1 + 56);
  v53 = *(v1 + 72);
  v33 = sub_23BBCA150(v30);
  if (!v33)
  {
LABEL_15:

    return 0;
  }

  v34 = v33;
  type metadata accessor for SubscriptionViewPurchaseEvent(0);
  sub_23BBC9CD8();
  if (!v35)
  {

    goto LABEL_15;
  }

  v36 = v35;
  v37 = sub_23BB024A0(v34, v31, 1);
  v38 = sub_23BB024A0(v36, v37, 1);
  v39 = &unk_284E57088;
  v40 = 3;
  do
  {
    v41 = *(v39 - 1);
    v42 = *v39;

    v43 = sub_23BB03A88(v41, v42);
    v45 = v44;

    if (v45)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v49 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199010, qword_23BBE7230);
      sub_23BBDD8D8();
      v38 = v49;

      sub_23B9A9318();
      sub_23BBDD8F8();
    }

    v39 += 2;
    --v40;
  }

  while (v40);
  return v38;
}

uint64_t type metadata accessor for SubscriptionViewPurchaseEvent(uint64_t a1)
{
  result = qword_27E1A2A98;
  if (!qword_27E1A2A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BB7E200(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 == 2147483646)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    v6 = v5 - 1;
    if (v6 < 0)
    {
      v6 = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = type metadata accessor for MintViewBasePurchaseEvent(0);
    v11 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_23BB7E2A8(uint64_t result, uint64_t a2, int a3, uint64_t a4, double a5)
{
  v6 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = type metadata accessor for MintViewBasePurchaseEvent(0);
    v9 = v6 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
  }

  return result;
}

uint64_t sub_23BB7E328(uint64_t a1, double a2)
{
  result = type metadata accessor for MintViewBasePurchaseEvent(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23BB7E3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_0();
  v211 = v21;
  v23 = v22;
  v214 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  v24 = OUTLINED_FUNCTION_25_0(v214);
  v215 = v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_3();
  v202[1] = v30;
  OUTLINED_FUNCTION_5_3();
  v216 = sub_23BBDC1E8();
  OUTLINED_FUNCTION_3_2();
  v228 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_3();
  v224 = v34;
  v35 = OUTLINED_FUNCTION_5_3();
  v220 = type metadata accessor for SubscriptionStoreContentConfiguration.Section(v35);
  v36 = OUTLINED_FUNCTION_25_0(v220);
  v227 = v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_5();
  v238 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_3();
  v239 = v40;
  v41 = OUTLINED_FUNCTION_5_3();
  v219 = type metadata accessor for SubscriptionStoreContentConfiguration.Context.SectionContext(v41);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3_1();
  v240 = v44 - v43;
  v45 = OUTLINED_FUNCTION_5_3();
  v209 = type metadata accessor for SubscriptionStoreContentConfiguration.Context.GroupContext(v45);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3_1();
  v217 = v48 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199668, &qword_23BBE8130);
  OUTLINED_FUNCTION_13_0(v49);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v50);
  v52 = v202 - v51;
  sub_23BBDA288();
  OUTLINED_FUNCTION_3_2();
  v236 = v54;
  v237 = v53;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_6_3();
  v235 = v56;
  v57 = OUTLINED_FUNCTION_5_3();
  v234 = type metadata accessor for SubscriptionStoreContentConfiguration.Context(v57);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_6_3();
  v241 = v60;
  OUTLINED_FUNCTION_5_3();
  v242 = sub_23BBDC208();
  OUTLINED_FUNCTION_3_2();
  v62 = v61;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_3_5();
  v243 = v64;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_6_3();
  v233 = v66;
  OUTLINED_FUNCTION_5_3();
  v67 = sub_23BBDAA98();
  OUTLINED_FUNCTION_3_2();
  v69 = v68;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_3_1();
  v73 = v72 - v71;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00F0, &qword_23BBFA940) - 8;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_42_7();
  v76 = MEMORY[0x277CE0150];
  v77 = sub_23BB85F08(&qword_27E1984F8, MEMORY[0x277CE0150], MEMORY[0x277CE0170]);
  OUTLINED_FUNCTION_157();
  sub_23BBDD458();
  sub_23B9B8168();
  v218 = v78;
  (*(v69 + 16))(v73, v23, v67);
  sub_23BB85F08(&qword_27E1A00F8, v76, MEMORY[0x277CE0160]);
  v79 = v216;
  sub_23BBDD188();
  v213 = 0;
  v231 = (v62 + 16);
  v80 = *(v74 + 44);
  v229 = (v62 + 32);
  ++v236;
  v222 = v228 + 16;
  v221 = v228 + 8;
  v228 = v62 + 8;
  v204 = "ERROR_TERMS_OF_SERVICE_TITLE";
  *&v81 = 136446466;
  v203 = v81;
  v82 = MEMORY[0x277D84F90];
  v226 = v52;
  v232 = v67;
  v230 = v20;
  while (1)
  {
    OUTLINED_FUNCTION_157();
    sub_23BBDD4A8();
    if (*(v20 + v80) == v245)
    {
      break;
    }

    v83 = sub_23BBDD558();
    v84 = v233;
    v85 = v242;
    (*v231)(v233);
    v83(&v245, 0);
    v86 = v80;
    v87 = v77;
    sub_23BBDD4B8();
    (*v229)(v243, v84, v85);
    v88 = v235;
    sub_23BBDC1D8();
    sub_23BA22C2C();
    sub_23BBDA298();
    v89 = *v236;
    (*v236)(v88, v237);
    if (__swift_getEnumTagSinglePayload(v52, 1, v234) == 1)
    {
      sub_23B979910(v52, &qword_27E199668, &qword_23BBE8130);
      if (v213)
      {
        v103 = OUTLINED_FUNCTION_7_43();
        v104(v103);
        v213 = 1;
      }

      else
      {
        if (qword_27E1976D0 != -1)
        {
          swift_once();
        }

        v126 = type metadata accessor for SKLogger(0);
        __swift_project_value_buffer(v126, qword_27E1BFC88);
        v127 = sub_23BBDD5A8();
        v128 = sub_23BBD9988();
        if (os_log_type_enabled(v128, v127))
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          *&v245 = v130;
          *v129 = v203;
          *(v129 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v245);
          *(v129 + 12) = 2082;
          *(v129 + 14) = sub_23BA5AB90(0xD000000000000053, v204 | 0x8000000000000000, &v245);
          _os_log_impl(&dword_23B970000, v128, v127, "%{public}s%{public}s", v129, 0x16u);
          swift_arrayDestroy();
          v52 = v226;
          MEMORY[0x23EEB6DC0](v130, -1, -1);
          MEMORY[0x23EEB6DC0](v129, -1, -1);
        }

        v131 = OUTLINED_FUNCTION_7_43();
        v132(v131);
        v213 = 1;
        v79 = v216;
      }

      v80 = v86;
      v20 = v230;
    }

    else
    {
      OUTLINED_FUNCTION_55_4();
      sub_23BB85FCC();
      OUTLINED_FUNCTION_55_4();
      v90 = v223;
      sub_23BB86024();
      OUTLINED_FUNCTION_17_0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_55_4();
        v91 = v240;
        sub_23BB85FCC();
        OUTLINED_FUNCTION_13_31();
        sub_23BBDC1F8();
        OUTLINED_FUNCTION_14_28();
        v92(v225, v88, v79);
        OUTLINED_FUNCTION_0_57();
        sub_23BB85F08(&qword_27E19B1F8, v93, MEMORY[0x277CE12B0]);
        v94 = v239;
        sub_23BBDD718();
        OUTLINED_FUNCTION_14_28();
        v95(v88, v79);
        v96 = (v91 + *(v219 + 20));
        v97 = *v96;
        v98 = v96[1];
        sub_23BB86024();
        *(v94 + 40) = v97;
        *(v94 + 48) = v98;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B9B8090();
          v82 = v173;
        }

        v77 = v87;
        v100 = *(v82 + 16);
        v99 = *(v82 + 24);
        v52 = v226;
        v80 = v86;
        if (v100 >= v99 >> 1)
        {
          OUTLINED_FUNCTION_11_28(v99);
          sub_23B9B8090();
          v82 = v174;
        }

        v20 = v230;
        sub_23BB86080(v240, type metadata accessor for SubscriptionStoreContentConfiguration.Context.SectionContext);
        OUTLINED_FUNCTION_1_58();
        v101 = OUTLINED_FUNCTION_7_43();
        v102(v101);
        *(v82 + 16) = v100 + 1;
        OUTLINED_FUNCTION_23_2();
        sub_23BB85FCC();
      }

      else
      {
        OUTLINED_FUNCTION_55_4();
        sub_23BB85FCC();
        v79 = *(v82 + 16);
        if (v79)
        {
          v244 = MEMORY[0x277D84F90];

          sub_23BA92C88();
          v105 = v244;
          v106 = v227;
          OUTLINED_FUNCTION_23_2();
          v108 = v82 + v107;
          v109 = *(v106 + 72);
          do
          {
            OUTLINED_FUNCTION_17_17();
            v110 = v238;
            sub_23BB86024();
            sub_23B97933C(v110, &v245);
            OUTLINED_FUNCTION_16_23();
            sub_23BB86080(v110, v111);
            v244 = v105;
            v112 = *(v105 + 16);
            if (v112 >= *(v105 + 24) >> 1)
            {
              sub_23BA92C88();
              v105 = v244;
            }

            *(v105 + 16) = v112 + 1;
            OUTLINED_FUNCTION_52_6(v105 + 40 * v112);
            v108 += v109;
            v79 = (v79 - 1);
          }

          while (v79);
          v244 = v105;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F5C8, &qword_23BBF83B0);
          sub_23BB85F50();
          sub_23BBDD718();
          v79 = v214;
          v113 = v210;
          v114 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
          OUTLINED_FUNCTION_8_1();
          __swift_storeEnumTagSinglePayload(v115, v116, v117, v114);
          type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0);
          OUTLINED_FUNCTION_8_1();
          __swift_storeEnumTagSinglePayload(v118, v119, v120, v114);
          sub_23B979510();

          *(v113 + 32) = v247;
          v121 = v246;
          *v113 = v245;
          *(v113 + 16) = v121;
          v122 = v113 + v79[7];
          *v122 = v82;
          *(v122 + 8) = 0;
          *(v113 + v79[8]) = 1;
          v123 = v218;
          v88 = *(v218 + 16);
          v124 = *(v218 + 24);
          v90 = v215;
          if (v88 >= v124 >> 1)
          {
            OUTLINED_FUNCTION_11_28(v124);
            sub_23B9B8168();
            v123 = v176;
          }

          v77 = v87;
          *(v123 + 16) = v88 + 1;
          OUTLINED_FUNCTION_23_2();
          v218 = v125;
          OUTLINED_FUNCTION_4_41();
          sub_23BB85FCC();
          v82 = MEMORY[0x277D84F90];
        }

        v80 = v86;
        v133 = v217 + *(v209 + 20);
        v134 = *v133;
        v135 = *(v133 + 8);
        v20 = v230;
        v207 = *v133;
        if (v135 != 1 || *(v134 + 16) != 1)
        {
          v150 = v224;
          LODWORD(v205) = v135;
          sub_23BBDC1F8();
          OUTLINED_FUNCTION_10_24();
          OUTLINED_FUNCTION_38_6();
          v151();
          OUTLINED_FUNCTION_0_57();
          sub_23BB85F08(&qword_27E19B1F8, v152, MEMORY[0x277CE12B0]);
          v153 = v212;
          sub_23BBDD718();
          OUTLINED_FUNCTION_14_28();
          v154(v150, v90);
          v79 = v214;
          OUTLINED_FUNCTION_5_41();
          OUTLINED_FUNCTION_54_4();
          sub_23BB86024();
          v155 = v79[6];
          v156 = v208;
          sub_23BBDC1D8();
          sub_23BA22BD8();
          sub_23BBDA298();
          v89(v156, v237);
          v157 = v153 + v79[7];
          v158 = v207;
          *v157 = v207;
          *(v157 + 8) = v205;
          *(v153 + v79[8]) = 0;
          j__swift_bridgeObjectRetain_0(v158);
          OUTLINED_FUNCTION_48_8();
          if (v147)
          {
            OUTLINED_FUNCTION_11_28(v159);
            sub_23B9B8168();
            v155 = v175;
          }

          OUTLINED_FUNCTION_1_58();
          v160 = OUTLINED_FUNCTION_7_43();
          v161(v160);
          *(v155 + 16) = v156;
          OUTLINED_FUNCTION_23_2();
          v218 = v155;
          OUTLINED_FUNCTION_37_6();
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_23_2();
        v205 = v136;
        v138 = v136 + v137;
        v139 = v214;
        v140 = v136 + v137 + v214[7];
        if ((*(v140 + 8) & 1) == 0 && *(v138 + v214[8]) == 1)
        {
          v207 = *v140;
          j__swift_bridgeObjectRetain_0(v207);
          OUTLINED_FUNCTION_13_31();
          sub_23BBDC1F8();
          OUTLINED_FUNCTION_10_24();
          OUTLINED_FUNCTION_38_6();
          v141();
          OUTLINED_FUNCTION_0_57();
          sub_23BB85F08(&qword_27E19B1F8, v142, MEMORY[0x277CE12B0]);
          OUTLINED_FUNCTION_56_5();
          OUTLINED_FUNCTION_14_28();
          v143(v88, v90);
          OUTLINED_FUNCTION_5_41();
          OUTLINED_FUNCTION_54_4();
          sub_23BB86024();
          v144 = v139[6];
          OUTLINED_FUNCTION_13_31();
          sub_23BBDC1D8();
          sub_23BA22BD8();
          sub_23BBDA298();
          v89(v88, v237);
          v145 = v79 + v139[7];
          *v145 = v207;
          v145[8] = 0;
          *(v79 + v139[8]) = 0;
          OUTLINED_FUNCTION_48_8();
          if (v147)
          {
            OUTLINED_FUNCTION_11_28(v146);
            sub_23B9B8168();
            v144 = v178;
          }

          OUTLINED_FUNCTION_1_58();
          v148 = OUTLINED_FUNCTION_7_43();
          v149(v148);
          *(v144 + 16) = v88;
          v218 = v144;
          OUTLINED_FUNCTION_37_6();
LABEL_36:
          v52 = v226;
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_13_31();
        sub_23BBDC1F8();
        OUTLINED_FUNCTION_10_24();
        OUTLINED_FUNCTION_38_6();
        v164();
        OUTLINED_FUNCTION_0_57();
        sub_23BB85F08(&qword_27E19B1F8, v165, MEMORY[0x277CE12B0]);
        OUTLINED_FUNCTION_56_5();
        OUTLINED_FUNCTION_14_28();
        v166(v88, v90);
        OUTLINED_FUNCTION_5_41();
        OUTLINED_FUNCTION_54_4();
        sub_23BB86024();
        OUTLINED_FUNCTION_13_31();
        sub_23BBDC1D8();
        sub_23BA22BD8();
        sub_23BBDA298();
        v89(v88, v237);
        v167 = v79 + v139[7];
        *v167 = v207;
        v167[8] = 1;
        *(v79 + v139[8]) = 0;
        v168 = v218;
        v170 = *(v218 + 16);
        v169 = *(v218 + 24);

        if (v170 >= v169 >> 1)
        {
          sub_23B9B8168();
          v168 = v177;
        }

        v52 = v226;
        v79 = v205;
        OUTLINED_FUNCTION_1_58();
        v171 = OUTLINED_FUNCTION_7_43();
        v172(v171);
        *(v168 + 16) = v170 + 1;
        v218 = v168;
        OUTLINED_FUNCTION_37_6();
LABEL_37:
        OUTLINED_FUNCTION_4_41();
        sub_23BB85FCC();
        v162 = OUTLINED_FUNCTION_54_4();
        sub_23BB86080(v162, v163);
      }
    }
  }

  sub_23B979910(v20, &qword_27E1A00F0, &qword_23BBFA940);
  v179 = *(v82 + 16);
  if (v179)
  {
    v180 = v214;
    v244 = MEMORY[0x277D84F90];

    sub_23BA92C88();
    v181 = v244;
    OUTLINED_FUNCTION_23_2();
    v183 = v82 + v182;
    v185 = *(v184 + 72);
    do
    {
      OUTLINED_FUNCTION_17_17();
      v186 = v238;
      sub_23BB86024();
      sub_23B97933C(v186, &v245);
      OUTLINED_FUNCTION_16_23();
      sub_23BB86080(v186, v187);
      v244 = v181;
      v188 = *(v181 + 16);
      if (v188 >= *(v181 + 24) >> 1)
      {
        sub_23BA92C88();
        v181 = v244;
      }

      *(v181 + 16) = v188 + 1;
      OUTLINED_FUNCTION_52_6(v181 + 40 * v188);
      v183 += v185;
      --v179;
    }

    while (v179);
    v244 = v181;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F5C8, &qword_23BBF83B0);
    sub_23BB85F50();
    sub_23BBDD718();
    v189 = v206;
    v190 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v191, v192, v193, v190);
    type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0);
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v194, v195, v196, v190);
    sub_23B979510();

    *(v189 + 32) = v247;
    v197 = v246;
    *v189 = v245;
    *(v189 + 16) = v197;
    v198 = v189 + *(v180 + 28);
    *v198 = v82;
    *(v198 + 8) = 0;
    *(v189 + *(v180 + 32)) = 1;
    v199 = v218;
    v200 = *(v218 + 16);
    if (v200 >= *(v218 + 24) >> 1)
    {
      sub_23B9B8168();
      v199 = v201;
    }

    *(v199 + 16) = v200 + 1;
    OUTLINED_FUNCTION_23_2();
    OUTLINED_FUNCTION_4_41();
    sub_23BB85FCC();
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB7F8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v59) = a3;
  v58 = a2;
  v51 = a1;
  v64 = sub_23BBDA288();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BBDC208();
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1986C8, &qword_23BBE5750);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199640, &qword_23BBEDCB0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v50 - v17;
  v19 = sub_23BBDAA98();
  v56 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v55 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618, &unk_23BBE8090) - 8;
  MEMORY[0x28223BE20](v57);
  v22 = &v50 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2D30, &qword_23BC02AB8);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = &v50 - v25;
  __swift_storeEnumTagSinglePayload(a4, 1, 1, v6);
  v53 = *(type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0) + 20);
  v65 = v6;
  __swift_storeEnumTagSinglePayload(a4 + v53, 1, 1, v6);
  v27 = *(type metadata accessor for SubscriptionStoreContentConfiguration.Context.GroupContext(0) + 20);
  v54 = a4;
  v28 = a4 + v27;
  *v28 = v58;
  *(v28 + 8) = v59 & 1;
  sub_23B979510();
  v56[4](v55, v22, v19);
  v29 = MEMORY[0x277CE0150];
  sub_23BB85F08(&qword_27E1A00F8, MEMORY[0x277CE0150], MEMORY[0x277CE0160]);
  sub_23BBDD188();
  v30 = &v22[*(v57 + 52)];
  v31 = *v30;
  v32 = *(v30 + 1);
  v33 = &v26[*(v24 + 52)];
  v58 = v32;
  v59 = v31;
  *v33 = v31;
  *(v33 + 1) = v32;
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00F0, &qword_23BBFA940) + 36);
  sub_23BB85F08(&qword_27E1984F8, v29, MEMORY[0x277CE0170]);
  v56 = (v61 + 4);
  v57 = (v61 + 2);
  v55 = (v61 + 1);
  v61 = (v62 + 8);
  v62 = v19;
  v52 = v18;
  while (1)
  {
    sub_23BBDD4A8();
    if (*&v26[v34] == *v67)
    {
      v35 = 1;
    }

    else
    {
      v36 = sub_23BBDD558();
      (*v57)(v15);
      v36(v67, 0);
      sub_23BBDD4B8();
      v35 = 0;
    }

    v37 = 1;
    __swift_storeEnumTagSinglePayload(v15, v35, 1, v9);
    v38 = v66;
    sub_23B979688();
    if (__swift_getEnumTagSinglePayload(v38, 1, v9) != 1)
    {
      v39 = v60;
      (*v56)(v60, v66, v9);
      v59(v39);
      (*v55)(v39, v9);
      v37 = 0;
    }

    v40 = v37;
    v41 = v65;
    __swift_storeEnumTagSinglePayload(v18, v40, 1, v65);
    if (__swift_getEnumTagSinglePayload(v18, 1, v41) == 1)
    {
      break;
    }

    sub_23BB85FCC();
    v42 = v63;
    sub_23BBDC1D8();
    sub_23B9B7448();
    sub_23BBDA298();
    (*v61)(v42, v64);
    if (v67[0] == 2)
    {
      sub_23BB86080(v8, type metadata accessor for SubscriptionOptionGroupAccessorySubview);
    }

    else
    {
      if (v67[0])
      {
        v43 = v9;
        v44 = v15;
        v45 = v53;
        v46 = v54;
        sub_23B979910(v54 + v53, &qword_27E199640, &qword_23BBEDCB0);
        sub_23BB85FCC();
        v47 = v46 + v45;
        v15 = v44;
        v9 = v43;
        v18 = v52;
      }

      else
      {
        v48 = v54;
        sub_23B979910(v54, &qword_27E199640, &qword_23BBEDCB0);
        sub_23BB85FCC();
        v47 = v48;
      }

      __swift_storeEnumTagSinglePayload(v47, 0, 1, v65);
    }
  }

  sub_23B979910(v51, &qword_27E199618, &unk_23BBE8090);
  return sub_23B979910(v26, &qword_27E1A2D30, &qword_23BC02AB8);
}

uint64_t sub_23BB8009C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618, &unk_23BBE8090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22[-1] - v9;
  sub_23B979510();
  sub_23B9B73EC(a3, v22);
  sub_23BB7E3F0(a2, v22, v11, v12, v13, v14, v15, v16, v21, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10]);
  v18 = v17;
  sub_23B979910(v22, &qword_27E19A528, &unk_23BBEA560);
  sub_23BB7F8C4(v10, v18, 1, a4);
  sub_23B9ED050(a3);
  v19 = sub_23BBDAA98();
  (*(*(v19 - 8) + 8))(a2, v19);
  return sub_23B979910(a1, &qword_27E199618, &unk_23BBE8090);
}

uint64_t sub_23BB801F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v15 = a2;
  v6 = sub_23BBDAA98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618, &unk_23BBE8090);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - v11;
  sub_23B979510();
  (*(v7 + 16))(v9, a1, v6);
  sub_23B9B73EC(v15, v16);
  sub_23BB8009C(v12, v9, v16, a3);
  type metadata accessor for SubscriptionStoreContentConfiguration.Context(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23BB80380@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BACD2D8();
  *a1 = result;
  return result;
}

void SubscriptionOptionGroup.init<>(isIncluded:label:marketingContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_10_0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v42 = v31;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_1();
  v36 = v35 - v34;
  v43[0] = v37;
  v43[1] = v38;
  v44 = 1;

  v40 = v30(v39);
  v28(v40);

  v41 = sub_23B9B4FB8();
  sub_23BB804FC(v43, v36, v22, MEMORY[0x277D84A98], v26, v24, v41, a21, v42, a22);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB804FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a10;
  v19 = type metadata accessor for SubscriptionOptionGroup.ContentStorage(0, &v22);
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a10;
  v20 = type metadata accessor for SubscriptionOptionGroup(0, &v22);
  (*(*(a5 - 8) + 32))(a9 + *(v20 + 68), a2, a5);
  return (*(*(a6 - 8) + 32))(a9 + *(v20 + 72), a3, a6);
}

void SubscriptionOptionGroup.init(content:label:marketingContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_10_0();
  v26 = v25;
  v43 = v28;
  v44 = v27;
  v46 = v29;
  v45 = v30;
  v47 = v31;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_1();
  v35 = v34 - v33;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_1();
  v39 = v38 - v37;
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_53_5();
  v44();
  v41 = swift_storeEnumTagMultiPayload();
  v42 = v45(v41);
  v46(v42);
  sub_23BB804FC(v24, v39, v35, v43, v26, a21, a22, a23, v47, a24);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

uint64_t SubscriptionOptionGroup._identifiedContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 24);
  v12 = v10;
  v5 = _s17_StoreKit_SwiftUI18AccessoryMultiviewVMa_0(255, &v11);
  OUTLINED_FUNCTION_21_18();
  WitnessTable = swift_getWitnessTable();
  *&v11 = v3;
  *(&v11 + 1) = v5;
  *&v12 = v4;
  *(&v12 + 1) = WitnessTable;
  type metadata accessor for GroupView(255, &v11);
  type metadata accessor for LeafView(255, v5, WitnessTable, v7);
  v8 = sub_23BBDACE8();
  OUTLINED_FUNCTION_20_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_28();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  return sub_23BB6BAB8(sub_23BB810AC, v8, a2);
}

uint64_t sub_23BB808FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v69 = a1;
  v82 = a8;
  v85 = a3;
  v86 = a4;
  v87 = a6;
  v88 = a7;
  v14 = _s17_StoreKit_SwiftUI18AccessoryMultiviewVMa_0(255, &v85);
  WitnessTable = swift_getWitnessTable();
  v17 = type metadata accessor for LeafView(0, v14, WitnessTable, v16);
  v67 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v66 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v65 = &v60 - v20;
  MEMORY[0x28223BE20](v21);
  v70 = &v60 - v22;
  v71 = v14;
  v85 = a2;
  v86 = v14;
  v87 = a5;
  v88 = WitnessTable;
  v77 = WitnessTable;
  v23 = type metadata accessor for GroupView(0, &v85);
  v64 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v62 = &v60 - v27;
  v63 = *(a2 - 8);
  MEMORY[0x28223BE20](v28);
  v61 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v68 = &v60 - v31;
  v72 = a2;
  v73 = a3;
  v85 = a2;
  v86 = a3;
  v74 = a4;
  v75 = a6;
  v87 = a4;
  v88 = a5;
  v78 = a5;
  v89 = a6;
  v90 = a7;
  v76 = a7;
  v32 = type metadata accessor for SubscriptionOptionGroup.ContentStorage(0, &v85);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = (&v60 - v34);
  v36 = sub_23BBDACE8();
  v80 = *(v36 - 8);
  v81 = v36;
  v37 = MEMORY[0x28223BE20](v36);
  v79 = &v60 - v38;
  (*(v33 + 16))(v35, v37);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *v35;
    v39 = v35[1];
    v85 = v72;
    v86 = v73;
    v87 = v74;
    v88 = v78;
    v89 = v75;
    v90 = v76;
    v41 = type metadata accessor for SubscriptionOptionGroup(0, &v85);
    v42 = v70;
    sub_23BB81108(v41, v70);
    v43 = v66;
    sub_23BB8136C(v40, v39, v42, v71, v77, v66);
    swift_getWitnessTable();
    v44 = v65;
    sub_23B9D2D88();
    v45 = *(v67 + 8);

    v45(v43, v17);
    sub_23B9D2D88();
    swift_getWitnessTable();
    v46 = v79;
    sub_23BA82E14();

    v45(v43, v17);
    v45(v44, v17);
  }

  else
  {
    v47 = v63;
    v48 = v68;
    v49 = v72;
    (*(v63 + 32))(v68, v35, v72);
    v50 = v61;
    (*(v47 + 16))(v61, v48, v49);
    v85 = v49;
    v86 = v73;
    v51 = v78;
    v87 = v74;
    v88 = v78;
    v89 = v75;
    v90 = v76;
    v52 = type metadata accessor for SubscriptionOptionGroup(0, &v85);
    v53 = v70;
    sub_23BB81108(v52, v70);
    sub_23BB81284(v50, v53, v49, v71, v51, v77, v25);
    swift_getWitnessTable();
    v54 = v62;
    sub_23B9D2D88();
    v55 = *(v64 + 8);
    v55(v25, v23);
    sub_23B9D2D88();
    swift_getWitnessTable();
    v46 = v79;
    sub_23BA82D64();
    v55(v25, v23);
    v55(v54, v23);
    (*(v47 + 8))(v68, v49);
  }

  v56 = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v83 = v56;
  v84 = v57;
  v58 = v81;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v80 + 8))(v46, v58);
}

uint64_t sub_23BB81108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v13, v2 + *(v14 + 68), v10, v11);
  (*(v6 + 16))(v8, v2 + *(a1 + 72), v5);
  return sub_23BB81410(v13, v8, v10, v5, *(a1 + 48), *(a1 + 56), a2);
}

uint64_t sub_23BB81284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v13 = type metadata accessor for GroupView(0, v16);
  (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
  v14 = a7 + *(v13 + 56);
  result = swift_getKeyPath();
  *v14 = result;
  *(v14 + 343) = 0;
  return result;
}

uint64_t sub_23BB8136C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v9 = type metadata accessor for LeafView(0, a4, a5, a4);
  (*(*(a4 - 8) + 32))(&a6[v9[9]], a3, a4);
  v10 = &a6[v9[10]];
  result = swift_getKeyPath();
  *v10 = result;
  v10[343] = 0;
  *&a6[v9[11]] = 0;
  return result;
}

uint64_t sub_23BB81410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = _s17_StoreKit_SwiftUI18AccessoryMultiviewVMa_0(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t SubscriptionOptionGroup<>.init<>(isIncluded:marketingContent:)@<X0>(void (*a1)(double)@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v22[0] = v12;
  v22[1] = v13;
  v23 = 1;
  v19 = 0;
  OUTLINED_FUNCTION_35_8();
  KeyPath = swift_getKeyPath();
  v21 = 0;

  sub_23B979910(v18, &qword_27E19C4E8, &qword_23BBEF6B0);
  v14 = OUTLINED_FUNCTION_35_8();
  v19 = 0;
  a1(v14);

  v15 = sub_23B9B4FB8();
  v16 = sub_23BADB06C();
  return sub_23BB804FC(v22, v18, v11, MEMORY[0x277D84A98], &type metadata for AutomaticSubscriptionOptionGroupLabel, a2, v15, v16, a4, a3);
}

uint64_t sub_23BB8176C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BACD2D8();
  *a1 = result;
  return result;
}

void SubscriptionOptionGroup<>.init(content:marketingContent:)()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v20 = v9;
  v11 = v10;
  v21 = v12;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  v17 = sub_23BADB06C();
  v22[0] = v8;
  v22[1] = &type metadata for AutomaticSubscriptionOptionGroupLabel;
  v22[2] = v6;
  v22[3] = v4;
  v23 = v17;
  KeyPath = v2;
  type metadata accessor for SubscriptionOptionGroup.ContentStorage(0, v22);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_53_5();
  v11();
  swift_storeEnumTagMultiPayload();
  v23 = 0;
  OUTLINED_FUNCTION_35_8();
  KeyPath = swift_getKeyPath();
  v25 = 0;
  sub_23B979910(v22, &qword_27E19C4E8, &qword_23BBEF6B0);
  v19 = OUTLINED_FUNCTION_35_8();
  v23 = 0;
  v20(v19);
  sub_23BB804FC(v0, v22, v16, v8, &type metadata for AutomaticSubscriptionOptionGroupLabel, v6, v4, v17, v21, v2);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

double SubscriptionOptionGroup<>.init<>(isIncluded:)()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  v4 = (v2 + 24);
  *(v2 + 64) = swift_getKeyPath();
  *(v3 + 72) = 0;
  sub_23B979910(v4, &qword_27E19C4E8, &qword_23BBEF6B0);
  result = 0.0;
  *v4 = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  *v3 = v1;
  *(v3 + 8) = v0;
  *(v3 + 16) = 1;
  return result;
}

void SubscriptionOptionGroup<>.init(content:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_23BADB06C();
  v9 = sub_23B9B0108();
  v15[0] = v3;
  v15[1] = &type metadata for AutomaticSubscriptionOptionGroupLabel;
  v15[2] = &type metadata for AutomaticSubscriptionStoreMarketingContent;
  v15[3] = v1;
  v16 = v8;
  KeyPath = v9;
  type metadata accessor for SubscriptionOptionGroup.ContentStorage(0, v15);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v15 - v12;
  v5(v11);
  swift_storeEnumTagMultiPayload();
  v16 = 0;
  OUTLINED_FUNCTION_35_8();
  KeyPath = swift_getKeyPath();
  v18 = 0;
  sub_23B979910(v15, &qword_27E19C4E8, &qword_23BBEF6B0);
  OUTLINED_FUNCTION_35_8();
  v16 = 0;
  sub_23BB804FC(v13, v15, v14, v3, &type metadata for AutomaticSubscriptionOptionGroupLabel, &type metadata for AutomaticSubscriptionStoreMarketingContent, v1, v8, v7, v9);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionOptionGroup<>.init<>(_:isIncluded:marketingContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_10_0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v49 = v32;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_1();
  v36 = v35 - v34;
  v53[0] = v37;
  v53[1] = v38;
  LOBYTE(v54) = 1;

  OUTLINED_FUNCTION_28_10();
  v50[0] = OUTLINED_FUNCTION_25_11(v31, v29, v27, v25, v39, v40, v41, v42, v47, v48);
  v50[1] = v43;
  v51 = v44 & 1;
  v52 = v45;
  v23();

  v46 = sub_23B9B4FB8();
  sub_23BB804FC(v53, v50, v36, MEMORY[0x277D84A98], MEMORY[0x277CE0BD8], a21, v46, MEMORY[0x277CE0BC8], v49, a22);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionOptionGroup<>.init<A>(_:isIncluded:marketingContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_10_0();
  v46 = v22;
  v47 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_1();
  v34 = v33 - v32;
  OUTLINED_FUNCTION_3_2();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_1();
  v51[0] = v38;
  v51[1] = v39;
  LOBYTE(v52) = 1;
  v40 = OUTLINED_FUNCTION_157();
  v41(v40);

  v48[0] = sub_23BBDB678();
  v48[1] = v42;
  v49 = v43 & 1;
  v50 = v44;
  v28();

  (*(v36 + 8))(v30, v24);
  v45 = sub_23B9B4FB8();
  sub_23BB804FC(v51, v48, v34, MEMORY[0x277D84A98], MEMORY[0x277CE0BD8], v26, v45, MEMORY[0x277CE0BC8], v46, v47);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionOptionGroup<>.init(_:content:marketingContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_10_0();
  v53 = v25;
  v27 = v26;
  v52 = v28;
  v51 = v29;
  v50 = v30;
  v32 = v31;
  v54 = v33;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_1();
  v37 = v36 - v35;
  v55[0] = a21;
  v55[1] = MEMORY[0x277CE0BD8];
  v55[2] = a22;
  v55[3] = a23;
  v55[4] = MEMORY[0x277CE0BC8];
  v55[5] = a24;
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_42_7();
  v27();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_28_10();
  v43 = OUTLINED_FUNCTION_25_11(v32, v50, v51, v52, v39, v40, v41, v42, v48, v49);
  v47 = OUTLINED_FUNCTION_29_6(v43, v44, v45, v46);
  v53(v47);
  sub_23BB804FC(v24, v55, v37, a21, MEMORY[0x277CE0BD8], a22, a23, MEMORY[0x277CE0BC8], v54, a24);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionOptionGroup<>.init<A>(_:content:marketingContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_10_0();
  v25 = v24;
  v27 = v26;
  v59 = v29;
  v60 = v28;
  v55 = v30;
  v32 = v31;
  v61 = v33;
  v57 = v34;
  v58 = a23;
  OUTLINED_FUNCTION_1_4();
  v56 = a21;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_3_2();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_1();
  v41 = v40 - v39;
  v62[0] = v42;
  v62[1] = MEMORY[0x277CE0BD8];
  v62[2] = v43;
  v62[3] = v44;
  v62[4] = MEMORY[0x277CE0BC8];
  v62[5] = a22;
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v54 - v47;
  v55(v46);
  swift_storeEnumTagMultiPayload();
  (*(v37 + 16))(v41, v32, v25);
  v49 = sub_23BBDB678();
  v53 = OUTLINED_FUNCTION_29_6(v49, v50, v51, v52);
  v60(v53);
  (*(v37 + 8))(v32, v25);
  sub_23BB804FC(v48, v62, v23, v57, MEMORY[0x277CE0BD8], v27, v56, MEMORY[0x277CE0BC8], v61, a22);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

uint64_t SubscriptionOptionGroup<>.init<>(_:isIncluded:)@<X0>(uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_28_10();
  result = OUTLINED_FUNCTION_25_11(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20);
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = 1;
  *(a4 + 24) = result;
  *(a4 + 32) = v16;
  *(a4 + 40) = v17 & 1;
  *(a4 + 48) = v18;
  return result;
}

void SubscriptionOptionGroup<>.init<A>(_:isIncluded:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_3_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  (*(v11 + 16))(v14 - v13, v7, v15);
  v16 = sub_23BBDB678();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  (*(v11 + 8))(v7, v1);
  *v9 = v5;
  *(v9 + 8) = v3;
  *(v9 + 16) = 1;
  *(v9 + 24) = v16;
  *(v9 + 32) = v18;
  *(v9 + 40) = v20 & 1;
  *(v9 + 48) = v22;
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionOptionGroup<>.init(_:content:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v31 = v6;
  v32 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_23B9B0108();
  v33[0] = v3;
  v33[1] = MEMORY[0x277CE0BD8];
  v33[2] = &type metadata for AutomaticSubscriptionStoreMarketingContent;
  v33[3] = v1;
  v33[4] = MEMORY[0x277CE0BC8];
  v33[5] = v14;
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  v5(v16);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_28_10();
  v23 = OUTLINED_FUNCTION_25_11(v13, v11, v9, v31, v19, v20, v21, v22, v28, v29);
  OUTLINED_FUNCTION_29_6(v23, v24, v25, v26);
  sub_23BB804FC(v18, v33, v27, v3, MEMORY[0x277CE0BD8], &type metadata for AutomaticSubscriptionStoreMarketingContent, v1, MEMORY[0x277CE0BC8], v32, v14);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionOptionGroup<>.init<A>(_:content:)()
{
  OUTLINED_FUNCTION_10_0();
  v29 = v1;
  v30 = v2;
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v31 = v12;
  OUTLINED_FUNCTION_3_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_42_7();
  v16 = sub_23B9B0108();
  v32 = v7;
  v33 = MEMORY[0x277CE0BD8];
  v34 = &type metadata for AutomaticSubscriptionStoreMarketingContent;
  v35 = v3;
  v36 = MEMORY[0x277CE0BC8];
  v37 = v16;
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v28 - v19;
  v9(v18);
  swift_storeEnumTagMultiPayload();
  (*(v14 + 16))(v0, v11, v5);
  v21 = sub_23BBDB678();
  v23 = v22;
  LOBYTE(v9) = v24;
  v26 = v25;
  (*(v14 + 8))(v11, v5);
  v32 = v21;
  v33 = v23;
  LOBYTE(v34) = v9 & 1;
  v35 = v26;
  sub_23BB804FC(v20, &v32, v27, v7, MEMORY[0x277CE0BD8], &type metadata for AutomaticSubscriptionStoreMarketingContent, v29, MEMORY[0x277CE0BC8], v31, v16);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB825B4(uint64_t a1)
{
  v1 = *(a1 + 24);
  v7 = *(a1 + 16);
  v8 = v1;
  v2 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v2;
  result = type metadata accessor for SubscriptionOptionGroup.ContentStorage(319, &v7);
  if (v4 <= 0x3F)
  {
    v11 = 0;
    v7 = result;
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v12 = 0;
      v8 = result;
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        v13 = 0;
        *&v9 = result;
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23BB82678(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = *(v6 - 8);
  if (*(v7 + 64) <= 0x10uLL)
  {
    v8 = 16;
  }

  else
  {
    v8 = *(v7 + 64);
  }

  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v11 = a3[4];
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v10 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = *(v9 + 80);
  v16 = *(*(v5 - 8) + 64);
  v17 = *(v12 + 80);
  if (v14 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = v14;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v8 + v15 + 1;
  v20 = a2 - v18;
  if (a2 <= v18)
  {
    goto LABEL_31;
  }

  v21 = ((v16 + v17 + (v19 & ~v15)) & ~v17) + *(*(v11 - 8) + 64);
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v25 = ((v20 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v25 < 2)
    {
LABEL_31:
      if (v14 > 0xFE)
      {
        v30 = (a1 + v19) & ~v15;
        if (v10 != v18)
        {
          v30 = (v30 + v16 + v17) & ~v17;
          v10 = v13;
          v5 = v11;
        }

        return __swift_getEnumTagSinglePayload(v30, v10, v5);
      }

      else
      {
        v29 = *(a1 + v8);
        if (v29 >= 2)
        {
          return (v29 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_31;
  }

LABEL_21:
  v26 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v26 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v27 = v21;
    }

    else
    {
      v27 = 4;
    }

    switch(v27)
    {
      case 2:
        v28 = *a1;
        break;
      case 3:
        v28 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v28 = *a1;
        break;
      default:
        v28 = *a1;
        break;
    }
  }

  else
  {
    v28 = 0;
  }

  return v18 + (v28 | v26) + 1;
}

void sub_23BB828BC(char *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[2];
  v7 = a4[3];
  v9 = *(*(v8 - 8) + 64);
  if (v9 <= 0x10)
  {
    v10 = 16;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  v13 = a4[4];
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v12 <= v15)
  {
    v16 = *(v14 + 84);
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v16;
  }

  v18 = v10 + 1;
  v19 = *(v11 + 80);
  v20 = v10 + 1 + v19;
  v21 = *(*(v7 - 8) + 64);
  v22 = *(v14 + 80);
  v23 = ((v21 + v22 + (v20 & ~v19)) & ~v22) + *(*(v13 - 8) + 64);
  v24 = 8 * v23;
  v25 = a3 >= v17;
  v26 = a3 - v17;
  if (v26 != 0 && v25)
  {
    if (v23 <= 3)
    {
      v30 = ((v26 + ~(-1 << v24)) >> v24) + 1;
      if (HIWORD(v30))
      {
        v27 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v27 = v31;
        }

        else
        {
          v27 = 0;
        }
      }
    }

    else
    {
      v27 = 1;
    }
  }

  else
  {
    v27 = 0;
  }

  if (v17 < a2)
  {
    v28 = ~v17 + a2;
    if (v23 < 4)
    {
      v29 = (v28 >> v24) + 1;
      if (v23)
      {
        v32 = v28 & ~(-1 << v24);
        bzero(a1, v23);
        if (v23 == 3)
        {
          *a1 = v32;
          a1[2] = BYTE2(v32);
        }

        else if (v23 == 2)
        {
          *a1 = v32;
        }

        else
        {
          *a1 = v28;
        }
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v28;
      v29 = 1;
    }

    switch(v27)
    {
      case 1:
        a1[v23] = v29;
        return;
      case 2:
        *&a1[v23] = v29;
        return;
      case 3:
        goto LABEL_63;
      case 4:
        *&a1[v23] = v29;
        return;
      default:
        return;
    }
  }

  switch(v27)
  {
    case 1:
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *&a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_63:
      __break(1u);
      JUMPOUT(0x23BB82C34);
    case 4:
      *&a1[v23] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (a2)
      {
LABEL_33:
        if (v16 > 0xFE)
        {
          v33 = &a1[v20] & ~v19;
          if (v12 != v17)
          {
            v33 = (v33 + v21 + v22) & ~v22;
            v12 = v15;
            v7 = v13;
          }

          __swift_storeEnumTagSinglePayload(v33, a2, v12, v7);
        }

        else if (a2 > 0xFE)
        {
          if (v18 <= 3)
          {
            v34 = ~(-1 << (8 * v18));
          }

          else
          {
            v34 = -1;
          }

          if (v10 != -1)
          {
            v35 = v34 & (a2 - 255);
            if (v18 <= 3)
            {
              v36 = v10 + 1;
            }

            else
            {
              v36 = 4;
            }

            bzero(a1, v18);
            switch(v36)
            {
              case 2:
                *a1 = v35;
                break;
              case 3:
                *a1 = v35;
                a1[2] = BYTE2(v35);
                break;
              case 4:
                *a1 = v35;
                break;
              default:
                *a1 = v35;
                break;
            }
          }
        }

        else
        {
          a1[v10] = -a2;
        }
      }

      return;
  }
}

uint64_t sub_23BB82C84()
{
  v0 = OUTLINED_FUNCTION_44_6();
  _s17_StoreKit_SwiftUI18AccessoryMultiviewVMa_0(v0, v1);
  OUTLINED_FUNCTION_21_18();
  WitnessTable = swift_getWitnessTable();
  v2 = OUTLINED_FUNCTION_44_6();
  type metadata accessor for GroupView(v2, v3);
  v4 = OUTLINED_FUNCTION_18_1();
  type metadata accessor for LeafView(v4, v5, WitnessTable, v6);
  sub_23BBDACE8();
  OUTLINED_FUNCTION_20_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_28();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_7();
  return swift_getWitnessTable();
}

void sub_23BB82D48(uint64_t a1)
{
  sub_23B975E04();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23B9B5B34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BB82DF0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v9 = ((((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 351) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v15 = *(a1 + v9);
        if (v15)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BB82F40);
      case 4:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

LABEL_22:
        v17 = v15 - 1;
        if (v11)
        {
          v17 = 0;
          LODWORD(v11) = *a1;
        }

        return v8 + (v11 | v17) + 1;
      default:
        break;
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
    return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
  }

  v18 = *a1;
  if (*a1 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

void sub_23BB82F54(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 351) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 351) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 351) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 351) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        return;
      case 2:
        *&a1[v11] = v16;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x23BB8313CLL);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        if ((v8 & 0x80000000) != 0)
        {
          v19 = &a1[v10 + 16] & ~v10;

          __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v18 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            v18 = (a2 - 1);
          }

          *a1 = v18;
        }
      }

      return;
  }
}

void sub_23BB83164(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23B9B5B34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BB83208(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(*(v5 - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (v10 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v5 - 8) + 64) + v11;
  v14 = *(*(v7 - 8) + 64) + 7;
  if (v12 < a2)
  {
    v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 344;
    v16 = a2 - v12;
    v17 = v15 & 0xFFFFFFF8;
    if ((v15 & 0xFFFFFFF8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = v16 + 1;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = *(a1 + v15);
        if (!v21)
        {
          break;
        }

        goto LABEL_25;
      case 2:
        v21 = *(a1 + v15);
        if (v21)
        {
          goto LABEL_25;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BB833C8);
      case 4:
        v21 = *(a1 + v15);
        if (!v21)
        {
          break;
        }

LABEL_25:
        v23 = v21 - 1;
        if (v17)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v12 + (v24 | v23) + 1;
      default:
        break;
    }
  }

  if (v6 == v12)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  a1 = ((a1 + v13) & ~v11);
  if (v9 == v12)
  {
    v6 = v9;
    v5 = v7;
    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v25 = *(((a1 + v14) & 0xFFFFFFFFFFFFFFF8) + 343);
  if (v25 > 1)
  {
    return (v25 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double sub_23BB833DC(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = v14 & ~v13;
  v16 = *(*(v9 - 8) + 64) + 7;
  v17 = ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 344;
  if (v12 >= a3)
  {
    v21 = 0;
  }

  else
  {
    v18 = a3 - v12;
    if (((v16 + v15) & 0xFFFFFFF8) == 0xFFFFFEA8)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (a2 > v12)
  {
    if (((v16 + v15) & 0xFFFFFFF8) == 0xFFFFFEA8)
    {
      v22 = a2 - v12;
    }

    else
    {
      v22 = 1;
    }

    if (((v16 + v15) & 0xFFFFFFF8) != 0xFFFFFEA8)
    {
      v23 = ~v12 + a2;
      bzero(a1, ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 344);
      *v6 = v23;
    }

    switch(v21)
    {
      case 1:
        v6[v17] = v22;
        return result;
      case 2:
        *&v6[v17] = v22;
        return result;
      case 3:
        goto LABEL_46;
      case 4:
        *&v6[v17] = v22;
        return result;
      default:
        return result;
    }
  }

  switch(v21)
  {
    case 1:
      a1[v17] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    case 2:
      *&a1[v17] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    case 3:
LABEL_46:
      __break(1u);
      JUMPOUT(0x23BB83694);
    case 4:
      *&a1[v17] = 0;
      goto LABEL_33;
    default:
LABEL_33:
      if (!a2)
      {
        return result;
      }

LABEL_34:
      if (v8 == v12)
      {
        goto LABEL_37;
      }

      a1 = (&a1[v14] & ~v13);
      if (v11 == v12)
      {
        v8 = v11;
        v7 = v9;
LABEL_37:

        __swift_storeEnumTagSinglePayload(a1, a2, v8, v7);
      }

      else
      {
        v25 = &a1[v16] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          result = 0.0;
          *(v25 + 248) = 0u;
          *(v25 + 232) = 0u;
          *(v25 + 216) = 0u;
          *(v25 + 200) = 0u;
          *(v25 + 184) = 0u;
          *(v25 + 168) = 0u;
          *(v25 + 152) = 0u;
          *(v25 + 136) = 0u;
          *(v25 + 120) = 0u;
          *(v25 + 104) = 0u;
          *(v25 + 88) = 0u;
          *(v25 + 72) = 0u;
          *(v25 + 56) = 0u;
          *(v25 + 40) = 0u;
          *(v25 + 24) = 0u;
          *(v25 + 8) = 0u;
          *(v25 + 328) = 0u;
          *(v25 + 312) = 0u;
          *(v25 + 296) = 0u;
          *(v25 + 280) = 0u;
          *(v25 + 264) = 0u;
          *v25 = (a2 - 255);
        }

        else
        {
          *(v25 + 343) = -a2;
        }
      }

      return result;
  }
}

uint64_t sub_23BB836BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_23BB83894(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a2)
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        return;
      case 2:
        *&v6[v15] = v21;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23BB83B20);
    case 4:
      *&a1[v15] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v9 < v11)
        {
          a1 = (&a1[v14] & ~v13);
          v9 = v11;
          v7 = v8;
        }

        __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
      }

      return;
  }
}

void sub_23BB83B48(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23BB83EE0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_23BB83BC0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_23BB83CF4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x23BB83EB8);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

void sub_23BB83EE0()
{
  if (!qword_27E1A2D28)
  {
    v0 = sub_23B975E04();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1A2D28);
    }
  }
}

uint64_t sub_23BB83F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v46 = *(a1 + 24);
  Description = v46[-1].Description;
  MEMORY[0x28223BE20](a1);
  v48 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for WrappedIntoUnaryVStack(0, v6, *(v5 + 40), v7);
  v51 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199590, &qword_23BBE8050);
  v39 = sub_23BBDA358();
  v50 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v47 = &v38 - v12;
  v13 = *(a1 + 16);
  v14 = sub_23BBDA358();
  v38 = *(v14 - 8);
  v15 = v38;
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v40 = &v38 - v19;
  v20 = *(a1 + 32);
  sub_23BB10FDC(0, v13 == &type metadata for AutomaticSubscriptionOptionGroupLabel, v13, v20);
  v21 = sub_23BB50C38(&qword_27E1996A0, &qword_27E199590, &qword_23BBE8050);
  v56[4] = v20;
  v56[5] = v21;
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88();
  v42 = *(v15 + 8);
  v43 = v15 + 8;
  v42(v17, v14);
  v22 = *(a1 + 52);
  v23 = v48;
  v24 = Description;
  v25 = v46;
  Description[2](v48, v2 + v22, v46);
  v26 = v44;
  (v24)[4](v44, v23, v25);
  LOBYTE(v23) = v25 == &type metadata for AutomaticSubscriptionStoreMarketingContent;
  v27 = v45;
  v28 = swift_getWitnessTable();
  v29 = sub_23BB10FDC(1, v23, v27, v28);
  (*(v51 + 8))(v26, v27, v29);
  v56[2] = v28;
  v56[3] = v21;
  v30 = v39;
  v31 = swift_getWitnessTable();
  v32 = v47;
  sub_23B9D2D88();
  v33 = v50;
  v34 = *(v50 + 8);
  v34(v10, v30);
  v35 = v40;
  (*(v38 + 16))(v17, v40, v14);
  v56[0] = v17;
  (*(v33 + 16))(v10, v32, v30);
  v56[1] = v10;
  v55[0] = v14;
  v55[1] = v30;
  v53 = WitnessTable;
  v54 = v31;
  sub_23BB6739C(v56, 2, v55);
  v34(v32, v30);
  v36 = v42;
  v42(v35, v14);
  v34(v10, v30);
  return v36(v17, v14);
}