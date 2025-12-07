uint64_t sub_23D88C268(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = *(sub_23D8DE490() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1 + ((v6 + *(v5 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80));

  return sub_23D88A9F0(a1, v7, v8, v1 + v6, v9, v3, v4);
}

id static NSNumberFormatter.decimal.getter(__n128 a1)
{
  if (qword_27E2ECED0 != -1)
  {
    swift_once();
  }

  v2 = qword_27E2EF148;

  return v2;
}

uint64_t sub_23D88C404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23D88C454(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_23D88C49C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23D88C5D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BottomPocketModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_23D8DD7F0();
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD6C0();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD4F0();
  sub_23D8DD020();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D88C7F0(uint64_t a1, int a2)
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

uint64_t sub_23D88C838(uint64_t result, int a2, int a3)
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

uint64_t sub_23D88C8B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_23D8DC250();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  v46 = v1;
  v14 = *(v1 + 2);
  if (!v14)
  {
    sub_23D8DC430();
    sub_23D88D1FC(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
    sub_23D8DD120();
    __break(1u);
    goto LABEL_27;
  }

  v44 = v14;
  sub_23D8DC2A0();
  v15 = *MEMORY[0x277CE7200];
  v42 = *(v4 + 104);
  v42(v11, v15, v3);
  sub_23D88D1FC(&qword_27E2EDE60, MEMORY[0x277CE7208], MEMORY[0x277CE7218]);
  sub_23D8DE980();
  sub_23D8DE980();
  v47 = a1;
  if (v50 == v49)
  {
    v45 = 1;
  }

  else
  {
    v45 = sub_23D8DED20();
  }

  v16 = *(v4 + 8);
  v16(v11, v3);
  v16(v13, v3);

  v18 = v43;
  v17 = v44;
  sub_23D8DC2A0();

  v42(v48, v15, v3);
  sub_23D8DE980();
  sub_23D8DE980();
  if (v50 == v49)
  {
    v16(v48, v3);
    v16(v18, v3);

    v19 = v46;
    goto LABEL_8;
  }

  v20 = sub_23D8DED20();
  v16(v48, v3);
  v16(v18, v3);

  v19 = v46;
  if (v20)
  {
LABEL_8:
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v21 = 0x737561702E727861;
    if (!qword_27E2F3C80)
    {
      v22 = 0xE900000000000065;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v21 = 0x79616C702E727861;
  if (qword_27E2F3C80)
  {
LABEL_15:
    v23 = qword_27E2F3C80;
    v24 = sub_23D8DE830();
    v25 = sub_23D8DE830();
    v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

    v21 = sub_23D8DE870();
    v22 = v27;

    goto LABEL_16;
  }

  v22 = 0xE800000000000000;
LABEL_16:
  v50 = *v19;
  v28 = *(v19 + 4);
  v29 = swift_allocObject();
  v30 = v19[1];
  v29[1] = *v19;
  v29[2] = v30;
  v29[3] = v19[2];
  v31 = v17;
  sub_23D88D184(&v50, &v49);

  sub_23D8DDA60();
  sub_23D8DDB00();
  v32 = sub_23D8DDB70();

  KeyPath = swift_getKeyPath();
  if (!v28)
  {
LABEL_27:
    sub_23D8DC9F0();
    sub_23D88D1FC(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
    return result;
  }

  v34 = KeyPath;
  sub_23D8380E8();

  sub_23D8DC960();

  sub_23D8DC7E0();

  v35 = sub_23D8DEB80();
  v36 = sub_23D8DEB70();

  if (v36)
  {
    result = sub_23D8DE220();
  }

  else
  {
    result = sub_23D8DE240();
  }

  v38 = 0xE90000000000006CLL;
  if (v45)
  {
    v38 = 0xEA00000000006C6CLL;
  }

  v39 = 0x6C69662E79616C70;
  if (v45)
  {
    v39 = 0x69662E6573756170;
  }

  v40 = v47;
  *v47 = v39;
  v40[1] = v38;
  v40[2] = v21;
  v40[3] = v22;
  v40[4] = 0;
  *(v40 + 40) = 1;
  v40[6] = sub_23D88D17C;
  v40[7] = v29;
  v40[8] = v34;
  v40[9] = v32;
  v40[10] = result;
  return result;
}

void sub_23D88CF5C(uint64_t a1)
{
  v2 = sub_23D8DC250();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = v6;
    sub_23D8DC2A0();
    v8 = (*(v3 + 88))(v5, v2);
    if (v8 == *MEMORY[0x277CE7200])
    {
      sub_23D8DC3C0();
    }

    else if (v8 == *MEMORY[0x277CE71E8])
    {
      sub_23D8DC3E0();
    }

    else if (v8 == *MEMORY[0x277CE71F0])
    {
      sub_23D8DC3D0();
    }

    else if (v8 == *MEMORY[0x277CE71F8])
    {
      sub_23D8DC3A0();
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    sub_23D8DC430();
    sub_23D88D1FC(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
    sub_23D8DD120();
    __break(1u);
  }
}

uint64_t sub_23D88D134()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23D88D184(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF1D8, &qword_23D8E3698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D88D1FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23D88D248()
{
  result = qword_27E2EF1E0;
  if (!qword_27E2EF1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF1E8, &qword_23D8E36D0);
    sub_23D88D300();
    sub_23D835AD0(&qword_27E2EED38, &qword_27E2EED40, &unk_23D8E3C30, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF1E0);
  }

  return result;
}

unint64_t sub_23D88D300()
{
  result = qword_27E2EF1F0;
  if (!qword_27E2EF1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF1F8, &qword_23D8E36D8);
    sub_23D88D3B8();
    sub_23D835AD0(&qword_27E2EF080, &qword_27E2EF088, &qword_23D8E3190, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF1F0);
  }

  return result;
}

unint64_t sub_23D88D3B8()
{
  result = qword_27E2EF200;
  if (!qword_27E2EF200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF200);
  }

  return result;
}

uint64_t sub_23D88D444@<X0>(uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23D88D4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>)
{
  v43 = a5;
  v44 = a6;
  v42 = a4;
  v17 = sub_23D8DC4D0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D83C744(a1, a9, &qword_27E2ED118, "r^");
  v22 = type metadata accessor for SSHUDRoundView(0, a7, a8, v21);
  sub_23D83C744(a2, a9 + v22[9], &qword_27E2ED110, &unk_23D8E03D0);
  v23 = (a9 + v22[10]);
  type metadata accessor for SSStore(0);
  sub_23D898790(&qword_27E2ED008, type metadata accessor for SSStore, &unk_23D8E1DE0);
  *v23 = sub_23D8DD140();
  v23[1] = v24;
  v25 = a9 + v22[11];
  *&v45 = a10;
  sub_23D8DE310();
  v26 = *(&v46 + 1);
  *v25 = v46;
  *(v25 + 8) = v26;
  v27 = a9 + v22[12];
  LOBYTE(v45) = a3;
  sub_23D8DE310();
  v28 = *(&v46 + 1);
  *v27 = v46;
  *(v27 + 8) = v28;
  v29 = v22[13];
  v45 = 8;
  sub_23D8DE310();
  *(a9 + v29) = v46;
  v30 = (a9 + v22[14]);
  *v30 = sub_23D883540(0);
  v30[1] = v31;
  v32 = (a9 + v22[15]);
  v33 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v45 = [v33 init];
  sub_23D856774(0, &qword_27E2EF328, 0x277D755B8);
  sub_23D8DE310();
  v34 = *(&v46 + 1);
  *v32 = v46;
  v32[1] = v34;
  v35 = (a9 + v22[16]);
  *v35 = sub_23D8DCEF0();
  v35[1] = v36;
  v37 = a9 + v22[17];
  LOBYTE(v45) = 0;
  sub_23D8DE310();
  v38 = *(&v46 + 1);
  *v37 = v46;
  *(v37 + 8) = v38;
  (*(v18 + 104))(v20, *MEMORY[0x277CE7238], v17);
  result = sub_23D88DD18(v20);
  v40 = a9 + v22[19];
  v41 = v44;
  *v40 = v43;
  *(v40 + 8) = v41;
  *(v40 + 16) = 0;
  return result;
}

uint64_t sub_23D88D7BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D8DD3C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23D83C67C(v2, &v14 - v9, &qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D8DCCB0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23D8DEAB0();
    v13 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_23D88D9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23D8DD3C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_23D83C67C(v2 + *(a1 + 36), &v15 - v10, &qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23D8DCF90();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_23D8DEAB0();
    v14 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_23D88DBC0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF350, &qword_23D8E3800);
  sub_23D8DE320();
  return v2;
}

uint64_t sub_23D88DC6C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBE0, &qword_23D8E1538);
  sub_23D8DE320();
  return v2;
}

uint64_t sub_23D88DD18(uint64_t a1)
{
  v3 = sub_23D8DC4D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_23D8DE310();
  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_23D88DE10(uint64_t a1)
{
  v2 = sub_23D8DC4D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF230, &qword_23D8E3738);
  sub_23D8DE330();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_23D88DF20(uint64_t a1)
{
  sub_23D8DBFB0();
  sub_23D898790(qword_27E2EEC90, MEMORY[0x277CE78A0], MEMORY[0x277CE7898]);

  return sub_23D8DCD40();
}

uint64_t SSHUDRoundView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v92 = sub_23D8DCCB0();
  v91 = *(v92 - 8);
  v4 = MEMORY[0x28223BE20](v92);
  v90 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v89 = &v78 - v6;
  v85 = sub_23D8DC4D0();
  v86 = *(v85 - 8);
  v7 = MEMORY[0x28223BE20](v85);
  v81 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  MEMORY[0x28223BE20](v7);
  v102 = v10;
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF208, &qword_23D8E3710);
  MEMORY[0x28223BE20](v80);
  v13 = &v78 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF210, &qword_23D8E3718);
  v83 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v98 = &v78 - v14;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF218, &qword_23D8E3720);
  MEMORY[0x28223BE20](v87);
  v99 = &v78 - v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF220, &qword_23D8E3728) - 8;
  MEMORY[0x28223BE20](v88);
  v84 = &v78 - v16;
  *v13 = sub_23D8DD560();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF228, &qword_23D8E3730) + 44);
  v18 = *(a1 + 24);
  v19 = *(a1 + 16);
  v97 = v19;
  v20 = v18;
  v95 = v18;
  v22 = type metadata accessor for SSHUDRoundView(0, v19, v18, v21);
  sub_23D88EB34(v22, &v13[v17]);
  v23 = v2 + *(a1 + 64);
  v94 = v2;
  v109 = [*(v23 + 8) stopType];
  v24 = v9;
  v25 = v9 + 16;
  v26 = *(v9 + 16);
  v101 = v25;
  v79 = v11;
  v26(v11, v2, a1);
  v96 = *(v24 + 80);
  v27 = v24;
  v28 = (v96 + 32) & ~v96;
  v29 = swift_allocObject();
  *(v29 + 16) = v19;
  *(v29 + 24) = v20;
  v100 = *(v27 + 32);
  v103 = v27 + 32;
  v100(v29 + v28, v11, a1);
  type metadata accessor for AXSpeakStopType(0);
  v78 = v30;
  v31 = sub_23D835AD0(&qword_27E2EF238, &qword_27E2EF208, &qword_23D8E3710, MEMORY[0x277CE1198]);
  v32 = sub_23D898790(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType, &unk_23D8E0188);
  v33 = v80;
  sub_23D8DE070();

  sub_23D83C6E4(v13, &qword_27E2EF208, &qword_23D8E3710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF230, &qword_23D8E3738);
  v34 = v94;
  v35 = v81;
  sub_23D8DE320();
  v36 = v79;
  v26(v79, v34, a1);
  v37 = swift_allocObject();
  v38 = v95;
  *(v37 + 16) = v97;
  *(v37 + 24) = v38;
  v100(v37 + v28, v36, a1);
  v109 = v33;
  v110 = v78;
  v111 = v31;
  v112 = v32;
  swift_getOpaqueTypeConformance2();
  sub_23D898790(&qword_27E2EF240, MEMORY[0x277CE7250], MEMORY[0x277CE7260]);
  v39 = v82;
  v40 = v85;
  v41 = v98;
  sub_23D8DE060();

  (*(v86 + 8))(v35, v40);
  (*(v83 + 8))(v41, v39);
  v42 = v36;
  v43 = v36;
  v44 = v94;
  v26(v43, v94, a1);
  v45 = swift_allocObject();
  v46 = v97;
  v47 = v95;
  *(v45 + 16) = v97;
  *(v45 + 24) = v47;
  v100(v45 + v28, v42, a1);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF248, &qword_23D8E3740);
  v49 = v99;
  v50 = &v99[*(v48 + 36)];
  *v50 = sub_23D8969DC;
  v50[1] = v45;
  v50[2] = 0;
  v50[3] = 0;
  v26(v42, v44, a1);
  v51 = swift_allocObject();
  *(v51 + 16) = v46;
  *(v51 + 24) = v47;
  v100(v51 + v28, v42, a1);
  v52 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF250, &qword_23D8E3748) + 36));
  *v52 = 0;
  v52[1] = 0;
  v52[2] = sub_23D896A8C;
  v52[3] = v51;
  LOBYTE(v51) = sub_23D8DD9E0();
  sub_23D8DCC20();
  v53 = v87;
  v54 = v49 + *(v87 + 36);
  *v54 = v51;
  *(v54 + 8) = v55;
  *(v54 + 16) = v56;
  *(v54 + 24) = v57;
  *(v54 + 32) = v58;
  *(v54 + 40) = 0;
  sub_23D8DE5D0();
  v107 = v46;
  v108 = v47;
  v104 = v46;
  v105 = v47;
  v106 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF258, &qword_23D8E3750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF260, &qword_23D8E3758);
  v59 = sub_23D896B00();
  v60 = sub_23D8DD090();
  v61 = sub_23D898790(&qword_27E2EE3D0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v109 = v53;
  v110 = v60;
  v111 = v59;
  v112 = v61;
  swift_getOpaqueTypeConformance2();
  sub_23D896DF0();
  v62 = v84;
  sub_23D8DE0A0();
  sub_23D83C6E4(v49, &qword_27E2EF218, &qword_23D8E3720);
  v63 = v62;
  v64 = &v62[*(v88 + 44)];
  v65 = *(swift_checkMetadataState() + 20);
  v66 = *MEMORY[0x277CE0118];
  v67 = sub_23D8DD4E0();
  (*(*(v67 - 8) + 104))(&v64->i8[v65], v66, v67);
  *v64 = vdupq_n_s64(0x4042000000000000uLL);
  *(v64->i16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE30, &qword_23D8E4AD0) + 36)) = 256;
  v68 = v89;
  sub_23D88D7BC(v89);
  v69 = v91;
  v70 = v90;
  v71 = v92;
  (*(v91 + 104))(v90, *MEMORY[0x277CDF3C0], v92);
  v72 = v70;
  LOBYTE(v70) = sub_23D8DCCA0();
  v73 = *(v69 + 8);
  v73(v72, v71);
  v73(v68, v71);
  if (v70)
  {
    sub_23D8DE240();
  }

  else
  {
    sub_23D8DE220();
  }

  v74 = sub_23D8DE250();

  v75 = v93;
  sub_23D896EA8(v63, v93);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2EF288, &qword_23D8E3760);
  v77 = (v75 + *(result + 36));
  *v77 = v74;
  v77[1] = 0x4020000000000000;
  v77[2] = 0;
  v77[3] = 0;
  return result;
}

uint64_t sub_23D88EB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D8DD420();
  v5 = sub_23D88F560(a1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF358, &qword_23D8E3818);
  sub_23D88F730(*(a1 + 16), *(a1 + 24), (a2 + *(v6 + 44)));
  LOBYTE(a1) = sub_23D8DD9D0();
  sub_23D8DCC20();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF360, &qword_23D8E3820);
  v16 = a2 + *(result + 36);
  *v16 = a1;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

id sub_23D88EC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SSHUDRoundView(0, a2, a3, a4);
  result = [*(a1 + *(v5 + 64) + 8) stopType];
  if (result)
  {
    return sub_23D88EC50(v5);
  }

  return result;
}

uint64_t sub_23D88EC50(uint64_t a1)
{
  v2 = sub_23D88DC6C(a1);
  [v2 invalidate];

  sub_23D88DCC0(0, a1);

  return sub_23D88DC14(8, a1);
}

uint64_t sub_23D88ECB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for SSHUDRoundView(0, a4, a5, a4);
  v7 = *(a3 + *(v6 + 64) + 8);
  swift_unknownObjectRetain();
  sub_23D8DC490();
  [v7 speedButtonSelectionPressed_];
  swift_unknownObjectRelease();
  sub_23D88EC50(v6);
  return sub_23D88EFF0(v6);
}

uint64_t sub_23D88ED3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D8DC4D0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v35 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v32 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v33 = v32 - v14;
  MEMORY[0x28223BE20](v13);
  v34 = v32 - v15;
  v17 = type metadata accessor for SSHUDRoundView(0, a2, a3, v16);
  sub_23D88EFF0(v17);
  v32[1] = v17;
  v18 = *(v17 + 64);
  v36 = a1;
  [*(a1 + v18 + 8) speakingRateAsMultiplier];
  v20 = v19;
  result = sub_23D8DC4B0();
  v22 = result;
  v23 = *(result + 16);
  if (!v23)
  {
  }

  v24 = 0;
  v25 = v20;
  while (v24 < *(v22 + 16))
  {
    v26 = *(v7 + 16);
    v26(v12, v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v24, v6);
    sub_23D8DC490();
    if (vabds_f32(v27, v25) < 0.01)
    {

      v28 = *(v7 + 32);
      v29 = v33;
      v28(v33, v12, v6);
      v30 = v34;
      v28(v34, v29, v6);
      v31 = v35;
      v26(v35, v30, v6);
      sub_23D88DE10(v31);
      return (*(v7 + 8))(v30, v6);
    }

    ++v24;
    result = (*(v7 + 8))(v12, v6);
    if (v23 == v24)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23D88EFF0(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  (*(v3 + 16))(v5, v1, a1);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = *(a1 + 16);
  (*(v3 + 32))(v8 + v7, v5, a1);
  aBlock[4] = sub_23D8978D8;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D87DA4C;
  aBlock[3] = &block_descriptor_3;
  v9 = _Block_copy(aBlock);

  v10 = [v6 scheduledTimerWithTimeInterval:1 repeats:v9 block:1.0];
  _Block_release(v9);
  return sub_23D88DCC0(v10, a1);
}

uint64_t sub_23D88F1BC()
{
  v0 = sub_23D8DD090();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v1 + 20);
  v5 = *MEMORY[0x277CE0118];
  v6 = sub_23D8DD4E0();
  (*(*(v6 - 8) + 104))(&v3->i8[v4], v5, v6);
  *v3 = vdupq_n_s64(0x4042000000000000uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF218, &qword_23D8E3720);
  sub_23D896B00();
  sub_23D898790(&qword_27E2EE3D0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  sub_23D8DDCC0();
  return sub_23D868410(v3);
}

uint64_t sub_23D88F310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v3 = sub_23D8DE150();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D8DCCB0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  sub_23D88D7BC(&v21 - v12);
  (*(v8 + 104))(v11, *MEMORY[0x277CDF3C0], v7);
  v14 = sub_23D8DCCA0();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v15(v13, v7);
  if (v14)
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CE0EE0], v3);
    v16 = sub_23D8DE280();
  }

  else
  {
    v16 = sub_23D8DE240();
  }

  v17 = v16;
  v18 = sub_23D8DD9E0();
  sub_23D897868(v22, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF260, &qword_23D8E3758);
  v20 = a2 + *(result + 36);
  *v20 = v17;
  *(v20 + 8) = v18;
  return result;
}

double sub_23D88F560(uint64_t a1)
{
  v2 = sub_23D8DCF90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D88D9BC(a1, v5);
  v6 = (*(v3 + 88))(v5, v2);
  v7.n128_u64[0] = 30.0;
  if (v6 != *MEMORY[0x277CDF9F8] && v6 != *MEMORY[0x277CDF9E0] && v6 != *MEMORY[0x277CDF9E8] && v6 != *MEMORY[0x277CDF9D8] && v6 != *MEMORY[0x277CDF9F0] && v6 != *MEMORY[0x277CDFA00] && v6 != *MEMORY[0x277CDFA10])
  {
    v7.n128_u64[0] = 26.0;
    if (v6 != *MEMORY[0x277CDF988])
    {
      v7.n128_u64[0] = 22.0;
      if (v6 != *MEMORY[0x277CDF998])
      {
        v7.n128_u64[0] = 16.0;
        if (v6 != *MEMORY[0x277CDF9A8] && v6 != *MEMORY[0x277CDF9B8] && v6 != *MEMORY[0x277CDF9D0])
        {
          (*(v3 + 8))(v5, v2, v7);
          v7.n128_u64[0] = 30.0;
        }
      }
    }
  }

  return v7.n128_f64[0];
}

uint64_t sub_23D88F730@<X0>(void (*a1)(char *, char *, uint64_t)@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v56 = a1;
  v57 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF368, &qword_23D8E3828);
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v64 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF370, &qword_23D8E3830);
  v9 = *(v8 - 8);
  v62 = v8;
  v63 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v67 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF378, &qword_23D8E3838);
  v53 = *(v14 - 8);
  v15 = v53;
  v16 = MEMORY[0x28223BE20](v14);
  v59 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  v60 = &v50 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v58 = &v50 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v50 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v50 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v50 - v29;
  v32 = type metadata accessor for SSHUDRoundView(0, v56, a2, v31);
  v55 = v30;
  sub_23D88FC90(v32, v30);
  v54 = v28;
  sub_23D8905A4(v32, v28);
  v52 = v13;
  sub_23D890EBC(v32, v13);
  v51 = v25;
  sub_23D891C04(v32, v25);
  v33 = v61;
  sub_23D89251C(v32, v61);
  v34 = *(v15 + 16);
  v35 = v58;
  v34(v58, v30, v14);
  v34(v20, v28, v14);
  v36 = v62;
  v56 = *(v63 + 16);
  v56(v67, v13, v62);
  v37 = v59;
  v34(v59, v25, v14);
  v38 = *(v65 + 16);
  v38(v64, v33, v66);
  v39 = v57;
  v34(v57, v35, v14);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF380, &qword_23D8E3840);
  v34(&v39[v40[12]], v60, v14);
  v56(&v39[v40[16]], v67, v36);
  v34(&v39[v40[20]], v37, v14);
  v41 = &v39[v40[24]];
  v42 = v64;
  v43 = v66;
  v38(v41, v64, v66);
  v44 = *(v65 + 8);
  v45 = v43;
  v44(v61, v43);
  v46 = *(v53 + 8);
  v46(v51, v14);
  v47 = v62;
  v48 = *(v63 + 8);
  v48(v52, v62);
  v46(v54, v14);
  v46(v55, v14);
  v44(v42, v45);
  v46(v59, v14);
  v48(v67, v47);
  v46(v60, v14);
  return (v46)(v58, v14);
}

