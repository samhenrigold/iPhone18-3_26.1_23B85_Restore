uint64_t sub_23BB844B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = sub_23BBDC078();
  OUTLINED_FUNCTION_3_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v15 = v2;
  v16 = v3;
  v17 = v1;
  sub_23B9BE15C(v2);
  sub_23BBDC068();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v11 = *(v6 + 8);
  (v11)(v9, v4);
  OUTLINED_FUNCTION_157();
  sub_23B9D2D88();
  v12 = OUTLINED_FUNCTION_157();
  return v11(v12);
}

uint64_t sub_23BB8462C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_23BB84710(uint64_t a1)
{
  sub_23BBDDBB8();
  sub_23BBDC3C8();
  return sub_23BBDDBF8();
}

uint64_t sub_23BB8477C(uint64_t a1)
{
  sub_23BBDDBB8();
  sub_23BB8470C();
  return sub_23BBDDBF8();
}

uint64_t sub_23BB847D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199598, &qword_23BBE8058);
  v34 = v12;
  v30 = *(a1 + 24);
  v13 = v30;
  v32 = sub_23B9B5FD8();
  v38 = v8;
  v39 = v12;
  v40 = v13;
  v41 = v32;
  v33 = sub_23BBDAEC8();
  v14 = sub_23BBDBE28();
  v35 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v31 = &v28 - v19;
  (*(v9 + 16))(v11, v2 + *(a1 + 36), v8, v18);
  v20 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
  (*(v4 + 16))(v6, v2, a1);
  v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v22 = swift_allocObject();
  v23 = v30;
  *(v22 + 16) = v8;
  *(v22 + 24) = v23;
  (*(v4 + 32))(v22 + v21, v6, a1);
  v24 = sub_23BB85F08(&qword_27E199610, type metadata accessor for SubscriptionOptionGroupAccessorySubview, &unk_23BBFC490);
  sub_23BB78108(v29, sub_23BB86274, v22, v20, v8, v34, v24, v16, v23, v32);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v25 = v31;
  sub_23B9D2D88();
  v26 = *(v35 + 8);
  v26(v16, v14);
  sub_23B9D2D88();
  return (v26)(v25, v14);
}

void sub_23BB84B94(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v36 = a5;
  v37 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618, &unk_23BBE8090);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_23BBDC318();
  v39 = v13;
  v40 = v12;
  KeyPath = swift_getKeyPath();
  v14 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1995B0, &qword_23BBE8060) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1995C8, &qword_23BBE8068) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199630, &qword_23BBE80E0);
  v16 = (type metadata accessor for SubscriptionStoreContentConfiguration.Section(0) - 8);
  v17 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23BBE7F10;
  v19 = v18 + v17;
  type metadata accessor for LeafView(0, a3, a4, v20);
  v41 = sub_23BBDC3A8();
  type metadata accessor for LeafView.ImplicitSectionID(0, a3, a4, v21);
  swift_getWitnessTable();
  sub_23BBDD718();
  v22 = a2;
  v35 = a2;
  v23 = *a2;
  v24 = v22[1];
  v25 = v19 + v16[8];
  v26 = type metadata accessor for SubscriptionOptionSectionAccessorySubview(0);
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v26);
  v27 = type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(0);
  __swift_storeEnumTagSinglePayload(v25 + *(v27 + 20), 1, 1, v26);
  v28 = v43;
  *v19 = v42;
  *(v19 + 16) = v28;
  *(v19 + 32) = v44;
  *(v19 + 40) = v23;
  *(v19 + 48) = v24;
  sub_23B979510();

  sub_23BB7F8C4(v11, v18, 0, v14 + v15);
  v29 = type metadata accessor for SubscriptionStoreContentConfiguration.Context(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v14 + v15, 0, 1, v29);
  *v14 = KeyPath;
  v30 = v36;
  v31 = v39;
  *v36 = v40;
  v30[1] = v31;
  v32 = v30;
  v33 = swift_getKeyPath();
  v34 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199598, &qword_23BBE8058) + 36));
  sub_23B9B7294();
  *v34 = v33;
}

uint64_t sub_23BB84ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = *(a1 - 8);
  v52 = v2;
  v53 = v4;
  v54 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v51 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v6);
  v56 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 32);
  v49 = *(v10 + 16);
  v50 = v11;
  v13 = type metadata accessor for StoreContentAdapter(255, v49, v11, v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1995B0, &qword_23BBE8060);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_23B9B6090();
  v59 = v13;
  v60 = v14;
  v61 = WitnessTable;
  v62 = v16;
  sub_23BBDAEC8();
  v17 = sub_23BBDBE28();
  v42 = *(a1 + 40);
  v18 = v42;
  v48 = MEMORY[0x277CE04D0];
  v58 = swift_getWitnessTable();
  v47 = MEMORY[0x277CE0FB0];
  v45 = v17;
  v43 = swift_getWitnessTable();
  v59 = v7;
  v60 = v17;
  v61 = v18;
  v62 = v43;
  v44 = sub_23BBDAEC8();
  v19 = sub_23BBDBE28();
  v46 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v40 - v24;
  v26 = *(v8 + 16);
  v27 = v52;
  v28 = v52 + *(a1 + 52);
  v41 = v7;
  v26(v56, v28, v7, v23);
  v29 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
  v30 = v53;
  v31 = v51;
  (*(v53 + 16))(v51, v27, a1);
  v32 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v33 = swift_allocObject();
  *&v34 = v49;
  *&v35 = v50;
  *(&v34 + 1) = v7;
  v36 = v42;
  *(&v35 + 1) = v42;
  *(v33 + 16) = v34;
  *(v33 + 32) = v35;
  (*(v30 + 32))(v33 + v32, v31, a1);
  v37 = sub_23BB85F08(&qword_27E199610, type metadata accessor for SubscriptionOptionGroupAccessorySubview, &unk_23BBFC490);
  sub_23BB78108(v56, sub_23BB85ACC, v33, v29, v41, v45, v37, v21, v36, v43);
  v57 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v38 = *(v46 + 8);
  v38(v21, v19);
  sub_23B9D2D88();
  return (v38)(v25, v19);
}

uint64_t sub_23BB8533C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a4;
  v50 = a6;
  v48 = a1;
  v51 = a7;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v46 = type metadata accessor for GroupView(0, &v53);
  v44 = *(v46 - 8);
  v47 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v43 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618, &unk_23BBE8090);
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v34 = a3;
  v35 = a5;
  v14 = type metadata accessor for StoreContentAdapter(0, a3, a5, v13);
  v41 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v36 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1995B0, &qword_23BBE8060);
  v40 = v17;
  WitnessTable = swift_getWitnessTable();
  v39 = WitnessTable;
  v38 = sub_23B9B6090();
  v53 = v14;
  v54 = v17;
  v55 = WitnessTable;
  v56 = v38;
  v37 = sub_23BBDAEC8();
  v19 = sub_23BBDBE28();
  v45 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v34 - v23;
  sub_23BB69DD4(a3, a5, v16);
  sub_23B979510();
  v25 = v43;
  v26 = v44;
  v27 = v46;
  (*(v44 + 16))(v43, a2, v46);
  v28 = (v12 + *(v26 + 80) + ((*(v42 + 80) + 48) & ~*(v42 + 80))) & ~*(v26 + 80);
  v29 = swift_allocObject();
  v30 = v49;
  *(v29 + 2) = v34;
  *(v29 + 3) = v30;
  v31 = v50;
  *(v29 + 4) = v35;
  *(v29 + 5) = v31;
  sub_23B979688();
  (*(v26 + 32))(&v29[v28], v25, v27);
  sub_23BBDBE08();
  v52 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v32 = *(v45 + 8);
  v32(v21, v19);
  sub_23B9D2D88();
  return (v32)(v24, v19);
}

uint64_t sub_23BB857B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v13 = sub_23BBDC318();
  v20 = v14;
  v21 = v13;
  KeyPath = swift_getKeyPath();
  v15 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1995B0, &qword_23BBE8060) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1995C8, &qword_23BBE8068) + 28);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  type metadata accessor for GroupView(0, v22);
  sub_23B9B7294();
  sub_23BB801F4(a1, v22, v15 + v16);
  sub_23B9ED050(v22);
  v17 = type metadata accessor for SubscriptionStoreContentConfiguration.Context(0);
  result = __swift_storeEnumTagSinglePayload(v15 + v16, 0, 1, v17);
  *v15 = KeyPath;
  *a6 = v21;
  a6[1] = v20;
  return result;
}

uint64_t sub_23BB85908()
{
  v3 = *(v0 + 40);
  v21 = *(v0 + 16);
  v2 = v21;
  v22 = *(v0 + 24);
  v20 = v22;
  v23 = v3;
  type metadata accessor for GroupView(0, &v21);
  OUTLINED_FUNCTION_20_1();
  v5 = v0 + ((*(v4 + 80) + 48) & ~*(v4 + 80));
  OUTLINED_FUNCTION_1_4();
  v7 = (*(v6 + 8))(v5, v2);
  v15 = OUTLINED_FUNCTION_36_5(v7, v8, v9, v10, v11, v12, v13, v14, v20);
  (*(v16 + 8))(v5 + v17, v15);
  v18 = v5 + *(v1 + 64);
  if (*(v18 + 343))
  {

    if (*(v18 + 40) >= 6uLL)
    {
      __swift_destroy_boxed_opaque_existential_1((v18 + 16));
    }

    if (*(v18 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1((v18 + 56));
    }

    if (*(v18 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1((v18 + 96));
    }

    if (*(v18 + 160))
    {
      __swift_destroy_boxed_opaque_existential_1((v18 + 136));
    }

    if (*(v18 + 200))
    {
      __swift_destroy_boxed_opaque_existential_1((v18 + 176));
    }

    if (*(v18 + 248) >= 3uLL)
    {
      __swift_destroy_boxed_opaque_existential_1((v18 + 224));
    }

    if (*(v18 + 280) >= 4uLL)
    {

      if (*(v18 + 312))
      {
      }
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23BB85ACC()
{
  OUTLINED_FUNCTION_15_2();
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v12 = v1;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v5 = type metadata accessor for GroupView(0, &v12);
  OUTLINED_FUNCTION_13_0(v5);
  v6 = OUTLINED_FUNCTION_45_6();

  return sub_23BB8533C(v6, v7, v8, v9, v3, v4, v10);
}

uint64_t sub_23BB85B6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618, &unk_23BBE8090) - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v25 = v1;
  v6 = (v4 + 48) & ~v4;
  v26 = *(v0 + 24);
  v24 = v26;
  v27 = v2;
  type metadata accessor for GroupView(0, &v25);
  OUTLINED_FUNCTION_20_1();
  v8 = (v6 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  sub_23BBDAA98();
  OUTLINED_FUNCTION_4_1();
  (*(v9 + 8))(v0 + v6);

  OUTLINED_FUNCTION_1_4();
  v11 = (*(v10 + 8))(v0 + v8, v1);
  v19 = OUTLINED_FUNCTION_36_5(v11, v12, v13, v14, v15, v16, v17, v18, v24);
  (*(v20 + 8))(v0 + v8 + v21, v19);
  v22 = v0 + v8 + *(v2 + 64);
  if (*(v22 + 343))
  {

    if (*(v22 + 40) >= 6uLL)
    {
      __swift_destroy_boxed_opaque_existential_1((v22 + 16));
    }

    if (*(v22 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1((v22 + 56));
    }

    if (*(v22 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1((v22 + 96));
    }

    if (*(v22 + 160))
    {
      __swift_destroy_boxed_opaque_existential_1((v22 + 136));
    }

    if (*(v22 + 200))
    {
      __swift_destroy_boxed_opaque_existential_1((v22 + 176));
    }

    if (*(v22 + 248) >= 3uLL)
    {
      __swift_destroy_boxed_opaque_existential_1((v22 + 224));
    }

    if (*(v22 + 280) >= 4uLL)
    {

      if (*(v22 + 312))
      {
      }
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23BB85DE8()
{
  OUTLINED_FUNCTION_15_2();
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618, &unk_23BBE8090);
  OUTLINED_FUNCTION_25_0(v7);
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v8 = type metadata accessor for GroupView(0, &v10);
  OUTLINED_FUNCTION_13_0(v8);

  return sub_23BB857B8(v0, v3, v4, v5, v6, v2);
}

uint64_t sub_23BB85F08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23BB85F50()
{
  result = qword_27E1A2D38[0];
  if (!qword_27E1A2D38[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5C8, &qword_23BBF83B0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1A2D38);
  }

  return result;
}

uint64_t sub_23BB85FCC()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB86024()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB86080(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BB860D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  type metadata accessor for LeafView(0, v6, *(v4 + 24), a4);
  OUTLINED_FUNCTION_20_1();
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  (*(*(v6 - 8) + 8))(v8 + *(v5 + 44), v6);
  v9 = v8 + *(v5 + 48);
  if (*(v9 + 343))
  {

    if (*(v9 + 40) >= 6uLL)
    {
      __swift_destroy_boxed_opaque_existential_1((v9 + 16));
    }

    if (*(v9 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1((v9 + 56));
    }

    if (*(v9 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1((v9 + 96));
    }

    if (*(v9 + 160))
    {
      __swift_destroy_boxed_opaque_existential_1((v9 + 136));
    }

    if (*(v9 + 200))
    {
      __swift_destroy_boxed_opaque_existential_1((v9 + 176));
    }

    if (*(v9 + 248) >= 3uLL)
    {
      __swift_destroy_boxed_opaque_existential_1((v9 + 224));
    }

    if (*(v9 + 280) >= 4uLL)
    {

      if (*(v9 + 312))
      {
      }
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_23BB86274()
{
  OUTLINED_FUNCTION_15_2();
  v3 = type metadata accessor for LeafView(0, v0, v1, v2);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_23_2();
  v4 = OUTLINED_FUNCTION_45_6();

  sub_23BB84B94(v4, v5, v6, v7, v8);
}

uint64_t sub_23BB86314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23BB86350(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
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
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
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

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_23BB8649C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x23BB866A0);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_23BB866C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199590, &qword_23BBE8050);
  OUTLINED_FUNCTION_18_1();
  sub_23BBDA358();
  type metadata accessor for WrappedIntoUnaryVStack(255, v1, v2, v3);
  sub_23BBDA358();
  OUTLINED_FUNCTION_18_1();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();

  return swift_getWitnessTable();
}

uint64_t sub_23BB86784(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for StoreContentAdapter(255, *a1, a1[2], a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1995B0, &qword_23BBE8060);
  swift_getWitnessTable();
  sub_23B9B6090();
  OUTLINED_FUNCTION_44_6();
  sub_23BBDAEC8();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDBE28();
  OUTLINED_FUNCTION_22_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_23_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_44_6();
  sub_23BBDAEC8();
  sub_23BBDBE28();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23BB86894(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199598, &qword_23BBE8058);
  sub_23B9B5FD8();
  OUTLINED_FUNCTION_44_6();
  sub_23BBDAEC8();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDBE28();
  OUTLINED_FUNCTION_22_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_23_16();
  return swift_getWitnessTable();
}

uint64_t sub_23BB8698C(void *a1)
{
  sub_23BBDC078();
  OUTLINED_FUNCTION_12_6();

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_1_58()
{
  v2 = *(v0 - 160);

  return sub_23BB86080(v2, type metadata accessor for SubscriptionStoreContentConfiguration.Context);
}

uint64_t OUTLINED_FUNCTION_25_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_23BBDB648();
}

uint64_t OUTLINED_FUNCTION_29_6(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 - 128) = result;
  *(v4 - 120) = a2;
  *(v4 - 112) = a3 & 1;
  *(v4 - 104) = a4;
  return result;
}

double OUTLINED_FUNCTION_35_8()
{
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_49_3()
{

  return type metadata accessor for SubscriptionOptionGroup.ContentStorage(0, v0 - 128);
}

__n128 OUTLINED_FUNCTION_52_6@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 128);
  v3 = *(v1 - 112);
  *(a1 + 64) = *(v1 - 96);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void *OUTLINED_FUNCTION_56_5()
{

  return sub_23BBDD718();
}

uint64_t sub_23BB86CB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BBDA8B8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23BB86CE8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E0, &qword_23BC00A10);
  sub_23BBDBF68();
  return v2;
}

uint64_t sub_23BB86D94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8, &qword_23BC00990);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_23BB89A38(v2 + *(a1 + 56), &v14 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23BB89AA8(v11, a2);
  }

  sub_23BBDD5A8();
  v13 = sub_23BBDB338();
  sub_23BBD9978();

  sub_23BBDA918();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23BB86F50(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 60);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_23BB870A4(uint64_t a1)
{
  if ((sub_23BB86F50(a1) & 1) == 0)
  {
    return 0;
  }

  if (sub_23BB86CE8(a1))
  {

    return 0;
  }

  return 1;
}

uint64_t InAppPurchaseButton.init(_:options:onTap:onCompletion:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v19 = type metadata accessor for InAppPurchaseButton(0, a10, a11, a4);
  v20 = (a9 + v19[13]);
  *v20 = sub_23BA0F934(0);
  v20[1] = v21;
  v22 = v19[14];
  *(a9 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8, &qword_23BC00990);
  swift_storeEnumTagMultiPayload();
  v23 = a9 + v19[15];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = sub_23BBDCDB8();
  result = (*(*(v24 - 8) + 32))(a9, a1, v24);
  *(a9 + v19[9]) = a2;
  v26 = (a9 + v19[10]);
  *v26 = a3;
  v26[1] = a4;
  v27 = (a9 + v19[11]);
  *v27 = a5;
  v27[1] = a6;
  v28 = (a9 + v19[12]);
  *v28 = a7;
  v28[1] = a8;
  return result;
}

uint64_t sub_23BB87270@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BBDA8B8();
  *a1 = result & 1;
  return result;
}

uint64_t InAppPurchaseButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  OUTLINED_FUNCTION_7();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  v13 = sub_23BBDBFC8();
  OUTLINED_FUNCTION_7();
  v36 = v14;
  MEMORY[0x28223BE20](v15);
  v34 = &v33 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198310, &unk_23BBE5200);
  v17 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v37 = v18;
  MEMORY[0x28223BE20](v19);
  v33 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v35 = &v33 - v23;
  (*(v6 + 16))(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v22);
  v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v11;
  *(v25 + 24) = v12;
  (*(v6 + 32))(v25 + v24, &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v39 = v11;
  v40 = v12;
  v41 = v3;
  v26 = v34;
  sub_23BBDBFA8();
  sub_23BB870A4(a1);
  OUTLINED_FUNCTION_3_44();
  WitnessTable = swift_getWitnessTable();
  v28 = v33;
  sub_23BBDBBD8();
  (*(v36 + 8))(v26, v13);
  v29 = sub_23BB88904();
  v42 = WitnessTable;
  v43 = v29;
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  v30 = v35;
  sub_23B9D2D88();
  v31 = *(v37 + 8);
  v31(v28, v17);
  sub_23B9D2D88();
  return (v31)(v30, v17);
}

void sub_23BB87624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for InAppPurchaseButton(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  if (sub_23BB86CE8(v7))
  {
  }

  else
  {
    sub_23BBDD328();
    v14 = sub_23BBDD368();
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
    (*(v8 + 16))(v10, a1, v7);
    v15 = (*(v8 + 80) + 48) & ~*(v8 + 80);
    v16 = swift_allocObject();
    *(v16 + 2) = 0;
    *(v16 + 3) = 0;
    *(v16 + 4) = a2;
    *(v16 + 5) = a3;
    (*(v8 + 32))(&v16[v15], v10, v7);
    sub_23BB142C0(0, 0, v13);
    v18 = v17;
    sub_23B9846E8(v13, &qword_27E198320, &unk_23BBEEBC0);
    sub_23BB86D3C(v18, v7);
  }
}

uint64_t sub_23BB8784C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InAppPurchaseButton(0, *(v5 + 16), *(v5 + 24), a4);
  OUTLINED_FUNCTION_19_0();
  v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_12_1();
  (*(v8 + 8))(v7);

  OUTLINED_FUNCTION_11_29();
  OUTLINED_FUNCTION_11_29();
  OUTLINED_FUNCTION_11_29();

  v9 = v7 + *(v4 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8, &qword_23BC00990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBDB328();
    OUTLINED_FUNCTION_12_1();
    (*(v10 + 8))(v9);
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_27();

  return swift_deallocObject();
}

void sub_23BB879CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for InAppPurchaseButton(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_23BB87624(v9, v5, v6, v7);
}

uint64_t sub_23BB87A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D288, &qword_23BBF5E30);
  v6[6] = swift_task_alloc();
  type metadata accessor for PurchaseAction(0);
  v6[7] = swift_task_alloc();
  v7 = sub_23BBDC9B8();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BB87B7C, 0, 0);
}

uint64_t sub_23BB87B7C()
{
  OUTLINED_FUNCTION_3_13();
  v1 = v0[2];
  v3 = type metadata accessor for InAppPurchaseButton(0, v0[3], v0[4], v2);
  v0[11] = v3;
  v6 = (*(v1 + *(v3 + 40)) + **(v1 + *(v3 + 40)));
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_23BB87C7C;

  return v6();
}

uint64_t sub_23BB87C7C()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23BB87D60()
{
  OUTLINED_FUNCTION_3_13();
  sub_23BBDD308();
  *(v0 + 104) = sub_23BBDD2F8();
  v2 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BB87DF0, v2, v1);
}

uint64_t sub_23BB87DF0()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  sub_23BB86D94(v1, v2);
  v3 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23BB87E6C()
{
  OUTLINED_FUNCTION_3_13();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_23BB87F1C;

  return PurchaseAction.callAsFunction(_:options:)();
}

uint64_t sub_23BB87F1C()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v3 = *(v2 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_23BB89664(v3);
  if (v0)
  {
    v7 = sub_23BB88304;
  }

  else
  {
    v7 = sub_23BB8803C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23BB8803C()
{
  v1 = *(v0[2] + *(v0[11] + 44));
  (*(v0[9] + 16))(v0[6], v0[10], v0[8]);
  swift_storeEnumTagMultiPayload();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_13_32(v2);

  return v5(v3);
}

uint64_t sub_23BB88168()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;

  sub_23B9846E8(v2, &qword_27E19D288, &qword_23BBF5E30);
  v5 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23BB88278()
{
  OUTLINED_FUNCTION_4_11();
  v1 = (*(v0[9] + 8))(v0[10], v0[8]);
  OUTLINED_FUNCTION_16_24(v1, v2, v3, v4);

  OUTLINED_FUNCTION_1_16();

  return v5();
}

uint64_t sub_23BB88304()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 120);
  v2 = *(*(v0 + 16) + *(*(v0 + 88) + 44));
  **(v0 + 48) = v1;
  swift_storeEnumTagMultiPayload();
  v3 = v1;
  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_13_32(v4);

  return v7(v5);
}

uint64_t sub_23BB88418()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;

  sub_23B9846E8(v2, &qword_27E19D288, &qword_23BBF5E30);
  v5 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23BB88528()
{
  OUTLINED_FUNCTION_4_11();

  OUTLINED_FUNCTION_16_24(v1, v2, v3, v4);

  OUTLINED_FUNCTION_1_16();

  return v5();
}

double sub_23BB885A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for InAppPurchaseButton(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  sub_23BBDD328();
  v14 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  (*(v8 + 16))(v10, a1, v7);
  sub_23BBDD308();
  v15 = sub_23BBDD2F8();
  v16 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 2) = v15;
  *(v17 + 3) = v18;
  *(v17 + 4) = a2;
  *(v17 + 5) = a3;
  (*(v8 + 32))(&v17[v16], v10, v7);
  sub_23BB5D2B8();

  return result;
}

