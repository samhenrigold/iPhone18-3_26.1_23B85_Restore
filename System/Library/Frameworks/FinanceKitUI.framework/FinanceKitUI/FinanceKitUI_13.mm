uint64_t sub_238571D5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = sub_238757CC0();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238759B60();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v9;
  v34 = v8;
  (*(v9 + 16))(v11, a1, v8, v13);
  sub_23875AC90();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_238759B30();
  sub_238757C60();
  (*(v31 + 8))(v7, v32);
  v16 = sub_23875A360();
  v18 = v17;

  v19 = &v15[v12[5]];
  *v19 = v16;
  v19[1] = v18;
  v20 = sub_238759AA0();
  v22 = v21;
  sub_23845C998(a2, v36);
  if (v22)
  {
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    v20 = sub_23875A360();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = &v15[v12[6]];
  __swift_destroy_boxed_opaque_existential_1(v36);
  *v25 = v20;
  v25[1] = v24;
  v26 = sub_238759B50();
  MEMORY[0x28223BE20](v26);
  *(&v30 - 2) = a1;
  *(&v30 - 1) = a2;
  sub_23851EF08(sub_23857399C, (&v30 - 4), v26);
  v28 = v27;

  *&v15[v12[7]] = v28;
  sub_238574084(v15, v35, type metadata accessor for OrderDetailsNoFulfillments.ViewModel);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v33 + 8))(a1, v34);
  return sub_2385740EC(v15, type metadata accessor for OrderDetailsNoFulfillments.ViewModel);
}

uint64_t sub_2385720C4()
{
  v1 = v0;
  v2 = sub_2387591F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875BC40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB38, &unk_23876D7E0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  (*(v11 + 16))(&v22 - v13, v1, v10, v12);
  if ((*(v11 + 88))(v14, v10) == *MEMORY[0x277CC83B0])
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2387632F0;
    v16 = sub_23875B9D0();
    v18 = v17;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_238448C58(v16, v17, v19);
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    (*(v3 + 104))(v5, *MEMORY[0x277CC77B0], v2);
    v20 = sub_238758A50();

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
    return v20;
  }

  else
  {
    (*(v11 + 8))(v14, v10);
    return 0;
  }
}

uint64_t sub_23857240C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB38, &unk_23876D7E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v17 - v8;
  v10 = *(v3 + 16);
  v10(v17 - v8, v1, v2, v7);
  v11 = (*(v3 + 88))(v9, v2);
  if (v11 != *MEMORY[0x277CC83B8])
  {
    if (v11 != *MEMORY[0x277CC83B0])
    {
      goto LABEL_11;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  (v10)(v5, v9, v2);
  (*(v3 + 96))(v5, v2);
  v12 = sub_238757C30();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 88))(v5, v12);
  if (v14 == *MEMORY[0x277CC6B98])
  {
    v15 = 3;
LABEL_6:
    (*(v3 + 8))(v9, v2);
    return v15;
  }

  if (v14 == *MEMORY[0x277CC6BA8])
  {
    goto LABEL_5;
  }

  if (v14 == *MEMORY[0x277CC6BA0])
  {
    v15 = 1;
    goto LABEL_6;
  }

  (*(v13 + 8))(v5, v12);
LABEL_11:
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD000000000000017, 0x800000023878AD90);
  sub_23875F510();
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2385726F8@<X0>(uint64_t a1@<X8>)
{
  sub_238574084(v2, a1, type metadata accessor for OrderDetailsNoFulfillments.ViewModel);
  v4 = *(type metadata accessor for OrderDetailsNoFulfillments_iOS(0) + 20);
  *(a1 + v4) = swift_getKeyPath(aX_5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_238572784@<X0>(char *a1@<X8>)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E738, &qword_238770460);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E740, &qword_238770468);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E748, &qword_238770470);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  v28 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E750, &qword_238770478);
  sub_238573D98();
  sub_23875D9C0();
  v17 = sub_23843A3E8(&qword_27DF0E7A0, &qword_27DF0E738, &qword_238770460, MEMORY[0x277CDE5A0]);
  sub_23875DB70();
  (*(v3 + 8))(v5, v2);
  v29 = v2;
  v30 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v25;
  sub_23875DD80();
  (*(v26 + 8))(v9, v18);
  v19 = *(v24 + *(type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0) + 28));
  v20 = *(v11 + 16);
  v20(v13, v16, v10);
  v21 = v27;
  v20(v27, v13, v10);
  *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7A8, &qword_2387704A8) + 48)] = v19;
  v22 = *(v11 + 8);
  swift_bridgeObjectRetain_n();
  v22(v16, v10);

  return (v22)(v13, v10);
}

void sub_238572B2C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875CEA0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v14 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E788, &qword_238770490);
  sub_238573F98();
  sub_23875E3D0();
  sub_23875CE90();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E768, &qword_238770480) + 36);
  (*(v5 + 16))(a2 + v9, v7, v4);
  v10 = *(v5 + 56);
  v10(a2 + v9, 0, 1, v4);
  KeyPath = swift_getKeyPath(byte_2387704B0);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E750, &qword_238770478) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v5 + 32))(v12 + v13, v7, v4);
  v10(v12 + v13, 0, 1, v4);

  *v12 = KeyPath;
}

double sub_238572DA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_23875D020();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7B0, &qword_2387704E0);
  sub_238572E24(a1, a2 + *(v4 + 44));
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E788, &qword_238770490) + 36);
  result = 12.0;
  *v5 = xmmword_2387702F0;
  *(v5 + 16) = xmmword_2387702F0;
  *(v5 + 32) = 0;
  return result;
}

void sub_238572E24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB38, &unk_23876D7E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = type metadata accessor for OrderDetailsStatusLabel(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  sub_23875ED50();
  v14 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385731EC(v13);
  (*(v5 + 16))(v7, a1, v4);
  v15 = (*(v5 + 88))(v7, v4);
  if (v15 == *MEMORY[0x277CC83B8])
  {
    v25 = v14;
    v26 = a2;
    v16 = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
    v17 = (a1 + *(v16 + 24));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v5 + 8);

    v20(v7, v4);
    if (v19)
    {
      v21 = (a1 + *(v16 + 20));
      v22 = *v21;
      v23 = v21[1];
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v18 = 0;
    }

    a2 = v26;
    goto LABEL_10;
  }

  if (v15 == *MEMORY[0x277CC83B0])
  {
    (*(v5 + 8))(v7, v4);
    v22 = 0;
    v23 = 0;
    v18 = 0;
    v19 = 0;
LABEL_10:
    sub_238574084(v13, v10, type metadata accessor for OrderDetailsStatusLabel);
    sub_238574084(v10, a2, type metadata accessor for OrderDetailsStatusLabel);
    v24 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7B8, &qword_2387704E8) + 48));
    *v24 = v22;
    v24[1] = v23;
    v24[2] = v18;
    v24[3] = v19;
    sub_2385570E8(v22, v23, v18, v19);
    sub_2385740EC(v13, type metadata accessor for OrderDetailsStatusLabel);
    sub_23855712C(v22, v23, v18, v19);
    sub_2385740EC(v10, type metadata accessor for OrderDetailsStatusLabel);

    return;
  }

  v27 = 0;
  v28 = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD000000000000017, 0x800000023878AD90);
  sub_23875F510();
  sub_23875F520();
  __break(1u);
}

uint64_t sub_2385731EC@<X0>(uint64_t a1@<X8>)
{
  v26 = sub_23875D990();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875ACA0();
  v7 = v6;
  v8 = sub_2385720C4();
  v10 = v9;
  v11 = sub_23857240C();
  v12 = type metadata accessor for OrderDetailsStatusLabel(0);
  v13 = v12[7];
  v14 = type metadata accessor for OrderDetailsNote(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  v15 = a1 + v12[8];
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *v15 = 2;
  *(v15 + 24) = 0;
  v16 = a1 + v12[9];
  v27 = 0;
  sub_23875E1A0();
  v17 = v29;
  *v16 = v28;
  *(v16 + 8) = v17;
  v18 = a1 + v12[10];
  *v18 = swift_getKeyPath(byte_2387704F0);
  *(v18 + 8) = 0;
  v28 = 0x403F000000000000;
  v19 = *MEMORY[0x277CE0A50];
  v20 = *(v2 + 104);
  v21 = v26;
  v22 = v20(v4, v19, v26);
  sub_23857414C(v22, v23, v24);
  sub_23875C540();
  v28 = 0x403C000000000000;
  v20(v4, v19, v21);
  sub_23875C540();
  v28 = 0x4018000000000000;
  v20(v4, v19, v21);
  return sub_23875C540();
}

uint64_t sub_238573468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v55 = a3;
  v54 = type metadata accessor for ProductImage.ViewModel(0);
  MEMORY[0x28223BE20](v54);
  v53 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  MEMORY[0x28223BE20](v57);
  v48 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v42 - v8;
  v47 = sub_23875AF90();
  v9 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v60 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v56 = &v42 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = sub_238758940();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v20;
  v21 = *(v20 + 16);
  v51 = v22;
  v21(v19, a1, v17);
  sub_238759AB0();
  sub_23845C998(a2, v59);
  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  sub_238758920();
  v46 = sub_23875A360();
  v24 = v23;

  sub_238758910();
  v45 = sub_238758930();
  v43 = sub_238758900();
  v44 = v25;
  v52 = v9;
  v26 = *(v9 + 16);
  v27 = v56;
  v50 = v15;
  v28 = v47;
  v26(v56, v15, v47);
  v29 = v57;
  v30 = *(v57 + 20);
  v31 = sub_238758090();
  v32 = v48;
  (*(*(v31 - 8) + 56))(v48 + v30, 1, 1, v31);
  *v32 = v46;
  v32[1] = v24;
  v33 = v32;
  sub_23853098C(v58, v32 + v30);
  *(v32 + *(v29 + 24)) = v45;
  v34 = v27;
  v35 = v44;
  v26(v60, v34, v28);
  if (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_2387632F0;
    *(v36 + 32) = v43;
    *(v36 + 40) = v35;
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  v37 = v53;
  v26(v53, v60, v28);
  if (*(v36 + 16) >= 5uLL)
  {
    sub_23852EE64(v36, v36 + 32, 0, 9uLL);
    v39 = v38;

    v36 = v39;
  }

  v40 = *(v52 + 8);
  v40(v50, v28);
  (*(v49 + 8))(v19, v51);
  v40(v60, v28);
  v40(v56, v28);
  sub_238566104(v58);
  *(v37 + *(v54 + 20)) = v36;
  sub_2385739BC(v37, v33 + *(v57 + 28), type metadata accessor for ProductImage.ViewModel);
  sub_2385739BC(v33, v55, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_2385739BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238573A24(uint64_t a1, uint64_t a2)
{
  sub_238757C30();
  sub_238573D2C(&qword_27DF0E708, MEMORY[0x277CC6BB0], MEMORY[0x277CC6BB8]);
  if ((sub_23875AC60() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (v14)
    {
      v15 = *v11 == *v13 && v12 == v14;
      if (v15 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  if (v14)
  {
    return 0;
  }

LABEL_14:
  v16 = v4[7];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);

  return sub_238518CAC(v17, v18);
}

uint64_t sub_238573BA8(uint64_t a1)
{
  result = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_238573C78(uint64_t a1)
{
  type metadata accessor for OrderDetailsNoFulfillments.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2385662D0(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_238573D2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_238573D98()
{
  result = qword_27DF0E758;
  if (!qword_27DF0E758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E750, &qword_238770478);
    sub_238573E50();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E758);
  }

  return result;
}

unint64_t sub_238573E50()
{
  result = qword_27DF0E760;
  if (!qword_27DF0E760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E768, &qword_238770480);
    sub_238573F08();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E760);
  }

  return result;
}

unint64_t sub_238573F08()
{
  result = qword_27DF0E770;
  if (!qword_27DF0E770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E778, &qword_238770488);
    sub_238573F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E770);
  }

  return result;
}

unint64_t sub_238573F98()
{
  result = qword_27DF0E780;
  if (!qword_27DF0E780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E788, &qword_238770490);
    sub_23843A3E8(&qword_27DF0E790, &qword_27DF0E798, &qword_238770498, MEMORY[0x277CE1198]);
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E780);
  }

  return result;
}

uint64_t sub_238574084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385740EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23857414C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0E7C0;
  if (!qword_27DF0E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E7C0);
  }

  return result;
}

void sub_2385741E8(uint64_t a1)
{
  sub_23875BC40();
  if (v1 <= 0x3F)
  {
    sub_238574460(319, qword_2814F0E80, type metadata accessor for WidgetAccount);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2385742D0(uint64_t a1)
{
  sub_23875BCB0();
  if (v1 <= 0x3F)
  {
    sub_2384561E8();
    if (v2 <= 0x3F)
    {
      sub_238574460(319, &unk_2814F1168, MEMORY[0x277CC7258]);
      if (v3 <= 0x3F)
      {
        sub_238574460(319, &qword_2814F1158, MEMORY[0x277CC9578]);
        if (v4 <= 0x3F)
        {
          sub_238574460(319, &unk_2814F0890, type metadata accessor for CGImage);
          if (v5 <= 0x3F)
          {
            sub_238574460(319, &qword_2814F1160, MEMORY[0x277CC9260]);
            if (v6 <= 0x3F)
            {
              sub_238574460(319, &unk_2814F1180, MEMORY[0x277CC6B60]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_238574460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875F1F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2385744C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0E7E8;
  if (!qword_27DF0E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E7E8);
  }

  return result;
}

unint64_t sub_23857453C()
{
  result = qword_27DF0A200;
  if (!qword_27DF0A200)
  {
    sub_23875BCB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A200);
  }

  return result;
}

uint64_t sub_2385745AC@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_238574658(uint64_t a1)
{
  sub_23845C998(a1, v6);
  v1 = sub_23845C998(v6, &v5);
  sub_23849557C(v1, v2, v3);
  sub_23875CDD0();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_2385746F8(uint64_t a1)
{
  v2 = sub_23875C1E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = *(v3 + 16);
  v10(&v15 - v8, a1, v2, v7);
  v11 = (v10)(v5, v9, v2);
  sub_2384C6478(v11, v12, v13);
  sub_23875CDD0();
  return (*(v3 + 8))(v9, v2);
}

uint64_t AccountConsentManagementView.init(account:dismissedMismatchedAccountSettingsTile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v44 = a4;
  v42 = a2;
  v43 = a3;
  v7 = sub_23875BCB0();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_23875A9F0();
  v9 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccountConsentManagementView(0);
  v13 = a5 + v12[7];
  v45 = 0;
  sub_23875E1A0();
  v14 = v47;
  *v13 = v46;
  *(v13 + 8) = v14;
  v15 = a5 + v12[8];
  v45 = 0;
  sub_23875E1A0();
  v16 = v47;
  *v15 = v46;
  *(v15 + 8) = v16;
  v17 = a5 + v12[10];
  *v17 = swift_getKeyPath(asc_238770670);
  *(v17 + 40) = 0;
  v18 = v12[11];
  *(a5 + v18) = swift_getKeyPath(asc_238770698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v19 = sub_238758680();
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v38 = v19;
  v21(a5, a1);
  v22 = sub_238758560();
  v23 = a5 + v12[6];
  *v23 = v22 & 1;
  *(v23 + 8) = 0;
  v24 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  sub_238758570();
  if (v25)
  {
    v26 = sub_23875EA50();
  }

  else
  {
    v26 = 0;
  }

  v27 = v12[5];
  v28 = [v24 passWithFPANIdentifier_];

  *(a5 + v27) = v28;
  sub_238758CF0();
  v29 = sub_238758CE0();
  sub_238758530();
  sub_23875A9B0();
  (*(v9 + 8))(v11, v37);
  v30 = sub_238758CD0();

  [v29 setPredicate_];

  sub_238449184(0, &qword_27DF09960, 0x277CCAC98);
  v31 = sub_23875EC60();
  [v29 setSortDescriptors_];

  v32 = v29;
  sub_23875E500();
  sub_23875C4F0();
  v33 = v39;
  sub_238758640();
  sub_23857BDA4(v33);
  (*(v40 + 8))(v33, v41);
  sub_238759780();
  sub_23875C4F0();

  result = (*(v20 + 8))(a1, v38);
  v35 = a5 + v12[9];
  v36 = v43;
  *v35 = v42;
  *(v35 + 8) = v36;
  *(v35 + 16) = v44 & 1;
  return result;
}

uint64_t type metadata accessor for AccountConsentManagementView(uint64_t a1)
{
  result = qword_27DF0E818;
  if (!qword_27DF0E818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238574CE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccountConsentManagementView(0);
  sub_23843981C(v1 + *(v7 + 40), v10, &qword_27DF0B7B0, &unk_238768A40);
  if (v11 == 1)
  {
    return sub_2384347C0(v10, a1);
  }

  sub_23875EFF0();
  v9 = sub_23875D730();
  sub_23875C110();

  sub_23875CDA0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_238574E58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AccountConsentManagementView(0);
  sub_23843981C(v1 + *(v10 + 44), v9, &qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C1E0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void *sub_238575060@<X0>(uint64_t a1@<X8>)
{
  v23 = sub_238757B60();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E8B8, &qword_238770858);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  type metadata accessor for AccountConsentManagementView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E810, &qword_238770738);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF0E8C0, &qword_27DF0E8B8, &qword_238770858, MEMORY[0x277CDD8D8]);
  v9 = sub_23875EEE0();
  if (v9)
  {
    v10 = v9;
    v21 = v6;
    v25 = MEMORY[0x277D84F90];
    sub_2385FEDEC(0, v9 & ~(v9 >> 63), 0);
    v11 = v25;
    result = sub_23875EED0();
    if (v10 < 0)
    {
      __break(1u);
      return result;
    }

    v20 = a1;
    v22 = v2 + 32;
    do
    {
      v13 = sub_23875EF20();
      v15 = *v14;
      v13(v24, 0);
      sub_238757B70();
      v25 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2385FEDEC((v16 > 1), v17 + 1, 1);
        v11 = v25;
      }

      *(v11 + 16) = v17 + 1;
      (*(v2 + 32))(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v17, v4, v23);
      sub_23875EF10();
      --v10;
    }

    while (v10);
    (*(v21 + 8))(v8, v5);
    a1 = v20;
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    v11 = MEMORY[0x277D84F90];
  }

  v18 = v23;
  if (*(v11 + 16))
  {
    (*(v2 + 16))(a1, v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v23);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v2 + 56))(a1, v19, 1, v18);
}

BOOL sub_2385753EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11[-1] - v2;
  type metadata accessor for AccountConsentManagementView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF09E88, &qword_27DF09E80, &unk_2387686A0, MEMORY[0x277CDD8D8]);
  sub_23875EED0();
  sub_23875EF00();
  v4 = v12;
  v5 = v11[0];
  if (v12 == v11[0])
  {
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v6 = sub_23875EF20();
    v8 = *v7;
    v6(v11, 0);
    (*(v1 + 8))(v3, v0);
  }

  return v4 != v5;
}

uint64_t AccountConsentManagementView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7F0, &qword_2387706C8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-v3];
  v11 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7F8, &qword_2387706D0);
  sub_23843A3E8(&qword_27DF0E800, &qword_27DF0E7F8, &qword_2387706D0, MEMORY[0x277CE14C0]);
  sub_23875D9C0();
  v12 = sub_2387585B0();
  v13 = v5;
  v6 = sub_23843A3E8(&qword_27DF0E808, &qword_27DF0E7F0, &qword_2387706C8, MEMORY[0x277CDE5A0]);
  sub_2384397A8(v6, v7, v8);
  sub_23875DC70();

  return (*(v2 + 8))(v4, v1);
}

double sub_238575780@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E848, &qword_238770800);
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v85 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v84 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E850, &qword_238770808);
  v73 = *(v7 - 8);
  v74 = v7;
  MEMORY[0x28223BE20](v7);
  v70 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E858, &qword_238770810);
  MEMORY[0x28223BE20](v9 - 8);
  v83 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v80 = &v68 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E860, &qword_238770818);
  v75 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v87 = &v68 - v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E868, &unk_238770820);
  v16 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v68 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v68 - v19;
  v21 = sub_238757B60();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E870, &qword_238770830);
  MEMORY[0x28223BE20](v25 - 8);
  v79 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v86 = &v68 - v28;
  sub_23875ED50();
  v72 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = type metadata accessor for AccountConsentManagementView(0);
  v30 = *(a1 + *(v29 + 20));
  if (!v30)
  {
    goto LABEL_10;
  }

  v31 = v29;
  v32 = v30;
  sub_238575060(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {

    sub_238439884(v20, &qword_27DF0A0C0, &qword_238771EF0);
LABEL_10:
    v38 = (*(v16 + 56))(v86, 1, 1, v71);
    goto LABEL_11;
  }

  (*(v22 + 32))(v24, v20, v21);
  if (sub_238758550() & 1) == 0 || (sub_238758560() & 1) == 0 || (v33 = (a1 + *(v31 + 36)), v34 = *v33, v35 = v33[1], LOBYTE(v33) = *(v33 + 16), v89[0] = v34, v89[1] = v35, v90 = v33, v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600), v37 = MEMORY[0x23EE62DC0](&v88, v36), (v88))
  {

    (*(v22 + 8))(v24, v21);
    goto LABEL_10;
  }

  MEMORY[0x28223BE20](v37);
  *(&v68 - 4) = v32;
  *(&v68 - 3) = v24;
  *(&v68 - 2) = a1;
  type metadata accessor for AccountMismatchedTileView(0);
  sub_23857CBB0(&qword_27DF0E8B0, type metadata accessor for AccountMismatchedTileView, &protocol conformance descriptor for AccountMismatchedTileView);
  v65 = v69;
  sub_23875E3D0();

  v66 = v86;
  v67 = v71;
  (*(v16 + 32))(v86, v65, v71);
  (*(v16 + 56))(v66, 0, 1, v67);
  v38 = (*(v22 + 8))(v24, v21);
LABEL_11:
  MEMORY[0x28223BE20](v38);
  *(&v68 - 2) = a1;
  sub_2385792B8(v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E878, &qword_238770838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E880, &qword_238770840);
  sub_23843A3E8(&qword_27DF0E888, &qword_27DF0E878, &qword_238770838, MEMORY[0x277CE14C0]);
  sub_23857C2C8();
  sub_23875E3E0();
  v39 = sub_2385753EC();
  if (v39)
  {
    MEMORY[0x28223BE20](v39);
    *(&v68 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E8A0, &qword_238770850);
    sub_23843A3E8(&qword_27DF0E8A8, &qword_27DF0E8A0, &qword_238770850, MEMORY[0x277CDD938]);
    v40 = v70;
    sub_23875E3D0();
    v41 = v73;
    v42 = v80;
    v43 = v40;
    v44 = v74;
    (*(v73 + 32))(v80, v43, v74);
    v45 = 0;
  }

  else
  {
    v45 = 1;
    v42 = v80;
    v41 = v73;
    v44 = v74;
  }

  (*(v41 + 56))(v42, v45, 1, v44);
  v46 = v84;
  sub_238579948(v84);
  v47 = v79;
  sub_23843981C(v86, v79, &qword_27DF0E870, &qword_238770830);
  v48 = v75;
  v74 = *(v75 + 16);
  v49 = v81;
  v74(v81, v87, v82);
  v50 = v83;
  sub_23843981C(v42, v83, &qword_27DF0E858, &qword_238770810);
  v51 = v77;
  v52 = *(v77 + 16);
  v53 = v46;
  v54 = v78;
  v52(v85, v53, v78);
  v55 = v47;
  v56 = v76;
  sub_23843981C(v55, v76, &qword_27DF0E870, &qword_238770830);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E898, &qword_238770848);
  v58 = v49;
  v59 = v82;
  v74(v56 + v57[12], v58, v82);
  sub_23843981C(v50, v56 + v57[16], &qword_27DF0E858, &qword_238770810);
  v60 = v56 + v57[20];
  v61 = v85;
  v52(v60, v85, v54);
  v62 = *(v51 + 8);
  v62(v84, v54);
  sub_238439884(v80, &qword_27DF0E858, &qword_238770810);
  v63 = *(v48 + 8);
  v63(v87, v59);
  sub_238439884(v86, &qword_27DF0E870, &qword_238770830);
  v62(v61, v54);
  sub_238439884(v83, &qword_27DF0E858, &qword_238770810);
  v63(v81, v59);
  sub_238439884(v79, &qword_27DF0E870, &qword_238770830);

  return result;
}

