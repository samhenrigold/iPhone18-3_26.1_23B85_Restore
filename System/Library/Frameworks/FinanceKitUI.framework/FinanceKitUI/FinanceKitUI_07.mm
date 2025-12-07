unint64_t sub_2384C0F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0BB48;
  if (!qword_27DF0BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BB48);
  }

  return result;
}

unint64_t sub_2384C0FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0BB50;
  if (!qword_27DF0BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BB50);
  }

  return result;
}

unint64_t sub_2384C1020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0BB58;
  if (!qword_27DF0BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BB58);
  }

  return result;
}

uint64_t sub_2384C1074()
{
  v1 = (v0 + *(type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2387632F0;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_238448C58(v4, v5, v6);
    *(v4 + 32) = v2;
    *(v4 + 40) = v3;
    v7 = qword_2814F0880;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = qword_2814F1B90;
    v9 = sub_23875EA50();
    v10 = sub_23875EA50();
    v11 = sub_23875EA50();
    v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

    sub_23875EA80();
    v2 = sub_23875EAA0();
  }

  return v2;
}

uint64_t sub_2384C120C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = *(v3 + 16);
  v13(&v25 - v11, v1, v2, v10);
  v14 = (*(v3 + 88))(v12, v2);
  if (v14 != *MEMORY[0x277CC83B8])
  {
    goto LABEL_14;
  }

  (v13)(v5, v12, v2);
  (*(v3 + 96))(v5, v2);
  v15 = sub_2387580D0();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 88))(v5, v15);
  if (v17 != *MEMORY[0x277CC6DF0])
  {
    if (v17 == *MEMORY[0x277CC6DE0] || v17 == *MEMORY[0x277CC6DD8])
    {
LABEL_22:
      (*(v3 + 8))(v12, v2);
      return sub_23875E030();
    }

    if (v17 != *MEMORY[0x277CC6DF8] && v17 != *MEMORY[0x277CC6DE8])
    {
      v8 = v5;
      while (1)
      {
        (*(v16 + 8))(v8, v15);
        while (1)
        {
          v14 = sub_23875F520();
          __break(1u);
LABEL_14:
          if (v14 == *MEMORY[0x277CC83A8])
          {
            break;
          }

          if (v14 == *MEMORY[0x277CC83B0])
          {
            goto LABEL_24;
          }
        }

        (v13)(v8, v12, v2);
        (*(v3 + 96))(v8, v2);
        v15 = sub_2387581B0();
        v16 = *(v15 - 8);
        v20 = (*(v16 + 88))(v8, v15);
        if (v20 == *MEMORY[0x277CC6E40])
        {
          break;
        }

        if (v20 == *MEMORY[0x277CC6E38])
        {
          goto LABEL_22;
        }

        v21 = v20 == *MEMORY[0x277CC6E48] || v20 == *MEMORY[0x277CC6E20];
        if (v21 || v20 == *MEMORY[0x277CC6E60])
        {
          goto LABEL_22;
        }

        if (v20 == *MEMORY[0x277CC6E58] || v20 == *MEMORY[0x277CC6E30])
        {
          break;
        }

        v24 = v20 == *MEMORY[0x277CC6E28] || v20 == *MEMORY[0x277CC6E50];
        if (v24 || v20 == *MEMORY[0x277CC6E18])
        {
          goto LABEL_22;
        }
      }
    }
  }

LABEL_24:
  (*(v3 + 8))(v12, v2);
  return sub_23875E070();
}

uint64_t sub_2384C1648()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2387632F0;
  active = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0);
  v3 = (v0 + *(active + 24));
  v5 = *v3;
  v4 = v3[1];
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_238448C58(active, v6, v7);
  *(v1 + 32) = v5;
  *(v1 + 40) = v4;
  v8 = qword_2814F0880;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_2814F1B90;
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

  sub_23875EA80();
  v14 = sub_23875EAA0();

  return v14;
}

uint64_t sub_2384C17E0@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  active = type metadata accessor for OrderListActiveExtractedOrderRow(0);
  v49 = *(active - 8);
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](active - 8);
  v50 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BBD0, &qword_2387693C8);
  v54 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BBD8, &qword_2387693D0);
  v9 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v11 = (&v46 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BBE0, &qword_2387693D8);
  MEMORY[0x28223BE20](v12 - 8);
  v53 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BBE8, &qword_2387693E0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v52 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v46 - v21;
  *v22 = sub_23875CE60();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BBF0, &qword_2387693E8);
  sub_2384C1E50(v1, &v22[*(v23 + 44)]);
  v24 = sub_23875D000();
  v25 = *(v18 + 44);
  v56 = v22;
  v26 = &v22[v25];
  *v26 = v24;
  v26[1] = sub_23843480C;
  v26[2] = 0;
  v27 = *(v1 + *(type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0) + 44));
  if (*(v27 + 16))
  {
    v28 = 1;
  }

  else
  {
    *v11 = sub_23875E4B0();
    v11[1] = v29;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC18, &unk_238769420);
    sub_2384C2A84(v1, v11 + *(v30 + 44));
    sub_2384396E4(v11, v16, &qword_27DF0BBD8, &qword_2387693D0);
    v28 = 0;
  }

  (*(v9 + 56))(v16, v28, 1, v51);
  v57 = v27;
  swift_getKeyPath(" {E");
  v47 = v16;
  v31 = v50;
  sub_2384C6264(v1, v50, type metadata accessor for OrderListActiveExtractedOrderRow);
  v32 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v33 = swift_allocObject();
  sub_2384C5268(v31, v33 + v32, type metadata accessor for OrderListActiveExtractedOrderRow);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BBF8, &qword_238769410);
  sub_23843A3E8(&qword_27DF0BC00, &qword_27DF0BBF8, &qword_238769410, MEMORY[0x277D83980]);
  sub_23843A3E8(&qword_27DF0BC08, &qword_27DF0BBD8, &qword_2387693D0, MEMORY[0x277CE11A8]);
  sub_23875E370();
  v34 = v52;
  sub_23843981C(v56, v52, &qword_27DF0BBE8, &qword_2387693E0);
  v35 = v53;
  sub_23843981C(v16, v53, &qword_27DF0BBE0, &qword_2387693D8);
  v36 = v54;
  v37 = v8;
  v38 = *(v54 + 16);
  v39 = v48;
  v38(v5, v37, v48);
  v40 = v5;
  v41 = v39;
  v42 = v55;
  sub_23843981C(v34, v55, &qword_27DF0BBE8, &qword_2387693E0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC10, &qword_238769418);
  sub_23843981C(v35, v42 + *(v43 + 48), &qword_27DF0BBE0, &qword_2387693D8);
  v38((v42 + *(v43 + 64)), v40, v41);
  v44 = *(v36 + 8);
  v44(v37, v41);
  sub_238439884(v47, &qword_27DF0BBE0, &qword_2387693D8);
  sub_238439884(v56, &qword_27DF0BBE8, &qword_2387693E0);
  v44(v40, v41);
  sub_238439884(v35, &qword_27DF0BBE0, &qword_2387693D8);
  return sub_238439884(v34, &qword_27DF0BBE8, &qword_2387693E0);
}

double sub_2384C1E50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC60, &qword_238769490);
  MEMORY[0x28223BE20](v4);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v30[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC68, &qword_238769498);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v30[-v14];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v15 = sub_23875CE60();
  *(v15 + 1) = 0x4028000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC70, &qword_2387694A0);
  sub_2384C21BC(a1, &v15[*(v16 + 44)]);
  v17 = (a1 + *(type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0) + 48));
  v18 = v17[1];
  v33 = *v17;
  v34[0] = v18;
  *(v34 + 12) = *(v17 + 28);
  v19 = *(v34 + 12);
  *v9 = v33;
  v9[1] = v18;
  *(v9 + 28) = v19;
  v20 = type metadata accessor for ExtractedOrderActionsMenu(0);
  v21 = *(v20 + 20);
  *(v9 + v21) = swift_getKeyPath("x!{E");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v22 = v9 + *(v20 + 24);
  v32 = 0;
  sub_23846CF68(&v33, v30);
  sub_23875E1A0();
  v23 = v31;
  *v22 = v30[0];
  *(v22 + 1) = v23;
  v24 = sub_23875E080();
  KeyPath = swift_getKeyPath("P!{E");
  v26 = (v9 + *(v4 + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  sub_23843981C(v15, v12, &qword_27DF0BC68, &qword_238769498);
  sub_23843981C(v9, v6, &qword_27DF0BC60, &qword_238769490);
  sub_23843981C(v12, a2, &qword_27DF0BC68, &qword_238769498);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC78, &qword_238769508);
  v28 = a2 + *(v27 + 48);
  *v28 = 0x4028000000000000;
  *(v28 + 8) = 0;
  sub_23843981C(v6, a2 + *(v27 + 64), &qword_27DF0BC60, &qword_238769490);
  sub_238439884(v9, &qword_27DF0BC60, &qword_238769490);
  sub_238439884(v15, &qword_27DF0BC68, &qword_238769498);
  sub_238439884(v6, &qword_27DF0BC60, &qword_238769490);
  sub_238439884(v12, &qword_27DF0BC68, &qword_238769498);

  return result;
}

double sub_2384C21BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v40 = sub_23875DFD0();
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C70, &unk_238769510);
  MEMORY[0x28223BE20](v39);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  sub_23875ED50();
  v42 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  active = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0);
  v11 = *(active + 32);
  v12 = (a1 + *(active + 28));
  v13 = *v12;
  v14 = v12[1];
  v16 = *(a1 + v11);
  v15 = *(a1 + v11 + 8);
  *&v46 = 0;
  BYTE8(v46) = -1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B30, &unk_238764470);
  sub_23875E1A0();
  v17 = v49;
  v18 = *v50;
  *(v9 + 4) = v48;
  v9[40] = v17;
  *(v9 + 6) = v18;
  *&v46 = 0;
  BYTE8(v46) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B40, &qword_238769520);
  sub_23875E1A0();
  v19 = v49;
  v20 = *v50;
  *(v9 + 7) = v48;
  v9[64] = v19;
  *(v9 + 9) = v20;
  v21 = type metadata accessor for ExtractedOrderMerchantIcon(0);
  v38 = a1;
  v22 = *(v21 + 32);
  *&v9[v22] = swift_getKeyPath("\b!{E", v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *v9 = v13;
  *(v9 + 1) = v14;
  *(v9 + 2) = v16;
  *(v9 + 3) = v15;
  (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v40);
  v23 = sub_23875E090();
  KeyPath = swift_getKeyPath(byte_238769558);
  v25 = &v9[*(v39 + 36)];
  v26 = type metadata accessor for OrderImageStyleModifier(0);
  *&v25[*(v26 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v25[*(v26 + 40)] = swift_getKeyPath("\b!{E");
  swift_storeEnumTagMultiPayload();
  *v25 = xmmword_2387692C0;
  *(v25 + 2) = 0;
  v25[24] = 1;
  *(v25 + 4) = v23;
  v25[40] = 0;
  v27 = sub_23875D030();
  LOBYTE(v48) = 0;
  sub_2384C26C0(v45);
  *&v44[7] = v45[0];
  *&v44[23] = v45[1];
  *&v44[39] = v45[2];
  *&v44[55] = v45[3];
  v28 = v48;
  v29 = v43;
  sub_23843981C(v9, v43, &qword_27DF09C70, &unk_238769510);
  v30 = v41;
  sub_23843981C(v29, v41, &qword_27DF09C70, &unk_238769510);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC80, &qword_238769588) + 48);
  *&v46 = v27;
  *(&v46 + 1) = 0x4010000000000000;
  v47[0] = v28;
  *&v47[1] = *v44;
  *&v47[17] = *&v44[16];
  *&v47[33] = *&v44[32];
  *&v47[49] = *&v44[48];
  v32 = *&v44[63];
  *&v47[64] = *&v44[63];
  v33 = *v47;
  *v31 = v46;
  *(v31 + 16) = v33;
  v34 = *&v47[16];
  v35 = *&v47[32];
  v36 = *&v47[48];
  *(v31 + 80) = v32;
  *(v31 + 48) = v35;
  *(v31 + 64) = v36;
  *(v31 + 32) = v34;
  sub_23843981C(&v46, &v48, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v9, &qword_27DF09C70, &unk_238769510);
  v48 = v27;
  v49 = 0x4010000000000000;
  v50[0] = v28;
  v51 = *&v44[16];
  v52 = *&v44[32];
  *v53 = *&v44[48];
  *&v53[15] = *&v44[63];
  *&v50[1] = *v44;
  sub_238439884(&v48, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v29, &qword_27DF09C70, &unk_238769510);

  return result;
}

uint64_t sub_2384C26C0@<X0>(uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  active = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0);
  sub_2384397A8(active, v4, v5);

  v6 = sub_23875DAA0();
  v8 = v7;
  v10 = v9;
  sub_23875D7F0();
  v11 = sub_23875DA60();
  v13 = v12;
  v15 = v14;

  sub_2384397FC(v6, v8, v10 & 1);

  sub_23875D890();
  v16 = sub_23875D9E0();
  v42 = v17;
  v43 = v16;
  v41 = v18;
  v44 = v19;
  sub_2384397FC(v11, v13, v15 & 1);

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v20 = qword_2814F1B90;
  v21 = sub_23875EA50();
  v22 = sub_23875EA50();
  v23 = sub_23875EA50();
  v24 = [v20 localizedStringForKey:v21 value:v22 table:v23];

  sub_23875EA80();
  v25 = sub_23875DAA0();
  v27 = v26;
  LOBYTE(v22) = v28;
  sub_23875D970();
  v29 = sub_23875DA60();
  v31 = v30;
  v33 = v32;

  sub_2384397FC(v25, v27, v22 & 1);

  sub_23875D440();
  v34 = sub_23875DA20();
  v36 = v35;
  LOBYTE(v22) = v37;
  v39 = v38;
  sub_2384397FC(v29, v31, v33 & 1);

  *a2 = v43;
  *(a2 + 8) = v42;
  *(a2 + 16) = v41 & 1;
  *(a2 + 24) = v44;
  *(a2 + 32) = v34;
  *(a2 + 40) = v36;
  *(a2 + 48) = v22 & 1;
  *(a2 + 56) = v39;
  sub_23843980C(v43, v42, v41 & 1);

  sub_23843980C(v34, v36, v22 & 1);

  sub_2384397FC(v34, v36, v22 & 1);

  sub_2384397FC(v43, v42, v41 & 1);
}

double sub_2384C2A84@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v27 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC20, &qword_238769430);
  MEMORY[0x28223BE20](v25);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for OrderNavigationDestination(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23875ED50();
  v28 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = v26;
  v14 = v26[1];
  *v12 = *v26;
  v12[1] = v14;
  v12[2] = 0;
  v12[3] = 0;
  swift_storeEnumTagMultiPayload();
  sub_2384C6264(v12, v4, type metadata accessor for OrderNavigationDestination);
  (*(v10 + 56))(v4, 0, 1, v9);
  sub_2384C6374(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination, &protocol conformance descriptor for OrderNavigationDestination);

  sub_23875C760();
  *&v8[*(v25 + 36)] = 0;
  v25 = sub_23875D030();
  v31 = 0;
  sub_2384C2F90(v13, &v41);
  v34 = v42[1];
  v35 = v42[2];
  v36[0] = v42[3];
  *(v36 + 15) = *(&v42[3] + 15);
  v32 = v41;
  v33 = v42[0];
  *(v38 + 15) = *(&v42[3] + 15);
  v37[2] = v42[1];
  v37[3] = v42[2];
  v38[0] = v42[3];
  v37[0] = v41;
  v37[1] = v42[0];
  sub_23843981C(&v32, &v39, &qword_27DF0BC28, &qword_238769438);
  sub_238439884(v37, &qword_27DF0BC28, &qword_238769438);
  *(&v30[2] + 7) = v34;
  *(&v30[3] + 7) = v35;
  *(&v30[4] + 7) = v36[0];
  *(&v30[5] + 6) = *(v36 + 15);
  *(v30 + 7) = v32;
  *(&v30[1] + 7) = v33;
  v15 = v31;
  v16 = v29;
  sub_23843981C(v8, v29, &qword_27DF0BC20, &qword_238769430);
  v17 = v27;
  sub_23843981C(v16, v27, &qword_27DF0BC20, &qword_238769430);
  v18 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC30, &qword_238769440) + 48));
  v19 = v25;
  *&v39 = v25;
  *(&v39 + 1) = 0x4010000000000000;
  LOBYTE(v40[0]) = v15;
  *(v40 + 1) = v30[0];
  *(&v40[1] + 1) = v30[1];
  *(&v40[4] + 11) = *(&v30[4] + 10);
  *(&v40[4] + 1) = v30[4];
  *(&v40[3] + 1) = v30[3];
  *(&v40[2] + 1) = v30[2];
  v20 = v40[0];
  *v18 = v39;
  v18[1] = v20;
  v21 = v40[1];
  v22 = v40[2];
  *(v18 + 91) = *(&v40[4] + 11);
  v23 = v40[4];
  v18[4] = v40[3];
  v18[5] = v23;
  v18[2] = v21;
  v18[3] = v22;
  sub_23843981C(&v39, &v41, &qword_27DF0BC38, &qword_238769448);
  sub_238439884(v8, &qword_27DF0BC20, &qword_238769430);
  sub_2384C6314(v12, type metadata accessor for OrderNavigationDestination);
  *(&v42[2] + 1) = v30[2];
  *(&v42[3] + 1) = v30[3];
  *(&v42[4] + 1) = v30[4];
  *(&v42[4] + 11) = *(&v30[4] + 10);
  *(v42 + 1) = v30[0];
  *&v41 = v19;
  *(&v41 + 1) = 0x4010000000000000;
  LOBYTE(v42[0]) = v15;
  *(&v42[1] + 1) = v30[1];
  sub_238439884(&v41, &qword_27DF0BC38, &qword_238769448);
  sub_238439884(v16, &qword_27DF0BC20, &qword_238769430);

  return result;
}

uint64_t sub_2384C2F90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  v65 = sub_23875C880();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v57[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v57[-v6];
  sub_23875ED50();
  v66 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  active = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0);
  (*(v5 + 16))(v7, a1 + *(active + 40), v4);
  sub_2384C62CC(0, v9, v10, v11);
  sub_2384C6374(&qword_27DF0BC48, sub_2384C62CC, &unk_238777FD8);
  sub_23843A3E8(&qword_27DF0BC50, &qword_27DF0BB60, &unk_2387692D0, MEMORY[0x277CC83C0]);
  v12 = sub_23875DA80();
  v14 = v13;
  v16 = v15;
  sub_23875D8F0();
  v17 = sub_23875DA60();
  v19 = v18;
  v21 = v20;

  sub_2384397FC(v12, v14, v16 & 1);

  sub_23875D890();
  v22 = sub_23875D9E0();
  v24 = v23;
  v26 = v25;
  sub_2384397FC(v17, v19, v21 & 1);

  LODWORD(v71) = sub_23875D420();
  v60 = sub_23875DA20();
  v59 = v27;
  v58 = v28;
  v61 = v29;
  sub_2384397FC(v22, v24, v26 & 1);

  v71 = sub_2384C1648();
  v72 = v30;
  sub_2384397A8(v71, v30, v31);
  v32 = sub_23875DAA0();
  v34 = v33;
  v36 = v35;
  sub_23875D7F0();
  v37 = sub_23875DA60();
  v39 = v38;
  v41 = v40;
  v43 = v42;

  sub_2384397FC(v32, v34, v36 & 1);

  type metadata accessor for OrderListActiveExtractedOrderRow(0);
  v44 = v63;
  sub_2384D5138(v63);
  LOBYTE(v32) = sub_23875C860();
  (*(v64 + 8))(v44, v65);
  if (v32)
  {
    v45 = 3;
  }

  else
  {
    v45 = 2;
  }

  KeyPath = swift_getKeyPath(byte_238769450);
  v82 = v41 & 1;
  v80 = 0;
  v47 = v58 & 1;
  v67[56] = v58 & 1;
  *&v68 = v37;
  *(&v68 + 1) = v39;
  LOBYTE(v69) = v41 & 1;
  *(&v69 + 1) = *v81;
  DWORD1(v69) = *&v81[3];
  *(&v69 + 1) = v43;
  *v70 = KeyPath;
  *&v70[8] = v45;
  v70[16] = 0;
  *&v70[17] = 256;
  v48 = v60;
  v49 = v62;
  v50 = v59;
  *v62 = v60;
  v49[1] = v50;
  *(v49 + 16) = v47;
  v49[3] = v61;
  v51 = v68;
  v52 = v69;
  v53 = *v70;
  *(v49 + 79) = *&v70[15];
  *(v49 + 3) = v52;
  *(v49 + 4) = v53;
  *(v49 + 2) = v51;
  v71 = v37;
  v72 = v39;
  v73 = v41 & 1;
  *&v74[3] = *&v81[3];
  *v74 = *v81;
  v75 = v43;
  v76 = KeyPath;
  v77 = v45;
  v78 = 0;
  v79 = 256;
  v54 = v48;
  v55 = v50;
  sub_23843980C(v48, v50, v47);

  sub_23843981C(&v68, v67, &qword_27DF0BC58, &unk_238769480);
  sub_238439884(&v71, &qword_27DF0BC58, &unk_238769480);
  sub_2384397FC(v54, v55, v47);
}

double sub_2384C351C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_23875E4B0();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC18, &unk_238769420);
  sub_2384C35F0(a2, a1, a3 + *(v7 + 44));

  return result;
}

