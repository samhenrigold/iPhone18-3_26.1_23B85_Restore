void sub_2384DCD3C(uint64_t a1)
{
  if (!qword_27DF0C468)
  {
    type metadata accessor for GroupedTransactionsViewDataProvider(255);
    v1 = sub_23875E1E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0C468);
    }
  }
}

void sub_2384DCD94(uint64_t a1)
{
  if (!qword_27DF0C478)
  {
    sub_238758680();
    sub_2384DD908(&qword_27DF0B0F0, MEMORY[0x277CC6F70], MEMORY[0x277CC6F78]);
    v1 = sub_23875EEB0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0C478);
    }
  }
}

void sub_2384DCE28(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23875E340();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2384DCE7C()
{
  result = qword_27DF0C480;
  if (!qword_27DF0C480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C448, &qword_23876A7A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C3F8, &qword_23876A710);
    sub_23875C950();
    sub_23843A3E8(&qword_27DF0C440, &qword_27DF0C3F8, &qword_23876A710, MEMORY[0x277CDD938]);
    sub_2384DD908(&qword_27DF0A778, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C480);
  }

  return result;
}

uint64_t sub_2384DD008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384DD070()
{
  v2 = *(type metadata accessor for GroupedTransactionsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2384494A4;

  return sub_2384DC1E4(v4, v5, v0 + v3);
}

unint64_t sub_2384DD154()
{
  result = qword_27DF0C4F8;
  if (!qword_27DF0C4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C4F0, &qword_23876A9C0);
    sub_2384DD358(&qword_27DF0C500, &qword_27DF0C508, &qword_23876A9C8, sub_2384DD238);
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C4F8);
  }

  return result;
}

unint64_t sub_2384DD238()
{
  result = qword_27DF0C510;
  if (!qword_27DF0C510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C518, &unk_23876A9D0);
    sub_2384DD908(&qword_27DF0C520, type metadata accessor for TransactionView, &unk_238768AE8);
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C510);
  }

  return result;
}

uint64_t sub_2384DD358(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_2384DD3D4()
{
  result = qword_27DF0C550;
  if (!qword_27DF0C550)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C558, &qword_23876AA18);
    sub_2384DD48C(v1, v2, v3);
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C550);
  }

  return result;
}

unint64_t sub_2384DD48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0C560;
  if (!qword_27DF0C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C560);
  }

  return result;
}

uint64_t sub_2384DD4E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

double sub_2384DD588@<D0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for GroupedTransactionsView(0) - 8);
  *&result = sub_2384DC01C(a1, v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80)), a3).n128_u64[0];
  return result;
}

uint64_t objectdestroy_37Tm()
{
  v1 = (type metadata accessor for GroupedTransactionsView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  v6 = sub_23875BE20();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_2384DD72C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GroupedTransactionsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_2384DA5A0(a1, v6, a2);
}

double sub_2384DD7CC(char a1)
{
  v3 = *(type metadata accessor for GroupedTransactionsView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_238758F50() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2384DAD40(a1, (v1 + v4), v7);
}

uint64_t sub_2384DD8A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384DD908(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for BankConnectReviewAccountConnectionFlowView(uint64_t a1)
{
  result = qword_27DF0C5A0;
  if (!qword_27DF0C5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2384DD9C4(uint64_t a1)
{
  result = sub_238757B60();
  if (v2 <= 0x3F)
  {
    result = sub_23875BCB0();
    if (v3 <= 0x3F)
    {
      result = sub_238449184(319, &qword_27DF096A8, 0x277D38080);
      if (v4 <= 0x3F)
      {
        result = sub_23846D0DC();
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

uint64_t sub_2384DDAA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = sub_23875C780();
  v4 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  v9 = sub_23875BCB0();
  v54 = v9;
  v62 = *(v9 - 8);
  v10 = v62;
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v12;
  v59 = sub_238757B60();
  v63 = *(v59 - 8);
  v13 = v63;
  v14 = MEMORY[0x28223BE20](v59);
  v60 = *(v13 + 16);
  v61 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60(v14);
  v16 = type metadata accessor for BankConnectReviewAccountConnectionFlowView(0);
  v17 = v16[5];
  v56 = *(v10 + 16);
  v56(v12, v2 + v17, v9);
  v18 = *(v2 + v16[6]);
  v19 = (v2 + v16[7]);
  v21 = *v19;
  v20 = v19[1];
  v55 = v21;
  v51 = v18;
  v52 = v20;
  v22 = type metadata accessor for BankConnectReviewConnectionView(0);
  v23 = v22[7];
  v24 = sub_238758680();
  (*(*(v24 - 8) + 56))(a1 + v23, 1, 1, v24);
  sub_23875C770();
  v25 = v58;
  (*(v4 + 16))(v57, v8, v58);
  sub_23875E1A0();
  (*(v4 + 8))(v8, v25);
  v26 = a1 + v22[10];
  v64 = 0;
  sub_23875E1A0();
  v27 = v66;
  *v26 = v65;
  *(v26 + 8) = v27;
  v28 = a1 + v22[11];
  v64 = 0;
  sub_23875E1A0();
  v29 = v66;
  *v28 = v65;
  *(v28 + 8) = v29;
  v30 = a1 + v22[12];
  *v30 = swift_getKeyPath(asc_23876AC10);
  *(v30 + 8) = 0;
  v31 = v61;
  v32 = v59;
  (v60)(a1, v61, v59);
  v34 = v53;
  v33 = v54;
  v56((a1 + v22[5]), v53, v54);
  v35 = v51;
  v36 = v52;
  *(a1 + v22[6]) = v51;
  v37 = (a1 + v22[8]);
  *v37 = v55;
  v37[1] = v36;
  sub_238759780();
  v38 = v35;

  v39 = sub_238759710();
  v40 = sub_238759750();
  [v39 setPredicate_];

  sub_238449184(0, &qword_27DF09960, 0x277CCAC98);
  v41 = sub_23875EC60();
  [v39 setSortDescriptors_];

  sub_23875E500();
  sub_23875C4F0();
  (*(v62 + 8))(v34, v33);
  (*(v63 + 8))(v31, v32);
  KeyPath = swift_getKeyPath(asc_23876AC38);
  v43 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C5B0, &unk_23876AC60) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD0, qword_238764B90);
  sub_23875C120();
  *v43 = KeyPath;
  v44 = swift_getKeyPath(asc_23876AC10);
  sub_238758CC0();
  v45 = sub_238758CB0();
  v46 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C5B8, &qword_23876AC70) + 36));
  *v46 = v44;
  v46[1] = v45;
  v47 = swift_getKeyPath(asc_23876AC78);
  sub_238758890();
  v65 = sub_238758880();
  v48 = sub_238758A30();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C5C0, &qword_23876ACA8);
  v50 = (a1 + *(result + 36));
  *v50 = v47;
  v50[1] = v48;
  return result;
}

unint64_t sub_2384DE054()
{
  result = qword_27DF0C5C8;
  if (!qword_27DF0C5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C5C0, &qword_23876ACA8);
    sub_2384DE0F8();
    sub_2384DE298(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C5C8);
  }

  return result;
}

unint64_t sub_2384DE0F8()
{
  result = qword_27DF0C5D0;
  if (!qword_27DF0C5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C5B8, &qword_23876AC70);
    sub_2384DE19C();
    sub_2384DE298(&qword_27DF0C5E8, &qword_27DF0C5F0, &unk_23876ACB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C5D0);
  }

  return result;
}

unint64_t sub_2384DE19C()
{
  result = qword_27DF0C5D8;
  if (!qword_27DF0C5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C5B0, &unk_23876AC60);
    sub_2384DE240();
    sub_2384DE298(&qword_27DF09E70, &qword_27DF09DD0, qword_238764B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C5D8);
  }

  return result;
}

unint64_t sub_2384DE240()
{
  result = qword_27DF0C5E0;
  if (!qword_27DF0C5E0)
  {
    type metadata accessor for BankConnectReviewConnectionView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C5E0);
  }

  return result;
}

uint64_t sub_2384DE298(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2384DE2EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_23875F700();
  MEMORY[0x23EE641F0](v3);
  result = sub_23875F760();
  *a1 = result;
  return result;
}

uint64_t AccountMismatchedTileView.init(paymentPass:institution:mismatchedAccount:dismissedTile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v14 = type metadata accessor for AccountMismatchedTileView(0);
  v15 = &a7[v14[7]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C5F8, &qword_23876ACD0);
  sub_23875E1A0();
  *v15 = v22;
  *(v15 + 1) = v23;
  *a7 = a1;
  v16 = v14[5];
  v17 = sub_238757B60();
  (*(*(v17 - 8) + 32))(&a7[v16], a2, v17);
  v18 = v14[6];
  v19 = sub_238758680();
  result = (*(*(v19 - 8) + 32))(&a7[v18], a3, v19);
  v21 = &a7[v14[8]];
  *v21 = a4;
  *(v21 + 1) = a5;
  v21[16] = a6;
  return result;
}

uint64_t type metadata accessor for AccountMismatchedTileView(uint64_t a1)
{
  result = qword_27DF0C660;
  if (!qword_27DF0C660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AccountMismatchedTileView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_23875C950();
  v4 = *(v3 - 8);
  v45 = v3;
  v46 = v4;
  MEMORY[0x28223BE20](v3);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccountMismatchedTileView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C600, &qword_23876ACD8);
  v41 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C608, &qword_23876ACE0);
  v14 = *(v13 - 8);
  v42 = v13;
  v43 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  *v12 = sub_23875D020();
  *(v12 + 1) = 0x402C000000000000;
  v12[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C610, &qword_23876ACE8);
  sub_2384DE968(v2, &v12[*(v17 + 44)]);
  v18 = sub_23875D7D0();
  sub_23875C3D0();
  v19 = &v12[*(v10 + 36)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  v24 = v2 + *(v7 + 36);
  v25 = *v24;
  v26 = *(v24 + 8);
  v54 = v25;
  v55 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C618, &qword_23876ACF0);
  sub_23875E1D0();
  v40 = v48;
  sub_2384E12D4(v2, &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountMismatchedTileView);
  v27 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v28 = swift_allocObject();
  sub_2384E0490(&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C620, &qword_23876ACF8);
  v30 = sub_2384E0574();
  v38 = sub_2384E062C(v30, v31, v32);
  v39 = sub_2384E0680();
  v33 = v41;
  sub_23875DEE0();

  sub_238439884(v12, &qword_27DF0C600, &qword_23876ACD8);
  v34 = v44;
  sub_23875C940();
  v48 = v33;
  v49 = &type metadata for AccountMismatchedTileView.Sheet;
  v50 = v29;
  v51 = v30;
  v52 = v38;
  v53 = v39;
  swift_getOpaqueTypeConformance2();
  sub_2384E14AC(&qword_27DF0A778, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v35 = v42;
  v36 = v45;
  sub_23875DB30();
  (*(v46 + 8))(v34, v36);
  return (*(v43 + 8))(v16, v35);
}

double sub_2384DE968@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C698, &qword_23876AE38);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6A0, &qword_23876AE40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v15 = sub_23875CE50();
  *(v15 + 1) = 0x4000000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6A8, &qword_23876AE48);
  sub_2384DEC20(a1, &v15[*(v16 + 44)]);
  *v9 = sub_23875CE60();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6B0, &qword_23876AE50);
  sub_2384DF51C(a1, &v9[*(v17 + 44)]);
  sub_23843981C(v15, v12, &qword_27DF0C6A0, &qword_23876AE40);
  sub_23843981C(v9, v6, &qword_27DF0C698, &qword_23876AE38);
  sub_23843981C(v12, a2, &qword_27DF0C6A0, &qword_23876AE40);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6B8, &qword_23876AE58);
  sub_23843981C(v6, a2 + *(v18 + 48), &qword_27DF0C698, &qword_23876AE38);
  sub_238439884(v9, &qword_27DF0C698, &qword_23876AE38);
  sub_238439884(v15, &qword_27DF0C6A0, &qword_23876AE40);
  sub_238439884(v6, &qword_27DF0C698, &qword_23876AE38);
  sub_238439884(v12, &qword_27DF0C6A0, &qword_23876AE40);

  return result;
}

double sub_2384DEC20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v47 = a2;
  v2 = type metadata accessor for AccountMismatchedTileView(0);
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6F0, &qword_23876AE90);
  MEMORY[0x28223BE20](v43);
  v45 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v38[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6F8, &qword_23876AE98);
  MEMORY[0x28223BE20](v8);
  v46 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v38[-v11];
  sub_23875ED50();
  v44 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(v2 + 20);
  v14 = sub_238757B60();
  v15 = v42;
  (*(*(v14 - 8) + 16))(v12, v42 + v13, v14);
  v12[*(type metadata accessor for BadgedErrorInstitutionLogo(0) + 20)] = 1;
  LOBYTE(v13) = sub_23875D7C0();
  sub_23875C3D0();
  v16 = &v12[*(v8 + 36)];
  *v16 = v13;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v40 = sub_23875D030();
  LOBYTE(v52[0]) = 0;
  sub_2384DF180(v49);
  *&v48[7] = v49[0];
  *&v48[23] = v49[1];
  *&v48[39] = v49[2];
  *&v48[55] = v49[3];
  v21 = v52[0];
  v39 = LOBYTE(v52[0]);
  sub_2384E12D4(v15, &v38[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AccountMismatchedTileView);
  v22 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v23 = swift_allocObject();
  sub_2384E0490(&v38[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v23 + v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09878, &qword_23876AEA0);
  sub_23844E928();
  sub_23875E200();
  *&v7[*(v43 + 36)] = xmmword_23876ACC0;
  v24 = v46;
  sub_23843981C(v12, v46, &qword_27DF0C6F8, &qword_23876AE98);
  v25 = v45;
  sub_23843981C(v7, v45, &qword_27DF0C6F0, &qword_23876AE90);
  v26 = v47;
  sub_23843981C(v24, v47, &qword_27DF0C6F8, &qword_23876AE98);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C700, &unk_23876AEA8);
  v28 = v26 + v27[12];
  v29 = v7;
  v30 = v40;
  *&v50 = v40;
  *(&v50 + 1) = 0x4020000000000000;
  v51[0] = v21;
  *&v51[1] = *v48;
  *&v51[17] = *&v48[16];
  *&v51[33] = *&v48[32];
  *&v51[49] = *&v48[48];
  v31 = *&v48[63];
  *&v51[64] = *&v48[63];
  v32 = *v51;
  *v28 = v50;
  *(v28 + 16) = v32;
  v33 = *&v51[16];
  v34 = *&v51[32];
  v35 = *&v51[48];
  *(v28 + 80) = v31;
  *(v28 + 48) = v34;
  *(v28 + 64) = v35;
  *(v28 + 32) = v33;
  v36 = v26 + v27[16];
  *v36 = 0;
  *(v36 + 8) = 1;
  sub_23843981C(v25, v26 + v27[20], &qword_27DF0C6F0, &qword_23876AE90);
  sub_23843981C(&v50, v52, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v29, &qword_27DF0C6F0, &qword_23876AE90);
  sub_238439884(v12, &qword_27DF0C6F8, &qword_23876AE98);
  sub_238439884(v25, &qword_27DF0C6F0, &qword_23876AE90);
  v52[0] = v30;
  v52[1] = 0x4020000000000000;
  v53 = v39;
  v55 = *&v48[16];
  v56 = *&v48[32];
  *v57 = *&v48[48];
  *&v57[15] = *&v48[63];
  v54 = *v48;
  sub_238439884(v52, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v24, &qword_27DF0C6F8, &qword_23876AE98);

  return result;
}

uint64_t sub_2384DF180@<X0>(uint64_t a1@<X8>)
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
  v34 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  v14 = v13;
  sub_23875D980();
  v15 = sub_23875DA60();
  v36 = v16;
  v37 = v15;
  v35 = v17;
  v38 = v18;

  sub_2384397FC(v10, v12, v14 & 1);

  v19 = sub_23875EA50();
  v20 = sub_23875EA50();
  v21 = sub_23875EA50();
  v22 = [v34 localizedStringForKey:v19 value:v20 table:v21];

  sub_23875EA80();
  v23 = sub_23875DAA0();
  v25 = v24;
  LOBYTE(v21) = v26;
  sub_23875D7F0();
  v27 = sub_23875DA60();
  v29 = v28;
  LOBYTE(v4) = v30;
  v32 = v31;

  sub_2384397FC(v23, v25, v21 & 1);

  *a1 = v37;
  *(a1 + 8) = v36;
  *(a1 + 16) = v35 & 1;
  *(a1 + 24) = v38;
  *(a1 + 32) = v27;
  *(a1 + 40) = v29;
  *(a1 + 48) = v4 & 1;
  *(a1 + 56) = v32;
  sub_23843980C(v37, v36, v35 & 1);

  sub_23843980C(v27, v29, v4 & 1);

  sub_2384397FC(v27, v29, v4 & 1);

  sub_2384397FC(v37, v36, v35 & 1);
}

double sub_2384DF51C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v66 = sub_23875CFD0();
  v69 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6C0, &qword_23876AE60);
  MEMORY[0x28223BE20](v62);
  v5 = v53 - v4;
  v6 = type metadata accessor for AccountMismatchedTileView(0);
  v61 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v7;
  v9 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6C8, &qword_23876AE68);
  MEMORY[0x28223BE20](v71);
  v68 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v67 = v53 - v12;
  MEMORY[0x28223BE20](v13);
  v64 = v53 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v53 - v16;
  sub_23875ED50();
  v65 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v18 = qword_2814F1B90;
  v60 = qword_2814F1B90;
  v19 = sub_23875EA50();
  v20 = sub_23875EA50();
  v21 = sub_23875EA50();
  v22 = [v18 localizedStringForKey:v19 value:v20 table:v21];

  v23 = sub_23875EA80();
  v25 = v24;

  v59 = type metadata accessor for AccountMismatchedTileView;
  sub_2384E12D4(a1, v9, type metadata accessor for AccountMismatchedTileView);
  v26 = v9;
  v54 = v9;
  v61 = *(v61 + 80);
  v27 = (v61 + 16) & ~v61;
  v58 = v8;
  v28 = swift_allocObject();
  v57 = a1;
  v29 = sub_2384E0490(v26, v28 + v27);
  MEMORY[0x28223BE20](v29);
  v53[-2] = v23;
  v53[-1] = v25;

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C208, &qword_23876AE70);
  v55 = sub_2384D3578();
  sub_23875E200();

  v30 = sub_23875D420();
  v32 = v62;
  v31 = v63;
  *&v5[*(v62 + 36)] = v30;
  sub_23875CFC0();
  v53[2] = sub_2384E13C8();
  v33 = sub_2384E14AC(&qword_27DF0C0C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v53[0] = v17;
  v53[1] = v33;
  v34 = v17;
  v35 = v66;
  sub_23875DB30();
  v69 = *(v69 + 8);
  (v69)(v31, v35);
  sub_238439884(v5, &qword_27DF0C6C0, &qword_23876AE60);
  LODWORD(v23) = sub_23875D430();

  *&v34[*(v71 + 36)] = v23;
  v36 = sub_23875EA50();
  v37 = sub_23875EA50();
  v38 = sub_23875EA50();
  v39 = [v60 localizedStringForKey:v36 value:v37 table:v38];

  v40 = sub_23875EA80();
  v42 = v41;

  v43 = v54;
  sub_2384E12D4(v57, v54, v59);
  v44 = swift_allocObject();
  v45 = sub_2384E0490(v43, v44 + v27);
  MEMORY[0x28223BE20](v45);
  v53[-2] = v40;
  v53[-1] = v42;

  sub_23875E200();

  *&v5[*(v32 + 36)] = sub_23875D420();
  sub_23875CFC0();
  v46 = v64;
  sub_23875DB30();
  (v69)(v31, v35);
  sub_238439884(v5, &qword_27DF0C6C0, &qword_23876AE60);
  LODWORD(v25) = sub_23875D430();

  *(v46 + *(v71 + 36)) = v25;
  v47 = v53[0];
  v48 = v67;
  sub_23843981C(v53[0], v67, &qword_27DF0C6C8, &qword_23876AE68);
  v49 = v68;
  sub_23843981C(v46, v68, &qword_27DF0C6C8, &qword_23876AE68);
  v50 = v70;
  sub_23843981C(v48, v70, &qword_27DF0C6C8, &qword_23876AE68);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6E8, &qword_23876AE88);
  sub_23843981C(v49, v50 + *(v51 + 48), &qword_27DF0C6C8, &qword_23876AE68);
  sub_238439884(v46, &qword_27DF0C6C8, &qword_23876AE68);
  sub_238439884(v47, &qword_27DF0C6C8, &qword_23876AE68);
  sub_238439884(v49, &qword_27DF0C6C8, &qword_23876AE68);
  sub_238439884(v48, &qword_27DF0C6C8, &qword_23876AE68);

  return result;
}

uint64_t sub_2384DFD28(uint64_t a1, char a2)
{
  type metadata accessor for AccountMismatchedTileView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C618, &qword_23876ACF0);
  return sub_23875E1C0();
}

double sub_2384DFD9C@<D0>(char *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = type metadata accessor for BankConnectAuthorizationMismatchedAccountView(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C688, &qword_23876AE20);
  v41 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v40 = &v40 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C690, &unk_23876AE28);
  MEMORY[0x28223BE20](v43);
  v47 = &v40 - v9;
  v10 = type metadata accessor for AccountMismatchedTileView(0);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v46 = type metadata accessor for BankConnectReviewAccountConnectionFlowView(0);
  MEMORY[0x28223BE20](v46);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C620, &qword_23876ACF8);
  MEMORY[0x28223BE20](v14 - 8);
  v45 = &v40 - v15;
  v16 = *a1;
  sub_23875ED50();
  v44 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v16)
  {
    v17 = *a2;
    v18 = *(v10 + 20);
    v19 = *(v5 + 20);
    v20 = sub_238757B60();
    (*(*(v20 - 8) + 16))(&v7[v19], a2 + v18, v20);
    v21 = v17;
    sub_238758670();
    sub_2384E12D4(a2, &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountMismatchedTileView);
    v22 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v23 = swift_allocObject();
    sub_2384E0490(&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    *v7 = v21;
    v24 = &v7[*(v5 + 28)];
    *v24 = sub_2384E1220;
    v24[1] = v23;
    v25 = sub_2384E14AC(&qword_27DF0C658, type metadata accessor for BankConnectAuthorizationMismatchedAccountView, &unk_2387821C8);
    v26 = v40;
    sub_23875DE20();
    sub_2384E133C(v7, type metadata accessor for BankConnectAuthorizationMismatchedAccountView);
    v27 = v41;
    v28 = v48;
    (*(v41 + 16))(v47, v26, v48);
    swift_storeEnumTagMultiPayload();
    sub_2384E14AC(&qword_27DF0C650, type metadata accessor for BankConnectReviewAccountConnectionFlowView, &unk_23876ABBC);
    v50 = v5;
    v51 = v25;
    swift_getOpaqueTypeConformance2();
    v29 = v45;
    sub_23875D1B0();
    (*(v27 + 8))(v26, v28);
  }

  else
  {
    v30 = *(v10 + 20);
    v31 = sub_238757B60();
    (*(*(v31 - 8) + 16))(v13, a2 + v30, v31);
    v32 = v46;
    sub_238758670();
    v33 = *a2;
    sub_2384E12D4(a2, &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountMismatchedTileView);
    v34 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v35 = swift_allocObject();
    sub_2384E0490(&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34);
    *&v13[*(v32 + 24)] = v33;
    v36 = &v13[*(v32 + 28)];
    *v36 = sub_2384E1238;
    v36[1] = v35;
    sub_2384E12D4(v13, v47, type metadata accessor for BankConnectReviewAccountConnectionFlowView);
    swift_storeEnumTagMultiPayload();
    sub_2384E14AC(&qword_27DF0C650, type metadata accessor for BankConnectReviewAccountConnectionFlowView, &unk_23876ABBC);
    v37 = sub_2384E14AC(&qword_27DF0C658, type metadata accessor for BankConnectAuthorizationMismatchedAccountView, &unk_2387821C8);
    v38 = v33;
    v50 = v5;
    v51 = v37;
    swift_getOpaqueTypeConformance2();
    v29 = v45;
    sub_23875D1B0();
    sub_2384E133C(v13, type metadata accessor for BankConnectReviewAccountConnectionFlowView);
  }

  sub_238406274(v29, v49);

  return result;
}

