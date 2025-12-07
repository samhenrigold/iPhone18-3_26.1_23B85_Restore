uint64_t sub_2384FD5E4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-v6];
  v8 = type metadata accessor for OrderNavigationDestination(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v11 = a1;
  v11[1] = a2;
  v11[2] = 0;
  v11[3] = 0;
  swift_storeEnumTagMultiPayload();
  sub_2384FF854(v11, v7, type metadata accessor for OrderNavigationDestination);
  (*(v9 + 56))(v7, 0, 1, v8);
  v14 = v2;
  type metadata accessor for ExtractedOrderArchiveMonthRow(0);
  sub_2384FF990(&qword_27DF0CE80, type metadata accessor for ExtractedOrderArchiveMonthRow, &unk_23877E75C);
  sub_2384FF990(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination, &protocol conformance descriptor for OrderNavigationDestination);

  sub_23875C760();
  return sub_2384FF924(v11, type metadata accessor for OrderNavigationDestination);
}

uint64_t sub_2384FD898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23[0] = a7;
  v23[1] = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v23 - v14;
  v16 = type metadata accessor for OrderNavigationDestination(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v19 = a1;
  v19[1] = a2;
  v19[2] = 0;
  v19[3] = 0;
  swift_storeEnumTagMultiPayload();
  sub_2384FF854(v19, v15, type metadata accessor for OrderNavigationDestination);
  (*(v17 + 56))(v15, 0, 1, v16);
  v24 = v7;

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  a5(v20, v21);
  sub_2384FF990(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination, &protocol conformance descriptor for OrderNavigationDestination);
  sub_23875C760();
  return sub_2384FF924(v19, type metadata accessor for OrderNavigationDestination);
}

uint64_t sub_2384FDAA8()
{
  v0 = sub_23875BA90();
  v82 = *(v0 - 8);
  v83 = v0;
  MEMORY[0x28223BE20](v0);
  v81 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23875BAB0();
  v79 = *(v2 - 8);
  v80 = v2;
  MEMORY[0x28223BE20](v2);
  v78 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875BE40();
  v86 = *(v4 - 8);
  v87 = v4;
  MEMORY[0x28223BE20](v4);
  v77 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875BD20();
  MEMORY[0x28223BE20](v6 - 8);
  v74 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875B7F0();
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09980, &unk_2387640E0);
  MEMORY[0x28223BE20](v10 - 8);
  v70 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09988, &unk_2387675D0);
  MEMORY[0x28223BE20](v12 - 8);
  v65 = &v60 - v13;
  v14 = sub_23875BAD0();
  v75 = *(v14 - 8);
  v76 = v14;
  MEMORY[0x28223BE20](v14);
  v69 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = &v60 - v17;
  MEMORY[0x28223BE20](v18);
  v71 = &v60 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v60 - v21;
  v23 = sub_23875BC40();
  v84 = *(v23 - 8);
  v85 = v23;
  MEMORY[0x28223BE20](v23);
  v68 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v60 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v60 - v29;
  v67 = sub_23875B650();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v32 = &v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_23875BD30();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v60 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_23875BE20();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v62 = &v60 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v60 - v42;
  (*(v34 + 104))(v36, *MEMORY[0x277CC9810], v33, v41);
  sub_23875BD40();
  (*(v34 + 8))(v36, v33);
  v44 = *(v38 + 16);
  v63 = v43;
  v44(v30, v43, v37);
  v61 = v38;
  v45 = *(v38 + 56);
  v64 = v37;
  v45(v30, 0, 1, v37);
  (*(v86 + 56))(v27, 1, 1, v87);
  sub_23875B620();
  v87 = v32;
  sub_23875B5C0();
  v46 = v84;
  v47 = v85;
  result = (*(v84 + 48))(v22, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v49 = v68;
    (*(v46 + 32))(v68, v22, v47);
    v50 = sub_23875BA40();
    (*(*(v50 - 8) + 56))(v65, 1, 1, v50);
    v51 = sub_23875BA10();
    (*(*(v51 - 8) + 56))(v70, 1, 1, v51);
    sub_23875B7D0();
    sub_23875BCC0();
    sub_23875BDB0();
    sub_23875BE30();
    v52 = v71;
    sub_23875BA50();
    v53 = v78;
    sub_23875BAA0();
    v54 = v69;
    sub_23875BA70();
    (*(v79 + 8))(v53, v80);
    v55 = v81;
    sub_23875BA80();
    v56 = v72;
    sub_23875BA60();
    (*(v82 + 8))(v55, v83);
    v57 = *(v75 + 8);
    v58 = v54;
    v59 = v76;
    v57(v58, v76);
    sub_2384FF990(&qword_27DF09978, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
    sub_23875BC20();
    v57(v56, v59);
    v57(v52, v59);
    (*(v46 + 8))(v49, v47);
    (*(v66 + 8))(v87, v67);
    (*(v61 + 8))(v63, v64);
    return v88;
  }

  return result;
}

void sub_2384FE55C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  sub_238757D40();
  v12 = a1;
  v13 = a2;
  sub_23875A4D0();
  v14 = type metadata accessor for OrderArchiveMonthRow.ViewModel(0);
  v15 = (a3 + v14[5]);
  v16 = v12;
  v17 = v13;
  sub_2384C7944(v17, v16, v15);
  sub_23843981C(v11, v8, &qword_27DF09F38, &qword_238764DC0);
  type metadata accessor for OrderListRow.ViewModel(0);
  v18 = v17;
  sub_238759050();
  sub_23843981C(v11, v8, &qword_27DF09F38, &qword_238764DC0);
  sub_23875B080();
  sub_238439884(v11, &qword_27DF09F38, &qword_238764DC0);
  v19 = a3 + v14[6];
  v20 = v16;
  v21 = v18;
  sub_238757D40();
  LOBYTE(v16) = sub_2385BA98C();
  v22 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  *(v19 + *(v22 + 20)) = v16 & 1;
  LOBYTE(v16) = [v20 isMarkedAsComplete];

  *(v19 + *(v22 + 24)) = v16;
  v23 = (a3 + v14[7]);
  *v23 = 0;
  v24 = type metadata accessor for OrderActionsMenuContext(0);
  sub_238757D40();
  v23[v24[6]] = [v20 notificationsEnabled];
  v23[v24[7]] = [v20 isActive];
  v23[v24[8]] = sub_2385BA98C() & 1;
  v23[v24[9]] = [v20 isMarkedAsComplete];
  v23[v24[10]] = sub_238757DC0() & 1;
  LOBYTE(v16) = [v20 automaticUpdatesEnabled];

  v23[v24[11]] = v16;
}

uint64_t sub_2384FE824@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_23875C880();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  v10 = type metadata accessor for OrderListRow(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE08, &qword_23876C5C0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v47 = &v45 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE10, &qword_23876C5C8);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v46 = &v45 - v19;
  v45 = type metadata accessor for OrderArchiveMonthRow.ViewModel(0);
  sub_2384FF854(v1 + *(v45 + 20), v13, type metadata accessor for OrderListRow.ViewModel);
  v20 = *(v11 + 28);
  *&v13[v20] = swift_getKeyPath(byte_23876C5D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v48 = type metadata accessor for OrderArchiveMonthRow(0);
  sub_2384D5138(v9);
  (*(v4 + 104))(v6, *MEMORY[0x277CDF9D8], v3);
  LOBYTE(v20) = sub_23875C870();
  v21 = *(v4 + 8);
  v21(v6, v3);
  v21(v9, v3);
  if (v20)
  {
    v22 = 0x4028000000000000;
  }

  else
  {
    v22 = 0x4030000000000000;
  }

  v23 = v47;
  sub_2384FF8BC(v13, v47, type metadata accessor for OrderListRow);
  v24 = v23 + *(v15 + 44);
  *v24 = 0x4028000000000000;
  *(v24 + 8) = v22;
  *(v24 + 16) = 0x4028000000000000;
  *(v24 + 24) = v22;
  *(v24 + 32) = 0;
  v25 = v45;
  v26 = v46;
  v27 = &v46[*(v18 + 44)];
  sub_2384FF854(v2 + *(v45 + 24), v27, type metadata accessor for OrderListRowActionsModifier.ViewModel);
  v28 = type metadata accessor for OrderListRowActionsModifier(0);
  v29 = v27 + *(v28 + 20);
  v53[0] = 0;
  sub_23875E1A0();
  v30 = v51;
  *v29 = v50;
  *(v29 + 8) = v30;
  v31 = *(v28 + 24);
  *(v27 + v31) = swift_getKeyPath(byte_23876C608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  sub_2384396E4(v23, v26, &qword_27DF0CE08, &qword_23876C5C0);
  v32 = *(v25 + 28);
  v33 = v2 + *(v48 + 24);
  v34 = *v33;
  v35 = *(v33 + 8);
  v53[0] = v34;
  v54 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v36 = v50;
  v37 = v51;
  LOBYTE(v23) = v52;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE18, &qword_23876C630);
  v39 = v49;
  v40 = v49 + *(v38 + 36);
  sub_2384FF854(v2 + v32, v40, type metadata accessor for OrderActionsMenuContext);
  v41 = type metadata accessor for ActionsContextMenu(0);
  v42 = v40 + *(v41 + 20);
  *v42 = v36;
  *(v42 + 8) = v37;
  *(v42 + 16) = v23;
  v43 = *(v41 + 24);
  *(v40 + v43) = swift_getKeyPath(byte_23876C608);
  swift_storeEnumTagMultiPayload();
  return sub_2384396E4(v26, v39, &qword_27DF0CE10, &qword_23876C5C8);
}

double sub_2384FECE8@<D0>(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23843981C(a1, a5, a3, a4);

  return result;
}

double sub_2384FEDB0@<D0>(uint64_t a1@<X0>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384FF854(a1, a4, a3);

  return result;
}

uint64_t sub_2384FEE70(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE5F1E0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OrderArchiveMonthRow.ViewModel(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = *(a1 + v5 + 8);
  v9 = *(a2 + v5 + 8);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *v6 == *v7 && v8 == v9;
  if (!v10 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v11 = type metadata accessor for MerchantImage.ViewModel(0);
  if ((MEMORY[0x23EE5FA60](v6 + *(v11 + 20), v7 + *(v11 + 20)) & 1) == 0)
  {
    return 0;
  }

  v12 = *(v11 + 24);
  v13 = *(v6 + v12);
  v14 = *(v6 + v12 + 8);
  v15 = (v7 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (!v16 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for OrderListRow.ViewModel(0);
  if ((MEMORY[0x23EE5DB60](v6 + *(v17 + 20), v7 + *(v17 + 20)) & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x23EE5FB50](v6 + *(v17 + 24), v7 + *(v17 + 24)) & 1) == 0)
  {
    return 0;
  }

  v18 = v4[6];
  v19 = a1 + v18;
  v20 = a2 + v18;
  if ((MEMORY[0x23EE5F1E0](a1 + v18, a2 + v18) & 1) == 0)
  {
    return 0;
  }

  v21 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  if (*(v19 + *(v21 + 20)) != *(v20 + *(v21 + 20)) || *(v19 + *(v21 + 24)) != *(v20 + *(v21 + 24)))
  {
    return 0;
  }

  v23 = v4[7];

  return sub_2384FA284((a1 + v23), (a2 + v23));
}

uint64_t sub_2384FEFFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for OrderArchiveMonthRow.ViewModel(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OrderArchiveMonthContentItem(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE20, qword_23876C638);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v20 = *(v19 + 56);
  sub_2384FF854(a1, &v27 - v17, type metadata accessor for OrderArchiveMonthContentItem);
  sub_2384FF854(a2, &v18[v20], type metadata accessor for OrderArchiveMonthContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2384FF854(v18, v12, type metadata accessor for OrderArchiveMonthContentItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2384FF8BC(&v18[v20], v6, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
      v21 = sub_2386A5A4C(v12, v6);
      sub_2384FF924(v6, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
      v22 = v12;
      v23 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel;
LABEL_9:
      sub_2384FF924(v22, v23);
      sub_2384FF924(v18, type metadata accessor for OrderArchiveMonthContentItem);
      return v21 & 1;
    }

    v24 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel;
    v25 = v12;
  }

  else
  {
    sub_2384FF854(v18, v15, type metadata accessor for OrderArchiveMonthContentItem);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2384FF8BC(&v18[v20], v9, type metadata accessor for OrderArchiveMonthRow.ViewModel);
      v21 = sub_2384FEE70(v15, v9);
      sub_2384FF924(v9, type metadata accessor for OrderArchiveMonthRow.ViewModel);
      v22 = v15;
      v23 = type metadata accessor for OrderArchiveMonthRow.ViewModel;
      goto LABEL_9;
    }

    v24 = type metadata accessor for OrderArchiveMonthRow.ViewModel;
    v25 = v15;
  }

  sub_2384FF924(v25, v24);
  sub_238439884(v18, &qword_27DF0CE20, qword_23876C638);
  v21 = 0;
  return v21 & 1;
}

unint64_t sub_2384FF390()
{
  result = qword_27DF0CD98;
  if (!qword_27DF0CD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CD90, &qword_23876C450);
    sub_23843A3E8(&qword_27DF0CDA0, &qword_27DF0CDA8, &qword_23876C458, &unk_238769740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CD98);
  }

  return result;
}

void sub_2384FF484(uint64_t a1)
{
  sub_2384FF664(319, &qword_27DF0CDD0, MEMORY[0x277CC7C60], MEMORY[0x277CDD7C8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2384FF598(uint64_t a1)
{
  type metadata accessor for OrderArchiveMonthRow.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2384B49C4();
    if (v2 <= 0x3F)
    {
      sub_2384FF664(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2384FF664(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2384FF6F0(uint64_t a1)
{
  result = sub_23875A710();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OrderListRow.ViewModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for OrderListRowActionsModifier.ViewModel(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for OrderActionsMenuContext(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2384FF7C4(uint64_t a1)
{
  result = type metadata accessor for OrderArchiveMonthRow.ViewModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2384FF854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384FF8BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384FF924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2384FF990(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2384FF9D8()
{
  result = qword_27DF0B108;
  if (!qword_27DF0B108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF0B108);
  }

  return result;
}

unint64_t sub_2384FFA24()
{
  result = qword_27DF0CE58;
  if (!qword_27DF0CE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CE50, &qword_23876C698);
    sub_23843A3E8(&qword_27DF0CE60, &qword_27DF0CE68, &qword_23876C6A0, MEMORY[0x277CDD938]);
    sub_2384FF990(&qword_27DF0A060, type metadata accessor for ManagedOrderResourceLoaderModifier, &unk_238770D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CE58);
  }

  return result;
}

unint64_t sub_2384FFB74()
{
  result = qword_27DF0CE88;
  if (!qword_27DF0CE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CE18, &qword_23876C630);
    sub_2384FFC30();
    sub_2384FF990(&qword_27DF0CEB0, type metadata accessor for ActionsContextMenu, &unk_238784674);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CE88);
  }

  return result;
}

unint64_t sub_2384FFC30()
{
  result = qword_27DF0CE90;
  if (!qword_27DF0CE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CE10, &qword_23876C5C8);
    sub_2384FFCEC();
    sub_2384FF990(&qword_27DF0CEA8, type metadata accessor for OrderListRowActionsModifier, &unk_2387797D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CE90);
  }

  return result;
}

unint64_t sub_2384FFCEC()
{
  result = qword_27DF0CE98;
  if (!qword_27DF0CE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CE08, &qword_23876C5C0);
    sub_2384FF990(&qword_27DF0CEA0, type metadata accessor for OrderListRow, &unk_2387795C0);
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CE98);
  }

  return result;
}

uint64_t sub_2384FFE34(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2384FFF14(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_2384FFF90()
{
  result = qword_27DF0CED8;
  if (!qword_27DF0CED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CEE0, &unk_23876C6E0);
    sub_23850004C();
    sub_2384FF990(&qword_27DF0CE80, type metadata accessor for ExtractedOrderArchiveMonthRow, &unk_23877E75C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CED8);
  }

  return result;
}

unint64_t sub_23850004C()
{
  result = qword_27DF0CEE8;
  if (!qword_27DF0CEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CEF0, &qword_238776C10);
    sub_2384FF990(&qword_27DF0CEA0, type metadata accessor for OrderListRow, &unk_2387795C0);
    sub_2384FF990(&qword_27DF0CEA8, type metadata accessor for OrderListRowActionsModifier, &unk_2387797D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CEE8);
  }

  return result;
}

unint64_t sub_2385001C8()
{
  result = qword_27DF0CF18;
  if (!qword_27DF0CF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CF20, &qword_23876C700);
    sub_238500284();
    sub_2384FF990(&qword_27DF0CE80, type metadata accessor for ExtractedOrderArchiveMonthRow, &unk_23877E75C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CF18);
  }

  return result;
}

unint64_t sub_238500284()
{
  result = qword_27DF0CF28;
  if (!qword_27DF0CF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CF30, &qword_23876C708);
    sub_2384FF990(&qword_27DF0CF38, type metadata accessor for OrderSearchActiveRow, &unk_238780240);
    sub_2384FF990(&qword_27DF0CEA8, type metadata accessor for OrderListRowActionsModifier, &unk_2387797D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CF28);
  }

  return result;
}

double sub_238500370(void (*a1)(uint64_t))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);

  return result;
}

uint64_t sub_238500420()
{
  v1 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385165C8(v0, v3, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return EnumCaseMultiPayload;
      }

      v7 = 8;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }
  }

  else
  {
    v5 = 1;
    v6 = 3;
    if (EnumCaseMultiPayload != 2)
    {
      v6 = 4;
    }

    if (EnumCaseMultiPayload)
    {
      v5 = 2;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }
  }

  sub_238515494(v3, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  return v7;
}

uint64_t sub_238500544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v202 = a1;
  v203 = a2;
  v208 = a3;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D2D0, &qword_23876CED0);
  v174 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v173 = &v154 - v3;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D2D8, &qword_23876CED8);
  MEMORY[0x28223BE20](v184);
  v188 = &v154 - v4;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0A620, &unk_238765AF0);
  MEMORY[0x28223BE20](v201);
  v190 = &v154 - v5;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D2E0, &qword_23876CEE0);
  v172 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v171 = &v154 - v6;
  v7 = type metadata accessor for AccountConnectionStep(0);
  MEMORY[0x28223BE20](v7 - 8);
  v170 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D2E8, &qword_23876CEE8);
  v169 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v168 = &v154 - v9;
  v10 = type metadata accessor for ExtensionAuthorizationStep(0);
  MEMORY[0x28223BE20](v10 - 8);
  v167 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D2F0, &qword_23876CEF0);
  MEMORY[0x28223BE20](v196);
  v199 = &v154 - v12;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D2F8, &qword_23876CEF8);
  MEMORY[0x28223BE20](v179);
  v183 = (&v154 - v13);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0A600, &qword_238765AE8);
  MEMORY[0x28223BE20](v197);
  v185 = &v154 - v14;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0A5F0, &qword_238765AE0);
  MEMORY[0x28223BE20](v207);
  v200 = &v154 - v15;
  v16 = type metadata accessor for WebAuthorizationStep(0);
  v158 = *(v16 - 8);
  v17 = *(v158 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v159 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v164 = &v154 - v19;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D300, &qword_23876CF00);
  v166 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v165 = &v154 - v20;
  v21 = type metadata accessor for AppAuthorizationStep(0);
  v155 = *(v21 - 8);
  v22 = *(v155 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v163 = &v154 - v25;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D308, &qword_23876CF08);
  MEMORY[0x28223BE20](v176);
  v178 = &v154 - v26;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0A5D0, &qword_238765AD8);
  MEMORY[0x28223BE20](v198);
  v181 = &v154 - v27;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D310, &qword_23876CF10);
  v160 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v157 = &v154 - v28;
  v29 = type metadata accessor for ReconnectAccountsStep(0);
  MEMORY[0x28223BE20](v29 - 8);
  v156 = &v154 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D318, &qword_23876CF18);
  v162 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v161 = &v154 - v31;
  v32 = type metadata accessor for PrivacyOnboardingStep(0);
  MEMORY[0x28223BE20](v32 - 8);
  v175 = &v154 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D320, &qword_23876CF20);
  MEMORY[0x28223BE20](v204);
  v206 = &v154 - v34;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D328, &qword_23876CF28);
  MEMORY[0x28223BE20](v192);
  v194 = &v154 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D330, &unk_23876CF30);
  MEMORY[0x28223BE20](v36);
  v38 = &v154 - v37;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0A580, &qword_238765AB0);
  MEMORY[0x28223BE20](v193);
  v177 = &v154 - v39;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0A570, &qword_238765AA8);
  MEMORY[0x28223BE20](v205);
  v195 = &v154 - v40;
  v41 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  MEMORY[0x28223BE20](v41);
  v43 = &v154 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for TermsAndConditionsStep(0);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v154 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  MEMORY[0x28223BE20](v47);
  v49 = &v154 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385165C8(v202, v49, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v103 = v175;
        sub_23851512C(v49, v175, type metadata accessor for PrivacyOnboardingStep);
        v104 = v161;
        sub_238511554(v103, v203, v161);
        v105 = v162;
        v106 = v182;
        (*(v162 + 16))(v38, v104, v182);
        swift_storeEnumTagMultiPayload();
        sub_2385148B0(&unk_27DF0D1F0, type metadata accessor for BankConnectTermsAndConditionsView, &protocol conformance descriptor for BankConnectTermsAndConditionsView);
        v107 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A590, &qword_238765AB8);
        v108 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D200, &qword_238765AC0);
        v109 = type metadata accessor for BankConnectPrivacyOnboardingView(255);
        v110 = sub_2385148B0(&unk_27DF0A5A0, type metadata accessor for BankConnectPrivacyOnboardingView, &protocol conformance descriptor for BankConnectPrivacyOnboardingView);
        v209 = v109;
        v210 = v110;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v112 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D210, &qword_238765AC8);
        v113 = sub_2384727E4();
        v209 = v112;
        v210 = v113;
        v114 = swift_getOpaqueTypeConformance2();
        v209 = v107;
        v210 = v108;
        v211 = OpaqueTypeConformance2;
        v212 = v114;
        swift_getOpaqueTypeConformance2();
        v115 = v177;
        sub_23875D1B0();
        sub_23843981C(v115, v194, &unk_27DF0A580, &qword_238765AB0);
        swift_storeEnumTagMultiPayload();
        sub_23847261C();
        sub_238472908();
        v116 = v195;
        sub_23875D1B0();
        sub_238439884(v115, &unk_27DF0A580, &qword_238765AB0);
        sub_23843981C(v116, v206, &unk_27DF0A570, &qword_238765AA8);
        swift_storeEnumTagMultiPayload();
        sub_238472590();
        sub_238472A94();
        sub_23875D1B0();
        sub_238439884(v116, &unk_27DF0A570, &qword_238765AA8);
        (*(v105 + 8))(v104, v106);
        v61 = type metadata accessor for PrivacyOnboardingStep;
        v62 = v175;
      }

      else
      {
        sub_23851512C(v49, v46, type metadata accessor for TermsAndConditionsStep);
        sub_23851118C(v46, v203, v43);
        sub_2385165C8(v43, v38, type metadata accessor for BankConnectTermsAndConditionsView);
        swift_storeEnumTagMultiPayload();
        sub_2385148B0(&unk_27DF0D1F0, type metadata accessor for BankConnectTermsAndConditionsView, &protocol conformance descriptor for BankConnectTermsAndConditionsView);
        v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A590, &qword_238765AB8);
        v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D200, &qword_238765AC0);
        v53 = type metadata accessor for BankConnectPrivacyOnboardingView(255);
        v54 = sub_2385148B0(&unk_27DF0A5A0, type metadata accessor for BankConnectPrivacyOnboardingView, &protocol conformance descriptor for BankConnectPrivacyOnboardingView);
        v209 = v53;
        v210 = v54;
        v55 = swift_getOpaqueTypeConformance2();
        v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D210, &qword_238765AC8);
        v57 = sub_2384727E4();
        v209 = v56;
        v210 = v57;
        v58 = swift_getOpaqueTypeConformance2();
        v209 = v51;
        v210 = v52;
        v211 = v55;
        v212 = v58;
        swift_getOpaqueTypeConformance2();
        v59 = v177;
        sub_23875D1B0();
        sub_23843981C(v59, v194, &unk_27DF0A580, &qword_238765AB0);
        swift_storeEnumTagMultiPayload();
        sub_23847261C();
        sub_238472908();
        v60 = v195;
        sub_23875D1B0();
        sub_238439884(v59, &unk_27DF0A580, &qword_238765AB0);
        sub_23843981C(v60, v206, &unk_27DF0A570, &qword_238765AA8);
        swift_storeEnumTagMultiPayload();
        sub_238472590();
        sub_238472A94();
        sub_23875D1B0();
        sub_238439884(v60, &unk_27DF0A570, &qword_238765AA8);
        sub_238515494(v43, type metadata accessor for BankConnectTermsAndConditionsView);
        v61 = type metadata accessor for TermsAndConditionsStep;
        v62 = v46;
      }

      return sub_238515494(v62, v61);
    }

    if (EnumCaseMultiPayload == 2)
    {
      v79 = v156;
      sub_23851512C(v49, v156, type metadata accessor for ReconnectAccountsStep);
      v80 = v157;
      sub_238511B88(v79, v203, v157);
      v81 = v160;
      v82 = v180;
      (*(v160 + 16))(v178, v80, v180);
      v83 = swift_storeEnumTagMultiPayload();
      v86 = sub_2384729EC(v83, v84, v85);
      v209 = &type metadata for BankConnectReconnectAccountsView;
      v210 = v86;
      v87 = swift_getOpaqueTypeConformance2();
      v90 = sub_238472A40(v87, v88, v89);
      v209 = &type metadata for BankConnectAppAuthorizationView;
      v210 = v90;
      swift_getOpaqueTypeConformance2();
      v91 = v181;
      sub_23875D1B0();
      sub_23843981C(v91, v194, &unk_27DF0A5D0, &qword_238765AD8);
      swift_storeEnumTagMultiPayload();
      sub_23847261C();
      sub_238472908();
      v92 = v195;
      sub_23875D1B0();
      sub_238439884(v91, &unk_27DF0A5D0, &qword_238765AD8);
      sub_23843981C(v92, v206, &unk_27DF0A570, &qword_238765AA8);
      swift_storeEnumTagMultiPayload();
      sub_238472590();
      sub_238472A94();
      sub_23875D1B0();
      sub_238439884(v92, &unk_27DF0A570, &qword_238765AA8);
      (*(v81 + 8))(v80, v82);
      v93 = type metadata accessor for ReconnectAccountsStep;
    }

    else
    {
      v79 = v163;
      sub_23851512C(v49, v163, type metadata accessor for AppAuthorizationStep);
      sub_2385165C8(v79, v23, type metadata accessor for AppAuthorizationStep);
      v129 = (*(v155 + 80) + 24) & ~*(v155 + 80);
      v130 = swift_allocObject();
      *(v130 + 16) = v203;
      sub_23851512C(v23, v130 + v129, type metadata accessor for AppAuthorizationStep);
      type metadata accessor for BankConnectAppAuthorizationViewModel();
      v131 = swift_allocObject();
      *(v131 + 16) = sub_238516948;
      *(v131 + 24) = v130;
      v209 = sub_2384AD60C;
      v210 = v131;
      LOBYTE(v211) = 0;
      v134 = sub_238472A40(v131, v132, v133);

      v135 = v165;
      sub_23875DE20();
      sub_2383FC164(v209, v210);
      v136 = v166;
      v137 = v186;
      (*(v166 + 16))(v178, v135, v186);
      v138 = swift_storeEnumTagMultiPayload();
      v141 = sub_2384729EC(v138, v139, v140);
      v209 = &type metadata for BankConnectReconnectAccountsView;
      v210 = v141;
      swift_getOpaqueTypeConformance2();
      v209 = &type metadata for BankConnectAppAuthorizationView;
      v210 = v134;
      swift_getOpaqueTypeConformance2();
      v142 = v181;
      sub_23875D1B0();
      sub_23843981C(v142, v194, &unk_27DF0A5D0, &qword_238765AD8);
      swift_storeEnumTagMultiPayload();
      sub_23847261C();
      sub_238472908();
      v143 = v195;
      sub_23875D1B0();
      sub_238439884(v142, &unk_27DF0A5D0, &qword_238765AD8);
      sub_23843981C(v143, v206, &unk_27DF0A570, &qword_238765AA8);
      swift_storeEnumTagMultiPayload();
      sub_238472590();
      sub_238472A94();
      sub_23875D1B0();
      sub_238439884(v143, &unk_27DF0A570, &qword_238765AA8);
      (*(v136 + 8))(v135, v137);
      v93 = type metadata accessor for AppAuthorizationStep;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      v145 = v173;
      sub_23851296C(v203, v173);
      v146 = v174;
      v147 = v191;
      (*(v174 + 16))(v188, v145, v191);
      swift_storeEnumTagMultiPayload();
      v148 = type metadata accessor for BankConnectAccountConnectionView(255);
      v149 = sub_2385148B0(&unk_27DF0D290, type metadata accessor for BankConnectAccountConnectionView, &protocol conformance descriptor for BankConnectAccountConnectionView);
      v209 = v148;
      v210 = v149;
      swift_getOpaqueTypeConformance2();
      v150 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(255);
      v151 = sub_2385148B0(qword_27DF0A630, type metadata accessor for BankConnectOfflineLabPrivacyConsentView, &protocol conformance descriptor for BankConnectOfflineLabPrivacyConsentView);
      v209 = v150;
      v210 = v151;
      swift_getOpaqueTypeConformance2();
      v152 = v190;
      sub_23875D1B0();
      sub_23843981C(v152, v199, &unk_27DF0A620, &unk_238765AF0);
      swift_storeEnumTagMultiPayload();
      sub_238472B20();
      sub_238472C80();
      v153 = v200;
      sub_23875D1B0();
      sub_238439884(v152, &unk_27DF0A620, &unk_238765AF0);
      sub_23843981C(v153, v206, &unk_27DF0A5F0, &qword_238765AE0);
      swift_storeEnumTagMultiPayload();
      sub_238472590();
      sub_238472A94();
      sub_23875D1B0();
      sub_238439884(v153, &unk_27DF0A5F0, &qword_238765AE0);
      return (*(v146 + 8))(v145, v147);
    }

    v79 = v170;
    sub_23851512C(v49, v170, type metadata accessor for AccountConnectionStep);
    v94 = v171;
    sub_2385122A0(v79, v203, v171);
    v95 = v172;
    v96 = v189;
    (*(v172 + 16))(v188, v94, v189);
    swift_storeEnumTagMultiPayload();
    v97 = type metadata accessor for BankConnectAccountConnectionView(255);
    v98 = sub_2385148B0(&unk_27DF0D290, type metadata accessor for BankConnectAccountConnectionView, &protocol conformance descriptor for BankConnectAccountConnectionView);
    v209 = v97;
    v210 = v98;
    swift_getOpaqueTypeConformance2();
    v99 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(255);
    v100 = sub_2385148B0(qword_27DF0A630, type metadata accessor for BankConnectOfflineLabPrivacyConsentView, &protocol conformance descriptor for BankConnectOfflineLabPrivacyConsentView);
    v209 = v99;
    v210 = v100;
    swift_getOpaqueTypeConformance2();
    v101 = v190;
    sub_23875D1B0();
    sub_23843981C(v101, v199, &unk_27DF0A620, &unk_238765AF0);
    swift_storeEnumTagMultiPayload();
    sub_238472B20();
    sub_238472C80();
    v102 = v200;
    sub_23875D1B0();
    sub_238439884(v101, &unk_27DF0A620, &unk_238765AF0);
    sub_23843981C(v102, v206, &unk_27DF0A5F0, &qword_238765AE0);
    swift_storeEnumTagMultiPayload();
    sub_238472590();
    sub_238472A94();
    sub_23875D1B0();
    sub_238439884(v102, &unk_27DF0A5F0, &qword_238765AE0);
    (*(v95 + 8))(v94, v96);
    v93 = type metadata accessor for AccountConnectionStep;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v79 = v167;
    sub_23851512C(v49, v167, type metadata accessor for ExtensionAuthorizationStep);
    v117 = v168;
    sub_238512004(v79, v203);
    v118 = v169;
    v119 = v187;
    (*(v169 + 16))(v183, v117, v187);
    v120 = swift_storeEnumTagMultiPayload();
    v123 = sub_238472BD8(v120, v121, v122);
    v126 = sub_238472C2C(v123, v124, v125);
    v209 = &type metadata for BankConnectExtensionAuthorizationView;
    v210 = v126;
    swift_getOpaqueTypeConformance2();
    v127 = v185;
    sub_23875D1B0();
    sub_23843981C(v127, v199, &unk_27DF0A600, &qword_238765AE8);
    swift_storeEnumTagMultiPayload();
    sub_238472B20();
    sub_238472C80();
    v128 = v200;
    sub_23875D1B0();
    sub_238439884(v127, &unk_27DF0A600, &qword_238765AE8);
    sub_23843981C(v128, v206, &unk_27DF0A5F0, &qword_238765AE0);
    swift_storeEnumTagMultiPayload();
    sub_238472590();
    sub_238472A94();
    sub_23875D1B0();
    sub_238439884(v128, &unk_27DF0A5F0, &qword_238765AE0);
    (*(v118 + 8))(v117, v119);
    v93 = type metadata accessor for ExtensionAuthorizationStep;