double sub_2384C35F0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v34 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v30 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC20, &qword_238769430);
  MEMORY[0x28223BE20](v30);
  v36 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v33 = &v30 - v8;
  v9 = type metadata accessor for OrderNavigationDestination(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23875ED50();
  v35 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *a1;
  v13 = a1[1];
  v15 = (v32 + *(type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment(0) + 20));
  v16 = *v15;
  v17 = v15[1];
  *v12 = v14;
  v12[1] = v13;
  v12[2] = v16;
  v12[3] = v17;
  swift_storeEnumTagMultiPayload();
  v18 = v31;
  sub_2384C6264(v12, v31, type metadata accessor for OrderNavigationDestination);
  (*(v10 + 56))(v18, 0, 1, v9);
  sub_2384C6374(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination, &protocol conformance descriptor for OrderNavigationDestination);

  v19 = v33;
  sub_23875C760();
  *(v19 + *(v30 + 36)) = 0;
  v31 = sub_23875D030();
  v38 = 0;
  sub_2384C3BC4(a1, &v48);
  v41 = v49[1];
  v42 = v49[2];
  v43[0] = v49[3];
  *(v43 + 15) = *(&v49[3] + 15);
  v39 = v48;
  v40 = v49[0];
  *(v45 + 15) = *(&v49[3] + 15);
  v44[2] = v49[1];
  v44[3] = v49[2];
  v45[0] = v49[3];
  v44[0] = v48;
  v44[1] = v49[0];
  sub_23843981C(&v39, &v46, &qword_27DF0BC28, &qword_238769438);
  sub_238439884(v44, &qword_27DF0BC28, &qword_238769438);
  *(&v37[2] + 7) = v41;
  *(&v37[3] + 7) = v42;
  *(&v37[4] + 7) = v43[0];
  *(&v37[5] + 6) = *(v43 + 15);
  *(v37 + 7) = v39;
  *(&v37[1] + 7) = v40;
  v20 = v38;
  v21 = v36;
  sub_23843981C(v19, v36, &qword_27DF0BC20, &qword_238769430);
  v22 = v34;
  sub_23843981C(v21, v34, &qword_27DF0BC20, &qword_238769430);
  v23 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC30, &qword_238769440) + 48));
  v24 = v31;
  *&v46 = v31;
  *(&v46 + 1) = 0x4010000000000000;
  LOBYTE(v47[0]) = v20;
  *(v47 + 1) = v37[0];
  *(&v47[1] + 1) = v37[1];
  *(&v47[4] + 11) = *(&v37[4] + 10);
  *(&v47[4] + 1) = v37[4];
  *(&v47[3] + 1) = v37[3];
  *(&v47[2] + 1) = v37[2];
  v25 = v47[0];
  *v23 = v46;
  v23[1] = v25;
  v26 = v47[1];
  v27 = v47[2];
  *(v23 + 91) = *(&v47[4] + 11);
  v28 = v47[4];
  v23[4] = v47[3];
  v23[5] = v28;
  v23[2] = v26;
  v23[3] = v27;
  sub_23843981C(&v46, &v48, &qword_27DF0BC38, &qword_238769448);
  sub_238439884(v19, &qword_27DF0BC20, &qword_238769430);
  sub_2384C6314(v12, type metadata accessor for OrderNavigationDestination);
  *(&v49[2] + 1) = v37[2];
  *(&v49[3] + 1) = v37[3];
  *(&v49[4] + 1) = v37[4];
  *(&v49[4] + 11) = *(&v37[4] + 10);
  *(v49 + 1) = v37[0];
  *&v48 = v24;
  *(&v48 + 1) = 0x4010000000000000;
  LOBYTE(v49[0]) = v20;
  *(&v49[1] + 1) = v37[1];
  sub_238439884(&v48, &qword_27DF0BC38, &qword_238769448);
  sub_238439884(v21, &qword_27DF0BC20, &qword_238769430);

  return result;
}

double sub_2384C3B30(uint64_t a1)
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