uint64_t sub_23D88FC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF388, &qword_23D8E3848);
  v4 = MEMORY[0x28223BE20](v62);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = &v56 - v6;
  v70 = sub_23D8DCF90();
  v72 = *(v70 - 8);
  v7 = MEMORY[0x28223BE20](v70);
  v71 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = &v56 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF390, &qword_23D8E3850);
  MEMORY[0x28223BE20](v60);
  v59 = &v56 - v10;
  v11 = sub_23D8DD080();
  v12 = *(v11 - 8);
  v67 = v11;
  v68 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v64 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4C0, &qword_23D8E39F0);
  v18 = *(v17 - 8);
  v65 = v17;
  v66 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4C8, &qword_23D8E39F8);
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4D0, &qword_23D8E3A00);
  MEMORY[0x28223BE20](v57);
  v73 = &v56 - v24;
  (*(v15 + 16))(&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v25 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v26 = swift_allocObject();
  v27 = a1;
  v28 = *(a1 + 16);
  v29 = *(v27 + 24);
  *(v26 + 16) = v28;
  *(v26 + 24) = v29;
  (*(v15 + 32))(v26 + v25, &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = v23;
  v31 = v21;
  v74 = v28;
  v75 = v29;
  v76 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4D8, &qword_23D8E3A08);
  sub_23D8986D8();
  sub_23D8DE360();
  v32 = v64;
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2EF4E8, &qword_27E2EF4C0, &qword_23D8E39F0, MEMORY[0x277CDF028]);
  sub_23D898790(&qword_27E2ED4F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v33 = v65;
  v34 = v67;
  sub_23D8DDD10();
  (*(v68 + 8))(v32, v34);
  (*(v66 + 8))(v20, v33);
  *(v30 + *(v31 + 36)) = sub_23D8DE260();
  v35 = 0x800000023D8E6980;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v36 = 0xD00000000000001CLL;
  if (qword_27E2F3C80)
  {
    v37 = qword_27E2F3C80;
    v38 = sub_23D8DE830();
    v39 = sub_23D8DE830();
    v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

    v36 = sub_23D8DE870();
    v35 = v41;
  }

  v43 = v69;
  v42 = v70;
  v77 = v36;
  v78 = v35;
  sub_23D8987D8();
  sub_23D83CB18();
  sub_23D8DDE10();

  sub_23D83C6E4(v30, &qword_27E2EF4C8, &qword_23D8E39F8);
  v44 = v72;
  v45 = *(v72 + 104);
  v45(v43, *MEMORY[0x277CDF9E8], v42);
  v46 = v71;
  v45(v71, *MEMORY[0x277CDF9A8], v42);
  sub_23D898790(&qword_27E2ED3F8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  result = sub_23D8DE810();
  if (result)
  {
    v48 = *(v44 + 32);
    v49 = v58;
    v48(v58, v43, v42);
    v50 = v62;
    v48((v49 + *(v62 + 48)), v46, v42);
    v51 = v61;
    sub_23D83C67C(v49, v61, &qword_27E2EF388, &qword_23D8E3848);
    v52 = *(v50 + 48);
    v53 = v59;
    v48(v59, v51, v42);
    v54 = *(v44 + 8);
    v54(v51 + v52, v42);
    sub_23D83C744(v49, v51, &qword_27E2EF388, &qword_23D8E3848);
    v48((v53 + *(v60 + 36)), (v51 + *(v50 + 48)), v42);
    v54(v51, v42);
    sub_23D897FAC(&qword_27E2EF4F8, &qword_27E2EF4D0, &qword_23D8E3A00, sub_23D8987D8);
    sub_23D835AD0(&qword_27E2EF440, &qword_27E2EF390, &qword_23D8E3850, MEMORY[0x277D83660]);
    v55 = v73;
    sub_23D8DDDD0();
    sub_23D83C6E4(v53, &qword_27E2EF390, &qword_23D8E3850);
    return sub_23D83C6E4(v55, &qword_27E2EF4D0, &qword_23D8E3A00);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8905A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF388, &qword_23D8E3848);
  v4 = MEMORY[0x28223BE20](v62);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = &v56 - v6;
  v70 = sub_23D8DCF90();
  v72 = *(v70 - 8);
  v7 = MEMORY[0x28223BE20](v70);
  v71 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = &v56 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF390, &qword_23D8E3850);
  MEMORY[0x28223BE20](v60);
  v59 = &v56 - v10;
  v11 = sub_23D8DD080();
  v12 = *(v11 - 8);
  v67 = v11;
  v68 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v64 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4C0, &qword_23D8E39F0);
  v18 = *(v17 - 8);
  v65 = v17;
  v66 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4C8, &qword_23D8E39F8);
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4D0, &qword_23D8E3A00);
  MEMORY[0x28223BE20](v57);
  v73 = &v56 - v24;
  (*(v15 + 16))(&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v25 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v26 = swift_allocObject();
  v27 = a1;
  v28 = *(a1 + 16);
  v29 = *(v27 + 24);
  *(v26 + 16) = v28;
  *(v26 + 24) = v29;
  (*(v15 + 32))(v26 + v25, &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = v23;
  v31 = v21;
  v74 = v28;
  v75 = v29;
  v76 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4D8, &qword_23D8E3A08);
  sub_23D8986D8();
  sub_23D8DE360();
  v32 = v64;
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2EF4E8, &qword_27E2EF4C0, &qword_23D8E39F0, MEMORY[0x277CDF028]);
  sub_23D898790(&qword_27E2ED4F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v33 = v65;
  v34 = v67;
  sub_23D8DDD10();
  (*(v68 + 8))(v32, v34);
  (*(v66 + 8))(v20, v33);
  *(v30 + *(v31 + 36)) = sub_23D8DE260();
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v35 = 0xEA0000000000646ELL;
  v36 = 0x697765722E727861;
  if (qword_27E2F3C80)
  {
    v37 = qword_27E2F3C80;
    v38 = sub_23D8DE830();
    v39 = sub_23D8DE830();
    v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

    v36 = sub_23D8DE870();
    v35 = v41;
  }

  v43 = v69;
  v42 = v70;
  v77 = v36;
  v78 = v35;
  sub_23D8987D8();
  sub_23D83CB18();
  sub_23D8DDE10();

  sub_23D83C6E4(v30, &qword_27E2EF4C8, &qword_23D8E39F8);
  v44 = v72;
  v45 = *(v72 + 104);
  v45(v43, *MEMORY[0x277CDF9E8], v42);
  v46 = v71;
  v45(v71, *MEMORY[0x277CDF9A8], v42);
  sub_23D898790(&qword_27E2ED3F8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  result = sub_23D8DE810();
  if (result)
  {
    v48 = *(v44 + 32);
    v49 = v58;
    v48(v58, v43, v42);
    v50 = v62;
    v48((v49 + *(v62 + 48)), v46, v42);
    v51 = v61;
    sub_23D83C67C(v49, v61, &qword_27E2EF388, &qword_23D8E3848);
    v52 = *(v50 + 48);
    v53 = v59;
    v48(v59, v51, v42);
    v54 = *(v44 + 8);
    v54(v51 + v52, v42);
    sub_23D83C744(v49, v51, &qword_27E2EF388, &qword_23D8E3848);
    v48((v53 + *(v60 + 36)), (v51 + *(v50 + 48)), v42);
    v54(v51, v42);
    sub_23D897FAC(&qword_27E2EF4F8, &qword_27E2EF4D0, &qword_23D8E3A00, sub_23D8987D8);
    sub_23D835AD0(&qword_27E2EF440, &qword_27E2EF390, &qword_23D8E3850, MEMORY[0x277D83660]);
    v55 = v73;
    sub_23D8DDDD0();
    sub_23D83C6E4(v53, &qword_27E2EF390, &qword_23D8E3850);
    return sub_23D83C6E4(v55, &qword_27E2EF4D0, &qword_23D8E3A00);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23D890EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v79 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF388, &qword_23D8E3848);
  v5 = MEMORY[0x28223BE20](v78);
  v77 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = &v74 - v7;
  v8 = sub_23D8DCF90();
  v93 = *(v8 - 8);
  v94 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v92 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v91 = &v74 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF390, &qword_23D8E3850);
  MEMORY[0x28223BE20](v75);
  v74 = &v74 - v12;
  v13 = sub_23D8DD530();
  v89 = *(v13 - 8);
  v90 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v88 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF500, &qword_23D8E3A10);
  v19 = *(v18 - 8);
  v84 = v18;
  v85 = v19;
  MEMORY[0x28223BE20](v18);
  v98 = &v74 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF508, &qword_23D8E3A18);
  v22 = *(v21 - 8);
  v86 = v21;
  v87 = v22;
  MEMORY[0x28223BE20](v21);
  v82 = &v74 - v23;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF510, &qword_23D8E3A20);
  v24 = MEMORY[0x28223BE20](v95);
  v83 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v81 = &v74 - v27;
  MEMORY[0x28223BE20](v26);
  v96 = &v74 - v28;
  v80 = sub_23D8DD560();
  v109 = 1;
  v97 = a1;
  v29 = *(a1 + 24);
  v30 = *(a1 + 16);
  sub_23D893048(v3, v30, v29, &v124);
  v120 = v134;
  v121 = v135;
  v122 = v136;
  v116 = v130;
  v117 = v131;
  v118 = v132;
  v119 = v133;
  v112 = v126;
  v113 = v127;
  v114 = v128;
  v115 = v129;
  v110 = v124;
  v111 = v125;
  v123[10] = v134;
  v123[11] = v135;
  v123[12] = v136;
  v123[6] = v130;
  v123[7] = v131;
  v123[9] = v133;
  v123[8] = v132;
  v123[2] = v126;
  v123[3] = v127;
  v123[5] = v129;
  v123[4] = v128;
  v123[0] = v124;
  v123[1] = v125;
  sub_23D83C67C(&v110, &v106, &qword_27E2EF518, &qword_23D8E3A28);
  sub_23D83C6E4(v123, &qword_27E2EF518, &qword_23D8E3A28);
  *&v108[151] = v119;
  *&v108[167] = v120;
  *&v108[183] = v121;
  *&v108[199] = v122;
  *&v108[87] = v115;
  *&v108[103] = v116;
  *&v108[119] = v117;
  *&v108[135] = v118;
  *&v108[23] = v111;
  *&v108[39] = v112;
  *&v108[55] = v113;
  *&v108[71] = v114;
  *&v108[7] = v110;
  *&v107[161] = *&v108[160];
  *&v107[177] = *&v108[176];
  *&v107[193] = *&v108[192];
  *&v107[97] = *&v108[96];
  *&v107[113] = *&v108[112];
  *&v107[129] = *&v108[128];
  *&v107[145] = *&v108[144];
  *&v107[33] = *&v108[32];
  *&v107[49] = *&v108[48];
  *&v107[65] = *&v108[64];
  *&v107[81] = *&v108[80];
  *&v107[1] = *v108;
  v106 = v80;
  v107[0] = v109;
  *&v107[208] = *(&v122 + 1);
  *&v107[17] = *&v108[16];
  v31 = v97;
  (*(v16 + 16))(&v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v99, v97);
  v32 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  *(v33 + 24) = v29;
  (*(v16 + 32))(v33 + v32, &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF520, &qword_23D8E3A30);
  v35 = sub_23D835AD0(&qword_27E2EF528, &qword_27E2EF520, &qword_23D8E3A30, MEMORY[0x277CE1198]);
  sub_23D8DDD60();

  v136 = *&v107[176];
  v137 = *&v107[192];
  v132 = *&v107[112];
  v133 = *&v107[128];
  v135 = *&v107[160];
  v134 = *&v107[144];
  v128 = *&v107[48];
  v129 = *&v107[64];
  v138 = *&v107[208];
  v131 = *&v107[96];
  v130 = *&v107[80];
  v124 = v106;
  v125 = *v107;
  v127 = *&v107[32];
  v126 = *&v107[16];
  sub_23D83C6E4(&v124, &qword_27E2EF520, &qword_23D8E3A30);
  sub_23D8DE5D0();
  v103 = v30;
  v104 = v29;
  v105 = v99;
  v100 = v30;
  v101 = v29;
  v102 = v99;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF530, &qword_23D8E3A38);
  *&v106 = v34;
  *(&v106 + 1) = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = sub_23D898980();
  v38 = MEMORY[0x277CE1340];
  v39 = MEMORY[0x277CE1350];
  v40 = v82;
  v41 = v84;
  v42 = v98;
  sub_23D8DE0A0();
  v43 = v42;
  v44 = v41;
  (*(v85 + 8))(v43, v41);
  v45 = v88;
  sub_23D8DD520();
  *&v106 = v44;
  *(&v106 + 1) = v39;
  *v107 = v36;
  *&v107[8] = v36;
  *&v107[16] = OpaqueTypeConformance2;
  *&v107[24] = v38;
  *&v107[32] = v73;
  *&v107[40] = v73;
  swift_getOpaqueTypeConformance2();
  v46 = v83;
  v47 = v86;
  sub_23D8DDED0();
  v48 = v90;
  v49 = *(v89 + 8);
  v49(v45, v90);
  (*(v87 + 8))(v40, v47);
  v50 = v45;
  sub_23D8DD510();
  v51 = v81;
  sub_23D8DD010();
  v49(v50, v48);
  sub_23D83C6E4(v46, &qword_27E2EF510, &qword_23D8E3A20);
  if (![*(v99 + *(v97 + 64) + 8) isSpeaking])
  {
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v53 = 0x79616C702E727861;
    v54 = v94;
    v56 = v91;
    v55 = v92;
    if (!qword_27E2F3C80)
    {
      v52 = 0xE800000000000000;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (qword_27E2ECEC8 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v52 = 0xE900000000000065;
    v53 = 0x737561702E727861;
    v54 = v94;
    v56 = v91;
    v55 = v92;
    if (qword_27E2F3C80)
    {
LABEL_8:
      v57 = qword_27E2F3C80;
      v58 = sub_23D8DE830();
      v59 = sub_23D8DE830();
      v60 = [v57 localizedStringForKey:v58 value:0 table:v59];

      v53 = sub_23D8DE870();
      v52 = v61;
    }

LABEL_10:
    *&v106 = v53;
    *(&v106 + 1) = v52;
    sub_23D83CB18();
    sub_23D8DCFD0();

    sub_23D83C6E4(v51, &qword_27E2EF510, &qword_23D8E3A20);
    v62 = v93;
    v63 = *(v93 + 104);
    v63(v56, *MEMORY[0x277CDF9E8], v54);
    v63(v55, *MEMORY[0x277CDF9A8], v54);
    sub_23D898790(&qword_27E2ED3F8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    if (sub_23D8DE810())
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v64 = *(v62 + 32);
  v65 = v76;
  v64(v76, v56, v54);
  v66 = v78;
  v64((v65 + *(v78 + 48)), v55, v54);
  v67 = v54;
  v68 = v77;
  sub_23D83C67C(v65, v77, &qword_27E2EF388, &qword_23D8E3848);
  v99 = *(v66 + 48);
  v69 = v74;
  v64(v74, v68, v67);
  v70 = *(v62 + 8);
  v70(v68 + v99, v67);
  sub_23D83C744(v65, v68, &qword_27E2EF388, &qword_23D8E3848);
  v64((v69 + *(v75 + 36)), (v68 + *(v66 + 48)), v67);
  v70(v68, v67);
  sub_23D898AA8();
  sub_23D835AD0(&qword_27E2EF440, &qword_27E2EF390, &qword_23D8E3850, MEMORY[0x277D83660]);
  v71 = v96;
  sub_23D8DDDD0();
  sub_23D83C6E4(v69, &qword_27E2EF390, &qword_23D8E3850);
  return sub_23D83C6E4(v71, &qword_27E2EF510, &qword_23D8E3A20);
}

uint64_t sub_23D891C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF388, &qword_23D8E3848);
  v4 = MEMORY[0x28223BE20](v62);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = &v56 - v6;
  v70 = sub_23D8DCF90();
  v72 = *(v70 - 8);
  v7 = MEMORY[0x28223BE20](v70);
  v71 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = &v56 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF390, &qword_23D8E3850);
  MEMORY[0x28223BE20](v60);
  v59 = &v56 - v10;
  v11 = sub_23D8DD080();
  v12 = *(v11 - 8);
  v67 = v11;
  v68 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v64 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4C0, &qword_23D8E39F0);
  v18 = *(v17 - 8);
  v65 = v17;
  v66 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4C8, &qword_23D8E39F8);
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4D0, &qword_23D8E3A00);
  MEMORY[0x28223BE20](v57);
  v73 = &v56 - v24;
  (*(v15 + 16))(&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v25 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v26 = swift_allocObject();
  v27 = a1;
  v28 = *(a1 + 16);
  v29 = *(v27 + 24);
  *(v26 + 16) = v28;
  *(v26 + 24) = v29;
  (*(v15 + 32))(v26 + v25, &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = v23;
  v31 = v21;
  v74 = v28;
  v75 = v29;
  v76 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4D8, &qword_23D8E3A08);
  sub_23D8986D8();
  sub_23D8DE360();
  v32 = v64;
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2EF4E8, &qword_27E2EF4C0, &qword_23D8E39F0, MEMORY[0x277CDF028]);
  sub_23D898790(&qword_27E2ED4F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v33 = v65;
  v34 = v67;
  sub_23D8DDD10();
  (*(v68 + 8))(v32, v34);
  (*(v66 + 8))(v20, v33);
  *(v30 + *(v31 + 36)) = sub_23D8DE260();
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v35 = 0xEB00000000647261;
  v36 = 0x77726F662E727861;
  if (qword_27E2F3C80)
  {
    v37 = qword_27E2F3C80;
    v38 = sub_23D8DE830();
    v39 = sub_23D8DE830();
    v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

    v36 = sub_23D8DE870();
    v35 = v41;
  }

  v43 = v69;
  v42 = v70;
  v77 = v36;
  v78 = v35;
  sub_23D8987D8();
  sub_23D83CB18();
  sub_23D8DDE10();

  sub_23D83C6E4(v30, &qword_27E2EF4C8, &qword_23D8E39F8);
  v44 = v72;
  v45 = *(v72 + 104);
  v45(v43, *MEMORY[0x277CDF9E8], v42);
  v46 = v71;
  v45(v71, *MEMORY[0x277CDF9A8], v42);
  sub_23D898790(&qword_27E2ED3F8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  result = sub_23D8DE810();
  if (result)
  {
    v48 = *(v44 + 32);
    v49 = v58;
    v48(v58, v43, v42);
    v50 = v62;
    v48((v49 + *(v62 + 48)), v46, v42);
    v51 = v61;
    sub_23D83C67C(v49, v61, &qword_27E2EF388, &qword_23D8E3848);
    v52 = *(v50 + 48);
    v53 = v59;
    v48(v59, v51, v42);
    v54 = *(v44 + 8);
    v54(v51 + v52, v42);
    sub_23D83C744(v49, v51, &qword_27E2EF388, &qword_23D8E3848);
    v48((v53 + *(v60 + 36)), (v51 + *(v50 + 48)), v42);
    v54(v51, v42);
    sub_23D897FAC(&qword_27E2EF4F8, &qword_27E2EF4D0, &qword_23D8E3A00, sub_23D8987D8);
    sub_23D835AD0(&qword_27E2EF440, &qword_27E2EF390, &qword_23D8E3850, MEMORY[0x277D83660]);
    v55 = v73;
    sub_23D8DDDD0();
    sub_23D83C6E4(v53, &qword_27E2EF390, &qword_23D8E3850);
    return sub_23D83C6E4(v55, &qword_27E2EF4D0, &qword_23D8E3A00);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23D89251C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF388, &qword_23D8E3848);
  v4 = MEMORY[0x28223BE20](v60);
  v59 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v56 = &v54 - v6;
  v7 = sub_23D8DCF90();
  v8 = *(v7 - 8);
  v77 = v7;
  v78 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v76 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v72 = &v54 - v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF390, &qword_23D8E3850);
  MEMORY[0x28223BE20](v58);
  v57 = &v54 - v12;
  v13 = sub_23D8DD8B0();
  v14 = *(v13 - 8);
  v74 = v13;
  v75 = v14;
  MEMORY[0x28223BE20](v13);
  v73 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_23D8DE6B0();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF398, &qword_23D8E3858);
  v63 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF3A0, &qword_23D8E3860);
  v65 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - v22;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF3A8, &qword_23D8E3868);
  v70 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v62 = &v54 - v24;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF3B0, &qword_23D8E3870);
  MEMORY[0x28223BE20](v71);
  v26 = &v54 - v25;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF3B8, &qword_23D8E3878);
  MEMORY[0x28223BE20](v55);
  v79 = &v54 - v27;
  v66 = a1;
  v28 = *(a1 + 24);
  v83 = *(a1 + 16);
  v84 = v28;
  v64 = v2;
  v85 = v2;
  v80 = v83;
  v81 = v28;
  v82 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF3C8, &qword_23D8E3888);
  sub_23D897AA4();
  sub_23D897C14();
  v29 = v72;
  sub_23D8DDBE0();
  sub_23D8DE6A0();
  v30 = sub_23D835AD0(&qword_27E2EF400, &qword_27E2EF398, &qword_23D8E3858, MEMORY[0x277CDE5B0]);
  sub_23D8DE0D0();
  (*(v67 + 8))(v17, v69);
  (*(v63 + 8))(v20, v18);
  v88 = v18;
  v89 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v62;
  sub_23D8DDF40();
  (*(v65 + 8))(v23, v21);
  v33 = v73;
  sub_23D8DD8A0();
  v88 = v21;
  v89 = OpaqueTypeConformance2;
  v34 = v76;
  swift_getOpaqueTypeConformance2();
  sub_23D898790(&qword_27E2EF408, MEMORY[0x277CDE310], MEMORY[0x277CDE308]);
  v35 = v68;
  v36 = v74;
  sub_23D8DE0E0();
  (*(v75 + 8))(v33, v36);
  (*(v70 + 8))(v32, v35);
  KeyPath = swift_getKeyPath();
  v38 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF410, &qword_23D8E38D0) + 36)];
  *v38 = KeyPath;
  v38[8] = 2;
  *&v26[*(v71 + 36)] = 257;
  sub_23D896888(v66);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  v86 = v87;
  v88 = SSActions.title.getter(v39);
  v89 = v40;
  sub_23D897D28();
  sub_23D83CB18();
  sub_23D8DDE10();

  v41 = v26;
  v42 = v77;
  sub_23D83C6E4(v41, &qword_27E2EF3B0, &qword_23D8E3870);
  v43 = v78;
  v44 = *(v78 + 104);
  v44(v29, *MEMORY[0x277CDF9E8], v42);
  v44(v34, *MEMORY[0x277CDF9A8], v42);
  sub_23D898790(&qword_27E2ED3F8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  result = sub_23D8DE810();
  if (result)
  {
    v46 = *(v43 + 32);
    v47 = v56;
    v46(v56, v29, v42);
    v48 = v60;
    v46((v47 + *(v60 + 48)), v34, v42);
    v49 = v59;
    sub_23D83C67C(v47, v59, &qword_27E2EF388, &qword_23D8E3848);
    v50 = *(v48 + 48);
    v51 = v57;
    v46(v57, v49, v42);
    v52 = *(v43 + 8);
    v52(v49 + v50, v42);
    sub_23D83C744(v47, v49, &qword_27E2EF388, &qword_23D8E3848);
    v46((v51 + *(v58 + 36)), (v49 + *(v48 + 48)), v42);
    v52(v49, v42);
    sub_23D897FAC(&qword_27E2EF438, &qword_27E2EF3B8, &qword_23D8E3878, sub_23D897D28);
    sub_23D835AD0(&qword_27E2EF440, &qword_27E2EF390, &qword_23D8E3850, MEMORY[0x277D83660]);
    v53 = v79;
    sub_23D8DDDD0();
    sub_23D83C6E4(v51, &qword_27E2EF390, &qword_23D8E3850);
    return sub_23D83C6E4(v53, &qword_27E2EF3B8, &qword_23D8E3878);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_23D893048@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23D8DE2D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SSHUDRoundView(0, a2, a3, v12);
  [*(a1 + *(v13 + 64) + 8) isSpeaking];
  sub_23D8DE2C0();
  (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
  v14 = sub_23D8DE300();

  (*(v9 + 8))(v11, v8);
  sub_23D893408(v13, 15.0);
  sub_23D893408(v13, 15.0);
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v47 = 1;
  *&v46[6] = v49;
  *&v46[22] = v50;
  *&v46[38] = v51;
  LOBYTE(v8) = sub_23D8DD9E0();
  sub_23D8DCC20();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v48 = 0;
  v23 = sub_23D893650(v13);
  sub_23D8937D0(v13);
  v24 = sub_23D8DE130();
  sub_23D8939A0(v13, 40.0);
  sub_23D8939A0(v13, 40.0);
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  *&v31[6] = v52[0];
  *&v31[22] = v52[1];
  *&v31[38] = v52[2];
  v25 = sub_23D8DE5F0();
  *&v32[0] = v24;
  WORD4(v32[0]) = 256;
  *(v32 + 10) = *v31;
  *(&v32[1] + 10) = *&v31[16];
  *(&v32[2] + 10) = *&v31[32];
  *(&v32[3] + 1) = *&v31[46];
  *&v33 = v25;
  *(&v33 + 1) = v26;
  v34 = v24;
  v41 = v32[0];
  v44 = v32[3];
  v45 = v33;
  v42 = v32[1];
  v43 = v32[2];
  v35 = 256;
  *&v38[14] = *&v31[46];
  v39 = v25;
  v37 = *&v31[16];
  *v38 = *&v31[32];
  v36 = *v31;
  v40 = v26;
  sub_23D83C67C(v32, &v30, &qword_27E2EF548, &qword_23D8E3AC0);
  sub_23D83C6E4(&v34, &qword_27E2EF548, &qword_23D8E3AC0);
  *a4 = v14;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 18) = *v46;
  *(a4 + 34) = *&v46[16];
  *(a4 + 50) = *&v46[32];
  *(a4 + 64) = *&v46[46];
  *(a4 + 72) = v8;
  *(a4 + 80) = v16;
  *(a4 + 88) = v18;
  *(a4 + 96) = v20;
  *(a4 + 104) = v22;
  *(a4 + 112) = 0;
  *(a4 + 120) = v23;
  v27 = v44;
  *(a4 + 160) = v43;
  *(a4 + 176) = v27;
  *(a4 + 192) = v45;
  result = v42;
  *(a4 + 128) = v41;
  *(a4 + 144) = result;
  return result;
}

double sub_23D893408(uint64_t a1, double a2)
{
  v4 = sub_23D8DCF90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D88D9BC(a1, v7);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 != *MEMORY[0x277CDF9F8] && v8 != *MEMORY[0x277CDF9E0] && v8 != *MEMORY[0x277CDF9E8] && v8 != *MEMORY[0x277CDF9D8])
  {
    if (v8 == *MEMORY[0x277CDF9F0] || v8 == *MEMORY[0x277CDFA00])
    {
      return a2 * 1.3;
    }

    else if (v8 == *MEMORY[0x277CDFA10])
    {
      return a2 * 1.5;
    }

    else if (v8 == *MEMORY[0x277CDF988])
    {
      return a2 * 1.8;
    }

    else if (v8 == *MEMORY[0x277CDF998])
    {
      return a2 + a2;
    }

    else if (v8 == *MEMORY[0x277CDF9A8])
    {
      return a2 * 2.1;
    }

    else if (v8 == *MEMORY[0x277CDF9B8])
    {
      return a2 * 2.15;
    }

    else if (v8 == *MEMORY[0x277CDF9D0])
    {
      return a2 * 2.2;
    }

    else
    {
      a2 = a2 + a2;
      (*(v5 + 8))(v7, v4);
    }
  }

  return a2;
}