LABEL_15:
    v61 = v93;
    v62 = v79;
    return sub_238515494(v62, v61);
  }

  v63 = v49;
  v64 = v164;
  sub_23851512C(v63, v164, type metadata accessor for WebAuthorizationStep);
  v65 = v159;
  sub_2385165C8(v64, v159, type metadata accessor for WebAuthorizationStep);
  v66 = (*(v158 + 80) + 24) & ~*(v158 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = v203;
  sub_23851512C(v65, v67 + v66, type metadata accessor for WebAuthorizationStep);
  type metadata accessor for BankConnectWebAuthorizationViewModel();
  v68 = swift_allocObject();
  *(v68 + 16) = sub_2385168E4;
  *(v68 + 24) = v67;
  v69 = v183;
  *v183 = sub_2384AD60C;
  v69[1] = v68;
  *(v69 + 16) = 0;
  v70 = swift_storeEnumTagMultiPayload();
  v73 = sub_238472BD8(v70, v71, v72);
  v76 = sub_238472C2C(v73, v74, v75);

  v209 = &type metadata for BankConnectExtensionAuthorizationView;
  v210 = v76;
  swift_getOpaqueTypeConformance2();
  v77 = v185;
  sub_23875D1B0();
  sub_23843981C(v77, v199, &unk_27DF0A600, &qword_238765AE8);
  swift_storeEnumTagMultiPayload();
  sub_238472B20();
  sub_238472C80();
  v78 = v200;
  sub_23875D1B0();
  sub_238439884(v77, &unk_27DF0A600, &qword_238765AE8);
  sub_23843981C(v78, v206, &unk_27DF0A5F0, &qword_238765AE0);
  swift_storeEnumTagMultiPayload();
  sub_238472590();
  sub_238472A94();
  sub_23875D1B0();

  sub_238439884(v78, &unk_27DF0A5F0, &qword_238765AE0);
  v61 = type metadata accessor for WebAuthorizationStep;
  v62 = v64;
  return sub_238515494(v62, v61);
}

uint64_t sub_238502584(uint64_t a1)
{
  sub_23875F700();
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
  sub_23875E960();
  v3 = *(v1 + *(a1 + 20));
  sub_23875F720();
  if (v3)
  {
    v4 = v3;
    sub_23875F1C0();
  }

  sub_23875F720();
  return sub_23875F760();
}

uint64_t sub_238502668(uint64_t a1, uint64_t a2)
{
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
  sub_23875E960();
  v4 = *(v2 + *(a2 + 20));
  sub_23875F720();
  if (v4)
  {
    v5 = v4;
    sub_23875F1C0();
  }

  return sub_23875F720();
}

uint64_t sub_23850273C(uint64_t a1, uint64_t a2)
{
  sub_23875F700();
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
  sub_23875E960();
  v4 = *(v2 + *(a2 + 20));
  sub_23875F720();
  if (v4)
  {
    v5 = v4;
    sub_23875F1C0();
  }

  sub_23875F720();
  return sub_23875F760();
}

uint64_t sub_238502820(uint64_t a1)
{
  sub_23875F700();
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
  sub_23875E960();
  v3 = *(v1 + *(a1 + 20));
  sub_23875F720();
  if (v3)
  {
    v4 = v3;
    sub_23875F1C0();
  }

  return sub_23875F760();
}

void sub_2385028F0(uint64_t a1, uint64_t a2)
{
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
  sub_23875E960();
  v4 = *(v2 + *(a2 + 20));
  if (v4)
  {
    sub_23875F720();
    v5 = v4;
    sub_23875F1C0();
  }

  else
  {
    sub_23875F720();
  }
}

uint64_t sub_2385029D8(uint64_t a1, uint64_t a2)
{
  sub_23875F700();
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
  sub_23875E960();
  v4 = *(v2 + *(a2 + 20));
  sub_23875F720();
  if (v4)
  {
    v5 = v4;
    sub_23875F1C0();
  }

  return sub_23875F760();
}

uint64_t sub_238502AD4()
{
  sub_23875F700();
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
  sub_23875E960();
  v1 = *(v0 + *(type metadata accessor for AppAuthorizationStep(0) + 20));
  sub_23875F720();
  if (v1)
  {
    v2 = v1;
    sub_23875F1C0();
  }

  sub_23875A9A0();
  sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_238502C0C(uint64_t a1, uint64_t a2)
{
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
  sub_23875E960();
  v4 = *(v2 + *(a2 + 20));
  sub_23875F720();
  if (v4)
  {
    v5 = v4;
    sub_23875F1C0();
  }

  sub_23875A9A0();
  sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  return sub_23875E960();
}

uint64_t sub_238502D28(uint64_t a1, uint64_t a2)
{
  sub_23875F700();
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
  sub_23875E960();
  v4 = *(v2 + *(a2 + 20));
  sub_23875F720();
  if (v4)
  {
    v5 = v4;
    sub_23875F1C0();
  }

  sub_23875A9A0();
  sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_238502E94(uint64_t a1)
{
  sub_23875F700();
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
  sub_23875E960();
  v3 = *(v1 + *(a1 + 20));
  sub_23875F720();
  if (v3)
  {
    v4 = v3;
    sub_23875F1C0();
  }

  sub_23875A9A0();
  sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  type metadata accessor for BankConnectWebAuthorizationFlow(0);
  sub_23875B940();
  sub_2385148B0(&qword_27DF0D190, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_238503020(uint64_t a1, uint64_t a2)
{
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
  sub_23875E960();
  v4 = *(v2 + *(a2 + 20));
  sub_23875F720();
  if (v4)
  {
    v5 = v4;
    sub_23875F1C0();
  }

  sub_23875A9A0();
  sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  type metadata accessor for BankConnectWebAuthorizationFlow(0);
  sub_23875B940();
  sub_2385148B0(&qword_27DF0D190, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_23875E960();
}

uint64_t sub_23850319C(uint64_t a1, uint64_t a2)
{
  sub_23875F700();
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
  sub_23875E960();
  v4 = *(v2 + *(a2 + 20));
  sub_23875F720();
  if (v4)
  {
    v5 = v4;
    sub_23875F1C0();
  }

  sub_23875A9A0();
  sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  type metadata accessor for BankConnectWebAuthorizationFlow(0);
  sub_23875B940();
  sub_2385148B0(&qword_27DF0D190, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_23875E960();
  return sub_23875F760();
}

void sub_238503328(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23875C0A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
  sub_23875E960();
  v8 = type metadata accessor for ExtensionAuthorizationStep(0);
  v9 = *(v1 + *(v8 + 20));
  sub_23875F720();
  if (v9)
  {
    v10 = v9;
    sub_23875F1C0();
  }

  v11 = v2 + *(v8 + 24);
  sub_23875A9A0();
  sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  v12 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  __swift_project_boxed_opaque_existential_1((v11 + *(v12 + 20)), *(v11 + *(v12 + 20) + 24));
  sub_2387591C0();
  sub_2385148B0(&qword_27DF0D188, MEMORY[0x277CC5DC0], MEMORY[0x277CC5DC8]);
  sub_23875E960();
  (*(v5 + 8))(v7, v4);
  sub_23872B17C(a1, *(v11 + *(v12 + 24)));
}

uint64_t sub_2385035F8(uint64_t a1)
{
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
  sub_23875E960();
  v2 = type metadata accessor for AccountConnectionStep(0);
  sub_23875EB30();
  v3 = *(v1 + *(v2 + 24));
  sub_23875F720();
  if (v3)
  {
    v4 = v3;
    sub_23875F1C0();
  }

  return sub_23875F720();
}

unint64_t sub_238503720()
{
  v35 = type metadata accessor for AccountConnectionStep(0);
  MEMORY[0x28223BE20](v35);
  v2 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ExtensionAuthorizationStep(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebAuthorizationStep(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppAuthorizationStep(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReconnectAccountsStep(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PrivacyOnboardingStep(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TermsAndConditionsStep(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385165C8(v0, v23, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_23851512C(v23, v2, type metadata accessor for AccountConnectionStep);
        v36 = 0;
        v37 = 0xE000000000000000;
        sub_23875F470();
        MEMORY[0x23EE63650](0xD00000000000002BLL, 0x80000002387898B0);
        v29 = sub_238757B40();
        MEMORY[0x23EE63650](v29);

        MEMORY[0x23EE63650](0xD000000000000011, 0x80000002387898E0);
        MEMORY[0x23EE63650](*&v2[*(v35 + 20)], *&v2[*(v35 + 20) + 8]);
        v26 = v36;
        sub_238515494(v2, type metadata accessor for AccountConnectionStep);
      }

      else
      {
        return 0xD000000000000010;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_23851512C(v23, v8, type metadata accessor for WebAuthorizationStep);
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_23875F470();

      v36 = 0xD00000000000002ALL;
      v37 = 0x8000000238789940;
      v27 = sub_238757B40();
      MEMORY[0x23EE63650](v27);

      v26 = v36;
      sub_238515494(v8, type metadata accessor for WebAuthorizationStep);
    }

    else
    {
      sub_23851512C(v23, v5, type metadata accessor for ExtensionAuthorizationStep);
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_23875F470();

      v36 = 0xD000000000000030;
      v37 = 0x8000000238789900;
      v31 = sub_238757B40();
      MEMORY[0x23EE63650](v31);

      v26 = v36;
      sub_238515494(v5, type metadata accessor for ExtensionAuthorizationStep);
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23851512C(v23, v14, type metadata accessor for ReconnectAccountsStep);
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_23875F470();

      v36 = 0xD00000000000002BLL;
      v37 = 0x80000002387899A0;
      v28 = sub_238757B40();
      MEMORY[0x23EE63650](v28);

      v26 = v36;
      sub_238515494(v14, type metadata accessor for ReconnectAccountsStep);
    }

    else
    {
      sub_23851512C(v23, v11, type metadata accessor for AppAuthorizationStep);
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_23875F470();

      v36 = 0xD00000000000002ALL;
      v37 = 0x8000000238789970;
      v32 = sub_238757B40();
      MEMORY[0x23EE63650](v32);

      v26 = v36;
      sub_238515494(v11, type metadata accessor for AppAuthorizationStep);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23851512C(v23, v17, type metadata accessor for PrivacyOnboardingStep);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_23875F470();

    v36 = 0xD00000000000002BLL;
    v37 = 0x80000002387899D0;
    v30 = sub_238757B40();
    MEMORY[0x23EE63650](v30);

    v26 = v36;
    sub_238515494(v17, type metadata accessor for PrivacyOnboardingStep);
  }

  else
  {
    sub_23851512C(v23, v20, type metadata accessor for TermsAndConditionsStep);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_23875F470();

    v36 = 0xD00000000000002DLL;
    v37 = 0x8000000238789A00;
    v25 = sub_238757B40();
    MEMORY[0x23EE63650](v25);

    v26 = v36;
    sub_238515494(v20, type metadata accessor for TermsAndConditionsStep);
  }

  return v26;
}

uint64_t sub_238503E84(uint64_t a1)
{
  v60 = a1;
  v54 = type metadata accessor for AccountConnectionStep(0);
  MEMORY[0x28223BE20](v54);
  v53 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23875C0A0();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x28223BE20](v2);
  v56 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for ExtensionAuthorizationStep(0);
  MEMORY[0x28223BE20](v51);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for WebAuthorizationStep(0);
  MEMORY[0x28223BE20](v50);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppAuthorizationStep(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReconnectAccountsStep(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrivacyOnboardingStep(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TermsAndConditionsStep(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385165C8(v59, v20, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return MEMORY[0x23EE641F0](7);
      }

      v14 = v53;
      sub_23851512C(v20, v53, type metadata accessor for AccountConnectionStep);
      MEMORY[0x23EE641F0](6);
      sub_238757B60();
      sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
      sub_23875E960();
      v29 = v54;
      sub_23875EB30();
      v30 = *&v14[*(v29 + 24)];
      sub_23875F720();
      if (v30)
      {
        v31 = v30;
        sub_23875F1C0();
      }

      sub_23875F720();
      v44 = type metadata accessor for AccountConnectionStep;
LABEL_29:
      v41 = v44;
      v42 = v14;
      return sub_238515494(v42, v41);
    }

    v24 = v60;
    if (EnumCaseMultiPayload != 4)
    {
      v34 = v55;
      sub_23851512C(v20, v55, type metadata accessor for ExtensionAuthorizationStep);
      MEMORY[0x23EE641F0](5);
      sub_238757B60();
      sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
      sub_23875E960();
      v35 = v51;
      v36 = *(v34 + *(v51 + 20));
      sub_23875F720();
      if (v36)
      {
        v37 = v36;
        sub_23875F1C0();
      }

      v45 = v34 + *(v35 + 24);
      sub_23875A9A0();
      sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
      sub_23875E960();
      v46 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
      __swift_project_boxed_opaque_existential_1((v45 + *(v46 + 20)), *(v45 + *(v46 + 20) + 24));
      v47 = v56;
      sub_2387591C0();
      sub_2385148B0(&qword_27DF0D188, MEMORY[0x277CC5DC0], MEMORY[0x277CC5DC8]);
      v48 = v58;
      sub_23875E960();
      (*(v57 + 8))(v47, v48);
      sub_23872B17C(v24, *(v45 + *(v46 + 24)));
      v41 = type metadata accessor for ExtensionAuthorizationStep;
      v42 = v34;
      return sub_238515494(v42, v41);
    }

    v11 = v52;
    sub_23851512C(v20, v52, type metadata accessor for WebAuthorizationStep);
    MEMORY[0x23EE641F0](4);
    sub_238757B60();
    sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
    sub_23875E960();
    v25 = *&v11[*(v50 + 20)];
    sub_23875F720();
    if (v25)
    {
      v26 = v25;
      sub_23875F1C0();
    }

    sub_23875A9A0();
    sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
    sub_23875E960();
    type metadata accessor for BankConnectWebAuthorizationFlow(0);
    sub_23875B940();
    sub_2385148B0(&qword_27DF0D190, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_23875E960();
    v43 = type metadata accessor for WebAuthorizationStep;
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_23851512C(v20, v17, type metadata accessor for TermsAndConditionsStep);
        MEMORY[0x23EE641F0](0);
        sub_238757B60();
        sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
        sub_23875E960();
        v22 = *&v17[*(v15 + 20)];
        sub_23875F720();
        if (v22)
        {
          v23 = v22;
          sub_23875F1C0();
        }

        v41 = type metadata accessor for TermsAndConditionsStep;
        v42 = v17;
        return sub_238515494(v42, v41);
      }

      sub_23851512C(v20, v14, type metadata accessor for PrivacyOnboardingStep);
      MEMORY[0x23EE641F0](1);
      sub_238757B60();
      sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
      sub_23875E960();
      v32 = *&v14[*(v12 + 20)];
      sub_23875F720();
      if (v32)
      {
        v33 = v32;
        sub_23875F1C0();
      }

      sub_23875F720();
      v44 = type metadata accessor for PrivacyOnboardingStep;
      goto LABEL_29;
    }

    if (EnumCaseMultiPayload != 2)
    {
      sub_23851512C(v20, v8, type metadata accessor for AppAuthorizationStep);
      MEMORY[0x23EE641F0](3);
      sub_238757B60();
      sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
      sub_23875E960();
      v38 = *&v8[*(v6 + 20)];
      sub_23875F720();
      if (v38)
      {
        v39 = v38;
        sub_23875F1C0();
      }

      sub_23875A9A0();
      sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
      sub_23875E960();
      v41 = type metadata accessor for AppAuthorizationStep;
      v42 = v8;
      return sub_238515494(v42, v41);
    }

    sub_23851512C(v20, v11, type metadata accessor for ReconnectAccountsStep);
    MEMORY[0x23EE641F0](2);
    sub_238757B60();
    sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80], MEMORY[0x277CC6B88]);
    sub_23875E960();
    v27 = *&v11[*(v9 + 20)];
    sub_23875F720();
    if (v27)
    {
      v28 = v27;
      sub_23875F1C0();
    }

    v43 = type metadata accessor for ReconnectAccountsStep;
  }

  v41 = v43;
  v42 = v11;
  return sub_238515494(v42, v41);
}

uint64_t sub_238504A90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_23875F700();
  a3(v5);
  return sub_23875F760();
}

uint64_t sub_238504AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_23875F700();
  a4(v6);
  return sub_23875F760();
}

uint64_t BankConnectAuthorizationFlowType.hashValue.getter()
{
  v1 = *v0;
  sub_23875F700();
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

unint64_t sub_238504BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0CF50;
  if (!qword_27DF0CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CF50);
  }

  return result;
}

uint64_t sub_238504C6C(uint64_t a1)
{
  v1 = type metadata accessor for BankConnectAuthorizationError(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_238504CC4(uint64_t a1)
{
  result = sub_238758BB0();
  if (v2 <= 0x3F)
  {
    result = sub_23875B940();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_238504D50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_238758BB0() - 8) + 64);
  v7 = *(*(sub_23875B940() - 8) + 64);
  if (v7 <= v6)
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_27;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 252) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v13 < 2)
    {
LABEL_27:
      v15 = *(a1 + v8);
      if (v15 >= 4)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_27;
  }

LABEL_16:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 253;
}

void sub_238504ED0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_238758BB0() - 8) + 64);
  v9 = *(*(sub_23875B940() - 8) + 64);
  if (v9 <= v8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  if (*(v10 + 64) > v9)
  {
    v9 = *(v10 + 64);
  }

  v11 = v9 + 1;
  if (a3 < 0xFD)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 252) >> (8 * v11)) + 1;
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

  if (a2 > 0xFC)
  {
    v13 = a2 - 253;
    if (v11 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v9 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_41:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v9] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_26;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t sub_2385050F8()
{
  v0 = sub_23875C1E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  swift_getKeyPath(asc_23876CE40, v9);
  swift_getKeyPath(byte_23876CFB8);
  sub_23875C2D0();

  v12 = *(v29 + 16);
  if (!v12)
  {
  }

  sub_2385165C8(v29 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v12 - 1), v11, type metadata accessor for BankConnectAuthorizationNavigationDestination);

  sub_23875C120();
  sub_2385165C8(v11, v7, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  v13 = sub_23875C1B0();
  v14 = sub_23875F000();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v0;
    v29 = v16;
    v17 = v16;
    *v15 = 136315138;
    v18 = v1;
    v19 = sub_238503720();
    v21 = v20;
    v27 = type metadata accessor for BankConnectAuthorizationNavigationDestination;
    sub_238515494(v7, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    v22 = sub_2384615AC(v19, v21, &v29);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_2383F8000, v13, v14, "Bank connect authorization flow navigating to: %s.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x23EE64DF0](v17, -1, -1);
    MEMORY[0x23EE64DF0](v15, -1, -1);

    (*(v18 + 8))(v3, v28);
    v23 = v11;
    v24 = v27;
  }

  else
  {

    sub_238515494(v7, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    (*(v1 + 8))(v3, v0);
    v23 = v11;
    v24 = type metadata accessor for BankConnectAuthorizationNavigationDestination;
  }

  return sub_238515494(v23, v24);
}

uint64_t sub_238505464()
{
  swift_getKeyPath(asc_23876CE40);
  swift_getKeyPath(byte_23876CFB8);
  sub_23875C2D0();

  return v1;
}

double sub_238505500(const char *a1, const char *a2)
{
  swift_getKeyPath(a1);
  swift_getKeyPath(a2);
  sub_23875C2D0();

  return result;
}

uint64_t sub_238505570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  swift_getKeyPath(byte_23876CE78, v3);
  swift_getKeyPath(byte_23876CEA0);
  sub_23843981C(a1, v5, &unk_27DF0B540, &qword_238765900);

  sub_23875C2E0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didCompleteFlowItem];
    swift_unknownObjectRelease();
  }

  return sub_238439884(a1, &unk_27DF0B540, &qword_238765900);
}

void (**sub_238505694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>))(char *, uint64_t, uint64_t)
{
  v4 = sub_23875AB40();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B410, &qword_238768120);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_23875A9A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  sub_23843981C(a1 + v14[6], v9, &unk_27DF0B410, &qword_238768120);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_238439884(v9, &unk_27DF0B410, &qword_238768120);
    v15 = v28;
    v28[2](v6, a1 + v14[7], v4);
    v16 = (v15[11])(v6, v4);
    if (v16 == *MEMORY[0x277CC8268] || v16 == *MEMORY[0x277CC8258])
    {
      (v15[12])(v6, v4);
      v18 = sub_23875BCB0();
      (*(*(v18 - 8) + 8))(v6, v18);
      v19 = sub_238757B60();
      (*(*(v19 - 8) + 16))(a2, a1, v19);
      v28 = *(a1 + v14[5]);
      v20 = type metadata accessor for PrivacyOnboardingStep(0);
      *(a2 + *(v20 + 20)) = v28;
      *(a2 + *(v20 + 24)) = 1;
    }

    else
    {
      if (v16 != *MEMORY[0x277CC8260])
      {
        result = sub_23875F520();
        __break(1u);
        return result;
      }

      v24 = sub_238757B60();
      (*(*(v24 - 8) + 16))(a2, a1, v24);
      v28 = *(a1 + v14[5]);
      *(a2 + *(type metadata accessor for TermsAndConditionsStep(0) + 20)) = v28;
    }
  }

  else
  {
    v21 = *(v11 + 32);
    v21(v13, v9, v10);
    v22 = sub_238757B60();
    (*(*(v22 - 8) + 16))(a2, a1, v22);
    v28 = *(a1 + v14[5]);
    v23 = type metadata accessor for AppAuthorizationStep(0);
    v21((a2 + *(v23 + 24)), v13, v10);
    *(a2 + *(v23 + 20)) = v28;
  }

  type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  v25 = v28;

  return v25;
}

