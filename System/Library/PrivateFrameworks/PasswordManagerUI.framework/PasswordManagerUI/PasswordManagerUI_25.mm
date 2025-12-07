uint64_t sub_21C9E3E60@<X0>(uint64_t a3@<X8>)
{
  sub_21C71F3FC();

  v4 = sub_21CB84054();
  v6 = v5;
  v8 = v7;
  sub_21CB83D94();
  v9 = sub_21CB84024();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_21C74A72C(v4, v6, v8 & 1);

  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  return result;
}

uint64_t sub_21C9E3F40(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB83994();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE918, &qword_21CBAA7D0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13[-v10];
  v14 = a1;
  v15 = a2;
  type metadata accessor for PMMoveAccountsList(0);
  sub_21C706530(&qword_27CDEE968, type metadata accessor for PMMoveAccountsList, &unk_21CBC1478);
  sub_21CB82924();
  v16 = 0x6E6F74747562;
  v17 = 0xE600000000000000;
  type metadata accessor for PMEmptyStateDetailView(0);
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C6EADEC(&qword_27CDEE920, &qword_27CDEE918, &qword_21CBAA7D0, MEMORY[0x277CDDA18]);
  sub_21CB84524();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void *sub_21C9E41C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PMEmptyStateDetailView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_21C9E4840(a1, a3, type metadata accessor for PMSharingGroup);
  v9 = type metadata accessor for PMSharingGroup(0);
  (*(*(v9 - 8) + 56))(a3, 0, 1, v9);
  sub_21C9E4840(a2, v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMEmptyStateDetailView);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_21C9E49C4(v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PMEmptyStateDetailView);
  v12 = type metadata accessor for PMMoveAccountsList(0);
  *(a3 + v12[5]) = 1;
  v13 = (a3 + v12[6]);
  *v13 = sub_21C9E48A8;
  v13[1] = v11;
  v14 = (a3 + v12[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD0, &unk_21CBB9040);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v18[1] = v15;
  result = sub_21CB84D44();
  v17 = v18[3];
  *v14 = v18[2];
  v14[1] = v17;
  return result;
}

uint64_t sub_21C9E43B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for PMSharingGroup(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for PMEmptyStateDetailView(0);
  sub_21C9E48C0(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4658, &unk_21CBBAEF0);
  sub_21CB84D64();
  return sub_21C6EA794(v5, &qword_27CDF7670, &unk_21CBAA8F0);
}

uint64_t sub_21C9E44E8(uint64_t a1)
{
  v1 = sub_21CB83994();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[0] = 0x6E6F74747562;
  v6[1] = 0xE600000000000000;
  type metadata accessor for PMEmptyStateDetailView(0);
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C941AD8();
  sub_21CB84524();
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_21C9E4640()
{
  result = qword_27CDF46B0;
  if (!qword_27CDF46B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC318, &qword_21CBB26D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF46B0);
  }

  return result;
}

uint64_t sub_21C9E4748(uint64_t a1)
{
  v3 = *(type metadata accessor for PMEmptyStateDetailView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9E3F40(a1, v4);
}

uint64_t sub_21C9E47C8()
{
  v1 = *(type metadata accessor for PMEmptyStateDetailView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C9E44E8(v2);
}

uint64_t sub_21C9E4840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9E48C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9E4948(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMEmptyStateDetailView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C9E49C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9E4A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C9E4AB0()
{
  result = qword_27CDF46C0;
  if (!qword_27CDF46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF46C0);
  }

  return result;
}

uint64_t sub_21C9E4B20(uint64_t a1)
{
  v2 = *v1;
  sub_21CB86484();
  MEMORY[0x21CF15F90](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_21CB854C4();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return sub_21CB864D4();
}

uint64_t sub_21C9E4BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF46C8, &qword_21CBBB1A8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v41 = &v38 - v5;
  v6 = v2[1];
  *v63 = *v2;
  *&v63[16] = v6;
  v8 = *v2;
  v7 = v2[1];
  *&v63[32] = v2[2];
  v64 = *(v2 + 6);
  v61[0] = v8;
  v61[1] = v7;
  v61[2] = v2[2];
  v62 = *(v2 + 6);
  v9 = sub_21C9E4F78();
  v42 = v10;
  v43 = v9;
  v65 = *&v63[8];
  v66 = *&v63[24];
  v67 = *&v63[40];
  v50 = *&v63[8];
  v51 = *&v63[24];
  *&v52 = *&v63[40];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF46D0, &qword_21CBBB1B0);
  sub_21CB84F54();
  v12 = v57;
  v14 = v58;
  v13 = v59;
  v15 = v60;
  v50 = v65;
  v51 = v66;
  *&v52 = v67;
  MEMORY[0x21CF14A20](&v57, v11);
  v46 = v57;
  v47 = v58;
  swift_getKeyPath(byte_21CBBB1C0, &v46);
  v57 = v12;
  v58 = v14;
  v59 = v13;
  v60 = v15;
  sub_21CB84F44();

  v16 = v54;
  v40 = v55;
  v39 = v56;

  sub_21C968AF4(v14, v13, v15);
  v50 = *v63;
  v51 = *&v63[16];
  v52 = *&v63[32];
  v53 = v64;
  sub_21C9E5E88();
  v18 = *(v17 + 16);

  LOBYTE(v15) = v18 == *(v64 + 16);
  v50 = v65;
  v51 = v66;
  *&v52 = v67;
  MEMORY[0x21CF14A20](&v48, v11);
  v38 = v48;
  v19 = v49;
  v20 = swift_allocObject();
  v21 = *&v63[16];
  *(v20 + 16) = *v63;
  *(v20 + 32) = v21;
  *(v20 + 48) = *&v63[32];
  *(v20 + 64) = v64;
  v22 = swift_allocObject();
  v23 = *&v63[16];
  *(v22 + 16) = *v63;
  *(v22 + 32) = v23;
  *(v22 + 48) = *&v63[32];
  *(v22 + 64) = v64;
  KeyPath = swift_getKeyPath(byte_21CBBB1F8);
  v25 = *(v4 + 44);
  v26 = v41;
  v27 = &v41[v25];
  *&v41[v25] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF46E0, &qword_21CBBB228);
  v29 = &v27[v28[18]];
  *v29 = v38;
  *(v29 + 2) = v19;
  v30 = &v27[v28[15]];
  v31 = v42;
  *v30 = v43;
  v30[1] = v31;
  v32 = &v27[v28[16]];
  v33 = v40;
  *v32 = v16;
  *(v32 + 1) = v33;
  v32[16] = v39;
  v27[v28[17]] = v15;
  v27[v28[19]] = 2;
  v34 = &v27[v28[20]];
  *v34 = sub_21C9E6500;
  v34[1] = v20;
  v35 = &v27[v28[21]];
  *v35 = sub_21C9E6544;
  v35[1] = v22;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF46E8, &qword_21CBBB230);
  (*(*(v36 - 8) + 16))(v26, v44, v36);
  sub_21C9E654C(v26, v45);
  sub_21C9E65BC(v63, v61);
  return sub_21C9E65BC(v63, v61);
}

uint64_t sub_21C9E4F78()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  *&v12[8] = *v0;
  v13 = v5;
  v14 = *(v0 + 24);
  v15 = v6;
  v16 = v7;
  sub_21C9E5E88();
  v9 = *(v8 + 16);

  if (v9 == *(v7 + 16))
  {
    MGGetBoolAnswer();
  }

  else
  {
    MGGetBoolAnswer();
  }

  sub_21CB81014();
  v10 = sub_21CB81004();
  (*(v2 + 8))(v4, v1);
  return v10;
}

uint64_t sub_21C9E5150()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF46D8, &qword_21CBBB1B8);
  sub_21C9E65FC();
  return sub_21CB85E64();
}

uint64_t sub_21C9E51B0(char *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = a3[2];
  v7 = *a1;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  sub_21C968B34(*a3, v5, v6);
  result = sub_21C968AF4(v8, v9, v10);
  if ((v7 & 1) == 0)
  {
    result = sub_21C968AF4(v4, v5, v6);
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_21C9E5244@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
  MEMORY[0x28223BE20](v58);
  v56 = v50 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v50 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF46F0, &unk_21CBBB238);
  MEMORY[0x28223BE20](v59);
  v7 = v50 - v6;
  v57 = sub_21CB81024();
  v8 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v54 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v53 = v50 - v14;
  MEMORY[0x28223BE20](v15);
  v55 = v50 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v50 - v18;
  v20 = v1[1];
  v66 = *v1;
  v67 = v20;
  v68 = v1[2];
  v69 = *(v1 + 6);
  sub_21C9E5E88();
  v22 = *(v21 + 16);

  v23 = (v8 + 8);
  if (v22 == *(v69 + 16))
  {
    sub_21CB81014();
    v24 = sub_21CB81004();
    v26 = v25;
    (*v23)(v10, v57);
    v62 = v24;
    v63 = v26;
    sub_21C71F3FC();
    sub_21CB84DE4();
    v27 = v61;
    (*(v61 + 16))(v7, v19, v11);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70, MEMORY[0x277CE14C0]);
    sub_21CB83494();
    return (*(v27 + 8))(v19, v11);
  }

  else
  {
    sub_21CB81014();
    v29 = sub_21CB81004();
    v31 = v30;
    v50[0] = *v23;
    v32 = v57;
    (v50[0])(v10, v57);
    v62 = v29;
    v63 = v31;
    sub_21CB81EF4();
    v33 = sub_21CB81F14();
    v34 = *(*(v33 - 8) + 56);
    v34(v5, 0, 1, v33);
    v50[1] = sub_21C71F3FC();
    v51 = v19;
    sub_21CB84DC4();
    sub_21CB81014();
    v35 = sub_21CB81004();
    v52 = v7;
    v36 = v35;
    v38 = v37;
    (v50[0])(v10, v32);
    v64 = v36;
    v65 = v38;
    sub_21CB81ED4();
    v34(v5, 0, 1, v33);
    v39 = swift_allocObject();
    v40 = v67;
    *(v39 + 16) = v66;
    *(v39 + 32) = v40;
    *(v39 + 48) = v68;
    *(v39 + 64) = v69;
    sub_21C9E65BC(&v66, &v62);
    v41 = v55;
    sub_21CB84DC4();
    v42 = v61;
    v43 = *(v61 + 16);
    v44 = v53;
    v45 = v51;
    v43(v53, v51, v11);
    v46 = v54;
    v43(v54, v41, v11);
    v47 = v56;
    v43(v56, v44, v11);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
    v43((v47 + *(v48 + 48)), v46, v11);
    v49 = *(v42 + 8);
    v49(v46, v11);
    v49(v44, v11);
    sub_21C6EDBAC(v47, v52, &qword_27CDF1748, &qword_21CBBDF70);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70, MEMORY[0x277CE14C0]);
    sub_21CB83494();
    sub_21C6EA794(v47, &qword_27CDF1748, &qword_21CBBDF70);
    v49(v41, v11);
    return (v49)(v45, v11);
  }
}

uint64_t sub_21C9E5A20@<X0>(uint64_t a2@<X8>)
{
  sub_21C9E5A94();
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_21C9E5A94()
{
  v1 = type metadata accessor for PMWiFiNetwork(0);
  v38 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB81024();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = v0[1];
  v9 = v0[2];
  v10 = v0[3];
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[6];
  v48 = *v0;
  v49 = v8;
  v50 = v9;
  v51 = v10;
  v52 = v12;
  v53 = v11;
  v54 = v13;
  sub_21C9E5E88();
  v15 = *(v14 + 16);

  if (v15)
  {
    v37 = v3;
    v48 = v7;
    v49 = v8;
    v50 = v9;
    v51 = v10;
    v52 = v12;
    v53 = v11;
    v54 = v13;
    sub_21C9E5E88();
    v17 = *(v16 + 16);

    v18 = *(v13 + 16);
    if (v17 == v18)
    {
      v48 = v7;
      v49 = v8;
      v50 = v9;
      v51 = v10;
      v52 = v12;
      v53 = v11;
      v54 = v13;
      sub_21C9E5E88();

      MGGetBoolAnswer();
      v19 = (v39 + 8);
      sub_21CB81014();
      v25 = sub_21CB81004();
      (*v19)(v6, v40);
      return v25;
    }

    else
    {
      v22 = MGGetBoolAnswer();
      if (v18 == 1)
      {
        if (v22)
        {
          v23 = sub_21CB75210();
        }

        else
        {
          v23 = sub_21CB75364();
        }
      }

      else if (v22)
      {
        v23 = sub_21CB754B8();
      }

      else
      {
        v23 = sub_21CB7560C();
      }

      v48 = v23;
      v49 = v24;

      MEMORY[0x21CF151F0](2570, 0xE200000000000000);

      v27 = v49;
      v40 = v48;
      v48 = v7;
      v49 = v8;
      v50 = v9;
      v51 = v10;
      v52 = v12;
      v53 = v11;
      v54 = v13;
      sub_21C9E5E88();
      v29 = *(v28 + 16);

      v41 = v7;
      v42 = v8;
      v43 = v9;
      v44 = v10;
      v45 = v12;
      v46 = v11;
      v47 = v13;
      sub_21C9E5E88();
      if (*(v30 + 16))
      {
        v31 = v37;
        sub_21C84BF7C(v30 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), v37);

        v33 = *(v31 + 16);
        v32 = *(v31 + 24);

        sub_21C864EF0(v31);
      }

      else
      {

        v33 = 0;
        v32 = 0xE000000000000000;
      }

      v34 = sub_21CB74F04(v29, v33, v32);
      v36 = v35;

      v48 = v40;
      v49 = v27;

      MEMORY[0x21CF151F0](v34, v36);

      return v48;
    }
  }

  else
  {
    v20 = *(v13 + 16);
    v21 = MGGetBoolAnswer();
    if (v20 == 1)
    {
      if (v21)
      {
        return sub_21CB75210();
      }

      else
      {
        return sub_21CB75364();
      }
    }

    else if (v21)
    {
      return sub_21CB754B8();
    }

    else
    {
      return sub_21CB7560C();
    }
  }
}

void sub_21C9E5E88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v28 - v2;
  v4 = type metadata accessor for PMWiFiNetwork(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - v8;
  MEMORY[0x28223BE20](v9);
  v31 = &v28 - v11;
  v12 = v0[6];
  v36 = *(v12 + 16);
  if (v36)
  {
    v13 = 0;
    v14 = *v0;
    v28 = v10;
    v33 = (v10 + 48);
    v34 = v14;
    v15 = (v12 + 40);
    v32 = MEMORY[0x277D84F90];
    v30 = v6;
    v35 = v12;
    while (v13 < *(v12 + 16))
    {
      v16 = v4;
      v18 = *(v15 - 1);
      v17 = *v15;
      v19 = qword_27CDEA4C0;

      if (v19 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C746438(v34, v37[0]);

      swift_getKeyPath(byte_21CBBB248);
      swift_getKeyPath(aP_75);
      sub_21CB81DB4();

      v21 = v37[0];
      v37[0] = v18;
      v37[1] = v17;
      MEMORY[0x28223BE20](v20);
      *(&v28 - 2) = v37;
      sub_21C9693F8(sub_21C7AE738, v21, v3);

      v4 = v16;
      if ((*v33)(v3, 1, v16) == 1)
      {
        sub_21C6EA794(v3, &qword_27CDEE678, &unk_21CBBA210);
      }

      else
      {
        v22 = v30;
        sub_21C6F0E30(v3, v30);
        if (*(v22 + *(v4 + 36)))
        {
          v23 = v29;
          sub_21C6F0E30(v22, v29);
          sub_21C6F0E30(v23, v31);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_21C6F0E94(0, v32[2] + 1, 1, v32);
          }

          v25 = v32[2];
          v24 = v32[3];
          if (v25 >= v24 >> 1)
          {
            v32 = sub_21C6F0E94((v24 > 1), v25 + 1, 1, v32);
          }

          v26 = v31;
          v27 = v32;
          v32[2] = v25 + 1;
          sub_21C6F0E30(v26, v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25);
        }

        else
        {
          sub_21C864EF0(v22);
        }
      }

      ++v13;
      v15 += 2;
      v12 = v35;
      if (v36 == v13)
      {
        return;
      }
    }

    __break(1u);
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }
}

void *sub_21C9E628C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v9 = *(a1 + 8);
  v10 = v1;
  v11 = *(a1 + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF46D0, &qword_21CBBB1B0);
  result = MEMORY[0x21CF14A20](v8, v2);
  v4 = v8[0];
  if (v8[0])
  {
    v6 = v8[1];
    v5 = v8[2];

    v7 = sub_21C968AF4(v4, v6, v5);
    v6(v7);
  }

  return result;
}

uint64_t sub_21C9E6324(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21CF15F90](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      sub_21CB854C4();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_21C9E639C(uint64_t a1)
{
  sub_21CB86484();
  v2 = *(a1 + 16);
  MEMORY[0x21CF15F90](v2);
  if (v2)
  {
    v3 = a1 + 40;
    do
    {

      sub_21CB854C4();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return sub_21CB864D4();
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI33PMForgetNetworkAlertConfigurationVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21C9E6440(uint64_t *a1, int a2)
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

uint64_t sub_21C9E6488(uint64_t result, int a2, int a3)
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

uint64_t sub_21C9E654C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF46C8, &qword_21CBBB1A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C9E65FC()
{
  result = qword_27CDF46F8;
  if (!qword_27CDF46F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF46F8);
  }

  return result;
}

unint64_t sub_21C9E6650()
{
  result = qword_27CDF4700;
  if (!qword_27CDF4700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF46C8, &qword_21CBBB1A8);
    sub_21C6EADEC(&qword_27CDF4708, &qword_27CDF46E8, &qword_21CBBB230, MEMORY[0x277CE04B0]);
    sub_21C6EADEC(&qword_27CDF4710, &qword_27CDF46E0, &qword_21CBBB228, &unk_21CBAA4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4700);
  }

  return result;
}

uint64_t sub_21C9E6760()
{
  v0 = sub_21CB83604();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4718, &unk_21CBBB300);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  sub_21CB835E4();
  sub_21CB82194();
  v5 = sub_21C9E68CC();
  MEMORY[0x21CF131E0](v4, v1, v5);
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_21C9E68CC()
{
  result = qword_27CDF4720;
  if (!qword_27CDF4720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4718, &unk_21CBBB300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4720);
  }

  return result;
}

unint64_t sub_21C9E6944()
{
  result = qword_27CDF4728;
  if (!qword_27CDF4728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4728);
  }

  return result;
}

id sub_21C9E6998()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = [objc_opt_self() viewControllerForContact_];

    return v2;
  }

  else
  {
    v5 = v0[4];
    v4 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21CBA0690;
    *(v6 + 32) = v5;
    *(v6 + 40) = v4;

    v7 = sub_21CB85814();

    v8 = [objc_opt_self() contactWithDisplayName:0 handleStrings:v7];

    v9 = [objc_opt_self() viewControllerForUnknownContact_];
    return v9;
  }
}

uint64_t sub_21C9E6AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C9E6BB8();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21C9E6B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C9E6BB8();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21C9E6B90(uint64_t a1)
{
  sub_21C9E6BB8();
  sub_21CB83B44();
  __break(1u);
}

unint64_t sub_21C9E6BB8()
{
  result = qword_27CDF4730;
  if (!qword_27CDF4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4730);
  }

  return result;
}

uint64_t sub_21C9E6C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21C6EDBAC(a3, v25 - v10, &qword_27CDF1D50, &qword_21CBA0C00);
  v12 = sub_21CB858E4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21C6EA794(v11, &qword_27CDF1D50, &qword_21CBA0C00);
  }

  else
  {
    sub_21CB858D4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21CB85874();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21CB85644() + 32;
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

uint64_t PMCredentialExchangeDataImportModel.__allocating_init(credentialData:)(uint64_t a1)
{
  v2 = sub_21CB818C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = [objc_opt_self() sharedStore];
  type metadata accessor for PMCredentialExchangeDataImportModel(0);
  v8 = swift_allocObject();
  PMCredentialExchangeDataImportModel.init(credentialData:accountStore:progressHandler:)(v6, v7, 0, 0);
  (*(v3 + 8))(a1, v2);
  return v8;
}

uint64_t PMCredentialExchangeDataImportModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel_id;
  v4 = sub_21CB80E34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21C9E7080@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21C79AF84();

  *a1 = v2;
  return result;
}

uint64_t sub_21C9E70C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB80E34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PMCredentialExchangeDataImportModel.__allocating_init(credentialData:accountStore:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB818C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  type metadata accessor for PMCredentialExchangeDataImportModel(0);
  v9 = swift_allocObject();
  PMCredentialExchangeDataImportModel.init(credentialData:accountStore:progressHandler:)(v8, a2, 0, 0);
  (*(v5 + 8))(a1, v4);
  return v9;
}

uint64_t PMCredentialExchangeDataImportModel.__allocating_init(credentialData:accountStore:progressHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  PMCredentialExchangeDataImportModel.init(credentialData:accountStore:progressHandler:)(a1, a2, a3, a4);
  return v8;
}

uint64_t PMCredentialExchangeDataImportModel.init(credentialData:accountStore:progressHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v8 = sub_21CB80E34();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__completedItemCount) = 0;
  *(v4 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importInProgress) = 0;
  *(v4 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importDidComplete) = 0;
  *(v4 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__failedItems) = MEMORY[0x277D84F90];
  v12 = (v4 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__currentItemTitle);
  *v12 = 0;
  v12[1] = 0;
  *(v4 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importTask) = 0;
  sub_21CB81104();
  v13 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel_credentialData;
  v14 = sub_21CB818C4();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v4 + v13, a1, v14);
  *(v4 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel_accountStore) = a2;
  v16 = (v4 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel_progressHandler);
  v17 = v20;
  *v16 = a3;
  v16[1] = v17;
  sub_21CB80E24();
  (*(v15 + 8))(a1, v14);
  (*(v9 + 32))(v4 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel_id, v11, v8);
  return v4;
}

uint64_t sub_21C9E74A0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__completedItemCount) != result)
  {
    KeyPath = swift_getKeyPath(byte_21CBBB478);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C9E75FC(uint64_t result, void *a2, const char *a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(a3);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C9E7700()
{
  swift_getKeyPath(byte_21CBBB478);
  sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  return *(v0 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__completedItemCount);
}

uint64_t sub_21C9E77A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBBB478);
  sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__completedItemCount);
  return result;
}

uint64_t sub_21C9E78E4(const char *a1, void *a2)
{
  swift_getKeyPath(a1);
  sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  return *(v2 + *a2);
}

uint64_t sub_21C9E7998@<X0>(uint64_t *a1@<X0>, const char *a2@<X3>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath(a2);
  sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_21C9E7A74()
{
  swift_getKeyPath(byte_21CBBB4A0);
  sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  swift_beginAccess();
}

uint64_t sub_21C9E7B34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBBB4A0);
  sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__failedItems;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21C9E7BFC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBBB4A0);
  sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810C4();
}

uint64_t sub_21C9E7CC8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__failedItems;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_21C9E7D38()
{
  swift_getKeyPath(byte_21CBBB7D0);
  sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__currentItemTitle);

  return v1;
}

uint64_t sub_21C9E7DF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBBB7D0);
  sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__currentItemTitle + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__currentItemTitle);
  a2[1] = v4;
}

uint64_t sub_21C9E7EAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21C9E7EEC(v1, v2);
}

uint64_t sub_21C9E7EEC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__currentItemTitle);
  v6 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__currentItemTitle + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_21CB86344() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath(byte_21CBBB7D0);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
    sub_21CB810C4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_21C9E8068()
{
  swift_getKeyPath(byte_21CBBB7A8);
  sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();
}

uint64_t sub_21C9E8114@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBBB7A8);
  sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importTask);
}

uint64_t sub_21C9E81F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importTask;
  if (!*(v1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath(byte_21CBBB7A8);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
    sub_21CB810C4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_21CB85934();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_21C9E8384()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  sub_21C9E8888();
  sub_21CB858C4();
  v3 = sub_21CB858E4();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_21C9E6C0C(0, 0, v2, &unk_21CBBB460, v5);
  sub_21C6EA794(v2, &qword_27CDF1D50, &qword_21CBA0C00);
  return sub_21C9E81F4(v6);
}

uint64_t sub_21C9E84F8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_21C9E85E0;

    return sub_21C9E8D28();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21C9E85E0()
{

  return MEMORY[0x2822009F8](sub_21C7B6B44, 0, 0);
}

uint64_t sub_21C9E86FC(__n128 a1)
{
  sub_21C9E8888();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21C9E8794;

  return sub_21C9E8D28();
}

uint64_t sub_21C9E8794()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21C9E8888()
{
  swift_getKeyPath(byte_21CBBB7A8);
  sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  if (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importTask))
  {

    sub_21CB85944();
  }

  if (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__completedItemCount))
  {
    KeyPath = swift_getKeyPath(byte_21CBBB478);
    MEMORY[0x28223BE20](KeyPath);
    sub_21CB810C4();
  }

  if (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importInProgress) == 1)
  {
    *(v0 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importInProgress) = 1;
  }

  else
  {
    v3 = swift_getKeyPath(aX_53);
    MEMORY[0x28223BE20](v3);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C9E8AA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C702EFC;

  return sub_21C9E84D8(a1, v4, v5, v6);
}

uint64_t sub_21C9E8B54()
{
  swift_getKeyPath(byte_21CBBB478);
  sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__completedItemCount);
  swift_getKeyPath(byte_21CBBB4A0);
  v5 = v0;
  sub_21CB810D4();

  v2 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__failedItems;
  swift_beginAccess();
  v3 = *(*(v5 + v2) + 16);
  result = v1 - v3;
  if (__OFSUB__(v1, v3))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21C9E8C68()
{
  swift_getKeyPath(byte_21CBBB4A0);
  v3 = v0;
  sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  v1 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__failedItems;
  swift_beginAccess();
  return *(*(v3 + v1) + 16);
}

uint64_t sub_21C9E8D28()
{
  v1[35] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v2 = sub_21CB80BE4();
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v3 = sub_21CB81944();
  v1[45] = v3;
  v1[46] = *(v3 - 8);
  v1[47] = swift_task_alloc();
  v4 = sub_21CB81494();
  v1[48] = v4;
  v1[49] = *(v4 - 8);
  v1[50] = swift_task_alloc();
  v5 = sub_21CB80DD4();
  v1[51] = v5;
  v1[52] = *(v5 - 8);
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v6 = sub_21CB814F4();
  v1[56] = v6;
  v1[57] = *(v6 - 8);
  v1[58] = swift_task_alloc();
  v7 = sub_21CB81514();
  v1[59] = v7;
  v1[60] = *(v7 - 8);
  v1[61] = swift_task_alloc();
  v8 = sub_21CB81574();
  v1[62] = v8;
  v1[63] = *(v8 - 8);
  v1[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF47B0, &qword_21CBBB850);
  v1[65] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF47B8, &qword_21CBBB858);
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v9 = sub_21CB81474();
  v1[68] = v9;
  v1[69] = *(v9 - 8);
  v1[70] = swift_task_alloc();
  v10 = sub_21CB81584();
  v1[71] = v10;
  v1[72] = *(v10 - 8);
  v1[73] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v11 = type metadata accessor for PMCredentialExchangeDataImportModel.FailedItem(0);
  v1[91] = v11;
  v1[92] = *(v11 - 8);
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v12 = sub_21CB81424();
  v1[95] = v12;
  v1[96] = *(v12 - 8);
  v1[97] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21C9E938C, 0, 0);
}

