uint64_t sub_243A80B54(uint64_t a1)
{
  sub_243AC2138();
  sub_243AC18E8();
  v1 = sub_243AC1C58();
  sub_243AC1718();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v25 = 0;
  sub_243AC1F98();
  LOBYTE(v11) = 1;
  *(&v11 + 1) = 0x3FE8000000000000;
  LOBYTE(v12) = v1;
  *(&v12 + 1) = v3;
  *&v13 = v5;
  *(&v13 + 1) = v7;
  *&v14 = v9;
  BYTE8(v14) = 0;
  v15 = sub_243AC20C8();
  sub_243AC1788();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99C10, &qword_243AC8678);
  sub_243A822B4();
  sub_243AC1EC8();
  v23[8] = v12;
  v23[9] = v13;
  v23[10] = v14;
  v24 = v15;
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v23[7] = v22;
  v23[0] = v11;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  return sub_243A2251C(v23, &qword_27ED99C10, &qword_243AC8678);
}

uint64_t sub_243A80D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = *(a3 + 8);
  v10 = sub_243AC2A98();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v9;
  *(v11 + 40) = a1;
  *(v11 + 48) = a2;
  *(v11 + 56) = 0;

  sub_243A3306C(0, 0, v8, &unk_243AC87F0, v11);
}

void sub_243A80E50(uint64_t a5@<X8>)
{
  v6 = sub_243AC1AA8();
  sub_243A8184C(v22);
  *&v21[7] = v22[0];
  *&v21[23] = v22[1];
  *&v21[39] = v22[2];
  *&v21[55] = v22[3];
  sub_243AC2138();
  sub_243AC18E8();
  KeyPath = swift_getKeyPath();
  v8 = sub_243AC1C38();
  v9 = sub_243AC1C58();
  sub_243AC1718();
  *a5 = v6;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  *(a5 + 33) = *&v21[16];
  *(a5 + 49) = *&v21[32];
  *(a5 + 65) = *&v21[48];
  *(a5 + 80) = *&v21[63];
  *(a5 + 17) = *v21;
  *(a5 + 120) = v16;
  *(a5 + 104) = v15;
  *(a5 + 88) = v14;
  *(a5 + 184) = v20;
  *(a5 + 168) = v19;
  *(a5 + 152) = v18;
  *(a5 + 136) = v17;
  *(a5 + 200) = KeyPath;
  *(a5 + 208) = 1;
  *(a5 + 216) = v8;
  *(a5 + 224) = 0u;
  *(a5 + 240) = 0u;
  *(a5 + 256) = 1;
  *(a5 + 264) = v9;
  *(a5 + 272) = v10;
  *(a5 + 280) = v11;
  *(a5 + 288) = v12;
  *(a5 + 296) = v13;
  *(a5 + 304) = 0;
}

void sub_243A80FFC(uint64_t a1@<X8>)
{
  v2 = sub_243AC1AA8();
  sub_243A814DC(v18);
  *&v17[7] = v18[0];
  *&v17[23] = v18[1];
  *&v17[39] = v18[2];
  *&v17[55] = v18[3];
  sub_243AC2138();
  sub_243AC18E8();
  KeyPath = swift_getKeyPath();
  v4 = sub_243AC1C38();
  v5 = sub_243AC1C58();
  sub_243AC1718();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 33) = *&v17[16];
  *(a1 + 49) = *&v17[32];
  *(a1 + 65) = *&v17[48];
  *(a1 + 80) = *&v17[63];
  *(a1 + 17) = *v17;
  *(a1 + 120) = v12;
  *(a1 + 104) = v11;
  *(a1 + 88) = v10;
  *(a1 + 184) = v16;
  *(a1 + 168) = v15;
  *(a1 + 152) = v14;
  *(a1 + 136) = v13;
  *(a1 + 200) = KeyPath;
  *(a1 + 208) = 1;
  *(a1 + 216) = v4;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 1;
  *(a1 + 264) = v5;
  *(a1 + 272) = v6;
  *(a1 + 280) = v7;
  *(a1 + 288) = v8;
  *(a1 + 296) = v9;
  *(a1 + 304) = 0;
}

uint64_t sub_243A81188(uint64_t a1)
{
  v2 = sub_243AC1B08();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B88, &qword_243AC8540);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_243AC1AF8();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B98, &qword_243AC8548);
  sub_243A491E8(&qword_27ED99BA0, &qword_27ED99B98, &qword_243AC8548, MEMORY[0x277CDF028]);
  sub_243AC1758();
  v7 = sub_243A491E8(&qword_27ED99B90, &qword_27ED99B88, &qword_243AC8540, MEMORY[0x277CDD7A8]);
  MEMORY[0x245D45F20](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_243A81374(uint64_t a1)
{
  v2 = type metadata accessor for RecommendationsList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_243AC1708();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243AC16F8();
  sub_243A81C24(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_243A821DC(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for RecommendationsList);
  return MEMORY[0x245D46480](v7, sub_243A81E6C, v9);
}

uint64_t sub_243A814DC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RecommendationsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = objc_opt_self();
  v2 = [v34 bundleForClass_];
  sub_243AC1188();

  sub_243A4FC18();
  v3 = sub_243AC1D88();
  v5 = v4;
  v7 = v6;
  sub_243AC1CF8();
  v8 = sub_243AC1D68();
  v10 = v9;
  v12 = v11;

  sub_243A82874(v3, v5, v7 & 1);

  sub_243AC1FD8();
  v13 = sub_243AC1D28();
  v37 = v14;
  v38 = v13;
  v36 = v15;
  v39 = v16;

  sub_243A82874(v8, v10, v12 & 1);

  v17 = [v34 bundleForClass_];
  sub_243AC1188();

  v18 = sub_243AC1D88();
  v20 = v19;
  v22 = v21;
  sub_243AC1C88();
  v23 = sub_243AC1D68();
  v25 = v24;
  LOBYTE(v5) = v26;

  sub_243A82874(v18, v20, v22 & 1);

  sub_243AC1FD8();
  v27 = sub_243AC1D28();
  v29 = v28;
  LOBYTE(v8) = v30;
  v32 = v31;

  sub_243A82874(v23, v25, v5 & 1);

  *a1 = v38;
  *(a1 + 8) = v37;
  *(a1 + 16) = v36 & 1;
  *(a1 + 24) = v39;
  *(a1 + 32) = v27;
  *(a1 + 40) = v29;
  *(a1 + 48) = v8 & 1;
  *(a1 + 56) = v32;
  sub_243A82884(v38, v37, v36 & 1);

  sub_243A82884(v27, v29, v8 & 1);

  sub_243A82874(v27, v29, v8 & 1);

  sub_243A82874(v38, v37, v36 & 1);
}

uint64_t sub_243A8184C@<X0>(uint64_t a5@<X8>)
{
  sub_243A4FC18();

  v6 = sub_243AC1D88();
  v8 = v7;
  v10 = v9;
  sub_243AC1CF8();
  v11 = sub_243AC1D68();
  v13 = v12;
  v15 = v14;

  sub_243A82874(v6, v8, v10 & 1);

  sub_243AC1FD8();
  v16 = sub_243AC1D28();
  v36 = v17;
  v37 = v16;
  v35 = v18;
  v38 = v19;

  sub_243A82874(v11, v13, v15 & 1);

  v20 = sub_243AC1D88();
  v22 = v21;
  LOBYTE(v13) = v23;
  sub_243AC1C88();
  v24 = sub_243AC1D68();
  v26 = v25;
  LOBYTE(v8) = v27;

  sub_243A82874(v20, v22, v13 & 1);

  sub_243AC1FD8();
  v28 = sub_243AC1D28();
  v30 = v29;
  LOBYTE(v11) = v31;
  v33 = v32;

  sub_243A82874(v24, v26, v8 & 1);

  *a5 = v37;
  *(a5 + 8) = v36;
  *(a5 + 16) = v35 & 1;
  *(a5 + 24) = v38;
  *(a5 + 32) = v28;
  *(a5 + 40) = v30;
  *(a5 + 48) = v11 & 1;
  *(a5 + 56) = v33;
  sub_243A82884(v37, v36, v35 & 1);

  sub_243A82884(v28, v30, v11 & 1);

  sub_243A82874(v28, v30, v11 & 1);

  sub_243A82874(v37, v36, v35 & 1);
}

double sub_243A81AC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B20, &qword_243AC84F8);
  sub_243A491E8(&qword_27ED99B28, &qword_27ED99B20, &qword_243AC84F8, MEMORY[0x277CDF7D8]);
  sub_243AC1888();
  v5 = *(a1 + 20);
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B30, &unk_243AC8500) + 36);
  sub_243A224B4(v2 + v5, v6, &unk_27ED995A0, qword_243AC6D10);
  sub_243AC2608();
  sub_243AC25F8();
  v7 = v6 + *(type metadata accessor for MetricsModifier(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99680, &qword_243AC6D48);
  sub_243AC2058();
  result = *&v9;
  *v7 = v9;
  *(v7 + 16) = v10;
  return result;
}

uint64_t sub_243A81C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendationsList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A81C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RecommendationsList(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243A7F2B8(a1, v6, a2);
}

unint64_t sub_243A81D14()
{
  result = qword_27ED99B68;
  if (!qword_27ED99B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99B40, &qword_243AC8518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99B38, &qword_243AC8510);
    sub_243AC18C8();
    sub_243A491E8(&qword_27ED99B60, &qword_27ED99B38, &qword_243AC8510, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    sub_243A491E8(&qword_27ED99B70, &qword_27ED99B78, &qword_243AC8530, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99B68);
  }

  return result;
}

unint64_t sub_243A81ED8()
{
  result = qword_27ED99C00;
  if (!qword_27ED99C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99BF8, &unk_243AC85A0);
    sub_243A81F90();
    sub_243A491E8(&qword_27ED99150, &qword_27ED99158, &qword_243AC7ED0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99C00);
  }

  return result;
}

unint64_t sub_243A81F90()
{
  result = qword_27ED99C08;
  if (!qword_27ED99C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99C08);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for RecommendationsList(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 20);
  v6 = sub_243AC2438();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243A82158(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for RecommendationsList(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243A80D20(a1, a2, v6);
}

uint64_t sub_243A821DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_243A82244(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BC8, &qword_243AC8570);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243A822B4()
{
  result = qword_27ED99C18;
  if (!qword_27ED99C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99C10, &qword_243AC8678);
    sub_243A82628(&qword_27ED99C20, &qword_27ED99C28, &qword_243AC8680, sub_243A82398);
    sub_243A491E8(&qword_27ED99C48, &qword_27ED99C50, &qword_243AC8690, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99C18);
  }

  return result;
}

unint64_t sub_243A82398()
{
  result = qword_27ED99C30;
  if (!qword_27ED99C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99C38, &qword_243AC8688);
    sub_243A82424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99C30);
  }

  return result;
}

unint64_t sub_243A82424()
{
  result = qword_27ED99C40;
  if (!qword_27ED99C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99C40);
  }

  return result;
}

unint64_t sub_243A82478()
{
  result = qword_27ED99C58;
  if (!qword_27ED99C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99BC8, &qword_243AC8570);
    sub_243A829D0(&qword_27ED99C60, type metadata accessor for RecommendationsCardList, &unk_243AC5D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99C58);
  }

  return result;
}

unint64_t sub_243A82544()
{
  result = qword_27ED99C88;
  if (!qword_27ED99C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99C80, &qword_243AC8740);
    sub_243A82628(&qword_27ED99C90, &qword_27ED99C98, &qword_243AC8748, sub_243A826AC);
    sub_243A491E8(&qword_27ED99C48, &qword_27ED99C50, &qword_243AC8690, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99C88);
  }

  return result;
}

uint64_t sub_243A82628(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_243A826DC()
{
  result = qword_27ED99CB0;
  if (!qword_27ED99CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99CB8, &qword_243AC8758);
    sub_243A82794();
    sub_243A491E8(&qword_27ED99CE0, &qword_27ED99CE8, &qword_243AC8770, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99CB0);
  }

  return result;
}

unint64_t sub_243A82794()
{
  result = qword_27ED99CC0;
  if (!qword_27ED99CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99CC8, &qword_243AC8760);
    sub_243A491E8(&qword_27ED99CD0, &qword_27ED99CD8, &qword_243AC8768, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99CC0);
  }

  return result;
}

double sub_243A8284C(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_243A82874(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_243A82884(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_243A8289C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

unint64_t sub_243A828E8()
{
  result = qword_27ED99CF0;
  if (!qword_27ED99CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99B30, &unk_243AC8500);
    sub_243A491E8(&qword_27ED99CF8, &qword_27ED99D00, &qword_243AC87F8, MEMORY[0x277CDDA18]);
    sub_243A829D0(&qword_27ED99D08, type metadata accessor for MetricsModifier, &unk_243AC6D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99CF0);
  }

  return result;
}

uint64_t sub_243A829D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t RecommendationsSpecifier.init(controller:account:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_243AC2058();
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  type metadata accessor for RecommendationsController(0);
  sub_243A63E78();
  result = sub_243AC1828();
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = a2;
  return result;
}

uint64_t RecommendationsSpecifier.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D10, &qword_243AC8800);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-v3];
  v5 = v0[1];
  v13 = *v0;
  *v14 = v5;
  *&v14[16] = *(v0 + 4);
  v10 = &v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D18, &qword_243AC8808);
  sub_243A491E8(&qword_27ED99D20, &qword_27ED99D18, &qword_243AC8808, MEMORY[0x277CDF028]);
  sub_243AC2118();
  v12 = *&v14[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
  sub_243AC2088();
  v6 = swift_allocObject();
  v7 = *v14;
  *(v6 + 16) = v13;
  *(v6 + 32) = v7;
  *(v6 + 48) = *&v14[16];
  sub_243A83898(&v13, &v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D30, &qword_243AC8818);
  sub_243A838D0();
  sub_243A8398C();
  sub_243AC1F28();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_243A82CFC(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  sub_243A83898(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D58, &qword_243AC88F8);
  sub_243A491E8(&qword_27ED99D60, &qword_27ED99D58, &qword_243AC88F8, MEMORY[0x277CE1198]);
  return sub_243AC20A8();
}

uint64_t sub_243A82E00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9[-v3];
  v10 = *(a1 + 24);
  v9[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
  sub_243AC2078();
  v5 = *(a1 + 8);
  v6 = sub_243AC2A98();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_243A3306C(0, 0, v4, &unk_243AC8A70, v7);
}

uint64_t sub_243A82F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_243AC1AB8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D68, &qword_243AC8900);
  return sub_243A82FA0(a1, a2 + *(v4 + 44));
}

uint64_t sub_243A82FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D70, &qword_243AC8908);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  *v7 = sub_243AC1A78();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D78, &qword_243AC8910);
  sub_243A8329C(a1, &v7[*(v8 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  sub_243A4FC18();
  v9 = sub_243AC1D88();
  v11 = v10;
  v13 = v12;
  sub_243AC1C88();
  v14 = sub_243AC1D68();
  v16 = v15;
  v18 = v17;

  sub_243A82874(v9, v11, v13 & 1);

  v19 = [objc_opt_self() secondaryLabelColor];
  v33 = sub_243AC1F78();
  v20 = sub_243AC1D38();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_243A82874(v14, v16, v18 & 1);

  v27 = v31;
  sub_243A224B4(v7, v31, &qword_27ED99D70, &qword_243AC8908);
  v28 = v32;
  sub_243A224B4(v27, v32, &qword_27ED99D70, &qword_243AC8908);
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D80, &qword_243AC8960) + 48);
  *v29 = v20;
  *(v29 + 8) = v22;
  *(v29 + 16) = v24 & 1;
  *(v29 + 24) = v26;
  sub_243A82884(v20, v22, v24 & 1);

  sub_243A2251C(v7, &qword_27ED99D70, &qword_243AC8908);
  sub_243A82874(v20, v22, v24 & 1);

  return sub_243A2251C(v27, &qword_27ED99D70, &qword_243AC8908);
}

uint64_t sub_243A8329C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D88, &qword_243AC8968) - 8;
  v3 = MEMORY[0x28223BE20](v71);
  v70 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v72 = (&v61 - v5);
  v64 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  sub_243A4FC18();
  v6 = sub_243AC1D88();
  v8 = v7;
  v10 = v9;
  sub_243AC1C98();
  v11 = sub_243AC1D68();
  v13 = v12;
  v15 = v14;

  sub_243A82874(v6, v8, v10 & 1);

  v61 = objc_opt_self();
  v16 = [v61 labelColor];
  v73 = sub_243AC1F78();
  v17 = sub_243AC1D38();
  v67 = v18;
  v68 = v17;
  v66 = v19;
  v69 = v20;
  sub_243A82874(v11, v13, v15 & 1);

  v73 = sub_243A35A8C();
  v74 = v21;
  v22 = sub_243AC1D88();
  v24 = v23;
  v26 = v25;
  sub_243AC1C98();
  v27 = sub_243AC1D68();
  v29 = v28;
  LOBYTE(v6) = v30;

  sub_243A82874(v22, v24, v26 & 1);

  v31 = v61;
  v32 = [v61 secondaryLabelColor];
  v73 = sub_243AC1F78();
  v33 = sub_243AC1D38();
  v62 = v34;
  v63 = v35;
  v64 = v36;
  sub_243A82874(v27, v29, v6 & 1);

  v37 = sub_243AC2008();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D90, &qword_243AC89B8);
  v39 = v72;
  v40 = (v72 + *(v38 + 36));
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D98, &qword_243AC89C0) + 28);
  v42 = *MEMORY[0x277CE1050];
  v43 = sub_243AC2028();
  (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
  *v40 = swift_getKeyPath();
  *v39 = v37;
  v44 = sub_243AC1CF8();
  KeyPath = swift_getKeyPath();
  v46 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99DA0, &qword_243AC8A28) + 36));
  *v46 = KeyPath;
  v46[1] = v44;
  v47 = [v31 tertiaryLabelColor];
  v48 = sub_243AC1F78();
  v49 = swift_getKeyPath();
  v50 = (v39 + *(v71 + 44));
  *v50 = v49;
  v50[1] = v48;
  LOBYTE(v48) = v66 & 1;
  LOBYTE(v73) = v66 & 1;
  v51 = v39;
  v52 = v70;
  sub_243A224B4(v51, v70, &qword_27ED99D88, &qword_243AC8968);
  v54 = v67;
  v53 = v68;
  v56 = v64;
  v55 = v65;
  *v65 = v68;
  v55[1] = v54;
  *(v55 + 16) = v48;
  v55[3] = v69;
  v55[4] = 0;
  *(v55 + 40) = 1;
  v57 = v33;
  v55[6] = v33;
  v58 = v62;
  v55[7] = v62;
  LOBYTE(KeyPath) = v63 & 1;
  *(v55 + 64) = v63 & 1;
  v55[9] = v56;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ED99DA8, &unk_243AC8A60);
  sub_243A224B4(v52, v55 + *(v59 + 80), &qword_27ED99D88, &qword_243AC8968);
  sub_243A82884(v53, v54, v48);

  sub_243A82884(v57, v58, KeyPath);

  sub_243A2251C(v72, &qword_27ED99D88, &qword_243AC8968);
  sub_243A2251C(v52, &qword_27ED99D88, &qword_243AC8968);
  sub_243A82874(v57, v58, KeyPath);

  sub_243A82874(v53, v54, v73);
}