unint64_t sub_238505B40@<X0>(BOOL *a4@<X8>)
{
  sub_2387582B0();
  result = sub_2387582A0();
  if (!v4)
  {
    if (result >> 62)
    {
      v7 = sub_23875F3A0();
    }

    else
    {
      v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *a4 = v7 != 0;
  }

  return result;
}

void *sub_238505BF4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BankConnectAuthorizationFlowResult(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BankConnectAuthorizationError(0);
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_23875C1E0();
  v10 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875C120();
  sub_2385165C8(a1, v9, type metadata accessor for BankConnectAuthorizationError);
  v13 = sub_23875C1B0();
  v14 = sub_23875EFE0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26 = v2;
    v18 = v17;
    *v16 = 138412290;
    sub_2385148B0(&qword_27DF0AD68, type metadata accessor for BankConnectAuthorizationError, &protocol conformance descriptor for BankConnectAuthorizationError);
    swift_allocError();
    sub_2385165C8(v9, v19, type metadata accessor for BankConnectAuthorizationError);
    v20 = _swift_stdlib_bridgeErrorToNSError();
    sub_238515494(v9, type metadata accessor for BankConnectAuthorizationError);
    *(v16 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_2383F8000, v13, v14, "Authorization flow has failed with error %@", v16, 0xCu);
    sub_238439884(v18, &qword_27DF09930, &unk_2387638C0);
    v21 = v18;
    v2 = v26;
    MEMORY[0x23EE64DF0](v21, -1, -1);
    v22 = v16;
    a1 = v25;
    MEMORY[0x23EE64DF0](v22, -1, -1);
  }

  else
  {

    sub_238515494(v9, type metadata accessor for BankConnectAuthorizationError);
  }

  (*(v10 + 8))(v12, v27);
  sub_23850F854();
  v23 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
  sub_2385165C8(a1, v6, type metadata accessor for BankConnectAuthorizationError);
  (*(v28 + 56))(v6, 0, 2, v7);

  v23(v6);

  sub_238515494(v6, type metadata accessor for BankConnectAuthorizationFlowResult);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didCompleteFlowItem];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_238505FEC()
{
  v1 = type metadata accessor for BankConnectAuthorizationFlowResult(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875A820();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = v0;
  if (*(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowType))
  {
    v8 = MEMORY[0x277D38550];
  }

  else
  {
    v8 = MEMORY[0x277D38560];
  }

  v9 = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v11 = sub_23867B330(v7);
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  *(inited + 40) = v11;
  *(inited + 48) = v13;
  v14 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_238763300;
  v16 = *MEMORY[0x277D383D8];
  *(v15 + 32) = *MEMORY[0x277D383D8];
  *(v15 + 40) = sub_23875EA80();
  *(v15 + 48) = v17;
  v18 = *MEMORY[0x277D38390];
  *(v15 + 56) = *MEMORY[0x277D38390];
  *(v15 + 64) = 0x6C65636E6163;
  v19 = *MEMORY[0x277D384B8];
  *(v15 + 72) = 0xE600000000000000;
  *(v15 + 80) = v19;
  strcpy((v15 + 88), "bankLinkStart");
  *(v15 + 102) = -4864;
  v20 = v16;
  v21 = v18;
  v22 = v19;
  v23 = sub_23854B138(v15);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v23;
  sub_2385C33E4(v14, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v31);

  v25 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385148B0(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v26 = sub_23875E910();

  [v25 subject:v9 sendEvent:v26];

  v27 = *(v30[0] + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
  v28 = type metadata accessor for BankConnectAuthorizationError(0);
  (*(*(v28 - 8) + 56))(v3, 2, 2, v28);

  v27(v3);

  sub_238515494(v3, type metadata accessor for BankConnectAuthorizationFlowResult);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didCompleteFlowItem];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_238506458(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for BankConnectAuthorizationFlowResult(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 2)
  {
    v22 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
    v23 = type metadata accessor for BankConnectAuthorizationError(0);
    (*(*(v23 - 8) + 56))(v7, 2, 2, v23);

    v22(v7);

    sub_238515494(v7, type metadata accessor for BankConnectAuthorizationFlowResult);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result didCompleteFlowItem];
      return swift_unknownObjectRelease();
    }
  }

  else if (*a2 > 1uLL)
  {
    v24 = sub_238757B60();
    (*(*(v24 - 8) + 16))(v13, a1, v24);
    v25 = type metadata accessor for BankConnectAuthorizationError(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v25 - 8) + 56))(v13, 0, 1, v25);
    swift_getKeyPath(byte_23876CE78);
    swift_getKeyPath(byte_23876CEA0);
    sub_23843981C(v13, v10, &unk_27DF0B540, &qword_238765900);

    sub_23875C2E0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong didCompleteFlowItem];
      swift_unknownObjectRelease();
    }

    return sub_238439884(v13, &unk_27DF0B540, &qword_238765900);
  }

  else
  {
    v17 = sub_238757B60();
    (*(*(v17 - 8) + 16))(v16, a1, v17);
    v18 = *(a1 + *(type metadata accessor for TermsAndConditionsStep(0) + 20));
    v19 = type metadata accessor for PrivacyOnboardingStep(0);
    *&v16[*(v19 + 20)] = v18;
    v16[*(v19 + 24)] = 0;
    swift_storeEnumTagMultiPayload();
    v20 = v18;
    sub_23850F640(v16);
    return sub_238515494(v16, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  }

  return result;
}

uint64_t sub_23850683C(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v35 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  MEMORY[0x28223BE20](v35);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BankConnectAuthorizationFlow(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D3B8, &unk_23876D070);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  v20 = type metadata accessor for BankConnectPrivacyOnboardingResult(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385165C8(v37, v22, type metadata accessor for BankConnectPrivacyOnboardingResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_238515494(v22, type metadata accessor for BankConnectPrivacyOnboardingResult);
    v23 = sub_238757B60();
    (*(*(v23 - 8) + 16))(v8, a1, v23);
    v24 = type metadata accessor for BankConnectAuthorizationError(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
    swift_getKeyPath(byte_23876CE78);
    swift_getKeyPath(byte_23876CEA0);
    sub_23843981C(v8, v5, &unk_27DF0B540, &qword_238765900);

    sub_23875C2E0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong didCompleteFlowItem];
      swift_unknownObjectRelease();
    }

    v26 = &unk_27DF0B540;
    v27 = &qword_238765900;
    v28 = v8;
  }

  else
  {
    sub_2384396E4(v22, v19, &qword_27DF0D3B8, &unk_23876D070);
    sub_23843981C(v19, v16, &qword_27DF0D3B8, &unk_23876D070);
    if ((*(v11 + 48))(v16, 1, v10) == 1)
    {
      sub_238439884(v16, &qword_27DF0D3B8, &unk_23876D070);
      v29 = sub_238757B60();
      v30 = v36;
      (*(*(v29 - 8) + 16))(v36, a1, v29);
      v31 = *(a1 + *(type metadata accessor for PrivacyOnboardingStep(0) + 20));
      *(v30 + *(type metadata accessor for ReconnectAccountsStep(0) + 20)) = v31;
      swift_storeEnumTagMultiPayload();
      v32 = v31;
      sub_23850F640(v30);
      sub_238515494(v30, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      v28 = v19;
      v26 = &qword_27DF0D3B8;
      v27 = &unk_23876D070;
    }

    else
    {
      sub_23851512C(v16, v13, type metadata accessor for BankConnectAuthorizationFlow);
      v33 = type metadata accessor for PrivacyOnboardingStep(0);
      sub_2385070A0(a1, *(a1 + *(v33 + 20)), v13);
      sub_238515494(v13, type metadata accessor for BankConnectAuthorizationFlow);
      v26 = &qword_27DF0D3B8;
      v27 = &unk_23876D070;
      v28 = v19;
    }
  }

  return sub_238439884(v28, v26, v27);
}

uint64_t sub_238506D88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for BankConnectAuthorizationFlow(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BankConnectReconnectAccountsResult(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385165C8(a2, v15, type metadata accessor for BankConnectReconnectAccountsResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_238515494(v15, type metadata accessor for BankConnectReconnectAccountsResult);
    v16 = sub_238757B60();
    (*(*(v16 - 8) + 16))(v9, a1, v16);
    v17 = type metadata accessor for BankConnectAuthorizationError(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
    swift_getKeyPath(byte_23876CE78);
    swift_getKeyPath(byte_23876CEA0);
    sub_23843981C(v9, v6, &unk_27DF0B540, &qword_238765900);

    sub_23875C2E0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong didCompleteFlowItem];
      swift_unknownObjectRelease();
    }

    return sub_238439884(v9, &unk_27DF0B540, &qword_238765900);
  }

  else
  {
    sub_23851512C(v15, v12, type metadata accessor for BankConnectAuthorizationFlow);
    v20 = type metadata accessor for ReconnectAccountsStep(0);
    sub_2385070A0(a1, *(a1 + *(v20 + 20)), v12);
    return sub_238515494(v12, type metadata accessor for BankConnectAuthorizationFlow);
  }
}

uint64_t sub_2385070A0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BankConnectWebAuthorizationFlow(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BankConnectAppAuthorizationFlow(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BankConnectAuthorizationFlow(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385165C8(a3, v20, type metadata accessor for BankConnectAuthorizationFlow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23851512C(v20, v11, type metadata accessor for BankConnectWebAuthorizationFlow);
      v22 = sub_238757B60();
      (*(*(v22 - 8) + 16))(v14, a1, v22);
      v23 = type metadata accessor for WebAuthorizationStep(0);
      sub_2385165C8(v11, &v14[*(v23 + 24)], type metadata accessor for BankConnectWebAuthorizationFlow);
      *&v14[*(v23 + 20)] = a2;
      swift_storeEnumTagMultiPayload();
      v24 = a2;
      sub_23850F640(v14);
      sub_238515494(v14, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      v25 = type metadata accessor for BankConnectWebAuthorizationFlow;
      v26 = v11;
    }

    else
    {
      sub_23851512C(v20, v8, type metadata accessor for BankConnectExtensionAuthorizationFlow);
      v30 = sub_238757B60();
      (*(*(v30 - 8) + 16))(v14, a1, v30);
      v31 = type metadata accessor for ExtensionAuthorizationStep(0);
      sub_2385165C8(v8, &v14[*(v31 + 24)], type metadata accessor for BankConnectExtensionAuthorizationFlow);
      *&v14[*(v31 + 20)] = a2;
      swift_storeEnumTagMultiPayload();
      v32 = a2;
      sub_23850F640(v14);
      sub_238515494(v14, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      v25 = type metadata accessor for BankConnectExtensionAuthorizationFlow;
      v26 = v8;
    }
  }

  else
  {
    sub_23851512C(v20, v17, type metadata accessor for BankConnectAppAuthorizationFlow);
    v27 = sub_238757B60();
    (*(*(v27 - 8) + 16))(v14, a1, v27);
    v28 = type metadata accessor for AppAuthorizationStep(0);
    sub_2385165C8(v17, &v14[*(v28 + 24)], type metadata accessor for BankConnectAppAuthorizationFlow);
    *&v14[*(v28 + 20)] = a2;
    swift_storeEnumTagMultiPayload();
    v29 = a2;
    sub_23850F640(v14);
    sub_238515494(v14, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    v25 = type metadata accessor for BankConnectAppAuthorizationFlow;
    v26 = v17;
  }

  return sub_238515494(v26, v25);
}

void sub_238507554(uint64_t a1, void *a2, uint64_t a3)
{
  v89 = a3;
  v86 = a2;
  v88 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v79 = &v75 - v6;
  v7 = sub_23875ABA0();
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  MEMORY[0x28223BE20](v84);
  v85 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BankConnectAuthorizationFlowResult(0);
  MEMORY[0x28223BE20](v10 - 8);
  v87 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_23875AB40();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v75 - v14;
  v83 = sub_238758BB0();
  v16 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23875B940();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D360, &unk_23876BB40);
  MEMORY[0x28223BE20](v23);
  v25 = (&v75 - v24);
  sub_23843981C(v89, &v75 - v24, &unk_27DF0D360, &unk_23876BB40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v47 = *(v90 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
      v48 = type metadata accessor for BankConnectAuthorizationError(0);
      v49 = v87;
      (*(*(v48 - 8) + 56))(v87, 2, 2, v48);

      v47(v49);

      sub_238515494(v49, type metadata accessor for BankConnectAuthorizationFlowResult);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong didCompleteFlowItem];
        swift_unknownObjectRelease();
      }

      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12250, &qword_23876CF90);
    sub_238449184(0, &qword_27DF0D370, 0x277CCA9B8);
    v39 = swift_dynamicCast();
    v40 = v90;
    if ((v39 & 1) == 0)
    {
      goto LABEL_22;
    }

    v41 = v91;
    v42 = [v91 domain];
    v43 = sub_23875EA80();
    v45 = v44;

    if (v43 == sub_23875AB80() && v45 == v46)
    {
    }

    else
    {
      v61 = sub_23875F630();

      if ((v61 & 1) == 0)
      {
LABEL_21:

LABEL_22:
        v71 = sub_238757B60();
        v72 = v79;
        (*(*(v71 - 8) + 16))(v79, v88, v71);
        v73 = type metadata accessor for BankConnectAuthorizationError(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
        swift_getKeyPath(byte_23876CE78);
        swift_getKeyPath(byte_23876CEA0);
        sub_23843981C(v72, v78, &unk_27DF0B540, &qword_238765900);

        sub_23875C2E0();
        v74 = swift_unknownObjectWeakLoadStrong();
        if (v74)
        {
          [v74 didCompleteFlowItem];
          swift_unknownObjectRelease();
        }

        sub_238439884(v72, &unk_27DF0B540, &qword_238765900);
        goto LABEL_25;
      }
    }

    v62 = [v41 code];
    v64 = v75;
    v63 = v76;
    v65 = v77;
    (*(v76 + 104))(v75, *MEMORY[0x277CC82E0], v77);
    v66 = sub_23875AB90();
    (*(v63 + 8))(v64, v65);
    if (v62 == v66)
    {
      v67 = *(v40 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
      v68 = type metadata accessor for BankConnectAuthorizationError(0);
      v69 = v87;
      (*(*(v68 - 8) + 56))(v87, 2, 2, v68);

      v67(v69);

      sub_238515494(v69, type metadata accessor for BankConnectAuthorizationFlowResult);
      v70 = swift_unknownObjectWeakLoadStrong();
      if (v70)
      {
        [v70 didCompleteFlowItem];

        swift_unknownObjectRelease();
      }

      else
      {
      }

LABEL_25:

      return;
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v20 + 32))(v22, v25, v19);
    sub_23850A5BC(v22);
    (*(v20 + 8))(v22, v19);
    return;
  }

  v27 = v16;
  v28 = v83;
  (*(v16 + 32))(v18, v25, v83);
  (*(v16 + 16))(v15, v18, v28);
  (*(v16 + 56))(v15, 0, 1, v28);
  v29 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_connectedConsent;
  v30 = v90;
  swift_beginAccess();
  sub_238516BF0(v15, v30 + v29);
  swift_endAccess();
  v31 = v30 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowConfiguration;
  v32 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v34 = v80;
  v33 = v81;
  v35 = v31 + *(v32 + 28);
  v36 = v82;
  (*(v80 + 16))(v81, v35, v82);
  v37 = (*(v34 + 88))(v33, v36);
  v38 = v37 != *MEMORY[0x277CC8268];
  if (v37 == *MEMORY[0x277CC8268] || v37 == *MEMORY[0x277CC8258])
  {
    (*(v34 + 96))(v33, v36);
    v51 = sub_23875BCB0();
    (*(*(v51 - 8) + 8))(v33, v51);
    goto LABEL_16;
  }

  if (v37 == *MEMORY[0x277CC8260])
  {
    v38 = 0;
LABEL_16:
    v52 = sub_238757B60();
    v53 = v85;
    (*(*(v52 - 8) + 16))(v85, v88, v52);
    v54 = sub_238758BA0();
    v56 = v55;
    v57 = type metadata accessor for AccountConnectionStep(0);
    v58 = (v53 + v57[5]);
    *v58 = v54;
    v58[1] = v56;
    v59 = v86;
    *(v53 + v57[6]) = v86;
    *(v53 + v57[7]) = v38;
    swift_storeEnumTagMultiPayload();
    v60 = v59;
    sub_23850F640(v53);
    sub_238515494(v53, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    (*(v27 + 8))(v18, v28);
    return;
  }

  sub_23875F520();
  __break(1u);
}

void sub_238508094(uint64_t a1, void *a2, uint64_t a3)
{
  v87 = a3;
  v84 = a2;
  v86 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = &v73 - v6;
  v7 = sub_23875ABA0();
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  MEMORY[0x28223BE20](v82);
  v83 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BankConnectAuthorizationFlowResult(0);
  MEMORY[0x28223BE20](v10 - 8);
  v85 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_23875AB40();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v73 - v14;
  v81 = sub_238758BB0();
  v16 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23875B940();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D378, &qword_23876CF98);
  MEMORY[0x28223BE20](v23);
  v25 = &v73 - v24;
  sub_23843981C(v87, &v73 - v24, &qword_27DF0D378, &qword_23876CF98);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v45 = *(v88 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
      v46 = type metadata accessor for BankConnectAuthorizationError(0);
      v47 = v85;
      (*(*(v46 - 8) + 56))(v85, 2, 2, v46);

      v45(v47);

      sub_238515494(v47, type metadata accessor for BankConnectAuthorizationFlowResult);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong didCompleteFlowItem];
        swift_unknownObjectRelease();
      }

      return;
    }

    sub_238449184(0, &qword_27DF0D370, 0x277CCA9B8);
    swift_dynamicCast();
    v39 = v89;
    v40 = [v89 domain];
    v41 = sub_23875EA80();
    v43 = v42;

    if (v41 == sub_23875AB80() && v43 == v44)
    {
    }

    else
    {
      v59 = sub_23875F630();

      if ((v59 & 1) == 0)
      {
LABEL_20:

        v69 = sub_238757B60();
        v70 = v74;
        (*(*(v69 - 8) + 16))(v74, v86, v69);
        v71 = type metadata accessor for BankConnectAuthorizationError(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
        swift_getKeyPath(byte_23876CE78);
        swift_getKeyPath(byte_23876CEA0);
        sub_23843981C(v70, v73, &unk_27DF0B540, &qword_238765900);

        sub_23875C2E0();
        v72 = swift_unknownObjectWeakLoadStrong();
        if (v72)
        {
          [v72 didCompleteFlowItem];
          swift_unknownObjectRelease();
        }

        sub_238439884(v70, &unk_27DF0B540, &qword_238765900);
        return;
      }
    }

    v60 = [v39 code];
    v62 = v75;
    v61 = v76;
    v63 = v77;
    (*(v76 + 104))(v75, *MEMORY[0x277CC82E0], v77);
    v64 = sub_23875AB90();
    (*(v61 + 8))(v62, v63);
    if (v60 == v64)
    {
      v65 = *(v88 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
      v66 = type metadata accessor for BankConnectAuthorizationError(0);
      v67 = v85;
      (*(*(v66 - 8) + 56))(v85, 2, 2, v66);

      v65(v67);

      sub_238515494(v67, type metadata accessor for BankConnectAuthorizationFlowResult);
      v68 = swift_unknownObjectWeakLoadStrong();
      if (v68)
      {
        [v68 didCompleteFlowItem];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v20 + 32))(v22, v25, v19);
    sub_23850A5BC(v22);
    (*(v20 + 8))(v22, v19);
    return;
  }

  v27 = v16;
  v28 = v81;
  (*(v16 + 32))(v18, v25, v81);
  (*(v16 + 16))(v15, v18, v28);
  (*(v16 + 56))(v15, 0, 1, v28);
  v29 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_connectedConsent;
  v30 = v88;
  swift_beginAccess();
  sub_238516BF0(v15, v30 + v29);
  swift_endAccess();
  v31 = v30 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowConfiguration;
  v32 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v34 = v78;
  v33 = v79;
  v35 = v31 + *(v32 + 28);
  v36 = v80;
  (*(v78 + 16))(v79, v35, v80);
  v37 = (*(v34 + 88))(v33, v36);
  v38 = v37 != *MEMORY[0x277CC8268];
  if (v37 == *MEMORY[0x277CC8268] || v37 == *MEMORY[0x277CC8258])
  {
    (*(v34 + 96))(v33, v36);
    v49 = sub_23875BCB0();
    (*(*(v49 - 8) + 8))(v33, v49);
    goto LABEL_15;
  }

  if (v37 == *MEMORY[0x277CC8260])
  {
    v38 = 0;
LABEL_15:
    v50 = sub_238757B60();
    v51 = v83;
    (*(*(v50 - 8) + 16))(v83, v86, v50);
    v52 = sub_238758BA0();
    v54 = v53;
    v55 = type metadata accessor for AccountConnectionStep(0);
    v56 = (v51 + v55[5]);
    *v56 = v52;
    v56[1] = v54;
    v57 = v84;
    *(v51 + v55[6]) = v84;
    *(v51 + v55[7]) = v38;
    swift_storeEnumTagMultiPayload();
    v58 = v57;
    sub_23850F640(v51);
    sub_238515494(v51, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    (*(v27 + 8))(v18, v28);
    return;
  }

  sub_23875F520();
  __break(1u);
}

void sub_238508BB0(uint64_t a1, void *a2, uint64_t a3)
{
  v92 = a3;
  v89 = a2;
  v91 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v79 = &v77 - v6;
  v7 = sub_23875ABA0();
  v81 = *(v7 - 8);
  v82 = v7;
  MEMORY[0x28223BE20](v7);
  v80 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  MEMORY[0x28223BE20](v87);
  v88 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BankConnectAuthorizationFlowResult(0);
  MEMORY[0x28223BE20](v10 - 8);
  v90 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_23875AB40();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v77 - v14;
  v86 = sub_238758BB0();
  v16 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23875B940();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D380, &qword_23876CFA0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v77 - v24);
  sub_23843981C(v92, &v77 - v24, &unk_27DF0D380, &qword_23876CFA0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v49 = *(v93 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
      v50 = type metadata accessor for BankConnectAuthorizationError(0);
      v51 = v90;
      (*(*(v50 - 8) + 56))(v90, 2, 2, v50);

      v49(v51);

      sub_238515494(v51, type metadata accessor for BankConnectAuthorizationFlowResult);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong didCompleteFlowItem];
        swift_unknownObjectRelease();
      }

      return;
    }

    v95[0] = *v25;
    v40 = v95[0];
    sub_238449184(0, &qword_27DF0D370, 0x277CCA9B8);
    swift_dynamicCast();
    v41 = v94;
    v42 = [v94 domain];
    v43 = sub_23875EA80();
    v45 = v44;

    v46 = sub_23875AB80();
    v48 = v93;
    if (v43 == v46 && v45 == v47)
    {
    }

    else
    {
      v63 = sub_23875F630();

      if ((v63 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v64 = [v41 code];
    v66 = v80;
    v65 = v81;
    v67 = v82;
    (*(v81 + 104))(v80, *MEMORY[0x277CC82E0], v82);
    v68 = sub_23875AB90();
    (*(v65 + 8))(v66, v67);
    if (v64 == v68)
    {
      v69 = *(v48 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
      v70 = type metadata accessor for BankConnectAuthorizationError(0);
      v71 = v90;
      (*(*(v70 - 8) + 56))(v90, 2, 2, v70);

      v69(v71);

      sub_238515494(v71, type metadata accessor for BankConnectAuthorizationFlowResult);
      v72 = swift_unknownObjectWeakLoadStrong();
      if (v72)
      {
        [v72 didCompleteFlowItem];

        swift_unknownObjectRelease();
      }

      else
      {
      }

LABEL_23:

      return;
    }

LABEL_20:

    v73 = sub_238757B60();
    v74 = v79;
    (*(*(v73 - 8) + 16))(v79, v91, v73);
    v75 = type metadata accessor for BankConnectAuthorizationError(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
    swift_getKeyPath(byte_23876CE78);
    swift_getKeyPath(byte_23876CEA0);
    sub_23843981C(v74, v78, &unk_27DF0B540, &qword_238765900);

    sub_23875C2E0();
    v76 = swift_unknownObjectWeakLoadStrong();
    if (v76)
    {
      [v76 didCompleteFlowItem];
      swift_unknownObjectRelease();
    }

    sub_238439884(v74, &unk_27DF0B540, &qword_238765900);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v20 + 32))(v22, v25, v19);
    sub_23850A5BC(v22);
    (*(v20 + 8))(v22, v19);
    return;
  }

  v27 = v16;
  v28 = v25;
  v29 = v86;
  (*(v16 + 32))(v18, v28, v86);
  (*(v16 + 16))(v15, v18, v29);
  (*(v16 + 56))(v15, 0, 1, v29);
  v30 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_connectedConsent;
  v31 = v93;
  swift_beginAccess();
  sub_238516BF0(v15, v31 + v30);
  swift_endAccess();
  v32 = v31 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowConfiguration;
  v33 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v35 = v83;
  v34 = v84;
  v36 = v32 + *(v33 + 28);
  v37 = v85;
  (*(v83 + 16))(v84, v36, v85);
  v38 = (*(v35 + 88))(v34, v37);
  v39 = v38 != *MEMORY[0x277CC8268];
  if (v38 == *MEMORY[0x277CC8268] || v38 == *MEMORY[0x277CC8258])
  {
    (*(v35 + 96))(v34, v37);
    v53 = sub_23875BCB0();
    (*(*(v53 - 8) + 8))(v34, v53);
    goto LABEL_15;
  }

  if (v38 == *MEMORY[0x277CC8260])
  {
    v39 = 0;
LABEL_15:
    v54 = sub_238757B60();
    v55 = v88;
    (*(*(v54 - 8) + 16))(v88, v91, v54);
    v56 = sub_238758BA0();
    v58 = v57;
    v59 = type metadata accessor for AccountConnectionStep(0);
    v60 = (v55 + v59[5]);
    *v60 = v56;
    v60[1] = v58;
    v61 = v89;
    *(v55 + v59[6]) = v89;
    *(v55 + v59[7]) = v39;
    swift_storeEnumTagMultiPayload();
    v62 = v61;
    sub_23850F640(v55);
    sub_238515494(v55, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    (*(v27 + 8))(v18, v29);
    return;
  }

  sub_23875F520();
  __break(1u);
}

uint64_t sub_2385096DC(uint64_t a1, uint64_t *a2)
{
  v3[4] = a1;
  v3[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = sub_23875ABA0();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  type metadata accessor for BankConnectAuthorizationFlowResult(0);
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v3[15] = swift_task_alloc();
  v6 = sub_238759320();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  v3[19] = v7;
  v3[20] = v8;
  sub_23875ED50();
  v3[21] = sub_23875ED40();
  v10 = sub_23875ECE0();
  v3[22] = v10;
  v3[23] = v9;

  return MEMORY[0x2822009F8](sub_2385098F8, v10, v9);
}

uint64_t sub_2385098F8()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = *(v0 + 104);
      v3 = *(v0 + 40);

      v4 = *(v3 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
      v5 = type metadata accessor for BankConnectAuthorizationError(0);
      (*(*(v5 - 8) + 56))(v2, 2, 2, v5);

      v4(v2);

      sub_238515494(v2, type metadata accessor for BankConnectAuthorizationFlowResult);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong didCompleteFlowItem];
        swift_unknownObjectRelease();
      }

      goto LABEL_29;
    }

    *(v0 + 16) = v1;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12250, &qword_23876CF90);
    sub_238449184(0, &qword_27DF0D370, 0x277CCA9B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_26:
      v41 = *(v0 + 64);
      v42 = *(v0 + 48);
      v43 = *(v0 + 32);

      v44 = sub_238757B60();
      (*(*(v44 - 8) + 16))(v42, v43, v44);
      v45 = type metadata accessor for BankConnectAuthorizationError(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v45 - 8) + 56))(v42, 0, 1, v45);
      swift_getKeyPath(byte_23876CE78);
      swift_getKeyPath(byte_23876CEA0);
      sub_23843981C(v42, v41, &unk_27DF0B540, &qword_238765900);

      sub_23875C2E0();
      v46 = swift_unknownObjectWeakLoadStrong();
      if (v46)
      {
        [v46 didCompleteFlowItem];
        swift_unknownObjectRelease();
      }

      sub_238439884(*(v0 + 48), &unk_27DF0B540, &qword_238765900);
      goto LABEL_29;
    }

    v10 = *(v0 + 24);
    v11 = [v10 domain];
    v12 = sub_23875EA80();
    v14 = v13;

    if (v12 == sub_23875AB80() && v14 == v15)
    {
    }

    else
    {
      v16 = sub_23875F630();

      if ((v16 & 1) == 0)
      {

        goto LABEL_18;
      }
    }

    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    v19 = *(v0 + 80);
    v20 = [v10 code];
    (*(v18 + 104))(v17, *MEMORY[0x277CC82D8], v19);
    v21 = sub_23875AB90();
    (*(v18 + 8))(v17, v19);

    if (v20 == v21)
    {
      v23 = *(v0 + 64);
      v22 = *(v0 + 72);
      v24 = type metadata accessor for BankConnectAuthorizationError(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v24 - 8) + 56))(v22, 0, 1, v24);
      swift_getKeyPath(byte_23876CE78);
      swift_getKeyPath(byte_23876CEA0);
      sub_23843981C(v22, v23, &unk_27DF0B540, &qword_238765900);

      sub_23875C2E0();
      v25 = swift_unknownObjectWeakLoadStrong();
      v26 = *(v0 + 72);
      if (!v25)
      {
LABEL_16:

        sub_238439884(v26, &unk_27DF0B540, &qword_238765900);
LABEL_29:

        v47 = *(v0 + 8);

        return v47();
      }