uint64_t sub_23BB88788(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v13 = type metadata accessor for InAppPurchaseButton(0, v10, v11, v12);
  v14 = *(a1 + *(v13 + 48));
  v15 = sub_23BB86CE8(v13);
  if (v15)
  {
  }

  v14(v15 != 0);
  sub_23B9D2D88();
  v16 = *(v4 + 8);
  v16(v6, a2);
  sub_23B9D2D88();
  return (v16)(v9, a2);
}

unint64_t sub_23BB88904()
{
  result = qword_27E198308;
  if (!qword_27E198308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198310, &unk_23BBE5200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198308);
  }

  return result;
}

uint64_t InAppPurchaseButton<>.init(_:titleKey:options:onTap:onCompletion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();
  v20 = v19;
  (*(v21 + 16))(a9, a1, v18);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = a4;
  *(v22 + 40) = a5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2E40, &qword_23BC02CA8);
  v24 = v23[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B2F0, &qword_23BC02CB0);
  sub_23BBDBF58();
  (*(v20 + 8))(a1, v18);
  *(a9 + v24) = v33;
  v25 = v23[14];
  *(a9 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8, &qword_23BC00990);
  swift_storeEnumTagMultiPayload();
  v26 = a9 + v23[15];
  result = swift_getKeyPath();
  *v26 = result;
  *(v26 + 8) = 0;
  *(a9 + v23[9]) = a6;
  v28 = (a9 + v23[10]);
  *v28 = a7;
  v28[1] = a8;
  v29 = (a9 + v23[11]);
  *v29 = a10;
  v29[1] = a11;
  v30 = (a9 + v23[12]);
  *v30 = sub_23BB88C38;
  v30[1] = v22;
  return result;
}

uint64_t sub_23BB88B60@<X0>(uint64_t a5@<X8>)
{

  result = sub_23BBDB648();
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8 & 1;
  *(a5 + 24) = v9;
  return result;
}

uint64_t sub_23BB88BF8()
{

  return swift_deallocObject();
}

uint64_t InAppPurchaseButton<>.init<A>(_:title:options:onTap:onCompletion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v36 = a6;
  v37 = a7;
  v34 = a4;
  v35 = a5;
  v32 = a1;
  v33 = a3;
  v31 = a2;
  v14 = *(a8 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = sub_23BBDCDB8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(a9, a1, v16);
  (*(v14 + 16))(&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a8);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a8;
  *(v19 + 24) = a10;
  (*(v14 + 32))(v19 + v18, &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2E40, &qword_23BC02CA8);
  v21 = v20[13];
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B2F0, &qword_23BC02CB0);
  sub_23BBDBF58();
  (*(v14 + 8))(v31, a8);
  (*(v17 + 8))(v32, v16);
  *(a9 + v21) = v39;
  v22 = v20[14];
  *(a9 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8, &qword_23BC00990);
  swift_storeEnumTagMultiPayload();
  v23 = a9 + v20[15];
  result = swift_getKeyPath();
  *v23 = result;
  *(v23 + 8) = 0;
  v25 = v34;
  *(a9 + v20[9]) = v33;
  v26 = (a9 + v20[10]);
  v28 = v35;
  v27 = v36;
  *v26 = v25;
  v26[1] = v28;
  v29 = (a9 + v20[11]);
  *v29 = v27;
  v29[1] = v37;
  v30 = (a9 + v20[12]);
  *v30 = sub_23BB89048;
  v30[1] = v19;
  return result;
}

uint64_t sub_23BB88EF4@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = sub_23BBDB678();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t sub_23BB88FC8()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

void sub_23BB890C8(uint64_t a1)
{
  sub_23BBDCDB8();
  if (v1 <= 0x3F)
  {
    sub_23BB89390(319);
    if (v2 <= 0x3F)
    {
      sub_23B975E04();
      if (v3 <= 0x3F)
      {
        sub_23BB8944C(319);
        if (v4 <= 0x3F)
        {
          sub_23BB894B0(319);
          if (v5 <= 0x3F)
          {
            sub_23B9D2354();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23BB891C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBDCDB8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A2E48, qword_23BC02D10);
    v8 = a1 + *(a3 + 56);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 36));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_23BB892B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23BBDCDB8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A2E48, qword_23BC02D10);
    v10 = a1 + *(a4 + 56);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_23BB89390(uint64_t a1)
{
  if (!qword_27E1A2ED0[0])
  {
    sub_23BBDC9A8();
    sub_23BB893F4();
    v1 = sub_23BBDD3D8();
    if (!v2)
    {
      atomic_store(v1, qword_27E1A2ED0);
    }
  }
}

unint64_t sub_23BB893F4()
{
  result = qword_27E1996E8;
  if (!qword_27E1996E8)
  {
    sub_23BBDC9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1996E8);
  }

  return result;
}

void sub_23BB8944C(uint64_t a1)
{
  if (!qword_27E19B3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B2F0, &qword_23BC02CB0);
    v1 = sub_23BBDBF98();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19B3C8);
    }
  }
}

void sub_23BB894B0(uint64_t a1)
{
  if (!qword_27E19B3C0)
  {
    type metadata accessor for PurchaseAction(255);
    v1 = sub_23BBD9C18();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19B3C0);
    }
  }
}

uint64_t sub_23BB89508(void *a1)
{
  sub_23BBDBFC8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198310, &unk_23BBE5200);
  sub_23BBDA358();
  OUTLINED_FUNCTION_3_44();
  swift_getWitnessTable();
  sub_23BB88904();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t sub_23BB89590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14_29(a1, a2, a3, a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v6 = OUTLINED_FUNCTION_6_35(v5);

  return sub_23BB87A50(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_23BB89664(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BB896C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_23BBDD308();
  v6[5] = sub_23BBDD2F8();
  v8 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BB8975C, v8, v7);
}

uint64_t sub_23BB8975C()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  v4 = type metadata accessor for InAppPurchaseButton(0, v2, v1, v3);
  sub_23BB86D3C(0, v4);
  OUTLINED_FUNCTION_1_16();

  return v5();
}

uint64_t objectdestroy_12Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InAppPurchaseButton(0, *(v5 + 32), *(v5 + 40), a4);
  OUTLINED_FUNCTION_19_0();
  v7 = *(v6 + 80);
  swift_unknownObjectRelease();
  v8 = v5 + ((v7 + 48) & ~v7);
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_12_1();
  (*(v9 + 8))(v8);

  OUTLINED_FUNCTION_11_29();
  OUTLINED_FUNCTION_11_29();
  OUTLINED_FUNCTION_11_29();

  v10 = v8 + *(v4 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8, &qword_23BC00990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBDB328();
    OUTLINED_FUNCTION_12_1();
    (*(v11 + 8))(v10);
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_27();

  return swift_deallocObject();
}

uint64_t sub_23BB89964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14_29(a1, a2, a3, a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v6 = OUTLINED_FUNCTION_6_35(v5);

  return sub_23BB896C0(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_23BB89A38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8, &qword_23BC00990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB89AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double OUTLINED_FUNCTION_11_29()
{

  return result;
}

double OUTLINED_FUNCTION_16_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[2];

  return sub_23BB885A4(v8, v6, v7, a4);
}

uint64_t sub_23BB89BF8@<X0>(char a1@<W0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>, uint64_t a5@<X4>)
{
  a2();
  result = type metadata accessor for StructuredScrollViewBottomInset(0, a3, a5, v9);
  *(a4 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_23BB89C70(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_22;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_22;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        switch(v9)
        {
          case 2:
            LODWORD(v9) = *a1;
            break;
          case 3:
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v9) = *a1;
            break;
          default:
            LODWORD(v9) = *a1;
            break;
        }
      }

      v16 = v7 + (v9 | v13);
      return (v16 + 1);
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_22:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  v16 = (v15 + 2147483646) & 0x7FFFFFFF;
  return (v16 + 1);
}

void sub_23BB89DEC(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v9 != -1)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v9 + 1);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        return;
      case 2:
        *&a1[v10] = v16;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v16;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23BB8A018);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v7 < 0xFE)
        {
          a1[v9] = a2 + 1;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}

uint64_t sub_23BB8A084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2FF0, &unk_23BC02E70);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_23BBDC268();
  sub_23BBDBD18();
  sub_23BBDBD58();

  sub_23BBD9C38();

  if (*(v2 + *(a1 + 36)))
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  sub_23B97A69C(v7, a2, &qword_27E1A2FF0, &unk_23BC02E70);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2FE0, &qword_23BC02E68);
  *(a2 + *(result + 36)) = v8;
  return result;
}

uint64_t sub_23BB8A1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  sub_23BBDA538();
  OUTLINED_FUNCTION_7();
  v68 = v6;
  v69 = v5;
  MEMORY[0x28223BE20](v5);
  v67 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v59 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v60 = v15;
  MEMORY[0x28223BE20](v16);
  v58 = &v56 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2F58, &qword_23BC02E30);
  v18 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v65 = v19;
  MEMORY[0x28223BE20](v20);
  v71 = &v56 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2F60, &qword_23BC02E38);
  v61 = v18;
  v62 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v66 = v22;
  MEMORY[0x28223BE20](v23);
  v63 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v64 = &v56 - v27;
  v57 = a1;
  v28 = *(a1 + 24);
  MEMORY[0x23EEB43C0](v26);
  v29 = sub_23BB8AA68();
  v82 = v28;
  v83 = v29;
  WitnessTable = swift_getWitnessTable();
  sub_23B9C2924(v30);
  v31 = v58;
  sub_23BBDBB18();
  (*(v59 + 8))(v13, v9);
  v72 = v8;
  v73 = v28;
  v74 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2F70, &qword_23BC02E40);
  v80 = WitnessTable;
  v81 = MEMORY[0x277CDFC60];
  v32 = swift_getWitnessTable();
  sub_23BB8AAC8();
  sub_23B9C2924(v33);
  sub_23BBDB6B8();
  (*(v60 + 8))(v31, v14);
  if ((sub_23BBDC2A8() & 1) != 0 || *(v3 + *(v57 + 36)) != 1)
  {
    v79 = MEMORY[0x277D84F90];
    sub_23BB8AC90(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2FB8, &qword_23BC02E60);
    sub_23B97B518(&qword_27E1A2FC0, &qword_27E1A2FB8, &qword_23BC02E60, MEMORY[0x277D83970]);
    v35 = v67;
    v36 = v69;
    sub_23BBDD6C8();
  }

  else
  {
    v35 = v67;
    sub_23BBDA528();
    v36 = v69;
  }

  OUTLINED_FUNCTION_1_59();
  v41 = sub_23B97B518(v37, v38, v39, v40);
  v77 = v32;
  v78 = v41;
  v42 = v61;
  v43 = swift_getWitnessTable();
  sub_23BB8ACE8();
  OUTLINED_FUNCTION_0_2();
  v44 = v63;
  v45 = v71;
  sub_23BBDB7F8();
  (*(v68 + 8))(v35, v36);
  (*(v65 + 8))(v45, v42);
  OUTLINED_FUNCTION_2_45();
  v50 = sub_23B97B518(v46, v47, v48, v49);
  v75 = v43;
  v76 = v50;
  v51 = v62;
  swift_getWitnessTable();
  v52 = v64;
  sub_23B9D2D88();
  v53 = *(v66 + 8);
  v53(v44, v51);
  sub_23B9D2D88();
  return (v53)(v52, v51);
}

uint64_t sub_23BB8A888@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2F88, &qword_23BC02E48);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  if (sub_23BBDC2A8())
  {

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  }

  else
  {
    v11 = type metadata accessor for StructuredScrollViewBottomInset(0, a1, a2, v9);
    sub_23BB8A084(v11, v8);
    sub_23BB8ACE8();
    sub_23B97B518(&qword_27E1A2FE8, &qword_27E1A2FE0, &qword_23BC02E68, MEMORY[0x277CE01D8]);
    *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2FA8, &qword_23BC02E58) + 56)] = 256;
    sub_23B97B518(&qword_27E1A2FA0, &qword_27E1A2FA8, &qword_23BC02E58, MEMORY[0x277CDF3A0]);
    v12 = sub_23BBDA388();
    v13 = sub_23BBDB398();
    v14 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2F98, &qword_23BC02E50) + 36)];
    *v14 = v12;
    v14[8] = v13;
    v8[*(v6 + 36)] = 0;
    sub_23B97A69C(v8, a3, &qword_27E1A2F88, &qword_23BC02E48);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
  }
}

unint64_t sub_23BB8AA68()
{
  result = qword_27E1A2F68;
  if (!qword_27E1A2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2F68);
  }

  return result;
}

unint64_t sub_23BB8AAC8()
{
  result = qword_27E1A2F78;
  if (!qword_27E1A2F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2F70, &qword_23BC02E40);
    sub_23BB8AB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2F78);
  }

  return result;
}

unint64_t sub_23BB8AB4C()
{
  result = qword_27E1A2F80;
  if (!qword_27E1A2F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2F88, &qword_23BC02E48);
    sub_23BB8ABD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2F80);
  }

  return result;
}

unint64_t sub_23BB8ABD8()
{
  result = qword_27E1A2F90;
  if (!qword_27E1A2F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2F98, &qword_23BC02E50);
    sub_23B97B518(&qword_27E1A2FA0, &qword_27E1A2FA8, &qword_23BC02E58, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2F90);
  }

  return result;
}

unint64_t sub_23BB8AC90(double a1)
{
  result = qword_27E1A2FB0;
  if (!qword_27E1A2FB0)
  {
    sub_23BBDA538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2FB0);
  }

  return result;
}

unint64_t sub_23BB8ACE8()
{
  result = qword_27E1A2FD0;
  if (!qword_27E1A2FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2FD0);
  }

  return result;
}

uint64_t sub_23BB8AD4C(void *a1)
{
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2F58, &qword_23BC02E30);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2F60, &qword_23BC02E38);
  sub_23BBDA358();
  sub_23BB8AA68();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_59();
  sub_23B97B518(v1, &qword_27E1A2F58, &qword_23BC02E30, v2);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_45();
  sub_23B97B518(v3, &qword_27E1A2F60, &qword_23BC02E38, v4);
  return swift_getWitnessTable();
}

uint64_t sub_23BB8AEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDC318();
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2FF8, &qword_23BC02EF0);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3000, &qword_23BC02EF8);
  v10 = (a2 + *(result + 36));
  *v10 = sub_23BB8AF98;
  v10[1] = 0;
  v10[2] = v5;
  v10[3] = v7;
  return result;
}

uint64_t sub_23BB8AF98@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t a1)@<X8>)
{
  v4 = sub_23BBD9E98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  result = (*(v5 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *a2 = sub_23BB8B180;
  a2[1] = v9;
  return result;
}

void sub_23BB8B0C4(uint64_t a1, double a2)
{
  sub_23BBD9E68();
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
}

uint64_t sub_23BB8B0F8()
{
  v1 = sub_23BBD9E98();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_23BB8B180(uint64_t a1)
{
  sub_23BBD9E98();

  sub_23BB8B0C4(a1, v2);
}

unint64_t sub_23BB8B1F4()
{
  result = qword_27E1A3008;
  if (!qword_27E1A3008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3000, &qword_23BC02EF8);
    sub_23B97B518(&qword_27E1A3010, &qword_27E1A2FF8, &qword_23BC02EF0, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E199AE8, &qword_27E199AF0, &qword_23BBE89E0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3008);
  }

  return result;
}

void *sub_23BB8B308()
{
  sub_23BA24088();

  return sub_23BBDA958();
}

uint64_t sub_23BB8B350@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  memset(v9, 0, sizeof(v9));
  v10 = -1;
  v7 = sub_23BACC70C();
  return sub_23BB8B3C4(v9, a2, MEMORY[0x277CE0B08], a3, v7, x8_0);
}

uint64_t sub_23BB8B3C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_1_4();
  (*(v12 + 32))(a6);
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v13 = *(type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier(0, v16) + 52);
  sub_23BBDD648();
  OUTLINED_FUNCTION_1_4();
  return (*(v14 + 32))(a6 + v13, a1);
}

uint64_t sub_23BB8B490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v28 = a1;
  v29 = a3;
  OUTLINED_FUNCTION_3_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_46();
  swift_getWitnessTable();
  v26 = sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BD18, &qword_23BBEE1A0);
  v11 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v27 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  swift_getKeyPath();
  (*(v7 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v19 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v20 = swift_allocObject();
  v21 = *(a2 + 32);
  *(v20 + 16) = *(a2 + 16);
  *(v20 + 32) = v21;
  (*(v7 + 32))(v20 + v19, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  OUTLINED_FUNCTION_11_1();
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB9B8();

  v23 = sub_23BB8C374();
  v30 = WitnessTable;
  v31 = v23;
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v24 = *(v27 + 8);
  v24(v15, v11);
  sub_23B9D2D88();
  return (v24)(v18, v11);
}

uint64_t sub_23BB8B7AC(uint64_t a1)
{
  sub_23BA24CBC(a1, v3);
  sub_23BA24088();
  sub_23BBDA968();
  return sub_23BADA8C4(a1);
}

uint64_t sub_23BB8B800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_23BBDD648();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  *(&v21 + 1) = a3;
  v22 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  sub_23BB8CCFC(&v20, a1, &qword_27E19FCC8, &qword_23BBFDE00);
  *&v20 = a3;
  *(&v20 + 1) = a4;
  *&v21 = a5;
  *(&v21 + 1) = a6;
  v17 = type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier(0, &v20);
  (*(v13 + 16))(v15, a2 + *(v17 + 52), v12);
  if (__swift_getEnumTagSinglePayload(v15, 1, a4) == 1)
  {
    (*(v13 + 8))(v15, v12);
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  else
  {
    *(&v21 + 1) = a4;
    v22 = a6;
    v18 = __swift_allocate_boxed_opaque_existential_1(&v20);
    (*(*(a4 - 8) + 32))(v18, v15, a4);
  }

  return sub_23BB8CCFC(&v20, a1 + 80, &qword_27E197E28, &unk_23BC030E0);
}

BOOL sub_23BB8BA00()
{
  sub_23BB8CF48(v0, v3, &qword_27E19FCC8, &qword_23BBFDE00);
  v1 = v4 == 0;
  sub_23BA0E8F8(v3, &qword_27E19FCC8, &qword_23BBFDE00);
  return v1;
}

uint64_t sub_23BB8BA80@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E197828 != -1)
  {
    swift_once();
  }

  return sub_23BA24CBC(&unk_27E1A3018, a1);
}

double View.automaticSubscriptionStorePickerItemBackgroundInternal<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a6;
  v21 = a5;
  v10 = sub_23BBDD648();
  OUTLINED_FUNCTION_3_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  swift_getKeyPath();
  (*(v12 + 16))(v15, a1, v10);
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  v18 = v21;
  *(v17 + 4) = a4;
  *(v17 + 5) = v18;
  (*(v12 + 32))(&v17[v16], v15, v10);
  sub_23BBDB9B8();

  return result;
}