uint64_t sub_243A83810@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *a1;
  v3 = *(&v9 + 1);
  v4 = *(a1 + 2);
  sub_243A224B4(&v9, &v8, &qword_27ED99D50, "̦");
  v5 = v4;
  v6 = sub_243AC1898();
  result = sub_243AC1C68();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = result;
  return result;
}

unint64_t sub_243A838D0()
{
  result = qword_27ED99D38;
  if (!qword_27ED99D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99D10, &qword_243AC8800);
    sub_243A491E8(&qword_27ED99D20, &qword_27ED99D18, &qword_243AC8808, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99D38);
  }

  return result;
}

unint64_t sub_243A8398C()
{
  result = qword_27ED99D40;
  if (!qword_27ED99D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99D30, &qword_243AC8818);
    sub_243A83A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99D40);
  }

  return result;
}

unint64_t sub_243A83A18()
{
  result = qword_27ED99D48;
  if (!qword_27ED99D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99D48);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_243A83AA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_243A83AE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243A83B40()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99D10, &qword_243AC8800);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99D30, &qword_243AC8818);
  sub_243A838D0();
  sub_243A8398C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroyTm_7()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243A83C5C(uint64_t a1)
{
  v2 = sub_243AC2028();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_243AC1948();
}

uint64_t sub_243A83D38()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_243A83D78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A1FEA8;

  return sub_243A40718(a1, v4, v5, v6);
}

void sub_243A83E5C(void *a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v72 - v8;
  if (a3)
  {
    v74 = a2;
    v10 = *(v3 + 16);
    *(v10 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_userIsCompletingRecommendation) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_243AC51B0;
    v75 = a3;
    v12 = [a1 identifier];
    v13 = sub_243AC2858();
    v15 = v14;

    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    v73 = v3;
    v16 = *(v3 + 136);
    v17 = sub_243AC2A98();
    v18 = *(*(v17 - 8) + 56);
    v18(v9, 1, 1, v17);
    sub_243AC2A58();

    v19 = sub_243AC2A48();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    *(v20 + 16) = v19;
    *(v20 + 24) = v21;
    *(v20 + 32) = v11;
    *(v20 + 40) = v16;
    v22 = a1;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    *(v20 + 48) = v10;
    *(v20 + 72) = 1537;
    sub_243A3306C(0, 0, v9, &unk_243AC5220, v20);

    v23 = [a1 identifier];
    v24 = sub_243AC2858();
    v26 = v25;

    v27 = sub_243A5B5E4(v24, v26);
    if (v27 <= 0xA)
    {
      if (v27 != 1)
      {
        if (v27 != 2)
        {
          if (v27 == 8)
          {
            v18(v9, 1, 1, v17);
            v28 = v75;
            v29 = v74;
            v30 = v73;

            v31 = v22;
            v32 = sub_243AC2A48();
            v33 = swift_allocObject();
            v33[2] = v32;
            v33[3] = MEMORY[0x277D85700];
            v33[4] = v30;
            v33[5] = v31;
            v33[6] = v29;
            v33[7] = v28;
            sub_243A3306C(0, 0, v9, &unk_243AC8B78, v33);

            return;
          }

          goto LABEL_29;
        }

LABEL_23:
        objc_opt_self();
        v47 = v74;
        v48 = swift_dynamicCastObjCClass();
        if (!v48)
        {

          return;
        }

        v49 = v48;
        v50 = v47;
        if ([v22 completed])
        {
          v51 = [v50 actionType];
          v52 = sub_243AC2858();
          v54 = v53;

          if (v52 == sub_243AC2858() && v54 == v55)
          {

LABEL_41:
            v56 = v75;
            sub_243A84F80(v22, v49, v75);
            goto LABEL_42;
          }

          v64 = sub_243AC2EE8();

          if (v64)
          {
            goto LABEL_41;
          }

          v65 = [v50 actionType];
          v66 = sub_243AC2858();
          v68 = v67;

          if (v66 == sub_243AC2858() && v68 == v69)
          {
          }

          else
          {
            v71 = sub_243AC2EE8();

            if ((v71 & 1) == 0)
            {
              v46 = v75;
              sub_243A84960(v22, v49, v75);

              goto LABEL_46;
            }
          }

          v56 = v75;
          sub_243A84FA0(v22, v49, v75);
        }

        else
        {
          v56 = v75;
          sub_243A862A8(v22, v49, v75);
        }

LABEL_42:

        return;
      }

LABEL_17:
      v38 = [a1 status];
      if (v38)
      {
        v39 = v38;
        v40 = sub_243AC2858();
        v42 = v41;

        v43 = sub_243AC2858();
        if (v42)
        {
          if (v40 != v43 || v42 != v44)
          {
            v45 = sub_243AC2EE8();

            v46 = v75;
            if ((v45 & 1) == 0)
            {
              goto LABEL_39;
            }

LABEL_36:
            sub_243A84960(a1, v74, v46);
            goto LABEL_46;
          }

LABEL_35:

          v46 = v75;
          goto LABEL_36;
        }
      }

      else
      {
        sub_243AC2858();
      }

      v46 = v75;
LABEL_39:
      sub_243A85C88(a1, v74, v46);
      goto LABEL_46;
    }

    if (v27 - 15 < 2)
    {
      goto LABEL_23;
    }

    if (v27 != 11)
    {
      if (v27 != 12)
      {
LABEL_29:
        v46 = v75;
        sub_243A84960(a1, v74, v75);
LABEL_46:

        return;
      }

      goto LABEL_17;
    }

    v57 = [a1 status];
    if (v57)
    {
      v58 = v57;
      v59 = sub_243AC2858();
      v61 = v60;

      v62 = sub_243AC2858();
      if (v61)
      {
        if (v59 == v62 && v61 == v63)
        {
          goto LABEL_35;
        }

        v70 = sub_243AC2EE8();

        v46 = v75;
        if (v70)
        {
          goto LABEL_36;
        }

LABEL_45:
        sub_243A86C64(a1, v46);
        goto LABEL_46;
      }
    }

    else
    {
      sub_243AC2858();
    }

    v46 = v75;
    goto LABEL_45;
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v34 = sub_243AC1468();
  __swift_project_value_buffer(v34, qword_27EDA14A8);
  v75 = sub_243AC1448();
  v35 = sub_243AC2B58();
  if (os_log_type_enabled(v75, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_243A1B000, v75, v35, "Presenter unavailable. Bailing!", v36, 2u);
    MEMORY[0x245D47D20](v36, -1, -1);
  }

  v37 = v75;
}

uint64_t sub_243A84624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = sub_243AC2A58();
  v7[7] = sub_243AC2A48();
  v8 = swift_task_alloc();
  v7[8] = v8;
  *v8 = v7;
  v8[1] = sub_243A846E4;

  return sub_243A7B4C8();
}

uint64_t sub_243A846E4(char a1)
{
  *(*v1 + 72) = a1;

  v3 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A84828, v3, v2);
}

uint64_t sub_243A84828()
{
  v1 = *(v0 + 72);

  if (v1 == 1)
  {
    sub_243A84960(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v2 = sub_243AC1468();
    __swift_project_value_buffer(v2, qword_27EDA14A8);
    v3 = sub_243AC1448();
    v4 = sub_243AC2B58();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_243A1B000, v3, v4, "Authentication failed, unable to present Review Large Files recommendation", v5, 2u);
      MEMORY[0x245D47D20](v5, -1, -1);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_243A84960(void *a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v58 - v8;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v10 = sub_243AC2A98();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v3;
    v11[5] = a3;
    v11[6] = a1;

    v12 = a3;
    v13 = a1;
    sub_243A3306C(0, 0, v9, &unk_243AC8B68, v11);

    return;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 actionType];
    v17 = sub_243AC2858();
    v19 = v18;

    if (v17 == sub_243AC2858() && v19 == v20)
    {
      goto LABEL_12;
    }

    v22 = sub_243AC2EE8();

    if (v22)
    {
LABEL_13:

      sub_243A868B0(v15, a3);
      return;
    }

    v23 = [v15 actionType];
    v24 = sub_243AC2858();
    v26 = v25;

    if (v24 == sub_243AC2858() && v26 == v27)
    {
LABEL_12:

      goto LABEL_13;
    }

    v40 = sub_243AC2EE8();

    if (v40)
    {
      goto LABEL_13;
    }

    v41 = [v15 actionType];
    v42 = sub_243AC2858();
    v44 = v43;

    if (v42 == sub_243AC2858() && v44 == v45)
    {

LABEL_31:

      sub_243A84F80(a1, v15, a3);
      return;
    }

    v46 = sub_243AC2EE8();

    if (v46)
    {
      goto LABEL_31;
    }

    v47 = [v15 actionType];
    v48 = sub_243AC2858();
    v50 = v49;

    if (v48 == sub_243AC2858() && v50 == v51)
    {
    }

    else
    {
      v52 = sub_243AC2EE8();

      if ((v52 & 1) == 0)
      {
        return;
      }
    }

    v53 = [a1 identifier];
    v54 = sub_243AC2858();
    v56 = v55;

    if (v54 == 0xD000000000000023 && 0x8000000243ACB660 == v56)
    {
    }

    else
    {
      v57 = sub_243AC2EE8();

      if ((v57 & 1) == 0)
      {
        return;
      }
    }

    sub_243A8613C(a1, v15, a3);
  }

  else
  {
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {

      sub_243A86014(a1, v28, a3);
    }

    else
    {
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        v30 = v29;
        v31 = *(v3 + 128);
        if (v31 || (v32 = *(v3 + 16), objc_allocWithZone(type metadata accessor for AppInstallAction()), v33 = a3, , v34 = v3, v35 = sub_243AC09D4(v33, v32, 0, 0), v33, , v36 = *(v34 + 128), *(v34 + 128) = v35, v37 = v35, v36, *&v37[OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_delegate + 8] = &off_2856BC458, swift_unknownObjectWeakAssign(), v37, (v31 = *(v34 + 128)) != 0))
        {
          v59 = a2;
          v38 = v31;
          sub_243AC0088(a1, v30);

          v39 = v59;
        }
      }
    }
  }
}

void sub_243A84FC0(uint64_t a1, void *a2, void *a3, void *a4, NSObject *a5)
{
  v37 = a1;
  v38 = a5;
  v8 = sub_243AC1208();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 actionType];
  v13 = sub_243AC2858();
  v15 = v14;

  if (v13 == sub_243AC2858() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_243AC2EE8();

    if ((v18 & 1) == 0)
    {
      if (qword_27ED98910 != -1)
      {
        swift_once();
      }

      v19 = sub_243AC1468();
      __swift_project_value_buffer(v19, qword_27EDA14A8);
      v38 = sub_243AC1448();
      v20 = sub_243AC2B58();
      if (os_log_type_enabled(v38, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_243A1B000, v38, v20, "Invalid action type passed. Bailing", v21, 2u);
        MEMORY[0x245D47D20](v21, -1, -1);
      }

      v22 = v38;

      return;
    }
  }

  v23 = v5[10];
  if (v23 || (v24 = v5[2], v25 = v5[3], v26 = type metadata accessor for URLAction(), v27 = objc_allocWithZone(v26), *&v27[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_liftUIPresenter] = 0, *&v27[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_remoteUIPresenter] = 0, v28 = &v27[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_delegate], *v28 = 0, *(v28 + 1) = 0, *&v27[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation] = 0, *&v27[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_recommendationsController] = v24, *&v27[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_account] = v25, *&v27[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_presenter] = a3, v39.receiver = v27, v39.super_class = v26, , v29 = v25, v30 = a3, v31 = objc_msgSendSuper2(&v39, sel_init), v32 = v5[10], v5[10] = v31, v33 = v31, v32, v34 = &v33[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_delegate], *v34 = v5, *(v34 + 1) = &off_2856BC458, , v33, swift_unknownObjectRelease(), (v23 = v5[10]) != 0))
  {
    v35 = v23;
    v36 = [a2 actionURL];
    sub_243AC11D8();

    (v38)(v37, v11);
    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_243A85350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_243A85374, 0, 0);
}

uint64_t sub_243A85374()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 72);
  if (v2 || (v3 = *(v0 + 24), v4 = *(v1 + 24), type metadata accessor for DataclassAction(), swift_allocObject(), v5 = v4, v6 = v3, v7 = sub_243AB3EE8(v5, v6), v6, v5, *(v1 + 72) = v7, , (v2 = *(v1 + 72)) != 0))
  {
    *(v0 + 40) = v2;
    v8 = *(v0 + 32);

    v9 = [v8 identifier];
    v10 = sub_243AC2858();
    v12 = v11;

    v13 = sub_243A5B5E4(v10, v12);
    if (v13 == 14)
    {
      v16 = swift_task_alloc();
      *(v0 + 56) = v16;
      *v16 = v0;
      v16[1] = sub_243A85778;

      return sub_243AB1E70(0);
    }

    else if (v13 == 4)
    {
      v14 = swift_task_alloc();
      *(v0 + 48) = v14;
      *v14 = v0;
      v14[1] = sub_243A85650;

      return sub_243AB3F98();
    }

    else
    {
      v17 = swift_task_alloc();
      *(v0 + 64) = v17;
      *v17 = v0;
      v17[1] = sub_243A858A0;
      v18 = *(v0 + 32);

      return sub_243AB26E8(v18);
    }
  }

  else
  {
    v19 = *(v0 + 16);
    *(v0 + 72) = *(v19 + 16);
    *(v0 + 88) = *(v19 + 136);
    sub_243AC2A58();
    *(v0 + 80) = sub_243AC2A48();
    v21 = sub_243AC2A28();

    return MEMORY[0x2822009F8](sub_243A85C14, v21, v20);
  }
}

uint64_t sub_243A85650(char a1)
{
  v3 = *v1;

  *(v3 + 89) = a1;

  return MEMORY[0x2822009F8](sub_243A859C8, 0, 0);
}

uint64_t sub_243A85778(char a1)
{
  v3 = *v1;

  *(v3 + 89) = a1;

  return MEMORY[0x2822009F8](sub_243A859C8, 0, 0);
}

uint64_t sub_243A858A0(char a1)
{
  v3 = *v1;

  *(v3 + 89) = a1;

  return MEMORY[0x2822009F8](sub_243A859C8, 0, 0);
}

uint64_t sub_243A859C8()
{
  v20 = v0;
  if (*(v0 + 89))
  {
    v1 = *(v0 + 16);
    *(v0 + 72) = *(v1 + 16);
    *(v0 + 88) = *(v1 + 136);
    sub_243AC2A58();
    *(v0 + 80) = sub_243AC2A48();
    v3 = sub_243AC2A28();

    return MEMORY[0x2822009F8](sub_243A85C14, v3, v2);
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 32);
    v5 = sub_243AC1468();
    __swift_project_value_buffer(v5, qword_27EDA14A8);
    v6 = v4;
    v7 = sub_243AC1448();
    v8 = sub_243AC2B58();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 32);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v12 = [v9 identifier];
      v13 = sub_243AC2858();
      v15 = v14;

      v16 = sub_243AB73D8(v13, v15, &v19);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_243A1B000, v7, v8, "Could not enable dataclass form %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x245D47D20](v11, -1, -1);
      MEMORY[0x245D47D20](v10, -1, -1);
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_243A85C14()
{
  v1 = *(v0 + 32);

  sub_243A3CF58(v1, 0, (v0 + 88));
  v2 = *(v0 + 8);

  return v2();
}

void sub_243A85C88(void *a1, void *a2, void *a3)
{
  v7 = sub_243AC1208();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v39 = v11;
    if (v3[11])
    {
      v12 = a2;
    }

    else
    {
      v18 = v3[2];
      v17 = v3[3];
      v19 = type metadata accessor for UpgradeFlowManagerAction();
      v20 = objc_allocWithZone(v19);
      *&v20[OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_activeRecommendation] = 0;
      *&v20[OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_upgradeFlowManager] = 0;
      v21 = &v20[OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_delegate];
      *v21 = 0;
      *(v21 + 1) = 0;
      *&v20[OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_presenter] = a3;
      *&v20[OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_controller] = v18;
      *&v20[OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_account] = v17;
      v40.receiver = v20;
      v40.super_class = v19;
      v22 = a2;

      v23 = v17;
      v24 = a3;
      v25 = objc_msgSendSuper2(&v40, sel_init);
      v26 = v3[11];
      v3[11] = v25;
      v27 = v25;

      v28 = &v27[OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_delegate];
      *v28 = v3;
      *(v28 + 1) = &off_2856BC458;

      swift_unknownObjectRelease();
    }

    v29 = [a1 identifier];
    v30 = sub_243AC2858();
    v32 = v31;

    v33 = sub_243A5B5E4(v30, v32);
    v34 = v3[11];
    if (v33 == 12)
    {
      if (v34)
      {
        v35 = v34;
        v36 = [v39 actionURL];
        sub_243AC11D8();

        sub_243A234B4(v10);
        (*(v8 + 8))(v10, v7);
        return;
      }
    }

    else if (v34)
    {
      v37 = v34;
      sub_243A22D0C(a1);
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v13 = sub_243AC1468();
    __swift_project_value_buffer(v13, qword_27EDA14A8);
    v39 = sub_243AC1448();
    v14 = sub_243AC2B58();
    if (os_log_type_enabled(v39, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_243A1B000, v39, v14, "Action type is inconsistent with expected action type.", v15, 2u);
      MEMORY[0x245D47D20](v15, -1, -1);
    }

    v16 = v39;
  }
}

void sub_243A86014(void *a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 96);
  if (v6 || (v8 = *(v3 + 16), v9 = type metadata accessor for NativeModalActionHandler(), v10 = objc_allocWithZone(v9), *&v10[OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_activeRecommendation] = 0, v11 = &v10[OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_delegate], *v11 = 0, *(v11 + 1) = 0, *&v10[OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_presenter] = a3, *&v10[OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_controller] = v8, v18.receiver = v10, v18.super_class = v9, v12 = a3, , v13 = objc_msgSendSuper2(&v18, sel_init), v14 = *(v3 + 96), *(v3 + 96) = v13, v15 = v13, v14, v16 = &v15[OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_delegate], *v16 = v3, *(v16 + 1) = &off_2856BC458, swift_unknownObjectRelease(), , v15, (v6 = *(v3 + 96)) != 0))
  {
    v17 = v6;
    sub_243A711C4(a1, a2);
  }
}