void sub_238576254(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = type metadata accessor for AccountMismatchedTileView(0);
  v9 = v8[5];
  v10 = sub_238757B60();
  (*(*(v10 - 8) + 16))(&a4[v9], a2, v10);
  v11 = v8[6];
  v12 = sub_238758680();
  (*(*(v12 - 8) + 16))(&a4[v11], a3, v12);
  v13 = (a3 + *(type metadata accessor for AccountConsentManagementView(0) + 36));
  v20 = *v13;
  v21 = v13[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  sub_23875E310();
  v14 = &a4[v8[7]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C5F8, &qword_23876ACD0);
  sub_23875E1A0();
  *v14 = v20;
  *(v14 + 1) = v21;
  v15 = a1;

  *a4 = v15;
  v16 = &a4[v8[8]];
  *v16 = v17;
  *(v16 + 1) = v18;
  v16[16] = v19;
}

double sub_238576438@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  MEMORY[0x28223BE20](v3 - 8);
  v113 = v110 - v4;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2D0, &qword_23876F590);
  MEMORY[0x28223BE20](v115);
  v114 = v110 - v5;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E908, &qword_2387708B0);
  MEMORY[0x28223BE20](v116);
  v134 = v110 - v6;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E910, &qword_2387708B8);
  v135 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v117 = v110 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E918, &unk_2387708C0);
  MEMORY[0x28223BE20](v8 - 8);
  v136 = v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v142 = v110 - v11;
  v12 = type metadata accessor for AccountConsentManagementView(0);
  v120 = *(v12 - 8);
  v13 = *(v120 + 64);
  MEMORY[0x28223BE20](v12);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E920, &qword_23877E0E0);
  v133 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v121 = v110 - v14;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E928, &qword_2387708D0);
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v143 = v110 - v15;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E930, &qword_2387708D8);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v124 = v110 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E938, &unk_2387708E0);
  MEMORY[0x28223BE20](v17 - 8);
  v132 = v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v144 = v110 - v20;
  sub_23875ED50();
  v131 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v139 = v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v21 = qword_2814F1B90;
  v140 = qword_2814F1B90;
  v22 = sub_23875EA50();
  v23 = sub_23875EA50();
  v24 = sub_23875EA50();
  v25 = [v21 localizedStringForKey:v22 value:v23 table:v24];

  v26 = sub_23875EA80();
  v28 = v27;

  v155 = v26;
  v156 = v28;
  v29 = (a1 + *(v12 + 24));
  v31 = *(v29 + 1);
  v153 = *v29;
  v30 = v153;
  v154 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  v138 = v12;
  v33 = a1;
  v34 = v32;
  v35 = sub_23875E1D0();
  v119 = sub_2384397A8(v35, v36, v37);
  v38 = v121;
  sub_23875E2A0();
  v129 = v30;
  LOBYTE(v145) = v30;
  v130 = v31;
  v146 = v31;
  sub_23875E1B0();
  LOBYTE(v145) = v155;
  v39 = v139;
  sub_23857C5C8(v33, v139);
  v40 = (*(v120 + 80) + 16) & ~*(v120 + 80);
  v110[1] = *(v120 + 80);
  v110[0] = v40 + v13;
  v41 = swift_allocObject();
  v111 = v40;
  sub_23857C62C(v39, v41 + v40);
  v120 = sub_23843A3E8(&qword_27DF0E940, &qword_27DF0E920, &qword_23877E0E0, MEMORY[0x277CDF068]);
  v42 = v122;
  sub_23875DF10();

  (*(v133 + 8))(v38, v42);
  v43 = sub_23875EA50();
  v44 = sub_23875EA50();
  v112 = "ON_PICKER_CANCEL_BUTTON_TITLE";
  v45 = sub_23875EA50();
  v46 = [v140 localizedStringForKey:v43 value:v44 table:v45];

  v47 = sub_23875EA80();
  v49 = v48;
  v121 = v48;

  v155 = v47;
  v156 = v49;
  v50 = v33 + *(v138 + 28);
  v51 = *v50;
  v52 = *(v50 + 8);
  v153 = v51;
  v154 = v52;
  v128 = v34;
  v53 = sub_23875E1D0();
  v118 = v110;
  MEMORY[0x28223BE20](v53);
  v133 = v33;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C718, &qword_2387708F0);
  v145 = v42;
  v146 = MEMORY[0x277D839B0];
  v147 = v120;
  v148 = MEMORY[0x277D839C8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v109 = sub_23843A3E8(&qword_27DF0C728, &qword_27DF0C718, &qword_2387708F0, MEMORY[0x277CE14C0]);
  v56 = v119;
  v57 = v125;
  v58 = v124;
  v59 = v143;
  sub_23875DEC0();

  (*(v123 + 8))(v59, v57);
  v145 = v57;
  v146 = MEMORY[0x277D837D0];
  v147 = v54;
  v148 = MEMORY[0x277CE0BD8];
  v149 = OpaqueTypeConformance2;
  v60 = v133;
  v150 = v56;
  v151 = v109;
  v152 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v61 = v127;
  sub_23875DE00();
  (*(v126 + 8))(v58, v61);
  v62 = sub_2385753EC();
  v63 = 1;
  if (v62)
  {
    v64 = sub_23875EA50();
    v65 = sub_23875EA50();
    v66 = sub_23875EA50();
    v67 = v140;
    v68 = [v140 localizedStringForKey:v64 value:v65 table:v66];

    v69 = sub_23875EA80();
    v71 = v70;

    v145 = v69;
    v146 = v71;
    v72 = v113;
    sub_23875C390();
    v73 = sub_23875C3C0();
    (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
    v74 = v139;
    sub_23857C5C8(v60, v139);
    v75 = swift_allocObject();
    sub_23857C62C(v74, v75 + v111);
    v76 = v60;
    v77 = v114;
    sub_23875E220();
    LOBYTE(v145) = v129;
    v146 = v130;
    sub_23875E1B0();
    LOBYTE(v74) = v155;
    KeyPath = swift_getKeyPath(byte_238770900);
    v79 = swift_allocObject();
    *(v79 + 16) = v74;
    v80 = (v77 + *(v115 + 36));
    *v80 = KeyPath;
    v80[1] = sub_238477BAC;
    v80[2] = v79;
    sub_238561FA0();
    sub_23875DE00();
    sub_238439884(v77, &qword_27DF0E2D0, &qword_23876F590);
    v81 = sub_23875EA50();
    v82 = sub_23875EA50();
    v83 = sub_23875EA50();
    v84 = [v67 localizedStringForKey:v81 value:v82 table:v83];

    v85 = sub_23875EA80();
    v87 = v86;

    v145 = v85;
    v146 = v87;
    v88 = sub_23875DAA0();
    v90 = v89;
    LOBYTE(v84) = v91;
    v92 = v76 + *(v138 + 32);
    v93 = *v92;
    v94 = *(v92 + 8);
    LOBYTE(v155) = v93;
    v156 = v94;
    v95 = sub_23875E1D0();
    v143 = v110;
    MEMORY[0x28223BE20](v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A330, &qword_2387655F0);
    sub_23857C994();
    sub_23857CA50();
    v96 = v117;
    v97 = v134;
    sub_23875DCE0();

    sub_2384397FC(v88, v90, v84 & 1);

    sub_238439884(v97, &qword_27DF0E908, &qword_2387708B0);
    LOBYTE(v145) = v129;
    v146 = v130;
    sub_23875E1B0();
    LOBYTE(v97) = v155;
    v98 = swift_getKeyPath(byte_238770900);
    v99 = swift_allocObject();
    *(v99 + 16) = v97;
    v100 = v142;
    v101 = (v96 + *(v141 + 36));
    *v101 = v98;
    v101[1] = sub_238562718;
    v101[2] = v99;
    sub_23840F90C(v96, v100);
    v63 = 0;
  }

  v102 = v142;
  (*(v135 + 56))(v142, v63, 1, v141);
  v103 = v144;
  v104 = v132;
  sub_23843981C(v144, v132, &qword_27DF0E938, &unk_2387708E0);
  v105 = v136;
  sub_23843981C(v102, v136, &qword_27DF0E918, &unk_2387708C0);
  v106 = v137;
  sub_23843981C(v104, v137, &qword_27DF0E938, &unk_2387708E0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E948, &qword_2387708F8);
  sub_23843981C(v105, v106 + *(v107 + 48), &qword_27DF0E918, &unk_2387708C0);
  sub_238439884(v102, &qword_27DF0E918, &unk_2387708C0);
  sub_238439884(v103, &qword_27DF0E938, &unk_2387708E0);
  sub_238439884(v105, &qword_27DF0E918, &unk_2387708C0);
  sub_238439884(v104, &qword_27DF0E938, &unk_2387708E0);

  return result;
}

double sub_23857755C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v3)
  {
    sub_2385776B4(1);
  }

  else
  {
    type metadata accessor for AccountConsentManagementView(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1B0();
    sub_23875E1C0();
  }

  return result;
}

void sub_2385776B4(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = sub_23875A9F0();
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for AccountConsentManagementView(0);
  MEMORY[0x28223BE20](v37);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = sub_23875C1E0();
  v44 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v43 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = &v36 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  sub_238574E58(&v36 - v16);
  sub_23857C5C8(v1, v10);
  v18 = sub_23875C1B0();
  v19 = sub_23875EFC0();
  v20 = os_log_type_enabled(v18, v19);
  v46 = v3;
  v38 = v6;
  v39 = v4;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v41 = v11;
    v22 = v21;
    v3 = swift_slowAlloc();
    v48[0] = v3;
    *v22 = 136315394;
    sub_238758530();
    sub_23857CBB0(&qword_27DF0E960, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
    v23 = sub_23875F600();
    v24 = v4;
    v26 = v25;
    (*(v42 + 8))(v6, v24);
    sub_23845D5D8(v10);
    v27 = sub_2384615AC(v23, v26, v48);

    *(v22 + 4) = v27;
    *(v22 + 12) = 1024;
    *(v22 + 14) = v46 & 1;
    _os_log_impl(&dword_2383F8000, v18, v19, "Toggling isEnabled for %s to state %{BOOL}d", v22, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v3);
    v28 = v3;
    LOBYTE(v3) = v46;
    MEMORY[0x23EE64DF0](v28, -1, -1);
    v29 = v22;
    v11 = v41;
    MEMORY[0x23EE64DF0](v29, -1, -1);
  }

  else
  {

    sub_23845D5D8(v10);
  }

  v30 = *(v44 + 8);
  v30(v17, v11);
  sub_238574CE0(v48);
  __swift_project_boxed_opaque_existential_1(v48, v48[3]);
  sub_238758A20();
  v31 = sub_238758010();

  __swift_destroy_boxed_opaque_existential_1(v48);
  v32 = v45;
  v33 = sub_238574E58(v45);
  MEMORY[0x28223BE20](v33);
  *(&v36 - 4) = v2;
  *(&v36 - 3) = v31;
  *(&v36 - 2) = v32;
  *(&v36 - 8) = v3 & 1;
  sub_23875F110();
  v30(v32, v11);
  if ((v48[0] & 1) == 0)
  {
    v34 = v2 + *(v37 + 24);
    v35 = *(v34 + 8);
    LOBYTE(v48[0]) = *v34;
    v48[1] = v35;
    v47[0] = (v3 & 1) == 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1C0();
  }
}

double sub_238577E00@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for AccountConsentManagementView(0);
  v55 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = v4;
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v60 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v52 - v12;
  MEMORY[0x28223BE20](v13);
  v56 = &v52 - v14;
  MEMORY[0x28223BE20](v15);
  v62 = &v52 - v16;
  sub_23875ED50();
  v57 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v17 = qword_2814F1B90;
  v18 = sub_23875EA50();
  v19 = sub_23875EA50();
  v20 = sub_23875EA50();
  v21 = [v17 localizedStringForKey:v18 value:v19 table:v20];

  v22 = sub_23875EA80();
  v24 = v23;

  v64 = v22;
  v65 = v24;
  sub_23875C390();
  v25 = sub_23875C3C0();
  v26 = *(v25 - 8);
  v53 = *(v26 + 56);
  v54 = v26 + 56;
  v53(v8, 0, 1, v25);
  sub_23857C5C8(a1, v5);
  v27 = v5;
  v28 = *(v55 + 80);
  v55 = a1;
  v29 = (v28 + 16) & ~v28;
  v30 = swift_allocObject();
  v31 = sub_23857C62C(v27, v30 + v29);
  v52 = sub_2384397A8(v31, v32, v33);
  sub_23875E220();
  v34 = sub_23875EA50();
  v35 = sub_23875EA50();
  v36 = sub_23875EA50();
  v37 = [v17 localizedStringForKey:v34 value:v35 table:v36];

  v38 = sub_23875EA80();
  v40 = v39;

  v64 = v38;
  v65 = v40;
  sub_23875C3B0();
  v53(v8, 0, 1, v25);
  sub_23857C5C8(v55, v27);
  v41 = swift_allocObject();
  sub_23857C62C(v27, v41 + v29);
  v42 = v56;
  sub_23875E220();
  v43 = v60;
  v44 = *(v60 + 16);
  v45 = v58;
  v46 = v62;
  v44(v58, v62, v9);
  v47 = v59;
  v44(v59, v42, v9);
  v48 = v61;
  v44(v61, v45, v9);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C740, &unk_238770930);
  v44(&v48[*(v49 + 48)], v47, v9);
  v50 = *(v43 + 8);
  v50(v42, v9);
  v50(v46, v9);
  v50(v47, v9);
  v50(v45, v9);

  return result;
}

double sub_238578424()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385776B4(0);

  return result;
}

double sub_2385784C8(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccountConsentManagementView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  sub_23875E1C0();

  return result;
}

void sub_2385785E4(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v4) = v13;
  v15 = v14;

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v15;
}

double sub_23857878C(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccountConsentManagementView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();

  return result;
}

double sub_23857886C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v28 = a2;
  v2 = type metadata accessor for AccountConsentManagementView(0);
  v26[0] = *(v2 - 8);
  v3 = *(v26[0] + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - v9;
  sub_23875ED50();
  v26[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v11 = qword_2814F1B90;
  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = sub_23875EA50();
  v15 = [v11 localizedStringForKey:v12 value:v13 table:v14];

  v16 = sub_23875EA80();
  v18 = v17;

  v29 = v16;
  v30 = v18;
  sub_23875C390();
  v19 = sub_23875C3C0();
  (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
  sub_23857C5C8(v27, v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v26[0] + 80) + 16) & ~*(v26[0] + 80);
  v21 = swift_allocObject();
  v22 = sub_23857C62C(v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_2384397A8(v22, v23, v24);
  sub_23875E220();
  sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
  sub_23875DE00();
  (*(v8 + 8))(v10, v7);

  return result;
}

void sub_238578C64()
{
  v1 = sub_23875A9F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v34 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccountConsentManagementView(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v32 - v8;
  v10 = sub_23875C1E0();
  v37 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v36 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v32 - v13;
  sub_238574E58(v32 - v13);
  v35 = v0;
  sub_23857C5C8(v0, v9);
  v15 = sub_23875C1B0();
  v16 = sub_23875EFC0();
  v17 = os_log_type_enabled(v15, v16);
  v32[3] = v2;
  v32[4] = v1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = v10;
    v20 = v34;
    v32[2] = v6;
    v21 = v19;
    v38[0] = v19;
    *v18 = 136315138;
    sub_238758530();
    sub_23857CBB0(&qword_27DF0E960, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
    v22 = sub_23875F600();
    v23 = v1;
    v25 = v24;
    (*(v2 + 8))(v20, v23);
    sub_23845D5D8(v9);
    v26 = sub_2384615AC(v22, v25, v38);
    v27 = v37;

    *(v18 + 4) = v26;
    _os_log_impl(&dword_2383F8000, v15, v16, "Deleting removable data for %s.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v10 = v33;
    MEMORY[0x23EE64DF0](v21, -1, -1);
    MEMORY[0x23EE64DF0](v18, -1, -1);

    v28 = v27;
  }

  else
  {

    sub_23845D5D8(v9);
    v28 = v37;
  }

  (*(v28 + 8))(v14, v10);
  v29 = v35;
  sub_238574CE0(v38);
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  sub_238758A20();
  v30 = sub_238758010();

  v31 = __swift_destroy_boxed_opaque_existential_1(v38);
  MEMORY[0x28223BE20](v31);
  v32[-2] = v29;
  v32[-1] = v30;
  sub_23875F110();
}

void sub_2385792B8(void *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = objc_opt_self();
  v3 = sub_23875EA50();
  v4 = [v2 modelSpecificLocalizedStringKeyForKey_];

  if (v4)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v5 = qword_2814F1B90;
    v6 = sub_23875EA50();
    v7 = sub_23875EA50();
    v8 = [v5 localizedStringForKey:v4 value:v6 table:v7];

    sub_23875EA80();
    sub_2384397A8(v9, v10, v11);
    v4 = sub_23875DAA0();
    v13 = v12;
    LOBYTE(v7) = v14;
    v16 = v15;

    v17 = v7 & 1;
  }

  else
  {

    v13 = 0;
    v17 = 0;
    v16 = 0;
  }

  *a1 = v4;
  a1[1] = v13;
  a1[2] = v17;
  a1[3] = v16;
}

double sub_2385794AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v3 = sub_238758680();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E8C8, &qword_238770860);
  MEMORY[0x28223BE20](v7);
  v9 = &v15[-1] - v8;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v4 + 16))(v6, a1, v3);
  sub_2386827A8(v6, v9);
  KeyPath = swift_getKeyPath(aX_6, v14);
  sub_238574CE0(v15);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v11 = sub_238758A10();
  v12 = &v9[*(v7 + 36)];
  *v12 = KeyPath;
  v12[1] = v11;
  __swift_destroy_boxed_opaque_existential_1(v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E838, &unk_23877A3B0);
  sub_23857C358();
  sub_23857C414();
  sub_23875C750();

  return result;
}

double sub_238579750()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8(v5, v6, v7);
  v8 = sub_23875DAA0();
  v10 = v9;
  v12 = v11 & 1;
  sub_23875DE00();
  sub_2384397FC(v8, v10, v12);

  return result;
}

uint64_t sub_238579948@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E8E8, &qword_238770898);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - v4;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  v11 = sub_23875EA80();
  v13 = v12;

  v21 = v11;
  v22 = v13;
  MEMORY[0x28223BE20](v14);
  v20[-2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E8F0, &unk_2387708A0);
  v15 = sub_23843A3E8(&qword_27DF0E8F8, &qword_27DF0E8F0, &unk_2387708A0, MEMORY[0x277CE14C0]);
  sub_2384397A8(v15, v16, v17);
  sub_23875E3A0();
  v21 = sub_2387585B0();
  v22 = v18;
  sub_23857C504();
  sub_23875DC70();

  return (*(v3 + 8))(v5, v2);
}

double sub_238579BF4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v156 = a2;
  v3 = sub_238758AE0();
  v174 = *(v3 - 8);
  v175 = v3;
  MEMORY[0x28223BE20](v3);
  v173 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v186 = &v148 - v6;
  v7 = sub_23875BC40();
  v162 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v160 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_23875BD20();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v10 - 8);
  v170 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v172 = &v148 - v13;
  MEMORY[0x28223BE20](v14);
  v193 = &v148 - v15;
  v16 = sub_238758090();
  v183 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v148 - v20;
  MEMORY[0x28223BE20](v22);
  v185 = &v148 - v23;
  v192 = sub_238757FC0();
  v24 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v26 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v171 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v163 = v7;
  v149 = v21;
  v194 = a1;
  v152 = v18;
  v184 = v16;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v27 = qword_2814F1B90;
  v28 = sub_23875EA50();
  v29 = sub_23875EA50();
  v30 = sub_23875EA50();
  v31 = [v27 localizedStringForKey:v28 value:v29 table:v30];

  v169 = sub_23875EA80();
  v182 = v32;

  v168 = sub_23857ADE0();
  v181 = v33;
  v34 = sub_23875EA50();
  v35 = sub_23875EA50();
  v36 = sub_23875EA50();
  v37 = [v27 localizedStringForKey:v34 value:v35 table:v36];

  v167 = sub_23875EA80();
  v180 = v38;

  sub_2387585C0();
  v166 = sub_238757FB0();
  v189 = v39;
  (*(v24 + 8))(v26, v192);
  v40 = sub_23875EA50();
  v41 = sub_23875EA50();
  v42 = sub_23875EA50();
  v43 = [v27 localizedStringForKey:v40 value:v41 table:v42];

  v165 = sub_23875EA80();
  v179 = v44;

  v164 = sub_2387585B0();
  v188 = v45;
  v46 = sub_23875EA50();
  v47 = sub_23875EA50();
  v48 = sub_23875EA50();
  v49 = [v27 localizedStringForKey:v46 value:v47 table:v48];

  v161 = sub_23875EA80();
  v178 = v50;

  v159 = sub_238758660();
  v187 = v51;
  v52 = v193;
  sub_2387585A0();
  v54 = v183;
  v53 = v184;
  v56 = v183 + 48;
  v55 = *(v183 + 48);
  v57 = v55(v52, 1, v184);
  v151 = v27;
  v150 = "ON_PICKER_CANCEL_BUTTON_TITLE";
  v158 = v55;
  v157 = v56;
  if (v57 == 1)
  {
    sub_238439884(v52, &unk_27DF0B080, &unk_2387662A0);
    v192 = 0;
    v193 = 0;
    v190 = 0;
    v191 = 0;
  }

  else
  {
    v58 = v185;
    (*(v54 + 32))(v185, v52, v53);
    v59 = sub_23875EA50();
    v60 = sub_23875EA50();
    v61 = sub_23875EA50();
    v62 = [v27 localizedStringForKey:v59 value:v60 table:v61];

    v63 = sub_23875EA80();
    v192 = v64;
    v193 = v63;

    v53 = v184;
    v65 = v153;
    sub_23875BCC0();
    v66 = sub_238758080();
    v190 = v67;
    v191 = v66;
    (*(v154 + 8))(v65, v155);
    (*(v54 + 8))(v58, v53);
  }

  v68 = v172;
  v69 = v186;
  sub_238758600();
  v70 = v162;
  v71 = v163;
  v72 = (*(v162 + 48))(v69, 1, v163);
  v73 = MEMORY[0x277CC7228];
  v74 = v174;
  v75 = v160;
  if (v72 == 1)
  {
    sub_238439884(v69, &qword_27DF12E00, &unk_238763FC0);
    v185 = 0;
    v186 = 0;
    v176 = 0;
    v177 = 0;
  }

  else
  {
    (*(v70 + 32))(v160, v69, v71);
    v76 = v173;
    v77 = v175;
    (*(v74 + 104))(v173, *v73, v175);
    v78 = v70;
    v79 = sub_238759830();
    (*(v74 + 8))(v76, v77);
    if (v79)
    {
      v80 = sub_23875EA50();
      v81 = sub_23875EA50();
      v82 = sub_23875EA50();
      v83 = [v151 localizedStringForKey:v80 value:v81 table:v82];

      v74 = v174;
      v84 = sub_23875EA80();
      v185 = v85;
      v186 = v84;

      v53 = v184;
      v86 = sub_23875BC10();
      v176 = v87;
      v177 = v86;
      (*(v78 + 8))(v75, v71);
    }

    else
    {
      (*(v78 + 8))(v75, v71);
      v185 = 0;
      v186 = 0;
      v176 = 0;
      v177 = 0;
    }

    v68 = v172;
    v54 = v183;
  }

  sub_238758620();
  v88 = v158;
  if (v158(v68, 1, v53) == 1)
  {
    sub_238439884(v68, &unk_27DF0B080, &unk_2387662A0);
  }

  else
  {
    v89 = v149;
    (*(v54 + 32))(v149, v68, v53);
    v90 = v173;
    v91 = v175;
    (*(v74 + 104))(v173, *MEMORY[0x277CC7228], v175);
    v92 = sub_238759830();
    (*(v74 + 8))(v90, v91);
    if (v92)
    {
      v93 = sub_23875EA50();
      v94 = sub_23875EA50();
      v95 = sub_23875EA50();
      v96 = [v151 localizedStringForKey:v93 value:v94 table:v95];

      v172 = sub_23875EA80();
      v163 = v97;

      v54 = v183;
      v98 = v153;
      sub_23875BCC0();
      v162 = sub_238758080();
      v160 = v99;
      v100 = v98;
      v74 = v174;
      (*(v154 + 8))(v100, v155);
      (*(v54 + 8))(v89, v53);
      goto LABEL_20;
    }

    (*(v54 + 8))(v89, v53);
  }

  v172 = 0;
  v163 = 0;
  v162 = 0;
  v160 = 0;