uint64_t sub_23D893650(uint64_t a1)
{
  v2 = sub_23D8DCCB0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  sub_23D88DF20(a1);
  v9 = sub_23D8DBF80();

  sub_23D88D7BC(v8);
  (*(v3 + 104))(v6, *MEMORY[0x277CDF3C0], v2);
  v10 = sub_23D8DCCA0();
  v11 = *(v3 + 8);
  v11(v6, v2);
  v11(v8, v2);
  if (v9)
  {
    if ((v10 & 1) == 0)
    {
      return sub_23D8DE240();
    }
  }

  else if (v10)
  {
    return sub_23D8DE240();
  }

  return sub_23D8DE220();
}

id sub_23D8937D0(uint64_t a1)
{
  v2 = sub_23D8DCCB0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  sub_23D88DF20(a1);
  v9 = sub_23D8DBF80();

  if (v9)
  {
    sub_23D88D7BC(v8);
    (*(v3 + 104))(v6, *MEMORY[0x277CDF3C0], v2);
    v10 = sub_23D8DCCA0();
    v11 = *(v3 + 8);
    v11(v6, v2);
    v11(v8, v2);
    v12 = objc_opt_self();
    if (v10)
    {
      v13 = [v12 whiteColor];
    }

    else
    {
      v13 = [v12 blackColor];
    }
  }

  else
  {
    v13 = [objc_opt_self() secondarySystemFillColor];
  }

  return v13;
}

double sub_23D8939A0(uint64_t a1, double a2)
{
  v4 = sub_23D8DCF90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D88D9BC(a1, v7);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 != *MEMORY[0x277CDF9F8] && v8 != *MEMORY[0x277CDF9E0] && v8 != *MEMORY[0x277CDF9E8] && v8 != *MEMORY[0x277CDF9D8])
  {
    if (v8 == *MEMORY[0x277CDF9F0] || v8 == *MEMORY[0x277CDFA00])
    {
      v13 = 0x3FF3333333333333;
    }

    else
    {
      if (v8 == *MEMORY[0x277CDFA10])
      {
        v14 = 1.25;
        return a2 * v14;
      }

      if (v8 == *MEMORY[0x277CDF988])
      {
        v14 = 1.3;
        return a2 * v14;
      }

      if (v8 == *MEMORY[0x277CDF998])
      {
        v13 = 0x3FF6666666666666;
      }

      else
      {
        if (v8 != *MEMORY[0x277CDF9A8])
        {
          if (v8 == *MEMORY[0x277CDF9B8])
          {
            v14 = 1.5;
          }

          else
          {
            if (v8 != *MEMORY[0x277CDF9D0])
            {
              a2 = a2 * 1.5;
              (*(v5 + 8))(v7, v4);
              return a2;
            }

            v14 = 1.55;
          }

          return a2 * v14;
        }

        v13 = 0x3FF7333333333333;
      }
    }

    v14 = *&v13;
    return a2 * v14;
  }

  return a2;
}

uint64_t sub_23D893BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SSHUDRoundView(0, a2, a3, a4);
  if ([*(a1 + *(v5 + 64) + 8) isSpeaking])
  {
    [*(a1 + *(v5 + 64) + 8) pauseButtonPressed];
  }

  else
  {
    [*(a1 + *(v5 + 64) + 8) playButtonPressedForBundleID:0 sceneID:0 rootAccessibilityElementIdentifier:0];
    v6 = sub_23D8DE670();
    MEMORY[0x28223BE20](v6);
    sub_23D8DCE60();
  }

  sub_23D88EC50(v5);
  return sub_23D88EFF0(v5);
}

uint64_t sub_23D893CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for SSHUDRoundView(0, a2, a3, a4);
  sub_23D896888(v4);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D8DCB80();
}

uint64_t sub_23D893D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for SSHUDRoundView(0, a2, a3, a3);
  sub_23D8937D0(v6);
  sub_23D8DE130();
  KeyPath = swift_getKeyPath();
  v8 = sub_23D8DCDC0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF500, &qword_23D8E3A10);
  (*(*(v9 - 8) + 16))(a4, a1, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF530, &qword_23D8E3A38);
  v11 = (a4 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = v8;
  return result;
}

uint64_t sub_23D893E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D8DCCB0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  sub_23D88D7BC(v20 - v9);
  (*(v5 + 104))(v8, *MEMORY[0x277CDF3C0], v4);
  v11 = sub_23D8DCCA0();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  if (v11)
  {
    sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);
    sub_23D8DEB40();
    v13 = sub_23D8DE130();
  }

  else
  {
    v13 = sub_23D8DE210();
  }

  v14 = v13;
  KeyPath = swift_getKeyPath();
  v20[1] = v14;
  v16 = sub_23D8DCDC0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF500, &qword_23D8E3A10);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF530, &qword_23D8E3A38);
  v19 = (a2 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = v16;
  return result;
}

uint64_t sub_23D894080(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = type metadata accessor for SSHUDRoundView(0, a2, a3, a4);
  [*(a1 + *(v6 + 64) + 8) *a4];
  sub_23D88EC50(v6);
  return sub_23D88EFF0(v6);
}

uint64_t sub_23D8940DC@<X0>(uint64_t *a3@<X8>)
{
  v4 = sub_23D8DE2C0();
  sub_23D8DDB60();
  sub_23D8DDAE0();
  v5 = sub_23D8DDB70();

  result = swift_getKeyPath();
  *a3 = v4;
  a3[1] = result;
  a3[2] = v5;
  return result;
}

double sub_23D894148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SSHUDRoundView(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED120, &qword_23D8E03E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_23D8DEA00();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a1, v7);
  sub_23D8DE9D0();
  v15 = sub_23D8DE9C0();
  v16 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 2) = v15;
  *(v17 + 3) = v18;
  *(v17 + 4) = a2;
  *(v17 + 5) = a3;
  (*(v8 + 32))(&v17[v16], v10, v7);
  sub_23D870938(0, 0, v13, &unk_23D8E39A0, v17);

  return result;
}

uint64_t sub_23D894348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_23D8DE9D0();
  v6[3] = sub_23D8DE9C0();
  v9 = swift_task_alloc();
  v6[4] = v9;
  v11 = type metadata accessor for SSHUDRoundView(0, a5, a6, v10);
  *v9 = v6;
  v9[1] = sub_23D894418;

  return sub_23D8945B4(v11);
}

uint64_t sub_23D894418()
{

  v1 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D894554, v1, v0);
}

uint64_t sub_23D894554()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23D8945B4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23D8DCAF0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_23D8DE9D0();
  v2[10] = sub_23D8DE9C0();
  v5 = sub_23D8DE9B0();
  v2[11] = v5;
  v2[12] = v4;

  return MEMORY[0x2822009F8](sub_23D8946CC, v5, v4);
}

uint64_t sub_23D8946CC()
{
  v27 = v0;
  v1 = v0[2];
  v2 = v0[3];
  [*(v2 + *(v1 + 64) + 8) readerButtonPressed];
  v3 = [*(v2 + *(v1 + 64) + 8) currentAppBundleId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23D8DE870();
    v7 = v6;

    v0[13] = v7;
    sub_23D8DC180();

    v8 = sub_23D8DCAE0();
    v9 = sub_23D8DEA90();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[9];
    v12 = v0[4];
    v13 = v0[5];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_23D8CF134(v5, v7, &v26);
      _os_log_impl(&dword_23D82C000, v8, v9, "Attempting to launch Accessibility Reader for bundle: %s", v14, 0xCu);
      v16 = __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x23EEF15F0](v15, -1, -1, v16);
      MEMORY[0x23EEF15F0](v14, -1, -1);
    }

    v17 = *(v13 + 8);
    v17(v11, v12);
    v0[14] = v17;
    sub_23D8DC640();
    v18 = swift_task_alloc();
    v0[15] = v18;
    *v18 = v0;
    v18[1] = sub_23D8949E4;

    return MEMORY[0x282139760](v5, v7, 0);
  }

  else
  {

    sub_23D8DC180();
    v19 = sub_23D8DCAE0();
    v20 = sub_23D8DEA90();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[5];
    if (v21)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_23D82C000, v19, v20, "No bundle ID available - cannot launch Accessibility Reader", v23, 2u);
      MEMORY[0x23EEF15F0](v23, -1, -1);
    }

    (*(v22 + 8))(v0[6], v0[4]);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_23D8949E4(char a1)
{
  v2 = *v1;
  *(*v1 + 128) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return MEMORY[0x2822009F8](sub_23D894B30, v4, v3);
}

uint64_t sub_23D894B30()
{
  v1 = *(v0 + 128);

  if (v1 == 1)
  {
    v2 = (v0 + 64);
    sub_23D8DC180();
    v3 = sub_23D8DCAE0();
    v4 = sub_23D8DEA90();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Successfully opened Accessibility Reader from Speak Screen";
  }

  else
  {
    v2 = (v0 + 56);
    sub_23D8DC180();
    v3 = sub_23D8DCAE0();
    v4 = sub_23D8DEA90();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Failed to open Accessibility Reader from Speak Screen.";
  }

  _os_log_impl(&dword_23D82C000, v3, v4, v6, v5, 2u);
  MEMORY[0x23EEF15F0](v5, -1, -1);
LABEL_7:

  (*(v0 + 112))(*v2, *(v0 + 32));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_23D894CE0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23D8DE2C0();
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v3 = qword_27E2F3C80;
    v4 = sub_23D8DE830();
    v5 = sub_23D8DE830();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_23D8DE870();
  }

  sub_23D83CB18();
  v7 = sub_23D8DDCB0();
  v9 = v8;
  *a1 = v2;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  v11 = v10 & 1;
  *(a1 + 24) = v10 & 1;
  *(a1 + 32) = v12;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;

  sub_23D834028(v7, v9, v11);

  sub_23D83CB6C(v7, v9, v11);
}

uint64_t sub_23D894E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = *(a1 + 16);
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF498, &qword_23D8E3990);
  sub_23D835AD0(&qword_27E2EF4A0, &qword_27E2EF498, &qword_23D8E3990, MEMORY[0x277CE1138]);
  return sub_23D8DE360();
}

uint64_t sub_23D89503C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23D8DE2C0();
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v3 = qword_27E2F3C80;
    v4 = sub_23D8DE830();
    v5 = sub_23D8DE830();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_23D8DE870();
  }

  sub_23D83CB18();
  v7 = sub_23D8DDCB0();
  v9 = v8;
  *a1 = v2;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  v11 = v10 & 1;
  *(a1 + 24) = v10 & 1;
  *(a1 + 32) = v12;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;

  sub_23D834028(v7, v9, v11);

  sub_23D83CB6C(v7, v9, v11);
}

double sub_23D8951EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for SSHUDRoundView(0, a2, a3, a4);
  sub_23D896888(v4);

  sub_23D861AB4();

  return result;
}

__n128 sub_23D895250@<Q0>(void (*a1)(unint64_t *__return_ptr)@<X0>, __n128 *a2@<X8>)
{
  v4 = sub_23D8DD420();
  v18 = 1;
  a1(&v12);
  v5 = v12;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  result = v13;
  v11 = v18;
  a2->n128_u64[0] = v4;
  a2->n128_u64[1] = 0;
  a2[1].n128_u8[0] = v11;
  a2[1].n128_u64[1] = v5;
  a2[2] = result;
  a2[3].n128_u8[0] = v6;
  a2[3].n128_u64[1] = v7;
  a2[4].n128_u64[0] = v8;
  a2[4].n128_u8[8] = v9;
  return result;
}

uint64_t sub_23D8952DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23D8DE2C0();
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v3 = qword_27E2F3C80;
    v4 = sub_23D8DE830();
    v5 = sub_23D8DE830();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_23D8DE870();
  }

  sub_23D83CB18();
  v7 = sub_23D8DDCB0();
  v9 = v8;
  *a1 = v2;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  v11 = v10 & 1;
  *(a1 + 24) = v10 & 1;
  *(a1 + 32) = v12;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;

  sub_23D834028(v7, v9, v11);

  sub_23D83CB6C(v7, v9, v11);
}

uint64_t sub_23D895488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for SSHUDRoundView(0, a2, a3, a5);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  sub_23D8955F0(v11, a4);
  (*(v10 + 16))(v13, a1, v9);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v10 + 32))(v15 + v14, v13, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF3C8, &qword_23D8E3888);
  v17 = (a4 + *(result + 36));
  *v17 = sub_23D898068;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  return result;
}

uint64_t sub_23D8955F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v4 = sub_23D8DCFC0();
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF448, &qword_23D8E4F50);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF450, &qword_23D8E3960);
  v58 = *(v12 - 8);
  v59 = v12;
  MEMORY[0x28223BE20](v12);
  v57 = &v52 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF458, &qword_23D8E3968);
  v70 = *(v64 - 8);
  v14 = MEMORY[0x28223BE20](v64);
  v61 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v71 = &v52 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF460, &qword_23D8E3970);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v69 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v72 = &v52 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v68 = &v52 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v52 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF468, &qword_23D8E3978);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v67 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v52 - v30;
  v32 = [*(v2 + *(a1 + 64) + 8) isSpeakingOrPaused];
  v56 = v18;
  v55 = v17;
  v66 = v31;
  if (v32 && (sub_23D88DF20(a1), v33 = sub_23D8DBF70(), , (v33 & 1) == 0))
  {
    sub_23D894E98(a1, &unk_284FD7120, sub_23D898178, sub_23D895024);
    (*(v18 + 32))(v31, v26, v17);
    (*(v18 + 56))(v31, 0, 1, v17);
  }

  else
  {
    (*(v18 + 56))(v31, 1, 1, v17);
  }

  sub_23D894E98(a1, &unk_284FD7198, sub_23D8985FC, sub_23D895238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF230, &qword_23D8E3738);
  sub_23D8DE340();
  sub_23D83C67C(v11, v9, &qword_27E2EF448, &qword_23D8E4F50);
  sub_23D896208(v73);
  sub_23D8DC4D0();
  v52 = v26;
  v54 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF470, &qword_23D8E3980);
  v53 = a1;
  sub_23D898790(&qword_27E2EF478, MEMORY[0x277CE7250], MEMORY[0x277CE7258]);
  sub_23D898080();
  v34 = v57;
  sub_23D8DE3A0();
  sub_23D83C6E4(v11, &qword_27E2EF448, &qword_23D8E4F50);
  v35 = v60;
  sub_23D8DCFB0();
  sub_23D835AD0(&qword_27E2EF488, &qword_27E2EF450, &qword_23D8E3960, MEMORY[0x277CDF038]);
  v36 = v59;
  v37 = v63;
  sub_23D8DDD30();
  (*(v62 + 8))(v35, v37);
  (*(v58 + 8))(v34, v36);
  v38 = v68;
  sub_23D894E98(v53, &unk_284FD7148, sub_23D8981F0, sub_23D894CC8);
  v39 = v67;
  sub_23D83C67C(v66, v67, &qword_27E2EF468, &qword_23D8E3978);
  v40 = v56;
  v41 = *(v56 + 16);
  v42 = v55;
  v41(v72, v26, v55);
  v43 = *(v70 + 16);
  v44 = v61;
  v45 = v64;
  v43(v61, v71, v64);
  v41(v69, v38, v42);
  v46 = v65;
  sub_23D83C67C(v39, v65, &qword_27E2EF468, &qword_23D8E3978);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF490, &qword_23D8E3988);
  v41((v46 + v47[12]), v72, v42);
  v43((v46 + v47[16]), v44, v45);
  v48 = v69;
  v41((v46 + v47[20]), v69, v42);
  v49 = *(v40 + 8);
  v49(v68, v42);
  v50 = *(v70 + 8);
  v50(v71, v45);
  v49(v52, v42);
  sub_23D83C6E4(v66, &qword_27E2EF468, &qword_23D8E3978);
  v49(v48, v42);
  v50(v44, v45);
  v49(v72, v42);
  return sub_23D83C6E4(v67, &qword_27E2EF468, &qword_23D8E3978);
}

uint64_t sub_23D895EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for SSHUDRoundView(0, a2, a3, a4);
  sub_23D88EC50(v4);
  return sub_23D88EFF0(v4);
}

double sub_23D895EF8@<D0>(uint64_t a1@<X8>)
{
  sub_23D895F38(&v5);
  v2 = v6;
  v3 = v7;
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_23D895F38@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23D8DE2C0();
  v3 = sub_23D8DE260();
  sub_23D8DDB60();
  sub_23D8DDAE0();
  v4 = sub_23D8DDB70();

  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = result;
  a1[3] = v4;
  return result;
}

uint64_t sub_23D895FCC(uint64_t a1)
{
  sub_23D8DC4B0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4A8, &qword_23D8E39E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF4B0, &qword_23D8E39E8);
  sub_23D835AD0(&qword_27E2EF4B8, &qword_27E2EF4A8, &qword_23D8E39E0, MEMORY[0x277D83980]);
  sub_23D8DC4D0();
  sub_23D898790(&qword_27E2EF478, MEMORY[0x277CE7250], MEMORY[0x277CE7258]);
  swift_getOpaqueTypeConformance2();
  return sub_23D8DE4C0();
}

uint64_t sub_23D896138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23D8DC490();
  v5 = localizedNameFor(speed:)(v4);
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ECF58, &qword_23D8DFDE0) + 36);
  v7 = sub_23D8DC4D0();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ECF60, &qword_23D8DFDE8);
  *(v6 + *(result + 36)) = 1;
  *a2 = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23D896208@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v3 = qword_27E2F3C80;
    v4 = sub_23D8DE830();
    v5 = sub_23D8DE830();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_23D8DE870();
  }

  sub_23D83CB18();
  result = sub_23D8DDCB0();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

void sub_23D896340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SSHUDRoundView(0, a3, a4, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED120, &qword_23D8E03E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - v12;
  if (sub_23D88DBC0(v7) < 1)
  {
    v17 = sub_23D88DC6C(v7);
    [v17 invalidate];

    v18 = sub_23D8DEA00();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    (*(v8 + 16))(v10, a2, v7);
    v19 = (*(v8 + 80) + 48) & ~*(v8 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    *(v20 + 4) = a3;
    *(v20 + 5) = a4;
    (*(v8 + 32))(&v20[v19], v10, v7);
    sub_23D870938(0, 0, v13, &unk_23D8E3810, v20);

    sub_23D88DCC0(0, v7);
    sub_23D88DC14(8, v7);
  }

  else
  {
    v14 = (a2 + *(v7 + 52));
    v16 = *v14;
    v15 = v14[1];
    v21[3] = *v14;
    v21[4] = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF350, &qword_23D8E3800);
    sub_23D8DE320();
    if (__OFSUB__(v22, 1))
    {
      __break(1u);
    }

    else
    {
      v21[1] = v16;
      v21[2] = v15;
      v21[0] = v22 - 1;
      sub_23D8DE330();
    }
  }
}

uint64_t sub_23D8965E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_23D896608, 0, 0);
}

uint64_t sub_23D896608()
{
  *(v0 + 40) = sub_23D8DE9D0();
  *(v0 + 48) = sub_23D8DE9C0();
  v2 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D8966A0, v2, v1);
}

uint64_t sub_23D8966A0()
{
  v1 = v0[3];
  v2 = v0[4];

  v4 = type metadata accessor for SSHUDRoundView(0, v1, v2, v3);
  v0[7] = sub_23D896888(v4);

  return MEMORY[0x2822009F8](sub_23D896738, 0, 0);
}

uint64_t sub_23D896738(uint64_t a1)
{
  *(v1 + 64) = sub_23D8DE9C0();
  v3 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D8967C4, v3, v2);
}

uint64_t sub_23D8967C4()
{

  sub_23D861AB4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23D896834@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D8DD2E0();
  *a1 = result;
  return result;
}

uint64_t sub_23D896888(uint64_t a1)
{
  result = *(v1 + *(a1 + 40));
  if (!result)
  {
    type metadata accessor for SSStore(0);
    sub_23D898790(&qword_27E2ED008, type metadata accessor for SSStore, &unk_23D8E1DE0);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D896940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for SSHUDRoundView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_23D88ECB4(a1, a2, v10, v7, v8);
}

uint64_t sub_23D8969F4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SSHUDRoundView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

unint64_t sub_23D896B00()
{
  result = qword_27E2EF268;
  if (!qword_27E2EF268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF218, &qword_23D8E3720);
    sub_23D896B8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF268);
  }

  return result;
}

unint64_t sub_23D896B8C()
{
  result = qword_27E2EF270;
  if (!qword_27E2EF270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF250, &qword_23D8E3748);
    sub_23D896C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF270);
  }

  return result;
}

unint64_t sub_23D896C18()
{
  result = qword_27E2EF278;
  if (!qword_27E2EF278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF248, &qword_23D8E3740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF210, &qword_23D8E3718);
    sub_23D8DC4D0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF208, &qword_23D8E3710);
    type metadata accessor for AXSpeakStopType(255);
    sub_23D835AD0(&qword_27E2EF238, &qword_27E2EF208, &qword_23D8E3710, MEMORY[0x277CE1198]);
    sub_23D898790(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType, &unk_23D8E0188);
    swift_getOpaqueTypeConformance2();
    sub_23D898790(&qword_27E2EF240, MEMORY[0x277CE7250], MEMORY[0x277CE7260]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF278);
  }

  return result;
}

unint64_t sub_23D896DF0()
{
  result = qword_27E2EF280;
  if (!qword_27E2EF280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF260, &qword_23D8E3758);
    sub_23D896B00();
    sub_23D835AD0(&qword_27E2ED8B0, &qword_27E2ED8B8, &qword_23D8E2B80, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF280);
  }

  return result;
}

uint64_t sub_23D896EA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF220, &qword_23D8E3728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23D896F64(uint64_t a1)
{
  sub_23D8974E4(319, &qword_27E2ED618, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_23D8974E4(319, &qword_27E2ED228, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_23D83475C(319);
      if (v3 <= 0x3F)
      {
        sub_23D851F1C(319, &qword_27E2EF310, MEMORY[0x277D83A90]);
        if (v4 <= 0x3F)
        {
          sub_23D851F1C(319, &qword_27E2ED018, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_23D851F1C(319, &qword_27E2EF318, MEMORY[0x277D83B88]);
            if (v6 <= 0x3F)
            {
              sub_23D897548(319);
              if (v7 <= 0x3F)
              {
                sub_23D8975AC(319);
                if (v8 <= 0x3F)
                {
                  sub_23D8DCF20();
                  if (v9 <= 0x3F)
                  {
                    sub_23D8974E4(319, &qword_27E2EF330, MEMORY[0x277CE7250], MEMORY[0x277CE10B8]);
                    if (v10 <= 0x3F)
                    {
                      sub_23D87D238(319);
                      if (v11 <= 0x3F)
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
  }
}

uint64_t sub_23D8971A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[9];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[15]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF230, &qword_23D8E3738);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[18];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_23D89734C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[15]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF230, &qword_23D8E3738);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[18];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_23D8974E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23D897548(uint64_t a1)
{
  if (!qword_27E2ED630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED5C0, &qword_23D8E0DF0);
    v1 = sub_23D8DE350();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2ED630);
    }
  }
}

void sub_23D8975AC(uint64_t a1)
{
  if (!qword_27E2EF320)
  {
    sub_23D856774(255, &qword_27E2EF328, 0x277D755B8);
    v1 = sub_23D8DE350();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2EF320);
    }
  }
}

unint64_t sub_23D897618()
{
  result = qword_27E2EF338;
  if (!qword_27E2EF338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2EF288, &qword_23D8E3760);
    sub_23D8976A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF338);
  }

  return result;
}