void sub_243A8613C(void *a1, void *a2, void *a3)
{
  v6 = *(v3 + 112);
  if (v6 || (v8 = *(v3 + 16), v9 = *(v3 + 24), v10 = *(v3 + 136), v11 = type metadata accessor for TurnOnAppsActionHandler(), v12 = objc_allocWithZone(v11), v13 = &v12[OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_delegate], *v13 = 0, v13[1] = 0, *&v12[OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_remoteUIPresenter] = 0, *&v12[OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_activeRecommendation] = 0, *&v12[OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_presenter] = a3, *&v12[OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_controller] = v8, *&v12[OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_account] = v9, v12[OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_context] = v10, v21.receiver = v12, v21.super_class = v11, v14 = a3, , v15 = v9, v16 = objc_msgSendSuper2(&v21, sel_init), v17 = *(v3 + 112), *(v3 + 112) = v16, v18 = v16, v17, v19 = &v18[OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_delegate], *v19 = v3, *(v19 + 1) = &off_2856BC458, , v18, swift_unknownObjectRelease(), (v6 = *(v3 + 112)) != 0))
  {
    v20 = v6;
    sub_243A74910(a1, a2);
  }
}

uint64_t sub_243A862A8(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  if (!v4[15])
  {
    v11 = v4[2];
    v12 = v4[3];
    v13 = type metadata accessor for FamilySharingActionHandler();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_delegate];
    *v15 = 0;
    *(v15 + 1) = 0;
    *&v14[OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_activeRecommendation] = 0;
    *&v14[OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_familySharingController] = 0;
    *&v14[OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_account] = v12;
    *&v14[OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_presenter] = a3;
    *&v14[OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_controller] = v11;
    v27.receiver = v14;
    v27.super_class = v13;
    v16 = v12;

    v17 = a3;
    v18 = objc_msgSendSuper2(&v27, sel_init);
    v19 = v4[15];
    v4[15] = v18;
    v20 = v18;

    v21 = &v20[OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_delegate];
    *v21 = v4;
    *(v21 + 1) = &off_2856BC458;
    swift_unknownObjectRelease();
  }

  v22 = sub_243AC2A98();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v4;
  v23[5] = a1;
  v23[6] = a2;

  v24 = a1;
  v25 = a2;
  sub_243A3335C(0, 0, v10, &unk_243AC8B58, v23);
}

uint64_t sub_243A864CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_243A864F0, 0, 0);
}

uint64_t sub_243A864F0()
{
  v1 = *(*(v0 + 24) + 120);
  *(v0 + 48) = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_243A865E0;
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);

    return sub_243A7BA00(v4, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_243A865E0()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_243A866F4, 0, 0);
}

uint64_t sub_243A8671C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return v0;
}

uint64_t sub_243A8678C()
{
  sub_243A8671C();

  return swift_deallocClassInstance();
}

uint64_t sub_243A867E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243A33068;

  return sub_243A864CC(a1, v4, v5, v6, v7, v8);
}

id sub_243A868B0(void *a1, void *a2)
{
  v5 = sub_243AC1208();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[10] || (v9 = v2[2], v10 = v2[3], v11 = type metadata accessor for URLAction(), v12 = objc_allocWithZone(v11), *&v12[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_liftUIPresenter] = 0, *&v12[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_remoteUIPresenter] = 0, v13 = &v12[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_delegate], *v13 = 0, *(v13 + 1) = 0, *&v12[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation] = 0, *&v12[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_recommendationsController] = v9, *&v12[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_account] = v10, *&v12[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_presenter] = a2, v25.receiver = v12, v25.super_class = v11, , v14 = v10, v15 = a2, v16 = objc_msgSendSuper2(&v25, sel_init), v17 = v2[10], v2[10] = v16, v18 = v16, v17, v19 = &v18[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_delegate], *v19 = v2, *(v19 + 1) = &off_2856BC458, , v18, result = swift_unknownObjectRelease(), v2[10]))
  {
    v21 = [a1 actionURL];
    sub_243AC11D8();

    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v22 = result;
      v23 = sub_243AC11C8();
      sub_243A2E2B4(MEMORY[0x277D84F90]);
      v24 = sub_243AC27C8();

      [v22 openSensitiveURL:v23 withOptions:v24];

      return (*(v6 + 8))(v8, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243A86B9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243A33068;

  return sub_243A85350(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_243A86C64(void *a1, void *a2)
{
  if (v2[13] || (v5 = v2[2], v6 = v2[3], type metadata accessor for MailSetupHandler(), swift_allocObject(), v7 = v6, , v8 = a2, v9 = v2, v10 = sub_243AA1504(v7, v5, v8), v7, , v8, v9[13] = v10, , , v10[6] = v9, v10[7] = &off_2856BC458, , , result = swift_unknownObjectRelease(), v9[13]))
  {

    sub_243AA10C8(a1);
  }

  return result;
}

uint64_t sub_243A86D90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 74, 7);
}

uint64_t sub_243A86DE0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_243A86E38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_243A1FEA8;

  return sub_243A84624(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t get_enum_tag_for_layout_string_21CloudRecommendationUI21CachedAsyncImageStateO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_243A86F38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_243A86F94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_243A86FF4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

void sub_243A87038(uint64_t a1)
{
  sub_243A872A0();
  if (v1 <= 0x3F)
  {
    sub_243A4D158();
    if (v2 <= 0x3F)
    {
      sub_243A872F0(319);
      if (v3 <= 0x3F)
      {
        sub_243A87348();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_243A87108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99418, &qword_243AC67E8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243A871D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99418, &qword_243AC67E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243A872A0()
{
  if (!qword_27ED99E30)
  {
    v0 = sub_243AC2098();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED99E30);
    }
  }
}

void sub_243A872F0(uint64_t a1)
{
  if (!qword_27ED99E38)
  {
    sub_243AC1058();
    v1 = sub_243AC2C38();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED99E38);
    }
  }
}

unint64_t sub_243A87348()
{
  result = qword_27ED99E40;
  if (!qword_27ED99E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED99E40);
  }

  return result;
}

uint64_t sub_243A873D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v4 = sub_243AC2A98();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  v35 = *(v7 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v38 = *(v10 - 8);
  MEMORY[0x28223BE20](v8);
  v31 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99E48, &qword_243AC8CA8);
  v12 = sub_243AC1878();
  v32 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v34 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v36 = &v31 - v15;
  v16 = *(v2 + 2);
  v45 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99E50, &qword_243AC8CB0);
  sub_243AC2068();
  v17 = v44;
  v16(v44);
  sub_243A5F694(v17);
  v18 = v33;
  (*(v7 + 16))(v33, v2, a1);
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v20 = swift_allocObject();
  v21 = *(a1 + 24);
  *(v20 + 16) = v10;
  *(v20 + 24) = v21;
  (*(v7 + 32))(v20 + v19, v18, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99418, &qword_243AC67E8);
  sub_243A88338();
  v22 = v37;
  sub_243AC2A78();
  v23 = v34;
  v24 = v31;
  sub_243AC1F08();

  (*(v39 + 8))(v22, v40);
  (*(v38 + 8))(v24, v10);
  v25 = sub_243A88414();
  v42 = v21;
  v43 = v25;
  swift_getWitnessTable();
  v26 = v32;
  v27 = *(v32 + 16);
  v28 = v36;
  v27(v36, v23, v12);
  v29 = *(v26 + 8);
  v29(v23, v12);
  v27(v41, v28, v12);
  return (v29)(v28, v12);
}

uint64_t sub_243A87840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99418, &qword_243AC67E8);
  v3[14] = swift_task_alloc();
  v4 = sub_243AC1058();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  sub_243AC2A58();
  v3[18] = sub_243AC2A48();
  v6 = sub_243AC2A28();
  v3[19] = v6;
  v3[20] = v5;

  return MEMORY[0x2822009F8](sub_243A87970, v6, v5);
}

uint64_t sub_243A87970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 120);
  v6 = *(v4 + 128);
  v7 = *(v4 + 112);
  v8 = *(v4 + 88);
  v9 = type metadata accessor for CachedAsyncImage(0, *(v4 + 96), *(v4 + 104), a4);
  sub_243A88478(v8 + *(v9 + 44), v7);
  v10 = (*(v6 + 48))(v7, 1, v5);
  v11 = *(v4 + 112);
  v12 = *(v4 + 88);
  if (v10 == 1)
  {

    sub_243A884E8(v11);
    *(v4 + 16) = *v12;
    *(v4 + 64) = 0x8000000000000008;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99E50, &qword_243AC8CB0);
    sub_243AC2078();

    v13 = *(v4 + 8);

    return v13();
  }

  else
  {
    (*(*(v4 + 128) + 32))(*(v4 + 136), *(v4 + 112), *(v4 + 120));
    *(v4 + 168) = *(v12 + *(v9 + 48));
    v15 = swift_task_alloc();
    *(v4 + 176) = v15;
    *v15 = v4;
    v15[1] = sub_243A87B30;
    v16 = *(v4 + 136);

    return MEMORY[0x28211ECF8](v16, 0);
  }
}

uint64_t sub_243A87B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[23] = a1;
  v6[24] = a2;
  v6[25] = a3;
  v6[26] = v3;

  v7 = v5[20];
  v8 = v5[19];
  if (v3)
  {
    v9 = sub_243A87FAC;
  }

  else
  {
    v9 = sub_243A87C78;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_243A87C78()
{

  v1 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v2 = sub_243AC1218();
  v3 = [v1 initWithData_];

  if (v3)
  {
    v4 = *(v0 + 168);
    v5 = *(v0 + 88);
    v31 = *(v0 + 96);
    v6 = sub_243AC1FE8();
    sub_243AC1768();
    v7 = swift_task_alloc();
    *(v7 + 16) = v31;
    *(v7 + 32) = v5;
    *(v7 + 40) = v6;
    sub_243AC17F8();

    v8 = [v4 configuration];
    v9 = [v8 URLCache];

    v10 = *(v0 + 192);
    v11 = *(v0 + 200);
    v12 = *(v0 + 184);
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);
    if (v9)
    {
      v32 = *(v0 + 120);
      v16 = objc_allocWithZone(MEMORY[0x277CCA8F0]);
      v17 = v11;
      sub_243A88590(v12, v10);
      v18 = sub_243AC1218();
      v19 = [v16 initWithResponse:v17 data:v18];

      sub_243A200C8(v12, v10);
      v20 = sub_243AC1018();
      [v9 storeCachedResponse:v19 forRequest:v20];

      sub_243A200C8(v12, v10);
      (*(v14 + 8))(v13, v32);
    }

    else
    {
      sub_243A200C8(*(v0 + 184), *(v0 + 192));

      (*(v14 + 8))(v13, v15);
    }
  }

  else
  {
    v21 = *(v0 + 88);
    v22 = *v21;
    v23 = v21[1];
    *(v0 + 48) = *v21;
    v24 = *(v0 + 192);
    v25 = *(v0 + 200);
    v26 = *(v0 + 184);
    v27 = *(v0 + 128);
    v33 = *(v0 + 136);
    v28 = *(v0 + 120);
    *(v0 + 56) = v23;
    *(v0 + 80) = 0x8000000000000008;
    sub_243A88550(v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99E50, &qword_243AC8CB0);
    sub_243AC2078();
    sub_243A200C8(v26, v24);

    sub_243A5F694(v22);

    (*(v27 + 8))(v33, v28);
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_243A87FAC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 88);

  *(v0 + 32) = *v5;
  *(v0 + 72) = v1 | 0x4000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99E50, &qword_243AC8CB0);
  sub_243AC2078();
  (*(v4 + 8))(v2, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_243A8808C(__int128 *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99E50, &qword_243AC8CB0);
  return sub_243AC2078();
}

uint64_t sub_243A880F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CachedAsyncImage(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = v4 + v7;
  sub_243A5F694(*(v4 + v7));

  v10 = *(v5 + 44);
  v11 = sub_243AC1058();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v9 + v10, v11);
  }

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_243A88250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for CachedAsyncImage(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_243A1FEA8;

  return sub_243A87840(v4 + v9, v6, v7);
}

unint64_t sub_243A88338()
{
  result = qword_27ED99E58;
  if (!qword_27ED99E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99418, &qword_243AC67E8);
    sub_243A883BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99E58);
  }

  return result;
}

unint64_t sub_243A883BC()
{
  result = qword_27ED99E60;
  if (!qword_27ED99E60)
  {
    sub_243AC1058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99E60);
  }

  return result;
}

unint64_t sub_243A88414()
{
  result = qword_27ED99E68;
  if (!qword_27ED99E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99E48, &qword_243AC8CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99E68);
  }

  return result;
}

uint64_t sub_243A88478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99418, &qword_243AC67E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A884E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99418, &qword_243AC67E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_243A88550(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  if (!(result >> 62))
  {
  }

  return result;
}

uint64_t sub_243A88590(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_243A88614(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99E48, &qword_243AC8CA8);
  sub_243AC1878();
  sub_243A88414();
  return swift_getWitnessTable();
}

uint64_t sub_243A886B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v5;
    sub_243A8B394(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v5 = v19;
  }

  else
  {
    v14 = sub_243A2DDC0(a2, a3);
    v16 = v15;

    if (v16)
    {
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v8;
      v20 = *v8;
      if (!v17)
      {
        sub_243A8BB1C(a4, a5);
        v18 = v20;
      }

      result = sub_243A8AEA8(v14, v18);
      *v8 = v18;
    }
  }

  return result;
}

uint64_t sub_243A887CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_243A21C48(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_243A8B544(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_243A2251C(a1, &qword_27ED989A0, &qword_243AC4470);
    sub_243A8AE04(a2, a3, v9);

    return sub_243A2251C(v9, &qword_27ED989A0, &qword_243AC4470);
  }

  return result;
}

uint64_t sub_243A8889C@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99EE0, &qword_243AC8E00);
  v17 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99EC8, &qword_243AC8DE8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v16[1] = sub_243AC23E8();
  sub_243AC2678();
  sub_243AC2478();
  v11 = *(v5 + 16);
  v11(v10, v8, v4);
  sub_243A491E8(&qword_27ED99EE8, &qword_27ED99EE0, &qword_243AC8E00, MEMORY[0x277D22250]);
  sub_243AC2468();
  v12 = *(v5 + 8);
  v12(v8, v4);
  (*(v17 + 8))(v3, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99EF0, &unk_243AC8E08);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v11((v14 + v13), v10, v4);
  sub_243AC2478();
  v11(v8, (v14 + v13), v4);
  swift_setDeallocating();
  v12((v14 + v13), v4);
  swift_deallocClassInstance();
  sub_243AC2458();
  v12(v8, v4);
  return (v12)(v10, v4);
}

uint64_t sub_243A88BC4(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_243AC2178();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243AC21A8();
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243AC13A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_243A4C4D4();
  v12 = sub_243AC2BC8();
  (*(v10 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  (*(v10 + 32))(v14 + v13, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_243A8EB08;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A71700;
  aBlock[3] = &block_descriptor_10;
  v15 = _Block_copy(aBlock);

  sub_243AC2198();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243A8EBD8(&qword_27ED99860, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
  sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20, MEMORY[0x277D83970]);
  sub_243AC2C78();
  MEMORY[0x245D46FA0](0, v8, v5, v15);
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  return (*(v18 + 8))(v8, v19);
}

uint64_t sub_243A88F74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99EC0, &qword_243AC8DD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_243AC13A8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_metricsFieldsContext;
  swift_beginAccess();
  sub_243A8EC20(v6, a1 + v9, &qword_27ED99EC0, &qword_243AC8DD0);
  return swift_endAccess();
}

uint64_t sub_243A890B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x707954746E657665;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x6569466172747865;
    v4 = 0xEB0000000073646CLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6449746E657665;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x707954746E657665;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x6569466172747865;
    v8 = 0xEB0000000073646CLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6449746E657665;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_243AC2EE8();
  }

  return v11 & 1;
}

uint64_t sub_243A891D4()
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A89284(uint64_t a1)
{
  sub_243AC28A8();
}

uint64_t sub_243A89320(uint64_t a1)
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