uint64_t sub_2384E0490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountMismatchedTileView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2384E04F4@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccountMismatchedTileView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_2384DFD9C(a1, v6, a2);
}

unint64_t sub_2384E0574()
{
  result = qword_27DF0C628;
  if (!qword_27DF0C628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C600, &qword_23876ACD8);
    sub_23843A3E8(&qword_27DF0C630, &qword_27DF0C638, &qword_23876AD00, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C628);
  }

  return result;
}

unint64_t sub_2384E062C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0C640;
  if (!qword_27DF0C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C640);
  }

  return result;
}

unint64_t sub_2384E0680()
{
  result = qword_27DF0C648;
  if (!qword_27DF0C648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C620, &qword_23876ACF8);
    sub_2384E14AC(&qword_27DF0C650, type metadata accessor for BankConnectReviewAccountConnectionFlowView, &unk_23876ABBC);
    type metadata accessor for BankConnectAuthorizationMismatchedAccountView(255);
    sub_2384E14AC(&qword_27DF0C658, type metadata accessor for BankConnectAuthorizationMismatchedAccountView, &unk_2387821C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C648);
  }

  return result;
}

uint64_t sub_2384E07C0(char a1, uint64_t a2)
{
  type metadata accessor for AccountMismatchedTileView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C618, &qword_23876ACF0);
  result = sub_23875E1C0();
  if (a1)
  {
    return sub_2384E0850(0);
  }

  return result;
}

uint64_t sub_2384E0850(char a1)
{
  v2 = v1;
  v4 = sub_23875A9F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238758BD0();
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    MEMORY[0x28223BE20](v8);
    v28[-2] = v2;
    sub_23875E500();
    sub_23875C6F0();
  }

  else
  {
    v11 = v2 + *(type metadata accessor for AccountMismatchedTileView(0) + 32);
    v12 = *v11;
    v13 = *(v11 + 8);
    LOBYTE(v11) = *(v11 + 16);
    v34[0] = v12;
    v34[1] = v13;
    v35 = v11;
    v38 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
    sub_23875E2F0();
  }

  v36 = sub_23875A820();
  v37 = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(v34);
  sub_23875A7F0();
  v14 = objc_allocWithZone(sub_23875A060());
  v30 = sub_23875A030();
  v31 = *(type metadata accessor for AccountMismatchedTileView(0) + 24);
  v15 = v32;
  sub_238758530();
  v16 = sub_23875A9E0();
  v18 = v17;
  v28[1] = v2;
  v19 = *(v5 + 8);
  v19(v15, v4);
  *v10 = v16;
  v10[1] = v18;
  v20 = *MEMORY[0x277CC7288];
  v21 = v33;
  v29 = v4;
  v22 = *(v33 + 104);
  v22(v10, v20, v7);
  sub_23875A040();
  v33 = *(v21 + 8);
  (v33)(v10, v7);
  sub_238758530();
  v23 = sub_23875A9E0();
  v25 = v24;
  v19(v15, v29);
  *v10 = v23;
  v10[1] = v25;
  v22(v10, *MEMORY[0x277CC7278], v7);
  v26 = v30;
  sub_23875A040();

  return (v33)(v10, v7);
}

uint64_t sub_2384E0BC4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AccountMismatchedTileView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C618, &qword_23876ACF0);
  return sub_23875E1C0();
}

double sub_2384E0C38()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384E0850(1);

  return result;
}

void sub_2384E0CDC(uint64_t *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875E0D0();
  v3 = sub_23875E080();
  KeyPath = swift_getKeyPath(byte_23876AEB8);

  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = 0x3FE3333333333333;
}

__n128 sub_2384E0DB4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  *&v17 = a1;
  *(&v17 + 1) = a2;
  sub_2384397A8(isCurrentExecutor, v7, v8);

  v9 = sub_23875DAA0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_23875E4A0();
  sub_23875C9C0();

  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  *(a3 + 96) = v21;
  *(a3 + 112) = v22;
  *(a3 + 128) = v23;
  *(a3 + 32) = v17;
  *(a3 + 48) = v18;
  result = v20;
  *(a3 + 64) = v19;
  *(a3 + 80) = v20;
  return result;
}

double sub_2384E0F10()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccountMismatchedTileView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  sub_23875E2F0();

  return result;
}

void sub_2384E102C(uint64_t a1)
{
  sub_2384AD48C();
  if (v1 <= 0x3F)
  {
    sub_238757B60();
    if (v2 <= 0x3F)
    {
      sub_238758680();
      if (v3 <= 0x3F)
      {
        sub_2384E10F8(319);
        if (v4 <= 0x3F)
        {
          sub_2384E115C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2384E10F8(uint64_t a1)
{
  if (!qword_27DF0C670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C5F8, &qword_23876ACD0);
    v1 = sub_23875E1E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0C670);
    }
  }
}

void sub_2384E115C()
{
  if (!qword_27DF0C678)
  {
    v0 = sub_23875E340();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0C678);
    }
  }
}

unint64_t sub_2384E11C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0C680;
  if (!qword_27DF0C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C680);
  }

  return result;
}

uint64_t sub_2384E1250(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AccountMismatchedTileView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_2384E12D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384E133C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2384E13C8()
{
  result = qword_27DF0C6D0;
  if (!qword_27DF0C6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C6C0, &qword_23876AE60);
    sub_23843A3E8(&qword_27DF0C6D8, &qword_27DF0C6E0, &unk_23876AE78, MEMORY[0x277CDF028]);
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C6D0);
  }

  return result;
}

uint64_t sub_2384E14AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for AccountMismatchedTileView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_238757B60();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  v8 = sub_238758680();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_2384E16B4()
{
  type metadata accessor for AccountMismatchedTileView(0);

  return sub_2384E0C38();
}

uint64_t AddOrderToWalletButton.init(signedArchive:onCompletion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_23875E1A0();
  *(a5 + 32) = v11;
  *(a5 + 40) = v12;
  sub_23875E1A0();
  *(a5 + 48) = v11;
  *(a5 + 56) = v12;
  result = swift_getKeyPath(byte_23876AEF0);
  *(a5 + 64) = result;
  *(a5 + 72) = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

double AddOrderToWalletButton.body.getter()
{
  v1 = sub_23875CDB0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[3];
  v28 = v0[2];
  v29[0] = v5;
  *(v29 + 9) = *(v0 + 57);
  v6 = v0[1];
  v26 = *v0;
  v27 = v6;
  v31 = *(v0 + 72);
  v7 = *(v0 + 8);
  v30 = v7;
  if (v31 == 1)
  {
    LOBYTE(v20) = v7 & 1;
  }

  else
  {
    sub_2384E2A34(&v30, &v17);
    sub_23875EFF0();
    v8 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_238439884(&v30, &qword_27DF0C708, &unk_23876AF18);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v7) = v20;
  }

  v9 = v7 & 1;
  v21 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v10 = v17;
  v11 = v18;
  v12 = v19;
  v13 = swift_allocObject();
  v14 = v29[0];
  v13[3] = v28;
  v13[4] = v14;
  *(v13 + 73) = *(v29 + 9);
  v15 = v27;
  v13[1] = v26;
  v13[2] = v15;
  *&v21 = v9;
  *(&v21 + 1) = sub_2384E2AA4;
  v22 = v13;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v20 = v29[0];
  sub_2384E2AAC(&v26, &v17);
  sub_23875E1D0();
  sub_2384E1C54(v17, v18, v19, 0, 0);

  return result;
}

double sub_2384E1A84(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  sub_2387579D0();
  sub_2387579A0();
  v5 = sub_238757840();

  if (v5)
  {
    v13[0] = a1[3];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1C0();
  }

  else
  {
    v13[0] = a1[2];
    v14 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1C0();
    v7 = sub_23875ED80();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_23875ED50();
    sub_2384E2AAC(a1, v13);
    v8 = sub_23875ED40();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    *(v9 + 16) = v8;
    *(v9 + 24) = v10;
    v11 = a1[3];
    *(v9 + 64) = a1[2];
    *(v9 + 80) = v11;
    *(v9 + 89) = *(a1 + 57);
    v12 = a1[1];
    *(v9 + 32) = *a1;
    *(v9 + 48) = v12;
    sub_2386C3BA4(0, 0, v4, &unk_23876B1E0, v9);
  }

  return result;
}

void sub_2384E1C54(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_23875EA50();
  v6 = PKLocalizedDeletableString(v5);

  if (v6)
  {
    sub_23875EA80();

    MEMORY[0x28223BE20](v7);
    MEMORY[0x28223BE20](v8);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C718, &qword_2387708F0);
    v12 = sub_2384E2BF8(v9, v10, v11);
    sub_2384397A8(v12, v13, v14);
    sub_2384E2C4C();
    sub_23875DEC0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2384E1E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C748, &qword_23876B1E8);
  v4[8] = swift_task_alloc();
  v5 = sub_2387577B0();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_2387579B0();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  sub_23875ED50();
  v4[15] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v4[16] = v8;
  v4[17] = v7;

  return MEMORY[0x2822009F8](sub_2384E1FB0, v8, v7);
}

uint64_t sub_2384E1FB0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_2387579D0();
  sub_2387579A0();
  (*(v2 + 104))(v1, *MEMORY[0x277CC6A50], v3);
  sub_238757830();
  v4 = v0[6];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v0[18] = sub_2387579A0();
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_2384E2204;
  v8 = v0[11];

  return MEMORY[0x282116F28](v8, v5, v6);
}

uint64_t sub_2384E2204()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_2384E246C;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_2384E2320;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2384E2320()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);

  *(v0 + 32) = *(v5 + 32);
  *(v0 + 169) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  v6 = *(v5 + 16);
  (*(v2 + 16))(v4, v1, v3);
  swift_storeEnumTagMultiPayload();
  v6(v4);
  sub_238439884(v4, &qword_27DF0C748, &qword_23876B1E8);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2384E246C()
{

  v1 = *(v0 + 160);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  *(v0 + 16) = *(v3 + 32);
  *(v0 + 168) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  v4 = *(v3 + 16);
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v5 = v1;
  v4(v2);

  sub_238439884(v2, &qword_27DF0C748, &qword_23876B1E8);

  v6 = *(v0 + 8);

  return v6();
}

double sub_2384E259C(void *a1)
{
  v2 = v1;
  [a1 setAddPassButtonStyle_];
  v10 = *(v1 + 24);
  v11 = *(v1 + 40);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  MEMORY[0x23EE62DC0](&v9, v4);
  [a1 setUserInteractionEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C738, &qword_23876B1D0);
  sub_23875D600();
  v5 = v10;
  v6 = *(v2 + 16);
  v7 = (v10 + OBJC_IVAR____TtCV12FinanceKitUI18AddOrderButtonView11Coordinator_action);
  *v7 = *(v2 + 8);
  v7[1] = v6;

  return result;
}

id sub_2384E27D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddOrderButtonView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2384E2834@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = type metadata accessor for AddOrderButtonView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV12FinanceKitUI18AddOrderButtonView11Coordinator_action];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_2384E28A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2384E2CC4(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2384E290C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2384E2CC4(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2384E2970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2384E2CC4(a1, a2, a3);
  sub_23875D120();
  __break(1u);
}

void *sub_2384E2998@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_2384E3540(a2, a3, a4);
  result = sub_23875CDC0();
  *a1 = v6;
  return result;
}

uint64_t sub_2384E2A34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C708, &unk_23876AF18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
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

uint64_t sub_2384E2B28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_2384E2B70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2384E2BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0C720;
  if (!qword_27DF0C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C720);
  }

  return result;
}

unint64_t sub_2384E2C4C()
{
  result = qword_27DF0C728;
  if (!qword_27DF0C728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C718, &qword_2387708F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C728);
  }

  return result;
}

unint64_t sub_2384E2CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0C730;
  if (!qword_27DF0C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C730);
  }

  return result;
}

void sub_2384E2D18(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v48 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v43 - v13;
  MEMORY[0x28223BE20](v14);
  v46 = &v43 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  sub_23875ED50();
  v45 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = sub_23875EA50();
  v20 = PKLocalizedDeletableString(v19);

  if (v20)
  {
    v43 = v11;
    v44 = a3;
    v21 = sub_23875EA80();
    v23 = v22;

    v49 = v21;
    v50 = v23;
    v24 = swift_allocObject();
    v25 = v48;
    *(v24 + 16) = a1;
    *(v24 + 24) = v25;
    v26 = sub_238455C54(a1, v25);
    sub_2384397A8(v26, v27, v28);
    sub_23875E230();
    v29 = sub_23875EA50();
    v30 = PKLocalizedDeletableString(v29);

    if (v30)
    {
      v31 = sub_23875EA80();
      v33 = v32;

      v49 = v31;
      v50 = v33;
      sub_23875C3B0();
      v34 = sub_23875C3C0();
      (*(*(v34 - 8) + 56))(v7, 0, 1, v34);
      v35 = swift_allocObject();
      *(v35 + 16) = a1;
      *(v35 + 24) = v25;
      sub_238455C54(a1, v25);
      v36 = v46;
      sub_23875E220();
      v37 = *(v9 + 16);
      v38 = v47;
      v37(v47, v18, v8);
      v39 = v43;
      v37(v43, v36, v8);
      v40 = v44;
      v37(v44, v38, v8);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C740, &unk_238770930);
      v37(&v40[*(v41 + 48)], v39, v8);
      v42 = *(v9 + 8);
      v42(v36, v8);
      v42(v18, v8);
      v42(v39, v8);
      v42(v38, v8);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_2384E31A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D38B00]) initWithAddPassButtonStyle:a2 addPassButtonType:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C738, &qword_23876B1D0);
  sub_23875D600();
  [v8 addTarget:v13 action:sel_callback forControlEvents:0x2000];

  v9 = v8;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  MEMORY[0x23EE62DC0](&v12, v10);
  [v9 setUserInteractionEnabled_];

  return v9;
}

void sub_2384E32EC(uint64_t a1@<X8>)
{
  sub_2384E3320();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
}

void sub_2384E3320()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_23875EA50();
  v1 = PKLocalizedDeletableString(v0);

  if (v1)
  {
    sub_23875EA80();

    sub_2384397A8(v2, v3, v4);
    sub_23875DAA0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t objectdestroy_14Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2384E3490(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2384494A4;

  return sub_2384E1E24(a1, v4, v5, v1 + 32);
}

unint64_t sub_2384E3540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0C750;
  if (!qword_27DF0C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C750);
  }

  return result;
}

uint64_t MerchantLookupRequestExecutor.executeRequest(forTransactionID:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2384E35B8, 0, 0);
}

uint64_t sub_2384E35B8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D37F60]) initWithSource_];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_2384E36D4;
  v4 = v0[2];

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD000000000000026, 0x8000000238789000, sub_2384E39FC, v2, &type metadata for MerchantLookupResponse);
}

uint64_t sub_2384E36D4()
{

  return MEMORY[0x2822009F8](sub_2384E37EC, 0, 0);
}

uint64_t sub_2384E37EC()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_2384E384C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C758, &unk_23876B2B0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_2384E3F50;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238461390;
  aBlock[3] = &block_descriptor_5;
  v11 = _Block_copy(aBlock);

  [a2 startLookupWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_2384E3A04(void *a1)
{
  [a1 result];
  [a1 fallbackCategory];
  [a1 merchant];
  [a1 brand];
  [a1 placemark];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C758, &unk_23876B2B0);
  return sub_23875ED10();
}

uint64_t sub_2384E3AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2384E3B00, 0, 0);
}

uint64_t sub_2384E3B00()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D37F60]) initWithSource_];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_2384E3C1C;
  v4 = v0[2];

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD000000000000026, 0x8000000238789000, sub_2384E3FE4, v2, &type metadata for MerchantLookupResponse);
}

uint64_t sub_2384E3C1C()
{

  return MEMORY[0x2822009F8](sub_2384E3FE8, 0, 0);
}

uint64_t dispatch thunk of MerchantLookupRequestExecuting.executeRequest(forTransactionID:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2384494A4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_2384E3E78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_2384E3ED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_2384E3F50(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C758, &unk_23876B2B0);

  return sub_2384E3A04(a1);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ReturnDetailsMerchantImage(uint64_t a1)
{
  result = qword_27DF0C760;
  if (!qword_27DF0C760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384E4060(uint64_t a1)
{
  type metadata accessor for MerchantImage.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2384E40FC();
    if (v2 <= 0x3F)
    {
      sub_238438628(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2384E40FC()
{
  if (!qword_27DF0C770)
  {
    v0 = sub_23875E340();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0C770);
    }
  }
}

void sub_2384E4168(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v70 = a1;
  v2 = sub_23875DFD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7B0, &qword_23876B360);
  MEMORY[0x28223BE20](v61);
  v7 = &v60 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7B8, &qword_23876B368);
  MEMORY[0x28223BE20](v62);
  v64 = &v60 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7C0, &qword_23876B370);
  MEMORY[0x28223BE20](v63);
  v66 = &v60 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7C8, &qword_23876B378);
  MEMORY[0x28223BE20](v65);
  v68 = &v60 - v10;
  sub_23875ED50();
  v67 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384E5E0C(v70, v7, type metadata accessor for MerchantImage.ViewModel);
  v11 = type metadata accessor for MerchantImage(0);
  v7[*(v11 + 20)] = 0;
  v12 = *(v11 + 24);
  *&v7[v12] = swift_getKeyPath(a0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
  v13 = sub_23875E090();
  KeyPath = swift_getKeyPath(asc_23876B3B0);
  v15 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7D0, &unk_23876B3E0) + 36)];
  v16 = type metadata accessor for OrderImageStyleModifier(0);
  *&v15[*(v16 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v15[*(v16 + 40)] = swift_getKeyPath(a0);
  swift_storeEnumTagMultiPayload();
  *v15 = xmmword_2387692C0;
  *(v15 + 2) = 0;
  v15[24] = 1;
  *(v15 + 4) = v13;
  v15[40] = 0;
  v60 = sub_23875E490();
  v18 = v17;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = sub_23875E4A0();
  v21 = v20;
  v22 = v70;
  sub_2384E4A28(&v100);
  v86 = v104;
  v87 = v105;
  v88 = v106;
  v82 = v100;
  v83 = v101;
  v84 = v102;
  v85 = v103;
  v89[0] = v100;
  v89[1] = v101;
  v89[2] = v102;
  v89[3] = v103;
  v89[4] = v104;
  v89[5] = v105;
  v90 = v106;
  sub_23843981C(&v82, &v91, &qword_27DF0C7D8, &qword_23876B3F0);
  sub_238439884(v89, &qword_27DF0C7D8, &qword_23876B3F0);

  *&v91 = v19;
  *(&v91 + 1) = v21;
  v23 = v85;
  v24 = v86;
  v96 = v86;
  v97 = v87;
  v92 = v82;
  v93 = v83;
  v26 = v82;
  v25 = v83;
  v27 = v84;
  v94 = v84;
  v95 = v85;
  __asm { FMOV            V0.2D, #6.0 }

  *(v98 + 8) = _Q0;
  v33 = v88;
  *&v98[0] = v88;
  v34 = v60;
  *(&v98[1] + 1) = v60;
  v99 = v18;
  v35 = &v7[*(v61 + 36)];
  v36 = v98[0];
  *(v35 + 6) = v87;
  *(v35 + 7) = v36;
  *(v35 + 8) = v98[1];
  v37 = v94;
  *(v35 + 2) = v93;
  *(v35 + 3) = v37;
  v38 = v96;
  *(v35 + 4) = v95;
  *(v35 + 5) = v38;
  v39 = v92;
  *v35 = v91;
  *(v35 + 1) = v39;
  v105 = v24;
  v106 = v87;
  v101 = v26;
  v102 = v25;
  *(v35 + 18) = v18;
  *&v100 = v19;
  *(&v100 + 1) = v21;
  v107 = v33;
  v104 = v23;
  v103 = v27;
  v108 = _Q0;
  v109 = v34;
  v110 = v18;
  sub_23843981C(&v91, v81, &qword_27DF0C7E0, &qword_23876B3F8);
  sub_238439884(&v100, &qword_27DF0C7E0, &qword_23876B3F8);
  v40 = (v22 + *(type metadata accessor for ReturnDetailsMerchantImage(0) + 20));
  v41 = v40[3];
  *&v81[32] = v40[2];
  *&v81[48] = v41;
  *&v81[64] = v40[4];
  *&v81[73] = *(v40 + 73);
  v42 = v40[1];
  *v81 = *v40;
  *&v81[16] = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7A8, &qword_23876B358);
  MEMORY[0x23EE62DC0](v80);
  if ((v80[32] & 1) != 0 || (v80[72] & 1) != 0 || (v44 = 1.0, *&v80[48] + *&v80[64] >= *&v80[8] + *&v80[24]))
  {
    v44 = 0.0;
  }

  v45 = v64;
  sub_2384396E4(v7, v64, &qword_27DF0C7B0, &qword_23876B360);
  *(v45 + *(v62 + 36)) = v44;
  v46 = v40[3];
  *&v81[32] = v40[2];
  *&v81[48] = v46;
  *&v81[64] = v40[4];
  *&v81[73] = *(v40 + 73);
  v47 = v40[1];
  *v81 = *v40;
  *&v81[16] = v47;
  MEMORY[0x23EE62DC0](v80, v43);
  v48 = 0;
  if ((v80[32] & 1) == 0 && ((v80[72] & 1) != 0 || *&v80[48] + *&v80[64] >= *&v80[8] + *&v80[24]))
  {
    v48 = *&v80[24];
  }

  v49 = v66;
  v50 = sub_2384396E4(v45, v66, &qword_27DF0C7B8, &qword_23876B368);
  v51 = (v49 + *(v63 + 36));
  *v51 = 0;
  v51[1] = v48;
  v52 = MEMORY[0x23EE62FD0](v50, 0.5, 1.0, 0.0);
  v53 = v40[3];
  *&v81[32] = v40[2];
  *&v81[48] = v53;
  *&v81[64] = v40[4];
  *&v81[73] = *(v40 + 73);
  v54 = v40[1];
  *v81 = *v40;
  *&v81[16] = v54;
  MEMORY[0x23EE62DC0](&v76, v43);
  v75[0] = v79[0];
  *(v75 + 9) = *(v79 + 9);
  v73 = v77;
  v74 = v78;
  v72 = v76;
  *v80 = v52;
  *&v80[40] = v78;
  *&v80[56] = v79[0];
  *&v80[65] = *(v79 + 9);
  *&v80[8] = v76;
  *&v80[24] = v77;
  v55 = v68;
  sub_2384396E4(v49, v68, &qword_27DF0C7C0, &qword_23876B370);
  v56 = v55 + *(v65 + 36);
  v57 = *&v80[48];
  *(v56 + 32) = *&v80[32];
  *(v56 + 48) = v57;
  *(v56 + 64) = *&v80[64];
  v58 = *&v80[16];
  *v56 = *v80;
  *(v56 + 16) = v58;
  v59 = v72;
  *&v81[24] = v73;
  *&v81[40] = v74;
  *&v81[56] = v75[0];
  *&v81[65] = *(v75 + 9);
  *(v56 + 80) = v80[80];
  *v81 = v52;
  *&v81[8] = v59;
  sub_23843981C(v80, &v71, &qword_27DF0C7E8, &unk_23876B400);
  sub_238439884(v81, &qword_27DF0C7E8, &unk_23876B400);
  sub_2384396E4(v55, v69, &qword_27DF0C7C8, &qword_23876B378);
}

void sub_2384E4A28(uint64_t a1@<X8>)
{
  v41 = sub_23875DFD0();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F0, &qword_23877B880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_23875C450();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  sub_23875ED50();
  v43 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v42 = sub_23875E0D0();
  type metadata accessor for ReturnDetailsMerchantImage(0);
  sub_2384D4E38(v13);
  (*(v8 + 104))(v10, *MEMORY[0x277CDF3C0], v7);
  v14 = sub_23875C440();
  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);
  if (v14)
  {
    v16 = sub_23875E010();
  }

  else
  {
    v16 = sub_23875E040();
  }

  v39 = v16;
  KeyPath = swift_getKeyPath(byte_23876B410);
  v17 = sub_23875D840();
  v35 = *(*(v17 - 8) + 56);
  v35(v6, 1, 1, v17);
  v37 = sub_23875D8C0();
  sub_238439884(v6, &qword_27DF0C7F0, &qword_23877B880);
  v36 = swift_getKeyPath(byte_23876B440);
  v34 = sub_23875E0D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_238763B60;
  v19 = *MEMORY[0x277CE0EE0];
  v20 = *(v40 + 104);
  v21 = v41;
  v20(v3, v19, v41);
  *(v18 + 32) = sub_23875E090();
  v20(v3, v19, v21);
  *(v18 + 40) = sub_23875E090();
  sub_23875E560();
  sub_23875E580();
  MEMORY[0x23EE62F40](v18);
  sub_23875C740();
  v22 = v49[8];
  v23 = v49[9];
  v24 = v49[10];
  v25 = v49[11];
  v26 = v49[12];
  v35(v6, 1, 1, v17);
  v27 = sub_23875D8C0();
  sub_238439884(v6, &qword_27DF0C7F0, &qword_23877B880);
  v28 = swift_getKeyPath(byte_23876B440);
  v29 = v34;
  *&v45 = v34;
  *(&v45 + 1) = v22;
  *&v46 = v23;
  *(&v46 + 1) = v24;
  *&v47 = v25;
  *(&v47 + 1) = v26;
  *&v48 = v28;
  *(&v48 + 1) = v27;
  v30 = v46;
  *(a1 + 40) = v45;
  *(a1 + 56) = v30;
  v31 = v48;
  *(a1 + 72) = v47;
  v32 = KeyPath;
  *a1 = v42;
  *(a1 + 8) = v32;
  v33 = v36;
  *(a1 + 16) = v39;
  *(a1 + 24) = v33;
  *(a1 + 32) = v37;
  *(a1 + 88) = v31;
  v49[0] = v29;
  v49[1] = v22;
  v49[2] = v23;
  v49[3] = v24;
  v49[4] = v25;
  v49[5] = v26;
  v49[6] = v28;
  v49[7] = v27;

  sub_23843981C(&v45, v44, &qword_27DF0C7F8, &qword_238773800);
  sub_238439884(v49, &qword_27DF0C7F8, &qword_238773800);
}