uint64_t sub_23BB8BC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_23BBDD648();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-1] - v12;
  v14 = *(a4 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v23[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a2, v10, v16);
  if (__swift_getEnumTagSinglePayload(v13, 1, a4) == 1)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v20 = *(v14 + 32);
  v20(v18, v13, a4);
  v23[3] = a4;
  v23[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  v20(boxed_opaque_existential_1, v18, a4);
  return sub_23BB8CCFC(v23, a1 + 40, &qword_27E19FCC8, &qword_23BBFDE00);
}

uint64_t sub_23BB8BE80()
{
  v1 = *(v0 + 24);
  v2 = *(sub_23BBDD648() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v1))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v4 + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_23BB8BF64()
{
  sub_23BBDD648();
  v0 = OUTLINED_FUNCTION_4_42();

  return sub_23BB8BC9C(v0, v1, v2, v3, v4, v5);
}

void View.subscriptionStorePickerOptionStrokeInternal<A>(style:lineWidth:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v20 = a6;
  OUTLINED_FUNCTION_3_2();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  swift_getKeyPath();
  (*(v14 + 16))(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v18 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  (*(v14 + 32))(&v19[v18], &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  *&v19[(v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8] = a7;
  sub_23BBDB9B8();
}

uint64_t sub_23BB8C174(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[3] = a5;
  v13[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
  *&v13[5] = a3;
  return sub_23BB8CCFC(v13, a1 + 120, &qword_27E19FCE8, &qword_23BBFA088);
}

uint64_t sub_23BB8C214()
{
  OUTLINED_FUNCTION_1_4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_23BB8C29C()
{
  OUTLINED_FUNCTION_3_2();
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  return sub_23BB8C174(v4, v0 + v2, *(v0 + ((*(v3 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)), v5, v6, v7, v8);
}

uint64_t sub_23BB8C310()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BD18, &qword_23BBEE1A0);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  sub_23BB8C374();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

unint64_t sub_23BB8C374()
{
  result = qword_27E19BD10;
  if (!qword_27E19BD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BD18, &qword_23BBEE1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BD10);
  }

  return result;
}

uint64_t sub_23BB8C3E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 168))
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

uint64_t sub_23BB8C434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_23BB8C4C0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_23BBDD648();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BB8C54C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = *(*(v6 - 8) + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = *(*(v8 - 8) + 64);
  }

  else
  {
    v14 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(*(v6 - 8) + 64) + v13;
  v16 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v17 = v14 + (v15 & ~v13);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v20 = ((v16 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v20 < 2)
    {
LABEL_30:
      if (v12)
      {
LABEL_31:
        if (v7 >= v11)
        {

          return __swift_getEnumTagSinglePayload(a1, v7, v6);
        }

        else
        {
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload((a1 + v15) & ~v13, v10, v8);
          if (EnumTagSinglePayload >= 2)
          {
            return EnumTagSinglePayload - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_30;
  }

LABEL_20:
  v21 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v21 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v22 = v17;
    }

    else
    {
      v22 = 4;
    }

    switch(v22)
    {
      case 2:
        v23 = *a1;
        break;
      case 3:
        v23 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v23 = *a1;
        break;
      default:
        v23 = *a1;
        break;
    }
  }

  else
  {
    v23 = 0;
  }

  return v12 + (v23 | v21) + 1;
}

void sub_23BB8C768(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 16);
  v9 = *(*(v8 - 8) + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = *(*(v8 - 8) + 84);
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = *(*(v8 - 8) + 64) + v15;
  v17 = v16 & ~v15;
  v18 = *(*(v10 - 8) + 64);
  if (!v12)
  {
    ++v18;
  }

  v19 = v17 + v18;
  v20 = 8 * (v17 + v18);
  v21 = a3 >= v14;
  v22 = a3 - v14;
  if (v22 != 0 && v21)
  {
    if (v19 <= 3)
    {
      v23 = ((v22 + ~(-1 << v20)) >> v20) + 1;
      if (HIWORD(v23))
      {
        v7 = 4;
      }

      else
      {
        if (v23 < 0x100)
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }

        if (v23 >= 2)
        {
          v7 = v24;
        }

        else
        {
          v7 = 0;
        }
      }
    }

    else
    {
      v7 = 1;
    }
  }

  if (v14 < a2)
  {
    v25 = ~v14 + a2;
    if (v19 < 4)
    {
      v26 = (v25 >> v20) + 1;
      if (v19)
      {
        v27 = v25 & ~(-1 << v20);
        bzero(a1, v17 + v18);
        if (v19 == 3)
        {
          *a1 = v27;
          a1[2] = BYTE2(v27);
        }

        else if (v19 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v25;
        }
      }
    }

    else
    {
      bzero(a1, v17 + v18);
      *a1 = v25;
      v26 = 1;
    }

    switch(v7)
    {
      case 1:
        a1[v19] = v26;
        return;
      case 2:
        *&a1[v19] = v26;
        return;
      case 3:
        goto LABEL_60;
      case 4:
        *&a1[v19] = v26;
        return;
      default:
        return;
    }
  }

  switch(v7)
  {
    case 1:
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_60:
      __break(1u);
      JUMPOUT(0x23BB8CA98);
    case 4:
      *&a1[v19] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v9 >= v13)
      {
        v32 = a1;
      }

      else
      {
        v28 = (&a1[v16] & ~v15);
        if (v13 < a2)
        {
          if (v18 <= 3)
          {
            v29 = ~(-1 << (8 * v18));
          }

          else
          {
            v29 = -1;
          }

          if (v18)
          {
            v30 = v29 & (~v13 + a2);
            if (v18 <= 3)
            {
              v31 = v18;
            }

            else
            {
              v31 = 4;
            }

            bzero(v28, v18);
            switch(v31)
            {
              case 2:
                *v28 = v30;
                break;
              case 3:
                *v28 = v30;
                v28[2] = BYTE2(v30);
                break;
              case 4:
                *v28 = v30;
                break;
              default:
                *v28 = v30;
                break;
            }
          }

          return;
        }

        a2 = (a2 + 1);
        v32 = v28;
        v9 = v12;
        v8 = v10;
      }

      __swift_storeEnumTagSinglePayload(v32, a2, v9, v8);
      return;
  }
}

uint64_t sub_23BB8CB2C()
{
  v2 = *(v0 + 40);
  v10 = *(v0 + 16);
  v1 = v10;
  v11 = *(v0 + 24);
  v9 = v11;
  v12 = v2;
  v3 = (type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier(0, &v10) - 8);
  v4 = v0 + ((*(*v3 + 80) + 48) & ~*(*v3 + 80));
  OUTLINED_FUNCTION_1_4();
  (*(v5 + 8))(v4, v1);
  v6 = v3[15];
  if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v9))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v7 + 8))(v4 + v6, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_23BB8CC6C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v11[0] = v0[2];
  v11[1] = v1;
  v11[2] = v2;
  v11[3] = v3;
  type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier(0, v11);
  v4 = OUTLINED_FUNCTION_4_42();

  return sub_23BB8B800(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_23BB8CCFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_3_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1_4();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_23BB8CD60(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier(255, v3);
  OUTLINED_FUNCTION_2_46();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BD18, &qword_23BBEE1A0);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  OUTLINED_FUNCTION_11_1();
  swift_getWitnessTable();
  sub_23BB8C374();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t sub_23BB8CDFC(uint64_t a1, uint64_t a2)
{
  sub_23BB8CF48(a2, v4, &qword_27E1A3140, qword_23BC03168);
  if (v4[3] == 1)
  {
    return sub_23BA0E8F8(v4, &qword_27E1A3140, qword_23BC03168);
  }

  memcpy(__dst, v4, sizeof(__dst));
  sub_23BB8CED8(__dst, a1);
  sub_23BA0E8F8(a1 + 80, &qword_27E197E28, &unk_23BC030E0);
  sub_23BB8CF48(&__dst[80], a1 + 80, &qword_27E197E28, &unk_23BC030E0);
  return sub_23BADA8C4(__dst);
}

uint64_t sub_23BB8CED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FCC8, &qword_23BBFDE00);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB8CF48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_3_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1_4();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_23BB8CFD8(uint64_t a1)
{
  result = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration(319);
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

uint64_t sub_23BB8D070(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23BBDCD08() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_23BBDCBE8() - 8);
  v10 = *(v9 + 80);
  v11 = v7 | 7;
  v12 = v7 | 7 | v10;
  v13 = (v8 + 7 + ((*(v9 + 64) + v7 + ((v10 + 16) & ~v10)) & ~v7)) & 0xFFFFFFFFFFFFFFF8;
  v14 = v13 + 8;
  v15 = v13 + 10;
  if (v15 <= v14)
  {
    v15 = v14;
  }

  if (v15 <= 3)
  {
    v15 = 3;
  }

  v16 = v15 + ((((v7 + 16) & ~v7) + v8 + v12) & ~v12);
  v17 = v16 + 1;
  v18 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = v18 + 16;
  if (v16 + 1 > v18 + 16)
  {
    v20 = v16 + 1;
  }

  else
  {
    v20 = v18 + 16;
  }

  if (v20 <= 0x10)
  {
    v20 = 16;
  }

  v21 = v20 + 1;
  v22 = v20 & 0xFFFFFFFFFFFFFFF8;
  v23 = *(sub_23BBD96B8() - 8);
  v24 = ((*(v23 + 64) + v12 + ((*(v23 + 80) + v22 + 24) & ~*(v23 + 80))) & ~v12) + v21;
  v25 = ((v24 + v11) & ~v11) + v19;
  if (v25 <= v24)
  {
    v25 = v24;
  }

  v26 = v21 + ((v17 + v12) & ~v12);
  v27 = *(a3 + 16);
  v28 = *(v27 - 8);
  if (v26 <= v25)
  {
    v26 = v25;
  }

  v29 = *(v28 + 84);
  if (v29 <= 0x7FFFFFFF)
  {
    v30 = 0x7FFFFFFF;
  }

  else
  {
    v30 = *(v28 + 84);
  }

  v31 = *(v28 + 80);
  v32 = *(v28 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v30)
  {
    goto LABEL_36;
  }

  v33 = v32 + ((v31 + (v26 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v31) + 1;
  v34 = 8 * v33;
  if (v33 <= 3)
  {
    v37 = ((a2 - v30 + ~(-1 << v34)) >> v34) + 1;
    if (HIWORD(v37))
    {
      v35 = *(a1 + v33);
      if (!v35)
      {
        goto LABEL_36;
      }

      goto LABEL_28;
    }

    if (v37 > 0xFF)
    {
      v35 = *(a1 + v33);
      if (!*(a1 + v33))
      {
        goto LABEL_36;
      }

      goto LABEL_28;
    }

    if (v37 < 2)
    {
LABEL_36:
      v39 = (a1 + v26 + 8) & 0xFFFFFFFFFFFFFFF8;
      if ((v29 & 0x80000000) != 0)
      {

        return __swift_getEnumTagSinglePayload((v31 + v39 + 16) & ~v31, v29, v27);
      }

      else
      {
        v40 = *(v39 + 8);
        if (v40 >= 0xFFFFFFFF)
        {
          LODWORD(v40) = -1;
        }

        return (v40 + 1);
      }
    }
  }

  v35 = *(a1 + v33);
  if (!*(a1 + v33))
  {
    goto LABEL_36;
  }

LABEL_28:
  v38 = (v35 - 1) << v34;
  if (v33 > 3)
  {
    v38 = 0;
  }

  if (v33)
  {
    if (v33 > 3)
    {
      LODWORD(v33) = 4;
    }

    switch(v33)
    {
      case 2:
        LODWORD(v33) = *a1;
        break;
      case 3:
        LODWORD(v33) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v33) = *a1;
        break;
      default:
        LODWORD(v33) = *a1;
        break;
    }
  }

  return v30 + (v33 | v38) + 1;
}

void sub_23BB8D428(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23BBDCD08() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_23BBDCBE8() - 8);
  v12 = *(v11 + 80);
  v13 = v9 | 7;
  v14 = v9 | 7 | v12;
  v15 = (v10 + 7 + ((*(v11 + 64) + v9 + ((v12 + 16) & ~v12)) & ~v9)) & 0xFFFFFFFFFFFFFFF8;
  v16 = v15 + 8;
  v17 = v15 + 10;
  if (v17 <= v16)
  {
    v17 = v16;
  }

  if (v17 <= 3)
  {
    v17 = 3;
  }

  v18 = v17 + ((((v9 + 16) & ~v9) + v10 + v14) & ~v14);
  v19 = v18 + 1;
  v20 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = v20 + 16;
  if (v18 + 1 > v20 + 16)
  {
    v22 = v18 + 1;
  }

  else
  {
    v22 = v20 + 16;
  }

  if (v22 <= 0x10)
  {
    v22 = 16;
  }

  v23 = v22 + 1;
  v24 = v22 & 0xFFFFFFFFFFFFFFF8;
  v25 = *(sub_23BBD96B8() - 8);
  v26 = ((*(v25 + 64) + v14 + ((*(v25 + 80) + v24 + 24) & ~*(v25 + 80))) & ~v14) + v23;
  if (((v26 + v13) & ~v13) + v21 > v26)
  {
    v26 = ((v26 + v13) & ~v13) + v21;
  }

  v27 = v23 + ((v19 + v14) & ~v14);
  if (v27 <= v26)
  {
    v27 = v26;
  }

  v28 = *(a4 + 16);
  v29 = *(v28 - 8);
  v30 = *(v29 + 84);
  if (v30 <= 0x7FFFFFFF)
  {
    v31 = 0x7FFFFFFF;
  }

  else
  {
    v31 = *(v29 + 84);
  }

  v32 = *(v29 + 80);
  v33 = *(v29 + 64) + ((v32 + (v27 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v32) + 1;
  v34 = 8 * v33;
  if (a3 <= v31)
  {
    v35 = 0;
  }

  else if (v33 <= 3)
  {
    v38 = ((a3 - v31 + ~(-1 << v34)) >> v34) + 1;
    if (HIWORD(v38))
    {
      v35 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v35 = v39;
      }

      else
      {
        v35 = 0;
      }
    }
  }

  else
  {
    v35 = 1;
  }

  if (v31 < a2)
  {
    v36 = ~v31 + a2;
    if (v33 < 4)
    {
      v37 = (v36 >> v34) + 1;
      if (v33)
      {
        v40 = v36 & ~(-1 << v34);
        bzero(a1, v33);
        if (v33 == 3)
        {
          *a1 = v40;
          a1[2] = BYTE2(v40);
        }

        else if (v33 == 2)
        {
          *a1 = v40;
        }

        else
        {
          *a1 = v36;
        }
      }
    }

    else
    {
      bzero(a1, v33);
      *a1 = v36;
      v37 = 1;
    }

    switch(v35)
    {
      case 1:
        a1[v33] = v37;
        return;
      case 2:
        *&a1[v33] = v37;
        return;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v33] = v37;
        return;
      default:
        return;
    }
  }

  switch(v35)
  {
    case 1:
      a1[v33] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    case 2:
      *&a1[v33] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    case 3:
LABEL_57:
      __break(1u);
      JUMPOUT(0x23BB8D858);
    case 4:
      *&a1[v33] = 0;
      goto LABEL_39;
    default:
LABEL_39:
      if (a2)
      {
LABEL_40:
        v41 = (&a1[v27 + 8] & 0xFFFFFFFFFFFFFFF8);
        if ((v30 & 0x80000000) != 0)
        {

          __swift_storeEnumTagSinglePayload((v41 + v32 + 16) & ~v32, a2, v30, v28);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *v41 = a2 & 0x7FFFFFFF;
          v41[1] = 0;
        }

        else
        {
          v41[1] = (a2 - 1);
        }
      }

      return;
  }
}

void sub_23BB8D8B8(uint64_t a1)
{
  type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(319);
  if (v1 <= 0x3F)
  {
    sub_23BB8D9D0(319, &qword_27E1A31F0, type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard, _s20LocalizationResourceVMa, " offerLabel ");
    if (v2 <= 0x3F)
    {
      sub_23BB8D9D0(319, &qword_27E1A31F8, _s22LocalizedPriceResourceVMa, _s11PriceStringOMa, "label accessibilityLabel ");
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_23BB8D9D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_23BB8DA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_40_3();
  _s11PriceStringOMa(v6);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == v3)
  {
    v8 = OUTLINED_FUNCTION_23_17();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_18_0(*(v4 + *(a3 + 20) + 8));
    }

    sub_23BBD96B8();
    v8 = OUTLINED_FUNCTION_28_11();
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v9);
}

void sub_23BB8DB34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_40_3();
  _s11PriceStringOMa(v8);
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) != a3)
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + *(a4 + 20) + 8) = (v4 - 1);
      return;
    }

    sub_23BBD96B8();
    OUTLINED_FUNCTION_28_11();
  }

  OUTLINED_FUNCTION_27_11();

  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_23BB8DBF0(uint64_t a1)
{
  v1 = _s11PriceStringOMa(319);
  if (v2 <= 0x3F)
  {
    v3 = sub_23BBD96B8();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_23BB8DC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration(0);
  v7 = OUTLINED_FUNCTION_13_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  OUTLINED_FUNCTION_13_0(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for SubscriptionStoreControlOption(0);
  v11 = OUTLINED_FUNCTION_13_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v12 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  v13 = OUTLINED_FUNCTION_13_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  sub_23BB92780();
  sub_23BA8CE68();
  sub_23BB95980();
  sub_23BB95E08();
  v18 = *(v16 + 24);
  v17 = *(v16 + 32);
  v19 = *(a2 + *(type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0) + 20));
  if (v19)
  {
    v31 = a1;
    v20 = a2 + *(type metadata accessor for Subscription(0) + 20);
    v21 = *(v20 + 8);
    if (v21 == 2)
    {

      v22 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      v24 = v23;
    }

    else
    {
      v22 = *v20;
      v24 = v21 & 1;
    }

    v26 = v21 == 2;
    v25 = v19(v22, v24, v26);
    sub_23B979A38(v22, v24, v26);
    a1 = v31;
  }

  else
  {

    v25 = 0;
  }

  sub_23BB926D0(a1, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  sub_23BB926D0(v16, type metadata accessor for SubscriptionStoreCopyWriter);
  v27 = *(a2 + *(type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(0) + 20));
  sub_23BB926D0(a2, type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3260, &qword_23BC03318);
  *(a3 + v28[10]) = v25;
  result = sub_23BB92728();
  v30 = (a3 + v28[9]);
  *v30 = v18;
  v30[1] = v17;
  *(a3 + v28[11]) = v27;
  return result;
}

double sub_23BB8DF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23BBDB748();

  return result;
}

double sub_23BB8DFFC(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23BBDB748();

  return result;
}

void sub_23BB8E070()
{
  OUTLINED_FUNCTION_19();
  sub_23BAE2194();
  if (v2)
  {
    v3 = *(type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(0) + 20);
    v4 = *(v1 + v3);
    v5 = *(v1 + v3 + 8);
    v6 = (v0 + v3);
    v7 = v4 == *v6 && v5 == v6[1];
    if (v7 || (sub_23BBDDA88() & 1) != 0)
    {
      v8 = OUTLINED_FUNCTION_28_11();
      if (MEMORY[0x23EEB1E70](v8, v0 + v9))
      {

        sub_23BAE2194();
      }
    }
  }
}

uint64_t sub_23BB8E118(uint64_t a1, uint64_t a2)
{
  v2 = _s11PriceStringOMa(0);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_5();
  v90 = v4;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v5);
  v91 = &v83 - v6;
  v85 = _s22LocalizedPriceResourceVMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v89 = (v9 - v8);
  v84 = _s20LocalizationResourceVMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_5();
  v88 = v11;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v12);
  v87 = &v83 - v13;
  v92 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_5();
  v86 = v15;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v16);
  v18 = &v83 - v17;
  type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v19);
  v21 = (&v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v24 = &v83 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v83 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3248, &qword_23BC03308);
  OUTLINED_FUNCTION_13_0(v28);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v83 - v30;
  sub_23BB92780();
  sub_23BB92780();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_0_58();
    sub_23BB92780();
    OUTLINED_FUNCTION_19_29();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_9_30();
      sub_23BB92728();
      sub_23BAE2194();
      v71 = v92;
      if (v72)
      {
        v73 = *(v92 + 20);
        v74 = *&v27[v73];
        v75 = *&v27[v73 + 8];
        v76 = &v18[v73];
        v77 = v74 == *v76 && v75 == *(v76 + 1);
        if (v77 || (sub_23BBDDA88()) && (MEMORY[0x23EEB1E70](&v27[*(v71 + 24)], &v18[*(v71 + 24)]))
        {
          sub_23BAE2194();
          if (v78)
          {
            OUTLINED_FUNCTION_1_60();
            sub_23BB926D0(v18, v79);
            sub_23BB926D0(v27, v71);
LABEL_41:
            OUTLINED_FUNCTION_4_43();
            v64 = 1;
            return v64 & 1;
          }
        }
      }

      v80 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard;
      v36 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard;
      v81 = v18;
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_11_30();
    v54 = v27;
LABEL_29:
    sub_23BB926D0(v54, v53);
    sub_23B9A8E20(v31, &qword_27E1A3248);
LABEL_47:
    v64 = 0;
    return v64 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_0_58();
    sub_23BB92780();
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3258, &qword_23BC03960) + 48);
    OUTLINED_FUNCTION_19_29();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_9_30();
      v34 = v86;
      sub_23BB92728();
      v27 = v87;
      sub_23BB92728();
      v35 = v88;
      sub_23BB92728();
      sub_23BAE2194();
      v36 = v92;
      if ((v37 & 1) == 0 || ((v38 = *(v92 + 20), v39 = *&v24[v38], v40 = *&v24[v38 + 8], v41 = (v34 + v38), v39 == *v41) ? (v42 = v40 == v41[1]) : (v42 = 0), !v42 && (sub_23BBDDA88() & 1) == 0 || (MEMORY[0x23EEB1E70](&v24[*(v36 + 6)], v34 + *(v36 + 6)) & 1) == 0 || (sub_23BAE2194(), (v43 & 1) == 0)))
      {
        OUTLINED_FUNCTION_1_60();
        sub_23BB926D0(v24, v67);
        sub_23BB926D0(v35, _s20LocalizationResourceVMa);
        sub_23BB926D0(v27, _s20LocalizationResourceVMa);
        v68 = v34;
LABEL_44:
        v70 = v36;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_1_60();
      sub_23BB926D0(v24, v44);
      v45 = sub_23BBDCCA8();
      sub_23BB926D0(v34, v36);
      if (v45)
      {
        v46 = v84;
        v47 = &v27[*(v84 + 20)];
        v49 = *v47;
        v48 = *(v47 + 1);
        sub_23BB926D0(v27, _s20LocalizationResourceVMa);
        v50 = (v35 + *(v46 + 20));
        v52 = *v50;
        v51 = v50[1];
        sub_23BB926D0(v35, _s20LocalizationResourceVMa);
        if (v49 == 6)
        {
          if (v52 != 6)
          {
            goto LABEL_46;
          }
        }

        else if (v52 == 6 || v52 != v49 || v48 != v51)
        {
          goto LABEL_46;
        }

        goto LABEL_41;
      }

      v80 = _s20LocalizationResourceVMa;
      v36 = _s20LocalizationResourceVMa;
      v81 = v35;
LABEL_43:
      sub_23BB926D0(v81, v80);
      v68 = v27;
      goto LABEL_44;
    }

    sub_23BB926D0(&v24[v33], _s20LocalizationResourceVMa);
    OUTLINED_FUNCTION_11_30();
    v54 = v24;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_0_58();
  sub_23BB92780();
  v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3250, &qword_23BC03310) + 48);
  OUTLINED_FUNCTION_19_29();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_23BB926D0(v21 + v55, _s11PriceStringOMa);
    v53 = _s22LocalizedPriceResourceVMa;
    v54 = v21;
    goto LABEL_29;
  }

  v56 = v89;
  sub_23BB92728();
  v57 = v91;
  sub_23BB92728();
  v58 = v90;
  sub_23BB92728();
  v59 = *v21 == *v56 && v21[1] == v56[1];
  v60 = v85;
  if (!v59 && (sub_23BBDDA88() & 1) == 0 || (OUTLINED_FUNCTION_16_25(), (sub_23BBDCCA8() & 1) == 0) || (OUTLINED_FUNCTION_28_11(), sub_23BAE3C9C(), (v61 & 1) == 0))
  {
    OUTLINED_FUNCTION_12_31();
    sub_23BB926D0(v21, v69);
    sub_23BB926D0(v58, _s11PriceStringOMa);
    sub_23BB926D0(v57, _s11PriceStringOMa);
    v68 = v56;
    v70 = v60;
LABEL_45:
    sub_23BB926D0(v68, v70);
LABEL_46:
    OUTLINED_FUNCTION_4_43();
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_12_31();
  sub_23BB926D0(v21, v62);
  sub_23BAE2194();
  v64 = v63;
  sub_23BB926D0(v58, _s11PriceStringOMa);
  v65 = OUTLINED_FUNCTION_29_5();
  sub_23BB926D0(v65, v66);
  sub_23BB926D0(v56, v60);
  OUTLINED_FUNCTION_4_43();
  return v64 & 1;
}