uint64_t sub_21C9E938C()
{
  *(v0 + 784) = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel_credentialData;
  v1 = sub_21CB818B4();
  *(v0 + 792) = v1;
  v2 = *(v1 + 16);
  *(v0 + 800) = v2;
  *(v0 + 808) = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel_accountStore;
  *(v0 + 816) = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel___observationRegistrar;
  *(v0 + 824) = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__failedItems;
  *(v0 + 832) = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__completedItemCount;
  *(v0 + 840) = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__currentItemTitle;
  v442 = v0;
  if (!v2)
  {
LABEL_227:
    v337 = *(v0 + 280);

    if (*(v337 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importInProgress))
    {
      v338 = *(v442 + 280);
      swift_getKeyPath(aX_53);
      v339 = swift_task_alloc();
      *(v339 + 16) = v338;
      *(v339 + 24) = 0;
      *(v442 + 272) = v338;
      sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
      v0 = v442;
      sub_21CB810C4();
    }

    else
    {
      *(v337 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importInProgress) = 0;
    }

    v340 = *(v0 + 280);
    if (*(v340 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importDidComplete) == 1)
    {
      *(v340 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importDidComplete) = 1;
    }

    else
    {
      swift_getKeyPath(byte_21CBBB7F8);
      v341 = swift_task_alloc();
      *(v341 + 16) = v340;
      *(v341 + 24) = 1;
      *(v0 + 248) = v340;
      sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
      sub_21CB810C4();
    }

    if (qword_27CDEA3F0 == -1)
    {
      goto LABEL_234;
    }

    goto LABEL_271;
  }

  *(v0 + 1152) = *MEMORY[0x277CBA748];
  *(v0 + 1156) = *MEMORY[0x277CBA738];
  *(v0 + 1160) = *MEMORY[0x277CBA6C8];
  *(v0 + 1164) = *MEMORY[0x277CBA6D0];
  *(v0 + 1168) = *MEMORY[0x277CBA6E0];
  *(v0 + 1172) = *MEMORY[0x277CBA6F0];
  *(v0 + 1176) = *MEMORY[0x277CBA700];
  *(v0 + 1180) = *MEMORY[0x277CBA6F8];
  *(v0 + 1184) = *MEMORY[0x277CBA6E8];
  *(v0 + 1188) = *MEMORY[0x277CBA720];
  *(v0 + 1192) = *MEMORY[0x277CBA750];
  *(v0 + 1196) = *MEMORY[0x277CBA758];
  *(v0 + 1200) = *MEMORY[0x277CBA6D8];
  *(v0 + 1204) = *MEMORY[0x277CBA740];
  *(v0 + 1208) = *MEMORY[0x277CBA728];
  *(v0 + 1212) = *MEMORY[0x277CBA730];
  *(v0 + 1216) = *MEMORY[0x277CBA708];
  *(v0 + 1220) = *MEMORY[0x277CBA710];
  *(v0 + 1224) = *MEMORY[0x277CBA718];
  *(v0 + 848) = 0;
  if (!*(v1 + 16))
  {
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    swift_once();
LABEL_234:
    v0 = v442;
    v342 = sub_21CB81C84();
    __swift_project_value_buffer(v342, qword_27CE18580);
    swift_retain_n();
    v343 = sub_21CB81C64();
    v344 = sub_21CB85AD4();
    if (os_log_type_enabled(v343, v344))
    {
      v345 = *(v442 + 824);
      v439 = *(v442 + 832);
      v346 = *(v442 + 280);
      v347 = swift_slowAlloc();
      *v347 = 134218496;
      swift_getKeyPath(byte_21CBBB4A0);
      *(v442 + 256) = v346;
      sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
      sub_21CB810D4();

      swift_beginAccess();
      *(v347 + 4) = *(*(v346 + v345) + 16);

      *(v347 + 12) = 2048;
      swift_getKeyPath(byte_21CBBB478);
      *(v442 + 264) = v346;
      sub_21CB810D4();

      *(v347 + 14) = *(v346 + v439);

      *(v347 + 22) = 2048;
      v0 = v442;
      v348 = *(sub_21CB818B4() + 16);

      *(v347 + 24) = v348;

      _os_log_impl(&dword_21C6E5000, v343, v344, "Import completed. Failed: %ld | Completed: %ld | Total: %ld", v347, 0x20u);
      MEMORY[0x21CF16D90](v347, -1, -1);
    }

    else
    {
    }

    goto LABEL_238;
  }

  v3 = 0;
  v4 = 0;
  v425 = (v0 + 1164);
  while (1)
  {
    (*(*(v0 + 768) + 16))(*(v0 + 776), v1 + ((*(*(v0 + 768) + 80) + 32) & ~*(*(v0 + 768) + 80)) + *(*(v0 + 768) + 72) * v3, *(v0 + 760));
    if (sub_21CB85954())
    {
      (*(*(v0 + 768) + 8))(*(v0 + 776), *(v0 + 760));

LABEL_238:

      v349 = *(v0 + 8);

      return v349();
    }

    v5 = *(v0 + 752);
    v6 = *(v0 + 728);
    v7 = (*(v0 + 280) + *(v0 + 840));
    v8 = sub_21CB81404();
    v10 = v9;
    sub_21CB80E24();
    v11 = (v5 + v6[5]);
    *v11 = v8;
    v11[1] = v10;
    v12 = v6[6];
    *(v0 + 1228) = v12;
    v432 = v12;
    *(v5 + v12) = 0;
    v13 = v6[7];
    *(v0 + 1232) = v13;
    v14 = (v5 + v13);
    *v14 = 0;
    v14[1] = 0;
    v391 = v14;
    v15 = v6[8];
    *(v0 + 1236) = v15;
    v434 = v5;
    v16 = (v5 + v15);
    *v16 = 0;
    v16[1] = 0;
    v390 = v16;
    v18 = sub_21C9F8508();
    v19 = v17;
    v20 = v7[1];
    if (v20 && (*v7 == v18 && v20 == v17 || (sub_21CB86344() & 1) != 0))
    {
      v21 = (*(v0 + 280) + *(v0 + 840));
      *v21 = v18;
      v21[1] = v19;
    }

    else
    {
      v22 = *(v0 + 280);
      swift_getKeyPath(byte_21CBBB7D0);
      v23 = swift_task_alloc();
      v23[2] = v22;
      v23[3] = v18;
      v23[4] = v19;
      *(v0 + 192) = v22;
      sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
      sub_21CB810C4();
    }

    *(v0 + 856) = v4;
    v24 = *(*(v0 + 312) + 56);
    (v24)(*(v0 + 720), 1, 1, *(v0 + 304));
    v25 = sub_21CB813D4();
    v33 = v25;
    v436 = *(v25 + 16);
    if (v436)
    {
      v406 = 0;
      v401 = 0;
      v402 = 0;
      v400 = 0;
      v34 = 0;
      v404 = 0;
      v408 = 0;
      v398 = 0;
      v394 = 0;
      v410 = 0;
      v397 = 0;
      v409 = 0;
      v35 = 0;
      v415 = 0;
      v395 = 0;
      v392 = 0;
      v388 = 0;
      v389 = 0;
      v36 = *(*(v0 + 576) + 80);
      v412 = v25 + ((v36 + 32) & ~v36);
      v405 = 0xF000000000000000;
      v403 = 0xF000000000000000;
      v407 = 0xF000000000000000;
      v37 = MEMORY[0x277D84F90];
      v399 = v24;
      while (1)
      {
        v417 = v34;
        v423 = v37;
        v38 = *(v33 + 16);
        if (v35 >= v38)
        {
          goto LABEL_241;
        }

        v39 = *(v0 + 1156);
        v40 = *(v0 + 1152);
        v41 = *(v0 + 584);
        v42 = *(v0 + 576);
        v43 = *(v0 + 568);
        v24 = v42[2];
        v440 = v35 + 1;
        v426 = v42[9];
        (v24)(v41, v412 + v426 * v35, v43);
        v44 = v42[11];
        v45 = v44(v41, v43);
        if (v45 == v40 || v45 == v39)
        {
          goto LABEL_19;
        }

        if (v45 == *(v0 + 1160))
        {
          v50 = v33;
LABEL_52:
          v59 = *(v0 + 584);
          v60 = *(v442 + 576);
          v61 = *(v442 + 568);
          v62 = *(v442 + 560);
          v63 = *(v442 + 552);
          v64 = *(v442 + 544);
          v65 = *(v442 + 536);
          v66 = *(v442 + 368);
          v67 = *(v442 + 360);

          (*(v60 + 96))(v59, v61);
          v0 = v442;
          (*(v63 + 32))(v62, v59, v64);
          sub_21CB81464();
          v68 = *(v66 + 48);
          v69 = v68(v65, 1, v67);
          v70 = *(v442 + 536);
          if (v69 == 1)
          {
            sub_21C6EA794(*(v442 + 536), &qword_27CDF47B8, &qword_21CBBB858);
            v397 = 0;
            v409 = 0;
          }

          else
          {
            v71 = *(v442 + 368);
            v72 = *(v442 + 360);
            v397 = sub_21CB81934();
            v409 = v73;
            (*(v71 + 8))(v70, v72);
            v0 = v442;
          }

          v74 = *(v0 + 528);
          v75 = *(v0 + 360);
          sub_21CB81454();
          v76 = v68(v74, 1, v75);
          v77 = *(v0 + 528);
          v33 = v50;
          if (v76 == 1)
          {
            sub_21C6EA794(*(v0 + 528), &qword_27CDF47B8, &qword_21CBBB858);
            v410 = 0;
          }

          else
          {
            v78 = *(v442 + 368);
            v79 = *(v442 + 360);
            sub_21CB81934();
            v410 = v80;
            (*(v78 + 8))(v77, v79);
            v0 = v442;
          }

          v24 = v399;
          v34 = v417;
          v81 = *(v0 + 520);
          sub_21CB813F4();
          v82 = sub_21CB81964();
          v83 = *(v82 - 8);
          v84 = (*(v83 + 48))(v81, 1, v82);
          v85 = *(v0 + 520);
          if (v84 == 1)
          {
            sub_21C6EA794(*(v0 + 520), &qword_27CDF47B0, &qword_21CBBB850);
            v37 = MEMORY[0x277D84F90];
          }

          else
          {
            v37 = sub_21CB81954();
            (*(v83 + 8))(v85, v82);
          }

          v25 = (*(*(v0 + 552) + 8))(*(v0 + 560), *(v0 + 544));
          goto LABEL_70;
        }

        if ((vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v45), *v425))) & 1) != 0 || v45 == *(v0 + 1180) || v45 == *(v0 + 1184))
        {
          goto LABEL_19;
        }

        if (v45 == *(v0 + 1188))
        {
          v34 = v417;
LABEL_63:
          v86 = *(v0 + 584);
          v87 = *(v0 + 576);
          v88 = *(v0 + 568);
          v89 = *(v0 + 400);
          v90 = *(v442 + 392);
          v91 = *(v442 + 384);
          (*(v87 + 96))(v86, v88);
          (*(v90 + 32))(v89, v86, v91);
          v0 = v442;
          v93 = *(v442 + 392);
          v92 = *(v442 + 400);
          v94 = *(v442 + 384);
          v24 = v399;
          if (!v398)
          {
            v110 = *(v442 + 376);
            v111 = *(v442 + 368);
            v112 = *(v442 + 360);
            v113 = *(v442 + 400);
            sub_21CB81484();
            sub_21CB81934();
            v398 = v114;
            (*(v111 + 8))(v110, v112);
            v0 = v442;
            v92 = v113;
            v24 = v399;
          }

          v25 = (*(v93 + 8))(v92, v94);
          v37 = v423;
          goto LABEL_70;
        }

        if (v45 == *(v0 + 1192))
        {
LABEL_67:
          v95 = *(v0 + 584);
          v96 = *(v442 + 576);
          v97 = *(v442 + 568);
          v98 = *(v442 + 512);
          v99 = *(v442 + 504);
          v100 = *(v442 + 496);

          (*(v96 + 96))(v95, v97);
          v0 = v442;
          (*(v99 + 32))(v98, v95, v100);
          v427 = sub_21CB81534();
          v418 = v101;
          sub_21C7902FC(v408, v407);
          v102 = sub_21CB81554();
          v104 = v103;
          sub_21C7902FC(v404, v403);
          v400 = sub_21CB81564();
          v34 = v105;
          v401 = sub_21CB81544();
          v402 = v106;
          v107 = sub_21CB81524();
          v109 = v108;
          sub_21C7902FC(v406, v405);
          v25 = (*(v99 + 8))(v98, v100);
          v405 = v109;
          v406 = v107;
          v404 = v102;
          v403 = v104;
          v37 = v423;
          v407 = v418;
          v408 = v427;
          v24 = v399;
        }

        else
        {
          if (v45 == *(v0 + 1196) || v45 == *(v0 + 1200) || v45 == *(v0 + 1204))
          {
            goto LABEL_19;
          }

          if (v45 != *(v0 + 1208))
          {
            if (v45 == *(v0 + 1212))
            {
LABEL_19:
              v47 = *(*(v0 + 576) + 8);
              v25 = v47(*(v0 + 584), *(v0 + 568));
              *(v434 + v432) = 4;
            }

            else
            {
              v135 = *(v0 + 584);
              v136 = *(v0 + 576);
              v137 = *(v0 + 568);
              *(v434 + v432) = 4;
              v47 = *(v136 + 8);
              v25 = v47(v135, v137);
            }

            if (v440 == v436)
            {
              v34 = v417;
              goto LABEL_107;
            }

            v38 = *(v33 + 16);
            if (v440 >= v38)
            {
LABEL_241:
              __break(1u);
            }

            else
            {
              v48 = v412 + v426 * v440;
              v49 = v35 + 2;
              while (1)
              {
                v440 = v49;
                v50 = v33;
                v51 = *(v0 + 1156);
                v52 = *(v0 + 1152);
                v53 = *(v0 + 584);
                v54 = *(v0 + 568);
                (v24)(v53, v48, v54);
                v55 = v44(v53, v54);
                v0 = v442;
                if (v55 == v52 || v55 == v51)
                {
                  goto LABEL_28;
                }

                if (v55 == *(v442 + 1160))
                {
                  v389 = 4;
                  v388 = 4;
                  v392 = 4;
                  v395 = 4;
                  v415 = 4;
                  goto LABEL_52;
                }

                if ((vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v55), *v425))) & 1) != 0 || v55 == *(v442 + 1180) || v55 == *(v442 + 1184))
                {
                  goto LABEL_28;
                }

                if (v55 == *(v442 + 1188))
                {
                  v389 = 4;
                  v388 = 4;
                  v392 = 4;
                  v395 = 4;
                  v415 = 4;
                  v34 = v417;
                  v33 = v50;
                  goto LABEL_63;
                }

                if (v55 == *(v442 + 1192))
                {
                  v389 = 4;
                  v388 = 4;
                  v392 = 4;
                  v395 = 4;
                  v415 = 4;
                  v33 = v50;
                  goto LABEL_67;
                }

                if (v55 == *(v442 + 1196) || v55 == *(v442 + 1200) || v55 == *(v442 + 1204))
                {
                  goto LABEL_28;
                }

                if (v55 == *(v442 + 1208))
                {
                  v389 = 4;
                  v388 = 4;
                  v392 = 4;
                  v395 = 4;
                  v415 = 4;
                  goto LABEL_73;
                }

                if (v55 == *(v442 + 1212))
                {
LABEL_28:
                  v25 = v47(*(v442 + 584), *(v442 + 568));
                  *(v434 + v432) = 4;
                }

                else
                {
                  v57 = *(v442 + 584);
                  v58 = *(v442 + 568);
                  *(v434 + v432) = 4;
                  v25 = v47(v57, v58);
                }

                if (v436 == v440)
                {
                  break;
                }

                v33 = v50;
                v38 = *(v50 + 16);
                v48 += v426;
                v49 = v440 + 1;
                if (v440 >= v38)
                {
                  goto LABEL_241;
                }
              }

              v34 = v417;
LABEL_107:

              v415 = 4;
              v395 = 4;
              v261 = 4;
              v259 = 12;
              v260 = 5;
              v37 = v423;
              v24 = v399;
LABEL_108:
              *(v0 + 936) = v407;
              *(v0 + 928) = v408;
              *(v0 + 920) = v403;
              *(v0 + 912) = v404;
              *(v0 + 904) = v34;
              *(v0 + 896) = v400;
              *(v0 + 888) = v402;
              *(v0 + 880) = v401;
              *(v0 + 872) = v405;
              *(v0 + 864) = v406;
              v423 = v37;
              if (!v410)
              {
                v393 = v261;
                v437 = v397;
                v441 = v409;
                goto LABEL_113;
              }

              v396 = v259;

              v440 = *(v37 + 16);
              v419 = v34;
              v413 = v260;
              if (v440)
              {
                (*(*(v0 + 312) + 16))(*(v0 + 680), v37 + ((*(*(v0 + 312) + 80) + 32) & ~*(*(v0 + 312) + 80)), *(v0 + 304));
                v171 = 0;
              }

              else
              {
                v171 = 1;
              }

              v183 = *(v0 + 680);
              v184 = *(v0 + 672);
              v185 = *(v0 + 304);
              v186 = *(v0 + 312);
              (v24)(v183, v171, 1, v185);
              sub_21C6EDBAC(v183, v184, &qword_27CDEC300, &qword_21CBA3ED0);
              v187 = *(v186 + 48);
              LODWORD(v183) = v187(v184, 1, v185);
              sub_21C6EA794(v184, &qword_27CDEC300, &qword_21CBA3ED0);
              if (v183 != 1)
              {
                v188 = *(v0 + 664);
                v189 = *(v0 + 304);
                sub_21C6EDBAC(*(v0 + 680), v188, &qword_27CDEC300, &qword_21CBA3ED0);
                v25 = v187(v188, 1, v189);
                if (v25 != 1)
                {
                  v190 = *(v0 + 664);
                  v191 = *(v0 + 304);
                  v192 = *(v0 + 312);
                  sub_21CB80BC4();
                  v194 = v193;
                  v195 = *(v192 + 8);
                  v195(v190, v191);
                  if (v194)
                  {

                    goto LABEL_161;
                  }

                  v196 = *(v0 + 656);
                  v197 = *(v0 + 304);
                  sub_21C6EDBAC(*(v0 + 680), v196, &qword_27CDEC300, &qword_21CBA3ED0);
                  v25 = v187(v196, 1, v197);
                  if (v25 != 1)
                  {
                    v198 = *(v0 + 656);
                    v199 = *(v0 + 304);
                    sub_21CB80B64();
                    v195(v198, v199);
                    v200 = sub_21CB85584();

                    v201 = [v200 safari_bestURLForUserTypedString];

                    if (v201)
                    {
                      sub_21CB80B94();

                      v202 = 0;
                    }

                    else
                    {
                      v202 = 1;
                    }

                    v262 = *(v0 + 680);
                    v263 = *(v0 + 648);
                    v264 = *(v0 + 304);
                    sub_21C6EA794(v262, &qword_27CDEC300, &qword_21CBA3ED0);
                    v399(v263, v202, 1, v264);
                    sub_21C79C3F4(v263, v262);
                    goto LABEL_161;
                  }

LABEL_275:
                  __break(1u);
                  return MEMORY[0x2821AB028](v25, v26, v27, v28, v29, v30, v31, v32);
                }

LABEL_274:
                __break(1u);
                goto LABEL_275;
              }

LABEL_161:
              v265 = *(v0 + 720);
              v266 = *(v0 + 632);
              sub_21C6EDBAC(*(v0 + 680), *(v0 + 640), &qword_27CDEC300, &qword_21CBA3ED0);
              sub_21C6EDBAC(v265, v266, &qword_27CDEC300, &qword_21CBA3ED0);
              v267 = sub_21CB81404();
              v269 = v268;

              v270 = HIBYTE(v269) & 0xF;
              if ((v269 & 0x2000000000000000) == 0)
              {
                v270 = v267 & 0xFFFFFFFFFFFFLL;
              }

              if (v270)
              {
                sub_21CB81404();
                v272 = v271;
                if (v409)
                {
                  goto LABEL_165;
                }

LABEL_167:
                v273 = 0;
              }

              else
              {
                v272 = 0;
                if (!v409)
                {
                  goto LABEL_167;
                }

LABEL_165:

                v273 = sub_21CB85584();
              }

              v274 = *(v0 + 640);
              v275 = *(v0 + 304);
              v276 = sub_21CB85584();
              if (v187(v274, 1, v275) == 1)
              {
                v277 = 0;
              }

              else
              {
                v278 = *(v0 + 640);
                v279 = *(v442 + 312);
                v280 = *(v442 + 304);
                v277 = sub_21CB80B74();
                (*(v279 + 8))(v278, v280);
                v0 = v442;
              }

              v281 = *(v0 + 632);
              v282 = *(v0 + 304);
              if (v187(v281, 1, v282) == 1)
              {
                v283 = 0;
                if (v272)
                {
                  goto LABEL_173;
                }

LABEL_176:
                v284 = 0;
                if (!v398)
                {
                  goto LABEL_177;
                }

LABEL_174:
                v285 = sub_21CB85584();
              }

              else
              {
                v286 = *(v442 + 312);
                v283 = sub_21CB80B74();
                (*(v286 + 8))(v281, v282);
                v0 = v442;
                if (!v272)
                {
                  goto LABEL_176;
                }

LABEL_173:
                v284 = sub_21CB85584();

                if (v398)
                {
                  goto LABEL_174;
                }

LABEL_177:
                v285 = 0;
              }

              v287 = v0;
              v288 = *(v0 + 808);
              v289 = *(v287 + 280);
              v290 = [objc_allocWithZone(MEMORY[0x277D49FE0]) initWithUser:v273 password:v276 url:v277 otpAuthURL:v283 title:v284 notesEntry:v285 lineNumberFromSourceFile:0];
              *(v287 + 944) = v290;

              v291 = objc_opt_self();
              v436 = *(v289 + v288);
              v292 = [v291 importCredential:v290 savedAccountStore:?];
              v430 = v290;
              if (v292 == 2)
              {
                v239 = 0;
                v240 = 0;
                v241 = 0;
                v242 = 0;
                v293 = v423;
                v299 = v415;
                v301 = v409;
                v294 = v440;
              }

              else
              {
                v293 = v423;
                v294 = v440;
                if (v292 == 1)
                {
                  v295 = v442;
                  if (qword_27CDEA3F0 != -1)
                  {
                    swift_once();
                  }

                  v296 = sub_21CB81C84();
                  __swift_project_value_buffer(v296, qword_27CE18580);
                  v297 = sub_21CB81C64();
                  v298 = sub_21CB85AF4();
                  v299 = v413;
                  if (os_log_type_enabled(v297, v298))
                  {
                    v300 = swift_slowAlloc();
                    *v300 = 0;
                    _os_log_impl(&dword_21C6E5000, v297, v298, "Error while importing password; the error was a conflict", v300, 2u);
                    goto LABEL_189;
                  }
                }

                else
                {
                  v295 = v442;
                  if (qword_27CDEA3F0 != -1)
                  {
                    swift_once();
                  }

                  v302 = sub_21CB81C84();
                  __swift_project_value_buffer(v302, qword_27CE18580);
                  v297 = sub_21CB81C64();
                  v303 = sub_21CB85AF4();
                  if (os_log_type_enabled(v297, v303))
                  {
                    v300 = swift_slowAlloc();
                    *v300 = 0;
                    _os_log_impl(&dword_21C6E5000, v297, v303, "Error while importing password; the error was unknown", v300, 2u);
                    v299 = v396;
LABEL_189:
                    MEMORY[0x21CF16D90](v300, -1, -1);
                  }

                  else
                  {
                    v299 = v396;
                  }
                }

                *(v434 + v432) = v299;
                if (v440)
                {
                  if (!*(v423 + 16))
                  {
                    goto LABEL_270;
                  }

                  v304 = *(v295 + 352);
                  v305 = v295;
                  v306 = *(v295 + 312);
                  v307 = *(v305 + 304);
                  (*(v306 + 16))(v304, v423 + ((*(v306 + 80) + 32) & ~*(v306 + 80)), v307);
                  v241 = sub_21CB80BA4();
                  v242 = v308;
                  (*(v306 + 8))(v304, v307);
                }

                else
                {
                  v241 = 0;
                  v242 = 0;
                }

                *v391 = v241;
                v391[1] = v242;
                v239 = v397;
                v301 = v409;
                *v390 = v397;
                v390[1] = v409;

                v240 = v409;
              }

              *(v442 + 984) = v242;
              *(v442 + 976) = v241;
              *(v442 + 968) = v240;
              *(v442 + 960) = v239;
              *(v442 + 952) = v299;
              if (v294)
              {
                if (!*(v293 + 16))
                {
                  goto LABEL_269;
                }

                v309 = *(v442 + 344);
                v311 = *(v442 + 304);
                v310 = *(v442 + 312);
                (*(v310 + 16))(v309, v293 + ((*(v310 + 80) + 32) & ~*(v310 + 80)), v311);
                v312 = sub_21CB80B74();
                (*(v310 + 8))(v309, v311);
                v415 = v299;
                if (v409)
                {
LABEL_199:
                  v313 = sub_21CB85584();

                  goto LABEL_202;
                }
              }

              else
              {
                v312 = 0;
                v415 = v299;
                if (v301)
                {
                  goto LABEL_199;
                }
              }

              v313 = 0;
LABEL_202:
              v0 = v442;
              v314 = sub_21CB85584();

              v24 = [v436 savedAccountForURL:v312 user:v313 password:v314];
              *(v442 + 992) = v24;

              if (!v24)
              {
                sub_21C6EA794(*(v442 + 680), &qword_27CDEC300, &qword_21CBA3ED0);

                v34 = v419;
                goto LABEL_206;
              }

              v38 = *(v293 + 16);
              v26 = &qword_27CDEC300;
              v27 = &qword_21CBA3ED0;
              v34 = v419;
              if (v38 <= 1)
              {
                sub_21C6EA794(*(v442 + 680), &qword_27CDEC300, &qword_21CBA3ED0);

                goto LABEL_206;
              }
            }

            if (v440)
            {
              if (v38 >= v440)
              {
                v351 = v440 - 1;
                if (v440 != 1)
                {
                  v352 = *(v0 + 312);
                  v353 = *(v352 + 72);
                  v443 = *(v352 + 16);
                  v354 = v423 + v353 + ((*(v352 + 80) + 32) & ~*(v352 + 80));
                  v355 = MEMORY[0x277D84F90];
                  do
                  {
                    v443(*(v0 + 336), v354, *(v0 + 304));
                    v356 = sub_21CB80BA4();
                    if (!v357)
                    {
                      v356 = sub_21CB80B64();
                    }

                    v358 = v356;
                    v359 = v357;
                    (*(*(v0 + 312) + 8))(*(v0 + 336), *(v0 + 304));
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v355 = sub_21CA4F2EC(0, *(v355 + 2) + 1, 1, v355);
                    }

                    v361 = *(v355 + 2);
                    v360 = *(v355 + 3);
                    if (v361 >= v360 >> 1)
                    {
                      v355 = sub_21CA4F2EC((v360 > 1), v361 + 1, 1, v355);
                    }

                    *(v355 + 2) = v361 + 1;
                    v362 = &v355[16 * v361];
                    *(v362 + 4) = v358;
                    *(v362 + 5) = v359;
                    v354 += v353;
                    --v351;
                  }

                  while (v351);
                }

                v363 = sub_21CB85814();
                *(v0 + 1000) = v363;

                *(v0 + 16) = v0;
                *(v0 + 24) = sub_21C9EC594;
                v364 = swift_continuation_init();
                *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
                *(v0 + 80) = MEMORY[0x277D85DD0];
                *(v0 + 88) = 1107296256;
                *(v0 + 96) = sub_21CAB1570;
                *(v0 + 104) = &block_descriptor_24;
                *(v0 + 112) = v364;
                [v436 saveAdditionalSites:v363 forSavedAccount:v24 completionHandler:v0 + 80];

                return MEMORY[0x282200938](v0 + 16);
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_274;
          }

          v50 = v33;