uint64_t sub_2384C3BC4@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v66 = a2;
  v65 = a3;
  v67 = sub_23875C880();
  v64 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v63 = &v56[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_23875BE40();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23875BE20();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23875BD20();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = _s19ShippingFulfillmentO15StatusFormatterVMa(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23875ED50();
  v62 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_2384C6374(&qword_27DF09310, _s19ShippingFulfillmentO15StatusFormatterVMa, &unk_238777678);
  sub_238759950();
  v10 = sub_2384C6314(v9, _s19ShippingFulfillmentO15StatusFormatterVMa);
  v58 = sub_2384397A8(v10, v11, v12);
  v13 = sub_23875DAA0();
  v15 = v14;
  v17 = v16;

  sub_23875D8F0();
  v18 = sub_23875DA60();
  v20 = v19;
  v22 = v21;

  sub_2384397FC(v13, v15, v17 & 1);

  sub_23875D890();
  v23 = sub_23875D9E0();
  v25 = v24;
  v27 = v26;
  sub_2384397FC(v18, v20, v22 & 1);

  v72 = sub_2384C120C();
  v60 = sub_23875DA20();
  v59 = v28;
  v57 = v29;
  v61 = v30;
  sub_2384397FC(v23, v25, v27 & 1);

  v31 = sub_2384C1074();
  if (!v32)
  {
    v31 = sub_2384C1648();
  }

  v72 = v31;
  v73 = v32;
  v33 = sub_23875DAA0();
  v35 = v34;
  v37 = v36;
  sub_23875D7F0();
  v38 = sub_23875DA60();
  v40 = v39;
  v42 = v41;
  v44 = v43;

  sub_2384397FC(v33, v35, v37 & 1);

  type metadata accessor for OrderListActiveExtractedOrderRow(0);
  v45 = v63;
  sub_2384D5138(v63);
  LOBYTE(v33) = sub_23875C860();
  (*(v64 + 8))(v45, v67);
  if (v33)
  {
    v46 = 3;
  }

  else
  {
    v46 = 2;
  }

  KeyPath = swift_getKeyPath(byte_238769450);
  v83 = v42 & 1;
  v81 = 0;
  v48 = v57 & 1;
  v68[56] = v57 & 1;
  *&v69 = v38;
  *(&v69 + 1) = v40;
  LOBYTE(v70) = v42 & 1;
  *(&v70 + 1) = *v82;
  DWORD1(v70) = *&v82[3];
  *(&v70 + 1) = v44;
  *v71 = KeyPath;
  *&v71[8] = v46;
  v71[16] = 0;
  *&v71[17] = 256;
  v49 = v65;
  v50 = v60;
  v51 = v59;
  *v65 = v60;
  v49[1] = v51;
  *(v49 + 16) = v48;
  v49[3] = v61;
  v52 = v69;
  v53 = v70;
  v54 = *v71;
  *(v49 + 79) = *&v71[15];
  *(v49 + 3) = v53;
  *(v49 + 4) = v54;
  *(v49 + 2) = v52;
  v72 = v38;
  v73 = v40;
  v74 = v42 & 1;
  *&v75[3] = *&v82[3];
  *v75 = *v82;
  v76 = v44;
  v77 = KeyPath;
  v78 = v46;
  v79 = 0;
  v80 = 256;
  sub_23843980C(v50, v51, v48);

  sub_23843981C(&v69, v68, &qword_27DF0BC58, &unk_238769480);
  sub_238439884(&v72, &qword_27DF0BC58, &unk_238769480);
  sub_2384397FC(v50, v51, v48);
}

uint64_t sub_2384C4234@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v152 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment(0);
  v148 = *(active - 8);
  v149 = active;
  MEMORY[0x28223BE20](active);
  v8 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2387581B0();
  v145 = *(v9 - 8);
  v146 = v9;
  MEMORY[0x28223BE20](v9);
  v126 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_23875BC40();
  v133 = *(v134 - 1);
  MEMORY[0x28223BE20](v134);
  v128 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v127 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v136 = &v125 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB68, &unk_2387774E0);
  MEMORY[0x28223BE20](v15 - 8);
  v129 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v147 = &v125 - v18;
  v135 = sub_2387580D0();
  v139 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v131 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v144 = &v125 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v22 - 8);
  v130 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v140 = &v125 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v125 - v27;
  MEMORY[0x28223BE20](v29);
  v141 = &v125 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AF8, &qword_238764438);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v125 - v32;
  v34 = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0);
  v35 = v34[9];
  v36 = sub_238757F50();
  v37 = *(*(v36 - 8) + 56);
  v132 = v35;
  v37(&a2[v35], 1, 1, v36);
  v38 = [a1 orderContent];
  v39 = [a1 trackedOrderIdentifier];
  v40 = sub_23875EA80();
  v42 = v41;

  *a2 = v40;
  *(a2 + 1) = v42;
  v43 = [v38 orderNumber];
  v44 = sub_23875EA80();
  v46 = v45;

  v47 = &a2[v34[6]];
  *v47 = v44;
  v47[1] = v46;
  v48 = [v38 orderUpdateDate];
  sub_23875BBE0();

  v151 = v38;
  v49 = [v38 merchantDisplayName];
  v50 = sub_23875EA80();
  v52 = v51;

  v142 = v34;
  v143 = a2;
  v53 = &a2[v34[7]];
  *v53 = v50;
  v53[1] = v52;
  v150 = a1;
  v54 = [a1 merchantEmailAddress];
  if (v54)
  {
    v55 = v54;
    v56 = sub_23875EA80();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  v59 = v143;
  v60 = (v143 + v142[8]);
  *v60 = v56;
  v60[1] = v58;
  sub_23875A600();
  sub_2384C51F8(v33, v59 + v132);
  v61 = v150;
  v62 = [v150 isMarkedAsComplete];
  v63 = [v61 isMarkedAsCompleteModificationDate];
  v64 = v134;
  if (v63)
  {
    v65 = v63;
    sub_23875BBE0();

    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v144;
  v68 = v133;
  (*(v133 + 56))(v28, v66, 1, v64);
  v69 = v141;
  sub_2384396E4(v28, v141, &qword_27DF12E00, &unk_238763FC0);
  sub_23875A5B0();
  v70 = v147;
  (*(v145 + 56))(v147, 1, 1, v146);
  v71 = v140;
  sub_23843981C(v69, v140, &qword_27DF12E00, &unk_238763FC0);
  v72 = v135;
  if (v62)
  {
    v73 = v130;
    sub_23843981C(v71, v130, &qword_27DF12E00, &unk_238763FC0);
    if ((*(v68 + 48))(v73, 1, v64) != 1)
    {
      sub_238439884(v71, &qword_27DF12E00, &unk_238763FC0);
      sub_238439884(v70, &qword_27DF0BB68, &unk_2387774E0);
      (*(v139 + 8))(v67, v72);
      v87 = *(v68 + 32);
      v88 = v128;
      v87(v128, v73, v64);
      v78 = v136;
      v87(v136, v88, v64);
      v79 = MEMORY[0x277CC83B0];
      goto LABEL_17;
    }

    sub_238439884(v73, &qword_27DF12E00, &unk_238763FC0);
  }

  v74 = v139;
  v75 = *(v139 + 104);
  v76 = v131;
  LODWORD(v134) = *MEMORY[0x277CC6DF8];
  v75(v131);
  sub_2384C6374(&qword_27DF0BB70, MEMORY[0x277CC6E00], MEMORY[0x277CC6E10]);
  sub_23875EC40();
  sub_23875EC40();
  v77 = *(v74 + 8);
  v77(v76, v72);
  if (v154 == v153)
  {
    sub_238439884(v71, &qword_27DF12E00, &unk_238763FC0);
    sub_238439884(v147, &qword_27DF0BB68, &unk_2387774E0);
    v77(v67, v72);
    v78 = v136;
    (v75)(v136, v134, v72);
    v79 = MEMORY[0x277CC83B8];
LABEL_17:
    v91 = v137;
    v92 = v138;
    (*(v137 + 104))(v78, *v79, v138);
    goto LABEL_18;
  }

  v134 = v75;
  v80 = v147;
  v81 = v129;
  sub_23843981C(v147, v129, &qword_27DF0BB68, &unk_2387774E0);
  v82 = v145;
  v83 = v146;
  if ((*(v145 + 48))(v81, 1, v146) != 1)
  {
    sub_238439884(v140, &qword_27DF12E00, &unk_238763FC0);
    sub_238439884(v80, &qword_27DF0BB68, &unk_2387774E0);
    v77(v144, v72);
    v89 = *(v82 + 32);
    v90 = v126;
    v89(v126, v81, v83);
    v78 = v136;
    v89(v136, v90, v83);
    v79 = MEMORY[0x277CC83A8];
    goto LABEL_17;
  }

  sub_238439884(v81, &qword_27DF0BB68, &unk_2387774E0);
  v84 = v131;
  (v134)(v131, *MEMORY[0x277CC6DF0], v72);
  v85 = v144;
  sub_23875EC40();
  sub_23875EC40();
  v77(v84, v72);
  sub_238439884(v140, &qword_27DF12E00, &unk_238763FC0);
  sub_238439884(v80, &qword_27DF0BB68, &unk_2387774E0);
  if (v154 == v153)
  {
    v77(v85, v72);
    v86 = v127;
    (v134)(v127, *MEMORY[0x277CC6DE0], v72);
  }

  else
  {
    v86 = v127;
    (*(v139 + 32))(v127, v85, v72);
  }

  v92 = v138;
  v91 = v137;
  (*(v137 + 104))(v86, *MEMORY[0x277CC83B8], v138);
  v78 = v136;
  (*(v91 + 32))(v136, v86, v92);
LABEL_18:
  (*(v91 + 32))(v143 + v142[10], v78, v92);
  v93 = sub_23875A5E0();
  v94 = v93 >> 62;
  if (v93 >> 62)
  {
    goto LABEL_42;
  }

  v95 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v95)
  {
    while (1)
    {
      v96 = v93;
      *&v154 = MEMORY[0x277D84F90];
      result = sub_2385FEB08(0, v95 & ~(v95 >> 63), 0);
      if (v95 < 0)
      {
        break;
      }

      v98 = v154;
      if (v94)
      {
        v93 = sub_23875F3A0();
        v99 = v96;
      }

      else
      {
        v99 = v96;
        v93 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v94 = 0;
      v144 = (v99 & 0xC000000000000001);
      v145 = v95;
      v146 = v99;
      v147 = v93 & ~(v93 >> 63);
      v100 = v149;
      while (v147 != v94)
      {
        if (v144)
        {
          v101 = MEMORY[0x23EE63F70](v94);
        }

        else
        {
          v101 = *(v99 + 8 * v94 + 32);
        }

        v102 = v101;
        v103 = v150;
        v104 = v102;
        sub_2386006B8(v103, v104, v152);
        v105 = [v104 trackingNumber];
        if (v105)
        {
          v106 = v105;
          v107 = sub_23875EA80();
          v109 = v108;
        }

        else
        {
          v107 = 0;
          v109 = 0;
        }

        v110 = [v104 carrierName];
        if (v110)
        {
          v111 = v110;
          v112 = sub_23875EA80();
          v114 = v113;
        }

        else
        {
          v112 = 0;
          v114 = 0;
        }

        sub_23875A5C0();

        sub_2384C5268(v152, v8, _s19ShippingFulfillmentO12StatusValuesVMa);
        v115 = &v8[v100[5]];
        *v115 = v107;
        v115[1] = v109;
        v116 = &v8[v100[6]];
        *v116 = v112;
        v116[1] = v114;
        *&v8[v100[8]] = v94;
        *&v154 = v98;
        v118 = *(v98 + 16);
        v117 = *(v98 + 24);
        if (v118 >= v117 >> 1)
        {
          sub_2385FEB08((v117 > 1), v118 + 1, 1);
          v98 = v154;
        }

        ++v94;
        *(v98 + 16) = v118 + 1;
        v93 = sub_2384C5268(v8, v98 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v118, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment);
        v99 = v146;
        if (v145 == v94)
        {

          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_42:
      v119 = v93;
      v95 = sub_23875F3A0();
      v93 = v119;
      if (!v95)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_43:

    v98 = MEMORY[0x277D84F90];
LABEL_44:
    v121 = v142;
    v120 = v143;
    *(v143 + v142[11]) = v98;
    v122 = v150;
    sub_23846C8C4(v150, 0, &v154);

    result = sub_238439884(v141, &qword_27DF12E00, &unk_238763FC0);
    v123 = (v120 + v121[12]);
    v124 = *v155;
    *v123 = v154;
    v123[1] = v124;
    *(v123 + 28) = *&v155[12];
  }

  return result;
}

uint64_t sub_2384C51F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AF8, &qword_238764438);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384C5268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384C52D0(void *a1, void *a2)
{
  v4 = sub_238757F50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AF8, &qword_238764438);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BD0, &qword_2387695A0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  if (*a1 != *a2 && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_27;
  }

  active = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0);
  if ((sub_23875BBD0() & 1) == 0)
  {
    goto LABEL_27;
  }

  v15 = active[6];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  if ((v16 != *v18 || v17 != v18[1]) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_27;
  }

  v19 = active[7];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  if ((v20 != *v22 || v21 != v22[1]) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_27;
  }

  v23 = active[8];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27 || (*v24 != *v26 || v25 != v27) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v27)
  {
    goto LABEL_27;
  }

  v28 = active[9];
  v29 = *(v11 + 48);
  sub_23843981C(a1 + v28, v13, &qword_27DF09AF8, &qword_238764438);
  v40 = v29;
  sub_23843981C(a2 + v28, &v13[v29], &qword_27DF09AF8, &qword_238764438);
  v30 = *(v5 + 48);
  if (v30(v13, 1, v4) != 1)
  {
    sub_23843981C(v13, v10, &qword_27DF09AF8, &qword_238764438);
    if (v30(&v13[v40], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_22;
    }

    (*(v5 + 32))(v7, &v13[v40], v4);
    sub_2384C6374(&qword_27DF09BD8, MEMORY[0x277CC6C90], MEMORY[0x277CC6C98]);
    v31 = sub_23875E9E0();
    v32 = *(v5 + 8);
    v32(v7, v4);
    v32(v10, v4);
    sub_238439884(v13, &qword_27DF09AF8, &qword_238764438);
    if (v31)
    {
      goto LABEL_24;
    }

LABEL_27:
    v37 = 0;
    return v37 & 1;
  }

  if (v30(&v13[v40], 1, v4) != 1)
  {
LABEL_22:
    sub_238439884(v13, &qword_27DF09BD0, &qword_2387695A0);
    goto LABEL_27;
  }

  sub_238439884(v13, &qword_27DF09AF8, &qword_238764438);
LABEL_24:
  sub_2387580D0();
  sub_2387581B0();
  sub_2384C6374(&qword_27DF0BBA8, MEMORY[0x277CC6E00], MEMORY[0x277CC6E08]);
  sub_2384C6374(&qword_27DF0BBB0, MEMORY[0x277CC6E68], MEMORY[0x277CC6E70]);
  if ((sub_23875AC60() & 1) == 0 || (sub_23851968C(*(a1 + active[11]), *(a2 + active[11])) & 1) == 0)
  {
    goto LABEL_27;
  }

  v33 = active[12];
  v34 = *(a1 + v33 + 16);
  v41 = *(a1 + v33);
  v42[0] = v34;
  *(v42 + 12) = *(a1 + v33 + 28);
  v35 = (a2 + v33);
  v36 = v35[1];
  v43 = *v35;
  v44[0] = v36;
  *(v44 + 12) = *(v35 + 28);
  v37 = sub_23846C7F4(&v41, &v43);
  return v37 & 1;
}

BOOL sub_2384C57F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_238758090();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC88, &qword_23876D250);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  if ((sub_238601FBC(a1, a2) & 1) == 0)
  {
    return 0;
  }

  active = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment(0);
  v15 = active[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = *v16 == *v18 && v17 == v19;
    if (!v20 && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v21 = active[6];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25 || (*v22 != *v24 || v23 != v25) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v26 = active[7];
  v27 = *(v11 + 48);
  sub_23843981C(a1 + v26, v13, &unk_27DF0B080, &unk_2387662A0);
  v33 = v27;
  sub_23843981C(a2 + v26, &v13[v27], &unk_27DF0B080, &unk_2387662A0);
  v28 = *(v5 + 48);
  if (v28(v13, 1, v4) == 1)
  {
    if (v28(&v13[v33], 1, v4) == 1)
    {
      sub_238439884(v13, &unk_27DF0B080, &unk_2387662A0);
      return *(a1 + active[8]) == *(a2 + active[8]);
    }

    goto LABEL_23;
  }

  sub_23843981C(v13, v10, &unk_27DF0B080, &unk_2387662A0);
  if (v28(&v13[v33], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_23:
    sub_238439884(v13, &qword_27DF0BC88, &qword_23876D250);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v33], v4);
  sub_2384C6374(&qword_27DF0BC90, MEMORY[0x277CC6DC0], MEMORY[0x277CC6DD0]);
  v30 = sub_23875E9E0();
  v31 = *(v5 + 8);
  v31(v7, v4);
  v31(v10, v4);
  sub_238439884(v13, &unk_27DF0B080, &unk_2387662A0);
  if (v30)
  {
    return *(a1 + active[8]) == *(a2 + active[8]);
  }

  return 0;
}

void sub_2384C5C1C(uint64_t a1)
{
  _s19ShippingFulfillmentO12StatusValuesVMa(319);
  if (v1 <= 0x3F)
  {
    sub_2384C6178(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2384C5EA8(319, &qword_27DF0BB88, MEMORY[0x277CC6DC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2384C5D3C(uint64_t a1)
{
  v1 = MEMORY[0x277D837D0];
  sub_23875BC40();
  if (v2 <= 0x3F)
  {
    sub_2384C6178(319, &qword_2814F08C0, v1, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      sub_2384C5EA8(319, &qword_27DF09B10, MEMORY[0x277CC6C90], MEMORY[0x277D83D88]);
      if (v4 <= 0x3F)
      {
        sub_2384C5F0C(319);
        if (v5 <= 0x3F)
        {
          sub_2384C5EA8(319, &qword_27DF0BBB8, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment, MEMORY[0x277D83940]);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2384C5EA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2384C5F0C(uint64_t a1)
{
  if (!qword_27DF0BBA0)
  {
    sub_2387580D0();
    sub_2387581B0();
    sub_2384C6374(&qword_27DF0BBA8, MEMORY[0x277CC6E00], MEMORY[0x277CC6E08]);
    sub_2384C6374(&qword_27DF0BBB0, MEMORY[0x277CC6E68], MEMORY[0x277CC6E70]);
    v1 = sub_23875ACC0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0BBA0);
    }
  }
}

void sub_2384C6040(uint64_t a1)
{
  type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2384C6178(319, &qword_27DF0A0B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_2384C5EA8(319, &qword_2814F09B0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2384C5EA8(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2384C6178(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_2384C61E4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for OrderListActiveExtractedOrderRow(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_2384C351C(a1, v6, a2);
}

uint64_t sub_2384C6264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2384C62CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27DF0BC40)
  {
    v4 = _s9FormatterVMa(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_27DF0BC40);
    }
  }
}

uint64_t sub_2384C6314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2384C6374(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_2384C63BC(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_2384C6478(x0_0, a2, a3);

  return sub_23875CDC0();
}

uint64_t sub_2384C6404()
{
  v0 = sub_23875C1E0();
  __swift_allocate_value_buffer(v0, qword_27DF2F690);
  __swift_project_value_buffer(v0, qword_27DF2F690);
  return sub_23875C1C0();
}

unint64_t sub_2384C6478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0BCA8[0];
  if (!qword_27DF0BCA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF0BCA8);
  }

  return result;
}

uint64_t sub_2384C64E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2384C6534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2384C65A0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_23875F1F0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_2384C663C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>)
{
  v48 = a2;
  v49 = a8;
  v52 = a7;
  v53 = a9;
  v45 = a4;
  v46 = a3;
  v51 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v47 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v44 = &v43 - v14;
  v43 = sub_23875F1F0();
  v15 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v17 = &v43 - v16;
  v18 = *(a5 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a6;
  v23 = sub_23875F1F0();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v50 = &v43 - v28;
  sub_2384C6ABC(a1, v48, v29, v30, a5, v31, v32, v49);
  sub_238681B24(v17);

  if ((*(v18 + 48))(v17, 1, a5) == 1)
  {
    (*(v15 + 8))(v17, v43);
    v33 = 1;
    v34 = v51;
    v35 = v52;
  }

  else
  {
    (*(v18 + 32))(v21, v17, a5);
    v36 = v47;
    v46(v21);
    (*(v18 + 8))(v21, a5);
    v37 = v44;
    v35 = v52;
    sub_23844EA0C();
    v38 = v51;
    v39 = *(v51 + 8);
    v39(v36, v22);
    sub_23844EA0C();
    v39(v37, v22);
    (*(v38 + 32))(v26, v36, v22);
    v33 = 0;
    v34 = v38;
  }

  (*(v34 + 56))(v26, v33, 1, v22);
  v40 = v50;
  (*(v24 + 16))(v50, v26, v23);
  v41 = *(v24 + 8);
  v41(v26, v23);
  v54 = v35;
  swift_getWitnessTable();
  sub_23844EA0C();
  return (v41)(v40, v23);
}

uint64_t sub_2384C6ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a8(255, a2, a3, a4, a5, a6, a7);
  type metadata accessor for ObservableManagedObject(255, v9, a5, v10);
  sub_23875E1E0();
  sub_23875E1B0();
  return v12;
}

uint64_t sub_2384C6B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2384C6BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2384C6C28(uint64_t *a1, int a2)
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

uint64_t sub_2384C6C70(uint64_t result, int a2, int a3)
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

void sub_2384C6D6C(uint64_t a1)
{
  sub_2384561E8();
  if (v1 <= 0x3F)
  {
    sub_23875AF90();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2384C6DFC()
{
  v2 = type metadata accessor for MonogramView(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BED0, &qword_2387699C8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BED8, &qword_2387699D0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v16 - v9);
  v11 = v1[1];
  if (v11)
  {
    v12 = *v1;
    *v10 = sub_23875E4A0();
    v10[1] = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEE8, &qword_2387699D8);
    sub_2384C7060(v1, v12, v11, (v10 + *(v14 + 44)));
    sub_23843981C(v10, v7, &qword_27DF0BED8, &qword_2387699D0);
    swift_storeEnumTagMultiPayload();
    sub_2384C7EE4();
    sub_2384C7F48();
    sub_23875D1B0();
    return sub_238439884(v10, &qword_27DF0BED8, &qword_2387699D0);
  }

  else
  {
    sub_2384C7634(v4);
    sub_2384C7E7C(v4, v7, type metadata accessor for MonogramView);
    swift_storeEnumTagMultiPayload();
    sub_2384C7EE4();
    sub_2384C7F48();
    sub_23875D1B0();
    return sub_2384C7FA0(v4, type metadata accessor for MonogramView);
  }
}

double sub_2384C7060@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v57 = a3;
  v55 = a2;
  v52 = a1;
  v59 = a4;
  v4 = type metadata accessor for MerchantImage(0);
  v49 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v50 = v5;
  v51 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_23875AF90();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF0, &qword_2387699E0);
  MEMORY[0x28223BE20](v9);
  v58 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v46[-v12];
  v14 = sub_23875C450();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v46[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v46[-v19];
  sub_23875ED50();
  v56 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = v52;
  if (*(v52 + *(v4 + 20)) == 1)
  {
    sub_2384D4E38(v20);
    (*(v15 + 104))(v17, *MEMORY[0x277CDF3D0], v14);
    v22 = sub_23875C440();
    v23 = *(v15 + 8);
    v23(v17, v14);
    v23(v20, v14);
    v24 = objc_opt_self();
    v25 = &selRef_systemGray4Color;
    if ((v22 & 1) == 0)
    {
      v25 = &selRef_systemGray2Color;
    }

    v26 = [v24 *v25];
    v48 = sub_23875DFB0();

    v47 = 256;
  }

  else
  {
    v48 = 0;
    v47 = 0;
  }

  v27 = type metadata accessor for MerchantImage.ViewModel(0);
  v28 = v53;
  v29 = v54;
  v30 = *(v53 + 16);
  v30(v8, v21 + *(v27 + 20), v54);
  v31 = v21;
  v32 = v51;
  sub_2384C7E7C(v31, v51, type metadata accessor for MerchantImage);
  v33 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v34 = swift_allocObject();
  sub_2384C8000(v32, v34 + v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2387632F0;
  v36 = v57;
  *(v35 + 32) = v55;
  *(v35 + 40) = v36;
  v30(v13 + v9[9], v8, v29);
  v37 = v9[10];

  v38 = sub_2387588A0();
  (*(v28 + 8))(v8, v29);
  *(v13 + v37) = v38;
  v39 = v9[13];
  *(v13 + v39) = swift_getKeyPath(byte_2387699E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v40 = v9[14];
  *(v13 + v40) = swift_getKeyPath(byte_238769A18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  swift_storeEnumTagMultiPayload();
  *v13 = v35;
  *(v13 + v9[11]) = 0;
  v41 = (v13 + v9[12]);
  *v41 = sub_2384C8064;
  v41[1] = v34;
  v42 = v58;
  sub_23843981C(v13, v58, &qword_27DF0BEF0, &qword_2387699E0);
  v43 = v59;
  *v59 = v48;
  *(v43 + 4) = v47;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF00, &qword_238769A48);
  sub_23843981C(v42, v43 + *(v44 + 48), &qword_27DF0BEF0, &qword_2387699E0);
  sub_238439884(v13, &qword_27DF0BEF0, &qword_2387699E0);
  sub_238439884(v42, &qword_27DF0BEF0, &qword_2387699E0);

  return result;
}

uint64_t sub_2384C7634@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v41[0] = sub_23875D990();
  v4 = *(v41[0] - 8);
  MEMORY[0x28223BE20](v41[0]);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875C450();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v41 - v12;
  type metadata accessor for MerchantImage(0);
  sub_2384D4E38(v13);
  (*(v8 + 104))(v10, *MEMORY[0x277CDF3D0], v7);
  v14 = sub_23875C440();
  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);
  v16 = objc_opt_self();
  v17 = &selRef_systemGray4Color;
  if ((v14 & 1) == 0)
  {
    v17 = &selRef_systemGray2Color;
  }

  v18 = [v16 *v17];
  v19 = sub_23875DFB0();
  v20 = (v2 + *(type metadata accessor for MerchantImage.ViewModel(0) + 24));
  v21 = *v20;
  v22 = v20[1];
  v23 = sub_23875E040();
  type metadata accessor for MonogramView(0);
  v41[1] = 0x404C000000000000;
  v24 = (*(v4 + 104))(v6, *MEMORY[0x277CE0A68], v41[0]);
  sub_23845A940(v24, v25, v26);
  sub_23875C540();
  *a1 = v19;
  a1[1] = v23;
  a1[3] = v21;
  a1[4] = v22;
  a1[2] = 0x3FC999999999999ALL;
  v27 = sub_23875EAF0();
  v29 = v28;

  v30 = sub_2384F565C(1, v27, v29);
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = MEMORY[0x23EE635F0](v30, v32, v34, v36);
  v39 = v38;

  a1[5] = v37;
  a1[6] = v39;
  return result;
}

void sub_2384C7944(id a1@<X1>, void *a2@<X0>, uint64_t *a3@<X8>)
{
  v6 = [a1 merchant];
  v7 = [v6 logoName];

  if (v7)
  {
    v8 = sub_23875EA80();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a3 = v8;
  a3[1] = v10;
  v11 = type metadata accessor for MerchantImage.ViewModel(0);
  sub_238757DA0();
  v12 = [a1 merchant];
  v13 = [v12 displayName];

  v14 = sub_2387586A0();
  v16 = v15;

  v17 = (a3 + *(v11 + 24));
  *v17 = v14;
  v17[1] = v16;
}

uint64_t sub_2384C7A5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_238757CC0();
  v26 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MerchantImage.ViewModel(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_238759B30();
  v13 = sub_238757CB0();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v8, v5);
  *v12 = v13;
  v12[1] = v15;
  v17 = a1;
  sub_238759AB0();
  v27 = a2;
  v18 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  sub_238759B30();
  sub_238757C60();
  v16(v8, v26);
  v19 = sub_23875A360();
  v21 = v20;

  v22 = sub_238759B60();
  (*(*(v22 - 8) + 8))(v17, v22);
  v23 = (v12 + *(v10 + 32));
  *v23 = v19;
  v23[1] = v21;
  sub_2384C7E7C(v12, v28, type metadata accessor for MerchantImage.ViewModel);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_2384C7FA0(v12, type metadata accessor for MerchantImage.ViewModel);
}

uint64_t sub_2384C7CB8(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = type metadata accessor for MerchantImage.ViewModel(0);
  if ((MEMORY[0x23EE5FA60](a1 + *(v7 + 20), a2 + *(v7 + 20)) & 1) == 0)
  {
    return 0;
  }

  v8 = *(v7 + 24);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  if (v9 == *v11 && v10 == v11[1])
  {
    return 1;
  }

  return sub_23875F630();
}

void sub_2384C7DD4(uint64_t a1)
{
  type metadata accessor for MerchantImage.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_238438628(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2384C7E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2384C7EE4()
{
  result = qword_27DF0BEE0;
  if (!qword_27DF0BEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BED8, &qword_2387699D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BEE0);
  }

  return result;
}

unint64_t sub_2384C7F48()
{
  result = qword_27DF09BB0;
  if (!qword_27DF09BB0)
  {
    type metadata accessor for MonogramView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09BB0);
  }

  return result;
}

uint64_t sub_2384C7FA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2384C8000(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MerchantImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2384C80C8()
{
  result = qword_27DF0BF08;
  if (!qword_27DF0BF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BF10, &unk_238769A50);
    sub_2384C7EE4();
    sub_2384C7F48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BF08);
  }

  return result;
}

uint64_t sub_2384C8154(uint64_t a1)
{
  v43 = sub_238758680();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_23875BCB0();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v39 = v7;
    v31 = v1;
    v47 = MEMORY[0x277D84F90];
    v33 = a1;
    sub_2385FE898(0, v8, 0);
    v10 = v5;
    v11 = v33;
    v45 = v33 + 56;
    v46 = v47;
    result = sub_23875F320();
    v12 = result;
    v13 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v40 = v10;
    v35 = v3;
    v36 = v10 + 32;
    v32 = v11 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v11 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v44 = *(v11 + 36);
      v18 = v42;
      v17 = v43;
      (*(v3 + 16))(v42, *(v11 + 48) + *(v3 + 72) * v12, v43);
      v19 = v39;
      sub_238758640();
      (*(v3 + 8))(v18, v17);
      v20 = v46;
      v47 = v46;
      v22 = *(v46 + 16);
      v21 = *(v46 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2385FE898((v21 > 1), v22 + 1, 1);
        v20 = v47;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v19, v41);
      v14 = 1 << *(v11 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
        v3 = v35;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        v15 = v34;
        v3 = v35;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_238434834(v12, v44, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_238434834(v12, v44, 0);
LABEL_19:
        v11 = v33;
      }

      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2384C8518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v8;
  v9 = sub_23875BC40();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_23875B650();
  v39 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v36 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v37 = &v36 - v14;
  v43 = sub_23875BE20();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v48 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2387587E0();
  v44 = *(v16 - 8);
  v45 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_238769DE0, v17);
  v49 = a1;
  sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  sub_23875BE90();

  v20 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected;
  if ((*(a1 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) & 1) == 0)
  {
    sub_23875BDF0();
    swift_getKeyPath(byte_238769DE0);
    v49 = a1;
    sub_23875BE90();

    if (*(a1 + v20))
    {

      (*(v10 + 8))(v46, v9);
      (*(v41 + 8))(v48, v43);
    }

    else
    {
      swift_getKeyPath(aH);
      v49 = a1;
      sub_23875BE90();

      v25 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
      swift_beginAccess();
      v26 = v39;
      v27 = a1 + v25;
      v28 = v36;
      v29 = v42;
      (*(v39 + 16))(v36, v27, v42);
      v30 = v37;
      (*(v26 + 32))(v37, v28, v29);
      v31 = v40;
      v32 = v46;
      sub_23875BDD0();
      if ((*(v10 + 48))(v31, 1, v9) != 1)
      {
        (*(v10 + 32))(v38, v31, v9);
        v34 = v48;
        sub_23875BD50();
        (*(v10 + 56))(v6, 0, 1, v9);
        sub_2387587C0();

        v35 = *(v10 + 8);
        v35(v32, v9);
        v35(v38, v9);
        (*(v26 + 8))(v30, v42);
        (*(v41 + 8))(v34, v43);
        goto LABEL_3;
      }

      (*(v10 + 8))(v32, v9);
      (*(v26 + 8))(v30, v42);
      (*(v41 + 8))(v48, v43);
      sub_238439884(v31, &qword_27DF12E00, &unk_238763FC0);
    }

    v24 = 1;
    v23 = v47;
    v22 = v44;
    v21 = v45;
    return (*(v22 + 56))(v23, v24, 1, v21);
  }

  (*(v10 + 56))(v6, 1, 1, v9);
  sub_2387587C0();

  (*(v10 + 8))(v46, v9);
LABEL_3:
  v22 = v44;
  v21 = v45;
  v23 = v47;
  (*(v44 + 32))(v47, v19, v45);
  v24 = 0;
  return (*(v22 + 56))(v23, v24, 1, v21);
}

uint64_t sub_2384C8BB8(uint64_t result, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, unint64_t a4)
{
  v13 = result;
  if (a4 >> 62)
  {
LABEL_16:
    v10 = result;
    v6 = sub_23875F3A0();
    result = v10;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x23EE63F70](i, a4, a3);
          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_12:
            __break(1u);
          }
        }

        else
        {
          if (i >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(a4 + 8 * i + 32);

          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_12;
          }
        }

        v12 = v8;
        a2(&v13, &v12);

        if (v4)
        {
        }

        if (v9 == v6)
        {
          return v13;
        }
      }
    }
  }

  return result;
}

void sub_2384C8CFC(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v21 = sub_238758680();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v10 = a4 + 56;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 56);
  v14 = (v11 + 63) >> 6;
  v18[1] = v7 + 16;
  v20 = (v7 + 8);
  v22 = a4;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
      v17 = v21;
LABEL_9:
      (*(v7 + 16))(v9, *(v22 + 48) + *(v7 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
      v19(&v23, v9);
      if (v4)
      {
        break;
      }

      v13 &= v13 - 1;
      (*v20)(v9, v17);
      v15 = v16;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    (*v20)(v9, v17);
  }

  else
  {
LABEL_5:
    v17 = v21;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        return;
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2384C8F1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_23875B650();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SharingStartDate(0);
  __swift_allocate_value_buffer(started, qword_27DF2F6A8);
  v11 = __swift_project_value_buffer(started, qword_27DF2F6A8);
  v12 = sub_23875BE20();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = sub_23875BE40();
  (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
  sub_23875B620();
  result = (*(v7 + 32))(v11, v9, v6);
  v15 = (v11 + *(started + 20));
  *v15 = 0xD000000000000021;
  v15[1] = 0x80000002387888D0;
  v16 = v11 + *(started + 24);
  strcpy(v16, "limited_today");
  *(v16 + 14) = -4864;
  return result;
}

uint64_t sub_2384C9208()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_23875B650();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SharingStartDate(0);
  __swift_allocate_value_buffer(started, qword_27DF2F6C0);
  v11 = __swift_project_value_buffer(started, qword_27DF2F6C0);
  v12 = sub_23875BE20();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = sub_23875BE40();
  (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
  sub_23875B620();
  result = (*(v7 + 32))(v11, v9, v6);
  v15 = (v11 + *(started + 20));
  *v15 = 0xD000000000000023;
  v15[1] = 0x80000002387888A0;
  v16 = (v11 + *(started + 24));
  *v16 = 0x5F646574696D696CLL;
  v16[1] = 0xEB00000000643033;
  return result;
}

uint64_t sub_2384C94F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_23875B650();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SharingStartDate(0);
  __swift_allocate_value_buffer(started, qword_27DF2F6D8);
  v11 = __swift_project_value_buffer(started, qword_27DF2F6D8);
  v12 = sub_23875BE20();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = sub_23875BE40();
  (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
  sub_23875B620();
  result = (*(v7 + 32))(v11, v9, v6);
  v15 = (v11 + *(started + 20));
  *v15 = 0xD000000000000022;
  v15[1] = 0x8000000238788870;
  v16 = (v11 + *(started + 24));
  *v16 = 0x5F646574696D696CLL;
  v16[1] = 0xEA00000000007931;
  return result;
}

uint64_t sub_2384C97D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_23875B650();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SharingStartDate(0);
  __swift_allocate_value_buffer(started, qword_27DF2F6F0);
  v11 = __swift_project_value_buffer(started, qword_27DF2F6F0);
  v12 = sub_23875BE20();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = sub_23875BE40();
  (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
  sub_23875B620();
  result = (*(v7 + 32))(v11, v9, v6);
  v15 = (v11 + *(started + 20));
  *v15 = 0xD000000000000023;
  v15[1] = 0x8000000238788840;
  v16 = (v11 + *(started + 24));
  *v16 = 0x5F646574696D696CLL;
  v16[1] = 0xEA00000000007932;
  return result;
}

uint64_t sub_2384C9ABC(uint64_t a1)
{
  sub_23875F700();
  sub_23875B650();
  sub_2384D0C70(&qword_27DF0BFE0, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
  sub_23875E960();
  sub_23875EB30();
  sub_23875EB30();
  return sub_23875F760();
}

uint64_t sub_2384C9B78(uint64_t a1, uint64_t a2)
{
  sub_23875B650();
  sub_2384D0C70(&qword_27DF0BFE0, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
  sub_23875E960();
  sub_23875EB30();

  return sub_23875EB30();
}

uint64_t sub_2384C9C28(uint64_t a1, uint64_t a2)
{
  sub_23875F700();
  sub_23875B650();
  sub_2384D0C70(&qword_27DF0BFE0, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
  sub_23875E960();
  sub_23875EB30();
  sub_23875EB30();
  return sub_23875F760();
}

double sub_2384C9CE0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t sub_2384C9CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x23EE60070]() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  if (v12 == *v14 && v13 == v14[1])
  {
    return 1;
  }

  return sub_23875F630();
}

uint64_t sub_2384C9DA8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(aH);
  v5 = v1;
  sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  sub_23875BE90();

  v3 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  return sub_2384D2A50(v5 + v3, a1, type metadata accessor for SharingStartDate);
}

uint64_t sub_2384C9E84(uint64_t a1)
{
  started = type metadata accessor for SharingStartDate(0);
  MEMORY[0x28223BE20](started);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v22 - v7;
  v9 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  sub_2384D2A50(v1 + v9, v8, type metadata accessor for SharingStartDate);
  if (MEMORY[0x23EE60070](v8, a1) & 1) != 0 && ((v10 = *(started + 20), v11 = *&v8[v10], v12 = *&v8[v10 + 8], v13 = (a1 + v10), v11 == *v13) ? (v14 = v12 == v13[1]) : (v14 = 0), (v14 || (sub_23875F630()) && ((v15 = *(started + 24), v16 = *&v8[v15], v17 = *&v8[v15 + 8], v18 = (a1 + v15), v16 == *v18) ? (v19 = v17 == v18[1]) : (v19 = 0), v19 || (sub_23875F630())))
  {
    sub_2384AA698(v8, type metadata accessor for SharingStartDate);
    sub_2384D2A50(a1, v5, type metadata accessor for SharingStartDate);
    swift_beginAccess();
    sub_2384D2BA4(v5, v1 + v9);
    swift_endAccess();
  }

  else
  {
    sub_2384AA698(v8, type metadata accessor for SharingStartDate);
    KeyPath = swift_getKeyPath(aH);
    MEMORY[0x28223BE20](KeyPath);
    v22[-2] = v1;
    v22[-1] = a1;
    v22[1] = v1;
    sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
    sub_23875BE80();
  }

  return sub_2384AA698(a1, type metadata accessor for SharingStartDate);
}

uint64_t sub_2384CA12C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  sub_2384D2C08(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_2384CA198()
{
  swift_getKeyPath(byte_238769DE0);
  sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  sub_23875BE90();

  return *(v0 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);
}

void sub_2384CA240(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_238769DE0);
    MEMORY[0x28223BE20](KeyPath);
    sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
    sub_23875BE80();
  }
}

uint64_t sub_2384CA358(uint64_t a1, char a2)
{
  v3 = v2;
  started = type metadata accessor for SharingStartDate(0);
  MEMORY[0x28223BE20](started);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF08CE8 != -1)
  {
    v15 = v7;
    swift_once();
    v7 = v15;
  }

  v10 = __swift_project_value_buffer(v7, qword_27DF2F6C0);
  sub_2384D2A50(v10, v3 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate, type metadata accessor for SharingStartDate);
  v11 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected;
  *(v3 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) = 1;
  sub_23875BEC0();
  sub_2384D2A50(a1, v9, type metadata accessor for SharingStartDate);
  sub_2384C9E84(v9);
  v12 = a2 & 1;
  if (*(v3 + v11) == (a2 & 1))
  {
    sub_2384AA698(a1, type metadata accessor for SharingStartDate);
    *(v3 + v11) = v12;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_238769DE0);
    MEMORY[0x28223BE20](KeyPath);
    v16[-2] = v3;
    LOBYTE(v16[-1]) = v12;
    v16[1] = v3;
    sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
    sub_23875BE80();

    sub_2384AA698(a1, type metadata accessor for SharingStartDate);
  }

  return v3;
}

uint64_t sub_2384CA5A4()
{
  v1 = v0;
  started = type metadata accessor for SharingStartDate(0);
  MEMORY[0x28223BE20](started);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF08CE8 != -1)
  {
    v10 = v3;
    swift_once();
    v3 = v10;
  }

  v6 = __swift_project_value_buffer(v3, qword_27DF2F6C0);
  sub_2384D2A50(v6, v1 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate, type metadata accessor for SharingStartDate);
  v7 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected;
  *(v1 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) = 1;
  sub_23875BEC0();
  sub_2384D2A50(v6, v5, type metadata accessor for SharingStartDate);
  sub_2384C9E84(v5);
  if (*(v1 + v7) == 1)
  {
    *(v1 + v7) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_238769DE0);
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    LOBYTE(v11[-1]) = 1;
    v11[1] = v1;
    sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
    sub_23875BE80();
  }

  return v1;
}

uint64_t sub_2384CA7B0()
{
  sub_2384AA698(v0 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate, type metadata accessor for SharingStartDate);
  v1 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel___observationRegistrar;
  v2 = sub_23875BED0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2384CA870()
{
  v1 = type metadata accessor for SelectAccountsResult(0);
  MEMORY[0x28223BE20](v1 - 8);
  v44 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_238759510();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_23875BC40();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[1];
  v49 = *v0;
  v50 = v7;
  *v51 = v0[2];
  *&v51[16] = *(v0 + 6);
  sub_23860FBC0();
  v9 = v8;
  v11 = v10;
  sub_23875BBF0();
  v46[2] = &v49;
  v46[3] = v6;
  v39 = v6;
  sub_2384C8CFC(MEMORY[0x277D84F98], sub_2384D36B8, v46, v9);

  v12 = sub_2384C8154(v11);

  sub_2384A5014(v12);

  v41 = v4;
  sub_238759500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  v47 = *&v51[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C150, &unk_238769F18);
  sub_23875E1B0();
  v14 = v48;
  swift_getKeyPath(byte_238769DE0);
  *&v47 = v14;
  sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  sub_23875BE90();

  if (*(v14 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected))
  {
    v15 = 0xE300000000000000;
    v16 = 7105633;
  }

  else
  {
    swift_getKeyPath(aH);
    *&v47 = v14;
    sub_23875BE90();

    v17 = v14 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
    swift_beginAccess();
    v18 = (v17 + *(type metadata accessor for SharingStartDate(0) + 24));
    v16 = *v18;
    v15 = v18[1];
  }

  v38 = v50;
  *(inited + 40) = v16;
  *(inited + 48) = v15;
  v19 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_238763300;
  v21 = *MEMORY[0x277D383D8];
  *(v20 + 32) = *MEMORY[0x277D383D8];
  *(v20 + 40) = sub_23875EA80();
  *(v20 + 48) = v22;
  v23 = *MEMORY[0x277D38390];
  *(v20 + 56) = *MEMORY[0x277D38390];
  *(v20 + 64) = 0x6572616873;
  v24 = *MEMORY[0x277D384B8];
  *(v20 + 72) = 0xE500000000000000;
  *(v20 + 80) = v24;
  *(v20 + 88) = 0xD000000000000014;
  *(v20 + 96) = 0x8000000238785000;
  v25 = v21;
  v26 = v23;
  v27 = v24;
  v28 = sub_23854B138(v20);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v28;
  sub_2385C33E4(v19, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v48);

  v30 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384D0C70(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v31 = sub_23875E910();

  [v30 subject:v38 sendEvent:v31];

  v32 = *(&v50 + 1);
  v34 = v43;
  v33 = v44;
  v35 = v41;
  v36 = v45;
  (*(v43 + 16))(v44, v41, v45);
  (*(v34 + 56))(v33, 0, 1, v36);
  v32(v33);
  sub_2384AA698(v33, type metadata accessor for SelectAccountsResult);
  (*(v34 + 8))(v35, v36);
  return (*(v40 + 8))(v39, v42);
}

double sub_2384CAEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v27 = a3;
  v22 = a2;
  v24 = a1;
  v4 = sub_23875BCB0();
  MEMORY[0x28223BE20](v4 - 8);
  v23 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23875BC40();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v15 = sub_2387587E0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v25 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = *(v27 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C150, &unk_238769F18);
  sub_23875E1B0();
  v19 = v30;
  (*(v6 + 16))(v8, v28, v26);
  sub_2384C8518(v19, v8, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_238439884(v14, &qword_27DF0B328, &qword_238768050);
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    v20 = v23;
    sub_238758640();
    (*(v16 + 16))(v11, v18, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
    sub_2386C3EA4(v11, v20);
    (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_2384CB25C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2387632F0;
  v3 = [v1 localizedName];
  v4 = sub_23875EA80();
  v6 = v5;

  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_238448C58(v7, v8, v9);
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v10 = qword_2814F1B90;
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = [v10 localizedStringForKey:v11 value:v12 table:v13];

  sub_23875EA80();
  v15 = sub_23875EAA0();

  return v15;
}

uint64_t sub_2384CB404()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2387632F0;
  v3 = [v1 localizedName];
  v4 = sub_23875EA80();
  v6 = v5;

  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_238448C58(v7, v8, v9);
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v10 = qword_2814F1B90;
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = [v10 localizedStringForKey:v11 value:v12 table:v13];

  sub_23875EA80();
  v15 = sub_23875EAA0();

  return v15;
}

uint64_t sub_2384CB5AC@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v51 = sub_23875C430();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1C0, &unk_23876E100);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v38 - v3;
  v48 = sub_23875CFD0();
  v43 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1C8, &qword_238769FB0);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = &v38 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1D0, &qword_238769FB8);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v38 - v8;
  v9 = v1[1];
  v66 = *v1;
  v67 = v9;
  v68 = v1[2];
  v69 = *(v1 + 6);
  v56 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C150, &unk_238769F18);
  sub_23875E1B0();
  v10 = v65;
  v11 = *(&v66 + 1);
  v41 = *(&v67 + 1);
  v70 = v67;
  v12 = v68;
  v65 = 0;
  v40 = v66;
  sub_2384D2A50(&v70, &v56, type metadata accessor for PKAnalyticsSubject);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1D8, &unk_238769FC0);
  sub_23875E1A0();
  v38 = *(&v56 + 1);
  v39 = v56;
  sub_23860FBC0();
  v14 = v13;

  v15 = sub_2384C8154(v14);

  v16 = sub_2384A5014(v15);

  v17 = v70;
  swift_getKeyPath(byte_238769F78);
  *&v56 = v11;
  sub_2384D0C70(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  swift_beginAccess();

  sub_2384D2CAC(v18, v10);

  v64 = sub_238490FEC(v20, v19);
  sub_2384D0ED0(&v64);

  v56 = v64;
  v57 = v16;
  v58 = v40;
  v59 = v41;
  v60 = v12;
  v61 = v17;
  v62 = v39;
  v63 = v38;
  MEMORY[0x28223BE20](v21);
  *(&v38 - 2) = &v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1E0, &qword_23877EA30);
  v22 = sub_2384D3460();
  sub_2384D35FC(v22, v23, v24);
  sub_23875C750();
  sub_23875CFC0();
  v25 = sub_23843A3E8(&qword_27DF0C218, &qword_27DF0C1C8, &qword_238769FB0, MEMORY[0x277CDD938]);
  v26 = sub_2384D0C70(&qword_27DF0C0C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v27 = v45;
  v28 = v44;
  v29 = v48;
  sub_23875DB30();
  (*(v43 + 8))(v5, v29);
  (*(v42 + 8))(v7, v28);
  v30 = v49;
  sub_23875C420();
  v31 = swift_allocObject();
  v32 = v67;
  *(v31 + 16) = v66;
  *(v31 + 32) = v32;
  *(v31 + 48) = v68;
  *(v31 + 64) = v69;
  sub_2384D2C74(&v66, &v56);
  v33 = v52;
  v34 = v51;
  sub_23875E390();

  (*(v50 + 8))(v30, v34);
  sub_23875C480();
  *&v56 = v28;
  *(&v56 + 1) = v29;
  v57 = v25;
  v58 = v26;
  swift_getOpaqueTypeConformance2();
  sub_23843A3E8(&qword_27DF0C220, &qword_27DF0C1C0, &unk_23876E100, MEMORY[0x277CDF728]);
  v35 = v47;
  v36 = v54;
  sub_23875DD50();
  (*(v53 + 8))(v33, v36);
  return (*(v46 + 8))(v27, v35);
}