void sub_2384E5064(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for ReturnDetailsMerchantImage(0);
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875D2F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875D4B0();
  sub_23875C640();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  (*(v7 + 8))(v9, v6);
  v18 = sub_23875E020();
  sub_2384E5E0C(a1, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReturnDetailsMerchantImage);
  v19 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v20 = swift_allocObject();
  sub_2384E59A4(v5, v20 + v19);
  v21 = (v20 + ((v19 + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = v11;
  v21[1] = v13;
  v21[2] = v15;
  v21[3] = v17;
  v30 = v18;
  v31 = sub_2384E5A88;
  v32 = v20;
  v33 = 0;
  v34 = 0;
  v26 = v11;
  v27 = v13;
  v28 = v15;
  v29 = v17;
  sub_2384E5E0C(a1, v5, type metadata accessor for ReturnDetailsMerchantImage);
  v22 = swift_allocObject();
  sub_2384E59A4(v5, v22 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C790, &qword_23876B350);
  type metadata accessor for CGRect(0);
  sub_2384E5D30();
  sub_2384E5DB4();
  sub_23875DF10();
}

void sub_2384E53AC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = (a1 + *(type metadata accessor for ReturnDetailsMerchantImage(0) + 20));
  v11 = v10[3];
  v22 = v10[2];
  v23 = v11;
  v24[0] = v10[4];
  *(v24 + 9) = *(v10 + 73);
  v12 = v10[1];
  v20 = *v10;
  v21 = v12;
  sub_23843981C(&v20, v25, &qword_27DF0C7A8, &qword_23876B358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7A8, &qword_23876B358);
  MEMORY[0x23EE62DC0](v18);
  *v18 = a2;
  *&v18[1] = a3;
  *&v18[2] = a4;
  *&v18[3] = a5;
  LOBYTE(v19) = 0;
  v15 = v22;
  v16 = v23;
  *v17 = v24[0];
  *&v17[9] = *(v24 + 9);
  v13 = v20;
  v14 = v21;
  sub_23875E2F0();
  v25[2] = v15;
  v25[3] = v16;
  v26[0] = *v17;
  *(v26 + 9) = *&v17[9];
  v25[0] = v13;
  v25[1] = v14;
  sub_238439884(v25, &qword_27DF0C7A8, &qword_23876B358);
}

double sub_2384E558C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v8 = a2[1];
  v9 = *a2;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a3 + *(type metadata accessor for ReturnDetailsMerchantImage(0) + 20));
  v5 = v4[3];
  v19 = v4[2];
  v20 = v5;
  v21[0] = v4[4];
  *(v21 + 9) = *(v4 + 73);
  v6 = v4[1];
  v17 = *v4;
  v18 = v6;
  sub_23843981C(&v17, v22, &qword_27DF0C7A8, &qword_23876B358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7A8, &qword_23876B358);
  MEMORY[0x23EE62DC0](v15);
  v15[0] = v9;
  v15[1] = v8;
  LOBYTE(v16) = 0;
  v12 = v19;
  v13 = v20;
  *v14 = v21[0];
  *&v14[9] = *(v21 + 9);
  v10 = v17;
  v11 = v18;
  sub_23875E2F0();
  v22[2] = v12;
  v22[3] = v13;
  v23[0] = *v14;
  *(v23 + 9) = *&v14[9];
  v22[0] = v10;
  v22[1] = v11;
  sub_238439884(v22, &qword_27DF0C7A8, &qword_23876B358);

  return result;
}

uint64_t sub_2384E5754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C778, &qword_23876B330) + 44);
  *v7 = sub_23875CE60();
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C780, &unk_23876B338);
  sub_2384E4168(v2, v7 + *(v8 + 44));

  v9 = sub_23875E4A0();
  v11 = v10;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384E5E0C(v2, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReturnDetailsMerchantImage);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_2384E59A4(v6, v13 + v12);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C788, &qword_23876B348);
  v15 = (a2 + *(result + 36));
  *v15 = sub_2384E5A08;
  v15[1] = v13;
  v15[2] = v9;
  v15[3] = v11;
  return result;
}