unint64_t sub_243A893CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_243A8EDA0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_243A893FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x707954746E657665;
  if (v2 != 1)
  {
    v5 = 0x6569466172747865;
    v4 = 0xEB0000000073646CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6449746E657665;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_243A89468()
{
  v1 = 0x707954746E657665;
  if (*v0 != 1)
  {
    v1 = 0x6569466172747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6449746E657665;
  }
}

unint64_t sub_243A894D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_243A8EDA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_243A894F8(uint64_t a1)
{
  v2 = sub_243A8EB84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A89534(uint64_t a1)
{
  v2 = sub_243A8EB84();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_243A89570(void *a1)
{
  v2 = v1;
  v45 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v29 - v5;
  v40 = sub_243AC1618();
  v37 = *(v40 - 8);
  v6 = MEMORY[0x28223BE20](v40);
  v36 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v29 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F00, &qword_243AC8E48);
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v10 = &v29 - v9;
  v11 = OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_extraFields;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
  v13 = *(v12 - 8);
  v33 = *(v13 + 56);
  v34 = v11;
  v32 = v13 + 56;
  v33(&v2[v11], 1, 1, v12);
  v14 = OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_metricsFieldsContext;
  v15 = sub_243AC13A8();
  (*(*(v15 - 8) + 56))(&v2[v14], 1, 1, v15);
  v16 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_243A8EB84();
  v17 = v42;
  sub_243AC2FE8();
  if (v17)
  {
    sub_243A2251C(&v2[OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_extraFields], &qword_27ED98D60, &unk_243AC4FF0);
    sub_243A2251C(&v2[OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_metricsFieldsContext], &qword_27ED99EC0, &qword_243AC8DD0);
    swift_deallocPartialClassInstance();
    v21 = v2;
  }

  else
  {
    v42 = v12;
    v18 = v38;
    v44 = 0;
    sub_243A8EBD8(&qword_27ED98AC8, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    v19 = v39;
    v20 = v10;
    sub_243AC2E88();
    v21 = v2;
    v30 = *(v37 + 32);
    v31 = OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_eventId;
    v39 = (v37 + 32);
    v30(&v2[OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_eventId], v19, v40);
    v44 = 1;
    v22 = v36;
    sub_243AC2E88();
    v23 = v18;
    v30(&v21[OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_eventType], v22, v40);
    v44 = 2;
    sub_243A491E8(&qword_27ED98AC0, &qword_27ED98A38, qword_243AC7210, MEMORY[0x277D23238]);
    v25 = v35;
    v26 = v41;
    v27 = v42;
    sub_243AC2E88();
    (*(v23 + 8))(v20, v26);
    v33(v25, 0, 1, v27);
    v28 = v34;
    swift_beginAccess();
    sub_243A8EC20(v25, &v21[v28], &qword_27ED98D60, &unk_243AC4FF0);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(v43);
  return v21;
}

uint64_t sub_243A89B2C()
{
  v1 = OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_eventId;
  v2 = sub_243AC1618();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_eventType, v2);
  sub_243A2251C(v0 + OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_extraFields, &qword_27ED98D60, &unk_243AC4FF0);
  sub_243A2251C(v0 + OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_metricsFieldsContext, &qword_27ED99EC0, &qword_243AC8DD0);

  return swift_deallocClassInstance();
}

uint64_t sub_243A89C38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243A1FEA8;

  return sub_243A8DD94(a1);
}

uint64_t sub_243A89D80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  sub_243AC13A8();
  sub_243A8EBD8(&qword_27ED99EF8, MEMORY[0x277D7EC08], MEMORY[0x277D7EC10]);
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_243AC1ED8();
}

char *sub_243A89ED8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_243A89570(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t static OpaqueMetricsFieldsContext.== infix(_:_:)()
{
  sub_243AC13A8();
  sub_243A8EBD8(&qword_27ED99E70, MEMORY[0x277D7EC08], MEMORY[0x277D7EC18]);
  v0 = sub_243AC2EB8();
  v2 = v1;
  if (v0 == sub_243AC2EB8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_243AC2EE8();
  }

  return v5 & 1;
}

uint64_t type metadata accessor for JetAction(uint64_t a1)
{
  result = qword_27ED99E98;
  if (!qword_27ED99E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A8A068(uint64_t a1)
{
  sub_243AC1618();
  if (v1 <= 0x3F)
  {
    sub_243A31A9C(319);
    if (v2 <= 0x3F)
    {
      sub_243A8A16C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_243A8A16C(uint64_t a1)
{
  if (!qword_27ED99EA8)
  {
    sub_243AC13A8();
    v1 = sub_243AC2C38();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED99EA8);
    }
  }
}

uint64_t sub_243A8A27C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98CD8, &qword_243AC4E18);
  v34 = v4;
  result = sub_243AC2E18();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_243AC2FB8();
      sub_243AC28A8();
      result = sub_243AC2FD8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_243A8A530(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_243AC2E18();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_243AC2FB8();
      sub_243AC28A8();
      result = sub_243AC2FD8();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_243A8A7CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
  v33 = v4;
  result = sub_243AC2E18();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_243A21C48(v24, v34);
      }

      else
      {
        sub_243A20058(v24, v34);
      }

      sub_243AC2FB8();
      sub_243AC28A8();
      result = sub_243AC2FD8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_243A21C48(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_243A8AA84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_243AC1528();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98CF0, qword_243AC4E30);
  v42 = v4;
  result = sub_243AC2E18();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_243AC2FB8();
      sub_243AC28A8();
      result = sub_243AC2FD8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

double sub_243A8AE04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_243A2DDC0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_243A8BC78();
      v10 = v12;
    }

    sub_243A21C48((*(v10 + 56) + 32 * v8), a3);
    sub_243A8B058(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_243A8AEA8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_243AC2C88() + 1) & ~v5;
    do
    {
      sub_243AC2FB8();

      sub_243AC28A8();
      v9 = sub_243AC2FD8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_243A8B058(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_243AC2C88() + 1) & ~v5;
    do
    {
      sub_243AC2FB8();

      sub_243AC28A8();
      v10 = sub_243AC2FD8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_243A8B21C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_243A2DDC0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_243A8A27C(v16, a4 & 1);
      result = sub_243A2DDC0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_243AC2F38();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_243A8B9A0();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_243A8B394(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_243A2DDC0(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_243A8A530(v20, a4 & 1, a5, a6);
      v15 = sub_243A2DDC0(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_243AC2F38();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      sub_243A8BB1C(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

_OWORD *sub_243A8B544(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_243A2DDC0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_243A8BC78();
      v11 = v19;
      goto LABEL_8;
    }

    sub_243A8A7CC(v16, a4 & 1);
    v11 = sub_243A2DDC0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_243AC2F38();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_243A21C48(a1, v22);
  }

  else
  {
    sub_243A8B85C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_243A8B694(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_243A2DDC0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_243A8BE1C();
      goto LABEL_7;
    }

    sub_243A8AA84(v15, a4 & 1);
    v26 = sub_243A2DDC0(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_243AC2F38();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_243AC1528();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_243A8B8C8(v12, a2, a3, a1, v18);
}

unint64_t sub_243A8B814(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_243A8B85C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_243A21C48(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_243A8B8C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_243AC1528();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_243A8B9A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98CD8, &qword_243AC4E18);
  v2 = *v0;
  v3 = sub_243AC2E08();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_243A8BB1C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_243AC2E08();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_243A8BC78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
  v2 = *v0;
  v3 = sub_243AC2E08();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_243A20058(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_243A21C48(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_243A8BE1C()
{
  v1 = v0;
  v35 = sub_243AC1528();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98CF0, qword_243AC4E30);
  v3 = *v0;
  v4 = sub_243AC2E08();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_243A8C09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[39] = a5;
  v6[40] = a6;
  v6[37] = a3;
  v6[38] = a4;
  v6[35] = a1;
  v6[36] = a2;
  v7 = sub_243AC23B8();
  v6[41] = v7;
  v6[42] = *(v7 - 8);
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
  v6[45] = swift_task_alloc();
  v8 = sub_243AC2438();
  v6[46] = v8;
  v6[47] = *(v8 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99EC8, &qword_243AC8DE8);
  v6[50] = v9;
  v6[51] = *(v9 - 8);
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  sub_243AC24B8();
  v6[54] = swift_task_alloc();
  v10 = sub_243AC23A8();
  v6[55] = v10;
  v6[56] = *(v10 - 8);
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v11 = sub_243AC22B8();
  v6[59] = v11;
  v6[60] = *(v11 - 8);
  v6[61] = swift_task_alloc();
  v12 = sub_243AC22D8();
  v6[62] = v12;
  v6[63] = *(v12 - 8);
  v6[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A8C3D0, 0, 0);
}

uint64_t sub_243A8C3D0()
{
  v1 = *(v0 + 320);
  v2 = swift_task_alloc();
  *(v0 + 520) = v2;
  *v2 = v0;
  v2[1] = sub_243A8C47C;

  return sub_243A69450();
}

uint64_t sub_243A8C47C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = v1;

  if (v1)
  {
    v4 = sub_243A8CBF4;
  }

  else
  {
    v4 = sub_243A8C594;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_243A8C594(unint64_t a1)
{
  v2 = 0;
  v3 = *(v1 + 528);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v66 = *(v1 + 528);
  v7 = -1;
  v8 = -1 << *(v66 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v11 = MEMORY[0x277D84F98];
  if ((v7 & v4) == 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v14 = v2;
LABEL_14:
    v17 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v18 = v17 | (v14 << 6);
    v19 = (*(v66 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    sub_243A20058(*(v66 + 56) + 32 * v18, v1 + 152);
    *(v1 + 64) = v21;
    *(v1 + 72) = v20;
    sub_243A21C48((v1 + 152), (v1 + 80));

    v16 = v14;
LABEL_15:
    v22 = *(v1 + 80);
    *(v1 + 16) = *(v1 + 64);
    *(v1 + 32) = v22;
    *(v1 + 48) = *(v1 + 96);
    v23 = *(v1 + 24);
    if (!v23)
    {
      break;
    }

    v24 = *(v1 + 16);
    sub_243A21C48((v1 + 32), (v1 + 248));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a1 = sub_243A2DDC0(v24, v23);
    v27 = v11[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_39;
    }

    v31 = v26;
    if (v11[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v36 = a1;
      sub_243A8BC78();
      a1 = v36;
      if ((v31 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_5:
      v12 = a1;

      v13 = (v11[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_1(v13);
      a1 = sub_243A21C48((v1 + 248), v13);
      v2 = v16;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_243A8A7CC(v30, isUniquelyReferenced_nonNull_native);
      a1 = sub_243A2DDC0(v24, v23);
      if ((v31 & 1) != (v32 & 1))
      {

        return sub_243AC2F38();
      }

LABEL_21:
      if (v31)
      {
        goto LABEL_5;
      }

LABEL_22:
      v11[(a1 >> 6) + 8] |= 1 << a1;
      v33 = (v11[6] + 16 * a1);
      *v33 = v24;
      v33[1] = v23;
      a1 = sub_243A21C48((v1 + 248), (v11[7] + 32 * a1));
      v34 = v11[2];
      v29 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v29)
      {
        goto LABEL_40;
      }

      v11[2] = v35;
      v2 = v16;
      if (!v9)
      {
LABEL_7:
        if (v10 <= v2 + 1)
        {
          v15 = v2 + 1;
        }

        else
        {
          v15 = v10;
        }

        v16 = v15 - 1;
        while (1)
        {
          v14 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            break;
          }

          if (v14 >= v10)
          {
            v9 = 0;
            *(v1 + 80) = 0u;
            *(v1 + 96) = 0u;
            *(v1 + 64) = 0u;
            goto LABEL_15;
          }

          v9 = *(v5 + 8 * v14);
          ++v2;
          if (v9)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return MEMORY[0x282180668](a1);
      }
    }
  }

  v37 = *(v1 + 504);
  v38 = *(v1 + 488);
  v39 = *(v1 + 480);
  v61 = *(v1 + 512);
  v62 = *(v1 + 472);
  v63 = *(v1 + 496);
  v67 = *(v1 + 424);
  v41 = *(v1 + 296);
  v40 = *(v1 + 304);
  v42 = *(v1 + 280);
  v43 = *(v1 + 288);

  *(v1 + 208) = MEMORY[0x277D837D0];
  *(v1 + 184) = v41;
  *(v1 + 192) = v40;
  sub_243A21C48((v1 + 184), (v1 + 216));

  v44 = swift_isUniquelyReferenced_nonNull_native();
  sub_243A8B544((v1 + 216), 0x79546E6F69746361, 0xEA00000000006570, v44);
  v45 = MEMORY[0x277D84F90];
  sub_243A2EAE8(MEMORY[0x277D84F90]);
  sub_243A2EB0C(v45);
  sub_243AC22A8();
  MEMORY[0x245D46660](v42, v43, 0x6E6F74747562, 0xE600000000000000, v11, v38);

  (*(v39 + 8))(v38, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99ED0, &qword_243AC8DF0);
  v46 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_243AC51B0;
  (*(v37 + 16))(v47 + v46, v61, v63);
  sub_243AC24A8();
  sub_243AC2398();
  sub_243A8889C(v67);
  v48 = qword_27EDA1470;
  *(v1 + 544) = qword_27EDA1470;
  if (v48)
  {

    v49 = swift_task_alloc();
    *(v1 + 552) = v49;
    *v49 = v1;
    v49[1] = sub_243A8CD00;
    a1 = *(v1 + 360);

    return MEMORY[0x282180668](a1);
  }

  v51 = *(v1 + 504);
  v64 = *(v1 + 496);
  v52 = *(v1 + 464);
  v54 = *(v1 + 440);
  v53 = *(v1 + 448);
  v55 = *(v1 + 424);
  v56 = *(v1 + 400);
  v57 = *(v1 + 408);
  v58 = *(v1 + 376);
  v65 = *(v1 + 368);
  v68 = *(v1 + 512);
  v59 = *(v1 + 360);

  (*(v57 + 8))(v55, v56);
  (*(v53 + 8))(v52, v54);
  (*(v51 + 8))(v68, v64);
  (*(v58 + 56))(v59, 1, 1, v65);
  sub_243A2251C(v59, &unk_27ED995A0, qword_243AC6D10);

  v60 = *(v1 + 8);

  return v60();
}

uint64_t sub_243A8CBF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_243A8CD00()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_243A8D210;
  }

  else
  {
    v2 = sub_243A8CE30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243A8CE30()
{
  v15 = v0[56];
  v16 = v0[57];
  v17 = v0[55];
  v18 = v0[58];
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[50];
  v4 = v0[51];
  v5 = v0[49];
  v14 = v0[48];
  v7 = v0[46];
  v6 = v0[47];
  v8 = v0[45];
  (*(v6 + 56))(v8, 0, 1, v7);
  (*(v6 + 32))(v5, v8, v7);
  sub_243AC23E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99ED8, &qword_243AC8DF8);
  sub_243AC2238();
  *(swift_allocObject() + 16) = xmmword_243AC5F30;
  (*(v4 + 16))(v2, v1, v3);
  sub_243AC2228();
  (*(v6 + 16))(v14, v5, v7);
  sub_243AC2228();
  v0[71] = sub_243AC23D8();
  (*(v15 + 16))(v16, v18, v17);
  v9 = sub_243AC2258();
  v10 = MEMORY[0x277D21B60];
  v0[17] = v9;
  v0[18] = v10;
  __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_243AC2248();
  v0[72] = sub_243AC2448();
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v11 = swift_task_alloc();
  v0[73] = v11;
  *v11 = v0;
  v11[1] = sub_243A8D0FC;
  v12 = v0[44];

  return MEMORY[0x282180668](v12);
}

uint64_t sub_243A8D0FC()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_243A8DBEC;
  }

  else
  {
    v2 = sub_243A8D37C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243A8D210()
{
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 496);
  v4 = *(v0 + 464);
  v5 = *(v0 + 440);
  v6 = *(v0 + 448);
  v7 = *(v0 + 424);
  v8 = *(v0 + 400);
  v9 = *(v0 + 408);

  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_243A8D37C()
{
  v78 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  (*(v3 + 16))(v1, *(v0 + 352), v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == *MEMORY[0x277D21CA8])
  {
    if (qword_27ED98920 != -1)
    {
      swift_once();
    }

    v5 = sub_243AC1468();
    __swift_project_value_buffer(v5, qword_27EDA14D8);

    v6 = sub_243AC1448();
    v7 = sub_243AC2B78();

    v71 = v6;
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 504);
    v9 = *(v0 + 512);
    v11 = *(v0 + 496);
    v12 = *(v0 + 464);
    v13 = *(v0 + 448);
    v73 = *(v0 + 424);
    v75 = *(v0 + 440);
    v14 = *(v0 + 408);
    v67 = *(v0 + 392);
    v69 = *(v0 + 400);
    v15 = *(v0 + 376);
    v65 = *(v0 + 368);
    v16 = *(v0 + 336);
    v59 = *(v0 + 328);
    v61 = *(v0 + 352);
    v17 = *(v0 + 320);
    if (v8)
    {
      v45 = *(v0 + 296);
      v48 = *(v0 + 304);
      v55 = *(v0 + 504);
      v57 = *(v0 + 512);
      v18 = *(v0 + 280);
      v19 = *(v0 + 288);
      v51 = *(v0 + 320);
      v53 = *(v0 + 464);
      v20 = swift_slowAlloc();
      v54 = v11;
      v21 = swift_slowAlloc();
      v77 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_243AB73D8(v18, v19, &v77);
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_243AB73D8(v45, v48, &v77);
      v22 = "ActionDispatcher.sendActionEvent: performed %{public}s, type: %{public}s";
LABEL_11:
      _os_log_impl(&dword_243A1B000, v71, v7, v22, v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v21, -1, -1);
      MEMORY[0x245D47D20](v20, -1, -1);

      (*(v16 + 8))(v61, v59);
      (*(v15 + 8))(v67, v65);
      (*(v14 + 8))(v73, v69);
      (*(v13 + 8))(v53, v75);
      (*(v55 + 8))(v57, v54);
      goto LABEL_18;
    }

LABEL_12:

    (*(v16 + 8))(v61, v59);
    (*(v15 + 8))(v67, v65);
    (*(v14 + 8))(v73, v69);
    (*(v13 + 8))(v12, v75);
    (*(v10 + 8))(v9, v11);
    goto LABEL_18;
  }

  if (v4 == *MEMORY[0x277D21CA0])
  {
    if (qword_27ED98920 != -1)
    {
      swift_once();
    }

    v23 = sub_243AC1468();
    __swift_project_value_buffer(v23, qword_27EDA14D8);

    v24 = sub_243AC1448();
    v7 = sub_243AC2B78();

    v71 = v24;
    v25 = os_log_type_enabled(v24, v7);
    v10 = *(v0 + 504);
    v9 = *(v0 + 512);
    v11 = *(v0 + 496);
    v12 = *(v0 + 464);
    v13 = *(v0 + 448);
    v73 = *(v0 + 424);
    v75 = *(v0 + 440);
    v14 = *(v0 + 408);
    v67 = *(v0 + 392);
    v69 = *(v0 + 400);
    v15 = *(v0 + 376);
    v65 = *(v0 + 368);
    v16 = *(v0 + 336);
    v59 = *(v0 + 328);
    v61 = *(v0 + 352);
    v17 = *(v0 + 320);
    if (v25)
    {
      v46 = *(v0 + 296);
      v49 = *(v0 + 304);
      v55 = *(v0 + 504);
      v57 = *(v0 + 512);
      v26 = *(v0 + 280);
      v27 = *(v0 + 288);
      v51 = *(v0 + 320);
      v53 = *(v0 + 464);
      v20 = swift_slowAlloc();
      v54 = v11;
      v21 = swift_slowAlloc();
      v77 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_243AB73D8(v26, v27, &v77);
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_243AB73D8(v46, v49, &v77);
      v22 = "ActionDispatcher.sendActionEvent: unsupported %{public}s, type: %{public}s";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v28 = sub_243AC1468();
  __swift_project_value_buffer(v28, qword_27EDA14D8);

  v29 = sub_243AC1448();
  v30 = sub_243AC2B78();

  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v0 + 504);
  v33 = *(v0 + 512);
  v72 = *(v0 + 464);
  v74 = *(v0 + 448);
  v76 = *(v0 + 496);
  v68 = *(v0 + 424);
  v70 = *(v0 + 440);
  v34 = *(v0 + 408);
  v64 = *(v0 + 392);
  v66 = *(v0 + 400);
  v35 = *(v0 + 376);
  v62 = *(v0 + 352);
  v63 = *(v0 + 368);
  v36 = *(v0 + 336);
  v60 = *(v0 + 328);
  if (v31)
  {
    v47 = *(v0 + 296);
    v50 = *(v0 + 304);
    v37 = *(v0 + 280);
    v38 = *(v0 + 288);
    v52 = *(v0 + 320);
    v58 = *(v0 + 512);
    v39 = swift_slowAlloc();
    v56 = v32;
    v40 = swift_slowAlloc();
    v77 = v40;
    *v39 = 136446466;
    *(v39 + 4) = sub_243AB73D8(v37, v38, &v77);
    *(v39 + 12) = 2082;
    *(v39 + 14) = sub_243AB73D8(v47, v50, &v77);
    _os_log_impl(&dword_243A1B000, v29, v30, "ActionDispatcher.sendActionEvent: unknown %{public}s, type: %{public}s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D47D20](v40, -1, -1);
    MEMORY[0x245D47D20](v39, -1, -1);

    v41 = *(v36 + 8);
    v41(v62, v60);
    (*(v35 + 8))(v64, v63);
    (*(v34 + 8))(v68, v66);
    (*(v74 + 8))(v72, v70);
    (*(v56 + 8))(v58, v76);
    v41(*(v0 + 344), *(v0 + 328));
  }

  else
  {

    v42 = *(v36 + 8);
    v42(v62, v60);
    (*(v35 + 8))(v64, v63);
    (*(v34 + 8))(v68, v66);
    (*(v74 + 8))(v72, v70);
    (*(v32 + 8))(v33, v76);
    v42(*(v0 + 344), *(v0 + 328));
  }

LABEL_18:

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_243A8DBEC()
{
  v1 = *(v0 + 504);
  v13 = *(v0 + 496);
  v14 = *(v0 + 512);
  v2 = *(v0 + 448);
  v11 = *(v0 + 440);
  v12 = *(v0 + 464);
  v10 = *(v0 + 424);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 392);
  v6 = *(v0 + 368);
  v7 = *(v0 + 376);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v10, v4);
  (*(v2 + 8))(v12, v11);
  (*(v1 + 8))(v14, v13);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_243A8DD94(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_243AC1618();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v4 = sub_243AC1528();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99EC0, &qword_243AC8DD0);
  v2[24] = swift_task_alloc();
  v6 = sub_243AC13A8();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A8DFAC, 0, 0);
}

void sub_243A8DFAC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 112);
  v5 = OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_metricsFieldsContext;
  swift_beginAccess();
  sub_243A8E9A8(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_243A2251C(*(v0 + 192), &qword_27ED99EC0, &qword_243AC8DD0);
LABEL_5:
    if (qword_27ED98920 != -1)
    {
LABEL_28:
      swift_once();
    }

    v10 = sub_243AC1468();
    __swift_project_value_buffer(v10, qword_27EDA14D8);
    v11 = sub_243AC1448();
    v12 = sub_243AC2B58();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_243A1B000, v11, v12, "No metricsFieldsContext available for JetAction", v13, 2u);
      MEMORY[0x245D47D20](v13, -1, -1);
    }

    v14 = *(v0 + 8);

    v14();
    return;
  }

  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 112);
  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 192), *(v0 + 200));
  v9 = OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_extraFields;
  swift_beginAccess();
  if ((*(v6 + 48))(v8 + v9, 1, v7))
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    swift_endAccess();
    goto LABEL_5;
  }

  (*(*(v0 + 176) + 16))(*(v0 + 184), v8 + v9, *(v0 + 168));
  swift_endAccess();
  sub_243A22438();
  sub_243AC14D8();
  v15 = *(v0 + 152);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
  v16 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
  v17 = sub_243AC2E08();
  v18 = 0;
  *(v0 + 224) = v17;
  v19 = v16 + 64;
  v49 = v17;
  v50 = v16;
  v20 = 1 << *(v16 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v16 + 64);
  v23 = (v20 + 63) >> 6;
  v48 = v17 + 64;
  if (v22)
  {
    while (1)
    {
      v24 = __clz(__rbit64(v22));
      v51 = (v22 - 1) & v22;
LABEL_20:
      v27 = v24 | (v18 << 6);
      v28 = *(v0 + 160);
      v29 = *(v0 + 144);
      v30 = (*(v50 + 48) + 16 * v27);
      v31 = v30[1];
      v52 = *v30;
      (*(v15 + 16))(v28, *(v50 + 56) + *(v15 + 72) * v27, v29);

      sub_243A21620((v0 + 16));
      (*(v15 + 8))(v28, v29);
      *(v48 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v32 = (v49[6] + 16 * v27);
      *v32 = v52;
      v32[1] = v31;
      sub_243A21C48((v0 + 16), (v49[7] + 32 * v27));
      v33 = v49[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      v49[2] = v35;
      v22 = v51;
      if (!v51)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_15:
    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v18 >= v23)
      {
        break;
      }

      v26 = *(v19 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v51 = (v26 - 1) & v26;
        goto LABEL_20;
      }
    }

    v36 = sub_243AC1608();
    *(v0 + 232) = v37;
    v38 = v36;
    v39 = v37;
    (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 112) + OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_eventType, *(v0 + 120));
    v40 = sub_243AC1608();
    *(v0 + 240) = v41;
    v42 = v41;
    v43 = v40;
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    v44 = [objc_opt_self() ams_sharedAccountStore];
    v45 = [v44 aa_primaryAppleAccount];
    *(v0 + 248) = v45;

    if (!v45)
    {
      goto LABEL_30;
    }

    v46 = swift_task_alloc();
    *(v0 + 256) = v46;
    *v46 = v0;
    v46[1] = sub_243A8E694;
    v47 = *(v0 + 216);

    sub_243A8C09C(v38, v39, v43, v42, v47, v45);
  }
}

uint64_t sub_243A8E694()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {

    v4 = sub_243A8E8F0;
  }

  else
  {

    v4 = sub_243A8E840;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_243A8E840()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_243A8E8F0()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_243A8E9A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99EC0, &qword_243AC8DD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A8EA44()
{
  v1 = sub_243AC13A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_243A8EB08()
{
  v1 = *(sub_243AC13A8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_243A88F74(v2, v3);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_243A8EB84()
{
  result = qword_27ED99F08;
  if (!qword_27ED99F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99F08);
  }

  return result;
}

uint64_t sub_243A8EBD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243A8EC20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_243A8EC9C()
{
  result = qword_27ED99F10;
  if (!qword_27ED99F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99F10);
  }

  return result;
}

unint64_t sub_243A8ECF4()
{
  result = qword_27ED99F18;
  if (!qword_27ED99F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99F18);
  }

  return result;
}

unint64_t sub_243A8ED4C()
{
  result = qword_27ED99F20;
  if (!qword_27ED99F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99F20);
  }

  return result;
}

unint64_t sub_243A8EDA0(uint64_t a1, uint64_t a2)
{
  v2 = sub_243AC2E58();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_243A8EDEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6574656C706D6F63;
    }

    else
    {
      v5 = 1852399981;
    }

    if (v2)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0x75747865746E6F63;
    v4 = 0xEA00000000006C61;
    if (a1 != 3)
    {
      v3 = 0xD000000000000012;
      v4 = 0x8000000243ACBCD0;
    }

    if (a1 == 2)
    {
      v5 = 0x74756F6B61657262;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x6574656C706D6F63;
    }

    else
    {
      v11 = 1852399981;
    }

    if (a2)
    {
      v10 = 0xE900000000000064;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x75747865746E6F63;
    v8 = 0x8000000243ACBCD0;
    if (a2 == 3)
    {
      v8 = 0xEA00000000006C61;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v9 = 0x74756F6B61657262;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_243AC2EE8();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_243A8EF80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD00000000000001CLL;
    }

    if (v2 == 2)
    {
      v4 = 0x8000000243ACBA40;
    }

    else
    {
      v4 = 0x8000000243ACBA60;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x73746E756F636361;
    }

    else
    {
      v3 = 0x746E756F636361;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = 0xD00000000000001CLL;
    }

    if (a2 == 2)
    {
      v6 = 0x8000000243ACBA40;
    }

    else
    {
      v6 = 0x8000000243ACBA60;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x73746E756F636361;
    }

    else
    {
      v5 = 0x746E756F636361;
    }

    if (a2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_243AC2EE8();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_243A8F0C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6874646977;
    }

    else
    {
      v3 = 0x746867696568;
    }

    if (v2 == 2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6E65644965707974;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xEE00726569666974;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE500000000000000;
  v8 = 0x6874646977;
  if (a2 != 2)
  {
    v8 = 0x746867696568;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v6 = 0x6E65644965707974;
    v5 = 0xEE00726569666974;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_243AC2EE8();
  }

  return v11 & 1;
}

uint64_t sub_243A8F208(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE500000000000000;
  v6 = 0x78336C7275;
  v7 = 0x6C6F686563616C70;
  v8 = 0xEB00000000726564;
  if (a1 != 4)
  {
    v7 = 0x646F4D6567616D69;
    v8 = 0xEE00737265696669;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x78316C7275;
  if (a1 != 1)
  {
    v9 = 0x78326C7275;
  }

  if (a1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (a1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      v13 = 862745205;
      goto LABEL_27;
    }

    if (a2 == 4)
    {
      v12 = 0xEB00000000726564;
      if (v10 != 0x6C6F686563616C70)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v12 = 0xEE00737265696669;
      if (v10 != 0x646F4D6567616D69)
      {
LABEL_32:
        v14 = sub_243AC2EE8();
        goto LABEL_33;
      }
    }
  }

  else
  {
    if (a2)
    {
      v12 = 0xE500000000000000;
      if (a2 == 1)
      {
        v13 = 829190773;
      }

      else
      {
        v13 = 845967989;
      }

LABEL_27:
      if (v10 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x7800000000))
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v12 = 0xE200000000000000;
    if (v10 != 25705)
    {
      goto LABEL_32;
    }
  }

LABEL_30:
  if (v11 != v12)
  {
    goto LABEL_32;
  }

  v14 = 1;
LABEL_33:

  return v14 & 1;
}

uint64_t sub_243A8F3DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x73726564616568;
  if (a1 == 2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x6E694C6C69616D65;
    v5 = 0xEC0000004C52556BLL;
  }

  v6 = 0xD000000000000011;
  if (a1)
  {
    v3 = 0x8000000243ACBA40;
  }

  else
  {
    v6 = 0x73746E756F636361;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x73726564616568;
    }

    else
    {
      v11 = 0x6E694C6C69616D65;
    }

    if (a2 == 2)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0xEC0000004C52556BLL;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v9 = 0x73746E756F636361;
    }

    if (a2)
    {
      v10 = 0x8000000243ACBA40;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_243AC2EE8();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t IconWithTypeIdentifier.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_243A8F570()
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A8F62C(uint64_t a1)
{
  sub_243AC28A8();
}

uint64_t sub_243A8F6D4(uint64_t a1)
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

unint64_t sub_243A8F78C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_243A91108(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_243A8F7BC(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE500000000000000;
  v5 = 0x6874646977;
  if (*v1 != 2)
  {
    v5 = 0x746867696568;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E65644965707974;
    v2 = 0xEE00726569666974;
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

uint64_t sub_243A8F834()
{
  v1 = 25705;
  v2 = 0x6874646977;
  if (*v0 != 2)
  {
    v2 = 0x746867696568;
  }

  if (*v0)
  {
    v1 = 0x6E65644965707974;
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

unint64_t sub_243A8F8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_243A91108(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_243A8F8D0(uint64_t a1)
{
  v2 = sub_243A8FFE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A8F90C(uint64_t a1)
{
  v2 = sub_243A8FFE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IconWithTypeIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F28, &unk_243AC8FB0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v41 = &v34 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99748, &unk_243AC71F0);
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v42 = &v34 - v7;
  v8 = sub_243AC1298();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F30, &qword_243AC8FC0);
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for IconWithTypeIdentifier(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15[2] = MEMORY[0x277D84F90];
  sub_243AC15F8();
  sub_243A91154(&qword_27ED99F38, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v16 = sub_243AC1908();
  v15[3] = v16;
  v15[4] = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A8FFE4();
  v18 = v47;
  sub_243AC2FE8();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v47 = v16;
    v36 = v13;
    v20 = v43;
    v19 = v44;
    v21 = v46;
    v51 = 0;
    v22 = sub_243AC2E68();
    v34 = a1;
    v35 = v12;
    if (!v23)
    {
      v25 = v20;
      sub_243AC1288();
      v26 = sub_243AC1278();
      v28 = v27;
      (*(v39 + 8))(v25, v40);
      v23 = v28;
      v22 = v26;
    }

    v29 = v15;
    *v15 = v22;
    v15[1] = v23;
    v44 = v23;
    v50 = 1;
    sub_243A491E8(&qword_27ED99760, &qword_27ED99748, &unk_243AC71F0, MEMORY[0x277D23238]);
    v30 = v42;
    v31 = v35;
    sub_243AC2E88();
    (*(v19 + 32))(v29 + v36[7], v30, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F48, &unk_243AC8FC8);
    v49 = 2;
    sub_243A491E8(&qword_27ED99F50, &qword_27ED99F48, &unk_243AC8FC8, MEMORY[0x277D23238]);
    v32 = v41;
    sub_243AC2E78();
    sub_243A900A0(v32, v29 + v36[8]);
    v48 = 3;
    v33 = v38;
    sub_243AC2E78();
    (*(v45 + 8))(v31, v10);
    sub_243A900A0(v33, v29 + v36[9]);
    sub_243A90110(v29, v37);
    __swift_destroy_boxed_opaque_existential_1(v34);
    return sub_243A90174(v29);
  }
}

uint64_t type metadata accessor for IconWithTypeIdentifier(uint64_t a1)
{
  result = qword_27ED99F70;
  if (!qword_27ED99F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_243A8FFE4()
{
  result = qword_27ED99F40;
  if (!qword_27ED99F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99F40);
  }

  return result;
}

uint64_t sub_243A90038(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F28, &unk_243AC8FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243A900A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F28, &unk_243AC8FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A90110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconWithTypeIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A90174(uint64_t a1)
{
  v2 = type metadata accessor for IconWithTypeIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IconWithTypeIdentifier.unmodifiedBody.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99358, &qword_243AC6750);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v20 = &v19 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F28, &unk_243AC8FB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = type metadata accessor for IconWithTypeIdentifier(0);
  sub_243A90684(v2 + *(v10 + 32), v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F48, &unk_243AC8FC8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) == 1)
  {
    sub_243A90038(v9);
  }

  else
  {
    if (!*(v2 + 24))
    {
      goto LABEL_12;
    }

    sub_243AC14D8();

    (*(v12 + 8))(v9, v11);
  }

  sub_243A90684(v2 + *(v10 + 36), v7);
  if (v13(v7, 1, v11) == 1)
  {
    sub_243A90038(v7);
    if (*(v2 + 24))
    {
LABEL_10:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99748, &unk_243AC71F0);
      sub_243AC14D8();

      v14 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v15 = sub_243AC2818();

      [v14 initWithType_];

      v16 = v20;
      sub_243AC1428();
      sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750, MEMORY[0x277D7EA70]);
      v17 = v23;
      sub_243AC1E08();
      return (*(v21 + 8))(v16, v17);
    }
  }

  else if (*(v2 + 24))
  {

    sub_243AC14D8();

    (*(v12 + 8))(v7, v11);
    if (*(v2 + 24))
    {
      goto LABEL_10;
    }
  }

LABEL_12:
  sub_243AC15F8();
  sub_243A91154(&qword_27ED99F38, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  result = sub_243AC18F8();
  __break(1u);
  return result;
}

uint64_t sub_243A90684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F28, &unk_243AC8FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A906F4(uint64_t a1, uint64_t a2)
{
  sub_243A91154(&qword_27ED99310, type metadata accessor for IconWithTypeIdentifier, protocol conformance descriptor for IconWithTypeIdentifier);
  sub_243A91154(&qword_27ED99F58, type metadata accessor for IconWithTypeIdentifier, &protocol conformance descriptor for IconWithTypeIdentifier);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_243A907AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_243A91154(&qword_27ED99310, type metadata accessor for IconWithTypeIdentifier, protocol conformance descriptor for IconWithTypeIdentifier);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_243A908C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_243A91154(&qword_27ED99F58, type metadata accessor for IconWithTypeIdentifier, &protocol conformance descriptor for IconWithTypeIdentifier);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_243A9093C(uint64_t a1)
{
  v2 = sub_243A91154(&qword_27ED99F58, type metadata accessor for IconWithTypeIdentifier, &protocol conformance descriptor for IconWithTypeIdentifier);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_243A909B8(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_243A90A74()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_243A90AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99748, &unk_243AC71F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F28, &unk_243AC8FB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_243A90C08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99748, &unk_243AC71F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F28, &unk_243AC8FB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_243A90D44(uint64_t a1)
{
  sub_243A90E08(319);
  if (v1 <= 0x3F)
  {
    sub_243A90E60(319);
    if (v2 <= 0x3F)
    {
      sub_243A6FA68();
      if (v3 <= 0x3F)
      {
        sub_243A90EF4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_243A90E08(uint64_t a1)
{
  if (!qword_27ED99F80)
  {
    sub_243AC1538();
    v1 = sub_243AC29F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED99F80);
    }
  }
}

void sub_243A90E60(uint64_t a1)
{
  if (!qword_27ED99F88)
  {
    sub_243AC15F8();
    sub_243A91154(&qword_27ED99F38, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    v1 = sub_243AC1918();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED99F88);
    }
  }
}

void sub_243A90EF4(uint64_t a1)
{
  if (!qword_27ED99F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99F48, &unk_243AC8FC8);
    v1 = sub_243AC2C38();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED99F90);
    }
  }
}

uint64_t sub_243A90F58()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99358, &qword_243AC6750);
  sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750, MEMORY[0x277D7EA70]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_243A91004()
{
  result = qword_27ED99F98;
  if (!qword_27ED99F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99F98);
  }

  return result;
}

unint64_t sub_243A9105C()
{
  result = qword_27ED99FA0;
  if (!qword_27ED99FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99FA0);
  }

  return result;
}

unint64_t sub_243A910B4()
{
  result = qword_27ED99FA8;
  if (!qword_27ED99FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99FA8);
  }

  return result;
}

unint64_t sub_243A91108(uint64_t a1, uint64_t a2)
{
  v2 = sub_243AC2E58();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_243A91154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void TurnOnMoreAppsFooter.init(controller:account:presenter:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  swift_unknownObjectWeakInit();
  type metadata accessor for RecommendationsController(0);
  sub_243A63E78();

  *a4 = sub_243AC1828();
  a4[1] = v7;
  type metadata accessor for AppProtectionManager();
  inited = swift_initStaticObject();
  a4[2] = sub_243A762E4(a1, a2, 4, inited);
  swift_unknownObjectWeakAssign();
}

uint64_t TurnOnMoreAppsFooter.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99FB8, &qword_243AC9290);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17[-v5 - 8];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v7 = 1;
  if (v19)
  {
    v8 = sub_243AC1AA8();
    sub_243A914AC(&v18);

    v9 = v18;
    v10 = v19;
    v16 = a1;
    v11 = v20;
    v12 = v21;
    v18 = v8;
    v19 = 0;
    v20 = 1;
    v21 = v9;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    sub_243A91980(v1, v17);
    v13 = swift_allocObject();
    sub_243A91A00(v17, v13 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99FC0, &qword_243AC92E0);
    sub_243A91A40();
    sub_243AC1E98();

    v14 = v11;
    a1 = v16;
    sub_243A82874(v9, v10, v14);

    (*(v4 + 32))(a1, v6, v3);
    v7 = 0;
  }

  return (*(v4 + 56))(a1, v7, 1, v3);
}

uint64_t sub_243A914AC@<X0>(uint64_t a3@<X8>)
{
  sub_243A4FC18();

  v3 = sub_243AC1D88();
  v28 = v4;
  v29 = v3;
  v27 = v5;
  type metadata accessor for RecommendationsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_243AC1188();

  v8 = sub_243AC1D88();
  v10 = v9;
  v12 = v11;
  v13 = [objc_opt_self() systemBlueColor];
  sub_243AC1F78();
  v14 = sub_243AC1D28();
  v16 = v15;
  v18 = v17;

  sub_243A82874(v8, v10, v12 & 1);

  v19 = sub_243AC1D48();
  v21 = v20;
  v23 = v22;
  v26 = v24;
  sub_243A82874(v14, v16, v18 & 1);

  sub_243A82874(v29, v28, v27 & 1);

  *a3 = v19;
  *(a3 + 8) = v21;
  *(a3 + 16) = v23 & 1;
  *(a3 + 24) = v26;
  return result;
}

void sub_243A916E4(uint64_t a1)
{
  v2 = sub_243A33C6C();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [v2 actions];
  sub_243A235B4();
  v5 = sub_243AC2998();

  if (v5 >> 62)
  {
    if (sub_243AC2DF8())
    {
      goto LABEL_4;
    }

LABEL_18:

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x245D470F0](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v12 = v6;

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7 && (v8 = v7, (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v11 = Strong;
    if (*(a1 + 16))
    {
      sub_243A8613C(v3, v8, Strong);
    }

    v10 = v11;
  }

  else
  {

    v10 = v12;
  }
}

double sub_243A91874@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_243A918F4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243A919B8()
{

  MEMORY[0x245D47DE0](v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_243A91A40()
{
  result = qword_27ED99FC8;
  if (!qword_27ED99FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99FC0, &qword_243AC92E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99FC8);
  }

  return result;
}

unint64_t sub_243A91AD4()
{
  result = qword_27ED99FD0;
  if (!qword_27ED99FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99FD8, &qword_243AC93A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99FC0, &qword_243AC92E0);
    sub_243A91A40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99FD0);
  }

  return result;
}

uint64_t sub_243A91B94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C10, &qword_243AC4C60);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;
    v12 = a2;
    v13 = a3;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_243A91CB0()
{
  v1 = v0;
  v2 = v0 + 16;
  v3 = v0 + 80;
  v4 = *(v1 + 168);
  v5 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v6 = v5;
  *(v1 + 152) = v5;
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v5 setCachePolicy_];
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_243A91E0C;
  v8 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99700, &unk_243AC6E50);
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_243A2A88C;
  *(v1 + 104) = &block_descriptor_11;
  *(v1 + 112) = v8;
  [v6 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_243A91E0C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_243A920F8;
  }

  else
  {
    v2 = sub_243A91F1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243A91F1C()
{
  v1 = *(v0 + 144);
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v2 = sub_243AC1468();
  __swift_project_value_buffer(v2, qword_27EDA14A8);
  v3 = v1;
  v4 = sub_243AC1448();
  v5 = sub_243AC2B78();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    v7 = [v3 members];
    sub_243A2CFF0(0, &qword_27ED98C18, 0x277D08268);
    v8 = sub_243AC2998();

    if (v8 >> 62)
    {
      v9 = sub_243AC2DF8();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v9;
    _os_log_impl(&dword_243A1B000, v4, v5, "User has a family circle with %ld members.", v6, 0xCu);
    MEMORY[0x245D47D20](v6, -1, -1);
    v10 = *(v0 + 152);
  }

  else
  {

    v4 = v3;
    v10 = v3;
  }

  v11 = *(v0 + 8);

  return v11(v3);
}

uint64_t sub_243A920F8(uint64_t a1)
{
  swift_willThrow();
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v2 = v1[20];
  v3 = sub_243AC1468();
  __swift_project_value_buffer(v3, qword_27EDA14A8);
  v4 = v2;
  v5 = sub_243AC1448();
  v6 = sub_243AC2B58();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v1[19];
  v8 = v1[20];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_243A1B000, v5, v6, "Unable to fetch family circle %@", v10, 0xCu);
    sub_243A68FA0(v11);
    MEMORY[0x245D47D20](v11, -1, -1);
    MEMORY[0x245D47D20](v10, -1, -1);
  }

  else
  {
  }

  v14 = v1[1];

  return v14(0);
}

uint64_t sub_243A922C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return MEMORY[0x2822009F8](sub_243A92350, 0, 0);
}

uint64_t sub_243A92350()
{
  v36 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v1 = objc_allocWithZone(MEMORY[0x277D08240]);
  v2 = sub_243AC2818();
  v3 = sub_243AC2818();
  v4 = [v1 initWithPropertyName:v2 bundleID:v3];

  v0[2] = 0;
  v5 = [v4 fetchEligibilityWithError_];
  v6 = v0[2];
  v7 = 0x27ED98000uLL;
  if (v6)
  {
    v8 = qword_27ED98910;
    v9 = v6;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_243AC1468();
    __swift_project_value_buffer(v10, qword_27EDA14A8);
    v11 = v9;
    v12 = sub_243AC1448();
    v13 = sub_243AC2B58();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v35[0] = v15;
      *v14 = 136315138;
      v33 = v4;
      v34 = v5;
      v16 = [v11 localizedDescription];
      v17 = v6;
      v18 = sub_243AC2858();
      v20 = v19;

      v21 = v18;
      v6 = v17;
      v22 = sub_243AB73D8(v21, v20, v35);

      *(v14 + 4) = v22;
      v4 = v33;
      v5 = v34;
      _os_log_impl(&dword_243A1B000, v12, v13, "Could not fetch family flow eligibility for Recommendation with error: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x245D47D20](v15, -1, -1);
      v23 = v14;
      v7 = 0x27ED98000;
      MEMORY[0x245D47D20](v23, -1, -1);
    }

    else
    {
    }
  }

  if (*(v7 + 2320) != -1)
  {
    swift_once();
  }

  v24 = sub_243AC1468();
  __swift_project_value_buffer(v24, qword_27EDA14A8);

  v25 = sub_243AC1448();
  v26 = sub_243AC2B48();

  if (os_log_type_enabled(v25, v26))
  {
    v28 = v0[3];
    v27 = v0[4];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35[0] = v30;
    *v29 = 134218242;
    *(v29 + 4) = v5;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_243AB73D8(v28, v27, v35);
    _os_log_impl(&dword_243A1B000, v25, v26, "familyFlowEligibilityRequest says user is %lu for %s", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x245D47D20](v30, -1, -1);
    MEMORY[0x245D47D20](v29, -1, -1);
  }

  v31 = v0[1];

  return v31(v5 == 2);
}

uint64_t sub_243A92724(uint64_t a1)
{
  v1[37] = a1;
  sub_243AC1358();
  v1[38] = swift_task_alloc();
  v2 = sub_243AC1378();
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();
  v3 = sub_243AC1208();
  v1[42] = v3;
  v1[43] = *(v3 - 8);
  v1[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A9286C, 0, 0);
}

uint64_t sub_243A9286C()
{
  v0[45] = sub_243AC2818();
  v1 = [objc_allocWithZone(MEMORY[0x277D08348]) init];
  v0[46] = v1;
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_243A929C4;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99FE0, &qword_243AC9408);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_243A2A88C;
  v0[21] = &block_descriptor_4;
  v0[22] = v2;
  [v1 fetchAAURLConfigurationWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_243A929C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 376) = v1;
  if (v1)
  {
    v2 = sub_243A9324C;
  }

  else
  {
    v2 = sub_243A92AD4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243A92AD4()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[36];
  v0[48] = v3;

  v4 = [v3 urlForEndpoint_];
  if (v4)
  {
    v5 = v0[37];
    v6 = v4;
    sub_243AC11D8();

    sub_243AC11B8();
    v7 = objc_allocWithZone(MEMORY[0x277D083C0]);
    v8 = sub_243AC2818();

    v9 = [v7 initWithAppleAccount:v5 urlString:v8];
    v0[49] = v9;

    v0[10] = v0;
    v0[15] = v0 + 34;
    v0[11] = sub_243A92D6C;
    v10 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99FF0, &unk_243AC9410);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_243A91B94;
    v0[29] = &block_descriptor_7;
    v0[30] = v10;
    [v9 performRequestWithHandler_];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {
    v11 = v0[45];
    v13 = v0[40];
    v12 = v0[41];
    v14 = v0[39];
    sub_243AC1348();
    sub_243A2E2B4(MEMORY[0x277D84F90]);
    sub_243A933B0();
    sub_243AC1198();
    sub_243AC1368();
    (*(v13 + 8))(v12, v14);
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_243A92D6C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 400) = v1;
  if (v1)
  {
    v2 = sub_243A932E4;
  }

  else
  {
    v2 = sub_243A92E7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243A92E7C()
{
  v1 = *(v0 + 280);
  if (!v1)
  {
    goto LABEL_21;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = [v2 services]) == 0)
  {

LABEL_21:
    v20 = *(v0 + 384);
    v21 = *(v0 + 392);
    v22 = *(v0 + 360);
    v23 = *(v0 + 344);
    v40 = *(v0 + 336);
    v41 = *(v0 + 352);
    v25 = *(v0 + 320);
    v24 = *(v0 + 328);
    v26 = *(v0 + 312);
    sub_243AC1338();
    sub_243A2E2B4(MEMORY[0x277D84F90]);
    sub_243A933B0();
    sub_243AC1198();
    sub_243AC1368();
    (*(v25 + 8))(v24, v26);
    swift_willThrow();

    (*(v23 + 8))(v41, v40);

    v27 = *(v0 + 8);

    return v27();
  }

  v4 = v3;
  sub_243A2CFF0(0, &qword_27ED99FF8, 0x277D08338);
  v5 = sub_243AC2998();

  v39 = v1;
  if (v5 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_243AC2DF8())
  {
    v7 = 0;
    v8 = 0xEE00454741524F54;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x245D470F0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = [v9 name];
      if (v12)
      {
        v13 = v8;
        v14 = v12;
        v15 = sub_243AC2858();
        v17 = v16;

        if (v15 == 0x535F44554F4C4349 && v17 == v13)
        {

LABEL_25:
          v29 = *(v0 + 384);
          v30 = *(v0 + 392);
          v31 = *(v0 + 360);
          (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));

          goto LABEL_30;
        }

        v8 = v13;
        v19 = sub_243AC2EE8();

        if (v19)
        {
          goto LABEL_25;
        }
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:
  v32 = *(v0 + 384);
  v33 = *(v0 + 392);
  v34 = *(v0 + 352);
  v35 = *(v0 + 360);
  v36 = *(v0 + 336);
  v37 = *(v0 + 344);

  (*(v37 + 8))(v34, v36);
  v10 = 0;
LABEL_30:

  v38 = *(v0 + 8);

  return v38(v10);
}

uint64_t sub_243A9324C(uint64_t a1)
{
  v2 = v1[46];
  v3 = v1[45];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_243A932E4(uint64_t a1)
{
  v2 = v1[49];
  v3 = v1[48];
  v4 = v1[44];
  v5 = v1[45];
  v6 = v1[42];
  v7 = v1[43];
  swift_willThrow();

  (*(v7 + 8))(v4, v6);

  v8 = v1[1];

  return v8();
}

unint64_t sub_243A933B0()
{
  result = qword_27ED99FE8;
  if (!qword_27ED99FE8)
  {
    sub_243AC1378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99FE8);
  }

  return result;
}

void RecommendationTestRow.init(recommendationsController:title:recommendation:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = 0;
  sub_243AC2058();
  v10 = v20;
  *(a5 + 40) = v19;
  *(a5 + 48) = v10;
  type metadata accessor for RecommendationsController(0);
  sub_243A63E78();

  *a5 = sub_243AC1828();
  *(a5 + 8) = v11;
  v12 = [objc_opt_self() defaultStore];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 aa_primaryAppleAccount];

    if (v14)
    {
      v15 = type metadata accessor for RecommendationsLiftUIPresenter();
      v16 = objc_allocWithZone(v15);
      *&v16[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_activeRecommendation] = 0;
      *&v16[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_recommendationsController] = a1;
      *&v16[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_account] = v14;
      *&v16[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_data] = xmmword_243AC9430;
      v17.receiver = v16;
      v17.super_class = v15;
      *(a5 + 16) = objc_msgSendSuper2(&v17, sel_init);
      *(a5 + 24) = a2;
      *(a5 + 32) = a3;
      *(a5 + 56) = a4;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t RecommendationTestRow.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A000, &unk_243AC9440);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-v3];
  v5 = v0[1];
  v18 = *v0;
  v19 = v5;
  v6 = v0[3];
  *v20 = v0[2];
  *&v20[16] = v6;
  v7 = swift_allocObject();
  v8 = v0[1];
  v7[1] = *v0;
  v7[2] = v8;
  v9 = v0[3];
  v7[3] = v0[2];
  v7[4] = v9;
  v15 = &v18;
  sub_243A9397C(&v18, &v17);
  sub_243AC20A8();
  v16 = *&v20[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
  sub_243AC2088();
  v10 = swift_allocObject();
  v11 = v19;
  v10[1] = v18;
  v10[2] = v11;
  v12 = *&v20[16];
  v10[3] = *v20;
  v10[4] = v12;
  sub_243A9397C(&v18, &v17);
  sub_243A93A94();
  sub_243A93AF8();
  sub_243AC1F28();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_243A93830@<X0>(uint64_t a2@<X8>)
{
  sub_243A4FC18();

  v3 = sub_243AC1D88();
  v5 = v4;
  v7 = v6;
  sub_243AC1C98();
  v8 = sub_243AC1D68();
  v10 = v9;
  v12 = v11;

  sub_243A82874(v3, v5, v7 & 1);

  sub_243AC1F88();
  v13 = sub_243AC1D38();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_243A82874(v8, v10, v12 & 1);

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  return result;
}

double sub_243A939B4@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v10 = *a1;
  v3 = *(&v10 + 1);
  v4 = *(a1 + 7);
  v5 = *(a1 + 2);
  sub_243A93C8C(&v10, v8);
  sub_243AB8A60(v3, v4, v5, v8);
  v6 = v8[1];
  *a2 = v8[0];
  a2[1] = v6;
  result = *&v9;
  a2[2] = v9;
  return result;
}

uint64_t objectdestroyTm_9()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_243A93A94()
{
  result = qword_27ED9A008;
  if (!qword_27ED9A008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A000, &unk_243AC9440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A008);
  }

  return result;
}

unint64_t sub_243A93AF8()
{
  result = qword_27ED9A010;
  if (!qword_27ED9A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A010);
  }

  return result;
}

uint64_t sub_243A93B6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_243A93BB4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_243A93C14()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A000, &unk_243AC9440);
  sub_243A93A94();
  sub_243A93AF8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_243A93C8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D50, "̦");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A93D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243AC1618();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
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

  return (v14 + 1);
}

uint64_t sub_243A93E40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_243AC1618();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for PageMetricsModifier(uint64_t a1)
{
  result = qword_27ED9A018;
  if (!qword_27ED9A018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A93FA0(uint64_t a1)
{
  sub_243AC1618();
  if (v1 <= 0x3F)
  {
    sub_243A222D0(319);
    if (v2 <= 0x3F)
    {
      sub_243A9403C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_243A9403C()
{
  result = qword_27ED9A028;
  if (!qword_27ED9A028)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27ED9A028);
  }

  return result;
}

uint64_t sub_243A940B4()
{
  if (*v0)
  {
    return 0x6570795465676170;
  }

  else
  {
    return 0x644965676170;
  }
}

uint64_t sub_243A940EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x644965676170 && a2 == 0xE600000000000000;
  if (v6 || (sub_243AC2EE8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6570795465676170 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_243AC2EE8();

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

uint64_t sub_243A941D0(uint64_t a1)
{
  v2 = sub_243A9526C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A9420C(uint64_t a1)
{
  v2 = sub_243A9526C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243A94248@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v23 = sub_243AC1618();
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A048, &qword_243AC95F8);
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v18 - v7;
  v9 = type metadata accessor for PageMetricsModifier(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v12[*(v10 + 24)];
  sub_243AC2608();
  v14 = sub_243AC25F8();
  v15 = MEMORY[0x277D221C0];
  *v13 = v14;
  v13[1] = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A9526C();
  v16 = v25;
  sub_243AC2FE8();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v25 = v5;
    v27 = 0;
    sub_243A952C0(&qword_27ED98AC8, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    sub_243AC2E88();
    (*(v20 + 32))(v12, v22, v23);
    v26 = 1;
    sub_243AC2E78();
    (*(v21 + 8))(v8, v24);
    sub_243A95308(v25, &v12[*(v9 + 20)]);
    sub_243A95378(v12, v19);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_243A953DC(v12);
  }
}

uint64_t sub_243A94614@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v75 = a3;
  v82 = a2;
  v79 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99698, &unk_243AC6DB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v67 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996A0, &unk_243AC95E0);
  MEMORY[0x28223BE20](v9 - 8);
  v72 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
  MEMORY[0x28223BE20](v11 - 8);
  v77 = &v67 - v12;
  v78 = sub_243AC2438();
  v76 = *(v78 - 8);
  v13 = MEMORY[0x28223BE20](v78);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v67 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v67 - v19;
  v21 = sub_243AC2388();
  v80 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243A65CBC(v23);
  v24 = sub_243AC22F8();
  v73 = v8;
  v74 = v17;
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    sub_243A2E2B4(MEMORY[0x277D84F90]);
    v25 = v23;
    sub_243AC2308();
  }

  v26 = v81;
  v27 = sub_243AC1608();
  if (v4)
  {
    return (*(v80 + 8))(v25, v21);
  }

  v30 = v27;
  v31 = v28;
  v71 = v21;
  v70 = a4;
  v68 = type metadata accessor for PageMetricsModifier(0);
  sub_243A951FC(&v26[*(v68 + 20)], v20);
  v32 = sub_243AC1618();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v20, 1, v32) == 1)
  {
    v82 = 0;
    sub_243A2251C(v20, &qword_27ED98A40, &qword_243AC4850);
    v67 = 0;
    v69 = 0;
  }

  else
  {
    v67 = sub_243AC1608();
    v69 = v34;
    v82 = 0;
    (*(v33 + 8))(v20, v32);
  }

  v35 = v25;
  v36 = sub_243AC22E8();
  v38 = v71;
  if (*v37)
  {
    *(&v88 + 1) = MEMORY[0x277D837D0];
    *&v87 = v30;
    *(&v87 + 1) = v31;
    sub_243A887CC(&v87, 0x644965676170, 0xE600000000000000);
  }

  else
  {
  }

  v36(&v90, 0);
  v39 = sub_243AC22E8();
  if (*v40)
  {
    if (v69)
    {
      v41 = MEMORY[0x277D837D0];
      v42 = v67;
    }

    else
    {
      v42 = 0;
      v41 = 0;
      *&v88 = 0;
    }

    *&v87 = v42;
    *(&v87 + 1) = v69;
    *(&v88 + 1) = v41;
    sub_243A887CC(&v87, 0x6570795465676170, 0xE800000000000000);
    v39(&v90, 0);
  }

  else
  {

    v39(&v90, 0);
  }

  *&v87 = v75;
  sub_243AC15C8();
  sub_243A952C0(&qword_27ED9A038, MEMORY[0x277D232E8], MEMORY[0x277D233B0]);

  sub_243AC2958();
  sub_243AC2E38();
  v43 = v78;
  if (*(&v87 + 1))
  {
    while (1)
    {
      v84 = v87;
      v85 = v88;
      v86 = v89;
      sub_243A20058(&v85, v83);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_243A2251C(&v84, &qword_27ED9A040, &qword_243AC95F0);
      sub_243AC2E38();
      if (!*(&v87 + 1))
      {
        goto LABEL_21;
      }
    }

    v50 = v76;
    v51 = v76 + 8;
    v75 = *(v76 + 1);
    v75(v15, v43);

    v90 = v84;
    v91 = v85;
    v92 = v86;

    sub_243A21C48(&v91, &v93);
    v44 = v77;
    v52 = swift_dynamicCast();
    (*(v50 + 7))(v44, v52 ^ 1u, 1, v43);
    if ((*(v50 + 6))(v44, 1, v43) != 1)
    {
      (*(v50 + 4))(v74, v44, v43);
      v53 = v79[3];
      v54 = v79[4];
      __swift_project_boxed_opaque_existential_1(v79, v53);
      *&v90 = v53;
      *(&v90 + 1) = v54;
      *(&v91 + 1) = swift_getOpaqueTypeMetadata2();
      *&v87 = v53;
      *(&v87 + 1) = v54;
      *&v92 = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(&v90);
      sub_243AC1DF8();
      v55 = *(&v91 + 1);
      v56 = v92;
      v79 = __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
      v57 = v80;
      v58 = v72;
      (*(v80 + 16))(v72, v35, v38);
      (*(v57 + 56))(v58, 0, 1, v38);
      v59 = &v81[*(v68 + 24)];
      v61 = *v59;
      v60 = v59[1];
      v77 = v61;
      v76 = v60;
      v62 = sub_243AC1398();
      v63 = v73;
      (*(*(v62 - 8) + 56))(v73, 1, 1, v62);
      *&v87 = v55;
      *(&v87 + 1) = v56;
      v81 = v51;
      OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
      v65 = v70;
      v70[3] = OpaqueTypeMetadata2;
      *&v87 = v55;
      *(&v87 + 1) = v56;
      v65[4] = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v65);
      v66 = v74;
      sub_243AC1DA8();
      sub_243A2251C(v63, &qword_27ED99698, &unk_243AC6DB0);
      sub_243A2251C(v58, &qword_27ED996A0, &unk_243AC95E0);
      v75(v66, v43);
      (*(v57 + 8))(v35, v71);
      return __swift_destroy_boxed_opaque_existential_1(&v90);
    }
  }

  else
  {
LABEL_21:

    v44 = v77;
    (*(v76 + 7))(v77, 1, 1, v43);
  }

  v45 = v70;
  sub_243A2251C(v44, &unk_27ED995A0, qword_243AC6D10);
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v46 = sub_243AC1468();
  __swift_project_value_buffer(v46, qword_27EDA14D8);
  v47 = sub_243AC1448();
  v48 = sub_243AC2B58();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_243A1B000, v47, v48, "No metrics pipeline found", v49, 2u);
    MEMORY[0x245D47D20](v49, -1, -1);
  }

  (*(v80 + 8))(v35, v38);
  return sub_243A223D4(v79, v45);
}

uint64_t sub_243A951FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_243A9526C()
{
  result = qword_27ED9A050;
  if (!qword_27ED9A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A050);
  }

  return result;
}

uint64_t sub_243A952C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243A95308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A95378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageMetricsModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A953DC(uint64_t a1)
{
  v2 = type metadata accessor for PageMetricsModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for PageMetricsModifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PageMetricsModifier.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_243A95598()
{
  result = qword_27ED9A058;
  if (!qword_27ED9A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A058);
  }

  return result;
}

unint64_t sub_243A955F0()
{
  result = qword_27ED9A060;
  if (!qword_27ED9A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A060);
  }

  return result;
}

unint64_t sub_243A95648()
{
  result = qword_27ED9A068;
  if (!qword_27ED9A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A068);
  }

  return result;
}