__n128 sub_2384CBE10@<Q0>(uint64_t a1@<X8>)
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
  v8 = v7;

  *(&v37 + 1) = v8;
  sub_2384397A8(v9, v10, v11);
  v12 = sub_23875DAA0();
  v14 = v13;
  LOBYTE(v8) = v15;
  sub_23875D890();
  v16 = sub_23875D9E0();
  v18 = v17;
  v20 = v19;
  sub_2384397FC(v12, v14, v8 & 1);

  v21 = [objc_opt_self() labelColor];
  *&v37 = sub_23875DFB0();
  v22 = sub_23875DA20();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_2384397FC(v16, v18, v20 & 1);

  sub_23875E4A0();
  sub_23875C9C0();
  sub_23875E4A0();
  sub_23875C9C0();

  *(a1 + 96) = v41;
  *(a1 + 112) = v42;
  result = v43;
  *(a1 + 32) = v37;
  *(a1 + 48) = v38;
  *(a1 + 64) = v39;
  *(a1 + 80) = v40;
  *(a1 + 192) = v33;
  *(a1 + 208) = v34;
  *(a1 + 224) = v35;
  *(a1 + 240) = v36;
  *(a1 + 128) = v43;
  *(a1 + 144) = v30;
  *a1 = v22;
  *(a1 + 8) = v24;
  *(a1 + 16) = v26 & 1;
  *(a1 + 24) = v28;
  *(a1 + 160) = v31;
  *(a1 + 176) = v32;
  *(a1 + 256) = 256;
  return result;
}

void sub_2384CC164(uint64_t a1, uint64_t a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C150, &unk_238769F18);
  sub_23875E1B0();
  swift_getKeyPath(byte_238769DE0);
  sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  sub_23875BE90();

  if (*(v22 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected))
  {
    v4 = 0xE300000000000000;
    v5 = 7105633;
  }

  else
  {
    swift_getKeyPath(aH);
    sub_23875BE90();

    v6 = v22 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
    swift_beginAccess();
    v7 = (v6 + *(type metadata accessor for SharingStartDate(0) + 24));
    v5 = *v7;
    v4 = v7[1];
  }

  v8 = *(a2 + 16);
  *(inited + 40) = v5;
  *(inited + 48) = v4;
  v9 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_238763300;
  v11 = *MEMORY[0x277D383D8];
  *(v10 + 32) = *MEMORY[0x277D383D8];
  *(v10 + 40) = sub_23875EA80();
  *(v10 + 48) = v12;
  v13 = *MEMORY[0x277D38390];
  *(v10 + 56) = *MEMORY[0x277D38390];
  *(v10 + 64) = 0x7A696D6F74737563;
  v14 = *MEMORY[0x277D384B8];
  *(v10 + 72) = 0xE900000000000065;
  *(v10 + 80) = v14;
  *(v10 + 88) = 0xD000000000000014;
  *(v10 + 96) = 0x8000000238785000;
  v15 = v11;
  v16 = v13;
  v17 = v14;
  v18 = sub_23854B138(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v18;
  sub_2385C33E4(v9, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v22);

  v20 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384D0C70(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v21 = sub_23875E910();

  [v20 subject:v8 sendEvent:v21];
}

uint64_t SharingTimeSelectionView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF18, &qword_238769A60);
  sub_2384CC75C();
  return sub_23875C8F0();
}

uint64_t sub_2384CC618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C148, &qword_238769F08);
  sub_2384CC830(a1, (a2 + *(v4 + 44)));
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = *(a1 + 48);
  sub_2384D2C74(a1, v9);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF18, &qword_238769A60);
  v8 = (a2 + *(result + 36));
  *v8 = sub_2384D2C6C;
  v8[1] = v5;
  v8[2] = 0;
  v8[3] = 0;
  return result;
}

unint64_t sub_2384CC75C()
{
  result = qword_27DF0BF20;
  if (!qword_27DF0BF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BF18, &qword_238769A60);
    sub_23843A3E8(&qword_27DF0BF28, &qword_27DF0BF30, &qword_238769A68, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BF20);
  }

  return result;
}

double sub_2384CC830@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C158, &qword_238769F28);
  MEMORY[0x28223BE20](v32);
  v36 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C160, &qword_238769F30);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  sub_23875ED50();
  v34 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_23875D760();
  MEMORY[0x28223BE20](v12);
  *(&v29 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C168, &qword_238769F38);
  sub_23843A3E8(&qword_27DF0C170, &qword_27DF0C168, &qword_238769F38, MEMORY[0x277CE14C0]);
  v30 = v11;
  v13 = sub_23875C410();
  MEMORY[0x28223BE20](v13);
  *(&v29 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C178, &qword_238769F40);
  sub_23843A3E8(&qword_27DF0C180, &qword_27DF0C178, &qword_238769F40, MEMORY[0x277CE1198]);
  sub_23875D1D0();
  v14 = sub_23875D770();
  sub_23875C3D0();
  v15 = v31;
  v16 = &v6[*(v32 + 36)];
  *v16 = v14;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v21 = *(v15 + 16);
  v22 = v30;
  v23 = v33;
  v21(v8, v30, v33);
  v24 = v36;
  sub_23843981C(v6, v36, &qword_27DF0C158, &qword_238769F28);
  v25 = v35;
  v21(v35, v8, v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C188, &qword_238769F48);
  sub_23843981C(v24, &v25[*(v26 + 48)], &qword_27DF0C158, &qword_238769F28);
  sub_238439884(v6, &qword_27DF0C158, &qword_238769F28);
  v27 = *(v15 + 8);
  v27(v22, v23);
  sub_238439884(v24, &qword_27DF0C158, &qword_238769F28);
  v27(v8, v23);

  return result;
}

void sub_2384CCC7C(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v63 = a2;
  v65.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C228, &unk_238769FE0);
  MEMORY[0x28223BE20](v65.i64[0]);
  v67 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v71 = (&v61 - v5);
  v6 = sub_238758850();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v66 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = qword_2814F0880;
  v70 = *a1;
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_2814F1B90;
  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = sub_23875EA50();
  v15 = [v11 localizedStringForKey:v12 value:v13 table:v14];

  v16 = sub_23875EA80();
  v64 = v17;

  v18 = a1[1];
  v91 = *a1;
  v92 = v18;
  v93 = a1[2];
  v94 = *(a1 + 6);
  v19 = sub_2384CB404();
  v68 = v20;
  v69 = v19;
  sub_238449184(0, &qword_27DF0B1F0, 0x277CC1E90);
  sub_2387587F0();
  v21 = sub_238758840();
  v23 = v22;
  (*(v7 + 8))(v9, v6);
  v61 = sub_23860E554(v21, v23);
  v62 = sub_23875D7A0();
  sub_23875C3D0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v95 = 0;
  v78 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C150, &unk_238769F18);
  sub_23875E1B0();
  *v71 = v70;
  v32 = type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView(0);
  type metadata accessor for SharingStartDateModel(0);
  sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  sub_23875E420();
  v33 = *(v32 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C230, &qword_23877AAE0);
  started = type metadata accessor for SharingStartDate(0);
  v35 = *(*(started - 8) + 72);
  v36 = (*(*(started - 8) + 80) + 32) & ~*(*(started - 8) + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_238763310;
  v38 = v37 + v36;
  if (qword_27DF08CE0 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(started, qword_27DF2F6A8);
  sub_2384D2A50(v39, v38, type metadata accessor for SharingStartDate);
  if (qword_27DF08CE8 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(started, qword_27DF2F6C0);
  sub_2384D2A50(v40, v38 + v35, type metadata accessor for SharingStartDate);
  if (qword_27DF08CF0 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(started, qword_27DF2F6D8);
  sub_2384D2A50(v41, v38 + 2 * v35, type metadata accessor for SharingStartDate);
  if (qword_27DF08CF8 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(started, qword_27DF2F6F0);
  sub_2384D2A50(v42, v38 + 3 * v35, type metadata accessor for SharingStartDate);
  v43 = v71;
  *(v71 + v33) = v37;
  v44 = sub_23875D770();
  sub_23875C3D0();
  v45 = v43 + *(v65.i64[0] + 36);
  *v45 = v44;
  *(v45 + 8) = v46;
  *(v45 + 16) = v47;
  *(v45 + 24) = v48;
  *(v45 + 32) = v49;
  *(v45 + 40) = 0;
  v50 = v67;
  sub_23843981C(v43, v67, &qword_27DF0C228, &unk_238769FE0);
  v51 = v70;
  v52 = v61;
  *&v72 = v70;
  *(&v72 + 1) = v61;
  v53 = v16;
  *&v73 = v16;
  v54 = v64;
  *(&v73 + 1) = v64;
  *&v74 = v69;
  *(&v74 + 1) = v68;
  v65 = vdupq_n_s64(0x4054000000000000uLL);
  v75 = v65;
  v55 = v62;
  LOBYTE(v76) = v62;
  *(&v76 + 1) = v96[0];
  DWORD1(v76) = *(v96 + 3);
  *(&v76 + 1) = v25;
  *&v77[0] = v27;
  *(&v77[0] + 1) = v29;
  *&v77[1] = v31;
  BYTE8(v77[1]) = 0;
  v56 = v63;
  *(v63 + 89) = *(v77 + 9);
  v57 = v75;
  v56[2] = v74;
  v56[3] = v57;
  v58 = v73;
  *v56 = v72;
  v56[1] = v58;
  v59 = v77[0];
  v56[4] = v76;
  v56[5] = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C238, &qword_238769FF0);
  sub_23843981C(v50, v56 + *(v60 + 48), &qword_27DF0C228, &unk_238769FE0);
  sub_23843981C(&v72, &v78, &qword_27DF0C240, &qword_238769FF8);
  sub_238439884(v43, &qword_27DF0C228, &unk_238769FE0);
  sub_238439884(v50, &qword_27DF0C228, &unk_238769FE0);
  *&v78 = v51;
  *(&v78 + 1) = v52;
  v79 = v53;
  v80 = v54;
  v81 = v69;
  v82 = v68;
  v83 = v65;
  v84 = v55;
  *v85 = v96[0];
  *&v85[3] = *(v96 + 3);
  v86 = v25;
  v87 = v27;
  v88 = v29;
  v89 = v31;
  v90 = 0;
  sub_238439884(&v78, &qword_27DF0C240, &qword_238769FF8);
}

double sub_2384CD434@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0x402C000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C190, &qword_238769F50);
  sub_2384CD508(a1, (a2 + *(v4 + 44)));

  return result;
}

double sub_2384CD508@<D0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C198, &qword_238769F58);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v42 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1A0, &unk_238769F60);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - v7;
  v43 = sub_23875C930();
  v8 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v42 - v12);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1A8, &qword_238769F70);
  v14 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v46 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v52 = &v42 - v17;
  sub_23875ED50();
  v45 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = a1[1];
  v54 = *a1;
  v55 = v18;
  v56 = a1[2];
  v57 = *(a1 + 6);
  v19 = sub_2384CB25C();
  v21 = v20;
  v22 = swift_allocObject();
  v23 = a1[1];
  *(v22 + 16) = *a1;
  *(v22 + 32) = v23;
  *(v22 + 48) = a1[2];
  *(v22 + 64) = *(a1 + 6);
  sub_2384D2C74(a1, v53);
  sub_23875D610();
  *v13 = v19;
  v13[1] = v21;
  *(v13 + *(v11 + 40)) = 0;
  v24 = (v13 + *(v11 + 44));
  *v24 = sub_2384D3434;
  v24[1] = v22;
  sub_23875C920();
  sub_23843A3E8(&qword_27DF0AAE0, &qword_27DF0AAD8, &qword_23876B8C0, &unk_23877E960);
  sub_23875DC90();
  (*(v8 + 8))(v10, v43);
  sub_238439884(v13, &qword_27DF0AAD8, &qword_23876B8C0);
  v25 = *(a1 + 1);
  swift_getKeyPath(byte_238769F78);
  *&v54 = v25;
  sub_2384D0C70(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  swift_beginAccess();
  if (*(*(v25 + 40) + 16))
  {
    v26 = a1[1];
    v54 = *a1;
    v55 = v26;
    v56 = a1[2];
    v57 = *(a1 + 6);
    v27 = v42;
    sub_2384CB5AC(v42);
    v28 = v47;
    v29 = v48;
    v30 = v27;
    v31 = v49;
    (*(v47 + 32))(v48, v30, v49);
    v32 = 0;
  }

  else
  {
    v32 = 1;
    v29 = v48;
    v31 = v49;
    v28 = v47;
  }

  (*(v28 + 56))(v29, v32, 1, v31);
  v33 = *(v14 + 16);
  v34 = v46;
  v35 = v52;
  v36 = v44;
  v33(v46, v52, v44);
  v37 = v50;
  sub_23843981C(v29, v50, &qword_27DF0C1A0, &unk_238769F60);
  v38 = v51;
  v33(v51, v34, v36);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1B8, &unk_238769FA0);
  sub_23843981C(v37, &v38[*(v39 + 48)], &qword_27DF0C1A0, &unk_238769F60);
  sub_238439884(v29, &qword_27DF0C1A0, &unk_238769F60);
  v40 = *(v14 + 8);
  v40(v35, v36);
  sub_238439884(v37, &qword_27DF0C1A0, &unk_238769F60);
  v40(v34, v36);

  return result;
}

uint64_t sub_2384CDB60(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  v10 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C150, &unk_238769F18);
  sub_23875E1B0();
  swift_getKeyPath(byte_238769DE0, v10);
  sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  sub_23875BE90();

  if (*(v11 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected))
  {
    v3 = 0xE300000000000000;
    v4 = 7105633;
  }

  else
  {
    swift_getKeyPath(aH);
    sub_23875BE90();

    v5 = v11 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
    swift_beginAccess();
    v6 = (v5 + *(type metadata accessor for SharingStartDate(0) + 24));
    v4 = *v6;
    v3 = v6[1];
  }

  v7 = *(a1 + 16);
  *(inited + 40) = v4;
  *(inited + 48) = v3;
  v8 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  sub_23844C218(v7, 23, v8);
}

uint64_t sub_2384CDDD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2387632F0;
  v2 = [*v0 localizedName];
  v3 = sub_23875EA80();
  v5 = v4;

  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_238448C58(v6, v7, v8);
  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v9 = qword_2814F1B90;
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

  sub_23875EA80();
  v14 = sub_23875EAA0();

  return v14;
}

uint64_t sub_2384CDF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_23875CFD0();
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  MEMORY[0x28223BE20](v3);
  v45 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875C850();
  v7 = *(v6 - 8);
  v41 = v6;
  v42 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C078, &qword_238769E28);
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C080, &qword_238769E30);
  v14 = *(v13 - 8);
  v43 = v13;
  v44 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = v39 - v15;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C088, &qword_238769E38);
  MEMORY[0x28223BE20](v46);
  v18 = v39 - v17;
  v51 = a1;
  v50 = a1;
  v39[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C090, &qword_238769E40);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C098, &qword_238769E48);
  v20 = sub_23875CDF0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C0A0, &qword_238769E50);
  v22 = sub_23843A3E8(&qword_27DF0C0A8, &qword_27DF0C0A0, &qword_238769E50, MEMORY[0x277CDF038]);
  v52 = v21;
  v53 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v19;
  v53 = v20;
  v54 = OpaqueTypeConformance2;
  v55 = MEMORY[0x277CDDDA0];
  swift_getOpaqueTypeConformance2();
  sub_23875D9D0();
  sub_23875C840();
  v24 = sub_23843A3E8(&qword_27DF0C0B0, &qword_27DF0C078, &qword_238769E28, MEMORY[0x277CDE5B0]);
  v25 = sub_2384D0C70(&qword_27DF0C0B8, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
  v26 = v41;
  sub_23875DF60();
  (*(v42 + 8))(v9, v26);
  (*(v40 + 8))(v12, v10);
  v27 = v45;
  sub_23875CFC0();
  v52 = v10;
  v53 = v26;
  v54 = v24;
  v55 = v25;
  swift_getOpaqueTypeConformance2();
  sub_2384D0C70(&qword_27DF0C0C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v28 = v43;
  v29 = v47;
  sub_23875DB30();
  (*(v48 + 8))(v27, v29);
  (*(v44 + 8))(v16, v28);
  KeyPath = swift_getKeyPath(byte_238769E58);
  v31 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C0C8, &qword_238769E88) + 36)];
  *v31 = KeyPath;
  v31[8] = 2;
  LODWORD(KeyPath) = sub_23875D420();
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C0D0, &qword_238769E90) + 36)] = KeyPath;
  LOBYTE(KeyPath) = sub_23875D7D0();
  sub_23875C3D0();
  v32 = &v18[*(v46 + 36)];
  *v32 = KeyPath;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  sub_2384D2708();
  v37 = v49;
  sub_23875DE70();
  sub_238439884(v18, &qword_27DF0C088, &qword_238769E38);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C100, &qword_238769E98);
  *(v37 + *(result + 36)) = 0;
  return result;
}

double sub_2384CE5B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33[1] = a1;
  v37 = a2;
  v2 = sub_23875CDF0();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C108, &qword_238769EC8);
  MEMORY[0x28223BE20](v4 - 8);
  v33[3] = v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C0A0, &qword_238769E50);
  v33[0] = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C098, &qword_238769E48);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v33 - v14;
  sub_23875ED50();
  v33[2] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v16 = qword_2814F1B90;
  v17 = sub_23875EA50();
  v18 = sub_23875EA50();
  v19 = sub_23875EA50();
  v20 = [v16 localizedStringForKey:v17 value:v18 table:v19];

  v21 = sub_23875EA80();
  v23 = v22;

  v40 = v21;
  v41 = v23;
  type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView(0);
  sub_23875E410();
  swift_getKeyPath(aH);
  sub_23875E430();

  v24 = (*(v7 + 8))(v9, v6);
  MEMORY[0x28223BE20](v24);
  type metadata accessor for SharingStartDate(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C110, qword_238769ED0);
  sub_2384D0C70(&qword_27DF0C118, type metadata accessor for SharingStartDate, &unk_238769C8C);
  v32 = sub_2384D2AC0();
  sub_2384397A8(v32, v25, v26);
  sub_23875E280();
  v27 = sub_23843A3E8(&qword_27DF0C0A8, &qword_27DF0C0A0, &qword_238769E50, MEMORY[0x277CDF038]);
  sub_23875DBB0();
  (*(v33[0] + 8))(v12, v10);
  v28 = v36;
  sub_23875CDE0();
  v40 = v10;
  v41 = v27;
  swift_getOpaqueTypeConformance2();
  v29 = v35;
  v30 = v39;
  sub_23875DB80();
  (*(v38 + 8))(v28, v30);
  (*(v34 + 8))(v15, v29);

  return result;
}