uint64_t sub_2384E59A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReturnDetailsMerchantImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2384E5A08(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReturnDetailsMerchantImage(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_2384E5064(v4, a1);
}

void sub_2384E5A88()
{
  v1 = *(type metadata accessor for ReturnDetailsMerchantImage(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];

  sub_2384E53AC(v0 + v2, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for ReturnDetailsMerchantImage(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(type metadata accessor for MerchantImage.ViewModel(0) + 20);
  v6 = sub_23875AF90();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23875C450();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_2384E5CB0(uint64_t a1, __int128 *a2)
{
  v5 = *(type metadata accessor for ReturnDetailsMerchantImage(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2384E558C(a1, a2, v6);
}

unint64_t sub_2384E5D30()
{
  result = qword_27DF0C798;
  if (!qword_27DF0C798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C790, &qword_23876B350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C798);
  }

  return result;
}

unint64_t sub_2384E5DB4()
{
  result = qword_27DF0C7A0;
  if (!qword_27DF0C7A0)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C7A0);
  }

  return result;
}

uint64_t sub_2384E5E0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2384E5E74()
{
  result = qword_27DF0C800;
  if (!qword_27DF0C800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C788, &qword_23876B348);
    sub_23843A3E8(&qword_27DF0C808, &qword_27DF0C810, &unk_23876B480, MEMORY[0x277CE1198]);
    sub_23843A3E8(&qword_27DF0C818, &qword_27DF0C820, &qword_238784360, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C800);
  }

  return result;
}

void sub_2384E5FA0(uint64_t a1)
{
  sub_2384E60C4(319, &qword_27DF0C830, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23875BC40();
    if (v2 <= 0x3F)
    {
      sub_2384E60C4(319, &qword_2814F08D8, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2384E60C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2384E6128(uint64_t a1)
{
  result = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2384E6204(uint64_t a1)
{
  sub_2384E6564(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2384E6564(319, &qword_27DF0C858, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2384E60C4(319, &qword_2814F1160, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2384E6564(319, &qword_2814F08A8, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2384E63A8(uint64_t a1)
{
  sub_23875AF90();
  if (v1 <= 0x3F)
  {
    sub_2384E60C4(319, &qword_2814F08B8, MEMORY[0x277CC6E90], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      v3 = MEMORY[0x277D837D0];
      sub_2384E6564(319, &qword_2814F08B0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v4 <= 0x3F)
      {
        sub_2384E6564(319, &qword_2814F08C0, v3, MEMORY[0x277D83D88]);
        if (v5 <= 0x3F)
        {
          sub_2384E60C4(319, &qword_2814F1160, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
          if (v6 <= 0x3F)
          {
            sub_2384E6564(319, &qword_2814F08A8, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
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

void sub_2384E6564(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2384E65B4(uint64_t a1)
{
  v2 = sub_23875A710();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OrderIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2384E730C(v1, v8, type metadata accessor for OrderIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x23EE641F0](1);
    sub_23875EB30();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x23EE641F0](0);
    sub_2384E6EE0(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
    sub_23875E960();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_2384E679C()
{
  v1 = v0;
  v2 = sub_23875A710();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OrderIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875F700();
  sub_2384E730C(v1, v8, type metadata accessor for OrderIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x23EE641F0](1);
    sub_23875EB30();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x23EE641F0](0);
    sub_2384E6EE0(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
    sub_23875E960();
    (*(v3 + 8))(v5, v2);
  }

  return sub_23875F760();
}

uint64_t sub_2384E6998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_23875BC40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2384E6A8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_23875A710();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875F700();
  sub_2384E730C(v3, v10, type metadata accessor for OrderIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x23EE641F0](1);
    sub_23875EB30();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    MEMORY[0x23EE641F0](0);
    sub_2384E6EE0(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
    sub_23875E960();
    (*(v5 + 8))(v7, v4);
  }

  return sub_23875F760();
}

uint64_t sub_2384E6C90@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2384E730C(v2, v12, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2384E73D4(v12, v6, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v14 = *v6;
    v13 = v6[1];

    sub_2384E7374(v6, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    *a1 = v14;
    a1[1] = v13;
  }

  else
  {
    sub_2384E73D4(v12, v9, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    sub_23875AF70();
    sub_2384E7374(v9, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
  }

  type metadata accessor for OrderIdentifier(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2384E6EE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2384E6F28(uint64_t a1, uint64_t a2)
{
  v27 = sub_23875A710();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OrderIdentifier(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C880, &qword_23876B5D8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v17 = (&v26 + *(v16 + 56) - v14);
  sub_2384E730C(a1, &v26 - v14, type metadata accessor for OrderIdentifier);
  sub_2384E730C(a2, v17, type metadata accessor for OrderIdentifier);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2384E730C(v15, v12, type metadata accessor for OrderIdentifier);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = v27;
      (*(v4 + 32))(v6, v17, v27);
      v22 = MEMORY[0x23EE5F1E0](v12, v6);
      v24 = *(v4 + 8);
      v24(v6, v23);
      v24(v12, v23);
      sub_2384E7374(v15, type metadata accessor for OrderIdentifier);
      return v22 & 1;
    }

    (*(v4 + 8))(v12, v27);
    goto LABEL_12;
  }

  sub_2384E730C(v15, v9, type metadata accessor for OrderIdentifier);
  v19 = *v9;
  v18 = v9[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_12:
    sub_2384E72A4(v15);
    goto LABEL_13;
  }

  if (v19 == *v17 && v18 == v17[1])
  {

    goto LABEL_16;
  }

  v21 = sub_23875F630();

  if (v21)
  {
LABEL_16:
    sub_2384E7374(v15, type metadata accessor for OrderIdentifier);
    v22 = 1;
    return v22 & 1;
  }

  sub_2384E7374(v15, type metadata accessor for OrderIdentifier);
LABEL_13:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_2384E72A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C880, &qword_23876B5D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2384E730C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384E7374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2384E73D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384E743C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C828, &unk_23876B490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384E74AC(uint64_t a1)
{
  result = sub_23875A710();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for OrderDetailsRefreshableModifier(uint64_t a1)
{
  result = qword_27DF0C8A8;
  if (!qword_27DF0C8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384E7590(uint64_t a1)
{
  sub_2384E7614(319);
  if (v1 <= 0x3F)
  {
    sub_2384B49C4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2384E7614(uint64_t a1)
{
  if (!qword_27DF0C8B8)
  {
    sub_23875A710();
    v1 = sub_23875F1F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0C8B8);
    }
  }
}

void *sub_2384E7688@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v70 = a1;
  v78 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C8C0, &qword_23876B670);
  MEMORY[0x28223BE20](v4);
  v6 = v63 - v5;
  v66 = type metadata accessor for OrderDetailsRefreshableModifier(0);
  v65 = *(v66 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v8 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C8C8, &qword_23876B678);
  v67 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v75 = v63 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C8D0, &qword_23876B680);
  v69 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v68 = v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C8A0, &unk_23876B5F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v63 - v12;
  v14 = sub_23875A710();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v73 = v63 - v19;
  v71 = v3;
  sub_2384E8BF8(v3, v13);
  v74 = v15;
  v20 = *(v15 + 48);
  v76 = v14;
  if (v20(v13, 1, v14) == 1)
  {
    sub_2384E8C68(v13);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C8D8, &unk_23876B688);
    (*(*(v21 - 8) + 16))(v6, v70, v21);
    swift_storeEnumTagMultiPayload();
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12E30, &unk_238765430);
    v23 = sub_23843A3E8(&qword_27DF0C8E0, &qword_27DF0C8D8, &unk_23876B688, MEMORY[0x277CE04B0]);
    v83 = v21;
    v84 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v27 = sub_2384397A8(OpaqueTypeConformance2, v25, v26);
    v28 = sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
    v83 = v72;
    v84 = MEMORY[0x277D837D0];
    v85 = v22;
    v86 = MEMORY[0x277CE0BD8];
    v87 = OpaqueTypeConformance2;
    v88 = v27;
    v89 = v28;
    v90 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    return sub_23875D1B0();
  }

  else
  {
    v63[1] = v4;
    v64 = v6;
    v30 = v73;
    v31 = v74;
    v32 = *(v74 + 32);
    v33 = v76;
    v32(v73, v13, v76);
    sub_2384E8CD0(v71, v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = v31 + 16;
    (*(v31 + 16))(v17, v30, v33);
    v35 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v36 = (v7 + *(v34 + 64) + v35) & ~*(v34 + 64);
    v37 = swift_allocObject();
    sub_2384E8D34(v8, v37 + v35);
    v32((v37 + v36), v17, v33);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C8D8, &unk_23876B688);
    v39 = sub_23843A3E8(&qword_27DF0C8E0, &qword_27DF0C8D8, &unk_23876B688, MEMORY[0x277CE04B0]);
    sub_23875DB90();

    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v40 = qword_2814F1B90;
    v41 = sub_23875EA50();
    v42 = sub_23875EA50();
    v43 = sub_23875EA50();
    v44 = [v40 localizedStringForKey:v41 value:v42 table:v43];

    v45 = sub_23875EA80();
    v47 = v46;

    v81 = v45;
    v82 = v47;
    v48 = (v71 + *(v66 + 20));
    v49 = *v48;
    v50 = *(v48 + 1);
    v79 = v49;
    v80 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1D0();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
    v83 = v38;
    v84 = v39;
    v52 = swift_getOpaqueTypeConformance2();
    v55 = sub_2384397A8(v52, v53, v54);
    v71 = v38;
    v56 = v55;
    v62 = sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
    v70 = v39;
    v57 = v72;
    v58 = v68;
    v59 = v75;
    sub_23875DEC0();

    (*(v67 + 8))(v59, v57);
    v60 = v69;
    v61 = v77;
    (*(v69 + 16))(v64, v58, v77);
    swift_storeEnumTagMultiPayload();
    v83 = v57;
    v84 = MEMORY[0x277D837D0];
    v85 = v51;
    v86 = MEMORY[0x277CE0BD8];
    v87 = v52;
    v88 = v56;
    v89 = v62;
    v90 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_23875D1B0();
    (*(v60 + 8))(v58, v61);
    return (*(v74 + 8))(v73, v76);
  }
}

uint64_t sub_2384E7FEC(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_23875ED50();
  v2[3] = sub_23875ED40();
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2384E80A8;

  return sub_2384E81E4(a2);
}

uint64_t sub_2384E80A8()
{

  v1 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2384473D0, v1, v0);
}

uint64_t sub_2384E81E4(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_23875ED50();
  v2[6] = sub_23875ED40();
  v4 = sub_23875ECE0();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_2384E827C, v4, v3);
}

uint64_t sub_2384E827C()
{
  sub_2387579D0();
  v0[9] = sub_2387579A0();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_2384E832C;
  v2 = v0[4];

  return MEMORY[0x282116D58](v2);
}

uint64_t sub_2384E832C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_2384E84A8;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_2384E8448;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2384E8448()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2384E84A8()
{

  if (sub_23875EDF0())
  {
    v1 = v0[11];

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_2384E8594;

    return MEMORY[0x282200480](500000000);
  }
}

uint64_t sub_2384E8594()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_2384E9084;
  }

  else
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_2384E86B8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2384E86B8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);

  v3 = v2 + *(type metadata accessor for OrderDetailsRefreshableModifier(0) + 20);
  v4 = *(v3 + 8);
  *(v0 + 16) = *v3;
  *(v0 + 24) = v4;
  *(v0 + 104) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();

  v5 = *(v0 + 8);

  return v5();
}

double sub_2384E878C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v16 - v1;
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

  v3 = qword_2814F1B90;
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  v8 = sub_23875EA80();
  v10 = v9;

  v16[0] = v8;
  v16[1] = v10;
  sub_23875C3B0();
  v11 = sub_23875C3C0();
  v12 = (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  sub_2384397A8(v12, v13, v14);
  sub_23875E220();

  return result;
}

double sub_2384E89BC()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return result;
}

void sub_2384E8A4C(uint64_t a1@<X8>)
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

uint64_t sub_2384E8BF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C8A0, &unk_23876B5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384E8C68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C8A0, &unk_23876B5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2384E8CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsRefreshableModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384E8D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsRefreshableModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384E8D98()
{
  v2 = *(type metadata accessor for OrderDetailsRefreshableModifier(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_23875A710() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2384494A4;

  return sub_2384E7FEC(v0 + v3, v0 + v6);
}

unint64_t sub_2384E8EC8()
{
  result = qword_27DF0C8E8;
  if (!qword_27DF0C8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DF0C8F0, &qword_23876B6B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C8C8, &qword_23876B678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12E30, &unk_238765430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C8D8, &unk_23876B688);
    sub_23843A3E8(&qword_27DF0C8E0, &qword_27DF0C8D8, &unk_23876B688, MEMORY[0x277CE04B0]);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_2384397A8(OpaqueTypeConformance2, v2, v3);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C8E8);
  }

  return result;
}

void sub_2384E9088(uint64_t a1)
{
  sub_2384E914C(319);
  if (v1 <= 0x3F)
  {
    sub_23846D0DC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2384E914C(uint64_t a1)
{
  if (!qword_27DF0C978)
  {
    type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(255);
    v1 = sub_23875F1F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0C978);
    }
  }
}

uint64_t sub_2384E91E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v2 = *(a1 + 24);
  v65 = *(a1 + 16);
  v64 = v2;
  v3 = sub_23875D9B0();
  v68 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v66 = &v58 - v4;
  sub_23875D6E0();
  v77 = v3;
  v5 = sub_23875C8C0();
  v76 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v69 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v58 - v8;
  v61 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  MEMORY[0x28223BE20](v61);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  MEMORY[0x28223BE20](v59);
  v60 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v58 - v12;
  v14 = sub_23875B940();
  v71 = *(v14 - 8);
  v72 = v14;
  MEMORY[0x28223BE20](v14);
  v63 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC58, &qword_238766B88);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v58 - v19;
  v21 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v58 - v26;
  v28 = sub_23875F1F0();
  v29 = *(v28 - 8);
  v73 = v28;
  v74 = v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v75 = &v58 - v33;
  sub_23843981C(v79, v20, &qword_27DF0AC58, &qword_238766B88);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_238439884(v20, &qword_27DF0AC58, &qword_238766B88);
    v34 = v73;
  }

  else
  {
    sub_2384E9E3C(v20, v27, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    sub_2384E9DCC(v27, v24);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = v62;
      sub_2384E9E3C(v24, v62, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
      sub_23843981C(v35 + *(v61 + 48), v13, &qword_27DF0D040, &qword_2387676A0);
      v36 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
    }

    else
    {
      v35 = v60;
      sub_2384E9E3C(v24, v60, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
      sub_23843981C(v35 + *(v59 + 44), v13, &qword_27DF0D040, &qword_2387676A0);
      v36 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
    }

    sub_2384E9EA4(v35, v36);
    v37 = v72;
    v34 = v73;
    v38 = v71;
    if ((*(v71 + 48))(v13, 1, v72) != 1)
    {
      v43 = v70;
      (*(v38 + 32))(v70, v13, v37);
      v44 = (*(v38 + 16))(v63, v43, v37);
      MEMORY[0x28223BE20](v44);
      v45 = v64;
      *(&v58 - 4) = v65;
      *(&v58 - 3) = v45;
      *(&v58 - 2) = v79;
      *(&v58 - 1) = v27;
      v46 = v66;
      sub_23875D9A0();
      v47 = v77;
      WitnessTable = swift_getWitnessTable();
      v79 = v27;
      v49 = WitnessTable;
      v50 = v69;
      sub_23875DE00();
      (*(v68 + 8))(v46, v47);
      (*(v38 + 8))(v70, v37);
      v51 = sub_23844E9B4();
      v80 = v49;
      v81 = v51;
      swift_getWitnessTable();
      v52 = v67;
      sub_23844EA0C();
      v53 = v76;
      v54 = *(v76 + 8);
      v54(v50, v5);
      sub_23844EA0C();
      v54(v52, v5);
      (*(v53 + 32))(v31, v50, v5);
      (*(v53 + 56))(v31, 0, 1, v5);
      v41 = v75;
      sub_2384C65A0(v31, v75);
      v42 = *(v74 + 8);
      v42(v31, v34);
      sub_2384E9EA4(v79, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
      goto LABEL_10;
    }

    sub_238439884(v13, &qword_27DF0D040, &qword_2387676A0);
    sub_2384E9EA4(v27, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  }

  (*(v76 + 56))(v31, 1, 1, v5);
  v39 = swift_getWitnessTable();
  v40 = sub_23844E9B4();
  v85 = v39;
  v86 = v40;
  swift_getWitnessTable();
  v41 = v75;
  sub_2384C65A0(v31, v75);
  v42 = *(v74 + 8);
  v42(v31, v34);
LABEL_10:
  v55 = swift_getWitnessTable();
  v56 = sub_23844E9B4();
  v83 = v55;
  v84 = v56;
  v82 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23844EA0C();
  return (v42)(v41, v34);
}

double sub_2384E9C00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[1] = a5;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v19 - v13;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = type metadata accessor for OrderWidgetLink(0, a3, a4, v15);
  (*(a1 + *(v16 + 36)))(a2);
  sub_23844EA0C();
  v17 = *(v9 + 8);
  v17(v11, a3);
  sub_23844EA0C();
  v17(v14, a3);

  return result;
}

uint64_t sub_2384E9DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384E9E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384E9EA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for BankConnectReviewConnectionView(uint64_t a1)
{
  result = qword_27DF0C988;
  if (!qword_27DF0C988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384E9F78(uint64_t a1)
{
  sub_238757B60();
  if (v1 <= 0x3F)
  {
    sub_23875BCB0();
    if (v2 <= 0x3F)
    {
      sub_238449184(319, &qword_27DF096A8, 0x277D38080);
      if (v3 <= 0x3F)
      {
        sub_2384EA174(319, &qword_27DF0C998, MEMORY[0x277CC6F70], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23846D0DC();
          if (v5 <= 0x3F)
          {
            sub_2384EA174(319, &qword_27DF0C9A0, MEMORY[0x277CDD968], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_2384B49C4();
              if (v7 <= 0x3F)
              {
                sub_2384EA174(319, &qword_27DF0C9A8, MEMORY[0x277CC7470], MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_2384EA174(319, &qword_27DF09E18, MEMORY[0x277CC7A70], MEMORY[0x277CDD7C8]);
                  if (v9 <= 0x3F)
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
}

void sub_2384EA174(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2384EA1F4(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_23875F3A0();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = MEMORY[0x277D84F90];
    sub_2385FEB4C(0, v2 & ~(v2 >> 63), 0);
    v32 = v37;
    if (v31)
    {
      v3 = sub_23875F350();
    }

    else
    {
      v3 = sub_23875F320();
      v4 = *(v1 + 36);
    }

    v34 = v3;
    v35 = v4;
    v36 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v9 = v34;
        v8 = v35;
        v10 = v36;
        v11 = v1;
        sub_238530718(v34, v35, v36, v1);
        v13 = v12;
        v14 = [v12 paymentType];

        v15 = v32;
        v37 = v32;
        v17 = *(v32 + 16);
        v16 = *(v32 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_2385FEB4C((v16 > 1), v17 + 1, 1);
          v15 = v37;
        }

        *(v15 + 16) = v17 + 1;
        *(v15 + 8 * v17 + 32) = v14;
        v32 = v15;
        if (v31)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_23875F370())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA48, &qword_23876B870);
          v6 = sub_23875EE90();
          sub_23875F3E0();
          v6(v33, 0);
          if (v5 == v30)
          {
LABEL_32:
            sub_238434834(v34, v35, v36);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v18 = 1 << *(v11 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(v29 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_238434834(v9, v8, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            sub_238434834(v9, v8, 0);
          }

LABEL_31:
          v27 = *(v1 + 36);
          v34 = v18;
          v35 = v27;
          v36 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void *sub_2384EA548()
{
  v0 = sub_238757AD0();
  v46 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v43 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v61 = &v43 - v3;
  v4 = sub_238758680();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  MEMORY[0x28223BE20](v9);
  v58 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  type metadata accessor for BankConnectReviewConnectionView(0);
  v60 = sub_2384EAD4C();
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF09E88, &qword_27DF09E80, &unk_2387686A0, MEMORY[0x277CDD8D8]);
  v16 = sub_23875EEE0();
  v52 = v8;
  if (v16)
  {
    v17 = v16;
    v63 = MEMORY[0x277D84F90];
    sub_2385FE488(0, v16 & ~(v16 >> 63), 0);
    v18 = v63;
    result = sub_23875EED0();
    if (v17 < 0)
    {
LABEL_30:
      __break(1u);
      return result;
    }

    v55 = v12;
    v59 = (v56 + 32);
    v20 = v58;
    do
    {
      v21 = sub_23875EF20();
      v23 = *v22;
      v21(v62, 0);
      sub_238758690();
      v63 = v18;
      v25 = v18[2];
      v24 = v18[3];
      if (v25 >= v24 >> 1)
      {
        sub_2385FE488((v24 > 1), v25 + 1, 1);
        v20 = v58;
        v18 = v63;
      }

      v18[2] = v25 + 1;
      (*(v56 + 32))(v18 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v25, v20, v57);
      sub_23875EF10();
      --v17;
    }

    while (v17);
    (*(v55 + 8))(v14, v15);
    v8 = v52;
    result = v18;
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    result = MEMORY[0x277D84F90];
  }

  v51 = result[2];
  v26 = v43;
  if (v51)
  {
    v27 = 0;
    v49 = v56 + 16;
    v59 = (v60 + 7);
    v58 = (v46 + 16);
    v28 = (v46 + 8);
    v44 = (v56 + 32);
    v47 = MEMORY[0x277D84F90];
    v48 = (v56 + 8);
    v50 = result;
    while (v27 < result[2])
    {
      v54 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v53 = *(v56 + 72);
      (*(v56 + 16))(v8, result + v54 + v53 * v27, v57);
      sub_23875ED50();
      v55 = sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_238758590();
      if (v60[2] && (v29 = v60, sub_2384F03C0(&qword_27DF0B168, MEMORY[0x277CC6B60], MEMORY[0x277CC6B68]), v30 = sub_23875E950(), v31 = -1 << *(v29 + 32), v32 = v30 & ~v31, ((*&v59[(v32 >> 3) & 0xFFFFFFFFFFFFFF8] >> v32) & 1) != 0))
      {
        v33 = ~v31;
        v34 = *(v46 + 72);
        v35 = *(v46 + 16);
        while (1)
        {
          v35(v26, v60[6] + v34 * v32, v0);
          sub_2384F03C0(&qword_27DF0CA28, MEMORY[0x277CC6B60], MEMORY[0x277CC6B70]);
          v36 = sub_23875E9E0();
          v37 = *v28;
          (*v28)(v26, v0);
          if (v36)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
          if (((*&v59[(v32 >> 3) & 0xFFFFFFFFFFFFFF8] >> v32) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        v37(v61, v0);

        v38 = *v44;
        v8 = v52;
        (*v44)(v45, v52, v57);
        v39 = v47;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62[0] = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2385FE488(0, *(v39 + 16) + 1, 1);
          v39 = v62[0];
        }

        v42 = *(v39 + 16);
        v41 = *(v39 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_2385FE488((v41 > 1), v42 + 1, 1);
          v39 = v62[0];
        }

        *(v39 + 16) = v42 + 1;
        v47 = v39;
        v38((v39 + v54 + v42 * v53), v45, v57);
      }

      else
      {
LABEL_11:
        (*v28)(v61, v0);

        v8 = v52;
        (*v48)(v52, v57);
      }

      ++v27;
      result = v50;
      if (v27 == v51)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v47 = MEMORY[0x277D84F90];
LABEL_28:

  return v47;
}

id sub_2384EAD4C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA30, qword_23877D7B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_238757AD0();
  v31 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 paymentApplications];
  if (result)
  {
    v10 = result;
    sub_238449184(0, &qword_27DF0CA38, 0x277D37FE0);
    sub_2384F0408();
    v11 = sub_23875EE60();

    sub_2384EA1F4(v11);
    v13 = v12;

    v14 = *(v13 + 16);
    if (v14)
    {
      v27 = *MEMORY[0x277CC6B50];
      v28 = (v31 + 104);
      v15 = (v31 + 56);
      v16 = (v31 + 32);
      v17 = MEMORY[0x277D84F90];
      v26 = *MEMORY[0x277CC6B58];
      v18 = 32;
      v29 = v13;
      v30 = v8;
      while (1)
      {
        v19 = *(v13 + v18);
        if (v19 <= 5)
        {
          if (((1 << v19) & 0x2A) != 0)
          {
            v20 = v27;
LABEL_10:
            (*v28)(v4, v20, v5);
            (*v15)(v4, 0, 1, v5);
            v21 = *v16;
            (*v16)(v8, v4, v5);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_2384984B4(0, v17[2] + 1, 1, v17);
            }

            v23 = v17[2];
            v22 = v17[3];
            if (v23 >= v22 >> 1)
            {
              v17 = sub_2384984B4((v22 > 1), v23 + 1, 1, v17);
            }

            v17[2] = v23 + 1;
            v24 = v17 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v23;
            v8 = v30;
            v21(v24, v30, v5);
            v13 = v29;
            goto LABEL_5;
          }

          v20 = v26;
          if (((1 << v19) & 0x14) != 0)
          {
            goto LABEL_10;
          }
        }

        (*v15)(v4, 1, 1, v5);
        sub_238439884(v4, &qword_27DF0CA30, qword_23877D7B0);
LABEL_5:
        v18 += 8;
        if (!--v14)
        {

          goto LABEL_17;
        }
      }
    }

    v17 = MEMORY[0x277D84F90];
LABEL_17:
    v25 = sub_2384A51B0(v17);

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_2384EB0C8@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for BankConnectReviewConnectionView(0);
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = v4;
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9E0, &unk_23876B7E0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9D0, &qword_23876B7D0);
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v54 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9C0, &unk_23876B7C0);
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x28223BE20](v10);
  v49 = &v40 - v11;
  sub_23875ED50();
  v48 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v7 = sub_23875D020();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA10, &unk_23876B7F0);
  sub_2384EB7AC(a1, &v7[*(v12 + 44)]);
  v13 = &a1[*(v3 + 40)];
  v14 = *v13;
  v15 = *(v13 + 1);
  v59 = v14;
  v60 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  v16 = sub_23875E1D0();
  v41 = v3;
  v53 = a1;
  MEMORY[0x28223BE20](v16);
  v42 = sub_23843A3E8(&qword_27DF0C9E8, &qword_27DF0C9E0, &unk_23876B7E0, MEMORY[0x277CE1198]);
  v19 = sub_2384F0130(v42, v17, v18);
  sub_23875DDC0();

  sub_238439884(v7, &qword_27DF0C9E0, &unk_23876B7E0);
  v20 = v53;
  v21 = &v53[*(v41 + 44)];
  v22 = *v21;
  v23 = *(v21 + 1);
  v59 = v22;
  v60 = v23;
  sub_23875E1D0();
  v24 = v45;
  sub_2384F02F8(v20, v45, type metadata accessor for BankConnectReviewConnectionView);
  v25 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v26 = swift_allocObject();
  sub_2384F018C(v24, v26 + v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9D8, &qword_23876B7D8);
  v55 = v5;
  v56 = &type metadata for BankConnectManageConnectionView;
  v57 = v42;
  v58 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = type metadata accessor for BankConnectAuthorizationFlowView(255);
  v30 = sub_2384F03C0(&qword_27DF0C9F8, type metadata accessor for BankConnectAuthorizationFlowView, &unk_23876CA34);
  v55 = v29;
  v56 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v49;
  v33 = v47;
  v34 = v54;
  sub_23875DED0();

  v35 = (*(v46 + 8))(v34, v33);
  MEMORY[0x28223BE20](v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9C8, &unk_23877A850);
  v55 = v33;
  v56 = v27;
  v57 = OpaqueTypeConformance2;
  v58 = v31;
  swift_getOpaqueTypeConformance2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CA00, &unk_238771F80);
  v37 = sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80, MEMORY[0x277CDDB60]);
  v55 = v36;
  v56 = v37;
  swift_getOpaqueTypeConformance2();
  v38 = v51;
  sub_23875DEF0();
  (*(v50 + 8))(v32, v38);

  return result;
}

double sub_2384EB7AC@<D0>(char *a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA50, &qword_23876B878);
  MEMORY[0x28223BE20](v33);
  v38 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA58, &qword_23876B880);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  sub_23875ED50();
  v35 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_23875D760();
  MEMORY[0x28223BE20](v11);
  *(&v31 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA60, &qword_23876B888);
  v12 = MEMORY[0x277CE1198];
  sub_23843A3E8(&qword_27DF0CA68, &qword_27DF0CA60, &qword_23876B888, MEMORY[0x277CE1198]);
  v31 = v10;
  v13 = sub_23875C410();
  MEMORY[0x28223BE20](v13);
  *(&v31 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA70, &qword_23876B890);
  sub_23843A3E8(&qword_27DF0CA78, &qword_27DF0CA70, &qword_23876B890, v12);
  v14 = v6;
  sub_23875D1D0();
  LOBYTE(v12) = sub_23875D770();
  sub_23875C3D0();
  v15 = v34;
  v16 = &v6[*(v33 + 36)];
  *v16 = v12;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v21 = v31;
  v22 = v32;
  v23 = *(v32 + 16);
  v24 = v36;
  v23(v36, v31, v15);
  v25 = v38;
  sub_23843981C(v14, v38, &qword_27DF0CA50, &qword_23876B878);
  v26 = v37;
  v23(v37, v24, v15);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA80, &qword_23876B898);
  v28 = &v26[*(v27 + 48)];
  *v28 = 0;
  v28[8] = 1;
  sub_23843981C(v25, &v26[*(v27 + 64)], &qword_27DF0CA50, &qword_23876B878);
  sub_238439884(v14, &qword_27DF0CA50, &qword_23876B878);
  v29 = *(v22 + 8);
  v29(v21, v15);
  sub_238439884(v25, &qword_27DF0CA50, &qword_23876B878);
  v29(v24, v15);

  return result;
}

double sub_2384EBC04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAB0, &qword_23876B8D8);
  sub_2384EBCD4(a1, a2 + *(v4 + 44));

  return result;
}

void sub_2384EBCD4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAB8, &unk_23876B8E0);
  MEMORY[0x28223BE20](v49);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAC0, &unk_23876ED00);
  MEMORY[0x28223BE20](v48);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v48 - v11);
  sub_23875ED50();
  v50 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v13 = qword_2814F1B90;
  v14 = sub_23875EA50();
  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v17 = [v13 localizedStringForKey:v14 value:v15 table:v16];

  v18 = sub_23875EA80();
  v20 = v19;

  v21 = sub_2384EC150();
  v23 = v22;
  v24 = *(type metadata accessor for BankConnectConnectionHeaderView(0) + 24);
  v25 = sub_238757B60();
  (*(*(v25 - 8) + 16))(v12 + v24, a1, v25);
  *v12 = v18;
  v12[1] = v20;
  v12[2] = v21;
  v12[3] = v23;
  LOBYTE(v21) = sub_23875D7A0();
  sub_23875C3D0();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAC8, &qword_23876B8F0) + 36);
  *v34 = v21;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  LOBYTE(v21) = sub_23875D770();
  sub_23875C3D0();
  v35 = v12 + *(v48 + 36);
  *v35 = v21;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  *v7 = sub_23875D030();
  *(v7 + 1) = 0x4024000000000000;
  v7[16] = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAD0, &qword_23876B8F8);
  sub_2384EE268(a1, &v7[*(v40 + 44)]);
  LOBYTE(v21) = sub_23875D770();
  sub_23875C3D0();
  v41 = &v7[*(v49 + 36)];
  *v41 = v21;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  sub_23843981C(v12, v9, &qword_27DF0CAC0, &unk_23876ED00);
  sub_2384079EC(v7, v4);
  v46 = v51;
  sub_23843981C(v9, v51, &qword_27DF0CAC0, &unk_23876ED00);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAD8, &qword_23876B900);
  sub_2384079EC(v4, v46 + *(v47 + 48));
  sub_238439884(v7, &qword_27DF0CAB8, &unk_23876B8E0);
  sub_238439884(v12, &qword_27DF0CAC0, &unk_23876ED00);
  sub_238439884(v4, &qword_27DF0CAB8, &unk_23876B8E0);
  sub_238439884(v9, &qword_27DF0CAC0, &unk_23876ED00);
}

uint64_t sub_2384EC150()
{
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v1 = qword_2814F1B90;
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  sub_23875EA80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_238763B60;
  v7 = *(v0 + *(type metadata accessor for BankConnectReviewConnectionView(0) + 24));
  v8 = [v7 localizedDescription];
  v9 = sub_23875EA80();
  v11 = v10;

  v12 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v16 = sub_238448C58(v13, v14, v15);
  *(v6 + 64) = v16;
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  v17 = [v7 primaryAccountNumberSuffix];
  if (!v17)
  {
    sub_23875EA80();
    v17 = sub_23875EA50();
  }

  v18 = PKMaskedPaymentPAN();

  if (v18)
  {
    v19 = sub_23875EA80();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  *(v6 + 96) = v12;
  *(v6 + 104) = v16;
  *(v6 + 72) = v19;
  *(v6 + 80) = v21;
  v22 = sub_23875EAB0();

  return v22;
}

void sub_2384EC384(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BankConnectReviewConnectionView(0);
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

  sub_2384F02F8(a1, &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for BankConnectReviewConnectionView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2384F018C(&v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  v11[15] = 0;
  sub_23875E1A0();

  v9 = v11[16];
  v10 = v12;
  *a2 = sub_2384F0360;
  *(a2 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
}

uint64_t sub_2384EC528(uint64_t a1)
{
  v2 = sub_238758680();
  v121 = *(v2 - 8);
  v122 = v2;
  MEMORY[0x28223BE20](v2);
  v119 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v87 = &v87 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  MEMORY[0x28223BE20](v6 - 8);
  v94 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v96 = &v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  v117 = *(v10 - 8);
  v118 = v10;
  MEMORY[0x28223BE20](v10);
  v116 = &v87 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA18, &unk_23876EA80);
  v108 = *(v12 - 8);
  v109 = v12;
  MEMORY[0x28223BE20](v12);
  v107 = &v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09398, &unk_23876B810);
  v105 = *(v14 - 8);
  v106 = v14;
  MEMORY[0x28223BE20](v14);
  v104 = &v87 - v15;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  MEMORY[0x28223BE20](v103);
  v93 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v95 = &v87 - v18;
  MEMORY[0x28223BE20](v19);
  v99 = &v87 - v20;
  MEMORY[0x28223BE20](v21);
  v115 = &v87 - v22;
  v23 = sub_23875CDB0();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_23875BCB0();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_238757B60();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v32;
  v36 = *(v32 + 16);
  v111 = v35;
  v112 = v37;
  v101 = v36;
  v98 = v32 + 16;
  v36(v33);
  v38 = type metadata accessor for BankConnectReviewConnectionView(0);
  v39 = v38[5];
  v90 = v28;
  v40 = *(v28 + 16);
  v113 = v30;
  v114 = v27;
  v100 = v40;
  v40(v30, (a1 + v39), v27);
  v102 = *(a1 + v38[6]);
  v120 = sub_2384EA548();
  v41 = (a1 + v38[12]);
  v42 = *v41;
  LOBYTE(v27) = *(v41 + 8);

  if ((v27 & 1) == 0)
  {
    sub_23875EFF0();
    v43 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    (*(v24 + 8))(v26, v23);
    v42 = v123;
  }

  v44 = (a1 + v38[8]);
  v45 = v44[1];
  v97 = *v44;
  type metadata accessor for BankConnectManageConnectionViewModel(0);
  v46 = swift_allocObject();
  v47 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel__selectedAccountFQAI;
  v48 = sub_23875A9F0();
  v88 = *(v48 - 8);
  v49 = *(v88 + 56);
  v50 = v115;
  v92 = v48;
  v91 = v88 + 56;
  v110 = v49;
  (v49)(v115, 1, 1);
  sub_23843981C(v50, v99, &qword_27DF0D390, &unk_238763350);
  v51 = v104;
  sub_23875C290();
  sub_238439884(v50, &qword_27DF0D390, &unk_238763350);
  (*(v105 + 32))(v46 + v47, v51, v106);
  v52 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel__disconnectAccountError;
  v123 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA20, &qword_23876B820);
  v53 = v107;
  sub_23875C290();
  (*(v108 + 32))(v46 + v52, v53, v109);
  v54 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel__isLoading;
  LOBYTE(v123) = 0;
  v55 = v116;
  sub_23875C290();
  v117[4](v46 + v54, v55, v118);
  (v101)(v46 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_institution, v111, v112);
  v100(v46 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_previousConsentUUID, v113, v114);
  v56 = v102;
  *(v46 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_paymentPass) = v102;
  v57 = v120;
  *(v46 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_accounts) = v120;
  *(v46 + 16) = v42;
  v109 = v46;
  v58 = (v46 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_completion);
  v59 = v57;
  *v58 = v97;
  v58[1] = v45;
  v118 = v57[2];
  if (v118)
  {
    sub_23875ED50();
    v60 = v121;
    v117 = (v59 + ((*(v60 + 80) + 32) & ~*(v60 + 80)));
    v116 = (v121 + 16);
    v61 = (v121 + 8);
    v62 = v56;

    v108 = v42;

    v64 = 0;
    v65 = v122;
    v66 = v119;
    while (v64 < v59[2])
    {
      (*(v60 + 16))(v66, v117 + *(v60 + 72) * v64, v65);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v68 = sub_238758570();
      v70 = v69;
      v71 = [v62 primaryAccountIdentifier];
      v72 = sub_23875EA80();
      v74 = v73;

      if (!v70)
      {

        v60 = v121;
        v65 = v122;
        v59 = v120;
LABEL_16:
        v77 = v96;
        (*(v60 + 32))(v96, v119, v65);
        v76 = 0;
        goto LABEL_18;
      }

      if (v68 == v72 && v70 == v74)
      {

        v60 = v121;
        v65 = v122;
        v59 = v120;
      }

      else
      {
        v67 = sub_23875F630();

        v60 = v121;
        v65 = v122;
        v59 = v120;
        if ((v67 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      ++v64;
      v66 = v119;
      result = (*v61)(v119, v65);
      if (v118 == v64)
      {
        v76 = 1;
        v77 = v96;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v75 = v56;

  v76 = 1;
  v77 = v96;
  v60 = v121;
  v65 = v122;
LABEL_18:
  (*(v60 + 56))(v77, v76, 1, v65);
  v78 = v94;
  sub_23843981C(v77, v94, &qword_27DF09520, &unk_2387637E0);
  v79 = (*(v60 + 48))(v78, 1, v65);
  v80 = v95;
  v81 = v93;
  v82 = v92;
  if (v79 != 1)
  {

    sub_238758530();
    (*(v60 + 8))(v78, v65);
    v85 = v110;
    v110(v81, 0, 1, v82);
    (*(v88 + 32))(v80, v81, v82);
    v85(v80, 0, 1, v82);
LABEL_26:
    swift_getKeyPath(asc_23876B828);
    swift_getKeyPath(asc_23876B850);
    sub_23843981C(v80, v115, &qword_27DF0D390, &unk_238763350);
    v86 = v109;

    sub_23875C2E0();

    sub_238439884(v80, &qword_27DF0D390, &unk_238763350);
    sub_238439884(v77, &qword_27DF09520, &unk_2387637E0);
    (*(v90 + 8))(v113, v114);
    (*(v89 + 8))(v111, v112);
    return v86;
  }

  sub_238439884(v78, &qword_27DF09520, &unk_2387637E0);
  result = (v110)(v81, 1, 1, v82);
  if (!v118)
  {

    v84 = 1;
LABEL_24:
    v110(v80, v84, 1, v82);
    if ((*(v88 + 48))(v81, 1, v82) != 1)
    {
      sub_238439884(v81, &qword_27DF0D390, &unk_238763350);
    }

    goto LABEL_26;
  }

  if (v59[2])
  {
    v83 = v87;
    (*(v60 + 16))(v87, v59 + ((*(v60 + 80) + 32) & ~*(v60 + 80)), v65);

    sub_238758530();
    (*(v60 + 8))(v83, v65);
    v84 = 0;
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

double sub_2384ED320@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_23875BCB0();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v54);
  v52 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v45 - v7;
  v8 = sub_23875A820();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v45 - v11;
  v12 = type metadata accessor for BankConnectReviewConnectionView(0);
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for BankConnectAuthorizationFlowView(0);
  MEMORY[0x28223BE20](v53);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v51 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = sub_238757B60();
  (*(*(v19 - 8) + 16))(v16, a1, v19);
  v20 = *(a1 + *(v12 + 24));
  v21 = v14[6];
  v22 = sub_23875A9A0();
  (*(*(v22 - 8) + 56))(&v16[v21], 1, 1, v22);
  v23 = v14[7];
  (*(v57 + 16))(&v16[v23], a1 + *(v12 + 20), v58);
  v24 = *MEMORY[0x277CC8258];
  v25 = sub_23875AB40();
  (*(*(v25 - 8) + 104))(&v16[v23], v24, v25);
  *&v16[v14[5]] = v20;
  v16[v14[8]] = 0;
  sub_2384F02F8(a1, &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectReviewConnectionView);
  v26 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v27 = swift_allocObject();
  sub_2384F018C(&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  v28 = v20;
  v29 = v47;
  sub_23875A7E0();
  sub_238758CC0();
  v30 = sub_238758CB0();
  sub_238758890();
  sub_238758880();
  v31 = sub_238758870();

  type metadata accessor for BankConnectAuthorizationFlowViewModel(0);
  v32 = swift_allocObject();
  v34 = v48;
  v33 = v49;
  v35 = v46;
  (*(v48 + 16))(v46, v29, v49);
  v36 = sub_2384ABCA4(v16, 1, v35, v30, v31, sub_2384F0288, v27, v32);

  (*(v34 + 8))(v29, v33);
  v37 = v53;
  v38 = sub_23875B940();
  v39 = v50;
  (*(*(v38 - 8) + 56))(v50, 1, 1, v38);
  sub_23843981C(v39, v52, &qword_27DF0D040, &qword_2387676A0);
  sub_23875E1A0();
  sub_238439884(v39, &qword_27DF0D040, &qword_2387676A0);
  v40 = *(v37 + 24);
  type metadata accessor for AnalyticsSession();
  v41 = swift_allocObject();
  v42 = v55;
  sub_23875BCA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B530, &qword_2387637F0);
  v43 = swift_allocObject();
  *(v43 + ((*(*v43 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v57 + 32))(v43 + *(*v43 + *MEMORY[0x277D841D0] + 16), v42, v58);
  *&v18[v40] = v41;
  *(v41 + 16) = v43;
  *v18 = sub_2384AD60C;
  *(v18 + 1) = v36;
  v18[16] = 0;
  sub_2384F03C0(&qword_27DF0C9F8, type metadata accessor for BankConnectAuthorizationFlowView, &unk_23876CA34);
  sub_23875DE20();
  sub_2384F0970(v18, type metadata accessor for BankConnectAuthorizationFlowView);

  return result;
}

uint64_t sub_2384EDABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectAuthorizationFlowResult(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2384F02F8(a1, v6, type metadata accessor for BankConnectAuthorizationFlowResult);
  v7 = type metadata accessor for BankConnectAuthorizationError(0);
  v8 = (*(*(v7 - 8) + 48))(v6, 2, v7);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = type metadata accessor for BankConnectReviewConnectionView(0);
      (*(a2 + *(v9 + 32)))(1);
    }
  }

  else
  {
    sub_2384F0970(v6, type metadata accessor for BankConnectAuthorizationFlowResult);
  }

  v10 = (a2 + *(type metadata accessor for BankConnectReviewConnectionView(0) + 44));
  v11 = *v10;
  v12 = *(v10 + 1);
  v14[16] = v11;
  v15 = v12;
  v14[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  return sub_23875E1C0();
}

double sub_2384EDC24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[1] = a2;
  v3 = sub_23875D2A0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA00, &unk_238771F80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_23875D270();
  MEMORY[0x28223BE20](v8);
  v11[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
  sub_23875C990();
  v9 = sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80, MEMORY[0x277CDDB60]);
  MEMORY[0x23EE61E80](v7, v4, v9);
  (*(v5 + 8))(v7, v4);

  return result;
}

uint64_t sub_2384EDE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for BankConnectReviewConnectionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
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

  sub_2384F02F8(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectReviewConnectionView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v16 = sub_2384F018C(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v19[0] = v11;
  v19[1] = v13;
  MEMORY[0x28223BE20](v16);
  v18[-4] = v19;
  v18[-3] = 0x6B72616D78;
  v18[-2] = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23875E200();
}

double sub_2384EE1B0(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for BankConnectReviewConnectionView(0);
  (*(a1 + *(v2 + 32)))(0);

  return result;
}

void sub_2384EE268(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v62 = a1;
  v66 = type metadata accessor for ContinuousGroupBoxStyle(0);
  MEMORY[0x28223BE20](v66);
  v4 = &v56[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAE0, &qword_23876B908);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v56[-v5];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAE8, &qword_23876B910);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v67 = &v56[-v8];
  sub_23875ED50();
  v69 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v9 = qword_2814F1B90;
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

  v14 = sub_23875EA80();
  v16 = v15;

  v78 = v14;
  v79 = v16;
  sub_2384397A8(v17, v18, v19);
  v20 = sub_23875DAA0();
  v22 = v21;
  LOBYTE(v16) = v23;
  sub_23875D890();
  v24 = sub_23875D9E0();
  v26 = v25;
  v28 = v27;
  sub_2384397FC(v20, v22, v16 & 1);

  LODWORD(v78) = sub_23875D440();
  v29 = sub_23875DA20();
  v58 = v29;
  v60 = v30;
  LOBYTE(v20) = v31;
  v61 = v32;
  sub_2384397FC(v24, v26, v28 & 1);

  v59 = sub_23875D770();
  v33 = sub_23875C3D0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  LOBYTE(v78) = v20 & 1;
  v57 = v20 & 1;
  LOBYTE(v74) = 0;
  MEMORY[0x28223BE20](v33);
  *&v56[-16] = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAF0, &qword_23876B918);
  sub_2384F082C();
  v42 = v63;
  sub_23875E470();
  *v4 = swift_getKeyPath(a0_0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *(v4 + *(v66 + 20)) = 0x403A000000000000;
  sub_23843A3E8(&qword_27DF0CB10, &qword_27DF0CAE0, &qword_23876B908, MEMORY[0x277CDF118]);
  sub_2384F03C0(&qword_27DF094E8, type metadata accessor for ContinuousGroupBoxStyle, &protocol conformance descriptor for ContinuousGroupBoxStyle);
  v43 = v67;
  v44 = v65;
  sub_23875DC00();
  sub_2384F0970(v4, type metadata accessor for ContinuousGroupBoxStyle);
  (*(v64 + 8))(v42, v44);
  v45 = v70;
  v46 = *(v70 + 16);
  v47 = v68;
  v48 = v71;
  v46(v68, v43, v71);
  *&v74 = v29;
  v49 = v60;
  *(&v74 + 1) = v60;
  LOBYTE(v75) = v20 & 1;
  *(&v75 + 1) = *v73;
  DWORD1(v75) = *&v73[3];
  v50 = v61;
  *(&v75 + 1) = v61;
  LOBYTE(v16) = v59;
  LOBYTE(v76) = v59;
  *(&v76 + 1) = *v72;
  DWORD1(v76) = *&v72[3];
  *(&v76 + 1) = v35;
  *v77 = v37;
  *&v77[8] = v39;
  *&v77[16] = v41;
  v77[24] = 0;
  v51 = v74;
  v52 = v75;
  *(a2 + 57) = *&v77[9];
  v53 = *v77;
  a2[2] = v76;
  a2[3] = v53;
  *a2 = v51;
  a2[1] = v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB18, &unk_23876B968);
  v46(a2 + *(v54 + 48), v47, v48);
  sub_23843981C(&v74, &v78, &qword_27DF0BAE8, &unk_23876A630);
  v55 = *(v45 + 8);
  v55(v43, v48);
  v55(v47, v48);
  v78 = v58;
  v79 = v49;
  v80 = v57;
  *v81 = *v73;
  *&v81[3] = *&v73[3];
  v82 = v50;
  v83 = v16;
  *v84 = *v72;
  *&v84[3] = *&v72[3];
  v85 = v35;
  v86 = v37;
  v87 = v39;
  v88 = v41;
  v89 = 0;
  sub_238439884(&v78, &qword_27DF0BAE8, &unk_23876A630);
}

double sub_2384EEA24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875CE60();
  v37 = 1;
  sub_2384EEC4C(a1, &v29);
  v42 = v33;
  v43 = v34;
  v44 = v35;
  v38 = v29;
  v39 = v30;
  v40 = v31;
  v41 = v32;
  v45[0] = v29;
  v45[1] = v30;
  v45[2] = v31;
  v45[3] = v32;
  v45[4] = v33;
  v45[5] = v34;
  v46 = v35;
  sub_23843981C(&v38, &v28, &qword_27DF0B9F0, &qword_23877EEF0);
  sub_238439884(v45, &qword_27DF0B9F0, &qword_23877EEF0);
  *&v36[55] = v41;
  *&v36[71] = v42;
  *&v36[87] = v43;
  *&v36[7] = v38;
  *&v36[23] = v39;
  v36[103] = v44;
  *&v36[39] = v40;
  v5 = v37;
  v6 = sub_23875D7D0();
  sub_23875C3D0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  LOBYTE(v29) = 0;
  v15 = sub_23875D770();
  sub_23875C3D0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = *&v36[32];
  *(a2 + 65) = *&v36[48];
  v25 = *&v36[80];
  *(a2 + 81) = *&v36[64];
  *(a2 + 97) = v25;
  result = *v36;
  v27 = *&v36[16];
  *(a2 + 17) = *v36;
  *(a2 + 33) = v27;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 113) = *&v36[96];
  *(a2 + 49) = v24;
  *(a2 + 128) = v6;
  *(a2 + 136) = v8;
  *(a2 + 144) = v10;
  *(a2 + 152) = v12;
  *(a2 + 160) = v14;
  *(a2 + 168) = 0;
  *(a2 + 176) = v15;
  *(a2 + 184) = v17;
  *(a2 + 192) = v19;
  *(a2 + 200) = v21;
  *(a2 + 208) = v23;
  *(a2 + 216) = 0;
  return result;
}

double sub_2384EEC4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875D030();
  LOBYTE(v20[0]) = 1;
  sub_2384EEDFC(a1, v16);
  *&v15[55] = v17;
  *&v15[39] = v16[2];
  *&v15[23] = v16[1];
  *&v15[7] = v16[0];
  v5 = v20[0];
  v18[0] = v4;
  v18[1] = 0;
  v19[0] = v20[0];
  v6 = *v15;
  *&v19[1] = *v15;
  *&v19[64] = *(&v17 + 1);
  v7 = *&v15[48];
  *&v19[49] = *&v15[48];
  v8 = *&v15[32];
  *&v19[33] = *&v15[32];
  v9 = *&v15[16];
  *&v19[17] = *&v15[16];
  v10 = *v19;
  *a2 = v4;
  *(a2 + 16) = v10;
  v11 = *&v19[16];
  v12 = *&v19[48];
  *(a2 + 48) = *&v19[32];
  *(a2 + 64) = v12;
  *(a2 + 32) = v11;
  v22 = v6;
  v14[88] = 1;
  *(a2 + 80) = *&v19[64];
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v20[0] = v4;
  v20[1] = 0;
  v21 = v5;
  *&v25[15] = *&v15[63];
  *v25 = v7;
  v24 = v8;
  v23 = v9;
  sub_23843981C(v18, v14, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v20, &qword_27DF0BA70, &unk_238769590);

  return result;
}

uint64_t sub_2384EEDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v48[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v48[-v8];
  sub_23875ED50();
  v53 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_2384EA548();
  MEMORY[0x28223BE20](v10);
  *&v48[-16] = a1;
  sub_23854D240(sub_2384F09D0, v10, v9);

  sub_23843981C(v9, v6, &qword_27DF09520, &unk_2387637E0);
  v11 = sub_238758680();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_238439884(v6, &qword_27DF09520, &unk_2387637E0);
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    v13 = sub_2387585B0();
    v14 = v15;
    (*(v12 + 8))(v6, v11);
  }

  v16 = sub_238439884(v9, &qword_27DF09520, &unk_2387637E0);
  v56 = v13;
  v57 = v14;
  sub_2384397A8(v16, v17, v18);
  v19 = sub_23875DAA0();
  v50 = v20;
  v51 = v19;
  v49 = v21;
  v52 = v22;
  v23 = [*(a1 + *(type metadata accessor for BankConnectReviewConnectionView(0) + 24)) primaryAccountNumberSuffix];
  if (!v23)
  {
    sub_23875EA80();
    v23 = sub_23875EA50();
  }

  v24 = PKMaskedPaymentPAN();

  if (v24)
  {
    v25 = sub_23875EA80();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  v56 = v25;
  v57 = v27;
  v28 = sub_23875DAA0();
  v30 = v29;
  v32 = v31;
  sub_23875D7F0();
  v33 = sub_23875DA60();
  v35 = v34;
  v37 = v36;

  sub_2384397FC(v28, v30, v32 & 1);

  LODWORD(v56) = sub_23875D440();
  v38 = sub_23875DA20();
  v40 = v39;
  LOBYTE(v30) = v41;
  v43 = v42;
  sub_2384397FC(v33, v35, v37 & 1);

  v44 = v49 & 1;
  v54 = v49 & 1;
  LOBYTE(v56) = v49 & 1;
  v55 = v30 & 1;
  v46 = v50;
  v45 = v51;
  *a2 = v51;
  *(a2 + 8) = v46;
  *(a2 + 16) = v44;
  *(a2 + 24) = v52;
  *(a2 + 32) = v38;
  *(a2 + 40) = v40;
  *(a2 + 48) = v30 & 1;
  *(a2 + 56) = v43;
  sub_23843980C(v45, v46, v44);

  sub_23843980C(v38, v40, v30 & 1);

  sub_2384397FC(v38, v40, v30 & 1);

  sub_2384397FC(v45, v46, v54);
}

uint64_t sub_2384EF268(uint64_t a1, uint64_t a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_238758570();
  v5 = v4;
  v6 = [*(a2 + *(type metadata accessor for BankConnectReviewConnectionView(0) + 24)) primaryAccountIdentifier];
  v7 = sub_23875EA80();
  v9 = v8;

  if (v5)
  {
    if (v3 == v7 && v5 == v9)
    {

      v11 = 1;
    }

    else
    {
      v11 = sub_23875F630();
    }
  }

  else
  {

    v11 = 0;
  }

  return v11 & 1;
}

double sub_2384EF3C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA88, &qword_23876B8A0);
  sub_2384EF494(a1, a2 + *(v4 + 44));

  return result;
}

double sub_2384EF494@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA90, &unk_23876B8A8);
  MEMORY[0x28223BE20](v61);
  v62 = &v55[-v3];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09580, &qword_238763900);
  MEMORY[0x28223BE20](v60);
  v57 = &v55[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA98, &qword_23876B8B8);
  MEMORY[0x28223BE20](v5 - 8);
  v64 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v63 = &v55[-v8];
  v9 = type metadata accessor for BankConnectReviewConnectionView(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v67 = v11;
  v68 = &v55[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  MEMORY[0x28223BE20](v12);
  v59 = &v55[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v69 = &v55[-v15];
  sub_23875ED50();
  v58 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v66 = a1;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v16 = qword_2814F1B90;
  v17 = sub_23875EA50();
  v18 = sub_23875EA50();
  v19 = sub_23875EA50();
  v20 = v16;
  v21 = [v16 localizedStringForKey:v17 value:v18 table:v19];

  v22 = sub_23875EA80();
  v24 = v23;

  v25 = v66;
  v26 = v68;
  sub_2384F02F8(v66, v68, type metadata accessor for BankConnectReviewConnectionView);
  v27 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v28 = swift_allocObject();
  sub_2384F018C(v26, v28 + v27);
  v29 = v69;
  sub_23875D610();
  *v29 = v22;
  v29[1] = v24;
  *(v29 + *(v12 + 40)) = 0;
  v30 = (v29 + *(v12 + 44));
  *v30 = sub_2384F0480;
  v30[1] = v28;
  v31 = v25;
  v32 = sub_2384EA548()[2];

  if (v32 < 2)
  {
    v37 = sub_2384EFC20();
    v39 = v41;
    v56 = 1;
    v40 = sub_2384F04F0;
  }

  else
  {
    v33 = sub_23875EA50();
    v34 = sub_23875EA50();
    v35 = sub_23875EA50();
    v36 = [v20 localizedStringForKey:v33 value:v34 table:v35];

    v31 = v66;
    v37 = sub_23875EA80();
    v39 = v38;

    v56 = 0;
    v40 = sub_2384F0798;
  }

  v42 = v60;
  v43 = v57;
  sub_23875CFC0();
  v44 = v31;
  v45 = v68;
  sub_2384F02F8(v44, v68, type metadata accessor for BankConnectReviewConnectionView);
  v46 = swift_allocObject();
  sub_2384F018C(v45, v46 + v27);
  *v43 = v37;
  v43[1] = v39;
  *(v43 + *(v42 + 40)) = 0;
  v47 = (v43 + *(v42 + 44));
  *v47 = v40;
  v47[1] = v46;
  sub_23843981C(v43, v62, &qword_27DF09580, &qword_238763900);
  swift_storeEnumTagMultiPayload();
  sub_23843A3E8(&qword_27DF0CAA0, &qword_27DF09580, &qword_238763900, &unk_23877E960);
  v48 = v63;
  sub_23875D1B0();
  sub_238439884(v43, &qword_27DF09580, &qword_238763900);
  v49 = v69;
  v50 = v59;
  sub_23843981C(v69, v59, &qword_27DF0AAD8, &qword_23876B8C0);
  v51 = v64;
  sub_23843981C(v48, v64, &qword_27DF0CA98, &qword_23876B8B8);
  v52 = v65;
  sub_23843981C(v50, v65, &qword_27DF0AAD8, &qword_23876B8C0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAA8, &unk_23876B8C8);
  sub_23843981C(v51, v52 + *(v53 + 48), &qword_27DF0CA98, &qword_23876B8B8);
  sub_238439884(v48, &qword_27DF0CA98, &qword_23876B8B8);
  sub_238439884(v49, &qword_27DF0AAD8, &qword_23876B8C0);
  sub_238439884(v51, &qword_27DF0CA98, &qword_23876B8B8);
  sub_238439884(v50, &qword_27DF0AAD8, &qword_23876B8C0);

  return result;
}

uint64_t sub_2384EFBAC(uint64_t a1)
{
  type metadata accessor for BankConnectReviewConnectionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  return sub_23875E1C0();
}

uint64_t sub_2384EFC20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2387632F0;
  v1 = sub_238757B50();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_238448C58(v1, v2, v4);
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  sub_23875EA80();
  v10 = sub_23875EAA0();

  return v10;
}

uint64_t sub_2384EFDA4(uint64_t a1)
{
  type metadata accessor for BankConnectReviewConnectionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  return sub_23875E1C0();
}

uint64_t sub_2384EFE18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9B0, &qword_23876B7B0);
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C980, &qword_23876B738);
  sub_23875E1D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9B8, &qword_23876B7B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C9C0, &unk_23876B7C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C9C8, &unk_23877A850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C9D0, &qword_23876B7D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C9D8, &qword_23876B7D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C9E0, &unk_23876B7E0);
  v1 = sub_23843A3E8(&qword_27DF0C9E8, &qword_27DF0C9E0, &unk_23876B7E0, MEMORY[0x277CE1198]);
  sub_2384F0130(v1, v2, v3);
  swift_getOpaqueTypeConformance2();
  type metadata accessor for BankConnectAuthorizationFlowView(255);
  sub_2384F03C0(&qword_27DF0C9F8, type metadata accessor for BankConnectAuthorizationFlowView, &unk_23876CA34);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CA00, &unk_238771F80);
  sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80, MEMORY[0x277CDDB60]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_23875C8D0();
}

unint64_t sub_2384F0130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0C9F0;
  if (!qword_27DF0C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C9F0);
  }

  return result;
}

uint64_t sub_2384F018C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectReviewConnectionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2384F01F0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankConnectReviewConnectionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2384ED320(v4, a1);
}

uint64_t sub_2384F0288(uint64_t a1)
{
  v3 = *(type metadata accessor for BankConnectReviewConnectionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2384EDABC(a1, v4);
}

uint64_t sub_2384F02F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384F0360()
{
  v1 = *(type metadata accessor for BankConnectReviewConnectionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2384EC528(v2);
}

uint64_t sub_2384F03C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2384F0408()
{
  result = qword_27DF0CA40;
  if (!qword_27DF0CA40)
  {
    sub_238449184(255, &qword_27DF0CA38, 0x277D37FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CA40);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = type metadata accessor for BankConnectReviewConnectionView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_238757B60();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  v8 = sub_23875BCB0();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  v9 = v1[7];
  v10 = sub_238758680();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v5 + v1[9];
  v13 = sub_23875C780();
  (*(*(v13 - 8) + 8))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C980, &qword_23876B738);

  v14 = v1[13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v15 - 8) + 8))(v5 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384F07B0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for BankConnectReviewConnectionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2384F082C()
{
  result = qword_27DF0CAF8;
  if (!qword_27DF0CAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CAF0, &qword_23876B918);
    sub_2384F08B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CAF8);
  }

  return result;
}

unint64_t sub_2384F08B8()
{
  result = qword_27DF0CB00;
  if (!qword_27DF0CB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CB08, &unk_23876B920);
    sub_23843A3E8(&qword_27DF0BA20, &qword_27DF0BA28, &qword_238768E68, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CB00);
  }

  return result;
}

uint64_t sub_2384F0970(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BankConnectAppAuthorizationViewModel.__allocating_init(completionHandler:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t BankConnectAppAuthorizationViewModel.init(completionHandler:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t BankConnectAppAuthorizationViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2384F0A94@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BankConnectAppAuthorizationViewModel();
  result = sub_23875C260();
  *a2 = result;
  return result;
}

uint64_t BankConnectAppAuthorizationView.init(viewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_238447830;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t BankConnectAppAuthorizationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_23875CE20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v26[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C360, &qword_23876B980);
  MEMORY[0x28223BE20](v9);
  v11 = &v26[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB30, &qword_23876B988);
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v26[-v13];
  v15 = *v1;
  v28 = v1[1];
  v29 = v15;
  v27 = *(v1 + 16);
  *v11 = sub_23875E4A0();
  v11[1] = v16;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C338, &unk_23876B990) + 44);
  sub_23875C530();
  sub_23875CE10();
  (*(v3 + 16))(v5, v8, v2);
  sub_2384F1E54(&unk_27DF0C340, 255, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
  v18 = sub_23875C5E0();
  (*(v3 + 8))(v8, v2);

  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E80, &unk_23876A2C0) + 36)] = v18;
  v19 = sub_23843A3E8(&qword_27DF0C358, &qword_27DF0C360, &qword_23876B980, MEMORY[0x277CE11A8]);
  sub_23875DE40();
  v20 = sub_238439884(v11, &qword_27DF0C360, &qword_23876B980);
  MEMORY[0x28223BE20](v20);
  v21 = v28;
  *&v26[-32] = v29;
  *&v26[-24] = v21;
  v26[-16] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB38, &qword_23876B9A0);
  v33 = v9;
  v34 = v19;
  swift_getOpaqueTypeConformance2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CB40, &qword_23876B9A8);
  v23 = sub_23843A3E8(&qword_27DF0CB48, &qword_27DF0CB40, &qword_23876B9A8, MEMORY[0x277CDDB60]);
  v33 = v22;
  v34 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v31;
  sub_23875DEF0();
  return (*(v30 + 8))(v14, v24);
}