LABEL_73:
          v115 = *(v0 + 720);
          v116 = *(v0 + 712);
          v117 = *(v0 + 584);
          v118 = *(v0 + 576);
          v119 = *(v0 + 568);
          v120 = *(v0 + 488);
          v121 = *(v442 + 480);
          v122 = *(v442 + 472);
          v123 = *(v442 + 312);
          v124 = *(v442 + 304);
          (*(v118 + 96))(v117, v119);
          (*(v121 + 32))(v120, v117, v122);
          v0 = v442;
          sub_21C6EDBAC(v115, v116, &qword_27CDEC300, &qword_21CBA3ED0);
          v125 = *(v123 + 48);
          v126 = v125(v116, 1, v124);
          v127 = *(v442 + 712);
          v34 = v417;
          if (v126 == 1)
          {
            v386 = v125;

            sub_21C6EA794(v127, &qword_27CDEC300, &qword_21CBA3ED0);
            if (!v409)
            {
              v397 = sub_21CB814E4();
              v409 = v128;
            }

            v129 = *(v442 + 1216);
            v130 = *(v442 + 456);
            v131 = *(v442 + 464);
            v132 = *(v442 + 448);
            sub_21CB814B4();
            v394 = v133;
            sub_21CB81504();
            v134 = (*(v130 + 88))(v131, v132);
            if (v134 == v129)
            {
              v387 = 0;
              v0 = v442;
              v33 = v50;
            }

            else
            {
              v0 = v442;
              v33 = v50;
              if (v134 == *(v442 + 1220))
              {
                v387 = 1;
              }

              else if (v134 == *(v442 + 1224))
              {
                v387 = 2;
              }

              else
              {
                (*(*(v442 + 456) + 8))(*(v442 + 464), *(v442 + 448));
                v387 = 0;
              }
            }

            v384 = *(v0 + 704);
            v138 = *(v0 + 304);
            v139 = sub_21CB814D4();
            v141 = v140;
            sub_21CB80D74();
            v382 = sub_21CB814C4();
            v380 = sub_21CB814A4();
            sub_21CB814B4();
            v143 = v142;
            sub_21CB814E4();
            v145 = v144;
            v399(v384, 1, 1, v138);
            v383 = v141;
            v385 = v139;
            v381 = sub_21CB80C64();
            v146 = sub_21CB80D24();
            if (v143)
            {
              v147 = sub_21CB85584();

              v148 = v386;
              if (v145)
              {
                goto LABEL_93;
              }

LABEL_95:
              v149 = 0;
            }

            else
            {
              v147 = 0;
              v148 = v386;
              if (!v145)
              {
                goto LABEL_95;
              }

LABEL_93:
              v149 = sub_21CB85584();
            }

            v150 = *(v0 + 704);
            v151 = *(v0 + 304);
            v152 = v148(v150, 1, v151);
            v153 = v146;
            if (v152 == 1)
            {
              v154 = 0;
            }

            else
            {
              v155 = *(v442 + 312);
              v154 = sub_21CB80B74();
              (*(v155 + 8))(v150, v151);
              v0 = v442;
            }

            v428 = *(v0 + 440);
            v156 = *(v0 + 416);
            v379 = *(v0 + 408);
            v157 = [objc_allocWithZone(MEMORY[0x277D49B78]) initWithKeyData:v381 initialDate:v153 codeGenerationPeriod:v382 numberOfDigits:v380 algorithm:v387 issuer:v147 accountName:v149 originalURL:v154];

            sub_21C7A34C0(v385, v383);
            (*(v156 + 8))(v428, v379);
            if (v157)
            {
              v158 = [v157 exportableURL];
              if (v158)
              {
                v159 = v158;
                sub_21CB80B94();

                v429 = 0;
                v157 = v159;
              }

              else
              {
                v429 = 1;
              }

              v163 = *(v0 + 720);
              v164 = *(v0 + 696);
              v165 = *(v0 + 688);
              v166 = *(v0 + 488);
              v167 = *(v442 + 480);
              v168 = *(v442 + 472);
              v169 = *(v442 + 304);

              (*(v167 + 8))(v166, v168);
              v0 = v442;
              sub_21C6EA794(v163, &qword_27CDEC300, &qword_21CBA3ED0);
              v399(v165, v429, 1, v169);
              v170 = v165;
              v24 = v399;
              sub_21C79C3F4(v170, v164);
            }

            else
            {
              v160 = *(v0 + 720);
              v161 = *(v0 + 696);
              v162 = *(v0 + 304);
              (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
              sub_21C6EA794(v160, &qword_27CDEC300, &qword_21CBA3ED0);
              v24 = v399;
              v399(v161, 1, 1, v162);
            }

            v37 = v423;
            v25 = sub_21C79C3F4(*(v0 + 696), *(v0 + 720));
            goto LABEL_70;
          }

          (*(*(v442 + 480) + 8))(*(v442 + 488), *(v442 + 472));
          v25 = sub_21C6EA794(v127, &qword_27CDEC300, &qword_21CBA3ED0);
          v37 = v423;
          v24 = v399;
          v33 = v50;
        }

LABEL_70:
        v35 = v440;
        if (v440 == v436)
        {

          v259 = v388 | 8;
          v260 = v389 | 1;
          v261 = v392;
          goto LABEL_108;
        }
      }
    }

    v406 = 0;
    v401 = 0;
    v402 = 0;
    v400 = 0;
    v34 = 0;
    v404 = 0;
    v408 = 0;
    v398 = 0;
    v394 = 0;
    v437 = 0;
    v441 = 0;
    v415 = 0;
    v395 = 0;
    v393 = 0;
    v405 = 0xF000000000000000;
    v403 = 0xF000000000000000;
    v407 = 0xF000000000000000;
    v423 = MEMORY[0x277D84F90];
LABEL_113:
    v172 = *(v0 + 624);
    v173 = *(v0 + 304);
    v174 = *(v0 + 312);
    sub_21C6EDBAC(*(v0 + 720), v172, &qword_27CDEC300, &qword_21CBA3ED0);
    v175 = *(v174 + 48);
    v176 = v175(v172, 1, v173);
    v177 = *(v0 + 624);
    if (v176 == 1)
    {

      sub_21C6EA794(v177, &qword_27CDEC300, &qword_21CBA3ED0);
LABEL_148:
      v239 = 0;
      v240 = 0;
      v241 = 0;
      v242 = 0;
      goto LABEL_206;
    }

    v420 = v34;
    v178 = *(v0 + 616);
    v179 = *(v0 + 304);
    (*(*(v0 + 312) + 32))(*(v0 + 328), v177, v179);
    (v24)(v178, 1, 1, v179);
    if (v394)
    {
      v180 = sub_21CB85584();

      v181 = [v180 safari_bestURLForUserTypedString];

      if (v181)
      {
        sub_21CB80B94();

        v182 = 0;
      }

      else
      {
        v182 = 1;
      }

      v203 = *(v0 + 616);
      v204 = *(v0 + 608);
      v205 = *(v0 + 304);
      sub_21C6EA794(v203, &qword_27CDEC300, &qword_21CBA3ED0);
      (v24)(v204, v182, 1, v205);
      sub_21C79C3F4(v204, v203);
    }

    v206 = *(v0 + 592);
    v207 = *(v0 + 328);
    v208 = *(v0 + 304);
    v209 = *(v0 + 312);
    sub_21C6EDBAC(*(v0 + 616), *(v0 + 600), &qword_27CDEC300, &qword_21CBA3ED0);
    v411 = *(v209 + 16);
    v411(v206, v207, v208);
    (v24)(v206, 0, 1, v208);

    sub_21CB81404();
    if (v441)
    {
      v210 = sub_21CB85584();
    }

    else
    {
      v210 = 0;
    }

    v211 = *(v0 + 600);
    v212 = *(v0 + 304);
    v213 = sub_21CB85584();
    if (v175(v211, 1, v212) == 1)
    {
      v214 = 0;
    }

    else
    {
      v215 = *(v0 + 600);
      v216 = *(v442 + 312);
      v217 = *(v442 + 304);
      v214 = sub_21CB80B74();
      (*(v216 + 8))(v215, v217);
      v0 = v442;
    }

    v218 = *(v0 + 592);
    v219 = *(v0 + 304);
    if (v175(v218, 1, v219) == 1)
    {
      v220 = 0;
    }

    else
    {
      v221 = *(v442 + 312);
      v220 = sub_21CB80B74();
      (*(v221 + 8))(v218, v219);
      v0 = v442;
    }

    v34 = v420;
    v222 = v210;
    v223 = sub_21CB85584();

    if (v398)
    {
      v224 = sub_21CB85584();
    }

    else
    {
      v224 = 0;
    }

    v225 = *(v0 + 808);
    v226 = *(v0 + 280);
    v227 = [objc_allocWithZone(MEMORY[0x277D49FE0]) initWithUser:v222 password:v213 url:v214 otpAuthURL:v220 title:v223 notesEntry:v224 lineNumberFromSourceFile:0];

    v228 = [objc_opt_self() importCredential:v227 savedAccountStore:*(v226 + v225)];
    if (v228 == 2)
    {
      v235 = *(v442 + 616);
      v236 = *(v442 + 328);
      v237 = *(v442 + 304);
      v238 = *(v442 + 312);

      sub_21C6EA794(v235, &qword_27CDEC300, &qword_21CBA3ED0);
      (*(v238 + 8))(v236, v237);
      v0 = v442;
      goto LABEL_148;
    }

    if (v228 == 1)
    {
      v229 = v442;
      if (qword_27CDEA3F0 != -1)
      {
        swift_once();
      }

      v230 = sub_21CB81C84();
      __swift_project_value_buffer(v230, qword_27CE18580);
      v231 = sub_21CB81C64();
      v232 = sub_21CB85AF4();
      if (os_log_type_enabled(v231, v232))
      {
        v233 = swift_slowAlloc();
        *v233 = 0;
        _os_log_impl(&dword_21C6E5000, v231, v232, "Error while importing password synthesized for TOTP generator; the error was a conflict", v233, 2u);
        MEMORY[0x21CF16D90](v233, -1, -1);
      }

      v234 = v393 | 1;
    }

    else
    {
      v229 = v442;
      if (qword_27CDEA3F0 != -1)
      {
        swift_once();
      }

      v243 = sub_21CB81C84();
      __swift_project_value_buffer(v243, qword_27CE18580);
      v244 = sub_21CB81C64();
      v245 = sub_21CB85AF4();
      if (os_log_type_enabled(v244, v245))
      {
        v246 = swift_slowAlloc();
        *v246 = 0;
        _os_log_impl(&dword_21C6E5000, v244, v245, "Error while importing password synthesized for TOTP generator; the error was unknown", v246, 2u);
        MEMORY[0x21CF16D90](v246, -1, -1);
      }

      v234 = v395 | 8;
    }

    v415 = v234;
    *(v434 + v432) = v234;
    v247 = v229[77];
    v248 = v229[41];
    v249 = v229;
    if (*(v423 + 16))
    {
      v252 = v229 + 39;
      v251 = v229[39];
      v250 = v252[1];
      v253 = v249[38];
      v411(v250, v423 + ((*(v251 + 80) + 32) & ~*(v251 + 80)), v253);

      v241 = sub_21CB80BA4();
      v254 = v227;
      v242 = v255;

      sub_21C6EA794(v247, &qword_27CDEC300, &qword_21CBA3ED0);
      v256 = *(v251 + 8);
      v256(v248, v253);
      v256(v250, v253);
    }

    else
    {
      v257 = v229[39];
      v258 = v249[38];

      sub_21C6EA794(v247, &qword_27CDEC300, &qword_21CBA3ED0);
      (*(v257 + 8))(v248, v258);
      v241 = 0;
      v242 = 0;
    }

    *v391 = v241;
    v391[1] = v242;
    v239 = v437;
    v240 = v441;
    *v390 = v437;
    v390[1] = v441;
    v0 = v442;
LABEL_206:
    *(v0 + 1120) = v242;
    *(v0 + 1112) = v241;
    *(v0 + 1104) = v240;
    *(v0 + 1096) = v239;
    *(v0 + 1088) = v407;
    *(v0 + 1080) = v408;
    *(v0 + 1072) = v403;
    *(v0 + 1064) = v404;
    *(v0 + 1056) = v34;
    *(v0 + 1048) = v400;
    *(v0 + 1040) = v402;
    *(v0 + 1032) = v401;
    *(v0 + 1024) = v405;
    *(v0 + 1016) = v406;
    *(v0 + 1008) = v415;
    if (v407 >> 60 == 15)
    {
      goto LABEL_207;
    }

    if (v403 >> 60 != 15)
    {
      break;
    }

    sub_21C7A35D0(v408, v407);

    sub_21C7902FC(v408, v407);
    if (!*(v0 + 1008))
    {
      goto LABEL_217;
    }

LABEL_212:
    v315 = *(v0 + 824);
    v316 = *(v442 + 280);
    sub_21C9F312C(*(v442 + 752), *(v442 + 744));
    swift_getKeyPath(byte_21CBBB4A0);
    *(v442 + 200) = v316;
    sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
    sub_21CB810D4();

    *(v442 + 208) = v316;
    swift_getKeyPath(byte_21CBBB4A0);
    sub_21CB810F4();

    swift_beginAccess();
    v317 = *(v316 + v315);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v316 + v315) = v317;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v335 = *(v442 + 824);
      v336 = *(v442 + 280);
      v317 = sub_21CA4FB74(0, v317[2] + 1, 1, v317);
      *(v336 + v335) = v317;
    }

    v320 = v317[2];
    v319 = v317[3];
    if (v320 >= v319 >> 1)
    {
      v317 = sub_21CA4FB74((v319 > 1), v320 + 1, 1, v317);
    }

    v321 = *(v442 + 824);
    v322 = *(v442 + 744);
    v323 = *(v442 + 736);
    v324 = *(v442 + 280);
    v317[2] = v320 + 1;
    sub_21C9F3190(v322, v317 + ((*(v323 + 80) + 32) & ~*(v323 + 80)) + *(v323 + 72) * v320);
    *(v324 + v321) = v317;
    v0 = v442;
    swift_endAccess();
    *(v442 + 216) = v324;
    swift_getKeyPath(byte_21CBBB4A0);
    sub_21CB810E4();

LABEL_217:
    v325 = *(v0 + 832);
    v326 = *(v0 + 280);
    swift_getKeyPath(byte_21CBBB478);
    *(v0 + 224) = v326;
    sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
    sub_21CB810D4();

    *(v0 + 232) = v326;
    swift_getKeyPath(byte_21CBBB478);
    sub_21CB810F4();

    v327 = *(v326 + v325);
    v328 = __OFADD__(v327, 1);
    v329 = v327 + 1;
    if (v328)
    {
      goto LABEL_268;
    }

    v421 = *(v0 + 1080);
    v424 = *(v0 + 1088);
    v414 = *(v0 + 1064);
    v416 = *(v0 + 1072);
    v330 = *(v0 + 1024);
    v331 = *(v0 + 1016);
    v440 = *(v0 + 800);
    v433 = *(v0 + 776);
    v332 = *(v0 + 768);
    v431 = *(v0 + 760);
    v333 = *(v0 + 720);
    v334 = *(v0 + 280);
    v435 = *(v0 + 752);
    v438 = *(v0 + 848) + 1;
    *(v334 + *(v0 + 832)) = v329;
    *(v0 + 240) = v334;
    swift_getKeyPath(byte_21CBBB478);
    sub_21CB810E4();

    sub_21C7902FC(v331, v330);
    sub_21C7902FC(v414, v416);
    sub_21C7902FC(v421, v424);
    sub_21C6EA794(v333, &qword_27CDEC300, &qword_21CBA3ED0);
    (*(v332 + 8))(v433, v431);
    sub_21C9F31F4(v435);
    v4 = *(v0 + 856);
    if (v438 == v440)
    {
      goto LABEL_227;
    }

    v3 = *(v0 + 848) + 1;
    *(v0 + 848) = v3;
    v1 = *(v0 + 792);
    if (v3 >= *(v1 + 16))
    {
      goto LABEL_267;
    }
  }

  if (!v34 || !v402)
  {
LABEL_208:

    if (!*(v0 + 1008))
    {
      goto LABEL_217;
    }

    goto LABEL_212;
  }

  if (v405 >> 60 == 15)
  {
LABEL_207:

    goto LABEL_208;
  }

  v422 = v34;
  v365 = *(v0 + 408);
  v366 = *(v0 + 416);
  v367 = *(v0 + 296);
  sub_21C9F3250(v408, v407);
  sub_21C9F3250(v404, v403);
  sub_21C9F3250(v406, v405);
  v368 = sub_21CB80C74();
  v370 = v369;
  *(v0 + 1128) = v369;
  sub_21CB81414();
  v371 = *(v366 + 48);
  if (v371(v367, 1, v365) == 1)
  {
    v372 = *(v0 + 408);
    v373 = *(v0 + 296);
    sub_21CB80DA4();
    if (v371(v373, 1, v372) != 1)
    {
      sub_21C6EA794(*(v0 + 296), &unk_27CDED250, &qword_21CBA64C0);
    }
  }

  else
  {
    (*(*(v0 + 416) + 32))(*(v0 + 432), *(v0 + 296), *(v0 + 408));
  }

  v374 = *(v0 + 408);
  v375 = *(v0 + 288);
  sub_21CB813E4();
  if (v371(v375, 1, v374) == 1)
  {
    v376 = *(v0 + 408);
    v377 = *(v0 + 288);
    sub_21CB80DA4();
    if (v371(v377, 1, v376) != 1)
    {
      sub_21C6EA794(*(v0 + 288), &unk_27CDED250, &qword_21CBA64C0);
    }
  }

  else
  {
    (*(*(v0 + 416) + 32))(*(v0 + 424), *(v0 + 288), *(v0 + 408));
  }

  v378 = swift_task_alloc();
  *(v0 + 1136) = v378;
  *v378 = v0;
  v378[1] = sub_21C9EF6A0;
  v32 = v405;
  v25 = v400;
  v29 = v401;
  v26 = v422;
  v27 = v368;
  v28 = v370;
  v30 = v402;
  v31 = v406;

  return MEMORY[0x2821AB028](v25, v26, v27, v28, v29, v30, v31, v32);
}

uint64_t sub_21C9EC594()
{

  return MEMORY[0x2822009F8](sub_21C9EC674, 0, 0);
}

uint64_t sub_21C9EC674()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v3 = *(v0 + 680);

  sub_21C6EA794(v3, &qword_27CDEC300, &qword_21CBA3ED0);
  v434 = (v0 + 1164);
  v4 = *(v0 + 984);
  v5 = *(v0 + 976);
  v6 = *(v0 + 968);
  v7 = *(v0 + 960);
  v8 = *(v0 + 952);
  v419 = *(v0 + 936);
  v420 = *(v0 + 928);
  v9 = *(v0 + 920);
  v10 = *(v0 + 904);
  v415 = *(v0 + 896);
  v416 = *(v0 + 912);
  v11 = *(v0 + 888);
  v414 = *(v0 + 880);
  v12 = *(v0 + 872);
  v417 = *(v0 + 864);
  v453 = v0;
  while (1)
  {
LABEL_4:
    *(v0 + 1120) = v4;
    *(v0 + 1112) = v5;
    *(v0 + 1104) = v6;
    *(v0 + 1096) = v7;
    *(v0 + 1088) = v419;
    *(v0 + 1080) = v420;
    *(v0 + 1072) = v9;
    *(v0 + 1064) = v416;
    *(v0 + 1056) = v10;
    *(v0 + 1048) = v415;
    *(v0 + 1040) = v11;
    *(v0 + 1032) = v414;
    *(v0 + 1024) = v12;
    *(v0 + 1016) = v417;
    *(v0 + 1008) = v8;
    if (v419 >> 60 == 15)
    {
    }

    else
    {
      if (v9 >> 60 == 15)
      {
        sub_21C7A35D0(v420, v419);

        sub_21C7902FC(v420, v419);
        if (!*(v0 + 1008))
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      if (v10 && v11)
      {
        if (v12 >> 60 != 15)
        {
          v433 = v10;
          v370 = *(v0 + 408);
          v371 = *(v0 + 416);
          v372 = *(v0 + 296);
          sub_21C9F3250(v420, v419);
          sub_21C9F3250(v416, v9);
          v413 = v12;
          sub_21C9F3250(v417, v12);
          v373 = sub_21CB80C74();
          v375 = v374;
          *(v0 + 1128) = v374;
          sub_21CB81414();
          v376 = *(v371 + 48);
          if (v376(v372, 1, v370) == 1)
          {
            v377 = *(v0 + 408);
            v378 = *(v0 + 296);
            sub_21CB80DA4();
            if (v376(v378, 1, v377) != 1)
            {
              sub_21C6EA794(*(v0 + 296), &unk_27CDED250, &qword_21CBA64C0);
            }
          }

          else
          {
            (*(*(v0 + 416) + 32))(*(v0 + 432), *(v0 + 296), *(v0 + 408));
          }

          v379 = *(v0 + 408);
          v380 = *(v0 + 288);
          sub_21CB813E4();
          if (v376(v380, 1, v379) == 1)
          {
            v381 = *(v0 + 408);
            v382 = *(v0 + 288);
            sub_21CB80DA4();
            if (v376(v382, 1, v381) != 1)
            {
              sub_21C6EA794(*(v0 + 288), &unk_27CDED250, &qword_21CBA64C0);
            }
          }

          else
          {
            (*(*(v0 + 416) + 32))(*(v0 + 424), *(v0 + 288), *(v0 + 408));
          }

          v383 = swift_task_alloc();
          *(v0 + 1136) = v383;
          *v383 = v0;
          v383[1] = sub_21C9EF6A0;
          v216 = v417;
          v214 = v414;
          v210 = v415;
          v211 = v433;
          v212 = v373;
          v213 = v375;
          v215 = v11;
          v217 = v413;

          return MEMORY[0x2821AB028](v210, v211, v212, v213, v214, v215, v216, v217);
        }
      }
    }

    if (!*(v0 + 1008))
    {
      goto LABEL_20;
    }

LABEL_15:
    v13 = *(v0 + 824);
    v14 = *(v453 + 280);
    sub_21C9F312C(*(v453 + 752), *(v453 + 744));
    swift_getKeyPath(byte_21CBBB4A0);
    *(v453 + 200) = v14;
    sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
    sub_21CB810D4();

    *(v453 + 208) = v14;
    swift_getKeyPath(byte_21CBBB4A0);
    sub_21CB810F4();

    swift_beginAccess();
    v15 = *(v14 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v14 + v13) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v341 = *(v453 + 824);
      v342 = *(v453 + 280);
      v15 = sub_21CA4FB74(0, v15[2] + 1, 1, v15);
      *(v342 + v341) = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = sub_21CA4FB74((v17 > 1), v18 + 1, 1, v15);
    }

    v19 = *(v453 + 824);
    v20 = *(v453 + 744);
    v21 = *(v453 + 736);
    v22 = *(v453 + 280);
    v15[2] = v18 + 1;
    sub_21C9F3190(v20, v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18);
    *(v22 + v19) = v15;
    v0 = v453;
    swift_endAccess();
    *(v453 + 216) = v22;
    swift_getKeyPath(byte_21CBBB4A0);
    sub_21CB810E4();

LABEL_20:
    v23 = *(v0 + 832);
    v24 = *(v0 + 280);
    swift_getKeyPath(byte_21CBBB478);
    *(v0 + 224) = v24;
    sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
    sub_21CB810D4();

    *(v0 + 232) = v24;
    swift_getKeyPath(byte_21CBBB478);
    sub_21CB810F4();

    v25 = *(v24 + v23);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
      goto LABEL_265;
    }

    v426 = *(v0 + 1080);
    v428 = *(v0 + 1088);
    v422 = *(v0 + 1072);
    v28 = *(v0 + 1064);
    v29 = *(v0 + 1024);
    v30 = *(v0 + 1016);
    v448 = *(v0 + 800);
    v437 = *(v0 + 776);
    v31 = *(v0 + 768);
    v435 = *(v0 + 760);
    v32 = *(v0 + 720);
    v33 = *(v0 + 280);
    v439 = *(v0 + 752);
    v443 = *(v0 + 848) + 1;
    *(v33 + *(v0 + 832)) = v27;
    *(v0 + 240) = v33;
    swift_getKeyPath(byte_21CBBB478);
    sub_21CB810E4();

    sub_21C7902FC(v30, v29);
    sub_21C7902FC(v28, v422);
    sub_21C7902FC(v426, v428);
    sub_21C6EA794(v32, &qword_27CDEC300, &qword_21CBA3ED0);
    (*(v31 + 8))(v437, v435);
    sub_21C9F31F4(v439);
    v34 = *(v0 + 856);
    if (v443 == v448)
    {
      v57 = *(v0 + 280);

      v60 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importInProgress;
      if (*(v57 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importInProgress))
      {
        v343 = *(v453 + 280);
        swift_getKeyPath(aX_53);
        v344 = swift_task_alloc();
        *(v344 + 16) = v343;
        *(v344 + 24) = 0;
        *(v453 + 272) = v343;
        v0 = v453;
        sub_21CB810C4();

        goto LABEL_226;
      }

LABEL_225:
      *(v57 + v60) = 0;
LABEL_226:
      v345 = *(v0 + 280);
      if (*(v345 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importDidComplete) == 1)
      {
        *(v345 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importDidComplete) = 1;
      }

      else
      {
        swift_getKeyPath(byte_21CBBB7F8);
        v346 = swift_task_alloc();
        *(v346 + 16) = v345;
        *(v346 + 24) = 1;
        *(v0 + 248) = v345;
        sub_21CB810C4();
      }

      if (qword_27CDEA3F0 == -1)
      {
        goto LABEL_230;
      }

      goto LABEL_266;
    }

    v35 = *(v0 + 848) + 1;
    *(v0 + 848) = v35;
    v36 = *(v0 + 792);
    if (v35 >= *(v36 + 16))
    {
      goto LABEL_263;
    }

    (*(*(v0 + 768) + 16))(*(v0 + 776), v36 + ((*(*(v0 + 768) + 80) + 32) & ~*(*(v0 + 768) + 80)) + *(*(v0 + 768) + 72) * v35, *(v0 + 760));
    if (sub_21CB85954())
    {
      (*(*(v0 + 768) + 8))(*(v0 + 776), *(v0 + 760));

LABEL_234:

      v355 = *(v0 + 8);

      return v355();
    }

    v37 = *(v0 + 752);
    v38 = *(v0 + 728);
    v39 = (*(v0 + 280) + *(v0 + 840));
    v40 = sub_21CB81404();
    v42 = v41;
    sub_21CB80E24();
    v43 = (v37 + v38[5]);
    *v43 = v40;
    v43[1] = v42;
    v44 = v38[6];
    *(v0 + 1228) = v44;
    v436 = v44;
    *(v37 + v44) = 0;
    v45 = v38[7];
    *(v0 + 1232) = v45;
    v46 = (v37 + v45);
    *v46 = 0;
    v46[1] = 0;
    v396 = v46;
    v47 = v38[8];
    *(v0 + 1236) = v47;
    v438 = v37;
    v48 = (v37 + v47);
    *v48 = 0;
    v48[1] = 0;
    v395 = v48;
    v50 = sub_21C9F8508();
    v51 = v49;
    v52 = v39[1];
    if (v52 && (*v39 == v50 && v52 == v49 || (sub_21CB86344() & 1) != 0))
    {
      v53 = (*(v0 + 280) + *(v0 + 840));
      *v53 = v50;
      v53[1] = v51;
    }

    else
    {
      v54 = *(v0 + 280);
      swift_getKeyPath(byte_21CBBB7D0);
      v55 = swift_task_alloc();
      v55[2] = v54;
      v55[3] = v50;
      v55[4] = v51;
      *(v0 + 192) = v54;
      sub_21CB810C4();
    }

    *(v0 + 856) = v34;
    v399 = *(*(v0 + 312) + 56);
    v399(*(v0 + 720), 1, 1, *(v0 + 304));
    v56 = sub_21CB813D4();
    v57 = v56;
    v444 = *(v56 + 16);
    if (!v444)
    {

      v417 = 0;
      v414 = 0;
      v410 = 0;
      v415 = 0;
      v416 = 0;
      v10 = 0;
      v420 = 0;
      v403 = 0;
      v400 = 0;
      v446 = 0;
      v450 = 0;
      v8 = 0;
      v401 = 0;
      v398 = 0;
      v411 = 0xF000000000000000;
      v412 = 0xF000000000000000;
      v419 = 0xF000000000000000;
      v427 = MEMORY[0x277D84F90];
      goto LABEL_130;
    }

    v417 = 0;
    v414 = 0;
    v410 = 0;
    v415 = 0;
    v416 = 0;
    v10 = 0;
    v420 = 0;
    v403 = 0;
    v400 = 0;
    v421 = 0;
    v402 = 0;
    v418 = 0;
    v58 = 0;
    v8 = 0;
    v401 = 0;
    v397 = 0;
    v393 = 0;
    v394 = 0;
    v59 = *(*(v0 + 576) + 80);
    v423 = v56 + ((v59 + 32) & ~v59);
    v411 = 0xF000000000000000;
    v412 = 0xF000000000000000;
    v419 = 0xF000000000000000;
    v427 = MEMORY[0x277D84F90];
    v440 = v56;
    while (1)
    {
      v429 = v10;
      v60 = *(v57 + 16);
      if (v58 >= v60)
      {
LABEL_224:
        __break(1u);
        goto LABEL_225;
      }

      v61 = v8;
      v62 = *(v0 + 1156);
      v63 = *(v0 + 1152);
      v57 = *(v0 + 584);
      v64 = *(v0 + 576);
      v65 = *(v0 + 568);
      v66 = v64[9];
      v67 = v64[2];
      v449 = v58 + 1;
      v404 = v58;
      v67(v57, v423 + v66 * v58, v65);
      v68 = v64[11];
      v69 = v68(v57, v65);
      if (v69 == v63 || v69 == v62)
      {
        goto LABEL_38;
      }

      if (v69 == *(v0 + 1160))
      {
        v8 = v61;
LABEL_76:
        v81 = *(v0 + 584);
        v82 = *(v453 + 576);
        v83 = *(v453 + 568);
        v84 = *(v453 + 560);
        v85 = *(v453 + 552);
        v86 = *(v453 + 544);
        v87 = *(v453 + 536);
        v88 = *(v453 + 368);
        v89 = *(v453 + 360);

        (*(v82 + 96))(v81, v83);
        v0 = v453;
        (*(v85 + 32))(v84, v81, v86);
        sub_21CB81464();
        v90 = *(v88 + 48);
        v91 = v90(v87, 1, v89);
        v92 = *(v453 + 536);
        if (v91 == 1)
        {
          sub_21C6EA794(*(v453 + 536), &qword_27CDF47B8, &qword_21CBBB858);
          v402 = 0;
          v418 = 0;
        }

        else
        {
          v93 = *(v453 + 368);
          v94 = *(v453 + 360);
          v402 = sub_21CB81934();
          v418 = v95;
          (*(v93 + 8))(v92, v94);
          v0 = v453;
        }

        v10 = v429;
        v96 = *(v0 + 528);
        v97 = *(v0 + 360);
        sub_21CB81454();
        v98 = v90(v96, 1, v97);
        v99 = *(v0 + 528);
        if (v98 == 1)
        {
          sub_21C6EA794(*(v0 + 528), &qword_27CDF47B8, &qword_21CBBB858);
          v421 = 0;
        }

        else
        {
          v100 = *(v453 + 368);
          v101 = *(v453 + 360);
          sub_21CB81934();
          v421 = v102;
          (*(v100 + 8))(v99, v101);
          v0 = v453;
        }

        v103 = *(v0 + 520);
        sub_21CB813F4();
        v104 = sub_21CB81964();
        v105 = *(v104 - 8);
        v106 = (*(v105 + 48))(v103, 1, v104);
        v107 = *(v0 + 520);
        if (v106 == 1)
        {
          sub_21C6EA794(*(v0 + 520), &qword_27CDF47B0, &qword_21CBBB850);
          v427 = MEMORY[0x277D84F90];
        }

        else
        {
          v427 = sub_21CB81954();
          (*(v105 + 8))(v107, v104);
        }

        v57 = v440;
        (*(*(v0 + 552) + 8))(*(v0 + 560), *(v0 + 544));
        goto LABEL_93;
      }

      if ((vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v69), *v434))) & 1) != 0 || v69 == *(v0 + 1180) || v69 == *(v0 + 1184))
      {
        goto LABEL_38;
      }

      v8 = v61;
      if (v69 == *(v0 + 1188))
      {
LABEL_87:
        v10 = v429;
        v108 = *(v0 + 584);
        v109 = *(v0 + 576);
        v110 = *(v0 + 568);
        v111 = *(v0 + 400);
        v112 = *(v453 + 392);
        v113 = *(v453 + 384);
        (*(v109 + 96))(v108, v110);
        (*(v112 + 32))(v111, v108, v113);
        v0 = v453;
        v114 = *(v453 + 392);
        v115 = *(v453 + 384);
        if (v403)
        {
          (*(v114 + 8))(*(v453 + 400), v115);
        }

        else
        {
          v131 = *(v453 + 376);
          v132 = *(v453 + 368);
          v133 = *(v453 + 360);
          v134 = *(v453 + 400);
          sub_21CB81484();
          sub_21CB81934();
          v403 = v135;
          (*(v132 + 8))(v131, v133);
          v0 = v453;
          (*(v114 + 8))(v134, v115);
        }

        goto LABEL_92;
      }

      if (v69 == *(v0 + 1192))
      {
LABEL_90:
        v116 = *(v0 + 584);
        v117 = *(v453 + 576);
        v118 = *(v453 + 568);
        v119 = *(v453 + 512);
        v120 = *(v453 + 504);
        v121 = *(v453 + 496);

        (*(v117 + 96))(v116, v118);
        v0 = v453;
        (*(v120 + 32))(v119, v116, v121);
        v430 = sub_21CB81534();
        v405 = v122;
        sub_21C7902FC(v420, v419);
        v123 = sub_21CB81554();
        v125 = v124;
        sub_21C7902FC(v416, v411);
        v415 = sub_21CB81564();
        v10 = v126;
        v414 = sub_21CB81544();
        v410 = v127;
        v128 = sub_21CB81524();
        v130 = v129;
        sub_21C7902FC(v417, v412);
        (*(v120 + 8))(v119, v121);
        v417 = v128;
        v412 = v130;
        v416 = v123;
        v411 = v125;
        v420 = v430;
        v419 = v405;
        goto LABEL_92;
      }

      if (v69 == *(v0 + 1196) || v69 == *(v0 + 1200) || v69 == *(v0 + 1204))
      {
        goto LABEL_38;
      }

      if (v69 == *(v0 + 1208))
      {
        v8 = v61;
        goto LABEL_96;
      }

      if (v69 == *(v0 + 1212))
      {
LABEL_38:
        v71 = *(*(v0 + 576) + 8);
        v71(*(v0 + 584), *(v0 + 568));
        *(v438 + v436) = 4;
      }

      else
      {
        v157 = *(v0 + 584);
        v158 = *(v0 + 576);
        v159 = *(v0 + 568);
        *(v438 + v436) = 4;
        v71 = *(v158 + 8);
        v71(v157, v159);
      }

      if (v449 == v444)
      {
        break;
      }

      v60 = *(v440 + 16);
      if (v449 >= v60)
      {
        goto LABEL_224;
      }

      v57 = v423 + v66 * v449;
      v72 = v404 + 2;
      while (1)
      {
        v449 = v72;
        v73 = *(v0 + 1156);
        v74 = *(v0 + 1152);
        v75 = *(v0 + 584);
        v76 = *(v0 + 568);
        v67(v75, v57, v76);
        v77 = v68(v75, v76);
        v0 = v453;
        if (v77 == v74 || v77 == v73)
        {
          goto LABEL_47;
        }

        if (v77 == *(v453 + 1160))
        {
          v394 = 4;
          v393 = 4;
          v397 = 4;
          v401 = 4;
          v8 = 4;
          goto LABEL_76;
        }

        if ((vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v77), *v434))) & 1) != 0 || v77 == *(v453 + 1180) || v77 == *(v453 + 1184))
        {
          goto LABEL_47;
        }

        if (v77 == *(v453 + 1188))
        {
          v394 = 4;
          v393 = 4;
          v397 = 4;
          v401 = 4;
          v8 = 4;
          goto LABEL_87;
        }

        if (v77 == *(v453 + 1192))
        {
          v394 = 4;
          v393 = 4;
          v397 = 4;
          v401 = 4;
          v8 = 4;
          goto LABEL_90;
        }

        if (v77 == *(v453 + 1196) || v77 == *(v453 + 1200) || v77 == *(v453 + 1204))
        {
          goto LABEL_47;
        }

        if (v77 == *(v453 + 1208))
        {
          break;
        }

        if (v77 != *(v453 + 1212))
        {
          v79 = *(v453 + 584);
          v80 = *(v453 + 568);
          *(v438 + v436) = 4;
          v71(v79, v80);
          goto LABEL_48;
        }