double sub_2384CEBB4(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView(0);
  swift_getKeyPath(asc_238769EE8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C138, &qword_238769F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C130, &unk_238779BB0);
  sub_23843A3E8(&qword_27DF0C140, &qword_27DF0C138, &qword_238769F00, MEMORY[0x277D83980]);
  sub_2384D0C70(&qword_27DF0C118, type metadata accessor for SharingStartDate, &unk_238769C8C);
  sub_23843A3E8(&qword_27DF0C128, &qword_27DF0C130, &unk_238779BB0, MEMORY[0x277CE1138]);
  sub_23875E370();

  return result;
}

__n128 sub_2384CED94@<Q0>(uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_23875CE60();
  sub_2384CEE68(&v7);

  v4 = v8;
  v5 = v9;
  result = v7;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  return result;
}

void sub_2384CEE68(uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SharingStartDate(0);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v3 = qword_2814F1B90;
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  sub_23875EA80();
  sub_2384397A8(v8, v9, v10);
  v11 = sub_23875DAA0();
  v13 = v12;
  LOBYTE(v5) = v14;
  v16 = v15;

  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v16;
}

uint64_t sub_2384CF020@<X0>(uint64_t a1@<X8>)
{
  started = type metadata accessor for SharingStartDate(0);
  MEMORY[0x28223BE20](started);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  sub_23875E400();
  v5 = v33;
  swift_getKeyPath(aH);
  v33 = v5;
  sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  sub_23875BE90();

  v6 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  sub_2384D2A50(v5 + v6, v4, type metadata accessor for SharingStartDate);

  sub_2384AA698(v4, type metadata accessor for SharingStartDate);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();

  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  v12 = sub_23875EA80();
  v14 = v13;

  v31 = v12;
  v32 = v14;
  sub_2384397A8(v15, v16, v17);
  v18 = sub_23875DAA0();
  v20 = v19;
  LOBYTE(v14) = v21;
  LODWORD(v31) = sub_23875D420();
  v22 = sub_23875DA20();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_2384397FC(v18, v20, v14 & 1);

  *a1 = v22;
  *(a1 + 8) = v24;
  *(a1 + 16) = v26 & 1;
  *(a1 + 24) = v28;
  return result;
}

double sub_2384CF388()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C4E0();

  return result;
}

uint64_t sub_2384CF42C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_23875D310();
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BFE8, &qword_238769D60);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BFF0, &qword_238769D68);
  v29 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BFF8, &qword_238769D70);
  v30 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C000, &qword_238769D78);
  v18 = *(v17 - 8);
  v31 = v17;
  v32 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v28 - v19;
  v36 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C008, &unk_238769D80);
  sub_2384D0CC0();
  sub_23875D9C0();
  v21 = sub_23843A3E8(&qword_27DF0C040, &qword_27DF0BFE8, &qword_238769D60, MEMORY[0x277CDE5A0]);
  sub_23875DD80();
  (*(v8 + 8))(v10, v7);
  sub_23875D300();
  v37 = v7;
  v38 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = MEMORY[0x277CDE0D0];
  v24 = v33;
  sub_23875DF50();
  (*(v34 + 8))(v6, v24);
  (*(v29 + 8))(v13, v11);
  v37 = v11;
  v38 = v24;
  v39 = OpaqueTypeConformance2;
  v40 = v23;
  v25 = swift_getOpaqueTypeConformance2();
  sub_23875DB70();
  (*(v30 + 8))(v16, v14);
  v37 = v14;
  v38 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v31;
  sub_23875DE10();
  return (*(v32 + 8))(v20, v26);
}

double sub_2384CF8E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[7] = a2;
  sub_23875ED50();
  v20[6] = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v20[5] = v20;
  v20[2] = a1;
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

  v21 = sub_2384CDDD8();
  v22 = v4;
  sub_2384397A8(v21, v4, v5);
  v6 = sub_23875DAA0();
  v8 = v7;
  v10 = v9;
  sub_23875D930();
  v11 = sub_23875DA60();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_2384397FC(v6, v8, v10 & 1);

  KeyPath = swift_getKeyPath(a8);

  v21 = v11;
  v22 = v13;
  v23 = v15 & 1;
  v24 = v17;
  v25 = KeyPath;
  v26 = 0;
  v27 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C020, &qword_23877A9A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C030, &qword_238769D90);
  sub_23843A3E8(&qword_27DF0C018, &qword_27DF0C020, &qword_23877A9A0, MEMORY[0x277CE14C0]);
  sub_2384D0D84();
  sub_23875E3C0();

  return result;
}

uint64_t sub_2384CFBC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C048, &qword_238769DD0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C050, &qword_238769DD8);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v34 - v8;
  v9 = type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = v11;
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v46 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(v9 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  v37 = v13;
  sub_23875E400();
  v14 = v49;
  swift_getKeyPath(byte_238769DE0);
  v49 = v14;
  v36 = sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  sub_23875BE90();

  v42 = *(v14 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);

  v38 = type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView;
  sub_2384D2A50(a1, v12, type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView);
  v15 = v12;
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v43 = swift_allocObject();
  sub_2384D0F4C(v12, v43 + v16);
  sub_23875E400();
  v17 = v49;
  swift_getKeyPath(byte_238769DE0);
  v49 = v17;
  sub_23875BE90();

  v39 = *(v17 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);

  sub_2384D2A50(a1, v12, v38);
  v18 = swift_allocObject();
  sub_2384D0F4C(v15, v18 + v16);
  sub_23875E400();
  v19 = v49;
  swift_getKeyPath(byte_238769DE0);
  v49 = v19;
  sub_23875BE90();

  v20 = *(v19 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);

  if (v20)
  {
    v21 = v47;
    (*(v44 + 56))(v47, 1, 1, v45);
  }

  else
  {
    v22 = v35;
    sub_2384CDF7C(a1, v35);
    *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C058, &qword_238769E08) + 36)) = 0;
    v21 = v47;
    if (qword_27DF08D80 != -1)
    {
      swift_once();
    }

    v23 = qword_27DF2F920;
    v49 = qword_27DF2F920;

    v24 = sub_23875E2D0();
    *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C060, &qword_238769E10) + 36)) = v24;
    LOBYTE(v24) = sub_23875D780();
    v25 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C068, &qword_238769E18) + 36);
    *v25 = v23;
    *(v25 + 8) = v24;
    v26 = v45;
    v27 = (v22 + *(v45 + 36));
    *v27 = sub_2384CF388;
    v27[1] = 0;
    sub_238404F7C(v22, v21);
    (*(v44 + 56))(v21, 0, 1, v26);
  }

  v28 = v39 ^ 1;
  v29 = v48;
  sub_23843981C(v21, v48, &qword_27DF0C050, &qword_238769DD8);
  v30 = v41;
  *v41 = 0xD000000000000025;
  v30[1] = 0x80000002387887B0;
  *(v30 + 16) = v42;
  v31 = v43;
  v30[3] = sub_2384D39B4;
  v30[4] = v31;
  v30[5] = 0xD000000000000029;
  v30[6] = 0x80000002387887E0;
  *(v30 + 56) = v28;
  v30[8] = sub_2384D10B8;
  v30[9] = v18;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C070, &qword_238769E20);
  sub_23843981C(v29, v30 + *(v32 + 64), &qword_27DF0C050, &qword_238769DD8);

  sub_238439884(v21, &qword_27DF0C050, &qword_238769DD8);
  sub_238439884(v29, &qword_27DF0C050, &qword_238769DD8);
}

double sub_2384D0280()
{
  type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  sub_23875E400();
  swift_getKeyPath(byte_238769DE0);
  sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  sub_23875BE90();

  swift_getKeyPath(byte_238769DE0);
  sub_23875BEB0();

  *(v1 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) = (*(v1 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) & 1) == 0;
  swift_getKeyPath(byte_238769DE0);
  sub_23875BEA0();

  return result;
}

uint64_t sub_2384D03D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF18, &qword_238769A60);
  sub_2384CC75C();
  return sub_23875C8F0();
}

uint64_t sub_2384D048C(uint64_t a1)
{
  result = type metadata accessor for SharingStartDate(319);
  if (v2 <= 0x3F)
  {
    result = sub_23875BED0();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2384D0580(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2384D05C8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2384D064C(uint64_t a1)
{
  result = sub_23875B650();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2384D0720(uint64_t a1)
{
  sub_238449184(319, &qword_27DF0BF98, 0x277CC1E70);
  if (v1 <= 0x3F)
  {
    sub_2384D082C(319, &qword_27DF0BFA0, type metadata accessor for SharingStartDateModel, MEMORY[0x277CE12F8]);
    if (v2 <= 0x3F)
    {
      sub_2384D082C(319, &qword_27DF0BFA8, type metadata accessor for SharingStartDate, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2384D082C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2384D091C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BFB8, &qword_238769D38);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BFC0, &qword_238769D40);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BFC8, &qword_238769D48);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BFD0, &qword_238769D50);
  MEMORY[0x28223BE20](v14);
  v16 = v27 - v15;
  sub_23875E4B0();
  sub_23875C9C0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BFD8, &qword_238769D58);
  (*(*(v17 - 8) + 16))(v6, a1, v17);
  v18 = &v6[*(v4 + 44)];
  v19 = v33;
  *(v18 + 4) = v32;
  *(v18 + 5) = v19;
  *(v18 + 6) = v34;
  v20 = v29;
  *v18 = v28;
  *(v18 + 1) = v20;
  v21 = v31;
  *(v18 + 2) = v30;
  *(v18 + 3) = v21;
  sub_2384396E4(v6, v10, &qword_27DF0BFB8, &qword_238769D38);
  v10[*(v8 + 44)] = 0;
  if (qword_27DF08D80 != -1)
  {
    swift_once();
  }

  v22 = qword_27DF2F920;
  v27[1] = qword_27DF2F920;

  v23 = sub_23875E2D0();
  sub_2384396E4(v10, v13, &qword_27DF0BFC0, &qword_238769D40);
  *&v13[*(v11 + 36)] = v23;
  v24 = sub_23875D780();
  sub_2384396E4(v13, v16, &qword_27DF0BFC8, &qword_238769D48);
  v25 = &v16[*(v14 + 36)];
  *v25 = v22;
  v25[8] = v24;
  sub_2384396E4(v16, v27[0], &qword_27DF0BFD0, &qword_238769D50);
}

uint64_t sub_2384D0C70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2384D0CC0()
{
  result = qword_27DF0C010;
  if (!qword_27DF0C010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C008, &unk_238769D80);
    sub_23843A3E8(&qword_27DF0C018, &qword_27DF0C020, &qword_23877A9A0, MEMORY[0x277CE14C0]);
    sub_2384D0D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C010);
  }

  return result;
}

unint64_t sub_2384D0D84()
{
  result = qword_27DF0C028;
  if (!qword_27DF0C028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C030, &qword_238769D90);
    sub_2384D0E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C028);
  }

  return result;
}

unint64_t sub_2384D0E10()
{
  result = qword_27DF0C038;
  if (!qword_27DF0C038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF12EE0, &unk_2387759C0);
    sub_23843A3E8(&qword_27DF09C68, &unk_27DF12EF0, &unk_2387646D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C038);
  }

  return result;
}

uint64_t sub_2384D0ED0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_238495524(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2384D1120(v6);
  return sub_23875F4D0();
}