uint64_t sub_23BB8E904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v67 = *(a1 + 16);
  v68 = a1;
  v2 = OUTLINED_FUNCTION_6_5(255, v67, MEMORY[0x277CE0BD8]);
  OUTLINED_FUNCTION_12_14(v2);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDBFE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198390, qword_23BBE52B0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3210, &qword_23BC032B8);
  OUTLINED_FUNCTION_4();
  v3 = sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3218, &unk_23BC032C0);
  v4 = OUTLINED_FUNCTION_4();
  v6 = OUTLINED_FUNCTION_6_5(v4, v3, v5);
  v7 = OUTLINED_FUNCTION_12_14(v6);
  swift_getWitnessTable();
  v8 = sub_23BBDC078();
  OUTLINED_FUNCTION_3_2();
  v59 = v9;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v56 - v11;
  OUTLINED_FUNCTION_12_6();
  WitnessTable = swift_getWitnessTable();
  __src = v8;
  v88 = WitnessTable;
  v60 = MEMORY[0x277CE0C08];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_3_2();
  v58 = v15;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v19 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v65 = v20;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  v56 = &v56 - v22;
  v63 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v69 = v23;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v24);
  v57 = &v56 - v25;
  v64 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v71 = v26;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v27);
  v61 = &v56 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198DF8, &qword_23BBE6C10);
  sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v72 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_5();
  v62 = v31;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v32);
  v66 = &v56 - v33;
  v34 = *(v68 + 24);
  v74 = v67;
  v75 = v34;
  v76 = v70;
  sub_23B9BE15C(v7);
  sub_23BBDC068();
  sub_23BBDB4A8();
  sub_23BBDB6D8();
  (*(v59 + 8))(v12, v8);
  v105 = 0;
  v104 = 1;
  v103 = 1;
  v102 = 1;
  v101 = 1;
  v100 = 1;
  v106 = 0;
  __src = 0x404E000000000000;
  LOBYTE(v88) = 0;
  v89 = 0;
  v90 = 1;
  v91 = 0;
  v92 = 1;
  v93 = 0;
  v94 = 1;
  v95 = 0;
  v96 = 1;
  v97 = 0;
  v98 = 1;
  v99 = 0;
  KeyPath = v8;
  v86 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_23B9DCCD0(v36);
  v38 = v56;
  sub_23BA19724(&__src, v37, v39, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  (*(v58 + 8))(v18, OpaqueTypeMetadata2);
  KeyPath = swift_getKeyPath();
  LOWORD(v86) = 0;
  v40 = sub_23B9A6A40();
  v83 = OpaqueTypeConformance2;
  v84 = v40;
  v41 = swift_getWitnessTable();
  v42 = v57;
  MEMORY[0x23EEB43C0](&KeyPath, v19, &type metadata for CompactPickerLabelMaxWidthModifier, v41);

  (*(v65 + 8))(v38, v19);
  sub_23BBDC2F8();
  v43 = sub_23BB925AC();
  v81 = v41;
  v82 = v43;
  v54 = v63;
  v55 = swift_getWitnessTable();
  v44 = v61;
  sub_23BBDBB18();
  (*(v69 + 8))(v42, v54);
  v79 = v55;
  v80 = MEMORY[0x277CDFC60];
  v45 = v64;
  v46 = swift_getWitnessTable();
  sub_23BBDBA08();
  (*(v71 + 8))(v44, v45);
  OUTLINED_FUNCTION_1_15();
  v49 = sub_23B9A8CB4(v47, &qword_27E198DF8, &qword_23BBE6C10, v48);
  v77 = v46;
  v78 = v49;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_29();
  sub_23B9D2D88();
  v50 = *(v72 + 8);
  v51 = OUTLINED_FUNCTION_19_29();
  v50(v51);
  OUTLINED_FUNCTION_29_5();
  sub_23B9D2D88();
  v52 = OUTLINED_FUNCTION_29_5();
  return (v50)(v52);
}

uint64_t sub_23BB8F098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v41 = a2;
  v55 = a4;
  v56 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3218, &unk_23BC032C0);
  MEMORY[0x28223BE20](v54);
  v53 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = (&v41 - v6);
  v50 = sub_23BBDA1E8();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F18, &qword_23BBE7100);
  MEMORY[0x28223BE20](v8 - 8);
  v42 = &v41 - v9;
  v10 = sub_23BBDB588();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v14 = sub_23BBDBFE8();
  v44 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198390, qword_23BBE52B0);
  v17 = sub_23BBDA358();
  v46 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v43 = &v41 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3210, &qword_23BC032B8);
  v19 = sub_23BBDA358();
  v47 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v45 = &v41 - v23;
  sub_23BBDA998();
  v57 = v41;
  v58 = v48;
  v59 = v56;
  sub_23BBDBFD8();
  (*(v11 + 104))(v13, *MEMORY[0x277CE0AA8], v10);
  v24 = sub_23BBDB468();
  v25 = v42;
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v24);
  sub_23BA750EC(v13);
  sub_23BBDB4D8();
  sub_23B9A8E20(v25, &qword_27E198F18);
  (*(v11 + 8))(v13, v10);
  WitnessTable = swift_getWitnessTable();
  v27 = v43;
  sub_23BBDBAC8();

  (*(v44 + 8))(v16, v14);
  v28 = v49;
  sub_23BBDA1D8();
  v29 = sub_23B9A8CB4(&qword_27E198388, &qword_27E198390, qword_23BBE52B0, MEMORY[0x277CE0868]);
  v63[4] = WitnessTable;
  v63[5] = v29;
  v30 = swift_getWitnessTable();
  v31 = v50;
  sub_23BBDB8A8();
  (*(v51 + 8))(v28, v31);
  (*(v46 + 8))(v27, v17);
  v32 = sub_23B9A8CB4(&qword_27E1A3230, &qword_27E1A3210, &qword_23BC032B8, MEMORY[0x277CE0740]);
  v63[2] = v30;
  v63[3] = v32;
  v33 = swift_getWitnessTable();
  v34 = v45;
  sub_23B9D2D88();
  v35 = v47;
  v36 = *(v47 + 8);
  v36(v21, v19);
  v37 = sub_23BBDAB48();
  v38 = v52;
  *v52 = v37;
  *(v38 + 8) = 0x4008000000000000;
  *(v38 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3238, &qword_23BC03300);
  sub_23BB92780();
  (*(v35 + 16))(v21, v34, v19);
  v63[0] = v21;
  v39 = v53;
  sub_23BB92660(v38, v53);
  v63[1] = v39;
  v62[0] = v19;
  v62[1] = v54;
  v60 = v33;
  v61 = sub_23B9A8CB4(&qword_27E1A3240, &qword_27E1A3218, &unk_23BC032C0, MEMORY[0x277CE1198]);
  sub_23BB6739C(v63, 2, v62);
  sub_23B9A8E20(v38, &qword_27E1A3218);
  v36(v34, v19);
  sub_23B9A8E20(v39, &qword_27E1A3218);
  return (v36)(v21, v19);
}

uint64_t sub_23BB8F8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - v11;
  v16 = type metadata accessor for CompactSubscriptionPickerOptionLabel(0, v13, v14, v15);
  sub_23B9D2D88();
  v17 = (a1 + *(v16 + 36));
  v18 = v17[1];
  v30 = *v17;
  v31 = v18;
  sub_23B9F6A08();

  v19 = sub_23BBDB678();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  (*(v7 + 16))(v9, v12, a2);
  v30 = v19;
  v31 = v21;
  v23 &= 1u;
  v32 = v23;
  v33 = v25;
  v34[0] = v9;
  v34[1] = &v30;
  sub_23BA51B84(v19, v21, v23);

  v29[0] = a2;
  v29[1] = MEMORY[0x277CE0BD8];
  v28[2] = a3;
  v28[3] = MEMORY[0x277CE0BC8];
  sub_23BB6739C(v34, 2, v29);
  sub_23BA51C9C(v19, v21, v23);

  v26 = *(v7 + 8);
  v26(v12, a2);
  sub_23BA51C9C(v30, v31, v32);

  return (v26)(v9, a2);
}

uint64_t sub_23BB8FAF8@<X0>(void *a1@<X8>)
{
  v109 = a1;
  v88 = sub_23BBDB148();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v85 = &v77 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for CompactOptionLowerLabel.OtherOffer(0);
  MEMORY[0x28223BE20](v90);
  v84 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3288, &qword_23BC034E0);
  v93 = *(v95 - 1);
  MEMORY[0x28223BE20](v95);
  v92 = &v77 - v3;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3290, &qword_23BC034E8);
  MEMORY[0x28223BE20](v108);
  v94 = &v77 - v4;
  v5 = _s11PriceStringOMa(0);
  MEMORY[0x28223BE20](v5 - 8);
  v83 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v91 = &v77 - v8;
  v9 = _s22LocalizedPriceResourceVMa(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3298, &qword_23BC034F0);
  MEMORY[0x28223BE20](v102);
  v96 = &v77 - v12;
  v81 = sub_23BBD96B8();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v79 = &v77 - v16;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A32A0, &qword_23BC034F8);
  v86 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v82 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v97 = &v77 - v19;
  v20 = _s20LocalizationResourceVMa(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v100 = &v77 - v24;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A32A8, &qword_23BC03500);
  MEMORY[0x28223BE20](v106);
  v107 = &v77 - v25;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A32B0, &qword_23BC03508);
  MEMORY[0x28223BE20](v99);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A32B8, &qword_23BC03510);
  MEMORY[0x28223BE20](v105);
  v101 = &v77 - v26;
  v104 = type metadata accessor for CompactOptionLowerLabel.Standard(0);
  MEMORY[0x28223BE20](v104);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v77 - v30;
  v32 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(0);
  MEMORY[0x28223BE20](v32 - 8);
  v98 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v77 - v35;
  v37 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration(0);
  MEMORY[0x28223BE20](v37);
  sub_23BB92780();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3258, &qword_23BC03960);
      sub_23BB92728();
      sub_23BB92728();
      sub_23BB92780();
      v39 = *(v104 + 20);
      *&v28[v39] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997F0, &qword_23BBE8378);
      swift_storeEnumTagMultiPayload();
      sub_23BB92780();
      if (v22[*(v20 + 20)] == 6)
      {
        sub_23BB74064();
      }

      else
      {
        sub_23BB72A48();
      }

      (*(v80 + 32))(v79, v14, v81);
      v60 = sub_23BBDB668();
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v103 = _s20LocalizationResourceVMa;
      sub_23BB926D0(v22, _s20LocalizationResourceVMa);
      v67 = v97;
      sub_23BB90B0C(v60, v62, v64 & 1, v66);
      sub_23BA51C9C(v60, v62, v64 & 1);

      sub_23BB92780();
      v68 = v86;
      v69 = *(v86 + 16);
      v70 = v82;
      v71 = v67;
      v72 = v89;
      v69(v82, v71, v89);
      v73 = v96;
      sub_23BB92780();
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A32E8, &qword_23BC03580);
      v69((v73 + *(v74 + 48)), v70, v72);
      v95 = *(v68 + 8);
      v95(v70, v72);
      sub_23BB926D0(v31, type metadata accessor for CompactOptionLowerLabel.Standard);
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      sub_23BB92CEC(&qword_27E1A32D0, type metadata accessor for CompactOptionLowerLabel.Standard, &unk_23BC03658);
      sub_23B9A8CB4(&qword_27E1A32D8, &qword_27E1A3298, &qword_23BC034F0, MEMORY[0x277CE14C0]);
      v75 = v101;
      sub_23BBDACD8();
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      sub_23BB92C04();
      sub_23BB92D34();
      sub_23BBDACD8();
      sub_23B9A8E20(v75, &qword_27E1A32B8);
      sub_23B9A8E20(v73, &qword_27E1A3298);
      v95(v97, v72);
      sub_23BB926D0(v28, type metadata accessor for CompactOptionLowerLabel.Standard);
      sub_23BB926D0(v100, v103);
      v42 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard;
      v43 = v98;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3250, &qword_23BC03310);
      v78 = v11;
      sub_23BB92728();
      v44 = v91;
      sub_23BB92728();
      v45 = v84;
      sub_23BB92780();
      v46 = v90;
      v47 = *(v90 + 20);
      *(v45 + v47) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8, &unk_23BBE8170);
      swift_storeEnumTagMultiPayload();
      v48 = v85;
      sub_23BBDB118();
      v49 = sub_23BB92CEC(&qword_27E1A32C0, type metadata accessor for CompactOptionLowerLabel.OtherOffer, &unk_23BC036A8);
      v50 = v92;
      sub_23BBDB968();
      (*(v87 + 8))(v48, v88);
      sub_23BB926D0(v45, type metadata accessor for CompactOptionLowerLabel.OtherOffer);
      v51 = v83;
      sub_23BB92780();
      sub_23BAE1C0C();
      v53 = v52;
      v55 = v54;
      v57 = v56;
      sub_23BB926D0(v51, _s11PriceStringOMa);
      v110 = v46;
      v111 = v49;
      swift_getOpaqueTypeConformance2();
      v59 = v94;
      v58 = v95;
      sub_23BBDB908();
      sub_23BA51C9C(v53, v55, v57 & 1);

      (*(v93 + 8))(v50, v58);
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      sub_23BB92C04();
      sub_23BB92D34();
      sub_23BBDACD8();
      sub_23B9A8E20(v59, &qword_27E1A3290);
      sub_23BB926D0(v44, _s11PriceStringOMa);
      v42 = _s22LocalizedPriceResourceVMa;
      v43 = v78;
    }
  }

  else
  {
    sub_23BB92728();
    sub_23BB92780();
    v40 = *(v104 + 20);
    *&v31[v40] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997F0, &qword_23BBE8378);
    swift_storeEnumTagMultiPayload();
    sub_23BB92780();
    swift_storeEnumTagMultiPayload();
    sub_23BB92CEC(&qword_27E1A32D0, type metadata accessor for CompactOptionLowerLabel.Standard, &unk_23BC03658);
    sub_23B9A8CB4(&qword_27E1A32D8, &qword_27E1A3298, &qword_23BC034F0, MEMORY[0x277CE14C0]);
    v41 = v101;
    sub_23BBDACD8();
    sub_23B979510();
    swift_storeEnumTagMultiPayload();
    sub_23BB92C04();
    sub_23BB92D34();
    sub_23BBDACD8();
    sub_23B9A8E20(v41, &qword_27E1A32B8);
    sub_23BB926D0(v31, type metadata accessor for CompactOptionLowerLabel.Standard);
    v42 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard;
    v43 = v36;
  }

  return sub_23BB926D0(v43, v42);
}

uint64_t sub_23BB90B0C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_23BBDAF28();
  sub_23BBDB538();
  swift_getKeyPath();
  sub_23BA51B84(a1, a2, a3 & 1);

  sub_23BBDB498();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A32F0, &qword_23BC035B8);
  sub_23BB93934(&qword_27E1A32F8, &qword_27E1A32F0, &qword_23BC035B8, sub_23BB9321C);
  sub_23BBDB6D8();
  sub_23BA51C9C(a1, a2, a3 & 1);
}

uint64_t sub_23BB90C48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = _s11PriceStringOMa(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BBDB148();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F18, &qword_23BBE7100);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_23BBDB588();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3378, &qword_23BC03728);
  MEMORY[0x28223BE20](v16);
  v18 = (&v35 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3380, &qword_23BC03730);
  v20 = *(v19 - 8);
  v36 = v19;
  v37 = v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v35 - v21;
  sub_23BB91100(v2, v18);
  (*(v13 + 104))(v15, *MEMORY[0x277CE0A68], v12);
  v23 = sub_23BBDB468();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v23);
  sub_23BA750EC(v15);
  v24 = sub_23BBDB4D8();
  sub_23B9A8E20(v11, &qword_27E198F18);
  (*(v13 + 8))(v15, v12);
  KeyPath = swift_getKeyPath();
  v26 = (v18 + *(v16 + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  sub_23BBDB118();
  v27 = sub_23BB93934(&qword_27E1A3388, &qword_27E1A3378, &qword_23BC03728, sub_23BB939D0);
  sub_23BBDB968();
  (*(v38 + 8))(v8, v39);
  sub_23B9A8E20(v18, &qword_27E1A3378);
  type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(0);
  sub_23BB92780();
  sub_23BAE1C0C();
  v29 = v28;
  v31 = v30;
  LOBYTE(v8) = v32;
  sub_23BB926D0(v5, _s11PriceStringOMa);
  v41 = v16;
  v42 = v27;
  swift_getOpaqueTypeConformance2();
  v33 = v36;
  sub_23BBDB908();
  sub_23BA51C9C(v29, v31, v8 & 1);

  return (*(v37 + 8))(v22, v33);
}

void *sub_23BB91100@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v33[1] = a2;
  v33[0] = type metadata accessor for CompactOptionLowerLabel.Standard.MultilineLabel(0);
  MEMORY[0x28223BE20](v33[0]);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A33B8, &qword_23BC03748);
  MEMORY[0x28223BE20](v5);
  v7 = v33 - v6;
  v8 = _s11PriceStringOMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23BBDAF68();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CompactOptionLowerLabel.Standard(0);
  sub_23B9B7B64();
  v15 = (*(v12 + 88))(v14, v11);
  v16 = *MEMORY[0x277CE0558];
  (*(v12 + 8))(v14, v11);
  if (v15 == v16)
  {
    v17 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(0);
    v18 = *(v17 + 24);
    v19 = (a1 + *(v17 + 20));
    v21 = *v19;
    v20 = v19[1];
    v22 = *(v33[0] + 20);
    v23 = sub_23BBD96B8();
    (*(*(v23 - 8) + 16))(&v4[v22], a1 + v18, v23);
    *v4 = v21;
    *(v4 + 1) = v20;
    sub_23BB92780();
    swift_storeEnumTagMultiPayload();
    sub_23BB92CEC(&qword_27E1A33B0, type metadata accessor for CompactOptionLowerLabel.Standard.MultilineLabel, &unk_23BC03770);

    sub_23BBDACD8();
    return sub_23BB926D0(v4, type metadata accessor for CompactOptionLowerLabel.Standard.MultilineLabel);
  }

  else
  {
    sub_23BB92780();
    sub_23BAE1C0C();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_23BB926D0(v10, _s11PriceStringOMa);
    *v7 = v26;
    *(v7 + 1) = v28;
    v7[16] = v30 & 1;
    *(v7 + 3) = v32;
    swift_storeEnumTagMultiPayload();
    sub_23BB92CEC(&qword_27E1A33B0, type metadata accessor for CompactOptionLowerLabel.Standard.MultilineLabel, &unk_23BC03770);
    return sub_23BBDACD8();
  }
}

void sub_23BB914E4(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F18, &qword_23BBE7100);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_23BBDB588();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, *MEMORY[0x277CE0A68], v13, v15);
  v18 = sub_23BBDB468();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v18);
  sub_23BA750EC(v17);
  v19 = sub_23BBDB4D8();
  sub_23B9A8E20(v12, &qword_27E198F18);
  (*(v14 + 8))(v17, v13);
  KeyPath = swift_getKeyPath();
  a3 &= 1u;
  sub_23BA51B84(a1, a2, a3);

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = KeyPath;
  *(a5 + 40) = v19;
}

uint64_t sub_23BB916CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBD96B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BBDAB48();
  v29 = 1;
  v8 = *(v1 + 1);
  v27 = *v1;
  v28 = v8;
  sub_23B9F6A08();

  v9 = sub_23BBDB678();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = type metadata accessor for CompactOptionLowerLabel.Standard.MultilineLabel(0);
  (*(v4 + 16))(v6, &v1[*(v16 + 20)], v3);
  v17 = sub_23BBDB668();
  v19 = v18;
  v21 = v20;
  v13 &= 1u;
  v26 = v13;
  LOBYTE(v27) = v13;
  LOBYTE(v4) = v22 & 1;
  v30 = v22 & 1;
  sub_23BA51B84(v9, v11, v13);

  sub_23BA51B84(v17, v19, v4);

  sub_23BA51C9C(v17, v19, v4);

  sub_23BA51C9C(v9, v11, v26);

  v24 = v29;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v24;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
  *(a1 + 56) = v17;
  *(a1 + 64) = v19;
  *(a1 + 72) = v4;
  *(a1 + 80) = v21;
  return result;
}

void *sub_23BB918B0()
{
  sub_23BB932D4();

  return sub_23BBDA958();
}

uint64_t sub_23BB918F8(uint64_t a1, double a2)
{
  v3 = sub_23BBDAF68();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(v7 + 16))(v6, a1, v4);
  return sub_23BB919C0(v6, v8);
}

uint64_t sub_23BB919C0(uint64_t a1, double a2)
{
  v3 = sub_23BBDAF68();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  sub_23BB932D4();
  sub_23BBDA968();
  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_23BB91AC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23BBD9848();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23BBD96B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  sub_23BAE1EA0();
  type metadata accessor for CompactOptionLowerLabel.OtherOffer(0);
  sub_23B9B75B4();
  sub_23BBD96A8();
  v10 = *(v4 + 16);
  v35 = v3;
  v10(v6, v9, v3);
  v11 = sub_23BBDD028();
  v38[0] = 10;
  v38[1] = 0xE100000000000000;
  v37 = v38;
  v13 = sub_23BB92E78(1, 1, sub_23B9AE380, v36, v11, v12);
  v14 = v13[2];
  if (v14 == 1)
  {
    v21 = v13[4];
    v17 = v13[5];
    v20 = v13[7];
    v34 = v13[6];

    v15 = v21;
  }

  else
  {
    if (v14)
    {
      v29 = v13[6];
      v20 = v13[7];
      v30 = v13[4];
      v33 = v13[5];
      v34 = v29;
      v22 = v13[8];
      v24 = v13[9];
      v26 = v13[10];
      v28 = v13[11];

      v15 = v30;
      v17 = v33;

      goto LABEL_7;
    }

    v15 = sub_23BBDD678();
    v17 = v16;
    v34 = v18;
    v20 = v19;
  }

  v22 = sub_23BBDD678();
  v24 = v23;
  v26 = v25;
  v28 = v27;
LABEL_7:
  result = (*(v4 + 8))(v9, v35);
  *a1 = v15;
  a1[1] = v17;
  a1[2] = v34;
  a1[3] = v20;
  a1[4] = v22;
  a1[5] = v24;
  a1[6] = v26;
  a1[7] = v28;
  return result;
}

uint64_t sub_23BB91D60@<X0>(_OWORD *a1@<X8>)
{
  v37 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A32A0, &qword_23BC034F8);
  v34 = *(v39 - 8);
  v1 = v34;
  MEMORY[0x28223BE20](v39);
  v38 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  sub_23BB91AC4(&v43);
  v35 = v46;
  v7 = v47;
  v6 = v48;
  sub_23BB938E0();
  v8 = sub_23BBDB678();
  v10 = v9;
  v12 = v11;
  sub_23BB914E4(v8, v9, v11 & 1, v13, &v43);
  sub_23BA51C9C(v8, v10, v12 & 1);

  v40 = v35;
  v41 = v7;
  v42 = v6;
  v14 = sub_23BBDB678();
  v16 = v15;
  LOBYTE(v8) = v17;
  v36 = v5;
  sub_23BB90B0C(v14, v15, v17 & 1, v18);
  sub_23BA51C9C(v14, v16, v8 & 1);

  v19 = v43;
  v20 = v45;
  v21 = *(&v46 + 1);
  v33 = v46;
  v22 = *(v1 + 16);
  v23 = v44;
  v24 = v38;
  v25 = v39;
  v22(v38, v5, v39);
  v26 = v37;
  *v37 = v19;
  v23 &= 1u;
  *(v26 + 16) = v23;
  *&v35 = v20;
  v27 = v33;
  *(v26 + 3) = v20;
  *(v26 + 4) = v27;
  *(v26 + 5) = v21;
  v28 = v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3370, &qword_23BC03720);
  v22(&v28[*(v29 + 48)], v24, v25);
  sub_23BA51B84(v19, *(&v19 + 1), v23);
  v30 = *(v34 + 8);

  v30(v36, v25);
  v30(v24, v25);
  sub_23BA51C9C(v19, *(&v19 + 1), v23);
}