LABEL_20:
  v101 = MEMORY[0x277CC7228];
  v102 = v170;
  sub_238758630();
  if (v88(v102, 1, v53) == 1)
  {
    sub_238439884(v102, &unk_27DF0B080, &unk_2387662A0);
LABEL_27:
    v126 = 0;
    v125 = 0;
    v124 = 0;
    v123 = 0;
    goto LABEL_28;
  }

  v103 = v152;
  (*(v54 + 32))(v152, v102, v53);
  v104 = v173;
  v105 = v53;
  v106 = *(v74 + 104);
  v107 = v175;
  v106(v173, *v101, v175);
  v108 = sub_238759830();
  v109 = *(v74 + 8);
  v109(v104, v107);
  if ((v108 & 1) == 0)
  {
    (*(v54 + 8))(v103, v105);
    goto LABEL_27;
  }

  v106(v104, *MEMORY[0x277CC7230], v107);
  v110 = sub_238759830();
  v109(v104, v107);
  if ((v110 & 1) == 0)
  {
    (*(v183 + 8))(v152, v184);
    goto LABEL_27;
  }

  v111 = sub_23875EA50();
  v112 = sub_23875EA50();
  v113 = sub_23875EA50();
  v114 = [v151 localizedStringForKey:v111 value:v112 table:v113];

  v115 = sub_23875EA80();
  v117 = v116;

  v118 = v153;
  sub_23875BCC0();
  v119 = v152;
  v120 = sub_238758080();
  v122 = v121;
  (*(v154 + 8))(v118, v155);
  (*(v183 + 8))(v119, v184);
  v123 = v122;
  v124 = v120;
  v125 = v117;
  v126 = v115;
LABEL_28:
  v175 = v125;
  v183 = v126;
  v184 = v124;
  v194 = v123;
  v127 = v156;
  v156[2] = v168;
  v127[4] = v167;
  v127[6] = v166;
  v127[8] = v165;
  v127[10] = v164;
  v127[12] = v161;
  v127[14] = v159;
  *v127 = v169;
  v128 = v181;
  v127[1] = v182;
  v127[3] = v128;
  v129 = v179;
  v127[5] = v180;
  v127[7] = v189;
  v127[9] = v129;
  v127[11] = v188;
  v127[13] = v178;
  v130 = v186;
  v127[15] = v187;
  v127[16] = v193;
  v131 = v127;
  v127[17] = v192;
  v127[18] = v191;
  v127[19] = v190;
  v127[20] = v130;
  v132 = v185;
  v186 = v130;
  v133 = v177;
  v131[21] = v185;
  v131[22] = v133;
  v131[23] = v176;
  v134 = v172;
  v135 = v163;
  v131[24] = v172;
  v131[25] = v135;
  v136 = v162;
  v137 = v160;
  v131[26] = v162;
  v131[27] = v137;
  v131[28] = v126;
  v131[29] = v125;
  v131[30] = v124;
  v131[31] = v123;

  sub_2385570E8(v193, v192, v191, v190);
  v138 = v130;
  v139 = v132;
  v141 = v176;
  v140 = v177;
  sub_2385570E8(v138, v139, v177, v176);
  v142 = v135;
  sub_2385570E8(v134, v135, v136, v137);
  v144 = v183;
  v143 = v184;
  v145 = v175;
  v146 = v194;
  sub_2385570E8(v183, v175, v184, v194);
  sub_23855712C(v144, v145, v143, v146);
  sub_23855712C(v134, v142, v136, v137);
  sub_23855712C(v186, v185, v140, v141);
  sub_23855712C(v193, v192, v191, v190);

  return result;
}

uint64_t sub_23857ADE0()
{
  v0 = sub_238757AD0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238758590();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277CC6B50])
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v5 = qword_2814F1B90;
LABEL_9:
    v6 = sub_23875EA50();
    v7 = sub_23875EA50();
    v8 = sub_23875EA50();
    v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

    v10 = sub_23875EA80();
    return v10;
  }

  if (v4 == *MEMORY[0x277CC6B58])
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v5 = qword_2814F1B90;
    goto LABEL_9;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

void sub_23857B04C(uint64_t a1@<X0>, void *a2@<X1>, NSObject *a3@<X2>, int a4@<W3>, _BYTE *a5@<X8>)
{
  v43 = a5;
  v41 = a4;
  v42 = a3;
  v45[1] = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for AccountConsentManagementView(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23875A9F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  sub_238759780();
  sub_238758530();
  v17 = v44;
  v18 = sub_2387596E0();
  if (v17)
  {
    (*(v11 + 8))(v16, v10);
  }

  else
  {
    v19 = v18;
    v44 = 0;
    v40 = v13;
    v20 = *(v11 + 8);
    v20(v16, v10);
    if (v19)
    {
      [v19 setIsAccountEnabled_];
      v45[0] = 0;
      v21 = [a2 save_];
      v22 = v43;
      if (v21)
      {
        v23 = v45[0];

        *v22 = 1;
      }

      else
      {
        v38 = v45[0];
        sub_23875B730();

        swift_willThrow();
      }
    }

    else
    {
      v24 = v10;
      v25 = v9;
      sub_23857C5C8(a1, v9);
      v26 = sub_23875C1B0();
      v27 = sub_23875EFE0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v42 = v26;
        v29 = v28;
        v30 = swift_slowAlloc();
        v45[0] = v30;
        *v29 = 136315394;
        v31 = v40;
        sub_238758530();
        sub_23857CBB0(&qword_27DF0E960, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v32 = sub_23875F600();
        v33 = v24;
        v35 = v34;
        v20(v31, v33);
        sub_23845D5D8(v25);
        v36 = sub_2384615AC(v32, v35, v45);

        *(v29 + 4) = v36;
        *(v29 + 12) = 1024;
        *(v29 + 14) = (v41 & 1) == 0;
        v37 = v42;
        _os_log_impl(&dword_2383F8000, v42, v27, "Unable to find account for %s, reverting toggled value to %{BOOL}d.", v29, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x23EE64DF0](v30, -1, -1);
        MEMORY[0x23EE64DF0](v29, -1, -1);
      }

      else
      {

        sub_23845D5D8(v9);
      }

      *v43 = 0;
    }
  }
}

id sub_23857B438(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23875A9F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238759B90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238759B80();
  sub_238758530();
  sub_238759B70();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
    v14[0] = 0;
    if ([a2 save_])
    {
      return v14[0];
    }

    else
    {
      v13 = v14[0];
      sub_23875B730();

      return swift_willThrow();
    }
  }
}

double sub_23857B680()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7F0, &qword_2387706C8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-v3];
  v11 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7F8, &qword_2387706D0);
  sub_23843A3E8(&qword_27DF0E800, &qword_27DF0E7F8, &qword_2387706D0, MEMORY[0x277CE14C0]);
  sub_23875D9C0();
  v12 = sub_2387585B0();
  v13 = v5;
  v6 = sub_23843A3E8(&qword_27DF0E808, &qword_27DF0E7F0, &qword_2387706C8, MEMORY[0x277CDE5A0]);
  sub_2384397A8(v6, v7, v8);
  sub_23875DC70();
  (*(v2 + 8))(v4, v1);

  return result;
}

double sub_23857B844@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v53 = a3;
  v54 = a4;
  v61 = a5;
  v7 = sub_23875B4E0();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E838, &unk_23877A3B0);
  MEMORY[0x28223BE20](v9 - 8);
  v60 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v47 - v12;
  sub_23875ED50();
  v59 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v65 = a1;
  v66 = a2;
  sub_2384397A8(isCurrentExecutor, v14, v15);

  v16 = sub_23875DAA0();
  v18 = v17;
  v49 = a2;
  v20 = v19;
  v48 = a1;
  sub_23875D7F0();
  v21 = sub_23875DA60();
  v23 = v22;
  v25 = v24;

  sub_2384397FC(v16, v18, v20 & 1);

  LODWORD(v65) = sub_23875D440();
  v26 = sub_23875DA20();
  v50 = v27;
  v51 = v28;
  v52 = v29;
  sub_2384397FC(v21, v23, v25 & 1);

  v65 = v53;
  v66 = v54;

  v30 = sub_23875DAA0();
  v32 = v31;
  v65 = v30;
  v66 = v31;
  LOBYTE(v21) = v33 & 1;
  v67 = v33 & 1;
  v68 = v34;
  strcpy(v64, "Settings.ACM.");
  v64[7] = -4864;
  v62 = v48;
  v63 = v49;
  v35 = v55;
  sub_23875B4C0();
  v36 = sub_23875F220();
  (*(v56 + 8))(v35, v57);
  v62 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09550, &qword_2387638E0);
  sub_23843A3E8(&qword_27DF0AEC0, &qword_27DF09550, &qword_2387638E0, MEMORY[0x277D83958]);
  v37 = sub_23875E980();
  v39 = v38;

  MEMORY[0x23EE63650](v37, v39);

  v40 = v58;
  sub_23875DE00();

  sub_2384397FC(v30, v32, v21);

  v41 = v60;
  sub_23843981C(v40, v60, &qword_27DF0E838, &unk_23877A3B0);
  v42 = v61;
  v43 = v50;
  *v61 = v26;
  v42[1] = v43;
  v44 = v51 & 1;
  *(v42 + 16) = v51 & 1;
  v42[3] = v52;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E840, &qword_2387707F8);
  sub_23843981C(v41, v42 + *(v45 + 48), &qword_27DF0E838, &unk_23877A3B0);
  sub_23843980C(v26, v43, v44);

  sub_238439884(v40, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v41, &qword_27DF0E838, &unk_23877A3B0);
  sub_2384397FC(v26, v43, v44);

  return result;
}

double sub_23857BD2C@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  *a2 = sub_23875D030();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E830, &qword_2387707F0);
  return sub_23857B844(v4, v5, v7, v6, (a2 + *(v8 + 44)));
}

void *sub_23857BDA4(uint64_t a1)
{
  sub_238759780();
  v1 = sub_238759710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_238763E60;
  *(v2 + 32) = sub_2387596A0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_238763E60;
  sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  *(v3 + 32) = sub_23875EF80();
  *(v3 + 40) = sub_23875EF80();
  v4 = sub_23875EC60();

  v5 = objc_opt_self();
  v6 = [v5 orPredicateWithSubpredicates_];

  *(v2 + 40) = v6;
  v7 = sub_23875EC60();

  v8 = [v5 andPredicateWithSubpredicates_];

  [v1 setPredicate_];
  sub_238449184(0, &qword_27DF09960, 0x277CCAC98);
  v9 = sub_23875EC60();
  [v1 setSortDescriptors_];

  return v1;
}

void sub_23857BFF8(uint64_t a1)
{
  sub_238758680();
  if (v1 <= 0x3F)
  {
    sub_2385107E0(319);
    if (v2 <= 0x3F)
    {
      sub_23857C1DC(319, &qword_27DF0A0B0, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_23857C1DC(319, &qword_27DF0C678, MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_238464EC8(319);
          if (v5 <= 0x3F)
          {
            sub_23857C230(319, &qword_27DF09E20, MEMORY[0x277D85B28], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_23857C230(319, &qword_27DF0E828, MEMORY[0x277CC7478], MEMORY[0x277CDD7C8]);
              if (v7 <= 0x3F)
              {
                sub_23857C230(319, &qword_27DF09E18, MEMORY[0x277CC7A70], MEMORY[0x277CDD7C8]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_23857C1DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23857C230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_23857C2C8()
{
  result = qword_27DF0E890;
  if (!qword_27DF0E890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E880, &qword_238770840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E890);
  }

  return result;
}

unint64_t sub_23857C358()
{
  result = qword_27DF0E8D0;
  if (!qword_27DF0E8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E838, &unk_23877A3B0);
    sub_23857CBB0(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E8D0);
  }

  return result;
}

unint64_t sub_23857C414()
{
  result = qword_27DF0E8D8;
  if (!qword_27DF0E8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E8C8, &qword_238770860);
    sub_23857CBB0(&qword_27DF0E8E0, type metadata accessor for AccountConsentManagementAllDataView, &unk_23877C5A0);
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E8D8);
  }

  return result;
}

unint64_t sub_23857C504()
{
  result = qword_27DF0E900;
  if (!qword_27DF0E900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E8E8, &qword_238770898);
    sub_23843A3E8(&qword_27DF0E8F8, &qword_27DF0E8F0, &unk_2387708A0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E900);
  }

  return result;
}

uint64_t sub_23857C5C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountConsentManagementView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23857C62C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountConsentManagementView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_23857C690(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for AccountConsentManagementView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23857755C(a1, a2, v6);
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for AccountConsentManagementView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_238758680();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = v0 + v3 + v1[10];
  if (*(v7 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
  }

  v8 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C1E0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[12];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E810, &qword_238770738);
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v1[13];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_23857C994()
{
  result = qword_27DF0E950;
  if (!qword_27DF0E950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E908, &qword_2387708B0);
    sub_238561FA0();
    sub_23857CBB0(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E950);
  }

  return result;
}

unint64_t sub_23857CA50()
{
  result = qword_27DF0E958;
  if (!qword_27DF0E958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A330, &qword_2387655F0);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
    sub_23857CBB0(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E958);
  }

  return result;
}

uint64_t sub_23857CBB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23857CC28(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccountConsentManagementView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_23857CCE4(uint64_t a1)
{
  sub_23857CD58();
  if (v1 <= 0x3F)
  {
    sub_23857CDB8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23857CD58()
{
  if (!qword_27DF0E988)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DF0E988);
    }
  }
}

void sub_23857CDB8(uint64_t a1)
{
  if (!qword_27DF0E990)
  {
    sub_23875AD80();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DF0E990);
    }
  }
}

uint64_t sub_23857CE28()
{
  v1 = v0;
  v2 = sub_23875AD80();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = sub_2387591F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OrderDetailsNote(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23857F634(v1, v15, type metadata accessor for OrderDetailsNote);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_23857F198(v15);
    (*(v10 + 104))(v12, *MEMORY[0x277CC77C8], v9);
    v22 = sub_238758A40();
    (*(v10 + 8))(v12, v9);
    return v22;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_23857F198(v15);
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v17 = qword_2814F1B90;
    v18 = sub_23875EA50();
    v19 = sub_23875EA50();
    v20 = sub_23875EA50();
    v21 = [v17 localizedStringForKey:v18 value:v19 table:v20];

    v22 = sub_23875EA80();
    return v22;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930);
  (*(v3 + 32))(v8, &v15[*(v23 + 64)], v2);
  (*(v3 + 16))(v5, v8, v2);
  v24 = (*(v3 + 88))(v5, v2);
  if (v24 == *MEMORY[0x277CC8440])
  {
    if (qword_2814F0880 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v24 == *MEMORY[0x277CC8438])
  {
    if (qword_2814F0880 == -1)
    {
LABEL_12:
      v25 = qword_2814F1B90;
      v26 = sub_23875EA50();
      v27 = sub_23875EA50();
      v28 = sub_23875EA50();
      v29 = [v25 localizedStringForKey:v26 value:v27 table:v28];

      v22 = sub_23875EA80();
      (*(v3 + 8))(v8, v2);
      return v22;
    }

LABEL_14:
    swift_once();
    goto LABEL_12;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_23857D404()
{
  v1 = type metadata accessor for OrderDetailsNote(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  sub_23875F770();
  sub_23857F634(v0, v6, type metadata accessor for OrderDetailsNote);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload >= 2)
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
    v9 = sub_23875AD80();
    (*(*(v9 - 8) + 8))(&v6[v8], v9);
  }

  sub_23875EB30();

  sub_23857F634(v0, v3, type metadata accessor for OrderDetailsNote);
  if (swift_getEnumCaseMultiPayload() > 1)
  {

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
    v11 = sub_23875AD80();
    (*(*(v11 - 8) + 8))(&v3[v10], v11);
  }

  else
  {
  }

  sub_23875EB30();

  v21 = v16;
  v22 = v17;
  v23 = v18;
  v19 = v14;
  v20 = v15;
  v13 = sub_23875F750();
  return sub_23875F600();
}

uint64_t sub_23857D664@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23857D404();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23857D68C@<X0>(uint64_t a1@<X8>)
{
  sub_23857F634(v1, a1, type metadata accessor for OrderDetailsNote);
  v3 = *(type metadata accessor for OrderDetailsNotes_iOS(0) + 20);
  *(a1 + v3) = swift_getKeyPath(asc_238770A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23857D718@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E9C8, &qword_238770AE8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E9D0, &qword_238770AF0);
  v7 = *(v6 - 8);
  v21 = v6;
  v22 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v25 = v1;
  sub_23875D760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E9D8, &qword_238770AF8);
  sub_23857F494(&qword_27DF0E9E0, &qword_27DF0E9D8, &qword_238770AF8, sub_23857F464);
  sub_23875C410();
  v26 = sub_23857CE28();
  v27 = v10;
  v11 = sub_23843A3E8(&qword_27DF0EA18, &qword_27DF0E9C8, &qword_238770AE8, MEMORY[0x277CDD6E0]);
  v14 = sub_2384397A8(v11, v12, v13);
  v15 = MEMORY[0x277D837D0];
  sub_23875DC70();

  (*(v3 + 8))(v5, v2);
  v24 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA20, &unk_238771150);
  v26 = v2;
  v27 = v15;
  v28 = v11;
  v29 = v14;
  swift_getOpaqueTypeConformance2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EA28, &qword_238770B20);
  v17 = sub_23843A3E8(&qword_27DF0EA30, &qword_27DF0EA28, &qword_238770B20, MEMORY[0x277CDD7A8]);
  v26 = v16;
  v27 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v21;
  sub_23875DEF0();
  return (*(v22 + 8))(v9, v18);
}

double sub_23857DA80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA10, &unk_238770B10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA00, &qword_238770B08);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E9F0, &qword_238770B00);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E9D8, &qword_238770AF8);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v4 = sub_23875D030();
  *(v4 + 1) = 0x4020000000000000;
  v4[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA40, &qword_238770B28);
  sub_23857DDD0(v24, &v4[*(v14 + 44)]);
  sub_23875E480();
  sub_23875C9C0();
  sub_2384396E4(v4, v7, &qword_27DF0EA10, &unk_238770B10);
  v15 = &v7[*(v5 + 36)];
  v16 = v31;
  *(v15 + 4) = v30;
  *(v15 + 5) = v16;
  *(v15 + 6) = v32;
  v17 = v27;
  *v15 = v26;
  *(v15 + 1) = v17;
  v18 = v29;
  *(v15 + 2) = v28;
  *(v15 + 3) = v18;
  v19 = sub_23875D770();
  sub_2384396E4(v7, v10, &qword_27DF0EA00, &qword_238770B08);
  v20 = &v10[*(v8 + 36)];
  *v20 = v19;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  v21 = sub_23875D790();
  sub_2384396E4(v10, v13, &qword_27DF0E9F0, &qword_238770B00);
  v22 = &v13[*(v11 + 36)];
  *v22 = v21;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  sub_2384396E4(v13, v25, &qword_27DF0E9D8, &qword_238770AF8);

  return result;
}