uint64_t sub_2384D0F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_5()
{
  v1 = (type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_2384D1120(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23875F5E0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for AccountStartDateModel(0);
        v6 = sub_23875ECA0();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2384D1584(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2384D1224(0, v2, 1, a1);
  }
}

void sub_2384D1224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v41 = sub_23875BCB0();
  v8 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v33 - v11;
  v34 = a2;
  if (a3 != a2)
  {
    v12 = *a4;
    v42 = sub_23875ED50();
    v43 = v12;
    v38 = (v8 + 8);
    v13 = (v12 + 8 * a3 - 8);
    v14 = a1 - a3;
    v15 = MEMORY[0x277D837D0];
LABEL_5:
    v36 = v13;
    v37 = a3;
    v35 = v14;
    while (1)
    {
      v49 = v14;
      v16 = v15;

      v44 = sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v47 = sub_2387585B0();
      v48 = v17;
      v45 = sub_2387585B0();
      v46 = v18;
      sub_2384397A8(v45, v18, v19);
      v20 = sub_23875F290();

      if (v20)
      {
        v47 = sub_2387585B0();
        v48 = v21;
        v45 = sub_2387585B0();
        v46 = v22;
        v23 = sub_23875F290();

        v15 = v16;
        v24 = v49;
        if (v23 != -1)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v25 = v39;
        sub_238758640();
        v26 = v40;
        sub_238758640();
        v27 = MEMORY[0x23EE60750](v25, v26);
        v28 = *v38;
        v29 = v26;
        v30 = v41;
        (*v38)(v29, v41);
        v28(v25, v30);

        v15 = v16;
        v24 = v49;
        if ((v27 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v43)
      {
        break;
      }

      v31 = *v13;
      *v13 = v13[1];
      v13[1] = v31;
      --v13;
      v32 = __CFADD__(v24, 1);
      v14 = v24 + 1;
      if (v32)
      {
LABEL_4:
        a3 = v37 + 1;
        v13 = v36 + 1;
        v14 = v35 - 1;
        if (v37 + 1 == v34)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_2384D1584(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v110 = a1;
  v122 = sub_23875BCB0();
  MEMORY[0x28223BE20](v122);
  v121 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v120 = &v108 - v9;
  v116 = a3;
  v10 = *(a3 + 8);
  if (v10 < 1)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_99:
    a3 = *v110;
    if (!*v110)
    {
      goto LABEL_137;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v131 = v12;
      v103 = *(v12 + 2);
      if (v103 >= 2)
      {
        while (*v116)
        {
          v104 = *&v12[16 * v103];
          v105 = *&v12[16 * v103 + 24];
          v106 = v117;
          sub_2384D2048((*v116 + 8 * v104), (*v116 + 8 * *&v12[16 * v103 + 16]), (*v116 + 8 * v105), a3);
          v117 = v106;
          if (v106)
          {
            goto LABEL_109;
          }

          if (v105 < v104)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_238490ED4(v12);
          }

          if (v103 - 2 >= *(v12 + 2))
          {
            goto LABEL_125;
          }

          v107 = &v12[16 * v103];
          *v107 = v104;
          *(v107 + 1) = v105;
          v131 = v12;
          sub_238490E48(v103 - 1);
          v12 = v131;
          v103 = *(v131 + 2);
          if (v103 <= 1)
          {
            goto LABEL_109;
          }
        }

        goto LABEL_135;
      }

LABEL_109:

      return;
    }

LABEL_131:
    v12 = sub_238490ED4(v12);
    goto LABEL_101;
  }

  v109 = a4;
  v11 = 0;
  v119 = (v8 + 8);
  v12 = MEMORY[0x277D84F90];
LABEL_4:
  v13 = v11++;
  v115 = v12;
  if (v11 < v10)
  {
    v14 = v13;
    v15 = *v116;
    v111 = v14;
    v16 = sub_23875ED50();

    sub_23875ED40();
    v114 = v16;
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    LODWORD(v124) = sub_23861E71C();

    a3 = v15 + 8 * v111 + 16;
    v112 = 8 * v111;
    v17 = 8 * v111 + 8;
    v12 = v115;
    v123 = v10;
    do
    {
      v25 = v17;
      v113 = v11++;
      if (v11 >= v10)
      {
        break;
      }

      v126 = v17;
      v118 = v11;

      v125 = sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v129 = sub_2387585B0();
      v130 = v18;
      v127 = sub_2387585B0();
      v128 = v19;
      sub_2384397A8(v127, v19, v20);
      v21 = sub_23875F290();

      if (v21)
      {
        v129 = sub_2387585B0();
        v130 = v22;
        v127 = sub_2387585B0();
        v128 = v23;
        v24 = sub_23875F290();

        LOBYTE(v24) = v24 == -1;
      }

      else
      {
        v26 = v120;
        sub_238758640();
        v27 = v121;
        sub_238758640();
        v24 = MEMORY[0x23EE60750](v26, v27);
        v28 = *v119;
        v29 = v27;
        v30 = v122;
        (*v119)(v29, v122);
        v28(v26, v30);
      }

      v12 = v115;
      v10 = v123;
      a3 += 8;
      v25 = v126;
      v17 = v126 + 8;
      v11 = v118;
    }

    while ((v124 & 1) == (v24 & 1));
    if (v124)
    {
      v13 = v111;
      if (v11 < v111)
      {
        goto LABEL_128;
      }

      if (v111 < v11)
      {
        v31 = v111;
        v32 = v112;
        v33 = v113;
        do
        {
          if (v31 != v33)
          {
            v36 = *v116;
            if (!*v116)
            {
              goto LABEL_134;
            }

            v34 = *(v36 + v32);
            *(v36 + v32) = *(v36 + v25);
            *(v36 + v25) = v34;
          }

          ++v31;
          v25 -= 8;
          v32 += 8;
        }

        while (v31 < v33--);
      }
    }

    else
    {
      v13 = v111;
    }
  }

  v37 = v116[1];
  if (v11 >= v37)
  {
    goto LABEL_48;
  }

  if (__OFSUB__(v11, v13))
  {
    goto LABEL_127;
  }

  if (v11 - v13 >= v109)
  {
    goto LABEL_48;
  }

  if (__OFADD__(v13, v109))
  {
    goto LABEL_129;
  }

  if (v13 + v109 >= v37)
  {
    a3 = v116[1];
  }

  else
  {
    a3 = v13 + v109;
  }

  if (a3 < v13)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (v11 == a3)
  {
    goto LABEL_48;
  }

  v38 = *v116;
  v123 = sub_23875ED50();
  v124 = v38;
  v39 = v38 + 8 * v11 - 8;
  v111 = v13;
  v112 = a3;
  v40 = v13 - v11;
LABEL_37:
  v118 = v11;
  v113 = v40;
  v114 = v39;
  v41 = v39;
  while (1)
  {
    v125 = v40;

    v126 = sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v129 = sub_2387585B0();
    v130 = v42;
    v127 = sub_2387585B0();
    v128 = v43;
    sub_2384397A8(v127, v43, v44);
    v45 = sub_23875F290();

    if (v45)
    {
      v129 = sub_2387585B0();
      v130 = v46;
      v127 = sub_2387585B0();
      v128 = v47;
      v48 = sub_23875F290();

      if (v48 != -1)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v49 = v120;
      sub_238758640();
      v50 = v121;
      sub_238758640();
      v51 = MEMORY[0x23EE60750](v49, v50);
      v52 = *v119;
      v53 = v50;
      v54 = v122;
      (*v119)(v53, v122);
      v52(v49, v54);

      if ((v51 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v55 = v125;
    if (!v124)
    {
      break;
    }

    v56 = *v41;
    *v41 = v41[1];
    v41[1] = v56;
    --v41;
    v40 = v55 + 1;
    if (v55 == -1)
    {
LABEL_36:
      v11 = v118 + 1;
      v39 = v114 + 8;
      v40 = v113 - 1;
      a3 = v112;
      if (v118 + 1 != v112)
      {
        goto LABEL_37;
      }

      v11 = v112;
      v12 = v115;
      v13 = v111;
LABEL_48:
      if (v11 < v13)
      {
        goto LABEL_126;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_238490EE8(0, *(v12 + 2) + 1, 1, v12);
      }

      a3 = *(v12 + 2);
      v57 = *(v12 + 3);
      v58 = a3 + 1;
      if (a3 >= v57 >> 1)
      {
        v12 = sub_238490EE8((v57 > 1), a3 + 1, 1, v12);
      }

      *(v12 + 2) = v58;
      v59 = &v12[16 * a3];
      *(v59 + 4) = v13;
      *(v59 + 5) = v11;
      v60 = *v110;
      if (!*v110)
      {
        goto LABEL_136;
      }

      if (a3)
      {
        while (1)
        {
          v61 = v58 - 1;
          if (v58 >= 4)
          {
            break;
          }

          if (v58 == 3)
          {
            v62 = *(v12 + 4);
            v63 = *(v12 + 5);
            v72 = __OFSUB__(v63, v62);
            v64 = v63 - v62;
            v65 = v72;
LABEL_68:
            if (v65)
            {
              goto LABEL_115;
            }

            v78 = &v12[16 * v58];
            v80 = *v78;
            v79 = *(v78 + 1);
            v81 = __OFSUB__(v79, v80);
            v82 = v79 - v80;
            v83 = v81;
            if (v81)
            {
              goto LABEL_118;
            }

            v84 = &v12[16 * v61 + 32];
            v86 = *v84;
            v85 = *(v84 + 1);
            v72 = __OFSUB__(v85, v86);
            v87 = v85 - v86;
            if (v72)
            {
              goto LABEL_121;
            }

            if (__OFADD__(v82, v87))
            {
              goto LABEL_122;
            }

            if (v82 + v87 >= v64)
            {
              if (v64 < v87)
              {
                v61 = v58 - 2;
              }

              goto LABEL_89;
            }

            goto LABEL_82;
          }

          v88 = &v12[16 * v58];
          v90 = *v88;
          v89 = *(v88 + 1);
          v72 = __OFSUB__(v89, v90);
          v82 = v89 - v90;
          v83 = v72;
LABEL_82:
          if (v83)
          {
            goto LABEL_117;
          }

          v91 = &v12[16 * v61];
          v93 = *(v91 + 4);
          v92 = *(v91 + 5);
          v72 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v72)
          {
            goto LABEL_120;
          }

          if (v94 < v82)
          {
            goto LABEL_3;
          }

LABEL_89:
          a3 = v61 - 1;
          if (v61 - 1 >= v58)
          {
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          if (!*v116)
          {
            goto LABEL_133;
          }

          v99 = *&v12[16 * a3 + 32];
          v100 = *&v12[16 * v61 + 40];
          v101 = v117;
          sub_2384D2048((*v116 + 8 * v99), (*v116 + 8 * *&v12[16 * v61 + 32]), (*v116 + 8 * v100), v60);
          v117 = v101;
          if (v101)
          {
            goto LABEL_109;
          }

          if (v100 < v99)
          {
            goto LABEL_111;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_238490ED4(v12);
          }

          if (a3 >= *(v12 + 2))
          {
            goto LABEL_112;
          }

          v102 = &v12[16 * a3];
          *(v102 + 4) = v99;
          *(v102 + 5) = v100;
          v131 = v12;
          sub_238490E48(v61);
          v12 = v131;
          v58 = *(v131 + 2);
          if (v58 <= 1)
          {
            goto LABEL_3;
          }
        }

        v66 = &v12[16 * v58 + 32];
        v67 = *(v66 - 64);
        v68 = *(v66 - 56);
        v72 = __OFSUB__(v68, v67);
        v69 = v68 - v67;
        if (v72)
        {
          goto LABEL_113;
        }

        v71 = *(v66 - 48);
        v70 = *(v66 - 40);
        v72 = __OFSUB__(v70, v71);
        v64 = v70 - v71;
        v65 = v72;
        if (v72)
        {
          goto LABEL_114;
        }

        v73 = &v12[16 * v58];
        v75 = *v73;
        v74 = *(v73 + 1);
        v72 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v72)
        {
          goto LABEL_116;
        }

        v72 = __OFADD__(v64, v76);
        v77 = v64 + v76;
        if (v72)
        {
          goto LABEL_119;
        }

        if (v77 >= v69)
        {
          v95 = &v12[16 * v61 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v72 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v72)
          {
            goto LABEL_123;
          }

          if (v64 < v98)
          {
            v61 = v58 - 2;
          }

          goto LABEL_89;
        }

        goto LABEL_68;
      }

LABEL_3:
      v10 = v116[1];
      if (v11 >= v10)
      {
        goto LABEL_99;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
}

uint64_t sub_2384D2048(char *a1, char *a2, char *a3, char *a4)
{
  v52 = sub_23875BCB0();
  v8 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v48 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v58 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[8 * v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v64 = &a4[8 * v15];
    if (a3 - a2 >= 8 && a2 > v58)
    {
      v53 = sub_23875ED50();
      v49 = (v8 + 8);
      v59 = a4;
LABEL_30:
      v57 = a1;
      v31 = a3;
      v32 = v64;
      v54 = a1 - 8;
      do
      {
        v55 = (v32 - 8);

        v56 = sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v62 = sub_2387585B0();
        v63 = v33;
        v60 = sub_2387585B0();
        v61 = v34;
        sub_2384397A8(v60, v34, v35);
        v36 = sub_23875F290();

        if (v36)
        {
          v62 = sub_2387585B0();
          v63 = v37;
          v60 = sub_2387585B0();
          v61 = v38;
          v39 = sub_23875F290();

          a3 = v31 - 8;
          if (v39 == -1)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v40 = v50;
          sub_238758640();
          v41 = v51;
          sub_238758640();
          v42 = MEMORY[0x23EE60750](v40, v41);
          v43 = *v49;
          v44 = v41;
          v45 = v52;
          (*v49)(v44, v52);
          v43(v40, v45);

          a3 = v31 - 8;
          if (v42)
          {
LABEL_40:
            a4 = v59;
            v46 = v54;
            if (v31 != v57)
            {
              *a3 = *v54;
            }

            if (v64 <= a4 || (a1 = v46, v46 <= v58))
            {
              a1 = v46;
              goto LABEL_46;
            }

            goto LABEL_30;
          }
        }

        a4 = v59;
        v32 = v55;
        if (v64 != v31)
        {
          *a3 = *v55;
        }

        v64 = v32;
        v31 = a3;
      }

      while (v32 > a4);
      v64 = v32;
      a1 = v57;
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v64 = &a4[8 * v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v55 = a3;
      v56 = sub_23875ED50();
      v54 = (v8 + 8);
      do
      {
        v57 = a2;
        v58 = a1;
        v59 = a4;

        sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v62 = sub_2387585B0();
        v63 = v16;
        v60 = sub_2387585B0();
        v61 = v17;
        sub_2384397A8(v60, v17, v18);
        v19 = sub_23875F290();

        if (v19)
        {
          v62 = sub_2387585B0();
          v63 = v20;
          v60 = sub_2387585B0();
          v61 = v21;
          v22 = sub_23875F290();

          if (v22 != -1)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v25 = v50;
          sub_238758640();
          v26 = v51;
          sub_238758640();
          v27 = MEMORY[0x23EE60750](v25, v26);
          v28 = *v54;
          v29 = v26;
          v30 = v52;
          (*v54)(v29, v52);
          v28(v25, v30);

          if ((v27 & 1) == 0)
          {
LABEL_16:
            v23 = v58;
            v24 = v59;
            a4 = v59 + 8;
            a2 = v57;
            if (v58 == v59)
            {
              goto LABEL_18;
            }

LABEL_17:
            *v23 = *v24;
            goto LABEL_18;
          }
        }

        v23 = v58;
        v24 = v57;
        a2 = v57 + 8;
        a4 = v59;
        if (v58 != v57)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v23 + 8;
      }

      while (a4 < v64 && a2 < v55);
    }
  }

LABEL_46:
  if (a1 != a4 || a1 >= &a4[(v64 - a4 + (v64 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, a4, 8 * ((v64 - a4) / 8));
  }

  return 1;
}

unint64_t sub_2384D2708()
{
  result = qword_27DF0C0D8;
  if (!qword_27DF0C0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C088, &qword_238769E38);
    sub_2384D2794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C0D8);
  }

  return result;
}

unint64_t sub_2384D2794()
{
  result = qword_27DF0C0E0;
  if (!qword_27DF0C0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C0D0, &qword_238769E90);
    sub_2384D284C();
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C0E0);
  }

  return result;
}

unint64_t sub_2384D284C()
{
  result = qword_27DF0C0E8;
  if (!qword_27DF0C0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C0C8, &qword_238769E88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C080, &qword_238769E30);
    sub_23875CFD0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C078, &qword_238769E28);
    sub_23875C850();
    sub_23843A3E8(&qword_27DF0C0B0, &qword_27DF0C078, &qword_238769E28, MEMORY[0x277CDE5B0]);
    sub_2384D0C70(&qword_27DF0C0B8, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
    swift_getOpaqueTypeConformance2();
    sub_2384D0C70(&qword_27DF0C0C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0C0F0, &qword_27DF0C0F8, &unk_238779B80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C0E8);
  }

  return result;
}

uint64_t sub_2384D2A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2384D2AC0()
{
  result = qword_27DF0C120;
  if (!qword_27DF0C120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C110, qword_238769ED0);
    sub_23843A3E8(&qword_27DF0C128, &qword_27DF0C130, &unk_238779BB0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C120);
  }

  return result;
}

uint64_t sub_2384D2BA4(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for SharingStartDate(0);
  (*(*(started - 8) + 40))(a2, a1, started);
  return a2;
}

uint64_t sub_2384D2C08(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for SharingStartDate(0);
  (*(*(started - 8) + 24))(a2, a1, started);
  return a2;
}

uint64_t sub_2384D2CAC(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for SharingStartDate(0);
  MEMORY[0x28223BE20](started);
  v54 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v9 = sub_238758680();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v53 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v56 = v2;
    v66 = MEMORY[0x277D84F90];
    v41 = v15;
    sub_23875F4E0();
    v63 = a1 + 56;
    v17 = sub_23875F320();
    v64 = *(a1 + 36);
    v47 = sub_23875ED50();
    v46 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel___observationRegistrar;
    v44 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected;
    v45 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
    result = swift_beginAccess();
    v18 = 0;
    v62 = v10 + 16;
    v43 = (v10 + 32);
    v42 = (v10 + 8);
    v40 = a1 + 64;
    v51 = a1;
    v52 = a2;
    v49 = v10;
    v50 = v9;
    v48 = v14;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
    {
      if ((*(v63 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_29;
      }

      if (v64 != *(a1 + 36))
      {
        goto LABEL_30;
      }

      v58 = 1 << v17;
      v59 = v17 >> 6;
      v57 = v18;
      v20 = *(a1 + 48) + *(v10 + 72) * v17;
      v60 = *(v10 + 16);
      v60(v14, v20, v9);
      v61 = sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_getKeyPath(aH, v40);
      v21 = v52;
      v65 = v52;
      sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
      sub_23875BE90();

      sub_2384D2A50(v21 + v45, v8, type metadata accessor for SharingStartDate);
      swift_getKeyPath(byte_238769DE0);
      v65 = v21;
      sub_23875BE90();

      v22 = *(v21 + v44);
      type metadata accessor for SharingStartDateModel(0);
      v23 = swift_allocObject();
      if (qword_27DF08CE8 != -1)
      {
        swift_once();
      }

      v24 = __swift_project_value_buffer(started, qword_27DF2F6C0);
      sub_2384D2A50(v24, v23 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate, type metadata accessor for SharingStartDate);
      v25 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected;
      *(v23 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) = 1;
      sub_23875BEC0();
      v26 = v8;
      v27 = v8;
      v28 = v54;
      sub_2384D2A50(v26, v54, type metadata accessor for SharingStartDate);
      sub_2384C9E84(v28);
      if (v22 == *(v23 + v25))
      {
        sub_2384AA698(v27, type metadata accessor for SharingStartDate);
        *(v23 + v25) = v22;
      }

      else
      {
        KeyPath = swift_getKeyPath(byte_238769DE0);
        MEMORY[0x28223BE20](KeyPath);
        *(&v40 - 2) = v23;
        *(&v40 - 8) = v22;
        v65 = v23;
        v30 = v56;
        sub_23875BE80();
        v56 = v30;

        sub_2384AA698(v27, type metadata accessor for SharingStartDate);
      }

      v8 = v27;
      v31 = v53;
      v14 = v48;
      v9 = v50;
      v60(v53, v48, v50);
      type metadata accessor for AccountStartDateModel(0);
      v32 = swift_allocObject();
      sub_23875BEC0();
      *(v32 + 16) = v23;
      (*v43)(v32 + OBJC_IVAR____TtC12FinanceKitUI21AccountStartDateModel_account, v31, v9);

      (*v42)(v14, v9);
      sub_23875F4C0();
      sub_23875F4F0();
      sub_23875F500();
      result = sub_23875F4D0();
      a1 = v51;
      v19 = 1 << *(v51 + 32);
      v10 = v49;
      if (v17 >= v19)
      {
        goto LABEL_31;
      }

      v33 = *(v63 + 8 * v59);
      if ((v33 & v58) == 0)
      {
        goto LABEL_32;
      }

      if (v64 != *(v51 + 36))
      {
        goto LABEL_33;
      }

      v34 = v33 & (-2 << (v17 & 0x3F));
      if (v34)
      {
        v19 = __clz(__rbit64(v34)) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v59 << 6;
        v36 = v59 + 1;
        v37 = (v40 + 8 * v59);
        while (v36 < (v19 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_238434834(v17, v64, 0);
            v19 = __clz(__rbit64(v38)) + v35;
            goto LABEL_25;
          }
        }

        result = sub_238434834(v17, v64, 0);
LABEL_25:
        v8 = v27;
      }

      v18 = v57 + 1;
      v17 = v19;
      if (v57 + 1 == v41)
      {
        return v66;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

unint64_t sub_2384D3460()
{
  result = qword_27DF0C1E8;
  if (!qword_27DF0C1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C1E0, &qword_23877EA30);
    sub_2384D34EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C1E8);
  }

  return result;
}

unint64_t sub_2384D34EC()
{
  result = qword_27DF0C1F0;
  if (!qword_27DF0C1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C1F8, &unk_238769FD0);
    sub_2384D3578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C1F0);
  }

  return result;
}

unint64_t sub_2384D3578()
{
  result = qword_27DF0C200;
  if (!qword_27DF0C200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C208, &qword_23876AE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C200);
  }

  return result;
}

unint64_t sub_2384D35FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0C210;
  if (!qword_27DF0C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C210);
  }

  return result;
}

uint64_t objectdestroy_63Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_2384D36D4()
{
  result = qword_27DF0C248;
  if (!qword_27DF0C248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BFD0, &qword_238769D50);
    sub_2384D378C();
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C248);
  }

  return result;
}

unint64_t sub_2384D378C()
{
  result = qword_27DF0C250;
  if (!qword_27DF0C250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BFC8, &qword_238769D48);
    sub_2384D3844();
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C250);
  }

  return result;
}

unint64_t sub_2384D3844()
{
  result = qword_27DF0C258;
  if (!qword_27DF0C258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BFC0, &qword_238769D40);
    sub_2384D38FC();
    sub_23843A3E8(&qword_27DF0A760, &qword_27DF0A768, &qword_238765D00, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C258);
  }

  return result;
}

unint64_t sub_2384D38FC()
{
  result = qword_27DF0C260;
  if (!qword_27DF0C260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BFB8, &qword_238769D38);
    sub_23843A3E8(&qword_27DF0C268, &qword_27DF0BFD8, &qword_238769D58, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C260);
  }

  return result;
}

uint64_t WalletCardsBalanceWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C270, &qword_23876A010);
  *&v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v2 = &v48 - v1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C278, &qword_23876A018);
  v54 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v4 = &v48 - v3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C280, &qword_23876A020);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v56 = &v48 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C288, &qword_23876A028);
  v57 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v55 = &v48 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C290, &unk_23876A030);
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v48 - v7;
  sub_238758890();
  v66 = sub_238758880();
  v8 = sub_238758A30();

  v9 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  v66 = v8;
  v67 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C298, &unk_23876A060);
  v10 = sub_2384D4654();
  sub_2384D4818(v10, v11, v12);
  sub_23875E880();
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

  v66 = v18;
  v67 = v20;
  v21 = sub_23843A3E8(&qword_2814F08E0, &qword_27DF0C270, &qword_23876A010, MEMORY[0x277CE3E10]);
  v24 = sub_2384397A8(v21, v22, v23);
  v25 = v53;
  sub_23875D180();

  (*(v52 + 8))(v2, v25);
  v26 = sub_23875EA50();
  v27 = sub_23875EA50();
  v28 = sub_23875EA50();
  v29 = [v13 localizedStringForKey:v26 value:v27 table:v28];

  v30 = sub_23875EA80();
  v32 = v31;

  v70 = v30;
  v71 = v32;
  v66 = v25;
  v67 = MEMORY[0x277D837D0];
  v68 = v21;
  v69 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v56;
  v35 = v59;
  sub_23875D150();

  (*(v54 + 8))(v4, v35);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2A0, &unk_23877D2F0);
  v51 = sub_23875E7D0();
  v36 = *(v51 - 8);
  v53 = *(v36 + 72);
  v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v38 = swift_allocObject();
  v52 = xmmword_2387632F0;
  *(v38 + 16) = xmmword_2387632F0;
  v50 = *MEMORY[0x277CE3B68];
  v49 = *(v36 + 104);
  v49(v38 + v37);
  v66 = v35;
  v67 = MEMORY[0x277D837D0];
  v68 = OpaqueTypeConformance2;
  v69 = v24;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v55;
  v41 = v60;
  sub_23875D160();

  (*(v58 + 8))(v34, v41);
  v66 = v41;
  v67 = v39;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v61;
  v44 = v63;
  sub_23875D190();
  (*(v57 + 8))(v40, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2A8, &qword_23876A080);
  sub_23875E800();
  *(swift_allocObject() + 16) = xmmword_238763B60;
  sub_23875E7E0();
  sub_23875E7F0();
  v45 = swift_allocObject();
  *(v45 + 16) = v52;
  (v49)(v45 + v37, v50, v51);
  v66 = v44;
  v67 = v42;
  swift_getOpaqueTypeConformance2();
  v46 = v64;
  sub_23875D170();

  return (*(v62 + 8))(v43, v46);
}

uint64_t sub_2384D430C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v16 = sub_23875D640();
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WalletCardsBalanceWidgetEntryView(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v15 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384D5088(a1, v8, type metadata accessor for ConnectedCardsTimelineEntry);
  v9 = *(v6 + 20);
  *&v8[v9] = swift_getKeyPath("X\x1B{E");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2C0, &qword_23876A1A0);
  swift_storeEnumTagMultiPayload();
  sub_23875D630();
  sub_23875E4A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3C8, &qword_238765790);
  sub_2384D50F0(&qword_2814F0A90, type metadata accessor for WalletCardsBalanceWidgetEntryView, &unk_23876A104);
  sub_23843A3E8(&qword_2814F09C8, &qword_27DF0A3C8, &qword_238765790, MEMORY[0x277CDF3A0]);
  v10 = v17;
  sub_23875DD30();
  (*(v3 + 8))(v5, v16);
  sub_2384D53F0(v8, type metadata accessor for WalletCardsBalanceWidgetEntryView);
  KeyPath = swift_getKeyPath("0\x1B{E");
  sub_238758890();
  v18 = sub_238758880();
  v12 = sub_238758A30();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C298, &unk_23876A060);
  v14 = (v10 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = v12;
  return result;
}

unint64_t sub_2384D4654()
{
  result = qword_2814F0978;
  if (!qword_2814F0978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C298, &unk_23876A060);
    type metadata accessor for WalletCardsBalanceWidgetEntryView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A3C8, &qword_238765790);
    sub_2384D50F0(&qword_2814F0A90, type metadata accessor for WalletCardsBalanceWidgetEntryView, &unk_23876A104);
    sub_23843A3E8(&qword_2814F09C8, &qword_27DF0A3C8, &qword_238765790, MEMORY[0x277CDF3A0]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0978);
  }

  return result;
}

uint64_t type metadata accessor for WalletCardsBalanceWidgetEntryView(uint64_t a1)
{
  result = qword_2814F0A80;
  if (!qword_2814F0A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2384D4818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2814F0A98[0];
  if (!qword_2814F0A98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814F0A98);
  }

  return result;
}

void sub_2384D4888(_WORD *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = 256;
}

void sub_2384D4968(uint64_t a1)
{
  type metadata accessor for ConnectedCardsTimelineEntry(319);
  if (v1 <= 0x3F)
  {
    sub_238439AC8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_2384D4A08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2B0, &qword_23876A158);
  MEMORY[0x28223BE20](v20);
  v4 = v19 - v3;
  v5 = type metadata accessor for SmallWalletCardsBalanceWidget(0);
  MEMORY[0x28223BE20](v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875E7D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2B8, &qword_23876A160);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v19 - v13;
  sub_23875ED50();
  v19[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for WalletCardsBalanceWidgetEntryView(0);
  sub_2384D4E88(&qword_27DF0C2C0, &qword_23876A1A0, MEMORY[0x277CE3BA0], v11);
  v15 = (*(v9 + 88))(v11, v8);
  v16 = *MEMORY[0x277CE3B68];
  sub_2384D5088(a1, v7, type metadata accessor for ConnectedCardsTimelineEntry);
  v17 = *(v5 + 20);
  *&v7[v17] = swift_getKeyPath(byte_23876A168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  sub_2384D5088(v7, v4, type metadata accessor for SmallWalletCardsBalanceWidget);
  swift_storeEnumTagMultiPayload();
  sub_2384D50F0(qword_2814F0B30, type metadata accessor for SmallWalletCardsBalanceWidget, &unk_238780460);
  sub_23875D1B0();
  sub_2384D53F0(v7, type metadata accessor for SmallWalletCardsBalanceWidget);
  if (v15 != v16)
  {
    (*(v9 + 8))(v11, v8);
  }

  sub_2384396E4(v14, v21, &qword_27DF0C2B8, &qword_23876A160);

  return result;
}

uint64_t sub_2384D4E88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_23875CDB0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_23843981C(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_23875EFF0();
    v19 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_2384D5088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384D50F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2384D5250@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_23875CDB0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23843981C(v8, v16, a1, a2);
  if (v17 == 1)
  {
    return a3(v16, a4);
  }

  sub_23875EFF0();
  v15 = sub_23875D730();
  sub_23875C110();

  sub_23875CDA0();
  swift_getAtKeyPath();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2384D53F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2384D5450()
{
  result = qword_2814F0900;
  if (!qword_2814F0900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C2D0, &qword_23876A210);
    sub_2384D54D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0900);
  }

  return result;
}

unint64_t sub_2384D54D4()
{
  result = qword_2814F0958;
  if (!qword_2814F0958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C2B8, &qword_23876A160);
    sub_2384D50F0(qword_2814F0B30, type metadata accessor for SmallWalletCardsBalanceWidget, &unk_238780460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0958);
  }

  return result;
}

uint64_t sub_2384D55D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875CDB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E8, &qword_23876A230);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_23843981C(v2, &v13 - v9, &qword_27DF0C2E8, &qword_23876A230);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2384396E4(v10, a1, &qword_27DF0C2F0, &qword_23876A238);
  }

  sub_23875EFF0();
  v12 = sub_23875D730();
  sub_23875C110();

  sub_23875CDA0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

FKBankConnectBackgroundRefreshConfirmationViewControllerProvider __swiftcall FKBankConnectBackgroundRefreshConfirmationViewControllerProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for FKBankConnectBackgroundRefreshConfirmationViewControllerProvider()
{
  result = qword_27DF0C310;
  if (!qword_27DF0C310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF0C310);
  }

  return result;
}

uint64_t sub_2384D5ABC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238757A30();
  v3 = MEMORY[0x277CC6A68];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EnvironmentValues.deviceInfo.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2384D5B2C(a1, a2, a3);
  sub_23875CDC0();
  return v4;
}

unint64_t sub_2384D5B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0C320;
  if (!qword_27DF0C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C320);
  }

  return result;
}

uint64_t (*EnvironmentValues.deviceInfo.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v6 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_2384D5B2C(v3, v4, v5);
  sub_23875CDC0();
  *v6 = v6[1];
  return sub_2384D5C54;
}

void sub_2384D5C54(_OWORD **a1)
{
  v1 = *a1;
  (*a1)[1] = **a1;
  sub_23875CDD0();

  free(v1);
}

uint64_t BankConnectWebAuthorizationError.hashValue.getter()
{
  v1 = *v0;
  sub_23875F700();
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

id sub_2384D5EA8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WebAuthenticationPresentationContextProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t BankConnectWebAuthorizationViewModel.__allocating_init(onAppearHandler:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t BankConnectWebAuthorizationViewModel.init(onAppearHandler:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t BankConnectWebAuthorizationViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2384D5F80@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BankConnectWebAuthorizationViewModel();
  result = sub_23875C260();
  *a2 = result;
  return result;
}

uint64_t BankConnectWebAuthorizationView.init(viewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_238447830;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t BankConnectWebAuthorizationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_23875CE20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C330, &unk_23876A2B0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v22 - v10);
  v12 = *v1;
  v23 = *(v1 + 8);
  v24 = v12;
  v13 = *(v1 + 16);
  *v11 = sub_23875E4A0();
  v11[1] = v14;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C338, &unk_23876B990) + 44);
  sub_23875C530();
  sub_23875CE10();
  (*(v3 + 16))(v5, v8, v2);
  sub_2384D6668(&unk_27DF0C340, 255, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
  v16 = sub_23875C5E0();
  (*(v3 + 8))(v8, v2);

  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E80, &unk_23876A2C0) + 36)] = v16;
  v17 = swift_allocObject();
  v18 = v23;
  v19 = v24;
  *(v17 + 16) = v24;
  *(v17 + 24) = v18;
  *(v17 + 32) = v13;
  v20 = (v11 + *(v9 + 36));
  *v20 = sub_2384D63E4;
  v20[1] = v17;
  v20[2] = 0;
  v20[3] = 0;
  sub_2384D63F0(v19, v18);
  sub_2384D63F8();
  sub_23875DE40();
  return sub_2384D64E8(v11);
}

double sub_2384D62BC(uint64_t a1, uint64_t a2, char a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BankConnectWebAuthorizationViewModel();
  sub_2384D6668(&qword_27DF0C3D8, v3, type metadata accessor for BankConnectWebAuthorizationViewModel, &protocol conformance descriptor for BankConnectWebAuthorizationViewModel);
  v4 = *(sub_23875C490() + 16);

  v4(v5);

  return result;
}