LABEL_47:
        v71(*(v453 + 584), *(v453 + 568));
        *(v438 + v436) = 4;
LABEL_48:
        if (v444 == v449)
        {
          goto LABEL_124;
        }

        v60 = *(v440 + 16);
        v57 += v66;
        v72 = v449 + 1;
        if (v449 >= v60)
        {
          goto LABEL_224;
        }
      }

      v394 = 4;
      v393 = 4;
      v397 = 4;
      v401 = 4;
      v8 = 4;
LABEL_96:
      v136 = *(v0 + 720);
      v137 = *(v0 + 712);
      v138 = *(v0 + 584);
      v139 = *(v0 + 576);
      v140 = *(v0 + 568);
      v141 = *(v0 + 488);
      v142 = *(v453 + 480);
      v143 = *(v453 + 472);
      v144 = *(v453 + 312);
      v145 = *(v453 + 304);
      (*(v139 + 96))(v138, v140);
      (*(v142 + 32))(v141, v138, v143);
      v0 = v453;
      sub_21C6EDBAC(v136, v137, &qword_27CDEC300, &qword_21CBA3ED0);
      v146 = *(v144 + 48);
      v147 = v146(v137, 1, v145);
      v148 = *(v453 + 712);
      v10 = v429;
      if (v147 == 1)
      {
        v391 = v146;

        sub_21C6EA794(v148, &qword_27CDEC300, &qword_21CBA3ED0);
        v149 = v418;
        if (!v418)
        {
          v402 = sub_21CB814E4();
          v149 = v150;
        }

        v151 = *(v453 + 1216);
        v153 = *(v453 + 456);
        v152 = *(v453 + 464);
        v154 = *(v453 + 448);
        sub_21CB814B4();
        v400 = v155;
        sub_21CB81504();
        v156 = (*(v153 + 88))(v152, v154);
        v418 = v149;
        if (v156 == v151)
        {
          v387 = 0;
          v0 = v453;
        }

        else
        {
          v0 = v453;
          if (v156 == *(v453 + 1220))
          {
            v387 = 1;
          }

          else if (v156 == *(v453 + 1224))
          {
            v387 = 2;
          }

          else
          {
            (*(*(v453 + 456) + 8))(*(v453 + 464), *(v453 + 448));
            v387 = 0;
          }
        }

        v160 = *(v0 + 704);
        v389 = *(v0 + 304);
        v161 = sub_21CB814D4();
        v163 = v162;
        sub_21CB80D74();
        v386 = sub_21CB814C4();
        v385 = sub_21CB814A4();
        sub_21CB814B4();
        v165 = v164;
        sub_21CB814E4();
        v167 = v166;
        v399(v160, 1, 1, v389);
        v388 = v163;
        v390 = v161;
        v168 = sub_21CB80C64();
        v169 = sub_21CB80D24();
        if (v165)
        {
          v384 = sub_21CB85584();

          if (v167)
          {
            goto LABEL_111;
          }

LABEL_113:
          v170 = 0;
        }

        else
        {
          v384 = 0;
          if (!v167)
          {
            goto LABEL_113;
          }

LABEL_111:
          v170 = sub_21CB85584();
        }

        v171 = *(v0 + 704);
        v172 = *(v0 + 304);
        v173 = v168;
        if (v391(v171, 1, v172) == 1)
        {
          v174 = 0;
        }

        else
        {
          v175 = *(v453 + 312);
          v174 = sub_21CB80B74();
          (*(v175 + 8))(v171, v172);
          v0 = v453;
        }

        v406 = *(v0 + 440);
        v176 = *(v0 + 416);
        v392 = *(v0 + 408);
        v177 = [objc_allocWithZone(MEMORY[0x277D49B78]) initWithKeyData:v173 initialDate:v169 codeGenerationPeriod:v386 numberOfDigits:v385 algorithm:v387 issuer:v384 accountName:v170 originalURL:v174];

        sub_21C7A34C0(v390, v388);
        (*(v176 + 8))(v406, v392);
        if (v177)
        {
          v178 = [v177 exportableURL];
          if (v178)
          {
            v179 = v178;
            sub_21CB80B94();

            v180 = 0;
            v177 = v179;
          }

          else
          {
            v180 = 1;
          }

          v184 = *(v0 + 720);
          v407 = *(v0 + 696);
          v185 = *(v0 + 688);
          v186 = *(v0 + 488);
          v187 = *(v453 + 480);
          v188 = *(v453 + 472);
          v189 = *(v453 + 304);

          (*(v187 + 8))(v186, v188);
          v0 = v453;
          sub_21C6EA794(v184, &qword_27CDEC300, &qword_21CBA3ED0);
          v399(v185, v180, 1, v189);
          sub_21C79C3F4(v185, v407);
        }

        else
        {
          v181 = *(v0 + 720);
          v182 = *(v0 + 696);
          v183 = *(v0 + 304);
          (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
          sub_21C6EA794(v181, &qword_27CDEC300, &qword_21CBA3ED0);
          v399(v182, 1, 1, v183);
        }

        sub_21C79C3F4(*(v0 + 696), *(v0 + 720));
      }

      else
      {
        (*(*(v453 + 480) + 8))(*(v453 + 488), *(v453 + 472));
        sub_21C6EA794(v148, &qword_27CDEC300, &qword_21CBA3ED0);
      }

LABEL_92:
      v57 = v440;
LABEL_93:
      v58 = v449;
      if (v449 == v444)
      {

        v283 = v393 | 8;
        v284 = v394 | 1;
        v285 = v397;
        goto LABEL_125;
      }
    }

LABEL_124:
    v10 = v429;

    v8 = 4;
    v401 = 4;
    v285 = 4;
    v283 = 12;
    v284 = 5;
LABEL_125:
    *(v0 + 936) = v419;
    *(v0 + 928) = v420;
    *(v0 + 920) = v411;
    *(v0 + 912) = v416;
    *(v0 + 904) = v10;
    *(v0 + 896) = v415;
    *(v0 + 888) = v410;
    *(v0 + 880) = v414;
    *(v0 + 872) = v412;
    *(v0 + 864) = v417;
    if (v421)
    {
      break;
    }

    v398 = v285;
    v446 = v402;
    v450 = v418;
LABEL_130:
    v191 = *(v0 + 624);
    v192 = *(v0 + 304);
    v193 = *(v0 + 312);
    sub_21C6EDBAC(*(v0 + 720), v191, &qword_27CDEC300, &qword_21CBA3ED0);
    v194 = *(v193 + 48);
    v195 = v194(v191, 1, v192);
    v196 = *(v0 + 624);
    if (v195 == 1)
    {

      sub_21C6EA794(v196, &qword_27CDEC300, &qword_21CBA3ED0);
      v7 = 0;
      v6 = 0;
      v5 = 0;
      v4 = 0;
    }

    else
    {
      v431 = v10;
      v197 = *(v0 + 616);
      v198 = *(v0 + 304);
      (*(*(v0 + 312) + 32))(*(v0 + 328), v196, v198);
      v199 = v399;
      v399(v197, 1, 1, v198);
      if (v400)
      {
        v200 = sub_21CB85584();

        v201 = [v200 safari_bestURLForUserTypedString];

        if (v201)
        {
          sub_21CB80B94();

          v202 = 0;
        }

        else
        {
          v202 = 1;
        }

        v231 = *(v0 + 616);
        v232 = *(v0 + 608);
        v233 = *(v0 + 304);
        sub_21C6EA794(v231, &qword_27CDEC300, &qword_21CBA3ED0);
        v199 = v399;
        v399(v232, v202, 1, v233);
        sub_21C79C3F4(v232, v231);
      }

      v425 = v194;
      v234 = *(v0 + 592);
      v235 = *(v0 + 328);
      v236 = *(v0 + 304);
      v237 = *(v0 + 312);
      sub_21C6EDBAC(*(v0 + 616), *(v0 + 600), &qword_27CDEC300, &qword_21CBA3ED0);
      v238 = *(v237 + 16);
      v238(v234, v235, v236);
      v199(v234, 0, 1, v236);

      sub_21CB81404();
      v409 = v238;
      if (v450)
      {
        v239 = sub_21CB85584();
      }

      else
      {
        v239 = 0;
      }

      v240 = v8;
      v241 = *(v0 + 600);
      v242 = *(v0 + 304);
      v243 = sub_21CB85584();
      if (v425(v241, 1, v242) == 1)
      {
        v442 = 0;
      }

      else
      {
        v244 = *(v0 + 600);
        v245 = *(v453 + 312);
        v246 = *(v453 + 304);
        v442 = sub_21CB80B74();
        (*(v245 + 8))(v244, v246);
        v0 = v453;
      }

      v247 = *(v0 + 592);
      v248 = *(v0 + 304);
      if (v425(v247, 1, v248) == 1)
      {
        v249 = 0;
      }

      else
      {
        v250 = *(v453 + 312);
        v249 = sub_21CB80B74();
        (*(v250 + 8))(v247, v248);
        v0 = v453;
      }

      v8 = v240;
      v251 = sub_21CB85584();

      if (v403)
      {
        v252 = sub_21CB85584();
      }

      else
      {
        v252 = 0;
      }

      v253 = *(v0 + 808);
      v254 = *(v0 + 280);
      v255 = [objc_allocWithZone(MEMORY[0x277D49FE0]) initWithUser:v239 password:v243 url:v442 otpAuthURL:v249 title:v251 notesEntry:v252 lineNumberFromSourceFile:0];

      v256 = [objc_opt_self() importCredential:v255 savedAccountStore:*(v254 + v253)];
      if (v256 == 2)
      {
        v262 = *(v453 + 616);
        v263 = *(v453 + 328);
        v264 = *(v453 + 304);
        v265 = *(v453 + 312);

        sub_21C6EA794(v262, &qword_27CDEC300, &qword_21CBA3ED0);
        (*(v265 + 8))(v263, v264);
        v0 = v453;
        v7 = 0;
        v6 = 0;
        v5 = 0;
        v4 = 0;
        v10 = v431;
      }

      else
      {
        v10 = v431;
        if (v256 == 1)
        {
          v257 = v453;
          if (qword_27CDEA3F0 != -1)
          {
            swift_once();
          }

          v258 = sub_21CB81C84();
          __swift_project_value_buffer(v258, qword_27CE18580);
          v259 = sub_21CB81C64();
          v260 = sub_21CB85AF4();
          if (os_log_type_enabled(v259, v260))
          {
            v261 = swift_slowAlloc();
            *v261 = 0;
            _os_log_impl(&dword_21C6E5000, v259, v260, "Error while importing password synthesized for TOTP generator; the error was a conflict", v261, 2u);
            MEMORY[0x21CF16D90](v261, -1, -1);
          }

          v8 = v398 | 1;
        }

        else
        {
          v257 = v453;
          if (qword_27CDEA3F0 != -1)
          {
            swift_once();
          }

          v266 = sub_21CB81C84();
          __swift_project_value_buffer(v266, qword_27CE18580);
          v267 = sub_21CB81C64();
          v268 = sub_21CB85AF4();
          if (os_log_type_enabled(v267, v268))
          {
            v269 = swift_slowAlloc();
            *v269 = 0;
            _os_log_impl(&dword_21C6E5000, v267, v268, "Error while importing password synthesized for TOTP generator; the error was unknown", v269, 2u);
            MEMORY[0x21CF16D90](v269, -1, -1);
          }

          v8 = v401 | 8;
        }

        *(v438 + v436) = v8;
        v270 = v257[77];
        v271 = v257[41];
        v272 = v257;
        if (*(v427 + 16))
        {
          v275 = v257 + 39;
          v274 = v257[39];
          v273 = v275[1];
          v276 = v272[38];
          v409(v273, v427 + ((*(v274 + 80) + 32) & ~*(v274 + 80)), v276);

          v277 = sub_21CB80BA4();
          v278 = v255;
          v5 = v277;
          v4 = v279;

          sub_21C6EA794(v270, &qword_27CDEC300, &qword_21CBA3ED0);
          v280 = *(v274 + 8);
          v280(v271, v276);
          v280(v273, v276);
        }

        else
        {
          v281 = v257[39];
          v282 = v272[38];

          sub_21C6EA794(v270, &qword_27CDEC300, &qword_21CBA3ED0);
          (*(v281 + 8))(v271, v282);
          v5 = 0;
          v4 = 0;
        }

        *v396 = v5;
        v396[1] = v4;
        v7 = v446;
        v6 = v450;
        *v395 = v446;
        v395[1] = v450;
        v0 = v453;
      }
    }

    v11 = v410;
    v9 = v411;
    v12 = v412;
  }

  v408 = v283;

  v424 = *(v427 + 16);
  v441 = v8;
  v445 = v284;
  if (v424)
  {
    (*(*(v0 + 312) + 16))(*(v0 + 680), v427 + ((*(*(v0 + 312) + 80) + 32) & ~*(*(v0 + 312) + 80)), *(v0 + 304));
    v190 = 0;
  }

  else
  {
    v190 = 1;
  }

  v203 = *(v0 + 680);
  v204 = *(v0 + 672);
  v205 = *(v0 + 304);
  v206 = *(v0 + 312);
  v399(v203, v190, 1, v205);
  sub_21C6EDBAC(v203, v204, &qword_27CDEC300, &qword_21CBA3ED0);
  v207 = *(v206 + 48);
  LODWORD(v203) = v207(v204, 1, v205);
  sub_21C6EA794(v204, &qword_27CDEC300, &qword_21CBA3ED0);
  if (v203 == 1)
  {
LABEL_177:
    v289 = *(v0 + 720);
    v290 = *(v0 + 632);
    sub_21C6EDBAC(*(v0 + 680), *(v0 + 640), &qword_27CDEC300, &qword_21CBA3ED0);
    sub_21C6EDBAC(v289, v290, &qword_27CDEC300, &qword_21CBA3ED0);
    v291 = sub_21CB81404();
    v293 = v292;

    v294 = HIBYTE(v293) & 0xF;
    if ((v293 & 0x2000000000000000) == 0)
    {
      v294 = v291 & 0xFFFFFFFFFFFFLL;
    }

    if (v294)
    {
      sub_21CB81404();
      v296 = v295;
      if (v418)
      {
LABEL_181:

        v297 = sub_21CB85584();

        goto LABEL_184;
      }
    }

    else
    {
      v296 = 0;
      if (v418)
      {
        goto LABEL_181;
      }
    }

    v297 = 0;
LABEL_184:
    v432 = v10;
    v298 = *(v0 + 640);
    v299 = *(v0 + 304);
    v300 = sub_21CB85584();
    if (v207(v298, 1, v299) == 1)
    {
      v301 = 0;
    }

    else
    {
      v302 = *(v0 + 640);
      v303 = *(v453 + 312);
      v304 = *(v453 + 304);
      v301 = sub_21CB80B74();
      (*(v303 + 8))(v302, v304);
      v0 = v453;
    }

    v305 = *(v0 + 632);
    v306 = *(v0 + 304);
    if (v207(v305, 1, v306) == 1)
    {
      v307 = 0;
      if (v296)
      {
        goto LABEL_189;
      }
    }

    else
    {
      v310 = *(v453 + 312);
      v307 = sub_21CB80B74();
      (*(v310 + 8))(v305, v306);
      v0 = v453;
      if (v296)
      {
LABEL_189:
        v308 = sub_21CB85584();

        if (v403)
        {
LABEL_190:
          v309 = sub_21CB85584();

          goto LABEL_194;
        }

LABEL_193:
        v309 = 0;
LABEL_194:
        v311 = v0;
        v312 = *(v0 + 808);
        v313 = *(v311 + 280);
        v314 = [objc_allocWithZone(MEMORY[0x277D49FE0]) initWithUser:v297 password:v300 url:v301 otpAuthURL:v307 title:v308 notesEntry:v309 lineNumberFromSourceFile:0];
        *(v311 + 944) = v314;

        v315 = objc_opt_self();
        v316 = *(v313 + v312);
        v317 = [v315 importCredential:v314 savedAccountStore:v316];
        if (v317 == 2)
        {
          v324 = 0;
          v325 = 0;
          v5 = 0;
          v4 = 0;
          v318 = v427;
          v8 = v441;
LABEL_212:
          *(v453 + 984) = v4;
          *(v453 + 976) = v5;
          *(v453 + 968) = v325;
          *(v453 + 960) = v324;
          *(v453 + 952) = v8;
          v447 = v324;
          v451 = v325;
          if (!v424)
          {
            v336 = 0;
            if (v418)
            {
              goto LABEL_215;
            }

            goto LABEL_217;
          }

          if (*(v318 + 16))
          {
            v333 = *(v453 + 344);
            v335 = *(v453 + 304);
            v334 = *(v453 + 312);
            (*(v334 + 16))(v333, v318 + ((*(v334 + 80) + 32) & ~*(v334 + 80)), v335);
            v336 = sub_21CB80B74();
            (*(v334 + 8))(v333, v335);
            if (v418)
            {
LABEL_215:
              v337 = sub_21CB85584();

              goto LABEL_218;
            }

LABEL_217:
            v337 = 0;
LABEL_218:
            v0 = v453;
            v338 = sub_21CB85584();

            v339 = [v316 savedAccountForURL:v336 user:v337 password:v338];
            *(v453 + 992) = v339;

            if (v339)
            {
              v340 = *(v427 + 16);
              v211 = &qword_27CDEC300;
              v212 = &qword_21CBA3ED0;
              if (v340 > 1)
              {
                if (v424)
                {
                  if (v340 >= v424)
                  {
                    v357 = v424 - 1;
                    if (v424 != 1)
                    {
                      v358 = *(v453 + 312);
                      v452 = *(v358 + 16);
                      v454 = *(v358 + 72);
                      v359 = v427 + v454 + ((*(v358 + 80) + 32) & ~*(v358 + 80));
                      v360 = MEMORY[0x277D84F90];
                      do
                      {
                        v452(*(v0 + 336), v359, *(v0 + 304));
                        v361 = sub_21CB80BA4();
                        if (!v362)
                        {
                          v361 = sub_21CB80B64();
                        }

                        v363 = v361;
                        v364 = v362;
                        (*(*(v0 + 312) + 8))(*(v0 + 336), *(v0 + 304));
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v360 = sub_21CA4F2EC(0, *(v360 + 2) + 1, 1, v360);
                        }

                        v366 = *(v360 + 2);
                        v365 = *(v360 + 3);
                        if (v366 >= v365 >> 1)
                        {
                          v360 = sub_21CA4F2EC((v365 > 1), v366 + 1, 1, v360);
                        }

                        *(v360 + 2) = v366 + 1;
                        v367 = &v360[16 * v366];
                        *(v367 + 4) = v363;
                        *(v367 + 5) = v364;
                        v359 += v454;
                        --v357;
                      }

                      while (v357);
                    }

                    v368 = sub_21CB85814();
                    *(v0 + 1000) = v368;

                    *(v0 + 16) = v0;
                    *(v0 + 24) = sub_21C9EC594;
                    v369 = swift_continuation_init();
                    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
                    *(v0 + 80) = MEMORY[0x277D85DD0];
                    *(v0 + 88) = 1107296256;
                    *(v0 + 96) = sub_21CAB1570;
                    *(v0 + 104) = &block_descriptor_24;
                    *(v0 + 112) = v369;
                    [v316 saveAdditionalSites:v368 forSavedAccount:v339 completionHandler:v0 + 80];

                    return MEMORY[0x282200938](v0 + 16);
                  }
                }

                else
                {
                  __break(1u);
                }

                __break(1u);
LABEL_269:
                __break(1u);
                goto LABEL_270;
              }

              sub_21C6EA794(*(v453 + 680), &qword_27CDEC300, &qword_21CBA3ED0);
            }

            else
            {
              sub_21C6EA794(*(v453 + 680), &qword_27CDEC300, &qword_21CBA3ED0);
            }

            v10 = v432;
            v11 = v410;
            v9 = v411;
            v12 = v412;
            v7 = v447;
            v6 = v451;
            goto LABEL_4;
          }

          goto LABEL_264;
        }

        v318 = v427;
        if (v317 == 1)
        {
          v319 = v453;
          if (qword_27CDEA3F0 != -1)
          {
            swift_once();
          }

          v320 = sub_21CB81C84();
          __swift_project_value_buffer(v320, qword_27CE18580);
          v321 = sub_21CB81C64();
          v322 = sub_21CB85AF4();
          v8 = v445;
          if (!os_log_type_enabled(v321, v322))
          {
            goto LABEL_207;
          }

          v323 = swift_slowAlloc();
          *v323 = 0;
          _os_log_impl(&dword_21C6E5000, v321, v322, "Error while importing password; the error was a conflict", v323, 2u);
        }

        else
        {
          v319 = v453;
          if (qword_27CDEA3F0 != -1)
          {
            swift_once();
          }

          v326 = sub_21CB81C84();
          __swift_project_value_buffer(v326, qword_27CE18580);
          v321 = sub_21CB81C64();
          v327 = sub_21CB85AF4();
          if (!os_log_type_enabled(v321, v327))
          {
            v8 = v408;
            goto LABEL_207;
          }

          v323 = swift_slowAlloc();
          *v323 = 0;
          _os_log_impl(&dword_21C6E5000, v321, v327, "Error while importing password; the error was unknown", v323, 2u);
          v8 = v408;
        }

        MEMORY[0x21CF16D90](v323, -1, -1);
LABEL_207:

        *(v438 + v436) = v8;
        if (v424)
        {
          if (!*(v427 + 16))
          {
LABEL_265:
            __break(1u);
LABEL_266:
            swift_once();
LABEL_230:
            v0 = v453;
            v347 = sub_21CB81C84();
            __swift_project_value_buffer(v347, qword_27CE18580);
            swift_retain_n();
            v348 = sub_21CB81C64();
            v349 = sub_21CB85AD4();
            if (os_log_type_enabled(v348, v349))
            {
              v350 = *(v453 + 832);
              v351 = *(v453 + 824);
              v352 = *(v453 + 280);
              v353 = swift_slowAlloc();
              *v353 = 134218496;
              swift_getKeyPath(byte_21CBBB4A0);
              *(v453 + 256) = v352;
              sub_21CB810D4();

              swift_beginAccess();
              *(v353 + 4) = *(*(v352 + v351) + 16);

              *(v353 + 12) = 2048;
              swift_getKeyPath(byte_21CBBB478);
              *(v453 + 264) = v352;
              sub_21CB810D4();

              *(v353 + 14) = *(v352 + v350);

              *(v353 + 22) = 2048;
              v0 = v453;
              v354 = *(sub_21CB818B4() + 16);

              *(v353 + 24) = v354;

              _os_log_impl(&dword_21C6E5000, v348, v349, "Import completed. Failed: %ld | Completed: %ld | Total: %ld", v353, 0x20u);
              MEMORY[0x21CF16D90](v353, -1, -1);
            }

            else
            {
            }

            goto LABEL_234;
          }

          v328 = *(v319 + 352);
          v329 = v319;
          v330 = *(v319 + 312);
          v331 = *(v329 + 304);
          (*(v330 + 16))(v328, v427 + ((*(v330 + 80) + 32) & ~*(v330 + 80)), v331);
          v5 = sub_21CB80BA4();
          v4 = v332;
          (*(v330 + 8))(v328, v331);
        }

        else
        {
          v5 = 0;
          v4 = 0;
        }

        *v396 = v5;
        v396[1] = v4;
        v324 = v402;
        *v395 = v402;
        v395[1] = v418;

        goto LABEL_212;
      }
    }

    v308 = 0;
    if (v403)
    {
      goto LABEL_190;
    }

    goto LABEL_193;
  }

  v208 = *(v0 + 664);
  v209 = *(v0 + 304);
  sub_21C6EDBAC(*(v0 + 680), v208, &qword_27CDEC300, &qword_21CBA3ED0);
  v210 = v207(v208, 1, v209);
  if (v210 == 1)
  {
    goto LABEL_269;
  }

  v218 = *(v0 + 664);
  v219 = *(v0 + 304);
  v220 = *(v0 + 312);
  sub_21CB80BC4();
  v222 = v221;
  v223 = *(v220 + 8);
  v223(v218, v219);
  if (v222)
  {

    goto LABEL_177;
  }

  v224 = *(v0 + 656);
  v225 = *(v0 + 304);
  sub_21C6EDBAC(*(v0 + 680), v224, &qword_27CDEC300, &qword_21CBA3ED0);
  v210 = v207(v224, 1, v225);
  if (v210 != 1)
  {
    v226 = *(v0 + 656);
    v227 = *(v0 + 304);
    sub_21CB80B64();
    v223(v226, v227);
    v228 = sub_21CB85584();

    v229 = [v228 safari_bestURLForUserTypedString];

    if (v229)
    {
      sub_21CB80B94();

      v230 = 0;
    }

    else
    {
      v230 = 1;
    }

    v286 = *(v0 + 680);
    v287 = *(v0 + 648);
    v288 = *(v0 + 304);
    sub_21C6EA794(v286, &qword_27CDEC300, &qword_21CBA3ED0);
    v399(v287, v230, 1, v288);
    sub_21C79C3F4(v287, v286);
    goto LABEL_177;
  }