uint64_t sub_23BB9205C(double a1)
{
  v1 = sub_23BBDAF68();
  __swift_allocate_value_buffer(v1, qword_27E1A3148);
  v2 = __swift_project_value_buffer(v1, qword_27E1A3148);
  v3 = *MEMORY[0x277CE0560];
  v4 = *(*(v1 - 8) + 104);

  return v4(v2, v3, v1);
}

uint64_t sub_23BB920E4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E197830 != -1)
  {
    swift_once();
  }

  v3 = sub_23BBDAF68();
  v4 = __swift_project_value_buffer(v3, qword_27E1A3148);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_23BB9218C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BB92CEC(&qword_27E1999B0, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23BB92220()
{
  sub_23BB92600();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BB92298()
{
  sub_23BB92600();
  sub_23BBDA958();
  if (v1)
  {
    return 0x4064000000000000;
  }

  else
  {
    return 0x7FF0000000000000;
  }
}

void *sub_23BB922E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23BBDA928();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = __src - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 0x100) == 0)
  {

    sub_23BBDD5A8();
    v12 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9846DC(a2, a3, 0);
    (*(v9 + 8))(v11, v8);
  }

  sub_23BBDC318();
  sub_23BBDA488();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3278, &qword_23BC034D0);
  (*(*(v13 - 8) + 16))(a4, a1, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3280, &qword_23BC034D8);
  return memcpy((a4 + *(v14 + 36)), __src, 0x70uLL);
}

uint64_t sub_23BB92578@<X0>(uint64_t a1@<X8>)
{
  result = sub_23BB92298();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_23BB925AC()
{
  result = qword_27E1A3220;
  if (!qword_27E1A3220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3220);
  }

  return result;
}

unint64_t sub_23BB92600()
{
  result = qword_27E1A3228;
  if (!qword_27E1A3228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3228);
  }

  return result;
}

uint64_t sub_23BB92660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3218, &unk_23BC032C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB926D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BB92728()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB92780()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB9280C()
{
  v1 = OUTLINED_FUNCTION_40_3();
  type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration(v1);
  v2 = OUTLINED_FUNCTION_23_17();

  return __swift_getEnumTagSinglePayload(v2, v0, v3);
}

uint64_t sub_23BB9285C()
{
  v0 = OUTLINED_FUNCTION_40_3();
  type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration(v0);
  OUTLINED_FUNCTION_27_11();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_23BB928BC(uint64_t a1)
{
  result = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BB92928(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_6_5(255, *a1, MEMORY[0x277CE0BD8]);
  OUTLINED_FUNCTION_12_14(v1);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_41();
  sub_23BBDBFE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198390, qword_23BBE52B0);
  OUTLINED_FUNCTION_8_41();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3210, &qword_23BC032B8);
  OUTLINED_FUNCTION_8_41();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3218, &unk_23BC032C0);
  v2 = OUTLINED_FUNCTION_8_41();
  v5 = OUTLINED_FUNCTION_6_5(v2, v3, v4);
  OUTLINED_FUNCTION_12_14(v5);
  OUTLINED_FUNCTION_17_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_41();
  sub_23BBDC078();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198DF8, &qword_23BBE6C10);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  sub_23B9A6A40();
  swift_getWitnessTable();
  sub_23BB925AC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23B9A8CB4(v6, &qword_27E198DF8, &qword_23BBE6C10, v7);
  return swift_getWitnessTable();
}

unint64_t sub_23BB92C04()
{
  result = qword_27E1A32C8;
  if (!qword_27E1A32C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A32B8, &qword_23BC03510);
    sub_23BB92CEC(&qword_27E1A32D0, type metadata accessor for CompactOptionLowerLabel.Standard, &unk_23BC03658);
    sub_23B9A8CB4(&qword_27E1A32D8, &qword_27E1A3298, &qword_23BC034F0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A32C8);
  }

  return result;
}

uint64_t sub_23BB92CEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23BB92D34()
{
  result = qword_27E1A32E0;
  if (!qword_27E1A32E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3290, &qword_23BC034E8);
    type metadata accessor for CompactOptionLowerLabel.OtherOffer(255);
    sub_23BB92CEC(&qword_27E1A32C0, type metadata accessor for CompactOptionLowerLabel.OtherOffer, &unk_23BC036A8);
    swift_getOpaqueTypeConformance2();
    sub_23BB92CEC(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A32E0);
  }

  return result;
}

uint64_t sub_23BB92E78(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v49 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v6 = sub_23BBDD168();
    v10 = v29;
    v11 = v30;
    v12 = v31;

    sub_23B9B84B4();
    v15 = v32;
    v8 = *(v32 + 16);
    v33 = *(v32 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v33 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v37 = (v15 + 32 * v8);
      v37[4] = v6;
      v37[5] = v10;
      v37[6] = v11;
      v37[7] = v12;
      return v15;
    }

LABEL_41:
    sub_23B9B84B4();
    v15 = v38;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v47 = MEMORY[0x277D84F90];
  v16 = 15;
  while (1)
  {
    v45 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v45;
        goto LABEL_30;
      }

      v17 = sub_23BBDD148();
      v11 = v18;
      v48[0] = v17;
      v48[1] = v18;
      v19 = v49(v48);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = sub_23BBDD098();
    }

    v22 = (v45 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v45 >> 14)
    {
      break;
    }

    v46 = sub_23BBDD168();
    v41 = v24;
    v42 = v23;
    v40 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B9B84B4();
      v47 = v27;
    }

    v12 = *(v47 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v47 + 24) >> 1)
    {
      sub_23B9B84B4();
      v47 = v28;
    }

    *(v47 + 16) = v11;
    v26 = (v47 + 32 * v12);
    v26[4] = v46;
    v26[5] = v42;
    v26[6] = v41;
    v26[7] = v40;
LABEL_20:
    v16 = sub_23BBDD098();
    if ((v22 & 1) == 0 && *(v47 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v47;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_23BBDD168();
        v10 = v34;
        v11 = v35;
        v12 = v36;

        v15 = v47;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v33 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_23B9B84B4();
      v15 = v39;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23BB9321C()
{
  result = qword_27E1A3300;
  if (!qword_27E1A3300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3308, &unk_23BC035C0);
    sub_23B9A8CB4(&qword_27E19CDC0, &qword_27E19CDC8, &qword_23BBF2BF0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3300);
  }

  return result;
}

unint64_t sub_23BB932D4()
{
  result = qword_27E1A3310;
  if (!qword_27E1A3310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3310);
  }

  return result;
}

uint64_t sub_23BB9334C()
{
  v1 = OUTLINED_FUNCTION_40_3();
  _s22LocalizedPriceResourceVMa(v1);
  OUTLINED_FUNCTION_10_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_23_17();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F8, qword_23BBFC140);
    v3 = OUTLINED_FUNCTION_16_25();
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_23BB93464()
{
  v1 = OUTLINED_FUNCTION_40_3();
  type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(v1);
  OUTLINED_FUNCTION_10_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_23_17();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3328, &qword_23BC03610);
    v3 = OUTLINED_FUNCTION_16_25();
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_51Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v10 = OUTLINED_FUNCTION_40_3();
  v11(v10);
  OUTLINED_FUNCTION_10_2();
  if (*(v12 + 84) != a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    OUTLINED_FUNCTION_16_25();
  }

  OUTLINED_FUNCTION_27_11();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

void sub_23BB93610(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  a4(319, a2, a3);
  if (v8 <= 0x3F)
  {
    sub_23BB936B0(319, a5, a6);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BB936B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BBD9C18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23BB93708()
{
  result = qword_27E1A3348;
  if (!qword_27E1A3348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3280, &qword_23BC034D8);
    sub_23B9A8CB4(&qword_27E1A3350, &qword_27E1A3278, &qword_23BC034D0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3348);
  }

  return result;
}

unint64_t sub_23BB937C4()
{
  result = qword_27E1A3358;
  if (!qword_27E1A3358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3360, &qword_23BC03618);
    sub_23BB92C04();
    sub_23BB92D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3358);
  }

  return result;
}

uint64_t sub_23BB93888@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BB92220();
  *a1 = result & 1;
  return result;
}

unint64_t sub_23BB938E0()
{
  result = qword_27E1A3368;
  if (!qword_27E1A3368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3368);
  }

  return result;
}

uint64_t sub_23BB93934(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_2_6(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    OUTLINED_FUNCTION_1_15();
    sub_23B9A8CB4(v9, v10, v11, v12);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BB939D0()
{
  result = qword_27E1A3390;
  if (!qword_27E1A3390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3398, &qword_23BC03738);
    sub_23BB93A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3390);
  }

  return result;
}

unint64_t sub_23BB93A54()
{
  result = qword_27E1A33A0;
  if (!qword_27E1A33A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A33A8, &qword_23BC03740);
    sub_23BB92CEC(&qword_27E1A33B0, type metadata accessor for CompactOptionLowerLabel.Standard.MultilineLabel, &unk_23BC03770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A33A0);
  }

  return result;
}