unint64_t sub_2384D63F8()
{
  result = qword_27DF0C350;
  if (!qword_27DF0C350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C330, &unk_23876A2B0);
    sub_2384D6484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C350);
  }

  return result;
}

unint64_t sub_2384D6484()
{
  result = qword_27DF0C358;
  if (!qword_27DF0C358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C360, &qword_23876B980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C358);
  }

  return result;
}

uint64_t sub_2384D64E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C330, &unk_23876A2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2384D6554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0C368;
  if (!qword_27DF0C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C368);
  }

  return result;
}

uint64_t sub_2384D6668(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_2384D66EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0C3E0;
  if (!qword_27DF0C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C3E0);
  }

  return result;
}

uint64_t sub_2384D675C@<X0>(uint64_t a1@<X8>)
{
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
  sub_23875D7F0();
  v14 = sub_23875DA60();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_2384397FC(v10, v12, v4 & 1);

  LOBYTE(v10) = sub_23875D7A0();
  sub_23875C3D0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  result = sub_23875D440();
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  *(a1 + 32) = v10;
  *(a1 + 40) = v22;
  *(a1 + 48) = v24;
  *(a1 + 56) = v26;
  *(a1 + 64) = v28;
  *(a1 + 72) = 0;
  *(a1 + 76) = result;
  return result;
}

unint64_t sub_2384D6954()
{
  result = qword_27DF0C3E8;
  if (!qword_27DF0C3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C3F0, &qword_23876A628);
    sub_2384BF528();
    sub_2384D69E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C3E8);
  }

  return result;
}

unint64_t sub_2384D69E0()
{
  result = qword_2814F0930;
  if (!qword_2814F0930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF12F00, &unk_238769090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0930);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2384D6A68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_2384D6AB0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2384D6B30@<X0>(uint64_t a1@<X8>)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3D0, &unk_238771220);
  MEMORY[0x28223BE20](v57);
  v4 = &v55 - v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3D8, &unk_23876A8A0);
  MEMORY[0x28223BE20](v58);
  v6 = &v55 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3E0, &qword_238765840);
  MEMORY[0x28223BE20](v59);
  v62 = &v55 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3E8, &unk_23876A8B0);
  MEMORY[0x28223BE20](v61);
  v66 = &v55 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3F0, &qword_238765848);
  MEMORY[0x28223BE20](v65);
  v69 = &v55 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3F8, &unk_23876A8C0);
  MEMORY[0x28223BE20](v67);
  v70 = &v55 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A400, &qword_238765850);
  MEMORY[0x28223BE20](v64);
  v12 = &v55 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A408, &qword_23876A8D0);
  MEMORY[0x28223BE20](v68);
  v71 = &v55 - v13;
  v14 = sub_23875C980();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *v1;
  v17 = qword_23876AB28[v63];
  v19 = *(v18 + 28);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_23875CF50();
  (*(*(v21 - 8) + 104))(&v16[v19], v20, v21);
  *v16 = v17;
  *(v16 + 1) = v17;
  v60 = v16;
  v22 = sub_23875E0D0();
  v23 = sub_23875D820();
  KeyPath = swift_getKeyPath(byte_23876A8D8);
  *&v72 = v22;
  *(&v72 + 1) = KeyPath;
  *&v73 = v23;
  v25 = *MEMORY[0x277CDF9E8];
  v26 = sub_23875C880();
  (*(*(v26 - 8) + 104))(v4, v25, v26);
  sub_2384DD908(&qword_2814F0998, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_23875E9E0();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A410, &unk_238773730);
    sub_23846E74C();
    v55 = v12;
    v56 = a1;
    sub_23843A3E8(&qword_2814F0870, &qword_27DF0A3D0, &unk_238771220, MEMORY[0x277D84470]);
    sub_23875DC50();
    sub_238439884(v4, &qword_27DF0A3D0, &unk_238771220);

    *&v6[*(v58 + 36)] = sub_23875E040();
    sub_23875E4A0();
    sub_23875C9C0();
    v28 = v62;
    sub_2384396E4(v6, v62, &qword_27DF0A3D8, &unk_23876A8A0);
    v29 = (v28 + *(v59 + 36));
    v30 = v77;
    v29[4] = v76;
    v29[5] = v30;
    v29[6] = v78;
    v31 = v73;
    *v29 = v72;
    v29[1] = v31;
    v32 = v75;
    v29[2] = v74;
    v29[3] = v32;
    sub_23875E010();
    v33 = sub_23875E060();

    v34 = v28;
    v35 = v66;
    sub_2384396E4(v34, v66, &qword_27DF0A3E0, &qword_238765840);
    v36 = v35 + *(v61 + 36);
    *v36 = v33;
    *(v36 + 8) = xmmword_2387657B0;
    *(v36 + 24) = 0x4000000000000000;
    v37 = [objc_opt_self() systemBlackColor];
    v38 = sub_23875DFB0();
    LOBYTE(v33) = sub_23875D780();
    v39 = v35;
    v40 = v69;
    sub_2384396E4(v39, v69, &qword_27DF0A3E8, &unk_23876A8B0);
    v41 = v40 + *(v65 + 36);
    *v41 = v38;
    *(v41 + 8) = v33;
    v42 = v63;
    sub_23875E4A0();
    sub_23875C5C0();
    v43 = v70;
    sub_2384396E4(v40, v70, &qword_27DF0A3F0, &qword_238765848);
    v44 = (v43 + *(v67 + 36));
    v45 = v80;
    *v44 = v79;
    v44[1] = v45;
    v44[2] = v81;
    v46 = v55;
    v47 = &v55[*(v64 + 36)];
    v48 = v60;
    sub_2384DD008(v60, v47, MEMORY[0x277CDFC08]);
    *(v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)) = 256;
    sub_2384396E4(v43, v46, &qword_27DF0A3F8, &unk_23876A8C0);
    v49 = sub_23875E4A0();
    v51 = v50;
    v52 = v71;
    v53 = &v71[*(v68 + 36)];
    sub_2384D73EC(v48, v42, v53);
    v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A430, &unk_238768E20) + 36));
    *v54 = v49;
    v54[1] = v51;
    sub_2384396E4(v46, v52, &qword_27DF0A400, &qword_238765850);
    sub_2384396E4(v52, v56, &qword_27DF0A408, &qword_23876A8D0);
    return sub_23846E8D0(v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2384D73EC(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_23875DFD0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A438, &unk_2387662D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21[-v11];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    (*(v7 + 104))(v9, *MEMORY[0x277CE0EE0], v6);
    sub_23875E090();
  }

  else
  {
    sub_23875E070();
  }

  v13 = sub_23875E060();

  sub_23875C4C0();
  sub_2384DD008(a1, v12, MEMORY[0x277CDFC08]);
  v14 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A440, &unk_238768D30) + 36)];
  v15 = v22;
  *v14 = *&v21[8];
  *(v14 + 1) = v15;
  *(v14 + 4) = v23;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A448, &qword_2387662E0);
  *&v12[*(v16 + 52)] = v13;
  *&v12[*(v16 + 56)] = 256;
  v17 = sub_23875E4A0();
  v19 = v18;
  v20 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A450, &unk_238768D40) + 36)];
  *v20 = v17;
  v20[1] = v19;
  sub_2384396E4(v12, a3, &qword_27DF0A438, &unk_2387662D0);
}

uint64_t sub_2384D76EC()
{
  v1 = sub_23875BE20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 72))
  {
    v5 = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2387632F0;
    v7 = MEMORY[0x277D83C10];
    *(v6 + 56) = MEMORY[0x277D83B88];
    *(v6 + 64) = v7;
    *(v6 + 32) = v5;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v8 = qword_2814F1B90;
    v9 = sub_23875EA50();
    v10 = sub_23875EA50();
    v11 = sub_23875EA50();
    v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

    sub_23875EA80();
    v13 = sub_23875EAA0();

    goto LABEL_9;
  }

  v14 = *(v0 + 64);
  sub_23875BDB0();
  v15 = sub_23875BD60();
  result = (*(v2 + 8))(v4, v1);
  v17 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v17 < *(v15 + 16))
  {
    v13 = *(v15 + 16 * v17 + 32);

LABEL_9:

    return v13;
  }

LABEL_12:
  __break(1u);
  return result;
}

__n128 sub_2384D7958@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v46 = sub_23875C950();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TransactionUnitList(0);
  MEMORY[0x28223BE20](v36);
  v5 = (v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C3F8, &qword_23876A710);
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = v35 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C400, qword_23876A718);
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v39 = v35 - v7;
  v48 = v1;
  sub_23875ED50();
  v37 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v52 = *v1;
  *&v53 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  sub_23875E310();
  v8 = v49;
  v9 = v50;
  v10 = v51;
  v35[1] = v51;
  v52 = *(v1 + 24);
  *&v53 = *(v1 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
  sub_23875E310();
  v11 = v49;
  v12 = v50;
  v13 = v51;
  v14 = *(v2 + 7);
  v15 = *(v2 + 8);
  v16 = *(v2 + 72);
  v49 = *(v2 + 6);
  *v5 = v8;
  v5[1] = v9;
  v35[3] = v8;
  v35[2] = v9;
  v5[2] = v10;
  v5[3] = v11;
  v35[5] = v11;
  v5[4] = v12;
  v5[5] = v13;
  v35[4] = v12;
  v17 = sub_23875A230();
  KeyPath = swift_getKeyPath(aX_0, v17);
  sub_23843981C(&v49, &v52, &qword_27DF0B5C0, &unk_2387683E0);

  MEMORY[0x23EE5ECA0](0, KeyPath);

  sub_23844F3E4(v14, v15, v16);
  v19 = v36;
  sub_23875C510();
  *(v5 + v19[7]) = v49;
  v20 = v5 + v19[8];
  *v20 = v14;
  *(v20 + 1) = v15;
  v20[16] = v16;
  v21 = sub_23844FA6C(v14, v15, v16);
  v23 = v22;

  v24 = (v5 + v19[9]);
  *v24 = v21;
  v24[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C408, &qword_23876A788);
  sub_2384DC790();
  sub_2384DD908(&qword_27DF0C438, type metadata accessor for TransactionUnitList, &unk_23877B648);
  v25 = v38;
  sub_23875C750();
  v26 = v44;
  sub_23875C940();
  sub_23843A3E8(&qword_27DF0C440, &qword_27DF0C3F8, &qword_23876A710, MEMORY[0x277CDD938]);
  sub_2384DD908(&qword_27DF0A778, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v27 = v39;
  v28 = v41;
  v29 = v46;
  sub_23875DB30();
  (*(v45 + 8))(v26, v29);
  (*(v40 + 8))(v25, v28);
  sub_23875E4A0();
  sub_23875C9C0();
  v30 = v47;
  (*(v42 + 32))(v47, v27, v43);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C448, &qword_23876A7A8) + 36);
  v32 = v57;
  *(v31 + 64) = v56;
  *(v31 + 80) = v32;
  *(v31 + 96) = v58;
  v33 = v53;
  *v31 = v52;
  *(v31 + 16) = v33;
  result = v55;
  *(v31 + 32) = v54;
  *(v31 + 48) = result;
  return result;
}

__n128 sub_2384D804C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875CE60();
  v17 = 0;
  sub_2384D8290(a1, &v27);
  v23 = v31;
  v24[0] = *v32;
  *(v24 + 9) = *&v32[9];
  v19 = v27;
  v20 = v28;
  v21 = v29;
  v22 = v30;
  v25[0] = v27;
  v25[1] = v28;
  v25[2] = v29;
  v25[3] = v30;
  v25[4] = v31;
  v26[0] = *v32;
  *(v26 + 9) = *&v32[9];
  sub_23843981C(&v19, v15, &qword_27DF0C450, &qword_23876A7B0);
  sub_238439884(v25, &qword_27DF0C450, &qword_23876A7B0);
  *&v16[55] = v22;
  *&v16[71] = v23;
  *&v16[87] = v24[0];
  *&v16[96] = *(v24 + 9);
  *&v16[7] = v19;
  *&v16[23] = v20;
  *&v16[39] = v21;
  v5 = v17;
  sub_23875E4B0();
  sub_23875C9C0();

  *&v18[55] = v30;
  *&v18[71] = v31;
  *&v18[87] = *v32;
  *&v18[103] = *&v32[16];
  *&v18[7] = v27;
  *&v18[23] = v28;
  *&v18[39] = v29;
  *a2 = v4;
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = v5;
  v6 = *&v16[32];
  *(a2 + 65) = *&v16[48];
  v7 = *&v16[80];
  *(a2 + 81) = *&v16[64];
  *(a2 + 97) = v7;
  *(a2 + 113) = *&v16[96];
  v8 = *&v16[16];
  *(a2 + 17) = *v16;
  *(a2 + 33) = v8;
  *(a2 + 49) = v6;
  v9 = *v18;
  v10 = *&v18[16];
  v11 = *&v18[32];
  *(a2 + 177) = *&v18[48];
  *(a2 + 161) = v11;
  *(a2 + 145) = v10;
  *(a2 + 129) = v9;
  result = *&v18[64];
  v13 = *&v18[80];
  v14 = *&v18[96];
  *(a2 + 240) = *&v18[111];
  *(a2 + 225) = v14;
  *(a2 + 209) = v13;
  *(a2 + 193) = result;
  *(a2 + 248) = 0;
  return result;
}

double sub_2384D8290@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875D030();
  LOBYTE(v21[0]) = 1;
  sub_2384D8478(a1, v17);
  *&v16[7] = v17[0];
  *&v16[55] = v18;
  *&v16[39] = v17[2];
  *&v16[23] = v17[1];
  v5 = v21[0];
  v19[0] = v4;
  v19[1] = 0;
  v20[0] = v21[0];
  v6 = *v16;
  *&v20[1] = *v16;
  *&v20[64] = *(&v18 + 1);
  v7 = *&v16[48];
  *&v20[49] = *&v16[48];
  v8 = *&v16[32];
  *&v20[33] = *&v16[32];
  v9 = *&v16[16];
  *&v20[17] = *&v16[16];
  *&v15[23] = *v20;
  *&v15[7] = v4;
  *&v15[71] = *&v20[48];
  *&v15[87] = *&v20[64];
  *&v15[55] = *&v20[32];
  *&v15[39] = *&v20[16];
  v10 = *v15;
  *(a2 + 17) = *&v15[16];
  *(a2 + 1) = v10;
  v11 = *&v15[64];
  *(a2 + 80) = *&v15[79];
  *(a2 + 65) = v11;
  v12 = *&v15[32];
  *(a2 + 49) = *&v15[48];
  *(a2 + 33) = v12;
  v14[88] = 1;
  *a2 = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  v21[0] = v4;
  v21[1] = 0;
  v22 = v5;
  v23 = v6;
  *&v26[15] = *&v16[63];
  *v26 = v7;
  v25 = v8;
  v24 = v9;
  sub_23843981C(v19, v14, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v21, &qword_27DF0BA70, &unk_238769590);

  return result;
}

uint64_t sub_2384D8478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_2384D76EC();
  DWORD1(v54) = HIDWORD(v3);
  *(&v54 + 1) = v4;
  sub_2384397A8(v3, v4, v5);
  v6 = sub_23875DAA0();
  v8 = v7;
  v10 = v9;
  LODWORD(v54) = sub_23875D420();
  v11 = sub_23875DA20();
  v13 = v12;
  v15 = v14;
  sub_2384397FC(v6, v8, v10 & 1);

  sub_23875D820();
  v16 = sub_23875DA60();
  v18 = v17;
  v20 = v19;

  sub_2384397FC(v11, v13, v15 & 1);

  sub_23875D850();
  v50 = sub_23875D9E0();
  v51 = v21;
  v23 = v22;
  v49 = v24;
  sub_2384397FC(v16, v18, v20 & 1);

  v54 = *(a1 + 24);
  v55 = *(a1 + 40);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
  MEMORY[0x23EE62DC0](&v53, v25);
  v26 = v53;
  if (*(v53 + 16) && (v27 = sub_238547964(*(a1 + 56), *(a1 + 64), *(a1 + 72)), (v28 & 1) != 0))
  {
    v29 = *(*(v26 + 56) + 8 * v27);
  }

  else
  {
    v29 = 0;
  }

  *&v54 = sub_2384DC900(v29);
  *(&v54 + 1) = v30;
  v31 = sub_23875DAA0();
  v33 = v32;
  v35 = v34;
  LODWORD(v54) = sub_23875D440();
  v36 = sub_23875DA20();
  v38 = v37;
  v40 = v39;
  sub_2384397FC(v31, v33, v35 & 1);

  sub_23875D970();
  v41 = sub_23875DA60();
  v43 = v42;
  v45 = v44;
  v47 = v46;

  sub_2384397FC(v36, v38, v40 & 1);

  LOBYTE(v54) = v49 & 1;
  LOBYTE(v53) = v45 & 1;
  *a2 = v50;
  *(a2 + 8) = v23;
  *(a2 + 16) = v49 & 1;
  *(a2 + 24) = v51;
  *(a2 + 32) = v41;
  *(a2 + 40) = v43;
  *(a2 + 48) = v45 & 1;
  *(a2 + 56) = v47;
  sub_23843980C(v50, v23, v49 & 1);

  sub_23843980C(v41, v43, v45 & 1);

  sub_2384397FC(v41, v43, v45 & 1);

  sub_2384397FC(v50, v23, v49 & 1);
}

uint64_t sub_2384D8860()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4B8, &qword_23876A960);
  sub_23875E1B0();
  swift_getKeyPath(asc_23876A998);
  sub_2384DD908(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider, &unk_238763F60);
  sub_23875BE90();

  v0 = *(v9 + 32);

  v1 = *(v0 + 16);

  if (v1 < 2)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v2 = qword_2814F1B90;
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v2 = qword_2814F1B90;
  }

  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  v7 = sub_23875EA80();
  return v7;
}

uint64_t sub_2384D8A70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4B8, &qword_23876A960);
  sub_23875E1B0();
  swift_getKeyPath(byte_23876AA20);
  sub_2384DD908(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider, &unk_238763F60);
  sub_23875BE90();

  v0 = *(v9 + 48);

  v1 = *(v0 + 16);

  if (v1 < 2)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v2 = qword_2814F1B90;
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v2 = qword_2814F1B90;
  }

  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  v7 = sub_23875EA80();
  return v7;
}

uint64_t sub_2384D8C80@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E18, &unk_238761CA0);
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x28223BE20](v2);
  v58 = &v49 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C488, &qword_23876A920);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x28223BE20](v4);
  v51 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C490, &qword_23876A928);
  v8 = *(v7 - 8);
  v49 = v7;
  v50 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C498, &qword_23876A930);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - v13;
  v59 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4A0, &qword_23876A938);
  sub_23843A3E8(&qword_27DF0C4A8, &qword_27DF0C4A0, &qword_23876A938, MEMORY[0x277CE14C0]);
  sub_23875D9C0();
  v15 = sub_23875D310();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875D300();
  v19 = sub_23843A3E8(&qword_27DF0C4B0, &qword_27DF0C498, &qword_23876A930, MEMORY[0x277CDE5A0]);
  v20 = MEMORY[0x277CDE0D0];
  sub_23875DF50();
  (*(v16 + 8))(v18, v15);
  (*(v12 + 8))(v14, v11);
  v61 = v11;
  v62 = v15;
  v63 = v19;
  v64 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v51;
  v23 = v49;
  sub_23875DB70();
  (*(v50 + 8))(v10, v23);
  v61 = v23;
  v62 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = v53;
  sub_23875DE10();
  (v54[1])(v22, v24);
  v25 = type metadata accessor for GroupedTransactionsView(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25 - 8);
  sub_2384DD008(v52, &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupedTransactionsView);
  sub_23875ED50();
  v28 = sub_23875ED40();
  v29 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  *(v30 + 16) = v28;
  *(v30 + 24) = v31;
  sub_2384DD8A0(&v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for GroupedTransactionsView);
  v32 = sub_23875ED80();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = &v49 - v35;
  sub_23875ED60();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v53 = sub_23875C830();
    v54 = &v49;
    v52 = *(v53 - 8);
    MEMORY[0x28223BE20](v53);
    v38 = &v49 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_23875F470();

    v61 = 0xD000000000000037;
    v62 = 0x8000000238788CB0;
    v60 = 249;
    v39 = sub_23875F600();
    MEMORY[0x23EE63650](v39);

    v41 = MEMORY[0x28223BE20](v40);
    (*(v33 + 16))(&v49 - v35, v36, v32, v41);
    sub_23875C820();
    (*(v33 + 8))(v36, v32);
    v42 = v57;
    (*(v55 + 32))(v57, v58, v56);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E20, &unk_23876A950);
    return (*(v52 + 32))(v42 + *(v43 + 36), v38, v53);
  }

  else
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E28, &unk_238761CB0);
    v46 = v57;
    v47 = (v57 + *(v45 + 36));
    v48 = sub_23875C6E0();
    (*(v33 + 32))(&v47[*(v48 + 20)], &v49 - v35, v32);
    *v47 = &unk_23876A948;
    *(v47 + 1) = v30;
    return (*(v55 + 32))(v46, v58, v56);
  }
}