LABEL_270:
  __break(1u);
  return MEMORY[0x2821AB028](v210, v211, v212, v213, v214, v215, v216, v217);
}

uint64_t sub_21C9EF6A0(uint64_t a1)
{
  v2 = *(*v1 + 432);
  v3 = *(*v1 + 424);
  v4 = *(*v1 + 416);
  v5 = *(*v1 + 408);
  *(*v1 + 1144) = a1;

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);

  return MEMORY[0x2822009F8](sub_21C9EF84C, 0, 0);
}

uint64_t sub_21C9EF84C()
{
  v1 = *(v0 + 1144);
  if (v1)
  {

    v2 = sub_21CB81404();
    v4 = v3;

    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v2 & 0xFFFFFFFFFFFFLL;
    }

    v6 = *(v0 + 1088);
    v7 = *(v0 + 1080);
    v8 = *(v0 + 1072);
    v9 = *(v0 + 1064);
    v10 = *(v0 + 1024);
    v11 = *(v0 + 1016);
    if (v5)
    {
      sub_21CB81404();
      v12 = sub_21CB85584();

      [v1 setCustomTitle:v12 performSidecarUpdate:1];
      sub_21C7902FC(v7, v6);
      sub_21C7902FC(v9, v8);

      sub_21C7902FC(v11, v10);
    }

    else
    {
      sub_21C7902FC(*(v0 + 1080), *(v0 + 1088));
      sub_21C7902FC(v9, v8);

      sub_21C7902FC(v11, v10);
    }

    if (!*(v0 + 1008))
    {
      goto LABEL_223;
    }
  }

  else
  {
    if (qword_27CDEA3F0 != -1)
    {
      swift_once();
    }

    v13 = sub_21CB81C84();
    __swift_project_value_buffer(v13, qword_27CE18580);
    v14 = sub_21CB81C64();
    v15 = sub_21CB85AF4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21C6E5000, v14, v15, "Error while importing passkey", v16, 2u);
      MEMORY[0x21CF16D90](v16, -1, -1);
    }

    v17 = *(v0 + 1088);
    v18 = *(v0 + 1080);
    v19 = *(v0 + 1072);
    v20 = *(v0 + 1064);
    v21 = *(v0 + 1024);
    v22 = *(v0 + 1016);
    v23 = v0;
    v24 = *(v0 + 1008);
    sub_21C7902FC(v18, v17);
    sub_21C7902FC(v20, v19);
    sub_21C7902FC(v22, v21);

    if ((v24 & 2) == 0)
    {
      *(*(v23 + 752) + *(v23 + 1228)) = *(v23 + 1008) | 2;
    }

    v25 = (v23 + 1040);
    v0 = v23;
    if (*(v23 + 1120))
    {

      v26 = 1112;
      v25 = (v23 + 1120);
    }

    else
    {
      v26 = 1032;
    }

    v27 = *v25;
    v28 = *(v23 + 1104);
    v29 = (*(v23 + 752) + *(v23 + 1232));
    *v29 = *(v23 + v26);
    v29[1] = v27;
    v30 = (v23 + 1056);
    if (v28)
    {

      v31 = 1096;
      v30 = (v23 + 1104);
    }

    else
    {
      v31 = 1048;
    }

    v32 = *v30;
    v33 = (*(v23 + 752) + *(v23 + 1236));
    *v33 = *(v23 + v31);
    v33[1] = v32;
  }

LABEL_219:
  v354 = *(v0 + 824);
  v355 = *(v477 + 280);
  sub_21C9F312C(*(v477 + 752), *(v477 + 744));
  swift_getKeyPath(byte_21CBBB4A0);
  *(v477 + 200) = v355;
  sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  *(v477 + 208) = v355;
  swift_getKeyPath(byte_21CBBB4A0);
  sub_21CB810F4();

  swift_beginAccess();
  v356 = *(v355 + v354);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v355 + v354) = v356;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_271:
    v418 = *(v477 + 824);
    v419 = *(v477 + 280);
    v356 = sub_21CA4FB74(0, v356[2] + 1, 1, v356);
    *(v419 + v418) = v356;
  }

  v359 = v356[2];
  v358 = v356[3];
  if (v359 >= v358 >> 1)
  {
    v356 = sub_21CA4FB74((v358 > 1), v359 + 1, 1, v356);
  }

  v360 = *(v477 + 824);
  v361 = *(v477 + 744);
  v362 = *(v477 + 736);
  v363 = *(v477 + 280);
  v356[2] = v359 + 1;
  sub_21C9F3190(v361, v356 + ((*(v362 + 80) + 32) & ~*(v362 + 80)) + *(v362 + 72) * v359);
  *(v363 + v360) = v356;
  v0 = v477;
  swift_endAccess();
  *(v477 + 216) = v363;
  swift_getKeyPath(byte_21CBBB4A0);
  sub_21CB810E4();

  while (1)
  {
LABEL_223:
    v364 = *(v0 + 832);
    v365 = *(v0 + 816);
    v366 = *(v0 + 280);
    swift_getKeyPath(byte_21CBBB478);
    *(v0 + 224) = v366;
    sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
    sub_21CB810D4();

    *(v0 + 232) = v366;
    swift_getKeyPath(byte_21CBBB478);
    v356 = (v366 + v365);
    sub_21CB810F4();

    v367 = *(v366 + v364);
    v368 = __OFADD__(v367, 1);
    v369 = v367 + 1;
    if (v368)
    {
      __break(1u);
      goto LABEL_271;
    }

    v458 = *(v0 + 1080);
    v461 = *(v0 + 1088);
    v453 = *(v0 + 1072);
    v370 = *(v0 + 1064);
    v58 = *(v0 + 1024);
    v54 = *(v0 + 1016);
    v475 = *(v0 + 800);
    v463 = *(v0 + 776);
    v371 = *(v0 + 768);
    v462 = *(v0 + 760);
    v372 = *(v0 + 720);
    v373 = *(v0 + 280);
    v466 = *(v0 + 752);
    v470 = *(v0 + 848) + 1;
    *(v373 + *(v0 + 832)) = v369;
    *(v0 + 240) = v373;
    swift_getKeyPath(byte_21CBBB478);
    sub_21CB810E4();

    sub_21C7902FC(v54, v58);
    sub_21C7902FC(v370, v453);
    sub_21C7902FC(v458, v461);
    sub_21C6EA794(v372, &qword_27CDEC300, &qword_21CBA3ED0);
    (*(v371 + 8))(v463, v462);
    sub_21C9F31F4(v466);
    v374 = *(v0 + 856);
    if (v470 == v475)
    {
      break;
    }

    v375 = *(v0 + 848) + 1;
    *(v0 + 848) = v375;
    v376 = *(v0 + 792);
    if (v375 >= *(v376 + 16))
    {
      __break(1u);
      goto LABEL_227;
    }

    (*(*(v0 + 768) + 16))(*(v0 + 776), v376 + ((*(*(v0 + 768) + 80) + 32) & ~*(*(v0 + 768) + 80)) + *(*(v0 + 768) + 72) * v375, *(v0 + 760));
    if (sub_21CB85954())
    {
      (*(*(v0 + 768) + 8))(*(v0 + 776), *(v0 + 760));

      goto LABEL_242;
    }

    v34 = *(v0 + 752);
    v35 = *(v0 + 728);
    v36 = (*(v0 + 280) + *(v0 + 840));
    v37 = sub_21CB81404();
    v39 = v38;
    sub_21CB80E24();
    v40 = (v34 + v35[5]);
    *v40 = v37;
    v40[1] = v39;
    v41 = v35[6];
    *(v0 + 1228) = v41;
    v462 = v41;
    *(v34 + v41) = 0;
    v42 = v35[7];
    *(v0 + 1232) = v42;
    v43 = (v34 + v42);
    *v43 = 0;
    v43[1] = 0;
    v429 = v43;
    v44 = v35[8];
    *(v0 + 1236) = v44;
    v463 = v34;
    v45 = (v34 + v44);
    *v45 = 0;
    v45[1] = 0;
    v428 = v45;
    v47 = sub_21C9F8508();
    v48 = v46;
    v49 = v36[1];
    if (v49 && (*v36 == v47 && v49 == v46 || (sub_21CB86344() & 1) != 0))
    {
      v50 = (*(v0 + 280) + *(v0 + 840));
      *v50 = v47;
      v50[1] = v48;
    }

    else
    {
      v51 = *(v0 + 280);
      swift_getKeyPath(byte_21CBBB7D0);
      v52 = swift_task_alloc();
      v52[2] = v51;
      v52[3] = v47;
      v52[4] = v48;
      *(v0 + 192) = v51;
      sub_21CB810C4();
    }

    *(v0 + 856) = v374;
    v53 = *(v0 + 776);
    v54 = *(*(v0 + 312) + 56);
    v54(*(v0 + 720), 1, 1, *(v0 + 304));
    v55 = sub_21CB813D4();
    v467 = *(v55 + 16);
    if (!v467)
    {

      v445 = 0;
      v437 = 0;
      v438 = 0;
      v436 = 0;
      v442 = 0;
      v444 = 0;
      v447 = 0;
      v434 = 0;
      v431 = 0;
      v468 = 0;
      v473 = 0;
      v454 = 0;
      v432 = 0;
      v430 = 0;
      v58 = MEMORY[0x277D84F90];
      v440 = 0xF000000000000000;
      v439 = 0xF000000000000000;
      v446 = 0xF000000000000000;
      goto LABEL_132;
    }

    v445 = 0;
    v437 = 0;
    v438 = 0;
    v436 = 0;
    v442 = 0;
    v444 = 0;
    v447 = 0;
    v434 = 0;
    v431 = 0;
    v449 = 0;
    v433 = 0;
    v448 = 0;
    v56 = 0;
    v453 = 0;
    v432 = 0;
    v430 = 0;
    v426 = 0;
    v427 = 0;
    v57 = *(*(v0 + 576) + 80);
    v450 = v55 + ((v57 + 32) & ~v57);
    v459 = (v0 + 1164);
    v58 = MEMORY[0x277D84F90];
    v440 = 0xF000000000000000;
    v439 = 0xF000000000000000;
    v446 = 0xF000000000000000;
    v435 = v54;
    v464 = v55;
    do
    {
      v455 = v58;
      v59 = *(v55 + 16);
      if (v56 >= v59)
      {
        goto LABEL_231;
      }

      v60 = *(v0 + 1156);
      v61 = *(v0 + 1152);
      v53 = *(v0 + 584);
      v62 = *(v0 + 576);
      v63 = *(v0 + 568);
      v64 = v62[9];
      v65 = v62[2];
      v471 = v56 + 1;
      v66 = v56;
      v65(v53, v450 + v64 * v56, v63);
      v67 = v62[11];
      v68 = v67(v53, v63);
      if (v68 == v61 || v68 == v60)
      {
        goto LABEL_37;
      }

      if (v68 == *(v0 + 1160))
      {
        v80 = v453;
LABEL_76:
        v84 = *(v0 + 584);
        v85 = *(v477 + 576);
        v86 = *(v477 + 568);
        v87 = *(v477 + 560);
        v88 = *(v477 + 552);
        v89 = *(v477 + 544);
        v90 = *(v477 + 536);
        v91 = *(v477 + 368);
        v92 = *(v477 + 360);

        (*(v85 + 96))(v84, v86);
        v0 = v477;
        (*(v88 + 32))(v87, v84, v89);
        sub_21CB81464();
        v93 = *(v91 + 48);
        v94 = v93(v90, 1, v92);
        v95 = *(v477 + 536);
        if (v94 == 1)
        {
          sub_21C6EA794(*(v477 + 536), &qword_27CDF47B8, &qword_21CBBB858);
          v433 = 0;
          v448 = 0;
        }

        else
        {
          v96 = *(v477 + 368);
          v97 = *(v477 + 360);
          v433 = sub_21CB81934();
          v448 = v98;
          (*(v96 + 8))(v95, v97);
          v0 = v477;
        }

        v54 = v435;
        v99 = *(v0 + 528);
        v100 = *(v0 + 360);
        sub_21CB81454();
        v101 = v93(v99, 1, v100);
        v102 = *(v0 + 528);
        v453 = v80;
        if (v101 == 1)
        {
          sub_21C6EA794(v102, &qword_27CDF47B8, &qword_21CBBB858);
          v449 = 0;
        }

        else
        {
          v103 = *(v477 + 368);
          v104 = *(v477 + 360);
          sub_21CB81934();
          v449 = v105;
          (*(v103 + 8))(v102, v104);
          v0 = v477;
        }

        v106 = *(v0 + 520);
        sub_21CB813F4();
        v107 = sub_21CB81964();
        v108 = *(v107 - 8);
        v109 = (*(v108 + 48))(v106, 1, v107);
        v53 = *(v0 + 520);
        if (v109 == 1)
        {
          sub_21C6EA794(*(v0 + 520), &qword_27CDF47B0, &qword_21CBBB850);
          v58 = MEMORY[0x277D84F90];
        }

        else
        {
          v110 = sub_21CB81954();
          v111 = v107;
          v58 = v110;
          (*(v108 + 8))(v53, v111);
        }

        (*(*(v0 + 552) + 8))(*(v0 + 560), *(v0 + 544));
        goto LABEL_93;
      }

      if ((vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v68), *v459))) & 1) != 0 || v68 == *(v0 + 1180) || v68 == *(v0 + 1184))
      {
        goto LABEL_37;
      }

      if (v68 == *(v0 + 1188))
      {
LABEL_87:
        v53 = *(v0 + 584);
        v112 = *(v0 + 576);
        v113 = *(v0 + 568);
        v114 = *(v0 + 400);
        v115 = *(v477 + 392);
        v116 = *(v477 + 384);
        (*(v112 + 96))(v53, v113);
        (*(v115 + 32))(v114, v53, v116);
        v0 = v477;
        v117 = *(v477 + 392);
        v118 = *(v477 + 384);
        if (v434)
        {
          (*(v117 + 8))(*(v477 + 400), v118);
        }

        else
        {
          v135 = *(v477 + 376);
          v136 = *(v477 + 368);
          v137 = *(v477 + 360);
          v138 = *(v477 + 400);
          sub_21CB81484();
          v53 = v135;
          sub_21CB81934();
          v434 = v139;
          (*(v136 + 8))(v135, v137);
          v0 = v477;
          (*(v117 + 8))(v138, v118);
        }

        goto LABEL_92;
      }

      if (v68 == *(v0 + 1192))
      {
LABEL_90:
        v119 = *(v0 + 584);
        v120 = *(v477 + 576);
        v121 = *(v477 + 568);
        v53 = *(v477 + 512);
        v122 = *(v477 + 504);
        v123 = *(v477 + 496);

        (*(v120 + 96))(v119, v121);
        v0 = v477;
        (*(v122 + 32))(v53, v119, v123);
        v124 = sub_21CB81534();
        v126 = v125;
        sub_21C7902FC(v447, v446);
        v127 = sub_21CB81554();
        v129 = v128;
        sub_21C7902FC(v444, v439);
        v436 = sub_21CB81564();
        v442 = v130;
        v437 = sub_21CB81544();
        v438 = v131;
        v132 = sub_21CB81524();
        v134 = v133;
        sub_21C7902FC(v445, v440);
        (*(v122 + 8))(v53, v123);
        v444 = v127;
        v445 = v132;
        v440 = v134;
        v439 = v129;
        v446 = v126;
        v447 = v124;
LABEL_92:
        v58 = v455;
        v54 = v435;
        goto LABEL_93;
      }

      if (v68 == *(v0 + 1196) || v68 == *(v0 + 1200) || v68 == *(v0 + 1204))
      {
        goto LABEL_37;
      }

      if (v68 == *(v0 + 1208))
      {
        goto LABEL_96;
      }

      if (v68 == *(v0 + 1212))
      {
LABEL_37:
        v70 = *(*(v0 + 576) + 8);
        v70(*(v0 + 584), *(v0 + 568));
        *(v463 + v462) = 4;
      }

      else
      {
        v81 = *(v0 + 584);
        v82 = *(v0 + 576);
        v83 = *(v0 + 568);
        *(v463 + v462) = 4;
        v70 = *(v82 + 8);
        v70(v81, v83);
      }

      if (v471 == v467)
      {
LABEL_122:

        v192 = 5;
        v193 = 12;
        v194 = 4;
        v432 = 4;
        v195 = 4;
        v58 = v455;
        v54 = v435;
        goto LABEL_123;
      }

      v59 = *(v464 + 16);
      if (v471 >= v59)
      {
        goto LABEL_231;
      }

      v53 = (v450 + v64 * v471);
      v71 = v66 + 2;
      while (1)
      {
        v471 = v71;
        v72 = *(v0 + 1156);
        v73 = *(v0 + 1152);
        v74 = *(v0 + 584);
        v75 = *(v0 + 568);
        v65(v74, v53, v75);
        v76 = v67(v74, v75);
        v0 = v477;
        if (v76 == v73 || v76 == v72)
        {
          goto LABEL_46;
        }

        if (v76 == *(v477 + 1160))
        {
          v427 = 4;
          v426 = 4;
          v430 = 4;
          v432 = 4;
          v80 = 4;
          goto LABEL_76;
        }

        if ((vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v76), *v459))) & 1) != 0 || v76 == *(v477 + 1180) || v76 == *(v477 + 1184))
        {
          goto LABEL_46;
        }

        if (v76 == *(v477 + 1188))
        {
          v427 = 4;
          v426 = 4;
          v430 = 4;
          v432 = 4;
          v453 = 4;
          goto LABEL_87;
        }

        if (v76 == *(v477 + 1192))
        {
          v427 = 4;
          v426 = 4;
          v430 = 4;
          v432 = 4;
          v453 = 4;
          goto LABEL_90;
        }

        if (v76 == *(v477 + 1196) || v76 == *(v477 + 1200) || v76 == *(v477 + 1204))
        {
LABEL_46:
          v70(*(v477 + 584), *(v477 + 568));
          *(v463 + v462) = 4;
          goto LABEL_47;
        }

        if (v76 == *(v477 + 1208))
        {
          break;
        }

        if (v76 == *(v477 + 1212))
        {
          goto LABEL_46;
        }

        v78 = *(v477 + 584);
        v79 = *(v477 + 568);
        *(v463 + v462) = 4;
        v70(v78, v79);
LABEL_47:
        if (v467 == v471)
        {
          goto LABEL_122;
        }

        v59 = *(v464 + 16);
        v53 += v64;
        v71 = v471 + 1;
        if (v471 >= v59)
        {
LABEL_231:
          __break(1u);
          goto LABEL_232;
        }
      }

      v427 = 4;
      v426 = 4;
      v430 = 4;
      v432 = 4;
      v453 = 4;
LABEL_96:
      v140 = *(v0 + 720);
      v141 = *(v0 + 712);
      v142 = *(v0 + 584);
      v143 = *(v0 + 576);
      v144 = *(v0 + 568);
      v145 = *(v0 + 488);
      v146 = *(v477 + 480);
      v147 = *(v477 + 472);
      v148 = *(v477 + 312);
      v149 = *(v477 + 304);
      (*(v143 + 96))(v142, v144);
      (*(v146 + 32))(v145, v142, v147);
      v0 = v477;
      sub_21C6EDBAC(v140, v141, &qword_27CDEC300, &qword_21CBA3ED0);
      v150 = *(v148 + 48);
      v151 = v150(v141, 1, v149);
      v53 = *(v477 + 712);
      if (v151 != 1)
      {
        (*(*(v477 + 480) + 8))(*(v477 + 488), *(v477 + 472));
        sub_21C6EA794(v53, &qword_27CDEC300, &qword_21CBA3ED0);
        goto LABEL_92;
      }

      sub_21C6EA794(v53, &qword_27CDEC300, &qword_21CBA3ED0);
      v152 = v448;
      if (!v448)
      {
        v433 = sub_21CB814E4();
      }

      v448 = v152;
      v153 = *(v477 + 1216);
      v154 = *(v477 + 456);
      v155 = *(v477 + 464);
      v156 = *(v477 + 448);
      sub_21CB814B4();
      v431 = v157;
      sub_21CB81504();
      v158 = (*(v154 + 88))(v155, v156);
      v425 = v150;
      if (v158 == v153)
      {
        v424 = 0;
        v0 = v477;
      }

      else
      {
        v0 = v477;
        if (v158 == *(v477 + 1220))
        {
          v424 = 1;
        }

        else if (v158 == *(v477 + 1224))
        {
          v424 = 2;
        }

        else
        {
          (*(*(v477 + 456) + 8))(*(v477 + 464), *(v477 + 448));
          v424 = 0;
        }
      }

      v159 = *(v0 + 704);
      v160 = *(v0 + 304);
      v161 = sub_21CB814D4();
      v163 = v162;
      sub_21CB80D74();
      v423 = sub_21CB814C4();
      v421 = sub_21CB814A4();
      sub_21CB814B4();
      v165 = v164;
      sub_21CB814E4();
      v167 = v166;
      v435(v159, 1, 1, v160);
      v168 = v163;
      v422 = sub_21CB80C64();
      v169 = sub_21CB80D24();
      if (v165)
      {
        v170 = sub_21CB85584();

        if (v167)
        {
          goto LABEL_109;
        }

LABEL_111:
        v171 = 0;
      }

      else
      {
        v170 = 0;
        if (!v167)
        {
          goto LABEL_111;
        }

LABEL_109:
        v171 = sub_21CB85584();
      }

      v172 = *(v0 + 704);
      v173 = *(v0 + 304);
      v420 = v168;
      v174 = v169;
      if (v425(v172, 1, v173) == 1)
      {
        v175 = 0;
      }

      else
      {
        v176 = *(v477 + 312);
        v175 = sub_21CB80B74();
        (*(v176 + 8))(v172, v173);
        v0 = v477;
      }

      v177 = *(v0 + 440);
      v178 = *(v0 + 408);
      v179 = *(v0 + 416);
      v53 = [objc_allocWithZone(MEMORY[0x277D49B78]) initWithKeyData:v422 initialDate:v174 codeGenerationPeriod:v423 numberOfDigits:v421 algorithm:v424 issuer:v170 accountName:v171 originalURL:v175];

      sub_21C7A34C0(v161, v420);
      (*(v179 + 8))(v177, v178);
      if (v53)
      {
        v180 = [v53 exportableURL];
        if (v180)
        {
          v181 = v180;
          sub_21CB80B94();

          v182 = 0;
          v53 = v181;
        }

        else
        {
          v182 = 1;
        }

        v185 = *(v0 + 720);
        v186 = *(v0 + 696);
        v187 = *(v0 + 688);
        v188 = *(v0 + 488);
        v189 = *(v477 + 480);
        v190 = *(v477 + 472);
        v191 = *(v477 + 304);

        (*(v189 + 8))(v188, v190);
        v0 = v477;
        sub_21C6EA794(v185, &qword_27CDEC300, &qword_21CBA3ED0);
        v54 = v435;
        v435(v187, v182, 1, v191);
        sub_21C79C3F4(v187, v186);
      }

      else
      {
        v53 = *(v0 + 720);
        v183 = *(v0 + 696);
        v184 = *(v0 + 304);
        (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
        sub_21C6EA794(v53, &qword_27CDEC300, &qword_21CBA3ED0);
        v54 = v435;
        v435(v183, 1, 1, v184);
      }

      sub_21C79C3F4(*(v0 + 696), *(v0 + 720));
      v58 = v455;
LABEL_93:
      v56 = v471;
      v55 = v464;
    }

    while (v471 != v467);
LABEL_227:

    v193 = v426 | 8;
    v192 = v427 | 1;
    v195 = v430;
    v194 = v453;