LABEL_15:
      [v25 didCompleteFlowItem];
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

LABEL_18:
    v27 = [v10 domain];
    v28 = sub_23875EA80();
    v30 = v29;

    if (v28 == sub_23875AB80() && v30 == v31)
    {
    }

    else
    {
      v32 = sub_23875F630();

      if ((v32 & 1) == 0)
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    v34 = *(v0 + 88);
    v33 = *(v0 + 96);
    v35 = *(v0 + 80);
    v36 = [v10 code];
    (*(v34 + 104))(v33, *MEMORY[0x277CC82D0], v35);
    v37 = sub_23875AB90();
    (*(v34 + 8))(v33, v35);
    if (v36 == v37)
    {
      v39 = *(v0 + 56);
      v38 = *(v0 + 64);
      v40 = type metadata accessor for BankConnectAuthorizationError(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
      swift_getKeyPath(byte_23876CE78);
      swift_getKeyPath(byte_23876CEA0);
      sub_23843981C(v39, v38, &unk_27DF0B540, &qword_238765900);

      sub_23875C2E0();
      v25 = swift_unknownObjectWeakLoadStrong();
      v26 = *(v0 + 56);
      if (!v25)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_25;
  }

  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = sub_23850A08C;
  v8 = *(v0 + 152);

  return MEMORY[0x282117DC8](v8);
}

uint64_t sub_23850A08C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_23850A418;
  }

  else
  {
    v5 = sub_23850A1C8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23850A1C8()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];

  (*(v3 + 104))(v1, *MEMORY[0x277CC7860], v2);
  v4 = sub_238759310();
  v5 = *(v3 + 8);
  v5(v1, v2);
  if (v4)
  {
    v6 = v0[19];
    v8 = v0[15];
    v7 = v0[16];
    swift_storeEnumTagMultiPayload();
    sub_23850F640(v8);
    sub_238515494(v8, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    v9 = v6;
    v10 = v7;
  }

  else
  {
    v11 = v0[13];
    v12 = *(v0[5] + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
    v13 = type metadata accessor for BankConnectAuthorizationError(0);
    (*(*(v13 - 8) + 56))(v11, 1, 2, v13);

    v12(v11);

    sub_238515494(v11, type metadata accessor for BankConnectAuthorizationFlowResult);
    Strong = swift_unknownObjectWeakLoadStrong();
    v15 = v0[19];
    v16 = v0[16];
    if (Strong)
    {
      [Strong didCompleteFlowItem];
      swift_unknownObjectRelease();
    }

    v9 = v15;
    v10 = v16;
  }

  v5(v9, v10);

  v17 = v0[1];

  return v17();
}

uint64_t sub_23850A418()
{
  v1 = v0[13];
  v2 = v0[5];

  v3 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
  v4 = type metadata accessor for BankConnectAuthorizationError(0);
  (*(*(v4 - 8) + 56))(v1, 1, 2, v4);

  v3(v1);

  sub_238515494(v1, type metadata accessor for BankConnectAuthorizationFlowResult);
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = v0[25];
  if (Strong)
  {
    [Strong didCompleteFlowItem];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_23850A5BC(uint64_t a1)
{
  v2 = v1;
  v73 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v77 = &v67 - v7;
  MEMORY[0x28223BE20](v8);
  v70 = &v67 - v9;
  v10 = sub_23875C1E0();
  v75 = *(v10 - 8);
  v76 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v68 = &v67 - v14;
  v15 = type metadata accessor for WebAuthorizationStep(0);
  MEMORY[0x28223BE20](v15 - 8);
  v69 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v17 - 8);
  v71 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v72 = &v67 - v20;
  v21 = type metadata accessor for AppAuthorizationStep(0);
  MEMORY[0x28223BE20](v21 - 8);
  v67 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v74 = &v67 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D3B0, &qword_238765A48);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v67 - v34;
  swift_getKeyPath(asc_23876CE40, v33);
  swift_getKeyPath(byte_23876CFB8);
  sub_23875C2D0();

  v36 = *(v78 + 16);

  if (v36)
  {
    swift_getKeyPath(asc_23876CE40);
    swift_getKeyPath(byte_23876CFB8);
    sub_23875C2D0();

    v37 = *(v78 + 16);
    if (v37)
    {
      sub_2385165C8(v78 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * (v37 - 1), v35, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      v38 = v35;

      v39 = 0;
      goto LABEL_7;
    }

    v39 = 1;
  }

  else
  {
    sub_2385165C8(v2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_rootDestination, v35, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    v39 = 0;
  }

  v38 = v35;
LABEL_7:
  (*(v24 + 56))(v38, v39, 1, v23);
  sub_23843981C(v38, v31, &qword_27DF0D3B0, &qword_238765A48);
  if ((*(v24 + 48))(v31, 1, v23) == 1)
  {
    sub_238439884(v31, &qword_27DF0D3B0, &qword_238765A48);
    sub_23875C120();
    v40 = sub_23875C1B0();
    v41 = sub_23875EFE0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2383F8000, v40, v41, "    Failed to handle the app authorization redirect. Undetermined current destination.", v42, 2u);
      MEMORY[0x23EE64DF0](v42, -1, -1);
    }

    (*(v75 + 8))(v12, v76);
    v43 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowConfiguration;
    v44 = sub_238757B60();
    (*(*(v44 - 8) + 16))(v5, v2 + v43, v44);
    v45 = type metadata accessor for BankConnectAuthorizationError(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v45 - 8) + 56))(v5, 0, 1, v45);
    swift_getKeyPath(byte_23876CE78);
    swift_getKeyPath(byte_23876CEA0);
    sub_23843981C(v5, v77, &unk_27DF0B540, &qword_238765900);

    sub_23875C2E0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong didCompleteFlowItem];
      swift_unknownObjectRelease();
    }

    sub_238439884(v5, &unk_27DF0B540, &qword_238765900);
    return sub_238439884(v38, &qword_27DF0D3B0, &qword_238765A48);
  }

  v47 = v74;
  sub_23851512C(v31, v74, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  sub_2385165C8(v47, v26, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v49 = v69;
    sub_23851512C(v26, v69, type metadata accessor for WebAuthorizationStep);
    v54 = sub_23875B940();
    v55 = *(v54 - 8);
    v56 = v72;
    (*(v55 + 16))(v72, v73, v54);
    (*(v55 + 56))(v56, 0, 1, v54);
    swift_getKeyPath(byte_23876CFE8);
    swift_getKeyPath(byte_23876D010);
    sub_23843981C(v56, v71, &qword_27DF0D040, &qword_2387676A0);

    sub_23875C2E0();
    sub_238439884(v56, &qword_27DF0D040, &qword_2387676A0);
    sub_23850D274(v49);
    v53 = type metadata accessor for WebAuthorizationStep;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v49 = v67;
    sub_23851512C(v26, v67, type metadata accessor for AppAuthorizationStep);
    v50 = sub_23875B940();
    v51 = *(v50 - 8);
    v52 = v72;
    (*(v51 + 16))(v72, v73, v50);
    (*(v51 + 56))(v52, 0, 1, v50);
    swift_getKeyPath(byte_23876CFE8);
    swift_getKeyPath(byte_23876D010);
    sub_23843981C(v52, v71, &qword_27DF0D040, &qword_2387676A0);

    sub_23875C2E0();
    sub_238439884(v52, &qword_27DF0D040, &qword_2387676A0);
    sub_23850EA94(v49);
    v53 = type metadata accessor for AppAuthorizationStep;
LABEL_17:
    sub_238515494(v49, v53);
    sub_238515494(v47, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    return sub_238439884(v38, &qword_27DF0D3B0, &qword_238765A48);
  }

  v58 = v68;
  sub_23875C120();
  v59 = sub_23875C1B0();
  v60 = sub_23875EFE0();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_2383F8000, v59, v60, "    Failed to handle the app authorization redirect. Unexpected authorization flow step.", v61, 2u);
    MEMORY[0x23EE64DF0](v61, -1, -1);
  }

  (*(v75 + 8))(v58, v76);
  v62 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowConfiguration;
  v63 = sub_238757B60();
  v64 = v70;
  (*(*(v63 - 8) + 16))(v70, v2 + v62, v63);
  v65 = type metadata accessor for BankConnectAuthorizationError(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
  swift_getKeyPath(byte_23876CE78);
  swift_getKeyPath(byte_23876CEA0);
  sub_23843981C(v64, v77, &unk_27DF0B540, &qword_238765900);

  sub_23875C2E0();
  v66 = swift_unknownObjectWeakLoadStrong();
  if (v66)
  {
    [v66 didCompleteFlowItem];
    swift_unknownObjectRelease();
  }

  sub_238439884(v64, &unk_27DF0B540, &qword_238765900);
  sub_238515494(v47, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  sub_238439884(v38, &qword_27DF0D3B0, &qword_238765A48);
  return sub_238515494(v26, type metadata accessor for BankConnectAuthorizationNavigationDestination);
}

uint64_t sub_23850B1C8(void *a1, void (*a2)(_BYTE *), uint64_t a3)
{
  v4 = v3;
  v99 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D378, &qword_23876CF98);
  MEMORY[0x28223BE20](v97);
  v8 = &v87 - v7;
  v96 = type metadata accessor for BankConnectWebAuthorizationFlow(0);
  MEMORY[0x28223BE20](v96);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875C1E0();
  v100 = *(v11 - 8);
  v101 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v87 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v87 - v18;
  MEMORY[0x28223BE20](v20);
  v95 = &v87 - v21;
  v22 = sub_23875B940();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  if (*(v4 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_didStartWebAuthorization))
  {
    sub_23875C120();
    v29 = sub_23875C1B0();
    v30 = sub_23875EFE0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2383F8000, v29, v30, "Web authorization step has started already. Skipping.", v31, 2u);
      MEMORY[0x23EE64DF0](v31, -1, -1);
    }

    return (*(v100 + 8))(v13, v101);
  }

  v93 = a2;
  v94 = v19;
  v98 = &v87 - v28;
  v91 = v8;
  v92 = a3;
  v89 = v4;
  *(v4 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_didStartWebAuthorization) = 1;
  if (qword_27DF08D00 != -1)
  {
    v86 = v27;
    swift_once();
    v27 = v86;
  }

  v33 = v27;
  v34 = __swift_project_value_buffer(v27, qword_27DF2F708);
  v90 = v23;
  v35 = *(v23 + 16);
  v36 = v98;
  v35(v98, v34, v33);
  sub_23875B8D0();
  if (v37)
  {
    v88 = v33;
    v38 = objc_opt_self();
    v39 = sub_23875EA50();

    sub_23875B8E0();
    v40 = sub_23875EA50();

    v41 = [v38 callbackWithHTTPSHost:v39 path:v40];

    v42 = v95;
    sub_23875C120();
    sub_2385165C8(v99, v10, type metadata accessor for BankConnectWebAuthorizationFlow);
    v43 = v41;
    v44 = sub_23875C1B0();
    v45 = sub_23875F000();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v87 = v47;
      v48 = swift_slowAlloc();
      aBlock[0] = v48;
      *v46 = 138412546;
      *(v46 + 4) = v43;
      *v47 = v43;
      *(v46 + 12) = 2080;
      sub_2385148B0(&qword_27DF0D3A8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v49 = v43;
      v50 = sub_23875F600();
      v52 = v51;
      sub_238515494(v10, type metadata accessor for BankConnectWebAuthorizationFlow);
      v53 = sub_2384615AC(v50, v52, aBlock);

      *(v46 + 14) = v53;
      _os_log_impl(&dword_2383F8000, v44, v45, "Starting ASWebAuthenticationSession with callback %@, url %s", v46, 0x16u);
      v54 = v87;
      sub_238439884(v87, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v54, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x23EE64DF0](v48, -1, -1);
      MEMORY[0x23EE64DF0](v46, -1, -1);
    }

    else
    {

      sub_238515494(v10, type metadata accessor for BankConnectWebAuthorizationFlow);
    }

    v55 = *(v100 + 8);
    v55(v42, v101);
    v57 = v92;
    v56 = v93;
    v58 = v91;
    v68 = swift_allocObject();
    v69 = v89;
    v68[2] = v89;
    v68[3] = v56;
    v68[4] = v57;
    v70 = objc_allocWithZone(MEMORY[0x277CBA9D8]);
    v71 = v43;

    v72 = sub_23875B860();
    aBlock[4] = sub_2385174C0;
    aBlock[5] = v68;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_238515194;
    aBlock[3] = &block_descriptor_6;
    v73 = _Block_copy(aBlock);
    v74 = [v70 initWithURL:v72 callback:v71 completionHandler:v73];
    _Block_release(v73);

    v75 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_authenticationSession;
    v76 = *(v69 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_authenticationSession);
    *(v69 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_authenticationSession) = v74;
    v77 = v74;

    [v77 setPrefersEphemeralWebBrowserSession_];
    v78 = *(v69 + v75);
    if (v78)
    {
      [v78 setPresentationContextProvider_];
      v79 = *(v69 + v75);
      if (v79)
      {
        v80 = v79;
        if ([v80 canStart])
        {
          [v80 start];

          return (*(v90 + 8))(v98, v88);
        }
      }
    }

    sub_23875C120();
    v83 = sub_23875C1B0();
    v84 = sub_23875EFE0();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_2383F8000, v83, v84, "Can't start ASWebAuthenticationSession", v85, 2u);
      MEMORY[0x23EE64DF0](v85, -1, -1);
    }

    v55(v94, v101);
    *v58 = 1;
    swift_storeEnumTagMultiPayload();
    v56(v58);

    sub_238439884(v58, &qword_27DF0D378, &qword_23876CF98);
    return (*(v90 + 8))(v98, v88);
  }

  sub_23875C120();
  v35(v25, v36, v33);
  v59 = sub_23875C1B0();
  v60 = sub_23875EFE0();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    aBlock[0] = v99;
    *v61 = 136315138;
    sub_2385148B0(&qword_27DF0D3A8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v62 = sub_23875F600();
    v64 = v63;
    v65 = *(v90 + 8);
    v65(v25, v33);
    v66 = sub_2384615AC(v62, v64, aBlock);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_2383F8000, v59, v60, "Web authorization step failed. The redirectURL's host is invalid %s", v61, 0xCu);
    v67 = v99;
    __swift_destroy_boxed_opaque_existential_1(v99);
    MEMORY[0x23EE64DF0](v67, -1, -1);
    MEMORY[0x23EE64DF0](v61, -1, -1);
  }

  else
  {

    v65 = *(v90 + 8);
    v65(v25, v33);
  }

  (*(v100 + 8))(v16, v101);
  v81 = v93;
  v82 = v91;
  *v91 = 0;
  swift_storeEnumTagMultiPayload();
  v81(v82);
  sub_238439884(v82, &qword_27DF0D378, &qword_23876CF98);
  return (v65)(v98, v33);
}