unint64_t sub_23D8976A4()
{
  result = qword_27E2EF340;
  if (!qword_27E2EF340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF220, &qword_23D8E3728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF218, &qword_23D8E3720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF258, &qword_23D8E3750);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF260, &qword_23D8E3758);
    sub_23D896B00();
    sub_23D8DD090();
    sub_23D898790(&qword_27E2EE3D0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    swift_getOpaqueTypeConformance2();
    sub_23D896DF0();
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EF348, &qword_27E2EDE30, &qword_23D8E4AD0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF340);
  }

  return result;
}

uint64_t sub_23D897868(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF218, &qword_23D8E3720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23D8978D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SSHUDRoundView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_23D896340(a1, v9, v6, v7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D897980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for SSHUDRoundView(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_23D836234;

  return sub_23D8965E4(a1, v11, v12, v4 + v10, v7, v8);
}

unint64_t sub_23D897AA4()
{
  result = qword_27E2EF3D0;
  if (!qword_27E2EF3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
    sub_23D897B5C();
    sub_23D835AD0(&qword_27E2EF080, &qword_27E2EF088, &qword_23D8E3190, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF3D0);
  }

  return result;
}

unint64_t sub_23D897B5C()
{
  result = qword_27E2EF3D8;
  if (!qword_27E2EF3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3E0, &qword_23D8E3890);
    sub_23D835AD0(&qword_27E2EED38, &qword_27E2EED40, &unk_23D8E3C30, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF3D8);
  }

  return result;
}

unint64_t sub_23D897C14()
{
  result = qword_27E2EF3E8;
  if (!qword_27E2EF3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C8, &qword_23D8E3888);
    sub_23D835AD0(&qword_27E2EF3F0, &qword_27E2EF3F8, &qword_23D8E3898, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF3E8);
  }

  return result;
}

uint64_t sub_23D897CCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D8DD2E0();
  *a1 = result;
  return result;
}

unint64_t sub_23D897D28()
{
  result = qword_27E2EF418;
  if (!qword_27E2EF418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3B0, &qword_23D8E3870);
    sub_23D897DB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF418);
  }

  return result;
}

unint64_t sub_23D897DB4()
{
  result = qword_27E2EF420;
  if (!qword_27E2EF420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF410, &qword_23D8E38D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3A8, &qword_23D8E3868);
    sub_23D8DD8B0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3A0, &qword_23D8E3860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF398, &qword_23D8E3858);
    sub_23D835AD0(&qword_27E2EF400, &qword_27E2EF398, &qword_23D8E3858, MEMORY[0x277CDE5B0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D898790(&qword_27E2EF408, MEMORY[0x277CDE310], MEMORY[0x277CDE308]);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EF428, &qword_27E2EF430, &qword_23D8E3920, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF420);
  }

  return result;
}

uint64_t sub_23D897FAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23D898790(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23D898080()
{
  result = qword_27E2EF480;
  if (!qword_27E2EF480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF470, &qword_23D8E3980);
    sub_23D8DC4D0();
    sub_23D898790(&qword_27E2EF478, MEMORY[0x277CE7250], MEMORY[0x277CE7258]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF480);
  }

  return result;
}

id sub_23D898178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SSHUDRoundView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(v4 + *(v5 + 64) + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + 8);

  return [v6 stopButtonPressed];
}

uint64_t objectdestroy_19Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SSHUDRoundView(0, *(v4 + 32), *(v4 + 40), a4);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v6 + 48) & ~v6;
  v8 = *(*(v5 - 1) + 64);
  swift_unknownObjectRelease();
  v9 = v4 + v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D8DCCB0();
    (*(*(v10 - 8) + 8))(v4 + v7, v10);
  }

  else
  {
  }

  v11 = v5[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23D8DCF90();
    (*(*(v12 - 8) + 8))(v9 + v11, v12);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  v13 = v9 + v5[18];
  v14 = sub_23D8DC4D0();
  (*(*(v14 - 8) + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF230, &qword_23D8E3738);

  sub_23D8531A4(*(v9 + v5[19]), *(v9 + v5[19] + 8));

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_23D8984A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for SSHUDRoundView(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_23D835CB4;

  return sub_23D894348(a1, v11, v12, v4 + v10, v7, v8);
}

double __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t sub_23D898620(SEL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SSHUDRoundView(0, v6, v7, a4) - 8);
  return sub_23D894080(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a1);
}

unint64_t sub_23D8986D8()
{
  result = qword_27E2EF4E0;
  if (!qword_27E2EF4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF4D8, &qword_23D8E3A08);
    sub_23D835AD0(&qword_27E2EF080, &qword_27E2EF088, &qword_23D8E3190, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF4E0);
  }

  return result;
}

uint64_t sub_23D898790(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23D8987D8()
{
  result = qword_27E2EF4F0;
  if (!qword_27E2EF4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF4C8, &qword_23D8E39F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF4C0, &qword_23D8E39F0);
    sub_23D8DD080();
    sub_23D835AD0(&qword_27E2EF4E8, &qword_27E2EF4C0, &qword_23D8E39F0, MEMORY[0x277CDF028]);
    sub_23D898790(&qword_27E2ED4F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EED38, &qword_27E2EED40, &unk_23D8E3C30, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF4F0);
  }

  return result;
}

unint64_t sub_23D898980()
{
  result = qword_27E2EF538;
  if (!qword_27E2EF538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF530, &qword_23D8E3A38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF520, &qword_23D8E3A30);
    sub_23D835AD0(&qword_27E2EF528, &qword_27E2EF520, &qword_23D8E3A30, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EE4C8, &qword_27E2EE4D0, &qword_23D8E3A40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF538);
  }

  return result;
}

unint64_t sub_23D898AA8()
{
  result = qword_27E2EF540;
  if (!qword_27E2EF540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF510, &qword_23D8E3A20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF500, &qword_23D8E3A10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF530, &qword_23D8E3A38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF520, &qword_23D8E3A30);
    sub_23D835AD0(&qword_27E2EF528, &qword_27E2EF520, &qword_23D8E3A30, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    sub_23D898980();
    swift_getOpaqueTypeConformance2();
    sub_23D898790(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF540);
  }

  return result;
}

uint64_t objectdestroyTm_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SSHUDRoundView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 1) + 64);
  v9 = v4 + v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D8DCCB0();
    (*(*(v10 - 8) + 8))(v4 + v7, v10);
  }

  else
  {
  }

  v11 = v5[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23D8DCF90();
    (*(*(v12 - 8) + 8))(v9 + v11, v12);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  v13 = v9 + v5[18];
  v14 = sub_23D8DC4D0();
  (*(*(v14 - 8) + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF230, &qword_23D8E3738);

  sub_23D8531A4(*(v9 + v5[19]), *(v9 + v5[19] + 8));

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_23D898FFC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF550, &unk_23D8E3B30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_23D8990CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF550, &unk_23D8E3B30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AXRTextBlockView(uint64_t a1)
{
  result = qword_27E2EF558;
  if (!qword_27E2EF558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D8991C8(uint64_t a1)
{
  sub_23D8DC240();
  if (v1 <= 0x3F)
  {
    sub_23D86FE4C(319);
    if (v2 <= 0x3F)
    {
      sub_23D89927C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23D89927C(uint64_t a1)
{
  if (!qword_27E2EF568)
  {
    sub_23D8DCE20();
    v1 = sub_23D8DCD20();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2EF568);
    }
  }
}

uint64_t sub_23D8992F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v118 = a1;
  v3 = sub_23D8DBE70();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF570, &qword_23D8E3BA8);
  v107 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v106 = &v95 - v6;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF578, &qword_23D8E3BB0);
  v7 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v9 = &v95 - v8;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF580, &qword_23D8E3BB8);
  MEMORY[0x28223BE20](v114);
  v115 = &v95 - v10;
  v11 = sub_23D8DCF90();
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x28223BE20](v11);
  v110 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_23D8DDC60();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AXRTextBlockView(0);
  v96 = *(v14 - 8);
  v15 = *(v96 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF588, &qword_23D8E3BC0);
  MEMORY[0x28223BE20](v97);
  v17 = &v95 - v16;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF590, &qword_23D8E3BC8);
  MEMORY[0x28223BE20](v108);
  v101 = &v95 - v18;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF598, &qword_23D8E3BD0);
  v103 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v102 = &v95 - v19;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF5A0, &qword_23D8E3BD8);
  v105 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v104 = &v95 - v20;
  if (sub_23D8DC200() & 1) != 0 && (sub_23D8DC220(), v21 = sub_23D8DE8B0(), , (v21))
  {
    v119 = sub_23D8DC220();
    v120 = v22;
    sub_23D83CB18();
    v23 = sub_23D8DDCB0();
    v25 = v24;
    v119 = v23;
    v120 = v24;
    v27 = v26 & 1;
    v121 = v26 & 1;
    v122 = v28;
    sub_23D89C9F0(v2, &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = (*(v96 + 80) + 16) & ~*(v96 + 80);
    v30 = swift_allocObject();
    sub_23D89CB78(&v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
    sub_23D8DDD60();

    sub_23D83CB6C(v23, v25, v27);

    v31 = sub_23D8DC960();
    v32 = sub_23D8DC210();
    v33 = sub_23D8DC1A0();
    v35 = blockFont(forModel:isHeader:headingLevel:)(v31, v32 & 1, v33, v34 & 1);

    KeyPath = swift_getKeyPath();
    v37 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF5E0, &unk_23D8E3C20) + 36)];
    *v37 = KeyPath;
    v37[1] = v35;
    sub_23D8DC960();
    v38 = sub_23D8DC6F0();

    *&v17[*(v97 + 36)] = v38;
    v39 = v98;
    sub_23D8DDC50();
    sub_23D89C850();
    v40 = v101;
    sub_23D8DE110();
    (*(v99 + 8))(v39, v100);
    sub_23D83C6E4(v17, &qword_27E2EF588, &qword_23D8E3BC0);
    sub_23D8DC960();
    sub_23D8DC680();
    v42 = v41;

    sub_23D8DC960();
    sub_23D8DC680();
    v44 = v43;

    if (v42 <= 0.0)
    {
      v45 = v44;
    }

    else
    {
      v45 = v44 * 10.0;
    }

    v46 = swift_getKeyPath();
    v47 = v108;
    v48 = v40 + *(v108 + 36);
    *v48 = v46;
    *(v48 + 8) = v45;
    sub_23D8DC960();
    sub_23D8DC670();

    sub_23D8DC960();
    sub_23D8DC670();

    v49 = sub_23D89C75C();
    v50 = v102;
    sub_23D8DE000();
    sub_23D83C6E4(v40, &qword_27E2EF590, &qword_23D8E3BC8);
    sub_23D8DC960();
    v51 = v110;
    sub_23D8DC720();

    v119 = v47;
    v120 = v49;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v53 = v104;
    v54 = v109;
    sub_23D8DDDC0();
    (*(v111 + 8))(v51, v112);
    (*(v103 + 8))(v50, v54);
    v55 = v105;
    v56 = v113;
    (*(v105 + 16))(v115, v53, v113);
    swift_storeEnumTagMultiPayload();
    v119 = v54;
    v120 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF5A8, &qword_23D8E3C10);
    v58 = sub_23D89C6A4();
    v119 = v57;
    v120 = v58;
    v59 = swift_getOpaqueTypeConformance2();
    v119 = v116;
    v120 = v59;
    swift_getOpaqueTypeConformance2();
    sub_23D8DD6B0();
    return (*(v55 + 8))(v53, v56);
  }

  else
  {
    sub_23D89A28C(v5);
    v61 = sub_23D8DDCA0();
    v63 = v62;
    v105 = v7;
    v65 = v64;
    v66 = sub_23D8DC960();
    v67 = sub_23D8DC210();
    v68 = sub_23D8DC1A0();
    blockFont(forModel:isHeader:headingLevel:)(v66, v67 & 1, v68, v69 & 1);

    v70 = sub_23D8DDC40();
    v72 = v71;
    v104 = v9;
    v74 = v73;
    v76 = v75;

    sub_23D83CB6C(v61, v63, v65 & 1);

    sub_23D8DC960();
    sub_23D8DC680();
    v78 = v77;

    sub_23D8DC960();
    sub_23D8DC680();
    v80 = v79;

    if (v78 <= 0.0)
    {
      v81 = v80;
    }

    else
    {
      v81 = v80 * 10.0;
    }

    v82 = swift_getKeyPath();
    v119 = v70;
    v120 = v72;
    v83 = v74 & 1;
    v121 = v74 & 1;
    v122 = v76;
    v123 = v82;
    v124 = v81;
    sub_23D8DC960();
    sub_23D8DC670();

    sub_23D8DC960();
    sub_23D8DC670();

    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF5A8, &qword_23D8E3C10);
    v85 = sub_23D89C6A4();
    v86 = v106;
    sub_23D8DE000();
    sub_23D83CB6C(v70, v72, v83);

    sub_23D8DC960();
    v87 = v110;
    sub_23D8DC720();

    v119 = v84;
    v120 = v85;
    v88 = swift_getOpaqueTypeConformance2();
    v89 = v104;
    v90 = v116;
    sub_23D8DDDC0();
    (*(v111 + 8))(v87, v112);
    (*(v107 + 8))(v86, v90);
    v91 = v105;
    v92 = v117;
    (*(v105 + 16))(v115, v89, v117);
    swift_storeEnumTagMultiPayload();
    v93 = sub_23D89C75C();
    v119 = v108;
    v120 = v93;
    v94 = swift_getOpaqueTypeConformance2();
    v119 = v109;
    v120 = v94;
    swift_getOpaqueTypeConformance2();
    v119 = v90;
    v120 = v88;
    swift_getOpaqueTypeConformance2();
    sub_23D8DD6B0();
    return (*(v91 + 8))(v89, v92);
  }
}

uint64_t sub_23D89A024()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEAB8, &qword_23D8E3C70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_23D8DBF20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8DC220();
  sub_23D8DBF10();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_23D83C6E4(v2, &unk_27E2EEAB8, &qword_23D8E3C70);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() sharedApplication];
  v9 = sub_23D8DBF00();
  sub_23D878A60(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_23D89CDB0(&qword_27E2ED190, type metadata accessor for OpenExternalURLOptionsKey, &unk_23D8E07F0);
  v10 = sub_23D8DE7C0();

  [v8 openURL:v9 options:v10 completionHandler:0];

  return (*(v4 + 8))(v6, v3);
}

void sub_23D89A28C(char *a1@<X8>)
{
  v3 = sub_23D8DDC60();
  MEMORY[0x28223BE20](v3 - 8);
  v138 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF5E8, &qword_23D8E3C78);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v139 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v140 = &v132 - v8;
  v9 = sub_23D8DC590();
  v142 = *(v9 - 8);
  v143 = v9;
  MEMORY[0x28223BE20](v9);
  v141 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF5F0, &qword_23D8E3C80);
  v11 = MEMORY[0x28223BE20](v145);
  v146 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v144 = &v132 - v13;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF5F8, &qword_23D8E3C88);
  MEMORY[0x28223BE20](v147);
  v148 = &v132 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF600, &qword_23D8E3C90);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v150 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v152 = &v132 - v19;
  MEMORY[0x28223BE20](v18);
  v153 = (&v132 - v20);
  v154 = sub_23D8DBE50();
  v156 = *(v154 - 8);
  v21 = MEMORY[0x28223BE20](v154);
  v149 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v151 = &v132 - v24;
  MEMORY[0x28223BE20](v23);
  v155 = &v132 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF608, &qword_23D8E3C98);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v132 - v27;
  v29 = sub_23D8DBE70();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v132 - v34;
  v36 = sub_23D8DBEC0();
  MEMORY[0x28223BE20](v36 - 8);
  v157 = v1;
  sub_23D8DC220();
  sub_23D8DBEB0();
  sub_23D8DBE80();
  sub_23D8DC190();
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_23D83C6E4(v28, &qword_27E2EF608, &qword_23D8E3C98);
  }

  else
  {
    (*(v30 + 8))(a1, v29);
    v37 = *(v30 + 32);
    v37(v35, v28, v29);
    v37(a1, v35, v29);
  }

  v38 = v157;
  if (*(v157 + 40) == 1)
  {
    v39 = v33;
    sub_23D8DC960();
    v40 = sub_23D8DC740();

    sub_23D89B744(a1, v40 & 1);
    if (*(v38 + 8) == 1)
    {
      v41 = sub_23D8DC1C0();
      if ((v43 & 1) == 0 && (v41 ^ v42) >= 0x4000)
      {
        v135 = v42;
        sub_23D8DC220();

        sub_23D8DC220();

        v137 = *(v30 + 16);
        v137(v33, a1, v29);
        v44 = sub_23D89CDB0(&qword_27E2EF610, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
        v45 = v153;
        v136 = v44;
        sub_23D8DBE60();
        v46 = a1;
        v47 = v156;
        v48 = *(v156 + 48);
        v49 = v39;
        v50 = v154;
        if (v48(v45, 1, v154) == 1)
        {
          sub_23D83C6E4(v45, &qword_27E2EF600, &qword_23D8E3C90);
          return;
        }

        v51 = v45;
        v52 = (v47 + 32);
        v153 = *(v47 + 32);
        v153(v155, v51, v50);
        v137(v49, v46, v29);
        v53 = v152;
        sub_23D8DBE60();
        if (v48(v53, 1, v50) == 1)
        {
          (*(v47 + 8))(v155, v50);
          sub_23D83C6E4(v53, &qword_27E2EF600, &qword_23D8E3C90);
          return;
        }

        v54 = v53;
        v55 = v151;
        v56 = v153;
        v153(v151, v54, v50);
        v137(v49, v46, v29);
        v57 = v150;
        sub_23D8DBE60();
        if (v48(v57, 1, v50) == 1)
        {
          v58 = *(v156 + 8);
          v58(v55, v50);
          v58(v155, v50);
          sub_23D83C6E4(v57, &qword_27E2EF600, &qword_23D8E3C90);
          return;
        }

        v59 = v56;
        v60 = v149;
        v152 = v52;
        v59(v149, v57, v50);
        v61 = *(v157 + 24);
        sub_23D8DC960();
        v62 = sub_23D8DC740();

        v64 = v155;
        v63 = v156;
        if ((v62 & 1) == 0)
        {
          v92 = *(v156 + 8);
          v92(v60, v50);
          v92(v55, v50);
          v92(v64, v50);
          return;
        }

        v150 = v61;
        v157 = v46;
        v137 = sub_23D89CDB0(&qword_27E2EF618, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
        if (sub_23D8DE810())
        {
          v65 = *(v63 + 16);
          v66 = v144;
          v65(v144, v64, v50);
          v67 = v145;
          v68 = v66 + *(v145 + 48);
          v134 = v63 + 16;
          v133 = v65;
          v65(v68, v60, v50);
          v69 = v146;
          sub_23D83C67C(v66, v146, &qword_27E2EF5F0, &qword_23D8E3C80);
          v70 = *(v67 + 48);
          v71 = v153;
          v153(v148, v69, v50);
          v72 = *(v63 + 8);
          v72(v69 + v70, v50);
          sub_23D89CC44(v66, v69);
          v73 = v148;
          v71(&v148[*(v147 + 36)], v69 + *(v67 + 48), v50);
          v156 = v63 + 8;
          v136 = v72;
          v72(v69, v50);
          sub_23D8DC960();
          v74 = sub_23D8DC810();

          v135 = sub_23D835AD0(&qword_27E2EF620, &qword_27E2EF5F8, &qword_23D8E3C88, MEMORY[0x277D83D30]);
          v75 = sub_23D8DBEA0();
          v76 = v155;
          v77 = v75;
          v158 = v74;
          v78 = sub_23D89CCB4();
          sub_23D8DBEF0();
          v77(v159, 0);
          sub_23D83C6E4(v73, &qword_27E2EF5F8, &qword_23D8E3C88);
          sub_23D8DC960();
          v79 = v141;
          sub_23D8DC6D0();

          v80 = (*(v142 + 88))(v79, v143);
          if (v80 != *MEMORY[0x277CE72D8])
          {
            if (v80 != *MEMORY[0x277CE72D0])
            {
              v106 = v151;
              v107 = v149;
              if (v80 != *MEMORY[0x277CE72E0])
              {
                v140 = v78;
                v120 = v154;
                v121 = v155;
                if (sub_23D8DE810())
                {
                  v122 = v144;
                  v123 = v133;
                  v133(v144, v121, v120);
                  v124 = v145;
                  v123(v122 + *(v145 + 48), v107, v120);
                  v125 = v146;
                  sub_23D83C67C(v122, v146, &qword_27E2EF5F0, &qword_23D8E3C80);
                  v126 = *(v124 + 48);
                  v127 = v148;
                  v128 = v153;
                  v153(v148, v125, v120);
                  v129 = v136;
                  v136(v125 + v126, v120);
                  sub_23D89CC44(v122, v125);
                  v128(v127 + *(v147 + 36), v125 + *(v124 + 48), v120);
                  v129(v125, v120);
                  sub_23D8DC960();
                  v130 = sub_23D8DC810();

                  v131 = sub_23D8DBEA0();
                  v158 = v130;
                  sub_23D8DBEF0();
                  v131(v159, 0);
                  sub_23D83C6E4(v127, &qword_27E2EF5F8, &qword_23D8E3C88);
                  v129(v149, v120);
                  v129(v151, v120);
                  v129(v121, v120);
                  (*(v142 + 8))(v141, v143);
                  return;
                }

                goto LABEL_34;
              }

              v108 = v154;
              if (sub_23D8DE810())
              {
                v109 = v144;
                v110 = v133;
                v133(v144, v106, v108);
                v111 = v145;
                v110(v109 + *(v145 + 48), v107, v108);
                v112 = v146;
                sub_23D83C67C(v109, v146, &qword_27E2EF5F0, &qword_23D8E3C80);
                v113 = *(v111 + 48);
                v114 = v148;
                v115 = v153;
                v153(v148, v112, v108);
                v116 = v136;
                v136(v112 + v113, v108);
                sub_23D89CC44(v109, v112);
                v115(v114 + *(v147 + 36), v112 + *(v111 + 48), v108);
                v116(v112, v108);
                sub_23D8DDC50();
                sub_23D8DC960();
                sub_23D8DC6B0();

                v117 = v140;
                sub_23D8DDC70();
                v118 = sub_23D8DDC80();
                (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
                v119 = sub_23D8DBEA0();
                sub_23D83C67C(v117, v139, &qword_27E2EF5E8, &qword_23D8E3C78);
                sub_23D89CD08();
                sub_23D8DBEF0();
                sub_23D83C6E4(v117, &qword_27E2EF5E8, &qword_23D8E3C78);
                v119(v159, 0);
                sub_23D83C6E4(v114, &qword_27E2EF5F8, &qword_23D8E3C88);
                v116(v149, v108);
                v116(v151, v108);
                v116(v155, v108);
                return;
              }

LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
              return;
            }

            v93 = v151;
            v94 = v149;
            v95 = v154;
            if (sub_23D8DE810())
            {
              v96 = v144;
              v97 = v133;
              v133(v144, v93, v95);
              v98 = v145;
              v97(v96 + *(v145 + 48), v94, v95);
              v99 = v146;
              sub_23D83C67C(v96, v146, &qword_27E2EF5F0, &qword_23D8E3C80);
              v100 = *(v98 + 48);
              v101 = v148;
              v102 = v153;
              v153(v148, v99, v95);
              v103 = v136;
              v136(v99 + v100, v95);
              sub_23D89CC44(v96, v99);
              v102(v101 + *(v147 + 36), v99 + *(v98 + 48), v95);
              v103(v99, v95);
              sub_23D8DC960();
              sub_23D8DC6B0();

              v104 = sub_23D8DE250();

              v105 = sub_23D8DBEA0();
              v158 = v104;
              sub_23D89CD5C();
              sub_23D8DBEF0();
              v105(v159, 0);
              sub_23D83C6E4(v101, &qword_27E2EF5F8, &qword_23D8E3C88);
              v103(v149, v95);
              v103(v151, v95);
              v103(v155, v95);
              return;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v140 = v78;
          if (sub_23D8DE810())
          {
            v81 = v144;
            v82 = v133;
            v133(v144, v76, v50);
            v83 = v145;
            v82(v81 + *(v145 + 48), v60, v50);
            v84 = v146;
            sub_23D83C67C(v81, v146, &qword_27E2EF5F0, &qword_23D8E3C80);
            v85 = *(v83 + 48);
            v86 = v148;
            v87 = v50;
            v88 = v153;
            v153(v148, v84, v50);
            v89 = v136;
            v136(v84 + v85, v87);
            sub_23D89CC44(v81, v84);
            v88(v86 + *(v147 + 36), v84 + *(v83 + 48), v87);
            v89(v84, v87);
            sub_23D8DC960();
            v90 = sub_23D8DC810();

            v91 = sub_23D8DBEA0();
            v158 = v90;
            sub_23D8DBEF0();
            v91(v159, 0);
            sub_23D83C6E4(v86, &qword_27E2EF5F8, &qword_23D8E3C88);
            v89(v149, v87);
            v89(v151, v87);
            v89(v155, v87);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_32;
      }
    }
  }

  else
  {
    sub_23D89B744(a1, 0);
  }
}

void sub_23D89B744(uint64_t a1, char a2)
{
  sub_23D8DC960();
  sub_23D8DC800();

  sub_23D8DE250();

  sub_23D89CCB4();
  sub_23D8DBE90();
  sub_23D89B808(a1);
}

void sub_23D89B808(uint64_t a1)
{
  v36 = sub_23D8DBEC0();
  v2 = *(v36 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v36);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - v5;
  v7 = sub_23D8DBE30();
  MEMORY[0x28223BE20](v7);
  v8 = sub_23D8DBE70();
  v9 = swift_allocBox();
  v39 = v10;
  v40 = v9;
  v11 = *(v8 - 8);
  v12 = *(v11 + 16);
  v38 = v11 + 16;
  v37 = v12;
  v12(v10, a1, v8);
  sub_23D8DBE20();
  v13 = *(v11 + 8);
  v41 = v8;
  v42 = a1;
  v13(a1, v8);
  sub_23D89CDB0(&qword_27E2EF640, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
  v14 = sub_23D8DE950();
  v16 = v15;
  sub_23D8DC960();
  sub_23D8DC690();
  v18 = v17;

  v19 = 1.0;
  if (v18 != 1.0)
  {
    sub_23D8DEA20();
    v19 = v20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EE9F0, &unk_23D8E3CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D8E0890;
  v22 = *MEMORY[0x277D740D0];
  *(inited + 32) = *MEMORY[0x277D740D0];
  v23 = v22;
  sub_23D8DC960();
  sub_23D8DC690();
  v25 = v24;

  *(inited + 64) = MEMORY[0x277D839F8];
  *(inited + 40) = v19 * v25;
  sub_23D878214(inited);
  swift_setDeallocating();
  sub_23D83C6E4(inited + 32, &unk_27E2EEA00, &qword_23D8E2A80);
  v35 = v6;
  sub_23D8DBED0();
  v26 = swift_allocObject();
  *(v26 + 16) = 15;
  v43 = v14;
  v44 = v16;
  v27 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v27 = v14;
  }

  v28 = 11;
  if (((v16 >> 60) & ((v14 & 0x800000000000000) == 0)) == 0)
  {
    v28 = 7;
  }

  v45 = 15;
  v46 = v28 | (v27 << 16);
  v29 = v36;
  (*(v2 + 16))(&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v36);
  v30 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = v14;
  *(v31 + 3) = v16;
  v32 = v40;
  *(v31 + 4) = v26;
  *(v31 + 5) = v32;
  (*(v2 + 32))(&v31[v30], &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED888, &qword_23D8E3CB0);
  sub_23D83CB18();
  sub_23D835AD0(&qword_27E2EF648, &qword_27E2ED888, &qword_23D8E3CB0, MEMORY[0x277D83D30]);
  sub_23D8DEBE0();

  (*(v2 + 8))(v35, v29);

  v33 = v39;
  swift_beginAccess();
  v37(v42, v33, v41);
}

uint64_t sub_23D89BCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v77 = a7;
  v71 = a4;
  v78 = a10;
  v68 = sub_23D8DBE40();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF5F0, &qword_23D8E3C80);
  v16 = MEMORY[0x28223BE20](v63);
  v62 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = v59 - v18;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF5F8, &qword_23D8E3C88);
  MEMORY[0x28223BE20](v64);
  v65 = v59 - v19;
  v20 = sub_23D8DBE70();
  v72 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF600, &qword_23D8E3C90);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v70 = v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = v59 - v26;
  v73 = sub_23D8DBE50();
  v76 = *(v73 - 8);
  v28 = MEMORY[0x28223BE20](v73);
  v69 = v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v75 = v59 - v30;
  v74 = swift_projectBox();
  v79 = a8;
  v80 = a9;
  sub_23D83CB18();
  sub_23D8DE8E0();
  v79 = a8;
  v80 = a9;

  v31 = sub_23D8DE8D0();
  if (!a2 || (a1 != 32 || a2 != 0xE100000000000000) && (sub_23D8DED20() & 1) == 0)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  sub_23D8DE940();
  v32 = sub_23D8DE7F0();

  if (v32)
  {
    goto LABEL_13;
  }

  v79 = a8;
  v80 = a9;
  sub_23D8DE8E0();
  v79 = a8;
  v80 = a9;

  v71 = sub_23D8DE8D0();
  v33 = v74;
  swift_beginAccess();
  v60 = *(v72 + 16);
  v60(v22, v33, v20);
  sub_23D89CDB0(&qword_27E2EF610, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
  v72 = v31;
  sub_23D8DBE60();
  v34 = v76;
  v35 = *(v76 + 48);
  v36 = v73;
  if (v35(v27, 1, v73) == 1)
  {
    sub_23D83C6E4(v27, &qword_27E2EF600, &qword_23D8E3C90);
LABEL_12:
    v31 = v72;
LABEL_13:
    v58 = v78;
    result = swift_beginAccess();
    *(v58 + 16) = v31;
    *v77 = 0;
    return result;
  }

  v37 = *(v34 + 32);
  v59[1] = v34 + 32;
  v59[0] = v37;
  v37(v75, v27, v36);
  swift_beginAccess();
  v60(v22, v33, v20);
  v38 = v70;
  sub_23D8DBE60();
  v39 = v36;
  if (v35(v38, 1, v36) == 1)
  {
    (*(v34 + 8))(v75, v36);
    sub_23D83C6E4(v38, &qword_27E2EF600, &qword_23D8E3C90);
    goto LABEL_12;
  }

  v40 = v69;
  v41 = v59[0];
  (v59[0])(v69, v38, v36);
  sub_23D89CDB0(&qword_27E2EF618, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
  v42 = v75;
  result = sub_23D8DE810();
  if (result)
  {
    v44 = v42;
    v71 = a12;
    v45 = v76;
    v46 = *(v76 + 16);
    v47 = v61;
    v46(v61, v44, v39);
    v48 = v63;
    v46((v47 + *(v63 + 48)), v40, v39);
    v49 = v62;
    sub_23D83C67C(v47, v62, &qword_27E2EF5F0, &qword_23D8E3C80);
    v50 = *(v48 + 48);
    v51 = v39;
    v52 = v65;
    v41(v65, v49, v51);
    v53 = *(v45 + 8);
    v53(v49 + v50, v51);
    sub_23D89CC44(v47, v49);
    v41((v52 + *(v64 + 36)), v49 + *(v48 + 48), v51);
    v53(v49, v51);
    v54 = v67;
    v55 = v66;
    v56 = v68;
    (*(v67 + 104))(v66, *MEMORY[0x277CC8B80], v68);
    swift_beginAccess();
    sub_23D835AD0(&qword_27E2EF620, &qword_27E2EF5F8, &qword_23D8E3C88, MEMORY[0x277D83D30]);
    v57 = sub_23D8DBEA0();
    sub_23D8DBEE0();
    v57(&v79, 0);
    swift_endAccess();
    (*(v54 + 8))(v55, v56);
    sub_23D83C6E4(v52, &qword_27E2EF5F8, &qword_23D8E3C88);
    v53(v69, v51);
    v53(v75, v51);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_23D89C6A4()
{
  result = qword_27E2EF5B0;
  if (!qword_27E2EF5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF5A8, &qword_23D8E3C10);
    sub_23D835AD0(&qword_27E2EF5B8, &qword_27E2EF5C0, &qword_23D8E3C18, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF5B0);
  }

  return result;
}

unint64_t sub_23D89C75C()
{
  result = qword_27E2EF5C8;
  if (!qword_27E2EF5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF590, &qword_23D8E3BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF588, &qword_23D8E3BC0);
    sub_23D89C850();
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EF5B8, &qword_27E2EF5C0, &qword_23D8E3C18, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF5C8);
  }

  return result;
}

unint64_t sub_23D89C850()
{
  result = qword_27E2EF5D0;
  if (!qword_27E2EF5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF588, &qword_23D8E3BC0);
    sub_23D89C908();
    sub_23D835AD0(&qword_27E2EED38, &qword_27E2EED40, &unk_23D8E3C30, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF5D0);
  }

  return result;
}

unint64_t sub_23D89C908()
{
  result = qword_27E2EF5D8;
  if (!qword_27E2EF5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF5E0, &unk_23D8E3C20);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EF080, &qword_27E2EF088, &qword_23D8E3190, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF5D8);
  }

  return result;
}

uint64_t sub_23D89C9F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextBlockView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D89CA54()
{
  v1 = (type metadata accessor for AXRTextBlockView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE788, &qword_23D8E2790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D8DCE20();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D89CB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextBlockView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D89CBDC()
{
  type metadata accessor for AXRTextBlockView(0);

  return sub_23D89A024();
}

uint64_t sub_23D89CC44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF5F0, &qword_23D8E3C80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D89CCB4()
{
  result = qword_27E2EF628;
  if (!qword_27E2EF628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF628);
  }

  return result;
}

unint64_t sub_23D89CD08()
{
  result = qword_27E2EF630;
  if (!qword_27E2EF630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF630);
  }

  return result;
}

unint64_t sub_23D89CD5C()
{
  result = qword_27E2EF638;
  if (!qword_27E2EF638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF638);
  }

  return result;
}