double sub_23857DDD0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v86 = a2;
  v83 = sub_23875D510();
  v79 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v77 = &v70[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA48, &qword_238770B30);
  v81 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v80 = &v70[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA50, &unk_238770B38);
  MEMORY[0x28223BE20](v5 - 8);
  v85 = &v70[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v70[-v8];
  v9 = type metadata accessor for OrderDetailsNote(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v70[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v70[-v13];
  sub_23875ED50();
  v78 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2387632F0;
  v76 = a1;
  sub_23857F634(a1, v14, type metadata accessor for OrderDetailsNote);
  v75 = v9;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = *v14;
  v18 = *(v14 + 1);

  if (EnumCaseMultiPayload >= 2)
  {
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
    v23 = sub_23875AD80();
    v19 = (*(*(v23 - 8) + 8))(&v14[v22], v23);
  }

  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_238448C58(v19, v20, v21);
  *(v15 + 32) = v17;
  *(v15 + 40) = v18;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v24 = qword_2814F1B90;
  v25 = sub_23875EA50();
  v26 = sub_23875EA50();
  v27 = sub_23875EA50();
  v28 = [v24 localizedStringForKey:v25 value:v26 table:v27];

  sub_23875EA80();
  v29 = sub_23875EAA0();
  v31 = v30;

  v87 = v29;
  v88 = v31;
  sub_2384397A8(v32, v33, v34);
  v35 = sub_23875DAA0();
  v37 = v36;
  v39 = v38;
  sub_23875D980();
  v40 = sub_23875DA60();
  v42 = v41;
  v71 = v43;
  v45 = v44;

  sub_2384397FC(v35, v37, v39 & 1);

  sub_23857F634(v76, v11, type metadata accessor for OrderDetailsNote);
  v46 = swift_getEnumCaseMultiPayload();
  v73 = v40;
  v74 = v45;
  v72 = v42;
  if (v46 > 1)
  {

    v47 = *(v11 + 2);
    v48 = *(v11 + 3);
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
    v50 = sub_23875AD80();
    (*(*(v50 - 8) + 8))(&v11[v49], v50);
  }

  else
  {
    v47 = *(v11 + 2);
    v48 = *(v11 + 3);
  }

  v87 = v47;
  v88 = v48;
  v51 = sub_23875DAA0();
  v53 = v52;
  v87 = v51;
  v88 = v52;
  v55 = v54 & 1;
  LOBYTE(v89) = v54 & 1;
  v90 = v56;
  v57 = v77;
  sub_23875D500();
  v58 = MEMORY[0x277CE0BD8];
  v59 = MEMORY[0x277CE0BC8];
  v60 = v80;
  v61 = v83;
  sub_23875DC10();
  (*(v79 + 8))(v57, v61);
  sub_2384397FC(v51, v53, v55);

  v87 = v58;
  v88 = v61;
  v89 = v59;
  v90 = MEMORY[0x277CE06D0];
  swift_getOpaqueTypeConformance2();
  v62 = v82;
  v63 = v84;
  sub_23875DE00();
  (*(v81 + 8))(v60, v63);
  v64 = v85;
  sub_23840FE78(v62, v85);
  v65 = v86;
  v67 = v72;
  v66 = v73;
  *v86 = v73;
  v65[1] = v67;
  LOBYTE(v63) = v71 & 1;
  *(v65 + 16) = v71 & 1;
  v65[3] = v74;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA58, &qword_238770B48);
  sub_23840FE78(v64, v65 + *(v68 + 48));
  sub_23843980C(v66, v67, v63);

  sub_23840FEE8(v62);
  sub_23840FEE8(v64);
  sub_2384397FC(v66, v67, v63);

  return result;
}

double sub_23857E538(uint64_t a1)
{
  v2 = sub_23875D2A0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA28, &qword_238770B20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_23875D250();
  MEMORY[0x28223BE20](v7);
  *(&v13 - 2) = a1;
  sub_23857F5E0(v8, v9, v10);
  sub_23875C4D0();
  v11 = sub_23843A3E8(&qword_27DF0EA30, &qword_27DF0EA28, &qword_238770B20, MEMORY[0x277CDD7A8]);
  MEMORY[0x23EE61E80](v6, v3, v11);
  (*(v4 + 8))(v6, v3);

  return result;
}

void sub_23857E768(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = type metadata accessor for OrderDetailsNotes_iOS(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23857F634(a1, &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetailsNotes_iOS);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_23857F69C(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  *a2 = sub_23857F700;
  a2[1] = v8;
}

uint64_t sub_23857E8DC(uint64_t a1)
{
  v2 = sub_23875CDB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = sub_23875C600();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OrderDetailsNotes_iOS(0);
  sub_23857F760(a1 + *(v13 + 20), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_23875EFF0();
    v14 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_23875C5F0();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_23857EB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875AD80();
  v69 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v67 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68 = &v62 - v7;
  v8 = type metadata accessor for OrderDetailsNote(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v62 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = (&v62 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E998, &unk_2387709D0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - v18;
  v21 = (&v62 + *(v20 + 56) - v18);
  sub_23857F634(a1, &v62 - v18, type metadata accessor for OrderDetailsNote);
  sub_23857F634(a2, v21, type metadata accessor for OrderDetailsNote);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23857F634(v19, v13, type metadata accessor for OrderDetailsNote);
      v24 = *v13;
      v23 = v13[1];
      v26 = v13[2];
      v25 = v13[3];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = v21[2];
        v27 = v21[3];
        if (v24 == *v21 && v23 == v21[1])
        {

          goto LABEL_27;
        }

        v30 = sub_23875F630();

        if (v30)
        {
LABEL_27:
          if (v26 != v28 || v25 != v27)
          {
            goto LABEL_44;
          }

          goto LABEL_48;
        }

        goto LABEL_16;
      }

      goto LABEL_25;
    }

    sub_23857F634(v19, v10, type metadata accessor for OrderDetailsNote);
    v39 = *(v10 + 1);
    v66 = *v10;
    v41 = *(v10 + 2);
    v40 = *(v10 + 3);
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v69 + 8))(&v10[v42], v4);
      goto LABEL_25;
    }

    v43 = *v21;
    v44 = v21[1];
    v63 = v41;
    v64 = v43;
    v45 = v21[3];
    v62 = v21[2];
    v65 = v45;
    v46 = *(v69 + 32);
    v47 = &v10[v42];
    v48 = v68;
    v46(v68, v47, v4);
    v49 = v21 + v42;
    v50 = v67;
    v46(v67, v49, v4);
    if (v66 == v64 && v39 == v44)
    {
    }

    else
    {
      v52 = sub_23875F630();

      if ((v52 & 1) == 0)
      {

LABEL_38:
        v56 = *(v69 + 8);
        v56(v50, v4);
        v56(v48, v4);
        goto LABEL_45;
      }
    }

    if (v63 == v62 && v40 == v65)
    {
    }

    else
    {
      v55 = sub_23875F630();

      if ((v55 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    v59 = sub_23875AD70();
    v61 = *(v69 + 8);
    v61(v50, v4);
    v61(v48, v4);
    sub_23857F198(v19);
    return v59 & 1;
  }

  sub_23857F634(v19, v16, type metadata accessor for OrderDetailsNote);
  v32 = *v16;
  v31 = v16[1];
  v34 = v16[2];
  v33 = v16[3];
  if (!swift_getEnumCaseMultiPayload())
  {
    v36 = v21[2];
    v35 = v21[3];
    if (v32 == *v21 && v31 == v21[1])
    {
    }

    else
    {
      v38 = sub_23875F630();

      if ((v38 & 1) == 0)
      {
LABEL_16:

LABEL_45:
        sub_23857F198(v19);
        goto LABEL_46;
      }
    }

    if (v34 != v36 || v33 != v35)
    {
LABEL_44:
      v58 = sub_23875F630();

      if ((v58 & 1) == 0)
      {
        goto LABEL_45;
      }

LABEL_49:
      sub_23857F198(v19);
      v59 = 1;
      return v59 & 1;
    }

LABEL_48:

    goto LABEL_49;
  }

LABEL_25:

  sub_23857F130(v19);
LABEL_46:
  v59 = 0;
  return v59 & 1;
}

uint64_t sub_23857F130(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E998, &unk_2387709D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23857F198(uint64_t a1)
{
  v2 = type metadata accessor for OrderDetailsNote(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23857F23C(uint64_t a1)
{
  result = type metadata accessor for OrderDetailsNote(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23857F30C(uint64_t a1)
{
  type metadata accessor for OrderDetailsNote(319);
  if (v1 <= 0x3F)
  {
    sub_23857F390(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23857F390(uint64_t a1)
{
  if (!qword_27DF0DA10)
  {
    sub_23875C600();
    v1 = sub_23875C470();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0DA10);
    }
  }
}

unint64_t sub_23857F3E8()
{
  result = qword_27DF0E9C0;
  if (!qword_27DF0E9C0)
  {
    type metadata accessor for OrderDetailsNotes_iOS(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E9C0);
  }

  return result;
}

uint64_t sub_23857F494(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23857F518()
{
  result = qword_27DF0E9F8;
  if (!qword_27DF0E9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EA00, &qword_238770B08);
    sub_23843A3E8(&qword_27DF0EA08, &qword_27DF0EA10, &unk_238770B10, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E9F8);
  }

  return result;
}

unint64_t sub_23857F5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0EA38;
  if (!qword_27DF0EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EA38);
  }

  return result;
}

uint64_t sub_23857F634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23857F69C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsNotes_iOS(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23857F700()
{
  v1 = *(type metadata accessor for OrderDetailsNotes_iOS(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23857E8DC(v2);
}

uint64_t sub_23857F760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23857F7D0(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB18, &unk_238770F50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v41 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v8 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v33 - v11;
  v12 = sub_238758470();
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v42 = v14 + 16;
  v43 = v14;
  v46 = (v14 + 8);
  v37 = v8;
  v40 = (v8 + 48);
  v22 = v13;
  v47 = a3;

  v23 = 0;
  v39 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = v23;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v43 + 16))(v16, *(v47 + 48) + *(v43 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v22);
    v45(v16);
    if (v3)
    {
      (*v46)(v16, v22);

      return;
    }

    v20 &= v20 - 1;
    (*v46)(v16, v22);
    if ((*v40)(v7, 1, v41) == 1)
    {
      sub_238439884(v7, &qword_27DF0EB18, &unk_238770F50);
    }

    else
    {
      v35 = v22;
      v25 = v36;
      sub_23858600C(v7, v36, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      sub_23858600C(v25, v38, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      v26 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_238498610(0, v26[2] + 1, 1, v26);
      }

      v28 = v26[2];
      v27 = v26[3];
      v39 = v26;
      v29 = v28 + 1;
      v22 = v35;
      if (v28 >= v27 >> 1)
      {
        v34 = v28;
        v32 = sub_238498610((v27 > 1), v28 + 1, 1, v39);
        v28 = v34;
        v39 = v32;
      }

      v30 = v38;
      v31 = v39;
      v39[2] = v29;
      sub_23858600C(v30, v31 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v28, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      return;
    }

    v20 = *(v17 + 8 * v23);
    ++v24;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void *sub_23857FC18(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB08, &unk_238770F40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel(0);
  MEMORY[0x28223BE20](v9);
  v27 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v25 = &v22 - v13;
  v26 = *(a3 + 16);
  if (!v26)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = 0;
  v23 = v12;
  v15 = (v12 + 48);
  v16 = MEMORY[0x277D84F90];
  v24 = a1;
  while (1)
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB10, &qword_2387774C0) - 8);
    a1(a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14);
    if (v3)
    {
      break;
    }

    if ((*v15)(v8, 1, v9) == 1)
    {
      sub_238439884(v8, &qword_27DF0EB08, &unk_238770F40);
    }

    else
    {
      v18 = v25;
      sub_23858600C(v8, v25, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
      sub_23858600C(v18, v27, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_238498684(0, v16[2] + 1, 1, v16);
      }

      v20 = v16[2];
      v19 = v16[3];
      if (v20 >= v19 >> 1)
      {
        v16 = sub_238498684((v19 > 1), v20 + 1, 1, v16);
      }

      v16[2] = v20 + 1;
      sub_23858600C(v27, v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
      a1 = v24;
    }

    if (v26 == ++v14)
    {
      return v16;
    }
  }

  return v16;
}

char *sub_23857FF54(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v30[3] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF98, &unk_238775820);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_238758350();
  MEMORY[0x28223BE20](v9);
  v29 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v26 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v24 = v12;
  v27 = (v12 + 32);
  v28 = (v12 + 48);
  v15 = (a3 + 40);
  v16 = MEMORY[0x277D84F90];
  v25 = a1;
  while (1)
  {
    v17 = *v15;
    v30[0] = *(v15 - 1);
    v30[1] = v17;

    (a1)(v30);
    if (v3)
    {
      break;
    }

    if ((*v28)(v8, 1, v9) == 1)
    {
      sub_238439884(v8, &qword_27DF0AF98, &unk_238775820);
    }

    else
    {
      v18 = v9;
      v19 = v26;
      v20 = *v27;
      (*v27)(v26, v8, v18);
      v20(v29, v19, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2384986AC(0, *(v16 + 2) + 1, 1, v16);
      }

      v22 = *(v16 + 2);
      v21 = *(v16 + 3);
      if (v22 >= v21 >> 1)
      {
        v16 = sub_2384986AC((v21 > 1), v22 + 1, 1, v16);
      }

      *(v16 + 2) = v22 + 1;
      v20(&v16[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22], v29, v18);
      v9 = v18;
      a1 = v25;
    }

    v15 += 2;
    if (!--v14)
    {
      return v16;
    }
  }

  return v16;
}

uint64_t View.managedOrderResourceLoader(fqoid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ManagedOrderResourceLoaderModifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875A710();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  v10 = &v8[*(v6 + 20)];
  *v10 = swift_getKeyPath(byte_238770B50);
  v10[8] = 0;
  MEMORY[0x23EE629E0](v8, a2, v6, a3);
  return sub_238580950(v8);
}

void *sub_238580374(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_238585BE0(x0_0, a2, a3);

  return sub_23875CDC0();
}

void sub_2385803BC(uint64_t *a1@<X8>)
{
  sub_238758890();
  sub_238758880();
  sub_238758870();

  v2 = sub_238758010();

  *a1 = v2;
}

uint64_t sub_238580420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_238585C6C(&qword_27DF0EB00, sub_2384B6C9C, MEMORY[0x277D85380]);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_2385804B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_238585E00(a1, a2, a3);
  sub_23875CDC0();
  return v4;
}

uint64_t sub_238580508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23875CDB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875A710();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath(byte_238770DE0, v11);
  (*(v10 + 16))(v13, v2, v9);
  v14 = v2 + *(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    v16 = v15;
  }

  else
  {

    sub_23875EFF0();
    v17 = sub_23875D730();
    v26 = v5;
    v18 = v17;
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    v19 = sub_2384B4E98(v15, 0);
    (*(v6 + 8))(v8, v26, v19);
    v16 = v28[0];
  }

  v20 = type metadata accessor for ManagedOrderResourceLoader(0);
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_fqoid, v13, v9);
  *(v21 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_context) = v16;
  v28[3] = v20;
  v28[4] = &protocol witness table for ManagedOrderResourceLoader;
  v28[0] = v21;
  v22 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA98, &qword_238770E08) + 36));
  sub_23845C998(v28, (v22 + 1));
  *v22 = KeyPath;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EAA0, &unk_238770E10);
  (*(*(v23 - 8) + 16))(a2, a1, v23);
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t ManagedOrderResourceLoader.__allocating_init(fqoid:context:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_fqoid;
  v6 = sub_23875A710();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_context) = a2;
  return v4;
}

void *sub_2385808A4@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_238585E00(a2, a3, a4);
  result = sub_23875CDC0();
  *a1 = v6;
  return result;
}

uint64_t sub_2385808F4(id *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  sub_238585E00(a1, a2, a3);
  v4 = v3;
  return sub_23875CDD0();
}

uint64_t sub_238580950(uint64_t a1)
{
  v2 = type metadata accessor for ManagedOrderResourceLoaderModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2385809B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238580A3C;

  return sub_2385850CC();
}

uint64_t sub_238580A3C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_238580B3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238586094;

  return sub_238585290();
}

uint64_t sub_238580BC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238586094;

  return sub_238585010();
}

uint64_t ManagedOrderResourceLoader.init(fqoid:context:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_fqoid;
  v6 = sub_23875A710();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_context) = a2;
  return v2;
}

uint64_t ManagedOrderResourceLoader.loadImagesNamed(_:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_23875F130();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_23875A710();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v2[10] = *(v5 + 64);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238580DF8, 0, 0);
}

uint64_t sub_238580DF8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[4];
  v15 = v0[3];
  v7 = *(v6 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_context);
  v16 = v0[5];
  v17 = v0[7];
  (*(v4 + 16))(v2, v6 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_fqoid, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[12] = v10;
  (*(v4 + 32))(v10 + v8, v2, v3);
  *(v10 + v9) = v7;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v15;
  (*(v5 + 104))(v17, *MEMORY[0x277CBE110], v16);
  v7;

  v11 = swift_task_alloc();
  v0[13] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA60, &qword_238770B80);
  *v11 = v0;
  v11[1] = sub_238580FD0;
  v13 = v0[7];

  return MEMORY[0x28210EE50](v0 + 2, v13, sub_238581624, v10, v12);
}

uint64_t sub_238580FD0()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_2385811DC;
  }

  else
  {
    v5 = sub_238581164;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_238581164()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2385811DC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23858124C(void *a4@<X8>)
{
  v6 = sub_238758350();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  sub_238757DF0();
  v13 = sub_238757D50();
  if (v4)
  {
    return;
  }

  if (!v13)
  {
    *a4 = 0;
    return;
  }

  v35 = v13;
  v36 = 0;
  v14 = [v13 ecommerceOrderContent];
  if (!v14)
  {
    goto LABEL_25;
  }

  v15 = v14;
  v16 = [objc_opt_self() preferredLanguages];
  sub_23875EC80();

  v17 = v36;
  v18 = sub_23875A560();
  v36 = v17;
  v19 = v15;
  if (v17)
  {

    return;
  }

  v20 = v18;

  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v20;
    if (v21)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

  v22 = v20;
  if (!sub_23875F3A0())
  {
LABEL_24:

LABEL_25:
    v31 = 0;
    goto LABEL_26;
  }

  v21 = sub_23875F3A0();
  if (!v21)
  {

    v31 = MEMORY[0x277D84F90];
LABEL_26:
    *a4 = v31;
    return;
  }

LABEL_9:
  v37 = v22;
  v38 = MEMORY[0x277D84F90];
  sub_2385FE810(0, v21 & ~(v21 >> 63), 0);
  if (v21 < 0)
  {
    __break(1u);
  }

  else
  {
    v33 = v19;
    v34 = a4;
    v23 = v38;
    if ((v37 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v21; ++i)
      {
        MEMORY[0x23EE63F70](i, v37);
        sub_238758340();
        v38 = v23;
        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2385FE810((v25 > 1), v26 + 1, 1);
          v23 = v38;
        }

        *(v23 + 16) = v26 + 1;
        (*(v7 + 32))(v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26, v12, v6);
      }
    }

    else
    {
      v27 = 32;
      do
      {
        v28 = *(v37 + v27);
        sub_238758340();
        v38 = v23;
        v30 = *(v23 + 16);
        v29 = *(v23 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_2385FE810((v29 > 1), v30 + 1, 1);
          v23 = v38;
        }

        *(v23 + 16) = v30 + 1;
        (*(v7 + 32))(v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v30, v9, v6);
        v27 += 8;
        --v21;
      }

      while (v21);
    }

    *v34 = v23;
  }
}

uint64_t ManagedOrderResourceLoader.loadReceiptNamed(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23875F130();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_23875A710();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v3[11] = *(v6 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2385817F0, 0, 0);
}

uint64_t sub_2385817F0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[5];
  v18 = v0[6];
  v19 = v0[8];
  v7 = *(v6 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_context);
  v16 = v0[3];
  v17 = v0[4];
  (*(v4 + 16))(v2, v6 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_fqoid, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[13] = v10;
  (*(v4 + 32))(v10 + v8, v2, v3);
  *(v10 + v9) = v7;
  v11 = (v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v16;
  v11[1] = v17;
  (*(v5 + 104))(v19, *MEMORY[0x277CBE110], v18);
  v7;

  v12 = swift_task_alloc();
  v0[14] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FB0, &qword_238766040);
  *v12 = v0;
  v12[1] = sub_2385819CC;
  v14 = v0[8];

  return MEMORY[0x28210EE50](v0 + 2, v14, sub_238581C48, v10, v13);
}

uint64_t sub_2385819CC()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_238581BD8;
  }

  else
  {
    v5 = sub_238581B60;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_238581B60()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_238581BD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ManagedOrderResourceLoader.loadReturnLabelNamed(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23875F130();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_23875A710();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v3[11] = *(v6 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238581DB0, 0, 0);
}

uint64_t sub_238581DB0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[5];
  v18 = v0[6];
  v19 = v0[8];
  v7 = *(v6 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_context);
  v16 = v0[3];
  v17 = v0[4];
  (*(v4 + 16))(v2, v6 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_fqoid, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[13] = v10;
  (*(v4 + 32))(v10 + v8, v2, v3);
  *(v10 + v9) = v7;
  v11 = (v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v16;
  v11[1] = v17;
  (*(v5 + 104))(v19, *MEMORY[0x277CBE110], v18);
  v7;

  v12 = swift_task_alloc();
  v0[14] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E6C8, &qword_238770BA0);
  *v12 = v0;
  v12[1] = sub_238581F8C;
  v14 = v0[8];

  return MEMORY[0x28210EE50](v0 + 2, v14, sub_2385823F0, v10, v13);
}

uint64_t sub_238581F8C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_23858608C;
  }

  else
  {
    v5 = sub_238586090;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_238582120(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  sub_238757DF0();
  v13 = sub_238757D50();
  if (v7)
  {
    return;
  }

  if (!v13)
  {
LABEL_6:
    *a7 = 0;
    return;
  }

  v34 = v13;
  v14 = [v13 ecommerceOrderContent];
  if (!v14)
  {

    goto LABEL_6;
  }

  v15 = v14;
  v16 = [objc_opt_self() preferredLanguages];
  v17 = sub_23875EC80();

  v18 = a5(a3, a4, v17);

  if (v18)
  {
    v19 = [v18 mimeType];
    if (v19)
    {
      v20 = v19;
      v21 = sub_23875EA80();
      v32 = v22;
      v33 = v21;

      v23 = [v18 data];
      v24 = sub_23875B990();
      v31 = v25;

      v26 = [v18 name];
      v27 = sub_23875EA80();
      v29 = v28;

      v30 = a6(v24, v31, v33, v32, v27, v29);
      *a7 = v30;
      return;
    }
  }

  *a7 = 0;
}

uint64_t objectdestroy_4Tm_0()
{
  v1 = sub_23875A710();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

void sub_238582430(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(sub_23875A710() - 8);
  v8 = (((*(v7 + 64) + ((*(v7 + 80) + 16) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_238582120(*(v3 + v8), *(v3 + v8 + 8), a1, a2, a3);
}

uint64_t ManagedOrderResourceLoader.deinit()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_fqoid;
  v2 = sub_23875A710();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ManagedOrderResourceLoader.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_fqoid;
  v2 = sub_23875A710();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_23858260C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238586094;

  return ManagedOrderResourceLoader.loadImagesNamed(_:)(a1);
}

uint64_t sub_2385826A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238586094;

  return ManagedOrderResourceLoader.loadReceiptNamed(_:)(a1, a2);
}

uint64_t sub_23858274C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238586094;

  return ManagedOrderResourceLoader.loadReturnLabelNamed(_:)(a1, a2);
}

uint64_t OrderBundleResourceLoader.__allocating_init(orderBundle:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t OrderBundleResourceLoader.loadImagesNamed(_:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x2822009F8](sub_23858287C, 0, 0);
}

uint64_t sub_23858287C(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[3];
  v4 = sub_238757C00();
  v1[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA68, &qword_238770BB0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA60, &qword_238770B80);
  v7 = swift_task_alloc();
  v1[7] = v7;
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v2;
  v8 = swift_task_alloc();
  v1[8] = v8;
  *v8 = v1;
  v8[1] = sub_2385829B8;

  return MEMORY[0x282200740](v1 + 2, v5, v6, 0, 0, &unk_238770BC0, v7, v5);
}

uint64_t sub_2385829B8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_238582B3C;
  }

  else
  {

    v2 = sub_238582AD4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238582AD4()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_238582B3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238582BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_238758350();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EAB0, &qword_238770E28);
  v5[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA68, &qword_238770BB0);
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EAB8, &unk_238770E30);
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF98, &unk_238775820) - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238582E68, 0, 0);
}

uint64_t sub_238582E68()
{
  v1 = 0;
  v28 = v0 + 2;
  v2 = v0[11];
  v30 = *(v2 + 16);
  v3 = (v2 + 40);
  while (v30 != v1)
  {
    v7 = v0[32];
    v6 = v0[33];
    v9 = v0[12];
    v8 = v0[13];
    v10 = *v3;
    v31 = v8;
    v32 = *(v3 - 1);
    v34 = v3;
    v11 = sub_23875ED80();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v6, 1, 1, v11);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v9;
    v13[5] = v32;
    v13[6] = v10;
    v33 = v1;
    v13[7] = v1;
    v13[8] = v31;
    sub_23843981C(v6, v7, &unk_27DF09920, &qword_238764D80);
    LODWORD(v6) = (*(v12 + 48))(v7, 1, v11);
    v0 = v29;

    v14 = *(v29 + 256);
    if (v6 == 1)
    {
      sub_238439884(*(v29 + 256), &unk_27DF09920, &qword_238764D80);
    }

    else
    {
      sub_23875ED70();
      (*(v12 + 8))(v14, v11);
    }

    if (v13[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_23875ECE0();
      v17 = v16;
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v18 = **(v29 + 80);

    if (v17 | v15)
    {
      v4 = v28;
      *v28 = 0;
      v28[1] = 0;
      *(v29 + 32) = v15;
      *(v29 + 40) = v17;
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v29 + 264);
    *(v29 + 48) = 1;
    *(v29 + 56) = v4;
    *(v29 + 64) = v18;
    swift_task_create();

    sub_238439884(v5, &unk_27DF09920, &qword_238764D80);
    ++v1;
    v3 = v34 + 2;
    if (__OFADD__(v33 + 1, 1))
    {
      __break(1u);
      goto LABEL_18;
    }
  }

  v19 = v0[31];
  v20 = v0[14];
  v21 = v0[15];
  v22 = *(v21 + 56);
  v0[34] = v22;
  v0[35] = (v21 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v22(v19, 1, 1, v20);
  v5 = sub_238583FDC(v19, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12250, &qword_23876CF90);
  sub_23875EE10();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_14;
  }

LABEL_18:
  v5 = sub_23852F118(v5);
LABEL_14:
  v0[36] = v5;
  v23 = sub_23843A3E8(&qword_27DF0EAC0, &qword_27DF0EAB8, &unk_238770E30, MEMORY[0x277D85838]);
  v24 = swift_task_alloc();
  v0[37] = v24;
  *v24 = v0;
  v24[1] = sub_23858327C;
  v25 = v0[23];
  v26 = v0[18];

  return MEMORY[0x282200308](v26, v25, v23);
}

uint64_t sub_23858327C()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    (*(v2[24] + 8))(v2[25], v2[23]);

    v3 = sub_238583970;
  }

  else
  {
    v3 = sub_2385833B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2385833B4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);
  if ((*(*(v0 + 160) + 48))(v2, 1, v1) != 1)
  {
    v18 = *(v0 + 232);
    v17 = *(v0 + 240);
    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v21 = *(v0 + 120);
    v42 = *(v0 + 112);
    sub_2384396E4(v2, v19, &qword_27DF0EA68, &qword_238770BB0);
    sub_23843981C(v19, v20, &qword_27DF0EA68, &qword_238770BB0);
    v22 = *v20;
    sub_2384396E4(v20 + *(v1 + 48), v17, &qword_27DF0AF98, &unk_238775820);
    sub_23843981C(v17, v18, &qword_27DF0AF98, &unk_238775820);
    if ((*(v21 + 48))(v18, 1, v42) == 1)
    {
      v23 = *(v0 + 232);
      v24 = *(v0 + 176);
      sub_238439884(*(v0 + 240), &qword_27DF0AF98, &unk_238775820);
      sub_238439884(v24, &qword_27DF0EA68, &qword_238770BB0);
      sub_238439884(v23, &qword_27DF0AF98, &unk_238775820);
      goto LABEL_22;
    }

    v27 = *(v0 + 272);
    v28 = *(v0 + 240);
    v29 = *(v0 + 248);
    v30 = *(v0 + 176);
    v31 = *(v0 + 136);
    v32 = *(v0 + 112);
    v33 = *(v0 + 120);
    (*(v33 + 32))(v31, *(v0 + 232), v32);
    (*(v33 + 16))(v29, v31, v32);
    v27(v29, 0, 1, v32);
    (*(v33 + 8))(v31, v32);
    sub_238439884(v28, &qword_27DF0AF98, &unk_238775820);
    v34 = sub_238439884(v30, &qword_27DF0EA68, &qword_238770BB0);
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v37 = *(v0 + 288);
      if (v22 < *(v37 + 16))
      {
        sub_238585D90(*(v0 + 248), v37 + ((*(*(v0 + 208) + 80) + 32) & ~*(*(v0 + 208) + 80)) + *(*(v0 + 208) + 72) * v22);
LABEL_22:
        v38 = sub_23843A3E8(&qword_27DF0EAC0, &qword_27DF0EAB8, &unk_238770E30, MEMORY[0x277D85838]);
        v39 = swift_task_alloc();
        *(v0 + 296) = v39;
        *v39 = v0;
        v39[1] = sub_23858327C;
        v35 = *(v0 + 184);
        v34 = *(v0 + 144);
        v36 = v38;

        return MEMORY[0x282200308](v34, v35, v36);
      }
    }

    __break(1u);
    return MEMORY[0x282200308](v34, v35, v36);
  }

  v3 = *(v0 + 288);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  sub_238439884(v2, &qword_27DF0EAB0, &qword_238770E28);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v0 + 208);
    v6 = *(v0 + 288) + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v40 = *(v0 + 120);
    v41 = *(v5 + 72);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v9 = *(v0 + 216);
      v8 = *(v0 + 224);
      v10 = *(v0 + 112);
      v11 = *(v0 + 120);
      sub_23843981C(v6, v8, &qword_27DF0AF98, &unk_238775820);
      sub_2384396E4(v8, v9, &qword_27DF0AF98, &unk_238775820);
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        sub_238439884(*(v0 + 216), &qword_27DF0AF98, &unk_238775820);
      }

      else
      {
        v12 = *(*(v0 + 120) + 32);
        v12(*(v0 + 128), *(v0 + 216), *(v0 + 112));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2384986AC(0, *(v7 + 2) + 1, 1, v7);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_2384986AC((v13 > 1), v14 + 1, 1, v7);
        }

        v15 = *(v0 + 128);
        v16 = *(v0 + 112);
        *(v7 + 2) = v14 + 1;
        v12(&v7[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v14], v15, v16);
      }

      v6 += v41;
      --v4;
    }

    while (v4);

    if (*(v7 + 2))
    {
      goto LABEL_16;
    }
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_16;
    }
  }

  v7 = 0;