double sub_2384F0F78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v15[1] = a4;
  v7 = sub_23875D2A0();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB40, &qword_23876B9A8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_23875D250();
  MEMORY[0x28223BE20](v12);
  v15[-4] = a1;
  v15[-3] = a2;
  LOBYTE(v15[-2]) = a3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB50, &qword_23876BB20);
  sub_23843A3E8(&qword_27DF0CB58, &qword_27DF0CB50, &qword_23876BB20, MEMORY[0x277CDF028]);
  sub_23875C990();
  v13 = sub_23843A3E8(&qword_27DF0CB48, &qword_27DF0CB40, &qword_23876B9A8, MEMORY[0x277CDDB60]);
  MEMORY[0x23EE61E80](v11, v8, v13);
  (*(v9 + 8))(v11, v8);

  return result;
}

double sub_2384F1224(uint64_t a1, uint64_t a2, char a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BankConnectAppAuthorizationViewModel();
  sub_2384F1E54(&qword_27DF0CB60, v3, type metadata accessor for BankConnectAppAuthorizationViewModel, &protocol conformance descriptor for BankConnectAppAuthorizationViewModel);
  sub_23875C490();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB68, &qword_23876BB28);
  sub_2384F1CD8();
  sub_23875E200();

  return result;
}

uint64_t sub_2384F1388(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D360, &unk_23876BB40);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  v5 = *(a1 + 16);
  swift_storeEnumTagMultiPayload();
  v5(v4);
  return sub_238439884(v4, &unk_27DF0D360, &unk_23876BB40);
}

