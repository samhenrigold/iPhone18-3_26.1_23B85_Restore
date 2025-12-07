uint64_t sub_2561EAA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830820, &qword_2561F0028);
  MEMORY[0x28223BE20](v53);
  v4 = &v46 - v3;
  v5 = sub_2561EDD20();
  v51 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830780, &qword_2561EFF80);
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830828, &qword_2561F0030);
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830778, &qword_2561EFF78);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830768, &qword_2561EFF70);
  v16 = MEMORY[0x28223BE20](v52);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  if (*(a1 + 16))
  {
    v47 = &v46 - v19;
    sub_2561EDB20();
    sub_2561EDD10();
    sub_2561E1BB8(&qword_27F830788, &qword_27F830780, &qword_2561EFF80, MEMORY[0x277CDD7F8]);
    sub_2561EC670(&qword_27F830790, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    sub_2561EDF90();
    (*(v51 + 8))(v7, v5);
    (*(v48 + 8))(v10, v8);
    sub_2561EE1F0();
    sub_2561EDBE0();
    (*(v49 + 32))(v15, v12, v50);
    v20 = &v15[*(v13 + 36)];
    v21 = v61;
    *(v20 + 4) = v60;
    *(v20 + 5) = v21;
    *(v20 + 6) = v62;
    v22 = v57;
    *v20 = v56;
    *(v20 + 1) = v22;
    v23 = v59;
    *(v20 + 2) = v58;
    *(v20 + 3) = v23;
    v24 = &v18[*(v52 + 36)];
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8307A0, &qword_2561EFF88) + 28);
    v26 = *MEMORY[0x277CDF440];
    v27 = sub_2561EDB10();
    (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
    *v24 = swift_getKeyPath();
    sub_2561ECE3C(v15, v18, &qword_27F830778, &qword_2561EFF78);
    v28 = v47;
    sub_2561ECE3C(v18, v47, &qword_27F830768, &qword_2561EFF70);
    sub_2561D7E98(v28, v4, &qword_27F830768, &qword_2561EFF70);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8307B0, &qword_2561EFF90);
    sub_2561EBE88();
    sub_2561EC08C();
    sub_2561EDCF0();
    return sub_2561D8584(v28, &qword_27F830768, &qword_2561EFF70);
  }

  else
  {
    v30 = *(a1 + 8);
    *&v56 = *a1;
    *(&v56 + 1) = v30;
    sub_2561EBCE4();

    v31 = sub_2561EDF50();
    v33 = v32;
    v35 = v34;
    v36 = sub_2561EDF20();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_2561DA350(v31, v33, v35 & 1);

    sub_2561EE1F0();
    sub_2561EDBE0();
    v55 = v40 & 1;
    *v4 = v36;
    *(v4 + 1) = v38;
    v4[16] = v40 & 1;
    *(v4 + 3) = v42;
    v43 = v61;
    *(v4 + 6) = v60;
    *(v4 + 7) = v43;
    *(v4 + 8) = v62;
    v44 = v57;
    *(v4 + 2) = v56;
    *(v4 + 3) = v44;
    v45 = v59;
    *(v4 + 4) = v58;
    *(v4 + 5) = v45;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8307B0, &qword_2561EFF90);
    sub_2561EBE88();
    sub_2561EC08C();
    return sub_2561EDCF0();
  }
}