uint64_t sub_23D89CDB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D89CE08()
{
  v1 = sub_23D8DBEC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_23D89CFA8()
{
  result = qword_27E2EF650;
  if (!qword_27E2EF650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF658, &qword_23D8E3CB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF598, &qword_23D8E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF590, &qword_23D8E3BC8);
    sub_23D89C75C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF570, &qword_23D8E3BA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF5A8, &qword_23D8E3C10);
    sub_23D89C6A4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF650);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23D89D138(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_23D89D180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23D89D1FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23D83CB18();

  v5 = sub_23D8DDCB0();
  v7 = v6;
  v9 = v8;
  if (a1[3])
  {
    v26 = v4;

    v10 = sub_23D8DDCB0();
    v12 = v11;
    v27 = v7;
    v14 = v13;
    sub_23D8DDB90();
    v15 = sub_23D8DDC40();
    v17 = v16;
    v25 = v18;
    v20 = v19;

    v21 = v14 & 1;
    v7 = v27;
    sub_23D83CB6C(v10, v12, v21);

    v22 = v25 & 1;
    sub_23D834028(v15, v17, v25 & 1);

    v4 = v26;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v22 = 0;
    v20 = 0;
  }

  v23 = v4 & 1;
  sub_23D834028(v5, v7, v4 & 1);

  sub_23D89D4FC(v15, v17, v22, v20);
  sub_23D89D540(v15, v17, v22, v20);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v23;
  *(a2 + 24) = v9;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17;
  *(a2 + 48) = v22;
  *(a2 + 56) = v20;
  sub_23D89D540(v15, v17, v22, v20);
  sub_23D83CB6C(v5, v7, v23);
}

uint64_t sub_23D89D3E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED798, &unk_23D8E11A0);
  sub_23D8DE470();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF660, &qword_23D8E3D70);
  sub_23D835AD0(&qword_27E2EF668, &qword_27E2EF660, &qword_23D8E3D70, MEMORY[0x277CE14C0]);
  return sub_23D8DE3F0();
}