LABEL_16:
  **(v0 + 72) = v7;

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_238583970()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238583A78(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_238449A7C;

  return sub_238582BA8(a1, a2, v6, v7, v8);
}

uint64_t sub_238583B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = sub_238758350();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v7[10] = swift_task_alloc();
  v9 = sub_23875B940();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238583C98, 0, 0);
}

uint64_t sub_238583C98(uint64_t a1)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[10];
  sub_2387588A0();
  sub_2387591A0();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v1[6];
    v6 = v1[2];
    sub_238439884(v1[10], &qword_27DF0D040, &qword_2387676A0);
  }

  else
  {
    v7 = v1[13];
    (*(v1[12] + 32))(v7, v1[10], v1[11]);
    sub_238585454(v7);
    if ((v8 & 1) == 0)
    {
      v13 = sub_23875B960();
      v15 = v14;
      v16 = objc_allocWithZone(MEMORY[0x277CBF758]);
      sub_23844C8EC(v13, v15);
      v17 = sub_23875B980();
      v18 = [v16 initWithData_];

      sub_23844C954(v13, v15);
      if (v18)
      {
        sub_2386D0DB8(MEMORY[0x277D84F90]);
        sub_238758030();

        sub_238758320();
      }

      else
      {
        sub_238758320();
      }

      v20 = v1[8];
      v19 = v1[9];
      v22 = v1[6];
      v21 = v1[7];
      v23 = v1[2];
      (*(v1[12] + 8))(v1[13], v1[11]);
      v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA68, &qword_238770BB0) + 48);
      *v23 = v22;
      (*(v20 + 32))(v24, v19, v21);
      v9 = v24;
      v10 = 0;
      goto LABEL_6;
    }

    v5 = v1[6];
    v6 = v1[2];
    (*(v1[12] + 8))(v1[13], v1[11]);
  }

  v9 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA68, &qword_238770BB0) + 48);
  *v6 = v5;
  v10 = 1;
LABEL_6:
  (*(v1[8] + 56))(v9, v10, 1, v1[7]);

  v11 = v1[1];

  return v11();
}

uint64_t sub_238583FDC(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF98, &unk_238775820);
      v4 = sub_23875ECA0();
      *(v4 + 16) = a2;
      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF98, &unk_238775820) - 8);
      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      sub_23843981C(v3, v4 + v6, &qword_27DF0AF98, &unk_238775820);
      v7 = a2 - 1;
      if (a2 != 1)
      {
        v8 = *(v5 + 72);
        v9 = v4 + v8 + v6;
        do
        {
          sub_23843981C(v3, v9, &qword_27DF0AF98, &unk_238775820);
          v9 += v8;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    sub_238439884(v3, &qword_27DF0AF98, &unk_238775820);
    return v4;
  }

  return result;
}

uint64_t OrderBundleResourceLoader.loadReceiptNamed(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v3[5] = swift_task_alloc();
  v4 = sub_23875B940();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23858421C, 0, 0);
}

uint64_t sub_23858421C(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[5];
  sub_238757C00();
  sub_238759180();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v1[5];

    sub_238439884(v5, &qword_27DF0D040, &qword_2387676A0);
    v6 = 0;
  }

  else
  {
    v7 = v1[8];
    v8 = v1[9];
    v9 = v1[6];
    v10 = v1[7];
    (*(v10 + 32))(v8, v1[5], v9);
    (*(v10 + 16))(v7, v8, v9);
    v6 = _s12FinanceKitUI12OrderReceiptC7fileUrlACSg10Foundation3URLV_tcfC_0(v7);

    (*(v10 + 8))(v8, v9);
  }

  v11 = v1[1];

  return v11(v6);
}

uint64_t OrderBundleResourceLoader.loadReturnLabelNamed(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v3[5] = swift_task_alloc();
  v4 = sub_23875B940();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2385844A8, 0, 0);
}

uint64_t sub_2385844A8(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[5];
  sub_238757C00();
  sub_238759190();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v1[5];

    sub_238439884(v5, &qword_27DF0D040, &qword_2387676A0);
    v6 = 0;
  }

  else
  {
    v7 = v1[8];
    v8 = v1[9];
    v9 = v1[6];
    v10 = v1[7];
    (*(v10 + 32))(v8, v1[5], v9);
    (*(v10 + 16))(v7, v8, v9);
    v6 = _s12FinanceKitUI16OrderReturnLabelC7fileUrlACSg10Foundation3URLV_tcfC_0(v7);

    (*(v10 + 8))(v8, v9);
  }

  v11 = v1[1];

  return v11(v6);
}

uint64_t OrderBundleResourceLoader.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_238584684(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238586094;

  return OrderBundleResourceLoader.loadImagesNamed(_:)(a1);
}

uint64_t sub_23858471C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238586094;

  return OrderBundleResourceLoader.loadReceiptNamed(_:)(a1, a2);
}

uint64_t sub_2385847C4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238586094;

  return OrderBundleResourceLoader.loadReturnLabelNamed(_:)(a1, a2);
}

Swift::String __swiftcall OrderBundleResourceLoader.localizedString(forKey:)(Swift::String forKey)
{
  v1 = sub_238757BD0();
  v2 = sub_2387586A0();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_2385848FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_238757BD0();
  v3 = sub_2387586A0();

  return v3;
}

uint64_t sub_238584970@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_23875E720();
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875E690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v14 = *a1;
  v13 = a1[1];
  v15 = sub_23875E630();
  if (*(v15 + 16) && (v16 = sub_23853B46C(v14, v13), (v17 & 1) != 0))
  {
    (*(v7 + 16))(v9, *(v15 + 56) + *(v7 + 72) * v16, v6);

    (*(v7 + 32))(v12, v9, v6);
    sub_23875E680();
    sub_23875E710();
    (*(v22 + 8))(v5, v3);
    v18 = __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    MEMORY[0x28223BE20](v18);
    *(&v21 - 2) = v12;
    sub_238758350();
    sub_23875E5F0();
    __swift_destroy_boxed_opaque_existential_1(v24);
    return (*(v7 + 8))(v12, v6);
  }

  else
  {

    v20 = sub_238758350();
    return (*(*(v20 - 8) + 56))(v23, 1, 1, v20);
  }
}

uint64_t sub_238584C70@<X0>(CGImage *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EAA8, &qword_238770E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_23875EF50();
  if (v7 >> 60 == 15)
  {
    v8 = sub_238758350();
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }

  else
  {
    CGImageGetWidth(a1);
    CGImageGetHeight(a1);
    sub_23875E670();
    v10 = sub_23875E700();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {
      sub_238439884(v6, &qword_27DF0EAA8, &qword_238770E20);
    }

    else
    {
      sub_23875E6F0();
      (*(v11 + 8))(v6, v10);
    }

    sub_238758320();
    v12 = sub_238758350();
    return (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
  }
}

uint64_t sub_238584E80(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_238584EA0, 0, 0);
}

uint64_t sub_238584EA0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_23857FF54(sub_238585C34, v3, v1);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_238584F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875E640();
  if (*(v4 + 16) && (v5 = sub_23853B46C(a1, a2), (v6 & 1) != 0))
  {
    a1 = *(*(v4 + 56) + 16 * v5);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_238585010()
{
  v1 = sub_23875C1E0();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238586084, 0, 0);
}

uint64_t sub_2385850CC()
{
  v1 = sub_23875C1E0();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238585188, 0, 0);
}

uint64_t sub_238585188(uint64_t a1)
{
  sub_23875C180();
  v2 = sub_23875C1B0();
  v3 = sub_23875EFE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2383F8000, v2, v3, "Image loader was not provided. NoopResourceLoader was used", v4, 2u);
    MEMORY[0x23EE64DF0](v4, -1, -1);
  }

  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8(0);
}

uint64_t sub_238585290()
{
  v1 = sub_23875C1E0();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23858534C, 0, 0);
}

uint64_t sub_23858534C(uint64_t a1)
{
  sub_23875C180();
  v2 = sub_23875C1B0();
  v3 = sub_23875EFE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2383F8000, v2, v3, "Resource loader was not provided. NoopResourceLoader was used", v4, 2u);
    MEMORY[0x23EE64DF0](v4, -1, -1);
  }

  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8(0);
}

uint64_t sub_238585454(uint64_t a1)
{
  v1 = sub_23875B860();
  v2 = CGImageSourceCreateWithURL(v1, 0);

  if (v2)
  {
    v3 = CGImageSourceCopyPropertiesAtIndex(v2, 0, 0);
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v6 = 0;
        type metadata accessor for CFString(0);
        sub_238585C6C(&qword_27DF08FE0, type metadata accessor for CFString, &unk_238762338);
        sub_23875E920();
      }
    }
  }

  return 0;
}

uint64_t dispatch thunk of OrderResourceLoader.loadImagesNamed(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2384617DC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of OrderResourceLoader.loadReceiptNamed(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_238586088;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of OrderResourceLoader.loadReturnLabelNamed(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_238586088;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_238585A00(uint64_t a1)
{
  result = sub_23875A710();
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

void sub_238585B40(uint64_t a1)
{
  sub_23875A710();
  if (v1 <= 0x3F)
  {
    sub_23853C1AC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_238585BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0EA90;
  if (!qword_27DF0EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EA90);
  }

  return result;
}

uint64_t sub_238585C6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238585CB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2384494A4;

  return sub_238583B3C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_238585D90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF98, &unk_238775820);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_238585E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0EAC8;
  if (!qword_27DF0EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EAC8);
  }

  return result;
}

uint64_t sub_238585EBC(uint64_t a1)
{
  result = sub_23875E6A0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_238585F28()
{
  result = qword_27DF0EAE0;
  if (!qword_27DF0EAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EA98, &qword_238770E08);
    sub_23843A3E8(&qword_27DF0EAE8, &qword_27DF0EAA0, &unk_238770E10, MEMORY[0x277CE04B0]);
    sub_23843A3E8(&qword_27DF0EAF0, &qword_27DF0EAF8, &qword_23877FA20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EAE0);
  }

  return result;
}

uint64_t sub_23858600C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238586104(uint64_t a1)
{
  result = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_238586198(uint64_t a1)
{
  sub_23875B290();
  if (v1 <= 0x3F)
  {
    sub_2385862B4(319);
    if (v2 <= 0x3F)
    {
      sub_23858631C(319, &qword_27DF0EB50, MEMORY[0x277CC84E0]);
      if (v3 <= 0x3F)
      {
        sub_23858631C(319, &qword_27DF0EB58, MEMORY[0x277CC8578]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for MerchantImage.ViewModel(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2385862B4(uint64_t a1)
{
  if (!qword_27DF0EB40)
  {
    sub_238449184(255, &qword_27DF0EB48, 0x277CBDB78);
    v1 = sub_23875F1F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0EB40);
    }
  }
}

void sub_23858631C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875F1F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23858638C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v126 = a4;
  v127 = a3;
  v130 = a1;
  v5 = sub_2387588F0();
  v119 = *(v5 - 8);
  v120 = v5;
  MEMORY[0x28223BE20](v5);
  v106 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = &v97 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB60, &unk_238771050);
  MEMORY[0x28223BE20](v9 - 8);
  v118 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v124 = &v97 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D640, &unk_23876D6E0);
  MEMORY[0x28223BE20](v13 - 8);
  v121 = &v97 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D0, &unk_238770FE0);
  MEMORY[0x28223BE20](v15 - 8);
  v116 = &v97 - v16;
  v115 = sub_238757AA0();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v103 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v104 = &v97 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D8, &qword_238771650);
  MEMORY[0x28223BE20](v20 - 8);
  v109 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v112 = &v97 - v23;
  v123 = sub_238757CC0();
  v129 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB68, &qword_238771060);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v97 - v26;
  v28 = sub_2387586B0();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v108 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v128 = &v97 - v32;
  v33 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
  v125 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = (&v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(v36 + 28);
  v38 = sub_23875AEB0();
  (*(*(v38 - 8) + 56))(v35 + v37, 1, 1, v38);
  v39 = *(v33 + 32);
  v40 = sub_23875B1D0();
  v41 = *(v40 - 8);
  v42 = *(v41 + 56);
  v113 = v40;
  v111 = v42;
  v110 = v41 + 56;
  (v42)(v35 + v39, 1, 1);
  sub_238759CF0();
  v43 = v29;
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    v44 = sub_238759D10();
    (*(*(v44 - 8) + 8))(a2, v44);
    v45 = sub_238759B60();
    (*(*(v45 - 8) + 8))(v130, v45);
    sub_238439884(v27, &qword_27DF0EB68, &qword_238771060);
    __swift_destroy_boxed_opaque_existential_1(v127);
    sub_238439884(v35 + v37, &qword_27DF0D5D0, &unk_238770FE0);
    sub_238439884(v35 + v39, &qword_27DF0D640, &unk_23876D6E0);
    return (*(v125 + 56))(v126, 1, 1, v33);
  }

  else
  {
    v98 = v37;
    v101 = v39;
    v47 = *(v29 + 32);
    v117 = v28;
    v47(v128, v27, v28);
    v48 = v127;
    v49 = v127[3];
    v107 = a2;
    __swift_project_boxed_opaque_existential_1(v127, v49);
    v50 = v122;
    sub_238759B30();
    sub_238757C60();
    v51 = *(v129 + 8);
    v129 += 8;
    v97 = v51;
    v51(v50, v123);
    v100 = sub_23875A360();
    v99 = v52;

    __swift_project_boxed_opaque_existential_1(v48, v48[3]);
    sub_238759C80();
    v53 = v107;
    v54 = sub_23875A360();
    v56 = v55;

    *v35 = v54;
    v35[1] = v56;
    v102 = v43;
    (*(v43 + 16))(v108, v128, v117);
    sub_23845C998(v48, v131);
    v57 = v33;
    sub_23875B2A0();
    v58 = v112;
    sub_238759CE0();
    v59 = v109;
    sub_23843981C(v58, v109, &qword_27DF0D5D8, &qword_238771650);
    v60 = v114;
    v61 = v115;
    v62 = v35;
    if ((*(v114 + 48))(v59, 1, v115) == 1)
    {
      sub_238439884(v58, &qword_27DF0D5D8, &qword_238771650);
      v63 = 0;
      v64 = v130;
      v66 = v119;
      v65 = v120;
    }

    else
    {
      v67 = v104;
      (*(v60 + 32))(v104, v59, v61);
      sub_238449184(0, &qword_27DF0D608, 0x277CBDB60);
      (*(v60 + 16))(v103, v67, v61);
      v63 = sub_23875F0F0();
      v68 = sub_23875F020();

      (*(v60 + 8))(v67, v61);
      sub_238439884(v58, &qword_27DF0D5D8, &qword_238771650);
      v66 = v119;
      if (v68)
      {

        v63 = 0;
      }

      v64 = v130;
      v65 = v120;
    }

    v69 = v57;
    v70 = v98;
    *(v62 + v57[6]) = v63;
    v71 = v116;
    sub_238759C90();
    sub_2385309FC(v71, v62 + v70, &qword_27DF0D5D0, &unk_238770FE0);
    v72 = v124;
    sub_238759B20();
    v73 = v72;
    v74 = v118;
    sub_23843981C(v73, v118, &qword_27DF0EB60, &unk_238771050);
    v75 = 1;
    if ((*(v66 + 48))(v74, 1, v65) != 1)
    {
      v76 = v74;
      v77 = v105;
      (*(v66 + 32))(v105, v76, v65);
      (*(v66 + 16))(v106, v77, v65);
      sub_23875B1E0();
      (*(v66 + 8))(v77, v65);
      v75 = 0;
    }

    sub_238439884(v124, &qword_27DF0EB60, &unk_238771050);
    v78 = v121;
    v111(v121, v75, 1, v113);
    sub_2385309FC(v78, v62 + v101, &qword_27DF0D640, &unk_23876D6E0);
    v79 = (v62 + v69[9]);
    v80 = v100;
    v81 = v99;
    *v79 = v100;
    v79[1] = v81;

    v82 = sub_238759CB0();
    v83 = (v62 + v69[10]);
    *v83 = v82;
    v83[1] = v84;
    v85 = v122;
    sub_238759B30();
    v86 = sub_238757CB0();
    v88 = v87;
    v97(v85, v123);
    v89 = v53;
    v90 = (v62 + v69[11]);
    v91 = v64;
    v92 = type metadata accessor for MerchantImage.ViewModel(0);
    sub_238759AB0();
    v93 = sub_238759D10();
    (*(*(v93 - 8) + 8))(v89, v93);
    v94 = sub_238759B60();
    (*(*(v94 - 8) + 8))(v91, v94);
    (*(v102 + 8))(v128, v117);
    *v90 = v86;
    v90[1] = v88;
    v95 = (v90 + *(v92 + 24));
    *v95 = v80;
    v95[1] = v81;
    v96 = v126;
    sub_23858A2F0(v62, v126, type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel);
    (*(v125 + 56))(v96, 0, 1, v69);
    __swift_destroy_boxed_opaque_existential_1(v127);
    return sub_23858A464(v62, type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel);
  }
}

uint64_t sub_23858706C()
{
  v1 = *v0;
  v6 = *v0;
  v2 = *(v0 + *(type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0) + 24));

  if (v2)
  {
    v3 = v2;
    v4 = sub_23875F010();
    MEMORY[0x23EE63650](v4);

    MEMORY[0x23EE63650](10, 0xE100000000000000);

    return v6;
  }

  return v1;
}

uint64_t sub_238587120()
{
  v0 = sub_23875BE40();
  MEMORY[0x28223BE20](v0 - 8);
  v29 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23875BE20();
  MEMORY[0x28223BE20](v2 - 8);
  v28 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875BD20();
  MEMORY[0x28223BE20](v4 - 8);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2387595E0();
  MEMORY[0x28223BE20](v6 - 8);
  v24 = sub_238759120();
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23875AEA0();
  v25 = *(v10 - 8);
  v26 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D0, &unk_238770FE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v16 = sub_23875AEB0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
  sub_23843981C(v30 + *(v20 + 28), v15, &qword_27DF0D5D0, &unk_238770FE0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_238439884(v15, &qword_27DF0D5D0, &unk_238770FE0);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    (*(v7 + 104))(v9, *MEMORY[0x277CC7748], v24);
    sub_23875BCC0();
    sub_23875BDB0();
    sub_23875BE30();
    sub_2387595B0();
    sub_23875AE80();
    sub_23858A41C(&qword_27DF0EC38, MEMORY[0x277CC84D8], MEMORY[0x277CC84D0]);
    v22 = v26;
    sub_238759950();
    (*(v25 + 8))(v12, v22);
    (*(v17 + 8))(v19, v16);
    return v31;
  }
}

uint64_t sub_2385875C4@<X0>(uint64_t a1@<X8>)
{
  sub_23858A2F0(v1, a1, type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel);
  v3 = *(type metadata accessor for OrderDetailsPickupBarcodeSheet_iOS(0) + 20);
  *(a1 + v3) = swift_getKeyPath(byte_238771068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E8, &qword_23876A230);

  return swift_storeEnumTagMultiPayload();
}

double sub_238587670@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D030();
  *(a2 + 8) = 0x4038000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EBE8, &qword_238771170);
  sub_2385877D0(a1, a2 + *(v4 + 44));
  v5 = sub_23875D770();
  sub_23875C3D0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EBB8, &qword_238771140) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = sub_23875D7A0();

  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EBA0, &qword_238771138) + 36);
  *v16 = v15;
  result = 0.0;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 1;
  return result;
}

double sub_2385877D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v107 = type metadata accessor for BarcodeView(0);
  MEMORY[0x28223BE20](v107);
  v104 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EBF0, &qword_238771178);
  MEMORY[0x28223BE20](v4 - 8);
  v109 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v117 = &v101 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EBF8, &qword_238771180);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v108 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v111 = (&v101 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D640, &unk_23876D6E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v101 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC00, &qword_238771188);
  MEMORY[0x28223BE20](v16 - 8);
  v116 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v115 = &v101 - v19;
  MEMORY[0x28223BE20](v20);
  v113 = &v101 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v101 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC08, &qword_238771190);
  MEMORY[0x28223BE20](v25 - 8);
  v114 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v101 - v28;
  sub_23875ED50();
  v106 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v29 = sub_23875D020();
  *(v29 + 1) = 0x4034000000000000;
  v29[16] = 0;
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC10, &qword_238771198) + 44);
  v112 = v29;
  sub_2385889C4(a1, &v29[v30]);
  v103 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
  sub_23843981C(a1 + *(v103 + 32), v15, &qword_27DF0D640, &unk_23876D6E0);
  v31 = sub_23875B1D0();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v15, 1, v31) == 1)
  {
    sub_238439884(v15, &qword_27DF0D640, &unk_23876D6E0);
LABEL_9:
    v48 = 1;
    goto LABEL_10;
  }

  v33 = sub_23875B1C0();
  v35 = v34;
  (*(v32 + 8))(v15, v31);
  if (!v35)
  {
    goto LABEL_9;
  }

  v36 = v8;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v37 = qword_2814F1B90;
  v38 = sub_23875EA50();
  v39 = sub_23875EA50();
  v40 = sub_23875EA50();
  v41 = [v37 localizedStringForKey:v38 value:v39 table:v40];

  v42 = sub_23875EA80();
  v44 = v43;

  v45 = sub_23875D030();
  v46 = v111;
  *v111 = v45;
  *(v46 + 8) = 0;
  *(v46 + 16) = 1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC18, &unk_2387711A0);
  sub_238589980(v42, v44, v33, v35, v46 + *(v47 + 44));

  sub_23858A4C4(v46, v24);
  v48 = 0;
  v8 = v36;