double sub_23850BC68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a4;
  v62 = a5;
  v63 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v50[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v59 = *(v9 - 8);
  v10 = *(v59 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v60 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v50[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v50[-v15];
  v17 = sub_23875C1E0();
  v55 = *(v17 - 8);
  v56 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v50[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_23875ED50();
  v21 = sub_23875ED40();
  v57 = v20;
  v58 = v21;
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C120();
  sub_23843981C(a1, v16, &qword_27DF0D040, &qword_2387676A0);
  v22 = a2;
  v23 = sub_23875C1B0();
  v24 = sub_23875F000();

  if (os_log_type_enabled(v23, v24))
  {
    v51 = v24;
    v25 = 0x3E6C696E3CLL;
    v26 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v65[0] = v52;
    *v26 = 136315394;
    v53 = a1;
    v54 = a2;
    if (a2)
    {
      swift_getErrorValue();
      v27 = sub_23875F690();
      v29 = v28;
    }

    else
    {
      v29 = 0xE500000000000000;
      v27 = 0x3E6C696E3CLL;
    }

    v30 = sub_2384615AC(v27, v29, v65);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    sub_23843981C(v16, v13, &qword_27DF0D040, &qword_2387676A0);
    v31 = sub_23875B940();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v13, 1, v31) == 1)
    {
      sub_238439884(v13, &qword_27DF0D040, &qword_2387676A0);
      v33 = 0xE500000000000000;
    }

    else
    {
      v25 = sub_23875B820();
      v33 = v34;
      (*(v32 + 8))(v13, v31);
    }

    a1 = v53;
    sub_238439884(v16, &qword_27DF0D040, &qword_2387676A0);
    v35 = sub_2384615AC(v25, v33, v65);

    *(v26 + 14) = v35;
    _os_log_impl(&dword_2383F8000, v23, v51, "Received ASWebAuthenticationSession callback with error %s, url %s", v26, 0x16u);
    v36 = v52;
    swift_arrayDestroy();
    MEMORY[0x23EE64DF0](v36, -1, -1);
    MEMORY[0x23EE64DF0](v26, -1, -1);

    (*(v55 + 8))(v19, v56);
    a2 = v54;
  }

  else
  {

    sub_238439884(v16, &qword_27DF0D040, &qword_2387676A0);
    (*(v55 + 8))(v19, v56);
  }

  v37 = sub_23875ED80();
  (*(*(v37 - 8) + 56))(v64, 1, 1, v37);
  v38 = v60;
  sub_23843981C(a1, v60, &qword_27DF0D040, &qword_2387676A0);
  v39 = a2;
  v40 = v62;

  v41 = v63;

  v42 = sub_23875ED40();
  v43 = a2;
  v44 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v45 = (v10 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = v42;
  *(v47 + 24) = MEMORY[0x277D85700];
  sub_2384396E4(v38, v47 + v44, &qword_27DF0D040, &qword_2387676A0);
  v48 = (v47 + v45);
  *v48 = v61;
  v48[1] = v40;
  *(v47 + v46) = v43;
  *(v47 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8)) = v41;
  sub_2386C3BA4(0, 0, v64, &unk_23876D060, v47);

  return result;
}

uint64_t sub_23850C294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = sub_23875C1E0();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D378, &qword_23876CF98);
  v7[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v7[15] = swift_task_alloc();
  v9 = sub_23875B940();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  sub_23875ED50();
  v7[19] = sub_23875ED40();
  v11 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23850C45C, v11, v10);
}

uint64_t sub_23850C45C()
{
  v35 = v0;
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[6];

  sub_23843981C(v4, v3, &qword_27DF0D040, &qword_2387676A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[9];
    sub_238439884(v0[15], &qword_27DF0D040, &qword_2387676A0);
    if (v5)
    {
      v6 = v0[9];
      v7 = v6;
      sub_23875C120();
      v8 = v6;
      v9 = sub_23875C1B0();
      v10 = sub_23875EFE0();

      v11 = os_log_type_enabled(v9, v10);
      v13 = v0[11];
      v12 = v0[12];
      v14 = v0[10];
      if (v11)
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v34 = v16;
        *v15 = 136315138;
        swift_getErrorValue();
        v17 = sub_23875F690();
        v19 = sub_2384615AC(v17, v18, &v34);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_2383F8000, v9, v10, "Web authorization step failed with error %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x23EE64DF0](v16, -1, -1);
        MEMORY[0x23EE64DF0](v15, -1, -1);

        (*(v13 + 8))(v12, v14);
      }

      else
      {

        (*(v13 + 8))(v12, v14);
      }

      v28 = sub_23875B720();
      v29 = [v28 code];

      v30 = v0[14];
      v31 = v0[7];
      if (v29 != 1)
      {
        *v30 = 1;
      }

      swift_storeEnumTagMultiPayload();
      v31(v30);

      v27 = v30;
    }

    else
    {
      v25 = v0[14];
      v26 = v0[7];
      swift_storeEnumTagMultiPayload();
      v26(v25);
      v27 = v25;
    }

    sub_238439884(v27, &qword_27DF0D378, &qword_23876CF98);
  }

  else
  {
    v21 = v0[17];
    v20 = v0[18];
    v22 = v0[16];
    v23 = v0[14];
    v24 = v0[7];
    (*(v21 + 32))(v20, v0[15], v22);
    (*(v21 + 16))(v23, v20, v22);
    swift_storeEnumTagMultiPayload();
    v24(v23);
    sub_238439884(v23, &qword_27DF0D378, &qword_23876CF98);
    (*(v21 + 8))(v20, v22);
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_23850C7F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D378, &qword_23876CF98);
  v3[6] = swift_task_alloc();
  v4 = sub_23875C1E0();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = sub_23875A8F0();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for BankConnectAuthorizationFlow(0);
  v3[15] = swift_task_alloc();
  v6 = sub_238758BB0();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_23875ED50();
  v3[20] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v3[21] = v8;
  v3[22] = v7;

  return MEMORY[0x2822009F8](sub_23850CA28, v8, v7);
}

uint64_t sub_23850CA28()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[3];
  v6 = v0[2];
  v7 = type metadata accessor for WebAuthorizationStep(0);
  v0[23] = v7;
  sub_2385165C8(v5 + *(v7 + 24), v1, type metadata accessor for BankConnectWebAuthorizationFlow);
  swift_storeEnumTagMultiPayload();
  v8 = sub_23875B940();
  (*(*(v8 - 8) + 16))(v2, v6, v8);
  (*(v3 + 104))(v2, *MEMORY[0x277CC8030], v4);
  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_23850CB9C;
  v10 = v0[19];
  v11 = v0[15];
  v12 = v0[13];

  return sub_238729C80(v10, v11, v12);
}

uint64_t sub_23850CB9C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  *(*v1 + 200) = v0;

  (*(v5 + 8))(v4, v6);
  sub_238515494(v3, type metadata accessor for BankConnectAuthorizationFlow);
  v7 = *(v2 + 176);
  v8 = *(v2 + 168);
  if (v0)
  {
    v9 = sub_23850D044;
  }

  else
  {
    v9 = sub_23850CD6C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23850CD6C()
{
  v36 = v0;
  v1 = v0[19];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];

  sub_23875C120();
  v34 = *(v3 + 16);
  v34(v2, v1, v4);
  v5 = sub_23875C1B0();
  v6 = sub_23875F000();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  v11 = v0[10];
  v13 = v0[7];
  v12 = v0[8];
  if (v7)
  {
    v33 = v0[7];
    v14 = swift_slowAlloc();
    v30 = v10;
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136315138;
    v29 = sub_238758BA0();
    v31 = v6;
    v17 = v16;
    v32 = v11;
    v18 = *(v9 + 8);
    v18(v8, v30);
    v19 = v18;
    v20 = sub_2384615AC(v29, v17, &v35);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_2383F8000, v5, v31, "Web authorization step successfully completed authorization flow. Consent with consentID: %s saved to the store.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x23EE64DF0](v15, -1, -1);
    MEMORY[0x23EE64DF0](v14, -1, -1);

    (*(v12 + 8))(v32, v33);
  }

  else
  {

    v21 = *(v9 + 8);
    v21(v8, v10);
    v19 = v21;
    (*(v12 + 8))(v11, v13);
  }

  v22 = v0[23];
  v23 = v0[19];
  v24 = v0[16];
  v25 = v0[6];
  v26 = v0[3];
  v34(v25, v23, v24);
  swift_storeEnumTagMultiPayload();
  sub_238508094(v26, *(v26 + *(v22 + 20)), v25);
  sub_238439884(v25, &qword_27DF0D378, &qword_23876CF98);
  v19(v23, v24);

  v27 = v0[1];

  return v27();
}

uint64_t sub_23850D044()
{
  v1 = v0[25];

  sub_23875C120();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2383F8000, v3, v4, "Web authorization step failed to complete authorization flow with error: %@", v6, 0xCu);
    sub_238439884(v7, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v7, -1, -1);
    MEMORY[0x23EE64DF0](v6, -1, -1);
  }

  v10 = v0[25];
  v11 = v0[23];
  v13 = v0[8];
  v12 = v0[9];
  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[3];

  (*(v13 + 8))(v12, v14);
  *v15 = 1;
  swift_storeEnumTagMultiPayload();
  sub_238508094(v16, *(v16 + *(v11 + 20)), v15);

  sub_238439884(v15, &qword_27DF0D378, &qword_23876CF98);

  v17 = v0[1];

  return v17();
}

uint64_t sub_23850D274(uint64_t a1)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_23875C1E0();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WebAuthorizationStep(0);
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = v6;
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_23875B940();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v47 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  swift_getKeyPath(byte_23876CFE8, v19);
  swift_getKeyPath(byte_23876D010);
  v22 = v2;
  sub_23875C2D0();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_238439884(v11, &qword_27DF0D040, &qword_2387676A0);
  }

  v24 = *(v13 + 32);
  v25 = v21;
  v24(v21, v11, v12);
  v26 = v22;
  [*(v22 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_authenticationSession) cancel];
  if (*(v22 + 72))
  {
    v27 = v53;
    sub_23875C120();
    v28 = v47;
    (*(v13 + 16))(v47, v25, v12);
    v29 = sub_23875C1B0();
    v30 = sub_23875EFE0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v56 = v32;
      *v31 = 136315138;
      sub_2385148B0(&qword_27DF0D3A8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v33 = sub_23875F600();
      v55 = v25;
      v35 = v34;
      v36 = *(v13 + 8);
      v36(v28, v12);
      v37 = sub_2384615AC(v33, v35, &v56);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_2383F8000, v29, v30, "Web authorization step has already handled the redirect URL. Ignoring additional redirect URL: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x23EE64DF0](v32, -1, -1);
      MEMORY[0x23EE64DF0](v31, -1, -1);

      (*(v51 + 8))(v53, v52);
      return (v36)(v55, v12);
    }

    else
    {

      v46 = *(v13 + 8);
      v46(v28, v12);
      (*(v51 + 8))(v27, v52);
      return (v46)(v25, v12);
    }
  }

  else
  {
    *(v22 + 72) = 1;
    v38 = sub_23875ED80();
    (*(*(v38 - 8) + 56))(v54, 1, 1, v38);
    (*(v13 + 16))(v17, v25, v12);
    sub_2385165C8(v50, v55, type metadata accessor for WebAuthorizationStep);
    sub_23875ED50();

    v52 = sub_23875ED40();
    v53 = v24;
    v39 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v40 = (v14 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = (*(v48 + 80) + v40 + 8) & ~*(v48 + 80);
    v42 = v13;
    v43 = v25;
    v44 = swift_allocObject();
    v45 = MEMORY[0x277D85700];
    *(v44 + 16) = v52;
    *(v44 + 24) = v45;
    (v53)(v44 + v39, v17, v12);
    *(v44 + v40) = v26;
    sub_23851512C(v55, v44 + v41, type metadata accessor for WebAuthorizationStep);
    sub_2386C3BA4(0, 0, v54, &unk_23876D050, v44);

    return (*(v42 + 8))(v43, v12);
  }
}

uint64_t sub_23850D948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D378, &qword_23876CF98);
  v6[6] = swift_task_alloc();
  v7 = sub_23875C1E0();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v8 = sub_23875B940();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  sub_23875ED50();
  v6[15] = sub_23875ED40();
  v10 = sub_23875ECE0();
  v6[16] = v10;
  v6[17] = v9;

  return MEMORY[0x2822009F8](sub_23850DAF0, v10, v9);
}

uint64_t sub_23850DAF0()
{
  if (qword_27DF08D00 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  v5 = __swift_project_value_buffer(v3, qword_27DF2F708);
  (*(v2 + 16))(v1, v5, v3);
  type metadata accessor for BankConnectWebAuthRedirectURLMatcher(0);
  v6 = swift_allocObject();
  (*(v2 + 32))(v6 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectWebAuthRedirectURLMatcher_redirectUrl, v1, v3);
  v7 = sub_2384F2370(v4);
  swift_setDeallocating();
  (*(v2 + 8))(v6 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectWebAuthRedirectURLMatcher_redirectUrl, v3);
  swift_deallocClassInstance();
  if (v7 <= 1u)
  {
    if (v7)
    {
      v8 = v0 + 10;

      sub_23875C120();
      v9 = sub_23875C1B0();
      v10 = sub_23875EFE0();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "Web authorization step failed with invalid scheme in authorization URL.";
        goto LABEL_12;
      }
    }

    else
    {
      v8 = v0 + 11;

      sub_23875C120();
      v9 = sub_23875C1B0();
      v10 = sub_23875EFE0();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "Web authorization step failed with invalid host in authorization URL.";
LABEL_12:
        _os_log_impl(&dword_2383F8000, v9, v10, v12, v11, 2u);
        MEMORY[0x23EE64DF0](v11, -1, -1);
        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (v7 == 2)
  {
    v8 = v0 + 9;

    sub_23875C120();
    v9 = sub_23875C1B0();
    v10 = sub_23875EFE0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Web authorization step failed with invalid path in authorization URL.";
      goto LABEL_12;
    }

LABEL_13:
    v13 = *v8;
    v14 = v0[7];
    v15 = v0[8];
    v16 = v0[6];
    v17 = v0[4];

    (*(v15 + 8))(v13, v14);
    *v16 = 0;
    swift_storeEnumTagMultiPayload();
    v18 = type metadata accessor for WebAuthorizationStep(0);
    sub_238508094(v17, *(v17 + *(v18 + 20)), v16);
    sub_238439884(v16, &qword_27DF0D378, &qword_23876CF98);

    v19 = v0[1];

    return v19();
  }

  v21 = swift_task_alloc();
  v0[18] = v21;
  *v21 = v0;
  v21[1] = sub_23850DEEC;
  v22 = v0[4];
  v23 = v0[2];

  return sub_23850C7F4(v23, v22);
}

uint64_t sub_23850DEEC()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_238517C44, v3, v2);
}

uint64_t sub_23850E00C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D360, &unk_23876BB40);
  v3[6] = swift_task_alloc();
  v4 = sub_23875C1E0();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = sub_23875A8F0();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for BankConnectAuthorizationFlow(0);
  v3[15] = swift_task_alloc();
  v6 = sub_238758BB0();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_23875ED50();
  v3[20] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v3[21] = v8;
  v3[22] = v7;

  return MEMORY[0x2822009F8](sub_23850E240, v8, v7);
}

uint64_t sub_23850E240()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[3];
  v6 = v0[2];
  v7 = type metadata accessor for AppAuthorizationStep(0);
  v0[23] = v7;
  sub_2385165C8(v5 + *(v7 + 24), v1, type metadata accessor for BankConnectAppAuthorizationFlow);
  swift_storeEnumTagMultiPayload();
  v8 = sub_23875B940();
  (*(*(v8 - 8) + 16))(v2, v6, v8);
  (*(v3 + 104))(v2, *MEMORY[0x277CC8030], v4);
  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_23850E3B4;
  v10 = v0[19];
  v11 = v0[15];
  v12 = v0[13];

  return sub_238729C80(v10, v11, v12);
}

uint64_t sub_23850E3B4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  *(*v1 + 200) = v0;

  (*(v5 + 8))(v4, v6);
  sub_238515494(v3, type metadata accessor for BankConnectAuthorizationFlow);
  v7 = *(v2 + 176);
  v8 = *(v2 + 168);
  if (v0)
  {
    v9 = sub_23850E85C;
  }

  else
  {
    v9 = sub_23850E584;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23850E584()
{
  v36 = v0;
  v1 = v0[19];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];

  sub_23875C120();
  v34 = *(v3 + 16);
  v34(v2, v1, v4);
  v5 = sub_23875C1B0();
  v6 = sub_23875F000();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  v11 = v0[10];
  v13 = v0[7];
  v12 = v0[8];
  if (v7)
  {
    v33 = v0[7];
    v14 = swift_slowAlloc();
    v30 = v10;
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136315138;
    v29 = sub_238758BA0();
    v31 = v6;
    v17 = v16;
    v32 = v11;
    v18 = *(v9 + 8);
    v18(v8, v30);
    v19 = v18;
    v20 = sub_2384615AC(v29, v17, &v35);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_2383F8000, v5, v31, "App authorization step successfully completed authorization flow. Consent with consentID: %s saved to the store.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x23EE64DF0](v15, -1, -1);
    MEMORY[0x23EE64DF0](v14, -1, -1);

    (*(v12 + 8))(v32, v33);
  }

  else
  {

    v21 = *(v9 + 8);
    v21(v8, v10);
    v19 = v21;
    (*(v12 + 8))(v11, v13);
  }

  v22 = v0[23];
  v23 = v0[19];
  v24 = v0[16];
  v25 = v0[6];
  v26 = v0[3];
  v34(v25, v23, v24);
  swift_storeEnumTagMultiPayload();
  sub_238507554(v26, *(v26 + *(v22 + 20)), v25);
  sub_238439884(v25, &unk_27DF0D360, &unk_23876BB40);
  v19(v23, v24);

  v27 = v0[1];

  return v27();
}

uint64_t sub_23850E85C()
{
  v1 = v0[25];

  sub_23875C120();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2383F8000, v3, v4, "App authorization step failed to complete authorization flow with error: %@", v6, 0xCu);
    sub_238439884(v7, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v7, -1, -1);
    MEMORY[0x23EE64DF0](v6, -1, -1);
  }

  v10 = v0[25];
  v11 = v0[23];
  v13 = v0[8];
  v12 = v0[9];
  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[3];

  (*(v13 + 8))(v12, v14);
  *v15 = v10;
  swift_storeEnumTagMultiPayload();
  v17 = *(v16 + *(v11 + 20));
  v18 = v10;
  sub_238507554(v16, v17, v15);

  sub_238439884(v15, &unk_27DF0D360, &unk_23876BB40);

  v19 = v0[1];

  return v19();
}

uint64_t sub_23850EA94(uint64_t a1)
{
  v35 = a1;
  v2 = type metadata accessor for AppAuthorizationStep(0);
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_23875B940();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v37 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  swift_getKeyPath(byte_23876CFE8, v14);
  swift_getKeyPath(byte_23876D010);
  v33 = v1;
  sub_23875C2D0();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_238439884(v9, &qword_27DF0D040, &qword_2387676A0);
  }

  v30 = v3;
  v31 = *(v11 + 32);
  v32 = v16;
  v31(v16, v9, v10);
  v18 = sub_23875ED80();
  v19 = *(*(v18 - 8) + 56);
  v29 = v6;
  v19(v6, 1, 1, v18);
  (*(v11 + 16))(v37, v16, v10);
  v20 = v34;
  sub_2385165C8(v35, v34, type metadata accessor for AppAuthorizationStep);
  sub_23875ED50();
  v21 = v33;

  v22 = sub_23875ED40();
  v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v36 + 80) + v24 + 8) & ~*(v36 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v22;
  *(v26 + 24) = v27;
  v31((v26 + v23), v37, v10);
  *(v26 + v24) = v21;
  sub_23851512C(v20, v26 + v25, type metadata accessor for AppAuthorizationStep);
  sub_2386C3BA4(0, 0, v29, &unk_23876D038, v26);

  return (*(v11 + 8))(v32, v10);
}

uint64_t sub_23850EEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D360, &unk_23876BB40);
  v6[6] = swift_task_alloc();
  v7 = sub_23875C1E0();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v8 = sub_23875B940();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  sub_23875ED50();
  v6[15] = sub_23875ED40();
  v10 = sub_23875ECE0();
  v6[16] = v10;
  v6[17] = v9;

  return MEMORY[0x2822009F8](sub_23850F06C, v10, v9);
}

uint64_t sub_23850F06C()
{
  if (qword_27DF08D00 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  v5 = __swift_project_value_buffer(v3, qword_27DF2F708);
  (*(v2 + 16))(v1, v5, v3);
  type metadata accessor for BankConnectWebAuthRedirectURLMatcher(0);
  v6 = swift_allocObject();
  (*(v2 + 32))(v6 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectWebAuthRedirectURLMatcher_redirectUrl, v1, v3);
  v7 = sub_2384F2370(v4);
  swift_setDeallocating();
  (*(v2 + 8))(v6 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectWebAuthRedirectURLMatcher_redirectUrl, v3);
  swift_deallocClassInstance();
  if (v7 <= 1u)
  {
    if (v7)
    {
      v8 = v0 + 10;

      sub_23875C120();
      v9 = sub_23875C1B0();
      v10 = sub_23875EFE0();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "App authorization step failed with invalid scheme in authorization URL.";
        goto LABEL_12;
      }
    }

    else
    {
      v8 = v0 + 11;

      sub_23875C120();
      v9 = sub_23875C1B0();
      v10 = sub_23875EFE0();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "App authorization step failed with invalid host in authorization URL.";
LABEL_12:
        _os_log_impl(&dword_2383F8000, v9, v10, v12, v11, 2u);
        MEMORY[0x23EE64DF0](v11, -1, -1);
        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (v7 == 2)
  {
    v8 = v0 + 9;

    sub_23875C120();
    v9 = sub_23875C1B0();
    v10 = sub_23875EFE0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "App authorization step failed with invalid path in authorization URL.";
      goto LABEL_12;
    }

LABEL_13:
    v13 = *v8;
    v14 = v0[7];
    v15 = v0[8];
    v16 = v0[6];
    v17 = v0[4];

    v18 = (*(v15 + 8))(v13, v14);
    sub_238517300(v18, v19, v20);
    *v16 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for AppAuthorizationStep(0);
    sub_238507554(v17, *(v17 + *(v21 + 20)), v16);
    sub_238439884(v16, &unk_27DF0D360, &unk_23876BB40);

    v22 = v0[1];

    return v22();
  }

  v24 = swift_task_alloc();
  v0[18] = v24;
  *v24 = v0;
  v24[1] = sub_23850F484;
  v25 = v0[4];
  v26 = v0[2];

  return sub_23850E00C(v26, v25);
}

uint64_t sub_23850F484()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_23850F5A4, v3, v2);
}

uint64_t sub_23850F5A4()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_23850F640(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385165C8(a1, v5, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  swift_getKeyPath(asc_23876CE40);
  swift_getKeyPath(byte_23876CFB8);
  sub_23875C2D0();

  v6 = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_2384980D0(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_2384980D0((v7 > 1), v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  sub_23851512C(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  swift_getKeyPath(asc_23876CE40);
  swift_getKeyPath(byte_23876CFB8);
  v11 = v6;

  sub_23875C2E0();
  sub_2385050F8();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didCompleteFlowItem];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_23850F854()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_238758BB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if ((*(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_isExistingConnection) & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_connectedConsent;
    swift_beginAccess();
    sub_23843981C(v0 + v14, v6, &qword_27DF0D358, &unk_23876CF80);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_238439884(v6, &qword_27DF0D358, &unk_23876CF80);
    }

    else
    {
      v23 = *(v8 + 32);
      v23(v13, v6, v7);
      v15 = sub_23875ED80();
      (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
      (*(v8 + 16))(v10, v13, v7);
      sub_23875ED50();

      v22 = v0;
      v16 = sub_23875ED40();
      v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
      v19 = swift_allocObject();
      v20 = MEMORY[0x277D85700];
      *(v19 + 16) = v16;
      *(v19 + 24) = v20;
      v23((v19 + v17), v10, v7);
      *(v19 + v18) = v22;
      sub_2386C3BA4(0, 0, v3, &unk_23876CFE0, v19);

      (*(v8 + 8))(v13, v7);
    }
  }
}

uint64_t sub_23850FBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_23875C1E0();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_23875ED50();
  v5[7] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](sub_23850FC94, v8, v7);
}

uint64_t sub_23850FC94(uint64_t a1)
{
  v2 = sub_238758BA0();
  v4 = v3;
  *(v1 + 80) = v3;
  v5 = swift_task_alloc();
  *(v1 + 88) = v5;
  *v5 = v1;
  v5[1] = sub_23850FD4C;

  return MEMORY[0x282117DD8](v2, v4);
}

uint64_t sub_23850FD4C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_23850FED0;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_23850FE68;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23850FE68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23850FED0()
{

  sub_23875C120();
  v1 = sub_23875C1B0();
  v2 = sub_23875EFE0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[12];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2383F8000, v1, v2, "Failed to revoke connection authorization", v8, 2u);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);

  v9 = v0[1];

  return v9();
}