uint64_t sub_2384F1444@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_23875CE80();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  sub_23875ED50();
  v22 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v9 = qword_2814F1B90;
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

  v14 = sub_23875EA80();
  v16 = v15;

  v24 = v14;
  v25 = v16;
  sub_2384397A8(v17, v18, v19);
  sub_23875E190();
  sub_23875CE70();
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_2384F1E54(&qword_27DF0B740, 255, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v20 = v23;
  sub_23875DB00();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  LODWORD(v13) = sub_23875D440();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB68, &qword_23876BB28);
  *(v20 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_2384F17CC@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_23875CE20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v26[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C360, &qword_23876B980);
  MEMORY[0x28223BE20](v9);
  v11 = &v26[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB30, &qword_23876B988);
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v26[-v13];
  v15 = *v1;
  v28 = v1[1];
  v29 = v15;
  v27 = *(v1 + 16);
  *v11 = sub_23875E4A0();
  v11[1] = v16;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C338, &unk_23876B990) + 44);
  sub_23875C530();
  sub_23875CE10();
  (*(v3 + 16))(v5, v8, v2);
  sub_2384F1E54(&unk_27DF0C340, 255, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
  v18 = sub_23875C5E0();
  (*(v3 + 8))(v8, v2);

  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E80, &unk_23876A2C0) + 36)] = v18;
  v19 = sub_23843A3E8(&qword_27DF0C358, &qword_27DF0C360, &qword_23876B980, MEMORY[0x277CE11A8]);
  sub_23875DE40();
  v20 = sub_238439884(v11, &qword_27DF0C360, &qword_23876B980);
  MEMORY[0x28223BE20](v20);
  v21 = v28;
  *&v26[-32] = v29;
  *&v26[-24] = v21;
  v26[-16] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB38, &qword_23876B9A0);
  v33 = v9;
  v34 = v19;
  swift_getOpaqueTypeConformance2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CB40, &qword_23876B9A8);
  v23 = sub_23843A3E8(&qword_27DF0CB48, &qword_27DF0CB40, &qword_23876B9A8, MEMORY[0x277CDDB60]);
  v33 = v22;
  v34 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v31;
  sub_23875DEF0();
  return (*(v30 + 8))(v14, v24);
}

unint64_t sub_2384F1CD8()
{
  result = qword_27DF0CB70;
  if (!qword_27DF0CB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CB68, &qword_23876BB28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A2F0, &unk_23876BB30);
    sub_23875CE80();
    sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
    sub_2384F1E54(&qword_27DF0B740, 255, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CB70);
  }

  return result;
}

uint64_t sub_2384F1E54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2384F1EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0CB78;
  if (!qword_27DF0CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CB78);
  }

  return result;
}

uint64_t sub_2384F1F08()
{
  v0 = sub_23875B940();
  __swift_allocate_value_buffer(v0, qword_27DF2F708);
  v1 = __swift_project_value_buffer(v0, qword_27DF2F708);
  return sub_2384F1F54(v1);
}

uint64_t sub_2384F1F54@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = sub_23875C1E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875A820();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875A7E0();
  v15 = sub_23875A810();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  if (v17)
  {
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      sub_23875C120();

      v19 = sub_23875C1B0();
      v20 = sub_23875EFE0();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v29 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_2384615AC(v15, v17, &v29);
        _os_log_impl(&dword_2383F8000, v19, v20, "Bank Connect authorization redirect url is overridden with: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x23EE64DF0](v22, -1, -1);
        MEMORY[0x23EE64DF0](v21, -1, -1);
      }

      (*(v8 + 8))(v10, v7);
      sub_23875B910();
      v23 = sub_23875B940();
      v24 = *(v23 - 8);
      result = (*(v24 + 48))(v6, 1, v23);
      if (result != 1)
      {

        return (*(v24 + 32))(v28, v6, v23);
      }

      goto LABEL_13;
    }
  }

  sub_23875B910();
  v26 = sub_23875B940();
  v27 = *(v26 - 8);
  result = (*(v27 + 48))(v3, 1, v26);
  if (result == 1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  return (*(v27 + 32))(v28, v3, v26);
}

uint64_t sub_2384F2370(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23875B940();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v48 = a1;
  v13 = sub_23875B8D0();
  v15 = v14;
  v16 = *(v5 + 16);
  v49 = v2;
  v46 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectWebAuthRedirectURLMatcher_redirectUrl;
  v47 = v16;
  v16(v12, v2 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectWebAuthRedirectURLMatcher_redirectUrl, v4);
  v17 = sub_23875B8D0();
  v19 = v18;
  v20 = *(v5 + 8);
  v20(v12, v4);
  if (!v15)
  {
    if (!v19)
    {
      goto LABEL_12;
    }

LABEL_10:

    return 0;
  }

  if (!v19)
  {
    goto LABEL_10;
  }

  if (v13 == v17 && v15 == v19)
  {
  }

  else
  {
    v22 = sub_23875F630();

    result = 0;
    if ((v22 & 1) == 0)
    {
      return result;
    }
  }

LABEL_12:
  v24 = sub_23875B900();
  v26 = v25;
  v47(v9, v49 + v46, v4);
  v27 = sub_23875B900();
  v29 = v28;
  v20(v9, v4);
  if (v26)
  {
    if (v29)
    {
      if (v24 == v27 && v26 == v29)
      {
      }

      else
      {
        v31 = sub_23875F630();

        if ((v31 & 1) == 0)
        {
          return 1;
        }
      }

      goto LABEL_23;
    }

LABEL_21:

    return 1;
  }

  if (v29)
  {
    goto LABEL_21;
  }

LABEL_23:
  v52 = sub_23875B8E0();
  v53 = v32;
  v33 = v45;
  v47(v45, v49 + v46, v4);
  v34 = sub_23875B8E0();
  v36 = v35;
  v37 = (v20)(v33, v4);
  v50 = v34;
  v51 = v36;
  v40 = sub_2384688CC(v37, v38, v39);
  sub_238468920(v40, v41, v42);
  v43 = sub_23875E970();

  if (v43)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2384F26D8()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectWebAuthRedirectURLMatcher_redirectUrl;
  v2 = sub_23875B940();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BankConnectWebAuthRedirectURLMatcher(uint64_t a1)
{
  result = qword_27DF0CB88;
  if (!qword_27DF0CB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2384F27C8(uint64_t a1)
{
  result = sub_23875B940();
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

void sub_2384F2858(void *a1, uint64_t (*a2)(double))
{
  v4 = sub_23875C1E0();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = a2(v5);
  if (v6 >> 60 != 15)
  {
    v8 = v6;
    v9 = PKMerchantCategoryToString();
    if (v9)
    {
      v10 = v9;
      v11 = [a1 stylingForWalletCategory_];

      if (v11)
      {
        sub_238449184(0, &qword_27DF0CBA8, 0x277CCAAC8);
        sub_238449184(0, &qword_27DF0CBB0, 0x277CD4F80);
        v12 = sub_23875F060();
        if (v12)
        {
          v13 = v12;
          v14 = sub_23875F1B0();
          sub_23844C940(v7, v8);

          if (v14)
          {
          }
        }

        else
        {
          sub_23844C940(v7, v8);
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t MapsTransactionIconGenerator.__allocating_init(configuration:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = [objc_opt_self() sessionWithConfiguration_];

  *(v2 + 16) = v3;
  return v2;
}

uint64_t MapsTransactionIconGenerator.init(configuration:)(void *a1)
{
  v3 = [objc_opt_self() sessionWithConfiguration_];

  *(v1 + 16) = v3;
  return v1;
}

uint64_t MapsTransactionIconGenerator.generateIcon(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_23875C1E0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB98, &qword_23876BC58);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A968, &unk_2387662B0);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v3[11] = swift_task_alloc();
  v5 = sub_23875B940();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2384F2E08, 0, 0);
}

uint64_t sub_2384F2E08()
{
  v1 = v0[10];
  sub_2387597B0();
  v2 = sub_23875B3A0();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  if (v4 == 1)
  {
    sub_238439884(v0[10], &qword_27DF0A968, &unk_2387662B0);
    (*(v6 + 56))(v8, 1, 1, v5);
LABEL_4:
    sub_238439884(v0[11], &qword_27DF0D040, &qword_2387676A0);
    sub_23875C120();
    v9 = sub_23875C1B0();
    v10 = sub_23875EFC0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2383F8000, v9, v10, "No logo URL available, falling back to Maps category", v11, 2u);
      MEMORY[0x23EE64DF0](v11, -1, -1);
    }

    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    v16 = v0[2];
    v15 = v0[3];

    (*(v13 + 8))(v12, v14);
    sub_2384F366C(v15, v16);

    v17 = v0[1];

    return v17();
  }

  sub_23875B390();
  (*(v3 + 8))(v7, v2);
  if ((*(v6 + 48))(v8, 1, v5) == 1)
  {
    goto LABEL_4;
  }

  (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  v19[1] = sub_2384F3100;
  v20 = v0[14];
  v21 = v0[9];

  return sub_2384F3A38(v21, v20);
}

uint64_t sub_2384F3100()
{

  if (v0)
  {

    v1 = sub_2384F3490;
  }

  else
  {
    v1 = sub_2384F3218;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2384F3218()
{
  v1 = v0[9];
  v2 = sub_238757CF0();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_238439884(v1, &qword_27DF0CB98, &qword_23876BC58);
    sub_23875C120();
    v4 = sub_23875C1B0();
    v5 = sub_23875EFC0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2383F8000, v4, v5, "Failed to download icon, falling back to Maps category", v6, 2u);
      MEMORY[0x23EE64DF0](v6, -1, -1);
    }

    v7 = v0[13];
    v17 = v0[14];
    v8 = v0[12];
    v9 = v0[8];
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[3];
    v13 = v0[2];

    (*(v10 + 8))(v9, v11);
    sub_2384F366C(v12, v13);
    (*(v7 + 8))(v17, v8);
  }

  else
  {
    v14 = v0[2];
    (*(v0[13] + 8))(v0[14], v0[12]);
    (*(v3 + 32))(v14, v1, v2);
    (*(v3 + 56))(v14, 0, 1, v2);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_2384F3490()
{
  v1 = v0[9];
  v2 = sub_238757CF0();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_238439884(v0[9], &qword_27DF0CB98, &qword_23876BC58);
  sub_23875C120();
  v3 = sub_23875C1B0();
  v4 = sub_23875EFC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to download icon, falling back to Maps category", v5, 2u);
    MEMORY[0x23EE64DF0](v5, -1, -1);
  }

  v6 = v0[13];
  v15 = v0[14];
  v7 = v0[12];
  v8 = v0[8];
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  v12 = v0[2];

  (*(v9 + 8))(v8, v10);
  sub_2384F366C(v11, v12);
  (*(v6 + 8))(v15, v7);

  v13 = v0[1];

  return v13();
}

void sub_2384F366C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_238757CE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2384F4168();
  v9 = v8;
  v10 = sub_2387588A0();
  v11 = [objc_opt_self() sharedService];
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = v11;
  sub_2384F4580(a1);
  v13 = PKMerchantCategoryToString();
  if (!v13)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = v13;
  v15 = [v12 stylingForWalletCategory_];

  if (!v15)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v16 = v10;

  v17 = [v15 tintColorForScale_];
  v18 = [v9 imageForSize:4 scale:1 transparent:v16];
  if (v18)
  {
    v19 = v18;
    v20 = UIImagePNGRepresentation(v18);
    if (v20)
    {
      v21 = v20;
      v22 = sub_23875B990();
      v34 = v23;
      v35 = v22;

      [(UIImage *)v19 size];
      v25 = v24 * v16;
      if (COERCE__INT64(fabs(v24 * v16)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v25 > -2147483650.0)
      {
        if (v25 < 2147483650.0)
        {
          [(UIImage *)v19 size];
          v27 = v26 * v16;
          if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v27 > -2147483650.0)
            {
              if (v27 < 2147483650.0)
              {
                v33 = v9;
                if (v17)
                {
                  v28 = [v17 CGColor];
                }

                (*(v5 + 104))(v7, *MEMORY[0x277CC6BD0], v4);
                sub_238757CD0();

                v31 = sub_238757CF0();
                (*(*(v31 - 8) + 56))(a2, 0, 1, v31);
                return;
              }

              goto LABEL_24;
            }

LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  v29 = sub_238757CF0();
  v30 = *(*(v29 - 8) + 56);

  v30(a2, 1, 1, v29);
}

uint64_t sub_2384F3A38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_238757CE0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_23875C1E0();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2384F3B64, 0, 0);
}

uint64_t sub_2384F3B64()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_2384F3C08;
  v2 = *(v0 + 24);

  return MEMORY[0x28211ED00](v2, 0);
}

uint64_t sub_2384F3C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[13] = a1;
  v5[14] = a2;
  v5[15] = a3;

  if (v3)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2384F3D68, 0, 0);
  }
}

int64_t sub_2384F3D68()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 120);
    v4 = [v2 statusCode];
    v5 = *(v0 + 120);
    if (v4 != 200)
    {
      sub_23875C120();
      v13 = v5;
      v14 = sub_23875C1B0();
      v15 = sub_23875EFE0();
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 112);
      v18 = *(v0 + 120);
      v19 = *(v0 + 104);
      if (v16)
      {
        v20 = swift_slowAlloc();
        *v20 = 134217984;
        *(v20 + 4) = [v2 statusCode];

        _os_log_impl(&dword_2383F8000, v14, v15, "Couldn't download icon: status %ld", v20, 0xCu);
        MEMORY[0x23EE64DF0](v20, -1, -1);
        sub_23844C954(v19, v17);

        v21 = *(v0 + 120);
      }

      else
      {

        sub_23844C954(v19, v17);
        v21 = v14;
        v14 = *(v0 + 120);
      }

      v22 = *(v0 + 88);
      v23 = *(v0 + 64);
      v24 = *(v0 + 72);

      (*(v24 + 8))(v22, v23);
      goto LABEL_21;
    }
  }

  v6 = sub_23875B980();
  v7 = CGDataProviderCreateWithCFData(v6);

  if (!v7)
  {
LABEL_17:
    sub_23875C120();
    v25 = sub_23875C1B0();
    v26 = sub_23875EFE0();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 112);
    v29 = *(v0 + 120);
    v30 = *(v0 + 104);
    if (v27)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2383F8000, v25, v26, "Could not create CGImage from image data", v31, 2u);
      MEMORY[0x23EE64DF0](v31, -1, -1);
      sub_23844C954(v30, v28);
    }

    else
    {

      sub_23844C954(v30, v28);
    }

    v33 = *(v0 + 72);
    v32 = *(v0 + 80);
    v34 = *(v0 + 64);

    (*(v33 + 8))(v32, v34);
LABEL_21:
    v12 = 1;
    goto LABEL_22;
  }

  v8 = CGImageCreateWithPNGDataProvider(v7, 0, 0, kCGRenderingIntentDefault);
  if (!v8)
  {
    v8 = CGImageCreateWithJPEGDataProvider(v7, 0, 0, kCGRenderingIntentDefault);
    if (!v8)
    {

      goto LABEL_17;
    }
  }

  v9 = v8;
  result = CGImageGetWidth(v8);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = CGImageGetHeight(v9);
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v11 = *(v0 + 120);
  (*(*(v0 + 48) + 104))(*(v0 + 56), *MEMORY[0x277CC6BD8], *(v0 + 40));
  sub_238757CD0();

  v12 = 0;
LABEL_22:
  v35 = *(v0 + 16);
  v36 = sub_238757CF0();
  (*(*(v36 - 8) + 56))(v35, v12, 1, v36);

  v37 = *(v0 + 8);

  return v37();
}

void sub_2384F4168()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A968, &unk_2387662B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A970, &unk_23876E8B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = objc_opt_self();
  v9 = [v8 sharedService];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  sub_2387597C0();
  v11 = sub_238757F40();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_238439884(v7, &qword_27DF0A970, &unk_23876E8B0);
  }

  else
  {
    sub_2384F2858(v10, MEMORY[0x277CC6C68]);
    v14 = v13;
    (*(v12 + 8))(v7, v11);
    if (v14)
    {
      goto LABEL_8;
    }
  }

  sub_2387597B0();
  v15 = sub_23875B3A0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v4, 1, v15) == 1)
  {
    sub_238439884(v4, &qword_27DF0A968, &unk_2387662B0);
    goto LABEL_9;
  }

  sub_2384F2858(v10, MEMORY[0x277CC85B8]);
  v18 = v17;
  (*(v16 + 8))(v4, v15);
  if (v18)
  {
LABEL_8:

    return;
  }

LABEL_9:
  v19 = [v8 sharedService];
  if (!v19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = v19;
  sub_2384F4580(v1);
  v21 = PKMerchantCategoryToString();
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  v23 = [v20 stylingForWalletCategory_];

  if (v23)
  {

    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t MapsTransactionIconGenerator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2384F44D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2384494A4;

  return MapsTransactionIconGenerator.generateIcon(for:)(a1, a2);
}

uint64_t sub_2384F4580(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CBA0, &unk_23876BCE0);
  MEMORY[0x28223BE20](v2 - 8);
  v63 = &v54 - v3;
  v4 = sub_238759170();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v54 - v7;
  MEMORY[0x28223BE20](v8);
  v58 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A968, &unk_2387662B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A970, &unk_23876E8B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2C0, &qword_23876BCF0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v61 = &v54 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - v22;
  v24 = sub_238757E10();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v55 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v54 - v28;
  v62 = a1;
  sub_2387597C0();
  v30 = sub_238757F40();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v15, 1, v30) == 1)
  {
    sub_238439884(v15, &qword_27DF0A970, &unk_23876E8B0);
    (*(v25 + 56))(v23, 1, 1, v24);
LABEL_4:
    sub_238439884(v23, &qword_27DF0A2C0, &qword_23876BCF0);
    goto LABEL_5;
  }

  sub_238757E50();
  (*(v31 + 8))(v15, v30);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    goto LABEL_4;
  }

  (*(v25 + 32))(v29, v23, v24);
  v46 = v61;
  (*(v25 + 16))(v61, v29, v24);
  (*(v25 + 56))(v46, 0, 1, v24);
  v47 = sub_238468A30(v46);
  v49 = v48;
  (*(v25 + 8))(v29, v24);
  if ((v49 & 1) == 0)
  {
    return v47;
  }