double sub_2384D94F8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4C0, &qword_23876A968);
  v109 = *(v3 - 8);
  v110 = v3;
  MEMORY[0x28223BE20](v3);
  v97 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v95 = &v91 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4C8, &qword_23876A970);
  v101 = *(v7 - 8);
  v102 = v7;
  MEMORY[0x28223BE20](v7);
  v96 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = &v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4D0, &qword_23876A978);
  MEMORY[0x28223BE20](v11 - 8);
  v105 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v104 = &v91 - v14;
  MEMORY[0x28223BE20](v15);
  v103 = &v91 - v16;
  MEMORY[0x28223BE20](v17);
  v116 = &v91 - v18;
  v19 = sub_23875C400();
  v112 = *(v19 - 8);
  v113 = v19;
  MEMORY[0x28223BE20](v19);
  v111 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4D8, &qword_23876A980);
  v93 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v22 = &v91 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4E0, &qword_23876A988);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v91 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4E8, &qword_23876A990);
  MEMORY[0x28223BE20](v27 - 8);
  v100 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v91 - v30;
  sub_23875ED50();
  v99 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v32 = a1[1];
  v98 = *a1;
  v118 = v98;
  v119 = v32;
  v115 = v32;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4B8, &qword_23876A960);
  sub_23875E1B0();
  v33 = v117;
  swift_getKeyPath(asc_23876A998);
  v118 = v33;
  sub_2384DD908(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider, &unk_238763F60);
  sub_23875BE90();

  v34 = *(v33 + 32);

  v35 = *(v34 + 16);

  v107 = a1;
  v108 = v31;
  if (v35 && *(a1[5] + 16))
  {
    v118 = sub_2384D8860();
    v119 = v36;
    MEMORY[0x28223BE20](v118);
    *(&v91 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4F0, &qword_23876A9C0);
    v37 = sub_2384DD154();
    sub_2384397A8(v37, v38, v39);
    v31 = v108;
    sub_23875E3A0();
    v41 = v111;
    v40 = v112;
    v42 = v113;
    (*(v112 + 104))(v111, *MEMORY[0x277CDF350], v113);
    sub_2384DD4E0(&qword_27DF0C538, &qword_27DF0C4D8, &qword_23876A980, sub_2384DD154);
    v43 = v26;
    v44 = v92;
    sub_23875DC80();
    (*(v40 + 8))(v41, v42);
    (*(v93 + 8))(v22, v44);
    (*(v24 + 32))(v31, v43, v23);
    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = v109;
  v47 = v110;
  (*(v24 + 56))(v31, v45, 1, v23);
  v48 = v98;
  v118 = v98;
  v119 = v115;
  sub_23875E1B0();
  v49 = v117;
  swift_getKeyPath(byte_23876A9E8);
  v118 = v49;
  sub_23875BE90();

  v50 = *(v49 + 40);

  if (*(v50 + 16))
  {
    v51 = *(v50 + 32);

    v118 = v51;
    v118 = sub_23875F600();
    v119 = v52;
    MEMORY[0x28223BE20](v118);
    *(&v91 - 2) = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C540, &qword_23876AA10);
    v53 = sub_2384DD328();
    sub_2384397A8(v53, v54, v55);
    v56 = v95;
    sub_23875E3A0();
    v58 = v111;
    v57 = v112;
    v59 = v113;
    (*(v112 + 104))(v111, *MEMORY[0x277CDF350], v113);
    sub_2384DD4E0(&qword_27DF0C568, &qword_27DF0C4C0, &qword_23876A968, sub_2384DD328);
    v60 = v94;
    sub_23875DC80();
    (*(v57 + 8))(v58, v59);
    (*(v46 + 8))(v56, v47);
    v61 = v101;
    v62 = v102;
    v63 = v116;
    (*(v101 + 32))(v116, v60, v102);
    v64 = 0;
  }

  else
  {

    v64 = 1;
    v63 = v116;
    v61 = v101;
    v62 = v102;
  }

  v65 = *(v61 + 56);
  v66 = 1;
  v65(v63, v64, 1, v62);
  v118 = v48;
  v119 = v115;
  sub_23875E1B0();
  v67 = v117;
  swift_getKeyPath(byte_23876AA20);
  v118 = v67;
  sub_23875BE90();

  v68 = *(v67 + 48);

  v69 = *(v68 + 16);

  if (v69)
  {
    v70 = v107;
    v118 = sub_2384D8A70();
    v119 = v71;
    MEMORY[0x28223BE20](v118);
    *(&v91 - 2) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C540, &qword_23876AA10);
    v72 = sub_2384DD328();
    sub_2384397A8(v72, v73, v74);
    v75 = v97;
    sub_23875E3A0();
    v77 = v111;
    v76 = v112;
    v78 = v113;
    (*(v112 + 104))(v111, *MEMORY[0x277CDF350], v113);
    sub_2384DD4E0(&qword_27DF0C568, &qword_27DF0C4C0, &qword_23876A968, sub_2384DD328);
    v79 = v96;
    v115 = v65;
    v80 = v110;
    sub_23875DC80();
    (*(v76 + 8))(v77, v78);
    v81 = v80;
    v65 = v115;
    (*(v109 + 8))(v75, v81);
    v82 = v103;
    (*(v61 + 32))(v103, v79, v62);
    v66 = 0;
  }

  else
  {
    v82 = v103;
  }

  v65(v82, v66, 1, v62);
  v83 = v108;
  v84 = v100;
  sub_23843981C(v108, v100, &qword_27DF0C4E8, &qword_23876A990);
  v85 = v116;
  v86 = v104;
  sub_23843981C(v116, v104, &qword_27DF0C4D0, &qword_23876A978);
  v87 = v105;
  sub_23843981C(v82, v105, &qword_27DF0C4D0, &qword_23876A978);
  v88 = v106;
  sub_23843981C(v84, v106, &qword_27DF0C4E8, &qword_23876A990);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C570, &qword_23876AA48);
  sub_23843981C(v86, v88 + *(v89 + 48), &qword_27DF0C4D0, &qword_23876A978);
  sub_23843981C(v87, v88 + *(v89 + 64), &qword_27DF0C4D0, &qword_23876A978);
  sub_238439884(v82, &qword_27DF0C4D0, &qword_23876A978);
  sub_238439884(v85, &qword_27DF0C4D0, &qword_23876A978);
  sub_238439884(v83, &qword_27DF0C4E8, &qword_23876A990);
  sub_238439884(v87, &qword_27DF0C4D0, &qword_23876A978);
  sub_238439884(v86, &qword_27DF0C4D0, &qword_23876A978);
  sub_238439884(v84, &qword_27DF0C4E8, &qword_23876A990);

  return result;
}

uint64_t sub_2384DA204@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GroupedTransactionsView(0);
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

  v15 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4B8, &qword_23876A960);
  sub_23875E1B0();
  swift_getKeyPath(asc_23876A998);
  v14 = v13;
  sub_2384DD908(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider, &unk_238763F60);
  sub_23875BE90();

  v7 = *(v13 + 32);

  v14 = v7;
  swift_getKeyPath(aX_1);
  sub_2384DD008(a1, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupedTransactionsView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2384DD8A0(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for GroupedTransactionsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C588, &unk_23876AAB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C518, &unk_23876A9D0);
  sub_23843A3E8(&qword_27DF0C590, &qword_27DF0C588, &unk_23876AAB0, MEMORY[0x277D83980]);
  sub_2384DD908(&qword_27DF0A200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2384DD238();
  sub_23875E370();
  if (qword_27DF08D80 != -1)
  {
    swift_once();
  }

  v14 = qword_27DF2F920;

  v10 = sub_23875E2D0();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4F0, &qword_23876A9C0);
  *(a2 + *(result + 36)) = v10;
  return result;
}

void sub_2384DA5A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v60 = a1;
  v58 = a3;
  v3 = type metadata accessor for GroupedTransactionsView(0);
  v52 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = v4;
  v54 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44[-v6];
  v8 = sub_238758F50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v44[-v13];
  v51 = type metadata accessor for TransactionView(0);
  MEMORY[0x28223BE20](v51);
  v16 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C518, &unk_23876A9D0);
  MEMORY[0x28223BE20](v57);
  v56 = &v44[-v17];
  sub_23875ED50();
  v55 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = *(v9 + 16);
  v19 = v14;
  v49 = v14;
  v20 = v60;
  v46 = v18;
  v21 = (v18)(v19, v60, v8);
  v22 = v59;
  MEMORY[0x28223BE20](v21);
  *&v44[-16] = v20;
  sub_23854CF80(sub_2384DD7AC, v23, v7);
  v24 = sub_238758680();
  v25 = v8;
  v26 = *(v24 - 8);
  v27 = *(v26 + 48);
  v48 = v24;
  v28 = v27(v7, 1);
  v47 = v7;
  if (v28 == 1)
  {
    __break(1u);
  }

  else
  {
    v61[1] = *(v22 + 48);
    v62 = *(v22 + 56);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](v61, v29);
    v45 = sub_23860E62C(v20, v61[0]);

    v30 = v54;
    sub_2384DD008(v22, v54, type metadata accessor for GroupedTransactionsView);
    v46(v11, v20, v25);
    v31 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v32 = (v53 + *(v9 + 80) + v31) & ~*(v9 + 80);
    v33 = swift_allocObject();
    sub_2384DD8A0(v30, v33 + v31, type metadata accessor for GroupedTransactionsView);
    v34 = *(v9 + 32);
    v34(v33 + v32, v11, v25);
    *v16 = swift_getKeyPath(asc_23876AAC0);
    v16[8] = 0;
    v35 = v51;
    v36 = *(v51 + 20);
    *&v16[v36] = swift_getKeyPath(byte_23876AAF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v34(&v16[v35[6]], v49, v25);
    (*(v26 + 32))(&v16[v35[7]], v47, v48);
    v16[v35[8]] = v45 & 1;
    v37 = &v16[v35[9]];
    *v37 = sub_2384DD7CC;
    v37[1] = v33;
    v38 = v35[10];
    v39 = *MEMORY[0x277CDFA00];
    v40 = sub_23875C880();
    (*(*(v40 - 8) + 104))(&v16[v38], v39, v40);
    v41 = v56;
    sub_2384DD8A0(v16, v56, type metadata accessor for TransactionView);
    v42 = v58;
    v43 = &v41[*(v57 + 36)];
    *v43 = xmmword_23876A640;
    *(v43 + 1) = xmmword_23876A640;
    v43[32] = 0;
    sub_2384396E4(v41, v42, &qword_27DF0C518, &unk_23876A9D0);
  }
}

uint64_t sub_2384DAB9C()
{
  v0 = sub_23875BCB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238758F40();
  sub_238758640();
  v7 = sub_23875BC80();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

double sub_2384DAD40(char a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C598, &unk_23877B770);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - v7;
  v9 = sub_238758F50();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v30 - v15;
  if (a1)
  {
    (*(v10 + 16))(v12, a3, v9, v14);
    v17 = a2[6];
    v18 = a2[7];
    v30[1] = a3;
    v19 = a2[8];
    v35 = v17;
    v36 = v18;
    v37 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v38);
    sub_2387099C0(v16, v12);
    (*(v10 + 8))(v16, v9);
    v32 = v17;
    v33 = v18;
    v34 = v19;
    v31 = v38;
    sub_23875E2F0();

    v20 = a2[2];
    v21 = a2[3];
    v22 = a2[4];
    v35 = v20;
    v36 = v21;
    v37 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
    MEMORY[0x23EE62DC0](&v38);
    sub_2384DB11C();
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v31 = v38;
    sub_23875E2F0();

    sub_2384DB490();
  }

  else
  {
    v25 = a2[7];
    v26 = a2[8];
    v35 = a2[6];
    v24 = v35;
    v36 = v25;
    v37 = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v38);
    sub_2386F1FAC(a3, v8);
    sub_238439884(v8, &qword_27DF0C598, &unk_23877B770);
    v32 = v24;
    v33 = v25;
    v34 = v26;
    v31 = v38;
    sub_23875E2F0();

    v27 = a2[2];
    v28 = a2[3];
    v29 = a2[4];
    v35 = v27;
    v36 = v28;
    v37 = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
    MEMORY[0x23EE62DC0](&v38);
    sub_2384DB6C8();
    v32 = v27;
    v33 = v28;
    v34 = v29;
    v31 = v38;
    sub_23875E2F0();
  }

  return result;
}

unint64_t sub_2384DB11C()
{
  v0 = sub_238758F20();
  sub_2384DC37C(v0, 0, 1);
  result = sub_238758E60();
  v3 = HIBYTE(v2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    if ((v2 & 0x1000000000000000) == 0)
    {
      if ((v2 & 0x2000000000000000) != 0)
      {
        v29[0] = result;
        v29[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        if (result == 43)
        {
          if (v3)
          {
            v4 = v3 - 1;
            if (v3 != 1)
            {
              v7 = 0;
              v17 = v29 + 1;
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  break;
                }

                v19 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  break;
                }

                v7 = v19 + v18;
                if (__OFADD__(v19, v18))
                {
                  break;
                }

                ++v17;
                if (!--v4)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_74:
          __break(1u);
          return result;
        }

        if (result != 45)
        {
          if (v3)
          {
            v7 = 0;
            v22 = v29;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v3)
              {
                goto LABEL_60;
              }
            }
          }

          goto LABEL_61;
        }

        if (v3)
        {
          v4 = v3 - 1;
          if (v3 != 1)
          {
            v7 = 0;
            v11 = v29 + 1;
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                break;
              }

              v13 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v13 - v12;
              if (__OFSUB__(v13, v12))
              {
                break;
              }

              ++v11;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = sub_23875F4B0();
          v4 = v28;
        }

        v6 = *result;
        if (v6 == 43)
        {
          if (v4 >= 1)
          {
            if (--v4)
            {
              v7 = 0;
              if (result)
              {
                v14 = (result + 1);
                while (1)
                {
                  v15 = *v14 - 48;
                  if (v15 > 9)
                  {
                    goto LABEL_61;
                  }

                  v16 = 10 * v7;
                  if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                  {
                    goto LABEL_61;
                  }

                  v7 = v16 + v15;
                  if (__OFADD__(v16, v15))
                  {
                    goto LABEL_61;
                  }

                  ++v14;
                  if (!--v4)
                  {
                    goto LABEL_62;
                  }
                }
              }

              goto LABEL_60;
            }

            goto LABEL_61;
          }

          goto LABEL_73;
        }

        if (v6 != 45)
        {
          if (v4)
          {
            v7 = 0;
            if (result)
            {
              while (1)
              {
                v20 = *result - 48;
                if (v20 > 9)
                {
                  goto LABEL_61;
                }

                v21 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  goto LABEL_61;
                }

                ++result;
                if (!--v4)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

LABEL_61:
          v7 = 0;
          LOBYTE(v4) = 1;
LABEL_62:
          v30 = v4;
          v25 = v4;

          if (v25)
          {
            return result;
          }

          return sub_2384DC37C(v7 / 100, v7 % 100, 0);
        }

        if (v4 >= 1)
        {
          if (--v4)
          {
            v7 = 0;
            if (result)
            {
              v8 = (result + 1);
              while (1)
              {
                v9 = *v8 - 48;
                if (v9 > 9)
                {
                  goto LABEL_61;
                }

                v10 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v10 - v9;
                if (__OFSUB__(v10, v9))
                {
                  goto LABEL_61;
                }

                ++v8;
                if (!--v4)
                {
                  goto LABEL_62;
                }
              }
            }

LABEL_60:
            LOBYTE(v4) = 0;
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        __break(1u);
      }

      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v30 = 0;
    v7 = sub_2384523A8(result, v2, 10);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      return sub_2384DC37C(v7 / 100, v7 % 100, 0);
    }
  }

  else
  {
  }

  return result;
}

void sub_2384DB490()
{
  v0 = sub_23875EA50();
  v1 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v4;
  v5 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = 0xD000000000000011;
  v6 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0x8000000238785C50;
  *(inited + 80) = v6;
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x8000000238785080;
  v7 = v3;
  v8 = v5;
  v9 = v6;
  v10 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v10;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v14);

  v12 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384DD908(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v13 = sub_23875E910();

  [v12 subject:v0 sendEvent:v13];
}

unint64_t sub_2384DB6C8()
{
  v0 = sub_238758F20();
  sub_2384DC4BC(v0, 0, 1);
  result = sub_238758E60();
  v3 = HIBYTE(v2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    if ((v2 & 0x1000000000000000) == 0)
    {
      if ((v2 & 0x2000000000000000) != 0)
      {
        v29[0] = result;
        v29[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        if (result == 43)
        {
          if (v3)
          {
            v4 = v3 - 1;
            if (v3 != 1)
            {
              v7 = 0;
              v17 = v29 + 1;
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  break;
                }

                v19 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  break;
                }

                v7 = v19 + v18;
                if (__OFADD__(v19, v18))
                {
                  break;
                }

                ++v17;
                if (!--v4)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_74:
          __break(1u);
          return result;
        }

        if (result != 45)
        {
          if (v3)
          {
            v7 = 0;
            v22 = v29;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v3)
              {
                goto LABEL_60;
              }
            }
          }

          goto LABEL_61;
        }

        if (v3)
        {
          v4 = v3 - 1;
          if (v3 != 1)
          {
            v7 = 0;
            v11 = v29 + 1;
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                break;
              }

              v13 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v13 - v12;
              if (__OFSUB__(v13, v12))
              {
                break;
              }

              ++v11;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = sub_23875F4B0();
          v4 = v28;
        }

        v6 = *result;
        if (v6 == 43)
        {
          if (v4 >= 1)
          {
            if (--v4)
            {
              v7 = 0;
              if (result)
              {
                v14 = (result + 1);
                while (1)
                {
                  v15 = *v14 - 48;
                  if (v15 > 9)
                  {
                    goto LABEL_61;
                  }

                  v16 = 10 * v7;
                  if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                  {
                    goto LABEL_61;
                  }

                  v7 = v16 + v15;
                  if (__OFADD__(v16, v15))
                  {
                    goto LABEL_61;
                  }

                  ++v14;
                  if (!--v4)
                  {
                    goto LABEL_62;
                  }
                }
              }

              goto LABEL_60;
            }

            goto LABEL_61;
          }

          goto LABEL_73;
        }

        if (v6 != 45)
        {
          if (v4)
          {
            v7 = 0;
            if (result)
            {
              while (1)
              {
                v20 = *result - 48;
                if (v20 > 9)
                {
                  goto LABEL_61;
                }

                v21 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  goto LABEL_61;
                }

                ++result;
                if (!--v4)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

LABEL_61:
          v7 = 0;
          LOBYTE(v4) = 1;
LABEL_62:
          v30 = v4;
          v25 = v4;

          if (v25)
          {
            return result;
          }

          return sub_2384DC4BC(v7 / 100, v7 % 100, 0);
        }

        if (v4 >= 1)
        {
          if (--v4)
          {
            v7 = 0;
            if (result)
            {
              v8 = (result + 1);
              while (1)
              {
                v9 = *v8 - 48;
                if (v9 > 9)
                {
                  goto LABEL_61;
                }

                v10 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v10 - v9;
                if (__OFSUB__(v10, v9))
                {
                  goto LABEL_61;
                }

                ++v8;
                if (!--v4)
                {
                  goto LABEL_62;
                }
              }
            }

LABEL_60:
            LOBYTE(v4) = 0;
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        __break(1u);
      }

      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v30 = 0;
    v7 = sub_2384523A8(result, v2, 10);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      return sub_2384DC4BC(v7 / 100, v7 % 100, 0);
    }
  }

  else
  {
  }

  return result;
}

double sub_2384DBA3C(void *a1)
{
  v2 = type metadata accessor for GroupedTransactionsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4B8, &qword_23876A960);
  sub_23875E1B0();
  swift_getKeyPath(byte_23876A9E8);
  v11 = v10;
  sub_2384DD908(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider, &unk_238763F60);
  sub_23875BE90();

  v5 = *(v10 + 40);

  v11 = v5;
  swift_getKeyPath(byte_23876AA50);
  sub_2384DD008(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupedTransactionsView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_2384DD8A0(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for GroupedTransactionsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C578, &qword_23876AA78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C558, &qword_23876AA18);
  sub_23843A3E8(&qword_27DF0C580, &qword_27DF0C578, &qword_23876AA78, MEMORY[0x277D83980]);
  sub_2384DD3D4();
  sub_23875E370();

  return result;
}

double sub_2384DBD2C(void *a1)
{
  v2 = type metadata accessor for GroupedTransactionsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4B8, &qword_23876A960);
  sub_23875E1B0();
  swift_getKeyPath(byte_23876AA20);
  v11 = v10;
  sub_2384DD908(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider, &unk_238763F60);
  sub_23875BE90();

  v5 = *(v10 + 48);

  v11 = v5;
  swift_getKeyPath(byte_23876AA50);
  sub_2384DD008(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupedTransactionsView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_2384DD8A0(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for GroupedTransactionsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C578, &qword_23876AA78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C558, &qword_23876AA18);
  sub_23843A3E8(&qword_27DF0C580, &qword_27DF0C578, &qword_23876AA78, MEMORY[0x277D83980]);
  sub_2384DD3D4();
  sub_23875E370();

  return result;
}

__n128 sub_2384DC01C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  sub_23875E310();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
  sub_23875E310();
  v9 = *(a2 + 40);
  v10 = qword_27DF08D80;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_23875E2D0();

  *a4 = v13;
  result = v14;
  *(a4 + 8) = v14;
  *(a4 + 24) = v13;
  *(a4 + 32) = v14;
  *(a4 + 48) = v9;
  *(a4 + 56) = v6;
  *(a4 + 64) = v7;
  *(a4 + 72) = v8;
  *(a4 + 80) = v11;
  return result;
}

uint64_t sub_2384DC1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  sub_23875ED50();
  *(v3 + 48) = sub_23875ED40();
  v5 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2384DC27C, v5, v4);
}

uint64_t sub_2384DC27C()
{
  v1 = v0[5];

  v2 = v1[1];
  v0[2] = *v1;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4B8, &qword_23876A960);
  sub_23875E1B0();
  sub_2384DD908(&qword_27DF09A38, type metadata accessor for GroupedTransactionsViewDataProvider, &unk_238763F7C);
  swift_unknownObjectRetain();
  sub_23875A2C0();
  sub_23875A2A0();
  sub_238450C60();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2384DC37C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  LOBYTE(v6) = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v24 = v10;
  result = sub_238547964(a1, a2, v6 & 1);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_238548998(v16, isUniquelyReferenced_nonNull_native);
    result = sub_238547964(a1, a2, v6 & 1);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    result = sub_23875F680();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *v5 = v10;
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_7:
  v18 = v6 & 1;
  v6 = result;
  sub_2386CD454(result, a1, a2, v18, 0, v10);
  result = v6;
LABEL_8:
  while (1)
  {
    v19 = v10[7];
    v20 = *(v19 + 8 * result);
    v21 = __CFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v23 = result;
    sub_23854A404();
    result = v23;
    v10 = v24;
    *v5 = v24;
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v19 + 8 * result) = v22;
  return result;
}

uint64_t sub_2384DC4BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = a3 & 1;
  v8 = sub_238547964(a1, a2, a3 & 1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(*(v4 + 56) + 8 * v8);
  if (!v10)
  {
    return 0;
  }

  sub_2386C40D0(v10 - 1, v10 == 1, a1, a2, v5);
  return a1;
}

void sub_2384DC554(uint64_t a1)
{
  v2 = sub_238758F50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v13[1] = v3 + 16;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v3 + 16))(v5, *(a1 + 48) + *(v3 + 72) * (v12 | (v11 << 6)), v2);
    sub_2384DB6C8();
    (*(v3 + 8))(v5, v2);
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

      return;
    }

    v8 = *(a1 + 56 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

id sub_2384DC6F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 publicTransactionObject];
  *a2 = result;
  return result;
}

void sub_2384DC734(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_23875BB40();
  [v2 setTransactionDate_];
}

unint64_t sub_2384DC790()
{
  result = qword_27DF0C410;
  if (!qword_27DF0C410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C408, &qword_23876A788);
    sub_2384DC848();
    sub_23843A3E8(&qword_27DF0A760, &qword_27DF0A768, &qword_238765D00, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C410);
  }

  return result;
}

unint64_t sub_2384DC848()
{
  result = qword_27DF0C418;
  if (!qword_27DF0C418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C420, &qword_23876A790);
    sub_23843A3E8(&qword_27DF0C428, &qword_27DF0C430, &unk_23876A798, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C418);
  }

  return result;
}

uint64_t sub_2384DC900(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2387632F0;
  v3 = MEMORY[0x277D83ED0];
  *(v2 + 56) = MEMORY[0x277D83E88];
  *(v2 + 64) = v3;
  *(v2 + 32) = a1;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v4 = qword_2814F1B90;
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

  sub_23875EA80();
  v9 = sub_23875EAA0();

  return v9;
}

uint64_t getEnumTagSinglePayload for LogoStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LogoStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for GroupedTransactionsView(uint64_t a1)
{
  result = qword_27DF0C458;
  if (!qword_27DF0C458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384DCC40(uint64_t a1)
{
  sub_2384DCD3C(319);
  if (v1 <= 0x3F)
  {
    sub_2384DCE28(319, &qword_27DF0C470, &qword_27DF0B5D0, &qword_23877B640);
    if (v2 <= 0x3F)
    {
      sub_2384DCD94(319);
      if (v3 <= 0x3F)
      {
        sub_2384DCE28(319, &qword_27DF0B5A8, &qword_27DF0B558, &qword_238768210);
        if (v4 <= 0x3F)
        {
          sub_23875BE20();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}