char *sub_238510000()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  sub_238439884(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_connectedConsent, &qword_27DF0D358, &unk_23876CF80);
  sub_238515494(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowConfiguration, type metadata accessor for BankConnectAuthorizationFlowConfig);

  sub_238515494(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_rootDestination, type metadata accessor for BankConnectAuthorizationNavigationDestination);

  v1 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel__navigationPath;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B550, &qword_238768200);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel__redirectURL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F30, &qword_23876D080);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel__error;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3D0, &qword_2387681F8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_238472320(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_provisioningFlowDelegate);
  return v0;
}

uint64_t sub_2385101D8()
{
  sub_238510000();

  return swift_deallocClassInstance();
}

void sub_238510258(uint64_t a1)
{
  sub_2385104F4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BankConnectAuthorizationFlowConfig(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for BankConnectAuthorizationNavigationDestination(319);
      if (v3 <= 0x3F)
      {
        sub_2385110CC(319, &qword_27DF0D028, &unk_27DF0D030, &qword_238768208, MEMORY[0x277CBCED0]);
        if (v4 <= 0x3F)
        {
          sub_2385110CC(319, &qword_27DF12C80, &qword_27DF0D040, &qword_2387676A0, MEMORY[0x277CBCED0]);
          if (v5 <= 0x3F)
          {
            sub_2385110CC(319, &qword_27DF0D048, &unk_27DF0B540, &qword_238765900, MEMORY[0x277CBCED0]);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_2385104F4(uint64_t a1)
{
  if (!qword_27DF0D020)
  {
    sub_238758BB0();
    v1 = sub_23875F1F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0D020);
    }
  }
}

uint64_t sub_23851056C(uint64_t a1)
{
  result = type metadata accessor for TermsAndConditionsStep(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PrivacyOnboardingStep(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ReconnectAccountsStep(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for AppAuthorizationStep(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for WebAuthorizationStep(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for ExtensionAuthorizationStep(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for AccountConnectionStep(319);
              if (v8 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_23851074C(uint64_t a1)
{
  sub_238757B60();
  if (v1 <= 0x3F)
  {
    sub_2385107E0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2385107E0(uint64_t a1)
{
  if (!qword_27DF0B430)
  {
    sub_238449184(255, &qword_27DF096A8, 0x277D38080);
    v1 = sub_23875F1F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0B430);
    }
  }
}

void sub_2385108C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_238757B60();
  if (v5 <= 0x3F)
  {
    sub_2385107E0(319);
    if (v6 <= 0x3F)
    {
      a4(319);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_80Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = sub_238757B60();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = a4(0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 24);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_81Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = sub_238757B60();
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v13 = a5(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 24);

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_238510C70(uint64_t a1)
{
  sub_238757B60();
  if (v1 <= 0x3F)
  {
    sub_2385107E0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_107Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238757B60();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_108Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238757B60();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_238510EA4(uint64_t a1)
{
  sub_238757B60();
  if (v1 <= 0x3F)
  {
    sub_2385107E0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238510F70(uint64_t a1)
{
  sub_238511038(319);
  if (v1 <= 0x3F)
  {
    sub_2385110CC(319, &qword_27DF0D130, &qword_27DF0D040, &qword_2387676A0, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AnalyticsSession();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238511038(uint64_t a1)
{
  if (!qword_27DF0D120)
  {
    type metadata accessor for BankConnectAuthorizationFlowViewModel(255);
    sub_2385148B0(&qword_27DF0D128, type metadata accessor for BankConnectAuthorizationFlowViewModel, &unk_23876CDEC);
    v1 = sub_23875C4B0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0D120);
    }
  }
}

void sub_2385110CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_23851114C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BankConnectAuthorizationFlowViewModel(0);
  result = sub_23875C260();
  *a2 = result;
  return result;
}

uint64_t sub_23851118C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v31 = &v29[-v6];
  v7 = type metadata accessor for TermsAndConditionsStep(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = sub_238757B60();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v12 + 16))(v15, a1, v11, v13);
  v16 = *(a1 + *(v8 + 28));
  v30 = *(a2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowType);
  sub_2385165C8(a1, &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for TermsAndConditionsStep);
  v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  sub_23851512C(&v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v17, type metadata accessor for TermsAndConditionsStep);
  v19 = sub_238758CC0();
  v20 = v16;
  v21 = v16;

  v22 = sub_238758CB0();
  type metadata accessor for BankConnectTermsAndConditionsViewModel(0);
  v23 = swift_allocObject();
  v38 = MEMORY[0x277CC7458];
  v39 = MEMORY[0x277CC7460];
  v37 = v19;
  *&v36 = v22;
  v24 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel__isLoading;
  v35 = 0;
  v25 = v31;
  sub_23875C290();
  (*(v32 + 32))(v23 + v24, v25, v33);
  v26 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_termsAndConditions;
  v27 = sub_23875A6C0();
  (*(*(v27 - 8) + 56))(v23 + v26, 1, 1, v27);
  (*(v12 + 32))(v23 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_institution, v15, v11);
  *(v23 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_paymentPass) = v20;
  *(v23 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_flowType) = v30;
  sub_2385169F0(&v36, (v23 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_bankConnectService));
  *(v23 + 16) = sub_238516974;
  *(v23 + 24) = v18;
  return BankConnectTermsAndConditionsView.init(viewModel:)(v23, v34);
}

uint64_t sub_238511554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = type metadata accessor for PrivacyOnboardingStep(0);
  v47 = *(v5 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238757B60();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BankConnectPrivacyOnboardingView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0A590, &qword_238765AB8);
  v50 = *(v15 - 8);
  v51 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v48 = &v42 - v17;
  (*(v9 + 16))(v11, a1, v8, v16);
  v49 = v5;
  v18 = *(a1 + *(v5 + 20));
  if (v18)
  {
    v19 = [v18 primaryAccountIdentifier];
    v20 = sub_23875EA80();
    v45 = v21;
    v46 = v20;
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  v22 = *(a2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowManager);
  v23 = *(a2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowType);
  v43 = *(a2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_isExistingConnection);
  v44 = v23;
  sub_2385165C8(a1, &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrivacyOnboardingStep);
  v24 = *(v47 + 80);
  v47 = a1;
  v25 = (v24 + 24) & ~v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  sub_23851512C(v7, v26 + v25, type metadata accessor for PrivacyOnboardingStep);
  type metadata accessor for BankConnectPrivacyOnboardingViewModel(0);
  v27 = swift_allocObject();
  v55 = type metadata accessor for BankConnectAuthorizationFlowManager(0);
  v56 = &off_284B31020;
  *&v54 = v22;
  v53 = 0;

  sub_23875C290();
  (*(v9 + 32))(v27 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_institution, v11, v8);
  v28 = (v27 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_fpanID);
  v29 = v45;
  *v28 = v46;
  v28[1] = v29;
  *(v27 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_isExistingConnection) = v43;
  sub_2384347C0(&v54, v27 + 16);
  *(v27 + 72) = v44;
  *(v27 + 56) = sub_238516B00;
  *(v27 + 64) = v26;
  *v14 = swift_getKeyPath(a8_0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v30 = *(v12 + 20);
  v31 = *MEMORY[0x277CDFA10];
  v32 = sub_23875C880();
  (*(*(v32 - 8) + 104))(&v14[v30], v31, v32);
  v33 = &v14[*(v12 + 24)];
  *v33 = sub_2384AD60C;
  *(v33 + 1) = v27;
  v33[16] = 0;
  type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v34 = sub_2385148B0(&unk_27DF0A5A0, type metadata accessor for BankConnectPrivacyOnboardingView, &protocol conformance descriptor for BankConnectPrivacyOnboardingView);
  v35 = v48;
  sub_23875DE40();
  v36 = sub_238515494(v14, type metadata accessor for BankConnectPrivacyOnboardingView);
  MEMORY[0x28223BE20](v36);
  *(&v42 - 32) = v37;
  *(&v42 - 3) = sub_238516B2C;
  *(&v42 - 2) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D200, &qword_238765AC0);
  *&v54 = v12;
  *(&v54 + 1) = v34;
  swift_getOpaqueTypeConformance2();
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D210, &qword_238765AC8);
  v39 = sub_2384727E4();
  *&v54 = v38;
  *(&v54 + 1) = v39;
  swift_getOpaqueTypeConformance2();
  v40 = v51;
  sub_23875DEF0();

  return (*(v50 + 8))(v35, v40);
}

uint64_t sub_238511B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[1] = a3;
  v5 = type metadata accessor for ReconnectAccountsStep(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = sub_238757B60();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v11);
  v14 = *(a1 + *(v6 + 28));
  if (v14)
  {
    v15 = [v14 primaryAccountIdentifier];
    v27[0] = sub_23875EA80();
    v17 = v16;
  }

  else
  {
    v27[0] = 0;
    v17 = 0;
  }

  v18 = *(a2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowManager);
  sub_2385165C8(a1, v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReconnectAccountsStep);
  v19 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  sub_23851512C(v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ReconnectAccountsStep);
  type metadata accessor for BankConnectReconnectAccountsViewModel(0);
  v21 = swift_allocObject();
  v31 = type metadata accessor for BankConnectAuthorizationFlowManager(0);
  v32 = &off_284B31020;
  *&v29 = v18;
  v28 = 0;

  sub_23875C290();
  (*(v10 + 32))(v21 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_institution, v13, v9);
  v22 = (v21 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_fpanID);
  *v22 = v27[0];
  v22[1] = v17;
  sub_2384347C0(&v29, v21 + 16);
  *(v21 + 56) = sub_238516B44;
  *(v21 + 64) = v20;
  *&v29 = sub_2384AD60C;
  *(&v29 + 1) = v21;
  v30 = 0;
  v23 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  sub_2384729EC(v23, v24, v25);
  sub_23875DE40();
  return sub_2383FC164(v29, *(&v29 + 1));
}

double sub_238511EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebAuthorizationStep(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = *(v7 + 32);
  sub_2385165C8(a2, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WebAuthorizationStep);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  sub_23851512C(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for WebAuthorizationStep);

  sub_23850B1C8((a2 + v8), sub_238516DD4, v10);

  return result;
}

uint64_t sub_238512004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionAuthorizationStep(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385165C8(a1 + *(v5 + 32), v10, type metadata accessor for BankConnectExtensionAuthorizationFlow);
  v11 = *(a2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowManager);
  sub_2385165C8(a1, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtensionAuthorizationStep);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  sub_23851512C(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ExtensionAuthorizationStep);
  type metadata accessor for BankConnectExtensionAuthorizationViewModel(0);
  v14 = swift_allocObject();
  v15 = (v14 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flowManager);
  v15[3] = type metadata accessor for BankConnectAuthorizationFlowManager(0);
  v15[4] = &off_284B31020;
  *v15 = v11;
  sub_23851512C(v10, v14 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flow, type metadata accessor for BankConnectExtensionAuthorizationFlow);
  v16 = (v14 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_completionHandler);
  *v16 = sub_238516E8C;
  v16[1] = v13;
  v22 = sub_2384AD60C;
  v23 = v14;
  v24 = 0;
  v17 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  sub_238472C2C(v17, v18, v19);

  sub_23875DE40();
  return sub_2383FC164(v22, v23);
}

uint64_t sub_2385122A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v60 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09398, &unk_23876B810);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v57 = &v41 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  MEMORY[0x28223BE20](v56);
  v55 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = &v41 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093A0, &qword_238763360);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v46 = &v41 - v9;
  v10 = type metadata accessor for AccountConnectionStep(0);
  v11 = (v10 - 8);
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = sub_238757B60();
  v48 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v17;
  v54 = type metadata accessor for BankConnectAccountConnectionView(0);
  v18 = MEMORY[0x28223BE20](v54);
  v20 = (&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v17, a1, v14, v18);
  v21 = v11[8];
  v22 = (a1 + v11[7]);
  v23 = v22[1];
  v47 = *v22;
  v42 = v23;
  v43 = *(a1 + v21);
  v24 = v43;
  v25 = v44;
  v45 = *(v44 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowType);
  v49 = *(a1 + v11[9]);
  sub_2385165C8(a1, &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountConnectionStep);
  v26 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  sub_23851512C(&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for AccountConnectionStep);
  sub_238758CC0();
  v28 = v24;

  v44 = sub_238758CB0();
  sub_238758890();
  sub_238758880();
  v41 = sub_238758870();

  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  v29 = swift_allocObject();
  v30 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel__state;
  v61 = 0;
  v62 = 0;
  v63 = 3;
  v31 = v46;
  sub_23875C290();
  (*(v51 + 32))(&v29[v30], v31, v53);
  v32 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel__selectedAccountFQAI;
  v33 = sub_23875A9F0();
  v34 = v52;
  (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
  sub_23843981C(v34, v55, &qword_27DF0D390, &unk_238763350);
  v35 = v57;
  sub_23875C290();
  sub_238439884(v34, &qword_27DF0D390, &unk_238763350);
  (*(v58 + 32))(&v29[v32], v35, v59);
  v29[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_shouldLoadData] = 1;
  (*(v15 + 32))(&v29[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_institution], v50, v48);
  v36 = &v29[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_consentID];
  v37 = v42;
  *v36 = v47;
  *(v36 + 1) = v37;
  *(v29 + 6) = v43;
  v29[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_flowType] = v45;
  v38 = v41;
  *(v29 + 2) = v44;
  *(v29 + 3) = v38;
  v29[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_ignoreConnectedAccounts] = v49;
  *&v29[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_autocompletionDelay] = 3000000000;
  *(v29 + 4) = sub_238516EB8;
  *(v29 + 5) = v27;
  *v20 = swift_getKeyPath(a8_0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v39 = v20 + *(v54 + 20);
  *v39 = sub_2384AD60C;
  *(v39 + 1) = v29;
  v39[16] = 0;
  sub_2385148B0(&unk_27DF0D290, type metadata accessor for BankConnectAccountConnectionView, &protocol conformance descriptor for BankConnectAccountConnectionView);
  sub_23875DE20();
  return sub_238515494(v20, type metadata accessor for BankConnectAccountConnectionView);
}

uint64_t sub_23851296C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowType);
  sub_238758CC0();

  v11 = sub_238758CB0();
  type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel(0);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC12FinanceKitUI44BankConnectOfflineLabPrivacyConsentViewModel__isLoading;
  v20 = 0;
  sub_23875C290();
  (*(v4 + 32))(v12 + v13, v6, v3);
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  *(v12 + 32) = sub_23851706C;
  *(v12 + 40) = a1;
  *v9 = swift_getKeyPath(a8_0, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v14 = *(v7 + 20);
  v15 = *MEMORY[0x277CDFA10];
  v16 = sub_23875C880();
  (*(*(v16 - 8) + 104))(&v9[v14], v15, v16);
  v17 = &v9[*(v7 + 24)];
  *v17 = sub_2384AD60C;
  *(v17 + 1) = v12;
  v17[16] = 0;
  sub_2385148B0(qword_27DF0A630, type metadata accessor for BankConnectOfflineLabPrivacyConsentView, &protocol conformance descriptor for BankConnectOfflineLabPrivacyConsentView);
  sub_23875DE40();
  return sub_238515494(v9, type metadata accessor for BankConnectOfflineLabPrivacyConsentView);
}

double sub_238512C24(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccountConnectionStep(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = *a1;
  v14 = sub_23875ED80();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_2385165C8(a3, v9, type metadata accessor for AccountConnectionStep);
  sub_23875ED50();

  sub_238516F2C(v13);
  v15 = sub_23875ED40();
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v15;
  v18[3] = v19;
  v18[4] = a2;
  sub_23851512C(v9, v18 + v16, type metadata accessor for AccountConnectionStep);
  *(v18 + v17) = v13;
  sub_2386C3BA4(0, 0, v12, &unk_23876CFB0, v18);

  return result;
}

uint64_t sub_238512E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = sub_23875ED50();
  v6[4] = sub_23875ED40();
  v6[2] = a6;
  v9 = swift_task_alloc();
  v6[5] = v9;
  *v9 = v6;
  v9[1] = sub_238512F08;

  return sub_2385096DC(a5, v6 + 2);
}

uint64_t sub_238512F08()
{

  v1 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_238513044, v1, v0);
}

uint64_t sub_238513044()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_2385130A4(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectAuthorizationFlowResult(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
  v6 = type metadata accessor for BankConnectAuthorizationError(0);
  (*(*(v6 - 8) + 56))(v4, 1, 2, v6);

  v5(v4);

  sub_238515494(v4, type metadata accessor for BankConnectAuthorizationFlowResult);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didCompleteFlowItem];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2385131C8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for BankConnectAuthorizationFlowView(0);
  v37 = *(v2 - 8);
  v47 = *(v37 + 8);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v36 = (v31 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = v31 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D1A0, &qword_23876CE30);
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v46 = v31 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D1A8, &qword_23876CE38);
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = v31 - v9;
  v10 = *(v1 + 8);
  v34 = *v1;
  v33 = v10;
  v32 = *(v1 + 16);
  v31[1] = type metadata accessor for BankConnectAuthorizationFlowViewModel(0);
  sub_2385148B0(&qword_27DF0D128, type metadata accessor for BankConnectAuthorizationFlowViewModel, &unk_23876CDEC);
  sub_23875C4A0();
  swift_getKeyPath(asc_23876CE40);
  sub_23875C7C0();

  v57 = v59;
  v58 = v60;
  v50 = v1;
  v35 = v1;
  v31[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D030, &qword_238768208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D1B0, &unk_23876CE68);
  sub_23843A3E8(&qword_27DF0D1B8, &unk_27DF0D030, &qword_238768208, MEMORY[0x277D83960]);
  sub_23843A3E8(&qword_27DF0D1C0, &unk_27DF0D030, &qword_238768208, MEMORY[0x277D83980]);
  sub_23843A3E8(&qword_27DF0D1C8, &unk_27DF0D030, &qword_238768208, MEMORY[0x277D83990]);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A560, &qword_238765AA0);
  v12 = type metadata accessor for BankConnectAuthorizationNavigationDestination(255);
  v13 = sub_238472504();
  v14 = sub_2385148B0(&unk_27DF0D2A0, type metadata accessor for BankConnectAuthorizationNavigationDestination, &unk_23876CDAC);
  v51 = v11;
  v52 = v12;
  v53 = v11;
  v54 = v13;
  v55 = v14;
  v56 = v13;
  swift_getOpaqueTypeConformance2();
  sub_23875C8E0();
  sub_23875C490();
  swift_getKeyPath(byte_23876CE78);
  swift_getKeyPath(byte_23876CEA0);
  v15 = v45;
  sub_23875C2D0();

  v34 = type metadata accessor for BankConnectAuthorizationFlowView;
  v16 = v36;
  sub_2385165C8(v1, v36, type metadata accessor for BankConnectAuthorizationFlowView);
  v17 = *(v37 + 80);
  v33 = (v17 + 16) & ~v17;
  v18 = swift_allocObject();
  v37 = type metadata accessor for BankConnectAuthorizationFlowView;
  sub_23851512C(v16, v18 + ((v17 + 16) & ~v17), type metadata accessor for BankConnectAuthorizationFlowView);
  v19 = type metadata accessor for BankConnectAuthorizationError(0);
  LOBYTE(v59) = (*(*(v19 - 8) + 48))(v15, 1, v19) != 1;
  sub_23875E330();
  v36 = v31;
  v32 = v53;
  v48 = sub_238516630;
  v49 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  sub_23843A3E8(&qword_27DF0D2B0, &qword_27DF0D1A0, &qword_23876CE30, MEMORY[0x277CDDA18]);
  sub_2385148B0(&qword_27DF0D2B8, type metadata accessor for BankConnectAuthorizationError, &protocol conformance descriptor for BankConnectAuthorizationError);
  sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
  v20 = v39;
  v21 = v38;
  v22 = v45;
  v23 = v46;
  sub_23875DEA0();

  (*(v40 + 8))(v23, v20);
  sub_238439884(v22, &unk_27DF0B540, &qword_238765900);
  v24 = v43;
  sub_2385165C8(v35, v43, v34);
  v25 = v33;
  v26 = swift_allocObject();
  sub_23851512C(v24, v26 + v25, v37);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_238516800;
  *(v27 + 24) = v26;
  v28 = v44;
  (*(v41 + 32))(v44, v21, v42);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D2C8, &qword_23876CEC8);
  v30 = (v28 + *(result + 36));
  *v30 = sub_2384495F4;
  v30[1] = v27;
  v30[2] = 0;
  v30[3] = 0;
  return result;
}

void sub_238513AC8(void *a2@<X8>)
{
  swift_getKeyPath(asc_23876CE40);
  swift_getKeyPath(byte_23876CFB8);
  sub_23875C2D0();

  *a2 = v3;
}

uint64_t sub_238513B48(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(asc_23876CE40);
  swift_getKeyPath(byte_23876CFB8);

  sub_23875C2E0();
  return sub_2385050F8();
}

double sub_238513BC8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for BankConnectAuthorizationFlowView(0);
  v16 = *(v3 - 8);
  v4 = *(v16 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v17 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  MEMORY[0x28223BE20](v20);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0A560, &qword_238765AA0);
  MEMORY[0x28223BE20](v19);
  v8 = (&v16 - v7);
  sub_23875ED50();
  v18 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BankConnectAuthorizationFlowViewModel(0);
  sub_2385148B0(&qword_27DF0D128, type metadata accessor for BankConnectAuthorizationFlowViewModel, &unk_23876CDEC);
  v9 = sub_23875C490();
  sub_2385165C8(v9 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_rootDestination, v6, type metadata accessor for BankConnectAuthorizationNavigationDestination);

  v10 = sub_23875C490();
  sub_238500544(v6, v10, v8);

  sub_238515494(v6, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  v11 = v17;
  sub_2385165C8(a1, v17, type metadata accessor for BankConnectAuthorizationFlowView);
  v12 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v13 = swift_allocObject();
  sub_23851512C(v11, v13 + v12, type metadata accessor for BankConnectAuthorizationFlowView);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_23851685C;
  *(v14 + 24) = v13;
  sub_238472504();
  sub_2385148B0(&unk_27DF0D2A0, type metadata accessor for BankConnectAuthorizationNavigationDestination, &unk_23876CDAC);
  sub_23875DDD0();

  sub_238439884(v8, &unk_27DF0A560, &qword_238765AA0);

  return result;
}

double sub_238513FA8@<D0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  type metadata accessor for BankConnectAuthorizationFlowViewModel(0);
  sub_2385148B0(&qword_27DF0D128, type metadata accessor for BankConnectAuthorizationFlowViewModel, &unk_23876CDEC);
  v5 = sub_23875C490();
  sub_238500544(a1, v5, a3);

  return result;
}

double sub_238514064(uint64_t a1, void (*a2)(uint64_t))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2(a1);

  return result;
}

uint64_t sub_23851412C(uint64_t *a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  MEMORY[0x28223BE20](v1 - 8);
  v17 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v18 = &v17 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for BankConnectAuthorizationError(0);
  v19 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v20 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BankConnectAuthorizationFlowViewModel(0);
  sub_2385148B0(&qword_27DF0D128, type metadata accessor for BankConnectAuthorizationFlowViewModel, &unk_23876CDEC);
  sub_23875C490();
  swift_getKeyPath(byte_23876CE78);
  swift_getKeyPath(byte_23876CEA0);
  sub_23875C2D0();

  v10 = v19;

  if ((*(v10 + 48))(v7, 1, v8) == 1)
  {
    return sub_238439884(v7, &unk_27DF0B540, &qword_238765900);
  }

  v12 = v20;
  sub_23851512C(v7, v20, type metadata accessor for BankConnectAuthorizationError);
  sub_23875C490();
  sub_238505BF4(v12);

  sub_23875C490();
  v13 = v18;
  (*(v10 + 56))(v18, 1, 1, v8);
  swift_getKeyPath(byte_23876CE78);
  swift_getKeyPath(byte_23876CEA0);
  sub_23843981C(v13, v17, &unk_27DF0B540, &qword_238765900);

  sub_23875C2E0();
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = v13;
  v16 = v20;
  if (Strong)
  {
    [Strong didCompleteFlowItem];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_238439884(v15, &unk_27DF0B540, &qword_238765900);
  return sub_238515494(v16, type metadata accessor for BankConnectAuthorizationError);
}

void sub_2385144EC()
{
  v1 = sub_23875C1E0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BankConnectAuthorizationFlowViewModel(0);
  sub_2385148B0(&qword_27DF0D128, type metadata accessor for BankConnectAuthorizationFlowViewModel, &unk_23876CDEC);
  v5 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowType);

  v6 = MEMORY[0x277D38550];
  if (!v5)
  {
    v6 = MEMORY[0x277D38560];
  }

  v22 = *v6;
  v7 = objc_opt_self();
  v8 = [v7 reporterForSubject_];
  if (v8)
  {

    sub_23875C120();
    v9 = v22;
    v10 = sub_23875C1B0();
    v11 = sub_23875EFE0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      v14 = sub_23875EA80();
      v16 = sub_2384615AC(v14, v15, &v23);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_2383F8000, v10, v11, "Analytics session for %s has already been started", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x23EE64DF0](v13, -1, -1);
      MEMORY[0x23EE64DF0](v12, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    [v7 beginSubjectReporting_];
    v17 = *(*(v0 + *(type metadata accessor for BankConnectAuthorizationFlowView(0) + 24)) + 16);
    v18 = *(*v17 + *MEMORY[0x277D841D0] + 16);
    v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v17 + v19));
    v20 = sub_23875BCB0();
    (*(*(v20 - 8) + 8))(v17 + v18, v20);
    sub_23875BCA0();
    os_unfair_lock_unlock((v17 + v19));
    v21 = v22;
  }
}

uint64_t sub_2385148B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_238514AF0@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v32 = a1;
  v35 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D348, &qword_23876CF78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  v8 = sub_23875D2A0();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D220, &qword_238765AD0);
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D210, &qword_238765AC8);
  MEMORY[0x28223BE20](v34);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  sub_23875ED50();
  v33 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v32)
  {
    v17 = sub_23875D250();
    MEMORY[0x28223BE20](v17);
    v18 = v30;
    *(&v28 - 2) = v29;
    *(&v28 - 1) = v18;
    sub_2384B5A24(v19, v20, v21);
    sub_23875C990();
    v22 = sub_23843A3E8(&qword_27DF0A5C0, &unk_27DF0D220, &qword_238765AD0, MEMORY[0x277CDDB60]);
    MEMORY[0x23EE61E80](v11, v9, v22);
    (*(v5 + 16))(v13, v7, v4);
    (*(v5 + 56))(v13, 0, 1, v4);
    v36 = v9;
    v37 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x23EE61EB0](v13, v4, OpaqueTypeConformance2);
    sub_238439884(v13, &unk_27DF0D210, &qword_238765AC8);
    (*(v5 + 8))(v7, v4);
    (*(v31 + 8))(v11, v9);
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
    v24 = sub_23843A3E8(&qword_27DF0A5C0, &unk_27DF0D220, &qword_238765AD0, MEMORY[0x277CDDB60]);
    v36 = v9;
    v37 = v24;
    v25 = swift_getOpaqueTypeConformance2();
    MEMORY[0x23EE61EB0](v13, v4, v25);
    sub_238439884(v13, &unk_27DF0D210, &qword_238765AC8);
  }

  v26 = sub_2384727E4();
  MEMORY[0x23EE61E80](v16, v34, v26);
  sub_238439884(v16, &unk_27DF0D210, &qword_238765AC8);

  return result;
}