LABEL_5:
  sub_2387597B0();
  v32 = sub_23875B3A0();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v12, 1, v32) == 1)
  {
    sub_238439884(v12, &qword_27DF0A968, &unk_2387662B0);
    (*(v25 + 56))(v18, 1, 1, v24);
    v34 = v63;
LABEL_8:
    sub_238439884(v18, &qword_27DF0A2C0, &qword_23876BCF0);
LABEL_9:
    sub_2387597A0();
    v36 = sub_23875A660();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v34, 1, v36) == 1)
    {
      sub_238439884(v34, &qword_27DF0CBA0, &unk_23876BCE0);
      return 0;
    }

    v38 = v56;
    sub_23875A650();
    (*(v37 + 8))(v34, v36);
    v40 = v58;
    v39 = v59;
    v41 = v60;
    (*(v59 + 32))(v58, v38, v60);
    sub_238759150();
    v42 = v61;
    sub_238757E20();
    (*(v25 + 56))(v42, 0, 1, v24);
    v43 = sub_238468A30(v42);
    LOBYTE(v42) = v44;
    (*(v39 + 8))(v40, v41);
    if (v42)
    {
      return 0;
    }

    return v43;
  }

  sub_23875B2E0();
  (*(v33 + 8))(v12, v32);
  v35 = (*(v25 + 48))(v18, 1, v24);
  v34 = v63;
  if (v35 == 1)
  {
    goto LABEL_8;
  }

  v50 = v55;
  (*(v25 + 32))(v55, v18, v24);
  v51 = v61;
  (*(v25 + 16))(v61, v50, v24);
  (*(v25 + 56))(v51, 0, 1, v24);
  v43 = sub_238468A30(v51);
  v53 = v52;
  (*(v25 + 8))(v50, v24);
  if (v53)
  {
    goto LABEL_9;
  }

  return v43;
}

uint64_t dispatch thunk of MapsTransactionIconGenerating.generateIcon(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2384494A4;

  return v11(a1, a2, a3, a4);
}

void MonogramView.init(backgroundColor:foregroundColor:merchantDisplayName:scale:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = sub_23875D990();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MonogramView(0);
  v32[1] = 0x404C000000000000;
  v16 = (*(v13 + 104))(v15, *MEMORY[0x277CE0A68], v12);
  sub_23845A940(v16, v17, v18);
  sub_23875C540();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  *(a5 + 16) = a6;
  v19 = sub_23875EAF0();
  v21 = v20;

  v22 = sub_2384F565C(1, v19, v21);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = MEMORY[0x23EE635F0](v22, v24, v26, v28);
  v31 = v30;

  *(a5 + 40) = v29;
  *(a5 + 48) = v31;
}

uint64_t type metadata accessor for MonogramView(uint64_t a1)
{
  result = qword_27DF0CBD0;
  if (!qword_27DF0CBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MonogramView.body.getter(uint64_t a1)
{
  v2 = sub_23875E4A0();
  v4 = v3;
  sub_2384F51E4(v1, &v16);
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v15[0] = v16;
  v15[1] = v17;
  v15[2] = v18;
  v15[3] = v19;
  sub_2384F56F8(&v11, &v6);
  sub_238439884(v15, &qword_27DF0CBB8, &qword_23876BCF8);
  v7 = v11;
  v8 = v12;
  v9 = v13;
  v10 = v14;
  *&v6 = v2;
  *(&v6 + 1) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CBC0, &qword_23876BD00);
  sub_2384F5768();
  sub_23875DBF0();
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v16 = v6;
  v17 = v7;
  return sub_238439884(&v16, &qword_27DF0CBC0, &qword_23876BD00);
}

uint64_t sub_2384F51E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F0, &qword_23877B880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  sub_23875ED50();
  v39 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v38 = *a1;
  v9 = a1[6];
  v40 = a1[5];
  v41 = v9;
  sub_2384397A8(isCurrentExecutor, v7, v8);

  v10 = sub_23875DAA0();
  v12 = v11;
  v14 = v13;
  sub_23875D870();
  v15 = sub_23875D9E0();
  v17 = v16;
  v19 = v18;
  sub_2384397FC(v10, v12, v14 & 1);

  type metadata accessor for MonogramView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
  sub_23875C550();
  v20 = sub_23875D840();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  sub_23875D8C0();
  sub_238439884(v5, &qword_27DF0C7F0, &qword_23877B880);
  v21 = sub_23875DA60();
  v23 = v22;
  v25 = v24;

  sub_2384397FC(v15, v17, v19 & 1);

  v40 = a1[1];

  v26 = sub_23875DA20();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_2384397FC(v21, v23, v25 & 1);

  v33 = a1[2];
  KeyPath = swift_getKeyPath(byte_23876BD80);
  LOBYTE(v40) = v30 & 1;
  v35 = v37;
  *v37 = v38;
  *(v35 + 4) = 256;
  v35[2] = v26;
  v35[3] = v28;
  *(v35 + 32) = v30 & 1;
  v35[5] = v32;
  v35[6] = KeyPath;
  v35[7] = v33;

  sub_23843980C(v26, v28, v30 & 1);

  sub_2384397FC(v26, v28, v30 & 1);
}

uint64_t sub_2384F5558(uint64_t a1)
{
  v2 = sub_23875E4A0();
  v4 = v3;
  sub_2384F51E4(v1, &v16);
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v15[0] = v16;
  v15[1] = v17;
  v15[2] = v18;
  v15[3] = v19;
  sub_2384F56F8(&v11, &v6);
  sub_238439884(v15, &qword_27DF0CBB8, &qword_23876BCF8);
  v7 = v11;
  v8 = v12;
  v9 = v13;
  v10 = v14;
  *&v6 = v2;
  *(&v6 + 1) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CBC0, &qword_23876BD00);
  sub_2384F5768();
  sub_23875DBF0();
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v16 = v6;
  v17 = v7;
  return sub_238439884(&v16, &qword_27DF0CBC0, &qword_23876BD00);
}

uint64_t sub_2384F565C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23875EB60();

    return sub_23875EC00();
  }

  return result;
}

uint64_t sub_2384F56F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CBB8, &qword_23876BCF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2384F5768()
{
  result = qword_27DF0CBC8;
  if (!qword_27DF0CBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CBC0, &qword_23876BD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CBC8);
  }

  return result;
}

void sub_2384F5810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_238462AAC(319, a2, a3);
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2384F58A8()
{
  result = qword_27DF0CBE0;
  if (!qword_27DF0CBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CBE8, &qword_23876BD78);
    sub_2384F5768();
    sub_23844E9B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CBE0);
  }

  return result;
}

double View.addOrderToWalletButtonStyle(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath(byte_23876BDB0);
  sub_23875DB60();

  return result;
}

void *sub_2384F59BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2384E3540(a1, a2, a3);

  return sub_23875CDC0();
}

unint64_t sub_2384F5A14()
{
  result = qword_27DF0CBF8;
  if (!qword_27DF0CBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CBF0, &unk_23876BE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CBF8);
  }

  return result;
}

unint64_t sub_2384F5A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0CC00;
  if (!qword_27DF0CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CC00);
  }

  return result;
}

uint64_t sub_2384F5B48(uint64_t a1)
{
  result = sub_23875A710();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2384F5C38(uint64_t a1)
{
  type metadata accessor for OrderActionsMenuContext(319);
  if (v1 <= 0x3F)
  {
    sub_23846CAFC(319);
    if (v2 <= 0x3F)
    {
      sub_23846D088(319, &qword_27DF0A0B0, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2384F5D10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = type metadata accessor for OrderActionsMenu(0);
  v4 = v3 - 8;
  v48 = *(v3 - 8);
  v5 = v48[8];
  MEMORY[0x28223BE20](v3);
  v49 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v47 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC30, &qword_23876C038);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v10 = v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC38, &qword_23876C040);
  v57 = *(v11 - 8);
  v58 = v11;
  MEMORY[0x28223BE20](v11);
  v55 = v47 - v12;
  v61 = v2;
  v60 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2E8, &unk_2387655B0);
  type metadata accessor for OrderActionsItems(0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A2F0, &unk_23876BB30);
  v14 = sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  v17 = sub_23846CBA0(v14, v15, v16);
  v62 = v13;
  v63 = &type metadata for OrderActionsMenuLabelStyle;
  v64 = v14;
  v65 = v17;
  swift_getOpaqueTypeConformance2();
  sub_2384FAA9C(&qword_27DF0CC40, type metadata accessor for OrderActionsItems, &unk_23876C0F8);
  v53 = v10;
  sub_23875D9D0();
  v18 = v2 + *(v4 + 32);
  v19 = *v18;
  v20 = *(v18 + 8);
  v70 = v19;
  v71 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v52 = v62;
  v51 = v63;
  v50 = v64;
  sub_2384FA74C(v2, v8, type metadata accessor for OrderActionsMenu);
  v21 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v22 = swift_allocObject();
  sub_2384FAE70(v8, v22 + v21, type metadata accessor for OrderActionsMenu);
  v23 = v49;
  sub_2384FA74C(v2, v49, type metadata accessor for OrderActionsMenu);
  v24 = swift_allocObject();
  sub_2384FAE70(v23, v24 + v21, type metadata accessor for OrderActionsMenu);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v25 = qword_2814F1B90;
  v26 = sub_23875EA50();
  v27 = sub_23875EA50();
  v28 = sub_23875EA50();
  v29 = [v25 localizedStringForKey:v26 value:v27 table:v28];

  v30 = sub_23875EA80();
  v32 = v31;
  v49 = v31;

  v48 = v47;
  v62 = v30;
  v63 = v32;
  MEMORY[0x28223BE20](v33);
  v47[1] = v46;
  MEMORY[0x28223BE20](v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC48, &unk_23876C048);
  v47[0] = v35;
  v36 = sub_23843A3E8(&qword_27DF0CC50, &qword_27DF0CC30, &qword_23876C038, MEMORY[0x277CDE5B0]);
  v39 = sub_2384397A8(v36, v37, v38);
  v40 = sub_23843A3E8(&qword_27DF0CC58, &qword_27DF0CC48, &unk_23876C048, MEMORY[0x277CE14C0]);
  v46[4] = v40;
  v46[5] = MEMORY[0x277CE0BC8];
  v46[2] = v36;
  v46[3] = v39;
  v46[0] = v35;
  v46[1] = MEMORY[0x277CE0BD8];
  v41 = v56;
  v42 = v55;
  v43 = v53;
  sub_23875DEC0();

  (*(v54 + 8))(v43, v41);

  v62 = v41;
  v63 = MEMORY[0x277D837D0];
  v64 = v47[0];
  v65 = MEMORY[0x277CE0BD8];
  v66 = v36;
  v67 = v39;
  v68 = v40;
  v69 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v44 = v58;
  sub_23875DE00();
  return (*(v57 + 8))(v42, v44);
}

double sub_2384F64D4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for OrderActionsMenu(0);
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

  v7 = type metadata accessor for OrderActionsItems(0);
  sub_2384FA74C(a1, a2 + v7[5], type metadata accessor for OrderActionsMenuContext);
  sub_2384FA74C(a1, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderActionsMenu);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2384FAE70(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for OrderActionsMenu);
  sub_23875EA80();
  v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v11 = sub_23875EA50();
  [v10 initWithSuiteName_];

  *a2 = sub_23875C370();
  v12 = (a2 + v7[6]);
  *v12 = sub_2384FA7B4;
  v12[1] = v9;
  v13 = v7[7];
  *(a2 + v13) = swift_getKeyPath(byte_23876C070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_2384F6748(uint64_t a1)
{
  type metadata accessor for OrderActionsMenu(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  return sub_23875E1C0();
}

double sub_2384F67BC(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - v4;
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

  v21[0] = v11;
  v21[1] = v13;
  sub_2384397A8(v14, v15, v16);
  sub_23875E190();
  LOBYTE(v21[0]) = *a1;
  v17 = sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23846CBA0(v17, v18, v19);
  sub_23875DB00();
  (*(v3 + 8))(v5, v2);

  return result;
}

uint64_t sub_2384F6A70()
{
  v0 = sub_23875C1E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OrderActionsMenu(0);
  sub_2384D5160(v3);
  sub_2384F6B58(v3);
  return (*(v1 + 8))(v3, v0);
}

void sub_2384F6B58(uint64_t a1)
{
  v28 = a1;
  v27 = sub_23875C1E0();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v27);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23875A710();
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v26);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for OrderActionsMenuContext(0);
  v11 = v10[5];
  v12 = sub_23875ED80();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = v1 + v11;
  v14 = v26;
  (*(v4 + 16))(v6, v13, v26);
  v15 = v27;
  (*(v2 + 16))(&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v27);
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = (v5 + *(v2 + 80) + v16) & ~*(v2 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v4 + 32))(v18 + v16, v6, v14);
  (*(v2 + 32))(v18 + v17, v24, v15);
  sub_2386C3BA4(0, 0, v9, &unk_23876C060, v18);

  v19 = 0x100000000;
  if (*v25)
  {
    v19 = 0x908000000;
  }

  v20 = 0x10000;
  if (!v25[v10[10]])
  {
    v20 = 0;
  }

  v21 = v20 | v19;
  v22 = 256;
  if (!v25[v10[9]])
  {
    v22 = 0;
  }

  sub_2384FBAB0(v21 | v22 | v25[v10[6]]);
}

void sub_2384F6E70(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for OrderActionsMenuContext(0);
  v4 = 0x100000000;
  if (v2)
  {
    v4 = 0x908000000;
  }

  v5 = 0x10000;
  if (!a1[v3[10]])
  {
    v5 = 0;
  }

  v6 = v5 | v4;
  v7 = 256;
  if (!a1[v3[9]])
  {
    v7 = 0;
  }

  v8 = v6 | v7 | a1[v3[6]];

  sub_2384FBAC0(v8);
}

unint64_t sub_2384F6F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0CC28;
  if (!qword_27DF0CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CC28);
  }

  return result;
}

uint64_t sub_2384F6F54@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CCD0, &qword_23876C1E0);
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v50 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - v4;
  v6 = type metadata accessor for OrderActionsItems(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = v1 + *(v9 + 28);
  v11 = type metadata accessor for OrderActionsMenuContext(0);
  v12 = v11;
  v13 = 0;
  v14 = 0;
  v49 = 0;
  if (*(v10 + *(v11 + 32)) == 1)
  {
    v13 = *(v10 + *(v11 + 36));
    sub_2384FA74C(v1, &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderActionsItems);
    v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v16 = swift_allocObject();
    sub_2384FAE70(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for OrderActionsItems);
    v49 = v16;

    v14 = sub_2384FB070;
  }

  v17 = *(v10 + v12[7]);
  v46 = v14;
  if (v17 == 1 && *(v10 + v12[10]) == 1 && (v11 = sub_23875C380(), (v51 & 1) == 0))
  {
    v37 = v7;
    v18 = *(v10 + v12[6]);
    sub_2384FA74C(v1, &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderActionsItems);
    v38 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v39 = swift_allocObject();
    sub_2384FAE70(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v38, type metadata accessor for OrderActionsItems);
    v44 = v39;

    v43 = sub_2384FAED8;
  }

  else
  {
    v18 = 0;
    v43 = 0;
    v44 = 0;
  }

  MEMORY[0x28223BE20](v11);
  *(&v40 - 2) = v1;
  sub_2384FAE1C(v19, v20, v21);
  v22 = v5;
  v42 = v5;
  sub_23875E3D0();
  v23 = v45;
  v24 = *(v45 + 16);
  v25 = v22;
  v26 = v48;
  v24(v50, v25, v48);
  v41 = v13;
  v28 = v46;
  v27 = v47;
  *v47 = v13;
  v27[1] = v28;
  v29 = v49;
  v27[2] = v49;
  v27[3] = v18;
  v30 = v43;
  v31 = v44;
  v27[4] = v43;
  v27[5] = v31;
  v32 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CCE0, &qword_23876C1E8) + 64);
  v33 = v50;
  v24(v32, v50, v26);
  v34 = v41;
  sub_2383FE9BC(v41, v28, v29);
  sub_2383FE9BC(v18, v30, v31);
  sub_2383FE9CC(v18, v30, v31);
  sub_2383FE9CC(v34, v28, v29);
  v35 = *(v23 + 8);
  v35(v42, v26);
  v35(v33, v26);
  sub_2383FE9CC(v18, v30, v31);
  return sub_2383FE9CC(v34, v28, v29);
}

uint64_t sub_2384F73B8(int a1, uint64_t a2)
{
  v39 = a2;
  v43 = a1;
  v3 = type metadata accessor for OrderActionsItems(0);
  v4 = v3 - 8;
  v41 = *(v3 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v37 = &v37 - v7;
  v9 = type metadata accessor for OrderActionsMenuContext(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23875A710();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v40 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = (a2 + *(v4 + 28));
  v20 = 0x10000;
  if (!v19[v10[12]])
  {
    v20 = 0;
  }

  v21 = 0x8000000;
  if (*v19)
  {
    v22 = 8;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v23 = 256;
  if (v19[v10[11]])
  {
    v24 = 19;
  }

  else
  {
    v23 = 0;
    v24 = 18;
  }

  sub_2384FBD14(v24, v22, v21 | v20 | v23 | v19[v10[8]]);
  sub_2384FA74C(v19, v12, type metadata accessor for OrderActionsMenuContext);
  v25 = *(v14 + 32);
  v26 = &v12[v10[7]];
  v27 = v18;
  v38 = v18;
  v25(v18, v26, v13);
  v28 = sub_23875ED80();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  v29 = v40;
  (*(v14 + 16))(v40, v27, v13);
  sub_2384FA74C(v39, v44, type metadata accessor for OrderActionsItems);
  sub_23875ED50();
  v30 = sub_23875ED40();
  v31 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v32 = v31 + v15;
  v33 = (*(v41 + 80) + v32 + 1) & ~*(v41 + 80);
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D85700];
  *(v34 + 16) = v30;
  *(v34 + 24) = v35;
  v25((v34 + v31), v29, v13);
  *(v34 + v32) = v43;
  sub_2384FAE70(v44, v34 + v33, type metadata accessor for OrderActionsItems);
  sub_2386C3BA4(0, 0, v37, &unk_23876C1F8, v34);

  return (*(v14 + 8))(v38, v13);
}

uint64_t sub_2384F77E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 112) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = sub_23875C1E0();
  *(v6 + 32) = v7;
  *(v6 + 40) = *(v7 - 8);
  *(v6 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  *(v6 + 56) = swift_task_alloc();
  sub_23875ED50();
  *(v6 + 64) = sub_23875ED40();
  v9 = sub_23875ECE0();
  *(v6 + 72) = v9;
  *(v6 + 80) = v8;

  return MEMORY[0x2822009F8](sub_2384F7914, v9, v8);
}

uint64_t sub_2384F7914()
{
  v1 = *(v0 + 56);
  sub_2387579D0();
  *(v0 + 88) = sub_2387579A0();
  sub_23875BBF0();
  v2 = sub_23875BC40();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_2384F7A18;
  v4 = *(v0 + 56);
  v5 = *(v0 + 112);
  v6 = *(v0 + 16);

  return MEMORY[0x282116E28](v6, v5, v4);
}

uint64_t sub_2384F7A18()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(*v1 + 104) = v0;

  sub_238439884(v3, &qword_27DF12E00, &unk_238763FC0);

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_2384F7C14;
  }

  else
  {
    v6 = sub_2384F7BA4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2384F7BA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2384F7C14()
{
  v1 = v0[13];
  v2 = v0[6];

  type metadata accessor for OrderActionsItems(0);
  sub_2384D5160(v2);
  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2383F8000, v4, v5, "Failed to toggle marked as completed: %@", v8, 0xCu);
    sub_238439884(v9, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v12 = v0[1];

  return v12();
}

double sub_2384F7DC4(char a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderActionsItems(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v12 = (a2 + *(v5 + 28));
  v13 = *v12;
  v14 = type metadata accessor for OrderActionsMenuContext(0);
  v15 = 0x10000;
  if (!v12[v14[10]])
  {
    v15 = 0;
  }

  v16 = 256;
  if (!v12[v14[9]])
  {
    v16 = 0;
  }

  v17 = v12[v14[6]];
  v18 = 0x8000000;
  if (!v13)
  {
    v18 = 0;
  }

  v19 = v16 | v15 | v18;
  if (v13)
  {
    v20 = 8;
  }

  else
  {
    v20 = 0;
  }

  if (v12[v14[6]])
  {
    v21 = 20;
  }

  else
  {
    v21 = 21;
  }

  sub_2384FBD14(v21, v20, v19 | v17);
  v22 = sub_23875ED80();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  sub_2384FA74C(a2, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderActionsItems);
  sub_23875ED50();
  v23 = sub_23875ED40();
  v24 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 16) = v23;
  *(v25 + 24) = v26;
  *(v25 + 32) = a1;
  sub_2384FAE70(v8, v25 + v24, type metadata accessor for OrderActionsItems);
  sub_2386C3BA4(0, 0, v11, &unk_23876C210, v25);

  return result;
}

uint64_t sub_2384F8038(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 124) = a4;
  v6 = sub_23875C1E0();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();
  *(v5 + 48) = type metadata accessor for OrderActionsMenuContext(0);
  *(v5 + 56) = swift_task_alloc();
  sub_23875ED50();
  *(v5 + 64) = sub_23875ED40();
  v8 = sub_23875ECE0();
  *(v5 + 72) = v8;
  *(v5 + 80) = v7;

  return MEMORY[0x2822009F8](sub_2384F8160, v8, v7);
}

uint64_t sub_2384F8160()
{
  v1 = v0;
  v2 = *(v0 + 56);
  v3 = *(v1 + 48);
  v4 = *(v1 + 16);
  sub_2387579D0();
  *(v1 + 88) = sub_2387579A0();
  v5 = type metadata accessor for OrderActionsItems(0);
  *(v1 + 96) = v5;
  sub_2384FA74C(v4 + *(v5 + 20), v2, type metadata accessor for OrderActionsMenuContext);
  v6 = *(v3 + 20);
  *(v1 + 120) = v6;
  v7 = swift_task_alloc();
  *(v1 + 104) = v7;
  *v7 = v1;
  v7[1] = sub_2384F8264;
  v8 = *(v1 + 124);

  return MEMORY[0x282116E68](v8, v2 + v6);
}