uint64_t OBKListView<>.init(title:detailText:symbolName:caption:primaryButton:secondaryButton:applyListRowBackground:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, ValueMetadata *a15)
{
  v40 = &type metadata for Solarium;
  v17 = sub_2561D9210();
  v41 = v17;
  LOBYTE(v37) = 0;
  v18 = sub_2561EDA60();
  __swift_destroy_boxed_opaque_existential_1(&v37);
  v19 = 0;
  if (v18)
  {
    v40 = &type metadata for Solarium;
    v41 = v17;
    LOBYTE(v37) = 1;
    v19 = sub_2561EDA60();
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  v37 = MEMORY[0x277D84A98];
  v38 = a14;
  v39 = MEMORY[0x277CE1538];
  v40 = a15;
  v20 = type metadata accessor for OBKListView(0, &v37);
  *(a9 + v20[21]) = v19 & 1;
  v21 = a9 + v20[22];
  v42 = 0;
  sub_2561EE130();
  v22 = v38;
  *v21 = v37;
  *(v21 + 8) = v22;
  v23 = a9 + v20[23];
  v42 = 0;
  sub_2561EE130();
  v24 = v38;
  *v23 = v37;
  *(v23 + 8) = v24;
  v25 = *(a8 + 48);
  *(a9 + 96) = *(a8 + 32);
  *(a9 + 112) = v25;
  *(a9 + 128) = *(a8 + 64);
  v26 = *(a8 + 16);
  *(a9 + 64) = *a8;
  *(a9 + 80) = v26;
  v27 = *(a10 + 48);
  *(a9 + 184) = *(a10 + 32);
  *(a9 + 200) = v27;
  *(a9 + 216) = *(a10 + 64);
  v28 = *(a10 + 16);
  *(a9 + 152) = *a10;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 240) = a5;
  *(a9 + 248) = a6;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = a12;
  *(a9 + 56) = a13;
  *(a9 + 144) = *(a8 + 80);
  *(a9 + 232) = *(a10 + 80);
  *(a9 + 168) = v28;
  result = sub_2561E30CC(a7, a9 + v20[19]);
  *(a9 + v20[20]) = (a11 == 2) | a11 & 1;
  return result;
}

void sub_2561EB390(uint64_t a1)
{
  sub_2561EB5D8(319, &qword_27F830398, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2561EB524(319);
    if (v2 <= 0x3F)
    {
      sub_2561EB588();
      if (v3 <= 0x3F)
      {
        sub_2561EB5D8(319, &qword_27F8303B8, &type metadata for OBKButton, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2561D7FB4(319);
          if (v5 <= 0x3F)
          {
            sub_2561EB5D8(319, &qword_27F8306B8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
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

void sub_2561EB524(uint64_t a1)
{
  if (!qword_27F8306A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8306A8, qword_2561EFDC8);
    v1 = sub_2561EE3D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8306A0);
    }
  }
}

unint64_t sub_2561EB588()
{
  result = qword_27F8306B0;
  if (!qword_27F8306B0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F8306B0);
  }

  return result;
}

void sub_2561EB5D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_2561EB638()
{
  v0 = objc_opt_self();
  v1 = sub_2561EE280();
  v2 = [v0 linkWithBundleIdentifier_];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x277D37670]);

  return [v4 init];
}

uint64_t sub_2561EB6DC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, id a5)
{
  result = [a5 view];
  if (result)
  {
    v8 = result;
    [result intrinsicContentSize];

    if (a2)
    {
      return 0x7FF0000000000000;
    }

    else
    {
      return a1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2561EB75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2561EB8A4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2561EB7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2561EB8A4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2561EB824(uint64_t a1)
{
  sub_2561EB8A4();
  sub_2561EDDF0();
  __break(1u);
}

unint64_t sub_2561EB850()
{
  result = qword_27F8306C0;
  if (!qword_27F8306C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8306C0);
  }

  return result;
}

unint64_t sub_2561EB8A4()
{
  result = qword_27F8306C8;
  if (!qword_27F8306C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8306C8);
  }

  return result;
}

uint64_t sub_2561EB910(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (BYTE2(a6) != 255)
  {
    return sub_2561EBA50(result, a2, a3, a4, a5, a6, BYTE2(a6) & 1, sub_2561EB96C, sub_2561EB9C4);
  }

  return result;
}

uint64_t sub_2561EB96C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_2561EB9B4(a1, a2, a3 & 1);
}