uint64_t sub_23D89D4FC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23D834028(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23D89D540(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23D83CB6C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23D89D5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_23D89D720(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for AXRHighlightColorSelectionView(uint64_t a1)
{
  result = qword_27E2EF680;
  if (!qword_27E2EF680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D89D88C(uint64_t a1)
{
  sub_23D857704(319, &qword_27E2ED618, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    sub_23D857704(319, &qword_27E2ED228, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      sub_23D8366C8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_23D89D97C()
{
  result = qword_27E2EF690;
  if (!qword_27E2EF690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF690);
  }

  return result;
}

uint64_t sub_23D89D9D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D8DD3C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23D83C67C(v2, &v14 - v9, &qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D8DCCB0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23D8DEAB0();
    v13 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_23D89DBD0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DD3C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AXRHighlightColorSelectionView(0);
  sub_23D83C67C(v1 + *(v10 + 20), v9, &qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D8DCF90();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23D8DEAB0();
    v13 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_23D89DDF4()
{
  v0 = sub_23D8DC560();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D8DC530();
  v5 = *(v4 + 16);
  if (v5)
  {
    v14 = MEMORY[0x277D84F90];
    sub_23D8DECA0();
    v7 = v1 + 16;
    v6 = *(v1 + 16);
    v12[1] = v4;
    v13 = v6;
    v8 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    v10 = (v7 - 8);
    do
    {
      v13(v3, v8, v0);
      sub_23D8DC550();
      (*v10)(v3, v0);
      sub_23D8DEC80();
      sub_23D8DECB0();
      sub_23D8DECC0();
      sub_23D8DEC90();
      v8 += v9;
      --v5;
    }

    while (v5);

    return v14;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_23D89DF94()
{
  v1 = v0;
  if (*(v0 + *(type metadata accessor for AXRHighlightColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    v2 = sub_23D8DC810();

    if (!v2)
    {
      v2 = sub_23D8DE240();
    }

    v9 = v2;
    sub_23D86C2EC();
    sub_23D8DE2A0();
    v3 = sub_23D89DDF4();
    MEMORY[0x28223BE20](v3);
    v8[2] = v1;
    v4 = sub_23D8A5668(sub_23D8A1590, v8, v3);

    if (v4)
    {
      v5 = 1;
    }

    else
    {

      sub_23D8DC960();

      v6 = sub_23D8DC6B0();

      v9 = v6;
      sub_23D8DE2A0();
      v5 = sub_23D8DE180();
    }

    return v5 & 1;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D89E180(uint64_t *a1, uint64_t a2)
{
  sub_23D86C2EC();

  sub_23D8DE2A0();
  if (*(a2 + *(type metadata accessor for AXRHighlightColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    sub_23D8DC6B0();

    sub_23D8DE2A0();
    v3 = sub_23D8DE180();

    return v3 & 1;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D89E2D4@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_23D8DCCB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF698, &qword_23D8E3E88);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v21 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6A0, &qword_23D8E3E90);
  sub_23D835AD0(&qword_27E2EF6A8, &qword_27E2EF6A0, &qword_23D8E3E90, MEMORY[0x277CE14C0]);
  sub_23D8DDBC0();
  if (*(v1 + *(type metadata accessor for AXRHighlightColorSelectionView(0) + 24)))
  {
    sub_23D8380E8();

    sub_23D8DC960();

    sub_23D8DC7E0();

    v10 = sub_23D8DEB80();
    v11 = sub_23D8DEB70();

    v12 = MEMORY[0x277CDF3D0];
    if ((v11 & 1) == 0)
    {
      v12 = MEMORY[0x277CDF3C0];
    }

    (*(v3 + 104))(v5, *v12, v2);
    KeyPath = swift_getKeyPath();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6B0, &qword_23D8E3EC8);
    v15 = v20;
    v16 = (v20 + *(v14 + 36));
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED570, &qword_23D8E0D00);
    (*(v3 + 32))(v16 + *(v17 + 28), v5, v2);
    *v16 = KeyPath;
    return (*(v7 + 32))(v15, v9, v6);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D89E60C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE5D8, &unk_23D8E24C0);
  v3 = *(v33 - 8);
  v4 = MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6B8, &qword_23D8E3ED0);
  v31 = *(v8 - 8);
  v9 = v31;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v36 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6C0, &qword_23D8E3ED8);
  sub_23D835AD0(&qword_27E2EF6C8, &qword_27E2EF6C0, &qword_23D8E3ED8, MEMORY[0x277CE14C0]);
  v15 = v14;
  v30 = v14;
  sub_23D8DE520();
  v35 = a1;
  type metadata accessor for AXRCustomizationColorButton(0);
  sub_23D8A17C8(&qword_27E2EE608, type metadata accessor for AXRCustomizationColorButton, &unk_23D8E17FC);
  v16 = v7;
  v28 = v7;
  sub_23D8DE520();
  v17 = *(v9 + 16);
  v29 = v12;
  v17(v12, v15, v8);
  v18 = *(v3 + 16);
  v19 = v32;
  v20 = v16;
  v21 = v33;
  v18(v32, v20, v33);
  v22 = v34;
  v17(v34, v12, v8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6D0, &qword_23D8E3EE0);
  v18(&v22[*(v23 + 48)], v19, v21);
  v24 = *(v3 + 8);
  v24(v28, v21);
  v25 = *(v31 + 8);
  v25(v30, v8);
  v24(v19, v21);
  return (v25)(v29, v8);
}

uint64_t sub_23D89E990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for AXRHighlightColorSelectionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6D8, &unk_23D8E3F48);
  v6 = *(v35 - 8);
  v7 = MEMORY[0x28223BE20](v35);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE600, &unk_23D8E3420);
  v33 = *(v11 - 8);
  v12 = v33;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v32 = &v30 - v16;
  sub_23D89EDDC();
  v37 = sub_23D8DC530();
  sub_23D8A122C(a1, &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_23D8A1294(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6E0, &qword_23D8E3F58);
  sub_23D835AD0(&qword_27E2EF6E8, &qword_27E2EF6E0, &qword_23D8E3F58, MEMORY[0x277D83980]);
  sub_23D835AD0(&qword_27E2EE5F8, &qword_27E2EE600, &unk_23D8E3420, MEMORY[0x277CDF028]);
  sub_23D8A17C8(&qword_27E2EF6F0, MEMORY[0x277CE72C0], MEMORY[0x277CE72C8]);
  v30 = v10;
  sub_23D8DE4D0();
  v20 = *(v12 + 16);
  v31 = v15;
  v20(v15, v17, v11);
  v21 = *(v6 + 16);
  v22 = v34;
  v23 = v10;
  v24 = v35;
  v21(v34, v23, v35);
  v25 = v36;
  v20(v36, v15, v11);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6F8, &unk_23D8E3F60);
  v21((v25 + *(v26 + 48)), v22, v24);
  v27 = *(v6 + 8);
  v27(v30, v24);
  v28 = *(v33 + 8);
  v28(v32, v11);
  v27(v22, v24);
  return (v28)(v31, v11);
}

void sub_23D89EDDC()
{
  v1 = v0;
  v2 = type metadata accessor for AXRHighlightColorSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  if (*(v0 + *(MEMORY[0x28223BE20](v2 - 8) + 32)))
  {

    v5 = sub_23D8DC960();

    v6 = sub_23D8DC810();
    if (!v6)
    {
      v6 = sub_23D8DE240();
    }

    v11[1] = v6;
    sub_23D86C2EC();
    v7 = sub_23D8DE2A0();
    sub_23D8A122C(v1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v10 = sub_23D8A1294(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
    MEMORY[0x28223BE20](v10);
    v11[-4] = v5;
    v11[-3] = v1;
    v11[-2] = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE638, &unk_23D8E34C0);
    sub_23D835AD0(&qword_27E2EE640, &qword_27E2EE638, &unk_23D8E34C0, MEMORY[0x277CE1138]);
    sub_23D8DE360();
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    sub_23D8DD120();
    __break(1u);
  }
}

double sub_23D89F064@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = sub_23D8DC560();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AXRHighlightColorSelectionView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[7] = sub_23D8DC550();
  sub_23D86C2EC();
  v13 = sub_23D8DE2A0();
  sub_23D8A122C(a2, v12);
  (*(v6 + 16))(v8, a1, v5);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + *(v6 + 80) + v14) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_23D8A1294(v12, v16 + v14);
  (*(v6 + 32))(v16 + v15, v8, v5);
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE638, &unk_23D8E34C0);
  sub_23D835AD0(&qword_27E2EE640, &qword_27E2EE638, &unk_23D8E34C0, MEMORY[0x277CE1138]);
  sub_23D8DE360();

  return result;
}

uint64_t sub_23D89F2EC(uint64_t a1)
{
  v2 = sub_23D8DC510();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for AXRHighlightColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    sub_23D8DC550();
    sub_23D8DC6C0();

    sub_23D8DC970();
    sub_23D8DC950();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D89F48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_23D8DD420();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE648, &unk_23D8E2580);
  return sub_23D89F4FC(a1, a2, a3, a4 + *(v8 + 44));
}

uint64_t sub_23D89F4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE650, &unk_23D8E34D0);
  v94 = *(v7 - 8);
  v95 = v7;
  MEMORY[0x28223BE20](v7);
  v92 = &v81 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE658, &unk_23D8E2590);
  v9 = MEMORY[0x28223BE20](v91);
  v97 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v90 = &v81 - v12;
  MEMORY[0x28223BE20](v11);
  v96 = &v81 - v13;
  v14 = sub_23D8DCCB0();
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v84 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = &v81 - v17;
  v18 = sub_23D8DCF90();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8380E8();
  sub_23D8DEB50();
  v106 = sub_23D8DE130();
  sub_23D8DCD60();
  v22 = v152;
  v102 = v154;
  v103 = v153;
  v23 = v155;
  v101 = v156;
  v24 = v157;
  v25 = sub_23D8DE5F0();
  v104 = v26;
  v105 = v25;
  v88 = a1;
  v98 = sub_23D8DC550();
  v27 = sub_23D8DE5F0();
  v99 = v28;
  v100 = v27;
  v107 = a2;
  sub_23D89DBD0(v21);
  v29 = sub_23D8DCF80();
  v30 = *(v19 + 8);
  v30(v21, v18);
  if (v29)
  {
    v31 = [objc_opt_self() mainScreen];
    [v31 bounds];
  }

  sub_23D89DBD0(v21);
  v32 = sub_23D8DCF80();
  v30(v21, v18);
  if (v32)
  {
    v33 = [objc_opt_self() mainScreen];
    [v33 &selRef_scrollViewWillBeginDragging_];
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v89 = sub_23D8DDA30();
  sub_23D8DCC20();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v150 = 0;
  v121 = sub_23D8DC520();
  v122 = v42;
  sub_23D83CB18();
  v83 = sub_23D8DDCB0();
  v44 = v43;
  v46 = v45;
  v85 = v47;
  v48 = v82;
  sub_23D89D9D0(v82);
  v50 = v86;
  v49 = v87;
  v51 = v84;
  (*(v86 + 104))(v84, *MEMORY[0x277CDF3C0], v87);
  v52 = sub_23D8DCCA0();
  v53 = *(v50 + 8);
  v53(v51, v49);
  v53(v48, v49);
  if (v52)
  {
    v54 = sub_23D8DE240();
  }

  else
  {
    v54 = sub_23D8DE220();
  }

  v55 = v92;
  v121 = v54;
  v56 = v83;
  v57 = sub_23D8DDC10();
  v87 = v58;
  v88 = v57;
  LODWORD(v86) = v59;
  v92 = v60;
  sub_23D83CB6C(v56, v44, v46 & 1);

  v121 = sub_23D8DE2C0();
  sub_23D8DDF80();

  if (*(v107 + *(type metadata accessor for AXRHighlightColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    v61 = sub_23D8DC6B0();

    v121 = v61;
    sub_23D86C2EC();
    sub_23D8DE2A0();
    v62 = sub_23D8DE180();

    if (v62)
    {
      v63 = 1.0;
    }

    else
    {
      v63 = 0.0;
    }

    v64 = v90;
    (*(v94 + 32))(v90, v55, v95);
    *(v64 + *(v91 + 36)) = v63;
    v65 = v96;
    sub_23D86C79C(v64, v96);
    v108 = v147;
    v109 = v148;
    v110 = v149;
    v66 = v97;
    sub_23D86C80C(v65, v97);
    *&v111 = v98;
    WORD4(v111) = 256;
    *(&v111 + 10) = v160;
    HIWORD(v111) = v161;
    *&v112 = v22;
    *(&v112 + 1) = __PAIR64__(v102, v103);
    *&v113 = v23;
    *(&v113 + 1) = v101;
    *&v114 = v24;
    *(&v114 + 1) = v106;
    LOWORD(v115) = 256;
    *(&v115 + 2) = v158;
    WORD3(v115) = v159;
    *(&v115 + 1) = v105;
    *&v116 = v104;
    *(&v116 + 1) = v100;
    *&v117[0] = v99;
    *(v117 + 8) = v147;
    *(&v117[2] + 8) = v149;
    *(&v117[1] + 8) = v148;
    v67 = v89;
    BYTE8(v117[3]) = v89;
    *(&v117[3] + 9) = *v151;
    HIDWORD(v117[3]) = *&v151[3];
    *&v118 = v35;
    *(&v118 + 1) = v37;
    *&v119 = v39;
    *(&v119 + 1) = v41;
    v120 = 0;
    v68 = v117[3];
    v69 = v118;
    v70 = v119;
    *(a4 + 192) = 0;
    *(a4 + 160) = v69;
    *(a4 + 176) = v70;
    v71 = v111;
    v72 = v112;
    v73 = v114;
    *(a4 + 32) = v113;
    *(a4 + 48) = v73;
    v74 = v115;
    *a4 = v71;
    *(a4 + 16) = v72;
    v75 = v117[1];
    *(a4 + 128) = v117[2];
    *(a4 + 144) = v68;
    v76 = v116;
    *(a4 + 96) = v117[0];
    *(a4 + 112) = v75;
    *(a4 + 64) = v74;
    *(a4 + 80) = v76;
    v78 = v87;
    v77 = v88;
    *(a4 + 200) = v88;
    *(a4 + 208) = v78;
    LOBYTE(v64) = v86 & 1;
    *(a4 + 216) = v86 & 1;
    *(a4 + 224) = v92;
    *(a4 + 232) = 0;
    *(a4 + 240) = 1;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE660, &unk_23D8E34E0);
    sub_23D86C80C(v66, a4 + *(v79 + 80));
    sub_23D83C67C(&v111, &v121, &qword_27E2EE668, &qword_23D8E25A0);
    sub_23D834028(v77, v78, v64);

    sub_23D86C87C(v65);
    sub_23D86C87C(v66);
    sub_23D83CB6C(v77, v78, v64);

    v121 = v98;
    LOWORD(v122) = 256;
    *(&v122 + 2) = v160;
    HIWORD(v122) = v161;
    v123 = v22;
    v124 = v103;
    v125 = v102;
    v126 = v23;
    v127 = v101;
    v128 = v24;
    v129 = v106;
    v130 = 256;
    v131 = v158;
    v132 = v159;
    v133 = v105;
    v134 = v104;
    v135 = v100;
    v136 = v99;
    v137 = v108;
    v138 = v109;
    v139 = v110;
    v140 = v67;
    *v141 = *v151;
    *&v141[3] = *&v151[3];
    v142 = v35;
    v143 = v37;
    v144 = v39;
    v145 = v41;
    v146 = 0;
    return sub_23D86C8E4(&v121);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

void *sub_23D89FEAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AXRHighlightColorSelectionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = 0x800000023D8E6230;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v8 = 0xD000000000000010;
  if (qword_27E2F3C80)
  {
    v9 = qword_27E2F3C80;
    v10 = sub_23D8DE830();
    v11 = sub_23D8DE830();
    v12 = v5;
    v13 = [v9 localizedStringForKey:v10 value:0 table:v11];

    v8 = sub_23D8DE870();
    v7 = v14;

    v5 = v12;
  }

  v35 = v8;
  v36 = v7;
  LODWORD(v34) = sub_23D89DF94();
  if (*(a1 + *(v4 + 24)))
  {
    sub_23D8380E8();

    sub_23D8DC960();

    sub_23D8DC7E0();

    v15 = sub_23D8DEB80();
    v33 = sub_23D8DEB70();

    sub_23D8A122C(a1, &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_23D8DE9D0();
    v16 = sub_23D8DE9C0();
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v16;
    *(v18 + 24) = v19;
    sub_23D8A1294(&v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v17);
    sub_23D8A122C(a1, &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v20 = sub_23D8DE9C0();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v19;
    sub_23D8A1294(&v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v17);
    sub_23D8DE480();
    v22 = v40;
    LOBYTE(v17) = v34 & 1;
    v23 = v33 & 1;
    v34 = v41;
    *a2 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v25 = type metadata accessor for AXRCustomizationColorButton(0);
    *(a2 + v25[5]) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    swift_storeEnumTagMultiPayload();
    v26 = (a2 + v25[6]);
    v27 = v36;
    *v26 = v35;
    v26[1] = v27;
    *(a2 + v25[7]) = v17;
    *(a2 + v25[8]) = v23;
    *(a2 + v25[9]) = 1;
    v28 = a2 + v25[10];
    *v28 = v22;
    *(v28 + 8) = v34;
    v29 = a2 + v25[11];
    v37 = 0;
    result = sub_23D8DE310();
    v31 = v39;
    *v29 = v38;
    *(v29 + 1) = v31;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

void sub_23D8A02F8(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for AXRHighlightColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    v3 = sub_23D8DC6B0();

    *a2 = v3;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    sub_23D8DD120();
    __break(1u);
  }
}

uint64_t sub_23D8A03C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23D8DC510();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a4 + *(type metadata accessor for AXRHighlightColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    sub_23D8DC6C0();

    sub_23D8DC970();
    sub_23D8DC950();

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8A056C(uint64_t a1, uint64_t a2)
{
  v3 = sub_23D8DC510();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + *(type metadata accessor for AXRHighlightColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    sub_23D8DC810();

    sub_23D8DC710();

    sub_23D8DC970();
    sub_23D8DC950();

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8A0710@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_23D8DD420();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE648, &unk_23D8E2580);
  return sub_23D8A0780(a2, a3, a4 + *(v7 + 44));
}

uint64_t sub_23D8A0780@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v93 = a2;
  v107 = a1;
  v88 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE650, &unk_23D8E34D0);
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x28223BE20](v3);
  v92 = v84 - v4;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE658, &unk_23D8E2590);
  v5 = MEMORY[0x28223BE20](v91);
  v97 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v90 = v84 - v8;
  MEMORY[0x28223BE20](v7);
  v96 = v84 - v9;
  v87 = sub_23D8DCCB0();
  v85 = *(v87 - 8);
  v10 = MEMORY[0x28223BE20](v87);
  v86 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v84[0] = v84 - v12;
  v13 = sub_23D8DCF90();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8380E8();
  sub_23D8DEB50();
  v106 = sub_23D8DE130();
  sub_23D8DCD60();
  v17 = v156;
  v102 = v158;
  v103 = v157;
  v18 = v159;
  v101 = v160;
  v19 = v161;
  v20 = sub_23D8DE5F0();
  v104 = v21;
  v105 = v20;
  v22 = sub_23D8DC810();
  if (!v22)
  {
    v22 = sub_23D8DE240();
  }

  v98 = v22;
  v23 = sub_23D8DE5F0();
  v99 = v24;
  v100 = v23;
  sub_23D89DBD0(v16);
  v25 = sub_23D8DCF80();
  v26 = *(v14 + 8);
  v26(v16, v13);
  if (v25)
  {
    v27 = [objc_opt_self() mainScreen];
    [v27 bounds];
  }

  sub_23D89DBD0(v16);
  v28 = sub_23D8DCF80();
  v26(v16, v13);
  if (v28)
  {
    v29 = [objc_opt_self() &off_278BEC328];
    [v29 &selRef_scrollViewWillBeginDragging_];
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v89 = sub_23D8DDA30();
  sub_23D8DCC20();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v154 = 0;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v38 = 0xED0000726F6C6F43;
  v39 = 0x747865742E727861;
  if (qword_27E2F3C80)
  {
    v40 = qword_27E2F3C80;
    v41 = sub_23D8DE830();
    v42 = sub_23D8DE830();
    v43 = [v40 localizedStringForKey:v41 value:0 table:v42];

    v39 = sub_23D8DE870();
    v38 = v44;
  }

  v121 = v39;
  v122 = v38;
  sub_23D83CB18();
  v45 = sub_23D8DDCB0();
  v47 = v46;
  v49 = v48;
  v84[1] = v50;
  v51 = v84[0];
  sub_23D89D9D0(v84[0]);
  v52 = v85;
  v53 = v86;
  v54 = v87;
  (*(v85 + 104))(v86, *MEMORY[0x277CDF3C0], v87);
  v55 = sub_23D8DCCA0();
  v56 = *(v52 + 8);
  v56(v53, v54);
  v56(v51, v54);
  if (v55)
  {
    v57 = sub_23D8DE240();
  }

  else
  {
    v57 = sub_23D8DE220();
  }

  v58 = v92;
  v121 = v57;
  v59 = sub_23D8DDC10();
  v86 = v60;
  v87 = v59;
  LODWORD(v85) = v61;
  v92 = v62;
  sub_23D83CB6C(v45, v47, v49 & 1);

  v121 = sub_23D8DE2C0();
  sub_23D8DDF80();

  if (*(v107 + *(type metadata accessor for AXRHighlightColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    v63 = sub_23D8DC6B0();

    v121 = v63;
    sub_23D86C2EC();
    sub_23D8DE2A0();
    v64 = sub_23D8DE180();

    if (v64)
    {
      v65 = 1.0;
    }

    else
    {
      v65 = 0.0;
    }

    v66 = v90;
    (*(v94 + 32))(v90, v58, v95);
    *(v66 + *(v91 + 36)) = v65;
    v67 = v96;
    sub_23D86C79C(v66, v96);
    v108 = v147;
    v109 = v148;
    v110 = v149;
    v68 = v97;
    sub_23D86C80C(v67, v97);
    *&v111 = v98;
    WORD4(v111) = 256;
    *(&v111 + 10) = v152;
    HIWORD(v111) = v153;
    *&v112 = v17;
    *(&v112 + 1) = __PAIR64__(v102, v103);
    *&v113 = v18;
    *(&v113 + 1) = v101;
    *&v114 = v19;
    *(&v114 + 1) = v106;
    LOWORD(v115) = 256;
    *(&v115 + 2) = v150;
    WORD3(v115) = v151;
    *(&v115 + 1) = v105;
    *&v116 = v104;
    *(&v116 + 1) = v100;
    *&v117[0] = v99;
    *(v117 + 8) = v147;
    *(&v117[2] + 8) = v149;
    *(&v117[1] + 8) = v148;
    v69 = v89;
    BYTE8(v117[3]) = v89;
    *(&v117[3] + 9) = *v155;
    HIDWORD(v117[3]) = *&v155[3];
    *&v118 = v31;
    *(&v118 + 1) = v33;
    *&v119 = v35;
    *(&v119 + 1) = v37;
    v120 = 0;
    v70 = v117[3];
    v71 = v118;
    v72 = v119;
    v73 = v88;
    *(v88 + 192) = 0;
    *(v73 + 160) = v71;
    *(v73 + 176) = v72;
    v74 = v111;
    v75 = v112;
    v76 = v114;
    *(v73 + 32) = v113;
    *(v73 + 48) = v76;
    v77 = v115;
    *v73 = v74;
    *(v73 + 16) = v75;
    v78 = v117[1];
    *(v73 + 128) = v117[2];
    *(v73 + 144) = v70;
    v79 = v116;
    *(v73 + 96) = v117[0];
    *(v73 + 112) = v78;
    *(v73 + 64) = v77;
    *(v73 + 80) = v79;
    v81 = v86;
    v80 = v87;
    *(v73 + 200) = v87;
    *(v73 + 208) = v81;
    LOBYTE(v66) = v85 & 1;
    *(v73 + 216) = v85 & 1;
    *(v73 + 224) = v92;
    *(v73 + 232) = 0;
    *(v73 + 240) = 1;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE660, &unk_23D8E34E0);
    sub_23D86C80C(v68, v73 + *(v82 + 80));
    sub_23D83C67C(&v111, &v121, &qword_27E2EE668, &qword_23D8E25A0);
    sub_23D834028(v80, v81, v66);

    sub_23D86C87C(v67);
    sub_23D86C87C(v68);
    sub_23D83CB6C(v80, v81, v66);

    v121 = v98;
    LOWORD(v122) = 256;
    *(&v122 + 2) = v152;
    HIWORD(v122) = v153;
    v123 = v17;
    v124 = v103;
    v125 = v102;
    v126 = v18;
    v127 = v101;
    v128 = v19;
    v129 = v106;
    v130 = 256;
    v131 = v150;
    v132 = v151;
    v133 = v105;
    v134 = v104;
    v135 = v100;
    v136 = v99;
    v137 = v108;
    v138 = v109;
    v139 = v110;
    v140 = v69;
    *v141 = *v155;
    *&v141[3] = *&v155[3];
    v142 = v31;
    v143 = v33;
    v144 = v35;
    v145 = v37;
    v146 = 0;
    return sub_23D86C8E4(&v121);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8A122C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRHighlightColorSelectionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D8A1294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRHighlightColorSelectionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23D8A12F8(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for AXRHighlightColorSelectionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_23D8A02F8(v4, a1);
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for AXRHighlightColorSelectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23D8DCCB0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCF90();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8A150C(uint64_t *a1)
{
  v3 = *(type metadata accessor for AXRHighlightColorSelectionView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_23D8A03C8(a1, v4, v5, v6);
}

uint64_t sub_23D8A15B0()
{
  v1 = type metadata accessor for AXRHighlightColorSelectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23D8DCCB0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCF90();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_23D8A1748@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AXRHighlightColorSelectionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D89F064(a1, v6, a2);
}

uint64_t sub_23D8A17C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D8A1810()
{
  v1 = type metadata accessor for AXRHighlightColorSelectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_23D8DC560();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v13 = *(v6 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23D8DCCB0();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
  }

  else
  {
  }

  v9 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D8DCF90();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  v11 = (v3 + v4 + v7) & ~v7;

  (*(v6 + 8))(v0 + v11, v5);

  return MEMORY[0x2821FE8E8](v0, v11 + v13, v2 | v7 | 7);
}

uint64_t sub_23D8A1A3C()
{
  v1 = *(type metadata accessor for AXRHighlightColorSelectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_23D8DC560();

  return sub_23D89F2EC(v0 + v2);
}

uint64_t sub_23D8A1B14()
{
  v1 = type metadata accessor for AXRHighlightColorSelectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23D8DCCB0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCF90();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8A1CB4()
{
  v1 = *(type metadata accessor for AXRHighlightColorSelectionView(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_23D8A056C(v2, v3);
}

unint64_t sub_23D8A1D28()
{
  result = qword_27E2EF700;
  if (!qword_27E2EF700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF6B0, &qword_23D8E3EC8);
    sub_23D835AD0(&qword_27E2EF708, &qword_27E2EF698, &qword_23D8E3E88, MEMORY[0x277CDE5A0]);
    sub_23D835AD0(qword_27E2ED678, &qword_27E2ED570, &qword_23D8E0D00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF700);
  }

  return result;
}

uint64_t imageViewForBundleId(_:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    iconForBundleId(_:)(*&a1);
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  return sub_23D8DE2B0();
}

id titleFontStyle.getter(__n128 a1)
{
  if (qword_27E2ECED8 != -1)
  {
    swift_once();
  }

  v2 = qword_27E2EF710;

  return v2;
}

double titleFontPointSize.getter()
{
  v0 = objc_opt_self();
  if (qword_27E2ECED8 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  v1 = [v0 preferredFontForTextStyle_];
  [v1 pointSize];
  v3 = v2;

  return v3;
}

UIImage __swiftcall iconForBundleId(_:)(Swift::String_optional a1)
{
  if (a1.value._object)
  {
    v1 = objc_opt_self();
    if (qword_27E2ECED8 != -1)
    {
      v25 = v1;
      swift_once();
      v1 = v25;
    }

    v2 = [v1 preferredFontForTextStyle_];
    [v2 pointSize];
    v4 = v3;

    v5 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v6 = sub_23D8DE830();
    v7 = [v5 initWithBundleIdentifier_];

    if (v4 + v4 <= 66.0)
    {
      v8 = v4 + v4;
    }

    else
    {
      v8 = 66.0;
    }

    v9 = [objc_opt_self() mainScreen];
    [v9 scale];
    v11 = v10;

    v12 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v8 scale:{v8, v11}];
    v13 = objc_opt_self();
    [v12 setAppearance_];
    [v12 setAppearanceVariant_];
    v14 = [v13 tintColor];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 CGColor];

      if (v16)
      {
        v17 = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithCGColor_];
        [v12 setTintColor_];
      }
    }

    v18 = [v7 prepareImageForDescriptor_];
    if (v18)
    {
      v19 = v18;
      result.super.isa = [v19 CGImage];
      if (result.super.isa)
      {
        isa = result.super.isa;
        [v19 scale];
        v23 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:isa scale:0 orientation:v22];

        return v23;
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  v24 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v24 init];
}

uint64_t AXRSegmentedPicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_23D8DD700();
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  MEMORY[0x28223BE20](v2);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF718, &qword_23D8E3F70);
  MEMORY[0x28223BE20](v5);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF720, &qword_23D8E3F78);
  v27 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v25 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF728, &qword_23D8E3F80);
  MEMORY[0x28223BE20](v26);
  v9 = &v25 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF730, &qword_23D8E3F88);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v25 = &v25 - v10;
  sub_23D8DD480();
  type metadata accessor for AXRSegmentedPicker(0);
  sub_23D8DE470();
  v35 = v1;
  sub_23D8DC610();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF738, &qword_23D8E3F90);
  sub_23D8A2C54(&qword_27E2EF740, MEMORY[0x277CE7328], MEMORY[0x277CE7330]);
  sub_23D8A2B14();
  sub_23D8DE3B0();
  sub_23D8DE5F0();
  sub_23D8DD0D0();
  (*(v27 + 32))(v9, v7, v28);
  v11 = &v9[*(v26 + 36)];
  v12 = v41;
  *(v11 + 4) = v40;
  *(v11 + 5) = v12;
  *(v11 + 6) = v42;
  v13 = v37;
  *v11 = v36;
  *(v11 + 1) = v13;
  v14 = v39;
  *(v11 + 2) = v38;
  *(v11 + 3) = v14;
  v15 = v30;
  sub_23D8DD6F0();
  sub_23D8A2C9C();
  v16 = v25;
  v17 = v32;
  sub_23D8DDD30();
  (*(v33 + 8))(v15, v17);
  sub_23D8A2D54(v9);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF770, &unk_23D8E3FA0);
  v19 = v34;
  v20 = (v34 + *(v18 + 36));
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE450, &qword_23D8E21D0) + 28);
  v22 = *MEMORY[0x277CDF420];
  v23 = sub_23D8DCCC0();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  return (*(v29 + 32))(v19, v16, v31);
}

uint64_t type metadata accessor for AXRSegmentedPicker(uint64_t a1)
{
  result = qword_27E2EF778;
  if (!qword_27E2EF778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D8A2820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  v17 = a2;
  v2 = type metadata accessor for AXRSegmentedPicker(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF798, &unk_23D8E4058);
  v5 = sub_23D8DC610();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23D8E34F0;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, *MEMORY[0x277CE7320], v5);
  v11(v10 + v7, *MEMORY[0x277CE7318], v5);
  v11(v10 + 2 * v7, *MEMORY[0x277CE7310], v5);
  v18 = v9;
  swift_getKeyPath();
  sub_23D8A33A4(v16, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_23D8A354C(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF7A0, &unk_23D8E4080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF758, &qword_23D8E3F98);
  sub_23D835AD0(&qword_27E2EF7A8, &qword_27E2EF7A0, &unk_23D8E4080, MEMORY[0x277D83980]);
  sub_23D8A2C54(&qword_27E2EF740, MEMORY[0x277CE7328], MEMORY[0x277CE7330]);
  sub_23D8A2B98();
  return sub_23D8DE4C0();
}

unint64_t sub_23D8A2B14()
{
  result = qword_27E2EF748;
  if (!qword_27E2EF748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF738, &qword_23D8E3F90);
    sub_23D8A2B98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF748);
  }

  return result;
}

unint64_t sub_23D8A2B98()
{
  result = qword_27E2EF750;
  if (!qword_27E2EF750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF758, &qword_23D8E3F98);
    sub_23D8A2C54(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF750);
  }

  return result;
}

uint64_t sub_23D8A2C54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23D8A2C9C()
{
  result = qword_27E2EF760;
  if (!qword_27E2EF760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF728, &qword_23D8E3F80);
    sub_23D835AD0(&qword_27E2EF768, &qword_27E2EF720, &qword_23D8E3F78, MEMORY[0x277CDF038]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF760);
  }

  return result;
}

uint64_t sub_23D8A2D54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF728, &qword_23D8E3F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D8A2DBC(uint64_t a1, uint64_t a2)
{
  sub_23D8DC5F0();
  sub_23D8DE2E0();
  sub_23D8DC600();
  sub_23D83CB18();
  sub_23D8DDE10();
}

uint64_t sub_23D8A2E9C(uint64_t a1)
{
  v2 = sub_23D8DCCC0();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return MEMORY[0x23EEEF300](v4);
}

uint64_t sub_23D8A2F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D8DC620();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF718, &qword_23D8E3F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23D8A30A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23D8DC620();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF718, &qword_23D8E3F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_23D8A31B0(uint64_t a1)
{
  sub_23D8DC620();
  if (v1 <= 0x3F)
  {
    sub_23D8A3234(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23D8A3234(uint64_t a1)
{
  if (!qword_27E2EF788)
  {
    sub_23D8DC610();
    v1 = sub_23D8DE490();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2EF788);
    }
  }
}

unint64_t sub_23D8A3290()
{
  result = qword_27E2EF790;
  if (!qword_27E2EF790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF770, &unk_23D8E3FA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF728, &qword_23D8E3F80);
    sub_23D8DD700();
    sub_23D8A2C9C();
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EE4E0, &qword_27E2EE450, &qword_23D8E21D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF790);
  }

  return result;
}