uint64_t sub_2384F8264()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 56);
  *(*v1 + 112) = v0;

  v5 = sub_23875A710();
  (*(*(v5 - 8) + 8))(v4 + v3, v5);
  v6 = *(v2 + 80);
  v7 = *(v2 + 72);
  if (v0)
  {
    v8 = sub_2384F8488;
  }

  else
  {
    v8 = sub_2384F8414;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2384F8414()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2384F8488()
{
  v1 = v0[14];
  v2 = v0[5];

  sub_2384D5160(v2);
  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2383F8000, v4, v5, "Failed to save context with error: %@", v8, 0xCu);
    sub_238439884(v9, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v12 = v0[1];

  return v12();
}

void sub_2384F8638(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = type metadata accessor for OrderActionsItems(0);
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

  sub_2384FA74C(a1, &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderActionsItems);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2384FAE70(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for OrderActionsItems);

  *a2 = sub_2384FB368;
  a2[1] = v8;
}

void sub_2384F87C0(uint64_t a1)
{
  v2 = type metadata accessor for OrderActionsItems(0);
  (*(a1 + *(v2 + 24)))();
  v3 = (a1 + *(v2 + 20));
  v4 = *v3;
  v5 = type metadata accessor for OrderActionsMenuContext(0);
  v6 = 0x10000;
  if (!v3[v5[10]])
  {
    v6 = 0;
  }

  v7 = 256;
  if (!v3[v5[9]])
  {
    v7 = 0;
  }

  v8 = 0x8000000;
  if (!v4)
  {
    v8 = 0;
  }

  v9 = v7 | v6 | v8;
  if (v4)
  {
    v10 = 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9 | v3[v5[6]];

  sub_2384FBD14(22, v10, v11);
}

uint64_t sub_2384F8890@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v45 = a2;
  v42 = a1;
  v49 = a3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC80, &qword_23876C180);
  MEMORY[0x28223BE20](v46);
  v48 = &v39 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC88, &qword_23876C188);
  MEMORY[0x28223BE20](v47);
  v39 = &v39 - v4;
  v5 = sub_23875CE80();
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  MEMORY[0x28223BE20](v5);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875D4C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC90, &qword_23876C190);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC98, &qword_23876C198);
  v16 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CCA0, &qword_23876C1A0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v39 - v21;
  (*(v9 + 16))(v11, v42, v8, v20);
  sub_23875E180();
  sub_23875D880();
  v23 = sub_23843A3E8(&qword_27DF0CCA8, &qword_27DF0CC90, &qword_23876C190, MEMORY[0x277CDEFF0]);
  sub_23875DAF0();
  (*(v13 + 8))(v15, v12);
  v24 = v41;
  sub_23875CE70();
  *&v50 = v12;
  *(&v50 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  sub_2384FAA9C(&qword_27DF0B740, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v25 = v24;
  v26 = v40;
  v27 = v43;
  sub_23875DB00();
  (*(v44 + 8))(v25, v27);
  (*(v16 + 8))(v18, v26);
  sub_23875E4C0();
  sub_23875C9C0();
  v28 = &v22[*(v19 + 36)];
  v29 = v55;
  *(v28 + 4) = v54;
  *(v28 + 5) = v29;
  *(v28 + 6) = v56;
  v30 = v51;
  *v28 = v50;
  *(v28 + 1) = v30;
  v31 = v53;
  *(v28 + 2) = v52;
  *(v28 + 3) = v31;
  if (v45)
  {
    sub_23843981C(v22, v48, &qword_27DF0CCA0, &qword_23876C1A0);
    swift_storeEnumTagMultiPayload();
    sub_2384FAB1C();
    sub_2384FAC8C();
    sub_23875D1B0();
  }

  else
  {
    v32 = sub_23875D8F0();
    KeyPath = swift_getKeyPath(aP);
    v34 = v39;
    sub_23843981C(v22, v39, &qword_27DF0CCA0, &qword_23876C1A0);
    v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CCC0, &qword_23876C1A8) + 36));
    *v35 = KeyPath;
    v35[1] = v32;
    v36 = sub_23875D440();
    v37 = v48;
    *(v34 + *(v47 + 36)) = v36;
    sub_23843981C(v34, v37, &qword_27DF0CC88, &qword_23876C188);
    swift_storeEnumTagMultiPayload();
    sub_2384FAB1C();
    sub_2384FAC8C();
    sub_23875D1B0();
    sub_238439884(v34, &qword_27DF0CC88, &qword_23876C188);
  }

  return sub_238439884(v22, &qword_27DF0CCA0, &qword_23876C1A0);
}

uint64_t sub_2384F8F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2384F8F48, 0, 0);
}

uint64_t sub_2384F8F48()
{
  sub_2387579D0();
  v0[4] = sub_2387579A0();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_2384F8FF8;
  v2 = v0[2];

  return MEMORY[0x282116D30](v2);
}

uint64_t sub_2384F8FF8()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2384F9134, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2384F9134()
{
  v1 = *(v0 + 48);

  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 48);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to delete an order: %@", v7, 0xCu);
    sub_238439884(v8, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v8, -1, -1);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

double sub_2384F9298@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CD48, &qword_23876C420);
  MEMORY[0x28223BE20](v35);
  v4 = &v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CD30, &qword_23876C418);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v12 = qword_2814F1B90;
    v13 = sub_23875EA50();
    v14 = sub_23875EA50();
    v15 = sub_23875EA50();
    v16 = [v12 localizedStringForKey:v13 value:v14 table:{v15, v35, v36}];

    v17 = sub_23875EA80();
    v19 = v18;

    v37 = v17;
    v38 = v19;
    sub_2384397A8(v20, v21, v22);
    sub_23875E190();
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v23 = qword_2814F1B90;
    v24 = sub_23875EA50();
    v25 = sub_23875EA50();
    v26 = sub_23875EA50();
    v27 = [v23 localizedStringForKey:v24 value:v25 table:{v26, v35, v36}];

    v28 = sub_23875EA80();
    v30 = v29;

    v37 = v28;
    v38 = v30;
    sub_2384397A8(v31, v32, v33);
    sub_23875E190();
  }

  (*(v6 + 16))(v4, v8, v5);
  swift_storeEnumTagMultiPayload();
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23875D1B0();
  (*(v6 + 8))(v8, v5);
  sub_2384FB7AC(v11, v36);

  return result;
}

uint64_t sub_2384F971C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CD28, &qword_23876C410);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-v3];
  v5 = *v0;
  v7 = *(v0 + 1);
  v6 = *(v0 + 2);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v8 + 32) = v6;
  v10[16] = v5;
  v11 = v7;
  v12 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CD30, &qword_23876C418);
  sub_2384FB6FC();
  sub_23875E200();
  sub_23843A3E8(&qword_27DF0CD40, &qword_27DF0CD28, &qword_23876C410, MEMORY[0x277CDF028]);
  sub_23875DE00();

  return (*(v2 + 8))(v4, v1);
}

double sub_2384F9914(char a1, void (*a2)(BOOL), uint64_t a3, uint64_t a4)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2((a1 & 1) == 0);

  return result;
}

double sub_2384F99DC(char a1)
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

  v1 = qword_2814F1B90;
  v2 = sub_23875EA50();

  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  sub_23875EA80();
  sub_2384397A8(v6, v7, v8);
  sub_23875E190();

  return result;
}

uint64_t sub_2384F9BC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-v3];
  v5 = *v0;
  v7 = *(v0 + 1);
  v6 = *(v0 + 2);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v8 + 32) = v6;
  v10[16] = v5;
  v11 = v7;
  v12 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23875E200();
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
  sub_23875DE00();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2384F9DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  v29[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CD08, &qword_23876C3C8);
  MEMORY[0x28223BE20](v29[0]);
  v12 = v29 - v11;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v13 = qword_2814F1B90;
  v14 = sub_23875EA50();
  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v17 = [v13 localizedStringForKey:v14 value:v15 table:v16];

  v18 = sub_23875EA80();
  v20 = v19;

  sub_23875C390();
  v21 = sub_23875C3C0();
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  v30[0] = v18;
  v30[1] = v20;
  v23 = sub_2384FB548(v10, v7);
  MEMORY[0x28223BE20](v23);
  v29[-4] = v30;
  v29[-3] = 0x6873617274;
  v29[-2] = 0xE500000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23875E1F0();
  sub_238439884(v10, &qword_27DF0A328, &unk_2387655E0);

  v24 = sub_23875DFF0();
  KeyPath = swift_getKeyPath(byte_23876C3D0);
  v30[0] = v24;
  v26 = sub_23875C5D0();
  v27 = &v12[*(v29[0] + 36)];
  *v27 = KeyPath;
  v27[1] = v26;
  sub_2384FB5B8();
  sub_23875DE00();
  return sub_238439884(v12, &qword_27DF0CD08, &qword_23876C3C8);
}

double sub_2384FA1CC(void (*a1)(uint64_t))
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

uint64_t sub_2384FA284(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = type metadata accessor for OrderActionsMenuContext(0);
  if ((MEMORY[0x23EE5F1E0](&a1[v5[5]], &a2[v5[5]]) & 1) != 0 && a1[v5[6]] == a2[v5[6]] && a1[v5[7]] == a2[v5[7]] && a1[v5[8]] == a2[v5[8]] && a1[v5[9]] == a2[v5[9]] && a1[v5[10]] == a2[v5[10]])
  {
    v6 = a1[v5[11]] ^ a2[v5[11]] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for OrderActionsMenu(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(type metadata accessor for OrderActionsMenuContext(0) + 20);
  v6 = sub_23875A710();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23875C1E0();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384FA56C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_2384FA5FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23875A710() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23875C1E0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_238449A7C;

  return sub_2384F8F28(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_2384FA74C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2384FA808(uint64_t a1)
{
  sub_23846D088(319, &qword_27DF0A350, MEMORY[0x277CDD630]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for OrderActionsMenuContext(319);
    if (v2 <= 0x3F)
    {
      sub_23846D0DC();
      if (v3 <= 0x3F)
      {
        sub_23846CAFC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2384FA8E8()
{
  result = qword_27DF0CC70;
  if (!qword_27DF0CC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CC78, &qword_23876C0F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CC30, &qword_23876C038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CC48, &unk_23876C048);
    v1 = sub_23843A3E8(&qword_27DF0CC50, &qword_27DF0CC30, &qword_23876C038, MEMORY[0x277CDE5B0]);
    sub_2384397A8(v1, v2, v3);
    sub_23843A3E8(&qword_27DF0CC58, &qword_27DF0CC48, &unk_23876C048, MEMORY[0x277CE14C0]);
    swift_getOpaqueTypeConformance2();
    sub_2384FAA9C(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CC70);
  }

  return result;
}

uint64_t sub_2384FAA9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2384FAB1C()
{
  result = qword_27DF0CCB0;
  if (!qword_27DF0CCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CC88, &qword_23876C188);
    sub_2384FABD4();
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CCB0);
  }

  return result;
}

unint64_t sub_2384FABD4()
{
  result = qword_27DF0CCB8;
  if (!qword_27DF0CCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CCC0, &qword_23876C1A8);
    sub_2384FAC8C();
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CCB8);
  }

  return result;
}

unint64_t sub_2384FAC8C()
{
  result = qword_27DF0CCC8;
  if (!qword_27DF0CCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CCA0, &qword_23876C1A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CC98, &qword_23876C198);
    sub_23875CE80();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CC90, &qword_23876C190);
    sub_23843A3E8(&qword_27DF0CCA8, &qword_27DF0CC90, &qword_23876C190, MEMORY[0x277CDEFF0]);
    swift_getOpaqueTypeConformance2();
    sub_2384FAA9C(&qword_27DF0B740, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CCC8);
  }

  return result;
}

unint64_t sub_2384FAE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0CCD8;
  if (!qword_27DF0CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CCD8);
  }

  return result;
}

uint64_t sub_2384FAE70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_50Tm()
{
  v1 = (type metadata accessor for OrderActionsItems(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = v5 + *(type metadata accessor for OrderActionsMenuContext(0) + 20);
  v7 = sub_23875A710();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C1E0();
    (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384FB088(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for OrderActionsItems(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_2384FB10C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23875A710() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(type metadata accessor for OrderActionsItems(0) - 8);
  v9 = (v7 + *(v8 + 80) + 1) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_238449A7C;

  return sub_2384F77E4(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_2384FB270(uint64_t a1)
{
  v4 = *(type metadata accessor for OrderActionsItems(0) - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2384494A4;

  return sub_2384F8038(a1, v6, v7, v8, v1 + v5);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2384FB3C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2384FB410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2384FB460()
{
  result = qword_27DF0CCE8;
  if (!qword_27DF0CCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CCF0, &qword_23876C2C0);
    sub_2384FAB1C();
    sub_2384FAC8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CCE8);
  }

  return result;
}

uint64_t sub_2384FB548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2384FB5B8()
{
  result = qword_27DF0CD10;
  if (!qword_27DF0CD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CD08, &qword_23876C3C8);
    sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
    sub_23843A3E8(&qword_27DF0CD18, &qword_27DF0CD20, &qword_23876C408, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CD10);
  }

  return result;
}

unint64_t sub_2384FB6FC()
{
  result = qword_27DF0CD38;
  if (!qword_27DF0CD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CD30, &qword_23876C418);
    sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CD38);
  }

  return result;
}

uint64_t sub_2384FB7AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CD30, &qword_23876C418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2384FB81C()
{
  result = qword_27DF0CD50;
  if (!qword_27DF0CD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CD58, &qword_23876C428);
    sub_2384FB5B8();
    sub_2384FAA9C(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CD50);
  }

  return result;
}

unint64_t sub_2384FB8D8()
{
  result = qword_27DF0CD60;
  if (!qword_27DF0CD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CD68, &qword_23876C430);
    sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
    sub_2384FAA9C(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CD60);
  }

  return result;
}

unint64_t sub_2384FB9C0()
{
  result = qword_27DF0CD70;
  if (!qword_27DF0CD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CD78, &qword_23876C438);
    sub_23843A3E8(&qword_27DF0CD40, &qword_27DF0CD28, &qword_23876C410, MEMORY[0x277CDF028]);
    sub_2384FAA9C(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CD70);
  }

  return result;
}

void sub_2384FBAD0(unint64_t a1, uint64_t a2)
{
  v3 = HIDWORD(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v5 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_2384FBFBC(inited + 32);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_238763300;
  v7 = *MEMORY[0x277D383D8];
  *(v6 + 32) = *MEMORY[0x277D383D8];
  *(v6 + 40) = sub_23875EA80();
  *(v6 + 48) = v8;
  v9 = *MEMORY[0x277D38390];
  *(v6 + 56) = *MEMORY[0x277D38390];
  *(v6 + 64) = a2;
  v10 = *MEMORY[0x277D384B8];
  *(v6 + 72) = 0xE600000000000000;
  *(v6 + 80) = v10;
  *(v6 + 88) = sub_238449A8C(v3);
  *(v6 + 96) = v11;
  v12 = v7;
  v13 = v9;
  v14 = v10;
  v15 = sub_23854B138(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v15;
  sub_2385C33E4(v5, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v20);

  v17 = *MEMORY[0x277D38548];
  v18 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v19 = sub_23875E910();

  [v18 subject:v17 sendEvent:v19];
}

void sub_2384FBD14(char a1, char a2, int a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763B60;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v6;
  *(inited + 56) = sub_23875EA50();
  *(inited + 64) = 0x63697373616C63;
  *(inited + 72) = 0xE700000000000000;
  v7 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_238763300;
  v9 = *MEMORY[0x277D383D8];
  *(v8 + 32) = *MEMORY[0x277D383D8];
  *(v8 + 40) = sub_23875EA80();
  *(v8 + 48) = v10;
  v11 = *MEMORY[0x277D38390];
  *(v8 + 56) = *MEMORY[0x277D38390];
  *(v8 + 64) = sub_23844B4DC(a1);
  *(v8 + 72) = v12;
  v13 = *MEMORY[0x277D384B8];
  *(v8 + 80) = *MEMORY[0x277D384B8];
  *(v8 + 88) = sub_238449A8C(a2);
  *(v8 + 96) = v14;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  v18 = sub_23854B138(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v18;
  sub_2385C33E4(v7, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v23);

  v20 = *MEMORY[0x277D38548];
  v21 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v22 = sub_23875E910();

  [v21 subject:v20 sendEvent:v22];
}

uint64_t sub_2384FBFBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2384FC024()
{
  result = qword_27DF09090;
  if (!qword_27DF09090)
  {
    type metadata accessor for PKAnalyticsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09090);
  }

  return result;
}

uint64_t OrderArchiveMonthContents.init(year:month:)@<X0>(__int16 a1@<W0>, __int16 a2@<W1>, _WORD *a3@<X8>)
{
  sub_2385F0128(a1, a2);
  sub_23875E500();
  type metadata accessor for OrderArchiveMonthContents(0);
  sub_238759C20();
  result = sub_23875C4F0();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t OrderArchiveMonthContents.body.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_23875D310();
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CD80, &qword_23876C440);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CD88, &qword_23876C448);
  v11 = *(v10 - 8);
  v24 = v10;
  v25 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v29 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CD90, &qword_23876C450);
  sub_2384FF390();
  sub_23875D9C0();
  v30 = sub_2384FDAA8();
  v31 = v14;
  v15 = sub_23843A3E8(&qword_27DF0CDB0, &qword_27DF0CD80, &qword_23876C440, MEMORY[0x277CDE5A0]);
  v18 = sub_2384397A8(v15, v16, v17);
  v19 = MEMORY[0x277D837D0];
  sub_23875DC70();

  (*(v7 + 8))(v9, v6);
  sub_23875D300();
  v30 = v6;
  v31 = v19;
  v32 = v15;
  v33 = v18;
  swift_getOpaqueTypeConformance2();
  v20 = v24;
  v21 = v26;
  sub_23875DF50();
  (*(v27 + 8))(v5, v21);
  return (*(v25 + 8))(v13, v20);
}

double sub_2384FC418()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE28, &qword_238776AA0);
  MEMORY[0x28223BE20](v0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for OrderArchiveMonthContents(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDB8, &qword_23876C4B8);
  sub_23875C500();
  swift_getKeyPath(byte_23876C650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDA8, &qword_23876C458);
  sub_23843A3E8(&qword_27DF0CE30, &qword_27DF0CE28, &qword_238776AA0, MEMORY[0x277CDD8D0]);
  sub_2384FF990(&qword_27DF0B110, sub_2384FF9D8, MEMORY[0x277D85378]);
  sub_23843A3E8(&qword_27DF0CDA0, &qword_27DF0CDA8, &qword_23876C458, &unk_238769740);
  sub_23875E370();

  return result;
}

id sub_2384FC648@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

void sub_2384FC684(void **a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [v3 managedObjectContext];
  if (v4)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE38, &qword_23876C678);
    swift_allocObject();
    v6 = v3;
    v7 = sub_2386261A8(v3, v5, sub_2384FC7AC, 0);

    *a2 = v7;
    a2[1] = 0;
    a2[2] = sub_2384FCC34;
    a2[3] = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2384FC7AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;

  return sub_2384FC7E4(v3, a2);
}

uint64_t sub_2384FC7E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for OrderArchiveMonthRow.ViewModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238758FA0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_238759BE0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v23 - v18);
  v23 = a1;
  sub_238759BF0();
  v20 = (*(v14 + 88))(v19, v13);
  if (v20 == *MEMORY[0x277CC7C50])
  {
    (*(v14 + 96))(v19, v13);
    v21 = *v19;
    sub_238757D90();
    if ((*(v10 + 88))(v12, v9) == *MEMORY[0x277CC76A8])
    {
      (*(v10 + 96))(v12, v9);
      sub_2384FE55C(v21, *v12, v8);

      sub_2384FF8BC(v8, v24, type metadata accessor for OrderArchiveMonthRow.ViewModel);
LABEL_6:
      type metadata accessor for OrderArchiveMonthContentItem(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if (v20 == *MEMORY[0x277CC7C58])
    {
      (*(v14 + 96))(v19, v13);
      sub_2386A2B1C(*v19, 0, v5);

      sub_2384FF8BC(v5, v24, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
      goto LABEL_6;
    }

    v25 = 0;
    v26 = 0xE000000000000000;
    sub_23875F470();
    MEMORY[0x23EE63650](0xD00000000000001BLL, 0x80000002387896F0);
    sub_238759BF0();
    sub_23875F510();
    (*(v14 + 8))(v16, v13);
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2384FCC34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v60 = a1;
  v65 = a2;
  v55 = type metadata accessor for ExtractedOrderArchiveMonthRow(0);
  MEMORY[0x28223BE20](v55);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE40, &qword_23876C680);
  v59 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v58 = &v51 - v4;
  v5 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE48, &qword_23876C688);
  MEMORY[0x28223BE20](v62);
  v63 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  MEMORY[0x28223BE20](v9 - 8);
  v57 = &v51 - v10;
  v56 = type metadata accessor for OrderNavigationDestination(0);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FetchedOrderDetailsDestination(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OrderArchiveMonthRow(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE50, &qword_23876C698);
  MEMORY[0x28223BE20](v61);
  v53 = &v51 - v19;
  v20 = type metadata accessor for OrderArchiveMonthRow.ViewModel(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OrderArchiveMonthContentItem(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2384FF854(v60, v25, type metadata accessor for OrderArchiveMonthContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2384FF8BC(v25, v7, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
    sub_2384FF854(v7, v3, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
    v26 = v55;
    v27 = &v3[*(v55 + 20)];
    v66 = 0;
    sub_23875E1A0();
    v28 = v68;
    *v27 = v67;
    *(v27 + 1) = v28;
    v29 = *(v26 + 24);
    *&v3[v29] = swift_getKeyPath(byte_23876C5D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v30 = v58;
    sub_2384FD5E4(*v7, v7[1]);
    sub_2384FF924(v3, type metadata accessor for ExtractedOrderArchiveMonthRow);
    v31 = v59;
    v32 = v64;
    (*(v59 + 16))(v63, v30, v64);
    swift_storeEnumTagMultiPayload();
    sub_2384FFA24();
    sub_23843A3E8(&qword_27DF0CE70, &qword_27DF0CE40, &qword_23876C680, MEMORY[0x277CDD938]);
    sub_23875D1B0();
    (*(v31 + 8))(v30, v32);
    v33 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel;
    v34 = v7;
  }

  else
  {
    sub_2384FF8BC(v25, v22, type metadata accessor for OrderArchiveMonthRow.ViewModel);
    v52 = v22;
    sub_2384FF854(v22, v18, type metadata accessor for OrderArchiveMonthRow.ViewModel);
    v35 = &v18[v16[5]];
    v66 = 0;
    sub_23875E1A0();
    v36 = v68;
    *v35 = v67;
    *(v35 + 1) = v36;
    v37 = &v18[v16[6]];
    v66 = 0;
    sub_23875E1A0();
    v38 = v68;
    *v37 = v67;
    *(v37 + 1) = v38;
    v39 = v16[7];
    *&v18[v39] = swift_getKeyPath(byte_23876C5D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v59 = sub_23875A710();
    v40 = *(v59 - 8);
    v58 = *(v40 + 16);
    v60 = v40 + 16;
    v41 = v15;
    (v58)(v15, v22, v59);
    v42 = &v15[*(v13 + 20)];
    *v42 = 0;
    *(v42 + 1) = 0;
    sub_2384FF854(v15, v12, type metadata accessor for FetchedOrderDetailsDestination);
    v43 = v56;
    swift_storeEnumTagMultiPayload();
    v44 = v57;
    sub_2384FF854(v12, v57, type metadata accessor for OrderNavigationDestination);
    v45 = (*(v54 + 56))(v44, 0, 1, v43);
    MEMORY[0x28223BE20](v45);
    *(&v51 - 2) = v18;
    sub_2384FF990(&qword_27DF0CE78, type metadata accessor for OrderArchiveMonthRow, &unk_23876C570);
    sub_2384FF990(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination, &protocol conformance descriptor for OrderNavigationDestination);
    v46 = v53;
    sub_23875C760();
    sub_2384FF924(v12, type metadata accessor for OrderNavigationDestination);
    sub_2384FF924(v41, type metadata accessor for FetchedOrderDetailsDestination);
    sub_2384FF924(v18, type metadata accessor for OrderArchiveMonthRow);
    v47 = v46 + *(v61 + 36);
    v48 = v52;
    (v58)(v47, v52, v59);
    v49 = v47 + *(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20);
    *v49 = swift_getKeyPath(a0_1);
    *(v49 + 8) = 0;
    sub_23843981C(v46, v63, &qword_27DF0CE50, &qword_23876C698);
    swift_storeEnumTagMultiPayload();
    sub_2384FFA24();
    sub_23843A3E8(&qword_27DF0CE70, &qword_27DF0CE40, &qword_23876C680, MEMORY[0x277CDD938]);
    sub_23875D1B0();
    sub_238439884(v46, &qword_27DF0CE50, &qword_23876C698);
    v33 = type metadata accessor for OrderArchiveMonthRow.ViewModel;
    v34 = v48;
  }

  return sub_2384FF924(v34, v33);
}