LABEL_123:
    *(v0 + 936) = v446;
    *(v0 + 928) = v447;
    *(v0 + 920) = v439;
    *(v0 + 912) = v444;
    *(v0 + 904) = v442;
    *(v0 + 896) = v436;
    *(v0 + 888) = v438;
    *(v0 + 880) = v437;
    *(v0 + 872) = v440;
    *(v0 + 864) = v445;
    v454 = v194;
    if (!v449)
    {
      v430 = v195;
      v468 = v448;
      v473 = v433;
LABEL_132:
      v218 = *(v0 + 624);
      v220 = *(v0 + 304);
      v219 = *(v0 + 312);
      sub_21C6EDBAC(*(v0 + 720), v218, &qword_27CDEC300, &qword_21CBA3ED0);
      v221 = *(v219 + 48);
      v222 = v221(v218, 1, v220);
      v223 = *(v0 + 624);
      if (v222 == 1)
      {

        sub_21C6EA794(v223, &qword_27CDEC300, &qword_21CBA3ED0);
        goto LABEL_154;
      }

      v457 = v58;
      v224 = *(v0 + 616);
      v225 = *(v0 + 304);
      (*(*(v0 + 312) + 32))(*(v0 + 328), v223, v225);
      v54(v224, 1, 1, v225);
      if (v431)
      {
        v226 = sub_21CB85584();

        v227 = [v226 safari_bestURLForUserTypedString];

        v228 = 1;
        if (v227)
        {
          sub_21CB80B94();

          v228 = 0;
        }

        v229 = *(v0 + 616);
        v230 = *(v0 + 608);
        v231 = *(v0 + 304);
        sub_21C6EA794(v229, &qword_27CDEC300, &qword_21CBA3ED0);
        v54(v230, v228, 1, v231);
        sub_21C79C3F4(v230, v229);
      }

      v232 = *(v0 + 592);
      v233 = *(v0 + 328);
      v234 = *(v0 + 304);
      v235 = *(v0 + 312);
      sub_21C6EDBAC(*(v0 + 616), *(v0 + 600), &qword_27CDEC300, &qword_21CBA3ED0);
      v452 = *(v235 + 16);
      v452(v232, v233, v234);
      v54(v232, 0, 1, v234);

      sub_21CB81404();
      v236 = 0;
      if (v468)
      {
        v236 = sub_21CB85584();
      }

      v237 = *(v0 + 600);
      v238 = *(v0 + 304);
      v239 = sub_21CB85584();
      v240 = 0;
      if (v221(v237, 1, v238) != 1)
      {
        v241 = *(v0 + 600);
        v242 = *(v477 + 312);
        v243 = *(v477 + 304);
        v240 = sub_21CB80B74();
        (*(v242 + 8))(v241, v243);
        v0 = v477;
      }

      v244 = *(v0 + 592);
      v245 = *(v0 + 304);
      v246 = 0;
      if (v221(v244, 1, v245) != 1)
      {
        v247 = *(v477 + 312);
        v246 = sub_21CB80B74();
        (*(v247 + 8))(v244, v245);
        v0 = v477;
      }

      v248 = sub_21CB85584();

      v249 = 0;
      if (v434)
      {
        v249 = sub_21CB85584();
      }

      v250 = *(v0 + 808);
      v251 = *(v0 + 280);
      v252 = [objc_allocWithZone(MEMORY[0x277D49FE0]) initWithUser:v236 password:v239 url:v240 otpAuthURL:v246 title:v248 notesEntry:v249 lineNumberFromSourceFile:0];

      v253 = v252;
      v254 = [objc_opt_self() importCredential:v252 savedAccountStore:*(v251 + v250)];
      if (v254 == 2)
      {
        v262 = *(v477 + 616);
        v263 = *(v477 + 328);
        v264 = *(v477 + 304);
        v265 = *(v477 + 312);

        sub_21C6EA794(v262, &qword_27CDEC300, &qword_21CBA3ED0);
        (*(v265 + 8))(v263, v264);
        v0 = v477;
LABEL_154:
        v266 = 0;
        v255 = 0;
        v267 = 0;
        v268 = 0;
      }

      else
      {
        v255 = v468;
        if (v254 == 1)
        {
          v256 = v477;
          if (qword_27CDEA3F0 != -1)
          {
            swift_once();
          }

          v257 = sub_21CB81C84();
          __swift_project_value_buffer(v257, qword_27CE18580);
          v258 = sub_21CB81C64();
          v259 = sub_21CB85AF4();
          if (os_log_type_enabled(v258, v259))
          {
            v260 = swift_slowAlloc();
            *v260 = 0;
            _os_log_impl(&dword_21C6E5000, v258, v259, "Error while importing password synthesized for TOTP generator; the error was a conflict", v260, 2u);
            MEMORY[0x21CF16D90](v260, -1, -1);
          }

          v261 = v430 | 1;
        }

        else
        {
          v256 = v477;
          if (qword_27CDEA3F0 != -1)
          {
            swift_once();
          }

          v269 = sub_21CB81C84();
          __swift_project_value_buffer(v269, qword_27CE18580);
          v270 = sub_21CB81C64();
          v271 = sub_21CB85AF4();
          if (os_log_type_enabled(v270, v271))
          {
            v272 = swift_slowAlloc();
            *v272 = 0;
            _os_log_impl(&dword_21C6E5000, v270, v271, "Error while importing password synthesized for TOTP generator; the error was unknown", v272, 2u);
            MEMORY[0x21CF16D90](v272, -1, -1);
          }

          v261 = v432 | 8;
        }

        v454 = v261;
        *(v463 + v462) = v261;
        v273 = v256[77];
        v274 = v256[41];
        v275 = v256;
        if (*(v457 + 16))
        {
          v278 = v256 + 39;
          v277 = v256[39];
          v276 = v278[1];
          v279 = v275[38];
          v452(v276, v457 + ((*(v277 + 80) + 32) & ~*(v277 + 80)), v279);

          v267 = sub_21CB80BA4();
          v280 = v253;
          v268 = v281;

          sub_21C6EA794(v273, &qword_27CDEC300, &qword_21CBA3ED0);
          v282 = *(v277 + 8);
          v282(v274, v279);
          v282(v276, v279);
        }

        else
        {
          v283 = v256[39];
          v284 = v275[38];

          sub_21C6EA794(v273, &qword_27CDEC300, &qword_21CBA3ED0);
          (*(v283 + 8))(v274, v284);
          v267 = 0;
          v268 = 0;
        }

        *v429 = v267;
        v429[1] = v268;
        v0 = v477;
        *v428 = v473;
        v428[1] = v468;
        v266 = v473;
      }

      v286 = v440;
      v285 = v442;
      v287 = v438;
      v288 = v439;
      goto LABEL_208;
    }

    v451 = v193;
    v460 = v192;

    v196 = *(v58 + 16);
    v197 = 1;
    if (v196)
    {
      (*(*(v0 + 312) + 16))(*(v0 + 680), v58 + ((*(*(v0 + 312) + 80) + 32) & ~*(*(v0 + 312) + 80)), *(v0 + 304));
      v197 = 0;
    }

    v456 = v58;
    v198 = *(v0 + 680);
    v199 = *(v0 + 672);
    v201 = *(v0 + 304);
    v200 = *(v0 + 312);
    v54(v198, v197, 1, v201);
    sub_21C6EDBAC(v198, v199, &qword_27CDEC300, &qword_21CBA3ED0);
    v472 = *(v200 + 48);
    LODWORD(v198) = v472(v199, 1, v201);
    sub_21C6EA794(v199, &qword_27CDEC300, &qword_21CBA3ED0);
    if (v198 != 1)
    {
      v202 = *(v0 + 664);
      v203 = *(v0 + 304);
      sub_21C6EDBAC(*(v0 + 680), v202, &qword_27CDEC300, &qword_21CBA3ED0);
      v204 = v472(v202, 1, v203);
      if (v204 == 1)
      {
        goto LABEL_277;
      }

      v212 = *(v0 + 664);
      v213 = *(v0 + 304);
      v214 = *(v0 + 312);
      sub_21CB80BC4();
      v216 = v215;
      v217 = *(v214 + 8);
      v217(v212, v213);
      if (v216)
      {
      }

      else
      {
        v289 = *(v0 + 656);
        v290 = *(v0 + 304);
        sub_21C6EDBAC(*(v0 + 680), v289, &qword_27CDEC300, &qword_21CBA3ED0);
        v204 = v472(v289, 1, v290);
        if (v204 == 1)
        {
          goto LABEL_278;
        }

        v291 = *(v0 + 656);
        v292 = *(v0 + 304);
        sub_21CB80B64();
        v217(v291, v292);
        v293 = sub_21CB85584();

        v294 = [v293 safari_bestURLForUserTypedString];

        v295 = 1;
        if (v294)
        {
          sub_21CB80B94();

          v295 = 0;
        }

        v296 = *(v0 + 680);
        v297 = *(v0 + 648);
        v298 = *(v0 + 304);
        sub_21C6EA794(v296, &qword_27CDEC300, &qword_21CBA3ED0);
        v54(v297, v295, 1, v298);
        sub_21C79C3F4(v297, v296);
      }
    }

    v299 = *(v0 + 720);
    v300 = *(v0 + 632);
    sub_21C6EDBAC(*(v0 + 680), *(v0 + 640), &qword_27CDEC300, &qword_21CBA3ED0);
    sub_21C6EDBAC(v299, v300, &qword_27CDEC300, &qword_21CBA3ED0);
    v301 = sub_21CB81404();
    v303 = v302;

    v304 = 0;
    v305 = HIBYTE(v303) & 0xF;
    if ((v303 & 0x2000000000000000) == 0)
    {
      v305 = v301 & 0xFFFFFFFFFFFFLL;
    }

    if (v305)
    {
      sub_21CB81404();
      v304 = v306;
    }

    v307 = 0;
    if (v448)
    {

      v307 = sub_21CB85584();
    }

    v469 = v196;
    v308 = *(v0 + 640);
    v309 = *(v0 + 304);
    v310 = sub_21CB85584();
    v311 = v472(v308, 1, v309);
    v312 = 0;
    if (v311 != 1)
    {
      v313 = *(v0 + 640);
      v314 = *(v477 + 312);
      v315 = *(v477 + 304);
      v312 = sub_21CB80B74();
      (*(v314 + 8))(v313, v315);
      v0 = v477;
    }

    v316 = *(v0 + 632);
    v317 = *(v0 + 304);
    v318 = 0;
    if (v472(v316, 1, v317) != 1)
    {
      v319 = *(v477 + 312);
      v318 = sub_21CB80B74();
      (*(v319 + 8))(v316, v317);
      v0 = v477;
    }

    v320 = 0;
    if (v304)
    {
      v320 = sub_21CB85584();
    }

    v321 = 0;
    if (v434)
    {
      v321 = sub_21CB85584();
    }

    v322 = *(v0 + 808);
    v323 = *(v477 + 280);
    v324 = [objc_allocWithZone(MEMORY[0x277D49FE0]) initWithUser:v307 password:v310 url:v312 otpAuthURL:v318 title:v320 notesEntry:v321 lineNumberFromSourceFile:0];
    *(v477 + 944) = v324;

    v325 = objc_opt_self();
    v326 = *(v323 + v322);
    v0 = v477;
    v465 = v324;
    v327 = [v325 importCredential:v324 savedAccountStore:v326];
    v328 = 0;
    v329 = 0;
    v267 = 0;
    v268 = 0;
    v330 = v454;
    v331 = v456;
    if (v327 != 2)
    {
      if (v327 == 1)
      {
        if (qword_27CDEA3F0 == -1)
        {
          goto LABEL_186;
        }

        goto LABEL_274;
      }

      if (qword_27CDEA3F0 != -1)
      {
        swift_once();
      }

      v336 = sub_21CB81C84();
      __swift_project_value_buffer(v336, qword_27CE18580);
      v333 = sub_21CB81C64();
      v337 = sub_21CB85AF4();
      if (!os_log_type_enabled(v333, v337))
      {
        v330 = v451;
        goto LABEL_194;
      }

      v335 = swift_slowAlloc();
      *v335 = 0;
      _os_log_impl(&dword_21C6E5000, v333, v337, "Error while importing password; the error was unknown", v335, 2u);
      v330 = v451;
LABEL_192:
      MEMORY[0x21CF16D90](v335, -1, -1);
      goto LABEL_194;
    }

    while (1)
    {
      v344 = 0;
      *(v0 + 984) = v268;
      *(v0 + 976) = v267;
      *(v0 + 968) = v329;
      v474 = v328;
      *(v0 + 960) = v328;
      *(v0 + 952) = v330;
      if (!v469)
      {
        goto LABEL_201;
      }

      if (*(v331 + 16))
      {
        break;
      }

      __break(1u);
      do
      {
        __break(1u);
LABEL_274:
        swift_once();
LABEL_186:
        v332 = sub_21CB81C84();
        __swift_project_value_buffer(v332, qword_27CE18580);
        v333 = sub_21CB81C64();
        v334 = sub_21CB85AF4();
        v330 = v460;
        if (os_log_type_enabled(v333, v334))
        {
          v335 = swift_slowAlloc();
          *v335 = 0;
          _os_log_impl(&dword_21C6E5000, v333, v334, "Error while importing password; the error was a conflict", v335, 2u);
          goto LABEL_192;
        }

LABEL_194:
        v331 = v456;

        v267 = 0;
        v268 = 0;
        *(v463 + v462) = v330;
        if (!v469)
        {
          goto LABEL_197;
        }
      }

      while (!*(v456 + 16));
      v338 = *(v0 + 352);
      v339 = *(v477 + 312);
      v340 = v330;
      v341 = *(v477 + 304);
      (*(v339 + 16))(v338, v456 + ((*(v339 + 80) + 32) & ~*(v339 + 80)), v341);
      v267 = sub_21CB80BA4();
      v268 = v342;
      v343 = v341;
      v330 = v340;
      (*(v339 + 8))(v338, v343);
      v0 = v477;
LABEL_197:
      *v429 = v267;
      v429[1] = v268;
      v329 = v448;
      *v428 = v433;
      v428[1] = v448;

      v328 = v433;
    }

    v345 = v330;
    v346 = *(v0 + 344);
    v347 = *(v477 + 312);
    v348 = *(v477 + 304);
    (*(v347 + 16))(v346, v331 + ((*(v347 + 80) + 32) & ~*(v347 + 80)), v348);
    v344 = sub_21CB80B74();
    v349 = v346;
    v330 = v345;
    (*(v347 + 8))(v349, v348);
    v0 = v477;
LABEL_201:
    v454 = v330;
    v350 = 0;
    if (v448)
    {
      v350 = sub_21CB85584();
    }

    v351 = sub_21CB85584();

    v352 = [v326 savedAccountForURL:v344 user:v350 password:v351];
    *(v0 + 992) = v352;

    if (v352)
    {
      v353 = *(v331 + 16);
      if (v353 <= 1)
      {
        v255 = v329;
        sub_21C6EA794(*(v0 + 680), &qword_27CDEC300, &qword_21CBA3ED0);

        v286 = v440;
        v285 = v442;
        v287 = v438;
        v288 = v439;
        goto LABEL_207;
      }

      if (v469)
      {
        if (v353 >= v469)
        {
          v391 = v469 - 1;
          if (v469 != 1)
          {
            v392 = *(v0 + 312);
            v476 = *(v392 + 16);
            v478 = *(v392 + 72);
            v393 = v331 + v478 + ((*(v392 + 80) + 32) & ~*(v392 + 80));
            v394 = MEMORY[0x277D84F90];
            do
            {
              v476(*(v0 + 336), v393, *(v0 + 304));
              v395 = sub_21CB80BA4();
              if (!v396)
              {
                v395 = sub_21CB80B64();
              }

              v397 = v395;
              v398 = v396;
              (*(*(v0 + 312) + 8))(*(v0 + 336), *(v0 + 304));
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v394 = sub_21CA4F2EC(0, *(v394 + 2) + 1, 1, v394);
              }

              v400 = *(v394 + 2);
              v399 = *(v394 + 3);
              if (v400 >= v399 >> 1)
              {
                v394 = sub_21CA4F2EC((v399 > 1), v400 + 1, 1, v394);
              }

              *(v394 + 2) = v400 + 1;
              v401 = &v394[16 * v400];
              *(v401 + 4) = v397;
              *(v401 + 5) = v398;
              v393 += v478;
              --v391;
            }

            while (v391);
          }

          v402 = sub_21CB85814();
          *(v0 + 1000) = v402;

          *(v0 + 16) = v0;
          *(v0 + 24) = sub_21C9EC594;
          v403 = swift_continuation_init();
          *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
          *(v0 + 80) = MEMORY[0x277D85DD0];
          *(v0 + 88) = 1107296256;
          *(v0 + 96) = sub_21CAB1570;
          *(v0 + 104) = &block_descriptor_24;
          *(v0 + 112) = v403;
          [v326 saveAdditionalSites:v402 forSavedAccount:v352 completionHandler:v0 + 80];

          return MEMORY[0x282200938](v0 + 16);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
      return MEMORY[0x2821AB028](v204, v205, v206, v207, v208, v209, v210, v211);
    }

    sub_21C6EA794(*(v0 + 680), &qword_27CDEC300, &qword_21CBA3ED0);

    v286 = v440;
    v285 = v442;
    v287 = v438;
    v288 = v439;
    v255 = v329;
LABEL_207:
    v266 = v474;
LABEL_208:
    *(v0 + 1120) = v268;
    *(v0 + 1112) = v267;
    *(v0 + 1104) = v255;
    *(v0 + 1096) = v266;
    *(v0 + 1088) = v446;
    *(v0 + 1080) = v447;
    *(v0 + 1072) = v288;
    *(v0 + 1064) = v444;
    *(v0 + 1056) = v285;
    *(v0 + 1048) = v436;
    *(v0 + 1040) = v287;
    *(v0 + 1032) = v437;
    *(v0 + 1024) = v286;
    *(v0 + 1016) = v445;
    *(v0 + 1008) = v454;
    if (v446 >> 60 == 15)
    {

      goto LABEL_218;
    }

    if (v288 >> 60 == 15)
    {
      sub_21C7A35D0(v447, v446);

      sub_21C7902FC(v447, v446);
      if (!*(v0 + 1008))
      {
        continue;
      }

      goto LABEL_219;
    }

    if (v285 && v287)
    {
      if (v286 >> 60 != 15)
      {
        v443 = v285;
        v404 = *(v0 + 408);
        v405 = *(v0 + 416);
        v406 = *(v0 + 296);
        sub_21C9F3250(v447, v446);
        sub_21C9F3250(v444, v288);
        v441 = v286;
        sub_21C9F3250(v445, v286);
        v407 = sub_21CB80C74();
        v409 = v408;
        *(v0 + 1128) = v408;
        sub_21CB81414();
        v410 = *(v405 + 48);
        if (v410(v406, 1, v404) == 1)
        {
          v411 = *(v0 + 408);
          v412 = *(v0 + 296);
          sub_21CB80DA4();
          if (v410(v412, 1, v411) != 1)
          {
            sub_21C6EA794(*(v0 + 296), &unk_27CDED250, &qword_21CBA64C0);
          }
        }

        else
        {
          (*(*(v0 + 416) + 32))(*(v0 + 432), *(v0 + 296), *(v0 + 408));
        }

        v413 = *(v0 + 408);
        v414 = *(v0 + 288);
        sub_21CB813E4();
        if (v410(v414, 1, v413) == 1)
        {
          v415 = *(v0 + 408);
          v416 = *(v0 + 288);
          sub_21CB80DA4();
          if (v410(v416, 1, v415) != 1)
          {
            sub_21C6EA794(*(v0 + 288), &unk_27CDED250, &qword_21CBA64C0);
          }
        }

        else
        {
          (*(*(v0 + 416) + 32))(*(v0 + 424), *(v0 + 288), *(v0 + 408));
        }

        v417 = swift_task_alloc();
        *(v0 + 1136) = v417;
        *v417 = v0;
        v417[1] = sub_21C9EF6A0;
        v205 = v443;
        v204 = v436;
        v208 = v437;
        v206 = v407;
        v207 = v409;
        v209 = v287;
        v210 = v445;
        v211 = v441;

        return MEMORY[0x2821AB028](v204, v205, v206, v207, v208, v209, v210, v211);
      }
    }

LABEL_218:

    if (*(v0 + 1008))
    {
      goto LABEL_219;
    }
  }

  v53 = *(v0 + 280);

  v59 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importInProgress;
  if (v53[OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importInProgress])
  {
    v377 = *(v477 + 280);
    swift_getKeyPath(aX_53);
    v378 = swift_task_alloc();
    *(v378 + 16) = v377;
    *(v378 + 24) = 0;
    *(v477 + 272) = v377;
    v0 = v477;
    sub_21CB810C4();

    goto LABEL_233;
  }

LABEL_232:
  v53[v59] = 0;
LABEL_233:
  v379 = *(v0 + 280);
  if (*(v379 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importDidComplete) == 1)
  {
    *(v379 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importDidComplete) = 1;
  }

  else
  {
    swift_getKeyPath(byte_21CBBB7F8);
    v380 = swift_task_alloc();
    *(v380 + 16) = v379;
    *(v380 + 24) = 1;
    *(v0 + 248) = v379;
    sub_21CB810C4();
  }

  if (qword_27CDEA3F0 != -1)
  {
    swift_once();
  }

  v0 = v477;
  v381 = sub_21CB81C84();
  __swift_project_value_buffer(v381, qword_27CE18580);
  swift_retain_n();
  v382 = sub_21CB81C64();
  v383 = sub_21CB85AD4();
  if (os_log_type_enabled(v382, v383))
  {
    v384 = *(v477 + 832);
    v385 = *(v477 + 824);
    v386 = *(v477 + 280);
    v387 = swift_slowAlloc();
    *v387 = 134218496;
    swift_getKeyPath(byte_21CBBB4A0);
    *(v477 + 256) = v386;
    sub_21CB810D4();

    swift_beginAccess();
    *(v387 + 4) = *(*(v386 + v385) + 16);

    *(v387 + 12) = 2048;
    swift_getKeyPath(byte_21CBBB478);
    *(v477 + 264) = v386;
    sub_21CB810D4();

    *(v387 + 14) = *(v386 + v384);

    *(v387 + 22) = 2048;
    v0 = v477;
    v388 = *(sub_21CB818B4() + 16);

    *(v387 + 24) = v388;

    _os_log_impl(&dword_21C6E5000, v382, v383, "Import completed. Failed: %ld | Completed: %ld | Total: %ld", v387, 0x20u);
    MEMORY[0x21CF16D90](v387, -1, -1);
  }

  else
  {
  }

LABEL_242:

  v389 = *(v0 + 8);

  return v389();
}

uint64_t PMCredentialExchangeDataImportModel.deinit()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel_credentialData;
  v2 = sub_21CB818C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21C71B710(*(v0 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel_progressHandler), *(v0 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel_progressHandler + 8));
  v3 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel_id;
  v4 = sub_21CB80E34();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel___observationRegistrar;
  v6 = sub_21CB81114();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t PMCredentialExchangeDataImportModel.__deallocating_deinit()
{
  PMCredentialExchangeDataImportModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21C9F2B80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C9F2BC8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel_id;
  v5 = sub_21CB80E34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t dispatch thunk of PMCredentialExchangeDataImportModel.startImportAsync()()
{
  v4 = (*(*v0 + 480) + **(*v0 + 480));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21C6F35D0;

  return v4();
}

void sub_21C9F2E5C(uint64_t a1)
{
  sub_21CB80E34();
  if (v1 <= 0x3F)
  {
    sub_21C6EDA64();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21C9F2F0C()
{
  result = qword_27CDF4790;
  if (!qword_27CDF4790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4790);
  }

  return result;
}

unint64_t sub_21C9F2F64()
{
  result = qword_27CDF4798;
  if (!qword_27CDF4798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4798);
  }

  return result;
}

unint64_t sub_21C9F2FBC()
{
  result = qword_27CDF47A0;
  if (!qword_27CDF47A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF47A0);
  }

  return result;
}

unint64_t sub_21C9F3014()
{
  result = qword_27CDF47A8;
  if (!qword_27CDF47A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF47A8);
  }

  return result;
}

uint64_t sub_21C9F30E0()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__currentItemTitle);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_21C9F312C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMCredentialExchangeDataImportModel.FailedItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9F3190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMCredentialExchangeDataImportModel.FailedItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9F31F4(uint64_t a1)
{
  v2 = type metadata accessor for PMCredentialExchangeDataImportModel.FailedItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C9F3250(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21C7A35D0(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for PMGroupMemberDetailView(uint64_t a1)
{
  result = qword_27CDF47C0;
  if (!qword_27CDF47C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9F333C(uint64_t a1)
{
  sub_21C7226D8();
  if (v1 <= 0x3F)
  {
    sub_21C9F34B8(319, &qword_27CDF3198, type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21C9F34B8(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_21C9F34B8(319, &qword_27CDF42C8, type metadata accessor for PMGroupMemberImageModel, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21C9D1650(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C9F34B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21C9F3538@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_21CB82FD4();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB81024();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF47D0, &qword_21CBBB8E8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF47D8, &qword_21CBBB8F0);
  v11 = *(v10 - 8);
  v31 = v10;
  v32 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v37 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF47E0, &qword_21CBBB8F8);
  sub_21C6EADEC(&qword_27CDF47E8, &qword_27CDF47E0, &qword_21CBBB8F8, MEMORY[0x277CE14C0]);
  sub_21CB83EF4();
  v14 = *(type metadata accessor for PMGroupMemberDetailView(0) + 32);
  v15 = &v9[*(v7 + 36)];
  v16 = *(type metadata accessor for PMRemoveGroupMemberConfirmationAlert(0) + 20);
  sub_21C95B2C8(v15 + v16);
  v17 = sub_21CB823B4();
  (*(*(v17 - 8) + 56))(v15 + v16, 0, 1, v17);
  sub_21C6EDBAC(v1 + v14, v15, &qword_27CDF3178, &qword_21CBB7260);
  sub_21CB81014();
  v18 = sub_21CB81004();
  v20 = v19;
  (*(v29 + 8))(v6, v30);
  v38 = v18;
  v39 = v20;
  v21 = sub_21C9F4E1C();
  v22 = sub_21C71F3FC();
  v23 = MEMORY[0x277D837D0];
  sub_21CB842F4();

  sub_21C6EA794(v9, &qword_27CDF47D0, &qword_21CBBB8E8);
  v24 = v33;
  v25 = v34;
  v26 = v35;
  (*(v34 + 104))(v33, *MEMORY[0x277CDDDC0], v35);
  v38 = v7;
  v39 = v23;
  v40 = v21;
  v41 = v22;
  swift_getOpaqueTypeConformance2();
  v27 = v31;
  sub_21CB84684();
  (*(v25 + 8))(v24, v26);
  return (*(v32 + 8))(v13, v27);
}

uint64_t sub_21C9F39A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for PMGroupMemberDetailView(0);
  v34[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v34[1] = v4;
  v35 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2C10, &unk_21CBB5AA0);
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4810, &qword_21CBBB910);
  MEMORY[0x28223BE20](v7 - 8);
  v38 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v34 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4818, &qword_21CBBB918);
  v12 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v34 - v16;
  v41 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4820, &qword_21CBBB920);
  sub_21C6EADEC(&qword_27CDF4828, &qword_27CDF4820, &qword_21CBBB920, MEMORY[0x277CE14C0]);
  v18 = v17;
  sub_21CB85054();
  if (*(a1 + 112) == 1 && *(a1 + 81) != 2)
  {
    v21 = v35;
    sub_21C9F4F54(a1, v35);
    v22 = (*(v34[0] + 80) + 16) & ~*(v34[0] + 80);
    v23 = swift_allocObject();
    sub_21C9F4FB8(v21, v23 + v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB208, &unk_21CBB3F40);
    sub_21C7B8EA4();
    v24 = v36;
    sub_21CB84DA4();
    v25 = v39;
    (*(v5 + 32))(v11, v24, v39);
    v20 = v25;
    v19 = 0;
  }

  else
  {
    v19 = 1;
    v20 = v39;
  }

  (*(v5 + 56))(v11, v19, 1, v20);
  v26 = v12;
  v27 = *(v12 + 16);
  v28 = v37;
  v27(v14, v18, v37);
  v29 = v38;
  sub_21C6EDBAC(v11, v38, &qword_27CDF4810, &qword_21CBBB910);
  v30 = v40;
  v27(v40, v14, v28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4830, &qword_21CBBB928);
  sub_21C6EDBAC(v29, &v30[*(v31 + 48)], &qword_27CDF4810, &qword_21CBBB910);
  sub_21C6EA794(v11, &qword_27CDF4810, &qword_21CBBB910);
  v32 = *(v26 + 8);
  v32(v18, v28);
  sub_21C6EA794(v29, &qword_27CDF4810, &qword_21CBBB910);
  return (v32)(v14, v28);
}

uint64_t sub_21C9F3E7C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4838, &qword_21CBBB930);
  MEMORY[0x28223BE20](v66);
  v4 = &v57 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4840, &qword_21CBBB938);
  v63 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v57 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4848, &qword_21CBBB940);
  MEMORY[0x28223BE20](v65);
  v64 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4850, &qword_21CBBB948);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4858, &qword_21CBBB950);
  MEMORY[0x28223BE20](v13 - 8);
  v69 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v67 = &v57 - v17;
  if (*(a1 + 13) || (a1[80] & 1) == 0)
  {
    v62 = &v57;
    MEMORY[0x28223BE20](v16);
    v61 = &v57 - 4;
    v27 = *(a1 + 3);
    v28 = *(a1 + 5);
    v78 = *(a1 + 4);
    v79 = v28;
    v29 = *(a1 + 5);
    v80 = *(a1 + 6);
    v30 = *(a1 + 1);
    v74 = *a1;
    v75 = v30;
    v31 = *(a1 + 3);
    v33 = *a1;
    v32 = *(a1 + 1);
    v76 = *(a1 + 2);
    v34 = v76;
    v77 = v31;
    v72[3] = v78;
    v72[4] = v29;
    v73[0] = *(a1 + 6);
    v71 = v33;
    v72[0] = v32;
    *(&v57 - 2) = a1;
    v72[1] = v34;
    v72[2] = v27;
    v35 = sub_21CB82934();
    v60 = v10;
    v36 = v35;
    v37 = sub_21CB83CE4();
    *&v73[1] = v36;
    BYTE8(v73[1]) = v37;
    sub_21C7A33F0(&v74, &v81);
    v57 = v12;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4860, &qword_21CBBB958);
    v59 = v4;
    v39 = v38;
    v40 = sub_21C9F5084();
    v58 = v9;
    v41 = v40;
    MEMORY[0x21CF143C0](1, MEMORY[0x277D84F90], v39, v40);
    *&v82[48] = v72[3];
    *&v82[64] = v72[4];
    v83[0] = v73[0];
    *(v83 + 9) = *(v73 + 9);
    v81 = v71;
    *v82 = v72[0];
    *&v82[16] = v72[1];
    *&v82[32] = v72[2];
    sub_21C6EA794(&v81, &qword_27CDF4860, &qword_21CBBB958);
    *&v71 = v39;
    *(&v71 + 1) = v41;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_21CB84674();
    (*(v63 + 8))(v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4870, &qword_21CBBB960);
    sub_21C6EADEC(&qword_27CDF4878, &qword_27CDF4870, &qword_21CBBB960, MEMORY[0x277CE1138]);
    *&v71 = v5;
    *(&v71 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v43 = v57;
    sub_21CB825F4();
    v44 = v60;
    v45 = v58;
    (*(v60 + 16))(v59, v43, v58);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF4880, &qword_27CDF4850, &qword_21CBBB948, MEMORY[0x277CDD938]);
    v26 = v67;
    sub_21CB83494();
    (*(v44 + 8))(v43, v45);
  }

  else
  {
    v18 = sub_21CB83074();
    LOBYTE(v71) = 1;
    sub_21C9F4D14(a1, &v81);
    v19 = v81;
    v20 = v82[0];
    v21 = v82[24];
    v22 = *&v82[32];
    v23 = *&v82[8];
    LOBYTE(v81) = v82[24];
    v24 = v71;
    *v4 = v18;
    *(v4 + 1) = 0;
    v4[16] = v24;
    *(v4 + 24) = v19;
    v4[40] = v20;
    *(v4 + 3) = v23;
    v4[64] = v21;
    *(v4 + 9) = v22;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4870, &qword_21CBBB960);
    sub_21C6EADEC(&qword_27CDF4880, &qword_27CDF4850, &qword_21CBBB948, MEMORY[0x277CDD938]);
    sub_21C6EADEC(&qword_27CDF4878, &qword_27CDF4870, &qword_21CBBB960, MEMORY[0x277CE1138]);
    v25 = v67;
    sub_21CB83494();
    v26 = v25;
  }

  v46 = sub_21CB832F4();
  LOBYTE(v81) = 1;
  sub_21C9F46E8(&v74);
  *&v70[7] = v74;
  *&v70[23] = v75;
  *&v70[39] = v76;
  *&v70[55] = v77;
  v47 = v81;
  v48 = v69;
  sub_21C774C24(v26, v69);
  v49 = v68;
  sub_21C774C24(v48, v68);
  v50 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4888, &qword_21CBBB968) + 48);
  v71 = v46;
  LOBYTE(v72[0]) = v47;
  *(v72 + 1) = *v70;
  *(&v72[1] + 1) = *&v70[16];
  *(&v72[2] + 1) = *&v70[32];
  *(&v72[3] + 1) = *&v70[48];
  v51 = *&v70[63];
  *&v72[4] = *&v70[63];
  v52 = v72[0];
  *v50 = v46;
  *(v50 + 16) = v52;
  v53 = v72[1];
  v54 = v72[2];
  v55 = v72[3];
  *(v50 + 80) = v51;
  *(v50 + 48) = v54;
  *(v50 + 64) = v55;
  *(v50 + 32) = v53;
  sub_21C6EDBAC(&v71, &v81, &qword_27CDF4890, &unk_21CBBB970);
  sub_21C6EA794(v26, &qword_27CDF4858, &qword_21CBBB950);
  v81 = v46;
  v82[0] = v47;
  *&v82[17] = *&v70[16];
  *&v82[33] = *&v70[32];
  *&v82[49] = *&v70[48];
  *&v82[64] = *&v70[63];
  *&v82[1] = *v70;
  sub_21C6EA794(&v81, &qword_27CDF4890, &unk_21CBBB970);
  return sub_21C6EA794(v48, &qword_27CDF4858, &qword_21CBBB950);
}