uint64_t sub_23BB93B44(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 8));
  }

  sub_23BBD96B8();
  v4 = OUTLINED_FUNCTION_16_25();

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_23BB93BD0(uint64_t result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_23BBD96B8();
    OUTLINED_FUNCTION_16_25();
    OUTLINED_FUNCTION_27_11();

    return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_23BB93C48(uint64_t a1)
{
  result = sub_23BBD96B8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23BB93D0C()
{
  result = qword_27E1A33E0;
  if (!qword_27E1A33E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A33E8, &qword_23BC03768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3378, &qword_23BC03728);
    sub_23BB93934(&qword_27E1A3388, &qword_27E1A3378, &qword_23BC03728, sub_23BB939D0);
    swift_getOpaqueTypeConformance2();
    sub_23BB92CEC(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A33E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_43()
{

  return sub_23BB926D0(v0, type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration);
}

uint64_t sub_23BB93FAC(uint64_t a1)
{
  result = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BB9404C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0, &unk_23BBE5DE0);
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_23BB94104(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0, &unk_23BBE5DE0);
    v11 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_23BB941B0(uint64_t a1)
{
  _s11PriceStringOMa(319);
  if (v1 <= 0x3F)
  {
    sub_23BB94548(319, &qword_27E1987E0, _s11PriceStringOMa);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BB94264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848, &qword_23BBFA090);
    OUTLINED_FUNCTION_10_2();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 32);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
      v11 = *(a3 + 40);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_23BB94358(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848, &qword_23BBFA090);
    OUTLINED_FUNCTION_10_2();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 32);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
      v11 = *(a4 + 40);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_23BB94454(uint64_t a1)
{
  sub_23B975EA0();
  if (v1 <= 0x3F)
  {
    sub_23BB94548(319, &qword_27E1A3430, MEMORY[0x277CDD300]);
    if (v2 <= 0x3F)
    {
      sub_23BB94548(319, &qword_27E197B58, MEMORY[0x277CDD2B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23BB94548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BBDD648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23BB9459C()
{
  OUTLINED_FUNCTION_10_0();
  v34 = v2;
  v3 = sub_23BBD9848();
  v4 = OUTLINED_FUNCTION_13_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_6();
  v33 = v5;
  OUTLINED_FUNCTION_5_3();
  v6 = sub_23BBDCFC8();
  v7 = OUTLINED_FUNCTION_13_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_6();
  v32 = v8;
  OUTLINED_FUNCTION_5_3();
  v30 = sub_23BBDCBE8();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_1();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  OUTLINED_FUNCTION_13_0(v18);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_28_12();
  v20 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_1();
  v24 = OUTLINED_FUNCTION_19_30();
  type metadata accessor for SubscriptionStoreCopyWriter(v24);
  v31 = v1;
  sub_23B979510();
  OUTLINED_FUNCTION_11_0(v0, 1, v20);
  if (v25)
  {
    sub_23B979910(v0, &unk_27E19FEF0, &unk_23BBE3E40);
LABEL_7:
    sub_23BBDCFD8();
    sub_23BBD9838();
    sub_23BB73D2C();
    goto LABEL_8;
  }

  (*(v22 + 32))(v1, v0, v20);
  sub_23BBDCBF8();
  sub_23BBDCBD8();
  v26 = sub_23B9A0684(v17, v14);
  v27 = *(v10 + 8);
  v28 = v30;
  v27(v14, v30);
  v27(v17, v28);
  if ((v26 & 1) == 0)
  {
    (*(v22 + 8))(v1, v20);
    goto LABEL_7;
  }

  sub_23BBDCFD8();
  sub_23BBD9838();
  sub_23BB73D2C();
  (*(v22 + 8))(v1, v20);
LABEL_8:
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB9494C()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  v104 = v5;
  v6 = type metadata accessor for Subscription(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_6();
  v102 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  OUTLINED_FUNCTION_13_0(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_2();
  v99 = v11;
  OUTLINED_FUNCTION_5_3();
  v106 = sub_23BBDCB58();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_27_12();
  MEMORY[0x28223BE20](v15);
  v17 = &v88 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848, &qword_23BBFA090);
  OUTLINED_FUNCTION_13_0(v18);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_2();
  v107 = v20;
  v21 = OUTLINED_FUNCTION_5_3();
  v98 = type metadata accessor for SubscriptionStoreControlOption(v21);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v25 = v24 - v23;
  v100 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_1();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v101 = &v88 - v31;
  OUTLINED_FUNCTION_16_26();
  v32 = sub_23BB9860C();
  v33 = *(v2 + 16);
  v105 = v4;
  v89 = v0;
  if (v33 == 1)
  {
    v34 = 0;
    v35 = 1;
  }

  else
  {
    MEMORY[0x28223BE20](v32);
    *(&v88 - 2) = v4;
    *(&v88 - 1) = v2;
    v34 = sub_23BBB6F10(sub_23BB98760, (&v88 - 4), v37, v36 & 1);
    v35 = v38;
  }

  v39 = v25 + *(v6 + 20);
  v40 = *(v39 + 8);
  if (v40 == 2)
  {
    v41 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v96 = v42;
    v97 = v41;
  }

  else
  {
    v43 = *v39;
    v96 = v40 & 1;
    v97 = v43;
  }

  v44 = sub_23BBDC8C8();
  v94 = v45;
  v95 = v44;
  v46 = sub_23BBDC8B8();
  v48 = sub_23B9D4CA8(v46, v47);

  v103 = v2;
  if (v48)
  {
    v92 = 0;
    v93 = 0;
  }

  else
  {
    v49 = sub_23BBDC8B8();
    v92 = v50;
    v93 = v49;
  }

  v51 = sub_23BBDC8E8();
  v90 = v52;
  v91 = v51;
  sub_23B9787A8(v17);
  v53 = v107;
  sub_23BBDCA98();
  v54 = *(v13 + 8);
  v54(v17, v106);
  v55 = sub_23BBDCD08();
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v55);
  v56 = 0;
  if ((v35 & 1) == 0)
  {
    v57 = v89;
    sub_23B9787A8(v89);
    v58 = sub_23BBDCA28();
    v59 = v106;
    v60 = v58;
    v54(v57, v106);
    if (v60 >= v34)
    {
      v88 = v34;
      sub_23B9787A8(v57);
      v61 = sub_23BBDCA28();
      v54(v57, v59);
      if (v88 == v61)
      {
        v56 = 4;
      }

      else
      {
        v56 = 2;
      }
    }

    else
    {
      v56 = 8;
    }
  }

  OUTLINED_FUNCTION_35_9();
  sub_23B979510();
  OUTLINED_FUNCTION_0_59();
  sub_23BB98664(v25, v62);
  v63 = v100;
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v55);
  v67 = *(v63 + 36);
  *(v29 + v67) = 0;
  sub_23BBDCC88();
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  v72 = v96;
  *v29 = v97;
  *(v29 + 8) = v72;
  *(v29 + 16) = v40 == 2;
  v73 = v94;
  *(v29 + 24) = v95;
  *(v29 + 32) = v73;
  v74 = v92;
  *(v29 + 40) = v93;
  *(v29 + 48) = v74;
  v75 = v90;
  *(v29 + 56) = v91;
  *(v29 + 64) = v75;
  sub_23B99A974();
  *(v29 + v67) = v56;
  OUTLINED_FUNCTION_35_9();
  sub_23B99A974();
  OUTLINED_FUNCTION_17_18();
  v76 = v101;
  sub_23BB986BC();
  v77 = v105;
  v78 = v102;
  sub_23BB9860C();
  v79 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  v81 = v80;
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_4_1();
  (*(v82 + 8))(v78);
  v83 = v103;
  v84 = *(v103 + 16);
  if (!v84)
  {
    sub_23B979910(v103, &qword_27E1988B0, &qword_23BBE6660);
    goto LABEL_25;
  }

  if (v84 == 1)
  {
LABEL_25:

    goto LABEL_28;
  }

  if (v79 == *(v103 + 8) && v84 == v81)
  {
    sub_23B979910(v103, &qword_27E1988B0, &qword_23BBE6660);
  }

  else
  {
    v86 = sub_23BBDDA88();
    sub_23B979910(v83, &qword_27E1988B0, &qword_23BBE6660);

    if ((v86 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  *&v76[*(v63 + 36)] = 1;
LABEL_28:
  OUTLINED_FUNCTION_17_18();
  sub_23BB986BC();
  OUTLINED_FUNCTION_0_59();
  sub_23BB98664(v77, v87);
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB94F68()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0, &unk_23BBE5DE0);
  OUTLINED_FUNCTION_13_0(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  v5 = v25 - v4;
  sub_23BAE1C0C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  sub_23B979510();
  v12 = _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_11_0(v5, 1, v12);
  if (v13)
  {
    sub_23B979910(v5, &qword_27E1987C0, &unk_23BBE5DE0);
  }

  else
  {
    sub_23BAE1C0C();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    OUTLINED_FUNCTION_3_45();
    sub_23BB98664(v5, v20);
    sub_23BBDB5E8();
    v26 = v22;
    v27 = v21;
    v25[1] = v23;
    sub_23BA51C9C(v15, v17, v19 & 1);

    sub_23BA51C9C(v7, v9, v11 & 1);
  }

  OUTLINED_FUNCTION_8_42();
  sub_23BB98664(v1, v24);
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB95108()
{
  OUTLINED_FUNCTION_10_0();
  v79 = v1;
  LODWORD(v72) = v2;
  v76 = v3;
  v80 = v4;
  v74 = _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_6();
  v77 = v6;
  OUTLINED_FUNCTION_5_3();
  sub_23BBDCBE8();
  OUTLINED_FUNCTION_7();
  v70 = v8;
  v71 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_1();
  v69 = v9 - v10;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v11);
  v68 = &v62[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F0, &unk_23BBE9F10);
  v14 = OUTLINED_FUNCTION_13_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_1();
  v73 = v15 - v16;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18_3();
  v75 = v18;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_3();
  v66 = v20;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v21);
  v23 = &v62[-v22];
  v78 = _s22LocalizedPriceResourceVMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_1();
  v67 = v25 - v26;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18_3();
  v65 = v28;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18_3();
  v64 = v30;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  OUTLINED_FUNCTION_13_0(v32);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_19_30();
  v34 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_1();
  v40 = v39 - v38;
  type metadata accessor for SubscriptionStoreCopyWriter(0);
  v41 = v0;
  sub_23B979510();
  OUTLINED_FUNCTION_35_3(v0);
  if (v42)
  {
    sub_23B979910(v0, &unk_27E19FEF0, &unk_23BBE3E40);
    v43 = v79;
  }

  else
  {
    (*(v36 + 32))(v40, v0, v34);
    v43 = v79;
    v44 = v78;
    if (v79 == 4)
    {
      sub_23BB96D38();
      OUTLINED_FUNCTION_11_0(v23, 1, v44);
      if (!v42)
      {
        v58 = OUTLINED_FUNCTION_21_19();
        v59(v58);
        sub_23BB986BC();
LABEL_28:
        sub_23BB986BC();
        swift_storeEnumTagMultiPayload();
        goto LABEL_29;
      }

      sub_23B979910(v23, &qword_27E19A3F0, &unk_23BBE9F10);
    }

    v45 = v73;
    v46 = v75;
    if (v72)
    {
      v47 = v68;
      sub_23BBDCBF8();
      v48 = v69;
      sub_23BBDCBD8();
      OUTLINED_FUNCTION_18_22();
      sub_23BB98714(v49, v50, MEMORY[0x277CDD2A8]);
      v51 = v71;
      v63 = sub_23BBDCF38();
      v72 = v41;
      v52 = *(v70 + 8);
      v53 = v48;
      v44 = v78;
      v52(v53, v51);
      v54 = v47;
      v46 = v75;
      v52(v54, v51);
      if ((v63 & 1) == 0)
      {
        v55 = v66;
        sub_23BB970DC(v66);
        OUTLINED_FUNCTION_11_0(v55, 1, v44);
        if (!v42)
        {
          goto LABEL_18;
        }

        sub_23B979910(v55, &qword_27E19A3F0, &unk_23BBE9F10);
      }
    }

    if (v43 != 4)
    {
      sub_23BB96D38();
      OUTLINED_FUNCTION_11_0(v46, 1, v44);
      if (!v42)
      {
LABEL_18:
        v60 = OUTLINED_FUNCTION_21_19();
        v61(v60);
LABEL_27:
        sub_23BB986BC();
        goto LABEL_28;
      }

      sub_23B979910(v46, &qword_27E19A3F0, &unk_23BBE9F10);
    }

    sub_23BB96D38();
    v56 = OUTLINED_FUNCTION_21_19();
    v57(v56);
    OUTLINED_FUNCTION_11_0(v45, 1, v44);
    if (!v42)
    {
      goto LABEL_27;
    }

    sub_23B979910(v45, &qword_27E19A3F0, &unk_23BBE9F10);
  }

  if (v43 == 4)
  {
    if (v76)
    {
      goto LABEL_24;
    }

LABEL_25:
    sub_23BB96BA8();
    goto LABEL_26;
  }

  if ((v76 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_24:
  sub_23BB967C4();
LABEL_26:
  OUTLINED_FUNCTION_2_47();
  sub_23BB986BC();
LABEL_29:
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB95790(char *a1)
{
  v2 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_27_12();
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_7_44();
  sub_23BB9860C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_15_28();
    sub_23BB986BC();
    sub_23BB9860C();
    sub_23BB94F68();
    v9 = v8;
    OUTLINED_FUNCTION_9_31();
    sub_23BB98664(a1, v10);
    OUTLINED_FUNCTION_8_42();
    v12 = v6;
  }

  else
  {
    if (qword_27E197628 != -1)
    {
      swift_once();
    }

    v13 = qword_27E1BF840;
    v9 = sub_23BBDB648();
    OUTLINED_FUNCTION_9_31();
    v12 = a1;
  }

  sub_23BB98664(v12, v11);
  return v9;
}

void sub_23BB95980()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  OUTLINED_FUNCTION_13_0(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_2();
  v79 = v9;
  OUTLINED_FUNCTION_5_3();
  v74 = sub_23BBDCB58();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_1();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848, &qword_23BBFA090);
  OUTLINED_FUNCTION_13_0(v19);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_0();
  v76 = type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_16_26();
  sub_23BB9860C();
  v77 = v2;
  v78 = v4;
  v65 = sub_23BB963C4(v4);
  v66 = v25;
  v26 = v24 + *(type metadata accessor for Subscription(0) + 20);
  v27 = *(v26 + 8);
  if (v27 == 2)
  {
    v75 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v73 = v28;
  }

  else
  {
    v75 = *v26;
    v73 = v27 & 1;
  }

  v29 = sub_23BBDC8C8();
  v71 = v30;
  v72 = v29;
  v31 = sub_23BBDC8B8();
  v33 = sub_23B9D4CA8(v31, v32);

  if (v33)
  {
    v69 = 0;
    v70 = 0;
  }

  else
  {
    v34 = sub_23BBDC8B8();
    v69 = v35;
    v70 = v34;
  }

  v36 = sub_23BBDC8E8();
  v67 = v37;
  v68 = v36;
  sub_23B9787A8(v18);
  sub_23BBDCA98();
  v38 = *(v11 + 8);
  v39 = v74;
  v38(v18, v74);
  v40 = sub_23BBDCD08();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v40);
  if (v66)
  {
    sub_23B979910(v77, qword_27E197A68, qword_23BBE3D90);
    OUTLINED_FUNCTION_0_59();
    sub_23BB98664(v78, v41);
    v42 = 0;
  }

  else
  {
    sub_23B9787A8(v15);
    v43 = sub_23BBDCA28();
    v38(v15, v39);
    if (v43 >= v65)
    {
      sub_23B9787A8(v15);
      v45 = sub_23BBDCA28();
      sub_23B979910(v77, qword_27E197A68, qword_23BBE3D90);
      OUTLINED_FUNCTION_0_59();
      sub_23BB98664(v78, v46);
      v38(v15, v39);
      if (v65 == v45)
      {
        v42 = 4;
      }

      else
      {
        v42 = 2;
      }
    }

    else
    {
      sub_23B979910(v77, qword_27E197A68, qword_23BBE3D90);
      OUTLINED_FUNCTION_0_59();
      sub_23BB98664(v78, v44);
      v42 = 8;
    }
  }

  sub_23B979510();
  OUTLINED_FUNCTION_0_59();
  sub_23BB98664(v24, v47);
  v48 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v40);
  v52 = *(v48 + 36);
  *(v6 + v52) = 0;
  sub_23BBDCC88();
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  v58 = v72;
  v57 = v73;
  *v6 = v75;
  *(v6 + 8) = v57;
  *(v6 + 16) = v27 == 2;
  v60 = v70;
  v59 = v71;
  *(v6 + 24) = v58;
  *(v6 + 32) = v59;
  v62 = v68;
  v61 = v69;
  *(v6 + 40) = v60;
  *(v6 + 48) = v61;
  v63 = v67;
  *(v6 + 56) = v62;
  *(v6 + 64) = v63;
  sub_23B99A974();
  *(v6 + v52) = v42;
  sub_23B99A974();
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB95DDC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_23BBDC8E8();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_23BB95E08()
{
  OUTLINED_FUNCTION_10_0();
  v67 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F0, &unk_23BBE9F10);
  OUTLINED_FUNCTION_13_0(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_22_2();
  v64 = v4;
  v5 = OUTLINED_FUNCTION_5_3();
  v63 = _s22LocalizedPriceResourceVMa(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_6();
  v62 = v7;
  OUTLINED_FUNCTION_5_3();
  v8 = sub_23BBDCBE8();
  OUTLINED_FUNCTION_7();
  v65 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  v17 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_6();
  v66 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  OUTLINED_FUNCTION_13_0(v20);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_19_30();
  v22 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_6();
  v68 = v26;
  v27 = OUTLINED_FUNCTION_5_3();
  type metadata accessor for SubscriptionStoreCopyWriter(v27);
  sub_23B979510();
  OUTLINED_FUNCTION_11_0(v0, 1, v22);
  if (v28)
  {
    sub_23B979910(v0, &unk_27E19FEF0, &unk_23BBE3E40);
    v29 = v67;
    sub_23BB967C4();
    v31 = *(v0 + 56);
    v30 = *(v0 + 64);
    v32 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(0);
    v33 = *(v32 + 24);

    sub_23BB97344(v29 + v33);
    sub_23BB967C4();
    v34 = (v29 + *(v32 + 20));
    *v34 = v31;
    v34[1] = v30;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v60 = v0;
    v61 = v17;
    (*(v24 + 32))(v68, v0, v22);
    sub_23BBDCBF8();
    sub_23BBDCBD8();
    OUTLINED_FUNCTION_18_22();
    sub_23BB98714(v35, v36, MEMORY[0x277CDD2A8]);
    v37 = sub_23BBDCF38();
    v38 = *(v65 + 8);
    v38(v13, v8);
    v38(v16, v8);
    v39 = v24;
    if (v37)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3258, &qword_23BC03960);
      v41 = v66;
      v42 = v66 + *(v40 + 48);
      v43 = v60;
      sub_23BB967C4();
      v44 = *(v43 + 56);
      v45 = *(v43 + 64);
      v46 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(0);
      v47 = *(v46 + 24);

      sub_23BB97344(v41 + v47);
      sub_23BB967C4();
      v48 = (v41 + *(v46 + 20));
      *v48 = v44;
      v48[1] = v45;
      v49 = v68;
      sub_23BBDCC68();
      (*(v39 + 8))(v49, v22);
      *(v42 + *(_s20LocalizationResourceVMa(0) + 20)) = xmmword_23BBE8BF0;
    }

    else
    {
      v50 = v64;
      v51 = v60;
      sub_23BB970DC(v64);
      OUTLINED_FUNCTION_11_0(v50, 1, v63);
      v52 = v66;
      if (v28)
      {
        sub_23B979910(v50, &qword_27E19A3F0, &unk_23BBE9F10);
        sub_23BB967C4();
        v54 = *(v51 + 56);
        v53 = *(v51 + 64);
        v55 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(0);
        v56 = *(v55 + 24);

        sub_23BB97344(v52 + v56);
        sub_23BB967C4();
        (*(v39 + 8))(v68, v22);
        v57 = (v52 + *(v55 + 20));
        *v57 = v54;
        v57[1] = v53;
      }

      else
      {
        v58 = v62;
        sub_23BB986BC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3250, &qword_23BC03310);
        OUTLINED_FUNCTION_31_1();
        sub_23BB9860C();
        sub_23BB95108();
        sub_23BB98664(v58, _s22LocalizedPriceResourceVMa);
        (*(v39 + 8))(v68, v22);
      }
    }

    swift_storeEnumTagMultiPayload();
    sub_23BB986BC();
  }

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB963C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Subscription(0);
  v9 = a1 + *(v8 + 20);
  v10 = *(v9 + 8);
  if (v10 == 2)
  {
    v11 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v13 = v12;
  }

  else
  {
    v11 = *v9;
    v13 = v10 & 1;
  }

  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_23B979910(v7, qword_27E197A68, qword_23BBE3D90);
    sub_23B979A38(v11, v13, v10 == 2);
  }

  else
  {
    v14 = &v7[*(v8 + 20)];
    v15 = v14[8];
    if (v15 == 2)
    {
      v16 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      v18 = v17;
    }

    else
    {
      v16 = *v14;
      v18 = v15 & 1;
    }

    v19 = v15 == 2;
    v20 = v10 == 2;
    sub_23BB98664(v7, type metadata accessor for Subscription);
    v21 = sub_23BBA7A24(v11, v13, v20, v16, v18, v19);
    sub_23B979A38(v16, v18, v19);
    sub_23B979A38(v11, v13, v20);
    if (v21)
    {
      return 0;
    }
  }

  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) != 1)
  {
    swift_getKeyPath();
    sub_23B9FCC2C();
    v22 = v23;

    sub_23BB98664(v4, type metadata accessor for Subscription);
    return v22;
  }

  sub_23B979910(v4, qword_27E197A68, qword_23BBE3D90);
  return 0;
}

uint64_t sub_23BB9665C@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for Subscription(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_23BB9860C();
  v11 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  v13 = v12;
  v14 = sub_23BBDCDB8();
  (*(*(v14 - 8) + 8))(v9, v14);
  v15 = *(a3 + 16);
  if (v15 >= 2)
  {
    if (v11 == *(a3 + 8) && v15 == v13)
    {
    }

    else
    {
      v19 = sub_23BBDDA88();

      if ((v19 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v10 = 0;
    v17 = 1;
    goto LABEL_12;
  }

LABEL_3:
  v17 = 0;
LABEL_12:
  *a4 = v10;
  *(a4 + 8) = v17;
  return result;
}

void sub_23BB967C4()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848, &qword_23BBFA090);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  type metadata accessor for SubscriptionStoreCopyWriter(0);
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_35_3(v1);
  if (v15)
  {
    sub_23B979910(v1, &qword_27E198848, &qword_23BBFA090);
    sub_23BB96960(v5);
  }

  else
  {
    v16 = *(v10 + 32);
    v16(v14, v1, v8);
    v18 = *(v0 + 56);
    v17 = *(v0 + 64);
    v19 = _s22LocalizedPriceResourceVMa(0);
    v20 = OUTLINED_FUNCTION_30_8(v19);
    (v16)(v20);
    v21 = v5 + *(v1 + 24);
    *v21 = v3;
    *(v21 + 1) = 1;
    _s22LocalizedPriceResourceV6FormatOMa(0);
    swift_storeEnumTagMultiPayload();
    *v5 = v18;
    v5[1] = v17;
    _s11PriceStringOMa(0);
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_9_1();
}

double sub_23BB96960@<D0>(void *a1@<X8>)
{
  v2 = v1;
  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SKLogger(0);
  __swift_project_value_buffer(v4, qword_27E1BFC88);
  *&v14 = 0;
  *(&v14 + 1) = 0xE000000000000000;
  sub_23BBDD768();
  v16 = v14;
  MEMORY[0x23EEB5890](0xD000000000000071, 0x800000023BBE3400);
  v5 = *(v1 + 16);
  v14 = *v1;
  v15 = v5;
  sub_23BBDD8B8();
  v6 = v16;
  v7 = sub_23BBDD5A8();

  v8 = sub_23BBD9988();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v14 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v14);
    *(v9 + 12) = 2082;
    v11 = sub_23BA5AB90(v6, *(&v6 + 1), &v14);

    *(v9 + 14) = v11;
    _os_log_impl(&dword_23B970000, v8, v7, "%{public}s%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB6DC0](v10, -1, -1);
    MEMORY[0x23EEB6DC0](v9, -1, -1);
  }

  else
  {
  }

  v12 = *(v2 + 8);
  *a1 = *(v2 + 7);
  a1[1] = v12;
  _s11PriceStringOMa(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

void sub_23BB96BA8()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848, &qword_23BBFA090);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  type metadata accessor for SubscriptionStoreCopyWriter(0);
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_35_3(v1);
  if (v15)
  {
    sub_23B979910(v1, &qword_27E198848, &qword_23BBFA090);
    sub_23BB96960(v5);
  }

  else
  {
    v16 = *(v10 + 32);
    v16(v14, v1, v8);
    v18 = *(v0 + 56);
    v17 = *(v0 + 64);
    v19 = _s22LocalizedPriceResourceVMa(0);
    v20 = OUTLINED_FUNCTION_30_8(v19);
    (v16)(v20);
    *(v5 + *(v1 + 24)) = v3;
    _s22LocalizedPriceResourceV6FormatOMa(0);
    swift_storeEnumTagMultiPayload();
    *v5 = v18;
    v5[1] = v17;
    _s11PriceStringOMa(0);
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_9_1();
}

void sub_23BB96D38()
{
  OUTLINED_FUNCTION_10_0();
  v53 = v1;
  v3 = v2;
  v54 = sub_23BBDCD08();
  OUTLINED_FUNCTION_7();
  v52 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_6();
  v51 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848, &qword_23BBFA090);
  OUTLINED_FUNCTION_13_0(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  OUTLINED_FUNCTION_13_0(v18);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  type metadata accessor for SubscriptionStoreCopyWriter(0);
  sub_23B979510();
  OUTLINED_FUNCTION_11_0(v21, 1, v11);
  if (v22)
  {
    goto LABEL_5;
  }

  (*(v13 + 32))(v17, v21, v11);
  sub_23B979510();
  OUTLINED_FUNCTION_11_0(v10, 1, v54);
  if (v22)
  {
    (*(v13 + 8))(v17, v11);
LABEL_5:
    _s22LocalizedPriceResourceVMa(0);
    v41 = OUTLINED_FUNCTION_32_9();
    goto LABEL_6;
  }

  v24 = v51;
  v23 = v52;
  v25 = v54;
  (*(v52 + 32))(v51, v10, v54);
  v26 = *(v0 + 56);
  v27 = *(v0 + 64);
  v50 = v26;
  v48 = v27;
  v28 = _s22LocalizedPriceResourceVMa(0);
  v29 = *(v28 + 20);
  v30 = v28;
  v49 = v28;
  (*(v23 + 16))(&v3[v29], v24, v25);
  v31 = &v3[*(v30 + 24)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8, &qword_23BBE9F20);
  v33 = *(v32 + 64);
  v46 = *(v32 + 48);
  v47 = v33;

  v34 = sub_23BBDCC18();
  v44 = v35;
  v45 = v34;
  v36 = _s15PricePropertiesVMa(0);
  sub_23BBDCBF8();
  sub_23BBDCC68();
  v37 = sub_23BBDCC08();
  (*(v23 + 8))(v24, v25);
  (*(v13 + 8))(v17, v11);
  v38 = v44;
  *v31 = v45;
  v31[1] = v38;
  *(v31 + *(v36 + 28)) = v37;
  *(v31 + v46) = v53;
  *(v31 + v47) = 0;
  _s22LocalizedPriceResourceV6FormatOMa(0);
  swift_storeEnumTagMultiPayload();
  v39 = v49;
  v40 = v48;
  *v3 = v50;
  *(v3 + 1) = v40;
  v41 = v3;
  v42 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v41, v42, 1, v39);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB970DC@<X0>(char *a1@<X8>)
{
  v3 = sub_23BBDCD08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848, &qword_23BBFA090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  type metadata accessor for SubscriptionStoreCopyWriter(0);
  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    v10 = _s22LocalizedPriceResourceVMa(0);
    v11 = a1;
    v12 = 1;
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    v13 = *(v1 + 56);
    v23 = *(v1 + 64);
    v24 = v13;
    v14 = _s22LocalizedPriceResourceVMa(0);
    (*(v4 + 16))(&a1[*(v14 + 20)], v6, v3);
    v15 = &a1[*(v14 + 24)];

    v16 = sub_23BBDCC18();
    v18 = v17;
    v19 = _s15PricePropertiesVMa(0);
    sub_23BBDCBF8();
    sub_23BBDCC68();
    v20 = sub_23BBDCC08();
    (*(v4 + 8))(v6, v3);
    *v15 = v16;
    *(v15 + 1) = v18;
    *&v15[*(v19 + 28)] = v20;
    _s22LocalizedPriceResourceV6FormatOMa(0);
    swift_storeEnumTagMultiPayload();
    v21 = v23;
    *a1 = v24;
    *(a1 + 1) = v21;
    v11 = a1;
    v12 = 0;
    v10 = v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
}

uint64_t sub_23BB97344@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = sub_23BBD9848();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23BBDCFC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23BBDCD08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848, &qword_23BBFA090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C8, &unk_23BBF3BC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  type metadata accessor for SubscriptionStoreCopyWriter(0);
  sub_23B979510();
  v13 = 1;
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) != 1)
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_23BB72A48();
    (*(v4 + 8))(v6, v3);
    v13 = 0;
  }

  v14 = sub_23BBD96B8();
  __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) != 1)
  {
    return (*(*(v14 - 8) + 32))(v17, v12, v14);
  }

  sub_23BBDCF48();
  sub_23BBD9838();
  sub_23BB73D2C();
  result = __swift_getEnumTagSinglePayload(v12, 1, v14);
  if (result != 1)
  {
    return sub_23B979910(v12, &qword_27E1987C8, &unk_23BBF3BC0);
  }

  return result;
}