void sub_238514FB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  v11 = sub_23875EA80();
  v13 = v12;

  *a3 = v11;
  a3[1] = v13;
  a3[2] = a1;
  a3[3] = a2;
}

uint64_t sub_23851512C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238515194(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_23875B8B0();
    v10 = sub_23875B940();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_23875B940();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_238439884(v8, &qword_27DF0D040, &qword_2387676A0);
}

double sub_2385152E8()
{
  swift_getKeyPath(byte_23876CFE8);
  swift_getKeyPath(byte_23876D010);
  sub_23875C2D0();

  return result;
}

uint64_t sub_238515364(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_23843981C(a1, &v10 - v7, &qword_27DF0D040, &qword_2387676A0);
  swift_getKeyPath(byte_23876CFE8);
  swift_getKeyPath(byte_23876D010);
  sub_23843981C(v8, v5, &qword_27DF0D040, &qword_2387676A0);

  sub_23875C2E0();
  return sub_238439884(v8, &qword_27DF0D040, &qword_2387676A0);
}

uint64_t sub_238515494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2385154F4(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE5C610]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WebAuthorizationStep(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_238449184(0, &qword_27DF096A8, 0x277D38080);
    v8 = v7;
    v9 = v6;
    v10 = sub_23875F1B0();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (MEMORY[0x23EE5F410](a1 + *(v4 + 24), a2 + *(v4 + 24)))
  {
    type metadata accessor for BankConnectWebAuthorizationFlow(0);
    if (sub_23875B890())
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2385155E0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE5C610]() & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = type metadata accessor for AccountConnectionStep(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11)
  {
    if (v12)
    {
      sub_238449184(0, &qword_27DF096A8, 0x277D38080);
      v13 = v12;
      v14 = v11;
      v15 = sub_23875F1B0();

      if (v15)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v16 = 0;
    return v16 & 1;
  }

  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v16 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  return v16 & 1;
}

uint64_t sub_2385156D0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE5C610]() & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = type metadata accessor for PrivacyOnboardingStep(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (v7)
    {
      sub_238449184(0, &qword_27DF096A8, 0x277D38080);
      v8 = v7;
      v9 = v6;
      v10 = sub_23875F1B0();

      if (v10)
      {
        goto LABEL_5;
      }
    }

LABEL_7:
    v11 = 0;
    return v11 & 1;
  }

  if (v7)
  {
    goto LABEL_7;
  }

LABEL_5:
  v11 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  return v11 & 1;
}