uint64_t sub_243A9569C()
{
  v0 = sub_243AC1468();
  __swift_allocate_value_buffer(v0, qword_27EDA14A8);
  __swift_project_value_buffer(v0, qword_27EDA14A8);

  return sub_243AC1458();
}

uint64_t sub_243A95794(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_243AC1468();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);

  return sub_243AC1458();
}

uint64_t sub_243A9581C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_243A95864(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_243A958CC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_243AC1AA8();
  v14 = 0;
  sub_243A95A00(a1);
  memcpy(__dst, __src, 0x231uLL);
  memcpy(v16, __src, 0x231uLL);
  sub_243A224B4(__dst, &v11, &qword_27ED9A080, &qword_243AC97C8);
  sub_243A2251C(v16, &qword_27ED9A080, &qword_243AC97C8);
  memcpy(&v13[7], __dst, 0x231uLL);
  v6 = v14;
  v7 = (sub_243AC2128() & 1) == 0;
  KeyPath = swift_getKeyPath();
  __src[0] = sub_243AC1F98();
  v9 = sub_243AC20C8();
  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = v6;
  result = memcpy((a3 + 17), v13, 0x238uLL);
  *(a3 + 592) = KeyPath;
  *(a3 + 600) = v7;
  *(a3 + 608) = v9;
  return result;
}