LABEL_10:
  v49 = *(v9 + 56);
  v50 = 1;
  v51 = v8;
  v49(v24, v48, 1, v8);
  v105 = a1;
  v52 = sub_238587120();
  if (v53)
  {
    v54 = v52;
    v55 = v53;
    v56 = v24;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v57 = qword_2814F1B90;
    v58 = sub_23875EA50();
    v59 = sub_23875EA50();
    v60 = sub_23875EA50();
    v61 = [v57 localizedStringForKey:v58 value:v59 table:v60];

    v62 = sub_23875EA80();
    v64 = v63;

    v65 = sub_23875D030();
    v66 = v111;
    *v111 = v65;
    *(v66 + 8) = 0;
    *(v66 + 16) = 1;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC18, &unk_2387711A0);
    sub_238589980(v62, v64, v54, v55, v66 + *(v67 + 44));

    v68 = v113;
    sub_23858A4C4(v66, v113);
    v50 = 0;
  }

  else
  {
    v56 = v24;
    v68 = v113;
  }

  v49(v68, v50, 1, v51);
  v69 = v68;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v70 = qword_2814F1B90;
  v71 = sub_23875EA50();
  v72 = sub_23875EA50();
  v73 = sub_23875EA50();
  v74 = [v70 localizedStringForKey:v71 value:v72 table:v73];

  v75 = sub_23875EA80();
  v77 = v76;

  v78 = v105;
  v79 = sub_23858706C();
  v81 = v80;
  v82 = sub_23875D030();
  v83 = v111;
  *v111 = v82;
  *(v83 + 8) = 0;
  *(v83 + 16) = 1;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC18, &unk_2387711A0);
  sub_238589980(v75, v77, v79, v81, v83 + *(v84 + 44));

  v85 = *(v103 + 20);
  v86 = sub_23875B290();
  v87 = v104;
  (*(*(v86 - 8) + 16))(v104, v78 + v85, v86);
  v88 = v107;
  *(v87 + *(v107 + 20)) = 0;
  v89 = *(v88 + 24);
  v118 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  *(v87 + v89) = v119;
  sub_23858A41C(&qword_27DF0EC20, type metadata accessor for BarcodeView, &unk_238766888);
  v90 = v117;
  sub_23875DE00();
  sub_23858A464(v87, type metadata accessor for BarcodeView);
  v91 = v114;
  sub_23843981C(v112, v114, &qword_27DF0EC08, &qword_238771190);
  v102 = v56;
  v92 = v115;
  sub_23843981C(v56, v115, &qword_27DF0EC00, &qword_238771188);
  sub_23843981C(v69, v116, &qword_27DF0EC00, &qword_238771188);
  v93 = v108;
  sub_23843981C(v83, v108, &qword_27DF0EBF8, &qword_238771180);
  v94 = v109;
  sub_23843981C(v90, v109, &qword_27DF0EBF0, &qword_238771178);
  v95 = v110;
  sub_23843981C(v91, v110, &qword_27DF0EC08, &qword_238771190);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC28, &unk_2387711B0);
  sub_23843981C(v92, v95 + v96[12], &qword_27DF0EC00, &qword_238771188);
  v97 = v116;
  sub_23843981C(v116, v95 + v96[16], &qword_27DF0EC00, &qword_238771188);
  sub_23843981C(v93, v95 + v96[20], &qword_27DF0EBF8, &qword_238771180);
  v98 = v95 + v96[24];
  *v98 = 0x4038000000000000;
  *(v98 + 8) = 0;
  sub_23843981C(v94, v95 + v96[28], &qword_27DF0EBF0, &qword_238771178);
  v99 = v95 + v96[32];
  *v99 = 0x4038000000000000;
  *(v99 + 8) = 0;
  sub_238439884(v117, &qword_27DF0EBF0, &qword_238771178);
  sub_238439884(v83, &qword_27DF0EBF8, &qword_238771180);
  sub_238439884(v113, &qword_27DF0EC00, &qword_238771188);
  sub_238439884(v102, &qword_27DF0EC00, &qword_238771188);
  sub_238439884(v112, &qword_27DF0EC08, &qword_238771190);
  sub_238439884(v94, &qword_27DF0EBF0, &qword_238771178);
  sub_238439884(v93, &qword_27DF0EBF8, &qword_238771180);
  sub_238439884(v97, &qword_27DF0EC00, &qword_238771188);
  sub_238439884(v115, &qword_27DF0EC00, &qword_238771188);
  sub_238439884(v114, &qword_27DF0EC08, &qword_238771190);

  return result;
}

double sub_2385883F8(uint64_t a1)
{
  v2 = sub_23875D2A0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA28, &qword_238770B20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_23875D250();
  MEMORY[0x28223BE20](v7);
  *(&v13 - 2) = a1;
  sub_23857F5E0(v8, v9, v10);
  sub_23875C4D0();
  v11 = sub_23843A3E8(&qword_27DF0EA30, &qword_27DF0EA28, &qword_238770B20, MEMORY[0x277CDD7A8]);
  MEMORY[0x23EE61E80](v6, v3, v11);
  (*(v4 + 8))(v6, v3);

  return result;
}

void sub_238588628(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = type metadata accessor for OrderDetailsPickupBarcodeSheet_iOS(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23858A2F0(a1, &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetailsPickupBarcodeSheet_iOS);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_23858A358(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  *a2 = sub_23858A3BC;
  a2[1] = v8;
}

uint64_t sub_23858879C()
{
  v0 = sub_23875C970();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2F0, &qword_23876A238);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - v2;
  type metadata accessor for OrderDetailsPickupBarcodeSheet_iOS(0);
  sub_2384D55D8(v3);
  MEMORY[0x23EE62DC0](v1);
  sub_23875C960();
  sub_23875E2F0();
  return sub_238439884(v3, &qword_27DF0C2F0, &qword_23876A238);
}

double sub_2385888E0(uint64_t a1, char a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27DF08CC0 != -1)
  {
    swift_once();
  }

  sub_238487300(a2 & 1);

  return result;
}

double sub_2385889C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_23875E360();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC40, &qword_238771200);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  sub_23875ED50();
  v27 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v15 = sub_23875CE60();
  *(v15 + 1) = 0x4028000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC48, &qword_238771208);
  sub_238588C9C(a1, &v15[*(v16 + 44)]);
  sub_23875E350();
  sub_23843981C(v15, v12, &qword_27DF0EC40, &qword_238771200);
  v17 = *(v4 + 16);
  v17(v6, v9, v3);
  v18 = v12;
  v26 = v12;
  v19 = v9;
  v20 = v6;
  v21 = v28;
  sub_23843981C(v18, v28, &qword_27DF0EC40, &qword_238771200);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC50, &qword_238771210);
  v17((v21 + *(v22 + 48)), v20, v3);
  v23 = *(v4 + 8);
  v23(v19, v3);
  sub_238439884(v15, &qword_27DF0EC40, &qword_238771200);
  v23(v20, v3);
  sub_238439884(v26, &qword_27DF0EC40, &qword_238771200);

  return result;
}

void sub_238588C9C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC58, &qword_238771218);
  MEMORY[0x28223BE20](v54);
  v55 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = (&v46 - v5);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3D0, &unk_238771220);
  MEMORY[0x28223BE20](v48);
  v7 = &v46 - v6;
  v8 = sub_23875DFD0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7D0, &unk_23876B3E0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC60, &qword_238771230);
  v52 = *(v15 - 8);
  v53 = v15;
  MEMORY[0x28223BE20](v15);
  v51 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v57 = &v46 - v18;
  sub_23875ED50();
  v50 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
  sub_23858A2F0(a1 + *(v19 + 44), v14, type metadata accessor for MerchantImage.ViewModel);
  v20 = type metadata accessor for MerchantImage(0);
  v14[*(v20 + 20)] = 1;
  v47 = a1;
  v21 = *(v20 + 24);
  *&v14[v21] = swift_getKeyPath(asc_238771238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v9 + 104))(v11, *MEMORY[0x277CE0EE0], v8);
  v22 = sub_23875E090();
  KeyPath = swift_getKeyPath(a0_2);
  v24 = &v14[*(v12 + 36)];
  v25 = type metadata accessor for OrderImageStyleModifier(0);
  *&v24[*(v25 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v24[*(v25 + 40)] = swift_getKeyPath(asc_238771238);
  swift_storeEnumTagMultiPayload();
  *v24 = xmmword_23876FD10;
  *(v24 + 2) = 0;
  v24[24] = 1;
  *(v24 + 4) = v22;
  v24[40] = 0;
  v26 = *MEMORY[0x277CDFA00];
  v27 = sub_23875C880();
  (*(*(v27 - 8) + 104))(v7, v26, v27);
  sub_23858A41C(&qword_2814F0998, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  if (sub_23875E9E0())
  {
    sub_23858A534();
    sub_23843A3E8(&qword_2814F0870, &qword_27DF0A3D0, &unk_238771220, MEMORY[0x277D84470]);
    v28 = v57;
    sub_23875DC50();
    sub_238439884(v7, &qword_27DF0A3D0, &unk_238771220);
    sub_238439884(v14, &qword_27DF0C7D0, &unk_23876B3E0);
    v29 = sub_23875D030();
    v30 = v49;
    *v49 = v29;
    *(v30 + 8) = 0;
    *(v30 + 16) = 1;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC18, &unk_2387711A0);
    v32 = sub_2385893AC(v47, v30 + *(v31 + 44));
    v33 = swift_getKeyPath(byte_2387712A8, v32);
    v34 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC80, &qword_2387712D8) + 36);
    *v34 = v33;
    *(v34 + 8) = 1;
    *(v34 + 16) = 0;
    v35 = swift_getKeyPath(byte_2387712E0);
    v36 = v53;
    v37 = (v30 + *(v54 + 36));
    *v37 = v35;
    v37[1] = 0x3FE0000000000000;
    v39 = v51;
    v38 = v52;
    v40 = *(v52 + 16);
    v40(v51, v28, v36);
    v41 = v55;
    sub_23843981C(v30, v55, &qword_27DF0EC58, &qword_238771218);
    v42 = v56;
    v40(v56, v39, v36);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC88, &unk_238771310);
    sub_23843981C(v41, &v42[*(v43 + 48)], &qword_27DF0EC58, &qword_238771218);
    v44 = &v42[*(v43 + 64)];
    *v44 = 0;
    v44[8] = 1;
    sub_238439884(v30, &qword_27DF0EC58, &qword_238771218);
    v45 = *(v38 + 8);
    v45(v57, v36);
    sub_238439884(v41, &qword_27DF0EC58, &qword_238771218);
    v45(v39, v36);
  }

  else
  {
    __break(1u);
  }
}

double sub_2385893AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v69 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB38, &unk_238766830);
  MEMORY[0x28223BE20](v67);
  v71 = v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v72 = v66 - v4;
  sub_23875ED50();
  v70 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = sub_23875EA80();
  v12 = v11;

  v73 = v10;
  v74 = v12;
  v66[1] = sub_2384397A8(v13, v14, v15);
  v16 = sub_23875DAA0();
  v18 = v17;
  LOBYTE(v12) = v19;
  sub_23875D7F0();
  v20 = sub_23875DA60();
  v22 = v21;
  v24 = v23;

  sub_2384397FC(v16, v18, v12 & 1);

  sub_23875D890();
  v25 = sub_23875D9E0();
  v27 = v26;
  LOBYTE(v12) = v28;
  sub_2384397FC(v20, v22, v24 & 1);

  LODWORD(v73) = sub_23875D440();
  v29 = sub_23875DA20();
  v31 = v30;
  LOBYTE(v8) = v32;
  v34 = v33;
  sub_2384397FC(v25, v27, v12 & 1);

  v35 = v72;
  v36 = (v72 + *(v67 + 36));
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
  v38 = *MEMORY[0x277CE0B48];
  v39 = sub_23875DA40();
  v40 = *(v39 - 8);
  (*(v40 + 104))(&v36[v37], v38, v39);
  (*(v40 + 56))(&v36[v37], 0, 1, v39);
  *v36 = swift_getKeyPath(byte_2387711C8);
  *v35 = v29;
  *(v35 + 8) = v31;
  *(v35 + 16) = v8 & 1;
  *(v35 + 24) = v34;
  v41 = (v68 + *(type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0) + 36));
  v42 = v41[1];
  v73 = *v41;
  v74 = v42;

  v43 = sub_23875DAA0();
  v45 = v44;
  LOBYTE(v39) = v46;
  sub_23875D8E0();
  v47 = sub_23875DA60();
  v49 = v48;
  LOBYTE(v29) = v50;

  sub_2384397FC(v43, v45, v39 & 1);

  sub_23875D890();
  v51 = sub_23875D9E0();
  v53 = v52;
  LOBYTE(v36) = v54;
  sub_2384397FC(v47, v49, v29 & 1);

  LODWORD(v73) = sub_23875D420();
  v55 = sub_23875DA20();
  v57 = v56;
  LOBYTE(v47) = v58;
  v60 = v59;
  sub_2384397FC(v51, v53, v36 & 1);

  v61 = v71;
  v62 = v72;
  sub_23843981C(v72, v71, &qword_27DF0AB38, &unk_238766830);
  v63 = v69;
  sub_23843981C(v61, v69, &qword_27DF0AB38, &unk_238766830);
  v64 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC30, &qword_2387711F8) + 48);
  *v64 = v55;
  *(v64 + 8) = v57;
  *(v64 + 16) = v47 & 1;
  *(v64 + 24) = v60;
  sub_23843980C(v55, v57, v47 & 1);

  sub_238439884(v62, &qword_27DF0AB38, &unk_238766830);
  sub_2384397FC(v55, v57, v47 & 1);

  sub_238439884(v61, &qword_27DF0AB38, &unk_238766830);

  return result;
}

double sub_238589980@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a3;
  v56 = a4;
  v58 = a5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB38, &unk_238766830);
  MEMORY[0x28223BE20](v54);
  v59 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v53 - v9;
  sub_23875ED50();
  v57 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v60 = a1;
  v61 = a2;
  v53[1] = sub_2384397A8(isCurrentExecutor, v12, v13);

  v14 = sub_23875DAA0();
  v16 = v15;
  v18 = v17;
  sub_23875D7F0();
  v19 = sub_23875DA60();
  v21 = v20;
  v23 = v22;

  sub_2384397FC(v14, v16, v18 & 1);

  sub_23875D890();
  v24 = sub_23875D9E0();
  v26 = v25;
  LOBYTE(v14) = v27;
  sub_2384397FC(v19, v21, v23 & 1);

  LODWORD(v60) = sub_23875D440();
  v28 = sub_23875DA20();
  v30 = v29;
  LOBYTE(v19) = v31;
  v33 = v32;
  sub_2384397FC(v24, v26, v14 & 1);

  v34 = &v10[*(v54 + 36)];
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
  v36 = *MEMORY[0x277CE0B48];
  v37 = sub_23875DA40();
  v38 = *(v37 - 8);
  (*(v38 + 104))(&v34[v35], v36, v37);
  (*(v38 + 56))(&v34[v35], 0, 1, v37);
  *v34 = swift_getKeyPath(byte_2387711C8);
  *v10 = v28;
  *(v10 + 1) = v30;
  v10[16] = v19 & 1;
  *(v10 + 3) = v33;
  v60 = v55;
  v61 = v56;

  v39 = sub_23875DAA0();
  v41 = v40;
  LOBYTE(v37) = v42;
  sub_23875D820();
  v43 = sub_23875DA60();
  v45 = v44;
  LOBYTE(v38) = v46;
  v48 = v47;

  sub_2384397FC(v39, v41, v37 & 1);

  v49 = v59;
  sub_23843981C(v10, v59, &qword_27DF0AB38, &unk_238766830);
  v50 = v58;
  sub_23843981C(v49, v58, &qword_27DF0AB38, &unk_238766830);
  v51 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC30, &qword_2387711F8) + 48);
  *v51 = v43;
  *(v51 + 8) = v45;
  *(v51 + 16) = v38 & 1;
  *(v51 + 24) = v48;
  sub_23843980C(v43, v45, v38 & 1);

  sub_238439884(v10, &qword_27DF0AB38, &unk_238766830);
  sub_2384397FC(v43, v45, v38 & 1);

  sub_238439884(v49, &qword_27DF0AB38, &unk_238766830);

  return result;
}

void sub_238589E00(uint64_t a1)
{
  type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_238589E84(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238589E84(uint64_t a1)
{
  if (!qword_27DF0EB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C2F0, &qword_23876A238);
    v1 = sub_23875C470();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0EB88);
    }
  }
}

uint64_t sub_238589F04@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB98, &qword_238771130);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-v5];
  v14 = v1;
  sub_23875D760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EBA0, &qword_238771138);
  sub_23858A19C();
  sub_23875C410();
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA20, &unk_238771150);
  sub_23843A3E8(&qword_27DF0EBD0, &qword_27DF0EB98, &qword_238771130, MEMORY[0x277CDD6E0]);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EA28, &qword_238770B20);
  v8 = sub_23843A3E8(&qword_27DF0EA30, &qword_27DF0EA28, &qword_238770B20, MEMORY[0x277CDD7A8]);
  v15 = v7;
  v16 = v8;
  swift_getOpaqueTypeConformance2();
  sub_23875DEF0();
  (*(v4 + 8))(v6, v3);
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EBD8, &qword_238771160) + 36));
  *v9 = sub_2385888C8;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EBE0, &qword_238771168);
  v11 = (a1 + *(result + 36));
  *v11 = 0;
  v11[1] = 0;
  v11[2] = sub_2385888D4;
  v11[3] = 0;
  return result;
}

unint64_t sub_23858A19C()
{
  result = qword_27DF0EBA8;
  if (!qword_27DF0EBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EBA0, &qword_238771138);
    sub_23858A228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EBA8);
  }

  return result;
}

unint64_t sub_23858A228()
{
  result = qword_27DF0EBB0;
  if (!qword_27DF0EBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EBB8, &qword_238771140);
    sub_23843A3E8(&qword_27DF0EBC0, &qword_27DF0EBC8, &qword_238771148, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EBB0);
  }

  return result;
}

uint64_t sub_23858A2F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23858A358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsPickupBarcodeSheet_iOS(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23858A3BC()
{
  type metadata accessor for OrderDetailsPickupBarcodeSheet_iOS(0);

  return sub_23858879C();
}

uint64_t sub_23858A41C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23858A464(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23858A4C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EBF8, &qword_238771180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23858A534()
{
  result = qword_27DF0EC68;
  if (!qword_27DF0EC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C7D0, &unk_23876B3E0);
    sub_23858A41C(&qword_27DF0EC70, type metadata accessor for MerchantImage, &unk_238769978);
    sub_23858A41C(&qword_27DF0EC78, type metadata accessor for OrderImageStyleModifier, &unk_238783A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EC68);
  }

  return result;
}

unint64_t sub_23858A620()
{
  result = qword_27DF0EC90;
  if (!qword_27DF0EC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EBE0, &qword_238771168);
    sub_23858A6AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EC90);
  }

  return result;
}

unint64_t sub_23858A6AC()
{
  result = qword_27DF0EC98;
  if (!qword_27DF0EC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EBD8, &qword_238771160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EB98, &qword_238771130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EA20, &unk_238771150);
    sub_23843A3E8(&qword_27DF0EBD0, &qword_27DF0EB98, &qword_238771130, MEMORY[0x277CDD6E0]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EA28, &qword_238770B20);
    sub_23843A3E8(&qword_27DF0EA30, &qword_27DF0EA28, &qword_238770B20, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EC98);
  }

  return result;
}

uint64_t sub_23858A8AC(uint64_t a1)
{
  result = type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23858A918(uint64_t a1)
{
  result = sub_23858A98C();
  if (v2 <= 0x3F)
  {
    result = sub_23875B940();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23858A98C()
{
  result = qword_27DF12260;
  if (!qword_27DF12260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF12260);
  }

  return result;
}

uint64_t sub_23858A9F4@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v1 = type metadata accessor for OrderDetailsPickupDirectionsButton(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - v6;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v8 = qword_2814F1B90;
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

  v13 = sub_23875EA80();
  v15 = v14;

  v22[2] = v13;
  v22[3] = v15;
  sub_23858B820(v22[0], v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetailsPickupDirectionsButton);
  v16 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v17 = swift_allocObject();
  v18 = sub_23858B6F8(v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_2384397A8(v18, v19, v20);
  sub_23875E230();
  sub_23858B7BC();
  sub_23875DE00();
  return (*(v5 + 8))(v7, v4);
}

void sub_23858ACD0()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23858AFF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v1 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(v2 + 32) = *MEMORY[0x277D383D8];
  *(v2 + 40) = sub_23875EA80();
  *(v2 + 48) = v4;
  v5 = *MEMORY[0x277D38390];
  *(v2 + 56) = *MEMORY[0x277D38390];
  strcpy((v2 + 64), "pickupLocation");
  v6 = *MEMORY[0x277D384B8];
  *(v2 + 79) = -18;
  *(v2 + 80) = v6;
  strcpy((v2 + 88), "orderDetails");
  *(v2 + 101) = 0;
  *(v2 + 102) = -5120;
  v7 = v3;
  v8 = v5;
  v9 = v6;
  v10 = sub_23854B138(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v10;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v15);

  v12 = *MEMORY[0x277D38548];
  v13 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23858B888(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v14 = sub_23875E910();

  [v13 subject:v12 sendEvent:v14];
}

void sub_23858AFF4()
{
  v1 = v0;
  v2 = sub_23875B940();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23858B820(v1, v8, type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = [objc_opt_self() sharedApplication];
    v10 = sub_23875B860();
    sub_23854BA18(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_23858B888(&qword_27DF09138, type metadata accessor for OpenExternalURLOptionsKey, &unk_2387628B0);
    v11 = sub_23875E910();

    [v9 openURL:v10 options:v11 completionHandler:0];

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v12 = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4D0, &unk_2387713A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2387632F0;
    *(inited + 32) = sub_23875EA80();
    *(inited + 40) = v14;
    v15 = sub_23875EA80();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v15;
    *(inited + 56) = v16;
    sub_23853BB18(inited);
    swift_setDeallocating();
    sub_238439884(inited + 32, &qword_27DF0A4D8, &qword_238766B00);
    v17 = sub_23875E910();

    [v12 openInMapsWithLaunchOptions_];
  }
}

id sub_23858B318(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      v6 = a1;
      v7 = a2;
      if ((sub_23875F020() & 1) == 0)
      {
        v13 = v6;
        v10 = v7;
        v14 = sub_23875EA50();
        v12 = [objc_opt_self() placemarkWithLocation:v13 name:v14 postalAddress:v10];

        v11 = v10;
        goto LABEL_9;
      }
    }

    else
    {
      v9 = a1;
    }

    v10 = a1;
    v11 = sub_23875EA50();
    v12 = [objc_opt_self() placemarkWithLocation:v10 name:v11 postalAddress:0];
LABEL_9:

    v8 = [objc_allocWithZone(MEMORY[0x277CD4E80]) initWithPlacemark_];
    v15 = sub_23875EA50();
    [v8 setName_];

    return v8;
  }

  return 0;
}

uint64_t sub_23858B494@<X0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  if (a1)
  {
    v9 = a1;
    if ((sub_23875F020() & 1) == 0)
    {
      sub_23875F010();
      v10 = objc_allocWithZone(MEMORY[0x277CD4FA8]);
      v11 = sub_23875EA50();

      v12 = [v10 initForDirectionsTo_];

      if (v12)
      {
        v13 = v12;
        v14 = sub_23875EA50();
        [v13 setDestinationLabel_];

        v15 = [v13 build];
        if (v15)
        {
          v16 = v15;
          sub_23875B8B0();

          v17 = sub_23875B940();
          (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
        }

        else
        {

          v21 = sub_23875B940();
          (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
        }

        return sub_23853B5CC(v8, a4);
      }
    }
  }

  v18 = sub_23875B940();
  v19 = *(*(v18 - 8) + 56);

  return v19(a4, 1, 1, v18);
}

uint64_t sub_23858B6F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsPickupDirectionsButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23858B75C()
{
  type metadata accessor for OrderDetailsPickupDirectionsButton(0);

  sub_23858ACD0();
}

unint64_t sub_23858B7BC()
{
  result = qword_27DF0D2C0;
  if (!qword_27DF0D2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12E30, &unk_238765430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D2C0);
  }

  return result;
}

uint64_t sub_23858B820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23858B888(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OrderImageCache.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  return v0;
}

void OrderImageCache.store(image:for:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for OrderImageModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = *(v2 + 16);
  sub_23858BA48(a2, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23858BAAC();
  sub_23875F410();
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ECC8, &qword_2387713B0));
  v9 = sub_238758360();
  [v7 setObject:a1 forKey:v9];
}

uint64_t sub_23858BA48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderImageModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23858BAAC()
{
  result = qword_27DF0ECC0;
  if (!qword_27DF0ECC0)
  {
    type metadata accessor for OrderImageModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ECC0);
  }

  return result;
}