double sub_21C9F4658@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB83074();
  v17 = 1;
  sub_21C9F4D14(a1, v12);
  v5 = v12[0];
  result = *&v12[1];
  v7 = v13;
  v8 = v15;
  v9 = v16;
  v10 = v14;
  v11 = v17;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 24) = v5;
  *(a2 + 32) = result;
  *(a2 + 40) = v7;
  *(a2 + 48) = v10;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  return result;
}

uint64_t sub_21C9F46E8@<X0>(uint64_t a2@<X8>)
{
  sub_21C9F48CC();
  sub_21C71F3FC();
  v3 = sub_21CB84054();
  v5 = v4;
  v7 = v6;
  sub_21CB83EB4();
  v8 = sub_21CB84024();
  v10 = v9;
  v12 = v11;

  sub_21C74A72C(v3, v5, v7 & 1);

  sub_21CB837E4();
  v13 = sub_21CB83FC4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_21C74A72C(v8, v10, v12 & 1);

  v20 = sub_21CB84054();
  v22 = v21;
  v23 = v17 & 1;
  v28 = v17 & 1;
  v25 = v24 & 1;
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v23;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v24 & 1;
  *(a2 + 56) = v26;
  sub_21C79B058(v13, v15, v23);

  sub_21C79B058(v20, v22, v25);

  sub_21C74A72C(v20, v22, v25);

  sub_21C74A72C(v13, v15, v28);
}

uint64_t sub_21C9F48CC()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = sub_21CB85584();
  [v4 isStringPhoneNumber_];

  sub_21CB81014();
  v6 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_21C9F4A10(uint64_t a1)
{
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a1 + 120))(v4);
  if (*(a1 + 136) == 1)
  {
    type metadata accessor for PMGroupMemberDetailView(0);
    sub_21C95B2C8(v6);
    sub_21CB823A4();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

__n128 sub_21C9F4B0C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *&v23[0] = v6;
  *(&v23[0] + 1) = v8;
  sub_21C71F3FC();
  v9 = sub_21CB84054();
  v11 = v10;
  LOBYTE(v6) = v12;
  sub_21CB84A64();
  v13 = sub_21CB83FB4();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_21C74A72C(v9, v11, v6 & 1);

  sub_21CB85214();
  sub_21CB82AC4();
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  v20 = v23[5];
  *(a1 + 96) = v23[4];
  *(a1 + 112) = v20;
  *(a1 + 128) = v23[6];
  v21 = v23[1];
  *(a1 + 32) = v23[0];
  *(a1 + 48) = v21;
  result = v23[3];
  *(a1 + 64) = v23[2];
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_21C9F4D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMGroupMemberDetailView(0);
  v5 = *(a1 + *(v4 + 44));
  v6 = *(a1 + *(v4 + 36));
  sub_21C71F3FC();

  v7 = sub_21CB84054();
  v9 = v8;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  v11 = v10 & 1;
  *(a2 + 40) = v10 & 1;
  *(a2 + 48) = v12;

  sub_21C79B058(v7, v9, v11);

  sub_21C74A72C(v7, v9, v11);
}

unint64_t sub_21C9F4E1C()
{
  result = qword_27CDF47F0;
  if (!qword_27CDF47F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF47D0, &qword_21CBBB8E8);
    sub_21C6EADEC(&qword_27CDF47F8, &qword_27CDF4800, &unk_21CBBB900, MEMORY[0x277CDE580]);
    sub_21C9F4F04(&qword_27CDF4808, type metadata accessor for PMRemoveGroupMemberConfirmationAlert, &unk_21CBB7298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF47F0);
  }

  return result;
}

uint64_t sub_21C9F4F04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C9F4F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGroupMemberDetailView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9F4FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGroupMemberDetailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9F501C()
{
  v1 = *(type metadata accessor for PMGroupMemberDetailView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C9F4A10(v2);
}

unint64_t sub_21C9F5084()
{
  result = qword_27CDF4868;
  if (!qword_27CDF4868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4860, &qword_21CBBB958);
    sub_21C9E6944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4868);
  }

  return result;
}

uint64_t sub_21C9F5110()
{
  v1 = *(v0 + 16);
  sub_21CB86484();
  sub_21CB854C4();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x21CF15FC0](*&v2);
  return sub_21CB864D4();
}

uint64_t sub_21C9F5188(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_21CB854C4();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x21CF15FC0](*&v3);
}

uint64_t sub_21C9F51D4(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_21CB86484();
  sub_21CB854C4();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x21CF15FC0](*&v3);
  return sub_21CB864D4();
}

BOOL sub_21C9F5248(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_21CB86344();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

id sub_21C9F52A8(uint64_t a1, double a2)
{
  v3 = v2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  swift_beginAccess();
  v8 = *(v2 + 112);
  v9 = *(v8 + 16);

  if (v9)
  {

    v10 = sub_21CB10E48(v7, v6, a2);
    if (v11)
    {
      v12 = v10;

      v13 = *(*(v8 + 56) + 8 * v12);

      return v13;
    }
  }

  v15 = [objc_opt_self() sharedManager];
  v16 = v15;
  if (*(a1 + 80))
  {
    v17 = [v15 avatarImageForPrimaryAccountOwnerWithDiameter_];
  }

  else
  {
    v18 = sub_21CB85584();
    v17 = [v16 avatarImageForUserHandle:v18 diameter:a2];

    v16 = v18;
  }

  swift_beginAccess();
  v19 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  sub_21C8D4E44(v19, v7, v6, isUniquelyReferenced_nonNull_native, a2);

  *(v3 + 112) = v21;
  swift_endAccess();
  return v19;
}

uint64_t sub_21C9F5468()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_21C9F54BC()
{
  result = qword_27CDF4898;
  if (!qword_27CDF4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4898);
  }

  return result;
}

uint64_t sub_21C9F551C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PMGroupMemberImageCache();
  result = sub_21CB81CF4();
  *a2 = result;
  return result;
}

uint64_t sub_21C9F5568@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF48A0, &unk_21CBBBAF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_21CB80894();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80844();
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_21CB80874();
    if (v11)
    {
      v12 = sub_21CB85634();
      v14 = v13;

      v15 = v12 == 0x6874756170746FLL && v14 == 0xE700000000000000;
      if (v15 || (sub_21CB86344() & 1) != 0 || (v12 == 0x746F2D656C707061 ? (v16 = v14 == 0xED00006874756170) : (v16 = 0), v16 || (sub_21CB86344() & 1) != 0 || (v12 == 0xD000000000000011 ? (v20 = 0x800000021CB97500 == v14) : (v20 = 0), v20 || (sub_21CB86344() & 1) != 0 || v12 == 0xD000000000000017 && 0x800000021CB97520 == v14 || (sub_21CB86344() & 1) != 0)))
      {
        (*(v8 + 8))(v10, v7);

        v17 = sub_21CB80BE4();
        (*(*(v17 - 8) + 16))(a2, a1, v17);
        v18 = type metadata accessor for PMOpenURLHandler.Action(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
      }

      if (v12 == 1886680168 && v14 == 0xE400000000000000 || (sub_21CB86344() & 1) != 0 || v12 == 0x7370747468 && v14 == 0xE500000000000000)
      {

LABEL_30:
        sub_21C9F5F34(a1, a2);
        return (*(v8 + 8))(v10, v7);
      }

      v21 = sub_21CB86344();

      if (v21)
      {
        goto LABEL_30;
      }
    }

    (*(v8 + 8))(v10, v7);
    goto LABEL_33;
  }

  sub_21C6EA794(v6, &qword_27CDF48A0, &unk_21CBBBAF0);
LABEL_33:
  v22 = type metadata accessor for PMOpenURLHandler.Action(0);
  return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
}

uint64_t type metadata accessor for PMOpenURLHandler.Action(uint64_t a1)
{
  result = qword_27CDF48A8;
  if (!qword_27CDF48A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C9F5A70(uint64_t a1)
{
  v2 = sub_21CB80BE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB85C44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMOpenURLHandler.Action(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C9F8400(v1, v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v20 = v12[1];
      MEMORY[0x21CF15F90](2);
      if (!v20)
      {
        return sub_21CB864A4();
      }

      goto LABEL_12;
    case 2u:
      v16 = *v12;
      v17 = v12[1];
      v18 = v12[2];
      v19 = v12[3];
      MEMORY[0x21CF15F90](3);
      sub_21CB80C94();
      sub_21CB80C94();
      sub_21C7A34C0(v16, v17);
      return sub_21C7A34C0(v18, v19);
    case 3u:
      (*(v7 + 32))(v9, v12, v6);
      MEMORY[0x21CF15F90](4);
      sub_21C9F84C0(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
      sub_21CB85494();
      return (*(v7 + 8))(v9, v6);
    case 4u:
      (*(v3 + 32))(v5, v12, v2);
      v15 = 6;
      goto LABEL_14;
    case 5u:
      (*(v3 + 32))(v5, v12, v2);
      v15 = 7;
LABEL_14:
      MEMORY[0x21CF15F90](v15);
      sub_21C9F84C0(&qword_27CDF48D0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_21CB85494();
      return (*(v3 + 8))(v5, v2);
    case 6u:
      v21 = v12[1];
      MEMORY[0x21CF15F90](8);
      if (!v21)
      {
        return sub_21CB864A4();
      }

LABEL_12:
      sub_21CB864A4();
      sub_21CB854C4();

    case 7u:
      MEMORY[0x21CF15F90](12);
      sub_21CB854C4();

      sub_21CB854C4();

    case 8u:
      v14 = 0;
      goto LABEL_20;
    case 9u:
      v14 = 5;
      goto LABEL_20;
    case 0xAu:
      v14 = 9;
      goto LABEL_20;
    case 0xBu:
      v14 = 10;
      goto LABEL_20;
    case 0xCu:
      v14 = 11;
      goto LABEL_20;
    case 0xDu:
      v14 = 13;
      goto LABEL_20;
    case 0xEu:
      v14 = 14;
LABEL_20:
      result = MEMORY[0x21CF15F90](v14);
      break;
    default:
      MEMORY[0x21CF15F90](1);
      sub_21CB854C4();

      break;
  }

  return result;
}

uint64_t sub_21C9F5EB0()
{
  sub_21CB86484();
  sub_21C9F5A70(v1);
  return sub_21CB864D4();
}

uint64_t sub_21C9F5EF4(uint64_t a1)
{
  sub_21CB86484();
  sub_21C9F5A70(v2);
  return sub_21CB864D4();
}

uint64_t sub_21C9F5F34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v80 = sub_21CB80814();
  v4 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF48A0, &unk_21CBBBAF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v74 - v13;
  v15 = sub_21CB80894();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v82 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v74 - v19;
  v81 = a1;
  sub_21CB80844();
  v21 = *(v16 + 48);
  if (v21(v14, 1, v15) == 1)
  {
    sub_21C6EA794(v14, &qword_27CDF48A0, &unk_21CBBBAF0);
LABEL_15:
    v30 = type metadata accessor for PMOpenURLHandler.Action(0);
    v31 = *(*(v30 - 8) + 56);
    v32 = a2;
LABEL_16:
    v33 = 1;
    return v31(v32, v33, 1, v30);
  }

  v75 = v4;
  v78 = v16;
  v76 = *(v16 + 32);
  v76(v20, v14, v15);
  v83 = v20;
  sub_21CB80854();
  if (!v22)
  {
    sub_21CB855C4();
LABEL_13:

    goto LABEL_14;
  }

  v77 = a2;
  v23 = sub_21CB85634();
  v25 = v24;

  v26 = sub_21CB855C4();
  if (!v25)
  {
    a2 = v77;
    goto LABEL_13;
  }

  if (v23 != v26 || v25 != v27)
  {
    v29 = sub_21CB86344();

    a2 = v77;
    if (v29)
    {
      goto LABEL_19;
    }

LABEL_14:
    (*(v78 + 8))(v83, v15);
    goto LABEL_15;
  }

LABEL_19:
  v35 = sub_21CB80864();
  v37 = v36;
  if (v35 == sub_21CB855C4() && v37 == v38)
  {
  }

  else
  {
    v39 = sub_21CB86344();

    if ((v39 & 1) == 0)
    {
      (*(v78 + 8))(v83, v15);
      a2 = v77;
      goto LABEL_15;
    }
  }

  v40 = v83;
  sub_21CB80834();
  if (!v41)
  {
    (*(v78 + 8))(v40, v15);
LABEL_28:
    v42 = type metadata accessor for PMOpenURLHandler.Action(0);
    v43 = v77;
LABEL_29:
    swift_storeEnumTagMultiPayload();
    v31 = *(*(v42 - 8) + 56);
    v32 = v43;
LABEL_30:
    v33 = 0;
    v30 = v42;
    return v31(v32, v33, 1, v30);
  }

  sub_21CB80884();

  if (v21(v11, 1, v15) == 1)
  {
    (*(v78 + 8))(v40, v15);
    sub_21C6EA794(v11, &qword_27CDF48A0, &unk_21CBBBAF0);
LABEL_26:
    v30 = type metadata accessor for PMOpenURLHandler.Action(0);
    v31 = *(*(v30 - 8) + 56);
    v32 = v77;
    goto LABEL_16;
  }

  v44 = v82;
  v76(v82, v11, v15);
  v45 = sub_21CB80824();
  v46 = v78;
  if (v45)
  {
    if (*(v45 + 16))
    {
      v47 = v75;
      v48 = v80;
      (*(v75 + 16))(v6, v45 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v80);

      v49 = v79;
      (*(v47 + 32))(v79, v6, v48);
      v51 = sub_21CB807F4();
      v52 = v50;
      if (v51 == 0x64726F7773736150 && v50 == 0xE900000000000073 || (sub_21CB86344() & 1) != 0)
      {

        v53 = v83;
        (*(v47 + 8))(v49, v48);
        v54 = *(v46 + 8);
        v54(v44, v15);
        v54(v53, v15);
        goto LABEL_28;
      }

      v56 = v83;
      if (v51 == 0x7974697275636553 && v52 == 0xE800000000000000 || (sub_21CB86344() & 1) != 0)
      {

        v57 = sub_21CB80804();
        v58 = v49;
        v59 = v57;
        v61 = v60;
        (*(v47 + 8))(v58, v48);
        v62 = *(v46 + 8);
        v62(v44, v15);
        v62(v56, v15);
        v63 = v77;
        *v77 = v59;
        v63[1] = v61;
        v42 = type metadata accessor for PMOpenURLHandler.Action(0);
LABEL_44:
        swift_storeEnumTagMultiPayload();
        v31 = *(*(v42 - 8) + 56);
        v32 = v63;
        goto LABEL_30;
      }

      if (v51 == 0xD000000000000011 && 0x800000021CB97540 == v52 || (sub_21CB86344() & 1) != 0)
      {

        (*(v47 + 8))(v49, v48);
        v64 = *(v46 + 8);
        v64(v44, v15);
        v64(v56, v15);
        v42 = type metadata accessor for PMOpenURLHandler.Action(0);
        v43 = v77;
        goto LABEL_29;
      }

      if (v51 == 0x796C746E65636552 && v52 == 0xEF646574656C6544 || (sub_21CB86344() & 1) != 0)
      {

        (*(v47 + 8))(v49, v48);
        v65 = *(v46 + 8);
        v65(v44, v15);
        v65(v56, v15);
        v42 = type metadata accessor for PMOpenURLHandler.Action(0);
        v43 = v77;
        goto LABEL_29;
      }

      if (v51 == 0x7379656B73736150 && v52 == 0xE800000000000000 || (sub_21CB86344() & 1) != 0)
      {

        (*(v75 + 8))(v79, v80);
        v66 = *(v78 + 8);
        v66(v82, v15);
        v66(v83, v15);
        v42 = type metadata accessor for PMOpenURLHandler.Action(0);
        v43 = v77;
        goto LABEL_29;
      }

      if (v51 == 0x61746544776F6853 && v52 == 0xEB00000000736C69 || (sub_21CB86344() & 1) != 0)
      {

        v67 = v79;
        v68 = sub_21CB80804();
        v70 = v69;
        (*(v75 + 8))(v67, v80);
        v71 = *(v78 + 8);
        v71(v82, v15);
        v71(v83, v15);
        if (!v70)
        {
          goto LABEL_26;
        }

        v63 = v77;
        *v77 = v68;
        v63[1] = v70;
        v42 = type metadata accessor for PMOpenURLHandler.Action(0);
        goto LABEL_44;
      }

      if (v51 == 0x777373615077654ELL && v52 == 0xEB0000000064726FLL)
      {

        (*(v75 + 8))(v79, v80);
        v46 = v78;
        v44 = v82;
        v40 = v83;
LABEL_66:
        v73 = *(v46 + 8);
        v73(v44, v15);
        v73(v40, v15);
        v42 = type metadata accessor for PMOpenURLHandler.Action(0);
        v43 = v77;
        goto LABEL_29;
      }

      v72 = sub_21CB86344();

      (*(v75 + 8))(v79, v80);
      v46 = v78;
      v44 = v82;
      v40 = v83;
      if (v72)
      {
        goto LABEL_66;
      }
    }

    else
    {
    }
  }

  sub_21C9F6AAC(v77);
  v55 = *(v46 + 8);
  v55(v44, v15);
  return (v55)(v40, v15);
}

uint64_t sub_21C9F6AAC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v92 - v6;
  v8 = sub_21CB80BE4();
  v97 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v92 - v12;
  v14 = objc_opt_self();
  v15 = sub_21CB80B74();
  v16 = [v14 urlIsPasswordManagerURL_];

  if (v16)
  {
    v17 = sub_21CB80B74();
    v18 = [v14 dictionaryWithPasswordManagerURL_];

    if (v18)
    {
      v19 = sub_21CB85474();

      if (!*(v19 + 16))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v19 = sub_21CB126C0(MEMORY[0x277D84F90]);
      if (!*(v19 + 16))
      {
        goto LABEL_8;
      }
    }

    v95 = v19;
    v96 = a1;
    v20 = sub_21CB80B74();
    v21 = [v14 valueForPasswordManagerURL:v20 key:*MEMORY[0x277D49C90]];

    if (v21)
    {

      v22 = sub_21CB855C4();
      v24 = v23;

      a1 = v96;
      *v96 = v22;
      a1[1] = v24;
      v25 = type metadata accessor for PMOpenURLHandler.Action(0);
LABEL_9:
      swift_storeEnumTagMultiPayload();
      v27 = *(*(v25 - 8) + 56);
      v29 = a1;
LABEL_10:
      v30 = 0;
      v28 = v25;
      goto LABEL_11;
    }

    v94 = v8;
    v32 = sub_21CB80B74();
    v33 = [v14 valueForPasswordManagerURL:v32 key:*MEMORY[0x277D49C78]];

    if (v33)
    {
      sub_21CB855C4();

      v34 = sub_21CB80C24();
      v36 = v35;

      if (v36 >> 60 != 15)
      {
        v37 = sub_21CB80B74();
        v38 = [v14 valueForPasswordManagerURL:v37 key:*MEMORY[0x277D49C80]];

        if (v38)
        {
          v93 = sub_21CB855C4();

          v93 = sub_21CB80C24();
          v40 = v39;

          if (v40 >> 60 != 15)
          {

            v60 = v34;
            a1 = v96;
            *v96 = v93;
            a1[1] = v40;
            a1[2] = v60;
            a1[3] = v36;
            v25 = type metadata accessor for PMOpenURLHandler.Action(0);
            goto LABEL_9;
          }
        }

        sub_21C7902FC(v34, v36);
      }
    }

    v41 = sub_21CB80B74();
    v42 = [v14 valueForPasswordManagerURL:v41 key:*MEMORY[0x277D49C68]];

    a1 = v96;
    if (v42)
    {
      v93 = sub_21CB855C4();
      v44 = v43;

      v45 = sub_21CB80B74();
      v46 = [v14 valueForPasswordManagerURL:v45 key:*MEMORY[0x277D49C70]];

      if (v46)
      {

        v47 = sub_21CB855C4();
        v49 = v48;

        v50 = v96;
        *v96 = v93;
        v50[1] = v44;
        v50[2] = v47;
        v50[3] = v49;
        v25 = type metadata accessor for PMOpenURLHandler.Action(0);
        swift_storeEnumTagMultiPayload();
        v27 = *(*(v25 - 8) + 56);
        v29 = v50;
        goto LABEL_10;
      }

      a1 = v96;
    }

    v51 = sub_21CB80B74();
    v52 = [v14 isPasswordManagerFamilySharingGroupSetupURL_];

    if (!v52)
    {
      v53 = sub_21CB80B74();
      v54 = [v14 valueForPasswordManagerURL:v53 key:*MEMORY[0x277D49C98]];

      if (v54)
      {

        sub_21CB855C4();

        sub_21CB85B54();
        v25 = type metadata accessor for PMOpenURLHandler.Action(0);
        goto LABEL_9;
      }

      v55 = sub_21CB80B74();
      v56 = [v14 valueForPasswordManagerURL:v55 key:*MEMORY[0x277D49CA0]];

      if (v56)
      {

        v57 = sub_21CB855C4();
        v59 = v58;

        *a1 = v57;
        a1[1] = v59;
        v25 = type metadata accessor for PMOpenURLHandler.Action(0);
        goto LABEL_9;
      }

      v61 = sub_21CB80B74();
      v62 = [v14 isPasswordManagerVerificationCodesURL_];

      if (!v62)
      {
        v63 = v95;
        v64 = sub_21CB85464();
        v65 = [v14 isPasswordManagerSecurityRecommendationsResourceDictionary_];

        if (v65)
        {

          v25 = type metadata accessor for PMOpenURLHandler.Action(0);
          *a1 = 0;
          a1[1] = 0;
          goto LABEL_9;
        }

        v66 = sub_21CB85464();
        v67 = [v14 isPasswordManagerRecentlyDeletedResourceDictionary_];

        if (!v67)
        {
          v68 = sub_21CB85464();
          v69 = [v14 isPasswordManagerPasskeysResourceDictionary_];

          if (!v69)
          {
            v70 = sub_21CB85464();
            v71 = [v14 isOtpauthResourceDictionary_];

            if (!v71 || !*(v63 + 16) || (sub_21CB10A3C(7107189, 0xE300000000000000), (v72 & 1) == 0))
            {
LABEL_51:
              v80 = sub_21CB85464();
              v81 = [v14 isOtpauthMigrationResourceDictionary_];

              if (!v81 || !*(v63 + 16) || (sub_21CB10A3C(7107189, 0xE300000000000000), (v82 & 1) == 0))
              {
LABEL_67:
                v89 = sub_21CB85464();

                v90 = [v14 isPasswordManagerGeneratedPasswordsResourceDictionary_];

                v91 = type metadata accessor for PMOpenURLHandler.Action(0);
                v78 = v91;
                if (!v90)
                {
                  return (*(*(v91 - 8) + 56))(a1, 1, 1, v91);
                }

LABEL_68:
                swift_storeEnumTagMultiPayload();
                return (*(*(v78 - 8) + 56))(a1, 0, 1, v78);
              }

              sub_21CB80BD4();

              if ((*(v97 + 48))(v4, 1, v94) == 1)
              {
                sub_21C6EA794(v4, &qword_27CDEC300, &qword_21CBA3ED0);
LABEL_66:
                a1 = v96;
                goto LABEL_67;
              }

              v83 = *(v97 + 32);
              v83(v10, v4, v94);
              sub_21CB80BC4();
              if (v84)
              {
                v85 = sub_21CB85634();
                v87 = v86;

                if (v85 == 0xD000000000000011 && 0x800000021CB97500 == v87 || (sub_21CB86344() & 1) != 0 || v85 == 0xD000000000000017 && 0x800000021CB97520 == v87)
                {
                }

                else
                {
                  v88 = sub_21CB86344();

                  if ((v88 & 1) == 0)
                  {
                    goto LABEL_65;
                  }
                }

                a1 = v96;
                v83(v96, v10, v94);
                v78 = type metadata accessor for PMOpenURLHandler.Action(0);
                goto LABEL_68;
              }

LABEL_65:
              (*(v97 + 8))(v10, v94);
              goto LABEL_66;
            }

            sub_21CB80BD4();

            if ((*(v97 + 48))(v7, 1, v94) == 1)
            {
              sub_21C6EA794(v7, &qword_27CDEC300, &qword_21CBA3ED0);
LABEL_50:
              v63 = v95;
              a1 = v96;
              goto LABEL_51;
            }

            v73 = *(v97 + 32);
            v73(v13, v7, v94);
            sub_21CB80BC4();
            if (v74)
            {
              v75 = sub_21CB85634();
              v77 = v76;

              if (v75 == 0x6874756170746FLL && v77 == 0xE700000000000000 || (sub_21CB86344() & 1) != 0)
              {

LABEL_44:

                a1 = v96;
                v73(v96, v13, v94);
                v78 = type metadata accessor for PMOpenURLHandler.Action(0);
                goto LABEL_68;
              }

              if (v75 == 0x746F2D656C707061 && v77 == 0xED00006874756170)
              {

                v95 = 0xED00006874756170;
                goto LABEL_44;
              }

              v79 = sub_21CB86344();

              if (v79)
              {
                goto LABEL_44;
              }
            }

            (*(v97 + 8))(v13, v94);
            goto LABEL_50;
          }
        }
      }
    }

LABEL_8:

    v25 = type metadata accessor for PMOpenURLHandler.Action(0);
    goto LABEL_9;
  }

  v26 = type metadata accessor for PMOpenURLHandler.Action(0);
  v27 = *(*(v26 - 8) + 56);
  v28 = v26;
  v29 = a1;
  v30 = 1;
LABEL_11:

  return v27(v29, v30, 1, v28);
}

uint64_t sub_21C9F77E0(uint64_t a1, uint64_t a2)
{
  v98 = a2;
  v3 = sub_21CB80BE4();
  v96 = *(v3 - 8);
  v97 = v3;
  MEMORY[0x28223BE20](v3);
  v91 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = &v89 - v6;
  v7 = sub_21CB85C44();
  v93 = *(v7 - 8);
  v94 = v7;
  MEMORY[0x28223BE20](v7);
  v92 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMOpenURLHandler.Action(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v89 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v89 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v89 - v19;
  MEMORY[0x28223BE20](v21);
  v95 = &v89 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = (&v89 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = (&v89 - v27);
  MEMORY[0x28223BE20](v29);
  v31 = (&v89 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF48D8, &unk_21CBBBB80);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = (&v89 + *(v34 + 56) - v33);
  v36 = a1;
  v37 = &v89 - v33;
  sub_21C9F8400(v36, &v89 - v33);
  sub_21C9F8400(v98, v35);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v38 = v37;
      sub_21C9F8400(v37, v28);
      v76 = *v28;
      v75 = v28[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_51;
      }

      v77 = v35[1];
      if (!v75)
      {
        goto LABEL_49;
      }

      goto LABEL_35;
    case 2u:
      sub_21C9F8400(v37, v25);
      v51 = *v25;
      v50 = v25[1];
      v53 = v25[2];
      v52 = v25[3];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_21C7A34C0(v53, v52);
        sub_21C7A34C0(v51, v50);
        goto LABEL_62;
      }

      v54 = *v35;
      v55 = v35[1];
      v57 = v35[2];
      v56 = v35[3];
      if (sub_21CA8FE88(v51, v50, v54, v55))
      {
        v58 = v37;
        v48 = sub_21CA8FE88(v53, v52, v57, v56);
        sub_21C7A34C0(v57, v56);
        sub_21C7A34C0(v53, v52);
        sub_21C7A34C0(v54, v55);
        sub_21C7A34C0(v51, v50);
        sub_21C9F8464(v58);
        return v48 & 1;
      }

      sub_21C7A34C0(v57, v56);
      sub_21C7A34C0(v53, v52);
      sub_21C7A34C0(v54, v55);
      sub_21C7A34C0(v51, v50);
      sub_21C9F8464(v37);
      goto LABEL_63;
    case 3u:
      v59 = v95;
      sub_21C9F8400(v37, v95);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v93 + 8))(v59, v94);
        goto LABEL_62;
      }

      v38 = v37;
      v61 = v92;
      v60 = v93;
      v62 = v35;
      v63 = v94;
      (*(v93 + 32))(v92, v62, v94);
      sub_21C9F84C0(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
      sub_21CB857F4();
      sub_21CB857F4();
      if (v101 == v99 && v102 == v100)
      {
        v64 = *(v60 + 8);
        v64(v61, v63);

        v64(v59, v63);
        v65 = v37;
        goto LABEL_56;
      }

      v86 = sub_21CB86344();
      v87 = *(v60 + 8);
      v87(v61, v63);

      v87(v59, v63);
      if (v86)
      {
        goto LABEL_67;
      }

      goto LABEL_68;
    case 4u:
      sub_21C9F8400(v37, v20);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v43 = v96;
        v44 = v90;
        v45 = v35;
        v46 = v97;
        (*(v96 + 32))(v90, v45, v97);
        v47 = v37;
        v48 = sub_21CB80B84();
        v49 = *(v43 + 8);
        v49(v44, v46);
        v49(v20, v46);
        goto LABEL_44;
      }

      (*(v96 + 8))(v20, v97);
      goto LABEL_62;
    case 5u:
      sub_21C9F8400(v37, v17);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        (*(v96 + 8))(v17, v97);
        goto LABEL_62;
      }

      v80 = v96;
      v81 = v91;
      v82 = v35;
      v83 = v97;
      (*(v96 + 32))(v91, v82, v97);
      v47 = v37;
      v48 = sub_21CB80B84();
      v84 = *(v80 + 8);
      v84(v81, v83);
      v84(v17, v83);
LABEL_44:
      sub_21C9F8464(v47);
      return v48 & 1;
    case 6u:
      v38 = v37;
      sub_21C9F8400(v37, v14);
      v76 = *v14;
      v75 = v14[1];
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_51;
      }

      v77 = v35[1];
      if (!v75)
      {
LABEL_49:
        if (!v77)
        {
          goto LABEL_67;
        }

        goto LABEL_50;
      }