void sub_23BB97680()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v62 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_6();
  v60 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  OUTLINED_FUNCTION_13_0(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_2();
  v61 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B80, &qword_23BC03950);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  v14 = sub_23BBDCD08();
  OUTLINED_FUNCTION_7();
  v63 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848, &qword_23BBFA090);
  OUTLINED_FUNCTION_13_0(v20);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_28_12();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3450, &qword_23BC03958);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v56 - v24;
  v27 = *v4;
  v26 = v4[1];
  v28 = *v2;
  v29 = v2[1];
  if ((v4[2] & 1) == 0)
  {
    if (v2[2] & 1) != 0 || v27 != v28 || ((v29 ^ v26))
    {
      goto LABEL_52;
    }

LABEL_12:
    v31 = v4[3] == v2[3] && v4[4] == v2[4];
    if (!v31 && (sub_23BBDDA88() & 1) == 0)
    {
      goto LABEL_52;
    }

    v32 = v4[6];
    v33 = v2[6];
    if (v32)
    {
      if (!v33)
      {
        goto LABEL_52;
      }

      v34 = v4[5] == v2[5] && v32 == v33;
      if (!v34 && (sub_23BBDDA88() & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (v33)
    {
      goto LABEL_52;
    }

    v35 = v4[7] == v2[7] && v4[8] == v2[8];
    if (!v35 && (sub_23BBDDA88() & 1) == 0)
    {
      goto LABEL_52;
    }

    v58 = v5;
    v59 = type metadata accessor for SubscriptionStoreCopyWriter(0);
    v36 = *(v22 + 48);
    sub_23B979510();
    v37 = v36;
    sub_23B979510();
    OUTLINED_FUNCTION_11_0(v25, 1, v14);
    if (v30)
    {
      OUTLINED_FUNCTION_11_0(&v25[v36], 1, v14);
      if (v30)
      {
        sub_23B979910(v25, &qword_27E198848, &qword_23BBFA090);
LABEL_42:
        if (*(v4 + *(v59 + 36)) != *(v2 + *(v59 + 36)))
        {
          goto LABEL_52;
        }

        v47 = *(v12 + 48);
        OUTLINED_FUNCTION_35_9();
        sub_23B979510();
        OUTLINED_FUNCTION_35_9();
        sub_23B979510();
        v48 = OUTLINED_FUNCTION_32_9();
        v49 = v58;
        OUTLINED_FUNCTION_11_0(v48, v50, v58);
        if (v30)
        {
          OUTLINED_FUNCTION_11_0(v0 + v47, 1, v49);
          if (v30)
          {
            sub_23B979910(v0, &unk_27E19FEF0, &unk_23BBE3E40);
            goto LABEL_52;
          }
        }

        else
        {
          v51 = v61;
          sub_23B979510();
          OUTLINED_FUNCTION_11_0(v0 + v47, 1, v49);
          if (!v52)
          {
            v53 = v62;
            (*(v62 + 32))(v60, v0 + v47, v49);
            sub_23BB98714(&qword_27E197B88, MEMORY[0x277CDD2B8], MEMORY[0x277CDD2C8]);
            sub_23BBDCF38();
            v54 = *(v53 + 8);
            v55 = OUTLINED_FUNCTION_31_1();
            v54(v55);
            (v54)(v51, v49);
            sub_23B979910(v0, &unk_27E19FEF0, &unk_23BBE3E40);
            goto LABEL_52;
          }

          (*(v62 + 8))(v51, v49);
        }

        v41 = &qword_27E197B80;
        v42 = &qword_23BC03950;
        v43 = v0;
        goto LABEL_40;
      }
    }

    else
    {
      sub_23B979510();
      OUTLINED_FUNCTION_11_0(&v25[v36], 1, v14);
      if (!v38)
      {
        v44 = v63;
        (*(v63 + 32))(v19, &v25[v37], v14);
        sub_23BB98714(&qword_27E19CE68, MEMORY[0x277CDD300], MEMORY[0x277CDD310]);
        v57 = sub_23BBDCF38();
        v45 = *(v44 + 8);
        v45(v19, v14);
        v46 = OUTLINED_FUNCTION_17_0();
        (v45)(v46);
        sub_23B979910(v25, &qword_27E198848, &qword_23BBFA090);
        if ((v57 & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_42;
      }

      v39 = OUTLINED_FUNCTION_17_0();
      v40(v39);
    }

    v41 = &qword_27E1A3450;
    v42 = &qword_23BC03958;
    v43 = v25;
LABEL_40:
    sub_23B979910(v43, v41, v42);
    goto LABEL_52;
  }

  if (v2[2])
  {
    v30 = v27 == v28 && v26 == v29;
    if (v30 || (sub_23BBDDA88() & 1) != 0)
    {
      goto LABEL_12;
    }
  }

LABEL_52:
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB97CCC@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_23B9BDCD4(v2, v3, v4);
}

void sub_23BB97CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_0();
  a19 = v20;
  a20 = v21;
  _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0, &unk_23BBE5DE0);
  OUTLINED_FUNCTION_13_0(v26);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3448, &qword_23BC03948);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  sub_23BAE2194();
  if (v34)
  {
    type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
    v35 = *(v30 + 48);
    sub_23B979510();
    sub_23B979510();
    OUTLINED_FUNCTION_35_3(v33);
    if (!v36)
    {
      sub_23B979510();
      OUTLINED_FUNCTION_35_3(&v33[v35]);
      if (!v36)
      {
        OUTLINED_FUNCTION_2_47();
        sub_23BB986BC();
        sub_23BAE2194();
        sub_23BB98664(v25, _s11PriceStringOMa);
        v38 = OUTLINED_FUNCTION_31_1();
        sub_23BB98664(v38, v39);
        sub_23B979910(v33, &qword_27E1987C0, &unk_23BBE5DE0);
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_3_45();
      sub_23BB98664(v29, v37);
LABEL_10:
      sub_23B979910(v33, &qword_27E1A3448, &qword_23BC03948);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_35_3(&v33[v35]);
    if (!v36)
    {
      goto LABEL_10;
    }

    sub_23B979910(v33, &qword_27E1987C0, &unk_23BBE5DE0);
  }

LABEL_11:
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB97F2C(uint64_t a1)
{
  v2 = _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0, &unk_23BBE5DE0);
  OUTLINED_FUNCTION_13_0(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  sub_23BAE2584(a1);
  type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  sub_23B979510();
  v9 = OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_11_0(v9, v10, v2);
  if (v11)
  {
    return sub_23BBDDBD8();
  }

  OUTLINED_FUNCTION_2_47();
  sub_23BB986BC();
  sub_23BBDDBD8();
  sub_23BAE2584(a1);
  OUTLINED_FUNCTION_3_45();
  return sub_23BB98664(v6, v12);
}

uint64_t sub_23BB98064()
{
  v0 = _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v4 = v3 - v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0, &unk_23BBE5DE0);
  OUTLINED_FUNCTION_13_0(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  sub_23BBDDBB8();
  sub_23BAE2584(v12);
  type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  sub_23B979510();
  v7 = OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_11_0(v7, v8, v0);
  if (v9)
  {
    sub_23BBDDBD8();
  }

  else
  {
    OUTLINED_FUNCTION_2_47();
    sub_23BB986BC();
    sub_23BBDDBD8();
    sub_23BAE2584(v12);
    OUTLINED_FUNCTION_3_45();
    sub_23BB98664(v4, v10);
  }

  return sub_23BBDDBF8();
}

uint64_t sub_23BB98428(uint64_t a1)
{
  v1 = _s11PriceStringOMa(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0, &unk_23BBE5DE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-1] - v5;
  sub_23BBDDBB8();
  sub_23BAE2584(v9);
  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v6, 1, v1) == 1)
  {
    sub_23BBDDBD8();
  }

  else
  {
    sub_23BB986BC();
    sub_23BBDDBD8();
    sub_23BAE2584(v9);
    sub_23BB98664(v3, _s11PriceStringOMa);
  }

  return sub_23BBDDBF8();
}

uint64_t sub_23BB9860C()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB98664(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BB986BC()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB98714(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_31_8()
{

  return sub_23B979510();
}

uint64_t OUTLINED_FUNCTION_39_6()
{

  return sub_23BBDCD08();
}

uint64_t sub_23BB98928@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BA759D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23BB98980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a4;
  v11 = *a3;
  v12 = a3[1];
  v13 = *(a3 + 16);
  v14 = type metadata accessor for StorePlaceholderView(0, a5, a6, a4);
  v15 = a7 + v14[12];
  *v15 = sub_23B9BE5CC(0) & 1;
  *(v15 + 8) = v16;
  v17 = a7 + v14[13];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0;
  v18 = a7 + v14[14];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a7 + v14[15];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = *(a5 - 8);
  (*(v20 + 16))(a7, a1, a5);
  sub_23BB9A0C8(a2);
  v22 = v21;

  result = (*(v20 + 8))(a1, a5);
  *(a7 + v14[9]) = v22;
  v24 = a7 + v14[10];
  *v24 = v11;
  *(v24 + 8) = v12;
  *(v24 + 16) = v13;
  *(a7 + v14[11]) = v25;
  return result;
}

uint64_t sub_23BB98B44(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  v10 = MEMORY[0x28223BE20](v9);
  sub_23BA0EFA4(a1, &v13 - v11, v10);
  sub_23BBDAFF8();
  sub_23B97B518(a5, a2, a3, &unk_23BC012F0);
  return sub_23BBDC0D8();
}

uint64_t sub_23BB98C28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BA759D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23BB98C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  v24 = sub_23BBDA928();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Product.TaskState(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a1 + 24);
  sub_23BB98F10(v3, v8, v16, v17, v15);
  (*(v9 + 16))(v12, v3, v8);
  v18 = *(v3 + *(a1 + 44));
  v19 = v3 + *(a1 + 60);
  v20 = *v19;
  if (*(v19 + 8) != 1)
  {

    sub_23BBDD5A8();
    v21 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v20, 0);
    (*(v5 + 8))(v7, v24);
    LODWORD(v20) = v26;
  }

  return sub_23BBBF6CC(v15, 0, v12, v18, v20, v8, v25, v16);
}

id sub_23BB98F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = a1 + *(type metadata accessor for StorePlaceholderView(0, a2, a3, a4) + 40);
  if (*(v6 + 16))
  {
    if (*(v6 + 16) == 1)
    {
      if (qword_27E1976D0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for SKLogger(0);
      __swift_project_value_buffer(v7, qword_27E1BFC88);
      v8 = sub_23BBDD5A8();
      v9 = sub_23BBD9988();
      if (os_log_type_enabled(v9, v8))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v14 = v11;
        *v10 = 136446466;
        *(v10 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v14);
        *(v10 + 12) = 2082;
        *(v10 + 14) = sub_23BA5AB90(0xD00000000000002FLL, 0x800000023BBE3480, &v14);
        _os_log_impl(&dword_23B970000, v9, v8, "%{public}s%{public}s", v10, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEB6DC0](v11, -1, -1);
        MEMORY[0x23EEB6DC0](v10, -1, -1);
      }

      type metadata accessor for Product.TaskState(0);
    }

    else
    {
      type metadata accessor for Product.TaskState(0);
    }

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v12 = *v6;
    *a5 = *v6;
    type metadata accessor for Product.TaskState(0);
    swift_storeEnumTagMultiPayload();

    return v12;
  }
}

uint64_t sub_23BB99128@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v102 = a2;
  v96 = a1;
  v4 = a1 - 8;
  v95 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v93 = v5;
  OUTLINED_FUNCTION_13_3(v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A34F8, &qword_23BC03AD0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v7);
  v8 = type metadata accessor for ProductViewStyleConfiguration(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3500, &qword_23BC03AD8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  v14 = v84 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3508, &qword_23BC03AE0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v15);
  v17 = v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v84 - v19;
  v21 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3510, &qword_23BC03AE8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22_2();
  v98 = v28;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3518, &qword_23BC03AF0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v30);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3520, &qword_23BC03AF8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v32);
  v33 = *(v4 + 44);
  v97 = v3;
  v34 = *(*(v3 + v33) + 16);
  if (v34 == 1)
  {
    v88 = v10;
    v87 = v20;
    v43 = v97 + *(v96 + 52);
    v44 = *v43;
    v45 = *(v43 + 8);
    v47 = *(v43 + 16);
    v46 = *(v43 + 24);
    v48 = *(v43 + 32);
    if (*(v43 + 40) == 1)
    {
      __src[0] = *v43;
      __src[1] = v45;
      __src[2] = v47;
      __src[3] = v46;
      __src[4] = v48;
    }

    else
    {
      v86 = *(v43 + 24);
      v85 = v47;

      v84[3] = sub_23BBDD5A8();
      v49 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      v50 = sub_23B9AD3D4(v44, v45, v85, v86, v48, 0);
      (*(v23 + 8))(v26, v21, v50);
    }

    v51 = __src[2];

    if (v51 == &type metadata for AutomaticProductViewStyle)
    {
      sub_23BB98C88(v96, v88);
      ProductView.init<>(_:)();
      v71 = sub_23BB10684();
      v72 = swift_allocObject();
      *(v72 + 16) = 0u;
      *(v72 + 32) = 0u;
      *(v72 + 48) = 0;
      v73 = &v14[*(v11 + 36)];
      *v73 = sub_23BB9AF50;
      v73[1] = 0;
      v73[2] = &type metadata for LargeProductViewStyle;
      v73[3] = v71;
      v73[4] = v72;
      sub_23BBDC318();
      sub_23BBDA488();
      sub_23B989918(v14, v17, &qword_27E1A3500, &qword_23BC03AD8);
      memcpy(&v17[*(v91 + 36)], __src, 0x70uLL);
      v36 = &qword_27E1A3508;
      v37 = &qword_23BC03AE0;
      v74 = v87;
      OUTLINED_FUNCTION_35_9();
      sub_23B989918(v75, v76, v77, v78);
      OUTLINED_FUNCTION_35_9();
      sub_23B989ECC(v79, v80, v81, v82);
      swift_storeEnumTagMultiPayload();
      sub_23BB9ACD4();
      v83 = v90;
      sub_23BBDACD8();
      sub_23B989ECC(v83, v98, &qword_27E1A3520, &qword_23BC03AF8);
      swift_storeEnumTagMultiPayload();
      sub_23BB9AC48();
      sub_23BB9AE6C();
      OUTLINED_FUNCTION_6_36();
      sub_23BBDACD8();
      sub_23B979910(v83, &qword_27E1A3520, &qword_23BC03AF8);
      v42 = v74;
      return sub_23B979910(v42, v36, v37);
    }

    goto LABEL_8;
  }

  if (v34)
  {
LABEL_8:
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3528, &qword_23BC03B00);
    v53 = v92;
    v54 = v92 + *(v52 + 36);
    *v54 = swift_getKeyPath();
    *(v54 + 8) = 0u;
    *(v54 + 24) = 0u;
    *(v54 + 40) = 0;
    v56 = v96;
    v55 = v97;
    v57 = *(v96 + 16);
    v58 = *(v96 + 24);
    sub_23BB999EC(v97, v57, v58, v59, v53);
    v60 = v95;
    v61 = v94;
    (*(v95 + 16))(v94, v55, v56);
    v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v57;
    *(v63 + 24) = v58;
    (*(v60 + 32))(v63 + v62, v61, v56);
    v64 = swift_allocObject();
    *(v64 + 16) = sub_23BB9AB7C;
    *(v64 + 24) = v63;
    v65 = (v53 + *(v101 + 36));
    *v65 = sub_23BB9AC40;
    v65[1] = v64;
    v36 = &qword_27E1A34F8;
    v37 = &qword_23BC03AD0;
    OUTLINED_FUNCTION_35_9();
    sub_23B989ECC(v66, v67, v68, v69);
    swift_storeEnumTagMultiPayload();
    sub_23BB9AC48();
    sub_23BB9AE6C();
    sub_23BBDACD8();
    v42 = v53;
    return sub_23B979910(v42, v36, v37);
  }

  swift_storeEnumTagMultiPayload();
  sub_23BB9ACD4();
  v35 = v90;
  sub_23BBDACD8();
  v36 = &qword_27E1A3520;
  v37 = &qword_23BC03AF8;
  OUTLINED_FUNCTION_35_9();
  sub_23B989ECC(v38, v39, v40, v41);
  swift_storeEnumTagMultiPayload();
  sub_23BB9AC48();
  sub_23BB9AE6C();
  OUTLINED_FUNCTION_6_36();
  sub_23BBDACD8();
  v42 = v35;
  return sub_23B979910(v42, v36, v37);
}

uint64_t sub_23BB999EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v8 = type metadata accessor for StorePlaceholderView(0, a2, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v24 = *(a1 + *(v12 + 36));
  swift_getKeyPath();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v9 + 32))(v14 + v13, v11, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3578, &qword_23BC03B38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3580, &qword_23BC03B40);
  sub_23B97B518(&qword_27E1A3588, &qword_27E1A3578, &qword_23BC03B38, MEMORY[0x277D83980]);
  sub_23B97B518(&qword_27E1A3590, &qword_27E1A3580, &qword_23BC03B40, &unk_23BBF96C8);
  v15 = v22;
  sub_23BBDC188();
  v16 = (a1 + *(v8 + 48));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v24) = v17;
  v25 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078, &unk_23BBEF500);
  sub_23BBDBF68();
  LOBYTE(a1) = v23;
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3598, &qword_23BC03B48);
  v21 = v15 + *(result + 36);
  *v21 = KeyPath;
  *(v21 + 8) = a1;
  return result;
}

uint64_t sub_23BB99C8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for StorePlaceholderView(0, a3, a4, a4);
  v11 = *a1 != *(*(a2 + *(v10 + 36)) + 16) - 1;
  v12 = *(a2 + *(v10 + 44));
  *(a5 + 24) = swift_getKeyPath();
  *(a5 + 32) = 0;
  *(a5 + 40) = swift_getKeyPath();
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3580, &qword_23BC03B40);
  v14 = v13[13];
  *(a5 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
  swift_storeEnumTagMultiPayload();
  v15 = a5 + v13[14];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = a5 + v13[15];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *a5 = v11;
  result = sub_23BB99DDC(a2, a3, a4, (a5 + 8));
  *(a5 + 16) = v12;
  return result;
}

uint64_t sub_23BB99DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for ProductViewStyleConfiguration(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23BBDA928();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StorePlaceholderView(0, a2, a3, v16);
  v18 = a1 + *(v17 + 52);
  v20 = *v18;
  v19 = *(v18 + 8);
  v21 = *(v18 + 32);
  if (*(v18 + 40) == 1)
  {
  }

  else
  {
    v22 = *(v18 + 16);
    v31 = *(v18 + 24);
    v32 = v22;

    sub_23BBDD5A8();
    v33 = v17;
    v23 = sub_23BBDB338();
    v30 = v12;
    v24 = v23;
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v25 = sub_23B9AD3D4(v20, v19, v32, v31, v21, 0);
    (*(v13 + 8))(v15, v30, v25);
    v17 = v33;
    v20 = v34;
  }

  sub_23BB98C88(v17, v11);
  v26 = v20(v11);

  result = sub_23BB9B1D4(v11, v27);
  *a4 = v26;
  return result;
}

uint64_t sub_23BB9A030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for StorePlaceholderView(0, a3, a4, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078, &unk_23BBEF500);
  return sub_23BBDBF78();
}

void sub_23BB9A0C8(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  v5 = (MEMORY[0x277D84F90] + 32);
  v6 = (a1 + 40);
  while (v4 != v2)
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    if (v1)
    {

      v9 = v3;
    }

    else
    {
      v10 = v3[3];
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A3458, qword_23BC03A18);
      v9 = swift_allocObject();
      v13 = (_swift_stdlib_malloc_size_0(v9) - 32) / 24;
      v9[2] = v12;
      v9[3] = 2 * v13;
      v14 = v9 + 4;
      v15 = v3[3] >> 1;
      v5 = &v9[3 * v15 + 4];
      v1 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;
      if (v3[2])
      {
        if (v9 != v3 || v14 >= &v3[3 * v15 + 4])
        {
          memmove(v14, v3 + 4, 24 * v15);
        }

        v3[2] = 0;
      }

      else
      {
      }
    }

    v17 = __OFSUB__(v1--, 1);
    if (v17)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    *v5 = v2;
    v5[1] = v7;
    v5[2] = v8;
    v5 += 3;
    v6 += 2;
    ++v2;
    v3 = v9;
  }

  v18 = v3[3];
  if (v18 < 2)
  {
    return;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v1);
  v20 = v19 - v1;
  if (!v17)
  {
    v3[2] = v20;
    return;
  }

LABEL_27:
  __break(1u);
}

void sub_23BB9A258(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23BB9A78C(319);
    if (v2 <= 0x3F)
    {
      sub_23BB9A7F0(319, &qword_27E199908, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_23BB9A7F0(319, &qword_27E1991A0, &type metadata for AnyProductViewStyle, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_23BB9A7F0(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_23BB9A7F0(319, &qword_27E1991B8, MEMORY[0x277CDF388], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23BB9A3E0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = a1[v8];
        if (!a1[v8])
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v13 = *&a1[v8];
        if (*&a1[v8])
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BB9A54CLL);
      case 4:
        v13 = *&a1[v8];
        if (!v13)
        {
          break;
        }

LABEL_22:
        v15 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v16 = *a1;
        }

        else
        {
          v15 = 0;
          v16 = *a1;
        }

        return v7 + (v16 | v15) + 1;
      default:
        break;
    }
  }

  if (v5 >= 0x7FFFFFFF)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v17 = *(&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_23BB9A560(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        return;
      case 2:
        *&a1[v10] = v16;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x23BB9A764);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v7 < 0x7FFFFFFF)
        {
          v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v18 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v18 = (a2 - 1);
          }

          *v17 = v18;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}

void sub_23BB9A78C(uint64_t a1)
{
  if (!qword_27E1A34E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A34E8, qword_23BC03A58);
    v1 = sub_23BBDD2A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1A34E0);
    }
  }
}

void sub_23BB9A7F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23BB9A884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0B48, &qword_23BC03AC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = v8;
  v41 = &v36 - v7;
  v9 = 0;
  v10 = 0;
  v37 = *(v8 + 80);
  v11 = MEMORY[0x277D84F90];
  v38 = (v37 + 32) & ~v37;
  v12 = MEMORY[0x277D84F90] + v38;
  v39 = *(a1 + 16);
  while (v39 != v10)
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    v14 = *(v13 + 16);
    v15 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v10;
    v16 = *(v2 + 48);
    *v5 = v10;
    v14(&v5[v16], v15);
    sub_23B989918(v5, v41, &qword_27E1A0B48, &qword_23BC03AC0);
    if (v9)
    {
      v17 = v11;
    }

    else
    {
      v18 = v11[3];
      if (((v18 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v19 = a1;
      v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
      if (v20 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A34F0, &qword_23BC03AC8);
      v22 = *(v40 + 72);
      v23 = v38;
      v17 = swift_allocObject();
      v24 = _swift_stdlib_malloc_size_0(v17);
      if (!v22)
      {
        goto LABEL_33;
      }

      v25 = v24 - v23;
      if (v24 - v23 == 0x8000000000000000 && v22 == -1)
      {
        goto LABEL_34;
      }

      v27 = v25 / v22;
      v17[2] = v21;
      v17[3] = 2 * (v25 / v22);
      v28 = v17 + v23;
      v29 = v11[3];
      v30 = (v29 >> 1) * v22;
      if (v11[2])
      {
        if (v17 < v11 || v28 >= v11 + v38 + v30)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v17 != v11)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v11[2] = 0;
      }

      v12 = &v28[v30];
      v9 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - (v29 >> 1);

      a1 = v19;
    }

    v32 = __OFSUB__(v9--, 1);
    if (v32)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    sub_23B989918(v41, v12, &qword_27E1A0B48, &qword_23BC03AC0);
    v12 += *(v40 + 72);
    ++v10;
    v11 = v17;
  }

  v33 = v11[3];
  if (v33 < 2)
  {
    return;
  }

  v34 = v33 >> 1;
  v32 = __OFSUB__(v34, v9);
  v35 = v34 - v9;
  if (!v32)
  {
    v11[2] = v35;
    return;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_23BB9AB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for StorePlaceholderView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_23BB9A030(a1, v9, v6, v7);
}

uint64_t sub_23BB9AC08()
{

  return swift_deallocObject();
}

unint64_t sub_23BB9AC48()
{
  result = qword_27E1A3530;
  if (!qword_27E1A3530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3520, &qword_23BC03AF8);
    sub_23BB9ACD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3530);
  }

  return result;
}

unint64_t sub_23BB9ACD4()
{
  result = qword_27E1A3538;
  if (!qword_27E1A3538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3508, &qword_23BC03AE0);
    sub_23BB9AD60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3538);
  }

  return result;
}

unint64_t sub_23BB9AD60()
{
  result = qword_27E1A3540;
  if (!qword_27E1A3540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3500, &qword_23BC03AD8);
    sub_23B97B518(&qword_27E1A3548, &qword_27E1A0CD8, &qword_23BBFD068, &protocol conformance descriptor for ProductView<A, B>);
    sub_23BB9AE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3540);
  }

  return result;
}

unint64_t sub_23BB9AE18()
{
  result = qword_27E1A3550;
  if (!qword_27E1A3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3550);
  }

  return result;
}

unint64_t sub_23BB9AE6C()
{
  result = qword_27E1A3558;
  if (!qword_27E1A3558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A34F8, &qword_23BC03AD0);
    sub_23B97B518(&qword_27E1A3560, &qword_27E1A3528, &qword_23BC03B00, &unk_23BBF9678);
    sub_23B97B518(&qword_27E1A0B40, &qword_27E1A0B38, &qword_23BBFC390, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3558);
  }

  return result;
}

uint64_t sub_23BB9AF88()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for StorePlaceholderView(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  (*(*(v5 - 8) + 8))(v7, v5);

  sub_23B99A808(*(v7 + v6[12]), *(v7 + v6[12] + 8), *(v7 + v6[12] + 16));

  v8 = v7 + v6[15];
  sub_23B9AD3D4(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40));
  sub_23B97B450(*(v7 + v6[16]), *(v7 + v6[16] + 8));
  sub_23B97B450(*(v7 + v6[17]), *(v7 + v6[17] + 8));

  return swift_deallocObject();
}

uint64_t sub_23BB9B128@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for StorePlaceholderView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_23BB99C8C(a1, v9, v6, v7, a3);
}

uint64_t sub_23BB9B1D4(uint64_t a1, double a2)
{
  v3 = type metadata accessor for ProductViewStyleConfiguration(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23BB9B234()
{
  result = qword_27E1A35B0;
  if (!qword_27E1A35B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A35B8, qword_23BC03BE0);
    sub_23BB9AC48();
    sub_23BB9AE6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A35B0);
  }

  return result;
}

uint64_t sub_23BB9B2D8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionOptionButtonModel(0) + 28);
  v4 = *(v3 + 16);
  if (v4 >= 4)
  {
    v9 = *(v3 + 24);
    v10 = *(v3 + 32);
    v11 = *(v3 + 8);

    v12 = OUTLINED_FUNCTION_1_61();
    sub_23B9E711C(v12, v13, v14, v15);
    v16 = OUTLINED_FUNCTION_1_61();
    sub_23B9E67A8(v16, v17, v18, v19);
    *a1 = v11;
    *(a1 + 8) = v4;
    *(a1 + 16) = v9 & 1;
    *(a1 + 24) = v10;
    goto LABEL_5;
  }

  if (v4 <= 2)
  {
    v5 = sub_23BB9B60C();
    OUTLINED_FUNCTION_7_34(v5, v6, v7, v8);
LABEL_5:
    type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_20_2();
  sub_23BB95108();
  type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  sub_23BB95108();
  _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
LABEL_7:

  return swift_storeEnumTagMultiPayload();
}

void sub_23BB9B410(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SubscriptionOptionButtonModel(0);
  v4 = (v1 + *(v3 + 28));
  v5 = v4[2];
  if (v5 < 4)
  {
    if (*(v1 + *(v3 + 20)) == 1)
    {
      v6 = sub_23BBDAA48();
      OUTLINED_FUNCTION_7_34(v6, v7, v8, v9);
      v10 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
LABEL_11:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_20_2();
      v18 = v10;
      goto LABEL_12;
    }

    if (v5 != 3)
    {
      sub_23BB95108();
      type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
      sub_23BB95108();
      _s11PriceStringOMa(0);
      OUTLINED_FUNCTION_20_2();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
      v10 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
      goto LABEL_11;
    }

LABEL_9:
    v18 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
    v19 = a1;
    v20 = 1;
    v21 = 1;
LABEL_12:

    __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
    return;
  }

  v11 = v4[6];
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v4[7];
  v13 = v4[8];
  *a1 = v4[5];
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  v14 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
}