uint64_t sub_23D8A33A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRSegmentedPicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D8A3408()
{
  v1 = (type metadata accessor for AXRSegmentedPicker(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_23D8DC620();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + v1[7];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF718, &qword_23D8E3F70) + 32);
  v8 = sub_23D8DC610();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8A354C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRSegmentedPicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D8A35B0(uint64_t a1)
{
  v3 = *(type metadata accessor for AXRSegmentedPicker(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D8A2DBC(a1, v4);
}

uint64_t sub_23D8A3674@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = *v1;
  v23[0] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF800, &qword_23D8E4310);
  sub_23D8DE320();
  v4 = v24;
  v5 = [objc_opt_self() sharedApplication];
  v6 = [v5 userInterfaceLayoutDirection];

  v23[0] = v25;
  sub_23D8DE320();
  if (v24)
  {
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v7 = 0xEB00000000647261;
    v8 = 0x77726F662E727861;
    if (qword_27E2F3C80)
    {
LABEL_9:
      v9 = qword_27E2F3C80;
      v10 = sub_23D8DE830();
      v11 = sub_23D8DE830();
      v12 = [v9 localizedStringForKey:v10 value:0 table:{v11, v23[0]}];

      v8 = sub_23D8DE870();
      v7 = v13;
    }
  }

  else
  {
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v8 = 0x697765722E727861;
    if (qword_27E2F3C80)
    {
      goto LABEL_9;
    }

    v7 = 0xEA0000000000646ELL;
  }

  v14 = swift_allocObject();
  v15 = v2[1];
  v14[1] = *v2;
  v14[2] = v15;
  v16 = v2[3];
  v14[3] = v2[2];
  v14[4] = v16;
  if (*(v2 + 6))
  {
    v17 = v14;
    sub_23D8380E8();
    sub_23D8A4AB0(v2, v23);

    sub_23D8DC960();

    sub_23D8DC7E0();

    v18 = sub_23D8DEB80();
    v19 = sub_23D8DEB70();

    if (v19)
    {
      result = sub_23D8DE220();
    }

    else
    {
      result = sub_23D8DE240();
    }

    v21 = 0xE900000000000064;
    if ((v6 == 1) == v4)
    {
      v21 = 0xEA00000000006472;
    }

    v22 = 0x61776B6361626F67;
    if ((v6 == 1) != v4)
    {
      v22 = 0x726177726F666F67;
    }

    *a1 = v22;
    *(a1 + 8) = v21;
    *(a1 + 16) = v8;
    *(a1 + 24) = v7;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = sub_23D8A4AA8;
    *(a1 + 56) = v17;
    *(a1 + 64) = result;
  }

  else
  {
    sub_23D8A4AB0(v2, v23);
    sub_23D8DC9F0();
    sub_23D8A464C(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

void sub_23D8A3A04(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF800, &qword_23D8E4310);
  sub_23D8DE320();
  if (v6 == 1)
  {
    v2 = *(a1 + 4);
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = v2;
    sub_23D8DC290();
  }

  sub_23D8DE320();
  if (v6)
  {
    return;
  }

  v4 = *(a1 + 4);
  if (!v4)
  {
LABEL_8:
    sub_23D8DC430();
    sub_23D8A464C(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
    sub_23D8DD120();
    __break(1u);
    return;
  }

  v5 = v4;
  sub_23D8DC3F0();
}

uint64_t sub_23D8A3B54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DC5A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D8DBF60();
  v8 = *(v7 - 8);
  v57 = v7;
  v58 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23D8DC9F0();
  v12 = sub_23D8A464C(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);

  v54 = v12;
  v55 = v11;
  v13 = sub_23D8DD140();
  v52 = v14;
  v53 = v13;
  v59 = 0;
  sub_23D8DE310();
  v51 = v60;
  v50 = v61;
  sub_23D8DC900();
  sub_23D8A464C(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
  v15 = sub_23D8DCEF0();
  v48 = v16;
  v49 = v15;
  v17 = sub_23D8DC430();
  v44[2] = sub_23D8A464C(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  v44[3] = v17;
  v18 = sub_23D8DD140();
  v45 = v19;
  v46 = v18;
  v56 = v1;
  v20 = *(v1 + 16);
  if (!v20)
  {
    sub_23D8DD120();
    __break(1u);
    goto LABEL_10;
  }

  v47 = *(v1 + 16);
  v21 = v20;
  sub_23D8DC260();
  v22 = *(v4 + 104);
  v22(v6, *MEMORY[0x277CE7300], v3);
  v23 = sub_23D8DBF50();
  v24 = v3;
  v25 = *(v4 + 8);
  v26 = v4 + 8;
  v27 = v24;
  v44[1] = v26;
  v25(v6);
  v28 = *(v58 + 8);
  v58 += 8;
  v28(v10, v57);
  if (v23 < 0)
  {
  }

  else
  {
    sub_23D8DC260();

    v22(v6, *MEMORY[0x277CE7308], v27);
    v29 = sub_23D8DBF50();
    (v25)(v6, v27);
    v28(v10, v57);
    if ((v29 & 0x8000000000000000) == 0)
    {
      v30 = 0;
      goto LABEL_7;
    }
  }

  v30 = 1;
LABEL_7:
  v31 = v56;
  KeyPath = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  v34 = sub_23D8DCB10();
  v35 = *(v31 + 32);
  if (v35)
  {
    v36 = v34;

    result = sub_23D8DCB10();
    *a1 = v51;
    v38 = v49;
    *(a1 + 8) = v50;
    *(a1 + 16) = v38;
    v40 = v45;
    v39 = v46;
    *(a1 + 24) = v48;
    *(a1 + 32) = v39;
    v41 = v52;
    v42 = v53;
    *(a1 + 40) = v40;
    *(a1 + 48) = v42;
    *(a1 + 56) = v41;
    *(a1 + 64) = KeyPath;
    *(a1 + 72) = sub_23D8A4BB0;
    *(a1 + 80) = v33;
    v43 = v47;
    *(a1 + 88) = v36;
    *(a1 + 96) = v43;
    *(a1 + 104) = result;
    *(a1 + 112) = v35;
    return result;
  }

LABEL_10:
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D8A3FD0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DC5A0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v72 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v70 = &v66 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v66 - v9;
  v11 = sub_23D8DBF60();
  v12 = *(v11 - 8);
  v90 = v11;
  v91 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v71 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v69 = &v66 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v66 - v17;
  v19 = sub_23D8DC9F0();
  v20 = sub_23D8A464C(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);

  v86 = v20;
  v87 = v19;
  v21 = sub_23D8DD140();
  v84 = v22;
  v85 = v21;
  v92 = 1;
  sub_23D8DE310();
  v83 = v93;
  v82 = v94;
  sub_23D8DC900();
  sub_23D8A464C(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
  v23 = sub_23D8DCEF0();
  v80 = v24;
  v81 = v23;
  v25 = sub_23D8DC430();
  v26 = sub_23D8A464C(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  v76 = v25;
  v27 = sub_23D8DD140();
  v77 = v28;
  v78 = v27;
  v88 = v1;
  v29 = *(v1 + 16);
  if (!v29)
  {
    sub_23D8DD120();
    __break(1u);
    goto LABEL_15;
  }

  v75 = v26;
  v79 = v29;
  v30 = v29;
  sub_23D8DC260();
  v31 = *MEMORY[0x277CE7300];
  v32 = *MEMORY[0x277CE7300];
  v89 = *(v4 + 104);
  v89(v10, v32, v3);
  v33 = sub_23D8DBF50();
  v34 = v3;
  v35 = v33;
  v36 = *(v4 + 8);
  v74 = v34;
  v73 = v4 + 8;
  v37 = v36;
  (v36)(v10);
  v38 = *(v91 + 8);
  v39 = v91 + 8;
  v38(v18, v90);
  v40 = *(sub_23D8DC3B0() + 16);

  if (v40 > v35)
  {
    v41 = v69;
    sub_23D8DC260();

    v42 = *MEMORY[0x277CE7308];
    v68 = v31;
    v43 = v70;
    v44 = v74;
    v89(v70, v42, v74);
    v66 = sub_23D8DBF50();
    v67 = v38;
    v37(v43, v44);
    v91 = v39;
    v45 = v90;
    v38(v41, v90);
    v46 = v71;
    sub_23D8DC260();

    v47 = v72;
    v89(v72, v68, v44);
    v48 = sub_23D8DBF50();
    v37(v47, v44);
    v67(v46, v45);
    v49 = sub_23D8DC3B0();

    if ((v48 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v48 < *(v49 + 16))
    {
      v50 = *(v49 + 8 * v48 + 32);

      if (!(v50 >> 62))
      {
        v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
        v52 = v88;

        v53 = v66 >= v51;
        goto LABEL_9;
      }

LABEL_13:
      v51 = sub_23D8DECE0();
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_13;
  }

  v53 = 1;
  v52 = v88;
LABEL_9:
  KeyPath = swift_getKeyPath();
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v56 = sub_23D8DCB10();
  v57 = *(v52 + 32);
  if (v57)
  {
    v58 = v56;

    result = sub_23D8DCB10();
    *a1 = v83;
    v60 = v81;
    *(a1 + 8) = v82;
    *(a1 + 16) = v60;
    v62 = v77;
    v61 = v78;
    *(a1 + 24) = v80;
    *(a1 + 32) = v61;
    v63 = v84;
    v64 = v85;
    *(a1 + 40) = v62;
    *(a1 + 48) = v64;
    *(a1 + 56) = v63;
    *(a1 + 64) = KeyPath;
    *(a1 + 72) = sub_23D83B780;
    *(a1 + 80) = v55;
    v65 = v79;
    *(a1 + 88) = v58;
    *(a1 + 96) = v65;
    *(a1 + 104) = result;
    *(a1 + 112) = v57;
    return result;
  }

LABEL_15:
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D8A464C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D8A46BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D8A4704(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23D8A4768()
{
  result = qword_27E2EF7B0;
  if (!qword_27E2EF7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF7B8, &qword_23D8E4238);
    sub_23D8A4820();
    sub_23D835AD0(&qword_27E2ED350, &qword_27E2ED358, &qword_23D8E0A90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF7B0);
  }

  return result;
}

unint64_t sub_23D8A4820()
{
  result = qword_27E2EF7C0;
  if (!qword_27E2EF7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF7C8, &qword_23D8E4240);
    sub_23D8A48D8();
    sub_23D835AD0(&qword_27E2EDAE8, &qword_27E2EDAF0, &qword_23D8E1408, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF7C0);
  }

  return result;
}

unint64_t sub_23D8A48D8()
{
  result = qword_27E2EF7D0;
  if (!qword_27E2EF7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF7D8, &qword_23D8E4248);
    sub_23D8A4990();
    sub_23D835AD0(&qword_27E2EF7E8, &qword_27E2EF7F0, &qword_23D8E4250, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF7D0);
  }

  return result;
}

unint64_t sub_23D8A4990()
{
  result = qword_27E2EF7E0;
  if (!qword_27E2EF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF7E0);
  }

  return result;
}

unint64_t sub_23D8A4A04()
{
  result = qword_27E2EF7F8;
  if (!qword_27E2EF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF7F8);
  }

  return result;
}

uint64_t sub_23D8A4A58()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_23D8A4AEC()
{
  result = qword_27E2EF808;
  if (!qword_27E2EF808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF810, &qword_23D8E4318);
    sub_23D88D3B8();
    sub_23D835AD0(&qword_27E2EED38, &qword_27E2EED40, &unk_23D8E3C30, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF808);
  }

  return result;
}

uint64_t sub_23D8A4BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED908, &qword_23D8E12C0);
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

    return (v10 + 1);
  }
}

uint64_t sub_23D8A4CA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED908, &qword_23D8E12C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AXRColorSelectionToolbar(uint64_t a1)
{
  result = qword_27E2EF818;
  if (!qword_27E2EF818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D8A4DB4(uint64_t a1)
{
  sub_23D8A4E38(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23D8A4E38(uint64_t a1)
{
  if (!qword_27E2EF828)
  {
    sub_23D8DCEE0();
    v1 = sub_23D8DE490();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2EF828);
    }
  }
}

uint64_t sub_23D8A4EAC@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for AXRColorSelectionToolbar(0);
  sub_23D83CB18();

  v3 = sub_23D8DDCB0();
  v5 = v4;
  v7 = v6;
  sub_23D8380E8();

  v8 = sub_23D8DEB80();
  v9 = sub_23D8DEB70();

  if (v9)
  {
    sub_23D8DE220();
  }

  else
  {
    sub_23D8DE240();
  }

  v10 = sub_23D8DDC00();
  v12 = v11;
  v14 = v13;

  sub_23D83CB6C(v3, v5, v7 & 1);

  v15 = sub_23D8DDC20();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_23D83CB6C(v10, v12, v14 & 1);

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  return result;
}

uint64_t sub_23D8A501C()
{
  v1 = sub_23D8DD750();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED970, &qword_23D8E1320);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-v4];
  sub_23D8DD740();
  v9 = v0;
  sub_23D8DCD70();
  v6 = sub_23D8A5198();
  MEMORY[0x23EEEF8F0](v5, v2, v6);
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_23D8A5198()
{
  result = qword_27E2ED978;
  if (!qword_27E2ED978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED970, &qword_23D8E1320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED978);
  }

  return result;
}

uint64_t sub_23D8A51FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED970, &qword_23D8E1320);
  sub_23D8A5198();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D8A5274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_23D8A53B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for AXRHyperlinkColorSelectionView(uint64_t a1)
{
  result = qword_27E2EF830;
  if (!qword_27E2EF830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D8A5524(uint64_t a1)
{
  sub_23D857704(319, &qword_27E2ED618, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    sub_23D857704(319, &qword_27E2ED228, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      sub_23D8366C8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_23D8A5614()
{
  result = qword_27E2EF840;
  if (!qword_27E2EF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF840);
  }

  return result;
}

uint64_t sub_23D8A5668(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_23D8A570C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D8DD3C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23D83C67C(v2, &v14 - v9, &qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D8DCCB0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23D8DEAB0();
    v13 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_23D8A590C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DD3C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AXRHyperlinkColorSelectionView(0);
  sub_23D83C67C(v1 + *(v10 + 20), v9, &qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D8DCF90();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23D8DEAB0();
    v13 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_23D8A5B30()
{
  v0 = sub_23D8DC560();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D8DC540();
  v5 = *(v4 + 16);
  if (v5)
  {
    v14 = MEMORY[0x277D84F90];
    sub_23D8DECA0();
    v7 = v1 + 16;
    v6 = *(v1 + 16);
    v12[1] = v4;
    v13 = v6;
    v8 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    v10 = (v7 - 8);
    do
    {
      v13(v3, v8, v0);
      sub_23D8DC550();
      (*v10)(v3, v0);
      sub_23D8DEC80();
      sub_23D8DECB0();
      sub_23D8DECC0();
      sub_23D8DEC90();
      v8 += v9;
      --v5;
    }

    while (v5);

    return v14;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_23D8A5CD0()
{
  v1 = v0;
  if (*(v0 + *(type metadata accessor for AXRHyperlinkColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    v2 = sub_23D8DC810();

    if (!v2)
    {
      v2 = sub_23D8DE240();
    }

    v9 = v2;
    sub_23D86C2EC();
    sub_23D8DE2A0();
    v3 = sub_23D8A5B30();
    MEMORY[0x28223BE20](v3);
    v8[2] = v1;
    v4 = sub_23D8A5668(sub_23D8A9294, v8, v3);

    if (v4)
    {
      v5 = 1;
    }

    else
    {

      sub_23D8DC960();

      v6 = sub_23D8DC6F0();

      v9 = v6;
      sub_23D8DE2A0();
      v5 = sub_23D8DE180();
    }

    return v5 & 1;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8A5EBC(uint64_t *a1, uint64_t a2)
{
  sub_23D86C2EC();

  sub_23D8DE2A0();
  if (*(a2 + *(type metadata accessor for AXRHyperlinkColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    sub_23D8DC6F0();

    sub_23D8DE2A0();
    v3 = sub_23D8DE180();

    return v3 & 1;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8A6010@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_23D8DCCB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF698, &qword_23D8E3E88);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v21 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6A0, &qword_23D8E3E90);
  sub_23D835AD0(&qword_27E2EF6A8, &qword_27E2EF6A0, &qword_23D8E3E90, MEMORY[0x277CE14C0]);
  sub_23D8DDBC0();
  if (*(v1 + *(type metadata accessor for AXRHyperlinkColorSelectionView(0) + 24)))
  {
    sub_23D8380E8();

    sub_23D8DC960();

    sub_23D8DC7E0();

    v10 = sub_23D8DEB80();
    v11 = sub_23D8DEB70();

    v12 = MEMORY[0x277CDF3D0];
    if ((v11 & 1) == 0)
    {
      v12 = MEMORY[0x277CDF3C0];
    }

    (*(v3 + 104))(v5, *v12, v2);
    KeyPath = swift_getKeyPath();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6B0, &qword_23D8E3EC8);
    v15 = v20;
    v16 = (v20 + *(v14 + 36));
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED570, &qword_23D8E0D00);
    (*(v3 + 32))(v16 + *(v17 + 28), v5, v2);
    *v16 = KeyPath;
    return (*(v7 + 32))(v15, v9, v6);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8A6348@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE5D8, &unk_23D8E24C0);
  v3 = *(v33 - 8);
  v4 = MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6B8, &qword_23D8E3ED0);
  v31 = *(v8 - 8);
  v9 = v31;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v36 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6C0, &qword_23D8E3ED8);
  sub_23D835AD0(&qword_27E2EF6C8, &qword_27E2EF6C0, &qword_23D8E3ED8, MEMORY[0x277CE14C0]);
  v15 = v14;
  v30 = v14;
  sub_23D8DE520();
  v35 = a1;
  type metadata accessor for AXRCustomizationColorButton(0);
  sub_23D8A17C8(&qword_27E2EE608, type metadata accessor for AXRCustomizationColorButton, &unk_23D8E17FC);
  v16 = v7;
  v28 = v7;
  sub_23D8DE520();
  v17 = *(v9 + 16);
  v29 = v12;
  v17(v12, v15, v8);
  v18 = *(v3 + 16);
  v19 = v32;
  v20 = v16;
  v21 = v33;
  v18(v32, v20, v33);
  v22 = v34;
  v17(v34, v12, v8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6D0, &qword_23D8E3EE0);
  v18(&v22[*(v23 + 48)], v19, v21);
  v24 = *(v3 + 8);
  v24(v28, v21);
  v25 = *(v31 + 8);
  v25(v30, v8);
  v24(v19, v21);
  return (v25)(v29, v8);
}

uint64_t sub_23D8A66CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for AXRHyperlinkColorSelectionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6D8, &unk_23D8E3F48);
  v6 = *(v35 - 8);
  v7 = MEMORY[0x28223BE20](v35);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE600, &unk_23D8E3420);
  v33 = *(v11 - 8);
  v12 = v33;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v32 = &v30 - v16;
  sub_23D8A6B18();
  v37 = sub_23D8DC540();
  sub_23D8A8F30(a1, &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_23D8A8F98(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6E0, &qword_23D8E3F58);
  sub_23D835AD0(&qword_27E2EF6E8, &qword_27E2EF6E0, &qword_23D8E3F58, MEMORY[0x277D83980]);
  sub_23D835AD0(&qword_27E2EE5F8, &qword_27E2EE600, &unk_23D8E3420, MEMORY[0x277CDF028]);
  sub_23D8A17C8(&qword_27E2EF6F0, MEMORY[0x277CE72C0], MEMORY[0x277CE72C8]);
  v30 = v10;
  sub_23D8DE4D0();
  v20 = *(v12 + 16);
  v31 = v15;
  v20(v15, v17, v11);
  v21 = *(v6 + 16);
  v22 = v34;
  v23 = v10;
  v24 = v35;
  v21(v34, v23, v35);
  v25 = v36;
  v20(v36, v15, v11);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF6F8, &unk_23D8E3F60);
  v21((v25 + *(v26 + 48)), v22, v24);
  v27 = *(v6 + 8);
  v27(v30, v24);
  v28 = *(v33 + 8);
  v28(v32, v11);
  v27(v22, v24);
  return (v28)(v31, v11);
}

void sub_23D8A6B18()
{
  v1 = v0;
  v2 = type metadata accessor for AXRHyperlinkColorSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  if (*(v0 + *(MEMORY[0x28223BE20](v2 - 8) + 32)))
  {

    v5 = sub_23D8DC960();

    v6 = sub_23D8DC810();
    if (!v6)
    {
      v6 = sub_23D8DE240();
    }

    v11[1] = v6;
    sub_23D86C2EC();
    v7 = sub_23D8DE2A0();
    sub_23D8A8F30(v1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v10 = sub_23D8A8F98(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
    MEMORY[0x28223BE20](v10);
    v11[-4] = v5;
    v11[-3] = v1;
    v11[-2] = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE638, &unk_23D8E34C0);
    sub_23D835AD0(&qword_27E2EE640, &qword_27E2EE638, &unk_23D8E34C0, MEMORY[0x277CE1138]);
    sub_23D8DE360();
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    sub_23D8DD120();
    __break(1u);
  }
}

double sub_23D8A6DA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = sub_23D8DC560();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AXRHyperlinkColorSelectionView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[7] = sub_23D8DC550();
  sub_23D86C2EC();
  v13 = sub_23D8DE2A0();
  sub_23D8A8F30(a2, v12);
  (*(v6 + 16))(v8, a1, v5);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + *(v6 + 80) + v14) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_23D8A8F98(v12, v16 + v14);
  (*(v6 + 32))(v16 + v15, v8, v5);
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE638, &unk_23D8E34C0);
  sub_23D835AD0(&qword_27E2EE640, &qword_27E2EE638, &unk_23D8E34C0, MEMORY[0x277CE1138]);
  sub_23D8DE360();

  return result;
}

uint64_t sub_23D8A7028(uint64_t a1)
{
  v2 = sub_23D8DC510();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for AXRHyperlinkColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    sub_23D8DC550();
    sub_23D8DC710();

    sub_23D8DC970();
    sub_23D8DC950();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8A71C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_23D8DD420();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE648, &unk_23D8E2580);
  return sub_23D8A7238(a1, a2, a3, a4 + *(v8 + 44));
}

uint64_t sub_23D8A7238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE650, &unk_23D8E34D0);
  v94 = *(v7 - 8);
  v95 = v7;
  MEMORY[0x28223BE20](v7);
  v92 = &v81 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE658, &unk_23D8E2590);
  v9 = MEMORY[0x28223BE20](v91);
  v97 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v90 = &v81 - v12;
  MEMORY[0x28223BE20](v11);
  v96 = &v81 - v13;
  v14 = sub_23D8DCCB0();
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v84 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = &v81 - v17;
  v18 = sub_23D8DCF90();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8380E8();
  sub_23D8DEB50();
  v106 = sub_23D8DE130();
  sub_23D8DCD60();
  v22 = v152;
  v102 = v154;
  v103 = v153;
  v23 = v155;
  v101 = v156;
  v24 = v157;
  v25 = sub_23D8DE5F0();
  v104 = v26;
  v105 = v25;
  v88 = a1;
  v98 = sub_23D8DC550();
  v27 = sub_23D8DE5F0();
  v99 = v28;
  v100 = v27;
  v107 = a2;
  sub_23D8A590C(v21);
  v29 = sub_23D8DCF80();
  v30 = *(v19 + 8);
  v30(v21, v18);
  if (v29)
  {
    v31 = [objc_opt_self() mainScreen];
    [v31 bounds];
  }

  sub_23D8A590C(v21);
  v32 = sub_23D8DCF80();
  v30(v21, v18);
  if (v32)
  {
    v33 = [objc_opt_self() mainScreen];
    [v33 &selRef_scrollViewWillBeginDragging_];
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v89 = sub_23D8DDA30();
  sub_23D8DCC20();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v150 = 0;
  v121 = sub_23D8DC520();
  v122 = v42;
  sub_23D83CB18();
  v83 = sub_23D8DDCB0();
  v44 = v43;
  v46 = v45;
  v85 = v47;
  v48 = v82;
  sub_23D8A570C(v82);
  v50 = v86;
  v49 = v87;
  v51 = v84;
  (*(v86 + 104))(v84, *MEMORY[0x277CDF3C0], v87);
  v52 = sub_23D8DCCA0();
  v53 = *(v50 + 8);
  v53(v51, v49);
  v53(v48, v49);
  if (v52)
  {
    v54 = sub_23D8DE240();
  }

  else
  {
    v54 = sub_23D8DE220();
  }

  v55 = v92;
  v121 = v54;
  v56 = v83;
  v57 = sub_23D8DDC10();
  v87 = v58;
  v88 = v57;
  LODWORD(v86) = v59;
  v92 = v60;
  sub_23D83CB6C(v56, v44, v46 & 1);

  v121 = sub_23D8DE2C0();
  sub_23D8DDF80();

  if (*(v107 + *(type metadata accessor for AXRHyperlinkColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    v61 = sub_23D8DC6F0();

    v121 = v61;
    sub_23D86C2EC();
    sub_23D8DE2A0();
    v62 = sub_23D8DE180();

    if (v62)
    {
      v63 = 1.0;
    }

    else
    {
      v63 = 0.0;
    }

    v64 = v90;
    (*(v94 + 32))(v90, v55, v95);
    *(v64 + *(v91 + 36)) = v63;
    v65 = v96;
    sub_23D86C79C(v64, v96);
    v108 = v147;
    v109 = v148;
    v110 = v149;
    v66 = v97;
    sub_23D86C80C(v65, v97);
    *&v111 = v98;
    WORD4(v111) = 256;
    *(&v111 + 10) = v160;
    HIWORD(v111) = v161;
    *&v112 = v22;
    *(&v112 + 1) = __PAIR64__(v102, v103);
    *&v113 = v23;
    *(&v113 + 1) = v101;
    *&v114 = v24;
    *(&v114 + 1) = v106;
    LOWORD(v115) = 256;
    *(&v115 + 2) = v158;
    WORD3(v115) = v159;
    *(&v115 + 1) = v105;
    *&v116 = v104;
    *(&v116 + 1) = v100;
    *&v117[0] = v99;
    *(v117 + 8) = v147;
    *(&v117[2] + 8) = v149;
    *(&v117[1] + 8) = v148;
    v67 = v89;
    BYTE8(v117[3]) = v89;
    *(&v117[3] + 9) = *v151;
    HIDWORD(v117[3]) = *&v151[3];
    *&v118 = v35;
    *(&v118 + 1) = v37;
    *&v119 = v39;
    *(&v119 + 1) = v41;
    v120 = 0;
    v68 = v117[3];
    v69 = v118;
    v70 = v119;
    *(a4 + 192) = 0;
    *(a4 + 160) = v69;
    *(a4 + 176) = v70;
    v71 = v111;
    v72 = v112;
    v73 = v114;
    *(a4 + 32) = v113;
    *(a4 + 48) = v73;
    v74 = v115;
    *a4 = v71;
    *(a4 + 16) = v72;
    v75 = v117[1];
    *(a4 + 128) = v117[2];
    *(a4 + 144) = v68;
    v76 = v116;
    *(a4 + 96) = v117[0];
    *(a4 + 112) = v75;
    *(a4 + 64) = v74;
    *(a4 + 80) = v76;
    v78 = v87;
    v77 = v88;
    *(a4 + 200) = v88;
    *(a4 + 208) = v78;
    LOBYTE(v64) = v86 & 1;
    *(a4 + 216) = v86 & 1;
    *(a4 + 224) = v92;
    *(a4 + 232) = 0;
    *(a4 + 240) = 1;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE660, &unk_23D8E34E0);
    sub_23D86C80C(v66, a4 + *(v79 + 80));
    sub_23D83C67C(&v111, &v121, &qword_27E2EE668, &qword_23D8E25A0);
    sub_23D834028(v77, v78, v64);

    sub_23D86C87C(v65);
    sub_23D86C87C(v66);
    sub_23D83CB6C(v77, v78, v64);

    v121 = v98;
    LOWORD(v122) = 256;
    *(&v122 + 2) = v160;
    HIWORD(v122) = v161;
    v123 = v22;
    v124 = v103;
    v125 = v102;
    v126 = v23;
    v127 = v101;
    v128 = v24;
    v129 = v106;
    v130 = 256;
    v131 = v158;
    v132 = v159;
    v133 = v105;
    v134 = v104;
    v135 = v100;
    v136 = v99;
    v137 = v108;
    v138 = v109;
    v139 = v110;
    v140 = v67;
    *v141 = *v151;
    *&v141[3] = *&v151[3];
    v142 = v35;
    v143 = v37;
    v144 = v39;
    v145 = v41;
    v146 = 0;
    return sub_23D86C8E4(&v121);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

void *sub_23D8A7BE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AXRHyperlinkColorSelectionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = 0x800000023D8E6230;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v8 = 0xD000000000000010;
  if (qword_27E2F3C80)
  {
    v9 = qword_27E2F3C80;
    v10 = sub_23D8DE830();
    v11 = sub_23D8DE830();
    v12 = v5;
    v13 = [v9 localizedStringForKey:v10 value:0 table:v11];

    v8 = sub_23D8DE870();
    v7 = v14;

    v5 = v12;
  }

  v35 = v8;
  v36 = v7;
  LODWORD(v34) = sub_23D8A5CD0();
  if (*(a1 + *(v4 + 24)))
  {
    sub_23D8380E8();

    sub_23D8DC960();

    sub_23D8DC7E0();

    v15 = sub_23D8DEB80();
    v33 = sub_23D8DEB70();

    sub_23D8A8F30(a1, &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_23D8DE9D0();
    v16 = sub_23D8DE9C0();
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v16;
    *(v18 + 24) = v19;
    sub_23D8A8F98(&v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v17);
    sub_23D8A8F30(a1, &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v20 = sub_23D8DE9C0();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v19;
    sub_23D8A8F98(&v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v17);
    sub_23D8DE480();
    v22 = v40;
    LOBYTE(v17) = v34 & 1;
    v23 = v33 & 1;
    v34 = v41;
    *a2 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v25 = type metadata accessor for AXRCustomizationColorButton(0);
    *(a2 + v25[5]) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    swift_storeEnumTagMultiPayload();
    v26 = (a2 + v25[6]);
    v27 = v36;
    *v26 = v35;
    v26[1] = v27;
    *(a2 + v25[7]) = v17;
    *(a2 + v25[8]) = v23;
    *(a2 + v25[9]) = 1;
    v28 = a2 + v25[10];
    *v28 = v22;
    *(v28 + 8) = v34;
    v29 = a2 + v25[11];
    v37 = 0;
    result = sub_23D8DE310();
    v31 = v39;
    *v29 = v38;
    *(v29 + 1) = v31;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

void sub_23D8A8034(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for AXRHyperlinkColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    v3 = sub_23D8DC6F0();

    *a2 = v3;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    sub_23D8DD120();
    __break(1u);
  }
}

uint64_t sub_23D8A8104(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23D8DC510();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a4 + *(type metadata accessor for AXRHyperlinkColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    sub_23D8DC710();

    sub_23D8DC970();
    sub_23D8DC950();

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8A82A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_23D8DC510();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8DC810();
  sub_23D8DC710();
  if (*(a2 + *(type metadata accessor for AXRHyperlinkColorSelectionView(0) + 24)))
  {

    sub_23D8DC970();
    sub_23D8DC950();

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8A8414@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_23D8DD420();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE648, &unk_23D8E2580);
  return sub_23D8A8484(a2, a3, a4 + *(v7 + 44));
}

uint64_t sub_23D8A8484@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v93 = a2;
  v107 = a1;
  v88 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE650, &unk_23D8E34D0);
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x28223BE20](v3);
  v92 = v84 - v4;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE658, &unk_23D8E2590);
  v5 = MEMORY[0x28223BE20](v91);
  v97 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v90 = v84 - v8;
  MEMORY[0x28223BE20](v7);
  v96 = v84 - v9;
  v87 = sub_23D8DCCB0();
  v85 = *(v87 - 8);
  v10 = MEMORY[0x28223BE20](v87);
  v86 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v84[0] = v84 - v12;
  v13 = sub_23D8DCF90();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8380E8();
  sub_23D8DEB50();
  v106 = sub_23D8DE130();
  sub_23D8DCD60();
  v17 = v156;
  v102 = v158;
  v103 = v157;
  v18 = v159;
  v101 = v160;
  v19 = v161;
  v20 = sub_23D8DE5F0();
  v104 = v21;
  v105 = v20;
  v22 = sub_23D8DC810();
  if (!v22)
  {
    v22 = sub_23D8DE240();
  }

  v98 = v22;
  v23 = sub_23D8DE5F0();
  v99 = v24;
  v100 = v23;
  sub_23D8A590C(v16);
  v25 = sub_23D8DCF80();
  v26 = *(v14 + 8);
  v26(v16, v13);
  if (v25)
  {
    v27 = [objc_opt_self() mainScreen];
    [v27 bounds];
  }

  sub_23D8A590C(v16);
  v28 = sub_23D8DCF80();
  v26(v16, v13);
  if (v28)
  {
    v29 = [objc_opt_self() &off_278BEC328];
    [v29 &selRef_scrollViewWillBeginDragging_];
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v89 = sub_23D8DDA30();
  sub_23D8DCC20();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v154 = 0;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v38 = 0xED0000726F6C6F43;
  v39 = 0x747865742E727861;
  if (qword_27E2F3C80)
  {
    v40 = qword_27E2F3C80;
    v41 = sub_23D8DE830();
    v42 = sub_23D8DE830();
    v43 = [v40 localizedStringForKey:v41 value:0 table:v42];

    v39 = sub_23D8DE870();
    v38 = v44;
  }

  v121 = v39;
  v122 = v38;
  sub_23D83CB18();
  v45 = sub_23D8DDCB0();
  v47 = v46;
  v49 = v48;
  v84[1] = v50;
  v51 = v84[0];
  sub_23D8A570C(v84[0]);
  v52 = v85;
  v53 = v86;
  v54 = v87;
  (*(v85 + 104))(v86, *MEMORY[0x277CDF3C0], v87);
  v55 = sub_23D8DCCA0();
  v56 = *(v52 + 8);
  v56(v53, v54);
  v56(v51, v54);
  if (v55)
  {
    v57 = sub_23D8DE240();
  }

  else
  {
    v57 = sub_23D8DE220();
  }

  v58 = v92;
  v121 = v57;
  v59 = sub_23D8DDC10();
  v86 = v60;
  v87 = v59;
  LODWORD(v85) = v61;
  v92 = v62;
  sub_23D83CB6C(v45, v47, v49 & 1);

  v121 = sub_23D8DE2C0();
  sub_23D8DDF80();

  if (*(v107 + *(type metadata accessor for AXRHyperlinkColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    v63 = sub_23D8DC6F0();

    v121 = v63;
    sub_23D86C2EC();
    sub_23D8DE2A0();
    v64 = sub_23D8DE180();

    if (v64)
    {
      v65 = 1.0;
    }

    else
    {
      v65 = 0.0;
    }

    v66 = v90;
    (*(v94 + 32))(v90, v58, v95);
    *(v66 + *(v91 + 36)) = v65;
    v67 = v96;
    sub_23D86C79C(v66, v96);
    v108 = v147;
    v109 = v148;
    v110 = v149;
    v68 = v97;
    sub_23D86C80C(v67, v97);
    *&v111 = v98;
    WORD4(v111) = 256;
    *(&v111 + 10) = v152;
    HIWORD(v111) = v153;
    *&v112 = v17;
    *(&v112 + 1) = __PAIR64__(v102, v103);
    *&v113 = v18;
    *(&v113 + 1) = v101;
    *&v114 = v19;
    *(&v114 + 1) = v106;
    LOWORD(v115) = 256;
    *(&v115 + 2) = v150;
    WORD3(v115) = v151;
    *(&v115 + 1) = v105;
    *&v116 = v104;
    *(&v116 + 1) = v100;
    *&v117[0] = v99;
    *(v117 + 8) = v147;
    *(&v117[2] + 8) = v149;
    *(&v117[1] + 8) = v148;
    v69 = v89;
    BYTE8(v117[3]) = v89;
    *(&v117[3] + 9) = *v155;
    HIDWORD(v117[3]) = *&v155[3];
    *&v118 = v31;
    *(&v118 + 1) = v33;
    *&v119 = v35;
    *(&v119 + 1) = v37;
    v120 = 0;
    v70 = v117[3];
    v71 = v118;
    v72 = v119;
    v73 = v88;
    *(v88 + 192) = 0;
    *(v73 + 160) = v71;
    *(v73 + 176) = v72;
    v74 = v111;
    v75 = v112;
    v76 = v114;
    *(v73 + 32) = v113;
    *(v73 + 48) = v76;
    v77 = v115;
    *v73 = v74;
    *(v73 + 16) = v75;
    v78 = v117[1];
    *(v73 + 128) = v117[2];
    *(v73 + 144) = v70;
    v79 = v116;
    *(v73 + 96) = v117[0];
    *(v73 + 112) = v78;
    *(v73 + 64) = v77;
    *(v73 + 80) = v79;
    v81 = v86;
    v80 = v87;
    *(v73 + 200) = v87;
    *(v73 + 208) = v81;
    LOBYTE(v66) = v85 & 1;
    *(v73 + 216) = v85 & 1;
    *(v73 + 224) = v92;
    *(v73 + 232) = 0;
    *(v73 + 240) = 1;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE660, &unk_23D8E34E0);
    sub_23D86C80C(v68, v73 + *(v82 + 80));
    sub_23D83C67C(&v111, &v121, &qword_27E2EE668, &qword_23D8E25A0);
    sub_23D834028(v80, v81, v66);

    sub_23D86C87C(v67);
    sub_23D86C87C(v68);
    sub_23D83CB6C(v80, v81, v66);

    v121 = v98;
    LOWORD(v122) = 256;
    *(&v122 + 2) = v152;
    HIWORD(v122) = v153;
    v123 = v17;
    v124 = v103;
    v125 = v102;
    v126 = v18;
    v127 = v101;
    v128 = v19;
    v129 = v106;
    v130 = 256;
    v131 = v150;
    v132 = v151;
    v133 = v105;
    v134 = v104;
    v135 = v100;
    v136 = v99;
    v137 = v108;
    v138 = v109;
    v139 = v110;
    v140 = v69;
    *v141 = *v155;
    *&v141[3] = *&v155[3];
    v142 = v31;
    v143 = v33;
    v144 = v35;
    v145 = v37;
    v146 = 0;
    return sub_23D86C8E4(&v121);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8A17C8(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8A8F30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRHyperlinkColorSelectionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D8A8F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRHyperlinkColorSelectionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23D8A8FFC(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for AXRHyperlinkColorSelectionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_23D8A8034(v4, a1);
}

uint64_t objectdestroyTm_8()
{
  v1 = type metadata accessor for AXRHyperlinkColorSelectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23D8DCCB0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCF90();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8A9210(uint64_t *a1)
{
  v3 = *(type metadata accessor for AXRHyperlinkColorSelectionView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_23D8A8104(a1, v4, v5, v6);
}

uint64_t sub_23D8A92B4()
{
  v1 = type metadata accessor for AXRHyperlinkColorSelectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23D8DCCB0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCF90();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_23D8A944C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AXRHyperlinkColorSelectionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D8A6DA0(a1, v6, a2);
}

uint64_t sub_23D8A94CC()
{
  v1 = type metadata accessor for AXRHyperlinkColorSelectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_23D8DC560();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v13 = *(v6 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23D8DCCB0();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
  }

  else
  {
  }

  v9 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D8DCF90();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  v11 = (v3 + v4 + v7) & ~v7;

  (*(v6 + 8))(v0 + v11, v5);

  return MEMORY[0x2821FE8E8](v0, v11 + v13, v2 | v7 | 7);
}

uint64_t sub_23D8A96F8()
{
  v1 = *(type metadata accessor for AXRHyperlinkColorSelectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_23D8DC560();

  return sub_23D8A7028(v0 + v2);
}

uint64_t sub_23D8A97D0()
{
  v1 = type metadata accessor for AXRHyperlinkColorSelectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23D8DCCB0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCF90();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8A9970()
{
  v1 = *(type metadata accessor for AXRHyperlinkColorSelectionView(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_23D8A82A8(v2, v3);
}

uint64_t AXRRootViewController.__allocating_init(readerManager:dismiss:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v29 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF848, &qword_23D8E4530);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - v7;
  v9 = type metadata accessor for AXRRootView(0);
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27[2] = objc_allocWithZone(v4);
  sub_23D8DC9F0();
  swift_allocObject();
  v13 = a1;
  v27[1] = sub_23D8DC9E0();
  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  swift_storeEnumTagMultiPayload();
  v14 = v12 + v9[5];
  v30 = 0;
  sub_23D8DE310();
  v15 = v32;
  *v14 = v31;
  *(v14 + 1) = v15;
  v16 = (v12 + v9[8]);
  v17 = (v12 + v9[6]);
  sub_23D8DC430();
  sub_23D8AA168(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  v18 = v13;
  *v17 = sub_23D8DCEF0();
  v17[1] = v19;
  v20 = (v12 + v9[7]);
  sub_23D8AA168(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  v21 = sub_23D8DCEF0();
  v23 = v22;

  *v20 = v21;
  v20[1] = v23;
  v24 = v29;
  *v16 = v28;
  v16[1] = v24;
  sub_23D8AA1B0(v12, v8);
  (*(v10 + 56))(v8, 0, 1, v9);
  v25 = sub_23D8DD5E0();
  sub_23D8AA214(v12);

  return v25;
}

uint64_t AXRRootViewController.init(readerManager:dismiss:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23D8A9EA0(a1, a2, a3);

  return v4;
}

void sub_23D8A9D40(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for AXRRootViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id AXRRootViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXRRootViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23D8A9EA0(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF848, &qword_23D8E4530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - v5;
  v7 = type metadata accessor for AXRRootView(0);
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = (v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23D8DC9F0();
  swift_allocObject();
  v11 = a1;
  v25[1] = sub_23D8DC9E0();
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  swift_storeEnumTagMultiPayload();
  v12 = v10 + v7[5];
  v28 = 0;
  sub_23D8DE310();
  v13 = v30;
  *v12 = v29;
  *(v12 + 1) = v13;
  v14 = (v10 + v7[8]);
  v15 = (v10 + v7[6]);
  sub_23D8DC430();
  sub_23D8AA168(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  v16 = v11;
  *v15 = sub_23D8DCEF0();
  v15[1] = v17;
  v18 = (v10 + v7[7]);
  sub_23D8AA168(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  v19 = sub_23D8DCEF0();
  v21 = v20;

  *v18 = v19;
  v18[1] = v21;
  v22 = v27;
  *v14 = v26;
  v14[1] = v22;
  sub_23D8AA1B0(v10, v6);
  (*(v8 + 56))(v6, 0, 1, v7);
  v23 = sub_23D8DD5E0();
  sub_23D8AA214(v10);
  return v23;
}

uint64_t sub_23D8AA168(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D8AA1B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRRootView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D8AA214(uint64_t a1)
{
  v2 = type metadata accessor for AXRRootView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AXRRootViewController(uint64_t a1)
{
  result = qword_27E2EF850;
  if (!qword_27E2EF850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D8AA358()
{
  type metadata accessor for SSStore(0);
  sub_23D8AA7DC();

  return sub_23D8DCD40();
}

uint64_t sub_23D8AA3B8()
{
  type metadata accessor for SSStore(0);
  swift_allocObject();
  return sub_23D860F84();
}

uint64_t SSRootView.init(_:)@<X0>(uint64_t a4@<X8>)
{
  *(a4 + 16) = sub_23D8AA3B8;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  result = sub_23D8DCEF0();
  *a4 = result;
  *(a4 + 8) = v6;
  return result;
}

uint64_t SSRootView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v34 = a3;
  v4 = *(a1 + 24);
  v30 = *(a1 + 16);
  v5 = type metadata accessor for SSDraggableView(0, v30, v4, a2);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25[-v6];
  v8 = sub_23D8DD020();
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25[-v9];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  v11 = sub_23D8DD020();
  v32 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v25[-v15];
  v17 = *v3;
  v18 = v3[1];
  v19 = v3[3];
  v28 = v3[2];
  v29 = v17;
  v27 = v19;
  v26 = *(v3 + 32);
  swift_unknownObjectRetain();
  sub_23D832DB4(v30, v4, v7);
  WitnessTable = swift_getWitnessTable();
  sub_23D8DDFD0();
  (*(v31 + 8))(v7, v5);
  v39 = v29;
  v40 = v18;
  v41 = v28;
  v42 = v27;
  v43 = v26;
  sub_23D8AA358();
  type metadata accessor for SSStore(0);
  v37 = WitnessTable;
  v38 = MEMORY[0x277CDF748];
  v21 = swift_getWitnessTable();
  sub_23D8AA7DC();
  sub_23D8DDDF0();

  (*(v33 + 8))(v10, v8);
  v22 = sub_23D8AA834();
  v35 = v21;
  v36 = v22;
  swift_getWitnessTable();
  sub_23D8361EC();
  v23 = *(v32 + 8);
  v23(v14, v11);
  sub_23D8361EC();
  return (v23)(v16, v11);
}

unint64_t sub_23D8AA7DC()
{
  result = qword_27E2ED008;
  if (!qword_27E2ED008)
  {
    type metadata accessor for SSStore(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED008);
  }

  return result;
}

unint64_t sub_23D8AA834()
{
  result = qword_27E2ECF10;
  if (!qword_27E2ECF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ECF10);
  }

  return result;
}

uint64_t sub_23D8AA8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23D8AA938(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_23D8AA980(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23D8AA9F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SSDraggableView(255, *a1, a1[1], a4);
  sub_23D8DD020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  sub_23D8DD020();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23D8AA834();
  return swift_getWitnessTable();
}

uint64_t AXRToolbarImageLabel.currentModel.getter()
{
  if (*(v0 + 32))
  {

    v1 = sub_23D8DC960();

    return v1;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8AC784(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t AXRToolbarImageLabel.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF950, &qword_23D8E46C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF958, &qword_23D8E46C8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF960, &unk_23D8E46D0);
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = v0[1];
  v26 = *v0;
  v27 = v11;
  v12 = v0[3];
  v28 = v0[2];
  v29 = v12;
  sub_23D8AAF18(&v26, v3);
  v24[0] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  if (v25)
  {
    v13 = 0.8;
  }

  else
  {
    v13 = 1.0;
  }

  sub_23D83C744(v3, v7, &qword_27E2EF950, &qword_23D8E46C0);
  *&v7[*(v5 + 44)] = v13;
  v14 = sub_23D8DE660();
  if (v28)
  {
    v15 = v14;
    sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);

    sub_23D8DC960();

    sub_23D8DC7E0();

    v16 = sub_23D8DEB80();
    v17 = sub_23D8DEB70();

    sub_23D83C744(v7, v10, &qword_27E2EF958, &qword_23D8E46C8);
    v18 = &v10[*(v8 + 36)];
    *v18 = v15;
    v18[8] = v17 & 1;

    sub_23D8DC960();

    v19 = sub_23D8DC7E0();

    v25 = v19;
    v20 = swift_allocObject();
    v21 = v27;
    v20[1] = v26;
    v20[2] = v21;
    v22 = v29;
    v20[3] = v28;
    v20[4] = v22;
    sub_23D8ABD50(&v26, v24);
    sub_23D8ABD88();
    sub_23D8AC508();
    sub_23D8DE060();

    return sub_23D83C6E4(v10, &qword_27E2EF960, &unk_23D8E46D0);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8AC784(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8AAF18@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EFA48, &qword_23D8E4800);
  MEMORY[0x28223BE20](v79);
  v4 = &v69 - v3;
  v5 = sub_23D8DCCB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE230, &qword_23D8E1D98);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v69 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF9C8, &unk_23D8E4700);
  MEMORY[0x28223BE20](v74);
  v13 = (&v69 - v12);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF9B8, &qword_23D8E46F8);
  MEMORY[0x28223BE20](v77);
  v76 = &v69 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF9A8, &qword_23D8E46F0);
  MEMORY[0x28223BE20](v15);
  v17 = &v69 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF998, &qword_23D8E46E8);
  v18 = MEMORY[0x28223BE20](v78);
  v75 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v69 - v20;
  if (!_UISolariumEnabled())
  {
    v84 = *a1;
    *&v85 = *(a1 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE018, &unk_23D8E2190);
    sub_23D8DE320();
    sub_23D8DE2C0();
    sub_23D8DD5B0();
    v33 = sub_23D8DD5C0();
    (*(*(v33 - 8) + 56))(v11, 0, 1, v33);
    v34 = sub_23D8DE2F0();

    sub_23D83C6E4(v11, &qword_27E2EE230, &qword_23D8E1D98);
    if (*(a1 + 4))
    {
      sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);

      sub_23D8DC960();

      sub_23D8DC7E0();

      v35 = sub_23D8DEB80();
      v36 = sub_23D8DEB70();

      if (v36)
      {
        v37 = sub_23D8DE220();
      }

      else
      {
        v37 = sub_23D8DE240();
      }

      v55 = v37;

      sub_23D8DC960();

      sub_23D8DC7E0();

      v56 = sub_23D8DEB80();
      v57 = sub_23D8DEB70();

      if (v57)
      {
        v58 = sub_23D8DE170();
      }

      else
      {
        v58 = sub_23D8DE160();
      }

      v59 = v58;
      sub_23D8DE5F0();
      sub_23D8DCDB0();
      v60 = sub_23D8DE230();
      v61 = sub_23D8DD9E0();

      sub_23D8DC960();

      sub_23D8DC7E0();

      v62 = sub_23D8DEB80();
      v63 = sub_23D8DEB70();

      if (v63)
      {
        v64 = sub_23D8DE170();
      }

      else
      {
        v64 = sub_23D8DE160();
      }

      v65 = v64;
      v66 = sub_23D8DE5F0();
      v67 = v82;
      *(v4 + 24) = v81;
      *v4 = v34;
      *(v4 + 1) = v55;
      *(v4 + 2) = v59;
      *(v4 + 40) = v67;
      *(v4 + 56) = v83;
      *(v4 + 9) = v60;
      v4[80] = v61;
      *(v4 + 11) = v65;
      *(v4 + 48) = 256;
      *(v4 + 13) = v66;
      *(v4 + 14) = v68;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF9F8, &qword_23D8E4720);
      sub_23D8ABFDC();
      sub_23D8AC2B4();
      return sub_23D8DD6B0();
    }

LABEL_22:
    sub_23D8DC9F0();
    sub_23D8AC784(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
    return result;
  }

  v71 = v15;
  v72 = v17;
  v73 = v21;
  v84 = *a1;
  *&v85 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE018, &unk_23D8E2190);
  sub_23D8DE320();
  sub_23D8DE2C0();
  sub_23D8DD5A0();
  v22 = sub_23D8DD5C0();
  (*(*(v22 - 8) + 56))(v11, 0, 1, v22);
  v70 = sub_23D8DE2F0();

  sub_23D83C6E4(v11, &qword_27E2EE230, &qword_23D8E1D98);
  v23 = a1;
  if (!*(a1 + 4))
  {
    goto LABEL_22;
  }

  sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);

  sub_23D8DC960();

  sub_23D8DC7E0();

  v24 = sub_23D8DEB80();
  v25 = sub_23D8DEB70();

  v26 = MEMORY[0x277CDF3D0];
  if ((v25 & 1) == 0)
  {
    v26 = MEMORY[0x277CDF3C0];
  }

  (*(v6 + 104))(v8, *v26, v5);
  KeyPath = swift_getKeyPath();
  v28 = (v13 + *(v74 + 36));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED570, &qword_23D8E0D00);
  (*(v6 + 32))(v28 + *(v29 + 28), v8, v5);
  *v28 = KeyPath;
  *v13 = v70;
  if (*(v23 + 24) & 1) != 0 && (, sub_23D8DC960(), , sub_23D8DC7E0(), , v30 = sub_23D8DEB80(), v31 = sub_23D8DEB70(), v30, (v31))
  {
    v32 = sub_23D8DE220();
  }

  else
  {
    v32 = sub_23D8DE240();
  }

  v38 = v32;
  v39 = sub_23D8DE230();
  v40 = v13;
  v41 = v76;
  sub_23D83C744(v40, v76, &qword_27E2EF9C8, &unk_23D8E4700);
  v42 = (v41 + *(v77 + 36));
  *v42 = v38;
  v42[1] = v39;
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v43 = v72;
  sub_23D83C744(v41, v72, &qword_27E2EF9B8, &qword_23D8E46F8);
  v44 = (v43 + *(v71 + 36));
  v45 = v85;
  *v44 = v84;
  v44[1] = v45;
  v44[2] = v86;
  v46 = sub_23D8DE230();
  v47 = sub_23D8DE5F0();
  v49 = v48;
  v50 = v43;
  v51 = v75;
  sub_23D83C744(v50, v75, &qword_27E2EF9A8, &qword_23D8E46F0);
  v52 = v51 + *(v78 + 36);
  *v52 = v46;
  *(v52 + 8) = 256;
  *(v52 + 16) = v47;
  *(v52 + 24) = v49;
  v53 = v73;
  sub_23D83C744(v51, v73, &qword_27E2EF998, &qword_23D8E46E8);
  sub_23D8AC834(v53, v4);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF9F8, &qword_23D8E4720);
  sub_23D8ABFDC();
  sub_23D8AC2B4();
  sub_23D8DD6B0();
  return sub_23D83C6E4(v53, &qword_27E2EF998, &qword_23D8E46E8);
}