void OrderImageCache.store(resource:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  sub_23858BB94(a1, a2, a3);
  sub_23875F410();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ECC8, &qword_2387713B0));
  v7 = sub_238758360();
  [v5 setObject:a1 forKey:v7];
}

unint64_t sub_23858BB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0ECD0;
  if (!qword_27DF0ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ECD0);
  }

  return result;
}

id OrderImageCache.image(for:)(uint64_t a1)
{
  v3 = type metadata accessor for OrderImageModel(0);
  MEMORY[0x28223BE20](v3);
  v5 = *(v1 + 16);
  sub_23858BA48(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23858BAAC();
  sub_23875F410();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ECC8, &qword_2387713B0));
  v7 = sub_238758360();
  v8 = [v5 objectForKey_];

  return v8;
}

id OrderImageCache.resource(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  sub_23858BB94(a1, a2, a3);
  sub_23875F410();
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ECC8, &qword_2387713B0));
  v6 = sub_238758360();
  v7 = [v4 objectForKey_];

  return v7;
}

uint64_t OrderImageCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_23858BDCC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for OrderImageModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = *(*v2 + 16);
  sub_23858BA48(a2, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23858BAAC();
  sub_23875F410();
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ECC8, &qword_2387713B0));
  v9 = sub_238758360();
  [v7 setObject:a1 forKey:v9];
}

void sub_23858BEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v3 + 16);
  sub_23858BB94(a1, a2, a3);
  sub_23875F410();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ECC8, &qword_2387713B0));
  v7 = sub_238758360();
  [v5 setObject:a1 forKey:v7];
}

id sub_23858BF58(uint64_t a1)
{
  v3 = type metadata accessor for OrderImageModel(0);
  MEMORY[0x28223BE20](v3);
  v5 = *(*v1 + 16);
  sub_23858BA48(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23858BAAC();
  sub_23875F410();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ECC8, &qword_2387713B0));
  v7 = sub_238758360();
  v8 = [v5 objectForKey_];

  return v8;
}

id sub_23858C058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*v3 + 16);
  sub_23858BB94(a1, a2, a3);
  sub_23875F410();
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ECC8, &qword_2387713B0));
  v6 = sub_238758360();
  v7 = [v4 objectForKey_];

  return v7;
}

id sub_23858C0EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for OrderImageCache();
  v3 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &protocol witness table for OrderImageCache;
  *a1 = v3;
  return result;
}

void *EnvironmentValues.orderImageCache.getter(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_23858C1A0(x0_0, a2, a3);

  return sub_23875CDC0();
}

unint64_t sub_23858C1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0ECD8;
  if (!qword_27DF0ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ECD8);
  }

  return result;
}

uint64_t sub_23858C234(uint64_t a1)
{
  sub_23845C998(a1, v6);
  v1 = sub_23845C998(v6, &v5);
  sub_23858C1A0(v1, v2, v3);
  sub_23875CDD0();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t EnvironmentValues.orderImageCache.setter(void *a1)
{
  v2 = sub_23845C998(a1, v6);
  sub_23858C1A0(v2, v3, v4);
  sub_23875CDD0();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*EnvironmentValues.orderImageCache.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_23858C1A0(v3, v4, v5);
  sub_23875CDC0();
  return sub_23858C378;
}

void sub_23858C378(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_23845C998(*a1, (v2 + 5));
    sub_23845C998((v2 + 5), (v2 + 10));
    sub_23875CDD0();
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    sub_23845C998(*a1, (v2 + 5));
    sub_23875CDD0();
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

uint64_t BadgedErrorInstitutionLogo.init(institution:logoStyle:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_238757B60();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for BadgedErrorInstitutionLogo(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t type metadata accessor for BadgedErrorInstitutionLogo(uint64_t a1)
{
  result = qword_27DF0ECE8;
  if (!qword_27DF0ECE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double BadgedErrorInstitutionLogo.body.getter@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_23875E4A0();
  v7 = v6;
  sub_23858C6EC(v3, &v18);
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v49 = v33;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v50[12] = v30;
  v50[13] = v31;
  v50[14] = v32;
  v50[15] = v33;
  v50[8] = v26;
  v50[9] = v27;
  v50[10] = v28;
  v50[11] = v29;
  v50[4] = v22;
  v50[5] = v23;
  v50[6] = v24;
  v50[7] = v25;
  v50[0] = v18;
  v50[1] = v19;
  v50[2] = v20;
  v50[3] = v21;
  sub_23843981C(&v34, &v17, &qword_27DF0ECE0, &qword_238771470);
  sub_238439884(v50, &qword_27DF0ECE0, &qword_238771470);
  *a2 = v5;
  *(a2 + 8) = v7;
  v8 = v47;
  *(a2 + 208) = v46;
  *(a2 + 224) = v8;
  v9 = v49;
  *(a2 + 240) = v48;
  *(a2 + 256) = v9;
  v10 = v43;
  *(a2 + 144) = v42;
  *(a2 + 160) = v10;
  v11 = v45;
  *(a2 + 176) = v44;
  *(a2 + 192) = v11;
  v12 = v39;
  *(a2 + 80) = v38;
  *(a2 + 96) = v12;
  v13 = v41;
  *(a2 + 112) = v40;
  *(a2 + 128) = v13;
  v14 = v35;
  *(a2 + 16) = v34;
  *(a2 + 32) = v14;
  result = *&v36;
  v16 = v37;
  *(a2 + 48) = v36;
  *(a2 + 64) = v16;
  return result;
}

void sub_23858C6EC(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v74 = a1;
  v3 = sub_23875E0E0();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_238757B60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23875ED50();
  v73 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = v74;
  (*(v7 + 16))(v9);
  v11 = type metadata accessor for BadgedErrorInstitutionLogo(0);
  v12 = *(v10 + *(v11 + 20));
  v59 = *(v11 + 20);
  v71 = v12;
  KeyPath = swift_getKeyPath(aH_4);
  LOBYTE(v77[0]) = 0;
  *&v106 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  v69 = v114;
  v70 = v113;
  v68 = sub_238757B40();
  v76 = v13;
  (*(v7 + 8))(v9, v6);
  v75 = LOBYTE(v77[0]);
  sub_23875E0D0();
  v15 = v65;
  v14 = v66;
  (*(v65 + 104))(v5, *MEMORY[0x277CE0FE0], v66);
  v67 = sub_23875E150();

  (*(v15 + 8))(v5, v14);
  sub_23875E4A0();
  sub_23875C5C0();
  LOBYTE(v14) = v160;
  v62 = v159;
  v63 = v161;
  LOBYTE(v10) = v162;
  v60 = v162;
  v65 = v164;
  v66 = v163;
  v64 = sub_23875E070();
  v61 = swift_getKeyPath(byte_238771530);
  v155 = v14;
  v153 = v10;
  v16 = objc_opt_self();
  v17 = [v16 systemBackgroundColor];
  v58 = sub_23875DFB0();
  v57 = sub_23875D780();
  v18 = [v16 systemBackgroundColor];
  v19 = sub_23875DFB0();
  sub_23875C4C0();
  v20 = v165;
  v22 = v166;
  v21 = v167;
  v23 = v168;
  v24 = v169;
  v25 = v170;
  v26 = sub_23875E4A0();
  v28 = v27;
  v29 = sub_23875E4A0();
  *&v134 = v20;
  *(&v134 + 1) = __PAIR64__(v21, v22);
  *&v135 = v23;
  *(&v135 + 1) = v24;
  *&v136 = v25;
  *(&v136 + 1) = v19;
  LOWORD(v137) = 256;
  *(&v137 + 1) = v26;
  *&v138 = v28;
  *(&v138 + 1) = v29;
  *(&v156[2] + 5) = v136;
  *(&v156[3] + 5) = v137;
  *(&v156[4] + 5) = v138;
  *(v156 + 5) = v134;
  v139 = v30;
  *(&v156[5] + 5) = v30;
  *(&v156[1] + 5) = v135;
  v140 = v20;
  v141 = v22;
  v142 = v21;
  v143 = v23;
  v144 = v24;
  v145 = v25;
  v146 = v19;
  v147 = 256;
  v148 = v26;
  v149 = v28;
  v150 = v29;
  v151 = v30;
  sub_23843981C(&v134, &v113, &qword_27DF0ED08, &qword_238771560);
  sub_238439884(&v140, &qword_27DF0ED08, &qword_238771560);
  v31 = *(v74 + v59);
  v32 = dbl_2387715A8[v31];
  v33 = v32 - dbl_2387715D8[v31];
  v34 = v68;
  *&v102 = v68;
  *(&v102 + 1) = v76;
  LOBYTE(v21) = v71;
  LOBYTE(v103) = v71;
  *(&v103 + 1) = *v158;
  DWORD1(v103) = *&v158[3];
  *(&v103 + 1) = 0x3FB999999999999ALL;
  v35 = KeyPath;
  *&v104 = KeyPath;
  BYTE8(v104) = v75;
  *(&v104 + 9) = *v157;
  HIDWORD(v104) = *&v157[3];
  v37 = v69;
  v36 = v70;
  *&v105 = v70;
  *(&v105 + 1) = v69;
  v88 = v104;
  v89 = v105;
  v86 = v102;
  v87 = v103;
  v39 = v66;
  v38 = v67;
  *&v106 = v67;
  v41 = v62;
  v40 = v63;
  *(&v106 + 1) = v62;
  LOBYTE(v107) = v14;
  DWORD1(v107) = *&v154[3];
  *(&v107 + 1) = *v154;
  *(&v107 + 1) = v63;
  v42 = v60;
  LOBYTE(v108) = v60;
  DWORD1(v108) = *&v152[3];
  *(&v108 + 1) = *v152;
  *(&v108 + 1) = v66;
  v44 = v64;
  v43 = v65;
  *&v109 = v65;
  v45 = v61;
  *(&v109 + 1) = v61;
  *&v110 = v64;
  v46 = v58;
  *(&v110 + 1) = v58;
  v47 = v57;
  LOBYTE(v111[0]) = v57;
  *(v111 + 1) = 256;
  *(&v111[1] + 3) = v156[1];
  *(v111 + 3) = v156[0];
  v111[5] = *(&v156[4] + 13);
  *(&v111[4] + 3) = v156[4];
  *(&v111[3] + 3) = v156[3];
  *(&v111[2] + 3) = v156[2];
  *&v112 = v32;
  *(&v112 + 1) = v33;
  v92 = v108;
  v93 = v109;
  v90 = v106;
  v91 = v107;
  v96 = v111[1];
  v97 = v111[2];
  v94 = v110;
  v95 = v111[0];
  v100 = v111[5];
  v101 = v112;
  v98 = v111[3];
  v99 = v111[4];
  v48 = v111[4];
  a2[12] = v111[3];
  a2[13] = v48;
  v49 = v101;
  a2[14] = v100;
  a2[15] = v49;
  v50 = v95;
  a2[8] = v94;
  a2[9] = v50;
  v51 = v97;
  a2[10] = v96;
  a2[11] = v51;
  v52 = v91;
  a2[4] = v90;
  a2[5] = v52;
  v53 = v93;
  a2[6] = v92;
  a2[7] = v53;
  v54 = v87;
  *a2 = v86;
  a2[1] = v54;
  v55 = v89;
  a2[2] = v88;
  a2[3] = v55;
  v113 = v38;
  v114 = v41;
  v115 = v14;
  *v116 = *v154;
  *&v116[3] = *&v154[3];
  v117 = v40;
  v118 = v42;
  *v119 = *v152;
  *&v119[3] = *&v152[3];
  v120 = v39;
  v121 = v43;
  v122 = v45;
  v123 = v44;
  v124 = v46;
  v125 = v47;
  v126 = 256;
  v129 = v156[2];
  v130 = v156[3];
  *v131 = v156[4];
  *&v131[13] = *(&v156[4] + 13);
  v127 = v156[0];
  v128 = v156[1];
  v132 = v32;
  v133 = v33;
  sub_238558A88(&v102, v77);
  sub_23843981C(&v106, v77, &qword_27DF0ED10, &unk_238771568);
  sub_238439884(&v113, &qword_27DF0ED10, &unk_238771568);
  v77[0] = v34;
  v77[1] = v76;
  v78 = v21;
  *v79 = *v158;
  *&v79[3] = *&v158[3];
  v80 = 0x3FB999999999999ALL;
  v81 = v35;
  v82 = v75;
  *v83 = *v157;
  *&v83[3] = *&v157[3];
  v84 = v36;
  v85 = v37;
  sub_23858D0F0(v77);
}

double sub_23858CEA4@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_23875E4A0();
  v7 = v6;
  sub_23858C6EC(v3, &v18);
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v49 = v33;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v50[12] = v30;
  v50[13] = v31;
  v50[14] = v32;
  v50[15] = v33;
  v50[8] = v26;
  v50[9] = v27;
  v50[10] = v28;
  v50[11] = v29;
  v50[4] = v22;
  v50[5] = v23;
  v50[6] = v24;
  v50[7] = v25;
  v50[0] = v18;
  v50[1] = v19;
  v50[2] = v20;
  v50[3] = v21;
  sub_23843981C(&v34, &v17, &qword_27DF0ECE0, &qword_238771470);
  sub_238439884(v50, &qword_27DF0ECE0, &qword_238771470);
  *a2 = v5;
  *(a2 + 8) = v7;
  v8 = v47;
  *(a2 + 208) = v46;
  *(a2 + 224) = v8;
  v9 = v49;
  *(a2 + 240) = v48;
  *(a2 + 256) = v9;
  v10 = v43;
  *(a2 + 144) = v42;
  *(a2 + 160) = v10;
  v11 = v45;
  *(a2 + 176) = v44;
  *(a2 + 192) = v11;
  v12 = v39;
  *(a2 + 80) = v38;
  *(a2 + 96) = v12;
  v13 = v41;
  *(a2 + 112) = v40;
  *(a2 + 128) = v13;
  v14 = v35;
  *(a2 + 16) = v34;
  *(a2 + 32) = v14;
  result = *&v36;
  v16 = v37;
  *(a2 + 48) = v36;
  *(a2 + 64) = v16;
  return result;
}

uint64_t sub_23858D018(uint64_t a1)
{
  result = sub_238757B60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23858D08C()
{
  result = qword_27DF0ECF8;
  if (!qword_27DF0ECF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0ED00, &qword_2387714F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ECF8);
  }

  return result;
}

void sub_23858D18C(uint64_t a1)
{
  type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2384561E8();
    if (v2 <= 0x3F)
    {
      sub_2385862B4(319);
      if (v3 <= 0x3F)
      {
        sub_23858D2A0(319, &qword_27DF0ED28, type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel);
        if (v4 <= 0x3F)
        {
          sub_23858D2A0(319, &qword_27DF0ED30, type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23858D2A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875F1F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23858D2F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23858D3C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB28, &unk_23876D610);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - v7;
  sub_23875AED0();
  v9 = (*(v3 + 88))(v8, v2);
  if (v9 == *MEMORY[0x277CC83B8])
  {
    v10 = 28;
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x277CC83A8])
  {
    v10 = 24;
LABEL_5:
    v11 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
    v12 = *(v1 + *(v11 + v10) + 8);
    v13 = *(v3 + 8);

    v13(v8, v2);
    if (!v12)
    {
      return 0;
    }

    v14 = *(v1 + *(v11 + 20));

    return v14;
  }

  if (v9 == *MEMORY[0x277CC83B0])
  {
    (*(v3 + 8))(v8, v2);
    return 0;
  }

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD000000000000017, 0x800000023878AD90);
  sub_23875AED0();
  sub_23875F510();
  (*(v3 + 8))(v5, v2);
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_23858D668()
{
  v1 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
  v2 = *(v0 + *(v1 + 32));
  v3 = *(v0 + *(v1 + 36));

  if (v3)
  {
    v4 = v3;
    v5 = sub_23875F010();
    MEMORY[0x23EE63650](v5);

    MEMORY[0x23EE63650](10, 0xE100000000000000);
  }

  return v2;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23858D878(uint64_t a1)
{
  result = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23858D8E4()
{
  result = qword_27DF0ED58;
  if (!qword_27DF0ED58)
  {
    type metadata accessor for OrderDetailsPickupFulfillment_iOS(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ED58);
  }

  return result;
}

uint64_t sub_23858D958@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v2 = type metadata accessor for OrderDetailsPickupDirectionsButton(0);
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x28223BE20](v2);
  v56 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5C8, &unk_23876D600);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v55 - v5;
  v6 = type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel(0);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ED60, &qword_238771728);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ED68, &qword_238771730);
  MEMORY[0x28223BE20](v12 - 8);
  v63 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = (&v55 - v15);
  v16 = type metadata accessor for OrderDetailsPickupStatusLabel(0);
  v57 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5B8, &unk_23876D5F0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v55 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ED70, &qword_238771738);
  MEMORY[0x28223BE20](v22 - 8);
  v60 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v55 - v25;
  v27 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
  sub_23843981C(v1 + v27[11], v21, &qword_27DF0D5B8, &unk_23876D5F0);
  v28 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
  v29 = 1;
  v30 = (*(*(v28 - 8) + 48))(v21, 1, v28);
  v31 = v21;
  v32 = v26;
  v33 = v16;
  v34 = v1;
  sub_238439884(v31, &qword_27DF0D5B8, &unk_23876D5F0);
  if (v30 == 1 && !*(v1 + v27[6] + 8))
  {
    sub_23858EA60(v1, v18, type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel);
    v35 = v33[5];
    *&v18[v35] = swift_getKeyPath(byte_238771740);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E0, &unk_23876EE10);
    swift_storeEnumTagMultiPayload();
    v36 = v33[6];
    *&v18[v36] = swift_getKeyPath(byte_238771778);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C300, &qword_2387729A0);
    swift_storeEnumTagMultiPayload();
    v37 = v33[7];
    *&v18[v37] = swift_getKeyPath(byte_2387717B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2F8, &unk_23876A240);
    swift_storeEnumTagMultiPayload();
    sub_23858D2F4(v18, v32, type metadata accessor for OrderDetailsPickupStatusLabel);
    v29 = 0;
  }

  (*(v57 + 56))(v32, v29, 1, v33);
  v38 = sub_23875D030();
  v39 = v68;
  *v68 = v38;
  v39[1] = 0x4032000000000000;
  *(v39 + 16) = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ED78, &qword_2387717E8);
  sub_23858E138(v34, v39 + *(v40 + 44));
  v41 = v34 + v27[10];
  v42 = v61;
  sub_23843981C(v41, v61, &qword_27DF0D5C8, &unk_23876D600);
  if ((*(v58 + 48))(v42, 1, v59) == 1)
  {
    sub_238439884(v42, &qword_27DF0D5C8, &unk_23876D600);
    v43 = 1;
    v44 = v62;
  }

  else
  {
    v45 = v42;
    v46 = v55;
    sub_23858D2F4(v45, v55, type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel);
    v47 = v56;
    sub_23858D2F4(v46, v56, type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel);
    v44 = v62;
    sub_23858D2F4(v47, v62, type metadata accessor for OrderDetailsPickupDirectionsButton);
    v43 = 0;
  }

  (*(v65 + 56))(v44, v43, 1, v66);
  v48 = v60;
  sub_23843981C(v32, v60, &qword_27DF0ED70, &qword_238771738);
  v49 = v68;
  v50 = v63;
  sub_23843981C(v68, v63, &qword_27DF0ED68, &qword_238771730);
  v66 = v32;
  v51 = v64;
  sub_23843981C(v44, v64, &qword_27DF0ED60, &qword_238771728);
  v52 = v67;
  sub_23843981C(v48, v67, &qword_27DF0ED70, &qword_238771738);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ED80, &qword_2387717F0);
  sub_23843981C(v50, v52 + *(v53 + 48), &qword_27DF0ED68, &qword_238771730);
  sub_23843981C(v51, v52 + *(v53 + 64), &qword_27DF0ED60, &qword_238771728);
  sub_238439884(v44, &qword_27DF0ED60, &qword_238771728);
  sub_238439884(v49, &qword_27DF0ED68, &qword_238771730);
  sub_238439884(v66, &qword_27DF0ED70, &qword_238771738);
  sub_238439884(v51, &qword_27DF0ED60, &qword_238771728);
  sub_238439884(v50, &qword_27DF0ED68, &qword_238771730);
  return sub_238439884(v48, &qword_27DF0ED70, &qword_238771738);
}

double sub_23858E138@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = type metadata accessor for OrderDetailsBarcodeButton(0);
  v87 = *(v3 - 8);
  v88 = v3;
  MEMORY[0x28223BE20](v3);
  v83 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
  v5 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v82 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ED88, &qword_2387717F8);
  MEMORY[0x28223BE20](v7 - 8);
  v91 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = &v81 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ED90, &qword_238771800);
  v84 = *(v11 - 8);
  v85 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v81 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5B8, &unk_23876D5F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ED98, &qword_238771808);
  MEMORY[0x28223BE20](v20 - 8);
  v90 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v81 - v23;
  sub_23875ED50();
  v89 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
  v25 = *(v24 + 44);
  sub_23843981C(a1 + v25, v19, &qword_27DF0D5B8, &unk_23876D5F0);
  v26 = v5 + 48;
  v27 = *(v5 + 48);
  v86 = v26;
  v28 = a1;
  v29 = v27(v19, 1, v93);
  sub_238439884(v19, &qword_27DF0D5B8, &unk_23876D5F0);
  if (v29 == 1 && !*(v28 + *(v24 + 24) + 8))
  {
    v36 = 1;
    v37 = v94;
    v35 = v95;
    v34 = v85;
  }

  else
  {
    sub_23858EA60(v28, v13, type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel);
    v30 = type metadata accessor for OrderDetailsPickupStatusLabel(0);
    v31 = v30[5];
    *&v13[v31] = swift_getKeyPath(byte_238771740);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E0, &unk_23876EE10);
    swift_storeEnumTagMultiPayload();
    v32 = v30[6];
    *&v13[v32] = swift_getKeyPath(byte_238771778);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C300, &qword_2387729A0);
    swift_storeEnumTagMultiPayload();
    v33 = v30[7];
    *&v13[v33] = swift_getKeyPath(byte_2387717B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2F8, &unk_23876A240);
    swift_storeEnumTagMultiPayload();
    v34 = v85;
    *&v13[*(v85 + 36)] = 256;
    v35 = v95;
    sub_2384396E4(v13, v95, &qword_27DF0ED90, &qword_238771800);
    v36 = 0;
    v37 = v94;
  }

  (*(v84 + 56))(v35, v36, 1, v34);
  sub_23843981C(v28 + v25, v16, &qword_27DF0D5B8, &unk_23876D5F0);
  if (v27(v16, 1, v93) == 1)
  {
    sub_238439884(v16, &qword_27DF0D5B8, &unk_23876D5F0);
    v38 = 1;
    v39 = v88;
  }

  else
  {
    v40 = v82;
    sub_23858D2F4(v16, v82, type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel);
    v41 = v83;
    sub_23858EA60(v40, v83, type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel);
    v39 = v88;
    v42 = v41 + *(v88 + 20);
    v96 = 0;
    sub_23875E1A0();
    sub_23858EAC8(v40);
    v43 = v98;
    *v42 = v97;
    *(v42 + 8) = v43;
    v44 = v41 + *(v39 + 24);
    *v44 = swift_getKeyPath(aP_4);
    *(v44 + 8) = 0;
    sub_23858D2F4(v41, v37, type metadata accessor for OrderDetailsBarcodeButton);
    v38 = 0;
  }

  (*(v87 + 56))(v37, v38, 1, v39);
  v45 = sub_23858D3C0();
  if (qword_2814F0880 != -1)
  {
    v77 = v45;
    v78 = v46;
    v79 = v47;
    v80 = v48;
    swift_once();
    v48 = v80;
    v47 = v79;
    v45 = v77;
    v46 = v78;
    v35 = v95;
  }

  if (v46)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  v93 = v49;
  if (v46)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0;
  }

  v88 = v50;
  if (v46)
  {
    v51 = v45;
  }

  else
  {
    v51 = 0;
  }

  v86 = v46;
  v87 = v51;
  v52 = qword_2814F1B90;
  v53 = sub_23875EA50();
  v54 = sub_23875EA50();
  v55 = sub_23875EA50();
  v56 = [v52 localizedStringForKey:v53 value:v54 table:v55];

  v85 = sub_23875EA80();
  v58 = v57;

  v59 = sub_23858D668();
  v61 = v60;
  v62 = v90;
  sub_23843981C(v35, v90, &qword_27DF0ED98, &qword_238771808);
  v63 = v37;
  v64 = v91;
  sub_23843981C(v63, v91, &qword_27DF0ED88, &qword_2387717F8);
  v65 = v92;
  sub_23843981C(v62, v92, &qword_27DF0ED98, &qword_238771808);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EDA0, &qword_238771810);
  sub_23843981C(v64, v65 + v66[12], &qword_27DF0ED88, &qword_2387717F8);
  v67 = (v65 + v66[16]);
  v69 = v86;
  v68 = v87;
  *v67 = v87;
  v67[1] = v69;
  v70 = v88;
  v71 = v93;
  v67[2] = v88;
  v67[3] = v71;
  v72 = (v65 + v66[20]);
  *v72 = v85;
  v72[1] = v58;
  v72[2] = v59;
  v72[3] = v61;
  v73 = v68;
  v74 = v70;
  v75 = v71;
  sub_2385570E8(v68, v69, v70, v71);

  sub_238439884(v94, &qword_27DF0ED88, &qword_2387717F8);
  sub_238439884(v95, &qword_27DF0ED98, &qword_238771808);

  sub_23855712C(v73, v69, v74, v75);
  sub_238439884(v64, &qword_27DF0ED88, &qword_2387717F8);
  sub_238439884(v62, &qword_27DF0ED98, &qword_238771808);

  return result;
}