uint64_t type metadata accessor for SubscriptionOptionButtonModel(uint64_t a1)
{
  result = qword_27E1A35C0;
  if (!qword_27E1A35C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BB9B60C()
{
  v1 = v0;
  v2 = sub_23BBDAA38();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23BBDCBE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v27 - v11;
  v13 = sub_23BBDCC88();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SubscriptionOptionButtonModel(0);
  if (*(v0 + v17[7] + 16) != 2 || (*(v0 + v17[5]) & 1) != 0 || (*(v0 + v17[6]) & 1) != 0)
  {
    v18 = *(v0 + *(type metadata accessor for SubscriptionStoreCopyWriter(0) + 36));
    if ((v18 & 8) != 0)
    {
      sub_23BBDAA28();
      sub_23BBDAA18();
      sub_23BBDAA08();
      sub_23BBDAA18();
      return sub_23BBDAA58();
    }

    v20 = *(v0 + 24);
    v19 = *(v1 + 32);
    if ((v18 & 6) != 0)
    {
      return sub_23BB747BC(v20, v19);
    }

    return sub_23BBDAA48();
  }

  v22 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  sub_23BA41848(v1 + *(v22 + 40), v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_23B9C8F9C(v12);
    return sub_23BBDAA48();
  }

  v27[1] = v22;
  (*(v14 + 32))(v16, v12, v13);
  sub_23BBDCBF8();
  sub_23BBDCBD8();
  v23 = sub_23B9A0684(v9, v6);
  v24 = *(v4 + 8);
  v24(v6, v3);
  v24(v9, v3);
  if ((v23 & 1) == 0)
  {
    (*(v14 + 8))(v16, v13);
    return sub_23BBDAA48();
  }

  v25 = sub_23BBDAA48();
  (*(v14 + 8))(v16, v13);
  return v25;
}

uint64_t sub_23BB9BA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 4;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_23BB9BB60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SubscriptionStoreCopyWriter(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 16) = (a2 + 3);
  }

  return result;
}

uint64_t sub_23BB9BC0C(uint64_t a1)
{
  result = type metadata accessor for SubscriptionStoreCopyWriter(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BB9BCB4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 73);
    if (v3 > 1)
    {
      return (v3 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);
    v6 = OUTLINED_FUNCTION_15_0(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_23BB9BD50()
{
  OUTLINED_FUNCTION_19();
  if (v3 == 254)
  {
    *(v1 + 73) = -v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);
    v5 = OUTLINED_FUNCTION_15_0(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_23BB9BDF0(uint64_t a1)
{
  sub_23BB9EEC8(319, &qword_27E19A3B8, &type metadata for SubscriptionStoreButtonLabel, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_23B9D4C08(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23BB9BEC8()
{
  result = qword_27E1A35E0;
  if (!qword_27E1A35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A35E0);
  }

  return result;
}

double sub_23BB9BF1C()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[*(type metadata accessor for StoreKitProminentButtonStyle(0) + 28)] != 1)
  {
    goto LABEL_7;
  }

  memcpy(__dst, v0, 0x4AuLL);
  if ((__dst[9] & 0x100) != 0)
  {
    memcpy(v9, v0, sizeof(v9));
    memcpy(v8, v0, 0x4AuLL);
    sub_23B9E6BA4(v8, v7);
  }

  else
  {

    sub_23BBDD5A8();
    v5 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B979910(__dst, &qword_27E19A390, &unk_23BC009F0);
    (*(v2 + 8))(v4, v1);
  }

  memcpy(v8, v9, 0x49uLL);
  sub_23B9E64A4(v8);
  if (v8[0] == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);
    sub_23BBD9D38();
    return *v7;
  }

  else
  {
LABEL_7:
    if (qword_27E197700 != -1)
    {
      swift_once();
    }

    return *&qword_27E1BFCA8;
  }
}

uint64_t sub_23BB9C15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F10, &qword_23BBE70F8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v41 = sub_23BBDB588();
  v8 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A35E8, &qword_23BC03D30);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A35F0, &qword_23BC03D38);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v39 = a1;
  sub_23BBDB078();
  KeyPath = swift_getKeyPath();
  v20 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1CD0, &qword_23BC03D70) + 36)];
  *v20 = KeyPath;
  *(v20 + 1) = 1;
  v20[16] = 0;
  v21 = swift_getKeyPath();
  v22 = &v14[*(v11 + 36)];
  *v22 = v21;
  v22[1] = 0x3FB999999999999ALL;
  sub_23BBDB4A8();
  sub_23BB9E584();
  sub_23BBDB6D8();
  sub_23B979910(v14, &qword_27E1A35E8, &qword_23BC03D30);
  sub_23BBDB388();
  sub_23BBD9B18();
  OUTLINED_FUNCTION_2_23();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3600, &qword_23BC03DB8);
  OUTLINED_FUNCTION_1_62(v23);
  sub_23BBDB3F8();
  v38 = v3;
  sub_23BB9BF1C();
  sub_23BBD9B18();
  OUTLINED_FUNCTION_2_23();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3608, &qword_23BC03DC0);
  OUTLINED_FUNCTION_1_62(v24);
  v25 = &v18[*(v15 + 36)];
  v26 = &v25[*(type metadata accessor for DynamicButtonHeightModifier(0) + 20)];
  v42 = 0x4049000000000000;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0AC0], v41);
  sub_23B974940();
  sub_23BBD9D18();
  *v26 = 0x4049000000000000;
  v26[8] = 0;
  v27 = *MEMORY[0x277CDF9A8];
  v28 = sub_23BBDA308();
  OUTLINED_FUNCTION_4_1();
  (*(v29 + 104))(v7, v27, v28);
  sub_23BB9E65C(&qword_27E198F50, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_23BBDCF38();
  if (result)
  {
    sub_23BB9E6A4();
    sub_23B97B518(&qword_27E198F80, &qword_27E198F10, &qword_23BBE70F8, MEMORY[0x277D84348]);
    v31 = v40;
    sub_23BBDB898();
    sub_23B979910(v7, &qword_27E198F10, &qword_23BBE70F8);
    sub_23B979910(v18, &qword_27E1A35F0, &qword_23BC03D38);
    v32 = sub_23BBDC318();
    v34 = v33;
    v48 = 1;
    v47 = 1;
    v46 = 0;
    v45 = 1;
    v44 = 1;
    v43 = 1;
    v49 = 0;
    v35 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3630, &qword_23BC03DC8) + 36);
    *v35 = 0;
    *(v35 + 8) = 1;
    *(v35 + 16) = 0;
    *(v35 + 24) = 1;
    *(v35 + 32) = 0x4076800000000000;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 1;
    *(v35 + 64) = 0;
    *(v35 + 72) = 1;
    *(v35 + 80) = 0;
    *(v35 + 88) = 1;
    *(v35 + 90) = v42;
    *(v35 + 94) = WORD2(v42);
    *(v35 + 96) = v32;
    *(v35 + 104) = v34;
    LOBYTE(v32) = *(v38 + *(type metadata accessor for StoreKitProminentButtonStyle(0) + 24));
    LOBYTE(v34) = sub_23BBDB088();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3638, &qword_23BC03DD0);
    return sub_23BB9C6B8(v32, v34 & 1, (v31 + *(v36 + 36)));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BB9C6B8@<X0>(char a1@<W0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for ProminentButtonStyleApplierModifier(0);
  v7 = v6[6];
  *&a3[v7] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199730, &unk_23BBE9850);
  swift_storeEnumTagMultiPayload();
  v8 = &a3[v6[7]];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = &a3[v6[8]];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = &a3[v6[9]];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  result = sub_23BBDC2A8();
  a3[v6[10]] = result & 1;
  *a3 = a1 & 1;
  a3[1] = a2;
  return result;
}

uint64_t sub_23BB9C7A4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA588();
  *v0 = result;
  return result;
}

uint64_t sub_23BB9C7F8(double a1)
{
  v29 = sub_23BBDA468();
  MEMORY[0x28223BE20](v29);
  v28 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23BBDC148();
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BBDA508();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  type metadata accessor for ProminentButtonStyleApplierModifier(0);
  sub_23B9B7604();
  sub_23BBDA4F8();
  v12 = sub_23BBDA4D8();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
  v14 = sub_23BBDC2A8();
  if ((v12 & 1) == 0)
  {
    if ((v14 & 1) != 0 || (sub_23B9B7604(), sub_23BBDA4C8(), v17 = sub_23BBDA4D8(), v13(v8, v5), v13(v11, v5), (v17 & 1) == 0))
    {
      sub_23B9B7604();
      sub_23BB9E65C(&qword_27E1A37C0, MEMORY[0x277CDDBB8], MEMORY[0x277CDDBA0]);
      return sub_23BBDC218();
    }

    goto LABEL_6;
  }

  if ((v14 & 1) == 0)
  {
LABEL_6:
    v18 = *(v29 + 20);
    v19 = *MEMORY[0x277CE0118];
    v20 = sub_23BBDAA88();
    v21 = v28;
    (*(*(v20 - 8) + 104))(&v28[v18], v19, v20);
    __asm { FMOV            V0.2D, #14.0 }

    *v21 = _Q0;
    sub_23BB9E65C(&qword_27E198168, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    return sub_23BBDC218();
  }

  v15 = *MEMORY[0x277CE0128];
  v16 = sub_23BBDAA88();
  (*(*(v16 - 8) + 104))(v4, v15, v16);
  sub_23BB9E65C(&qword_27E1A37C8, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
  return sub_23BBDC218();
}

double sub_23BB9CBAC()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ProminentButtonStyleApplierModifier(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    if ((v6 & 1) == 0)
    {
      return 0.6;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v8 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v6, 0);
    (*(v2 + 8))(v4, v1);
    if (v9[15] != 1)
    {
      return 0.6;
    }
  }

  result = 0.8;
  if (!*(v0 + 1))
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_23BB9CD38@<X0>(uint64_t a2@<X8>)
{
  if (*v2)
  {
    result = sub_23BBDAEF8();
    v5 = MEMORY[0x277CE04E8];
    *(a2 + 24) = MEMORY[0x277CE04F8];
    *(a2 + 32) = v5;
    *a2 = result;
  }

  else
  {
    *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198FF0, &qword_23BBE7210);
    *(a2 + 32) = sub_23B97B518(&qword_27E1A1D50, &qword_27E198FF0, &qword_23BBE7210, &unk_23BC08110);
    v6 = swift_allocObject();
    *a2 = v6;
    v7 = sub_23BBD356C();
    v8 = sub_23BBDA1E8();
    v9 = MEMORY[0x277CDF8D0];
    *(v6 + 48) = v8;
    *(v6 + 56) = v9;
    __swift_allocate_boxed_opaque_existential_1((v6 + 24));
    sub_23BBDA1D8();
    result = sub_23BBDBCB8();
    *(v6 + 64) = result;
    *(v6 + 72) = 1;
    *(v6 + 16) = v7;
  }

  return result;
}

uint64_t sub_23BB9CE30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v104 = a1;
  v107 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3698, &qword_23BC04018);
  v94 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v93 = &v82 - v4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36A0, &qword_23BC04020);
  MEMORY[0x28223BE20](v105);
  v6 = &v82 - v5;
  v106 = sub_23BBDA328();
  v103 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v102 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_23BBDA928();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36A8, &qword_23BC04028);
  MEMORY[0x28223BE20](v87);
  v10 = &v82 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36B0, &qword_23BC04030);
  MEMORY[0x28223BE20](v91);
  v12 = &v82 - v11;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36B8, &qword_23BC04038);
  MEMORY[0x28223BE20](v90);
  v14 = &v82 - v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36C0, &qword_23BC04040);
  MEMORY[0x28223BE20](v89);
  v16 = &v82 - v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36C8, &qword_23BC04048);
  MEMORY[0x28223BE20](v88);
  v92 = &v82 - v17;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36D0, &qword_23BC04050);
  MEMORY[0x28223BE20](v96);
  v97 = &v82 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36D8, &qword_23BC04058);
  MEMORY[0x28223BE20](v95);
  v98 = &v82 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36E0, &qword_23BC04060);
  MEMORY[0x28223BE20](v20);
  v99 = &v82 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36E8, &qword_23BC04068);
  v101 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v100 = &v82 - v23;
  v24 = type metadata accessor for ProminentButtonStyleApplierModifier(0);
  if (*(v2 + *(v24 + 40)))
  {
    MEMORY[0x28223BE20](v24);
    *(&v82 - 2) = v104;
    *(&v82 - 1) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36F0, &qword_23BC04070);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36F8, &qword_23BC04078);
    v26 = sub_23BB9F198();
    v27 = sub_23BB9F44C();
    v108 = v25;
    v109 = MEMORY[0x277CE12F0];
    v110 = v26;
    v111 = v27;
    swift_getOpaqueTypeConformance2();
    v28 = v93;
    sub_23BBDAE68();
    v29 = v94;
    (*(v94 + 16))(v6, v28, v3);
    swift_storeEnumTagMultiPayload();
    v30 = sub_23BB9F4A0();
    v31 = sub_23BB9E65C(&qword_27E1A1D48, MEMORY[0x277CDD9F8], MEMORY[0x277CDD9F0]);
    v108 = v20;
    v109 = v106;
    v110 = v30;
    v111 = v31;
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E1A37B8, &qword_27E1A3698, &qword_23BC04018, MEMORY[0x277CE0480]);
    sub_23BBDACD8();
    return (*(v29 + 8))(v28, v3);
  }

  else
  {
    v33 = v24;
    v82 = v20;
    v83 = v22;
    v93 = v6;
    v94 = v3;
    sub_23BB9CD38(&v108);
    v34 = __swift_project_boxed_opaque_existential_1(&v108, v111);
    v35 = MEMORY[0x28223BE20](v34);
    (*(v37 + 16))(&v82 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v35);
    v38 = sub_23BBD9DF8();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3730, &qword_23BC04090);
    (*(*(v39 - 8) + 16))(v10, v104, v39);
    *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3718, &qword_23BC04088) + 36)] = v38;
    __swift_destroy_boxed_opaque_existential_1(&v108);
    v40 = &v10[*(v87 + 36)];
    sub_23BBDA1D8();
    v42 = sub_23BB9C7F8(v41);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3790, &qword_23BC04098);
    *&v40[*(v43 + 52)] = v42;
    *&v40[*(v43 + 56)] = 256;
    v44 = *(v2 + 1);
    sub_23BB9F9DC(v10, v12, &qword_27E1A36A8, &qword_23BC04028);
    v45 = 0.8;
    if (!v44)
    {
      v45 = 1.0;
    }

    *&v12[*(v91 + 36)] = v45;
    if (v44)
    {
      v46 = 0.2;
    }

    else
    {
      v46 = 0.0;
    }

    if (v44)
    {
      v47 = 0.97;
    }

    else
    {
      v47 = 1.0;
    }

    sub_23BB9F9DC(v12, v14, &qword_27E1A36B0, &qword_23BC04030);
    *&v14[*(v90 + 36)] = v46;
    sub_23BBDC438();
    v49 = v48;
    v51 = v50;
    sub_23BB9F9DC(v14, v16, &qword_27E1A36B8, &qword_23BC04038);
    v52 = &v16[*(v89 + 36)];
    *v52 = v47;
    *(v52 + 1) = v47;
    *(v52 + 2) = v49;
    *(v52 + 3) = v51;
    v53 = sub_23BBDC368();
    v54 = v92;
    sub_23BB9F9DC(v16, v92, &qword_27E1A36C0, &qword_23BC04040);
    v55 = v54 + *(v88 + 36);
    *v55 = v53;
    *(v55 + 8) = v44;
    v56 = sub_23BBDBD18();
    v108 = sub_23BBDBD38();
    v109 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198270, &unk_23BBE65E0);
    sub_23B987F20();
    sub_23B97B518(&qword_27E198298, &qword_27E198270, &unk_23BBE65E0, &unk_23BBEAA18);
    sub_23BBDBDE8();
    v57 = v2 + *(v33 + 32);
    v58 = *v57;
    if (*(v57 + 8) != 1)
    {

      sub_23BBDD5A8();
      v59 = sub_23BBDB338();
      sub_23BBD9978();

      v60 = v84;
      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B5C0(v58, 0);
      (*(v85 + 8))(v60, v86);
    }

    v61 = v93;
    v62 = v106;
    v63 = v83;
    v64 = v82;
    v65 = sub_23BBDBD58();

    v67 = sub_23BB9C7F8(v66);
    v68 = v97;
    sub_23BB9F9DC(v54, v97, &qword_27E1A36C8, &qword_23BC04048);
    v69 = v68 + *(v96 + 36);
    *v69 = v65;
    *(v69 + 8) = v67;
    *(v69 + 16) = 256;
    v71 = sub_23BB9C7F8(v70);
    v72 = v98;
    sub_23BB9F9DC(v68, v98, &qword_27E1A36D0, &qword_23BC04050);
    v73 = v72 + *(v95 + 36);
    *v73 = v71;
    *(v73 + 8) = 0;
    v74 = v99;
    v75 = &v99[*(v64 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A37B0, &unk_23BC040B0);
    sub_23BBDA518();
    *v75 = sub_23BB9C7F8(v76);
    v75[8] = 0;
    sub_23BB9F9DC(v72, v74, &qword_27E1A36D8, &qword_23BC04058);
    v77 = v102;
    sub_23BBDA548();
    v78 = sub_23BB9F4A0();
    v79 = sub_23BB9E65C(&qword_27E1A1D48, MEMORY[0x277CDD9F8], MEMORY[0x277CDD9F0]);
    v80 = v100;
    sub_23BBDB758();
    (*(v103 + 8))(v77, v62);
    sub_23B979910(v74, &qword_27E1A36E0, &qword_23BC04060);
    v81 = v101;
    (*(v101 + 16))(v61, v80, v63);
    swift_storeEnumTagMultiPayload();
    v108 = v64;
    v109 = v62;
    v110 = v78;
    v111 = v79;
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E1A37B8, &qword_27E1A3698, &qword_23BC04018, MEMORY[0x277CE0480]);
    sub_23BBDACD8();
    return (*(v81 + 8))(v80, v63);
  }
}

uint64_t sub_23BB9DC04@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v54 = a1;
  v58 = a3;
  v3 = sub_23BBDA928();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BBDC0C8();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v48 - v8;
  v9 = sub_23BBDB188();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3718, &qword_23BC04088);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36F8, &qword_23BC04078);
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  sub_23BB9CD38(v59);
  v19 = __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  v20 = MEMORY[0x28223BE20](v19);
  (*(v22 + 16))(&v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v23 = sub_23BBD9DF8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3730, &qword_23BC04090);
  (*(*(v24 - 8) + 16))(v15, v54, v24);
  *&v15[*(v13 + 36)] = v23;
  __swift_destroy_boxed_opaque_existential_1(v59);
  sub_23BBDB178();
  sub_23BB9F368();
  sub_23BB9E65C(&qword_27E1A3738, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  sub_23BBDB728();
  v25 = v12;
  v26 = v52;
  v27 = v53;
  (*(v10 + 8))(v25, v9);
  sub_23B979910(v15, &qword_27E1A3718, &qword_23BC04088);
  v28 = sub_23BB9CBAC();
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3710, &qword_23BC04080) + 36)] = v28;
  v30 = sub_23BB9C7F8(v29);
  v31 = &v18[*(v16 + 36)];
  *v31 = v30;
  v31[8] = 0;
  sub_23BBDC0A8();
  if ((*v26 & 1) == 0)
  {
    v32 = type metadata accessor for ProminentButtonStyleApplierModifier(0);
    v33 = &v26[*(v32 + 36)];
    v34 = *v33;
    v35 = v33[8];

    if ((v35 & 1) == 0)
    {
      sub_23BBDD5A8();
      v36 = sub_23BBDB338();
      sub_23BBD9978();

      v37 = v49;
      sub_23BBDA918();
      swift_getAtKeyPath();
      j_j__swift_release(v34);
      (*(v50 + 8))(v37, v51);
      v34 = v59[0];
    }

    if (!v34)
    {
      v38 = &v26[*(v32 + 28)];
      v39 = *v38;
      v40 = v38[8];

      if ((v40 & 1) == 0)
      {
        sub_23BBDD5A8();
        v41 = sub_23BBDB338();
        sub_23BBD9978();

        v42 = v49;
        sub_23BBDA918();
        swift_getAtKeyPath();
        j_j__swift_release(v39);
        (*(v50 + 8))(v42, v51);
      }
    }
  }

  v43 = v55;
  sub_23BBDC0B8();

  v44 = v57;
  v45 = *(v56 + 8);
  v46 = v45(v27, v57);
  v59[0] = sub_23BB9C7F8(v46);
  sub_23BB9F198();
  sub_23BB9F44C();
  sub_23BBDB7D8();

  v45(v43, v44);
  return sub_23B979910(v18, &qword_27E1A36F8, &qword_23BC04078);
}

uint64_t sub_23BB9E2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_23BBDDBB8();
  a4(v8, v6);
  return sub_23BBDDBF8();
}

void *sub_23BB9E2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(v2 + *(type metadata accessor for DynamicButtonHeightModifier(0) + 20) + 8) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);
    sub_23BBD9D38();
  }

  sub_23BBDC318();
  sub_23BBDA488();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3688, &qword_23BC04008);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3690, &qword_23BC04010);
  return memcpy((a2 + *(v6 + 36)), __src, 0x70uLL);
}

uint64_t sub_23BB9E4A0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA8D8();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_23BB9E4D0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA8D8();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

void sub_23BB9E534()
{
  OUTLINED_FUNCTION_13_1();
  sub_23BBDA748();
  *v0 = v1;
}

unint64_t sub_23BB9E584()
{
  result = qword_27E1A35F8;
  if (!qword_27E1A35F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A35E8, &qword_23BC03D30);
    sub_23BB4DAA8();
    sub_23B97B518(&qword_27E198DE0, &qword_27E198DE8, &qword_23BC03DB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A35F8);
  }

  return result;
}

uint64_t sub_23BB9E65C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23BB9E6A4()
{
  result = qword_27E1A3610;
  if (!qword_27E1A3610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A35F0, &qword_23BC03D38);
    sub_23BB9E760();
    sub_23BB9E65C(&qword_27E1A3628, type metadata accessor for DynamicButtonHeightModifier, &unk_23BC03FB4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3610);
  }

  return result;
}