uint64_t sub_2561EB9B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2561EB9C4(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2561EB9D4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2561EB9E4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2561EB9F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (BYTE2(a6) != 255)
  {
    return sub_2561EBA50(result, a2, a3, a4, a5, a6, BYTE2(a6) & 1, sub_2561EBA70, sub_2561EBAB8);
  }

  return result;
}

uint64_t sub_2561EBA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t (*a9)(uint64_t, uint64_t, uint64_t))
{
  if (a7)
  {
    return a9(a1, a2, a3 & 1);
  }

  else
  {
    return a8(a1, a2, a3, a4, a5, a6, (a6 >> 8) & 1);
  }
}

uint64_t sub_2561EBA70(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_2561DA350(a1, a2, a3 & 1);
}

uint64_t sub_2561EBAB8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_2561EBAC8()
{
  result = qword_27F8306E8;
  if (!qword_27F8306E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8306D8, &qword_2561EFEE8);
    sub_2561EBB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8306E8);
  }

  return result;
}

unint64_t sub_2561EBB4C()
{
  result = qword_27F8306F0;
  if (!qword_27F8306F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8306F8, &qword_2561EFEF8);
    sub_2561E1BB8(&qword_27F830700, &qword_27F830708, &qword_2561EFF00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8306F0);
  }

  return result;
}

unint64_t sub_2561EBC04()
{
  result = qword_27F830710;
  if (!qword_27F830710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8306E0, &qword_2561EFEF0);
    sub_2561EB850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830710);
  }

  return result;
}

unint64_t sub_2561EBC90()
{
  result = qword_27F830720;
  if (!qword_27F830720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830720);
  }

  return result;
}

unint64_t sub_2561EBCE4()
{
  result = qword_27F830728;
  if (!qword_27F830728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830728);
  }

  return result;
}

uint64_t sub_2561EBD38()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for OBKListView(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 136) & ~*(v5 + 80));

  return sub_2561E9ECC((v0 + 6), v6, v1, v2, v3, v4);
}

unint64_t sub_2561EBDFC()
{
  result = qword_27F830758;
  if (!qword_27F830758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830750, &qword_2561EFF68);
    sub_2561EBE88();
    sub_2561EC08C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830758);
  }

  return result;
}

unint64_t sub_2561EBE88()
{
  result = qword_27F830760;
  if (!qword_27F830760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830768, &qword_2561EFF70);
    sub_2561EBF40();
    sub_2561E1BB8(&qword_27F830798, &qword_27F8307A0, &qword_2561EFF88, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830760);
  }

  return result;
}

unint64_t sub_2561EBF40()
{
  result = qword_27F830770;
  if (!qword_27F830770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830778, &qword_2561EFF78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830780, &qword_2561EFF80);
    sub_2561EDD20();
    sub_2561E1BB8(&qword_27F830788, &qword_27F830780, &qword_2561EFF80, MEMORY[0x277CDD7F8]);
    sub_2561EC670(&qword_27F830790, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830770);
  }

  return result;
}

unint64_t sub_2561EC08C()
{
  result = qword_27F8307A8;
  if (!qword_27F8307A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8307B0, &qword_2561EFF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8307A8);
  }

  return result;
}

uint64_t sub_2561EC110(uint64_t a1)
{
  v2 = sub_2561EDB10();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return MEMORY[0x259C5DE00](v4);
}

unint64_t sub_2561EC1D8()
{
  result = qword_27F8307B8;
  if (!qword_27F8307B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830748, &qword_2561EFF58);
    sub_2561E1BB8(&qword_27F8307C0, &qword_27F8307C8, &qword_2561EFFC8, MEMORY[0x277CDF028]);
    sub_2561E1BB8(&qword_27F830798, &qword_27F8307A0, &qword_2561EFF88, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8307B8);
  }

  return result;
}