uint64_t sub_23858EA60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23858EAC8(uint64_t a1)
{
  v2 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23858EB24()
{
  result = qword_27DF0EDA8;
  if (!qword_27DF0EDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EDB0, &qword_238771840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EDA8);
  }

  return result;
}

void sub_23858EBD4(uint64_t a1)
{
  sub_23875AF00();
  if (v1 <= 0x3F)
  {
    sub_23858EE1C(319, &qword_27DF0EDC8, type metadata accessor for OrderDetailsNote, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23858ECD8(uint64_t a1)
{
  type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_23858EE1C(319, &qword_27DF0DC58, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_23858EE1C(319, &qword_27DF0EDF0, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_23858EE1C(319, &qword_27DF0EDF8, MEMORY[0x277CC9A70], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23858EE1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_23858EE9C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875D990();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875BE40();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875BE20();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875BD20();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OrderDetailsPickupStatusLabel.TitleFormatter(0);
  MEMORY[0x28223BE20](v15);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OrderDetailsPickupStatusLabel(0);
  sub_2384D57B8(v14);
  sub_2384D5588(v11);
  sub_2384D57E0(v8);
  sub_2387595B0();
  sub_2385913B4(&qword_27DF0EE00, type metadata accessor for OrderDetailsPickupStatusLabel.TitleFormatter, &unk_238771A38);
  sub_238759950();
  sub_238591564(v17, type metadata accessor for OrderDetailsPickupStatusLabel.TitleFormatter);
  v19 = v47;
  v18 = v48;
  v21 = v49;
  v20 = v50;
  v42[0] = v50;

  v22 = v18;
  v42[1] = v18;

  v23 = sub_23858F2F8();
  v24 = type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel(0);
  v25 = *(v24 + 20);
  v26 = type metadata accessor for OrderDetailsStatusLabel(0);
  sub_2385912B0(v2 + v25, a1 + v26[7]);
  v27 = (v2 + *(v24 + 24));
  v28 = *v27;
  v29 = v27[24];
  *a1 = v19;
  *(a1 + 8) = v22;
  *(a1 + 16) = v21;
  *(a1 + 24) = v20;
  *(a1 + 32) = v23;
  v30 = a1 + v26[8];
  *v30 = v28;
  *(v30 + 8) = *(v27 + 8);
  *(v30 + 24) = v29;
  v31 = a1 + v26[9];
  v46 = 0;
  sub_23875E1A0();
  v32 = v48;
  *v31 = v47;
  *(v31 + 8) = v32;
  v33 = a1 + v26[10];
  *v33 = swift_getKeyPath(asc_2387718E8);
  *(v33 + 8) = 0;
  v47 = 0x403F000000000000;
  v34 = *MEMORY[0x277CE0A50];
  v35 = v43;
  v36 = *(v44 + 104);
  v37 = v45;
  v38 = v36(v43, v34, v45);
  sub_23857414C(v38, v39, v40);
  sub_23875C540();
  v47 = 0x403C000000000000;
  v36(v35, v34, v37);
  sub_23875C540();
  v47 = 0x4018000000000000;
  v36(v35, v34, v37);
  sub_23875C540();

  return result;
}

uint64_t sub_23858F2F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB28, &unk_23876D610);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  sub_23875AED0();
  v13 = (*(v1 + 88))(v12, v0);
  if (v13 == *MEMORY[0x277CC83B8])
  {
    (*(v1 + 16))(v6, v12, v0);
    (*(v1 + 96))(v6, v0);
    v14 = sub_238757C30();
    v15 = *(v14 - 8);
    v16 = (*(v15 + 88))(v6, v14);
    if (v16 != *MEMORY[0x277CC6B98])
    {
      if (v16 != *MEMORY[0x277CC6BA8])
      {
        if (v16 == *MEMORY[0x277CC6BA0])
        {
LABEL_5:
          v17 = 1;
LABEL_18:
          (*(v1 + 8))(v12, v0);
          return v17;
        }

        v9 = v6;
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v13 == *MEMORY[0x277CC83A8])
  {
    (*(v1 + 16))(v9, v12, v0);
    (*(v1 + 96))(v9, v0);
    v14 = sub_23875ACF0();
    v15 = *(v14 - 8);
    v18 = (*(v15 + 88))(v9, v14);
    if (v18 != *MEMORY[0x277CC83E8] && v18 != *MEMORY[0x277CC83E0] && v18 != *MEMORY[0x277CC83D8])
    {
      if (v18 != *MEMORY[0x277CC83F8])
      {
        if (v18 == *MEMORY[0x277CC83F0])
        {
          v17 = 2;
          goto LABEL_18;
        }

        if (v18 == *MEMORY[0x277CC8400])
        {
          goto LABEL_5;
        }

LABEL_25:
        (*(v15 + 8))(v9, v14);
        goto LABEL_26;
      }

LABEL_17:
      v17 = 0;
      goto LABEL_18;
    }

LABEL_15:
    v17 = 3;
    goto LABEL_18;
  }

  if (v13 == *MEMORY[0x277CC83B0])
  {
    goto LABEL_17;
  }

LABEL_26:
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD000000000000017, 0x800000023878AD90);
  sub_23875AED0();
  sub_23875F510();
  (*(v1 + 8))(v3, v0);
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_23858F780(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_23875F630(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_23875F630() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_23858F820(uint64_t a1, const char *a2)
{
  v58 = a2;
  v3 = sub_2387591F0();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_23875BC40();
  v51 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OrderDetailsStatusSubtitleFormatter(0);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D0, &unk_238770FE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - v9;
  v11 = sub_23875AEB0();
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB28, &unk_23876D610);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v49 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v49 - v25;
  sub_23875AED0();
  v27 = (*(v15 + 88))(v26, v14);
  if (v27 == *MEMORY[0x277CC83B8])
  {
    (*(v15 + 16))(v20, v26, v14);
    (*(v15 + 96))(v20, v14);
    v28 = sub_238757C30();
    v29 = *(v28 - 8);
    if ((*(v29 + 88))(v20, v28) == *MEMORY[0x277CC6B98])
    {
LABEL_3:
      (*(v15 + 8))(v26, v14);
      return sub_238590484(a1, v58);
    }

    (*(v29 + 8))(v20, v28);
LABEL_18:
    (*(v15 + 8))(v26, v14);
    return 0;
  }

  if (v27 != *MEMORY[0x277CC83A8])
  {
    if (v27 == *MEMORY[0x277CC83B0])
    {
      (*(v15 + 16))(v17, v26, v14);
      (*(v15 + 96))(v17, v14);
      v36 = v51;
      (*(v51 + 32))();
      v58 = "Unknown displayStatus: ";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_2387632F0;
      v38 = sub_23875B9D0();
      v40 = v39;
      *(v37 + 56) = MEMORY[0x277D837D0];
      *(v37 + 64) = sub_238448C58(v38, v39, v41);
      *(v37 + 32) = v38;
      *(v37 + 40) = v40;
      v42 = v52;
      v43 = v53;
      v44 = v54;
      (*(v53 + 104))(v52, *MEMORY[0x277CC77B0], v54);
      v45 = sub_238758A50();

      (*(v43 + 8))(v42, v44);
      (*(v36 + 8))(v55, v56);
      (*(v15 + 8))(v26, v14);
      return v45;
    }

    goto LABEL_18;
  }

  (*(v15 + 16))(v23, v26, v14);
  (*(v15 + 96))(v23, v14);
  v31 = sub_23875ACF0();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 88))(v23, v31);
  if (v33 == *MEMORY[0x277CC83E8] || v33 == *MEMORY[0x277CC83E0])
  {
    goto LABEL_3;
  }

  if (v33 != *MEMORY[0x277CC83D8])
  {
    if (v33 == *MEMORY[0x277CC83F8])
    {
      v46 = sub_238590078(a1, v58);
      (*(v15 + 8))(v26, v14);
      return v46;
    }

    (*(v32 + 8))(v23, v31);
    goto LABEL_18;
  }

  sub_23875AEF0();
  v34 = v50;
  if ((*(v50 + 48))(v10, 1, v11) == 1)
  {
    sub_238439884(v10, &qword_27DF0D5D0, &unk_238770FE0);
    v35 = 0;
  }

  else
  {
    (*(v34 + 32))(v13, v10, v11);
    v47 = sub_2387595E0();
    v48 = v49;
    (*(*(v47 - 8) + 16))(v49, v57, v47);
    v35 = sub_2385BCA9C(v13, v58);
    sub_238591564(v48, type metadata accessor for OrderDetailsStatusSubtitleFormatter);
    (*(v34 + 8))(v13, v11);
  }

  (*(v15 + 8))(v26, v14);
  return v35;
}

uint64_t sub_238590078(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v23 = sub_238759120();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2387595E0();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238759140();
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_23875BC40();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875AEE0();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_238439884(v12, &qword_27DF12E00, &unk_238763FC0);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_2385913B4(&unk_27DF12BC0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    if (sub_23875E9C0())
    {
      (*(v19 + 16))(v6, v22, v4);
      (*(v21 + 104))(v3, *MEMORY[0x277CC7750], v23);
      sub_238759110();
      v17 = sub_238759130();
      (*(v20 + 8))(v9, v7);
      (*(v14 + 8))(v16, v13);
      return v17;
    }

    (*(v14 + 8))(v16, v13);
  }

  return 0;
}

uint64_t sub_238590484(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v2 = sub_2387591F0();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238759120();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2387595E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875AEA0();
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D0, &unk_238770FE0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - v15;
  v17 = sub_23875AEB0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875AEF0();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_238439884(v16, &qword_27DF0D5D0, &unk_238770FE0);
    return 0;
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    (*(v8 + 16))(v10, v37, v7);
    (*(v35 + 104))(v6, *MEMORY[0x277CC7750], v36);
    sub_23875AE80();
    v22 = sub_23875AE90();
    v24 = v23;
    (*(v33 + 8))(v13, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2387632F0;
    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 64) = sub_238448C58(v25, v26, v27);
    *(v25 + 32) = v22;
    *(v25 + 40) = v24;
    v29 = v39;
    v28 = v40;
    v30 = v41;
    (*(v40 + 104))(v39, *MEMORY[0x277CC77B0], v41);
    v31 = sub_238758A50();

    (*(v28 + 8))(v29, v30);
    (*(v18 + 8))(v20, v17);
    return v31;
  }
}

uint64_t sub_238590948@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_2387595E0();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EE48, &qword_238771A70);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = sub_23875BE40();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_23875BE20();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_23875BD20();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = type metadata accessor for OrderDetailsPickupStatusLabel.TitleFormatter(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2385915C4(v15, v16, v17);
  v18 = v25;
  sub_23875F780();
  if (!v18)
  {
    v19 = v23;
    sub_2385913B4(&qword_27DF09CE0, MEMORY[0x277CC7968], MEMORY[0x277CC7980]);
    sub_23875F5B0();
    (*(v24 + 8))(v8, v6);
    (*(v19 + 40))(v14, v5, v3);
    sub_238591618(v14, v22);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_238591564(v14, type metadata accessor for OrderDetailsPickupStatusLabel.TitleFormatter);
}

uint64_t sub_238590CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2385915C4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_238590D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2385915C4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_238590D54@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_2387595E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875AF30();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v4, v8, v14);
  sub_23875AF10();
  v17 = sub_23875AF20();
  v19 = v18;
  (*(v13 + 8))(v16, v12);
  result = sub_23858F820(a1, a2);
  *a3 = v17;
  a3[1] = v19;
  a3[2] = result;
  a3[3] = v21;
  return result;
}

void *sub_238590F0C()
{
  sub_2385913B4(&qword_27DF0EE00, type metadata accessor for OrderDetailsPickupStatusLabel.TitleFormatter, &unk_238771A38);

  return sub_238759950();
}

uint64_t sub_238590FA8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EE58, &qword_238771A78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2385915C4(v6, v7, v8);
  sub_23875F790();
  sub_2387595E0();
  sub_2385913B4(&qword_27DF09CF0, MEMORY[0x277CC7968], MEMORY[0x277CC7970]);
  sub_23875F5C0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_238591120()
{
  sub_23875F700();
  sub_2387595E0();
  sub_2385913B4(&qword_27DF09CF8, MEMORY[0x277CC7968], MEMORY[0x277CC7978]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2385911A8(uint64_t a1)
{
  sub_2387595E0();
  sub_2385913B4(&qword_27DF09CF8, MEMORY[0x277CC7968], MEMORY[0x277CC7978]);

  return sub_23875E960();
}

uint64_t sub_23859122C()
{
  sub_23875F700();
  sub_2387595E0();
  sub_2385913B4(&qword_27DF09CF8, MEMORY[0x277CC7968], MEMORY[0x277CC7978]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2385912B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238591348(uint64_t a1)
{
  result = sub_2387595E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2385913B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238591564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2385915C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0EE50;
  if (!qword_27DF0EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EE50);
  }

  return result;
}

uint64_t sub_238591618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsPickupStatusLabel.TitleFormatter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2385916A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0EE60;
  if (!qword_27DF0EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EE60);
  }

  return result;
}

unint64_t sub_2385916F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0EE68;
  if (!qword_27DF0EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EE68);
  }

  return result;
}

unint64_t sub_238591750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0EE70;
  if (!qword_27DF0EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EE70);
  }

  return result;
}

uint64_t BackgroundRefreshTileView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EE78, &qword_238771BF0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8[-v2];
  v4 = *v0;
  v5 = *(v0 + 8);
  *v3 = sub_23875D030();
  *(v3 + 1) = 0x402C000000000000;
  v3[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EE80, &unk_238771BF8);
  sub_238591990(v4, v5, &v3[*(v6 + 44)]);
  v8[32] = v4;
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  type metadata accessor for BankConnectReconfirmationView(0);
  sub_23843A3E8(&qword_27DF0EE88, &qword_27DF0EE78, &qword_238771BF0, MEMORY[0x277CE1198]);
  sub_238592AFC(&qword_27DF0EE90, type metadata accessor for BankConnectReconfirmationView, &protocol conformance descriptor for BankConnectReconfirmationView);
  sub_23875DED0();

  return sub_238439884(v3, &qword_27DF0EE78, &qword_238771BF0);
}

double sub_238591990@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[0] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EE98, &qword_238771CA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  sub_23875ED50();
  v20[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_23875CE50();
  v22 = 0;
  sub_238591CE8(&v33);
  v27 = *&v34[48];
  v28 = *&v34[64];
  v23 = v33;
  v24 = *v34;
  v25 = *&v34[16];
  v26 = *&v34[32];
  v30[1] = *v34;
  v30[2] = *&v34[16];
  v29 = *&v34[80];
  v30[0] = v33;
  v30[3] = *&v34[32];
  v30[4] = *&v34[48];
  v30[5] = *&v34[64];
  v30[6] = *&v34[80];
  sub_23843981C(&v23, &v31, &qword_27DF0EEA0, &qword_238771CA8);
  sub_238439884(v30, &qword_27DF0EEA0, &qword_238771CA8);
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[87] = v28;
  *&v21[103] = v29;
  *&v21[7] = v23;
  *&v21[23] = v24;
  *&v21[39] = v25;
  v12 = v22;
  *v10 = sub_23875CE60();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EEA8, &qword_238771CB0);
  sub_2385922BC(a1 & 1, v20[0], &v10[*(v13 + 44)]);
  sub_238411E04(v10, v7);
  *&v31 = v11;
  *(&v31 + 1) = 0x4028000000000000;
  v32[0] = v12;
  *&v32[1] = *v21;
  *&v32[17] = *&v21[16];
  *&v32[81] = *&v21[80];
  *&v32[65] = *&v21[64];
  *&v32[97] = *&v21[96];
  *&v32[112] = *&v21[111];
  *&v32[33] = *&v21[32];
  *&v32[49] = *&v21[48];
  v14 = *&v32[96];
  *(a3 + 96) = *&v32[80];
  *(a3 + 112) = v14;
  *(a3 + 128) = *&v32[112];
  v15 = *&v32[32];
  *(a3 + 32) = *&v32[16];
  *(a3 + 48) = v15;
  v16 = *&v32[64];
  *(a3 + 64) = *&v32[48];
  *(a3 + 80) = v16;
  v17 = *v32;
  *a3 = v31;
  *(a3 + 16) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EEB0, &qword_238771CB8);
  sub_238411E04(v7, a3 + *(v18 + 48));
  sub_23843981C(&v31, &v33, &qword_27DF0EEB8, &qword_238771CC0);
  sub_238439884(v10, &qword_27DF0EE98, &qword_238771CA0);
  sub_238439884(v7, &qword_27DF0EE98, &qword_238771CA0);
  *&v34[65] = *&v21[64];
  *&v34[81] = *&v21[80];
  *v35 = *&v21[96];
  *&v34[1] = *v21;
  *&v34[17] = *&v21[16];
  *&v34[33] = *&v21[32];
  *&v33 = v11;
  *(&v33 + 1) = 0x4028000000000000;
  v34[0] = v12;
  *&v35[15] = *&v21[111];
  *&v34[49] = *&v21[48];
  sub_238439884(&v33, &qword_27DF0EEB8, &qword_238771CC0);

  return result;
}

double sub_238591CE8@<D0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875D030();
  LOBYTE(v17[0]) = 0;
  sub_238591ED0(v13);
  *&v12[7] = v13[0];
  *&v12[55] = v14;
  *&v12[39] = v13[2];
  *&v12[23] = v13[1];
  v3 = v17[0];
  *&v15 = v2;
  *(&v15 + 1) = 0x4020000000000000;
  v16[0] = v17[0];
  v4 = *&v12[16];
  *&v16[1] = *v12;
  *&v16[64] = *(&v14 + 1);
  v5 = *&v12[32];
  *&v16[49] = *&v12[48];
  *&v16[33] = *&v12[32];
  v6 = *v12;
  *&v16[17] = *&v12[16];
  *&v11[23] = *v16;
  *&v11[7] = v15;
  *&v11[71] = *&v16[48];
  *&v11[87] = *&v16[64];
  *&v11[55] = *&v16[32];
  *&v11[39] = *&v16[16];
  v7 = *v11;
  *(a1 + 33) = *&v11[16];
  *(a1 + 17) = v7;
  *(a1 + 96) = *&v11[79];
  v8 = *&v11[48];
  *(a1 + 81) = *&v11[64];
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x800000023878B890;
  *(a1 + 16) = 0;
  *(a1 + 65) = v8;
  *(a1 + 49) = *&v11[32];
  v17[0] = v2;
  v17[1] = 0x4020000000000000;
  v18 = v3;
  v19 = v6;
  *&v22[15] = *&v12[63];
  *v22 = *&v12[48];
  v21 = v5;
  v20 = v4;

  sub_23843981C(&v15, &v10, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v17, &qword_27DF0BA70, &unk_238769590);

  return result;
}

double sub_238591ED0@<D0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v37 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v6) = v13;
  sub_23875D980();
  v14 = sub_23875DA60();
  v39 = v15;
  v40 = v14;
  v38 = v16;
  v41 = v17;

  sub_2384397FC(v10, v12, v6 & 1);

  v18 = sub_23875EA50();
  v19 = sub_23875EA50();
  v20 = sub_23875EA50();
  v21 = [v37 localizedStringForKey:v18 value:v19 table:v20];

  sub_23875EA80();
  v22 = sub_23875DAA0();
  v24 = v23;
  LOBYTE(v20) = v25;
  sub_23875D7F0();
  v26 = sub_23875DA60();
  v28 = v27;
  LOBYTE(v4) = v29;

  sub_2384397FC(v22, v24, v20 & 1);

  sub_23875D440();
  v30 = sub_23875DA20();
  v32 = v31;
  LOBYTE(v20) = v33;
  v35 = v34;
  sub_2384397FC(v26, v28, v4 & 1);

  *a1 = v40;
  *(a1 + 8) = v39;
  *(a1 + 16) = v38 & 1;
  *(a1 + 24) = v41;
  *(a1 + 32) = v30;
  *(a1 + 40) = v32;
  *(a1 + 48) = v20 & 1;
  *(a1 + 56) = v35;
  sub_23843980C(v40, v39, v38 & 1);

  sub_23843980C(v30, v32, v20 & 1);

  sub_2384397FC(v30, v32, v20 & 1);

  sub_2384397FC(v40, v39, v38 & 1);

  return result;
}

uint64_t sub_2385922BC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v24 = a1;
  v28 = a3;
  v27 = sub_23875CFD0();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EEC0, &qword_238771CC8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23[-v8];
  sub_23875ED50();
  v26 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v10 = qword_2814F1B90;
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = [v10 localizedStringForKey:v11 value:v12 table:v13];

  v15 = sub_23875EA80();
  v17 = v16;

  v18 = swift_allocObject();
  *(v18 + 16) = v24 & 1;
  v19 = v25;
  *(v18 + 24) = v25;
  MEMORY[0x28223BE20](v19);
  *&v23[-16] = v15;
  *&v23[-8] = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1F8, &unk_238769FD0);
  sub_2384D34EC();
  sub_23875E200();

  sub_23875CFC0();
  sub_23843A3E8(&qword_27DF0EEC8, &qword_27DF0EEC0, &qword_238771CC8, MEMORY[0x277CDF028]);
  sub_238592AFC(&qword_27DF0C0C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v21 = v27;
  v20 = v28;
  sub_23875DB30();
  (*(v3 + 8))(v5, v21);
  (*(v7 + 8))(v9, v6);
  LODWORD(v15) = sub_23875D420();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EED0, &unk_238771CD0);
  *(v20 + *(result + 36)) = v15;
  return result;
}

double sub_23859274C@<D0>(void *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  BankConnectReconfirmationView.init(showDeniedAccounts:)(1, a1);

  return result;
}

__n128 sub_238592808@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  *&v29 = a1;
  *(&v29 + 1) = a2;
  sub_2384397A8(isCurrentExecutor, v7, v8);

  v9 = sub_23875DAA0();
  v11 = v10;
  v13 = v12;
  sub_23875D850();
  v14 = sub_23875D9E0();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_2384397FC(v9, v11, v13 & 1);

  sub_23875E4A0();
  sub_23875C9C0();
  sub_23875E4A0();
  sub_23875C9C0();

  *(a3 + 96) = v33;
  *(a3 + 112) = v34;
  result = v35;
  *(a3 + 32) = v29;
  *(a3 + 48) = v30;
  *(a3 + 64) = v31;
  *(a3 + 80) = v32;
  *(a3 + 192) = v25;
  *(a3 + 208) = v26;
  *(a3 + 224) = v27;
  *(a3 + 240) = v28;
  *(a3 + 128) = v35;
  *(a3 + 144) = v22;
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v18 & 1;
  *(a3 + 24) = v20;
  *(a3 + 160) = v23;
  *(a3 + 176) = v24;
  return result;
}

uint64_t sub_238592A2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_238592A88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}