LABEL_35:
      if (!v77)
      {
LABEL_50:

        goto LABEL_68;
      }

      if (v76 == *v35 && v75 == v77)
      {
        goto LABEL_77;
      }

      v79 = sub_21CB86344();

      if ((v79 & 1) == 0)
      {
        goto LABEL_68;
      }

LABEL_67:
      v65 = v38;
      goto LABEL_56;
    case 7u:
      v66 = v37;
      sub_21C9F8400(v37, v11);
      v68 = *v11;
      v67 = v11[1];
      v70 = v11[2];
      v69 = v11[3];
      if (swift_getEnumCaseMultiPayload() != 7)
      {

        v37 = v66;
        goto LABEL_62;
      }

      v72 = v35[2];
      v71 = v35[3];
      if (v68 == *v35 && v67 == v35[1])
      {
      }

      else
      {
        v74 = sub_21CB86344();

        if ((v74 & 1) == 0)
        {

          goto LABEL_76;
        }
      }

      if (v70 == v72 && v69 == v71)
      {

        v65 = v66;
        goto LABEL_56;
      }

      v88 = sub_21CB86344();

      if (v88)
      {
        v65 = v66;
        goto LABEL_56;
      }

LABEL_76:
      sub_21C9F8464(v66);
      goto LABEL_63;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_55;
      }

      goto LABEL_62;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_62;
      }

      goto LABEL_55;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_62;
      }

      goto LABEL_55;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_62;
      }

      goto LABEL_55;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_62;
      }

      goto LABEL_55;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_62;
      }

      goto LABEL_55;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_62;
      }

LABEL_55:
      v65 = v37;
      goto LABEL_56;
    default:
      v38 = v37;
      sub_21C9F8400(v37, v31);
      v40 = *v31;
      v39 = v31[1];
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_51:

        v37 = v38;
LABEL_62:
        sub_21C6EA794(v37, &qword_27CDF48D8, &unk_21CBBBB80);
LABEL_63:
        v48 = 0;
        return v48 & 1;
      }

      if (v40 != *v35 || v39 != v35[1])
      {
        v42 = sub_21CB86344();

        if (v42)
        {
          goto LABEL_67;
        }

LABEL_68:
        sub_21C9F8464(v38);
        goto LABEL_63;
      }

LABEL_77:

      v65 = v38;
LABEL_56:
      sub_21C9F8464(v65);
      v48 = 1;
      return v48 & 1;
  }
}

void sub_21C9F822C(uint64_t a1)
{
  sub_21C9F8320();
  if (v1 <= 0x3F)
  {
    sub_21C9F8368(319, &qword_27CDF48C0, MEMORY[0x277CC9318], "encryptionKeyReference encryptedData ");
    if (v2 <= 0x3F)
    {
      sub_21CB85C44();
      if (v3 <= 0x3F)
      {
        sub_21CB80BE4();
        if (v4 <= 0x3F)
        {
          sub_21C9F8368(319, &qword_27CDEABD8, MEMORY[0x277D837D0], "domain user ");
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C9F8320()
{
  if (!qword_27CDF48B8)
  {
    sub_21C6EDA64();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF48B8);
    }
  }
}

void sub_21C9F8368(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21C9F8400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMOpenURLHandler.Action(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9F8464(uint64_t a1)
{
  v2 = type metadata accessor for PMOpenURLHandler.Action(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C9F84C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C9F8508()
{
  v64 = sub_21CB81024();
  v69 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v68 = &v38 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_21CB81514();
  v67 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB81574();
  v66 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB81584();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB81404();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    return sub_21CB81404();
  }

  v65 = v8;
  v45 = v3;
  v46 = v6;
  v47 = v1;
  v48 = v4;
  v17 = v10;
  v19 = v67;
  v18 = v68;
  v20 = v69;
  result = sub_21CB813D4();
  v21 = result;
  v22 = *(result + 16);
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    v15 = 0;
    v63 = *MEMORY[0x277CBA748];
    v25 = v65;
    v62 = v65 + 16;
    v61 = v65 + 88;
    v60 = *MEMORY[0x277CBA738];
    v59 = *MEMORY[0x277CBA6C8];
    v58 = *MEMORY[0x277CBA6D0];
    v57 = *MEMORY[0x277CBA6F0];
    v56 = *MEMORY[0x277CBA700];
    v55 = *MEMORY[0x277CBA6F8];
    v54 = *MEMORY[0x277CBA720];
    v53 = *MEMORY[0x277CBA750];
    v52 = *MEMORY[0x277CBA758];
    v51 = *MEMORY[0x277CBA6D8];
    v42 = (v65 + 96);
    v39 = (v19 + 32);
    v50 = *MEMORY[0x277CBA740];
    v38 = (v19 + 8);
    v41 = (v66 + 32);
    v40 = (v66 + 8);
    LODWORD(v67) = *MEMORY[0x277CBA728];
    v43 = (v20 + 8);
    v49 = v22;
    v44 = v22 - 1;
    LODWORD(v66) = *MEMORY[0x277CBA730];
    v26 = v7;
    v27 = v17;
    v28 = (v65 + 8);
    while (2)
    {
      v29 = v23;
      while (1)
      {
        if (v29 >= *(v21 + 16))
        {
          __break(1u);
          return result;
        }

        v30 = v25;
        (*(v25 + 16))(v27, v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v29, v26);
        v31 = (*(v30 + 88))(v27, v26);
        if (v31 == v63)
        {

          (*v28)(v27, v26);
          return 0x73736572646441;
        }

        if (v31 == v60)
        {

          (*v28)(v27, v26);
          v37 = 541675585;
          return v37 | 0x79654B00000000;
        }

        if (v31 == v59)
        {

          (*v28)(v27, v26);
          return 0x64726F7773736150;
        }

        if (v31 == v58)
        {
          goto LABEL_26;
        }

        if (v31 == v57)
        {
          v15 = 0xD000000000000010;

          (*v28)(v27, v26);
          return v15;
        }

        if (v31 == v56)
        {

          (*v28)(v27, v26);
          return 0xD000000000000012;
        }

        if (v31 == v55)
        {

          (*v28)(v27, v26);
          return 0xD000000000000011;
        }

        if (v31 == v54)
        {
LABEL_26:

          sub_21CB81014();
          v15 = sub_21CB81004();
          v24 = v32;
          (*v43)(v18, v64);
          result = (*v28)(v27, v26);
          goto LABEL_33;
        }

        if (v31 == v53)
        {
          break;
        }

        if (v31 == v52)
        {

          (*v28)(v27, v26);
          return 0x74726F7073736150;
        }

        if (v31 == v51)
        {

          (*v28)(v27, v26);
          return 0x4E206E6F73726550;
        }

        if (v31 == v50)
        {

          (*v28)(v27, v26);
          v37 = 541610835;
          return v37 | 0x79654B00000000;
        }

        if (v31 == v67)
        {
          (*v42)(v27, v26);
          v35 = v45;
          (*v39)(v45, v27, v47);
          if (!v24)
          {
            v15 = sub_21CB814E4();
            v24 = v36;
          }

          result = (*v38)(v35, v47);
          goto LABEL_33;
        }

        if (v31 == v66)
        {

          (*v28)(v27, v26);
          return 1766222167;
        }

        ++v29;
        result = (*v28)(v27, v26);
        v25 = v65;
        if (v49 == v29)
        {
          goto LABEL_34;
        }
      }

      (*v42)(v27, v26);
      v33 = v46;
      (*v41)(v46, v27, v48);
      if (!v24)
      {
        v15 = sub_21CB81544();
        v24 = v34;
      }

      result = (*v40)(v33, v48);
LABEL_33:
      v23 = v29 + 1;
      v25 = v65;
      if (v44 != v29)
      {
        continue;
      }

      break;
    }

LABEL_34:

    if (v24)
    {
      return v15;
    }
  }

  else
  {
  }

  sub_21CB81014();
  v15 = sub_21CB81004();
  (*(v20 + 8))(v18, v64);
  return v15;
}

uint64_t sub_21C9F8EDC(uint64_t a1)
{
  v54 = sub_21CB80DD4();
  v2 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  v60 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - v8;
  v10 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v11 = *(v10 - 8);
  v55 = v10;
  v56 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFB0, &unk_21CBA0C80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v49 - v15;
  v17 = type metadata accessor for PMOfflineMigrationPayload(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA9042C(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_21C7B09AC(v16);
  }

  v22 = v2;
  sub_21C7B0CD4(v16, v20, type metadata accessor for PMOfflineMigrationPayload);
  v23 = *v20;
  v24 = *(*v20 + 16);
  if (v24)
  {
    v49 = v20;
    v50 = v1;
    v61 = MEMORY[0x277D84F90];
    sub_21C7B0C90(0, v24, 0);
    v25 = v61;
    v26 = v23 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v51 = v13;
    v52 = (v22 + 8);
    v60 = *(v60 + 72);
    v28 = v55;
    v27 = v56;
    while (1)
    {
      sub_21C737804(v26, v9);
      sub_21C737804(v9, v13);
      sub_21C737804(v9, v6);
      v29 = *(v6 + 10);
      if (v6[88] == 1)
      {
        if (v29 < 2)
        {
          goto LABEL_18;
        }
      }

      else if (v29 != 2)
      {
        goto LABEL_18;
      }

      if (v6[56] == 1)
      {
        v30 = *(v6 + 6);
        v31 = v30 >= 2;
        if (v30 <= 2)
        {
          v32 = 1;
          if (!v31)
          {
            v32 = 0;
          }

          goto LABEL_16;
        }

        if (v30 == 3)
        {
          v32 = 2;
LABEL_16:
          v59 = v32;
          v58 = sub_21CB80C64();
          v33 = v53;
          sub_21CB80D74();
          v57 = sub_21CB80D24();
          (*v52)(v33, v54);
          if (v6[72])
          {
            v34 = 6;
          }

          else if (*(v6 + 8) == 8)
          {
            v34 = 8;
          }

          else
          {
            v34 = 6;
          }

          v38 = objc_allocWithZone(MEMORY[0x277D49B78]);
          v39 = sub_21CB85584();
          v40 = sub_21CB85584();
          v41 = v38;
          v43 = v57;
          v42 = v58;
          v35 = [v41 initWithKeyData:v58 initialDate:v57 codeGenerationPeriod:30 numberOfDigits:v34 algorithm:v59 issuer:v39 accountName:v40 originalURL:0];

          sub_21C9F9900(v6, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
          if (v35)
          {
          }

          v28 = v55;
          v27 = v56;
          v13 = v51;
          goto LABEL_19;
        }
      }

LABEL_18:
      sub_21C9F9900(v6, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
      v35 = 0;
LABEL_19:
      sub_21C9F9900(v9, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
      *&v13[*(v28 + 20)] = v35;
      v61 = v25;
      v37 = *(v25 + 16);
      v36 = *(v25 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_21C7B0C90((v36 > 1), v37 + 1, 1);
        v27 = v56;
        v25 = v61;
      }

      *(v25 + 16) = v37 + 1;
      sub_21C7B0CD4(v13, v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v37, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v26 += v60;
      if (!--v24)
      {
        type metadata accessor for PMTOTPMigrationModel(0);
        swift_allocObject();
        v44 = sub_21CB52A38(v25);
        type metadata accessor for PMAppTOTPMigrationModel(0);
        v45 = swift_allocObject();
        v45[3] = 0;
        v45[4] = 0;
        v46 = MEMORY[0x277D84FA0];
        v45[5] = 0;
        v45[6] = v46;
        v45[7] = swift_getKeyPath(byte_21CBBBC08);
        sub_21CB81104();
        v45[2] = v44;

        sub_21C7B5424();

        KeyPath = swift_getKeyPath(aX_13);
        MEMORY[0x28223BE20](KeyPath);
        v61 = v50;
        sub_21C71F850(&qword_27CDEAE18, type metadata accessor for PMHandleInboundTOTPMigrationURLModel, &unk_21CBBBBE0);
        sub_21CB810C4();

        v48 = v49;
        return sub_21C9F9900(v48, type metadata accessor for PMOfflineMigrationPayload);
      }
    }
  }

  v48 = v20;
  return sub_21C9F9900(v48, type metadata accessor for PMOfflineMigrationPayload);
}

uint64_t sub_21C9F95F8()
{
  swift_getKeyPath(aX_13);
  sub_21C71F850(&qword_27CDEAE18, type metadata accessor for PMHandleInboundTOTPMigrationURLModel, &unk_21CBBBBE0);
  sub_21CB810D4();
}

uint64_t sub_21C9F969C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(aX_13);
  sub_21C71F850(&qword_27CDEAE18, type metadata accessor for PMHandleInboundTOTPMigrationURLModel, &unk_21CBBBBE0);
  sub_21CB810C4();
}

uint64_t sub_21C9F9768()
{

  v1 = OBJC_IVAR____TtC17PasswordManagerUI36PMHandleInboundTOTPMigrationURLModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21C9F9814@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for PMAppTOTPMigrationModel(0);
  sub_21C71F850(&qword_27CDEB150, type metadata accessor for PMAppTOTPMigrationModel, &unk_21CBA11B8);

  sub_21CB850A4();
  v3 = *(type metadata accessor for PMAppTOTPMigrationView(0) + 20);
  *(a2 + v3) = swift_getKeyPath(aH_85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21C9F9900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21C9F99D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_21C9F9A18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C9F9A9C(uint64_t isUniquelyReferenced_nonNull_native)
{
  v4 = *v2;
  v5 = v2[3];
  v6 = *(v2 + 40);
  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v4 + 32;
    v10 = MEMORY[0x277D84F90];
    do
    {
      v11 = *(v4 + 16);
      v12 = (v9 + 112 * v8);
      v13 = v8;
      while (1)
      {
        if (v13 >= v11)
        {
          __break(1u);
          goto LABEL_37;
        }

        v14 = v12[3];
        v15 = v12[4];
        v16 = v12[6];
        v57 = v12[5];
        v17 = v12[1];
        v18 = v12[2];
        v52 = *v12;
        v53 = v17;
        v58 = v16;
        v55 = v14;
        v56 = v15;
        v54 = v18;
        v8 = v13 + 1;
        if ((v57 & 1) == 0)
        {
          break;
        }

        v12 += 7;
        ++v13;
        if (v7 == v8)
        {
          goto LABEL_15;
        }
      }

      v50 = v9;
      sub_21C7A33F0(&v52, v51);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v59 = v10;
      if ((v19 & 1) == 0)
      {
        sub_21C7B10A0(0, *(v10 + 16) + 1, 1);
        v10 = v59;
      }

      v1 = *(v10 + 16);
      v20 = *(v10 + 24);
      v3 = v1 + 1;
      if (v1 >= v20 >> 1)
      {
        sub_21C7B10A0((v20 > 1), v1 + 1, 1);
        v10 = v59;
      }

      *(v10 + 16) = v3;
      v21 = (v10 + 112 * v1);
      v22 = v52;
      v23 = v54;
      v21[3] = v53;
      v21[4] = v23;
      v21[2] = v22;
      v24 = v55;
      v25 = v56;
      v26 = v58;
      v21[7] = v57;
      v21[8] = v26;
      v21[5] = v24;
      v21[6] = v25;
      v9 = v50;
    }

    while (v7 - 1 != v13);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

LABEL_15:
  if (v6)
  {
    v27 = *(v4 + 16);
    if (v27 < v5 && v7 != 0)
    {
      v29 = (v4 + 32);
      while (v27)
      {
        v30 = v29[3];
        v31 = v29[4];
        v32 = v29[6];
        v57 = v29[5];
        v33 = v29[1];
        v34 = v29[2];
        v52 = *v29;
        v53 = v33;
        v58 = v32;
        v55 = v30;
        v56 = v31;
        v54 = v34;
        if (v57)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB018, &qword_21CBA0D90);
          v35 = swift_allocObject();
          v36 = v56;
          v37 = v57;
          v38 = v54;
          v35[5] = v55;
          v35[6] = v36;
          v39 = v58;
          v35[7] = v37;
          v35[8] = v39;
          v40 = v52;
          v41 = v53;
          v35[1] = xmmword_21CBA0690;
          v35[2] = v40;
          v35[3] = v41;
          v35[4] = v38;
          v59 = v35;
          sub_21C7A33F0(&v52, v51);
          sub_21CAE8E18(v10);
          v10 = v59;
          goto LABEL_26;
        }

        --v27;
        v29 += 7;
        if (!--v7)
        {
          goto LABEL_26;
        }
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

LABEL_26:
  v1 = sub_21C91A068(v5, v10);
  if ((v44 & 1) == 0)
  {
LABEL_27:
    sub_21CAC8FA8(v1, v42, v43, v44);
    v46 = v45;
LABEL_34:
    swift_unknownObjectRelease();
    return v46;
  }

  v7 = v44;
  v3 = v43;
  v10 = v42;
  sub_21CB86364();
  swift_unknownObjectRetain_n();
  v47 = swift_dynamicCastClass();
  if (!v47)
  {
    swift_unknownObjectRelease();
    v47 = MEMORY[0x277D84F90];
  }

  v48 = *(v47 + 16);

  if (__OFSUB__(v7 >> 1, v3))
  {
    goto LABEL_38;
  }

  if (v48 != (v7 >> 1) - v3)
  {
LABEL_39:
    swift_unknownObjectRelease();
    v44 = v7;
    v43 = v3;
    v42 = v10;
    goto LABEL_27;
  }

  v46 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v46)
  {
    v46 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  return v46;
}

uint64_t sub_21C9F9DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v32 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4948, &qword_21CBBBE10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2 * v11 - 1;
  }

  v34[0] = a1;
  v34[1] = a1 + 32;
  v34[2] = 0;
  v34[3] = v12;
  v13 = swift_allocObject();
  v14 = *(a2 + 48);
  *(v13 + 48) = *(a2 + 32);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(a2 + 64);
  *(v13 + 96) = *(a2 + 80);
  v15 = *(a2 + 16);
  *(v13 + 16) = *a2;
  *(v13 + 32) = v15;

  sub_21C87CED0(a2, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4950, &qword_21CBBBE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4958, &qword_21CBBBE20);
  sub_21C6EADEC(&qword_27CDF4960, &qword_27CDF4950, &qword_21CBBBE18, MEMORY[0x277D83FB8]);
  sub_21C9FA46C();
  sub_21C9FA524();
  sub_21CB84FF4();
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = (a1 + 112 * v16);
    v18 = v17[1];
    v35[5] = *v17;
    v35[6] = v18;
    v19 = *(v17 - 1);
    v35[3] = *(v17 - 2);
    v35[4] = v19;
    v20 = *(v17 - 3);
    v35[1] = *(v17 - 4);
    v35[2] = v20;
    v35[0] = *(v17 - 5);
    v21 = *(a2 + 48);
    if (*(v21 + 16))
    {
      sub_21C7A33F0(v35, v34);
      v22 = sub_21CB10D94(v35);
      if (v23)
      {
        v24 = *(*(v21 + 56) + 8 * v22);

        sub_21C7A344C(v35);
LABEL_11:
        v25 = *(a2 + 8);

        goto LABEL_12;
      }

      sub_21C7A344C(v35);
    }

    v24 = 0;
    goto LABEL_11;
  }

  v25 = 0;
  v24 = 1;
LABEL_12:
  v26 = *(v6 + 16);
  v27 = v33;
  v26(v33, v10, v5);
  v28 = v32;
  v26(v32, v27, v5);
  v29 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4988, &qword_21CBBBE30) + 48)];
  sub_21C9FA578(v24);
  sub_21C9FA588(v24);
  *v29 = v24;
  *(v29 + 1) = v25;
  v29[16] = 0;
  v30 = *(v6 + 8);
  v30(v10, v5);
  sub_21C9FA588(v24);
  return (v30)(v27, v5);
}

uint64_t sub_21C9FA150@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[5];
  v38[4] = a1[4];
  v38[5] = v5;
  v38[6] = a1[6];
  v6 = a1[1];
  v38[0] = *a1;
  v38[1] = v6;
  v7 = a1[3];
  v38[2] = a1[2];
  v38[3] = v7;
  v8 = *(a2 + 48);
  if (*(v8 + 16) && (v9 = sub_21CB10D94(v38), (v10 & 1) != 0))
  {
    v28 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v28 = 0;
  }

  v11 = *(a2 + 8);
  v12 = sub_21CB85214();
  v26 = v13;
  v27 = v12;
  v14 = sub_21CB85214();
  v24 = v15;
  v25 = v14;
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4958, &qword_21CBBBE20) + 36));
  v17 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4978, &qword_21CBBBE28) + 36);
  sub_21CB85214();
  sub_21CB82374();
  sub_21CB85214();
  sub_21CB82374();
  v18 = v11 * (1.0 - *(a2 + 16));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4990, &qword_21CBBBE38) + 36);
  v20 = *MEMORY[0x277CE13C0];
  v21 = sub_21CB85284();
  (*(*(v21 - 8) + 104))(&v17[v19], v20, v21);
  *v17 = v32;
  v17[8] = v33;
  *(v17 + 2) = v34;
  v17[24] = v35;
  *(v17 + 4) = v36;
  *(v17 + 5) = v37;
  *(v17 + 3) = v29;
  *(v17 + 4) = v30;
  *(v17 + 5) = v31;
  *(v17 + 12) = v18;
  *(v17 + 13) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4998, &unk_21CBBBE40);
  v23 = &v17[*(result + 36)];
  *v23 = v27;
  v23[1] = v26;
  *v16 = v25;
  v16[1] = v24;
  *a3 = v28;
  *(a3 + 8) = v11;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_21C9FA394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[3];
  v12 = v2[2];
  v13 = v4;
  v14 = v2[4];
  v5 = v2[1];
  v10 = *v2;
  v11 = v5;
  v15 = *(v2 + 80);
  v6 = sub_21C9F9A9C(a1);
  v7 = -(*(&v10 + 1) * *&v11);
  *a2 = sub_21CB83074();
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4940, &qword_21CBBBE08);
  sub_21C9F9DBC(v6, &v10, (a2 + *(v8 + 44)));
}