unint64_t sub_2561EC2BC()
{
  result = qword_27F8307E0;
  if (!qword_27F8307E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830740, &qword_2561EFF50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830748, &qword_2561EFF58);
    sub_2561EDD80();
    sub_2561EC1D8();
    sub_2561EC670(&qword_27F8307D0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    sub_2561E1BB8(&qword_27F8307E8, &qword_27F8307D8, &qword_2561EFFD0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8307E0);
  }

  return result;
}

unint64_t sub_2561EC418()
{
  result = qword_27F8307F8;
  if (!qword_27F8307F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8307F0, &qword_2561F0008);
    sub_2561E1BB8(&qword_27F830800, &qword_27F830808, &unk_2561F0010, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8307F8);
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_2561EC570()
{
  result = qword_27F830848;
  if (!qword_27F830848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830830, &qword_2561F0038);
    sub_2561EDC60();
    sub_2561EC670(&qword_27F830840, MEMORY[0x277CDDE40], MEMORY[0x277CDDE38]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830848);
  }

  return result;
}

uint64_t sub_2561EC670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2561EC6B8()
{
  result = qword_27F830858;
  if (!qword_27F830858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830838, &qword_2561F0040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830748, &qword_2561EFF58);
    sub_2561EDB90();
    sub_2561EC1D8();
    sub_2561EC670(&qword_27F830850, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
    swift_getOpaqueTypeConformance2();
    sub_2561E1BB8(&qword_27F830860, &qword_27F830868, &qword_2561F0048, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830858);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 32);
  v10[0] = *(v0 + 16);
  v10[1] = v1;
  v2 = type metadata accessor for OBKListView(0, v10);
  v3 = (v0 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80)));

  if (v3[4])
  {
  }

  if (v3[9])
  {

    if (v3[16])
    {
    }
  }

  if (v3[20])
  {

    if (v3[27])
    {
    }
  }

  v4 = v3 + *(v2 + 76);
  v5 = type metadata accessor for OBKCaption(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        goto LABEL_13;
      case 1:

        v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830418, &qword_2561EF3B8) + 64);
        v8 = sub_2561ED970();
        (*(*(v8 - 8) + 8))(&v4[v7], v8);
        break;
      case 0:
LABEL_13:

        break;
    }
  }

  return swift_deallocObject();
}

uint64_t sub_2561ECA54(uint64_t *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for OBKListView(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_2561E7560(a1, v8, v3, v4, v5, v6);
}

uint64_t sub_2561ECB00()
{
  v1 = *(v0 + 56) > 0.0;
  v2 = *(v0 + 32);
  v5[0] = *(v0 + 16);
  v5[1] = v2;
  v3 = type metadata accessor for OBKListView(0, v5);
  return sub_2561E2D40(v1, v3);
}

unint64_t sub_2561ECB80()
{
  result = qword_27F830890;
  if (!qword_27F830890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B8, &qword_2561EFD18);
    sub_2561E1BB8(&qword_27F830898, &qword_27F8308A0, &qword_2561F0060, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830890);
  }

  return result;
}

unint64_t sub_2561ECC74()
{
  result = qword_27F8308C0;
  if (!qword_27F8308C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
    sub_2561ECD00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8308C0);
  }

  return result;
}

unint64_t sub_2561ECD00()
{
  result = qword_27F8308C8;
  if (!qword_27F8308C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8308D0, &qword_2561F0078);
    sub_2561ECDB8();
    sub_2561E1BB8(&qword_27F8308B8, &qword_27F830590, &qword_2561EFCF0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8308C8);
  }

  return result;
}

unint64_t sub_2561ECDB8()
{
  result = qword_27F8308D8;
  if (!qword_27F8308D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8308E0, &qword_2561F0080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8308D8);
  }

  return result;
}

uint64_t sub_2561ECE3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_2561ECEA4()
{
  result = qword_27F8308F0;
  if (!qword_27F8308F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A0, &qword_2561EFD00);
    sub_2561E1BB8(&qword_27F8308F8, &qword_27F8308B0, &qword_2561F0070, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8308F0);
  }

  return result;
}