void sub_243A95A00(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v3 = sub_243AC2018();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecommendationsController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v97 = objc_opt_self();
  v98 = ObjCClassFromMetadata;
  v8 = [v97 bundleForClass_];
  v9 = sub_243AC2818();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];

  if (v10)
  {
    sub_243AC1FE8();
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v101 = sub_243AC2038();

    (*(v4 + 8))(v6, v3);
    sub_243AC2138();
    sub_243AC17C8();
    v219 = 1;
    *&v218[6] = v222;
    *&v218[22] = v223;
    *&v218[38] = v224;
    LODWORD(v99) = sub_243AC2128();
    v100 = sub_243AC1C48();
    v220 = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243AC16A8();

    v102 = v2;
    if (v203[0])
    {
      v98 = v203[0];
      v11 = [v203[0] title];
      v12 = sub_243AC2858();
      v14 = v13;

      v203[0] = v12;
      v203[1] = v14;
      v97 = sub_243A4FC18();
      v15 = sub_243AC1D88();
      v17 = v16;
      v19 = v18;
      if (sub_243AC2128())
      {
        sub_243AC1CD8();
      }

      else
      {
        sub_243AC1CA8();
      }

      v26 = sub_243AC1D68();
      v28 = v27;
      v30 = v29;

      sub_243A82874(v15, v17, v19 & 1);

      v31 = sub_243AC1D58();
      v33 = v32;
      v35 = v34;
      v37 = v36;
      sub_243A82874(v26, v28, v30 & 1);

      v38 = sub_243AC1C48();
      v39 = v35 & 1;
      v214 = v39;
      v213 = 0;
      if (sub_243AC2128())
      {
        sub_243AC2148();
      }

      else
      {
        sub_243AC2138();
      }

      sub_243AC18E8();
      *&v135[55] = v228;
      *&v135[71] = v229;
      *&v135[87] = v230;
      *&v135[103] = v231;
      *&v135[7] = v225;
      *&v135[23] = v226;
      *&v135[39] = v227;
      KeyPath = swift_getKeyPath();
      v215 = 1;
      *&v196 = v31;
      *(&v196 + 1) = v33;
      LOBYTE(v197) = v39;
      LOBYTE(v198) = v38;
      *(&v197 + 1) = v37;
      *(&v198 + 1) = 0x4024000000000000;
      v199 = 0uLL;
      BYTE8(v200[0]) = 0;
      *(&v200[4] + 9) = *&v135[64];
      *(&v200[5] + 9) = *&v135[80];
      *(&v200[6] + 9) = *&v135[96];
      *&v200[0] = 0;
      *(&v200[7] + 1) = *&v135[111];
      *(v200 + 9) = *v135;
      *(&v200[1] + 9) = *&v135[16];
      *(&v200[2] + 9) = *&v135[32];
      *(&v200[3] + 9) = *&v135[48];
      v201 = KeyPath;
      v202 = 1;
      v41 = [v98 subTitle];
      v42 = sub_243AC2858();
      v44 = v43;

      v203[0] = v42;
      v203[1] = v44;
      v45 = sub_243AC1D88();
      v47 = v46;
      v49 = v48;
      if (sub_243AC2128())
      {
        sub_243AC1CD8();
      }

      else
      {
        sub_243AC1C98();
      }

      v50 = sub_243AC1D68();
      v52 = v51;
      v54 = v53;
      v56 = v55;

      sub_243A82874(v45, v47, v49 & 1);

      if (sub_243AC2128())
      {
        sub_243AC2148();
      }

      else
      {
        sub_243AC2138();
      }

      sub_243AC18E8();
      v57 = v54 & 1;
      v133 = v54 & 1;
      if (sub_243AC2128())
      {
        v58 = 0x4000000000000000;
      }

      else
      {
        v58 = 0x4014000000000000;
      }

      v59 = sub_243AC1C48();
      v211 = 0;
      v60 = swift_getKeyPath();
      v212 = 1;
      if (sub_243AC2128())
      {
        v61 = sub_243AC1FD8();
      }

      else
      {
        v61 = sub_243AC1FC8();
      }

      *&v118 = v50;
      *(&v118 + 1) = v52;
      LOBYTE(v119) = v57;
      *(&v119 + 1) = v56;
      v122[2] = v130;
      v122[3] = v131;
      v122[4] = v132;
      v120 = v126;
      v121 = v127;
      v122[0] = v128;
      v122[1] = v129;
      LOBYTE(v122[5]) = v59;
      *(&v122[5] + 1) = v58;
      memset(&v122[6], 0, 25);
      v123 = v60;
      LOBYTE(v124) = 1;
      *(&v124 + 1) = v134[0];
      DWORD1(v124) = *(v134 + 3);
      *(&v124 + 1) = v61;
      v114 = v200[6];
      v115 = v200[7];
      v116 = v201;
      v110 = v200[2];
      v111 = v200[3];
      v112 = v200[4];
      v113 = v200[5];
      v106 = v198;
      v107 = v199;
      v108 = v200[0];
      v109 = v200[1];
      v104 = v196;
      v105 = v197;
      v192 = 0u;
      v193 = v122[7];
      v194 = v60;
      v195 = v124;
      v188 = v130;
      v189 = v131;
      v190 = v132;
      v191 = v122[5];
      v184 = v126;
      v185 = v127;
      v186 = v128;
      v187 = v129;
      v182 = v118;
      v183 = v119;
      v150 = v200[6];
      v151 = v200[7];
      v152 = v201;
      v146 = v200[2];
      v147 = v200[3];
      v148 = v200[4];
      v149 = v200[5];
      v142 = v198;
      v143 = v199;
      v144 = v200[0];
      v145 = v200[1];
      v140 = v196;
      v141 = v197;
      v103[10] = v200[6];
      v103[11] = v200[7];
      v103[12] = v201;
      v103[6] = v200[2];
      v103[7] = v200[3];
      v103[8] = v200[4];
      v103[9] = v200[5];
      v103[2] = v198;
      v103[3] = v199;
      v103[4] = v200[0];
      v103[5] = v200[1];
      v103[0] = v196;
      v103[1] = v197;
      v164 = 0u;
      v165 = v122[7];
      v166 = v60;
      v167 = v124;
      v160 = v130;
      v161 = v131;
      v162 = v132;
      v163 = v122[5];
      v156 = v126;
      v157 = v127;
      v158 = v128;
      v159 = v129;
      v154 = v118;
      v155 = v119;
      *(&v103[24] + 8) = v122[7];
      *(&v103[25] + 8) = v60;
      *(&v103[26] + 8) = v124;
      *(&v103[20] + 8) = v131;
      *(&v103[21] + 8) = v132;
      *(&v103[22] + 8) = v122[5];
      *(&v103[23] + 8) = 0u;
      *(&v103[16] + 8) = v127;
      *(&v103[17] + 8) = v128;
      *(&v103[18] + 8) = v129;
      *(&v103[19] + 8) = v130;
      *(&v103[15] + 8) = v126;
      *(&v103[13] + 8) = v118;
      v117 = v202;
      v153 = v202;
      LOBYTE(v103[13]) = v202;
      *(&v103[14] + 8) = v119;
      memcpy(v125, v103, 0x1B8uLL);
      sub_243A224B4(&v196, v203, &qword_27ED9A088, &qword_243AC9878);
      sub_243A224B4(&v118, v203, &qword_27ED9A090, &qword_243AC9880);
      sub_243A224B4(&v140, v203, &qword_27ED9A088, &qword_243AC9878);
      sub_243A224B4(&v154, v203, &qword_27ED9A090, &qword_243AC9880);
      sub_243A2251C(&v182, &qword_27ED9A090, &qword_243AC9880);
      v178 = v114;
      v179 = v115;
      v180 = v116;
      v181 = v117;
      v174 = v110;
      v175 = v111;
      v176 = v112;
      v177 = v113;
      v170 = v106;
      v171 = v107;
      v172 = v108;
      v173 = v109;
      v168 = v104;
      v169 = v105;
      sub_243A2251C(&v168, &qword_27ED9A088, &qword_243AC9878);
      memcpy(v203, v103, 0x1B8uLL);
      sub_243A97098(v203);
      memcpy(v137, v203, 0x1B9uLL);
      sub_243A224B4(v125, v138, &qword_27ED9A0B8, &qword_243AC98A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A098, &qword_243AC9888);
      sub_243A491E8(&qword_27ED9A0A0, &qword_27ED9A098, &qword_243AC9888, MEMORY[0x277CE14C0]);
      sub_243AC1AE8();

      sub_243A2251C(v125, &qword_27ED9A0B8, &qword_243AC98A0);
      sub_243A2251C(&v118, &qword_27ED9A090, &qword_243AC9880);
      sub_243A2251C(&v196, &qword_27ED9A088, &qword_243AC9878);
      memcpy(v217, v138, sizeof(v217));
    }

    else
    {
      sub_243AC1A88();
      v20 = [v97 bundleForClass_];
      v21 = sub_243AC1D78();
      v23 = v22;
      v25 = v24;
      if (sub_243AC2128())
      {
        sub_243AC1CD8();
      }

      else
      {
        sub_243AC1CA8();
      }

      v62 = sub_243AC1D68();
      v64 = v63;
      v66 = v65;

      sub_243A82874(v21, v23, v25 & 1);

      v67 = sub_243AC1D58();
      v69 = v68;
      v71 = v70;
      v73 = v72;
      sub_243A82874(v62, v64, v66 & 1);

      v74 = sub_243AC1C48();
      v75 = v71 & 1;
      v215 = v75;
      v214 = 0;
      if (sub_243AC2128())
      {
        sub_243AC2148();
      }

      else
      {
        sub_243AC2138();
      }

      sub_243AC18E8();
      *&v216[55] = v107;
      *&v216[71] = v108;
      *&v216[87] = v109;
      *&v216[103] = v110;
      *&v216[7] = v104;
      *&v216[23] = v105;
      *&v216[39] = v106;
      v76 = swift_getKeyPath();
      *(&v122[4] + 9) = *&v216[64];
      *(&v122[5] + 9) = *&v216[80];
      *(&v122[6] + 9) = *&v216[96];
      *(v122 + 9) = *v216;
      *(&v122[1] + 9) = *&v216[16];
      *(&v122[2] + 9) = *&v216[32];
      LOBYTE(v134[0]) = 1;
      *&v118 = v67;
      *(&v118 + 1) = v69;
      LOBYTE(v119) = v75;
      *(&v119 + 1) = v73;
      LOBYTE(v120) = v74;
      *(&v120 + 1) = 0x4024000000000000;
      v121 = 0uLL;
      *&v122[0] = 0;
      BYTE8(v122[0]) = 0;
      *(&v122[3] + 9) = *&v216[48];
      *(&v122[7] + 1) = *&v216[111];
      v123 = v76;
      LOBYTE(v124) = 1;
      sub_243AC1A88();
      v77 = [v97 bundleForClass_];
      v78 = sub_243AC1D78();
      v80 = v79;
      v82 = v81;
      if (sub_243AC2128())
      {
        sub_243AC1CD8();
      }

      else
      {
        sub_243AC1C98();
      }

      v83 = sub_243AC1D68();
      v85 = v84;
      v87 = v86;
      v89 = v88;

      sub_243A82874(v78, v80, v82 & 1);

      if (sub_243AC2128())
      {
        sub_243AC2148();
      }

      else
      {
        sub_243AC2138();
      }

      sub_243AC18E8();
      v90 = v87 & 1;
      v211 = v87 & 1;
      v91 = sub_243AC1C48();
      v212 = 0;
      v92 = swift_getKeyPath();
      v213 = 1;
      if (sub_243AC2128())
      {
        v93 = sub_243AC1FD8();
      }

      else
      {
        v93 = sub_243AC1FC8();
      }

      *&v154 = v83;
      *(&v154 + 1) = v85;
      LOBYTE(v155) = v90;
      *(&v155 + 1) = v89;
      v160 = v208;
      v161 = v209;
      v162 = v210;
      v156 = v204;
      v157 = v205;
      v159 = v207;
      v158 = v206;
      LOBYTE(v163) = v91;
      *(&v163 + 1) = 0x4014000000000000;
      v164 = 0uLL;
      *&v165 = 0;
      BYTE8(v165) = 0;
      v166 = v92;
      LOBYTE(v167) = 1;
      *(&v167 + 1) = v225;
      DWORD1(v167) = *(&v225 + 3);
      *(&v167 + 1) = v93;
      v150 = v122[6];
      v151 = v122[7];
      v152 = v123;
      v146 = v122[2];
      v147 = v122[3];
      v148 = v122[4];
      v149 = v122[5];
      v142 = v120;
      v143 = v121;
      v144 = v122[0];
      v145 = v122[1];
      v140 = v118;
      v141 = v119;
      v125[10] = 0uLL;
      v125[11] = v165;
      v125[12] = v92;
      v125[13] = v167;
      v125[6] = v208;
      v125[7] = v209;
      v125[8] = v210;
      v125[9] = v163;
      v125[2] = v204;
      v125[3] = v205;
      v125[4] = v206;
      v125[5] = v207;
      v125[0] = v154;
      v125[1] = v155;
      v178 = v122[6];
      v179 = v122[7];
      v180 = v123;
      v174 = v122[2];
      v175 = v122[3];
      v176 = v122[4];
      v177 = v122[5];
      v170 = v120;
      v171 = v121;
      v172 = v122[0];
      v173 = v122[1];
      v168 = v118;
      v169 = v119;
      v139[10] = v122[6];
      v139[11] = v122[7];
      v139[12] = v123;
      v139[6] = v122[2];
      v139[7] = v122[3];
      v139[8] = v122[4];
      v139[9] = v122[5];
      v139[2] = v120;
      v139[3] = v121;
      v139[4] = v122[0];
      v139[5] = v122[1];
      v139[0] = v118;
      v139[1] = v119;
      v192 = 0uLL;
      v193 = v165;
      v194 = v92;
      v195 = v167;
      v188 = v208;
      v189 = v209;
      v190 = v210;
      v191 = v163;
      v184 = v204;
      v185 = v205;
      v186 = v206;
      v187 = v207;
      v182 = v154;
      v183 = v155;
      *(&v139[24] + 8) = v165;
      *(&v139[25] + 8) = v92;
      *(&v139[26] + 8) = v167;
      *(&v139[20] + 8) = v209;
      *(&v139[21] + 8) = v210;
      *(&v139[22] + 8) = v163;
      *(&v139[23] + 8) = 0uLL;
      *(&v139[16] + 8) = v205;
      *(&v139[17] + 8) = v206;
      *(&v139[18] + 8) = v207;
      *(&v139[19] + 8) = v208;
      *(&v139[15] + 8) = v204;
      *(&v139[13] + 8) = v154;
      v153 = v124;
      v181 = v124;
      LOBYTE(v139[13]) = v124;
      *(&v139[14] + 8) = v155;
      sub_243A224B4(&v118, v203, &qword_27ED9A088, &qword_243AC9878);
      sub_243A224B4(&v154, v203, &qword_27ED9A090, &qword_243AC9880);
      sub_243A224B4(&v168, v203, &qword_27ED9A088, &qword_243AC9878);
      sub_243A224B4(&v182, v203, &qword_27ED9A090, &qword_243AC9880);
      sub_243A2251C(v125, &qword_27ED9A090, &qword_243AC9880);
      v200[6] = v150;
      v200[7] = v151;
      v201 = v152;
      v202 = v153;
      v200[2] = v146;
      v200[3] = v147;
      v200[4] = v148;
      v200[5] = v149;
      v198 = v142;
      v199 = v143;
      v200[0] = v144;
      v200[1] = v145;
      v196 = v140;
      v197 = v141;
      sub_243A2251C(&v196, &qword_27ED9A088, &qword_243AC9878);
      memcpy(v203, v139, 0x1B8uLL);
      sub_243A9708C(v203);
      memcpy(v137, v203, 0x1B9uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A098, &qword_243AC9888);
      sub_243A491E8(&qword_27ED9A0A0, &qword_27ED9A098, &qword_243AC9888, MEMORY[0x277CE14C0]);
      sub_243AC1AE8();
      sub_243A2251C(&v154, &qword_27ED9A090, &qword_243AC9880);
      sub_243A2251C(&v118, &qword_27ED9A088, &qword_243AC9878);
      memcpy(v217, v138, sizeof(v217));
    }

    if (v99)
    {
      v94 = 0x4034000000000000;
    }

    else
    {
      v94 = 0;
    }

    v95 = v101;
    v125[0] = v101;
    LOWORD(v125[1]) = 1;
    *(&v125[1] + 2) = *v218;
    *(&v125[2] + 2) = *&v218[16];
    *(&v125[3] + 2) = *&v218[32];
    *&v125[4] = *&v218[46];
    v96 = v100;
    BYTE8(v125[4]) = v100;
    *(&v125[4] + 9) = *v221;
    HIDWORD(v125[4]) = *&v221[3];
    v99 = xmmword_243AC9720;
    v125[5] = xmmword_243AC9720;
    v125[6] = v94;
    LOBYTE(v125[7]) = 0;
    v136[0] = v101;
    v136[1] = v125[1];
    v136[2] = v125[2];
    v136[3] = v125[3];
    LOBYTE(v136[7]) = 0;
    v136[6] = v94;
    v136[5] = xmmword_243AC9720;
    v136[4] = v125[4];
    memcpy(v138, v217, 0x1B9uLL);
    memcpy(&v136[7] + 8, v217, 0x1B9uLL);
    memcpy(v102, v136, 0x231uLL);
    memcpy(v203, v217, 0x1B9uLL);
    sub_243A224B4(v125, v137, &qword_27ED9A0A8, &qword_243AC9890);
    sub_243A224B4(v138, v137, &qword_27ED9A0B0, &qword_243AC9898);
    sub_243A2251C(v203, &qword_27ED9A0B0, &qword_243AC9898);
    *(&v137[1] + 2) = *v218;
    v137[0] = v95;
    LOWORD(v137[1]) = 1;
    *(&v137[2] + 2) = *&v218[16];
    *(&v137[3] + 2) = *&v218[32];
    *&v137[4] = *&v218[46];
    BYTE8(v137[4]) = v96;
    *(&v137[4] + 9) = *v221;
    HIDWORD(v137[4]) = *&v221[3];
    v137[5] = v99;
    v137[6] = v94;
    LOBYTE(v137[7]) = 0;
    sub_243A2251C(v137, &qword_27ED9A0A8, &qword_243AC9890);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243A97028@<X0>(uint64_t a1@<X8>)
{
  result = sub_243AC19F8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_243A970A4()
{
  result = qword_27ED9A0C0;
  if (!qword_27ED9A0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A0C8, &qword_243AC98A8);
    sub_243A9715C();
    sub_243A491E8(&qword_27ED99C48, &qword_27ED99C50, &qword_243AC8690, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A0C0);
  }

  return result;
}

unint64_t sub_243A9715C()
{
  result = qword_27ED9A0D0;
  if (!qword_27ED9A0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A0D8, &qword_243AC98B0);
    sub_243A491E8(&qword_27ED9A0E0, &qword_27ED9A0E8, &qword_243AC98B8, MEMORY[0x277CE1198]);
    sub_243A491E8(&qword_27ED99CE0, &qword_27ED99CE8, &qword_243AC8770, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A0D0);
  }

  return result;
}