uint64_t sub_238515794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (MEMORY[0x23EE5C610]())
  {
    v6 = *(a3(0) + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);
    if (v7)
    {
      if (v8)
      {
        sub_238449184(0, &qword_27DF096A8, 0x277D38080);
        v9 = v8;
        v10 = v7;
        v11 = sub_23875F1B0();

        if (v11)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_238515840(uint64_t a1, uint64_t a2)
{
  v105 = a1;
  v106 = a2;
  v2 = type metadata accessor for AccountConnectionStep(0);
  MEMORY[0x28223BE20](v2 - 8);
  v100 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ExtensionAuthorizationStep(0);
  MEMORY[0x28223BE20](v4 - 8);
  v99 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for WebAuthorizationStep(0);
  MEMORY[0x28223BE20](v95);
  v102 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for AppAuthorizationStep(0);
  MEMORY[0x28223BE20](v94);
  v101 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for ReconnectAccountsStep(0);
  MEMORY[0x28223BE20](v92);
  v98 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for PrivacyOnboardingStep(0);
  MEMORY[0x28223BE20](v93);
  v97 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TermsAndConditionsStep(0);
  MEMORY[0x28223BE20](v10);
  v96 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v91 - v16;
  MEMORY[0x28223BE20](v18);
  v104 = &v91 - v19;
  MEMORY[0x28223BE20](v20);
  v103 = &v91 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v91 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v91 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v91 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D198, &qword_23876CE28);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v91 - v32;
  v35 = *(v34 + 56);
  sub_2385165C8(v105, &v91 - v32, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  sub_2385165C8(v106, &v33[v35], type metadata accessor for BankConnectAuthorizationNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_2385165C8(v33, v30, type metadata accessor for BankConnectAuthorizationNavigationDestination);
        if (swift_getEnumCaseMultiPayload())
        {
          v37 = type metadata accessor for TermsAndConditionsStep;
LABEL_47:
          v77 = v37;
          v78 = v30;
          goto LABEL_48;
        }

        v79 = &v33[v35];
        v39 = v96;
        sub_23851512C(v79, v96, type metadata accessor for TermsAndConditionsStep);
        if (MEMORY[0x23EE5C610](v30, v39))
        {
          v80 = *(v10 + 20);
          v81 = *&v30[v80];
          v82 = *(v39 + v80);
          if (v81)
          {
            if (v82)
            {
              sub_238449184(0, &qword_27DF096A8, 0x277D38080);
              v83 = v82;
              v84 = v81;
              v85 = sub_23875F1B0();

              if (v85)
              {
                goto LABEL_54;
              }
            }
          }

          else if (!v82)
          {
LABEL_54:
            v86 = type metadata accessor for TermsAndConditionsStep;
LABEL_68:
            v54 = v86;
            sub_238515494(v39, v86);
            v55 = v30;
            goto LABEL_77;
          }
        }

        v87 = type metadata accessor for TermsAndConditionsStep;
        goto LABEL_72;
      }

      sub_2385165C8(v33, v27, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v61 = v97;
        sub_23851512C(&v33[v35], v97, type metadata accessor for PrivacyOnboardingStep);
        if (MEMORY[0x23EE5C610](v27, v61))
        {
          v62 = *(v93 + 20);
          v63 = *&v27[v62];
          v64 = *(v61 + v62);
          if (v63)
          {
            if (!v64)
            {
              goto LABEL_64;
            }

            sub_238449184(0, &qword_27DF096A8, 0x277D38080);
            v65 = v64;
            v66 = v63;
            v67 = sub_23875F1B0();

            if ((v67 & 1) == 0)
            {
              goto LABEL_64;
            }

LABEL_63:
            if (v27[*(v93 + 24)] == *(v61 + *(v93 + 24)))
            {
              v54 = type metadata accessor for PrivacyOnboardingStep;
              sub_238515494(v61, type metadata accessor for PrivacyOnboardingStep);
              v55 = v27;
              goto LABEL_77;
            }

            goto LABEL_64;
          }

          if (!v64)
          {
            goto LABEL_63;
          }
        }

LABEL_64:
        v88 = type metadata accessor for PrivacyOnboardingStep;
        sub_238515494(v61, type metadata accessor for PrivacyOnboardingStep);
        v89 = v27;
        goto LABEL_73;
      }

      v77 = type metadata accessor for PrivacyOnboardingStep;
      v78 = v27;
LABEL_48:
      sub_238515494(v78, v77);
      goto LABEL_49;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_2385165C8(v33, v24, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v77 = type metadata accessor for ReconnectAccountsStep;
        v78 = v24;
        goto LABEL_48;
      }

      v46 = &v33[v35];
      v47 = v98;
      sub_23851512C(v46, v98, type metadata accessor for ReconnectAccountsStep);
      if (MEMORY[0x23EE5C610](v24, v47))
      {
        v48 = *(v92 + 20);
        v49 = *&v24[v48];
        v50 = *(v47 + v48);
        if (v49)
        {
          if (v50)
          {
            sub_238449184(0, &qword_27DF096A8, 0x277D38080);
            v51 = v50;
            v52 = v49;
            v53 = sub_23875F1B0();

            if (v53)
            {
              goto LABEL_20;
            }
          }
        }

        else if (!v50)
        {
LABEL_20:
          v54 = type metadata accessor for ReconnectAccountsStep;
          sub_238515494(v47, type metadata accessor for ReconnectAccountsStep);
          v55 = v24;
LABEL_77:
          sub_238515494(v55, v54);
          goto LABEL_78;
        }
      }

      v88 = type metadata accessor for ReconnectAccountsStep;
      sub_238515494(v47, type metadata accessor for ReconnectAccountsStep);
      v89 = v24;
LABEL_73:
      sub_238515494(v89, v88);
      sub_238515494(v33, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      goto LABEL_74;
    }

    v30 = v103;
    sub_2385165C8(v33, v103, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v37 = type metadata accessor for AppAuthorizationStep;
      goto LABEL_47;
    }

    v70 = &v33[v35];
    v39 = v101;
    sub_23851512C(v70, v101, type metadata accessor for AppAuthorizationStep);
    if ((MEMORY[0x23EE5C610](v30, v39) & 1) == 0)
    {
      goto LABEL_69;
    }

    v71 = *(v94 + 20);
    v72 = *&v30[v71];
    v73 = *(v39 + v71);
    if (v72)
    {
      if (!v73)
      {
        goto LABEL_69;
      }

      sub_238449184(0, &qword_27DF096A8, 0x277D38080);
      v74 = v73;
      v75 = v72;
      v76 = sub_23875F1B0();

      if ((v76 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (v73)
    {
LABEL_69:
      v87 = type metadata accessor for AppAuthorizationStep;
      goto LABEL_72;
    }

    if (MEMORY[0x23EE5F410](&v30[*(v94 + 24)], v39 + *(v94 + 24)))
    {
      v86 = type metadata accessor for AppAuthorizationStep;
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_49:
        sub_238439884(v33, &qword_27DF0D198, &qword_23876CE28);
LABEL_74:
        v58 = 0;
        return v58 & 1;
      }

LABEL_78:
      sub_238515494(v33, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      v58 = 1;
      return v58 & 1;
    }

    sub_2385165C8(v33, v14, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      v77 = type metadata accessor for AccountConnectionStep;
      v78 = v14;
      goto LABEL_48;
    }

    v56 = &v33[v35];
    v57 = v100;
    sub_23851512C(v56, v100, type metadata accessor for AccountConnectionStep);
    v58 = sub_2385155E0(v14, v57);
    sub_238515494(v57, type metadata accessor for AccountConnectionStep);
    v59 = v14;
    v60 = type metadata accessor for AccountConnectionStep;
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      v30 = v104;
      sub_2385165C8(v33, v104, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v37 = type metadata accessor for WebAuthorizationStep;
        goto LABEL_47;
      }

      v38 = &v33[v35];
      v39 = v102;
      sub_23851512C(v38, v102, type metadata accessor for WebAuthorizationStep);
      if ((MEMORY[0x23EE5C610](v30, v39) & 1) == 0)
      {
        goto LABEL_59;
      }

      v40 = *(v95 + 20);
      v41 = *&v30[v40];
      v42 = *(v39 + v40);
      if (v41)
      {
        if (!v42)
        {
          goto LABEL_59;
        }

        sub_238449184(0, &qword_27DF096A8, 0x277D38080);
        v43 = v42;
        v44 = v41;
        v45 = sub_23875F1B0();

        if ((v45 & 1) == 0)
        {
          goto LABEL_59;
        }
      }

      else if (v42)
      {
LABEL_59:
        v87 = type metadata accessor for WebAuthorizationStep;
LABEL_72:
        v88 = v87;
        sub_238515494(v39, v87);
        v89 = v30;
        goto LABEL_73;
      }

      if (MEMORY[0x23EE5F410](&v30[*(v95 + 24)], v39 + *(v95 + 24)))
      {
        type metadata accessor for BankConnectWebAuthorizationFlow(0);
        if (sub_23875B890())
        {
          v86 = type metadata accessor for WebAuthorizationStep;
          goto LABEL_68;
        }
      }

      goto LABEL_59;
    }

    sub_2385165C8(v33, v17, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      v77 = type metadata accessor for ExtensionAuthorizationStep;
      v78 = v17;
      goto LABEL_48;
    }

    v68 = &v33[v35];
    v69 = v99;
    sub_23851512C(v68, v99, type metadata accessor for ExtensionAuthorizationStep);
    v58 = sub_2385164C8(v17, v69, type metadata accessor for ExtensionAuthorizationStep, _s12FinanceKitUI37BankConnectExtensionAuthorizationFlowV2eeoiySbAC_ACtFZ_0);
    sub_238515494(v69, type metadata accessor for ExtensionAuthorizationStep);
    v59 = v17;
    v60 = type metadata accessor for ExtensionAuthorizationStep;
  }

  sub_238515494(v59, v60);
  sub_238515494(v33, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  return v58 & 1;
}

uint64_t sub_2385164C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  if ((MEMORY[0x23EE5C610]() & 1) == 0)
  {
    return 0;
  }

  v7 = a3(0);
  v8 = *(v7 + 20);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v10)
  {
    return 0;
  }

  sub_238449184(0, &qword_27DF096A8, 0x277D38080);
  v11 = v10;
  v12 = v9;
  v13 = sub_23875F1B0();

  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  v14 = *(v7 + 24);

  return a4(a1 + v14, a2 + v14);
}

uint64_t sub_2385165C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238516630()
{
  v1 = *(type metadata accessor for BankConnectAuthorizationFlowView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_23851412C(v2);
}

uint64_t objectdestroyTm_10()
{
  v1 = type metadata accessor for BankConnectAuthorizationFlowView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_2383FC164(*(v0 + v4), *(v0 + v4 + 8));
  v5 = v0 + v4 + *(v1 + 20);
  v6 = sub_23875B940();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D100, &qword_23876CA08);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

double sub_23851685C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for BankConnectAuthorizationFlowView(0);

  return sub_238513FA8(a1, a2);
}

double sub_2385168E4()
{
  v1 = *(type metadata accessor for WebAuthorizationStep(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_238511EB8(v2, v3);
}

void *sub_238516974(uint64_t *a1)
{
  v3 = *(type metadata accessor for TermsAndConditionsStep(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *a1;
  return sub_238506458(v1 + v4, &v6);
}

_OWORD *sub_2385169F0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t objectdestroy_167Tm(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*v2 + 64);

  v6 = sub_238757B60();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_238516BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_161Tm()
{
  v1 = (type metadata accessor for WebAuthorizationStep(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_238757B60();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[8];
  v7 = sub_23875A9A0();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(type metadata accessor for BankConnectWebAuthorizationFlow(0) + 20);
  v9 = sub_23875B940();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238516E00(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, void, uint64_t))
{
  v6 = a2(0);
  v7 = *(v6 - 8);
  return a3(v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80)), *(v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80)) + *(v6 + 20)), a1);
}

double sub_238516EB8(void **a1)
{
  v3 = *(type metadata accessor for AccountConnectionStep(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_238512C24(a1, v4, v5);
}

id sub_238516F2C(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_238516F3C(uint64_t a1)
{
  v4 = *(type metadata accessor for AccountConnectionStep(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2384494A4;

  return sub_238512E3C(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_238517074(uint64_t a1)
{
  v4 = *(sub_238758BB0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238449A7C;

  return sub_23850FBA0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_238517194(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23875B940() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for AppAuthorizationStep(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_238449A7C;

  return sub_23850EEC4(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

unint64_t sub_238517300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0D398;
  if (!qword_27DF0D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D398);
  }

  return result;
}

uint64_t sub_238517354(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23875B940() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for WebAuthorizationStep(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_238449A7C;

  return sub_23850D948(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2385174E4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_238449A7C;

  return sub_23850C294(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_23851764C(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_23875C1E0();
  v22[1] = *(v3 - 8);
  v22[2] = v3;
  MEMORY[0x28223BE20](v3);
  v4 = sub_23875A820();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875AB40();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  (*(v9 + 16))(v11, a1 + *(v12 + 28), v8);
  v13 = (*(v9 + 88))(v11, v8);
  v14 = *MEMORY[0x277CC8260];
  (*(v9 + 8))(v11, v8);
  if (v13 != v14)
  {
    return 1;
  }

  sub_23875A7E0();
  v15 = sub_23875A800();
  (*(v5 + 8))(v7, v4);
  v16 = sub_238757B10();
  result = 0;
  if ((v16 & 1) == 0 && (v15 & 1) == 0)
  {
    v18 = sub_238757B40();
    v20 = v19;
    MEMORY[0x28223BE20](v18);
    v22[-4] = v21;
    v22[-3] = v20;
    v22[-2] = v23;
    sub_23875F120();

    return v24;
  }

  return result;
}

unint64_t sub_238517A84()
{
  result = qword_27DF0D3E0;
  if (!qword_27DF0D3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D2C8, &qword_23876CEC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D1A0, &qword_23876CE30);
    type metadata accessor for BankConnectAuthorizationError(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12E30, &unk_238765430);
    sub_23843A3E8(&qword_27DF0D2B0, &qword_27DF0D1A0, &qword_23876CE30, MEMORY[0x277CDDA18]);
    sub_2385148B0(&qword_27DF0D2B8, type metadata accessor for BankConnectAuthorizationError, &protocol conformance descriptor for BankConnectAuthorizationError);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D3E0);
  }

  return result;
}

uint64_t sub_238517C50()
{
  swift_getKeyPath(byte_23876D108);
  swift_getKeyPath(byte_23876D130);
  sub_23875C2D0();

  return v1;
}

uint64_t sub_238517CC4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 56) = a2;
  *(v5 + 64) = v4;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a1;
  *(v5 + 72) = sub_23875ED50();
  *(v5 + 80) = sub_23875ED40();
  v7 = sub_23875ECE0();
  *(v5 + 88) = v7;
  *(v5 + 96) = v6;

  return MEMORY[0x2822009F8](sub_238517D68, v7, v6);
}

uint64_t sub_238517D68()
{
  v1 = [*(v0 + 32) uniqueID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_23875EA80();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 64);
  v7 = OBJC_IVAR____TtC12FinanceKitUI10PassLoader_cachedPass;
  v8 = *(v6 + OBJC_IVAR____TtC12FinanceKitUI10PassLoader_cachedPass);
  if (v8 && (v9 = [v8 uniqueID]) != 0)
  {
    v10 = v9;
    v11 = sub_23875EA80();
    v13 = v12;

    v14 = &OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel__error;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v14 = &OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel__error;
    if (!v5)
    {
LABEL_7:
      if (v13)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }
  }

  if (!v13)
  {
LABEL_14:

LABEL_21:
    v18 = *(v0 + 64);
    v19 = *(v0 + 56);
    v21 = *(v0 + 40);
    v20 = *(v0 + 48);
    v22 = *(v0 + 32);
    v23 = *(v6 + v7);
    *(v6 + v7) = v22;
    v24 = v22;

    v25 = v18 + v14[128];
    *v25 = v21;
    *(v25 + 8) = v20;
    *(v25 + 16) = 0;
    v26 = sub_23875ED40();
    *(v0 + 104) = v26;
    v27 = swift_task_alloc();
    *(v0 + 112) = v27;
    v27[2] = v24;
    v27[3] = v21;
    v27[4] = v20;
    v27[5] = v19;
    v28 = swift_task_alloc();
    *(v0 + 120) = v28;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
    *v28 = v0;
    v28[1] = sub_238518040;
    v30 = MEMORY[0x277D85700];

    return MEMORY[0x2822007B8](v0 + 16, v26, v30, 0xD000000000000027, 0x8000000238789B20, sub_23851880C, v27, v29);
  }

  if (v3 == v11 && v5 == v13)
  {
  }

  else
  {
    v15 = sub_23875F630();

    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_16:
  v16 = *(v0 + 64) + v14[128];
  if (*(v16 + 16))
  {
    goto LABEL_21;
  }

  if (*v16 != *(v0 + 40) || *(v16 + 8) != *(v0 + 48))
  {
    goto LABEL_21;
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_238518040()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_2385181A0, v3, v2);
}

uint64_t sub_2385181A0()
{

  v1 = v0[2];
  swift_getKeyPath(byte_23876D108);
  swift_getKeyPath(byte_23876D130);
  v0[3] = v1;

  sub_23875C2E0();
  v2 = v0[1];

  return v2();
}

double sub_23851825C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D420, &qword_23876D150);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = aBlock - v12;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = [objc_opt_self() sharedInstance];
  if (v14)
  {
    v15 = v14;
    (*(v11 + 16))(v13, a1, v10);
    v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v17 = swift_allocObject();
    (*(v11 + 32))(v17 + v16, v13, v10);
    aBlock[4] = sub_23851881C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23851854C;
    aBlock[3] = &block_descriptor_7;
    v18 = _Block_copy(aBlock);

    [v15 snapshotWithPass:a2 size:a3 suppressedContent:v18 completion:{a4, a5}];
    _Block_release(v18);
  }

  else
  {
  }

  return result;
}

uint64_t sub_2385184FC(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D420, &qword_23876D150);
  return sub_23875ED10();
}

void sub_23851854C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_2385185B8()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI10PassLoader__image;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D428, &qword_23876D158);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PassLoader(uint64_t a1)
{
  result = qword_27DF0D408;
  if (!qword_27DF0D408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2385186C4(uint64_t a1)
{
  sub_238518768(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_238518768(uint64_t a1)
{
  if (!qword_27DF0D418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09540, &unk_238763800);
    v1 = sub_23875C2F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0D418);
    }
  }
}

uint64_t sub_2385187CC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PassLoader(0);
  result = sub_23875C260();
  *a2 = result;
  return result;
}

uint64_t sub_23851881C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D420, &qword_23876D150);

  return sub_2385184FC(a1);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OrderArchiveYear.months.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t static OrderArchiveYear.== infix(_:_:)(uint64_t result, unsigned __int16 *a2)
{
  if (*result != *a2)
  {
    return 0;
  }

  v2 = *(result + 8);
  v3 = *(a2 + 1);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 40);
  v6 = (v3 + 40);
  while (v4)
  {
    v7 = *(v6 - 4);
    v9 = *v6;
    v6 += 2;
    v8 = v9;
    result = *(v5 - 4) == v7 && *v5 == v8;
    v11 = result != 1 || v4-- == 1;
    v5 += 2;
    if (v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_238518A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0) - 8;
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_23851E250(v13, v10, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        sub_23851E250(v14, v6, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        v16 = sub_23849CE10();
        sub_23851E334(v6, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        sub_23851E334(v10, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_238518C1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_23875F630() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_238518CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_238758090();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v42 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC88, &qword_23876D250);
  MEMORY[0x28223BE20](v54);
  v11 = &v42 - v10;
  v55 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  MEMORY[0x28223BE20](v55);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v17 = (&v42 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    return 0;
  }

  if (!v18 || a1 == a2)
  {
    return 1;
  }

  v44 = v7;
  v19 = 0;
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v49 = a2 + v20;
  v47 = v13;
  v48 = (v5 + 48);
  v43 = (v5 + 32);
  v45 = (v5 + 8);
  v50 = *(v15 + 72);
  v51 = a1 + v20;
  v53 = v18;
  while (1)
  {
    v22 = v50 * v19;
    result = sub_23851E250(v51 + v50 * v19, v17, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
    if (v19 == v53)
    {
      break;
    }

    sub_23851E250(v49 + v22, v13, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
    v23 = *v17 == *v13 && v17[1] == v13[1];
    if (!v23 && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_33;
    }

    v24 = v55[5];
    v25 = *(v54 + 48);
    sub_23843981C(v17 + v24, v11, &unk_27DF0B080, &unk_2387662A0);
    sub_23843981C(v13 + v24, &v11[v25], &unk_27DF0B080, &unk_2387662A0);
    v26 = *v48;
    if ((*v48)(v11, 1, v4) == 1)
    {
      if (v26(&v11[v25], 1, v4) != 1)
      {
        goto LABEL_32;
      }

      sub_238439884(v11, &unk_27DF0B080, &unk_2387662A0);
      v13 = v47;
    }

    else
    {
      v27 = v52;
      sub_23843981C(v11, v52, &unk_27DF0B080, &unk_2387662A0);
      if (v26(&v11[v25], 1, v4) == 1)
      {
        (*v45)(v27, v4);
LABEL_32:
        sub_238439884(v11, &qword_27DF0BC88, &qword_23876D250);
        v13 = v47;
LABEL_33:
        sub_23851E334(v13, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
        sub_23851E334(v17, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
        return 0;
      }

      v28 = &v11[v25];
      v29 = v27;
      v30 = v44;
      (*v43)(v44, v28, v4);
      sub_23851E394(&qword_27DF0BC90, MEMORY[0x277CC6DC0], MEMORY[0x277CC6DD0]);
      v46 = sub_23875E9E0();
      v31 = *v45;
      (*v45)(v30, v4);
      v31(v29, v4);
      sub_238439884(v11, &unk_27DF0B080, &unk_2387662A0);
      v13 = v47;
      if ((v46 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (*(v17 + v55[6]) != *(v13 + v55[6]))
    {
      goto LABEL_33;
    }

    v32 = v55[7];
    v33 = v17 + v32;
    v34 = v13 + v32;
    if ((MEMORY[0x23EE5FA60](v17 + v32, v13 + v32) & 1) == 0)
    {
      goto LABEL_33;
    }

    v35 = *(type metadata accessor for ProductImage.ViewModel(0) + 20);
    v36 = *&v33[v35];
    v37 = *&v34[v35];
    v38 = *(v36 + 16);
    if (v38 != *(v37 + 16))
    {
      goto LABEL_33;
    }

    if (v38 && v36 != v37)
    {
      v39 = (v36 + 40);
      v40 = (v37 + 40);
      do
      {
        v41 = *(v39 - 1) == *(v40 - 1) && *v39 == *v40;
        if (!v41 && (sub_23875F630() & 1) == 0)
        {
          goto LABEL_33;
        }

        v39 += 2;
        v40 += 2;
      }

      while (--v38);
    }

    ++v19;
    sub_23851E334(v13, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
    sub_23851E334(v17, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
    result = 1;
    if (v19 == v53)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2385192A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_238725BA8(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_23851935C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_23851E250(v13, v10, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
      sub_23851E250(v14, v6, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
      v16 = *v10 == *v6 && *(v10 + 1) == *(v6 + 1);
      v17 = v16 && *(v10 + 2) == *(v6 + 2);
      if (!v17 || ((v10[24] ^ v6[24]) & 1) != 0 || (sub_238601FBC(&v10[*(v4 + 20)], &v6[*(v4 + 20)]) & 1) == 0)
      {
        break;
      }

      v18 = *(v4 + 24);
      v19 = *&v10[v18];
      v20 = *&v10[v18 + 8];
      v21 = &v6[v18];
      if (v19 == *v21 && v20 == *(v21 + 1))
      {
        sub_23851E334(v6, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
        sub_23851E334(v10, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
      }

      else
      {
        v23 = sub_23875F630();
        sub_23851E334(v6, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
        sub_23851E334(v10, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
        if ((v23 & 1) == 0)
        {
          return 0;
        }
      }

      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_23851E334(v6, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
    sub_23851E334(v10, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
  }

  return 0;
}

uint64_t sub_2385195D4(uint64_t result, uint64_t a2)
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

  v3 = (result + 40);
  v4 = (a2 + 40);
  while (v2)
  {
    v5 = *(v4 - 4);
    v7 = *v4;
    v4 += 2;
    v6 = v7;
    result = *(v3 - 4) == v5 && *v3 == v6;
    v9 = result != 1 || v2-- == 1;
    v3 += 2;
    if (v9)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23851968C(uint64_t a1, uint64_t a2)
{
  v4 = sub_238758090();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v52 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC88, &qword_23876D250);
  MEMORY[0x28223BE20](v61);
  v10 = &v52 - v9;
  active = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment(0);
  MEMORY[0x28223BE20](active);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    return 0;
  }

  if (!v18 || a1 == a2)
  {
    return 1;
  }

  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v64 = v4;
  v65 = a2 + v19;
  v53 = (v5 + 32);
  v54 = v10;
  v55 = (v5 + 8);
  v57 = *(v15 + 72);
  v58 = (v5 + 48);
  v21 = &unk_27DF0B080;
  v63 = active;
  while (1)
  {
    result = sub_23851E250(v20, v17, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment);
    if (!v18)
    {
      break;
    }

    sub_23851E250(v65, v13, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment);
    if ((sub_238601FBC(v17, v13) & 1) == 0)
    {
      goto LABEL_37;
    }

    v23 = active[5];
    v24 = &v17[v23];
    v25 = *&v17[v23 + 8];
    v26 = &v13[v23];
    v27 = *(v26 + 1);
    if (v25)
    {
      if (!v27)
      {
        goto LABEL_37;
      }

      v28 = *v24 == *v26 && v25 == v27;
      if (!v28 && (sub_23875F630() & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (v27)
    {
      goto LABEL_37;
    }

    v29 = active[6];
    v30 = &v17[v29];
    v31 = *&v17[v29 + 8];
    v32 = &v13[v29];
    v33 = *(v32 + 1);
    if (v31)
    {
      if (!v33)
      {
        goto LABEL_37;
      }

      v34 = *v30 == *v32 && v31 == v33;
      if (!v34 && (sub_23875F630() & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (v33)
    {
      goto LABEL_37;
    }

    v60 = v20;
    v35 = active[7];
    v36 = *(v61 + 48);
    sub_23843981C(&v17[v35], v10, v21, &unk_2387662A0);
    sub_23843981C(&v13[v35], &v10[v36], v21, &unk_2387662A0);
    v37 = v21;
    v38 = *v58;
    if ((*v58)(v10, 1, v4) == 1)
    {
      if (v38(&v10[v36], 1, v4) != 1)
      {
        goto LABEL_36;
      }

      sub_238439884(v10, v21, &unk_2387662A0);
      v39 = v63;
      v40 = v60;
    }

    else
    {
      sub_23843981C(v10, v62, v21, &unk_2387662A0);
      if (v38(&v10[v36], 1, v4) == 1)
      {
        (*v55)(v62, v4);
LABEL_36:
        sub_238439884(v10, &qword_27DF0BC88, &qword_23876D250);
LABEL_37:
        sub_23851E334(v13, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment);
        sub_23851E334(v17, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment);
        return 0;
      }

      v41 = &v10[v36];
      v42 = v62;
      v43 = v59;
      (*v53)(v59, v41, v4);
      sub_23851E394(&qword_27DF0BC90, MEMORY[0x277CC6DC0], MEMORY[0x277CC6DD0]);
      v44 = sub_23875E9E0();
      v45 = v64;
      v56 = v44;
      v46 = *v55;
      v47 = v43;
      v48 = v42;
      v10 = v54;
      (*v55)(v47, v64);
      v46(v48, v45);
      sub_238439884(v10, v37, &unk_2387662A0);
      v39 = v63;
      v21 = v37;
      v40 = v60;
      if ((v56 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v49 = v39[8];
    v50 = *&v17[v49];
    v51 = *&v13[v49];
    sub_23851E334(v13, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment);
    sub_23851E334(v17, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment);
    result = v50 == v51;
    if (v50 == v51)
    {
      v4 = v64;
      v65 += v57;
      v20 = v40 + v57;
      v28 = v18-- == 1;
      active = v63;
      if (!v28)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_238519CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8, v13);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v11, v19, v8);
    sub_23851E394(v32, v33, v34);
    v26 = sub_23875E9E0();
    v27 = *v22;
    (*v22)(v11, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_238519EAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v7 = *(v3 - 2);
      if (*v4)
      {
        if (v6 == v7)
        {
          v5 = *v3;
        }

        else
        {
          v5 = 0;
        }

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*v3)
        {
          return 0;
        }

        if (v6 != v7 || *(v4 - 1) != *(v3 - 1))
        {
          return 0;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_238519F34(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v28 = v2;
  v29 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[2];
    v9 = v5[4];
    *&v20[16] = v5[3];
    v21 = v9;
    v22 = *(v5 + 10);
    v10 = v5[1];
    v18 = *v5;
    v19 = v10;
    *v20 = v8;
    v11 = v6[1];
    v23 = *v6;
    v24 = v11;
    v12 = v6[2];
    v13 = v6[3];
    v14 = v6[4];
    v27 = *(v6 + 10);
    *&v25[16] = v13;
    v26 = v14;
    *v25 = v12;
    if (v18 != v23 && (sub_23875F630() & 1) == 0 || v19 != v24 && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }

    sub_23851DBF4(&v18, v17);
    sub_23851DBF4(&v23, v17);
    if ((sub_23875DFE0() & 1) == 0 || *&v20[8] != *&v25[8] && (sub_23875F630() & 1) == 0)
    {
      sub_2384B5DE4(&v23);
      sub_2384B5DE4(&v18);
      return 0;
    }

    if (*&v20[24] == *&v25[24] && v21 == v26)
    {
      sub_2384B5DE4(&v23);
      sub_2384B5DE4(&v18);
    }

    else
    {
      v15 = sub_23875F630();
      sub_2384B5DE4(&v23);
      sub_2384B5DE4(&v18);
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 88);
    v5 = (v5 + 88);
  }

  return 1;
}

uint64_t sub_23851A150(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_2384950FC();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x23EE63F70](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x23EE63F70](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_23875F1B0();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_23875F1B0();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_23875F3A0();
  }

  result = sub_23875F3A0();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_23851A390(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2)
  {
    return sub_2385195D4(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23851A3D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for OrderArchiveMonthView(0);
  v50 = *(v3 - 8);
  v49 = *(v50 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D4E0, &qword_23876D420);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D4E8, &qword_23876D428);
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v44 - v13;
  v15 = type metadata accessor for OrderNavigationDestination(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v2 + 8);
  *v18 = *v2;
  v18[1] = v19;
  swift_storeEnumTagMultiPayload();
  v51 = v18;
  sub_23851E250(v18, v7, type metadata accessor for OrderNavigationDestination);
  (*(v16 + 56))(v7, 0, 1, v15);
  v58 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D4F0, &qword_23876D430);
  sub_23843A3E8(&qword_27DF0D4F8, &qword_27DF0D4F0, &qword_23876D430, MEMORY[0x277CE1138]);
  sub_23851E394(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination, &protocol conformance descriptor for OrderNavigationDestination);
  sub_23875C760();
  v57 = v2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D500, &unk_238779850);
  v21 = sub_23843A3E8(&qword_27DF0D508, &qword_27DF0D4E0, &qword_23876D420, MEMORY[0x277CDD938]);
  v22 = sub_23851E16C();
  v53 = v14;
  v46 = v20;
  sub_23875DBD0();
  v23 = *(v9 + 8);
  v52 = v8;
  v23(v11, v8);
  v24 = *(v2 + 32);
  LOBYTE(v63) = *(v2 + 24);
  v64 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v47 = v59;
  v45 = v60;
  v44[3] = v61;
  v25 = v48;
  sub_23851E250(v2, v48, type metadata accessor for OrderArchiveMonthView);
  v26 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v27 = swift_allocObject();
  sub_23851E2B8(v25, v27 + v26);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v28 = qword_2814F1B90;
  v29 = sub_23875EA50();
  v30 = sub_23875EA50();
  v31 = sub_23875EA50();
  v32 = [v28 localizedStringForKey:v29 value:v30 table:v31];

  v33 = sub_23875EA80();
  v35 = v34;

  v63 = v33;
  v64 = v35;
  MEMORY[0x28223BE20](v36);
  MEMORY[0x28223BE20](v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC48, &unk_23876C048);
  v59 = v52;
  v60 = v46;
  v61 = v21;
  v62 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2384397A8(OpaqueTypeConformance2, v39, v40);
  sub_23843A3E8(&qword_27DF0CC58, &qword_27DF0CC48, &unk_23876C048, MEMORY[0x277CE14C0]);
  v41 = v55;
  v42 = v53;
  sub_23875DEC0();

  (*(v54 + 8))(v42, v41);
  sub_23851E334(v51, type metadata accessor for OrderNavigationDestination);
}

double sub_23851ABAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875CE60();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D518, &unk_23876D478);
  sub_23851AC80(a1, a2 + *(v4 + 44));

  return result;
}

double sub_23851AC80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v47 = a1;
  v2 = sub_23875C450();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092E0, &qword_238763080);
  MEMORY[0x28223BE20](v41);
  v10 = (&v40 - v9);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D520, &qword_23876D488);
  MEMORY[0x28223BE20](v42);
  v45 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v43 = &v40 - v16;
  sub_23875ED50();
  v44 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v40 = sub_23875E070();
  type metadata accessor for OrderArchiveMonthView(0);
  sub_2384D4E38(v8);
  (*(v3 + 104))(v5, *MEMORY[0x277CDF3C0], v2);
  v17 = sub_23875C440();
  v18 = *(v3 + 8);
  v18(v5, v2);
  v18(v8, v2);
  if (v17)
  {
    v19 = sub_23875E010();
  }

  else
  {
    v19 = sub_23875E040();
  }

  v20 = v19;
  v21 = sub_23875E070();
  KeyPath = swift_getKeyPath(byte_23876D490);
  v23 = v10 + *(v41 + 36);
  v24 = type metadata accessor for OrderImageStyleModifier(0);
  *&v23[*(v24 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v23[*(v24 + 40)] = swift_getKeyPath(aX_2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *v23 = xmmword_23876D160;
  *(v23 + 2) = 0;
  v23[24] = 1;
  *(v23 + 4) = v21;
  v23[40] = 0;
  *v10 = v40;
  v10[1] = v20;
  v10[2] = 0x3FD999999999999ALL;
  v25 = sub_23875D000();
  sub_2384396E4(v10, v14, &qword_27DF092E0, &qword_238763080);
  v26 = &v14[*(v42 + 36)];
  *v26 = v25;
  v26[1] = sub_23843480C;
  v26[2] = 0;
  v27 = v14;
  v28 = v43;
  sub_2384396E4(v27, v43, &qword_27DF0D520, &qword_23876D488);
  v29 = sub_23875D030();
  LOBYTE(v52[0]) = 1;
  sub_23851B1E0(v47, v49);
  *&v48[7] = v49[0];
  *&v48[23] = v49[1];
  *&v48[39] = v49[2];
  *&v48[55] = v49[3];
  v30 = v52[0];
  v31 = v45;
  sub_23843981C(v28, v45, &qword_27DF0D520, &qword_23876D488);
  v32 = v46;
  sub_23843981C(v31, v46, &qword_27DF0D520, &qword_23876D488);
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D528, &qword_23876D4C8) + 48);
  v50 = v29;
  v51[0] = v30;
  *&v51[1] = *v48;
  *&v51[17] = *&v48[16];
  *&v51[33] = *&v48[32];
  *&v51[49] = *&v48[48];
  v34 = *&v48[63];
  *&v51[64] = *&v48[63];
  v35 = *v51;
  *v33 = v29;
  *(v33 + 16) = v35;
  v36 = *&v51[16];
  v37 = *&v51[32];
  v38 = *&v51[48];
  *(v33 + 80) = v34;
  *(v33 + 48) = v37;
  *(v33 + 64) = v38;
  *(v33 + 32) = v36;
  sub_23843981C(&v50, v52, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v28, &qword_27DF0D520, &qword_23876D488);
  v52[0] = v29;
  v52[1] = 0;
  v53 = v30;
  v55 = *&v48[16];
  v56 = *&v48[32];
  *v57 = *&v48[48];
  *&v57[15] = *&v48[63];
  v54 = *v48;
  sub_238439884(v52, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v31, &qword_27DF0D520, &qword_23876D488);

  return result;
}

uint64_t sub_23851B1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2387591F0();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v55 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v58 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v60 = sub_23851B600();
  v61 = v6;
  v50[1] = sub_2384397A8(v60, v6, v7);
  v8 = sub_23875DAA0();
  v10 = v9;
  v12 = v11;
  sub_23875D7F0();
  v13 = sub_23875DA60();
  v50[0] = a1;
  v15 = v14;
  v17 = v16;

  sub_2384397FC(v8, v10, v12 & 1);

  sub_23875D890();
  v18 = sub_23875D9E0();
  v52 = v19;
  v53 = v18;
  v51 = v20;
  v54 = v21;
  sub_2384397FC(v13, v15, v17 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2387632F0;
  v23 = *(v50[0] + 16);
  v24 = MEMORY[0x277D83C10];
  *(v22 + 56) = MEMORY[0x277D83B88];
  *(v22 + 64) = v24;
  *(v22 + 32) = v23;
  v26 = v55;
  v25 = v56;
  v27 = v57;
  (*(v56 + 104))(v55, *MEMORY[0x277CC77B0], v57);
  v28 = sub_238758A50();
  v30 = v29;

  (*(v25 + 8))(v26, v27);
  v60 = v28;
  v61 = v30;
  v31 = sub_23875DAA0();
  v33 = v32;
  LOBYTE(v30) = v34;
  sub_23875D7F0();
  v35 = sub_23875DA60();
  v37 = v36;
  LOBYTE(v27) = v38;

  sub_2384397FC(v31, v33, v30 & 1);

  LODWORD(v60) = sub_23875D440();
  v39 = sub_23875DA20();
  v41 = v40;
  LOBYTE(v30) = v42;
  v44 = v43;
  sub_2384397FC(v35, v37, v27 & 1);

  v45 = v51 & 1;
  v59 = v51 & 1;
  LOBYTE(v60) = v51 & 1;
  v62 = v30 & 1;
  v47 = v52;
  v46 = v53;
  *a2 = v53;
  *(a2 + 8) = v47;
  *(a2 + 16) = v45;
  *(a2 + 24) = v54;
  *(a2 + 32) = v39;
  *(a2 + 40) = v41;
  *(a2 + 48) = v30 & 1;
  *(a2 + 56) = v44;
  v48 = v46;
  sub_23843980C(v46, v47, v45);

  sub_23843980C(v39, v41, v30 & 1);

  sub_2384397FC(v39, v41, v30 & 1);

  sub_2384397FC(v48, v47, v59);
}

uint64_t sub_23851B600()
{
  v0 = sub_23875BAB0();
  v67 = *(v0 - 8);
  v68 = v0;
  MEMORY[0x28223BE20](v0);
  v66 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23875BE40();
  v72 = *(v2 - 8);
  v73 = v2;
  MEMORY[0x28223BE20](v2);
  v65 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875BD20();
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875B7F0();
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09980, &unk_2387640E0);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09988, &unk_2387675D0);
  MEMORY[0x28223BE20](v10 - 8);
  v57 = &v50 - v11;
  v63 = sub_23875BAD0();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v59 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v15 - 8);
  v71 = &v50 - v16;
  v17 = sub_23875BC40();
  v70 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v54 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  MEMORY[0x28223BE20](v19 - 8);
  v69 = &v50 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v50 - v22;
  v56 = sub_23875B650();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23875BD30();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_23875BE20();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v50 = &v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v50 - v35;
  (*(v27 + 104))(v29, *MEMORY[0x277CC9810], v26, v34);
  sub_23875BD40();
  v37 = v70;
  (*(v27 + 8))(v29, v26);
  v38 = *(v31 + 16);
  v51 = v36;
  v38(v23, v36, v30);
  v52 = v31;
  v39 = *(v31 + 56);
  v53 = v30;
  v39(v23, 0, 1, v30);
  (*(v72 + 56))(v69, 1, 1, v73);
  sub_23875B620();
  v40 = v71;
  v74 = v25;
  sub_23875B5C0();
  result = (*(v37 + 48))(v40, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v42 = v54;
    (*(v37 + 32))(v54, v40, v17);
    v43 = sub_23875BA40();
    (*(*(v43 - 8) + 56))(v57, 1, 1, v43);
    v44 = sub_23875BA10();
    (*(*(v44 - 8) + 56))(v58, 1, 1, v44);
    sub_23875B7D0();
    sub_23875BCC0();
    sub_23875BDB0();
    sub_23875BE30();
    v45 = v59;
    sub_23875BA50();
    v46 = v66;
    sub_23875BAA0();
    v47 = v60;
    sub_23875BA70();
    (*(v67 + 8))(v46, v68);
    sub_23851E394(&qword_27DF09978, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
    v48 = v63;
    sub_23875BC20();
    v49 = *(v61 + 8);
    v49(v47, v48);
    v49(v45, v48);
    (*(v37 + 8))(v42, v17);
    (*(v55 + 8))(v74, v56);
    (*(v52 + 8))(v51, v53);
    return v75;
  }

  return result;
}

uint64_t sub_23851BFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OrderArchiveMonthView(0);
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

  sub_23851E250(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderArchiveMonthView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_23851E2B8(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23875E200();
  v9 = sub_23875DFF0();
  KeyPath = swift_getKeyPath(asc_23876D448);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D500, &unk_238779850);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v9;
  return result;
}

void sub_23851C1F0(__int16 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = *a1;
  v6 = a1[4];
  v7 = sub_23875ED80();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_23875ED50();
  v8 = sub_23875ED40();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = v5;
  *(v9 + 34) = v6;
  sub_2386C3BA4(0, 0, v4, &unk_23876D440, v9);

  v11 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v13 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v14 = sub_23875EA80();
  v15 = MEMORY[0x277D38390];
  *(inited + 40) = v14;
  *(inited + 48) = v16;
  v17 = *v15;
  *(inited + 56) = *v15;
  *(inited + 64) = 0x6574656C6564;
  v18 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = v18;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x8000000238784E10;
  v19 = v13;
  v20 = v17;
  v21 = v18;
  v22 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v22;
  sub_2385C33E4(v11, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v28);

  v24 = *MEMORY[0x277D38548];
  v25 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23851E394(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v26 = sub_23875E910();

  [v25 subject:v24 sendEvent:v26];
}

void sub_23851C508()
{
  v0 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v2 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v3 = sub_23875EA80();
  v4 = MEMORY[0x277D38390];
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  v6 = *v4;
  *(inited + 56) = *v4;
  *(inited + 64) = 0x776F4E746F6ELL;
  v7 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = v7;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x8000000238784E10;
  v8 = v2;
  v9 = v6;
  v10 = v7;
  v11 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v11;
  sub_2385C33E4(v0, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v16);

  v13 = *MEMORY[0x277D38548];
  v14 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23851E394(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v15 = sub_23875E910();

  [v14 subject:v13 sendEvent:v15];
}

void sub_23851C720(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + 32);
  LOBYTE(v19[0]) = *(a1 + 24);
  v19[1] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  v3 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v5 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v6 = sub_23875EA80();
  v7 = MEMORY[0x277D38390];
  *(inited + 40) = v6;
  *(inited + 48) = v8;
  v9 = *v7;
  *(inited + 56) = *v7;
  *(inited + 64) = 0xD000000000000010;
  v10 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0x8000000238785CF0;
  *(inited + 80) = v10;
  strcpy((inited + 88), "orderDashboard");
  *(inited + 103) = -18;
  v11 = v5;
  v12 = v9;
  v13 = v10;
  v14 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19[0] = v14;
  sub_2385C33E4(v3, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v19);

  v16 = *MEMORY[0x277D38548];
  v17 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23851E394(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v18 = sub_23875E910();

  [v17 subject:v16 sendEvent:v18];
}

double sub_23851C9F4()
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
  sub_23875E190();

  return result;
}

uint64_t sub_23851CB98(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, __int16 a5)
{
  *(v5 + 66) = a5;
  *(v5 + 64) = a4;
  sub_23875ED50();
  *(v5 + 16) = sub_23875ED40();
  v7 = sub_23875ECE0();
  *(v5 + 24) = v7;
  *(v5 + 32) = v6;

  return MEMORY[0x2822009F8](sub_23851CC34, v7, v6);
}

uint64_t sub_23851CC34()
{
  sub_2387579D0();
  *(v0 + 40) = sub_2387579A0();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_23851CCE8;
  v2 = *(v0 + 66);
  v3 = *(v0 + 64);

  return MEMORY[0x282116E58](v3, v2);
}