unint64_t sub_2561ECF5C()
{
  result = qword_27F830900;
  if (!qword_27F830900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830900);
  }

  return result;
}

uint64_t sub_2561ECFB0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2561ECFC0()
{
  result = qword_27F830918;
  if (!qword_27F830918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830910, &qword_2561F0098);
    sub_2561EBB4C();
    sub_2561E1BB8(&qword_27F830920, &qword_27F830928, &qword_2561F00A0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830918);
  }

  return result;
}

uint64_t sub_2561ED078(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_2561EB9B4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2561ED0C8(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_2561DA350(result, a2, a3 & 1);
  }

  return result;
}

double sub_2561ED118(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  return result;
}

unint64_t sub_2561ED164()
{
  result = qword_27F830938;
  if (!qword_27F830938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305C8, &unk_2561EFD20);
    sub_2561ED1E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830938);
  }

  return result;
}

unint64_t sub_2561ED1E8()
{
  result = qword_27F830940;
  if (!qword_27F830940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830948, &qword_2561F00B0);
    sub_2561ED274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830940);
  }

  return result;
}

unint64_t sub_2561ED274()
{
  result = qword_27F830950;
  if (!qword_27F830950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830958, &qword_2561F00B8);
    sub_2561ED300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830950);
  }

  return result;
}

unint64_t sub_2561ED300()
{
  result = qword_27F830960;
  if (!qword_27F830960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830968, &unk_2561F00C0);
    sub_2561E5FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830960);
  }

  return result;
}

const char *iCloudMailSettingsFeatureFlag.feature.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = "iCloudMailSettingsBYOD";
    v8 = "PaintballSecurity";
    if (v1 != 10)
    {
      v8 = "";
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = "iCloudMailSettingsMailAssistant";
    v10 = "MailAppBocceball";
    if (v1 != 7)
    {
      v10 = "iCloudMailSettingsMailImport";
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = "iCloudMailSettingsMain";
    v3 = "iCloudMailSettingsRules";
    v4 = "iCloudMailSettingsMailForwarding";
    if (v1 != 4)
    {
      v4 = "iCloudMailSettingsMailboxBehavior";
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = "iCloudMailSettingsAlias";
    if (v1 != 1)
    {
      v5 = "iCloudMailSettingsAutoReply";
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
}

uint64_t iCloudMailSettingsFeatureFlag.isEnabled.getter()
{
  v1 = *v0;
  if (v1 == 11)
  {
    LOBYTE(v4[0]) = 2;
    if (iCloudMailSettingsFeatureFlag.isEnabled.getter() & 1) != 0 || (iCloudMailSettingsFeatureFlag.isEnabled.getter() & 1) != 0 || (LOBYTE(v4[0]) = 5, (iCloudMailSettingsFeatureFlag.isEnabled.getter()))
    {
      v2 = 1;
    }

    else
    {
      LOBYTE(v4[0]) = 3;
      v2 = iCloudMailSettingsFeatureFlag.isEnabled.getter();
    }
  }

  else
  {
    v4[3] = &type metadata for iCloudMailSettingsFeatureFlag;
    v4[4] = sub_2561ED588();
    LOBYTE(v4[0]) = v1;
    v2 = sub_2561EDA60();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return v2 & 1;
}

unint64_t sub_2561ED588()
{
  result = qword_280E1BDF8;
  if (!qword_280E1BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E1BDF8);
  }

  return result;
}

uint64_t iCloudMailSettingsFeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_2561EE510();
  MEMORY[0x259C5E720](v1);
  return sub_2561EE530();
}

unint64_t sub_2561ED67C()
{
  result = qword_27F830970;
  if (!qword_27F830970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830970);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for iCloudMailSettingsFeatureFlag(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for iCloudMailSettingsFeatureFlag(uint64_t result, unsigned int a2, unsigned int a3)
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