uint64_t ContextualRecommendationView.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContextualRecommendationView.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_243A972C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000019;
  v4 = 0x8000000243ACBD20;
  v5 = 0xE600000000000000;
  if (v2 == 1)
  {
    v5 = 0x8000000243ACBD20;
  }

  else
  {
    v3 = 0x726564616568;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 25705;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = 0xD000000000000019;
  if (*a2 != 1)
  {
    v8 = 0x726564616568;
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_243AC2EE8();
  }

  return v11 & 1;
}

uint64_t sub_243A973B4()
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A9744C(uint64_t a1)
{
  sub_243AC28A8();
}

uint64_t sub_243A974D0(uint64_t a1)
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

unint64_t sub_243A97564@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_243A9B798(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_243A97594(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0x8000000243ACBD20;
  v5 = 0xD000000000000019;
  if (v2 != 1)
  {
    v5 = 0x726564616568;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_243A975E8()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0x726564616568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_243A97638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_243A9B798(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_243A97660(uint64_t a1)
{
  v2 = sub_243A97E48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A9769C(uint64_t a1)
{
  v2 = sub_243A97E48();

  return MEMORY[0x2821FE720](a1, v2);
}

id ContextualRecommendationView.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A0F0, &qword_243AC98C8);
  MEMORY[0x28223BE20](v5 - 8);
  v64 = &v50 - v6;
  v7 = sub_243AC1298();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v63 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A0F8, &unk_243AC98D0);
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v10 = &v50 - v9;
  v11 = type metadata accessor for ContextualRecommendationView(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v12[7];
  v69 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v62 = v16;
  v56 = v17 + 56;
  v57 = v18;
  v18(v14 + v15, 1, 1);
  v19 = v12[8];
  v20 = sub_243AC1618();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v58 = v21 + 56;
  v59 = v22;
  v22(v14 + v19, 1, 1, v20);
  v23 = v12[9];
  *(v14 + v23) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A97E48();
  v66 = v10;
  v24 = v68;
  sub_243AC2FE8();
  v25 = v69;
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_243A2251C(v14 + v25, &qword_27ED9A0F0, &qword_243AC98C8);
    return sub_243A2251C(v14 + v19, &qword_27ED98A40, &qword_243AC4850);
  }

  else
  {
    v26 = v63;
    v52 = v23;
    v53 = v20;
    v68 = v19;
    v27 = v64;
    v28 = a1;
    v73 = 0;
    v29 = sub_243AC2E68();
    if (!v30)
    {
      v32 = v26;
      sub_243AC1288();
      v51 = sub_243AC1278();
      v34 = v33;
      (*(v54 + 8))(v32, v55);
      v30 = v34;
      v29 = v51;
    }

    v35 = v27;
    v36 = v14;
    *v14 = v29;
    v14[1] = v30;
    v72 = 1;
    sub_243A491E8(&qword_27ED98DB0, &qword_27ED98D40, &qword_243AC7200, MEMORY[0x277D23238]);
    sub_243AC2E78();
    v37 = v60;
    v38 = v61;
    v39 = v65;
    sub_243A8EC20(v35, v36 + v69, &qword_27ED9A0F0, &qword_243AC98C8);
    v71 = 2;
    sub_243A9A9CC(&qword_27ED98AC8, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    sub_243AC2E78();
    sub_243A8EC20(v37, v36 + v68, &qword_27ED98A40, &qword_243AC4850);
    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v40 = result;
      v41 = [result aa_primaryAppleAccount];

      v42 = v52;
      if (v41)
      {
        (*(v39 + 8))(v66, v67);
        *(v36 + v42) = v41;
      }

      else
      {
        if (qword_27ED98910 != -1)
        {
          swift_once();
        }

        v43 = sub_243AC1468();
        __swift_project_value_buffer(v43, qword_27EDA14A8);
        v44 = sub_243AC1448();
        v45 = sub_243AC2B58();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = v28;
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v70 = v48;
          *v47 = 136315138;
          *(v47 + 4) = sub_243AB73D8(0x6F72662874696E69, 0xEB00000000293A6DLL, &v70);
          _os_log_impl(&dword_243A1B000, v44, v45, "Unable to retrieve primary account. Bailing from ContextualRecommendationView %s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v48);
          MEMORY[0x245D47D20](v48, -1, -1);
          v49 = v47;
          v28 = v46;
          MEMORY[0x245D47D20](v49, -1, -1);
        }

        (*(v39 + 8))(v66, v67);
      }

      sub_243A9AA14(v36, v38, type metadata accessor for ContextualRecommendationView);
      __swift_destroy_boxed_opaque_existential_1(v28);
      return sub_243A9AA7C(v36, type metadata accessor for ContextualRecommendationView);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_243A97E48()
{
  result = qword_27ED9A100;
  if (!qword_27ED9A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A100);
  }

  return result;
}

uint64_t ContextualRecommendationView.unmodifiedBody.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A108, &qword_243AC98E0);
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A0F0, &qword_243AC98C8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for InnerContextualRecommendation(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContextualRecommendationView(0);
  v14 = *(v0 + *(v13 + 28));
  if (v14)
  {
    v15 = v13;
    sub_243A224B4(v0 + *(v13 + 20), v9, &qword_27ED9A0F0, &qword_243AC98C8);
    sub_243A224B4(v0 + *(v15 + 24), v6, &qword_27ED98A40, &qword_243AC4850);
    v16 = v14;
    sub_243A98194(v16, v9, v6, v12);
    sub_243A9AA14(v12, v3, type metadata accessor for InnerContextualRecommendation);
    swift_storeEnumTagMultiPayload();
    sub_243A9A9CC(&qword_27ED9A110, type metadata accessor for InnerContextualRecommendation, "5yt>do");
    sub_243AC1AE8();

    return sub_243A9AA7C(v12, type metadata accessor for InnerContextualRecommendation);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_243A9A9CC(&qword_27ED9A110, type metadata accessor for InnerContextualRecommendation, "5yt>do");
    return sub_243AC1AE8();
  }
}

void sub_243A98194(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_243AC2058();
  v8 = *(&v32 + 1);
  *a4 = v32;
  *(a4 + 8) = v8;
  sub_243AC2058();
  v9 = *(&v32 + 1);
  *(a4 + 16) = v32;
  *(a4 + 24) = v9;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A188, &qword_243AC9A80);
  sub_243AC2058();
  *(a4 + 32) = v32;
  v10 = type metadata accessor for InnerContextualRecommendation(0);
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  v11 = v10[10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  (*(*(v12 - 8) + 56))(a4 + v11, 1, 1, v12);
  v13 = v10[11];
  v14 = sub_243AC1618();
  (*(*(v14 - 8) + 56))(a4 + v13, 1, 1, v14);
  v15 = (a4 + v10[12]);
  sub_243AC15F8();
  sub_243A9A9CC(&qword_27ED99F38, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  *v15 = sub_243AC1908();
  v15[1] = v16;
  type metadata accessor for RecommendationsController(0);
  swift_allocObject();
  sub_243AC1408();
  v17 = a1;
  v18 = sub_243AC13F8();
  swift_allocObject();
  sub_243A45F9C(v17, v18, 0);

  swift_deallocPartialClassInstance();
  sub_243A9A9CC(&qword_27ED98FB0, type metadata accessor for RecommendationsController, &protocol conformance descriptor for RecommendationsController);
  v19 = sub_243AC1828();
  v21 = v20;
  *(a4 + 48) = v19;
  *(a4 + 56) = v20;

  sub_243A9C7E4(a2, a4 + v11, &qword_27ED9A0F0, &qword_243AC98C8);
  sub_243A9C7E4(a3, a4 + v13, &qword_27ED98A40, &qword_243AC4850);
  type metadata accessor for AppProtectionManager();
  inited = swift_initStaticObject();
  v23 = v17;
  *(a4 + 64) = sub_243A762E4(v21, v23, 2, inited);
  v24 = [objc_opt_self() defaultStore];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 aa_primaryAppleAccount];

    if (v26)
    {
      v27 = type metadata accessor for RecommendationsLiftUIPresenter();
      v28 = objc_allocWithZone(v27);
      *&v28[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_activeRecommendation] = 0;
      *&v28[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_recommendationsController] = v21;
      *&v28[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_account] = v26;
      *&v28[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_data] = xmmword_243AC9430;
      v30.receiver = v28;
      v30.super_class = v27;

      v29 = objc_msgSendSuper2(&v30, sel_init);

      sub_243A2251C(a3, &qword_27ED98A40, &qword_243AC4850);
      sub_243A2251C(a2, &qword_27ED9A0F0, &qword_243AC98C8);
      *(a4 + 72) = v29;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_243A985D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_243A9A9CC(&qword_27ED992E0, type metadata accessor for ContextualRecommendationView, protocol conformance descriptor for ContextualRecommendationView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_243A98654(uint64_t a1, uint64_t a2)
{
  v4 = sub_243A9A9CC(&qword_27ED9A118, type metadata accessor for ContextualRecommendationView, &protocol conformance descriptor for ContextualRecommendationView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_243A986D0(uint64_t a1)
{
  v2 = sub_243A9A9CC(&qword_27ED9A118, type metadata accessor for ContextualRecommendationView, &protocol conformance descriptor for ContextualRecommendationView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_243A9874C(uint64_t a1, uint64_t a2)
{
  v4 = sub_243A9A9CC(&qword_27ED9A240, type metadata accessor for ContextualRecommendationView, &protocol conformance descriptor for ContextualRecommendationView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_243A987EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A1B8, &qword_243AC9C28);
  v29 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A1C0, &qword_243AC9C30);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v27 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A1C8, &unk_243AC9C38);
  MEMORY[0x28223BE20](v31);
  v8 = &v27 - v7;
  v9 = type metadata accessor for InnerContextualRecommendation(0);
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  if (v35 >> 62)
  {
    v14 = sub_243AC2DF8();
  }

  else
  {
    v14 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    MEMORY[0x28223BE20](v15);
    *(&v27 - 2) = v2;
    sub_243A9A560(v2, &v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A1D0, &qword_243AC9C90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A1D8, &qword_243AC9C98);
    sub_243A9B7F4();
    sub_243A9B870();
    sub_243AC2108();
    sub_243AC1788();
    v16 = sub_243A9BC00();
    v17 = v32;
    sub_243AC1EC8();
    (*(v29 + 8))(v4, v17);
    v18 = v30;
    v19 = v33;
    (*(v30 + 16))(v8, v6, v33);
    swift_storeEnumTagMultiPayload();
    v35 = v17;
    v36 = v16;
    swift_getOpaqueTypeConformance2();
    sub_243AC1AE8();
    return (*(v18 + 8))(v6, v19);
  }

  else
  {
    v21 = sub_243AC2A98();
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    sub_243A9AA14(v2, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InnerContextualRecommendation);
    sub_243AC2A58();
    v22 = sub_243AC2A48();
    v23 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    *(v24 + 16) = v22;
    *(v24 + 24) = v25;
    sub_243A9BEA8(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    sub_243A3306C(0, 0, v13, &unk_243AC9CC0, v24);

    swift_storeEnumTagMultiPayload();
    v26 = sub_243A9BC00();
    v35 = v32;
    v36 = v26;
    swift_getOpaqueTypeConformance2();
    return sub_243AC1AE8();
  }
}