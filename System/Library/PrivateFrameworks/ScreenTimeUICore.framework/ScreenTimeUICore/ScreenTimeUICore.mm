double sub_264D7F1D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_264E24768();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1738, &qword_264E260B8);
  sub_264D7F26C(a1, (a2 + *(v4 + 44)));
  LOBYTE(a1) = sub_264E24998();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1708, &qword_264E26038) + 36);
  *v5 = a1;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_264D7F26C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1740, &qword_264E260C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v18[-v8];
  v10 = sub_264E24818();
  v19 = 1;
  sub_264D7F510(&v31);
  v24 = *&v32[48];
  v25 = *&v32[64];
  v26 = v32[80];
  v20 = v31;
  v21 = *v32;
  v22 = *&v32[16];
  v23 = *&v32[32];
  v27[0] = v31;
  v27[1] = *v32;
  v27[2] = *&v32[16];
  v27[3] = *&v32[32];
  v27[4] = *&v32[48];
  v27[5] = *&v32[64];
  v28 = v32[80];
  sub_264D81744(&v20, &v29, &qword_27FFB1748, &qword_264E260C8);
  sub_264D817BC(v27, &qword_27FFB1748, &qword_264E260C8);
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[87] = v25;
  *&v18[7] = v20;
  *&v18[23] = v21;
  v18[103] = v26;
  *&v18[39] = v22;
  v11 = v19;
  *v9 = sub_264E24828();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1750, &qword_264E260D0);
  sub_264D7F740(a1, &v9[*(v12 + 44)]);
  sub_264D814EC(v9, v6);
  *(&v30[5] + 1) = *&v18[80];
  *(&v30[4] + 1) = *&v18[64];
  *(&v30[3] + 1) = *&v18[48];
  *(&v30[1] + 1) = *&v18[16];
  v29 = v10;
  LOBYTE(v30[0]) = v11;
  *(&v30[6] + 1) = *&v18[96];
  *(v30 + 1) = *v18;
  *(&v30[2] + 1) = *&v18[32];
  v13 = v30[4];
  a2[4] = v30[3];
  a2[5] = v13;
  a2[6] = v30[5];
  *(a2 + 105) = *(&v30[5] + 9);
  v14 = v30[0];
  *a2 = v29;
  a2[1] = v14;
  v15 = v30[2];
  a2[2] = v30[1];
  a2[3] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1758, &qword_264E260D8);
  sub_264D814EC(v6, a2 + *(v16 + 48));
  sub_264D81744(&v29, &v31, &qword_27FFB1760, &unk_264E260E0);
  sub_264D8155C(v9);
  sub_264D8155C(v6);
  *&v32[49] = *&v18[48];
  *&v32[65] = *&v18[64];
  v33 = *&v18[80];
  *&v32[1] = *v18;
  *&v32[17] = *&v18[16];
  v31 = v10;
  v32[0] = v11;
  v34 = *&v18[96];
  *&v32[33] = *&v18[32];
  return sub_264D817BC(&v31, &qword_27FFB1760, &unk_264E260E0);
}

void sub_264D7F510(uint64_t a1@<X8>)
{
  v2 = sub_264E24D28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [objc_opt_self() bundle];
  v7 = sub_264E250E8();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6 withConfiguration:0];

  if (v8)
  {
    sub_264E24D08();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v9 = sub_264E24D48();

    (*(v3 + 8))(v5, v2);
    sub_264E24F58();
    sub_264E244B8();
    v10 = v22;
    v11 = v23;
    v12 = v24;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = sub_264E249A8();
    sub_264E243D8();
    v21[24] = v11;
    v21[16] = v13;
    v21[8] = 0;
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 16) = v11;
    *(a1 + 24) = v12;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
    *(a1 + 48) = v15;
    *(a1 + 56) = v16;
    *(a1 + 64) = v17;
    *(a1 + 72) = v18;
    *(a1 + 80) = v19;
    *(a1 + 88) = v20;
    *(a1 + 96) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_264D7F740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v66 = sub_264E248A8();
  v61 = *(v66 - 1);
  MEMORY[0x28223BE20](v66);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CommunicationSafetyAnalyticsTipView(0);
  v62 = *(v5 - 8);
  v6 = *(v62 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1768, &unk_264E298C0);
  v65 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1770, &qword_264E260F0);
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9);
  v64 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1778, &qword_264E260F8);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v70 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1780, &qword_264E26100);
  MEMORY[0x28223BE20](v19 - 8);
  v68 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - v22;
  *v23 = sub_264E24768();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1788, &qword_264E26108) + 44)];
  v53 = v23;
  sub_264D7FED0(a1, v24);
  v60 = sub_264E24778();
  sub_264D805B4(v73);
  v57 = v73[0];
  v56 = v73[1];
  v54 = v74;
  v58 = v75;
  v59 = v76;
  v55 = v77;
  LOBYTE(v73[0]) = 1;
  v79 = v74;
  v78 = v77;
  sub_264E24EA8();
  v25 = sub_264E249B8();
  sub_264E243D8();
  v26 = &v18[*(v14 + 44)];
  v52 = v18;
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_264D815C4(a1, &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v32 = swift_allocObject();
  sub_264D8162C(&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
  sub_264E24DD8();
  sub_264E24898();
  sub_264D81DCC(&qword_27FFB1798, &qword_27FFB1768, &unk_264E298C0, MEMORY[0x277CDF028]);
  sub_264D816FC(&qword_27FFB17A0, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v33 = v69;
  v34 = v63;
  v35 = v66;
  sub_264E24BB8();
  (*(v61 + 8))(v4, v35);
  (*(v65 + 8))(v8, v34);
  v36 = v68;
  sub_264D81744(v23, v68, &qword_27FFB1780, &qword_264E26100);
  v37 = v18;
  v38 = v70;
  sub_264D81744(v37, v70, &qword_27FFB1778, &qword_264E260F8);
  v66 = *(v71 + 16);
  v39 = v64;
  (v66)(v64, v33, v72);
  v40 = v67;
  sub_264D81744(v36, v67, &qword_27FFB1780, &qword_264E26100);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17A8, &qword_264E26118);
  v42 = v40 + v41[12];
  *v42 = 0x4014000000000000;
  *(v42 + 8) = 0;
  v43 = v40 + v41[16];
  *v43 = v60;
  *(v43 + 8) = 0;
  *(v43 + 16) = 1;
  v44 = v57;
  v45 = v56;
  *(v43 + 24) = v57;
  *(v43 + 32) = v45;
  v46 = v54;
  *(v43 + 40) = v54;
  v47 = v59;
  *(v43 + 48) = v58;
  *(v43 + 56) = v47;
  *(v43 + 64) = v55;
  sub_264D81744(v38, v40 + v41[20], &qword_27FFB1778, &qword_264E260F8);
  v48 = v72;
  (v66)(v40 + v41[24], v39, v72);
  sub_264D80F20(v44, v45, v46);
  v49 = *(v71 + 8);

  v49(v69, v48);
  sub_264D817BC(v52, &qword_27FFB1778, &qword_264E260F8);
  sub_264D817BC(v53, &qword_27FFB1780, &qword_264E26100);
  v49(v39, v48);
  sub_264D817BC(v70, &qword_27FFB1778, &qword_264E260F8);
  sub_264D817AC(v44, v45, v46);

  return sub_264D817BC(v68, &qword_27FFB1780, &qword_264E26100);
}

uint64_t sub_264D7FED0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a1;
  v43 = a2;
  v2 = type metadata accessor for CommunicationSafetyAnalyticsTipView(0);
  v46 = *(v2 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = &v41[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B0, &unk_264E26120);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v48 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v51 = &v41[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41[-v9];
  v11 = sub_264E24A88();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_264E247D8();
  v15 = [objc_opt_self() bundle];
  v16 = sub_264E24AE8();
  v18 = v17;
  v20 = v19;
  (*(v12 + 104))(v14, *MEMORY[0x277CE0A68], v11);
  v21 = sub_264E249F8();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  sub_264E24A48();
  sub_264D817BC(v10, &qword_27FFB17B8, &qword_264E279E0);
  (*(v12 + 8))(v14, v11);
  sub_264E24A18();
  sub_264E24A58();

  v22 = sub_264E24AD8();
  v24 = v23;
  v42 = v25;
  v27 = v26;

  sub_264D817AC(v16, v18, v20 & 1);

  v28 = v44;
  sub_264D815C4(v47, v44);
  v29 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v30 = swift_allocObject();
  sub_264D8162C(v28, v30 + v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17C0, &qword_264E26130);
  sub_264D819BC();
  v31 = v51;
  sub_264E24DD8();
  v33 = v48;
  v32 = v49;
  v34 = *(v49 + 16);
  v35 = v50;
  v34(v48, v31, v50);
  v36 = v43;
  *v43 = v22;
  v36[1] = v24;
  LOBYTE(v12) = v42 & 1;
  *(v36 + 16) = v42 & 1;
  v36[3] = v27;
  v36[4] = 0;
  *(v36 + 40) = 1;
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1810, &qword_264E26158);
  v34(v37 + *(v38 + 64), v33, v35);
  sub_264D80F20(v22, v24, v12);
  v39 = *(v32 + 8);

  v39(v51, v35);
  v39(v33, v35);
  sub_264D817AC(v22, v24, v12);
}

void sub_264D80430(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_264E24D18();
  v6 = sub_264E249F8();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_264E24A38();
  sub_264D817BC(v4, &qword_27FFB17B8, &qword_264E279E0);
  sub_264E24A08();
  v7 = sub_264E24A58();

  KeyPath = swift_getKeyPath();
  v9 = sub_264E24C68();
  v10 = swift_getKeyPath();
  v11 = sub_264E249A8();
  sub_264E243D8();
  *a1 = v5;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v7;
  *(a1 + 24) = v10;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;
  *(a1 + 72) = v15;
  *(a1 + 80) = 0;
}

uint64_t sub_264D805B4@<X0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  v3 = sub_264E24AE8();
  v5 = v4;
  v7 = v6;
  sub_264E24A78();
  v8 = sub_264E24AD8();
  v10 = v9;
  v12 = v11;

  sub_264D817AC(v3, v5, v7 & 1);

  sub_264E24C68();
  v13 = sub_264E24AB8();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_264D817AC(v8, v10, v12 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  *(a1 + 32) = 0x403E000000000000;
  *(a1 + 40) = 0;
  sub_264D80F20(v13, v15, v17 & 1);

  sub_264D817AC(v13, v15, v17 & 1);
}

uint64_t sub_264D80774@<X0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  result = sub_264E24AE8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_264D80864@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1708, &qword_264E26038);
  sub_264D813DC();
  sub_264E24F38();
  KeyPath = swift_getKeyPath();
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1728, &qword_264E26078) + 36);
  *v3 = KeyPath;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1730, &qword_264E260B0);
  v6 = a1 + *(result + 36);
  *v6 = v4;
  *(v6 + 8) = 0;
  return result;
}

uint64_t sub_264D80948@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1;
  *(a7 + 40) = a2;
  sub_264D80F20(a3, a4, a5 & 1);
}

uint64_t sub_264D809A0(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_264E24938();

    return sub_264E24508();
  }

  else
  {
    sub_264E24578();
    swift_getWitnessTable();
    sub_264E248B8();
    sub_264E24508();
    sub_264E25318();
    swift_getWitnessTable();
    sub_264E24578();
    swift_getWitnessTable();
    sub_264E248B8();
    return sub_264E24508();
  }
}

uint64_t sub_264D80B04(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_264E24938();
    sub_264E24508();
  }

  else
  {
    sub_264E24578();
    swift_getWitnessTable();
    sub_264E248B8();
    sub_264E24508();
    sub_264E25318();
    swift_getWitnessTable();
    sub_264E24578();
    swift_getWitnessTable();
    sub_264E248B8();
    sub_264E24508();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_264D80D04@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_264D80D20(void *a1, uint64_t *a2)
{
  v2 = sub_264E25108();
  v4 = v3;
  if (v2 == sub_264E25108() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_264E25478();
  }

  return v7 & 1;
}

BOOL sub_264D80DC4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_264D80E1C()
{
  v1 = *v0;
  sub_264E254A8();
  MEMORY[0x26674F610](v1);
  return sub_264E254C8();
}

uint64_t sub_264D80E90(uint64_t a1)
{
  v2 = *v1;
  sub_264E254A8();
  MEMORY[0x26674F610](v2);
  return sub_264E254C8();
}

uint64_t sub_264D80ED4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264E25108();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_264D80F20(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_264D80FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB16D8, &unk_264E25F90);
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_264D810C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB16D8, &unk_264E25F90);
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

uint64_t type metadata accessor for CommunicationSafetyAnalyticsTipView(uint64_t a1)
{
  result = qword_27FFB16E0;
  if (!qword_27FFB16E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264D811D4(uint64_t a1)
{
  sub_264D81258(319);
  if (v1 <= 0x3F)
  {
    sub_264D812B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264D81258(uint64_t a1)
{
  if (!qword_27FFB16F0)
  {
    sub_264E24808();
    v1 = sub_264E24438();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB16F0);
    }
  }
}

unint64_t sub_264D812B0()
{
  result = qword_27FFB16F8;
  if (!qword_27FFB16F8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FFB16F8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_264D81310(uint64_t a1, int a2)
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

uint64_t sub_264D81330(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void sub_264D8136C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_264D813DC()
{
  result = qword_27FFB1710;
  if (!qword_27FFB1710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1708, &qword_264E26038);
    sub_264D81DCC(&qword_27FFB1718, &qword_27FFB1720, &qword_264E26040, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1710);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_264D814EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1740, &qword_264E260C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D8155C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1740, &qword_264E260C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264D815C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommunicationSafetyAnalyticsTipView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D8162C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommunicationSafetyAnalyticsTipView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D816FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264D81744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_264D817AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_264D817BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = *(type metadata accessor for CommunicationSafetyAnalyticsTipView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1790, &qword_264E26110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_264E24808();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_264D819BC()
{
  result = qword_27FFB17C8;
  if (!qword_27FFB17C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB17C0, &qword_264E26130);
    sub_264D81A48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB17C8);
  }

  return result;
}

unint64_t sub_264D81A48()
{
  result = qword_27FFB17D0;
  if (!qword_27FFB17D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB17D8, &qword_264E26138);
    sub_264D81B00();
    sub_264D81DCC(&qword_27FFB1800, &qword_27FFB1808, &qword_264E26150, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB17D0);
  }

  return result;
}

unint64_t sub_264D81B00()
{
  result = qword_27FFB17E0;
  if (!qword_27FFB17E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB17E8, &unk_264E26140);
    sub_264D81DCC(&qword_27FFB17F0, &qword_27FFB17F8, &qword_264E28590, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB17E0);
  }

  return result;
}

unint64_t sub_264D81BCC()
{
  result = qword_27FFB1818;
  if (!qword_27FFB1818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1730, &qword_264E260B0);
    sub_264D81C84();
    sub_264D81DCC(&qword_27FFB1848, &qword_27FFB1850, &unk_264E261D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1818);
  }

  return result;
}

unint64_t sub_264D81C84()
{
  result = qword_27FFB1820;
  if (!qword_27FFB1820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1728, &qword_264E26078);
    sub_264D81D3C();
    sub_264D81DCC(&qword_27FFB1838, &qword_27FFB1840, &qword_264E280A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1820);
  }

  return result;
}

unint64_t sub_264D81D3C()
{
  result = qword_27FFB1828;
  if (!qword_27FFB1828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1830, &unk_264E261C0);
    sub_264D813DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1828);
  }

  return result;
}

uint64_t sub_264D81DCC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t static UsageOverviewChart.Day.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_264E23A78())
  {
    v4 = type metadata accessor for UsageOverviewChart.Day(0);
    if (*(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20)) && (sub_264D81ED4(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) != 0)
    {

      JUMPOUT(0x26674DD10);
    }
  }

  return 0;
}

uint64_t sub_264D81ED4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_264D9D57C(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264D82010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_264E23A78() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)) && (sub_264D81ED4(*(a1 + *(a3 + 24)), *(a2 + *(a3 + 24))))
  {

    JUMPOUT(0x26674DD10);
  }

  return 0;
}

uint64_t sub_264D820A4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_264E25478();
  }
}

uint64_t _s16ScreenTimeUICore18UsageOverviewChartV3DayV2id10Foundation4DateVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264E23AA8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UsageOverviewChart.Model.init(startOfWeek:usage:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UsageOverviewChart.Model(0);
  *(a4 + v8[7]) = 3;
  v9 = sub_264E23AA8();
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  *(a4 + v8[5]) = a2;
  v10 = v8[6];
  v11 = sub_264E23C38();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t UsageOverviewChart.Model.contains(date:)(uint64_t a1)
{
  v26 = a1;
  v2 = sub_264E23AA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v9 - 8);
  v27 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  type metadata accessor for UsageOverviewChart.Model(0);
  Calendar.startOfWeek(containing:)(v26, v16);
  (*(v3 + 16))(v13, v1, v2);
  (*(v3 + 56))(v13, 0, 1, v2);
  v17 = *(v6 + 56);
  sub_264D81744(v16, v8, &qword_27FFB1860, &qword_264E267E0);
  sub_264D81744(v13, &v8[v17], &qword_27FFB1860, &qword_264E267E0);
  v18 = *(v3 + 48);
  if (v18(v8, 1, v2) != 1)
  {
    sub_264D81744(v8, v27, &qword_27FFB1860, &qword_264E267E0);
    if (v18(&v8[v17], 1, v2) != 1)
    {
      v20 = v25;
      (*(v3 + 32))(v25, &v8[v17], v2);
      sub_264D89FD8(&qword_27FFB1868, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v21 = v27;
      v19 = sub_264E25068();
      v22 = *(v3 + 8);
      v22(v20, v2);
      sub_264D817BC(v13, &qword_27FFB1860, &qword_264E267E0);
      sub_264D817BC(v16, &qword_27FFB1860, &qword_264E267E0);
      v22(v21, v2);
      sub_264D817BC(v8, &qword_27FFB1860, &qword_264E267E0);
      return v19 & 1;
    }

    sub_264D817BC(v13, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v16, &qword_27FFB1860, &qword_264E267E0);
    (*(v3 + 8))(v27, v2);
    goto LABEL_6;
  }

  sub_264D817BC(v13, &qword_27FFB1860, &qword_264E267E0);
  sub_264D817BC(v16, &qword_27FFB1860, &qword_264E267E0);
  if (v18(&v8[v17], 1, v2) != 1)
  {
LABEL_6:
    sub_264D817BC(v8, &qword_27FFB1858, &unk_264E26200);
    v19 = 0;
    return v19 & 1;
  }

  sub_264D817BC(v8, &qword_27FFB1860, &qword_264E267E0);
  v19 = 1;
  return v19 & 1;
}

void sub_264D826BC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UsageOverviewChart.Day(0);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_264D8EFDC(a3 + v14 + v15 * v12, v11, type metadata accessor for UsageOverviewChart.Day);
      v16 = a1(v11);
      if (v3)
      {
        sub_264D902E4(v11, type metadata accessor for UsageOverviewChart.Day);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_264D89F10(v11, v23, type metadata accessor for UsageOverviewChart.Day);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_264D8D090(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_264D8D090((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_264D89F10(v23, v13 + v14 + v19 * v15, type metadata accessor for UsageOverviewChart.Day);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_264D902E4(v11, type metadata accessor for UsageOverviewChart.Day);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_264D82948(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for OverviewChart.Day(0);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_264D8EFDC(a3 + v14 + v15 * v12, v11, type metadata accessor for OverviewChart.Day);
      v16 = a1(v11);
      if (v3)
      {
        sub_264D902E4(v11, type metadata accessor for OverviewChart.Day);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_264D89F10(v11, v23, type metadata accessor for OverviewChart.Day);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_264D8D218(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_264D8D218((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_264D89F10(v23, v13 + v14 + v19 * v15, type metadata accessor for OverviewChart.Day);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_264D902E4(v11, type metadata accessor for OverviewChart.Day);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_264D82BD4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DetailChart.Hour(0);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_264D8EFDC(a3 + v14 + v15 * v12, v11, type metadata accessor for DetailChart.Hour);
      v16 = a1(v11);
      if (v3)
      {
        sub_264D902E4(v11, type metadata accessor for DetailChart.Hour);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_264D89F10(v11, v23, type metadata accessor for DetailChart.Hour);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_264D8D25C(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_264D8D25C((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_264D89F10(v23, v13 + v14 + v19 * v15, type metadata accessor for DetailChart.Hour);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_264D902E4(v11, type metadata accessor for DetailChart.Hour);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_264D82E60(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_264D8EFDC(a3 + v14 + v15 * v12, v11, type metadata accessor for UsageDetailChart.HourlyUsage);
      v16 = a1(v11);
      if (v3)
      {
        sub_264D902E4(v11, type metadata accessor for UsageDetailChart.HourlyUsage);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_264D89F10(v11, v23, type metadata accessor for UsageDetailChart.HourlyUsage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_264D8D470(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_264D8D470((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_264D89F10(v23, v13 + v14 + v19 * v15, type metadata accessor for UsageDetailChart.HourlyUsage);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_264D902E4(v11, type metadata accessor for UsageDetailChart.HourlyUsage);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_264D830EC()
{
  v1 = type metadata accessor for UsageOverviewChart.Day(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v71 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264DEB098(MEMORY[0x277D84F90]);
  v64 = type metadata accessor for UsageOverviewChart.Model(0);
  v65 = v0;
  v5 = *(v0 + *(v64 + 20));
  v75 = v0;

  v6 = v5;
  v7 = 0;
  sub_264D826BC(sub_264D91648, v74, v6);
  v63 = 0;
  v70 = *(v8 + 16);
  if (!v70)
  {

    v9 = 0;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = 0;
  v11 = *(v1 + 24);
  v68 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v69 = v11;
  v66 = v8;
  v67 = v2;
  while (2)
  {
    if (v10 >= *(v8 + 16))
    {
      goto LABEL_51;
    }

    v12 = v71;
    sub_264D8EFDC(v68 + *(v2 + 72) * v10, v71, type metadata accessor for UsageOverviewChart.Day);
    v72 = v10 + 1;
    v13 = *(v12 + v69);

    sub_264D902E4(v12, type metadata accessor for UsageOverviewChart.Day);
    v14 = 0;
    v16 = v13 + 64;
    v15 = *(v13 + 64);
    v73 = v13;
    v17 = 1 << *(v13 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v15;
    v7 = (v17 + 63) >> 6;
    while (v19)
    {
LABEL_16:
      v23 = __clz(__rbit64(v19)) | (v14 << 6);
      v24 = (*(v73 + 6) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v73 + 7) + 8 * v23);

      sub_264D91628(v9, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v4;
      v21 = sub_264D9D57C(v25, v26);
      v30 = v4[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v34 = v29;
      if (v4[3] < v33)
      {
        sub_264D9E134(v33, isUniquelyReferenced_nonNull_native);
        v21 = sub_264D9D57C(v25, v26);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_55;
        }

LABEL_21:
        v4 = v76;
        if (v34)
        {
          goto LABEL_9;
        }

        goto LABEL_22;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v39 = v21;
      sub_264DA0FDC();
      v21 = v39;
      v4 = v76;
      if (v34)
      {
LABEL_9:
        v20 = v21;

        v21 = v20;
        goto LABEL_10;
      }

LABEL_22:
      v4[(v21 >> 6) + 8] |= 1 << v21;
      v36 = (v4[6] + 16 * v21);
      *v36 = v25;
      v36[1] = v26;
      *(v4[7] + 8 * v21) = 0;
      v37 = v4[2];
      v32 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v32)
      {
        goto LABEL_49;
      }

      v4[2] = v38;
LABEL_10:
      v19 &= v19 - 1;
      *(v4[7] + 8 * v21) = v27 + *(v4[7] + 8 * v21);
      v9 = sub_264D80DA8;
    }

    while (1)
    {
      v22 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v22 >= v7)
      {
        break;
      }

      v19 = *(v16 + 8 * v22);
      ++v14;
      if (v19)
      {
        v14 = v22;
        goto LABEL_16;
      }
    }

    v10 = v72;
    v8 = v66;
    v2 = v67;
    if (v72 != v70)
    {
      continue;
    }

    break;
  }

LABEL_28:
  v73 = v9;
  v40 = v4[2];
  v41 = MEMORY[0x277D84F90];
  if (!v40)
  {
    v43 = MEMORY[0x277D84F90];
LABEL_32:
    v76 = v43;
    v7 = v63;
    sub_264D8C4F4(&v76);
    if (v7)
    {
      goto LABEL_56;
    }

    v45 = sub_264DFF6A4(*(v65 + *(v64 + 28)), v76);
    v7 = v48 >> 1;
    v49 = (v48 >> 1) - v47;
    if (__OFSUB__(v48 >> 1, v47))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v50 = v45;
    if (!v49)
    {

      swift_unknownObjectRelease();
      sub_264D91628(v73, 0);
      return MEMORY[0x277D84F90];
    }

    v51 = v46;
    v52 = v47;
    v76 = v41;
    sub_264D8D0D4(0, v49 & ~(v49 >> 63), 0);
    if (v49 < 0)
    {
      goto LABEL_54;
    }

    v72 = v50;
    v53 = v76;
    if (v52 <= v7)
    {
      v54 = v7;
    }

    else
    {
      v54 = v52;
    }

    v55 = v54 - v52;
    v56 = (v51 + 24 * v52 + 8);
    while (v55)
    {
      v58 = *(v56 - 1);
      v57 = *v56;
      v76 = v53;
      v7 = *(v53 + 16);
      v59 = *(v53 + 24);

      if (v7 >= v59 >> 1)
      {
        sub_264D8D0D4((v59 > 1), v7 + 1, 1);
        v53 = v76;
      }

      *(v53 + 16) = v7 + 1;
      v60 = v53 + 16 * v7;
      *(v60 + 32) = v58;
      *(v60 + 40) = v57;
      --v55;
      v56 += 3;
      if (!--v49)
      {

        swift_unknownObjectRelease();
        sub_264D91628(v73, 0);
        return v53;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v42 = MEMORY[0x277D84F90];
  v43 = sub_264D8C20C(v4[2], 0);
  v7 = sub_264D8E104(&v76, v43 + 4, v40, v4);
  v44 = v76;

  sub_264D8F07C(v44);
  if (v7 == v40)
  {
    v41 = v42;
    goto LABEL_32;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  sub_264E25498();
  __break(1u);
LABEL_56:

  __break(1u);
  return result;
}

uint64_t sub_264D83684(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C18, &qword_264E26690);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v66 - v7;
  v72 = type metadata accessor for UsageOverviewChart.Day(0);
  v8 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v73 = &v66 - v12;
  result = type metadata accessor for UsageOverviewChart.Model(0);
  v14 = *(v2 + *(result + 28));
  if (!a2 || !*(a2 + 16))
  {
    v17 = sub_264D830EC();
    sub_264D8EFDC(a1, v73, type metadata accessor for UsageOverviewChart.Day);

    v24 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_7;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v15 = *(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v72 + 24));
  v16 = *(v15 + 16);
  if (v16)
  {
    v67 = v8;
    v70 = 0;
    v17 = sub_264D8C29C(v16, 0);
    v18 = sub_264D8E260(v74, v17 + 4, v16, v15);
    v19 = v74[0];
    v68 = v74[4];
    v69 = v18;

    result = sub_264D8F07C(v19);
    if (v69 != v16)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v5 = v70;
    v20 = v10;
    v8 = v67;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
    v20 = v10;
  }

  v14 = v17[2];
  MEMORY[0x28223BE20](result);
  *(&v66 - 2) = a1;

  v50 = v71;
  sub_264D93B30(sub_264D915F8, a2, v71);
  v51 = *(v8 + 48);
  v8 += 48;
  v10 = v51;
  if (v51(v50, 1, v72) == 1)
  {
    v52 = sub_264E23AA8();
    (*(*(v52 - 8) + 16))(v20, a1, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B80, &unk_264E27060);
    result = swift_initStackObject();
    *(result + 16) = xmmword_264E261E0;
    if (!v17[2])
    {
LABEL_63:
      __break(1u);
      return result;
    }

    v53 = v17[5];
    *(result + 32) = v17[4];
    v54 = result + 32;
    *(result + 40) = v53;
    *(result + 48) = 0;
    v55 = result;

    v56 = sub_264DEB098(v55);
    swift_setDeallocating();
    sub_264D817BC(v54, &qword_27FFB1B88, &qword_264E26610);
    v8 = v72;
    sub_264E23BF8();
    v57 = *(v8 + 24);
    sub_264DEB098(MEMORY[0x277D84F90]);

    *(v20 + *(v8 + 20)) = 0;
    *(v20 + v57) = v56;
    if ((v10)(v71, 1, v8) != 1)
    {
      sub_264D817BC(v71, &qword_27FFB1C18, &qword_264E26690);
    }
  }

  else
  {
    sub_264D89F10(v71, v20, type metadata accessor for UsageOverviewChart.Day);
  }

  sub_264D89F10(v20, v73, type metadata accessor for UsageOverviewChart.Day);
  v24 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    goto LABEL_43;
  }

LABEL_7:
  v8 = sub_264E17410(0x65646E69616D6572, 0xE900000000000072, 0.0, v24);
  v25 = v17[2];
  v71 = v14;
  if (v25)
  {
    v70 = v5;
    v26 = a1;
    v27 = 0;
    v28 = *(v73 + *(v72 + 24));
    v29 = v17 + 5;
    v30 = v25 - 1;
    v31 = 0.0;
    do
    {
      if (*(v28 + 16) && (v33 = *(v29 - 1), v32 = *v29, , v34 = sub_264D9D57C(v33, v32), LOBYTE(v33) = v35, , (v33 & 1) != 0))
      {
        v31 = v31 + *(*(v28 + 56) + 8 * v34);
        if (v30 == v27)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v31 = v31 + 0.0;
        if (v30 == v27)
        {
          goto LABEL_16;
        }
      }

      ++v27;
      v29 += 2;
    }

    while (v27 < v17[2]);
    __break(1u);
LABEL_16:

    v36 = *(v72 + 20);
    if (v31 > *(v26 + v36))
    {
      v37 = v31;
    }

    else
    {
      v37 = *(v26 + v36);
    }
  }

  else
  {

    v37 = *(a1 + *(v72 + 20));
    if (v37 < 0.0)
    {
LABEL_34:

      goto LABEL_56;
    }
  }

  if (v37 <= 0.0)
  {
    goto LABEL_34;
  }

  v38 = v17[2];
  if (!v38)
  {
LABEL_31:
    v21 = *(v8 + 16);
    v22 = 0.0;
    v23 = 0.0;
    v10 = v71;
    if (!v21)
    {
LABEL_49:
      v65 = round((1.0 - v23) * 100.0) / 100.0;
      if (v65 > 0.0)
      {
        v37 = v65;
      }

      else
      {
        v37 = v22;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    }

    if (v21 == 1)
    {
      v49 = 0;
LABEL_47:
      v62 = v21 - v49;
      v63 = (v8 + 24 * v49 + 32);
      do
      {
        v64 = *v63;
        v63 += 3;
        v23 = v23 + v64;
        --v62;
      }

      while (v62);
      goto LABEL_49;
    }

LABEL_44:
    v49 = v21 & 0x7FFFFFFFFFFFFFFELL;
    v58 = (v8 + 56);
    v59 = v21 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v60 = *(v58 - 3);
      v61 = *v58;
      v58 += 6;
      v23 = v23 + v60 + v61;
      v59 -= 2;
    }

    while (v59);
    if (v21 == v49)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v39 = 0;
  v40 = 0;
  v10 = (v17 + 5);
  while (v40 < v17[2])
  {
    v42 = *(v10 - 8);
    v41 = *v10;
    v43 = *(v73 + *(v72 + 24));
    v44 = *(v43 + 16);

    if (v44)
    {
      v45 = sub_264D9D57C(v42, v41);
      if (v46)
      {
        v47 = *(*(v43 + 56) + 8 * v45);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_29;
        }

LABEL_27:
        v8 = sub_264E15D44(v8);
        goto LABEL_29;
      }
    }

    v47 = 0.0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_29:
    if (v40 >= *(v8 + 16))
    {
      goto LABEL_58;
    }

    v48 = v8 + v39;
    *(v48 + 32) = round(v47 * 100.0 / v37) / 100.0;
    ++v40;
    *(v48 + 40) = v42;
    *(v48 + 48) = v41;

    v39 += 24;
    v10 += 16;
    if (v38 == v40)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  v8 = sub_264E15D44(v8);
LABEL_53:

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  if (v10 >= *(v8 + 16))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  *(v8 + 24 * v10 + 32) = v37;
LABEL_56:
  sub_264D902E4(v73, type metadata accessor for UsageOverviewChart.Day);
  return v8;
}

void sub_264D83DB4(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UsageOverviewChart.Day(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v22[-v8];
  MEMORY[0x28223BE20](v10);
  v12 = &v22[-v11];
  v13 = *(v1 + *(type metadata accessor for UsageOverviewChart.Model(0) + 20));
  v23 = v1;

  sub_264D826BC(sub_264D91648, v22, v13);
  v15 = v14;
  v16 = *(v14 + 16);
  while (1)
  {
    if (!v16)
    {

      v21 = sub_264E23AA8();
      (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
      return;
    }

    if (v16 > *(v15 + 16))
    {
      break;
    }

    --v16;
    v17 = v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16;
    sub_264D8EFDC(v17, v6, type metadata accessor for UsageOverviewChart.Day);
    v18 = *&v6[*(v3 + 20)];
    sub_264D902E4(v6, type metadata accessor for UsageOverviewChart.Day);
    if (v18 > 0.0)
    {
      sub_264D8EFDC(v17, v9, type metadata accessor for UsageOverviewChart.Day);

      sub_264D89F10(v9, v12, type metadata accessor for UsageOverviewChart.Day);
      v19 = sub_264E23AA8();
      v20 = *(v19 - 8);
      (*(v20 + 16))(a1, v12, v19);
      sub_264D902E4(v12, type metadata accessor for UsageOverviewChart.Day);
      (*(v20 + 56))(a1, 0, 1, v19);
      return;
    }
  }

  __break(1u);
}

BOOL static UsageOverviewChart.Model.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_264E23A78() & 1) != 0 && (v4 = type metadata accessor for UsageOverviewChart.Model(0), (sub_264D84650(*(a1 + v4[5]), *(a2 + v4[5]))) && (MEMORY[0x26674DD10](a1 + v4[6], a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264D84128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverviewChart.Day(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

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
    result = sub_264D8EFDC(v13, v10, type metadata accessor for OverviewChart.Day);
    if (!v11)
    {
      break;
    }

    sub_264D8EFDC(v14, v6, type metadata accessor for OverviewChart.Day);
    if ((sub_264E23A78() & 1) == 0 || (sub_264E23A78() & 1) == 0)
    {
      sub_264D902E4(v6, type metadata accessor for OverviewChart.Day);
      sub_264D902E4(v10, type metadata accessor for OverviewChart.Day);
      return 0;
    }

    v17 = *&v10[*(v4 + 20)];
    sub_264D902E4(v10, type metadata accessor for OverviewChart.Day);
    v18 = *&v6[*(v4 + 20)];
    sub_264D902E4(v6, type metadata accessor for OverviewChart.Day);
    result = v17 == v18;
    v19 = v17 != v18 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v19)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264D84338(uint64_t a1, uint64_t a2)
{
  v33 = sub_264E23AA8();
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v31 = type metadata accessor for DetailChart.Hour(0);
  MEMORY[0x28223BE20](v31);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    return 0;
  }

  if (!v15 || a1 == a2)
  {
    return 1;
  }

  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = (v4 + 8);
  v30 = *(v12 + 72);
  while (1)
  {
    result = sub_264D8EFDC(v17, v14, type metadata accessor for DetailChart.Hour);
    if (!v15)
    {
      break;
    }

    sub_264D8EFDC(v18, v10, type metadata accessor for DetailChart.Hour);
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v21 = v32;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v22 = sub_264E23A78();
    v23 = *v19;
    v24 = v21;
    v25 = v33;
    (*v19)(v24, v33);
    v23(v8, v25);
    if ((v22 & 1) == 0 || (sub_264E23878() & 1) == 0)
    {
      sub_264D902E4(v10, type metadata accessor for DetailChart.Hour);
      sub_264D902E4(v14, type metadata accessor for DetailChart.Hour);
      return 0;
    }

    v26 = v31;
    v27 = *&v14[*(v31 + 20)];
    sub_264D902E4(v14, type metadata accessor for DetailChart.Hour);
    v28 = *&v10[*(v26 + 20)];
    sub_264D902E4(v10, type metadata accessor for DetailChart.Hour);
    result = v27 == v28;
    v29 = v27 != v28 || v15-- == 1;
    v18 += v30;
    v17 += v30;
    if (v29)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264D84650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsageOverviewChart.Day(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_13:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_264D8EFDC(v13, v10, type metadata accessor for UsageOverviewChart.Day);
      sub_264D8EFDC(v14, v6, type metadata accessor for UsageOverviewChart.Day);
      if ((sub_264E23A78() & 1) == 0 || *&v10[v4[5]] != *&v6[v4[5]] || (sub_264D81ED4(*&v10[v4[6]], *&v6[v4[6]]) & 1) == 0)
      {
        break;
      }

      v16 = MEMORY[0x26674DD10](&v10[v4[7]], &v6[v4[7]]);
      sub_264D902E4(v6, type metadata accessor for UsageOverviewChart.Day);
      sub_264D902E4(v10, type metadata accessor for UsageOverviewChart.Day);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_264D902E4(v6, type metadata accessor for UsageOverviewChart.Day);
    sub_264D902E4(v10, type metadata accessor for UsageOverviewChart.Day);
    goto LABEL_13;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_264D84880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_13:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_264D8EFDC(v13, v10, type metadata accessor for UsageDetailChart.HourlyUsage);
      sub_264D8EFDC(v14, v6, type metadata accessor for UsageDetailChart.HourlyUsage);
      if ((sub_264E23878() & 1) == 0 || *&v10[v4[5]] != *&v6[v4[5]] || (sub_264D81ED4(*&v10[v4[6]], *&v6[v4[6]]) & 1) == 0)
      {
        break;
      }

      v16 = sub_264D81ED4(*&v10[v4[7]], *&v6[v4[7]]);
      sub_264D902E4(v6, type metadata accessor for UsageDetailChart.HourlyUsage);
      sub_264D902E4(v10, type metadata accessor for UsageDetailChart.HourlyUsage);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_264D902E4(v6, type metadata accessor for UsageDetailChart.HourlyUsage);
    sub_264D902E4(v10, type metadata accessor for UsageDetailChart.HourlyUsage);
    goto LABEL_13;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t UsageOverviewChart.init(model:calendar:selectedDay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for UsageOverviewChart(0);
  v14 = sub_264E23AA8();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_264D81744(v12, v9, &qword_27FFB1860, &qword_264E267E0);
  sub_264E24D78();
  sub_264D817BC(v12, &qword_27FFB1860, &qword_264E267E0);
  *(a4 + v13[8]) = 0;
  v15 = (a4 + v13[9]);
  v22 = 0x40BC200000000000;
  sub_264E24D78();
  v16 = v24;
  *v15 = v23;
  v15[1] = v16;
  v17 = (a4 + v13[10]);
  v22 = 0;
  sub_264E24D78();
  v18 = v24;
  *v17 = v23;
  v17[1] = v18;
  sub_264D89F10(a1, a4 + v13[5], type metadata accessor for UsageOverviewChart.Model);
  v19 = sub_264E23C38();
  (*(*(v19 - 8) + 32))(a4, a2, v19);
  return sub_264D90E64(v21, a4 + v13[7], &qword_27FFB1870, &unk_264E26210);
}

uint64_t sub_264D84D94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UsageOverviewChart.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v119 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1878, &unk_264E27650);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v92 - v4;
  v5 = sub_264E23C18();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  *&v124 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v7 - 8);
  v122 = &v92 - v8;
  v121 = sub_264E238E8();
  v123 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v94 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UsageOverviewChart(0);
  v120 = *(v10 - 8);
  v11 = *(v120 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1888, &qword_264E26228);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v92 - v14;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1890, &qword_264E26230);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v17 = &v92 - v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1898, &qword_264E26238);
  v99 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v98 = &v92 - v18;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18A0, &qword_264E26240);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = &v92 - v19;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18A8, &qword_264E26248);
  v108 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v107 = &v92 - v20;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18B0, &qword_264E26250);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v114 = &v92 - v21;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18B8, &qword_264E26258);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v113 = &v92 - v22;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18C0, &qword_264E26260);
  MEMORY[0x28223BE20](v111);
  v110 = &v92 - v23;
  v129 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18C8, &qword_264E26268);
  sub_264D89A08();
  sub_264E241C8();
  v127 = v10;
  v128 = v2;
  sub_264D8EFDC(v2, &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UsageOverviewChart);
  v24 = (*(v120 + 80) + 16) & ~*(v120 + 80);
  v101 = *(v120 + 80);
  v100 = v24 + v11;
  v25 = swift_allocObject();
  v104 = v24;
  v26 = v25 + v24;
  v27 = v121;
  v120 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v12;
  sub_264D89F10(v120, v26, type metadata accessor for UsageOverviewChart);
  v29 = type metadata accessor for UsageOverviewChart.Model(0);
  v30 = sub_264D81DCC(&qword_27FFB1950, &qword_27FFB1888, &qword_264E26228, MEMORY[0x277CBB3F8]);
  v31 = sub_264D89FD8(&qword_27FFB1958, type metadata accessor for UsageOverviewChart.Model, &protocol conformance descriptor for UsageOverviewChart.Model);
  v95 = v17;
  v32 = v123;
  v93 = v30;
  v92 = v31;
  sub_264E24C28();

  (*(v13 + 8))(v15, v28);
  v34 = v125;
  v33 = v126;
  v35 = v124;
  (*(v125 + 104))(v124, *MEMORY[0x277CC9940], v126);
  v36 = v122;
  sub_264E23B08();
  v37 = v36;
  (*(v34 + 8))(v35, v33);
  result = v32[6](v36, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v39 = v94;
    v32[4](v94, v37, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
    sub_264E23AA8();
    v40 = swift_allocObject();
    v124 = xmmword_264E261F0;
    *(v40 + 16) = xmmword_264E261F0;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    sub_264E23888();
    (v32[1])(v39, v27);
    v136 = v40;
    v41 = sub_264E242D8();
    v123 = *(*(v41 - 8) + 56);
    v42 = v109;
    (v123)(v109, 1, 1, v41);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1968, &unk_264E27700);
    v132 = v28;
    v133 = v29;
    v134 = v93;
    v135 = v92;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v45 = sub_264D8A020(&qword_27FFB1970, &qword_27FFB1968, &unk_264E27700);
    v46 = v98;
    v47 = v97;
    v48 = v95;
    sub_264E24B38();
    sub_264D817BC(v42, &qword_27FFB1878, &unk_264E27650);

    (*(v96 + 8))(v48, v47);
    v49 = (v128 + *(v127 + 9));
    v50 = *v49;
    v126 = v49[1];
    v132 = v50;
    v133 = v126;
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1978, &unk_264E262D0);
    sub_264E24D88();
    v51 = v131;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1980, &unk_264E27710);
    v52 = swift_allocObject();
    *(v52 + 16) = v124;
    *(v52 + 32) = 0;
    *(v52 + 40) = v51;
    v131 = v52;
    (v123)(v42, 1, 1, v41);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1988, &unk_264E262E0);
    v132 = v47;
    v133 = v43;
    v134 = OpaqueTypeConformance2;
    v135 = v45;
    v54 = swift_getOpaqueTypeConformance2();
    v55 = sub_264D8A020(&qword_27FFB1990, &qword_27FFB1988, &unk_264E262E0);
    v56 = v103;
    v57 = v102;
    sub_264E24B48();
    sub_264D817BC(v42, &qword_27FFB1878, &unk_264E27650);

    (*(v99 + 8))(v46, v57);
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1998, &unk_264E27720);
    v132 = v57;
    v133 = v53;
    v134 = v54;
    v135 = v55;
    v58 = swift_getOpaqueTypeConformance2();
    *&v124 = MEMORY[0x277CBB460];
    v59 = sub_264D81DCC(&qword_27FFB19A0, &qword_27FFB1998, &unk_264E27720, MEMORY[0x277CBB460]);
    v60 = v107;
    v61 = v106;
    sub_264E24B08();
    (*(v105 + 8))(v56, v61);
    v132 = v50;
    v62 = v126;
    v133 = v126;
    sub_264E24D88();
    _s16ScreenTimeUICore18UsageOverviewChartV5ModelV7yStride8forLastYSaySdGSd_tFZ_0(v130);
    v64 = v63;
    v132 = v50;
    v133 = v62;
    sub_264E24D88();
    v65 = v130;
    v66 = v128;
    v67 = (v128 + *(v127 + 10));
    v68 = *v67;
    v69 = v67[1];
    v132 = v68;
    v133 = v69;
    v70 = sub_264E24D88();
    v127 = &v92;
    MEMORY[0x28223BE20](v70);
    *(&v92 - 6) = v64;
    *(&v92 - 5) = v71;
    *(&v92 - 32) = 0;
    *(&v92 - 3) = v65;
    *(&v92 - 16) = 0;
    *(&v92 - 1) = v60;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB19A8, &unk_264E262F0);
    v132 = v61;
    v133 = v123;
    v134 = v58;
    v135 = v59;
    v73 = swift_getOpaqueTypeConformance2();
    v74 = sub_264D81DCC(&qword_27FFB19B0, &qword_27FFB19A8, &unk_264E262F0, v124);
    v75 = v114;
    v76 = v112;
    sub_264E24B18();

    (*(v108 + 8))(v60, v76);
    v77 = v120;
    sub_264D8EFDC(v66, v120, type metadata accessor for UsageOverviewChart);
    v78 = swift_allocObject();
    sub_264D89F10(v77, v78 + v104, type metadata accessor for UsageOverviewChart);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB19B8, &qword_264E27730);
    v132 = v76;
    v133 = v72;
    v134 = v73;
    v135 = v74;
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB19C0, &qword_27FFB19B8, &qword_264E27730, MEMORY[0x277CDF728]);
    v79 = v113;
    v80 = v118;
    sub_264E24B58();

    (*(v117 + 8))(v75, v80);
    LOBYTE(v73) = sub_264E249A8();
    sub_264E243D8();
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v89 = v110;
    (*(v115 + 32))(v110, v79, v116);
    v90 = v89 + *(v111 + 36);
    *v90 = v73;
    *(v90 + 8) = v82;
    *(v90 + 16) = v84;
    *(v90 + 24) = v86;
    *(v90 + 32) = v88;
    *(v90 + 40) = 0;
    v91 = v119;
    sub_264D8EF1C(v89, v119);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB19C8, &qword_264E26300);
    *(v91 + *(result + 36)) = 0;
  }

  return result;
}

uint64_t sub_264D85F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C20, &qword_264E26698) - 8;
  MEMORY[0x28223BE20](v49);
  v48 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C28, &qword_264E266A0);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v43 - v7;
  v8 = type metadata accessor for UsageOverviewChart(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18E0, &qword_264E26270);
  v53 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v16 = a1 + *(v9 + 28);
  v17 = *(v16 + *(type metadata accessor for UsageOverviewChart.Model(0) + 20));
  v56 = v16;

  sub_264D826BC(sub_264D91648, v55, v17);
  v60[0] = v18;
  sub_264D8EFDC(a1, &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UsageOverviewChart);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_264D89F10(&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for UsageOverviewChart);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1A00, "ک");
  sub_264E23AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18F0, &qword_264E26278);
  sub_264D81DCC(&qword_27FFB1C30, &qword_27FFB1A00, "ک", MEMORY[0x277D83980]);
  sub_264D89BDC();
  sub_264D89FD8(&qword_27FFB1C38, type metadata accessor for UsageOverviewChart.Day, &protocol conformance descriptor for UsageOverviewChart.Day);
  v44 = v15;
  sub_264E24EC8();
  v21 = (a1 + *(v9 + 48));
  v22 = *v21;
  v23 = v21[1];
  v58 = v22;
  v59 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1978, &unk_264E262D0);
  sub_264E24D88();
  v24 = v52;
  sub_264DC71D4(v52, v57);
  v25 = *(v53 + 16);
  v26 = v51;
  v27 = v45;
  v25(v51, v15, v45);
  v28 = v46;
  v29 = *(v46 + 16);
  v30 = v54;
  v31 = v24;
  v32 = v47;
  v29(v54, v31, v47);
  sub_264D89D1C(&qword_27FFB18D8, &qword_27FFB18E0, &qword_264E26270, sub_264D89BDC);
  v33 = v48;
  v34 = v26;
  v35 = v27;
  v25(v48, v34, v27);
  sub_264E24288();
  v36 = v49;
  v37 = *(v49 + 56);
  v29(&v33[v37], v30, v32);
  v38 = v53;
  v39 = v50;
  (*(v53 + 32))(v50, v33, v35);
  (*(v28 + 32))(v39 + *(v36 + 56), &v33[v37], v32);
  v40 = *(v28 + 8);
  v40(v52, v32);
  v41 = *(v38 + 8);
  v41(v44, v35);
  v40(v54, v32);
  return (v41)(v51, v35);
}

uint64_t sub_264D864DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v88 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C40, &qword_264E266A8);
  MEMORY[0x28223BE20](v87);
  v86 = &v64 - v2;
  v3 = type metadata accessor for UsageOverviewChart.Day(0);
  v4 = *(v3 - 8);
  v67 = v3 - 8;
  v79 = v4;
  MEMORY[0x28223BE20](v3 - 8);
  v80 = v5;
  v82 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = type metadata accessor for UsageOverviewChart(0);
  v76 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v77 = v6;
  v78 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1908, &qword_264E26288);
  v84 = *(v7 - 8);
  v85 = v7;
  MEMORY[0x28223BE20](v7);
  v83 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v91 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C48, &unk_264E266B0);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v64 - v14;
  v16 = sub_264E23C18();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C58, &qword_264E266C0);
  MEMORY[0x28223BE20](v20 - 8);
  v64 = &v64 - v21;
  v68 = sub_264E241F8();
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18F8, &qword_264E26280);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v65 = &v64 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C60, &qword_264E266C8);
  v74 = *(v25 - 8);
  v75 = v25;
  MEMORY[0x28223BE20](v25);
  v90 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v89 = &v64 - v28;
  sub_264E247D8();
  (*(v17 + 104))(v19, *MEMORY[0x277CC99B8], v16);
  v29 = sub_264E23C38();
  (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
  v30 = v72;
  sub_264E240E8();

  sub_264D817BC(v15, &qword_27FFB1C50, &unk_264E267D0);
  (*(v17 + 8))(v19, v16);
  sub_264E247D8();
  v92 = *(v30 + *(v67 + 28));
  sub_264E240F8();

  v31 = [objc_opt_self() currentDevice];
  v32 = [v31 model];

  sub_264E25108();
  sub_264E251A8();

  sub_264E23AA8();
  v33 = v65;
  sub_264E241E8();
  v34 = MEMORY[0x277CBB400];
  v35 = v68;
  sub_264E24058();
  (*(v69 + 8))(v23, v35);
  if (qword_27FFB16A0 != -1)
  {
    swift_once();
  }

  v93 = v34;
  v94 = qword_27FFB6C48;
  v92 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = v89;
  v37 = v71;
  sub_264E24038();
  (*(v70 + 8))(v33, v37);
  v38 = v81;
  v39 = sub_264D83684(v30, *(v81 + *(v73 + 32)));
  sub_264DFE4A4(v39);
  v41 = v40;

  v92 = v41;
  swift_getKeyPath();
  v42 = v78;
  sub_264D8EFDC(v38, v78, type metadata accessor for UsageOverviewChart);
  v43 = v82;
  sub_264D8EFDC(v30, v82, type metadata accessor for UsageOverviewChart.Day);
  v44 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v45 = (v77 + *(v79 + 80) + v44) & ~*(v79 + 80);
  v46 = swift_allocObject();
  sub_264D89F10(v42, v46 + v44, type metadata accessor for UsageOverviewChart);
  sub_264D89F10(v43, v46 + v45, type metadata accessor for UsageOverviewChart.Day);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_264D9147C;
  *(v47 + 24) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C68, &qword_264E266F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1918, &unk_264E26290);
  sub_264D81DCC(&qword_27FFB1C70, &qword_27FFB1C68, &qword_264E266F0, MEMORY[0x277D83980]);
  sub_264D89D98();
  v48 = v91;
  sub_264E24ED8();
  v49 = v74;
  v50 = v75;
  v51 = *(v74 + 16);
  v52 = v90;
  v51(v90, v36, v75);
  v53 = v83;
  v54 = v84;
  v82 = *(v84 + 16);
  v55 = v48;
  v56 = v85;
  (v82)(v83, v55, v85);
  v57 = v86;
  v51(v86, v52, v50);
  sub_264D89D1C(&qword_27FFB1900, &qword_27FFB1908, &qword_264E26288, sub_264D89D98);
  v58 = v87;
  v59 = *(v87 + 48);
  (v82)(&v57[v59], v53, v56);
  v60 = v88;
  (*(v49 + 32))(v88, v57, v50);
  (*(v54 + 32))(v60 + *(v58 + 48), &v57[v59], v56);
  v61 = *(v54 + 8);
  v61(v91, v56);
  v62 = *(v49 + 8);
  v62(v89, v50);
  v61(v53, v56);
  return (v62)(v90, v50);
}

uint64_t sub_264D870F4(uint64_t a1)
{
  if (qword_27FFB1698 != -1)
  {
    swift_once();
  }

  v1 = sub_264E24F88();
  MEMORY[0x28223BE20](v1);
  sub_264E244E8();
}

uint64_t sub_264D871BC(uint64_t a1)
{
  v2 = sub_264E23AA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UsageOverviewChart(0);
  v7 = UsageOverviewChart.Model.maxUsage.getter();
  v8 = (a1 + *(v6 + 36));
  v9 = *v8;
  v10 = ceil(v7 / 7200.0) * 7200.0;
  if (v10 <= 7200.0)
  {
    v10 = 7200.0;
  }

  v20 = v8[1];
  v18 = v10;
  v19 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1978, &unk_264E262D0);
  sub_264E24D98();
  sub_264E23A98();
  UsageOverviewChart.Model.averageUsage(currentDate:)(v5);
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v13 = (a1 + *(v6 + 40));
  v14 = *v13;
  v15 = v13[1];
  v18 = v12;
  v19 = v14;
  v20 = v15;
  return sub_264E24D98();
}

double UsageOverviewChart.Model.lastY.getter()
{
  result = ceil(UsageOverviewChart.Model.maxUsage.getter() / 7200.0) * 7200.0;
  if (result <= 7200.0)
  {
    return 7200.0;
  }

  return result;
}

void UsageOverviewChart.Model.averageUsage(currentDate:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v38 - v5;
  v7 = type metadata accessor for UsageOverviewChart.Day(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UsageOverviewChart.Model(0);
  v12 = *(v1 + *(v11 + 20));
  v44 = v2;

  sub_264D826BC(sub_264D8EF8C, v43, v12);
  v42 = a1;
  sub_264D826BC(sub_264D8EFBC, v41, v13);
  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v38[1] = v11;
    v39 = a1;
    v40 = v2;
    v45 = MEMORY[0x277D84F90];
    sub_264D8D0F4(0, v16, 0);
    v17 = v45;
    v18 = v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v19 = *(v8 + 72);
    do
    {
      sub_264D8EFDC(v18, v10, type metadata accessor for UsageOverviewChart.Day);
      v20 = *&v10[*(v7 + 20)];
      sub_264D902E4(v10, type metadata accessor for UsageOverviewChart.Day);
      v45 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_264D8D0F4((v21 > 1), v22 + 1, 1);
        v17 = v45;
      }

      *(v17 + 16) = v22 + 1;
      *(v17 + 8 * v22 + 32) = v20;
      v18 += v19;
      --v16;
    }

    while (v16);

    a1 = v39;
    v2 = v40;
    v23 = *(v17 + 16);
    if (!v23)
    {
      goto LABEL_16;
    }
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
    v23 = *(MEMORY[0x277D84F90] + 16);
    if (!v23)
    {
      goto LABEL_16;
    }
  }

  if (v23 <= 3)
  {
    v24 = 0;
    v25 = 0.0;
LABEL_14:
    v28 = v23 - v24;
    v29 = (v17 + 8 * v24 + 32);
    do
    {
      v30 = *v29++;
      v25 = v25 + v30;
      --v28;
    }

    while (v28);
    goto LABEL_16;
  }

  v24 = v23 & 0x7FFFFFFFFFFFFFFCLL;
  v26 = (v17 + 48);
  v25 = 0.0;
  v27 = v23 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v25 = v25 + *(v26 - 2) + *(v26 - 1) + *v26 + v26[1];
    v26 += 4;
    v27 -= 4;
  }

  while (v27);
  if (v23 != v24)
  {
    goto LABEL_14;
  }

LABEL_16:

  v31 = sub_264E23AA8();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v6, a1, v31);
  (*(v32 + 56))(v6, 0, 1, v31);
  Calendar.numberOfDaysElapsedInWeek(containing:endDate:)(v2, v6);
  LOBYTE(v31) = v33;
  sub_264D817BC(v6, &qword_27FFB1860, &qword_264E267E0);
  if (v31)
  {
    if (qword_27FFB1690 != -1)
    {
      swift_once();
    }

    v34 = sub_264E23FC8();
    __swift_project_value_buffer(v34, qword_27FFB6C08);
    v35 = sub_264E23FA8();
    v36 = sub_264E252A8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_264D7D000, v35, v36, "Failed to calculate numberOfDays; returning average = total", v37, 2u);
      MEMORY[0x26674FCD0](v37, -1, -1);
    }
  }
}

uint64_t UsageOverviewChart.Model.xAxisScale.getter()
{
  v0 = sub_264E23C18();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_264E238E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UsageOverviewChart.Model(0);
  (*(v1 + 104))(v3, *MEMORY[0x277CC9940], v0);
  sub_264E23B08();
  (*(v1 + 8))(v3, v0);
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
    sub_264E23AA8();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_264E261F0;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    sub_264E23888();
    (*(v8 + 8))(v10, v7);
    return v12;
  }

  return result;
}

double static UsageOverviewChart.Model.yAxisScale(forLastY:)(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1980, &unk_264E27710);
  v2 = swift_allocObject();
  *&result = 2;
  *(v2 + 16) = xmmword_264E261F0;
  *(v2 + 32) = 0;
  *(v2 + 40) = a1;
  return result;
}

uint64_t sub_264D87B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  v24 = a3;
  v22 = sub_264E23FE8();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v22);
  v6 = type metadata accessor for UsageOverviewChart(0);
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_264E24868();
  MEMORY[0x28223BE20](v8);
  v21 = sub_264E24428();
  v9 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E248E8();
  sub_264E24408();
  sub_264D8EFDC(a2, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UsageOverviewChart);
  v12 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v22;
  (*(v4 + 16))(v12, v23, v22);
  v14 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v15 = (v7 + *(v4 + 80) + v14) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_264D89F10(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14, type metadata accessor for UsageOverviewChart);
  (*(v4 + 32))(v16 + v15, v12, v13);
  sub_264D89FD8(&qword_27FFB1C00, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  v17 = v21;
  sub_264E24F08();

  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_264D87EC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C08, &qword_264E26680);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_264E23AA8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E24418();
  sub_264E23FD8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C10, &qword_264E26688);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    return sub_264D817BC(v2, &qword_27FFB1C08, &qword_264E26680);
  }

  (*(v4 + 32))(v6, v2, v3);
  sub_264D880A4(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_264D880A4(uint64_t a1)
{
  v46 = a1;
  v2 = sub_264E23AA8();
  v51 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  MEMORY[0x28223BE20](v47);
  v5 = &v43 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C18, &qword_264E26690);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v9 - 8);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v45 = &v43 - v12;
  MEMORY[0x28223BE20](v13);
  v49 = &v43 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - v22;
  v24 = type metadata accessor for UsageOverviewChart(0);
  v25 = *(v24 + 28);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  v52 = v23;
  MEMORY[0x26674EFA0]();
  v48 = v25;
  v27 = v46;
  v50 = v26;
  MEMORY[0x26674EFA0](v26);
  v28 = v1 + *(v24 + 20);
  v29 = *(v28 + *(type metadata accessor for UsageOverviewChart.Model(0) + 20));
  v53 = v1;
  v54 = v27;
  sub_264D93B30(sub_264D90E44, v29, v8);
  v30 = type metadata accessor for UsageOverviewChart.Day(0);
  v31 = (*(*(v30 - 8) + 48))(v8, 1, v30);
  v32 = v8;
  v33 = v51;
  sub_264D817BC(v32, &qword_27FFB1C18, &qword_264E26690);
  if (v31 != 1)
  {
    sub_264E23AF8();
    sub_264D817BC(v20, &qword_27FFB1860, &qword_264E267E0);
    (*(v33 + 56))(v17, 0, 1, v2);
    sub_264D90E64(v17, v20, &qword_27FFB1860, &qword_264E267E0);
  }

  v34 = *(v47 + 48);
  sub_264D81744(v52, v5, &qword_27FFB1860, &qword_264E267E0);
  sub_264D81744(v20, &v5[v34], &qword_27FFB1860, &qword_264E267E0);
  v35 = *(v33 + 48);
  if (v35(v5, 1, v2) == 1)
  {
    if (v35(&v5[v34], 1, v2) == 1)
    {
      v47 = v28;
      sub_264D817BC(v5, &qword_27FFB1860, &qword_264E267E0);
      v36 = v49;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v37 = v45;
  sub_264D81744(v5, v45, &qword_27FFB1860, &qword_264E267E0);
  if (v35(&v5[v34], 1, v2) == 1)
  {
    (*(v51 + 8))(v37, v2);
LABEL_8:
    sub_264D817BC(v5, &qword_27FFB1858, &unk_264E26200);
    v36 = v49;
LABEL_9:
    sub_264D81744(v20, v36, &qword_27FFB1860, &qword_264E267E0);
    goto LABEL_14;
  }

  v47 = v28;
  v38 = v43;
  (*(v51 + 32))(v43, &v5[v34], v2);
  sub_264D89FD8(&qword_27FFB1868, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  LODWORD(v46) = sub_264E25068();
  v39 = *(v51 + 8);
  v39(v38, v2);
  v39(v45, v2);
  sub_264D817BC(v5, &qword_27FFB1860, &qword_264E267E0);
  v36 = v49;
  if ((v46 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_11:
  v40 = v44;
  MEMORY[0x26674EFA0](v50);
  v41 = v35(v40, 1, v2);
  sub_264D817BC(v40, &qword_27FFB1860, &qword_264E267E0);
  if (v41 == 1)
  {
    sub_264D83DB4(v36);
  }

  else
  {
    (*(v51 + 56))(v36, 1, 1, v2);
  }

LABEL_14:
  sub_264D81744(v36, v17, &qword_27FFB1860, &qword_264E267E0);
  sub_264E24E58();
  sub_264D817BC(v36, &qword_27FFB1860, &qword_264E267E0);
  sub_264D817BC(v20, &qword_27FFB1860, &qword_264E267E0);
  return sub_264D817BC(v52, &qword_27FFB1860, &qword_264E267E0);
}

uint64_t sub_264D8876C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_264E23AA8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23AF8();
  v7 = sub_264E23A78();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

uint64_t sub_264D8886C@<X0>(unint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v68 = a5;
  v57 = a2;
  v58 = a3;
  v56 = a1;
  v66 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1920, &unk_264E276D0);
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x28223BE20](v9);
  v61 = &v49[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C78, &qword_264E266F8);
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x28223BE20](v11);
  v60 = &v49[-v12];
  v13 = sub_264E23AA8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v51 = &v49[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v49[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v20 - 8);
  v54 = &v49[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v67 = &v49[-v23];
  MEMORY[0x28223BE20](v24);
  v26 = &v49[-v25];
  MEMORY[0x28223BE20](v27);
  v29 = &v49[-v28];
  v55 = type metadata accessor for UsageOverviewChart(0);
  v30 = *(v55 + 28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  v59 = a4;
  v53 = v30;
  v52 = v31;
  MEMORY[0x26674EFA0]();
  (*(v14 + 16))(v26, v68, v13);
  (*(v14 + 56))(v26, 0, 1, v13);
  v32 = *(v17 + 56);
  sub_264D81744(v29, v19, &qword_27FFB1860, &qword_264E267E0);
  sub_264D81744(v26, &v19[v32], &qword_27FFB1860, &qword_264E267E0);
  v33 = *(v14 + 48);
  if (v33(v19, 1, v13) == 1)
  {
    sub_264D817BC(v26, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v29, &qword_27FFB1860, &qword_264E267E0);
    if (v33(&v19[v32], 1, v13) == 1)
    {
      sub_264D817BC(v19, &qword_27FFB1860, &qword_264E267E0);
      v35 = v59;
      v34 = v60;
LABEL_12:
      v44 = v61;
      sub_264D89098(v68, v57, v58, v61, a7);
      v73 = UsageOverviewChart.Model.orderedStackedBarColors(index:selectedItem:)(v56, *(v35 + *(v55 + 32)));
      v45 = sub_264E241F8();
      v46 = sub_264D89EB8();
      v69 = v45;
      v70 = MEMORY[0x277D837D0];
      v71 = MEMORY[0x277CBB400];
      v72 = v46;
      swift_getOpaqueTypeConformance2();
      v47 = v65;
      sub_264E24038();

      (*(v64 + 8))(v44, v47);
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  sub_264D81744(v19, v67, &qword_27FFB1860, &qword_264E267E0);
  if (v33(&v19[v32], 1, v13) == 1)
  {
    sub_264D817BC(v26, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v29, &qword_27FFB1860, &qword_264E267E0);
    (*(v14 + 8))(v67, v13);
LABEL_6:
    sub_264D817BC(v19, &qword_27FFB1858, &unk_264E26200);
    v35 = v59;
    v34 = v60;
    goto LABEL_7;
  }

  v42 = v51;
  (*(v14 + 32))(v51, &v19[v32], v13);
  sub_264D89FD8(&qword_27FFB1868, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v50 = sub_264E25068();
  v43 = *(v14 + 8);
  v43(v42, v13);
  sub_264D817BC(v26, &qword_27FFB1860, &qword_264E267E0);
  sub_264D817BC(v29, &qword_27FFB1860, &qword_264E267E0);
  v43(v67, v13);
  sub_264D817BC(v19, &qword_27FFB1860, &qword_264E267E0);
  v35 = v59;
  v34 = v60;
  if (v50)
  {
    goto LABEL_12;
  }

LABEL_7:
  v36 = v54;
  MEMORY[0x26674EFA0](v52);
  v37 = v33(v36, 1, v13);
  sub_264D817BC(v36, &qword_27FFB1860, &qword_264E267E0);
  if (v37 == 1)
  {
    goto LABEL_12;
  }

  v38 = v61;
  sub_264D89098(v68, v57, v58, v61, a7);
  if (qword_27FFB16A0 != -1)
  {
    swift_once();
  }

  v73 = qword_27FFB6C48;
  v39 = sub_264E241F8();
  v40 = sub_264D89EB8();
  v69 = v39;
  v70 = MEMORY[0x277D837D0];
  v71 = MEMORY[0x277CBB400];
  v72 = v40;
  swift_getOpaqueTypeConformance2();
  v41 = v65;
  sub_264E24038();
  (*(v64 + 8))(v38, v41);
LABEL_13:
  (*(v62 + 32))(v66, v34, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C80, &unk_264E26700);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_264D89098@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v32 = a2;
  v33 = a3;
  v28 = a1;
  v34 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C48, &unk_264E266B0);
  MEMORY[0x28223BE20](v6 - 8);
  v29 = &v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_264E23C18();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C58, &qword_264E266C0);
  MEMORY[0x28223BE20](v15 - 8);
  v27 = &v27 - v16;
  v17 = sub_264E241F8();
  v18 = *(v17 - 8);
  v30 = v17;
  v31 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E247D8();
  (*(v12 + 104))(v14, *MEMORY[0x277CC99B8], v11);
  v21 = sub_264E23C38();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  v22 = v28;
  sub_264E240E8();

  sub_264D817BC(v10, &qword_27FFB1C50, &unk_264E267D0);
  (*(v12 + 8))(v14, v11);
  sub_264E247D8();
  v35 = *(v22 + *(type metadata accessor for UsageOverviewChart.Day(0) + 20)) * a5;
  sub_264E240F8();

  v23 = [objc_opt_self() currentDevice];
  v24 = [v23 model];

  sub_264E25108();
  sub_264E251A8();

  sub_264E23AA8();
  sub_264E241E8();
  v35 = v32;
  v36 = v33;
  sub_264D89EB8();
  v25 = v30;
  sub_264E24048();
  return (*(v31 + 8))(v20, v25);
}

void *UsageOverviewChart.Model.orderedStackedBarColors(index:selectedItem:)(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(type metadata accessor for UsageOverviewChart.Model(0) + 28));
  if (a2 && *(a2 + 16))
  {
    v6 = type metadata accessor for UsageOverviewChart.Day(0);
    v7 = *(a2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(v6 + 24));
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = sub_264D8C29C(*(v7 + 16), 0);
      v10 = sub_264D8E260(&v14, v9 + 4, v8, v7);
      v11 = v14;

      sub_264D8F07C(v11);
      if (v10 == v8)
      {
LABEL_7:
        v5 = v9[2];

        goto LABEL_8;
      }

      __break(1u);
    }

    v9 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

LABEL_8:
  result = (v5 + 1);
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  result = sub_264E17574(result, 1);
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result[2] > a1)
  {
    v13 = result[a1 + 4];

    return v13;
  }

LABEL_14:
  __break(1u);
  return result;
}

double UsageOverviewChart.Model.maxUsage.getter()
{
  v1 = type metadata accessor for UsageOverviewChart.Day(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + *(type metadata accessor for UsageOverviewChart.Model(0) + 20));
  v23 = v0;

  sub_264D826BC(sub_264D91648, v22, v5);
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8)
  {
    v24 = MEMORY[0x277D84F90];
    sub_264D8D0F4(0, v8, 0);
    v9 = v24;
    v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_264D8EFDC(v10, v4, type metadata accessor for UsageOverviewChart.Day);
      v12 = *&v4[*(v1 + 20)];
      sub_264D902E4(v4, type metadata accessor for UsageOverviewChart.Day);
      v24 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_264D8D0F4((v13 > 1), v14 + 1, 1);
        v9 = v24;
      }

      *(v9 + 16) = v14 + 1;
      *(v9 + 8 * v14 + 32) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);

    v15 = *(v9 + 16);
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_14:
    v16 = 0.0;
    goto LABEL_15;
  }

  v9 = MEMORY[0x277D84F90];
  v15 = *(MEMORY[0x277D84F90] + 16);
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  v16 = *(v9 + 32);
  v17 = v15 - 1;
  if (v17)
  {
    v18 = (v9 + 40);
    do
    {
      v19 = *v18++;
      v20 = v19;
      if (v16 < v19)
      {
        v16 = v20;
      }

      --v17;
    }

    while (v17);
  }

LABEL_15:

  return v16;
}

uint64_t sub_264D89928(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

BOOL sub_264D8996C(uint64_t a1, uint64_t a2)
{
  sub_264E23AA8();
  sub_264D89FD8(&qword_27FFB1BF0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  return (sub_264E25048() & 1) == 0;
}

unint64_t sub_264D89A08()
{
  result = qword_27FFB18D0;
  if (!qword_27FFB18D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB18C8, &qword_264E26268);
    sub_264D89D1C(&qword_27FFB18D8, &qword_27FFB18E0, &qword_264E26270, sub_264D89BDC);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1930, &unk_264E262A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1938, &unk_264E276E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1940, &unk_264E262B0);
    sub_264E24288();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB18D0);
  }

  return result;
}

unint64_t sub_264D89BDC()
{
  result = qword_27FFB18E8;
  if (!qword_27FFB18E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB18F0, &qword_264E26278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB18F8, &qword_264E26280);
    sub_264E241F8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_264D89D1C(&qword_27FFB1900, &qword_27FFB1908, &qword_264E26288, sub_264D89D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB18E8);
  }

  return result;
}

uint64_t sub_264D89D1C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_264D89D98()
{
  result = qword_27FFB1910;
  if (!qword_27FFB1910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1918, &unk_264E26290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1920, &unk_264E276D0);
    sub_264E241F8();
    sub_264D89EB8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1910);
  }

  return result;
}

unint64_t sub_264D89EB8()
{
  result = qword_27FFB1928;
  if (!qword_27FFB1928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1928);
  }

  return result;
}

uint64_t sub_264D89F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264D89F78()
{
  v1 = *(type metadata accessor for UsageOverviewChart(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_264D870F4(v2);
}

uint64_t sub_264D89FD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264D8A020(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_264D8A16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v28 = a8;
  v29 = a4;
  v30 = a9;
  v31 = a11;
  v18 = sub_264E24118();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = sub_264E24098();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v28 - v23;
  (*(v21 + 16))(&v28 - v23, a5, v20, v22);
  v25 = (*(v21 + 80) + 49) & ~*(v21 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3 & 1;
  *(v26 + 32) = a1;
  *(v26 + 40) = a10;
  *(v26 + 48) = v29 & 1;
  (*(v21 + 32))(v26 + v25, v24, v20);
  swift_bridgeObjectRetain_n();
  sub_264E24088();
  sub_264E24108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1A90, &qword_264E26510);
  sub_264D903E0();
  return sub_264E242A8();
}

uint64_t sub_264D8A3D8@<X0>(double a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D0>)
{
  v62 = a6;
  v61 = a5;
  v60 = a4;
  v55 = a3;
  v69 = a2;
  v56 = a1;
  v68 = a7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AC0, &qword_264E26528);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - v9;
  v10 = sub_264E24168();
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_264E241B8();
  MEMORY[0x28223BE20](v12 - 8);
  v58 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AB8, &qword_264E26520);
  v14 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v57 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AA8, &qword_264E26518);
  MEMORY[0x28223BE20](v16 - 8);
  v65 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v21 = sub_264E24008();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AC8, &qword_264E26530);
  v25 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v55 - v29;
  sub_264E242C8();
  if (BYTE8(v74))
  {
    v31 = 0.0;
  }

  else
  {
    v31 = *&v74;
  }

  sub_264E24478();
  v74 = v71;
  v75 = v72;
  v76 = v73;
  sub_264E23FF8();
  if (qword_27FFB16B0 != -1)
  {
    swift_once();
  }

  v70 = qword_27FFB6C60;
  v32 = v30;
  sub_264E24208();
  result = (*(v22 + 8))(v24, v21);
  if (v69)
  {
    goto LABEL_13;
  }

  v34 = a8 / (*(v55 + 16) - 1) * 0.5;
  if (v56 - v34 <= v34 + v56)
  {
    if (v56 - v34 <= v31 && v31 <= v34 + v56)
    {
      (*(v14 + 56))(v20, 1, 1, v64);
LABEL_14:
      v38 = v25;
      v39 = *(v25 + 16);
      v40 = v32;
      v41 = v32;
      v42 = v63;
      v39(v27, v41, v63);
      v43 = v65;
      sub_264D81744(v20, v65, &qword_27FFB1AA8, &qword_264E26518);
      v44 = v66;
      v39(v66, v27, v42);
      sub_264D904B8();
      v45 = v67;
      v46 = *(v67 + 48);
      sub_264D81744(v43, &v44[v46], &qword_27FFB1AA8, &qword_264E26518);
      v47 = v68;
      (*(v38 + 32))(v68, v44, v42);
      sub_264D90E64(&v44[v46], v47 + *(v45 + 48), &qword_27FFB1AA8, &qword_264E26518);
      sub_264D817BC(v20, &qword_27FFB1AA8, &qword_264E26518);
      v48 = *(v38 + 8);
      v48(v40, v42);
      sub_264D817BC(v43, &qword_27FFB1AA8, &qword_264E26518);
      return (v48)(v27, v42);
    }

LABEL_13:
    MEMORY[0x28223BE20](result);
    sub_264E241A8();
    sub_264E24158();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AD0, &qword_264E26538);
    v54 = sub_264D90568();
    v52 = &v49;
    v51 = v62;
    LOBYTE(v50) = 1;
    v49 = 0;
    v36 = v57;
    sub_264E240D8();
    v37 = v64;
    (*(v14 + 32))(v20, v36, v64);
    (*(v14 + 56))(v20, 0, 1, v37);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_264D8AB40@<X0>(double a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, char *a5@<X5>, uint64_t a6@<X8>, double a7@<D0>)
{
  v57 = a5;
  v56 = a4;
  v52 = a3;
  v53 = a1;
  v62 = a6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AC0, &qword_264E26528);
  MEMORY[0x28223BE20](v61);
  v60 = &v52 - v9;
  v10 = sub_264E24168();
  MEMORY[0x28223BE20](v10 - 8);
  v55 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_264E241B8();
  MEMORY[0x28223BE20](v12 - 8);
  v54 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AA8, &qword_264E26518);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v20 = sub_264E24008();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AC8, &qword_264E26530);
  v58 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v52 - v28;
  sub_264E242C8();
  if (BYTE8(v67))
  {
    v30 = 0.0;
  }

  else
  {
    v30 = *&v67;
  }

  sub_264E24478();
  v67 = v64;
  v68 = v65;
  v69 = v66;
  sub_264E23FF8();
  if (qword_27FFB16B0 != -1)
  {
    swift_once();
  }

  v63 = qword_27FFB6C60;
  v59 = v29;
  sub_264E24208();
  result = (*(v21 + 8))(v23, v20);
  if (a2)
  {
    goto LABEL_13;
  }

  v32 = a7 / (*(v52 + 16) - 1) * 0.5;
  if (v53 - v32 <= v32 + v53)
  {
    if (v53 - v32 <= v30 && v30 <= v32 + v53)
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AB8, &qword_264E26520);
      (*(*(v35 - 8) + 56))(v19, 1, 1, v35);
LABEL_14:
      v37 = v58;
      v36 = v59;
      v38 = *(v58 + 16);
      v38(v26, v59, v24);
      sub_264D81744(v19, v16, &qword_27FFB1AA8, &qword_264E26518);
      v39 = v60;
      v38(v60, v26, v24);
      sub_264D904B8();
      v57 = v26;
      v40 = v19;
      v41 = v16;
      v42 = v61;
      v43 = *(v61 + 48);
      sub_264D81744(v41, &v39[v43], &qword_27FFB1AA8, &qword_264E26518);
      v44 = v62;
      (*(v37 + 32))(v62, v39, v24);
      sub_264D90E64(&v39[v43], v44 + *(v42 + 48), &qword_27FFB1AA8, &qword_264E26518);
      sub_264D817BC(v40, &qword_27FFB1AA8, &qword_264E26518);
      v45 = *(v37 + 8);
      v45(v36, v24);
      sub_264D817BC(v41, &qword_27FFB1AA8, &qword_264E26518);
      return (v45)(v57, v24);
    }

LABEL_13:
    MEMORY[0x28223BE20](result);
    sub_264E241A8();
    sub_264E24158();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AD0, &qword_264E26538);
    v51 = sub_264D90568();
    v48 = sub_264D90A00;
    v49 = &v46;
    LOBYTE(v47) = 1;
    v46 = 0;
    sub_264E240D8();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AB8, &qword_264E26520);
    (*(*(v34 - 8) + 56))(v19, 0, 1, v34);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_264D8B214@<X0>(double a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D0>)
{
  v56 = a5;
  v55 = a4;
  v51 = a3;
  LODWORD(v61) = a2;
  v52 = a1;
  v60 = a6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AC0, &qword_264E26528);
  MEMORY[0x28223BE20](v59);
  v58 = &v51 - v8;
  v9 = sub_264E24168();
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264E241B8();
  MEMORY[0x28223BE20](v11 - 8);
  v53 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AA8, &qword_264E26518);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  v19 = sub_264E24008();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AC8, &qword_264E26530);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v51 - v28;
  sub_264E242C8();
  if (BYTE8(v66))
  {
    v30 = 0.0;
  }

  else
  {
    v30 = *&v66;
  }

  sub_264E24478();
  v66 = v63;
  v67 = v64;
  v68 = v65;
  sub_264E23FF8();
  if (qword_27FFB16B0 != -1)
  {
    swift_once();
  }

  v62 = qword_27FFB6C60;
  v57 = v29;
  sub_264E24208();
  result = (*(v20 + 8))(v22, v19);
  if (v61)
  {
    goto LABEL_13;
  }

  v32 = a7 / (*(v51 + 16) - 1) * 0.5;
  if (v52 - v32 <= v32 + v52)
  {
    if (v52 - v32 <= v30 && v30 <= v32 + v52)
    {
      v34 = 1;
LABEL_14:
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AB8, &qword_264E26520);
      (*(*(v35 - 8) + 56))(v18, v34, 1, v35);
      v36 = *(v24 + 16);
      v37 = v57;
      v36(v26, v57, v23);
      sub_264D81744(v18, v15, &qword_27FFB1AA8, &qword_264E26518);
      v38 = v58;
      v36(v58, v26, v23);
      sub_264D904B8();
      v61 = v26;
      v39 = v18;
      v40 = v15;
      v41 = v59;
      v42 = *(v59 + 48);
      sub_264D81744(v40, &v38[v42], &qword_27FFB1AA8, &qword_264E26518);
      v43 = v60;
      (*(v24 + 32))(v60, v38, v23);
      sub_264D90E64(&v38[v42], v43 + *(v41 + 48), &qword_27FFB1AA8, &qword_264E26518);
      sub_264D817BC(v39, &qword_27FFB1AA8, &qword_264E26518);
      v44 = *(v24 + 8);
      v44(v37, v23);
      sub_264D817BC(v40, &qword_27FFB1AA8, &qword_264E26518);
      return (v44)(v61, v23);
    }

LABEL_13:
    MEMORY[0x28223BE20](result);
    sub_264E241A8();
    sub_264E24158();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AD0, &qword_264E26538);
    v50 = sub_264D90568();
    v47 = sub_264D91668;
    v48 = &v45;
    LOBYTE(v46) = 1;
    v45 = 0;
    sub_264E240D8();
    v34 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_264D8B8A8(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AF8, &qword_264E26548);
  MEMORY[0x28223BE20](v8 - 8);
  if (a4 == 3600.0 && (a1 & 1) == 0)
  {
    v11 = 64;
  }

  else
  {
    v11 = 96;
  }

  v12 = a4 * 0.5;
  v47 = &v46 - v9;
  if (a3 == a4 || v12 == a3)
  {
    if ((a1 & 1) == 0)
    {
      v16 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
      [v16 setAllowedUnits_];
      [v16 setUnitsStyle_];
      [v16 setZeroFormattingBehavior_];
      v17 = [v16 stringFromTimeInterval_];
      if (v17)
      {
        v18 = v17;
        v13 = sub_264E25108();
        v20 = v19;

        v14 = v20;
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (a3 > -9.22337204e18)
    {
      if (a3 < 9.22337204e18)
      {
        *&v53 = a3;
        sub_264D908C4();
        v13 = sub_264E25348();
        v14 = v15;
        goto LABEL_17;
      }

LABEL_33:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_9:
  v13 = 0;
  v14 = 0xE000000000000000;
LABEL_17:
  v46 = a2;
  if (a3 == 0.0)
  {

    v14 = 0xE100000000000000;
    v13 = 48;
  }

  *&v53 = v13;
  *(&v53 + 1) = v14;
  sub_264D89EB8();
  v21 = sub_264E24AF8();
  v23 = v22;
  v25 = v24;
  sub_264E24A78();
  v26 = sub_264E24AD8();
  v28 = v27;
  v30 = v29;

  sub_264D817AC(v21, v23, v25 & 1);

  if (qword_27FFB16B8 != -1)
  {
    swift_once();
  }

  *&v53 = qword_27FFB6C68;

  v31 = sub_264E24AC8();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_264D817AC(v26, v28, v30 & 1);

  sub_264E24F68();
  sub_264E244B8();
  v59 = v35 & 1;
  *&v53 = v31;
  *(&v53 + 1) = v33;
  LOBYTE(v54) = v35 & 1;
  *(&v54 + 1) = *v58;
  DWORD1(v54) = *&v58[3];
  *(&v54 + 1) = v37;
  if (v12 == a3)
  {
    v38 = 65;
  }

  else
  {
    v38 = 66;
  }

  if (a3 == a4)
  {
    v38 = 64;
  }

  if (a3 == 0.0)
  {
    v39 = 63;
  }

  else
  {
    v39 = v38;
  }

  v50 = v55;
  v51 = v56;
  v52 = v57;
  v49 = v54;
  v48 = v53;
  sub_264DFBB3C(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B08, &qword_264E26550);
  sub_264D90794();
  v40 = v47;
  sub_264E24C08();
  sub_264D817BC(&v53, &qword_27FFB1B08, &qword_264E26550);

  KeyPath = swift_getKeyPath();
  v42 = v46;
  sub_264D90E64(v40, v46, &qword_27FFB1AF8, &qword_264E26548);
  v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AE8, &qword_264E26540) + 36);
  *v43 = KeyPath;
  *(v43 + 8) = 1;
  v44 = swift_getKeyPath();
  v45 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AD0, &qword_264E26538) + 36));
  *v45 = v44;
  v45[1] = 0x3FE0000000000000;
}

uint64_t sub_264D8BD88@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if ((result & 1) == 0 && a4 == 3600.0)
  {
    v8 = 64;
  }

  else
  {
    v8 = 96;
  }

  v9 = a4 * 0.5;
  if (a3 != a4 && v9 != a3)
  {
    goto LABEL_20;
  }

  if (result)
  {
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (a3 > -9.22337204e18)
    {
      if (a3 < 9.22337204e18)
      {
        v42 = a3;
        sub_264D908C4();
        v11 = sub_264E25348();
        v13 = v12;
        goto LABEL_21;
      }

LABEL_36:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v14 setAllowedUnits_];
  [v14 setUnitsStyle_];
  [v14 setZeroFormattingBehavior_];
  v15 = [v14 stringFromTimeInterval_];
  if (!v15)
  {

LABEL_20:
    v11 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_21;
  }

  v16 = v15;
  v11 = sub_264E25108();
  v18 = v17;

  v13 = v18;
LABEL_21:
  if (a3 == 0.0)
  {

    v13 = 0xE100000000000000;
    v11 = 48;
  }

  v42 = v11;
  v43 = v13;
  sub_264D89EB8();
  v19 = sub_264E24AF8();
  v21 = v20;
  v23 = v22;
  sub_264E24A78();
  v24 = sub_264E24AD8();
  v26 = v25;
  v28 = v27;

  sub_264D817AC(v19, v21, v23 & 1);

  if (qword_27FFB16B8 != -1)
  {
    swift_once();
  }

  v29 = sub_264E24AC8();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_264D817AC(v24, v26, v28 & 1);

  sub_264E24F68();
  sub_264E244B8();
  v48 = v33 & 1;
  v42 = v29;
  v43 = v31;
  v44 = v33 & 1;
  *v45 = *v47;
  *&v45[3] = *&v47[3];
  v46 = v35;
  if (v9 == a3)
  {
    v36 = 65;
  }

  else
  {
    v36 = 66;
  }

  if (a3 == a4)
  {
    v36 = 64;
  }

  if (a3 == 0.0)
  {
    v37 = 63;
  }

  else
  {
    v37 = v36;
  }

  sub_264DFBB3C(v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B08, &qword_264E26550);
  sub_264D90794();
  sub_264E24C08();
  sub_264D817BC(&v42, &qword_27FFB1B08, &qword_264E26550);

  KeyPath = swift_getKeyPath();
  v39 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AE8, &qword_264E26540) + 36);
  *v39 = KeyPath;
  *(v39 + 8) = 1;
  v40 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AD0, &qword_264E26538);
  v41 = (a2 + *(result + 36));
  *v41 = v40;
  v41[1] = 0x3FE0000000000000;
  return result;
}

uint64_t sub_264D8C1C0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void *sub_264D8C20C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B48, &unk_264E265D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_264D8C29C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B40, &qword_264E265C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_264D8C35C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x4924924924924925) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 4) + (v9 >> 63));
  return result;
}

void *sub_264D8C3EC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB0, &qword_264E26638);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_264D8C4F4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_264DA4924(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_264D8C560(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_264D8C560(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_264E25458();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B50, &unk_264E2A660);
        v5 = sub_264E251E8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_264D8C768(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_264D8C668(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_264D8C668(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 24 * v4;
    result = *v9;
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    v12 = v8;
    v13 = v7;
    while (1)
    {
      v14 = *(v13 + 16);
      if (v11 == v14)
      {
        v15 = result == *v13 && v10 == *(v13 + 8);
        if (v15 || (result = sub_264E25478(), (result & 1) == 0))
        {
LABEL_4:
          ++v4;
          v7 += 24;
          --v8;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else if (v14 >= v11)
      {
        goto LABEL_4;
      }

      if (!v6)
      {
        break;
      }

      result = *(v13 + 24);
      v10 = *(v13 + 32);
      v11 = *(v13 + 40);
      v16 = *(v13 + 16);
      *(v13 + 24) = *v13;
      *(v13 + 40) = v16;
      *v13 = result;
      *(v13 + 8) = v10;
      *(v13 + 16) = v11;
      v13 -= 24;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_264D8C768(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v99 = result;
  v5 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_112:
    v9 = *v99;
    if (!*v99)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_144:
      result = sub_264D9E01C(v8);
      v8 = result;
    }

    v92 = *(v8 + 2);
    if (v92 >= 2)
    {
      while (*v5)
      {
        v93 = *&v8[16 * v92];
        v94 = *&v8[16 * v92 + 24];
        sub_264D8CDC8((*v5 + 24 * v93), (*v5 + 24 * *&v8[16 * v92 + 16]), *v5 + 24 * v94, v9);
        if (v4)
        {
        }

        if (v94 < v93)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_264D9E01C(v8);
        }

        if (v92 - 2 >= *(v8 + 2))
        {
          goto LABEL_138;
        }

        v95 = &v8[16 * v92];
        *v95 = v93;
        *(v95 + 1) = v94;
        result = sub_264D9DF90(v92 - 1);
        v92 = *(v8 + 2);
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_148;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 24 * v7;
      v12 = *(v11 + 16);
      v13 = *v5 + 24 * v9;
      v14 = *(v13 + 16);
      if (v12 == v14)
      {
        result = *v11;
        if (*v11 == *v13 && *(v11 + 8) == *(v13 + 8))
        {
          v16 = 0;
        }

        else
        {
          result = sub_264E25478();
          v16 = result;
        }
      }

      else
      {
        v16 = v14 < v12;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v17 = v10 + 24 * v9 + 32;
        do
        {
          v18 = *(v17 + 32);
          v19 = *(v17 + 8);
          if (v18 == v19)
          {
            result = *(v17 + 16);
            if (result == *(v17 - 8) && *(v17 + 24) == *v17)
            {
              if (v16)
              {
                goto LABEL_28;
              }
            }

            else
            {
              result = sub_264E25478();
              if ((v16 ^ result))
              {
                goto LABEL_25;
              }
            }
          }

          else
          {
            result = v19 < v18;
            if ((v16 ^ result))
            {
              goto LABEL_25;
            }
          }

          ++v7;
          v17 += 24;
        }

        while (v6 != v7);
        v7 = v6;
        if ((v16 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_28:
        if (v7 < v9)
        {
          goto LABEL_141;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = 24 * v9;
          v23 = v7;
          v24 = v9;
          do
          {
            if (v24 != --v23)
            {
              v31 = *v5;
              if (!*v5)
              {
                goto LABEL_147;
              }

              v25 = (v31 + v22);
              v26 = (v31 + v21);
              v27 = *v25;
              v28 = v25[1];
              v29 = v25[2];
              v30 = *v26;
              *v25 = *(v26 - 1);
              v25[2] = v30;
              *(v26 - 2) = v27;
              *(v26 - 1) = v28;
              *v26 = v29;
            }

            v24 = (v24 + 1);
            v21 -= 24;
            v22 += 24;
          }

          while (v24 < v23);
        }

        goto LABEL_36;
      }

LABEL_25:
      if (v16)
      {
        goto LABEL_28;
      }
    }

LABEL_36:
    v32 = v5[1];
    if (v7 < v32)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_140;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_142;
        }

        if (v9 + a4 >= v32)
        {
          v33 = v5[1];
        }

        else
        {
          v33 = (v9 + a4);
        }

        if (v33 < v9)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (v7 != v33)
        {
          break;
        }
      }
    }

LABEL_61:
    if (v7 < v9)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_264D9E030(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v47 = *(v8 + 2);
    v46 = *(v8 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = sub_264D9E030((v46 > 1), v47 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v48;
    v49 = &v8[16 * v47];
    *(v49 + 4) = v9;
    *(v49 + 5) = v7;
    v50 = *v99;
    if (!*v99)
    {
      goto LABEL_149;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v8 + 4);
          v53 = *(v8 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_81:
          if (v55)
          {
            goto LABEL_128;
          }

          v68 = &v8[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_131;
          }

          v74 = &v8[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_135;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        v78 = &v8[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_95:
        if (v73)
        {
          goto LABEL_130;
        }

        v81 = &v8[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_133;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_102:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
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
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v5)
        {
          goto LABEL_146;
        }

        v9 = *&v8[16 * v89 + 32];
        v90 = *&v8[16 * v51 + 40];
        sub_264D8CDC8((*v5 + 24 * v9), (*v5 + 24 * *&v8[16 * v51 + 32]), *v5 + 24 * v90, v50);
        if (v4)
        {
        }

        if (v90 < v9)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_264D9E01C(v8);
        }

        if (v89 >= *(v8 + 2))
        {
          goto LABEL_125;
        }

        v91 = &v8[16 * v89];
        *(v91 + 4) = v9;
        *(v91 + 5) = v90;
        result = sub_264D9DF90(v51);
        v48 = *(v8 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v8[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_126;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_127;
      }

      v63 = &v8[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_129;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_132;
      }

      if (v67 >= v59)
      {
        v85 = &v8[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_136;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_81;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_112;
    }
  }

  v96 = v9;
  v97 = v5;
  v34 = *v5;
  v35 = *v5 + 24 * v7 - 24;
  v36 = (v9 - v7);
LABEL_47:
  v37 = v34 + 24 * v7;
  result = *v37;
  v38 = *(v37 + 8);
  v39 = *(v37 + 16);
  v40 = v36;
  v41 = v35;
  while (1)
  {
    v42 = *(v41 + 16);
    if (v39 == v42)
    {
      v43 = result == *v41 && v38 == *(v41 + 8);
      if (v43 || (result = sub_264E25478(), (result & 1) == 0))
      {
LABEL_46:
        ++v7;
        v35 += 24;
        --v36;
        if (v7 != v33)
        {
          goto LABEL_47;
        }

        v7 = v33;
        v9 = v96;
        v5 = v97;
        goto LABEL_61;
      }
    }

    else if (v42 >= v39)
    {
      goto LABEL_46;
    }

    if (!v34)
    {
      break;
    }

    result = *(v41 + 24);
    v38 = *(v41 + 32);
    v39 = *(v41 + 40);
    v44 = *(v41 + 16);
    *(v41 + 24) = *v41;
    *(v41 + 40) = v44;
    *v41 = result;
    *(v41 + 8) = v38;
    *(v41 + 16) = v39;
    v41 -= 24;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

uint64_t sub_264D8CDC8(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[3 * v11] <= a4)
    {
      memmove(a4, __src, 24 * v11);
    }

    v12 = &v4[3 * v11];
    if (v10 < 24 || v6 <= v7)
    {
      v20 = v6;
    }

    else
    {
LABEL_27:
      v18 = 0;
      v19 = v12;
      v20 = v6 - 3;
      do
      {
        v21 = &v19[v18];
        v22 = v19[v18 - 1];
        v23 = *(v6 - 1);
        if (v22 == v23)
        {
          v24 = *&v19[v18 - 3] == *(v6 - 3) && *(v21 - 2) == *(v6 - 2);
          if (!v24 && (sub_264E25478() & 1) != 0)
          {
LABEL_39:
            v27 = (v5 + v18 * 8);
            v5 = v5 + v18 * 8 - 24;
            if (v27 != v6)
            {
              v28 = *v20;
              *(v5 + 16) = *(v6 - 1);
              *v5 = v28;
            }

            v12 = &v19[v18];
            if (&v19[v18] <= v4 || (v6 -= 3, v20 <= v7))
            {
              v12 = &v19[v18];
              goto LABEL_47;
            }

            goto LABEL_27;
          }
        }

        else if (v23 < v22)
        {
          goto LABEL_39;
        }

        if ((v5 + v18 * 8) != v21)
        {
          v25 = v5 + v18 * 8 - 24;
          v26 = *&v19[v18 - 3];
          *(v25 + 16) = v19[v18 - 1];
          *v25 = v26;
        }

        v18 -= 3;
        v12 = &v19[v18];
      }

      while (&v19[v18] > v4);
      v20 = v6;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 >= 24 && v6 < v5)
    {
      do
      {
        v13 = v6[2];
        v14 = v4[2];
        if (v13 == v14)
        {
          v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
          if (v15 || (sub_264E25478() & 1) == 0)
          {
LABEL_13:
            v16 = v4;
            v15 = v7 == v4;
            v4 += 3;
            if (v15)
            {
              goto LABEL_15;
            }

LABEL_14:
            v17 = *v16;
            v7[2] = v16[2];
            *v7 = v17;
            goto LABEL_15;
          }
        }

        else if (v14 >= v13)
        {
          goto LABEL_13;
        }

        v16 = v6;
        v15 = v7 == v6;
        v6 += 3;
        if (!v15)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 3;
      }

      while (v4 < v12 && v6 < v5);
    }

    v20 = v7;
  }

LABEL_47:
  v29 = (v12 - v4) / 24;
  if (v20 != v4 || v20 >= &v4[3 * v29])
  {
    memmove(v20, v4, 24 * v29);
  }

  return 1;
}

void *sub_264D8D090(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1BF8, &qword_264E27100, type metadata accessor for UsageOverviewChart.Day);
  *v3 = result;
  return result;
}

char *sub_264D8D0D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8D50C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_264D8D0F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8D63C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_264D8D114(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8DEC0(a1, a2, a3, *v3, &qword_27FFB1A60, &qword_264E264E0, &type metadata for MostUsedList.Item);
  *v3 = result;
  return result;
}

void *sub_264D8D14C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1BE8, &unk_264E26670, type metadata accessor for NotificationsDetailChart.Model);
  *v3 = result;
  return result;
}

void *sub_264D8D190(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1B98, &qword_264E26620, MEMORY[0x277CC88A8]);
  *v3 = result;
  return result;
}

void *sub_264D8D1D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1BE0, &unk_264E270D0, type metadata accessor for PickupsDetailChart.Model);
  *v3 = result;
  return result;
}

void *sub_264D8D218(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1BD0, &unk_264E27090, type metadata accessor for OverviewChart.Day);
  *v3 = result;
  return result;
}

void *sub_264D8D25C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1BC8, &unk_264E26650, type metadata accessor for DetailChart.Hour);
  *v3 = result;
  return result;
}

void *sub_264D8D2A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1BA8, &qword_264E26630, type metadata accessor for NotificationsOverviewChart.Model);
  *v3 = result;
  return result;
}

char *sub_264D8D2E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8DB44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_264D8D304(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1BA0, &qword_264E26628, type metadata accessor for PickupsOverviewChart.Model);
  *v3 = result;
  return result;
}

void *sub_264D8D348(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8DD5C(a1, a2, a3, *v3, &qword_27FFB1B80, &unk_264E27060, &qword_27FFB1B88, &qword_264E26610);
  *v3 = result;
  return result;
}

char *sub_264D8D388(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8DC50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_264D8D3A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8DD5C(a1, a2, a3, *v3, &qword_27FFB1B70, &qword_264E265F8, &qword_27FFB1B78, &unk_264E26600);
  *v3 = result;
  return result;
}

void *sub_264D8D3E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1B68, &qword_264E265F0, type metadata accessor for UsageOverviewChart.Model);
  *v3 = result;
  return result;
}

void *sub_264D8D42C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1B60, &qword_264E265E8, type metadata accessor for UsageDetailChart.Model);
  *v3 = result;
  return result;
}

void *sub_264D8D470(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1B58, &qword_264E265E0, type metadata accessor for UsageDetailChart.HourlyUsage);
  *v3 = result;
  return result;
}

char *sub_264D8D4B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8DEC0(a1, a2, a3, *v3, &qword_27FFB1A68, &qword_264E264E8, &type metadata for MostUsedListSectionNotifications.Item);
  *v3 = result;
  return result;
}

char *sub_264D8D4EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264D8DFE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_264D8D50C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B40, &qword_264E265C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_264D8D63C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1980, &unk_264E27710);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_264D8D75C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_264D8D954(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB0, &qword_264E26638);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_264D8DB44(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C88, qword_264E27110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_264D8DC50(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B90, &qword_264E26618);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_264D8DD5C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_264D8DEC0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 56);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[56 * v11])
    {
      memmove(v15, v16, 56 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_264D8DFE4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1A80, &unk_264E26500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_264D8E104(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_264D8E260(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_264D8E3BC(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 64;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v10;
    v4[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v24 = -1 << *(a4 + 32);
    v25 = a3;
    result = 0;
    v10 = 0;
    v11 = (63 - v6) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_14:
      v15 = a4;
      v16 = *(a4 + 56) + 56 * (__clz(__rbit64(v8)) | (v10 << 6));
      v17 = *(v16 + 8);
      v8 &= v8 - 1;
      v19 = *(v16 + 32);
      v18 = *(v16 + 40);
      v20 = *(v16 + 48);
      v21 = *(v16 + 16);
      *v9 = *v16;
      *(v9 + 8) = v17;
      *(v9 + 16) = v21;
      *(v9 + 32) = v19;
      *(v9 + 40) = v18;
      *(v9 + 48) = v20;
      if (v12 == v25)
      {

        a4 = v15;
        v6 = v24;
        a3 = v25;
        goto LABEL_24;
      }

      v9 += 56;

      result = v12;
      v22 = __OFADD__(v12++, 1);
      a4 = v15;
      if (v22)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v8 = 0;
    if (v11 <= v10 + 1)
    {
      v23 = v10 + 1;
    }

    else
    {
      v23 = v11;
    }

    v10 = v23 - 1;
    a3 = result;
    v6 = v24;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_264D8E568(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = (&v34 - v10);
  v41 = a4;
  v13 = *(a4 + 64);
  v12 = a4 + 64;
  v11 = v13;
  v14 = -1 << *(v12 - 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v11;
  if (!a2)
  {
LABEL_18:
    v23 = 0;
LABEL_25:
    *a1 = v41;
    a1[1] = v12;
    a1[2] = ~v14;
    a1[3] = v23;
    a1[4] = v16;
    return;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(v12 - 32);
    v36 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v17;
      v24 = v22 | (v17 << 6);
      v25 = v41;
      v26 = *(v41 + 48);
      v27 = sub_264E23AA8();
      v28 = *(v27 - 8);
      v29 = v26 + *(v28 + 72) * v24;
      v30 = v39;
      (*(v28 + 16))(v39, v29, v27);
      *&v30[*(v40 + 48)] = *(*(v25 + 56) + 8 * v24);
      v31 = v30;
      a1 = v38;
      sub_264D90E64(v31, v38, &qword_27FFB1BB8, &unk_264E26640);
      sub_264D90E64(a1, a2, &qword_27FFB1BB8, &unk_264E26640);
      if (v19 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v37 + 72);
      v32 = __OFADD__(v19++, 1);
      v17 = v23;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v12 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v23 = v33 - 1;
LABEL_23:
    v14 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

void *sub_264D8E80C(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 56 * (v17 | (v12 << 6)));
      v20 = *(v18 + 1);
      v19 = *(v18 + 2);
      v21 = *v18;
      *&v26[15] = *(v18 + 47);
      v25[1] = v20;
      *v26 = v19;
      v25[0] = v21;
      memmove(v11, v18, 0x33uLL);
      if (v14 == v10)
      {
        sub_264D90348(v25, v24);
        goto LABEL_24;
      }

      v11 += 56;
      sub_264D90348(v25, v24);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void _s16ScreenTimeUICore18UsageOverviewChartV5ModelV7yStride8forLastYSaySdGSd_tFZ_0(double a1)
{
  v1 = a1 * 0.25;
  if (a1 * 0.25 == 0.0)
  {
    goto LABEL_34;
  }

  v2 = a1 + 60.0;
  v3 = a1 + 60.0 >= 0.0;
  if (v1 > 0.0)
  {
    v3 = a1 + 60.0 <= 0.0;
  }

  if (!v3)
  {
    v5 = 0;
    while (1)
    {
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_32;
      }

      v6 = v4 * v1 + 0.0;
      v7 = v6 <= v2;
      if (v1 > 0.0)
      {
        v7 = v2 <= v6;
      }

      ++v5;
      if (v7)
      {
        goto LABEL_11;
      }
    }
  }

  v4 = 0;
LABEL_11:
  v19 = MEMORY[0x277D84F90];
  sub_264D8D0F4(0, v4, 0);
  v8 = v19;
  if (v4)
  {
    v9 = 1;
    v10 = 0.0;
    while (1)
    {
      v11 = v10 <= v2;
      if (v1 > 0.0)
      {
        v11 = v2 <= v10;
      }

      if (v11)
      {
        break;
      }

      v20 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_264D8D0F4((v12 > 1), v13 + 1, 1);
        v8 = v20;
      }

      v14 = v9 * v1 + 0.0;
      *(v8 + 16) = v13 + 1;
      *(v8 + 8 * v13 + 32) = v10;
      ++v9;
      v10 = v14;
      if (v9 - v4 == 1)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  v14 = 0.0;
LABEL_21:
  v15 = v14 <= v2;
  if (v1 > 0.0)
  {
    v15 = v2 <= v14;
  }

  if (!v15)
  {
    while (!__OFADD__(v4, 1))
    {
      v21 = v8;
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_264D8D0F4((v16 > 1), v17 + 1, 1);
        v8 = v21;
      }

      *(v8 + 8 * v17 + 32) = v14;
      v14 = (v4 + 1) * v1 + 0.0;
      *(v8 + 16) = v17 + 1;
      v18 = v14 <= v2;
      if (v1 > 0.0)
      {
        v18 = v2 <= v14;
      }

      ++v4;
      if (v18)
      {
        return;
      }
    }

    goto LABEL_33;
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for UsageOverviewChart(0);
  v16 = *(*(v1 - 1) + 80);
  v14 = *(*(v1 - 1) + 64);
  v15 = (v16 + 16) & ~v16;
  v2 = sub_264E23C38();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v15, v2);
  v4 = v0 + v15 + v1[5];
  v5 = sub_264E23AA8();
  v6 = *(v5 - 8);
  v13 = *(v6 + 8);
  v13(v4, v5);
  v7 = type metadata accessor for UsageOverviewChart.Model(0);

  v3(v4 + *(v7 + 24), v2);
  v8 = v0 + v15 + v1[6];
  v9 = *(v6 + 48);
  if (!v9(v8, 1, v5))
  {
    v13(v8, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);

  v10 = v0 + v15 + v1[7];

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210) + 32);
  if (!v9(v10 + v11, 1, v5))
  {
    v13(v10 + v11, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v15 + v14, v16 | 7);
}

uint64_t sub_264D8EE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UsageOverviewChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_264D87B64(a1, v6, a2);
}

uint64_t sub_264D8EF1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18C0, &qword_264E26260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D8EFDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_264D8F0FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_264E23C38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UsageOverviewChart.Model(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_264D8F2D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_264E23C38();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for UsageOverviewChart.Model(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_264D8F480(uint64_t a1)
{
  sub_264E23C38();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UsageOverviewChart.Model(319);
    if (v2 <= 0x3F)
    {
      sub_264D8F5E8(319, &qword_27FFB19E8, &qword_27FFB1860, &qword_264E267E0, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_264D8F5E8(319, &qword_27FFB19F0, &qword_27FFB1860, &qword_264E267E0, MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_264D8F5E8(319, &qword_27FFB19F8, &qword_27FFB1A00, "ک", MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_264D8F64C();
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

void sub_264D8F5E8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_264D8F64C()
{
  if (!qword_27FFB1A08)
  {
    v0 = sub_264E24DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB1A08);
    }
  }
}

uint64_t sub_264D8F6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_264E23C38();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_264D8F7E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264E23AA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = sub_264E23C38();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_264D8F90C(uint64_t a1)
{
  sub_264E23AA8();
  if (v1 <= 0x3F)
  {
    sub_264D8F9B0();
    if (v2 <= 0x3F)
    {
      sub_264E23C38();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264D8F9B0()
{
  if (!qword_27FFB1A20)
  {
    v0 = sub_264E25028();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB1A20);
    }
  }
}

uint64_t sub_264D8FA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_264E23C38();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_264D8FB5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264E23AA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_264E23C38();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_264D8FC80(uint64_t a1)
{
  sub_264E23AA8();
  if (v1 <= 0x3F)
  {
    sub_264D8FD24(319);
    if (v2 <= 0x3F)
    {
      sub_264E23C38();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264D8FD24(uint64_t a1)
{
  if (!qword_27FFB1A38)
  {
    type metadata accessor for UsageOverviewChart.Day(255);
    v1 = sub_264E251F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB1A38);
    }
  }
}

unint64_t sub_264D8FD80()
{
  result = qword_27FFB1A40;
  if (!qword_27FFB1A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB19C8, &qword_264E26300);
    sub_264D8FE38();
    sub_264D81DCC(&qword_27FFB1A50, &qword_27FFB1A58, &qword_264E26470, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1A40);
  }

  return result;
}

unint64_t sub_264D8FE38()
{
  result = qword_27FFB1A48;
  if (!qword_27FFB1A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB18C0, &qword_264E26260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB18B0, &qword_264E26250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB19B8, &qword_264E27730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB18A8, &qword_264E26248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB19A8, &unk_264E262F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB18A0, &qword_264E26240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1998, &unk_264E27720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1898, &qword_264E26238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1988, &unk_264E262E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1890, &qword_264E26230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1968, &unk_264E27700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1888, &qword_264E26228);
    type metadata accessor for UsageOverviewChart.Model(255);
    sub_264D81DCC(&qword_27FFB1950, &qword_27FFB1888, &qword_264E26228, MEMORY[0x277CBB3F8]);
    sub_264D89FD8(&qword_27FFB1958, type metadata accessor for UsageOverviewChart.Model, &protocol conformance descriptor for UsageOverviewChart.Model);
    swift_getOpaqueTypeConformance2();
    sub_264D8A020(&qword_27FFB1970, &qword_27FFB1968, &unk_264E27700);
    swift_getOpaqueTypeConformance2();
    sub_264D8A020(&qword_27FFB1990, &qword_27FFB1988, &unk_264E262E0);
    swift_getOpaqueTypeConformance2();
    v1 = MEMORY[0x277CBB460];
    sub_264D81DCC(&qword_27FFB19A0, &qword_27FFB1998, &unk_264E27720, MEMORY[0x277CBB460]);
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB19B0, &qword_27FFB19A8, &unk_264E262F0, v1);
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB19C0, &qword_27FFB19B8, &qword_264E27730, MEMORY[0x277CDF728]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1A48);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_264D9024C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_264D90294(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_264D902E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_264D903E0()
{
  result = qword_27FFB1A98;
  if (!qword_27FFB1A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1A90, &qword_264E26510);
    sub_264E24008();
    swift_getOpaqueTypeConformance2();
    sub_264D904B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1A98);
  }

  return result;
}

unint64_t sub_264D904B8()
{
  result = qword_27FFB1AA0;
  if (!qword_27FFB1AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1AA8, &qword_264E26518);
    sub_264D81DCC(&qword_27FFB1AB0, &qword_27FFB1AB8, &qword_264E26520, MEMORY[0x277CBB338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1AA0);
  }

  return result;
}

unint64_t sub_264D90568()
{
  result = qword_27FFB1AD8;
  if (!qword_27FFB1AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1AD0, &qword_264E26538);
    sub_264D90620();
    sub_264D81DCC(&qword_27FFB1B28, &qword_27FFB1B30, &qword_264E26560, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1AD8);
  }

  return result;
}

unint64_t sub_264D90620()
{
  result = qword_27FFB1AE0;
  if (!qword_27FFB1AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1AE8, &qword_264E26540);
    sub_264D906D8();
    sub_264D81DCC(&qword_27FFB1B18, &qword_27FFB1B20, &qword_264E26558, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1AE0);
  }

  return result;
}

unint64_t sub_264D906D8()
{
  result = qword_27FFB1AF0;
  if (!qword_27FFB1AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1AF8, &qword_264E26548);
    sub_264D90794();
    sub_264D89FD8(&qword_27FFB1B10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1AF0);
  }

  return result;
}

unint64_t sub_264D90794()
{
  result = qword_27FFB1B00;
  if (!qword_27FFB1B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1B08, &qword_264E26550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1B00);
  }

  return result;
}

uint64_t sub_264D90818@<X0>(_BYTE *a1@<X8>)
{
  result = sub_264E24658();
  *a1 = result & 1;
  return result;
}

unint64_t sub_264D908C4()
{
  result = qword_27FFB1B38;
  if (!qword_27FFB1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1B38);
  }

  return result;
}

uint64_t sub_264D90954(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10.n128_u64[0] = *(v4 + 40);
  v11 = *(v4 + 48);
  v12 = v4 + ((*(v6 + 80) + 49) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v12, v10);
}

uint64_t sub_264D90A54()
{
  v1 = type metadata accessor for UsageOverviewChart(0);
  v20 = *(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v2 = sub_264E23FE8();
  v22 = *(v2 - 8);
  v23 = v2;
  v17 = *(v22 + 80);
  v21 = *(v22 + 64);
  v24 = v0;
  v19 = (v20 + 16) & ~v20;
  v3 = v0 + v19;
  v4 = sub_264E23C38();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v19, v4);
  v6 = v0 + v19 + v1[5];
  v7 = sub_264E23AA8();
  v8 = *(v7 - 8);
  v16 = *(v8 + 8);
  v16(v6, v7);
  v9 = type metadata accessor for UsageOverviewChart.Model(0);

  v5(v6 + *(v9 + 24), v4);
  v10 = v3 + v1[6];
  v11 = *(v8 + 48);
  if (!v11(v10, 1, v7))
  {
    v16(v10, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);

  v12 = v3 + v1[7];

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210) + 32);
  if (!v11(v12 + v13, 1, v7))
  {
    v16(v12 + v13, v7);
  }

  v14 = (v19 + v18 + v17) & ~v17;

  (*(v22 + 8))(v24 + v14, v23);

  return MEMORY[0x2821FE8E8](v24, v14 + v21, v20 | v17 | 7);
}

uint64_t sub_264D90D70()
{
  type metadata accessor for UsageOverviewChart(0);
  sub_264E23FE8();

  return sub_264D87EC0();
}

uint64_t sub_264D90E64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_43Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 49) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_264D91130()
{
  v15 = type metadata accessor for UsageOverviewChart(0);
  v19 = *(*(v15 - 1) + 80);
  v17 = *(*(v15 - 1) + 64);
  v22 = type metadata accessor for UsageOverviewChart.Day(0);
  v16 = *(*(v22 - 8) + 80);
  v21 = *(*(v22 - 8) + 64);
  v23 = v0;
  v18 = (v19 + 16) & ~v19;
  v1 = v0 + v18;
  v2 = sub_264E23C38();
  v3 = *(*(v2 - 8) + 8);
  v3(v1, v2);
  v4 = v1 + v15[5];
  v5 = sub_264E23AA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v4, v5);
  v8 = type metadata accessor for UsageOverviewChart.Model(0);

  v20 = v3;
  v3(v4 + *(v8 + 24), v2);
  v9 = v1 + v15[6];
  v10 = *(v6 + 48);
  if (!v10(v9, 1, v5))
  {
    v7(v9, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);

  v11 = v1 + v15[7];

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210) + 32);
  if (!v10(v11 + v12, 1, v5))
  {
    v7(v11 + v12, v5);
  }

  v13 = (v18 + v17 + v16) & ~v16;

  v7(v23 + v13, v5);

  v20(v23 + v13 + *(v22 + 28), v2);

  return MEMORY[0x2821FE8E8](v23, v13 + v21, v19 | v16 | 7);
}

uint64_t sub_264D9147C@<X0>(unint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v11 = *(type metadata accessor for UsageOverviewChart(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for UsageOverviewChart.Day(0) - 8);
  v15 = v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80));

  return sub_264D8886C(a1, a2, a3, v5 + v12, v15, a4, a5);
}

uint64_t sub_264D91588()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264D91628(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_264D91674()
{
  v0 = sub_264E23FC8();
  __swift_allocate_value_buffer(v0, qword_27FFB1C90);
  v1 = __swift_project_value_buffer(v0, qword_27FFB1C90);
  if (qword_27FFB1690 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FFB6C08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_264D9173C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_264E238E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v55 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264E23AA8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v56 = a2;
  sub_264D91CFC(a1, &v46 - v17);
  sub_264D93AE8(&qword_27FFB1868, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  if (sub_264E25068())
  {
    (*(v10 + 8))(a1, v9);
  }

  else
  {
    v53 = a3;
    v54 = v6;
    if (qword_27FFB1680 != -1)
    {
      swift_once();
    }

    v19 = sub_264E23FC8();
    __swift_project_value_buffer(v19, qword_27FFB1C90);
    v20 = *(v10 + 16);
    v52 = a1;
    v20(v15, a1, v9);
    v20(v12, v18, v9);
    v21 = v55;
    v6 = v54;
    (*(v7 + 16))(v55, v56, v54);
    v22 = sub_264E23FA8();
    v23 = sub_264E25288();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v50 = v22;
      v25 = v24;
      v51 = swift_slowAlloc();
      v57 = v51;
      *v25 = 136315650;
      v46 = sub_264D93AE8(&qword_27FFB1CC8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v49 = v23;
      v26 = sub_264E25468();
      v28 = v27;
      v47 = v7;
      v29 = *(v10 + 8);
      v29(v15, v9);
      v48 = v10 + 8;
      v30 = sub_264DEA000(v26, v28, &v57);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      v31 = sub_264E25468();
      v33 = v32;
      v29(v12, v9);
      v34 = v29;
      v35 = sub_264DEA000(v31, v33, &v57);

      *(v25 + 14) = v35;
      *(v25 + 22) = 2080;
      v6 = v54;
      sub_264D93AE8(&qword_27FFB1CD0, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
      v36 = v55;
      v37 = sub_264E25468();
      v39 = v38;
      v7 = v47;
      (*(v47 + 8))(v36, v6);
      v40 = sub_264DEA000(v37, v39, &v57);

      *(v25 + 24) = v40;
      v41 = v50;
      _os_log_impl(&dword_264D7D000, v50, v49, "ActivityNavigationState interiorDate %s is changed to %s, to be within bounds %s.", v25, 0x20u);
      v42 = v51;
      swift_arrayDestroy();
      MEMORY[0x26674FCD0](v42, -1, -1);
      MEMORY[0x26674FCD0](v25, -1, -1);

      v34(v52, v9);
    }

    else
    {

      v43 = *(v10 + 8);
      v43(v52, v9);
      (*(v7 + 8))(v21, v6);
      v43(v12, v9);
      v43(v15, v9);
    }

    a3 = v53;
  }

  (*(v10 + 32))(a3, v18, v9);
  v44 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  return (*(v7 + 32))(a3 + *(v44 + 20), v56, v6);
}

uint64_t sub_264D91CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v8 = sub_264E23A58();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v8)
  {
    return _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  }

  sub_264E23888();
  sub_264D93AE8(&qword_27FFB1BF0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v11 = sub_264E25048();
  v9(v7, v4);
  if (v11)
  {
    return (*(v5 + 16))(a2, a1, v4);
  }

  sub_264E23888();
  sub_264E23A28();
  return (v9)(v7, v4);
}

uint64_t sub_264D91ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_264E23A78() & 1) == 0)
  {
    return 0;
  }

  return sub_264E23878();
}

uint64_t sub_264D91F38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264E23AA8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_264E23C18();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  v11 = *v1;
  if (*v1)
  {
    if (v11 == 1)
    {

      return sub_264D922CC(a1);
    }

    else
    {
      type metadata accessor for STActivityMode(0);
      v19[1] = v11;
      result = sub_264E25488();
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for ActivityNavigationState(0);
    (*(v5 + 104))(v7, *MEMORY[0x277CC9968], v4);
    sub_264E23B08();
    (*(v5 + 8))(v7, v4);
    v12 = sub_264E238E8();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v10, 1, v12) == 1)
    {
      sub_264D817BC(v10, &qword_27FFB1880, &qword_264E26220);
      if (qword_27FFB1680 != -1)
      {
        swift_once();
      }

      v14 = sub_264E23FC8();
      __swift_project_value_buffer(v14, qword_27FFB1C90);
      v15 = sub_264E23FA8();
      v16 = sub_264E252B8();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_264D7D000, v15, v16, "Unable to calculate day interval around interiorDate. Assuming 24-hour day.", v17, 2u);
        MEMORY[0x26674FCD0](v17, -1, -1);
      }

      sub_264E23AF8();
      return sub_264E238A8();
    }

    else
    {
      return (*(v13 + 32))(a1, v10, v12);
    }
  }

  return result;
}

uint64_t sub_264D922CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264E23AA8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_264E23C18();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  type metadata accessor for ActivityNavigationState(0);
  (*(v4 + 104))(v6, *MEMORY[0x277CC9940], v3);
  sub_264E23B08();
  (*(v4 + 8))(v6, v3);
  v10 = sub_264E238E8();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v9, v10);
  }

  sub_264D817BC(v9, &qword_27FFB1880, &qword_264E26220);
  if (qword_27FFB1680 != -1)
  {
    swift_once();
  }

  v12 = sub_264E23FC8();
  __swift_project_value_buffer(v12, qword_27FFB1C90);
  v13 = sub_264E23FA8();
  v14 = sub_264E252B8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_264D7D000, v13, v14, "Unable to calculate week interval around interiorDate. Assuming 7 days in week, 24-hour days, from start of day containing interiorDate.", v15, 2u);
    MEMORY[0x26674FCD0](v15, -1, -1);
  }

  sub_264E23AF8();
  return sub_264E238A8();
}

uint64_t sub_264D925F4@<X0>(uint64_t a1@<X8>)
{
  if (*v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    if (*v1)
    {
      type metadata accessor for STActivityMode(0);
      result = sub_264E25488();
      __break(1u);
      return result;
    }

    type metadata accessor for ActivityNavigationState(0);
    sub_264E23AF8();
    v3 = 0;
  }

  v4 = sub_264E23AA8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t sub_264D926C4(uint64_t a1)
{
  v3 = sub_264E238E8();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  MEMORY[0x28223BE20](v27);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_264E23AA8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v20 = a1;
  sub_264D93A14(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_264D817BC(a1, &qword_27FFB1860, &qword_264E267E0);
    result = sub_264D817BC(v9, &qword_27FFB1860, &qword_264E267E0);
    v22 = 1;
  }

  else
  {
    (*(v11 + 32))(v19, v9, v10);
    v23 = *(v11 + 16);
    v23(v16, v19, v10);
    v23(v13, v16, v10);
    v24 = v1 + *(type metadata accessor for ActivityNavigationState(0) + 20);
    v25 = v28;
    (*(v29 + 16))(v28, v24 + *(v27 + 20), v30);
    sub_264D9173C(v13, v25, v6);
    sub_264D817BC(v20, &qword_27FFB1860, &qword_264E267E0);
    v26 = *(v11 + 8);
    v26(v16, v10);
    v26(v19, v10);
    result = sub_264D93A84(v6, v24);
    v22 = 0;
  }

  *v1 = v22;
  return result;
}

uint64_t sub_264D92A78()
{
  v0 = sub_264E238E8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264D922CC(v3);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_264D92B58(char *a1)
{
  v62 = a1;
  v63 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  MEMORY[0x28223BE20](v63);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264E238E8();
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x28223BE20](v4);
  v60 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v56 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v56 - v10;
  v12 = sub_264E23AA8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v59 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  v21 = sub_264E23C18();
  v67 = *(v21 - 8);
  v68 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  type metadata accessor for STActivityMode(0);
  v61 = v17;
  if (v24 == 1)
  {
    v25 = MEMORY[0x277CC9940];
  }

  else
  {
    if (v24)
    {
      v69 = v24;
      result = sub_264E25488();
      __break(1u);
      return result;
    }

    v25 = MEMORY[0x277CC9968];
  }

  (*(v67 + 104))(v23, *v25, v68);
  v26 = v1 + *(type metadata accessor for ActivityNavigationState(0) + 20);
  sub_264E23BC8();
  v27 = (*(v13 + 48))(v11, 1, v12);
  v64 = v23;
  if (v27 == 1)
  {
    sub_264D817BC(v11, &qword_27FFB1860, &qword_264E267E0);
    if (qword_27FFB1680 != -1)
    {
      swift_once();
    }

    v62 = v3;
    v28 = sub_264E23FC8();
    __swift_project_value_buffer(v28, qword_27FFB1C90);
    v29 = sub_264E23FA8();
    v30 = sub_264E252B8();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v65;
    if (v31)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_264D7D000, v29, v30, "Unable to calculate interval away from interior date using calendar. Assuming 7 days a week and 24-hour days for calculation.", v33, 2u);
      MEMORY[0x26674FCD0](v33, -1, -1);
    }

    v34 = *(v13 + 16);
    v35 = v61;
    v34(v61, v26, v12);
    v36 = (v13 + 8);
    v37 = (v67 + 8);
    sub_264E23A18();
    v44 = v59;
    v34(v59, v35, v12);
    v45 = v60;
    (*(v32 + 16))(v60, &v26[*(v63 + 20)], v66);
    v46 = v62;
    sub_264D9173C(v44, v45, v62);
    (*v36)(v35, v12);
    (*v37)(v64, v68);
    v47 = v46;
    v48 = v26;
    return sub_264D93A84(v47, v48);
  }

  (*(v13 + 32))(v20, v11, v12);
  v38 = *(v63 + 20);
  v39 = v65;
  v40 = v66;
  v41 = *(v65 + 16);
  v63 = v26;
  v57 = v38;
  v58 = v41;
  v41(v8, &v26[v38], v66);
  if (sub_264E238C8())
  {
    v62 = v3;
    v42 = v61;
    sub_264E23888();
    sub_264D93AE8(&qword_27FFB1868, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v43 = sub_264E25068();
    v56 = *(v13 + 8);
    v56(v42, v12);
    (*(v39 + 8))(v8, v40);
    if ((v43 & 1) == 0)
    {
      v50 = v62;
      v51 = *(v13 + 16);
      v51(v42, v20, v12);
      v52 = v59;
      v51(v59, v42, v12);
      v53 = v63;
      v54 = v60;
      v58(v60, v63 + v57, v66);
      sub_264D9173C(v52, v54, v50);
      v55 = v56;
      v56(v42, v12);
      v55(v20, v12);
      (*(v67 + 8))(v64, v68);
      v47 = v50;
      v48 = v53;
      return sub_264D93A84(v47, v48);
    }

    v56(v20, v12);
  }

  else
  {
    (*(v39 + 8))(v8, v40);
    (*(v13 + 8))(v20, v12);
  }

  return (*(v67 + 8))(v64, v68);
}

uint64_t static ActivityNavigationState.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    type metadata accessor for ActivityNavigationState(0);
    if (sub_264E23A78())
    {
      type metadata accessor for ActivityNavigationState.DateAndBounds(0);
      if (sub_264E23878())
      {

        JUMPOUT(0x26674DD10);
      }
    }
  }

  return 0;
}

uint64_t sub_264D9336C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2 && (sub_264E23A78() & 1) != 0)
  {
    type metadata accessor for ActivityNavigationState.DateAndBounds(0);
    if (sub_264E23878())
    {

      JUMPOUT(0x26674DD10);
    }
  }

  return 0;
}

uint64_t sub_264D93474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_264E23C38();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_264D9357C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_264E23C38();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

void sub_264D9367C(uint64_t a1)
{
  type metadata accessor for STActivityMode(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActivityNavigationState.DateAndBounds(319);
    if (v2 <= 0x3F)
    {
      sub_264E23C38();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_264D9372C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_264E238E8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264D93830(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_264E23AA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_264E238E8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_264D9392C(uint64_t a1)
{
  result = sub_264E23AA8();
  if (v2 <= 0x3F)
  {
    result = sub_264E238E8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_264D93A14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D93A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D93AE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264D93F40@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v29 = a6;
  v13 = a3(0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v25 - v17;
  v19 = *(a2 + 16);
  if (v19)
  {
    v27 = v14;
    v28 = a7;
    v20 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v26 = v15;
    v21 = *(v15 + 72);
    while (1)
    {
      sub_264D95F54(v20, v18, a4);
      v22 = a1(v18);
      if (v7)
      {
        return sub_264D95FBC(v18, a5);
      }

      if (v22)
      {
        break;
      }

      sub_264D95FBC(v18, a5);
      v20 += v21;
      if (!--v19)
      {
        v23 = 1;
        a7 = v28;
        goto LABEL_10;
      }
    }

    a7 = v28;
    sub_264D9827C(v18, v28, v29);
    v23 = 0;
LABEL_10:
    v15 = v26;
    v14 = v27;
  }

  else
  {
    v23 = 1;
  }

  return (*(v15 + 56))(a7, v23, 1, v14, v16);
}

double ScreenTimeUsageAppIntentView.Model.weeklyChange.getter()
{
  v1 = v0 + *(type metadata accessor for ScreenTimeUsageAppIntentView.Model(0) + 36);

  return sub_264D94138(1, v1);
}

double sub_264D94138(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v46 = sub_264E238E8();
  v8 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v10 - 8);
  v44 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = sub_264E23AA8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v38 - v23;
  v25 = 0.0;
  if (a1 == 1)
  {
    v42 = v8;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v43 = v3;
    Calendar.startOfWeek(containing:)(v21, v14);
    v26 = v16[1];
    v26(v21, v15);
    v40 = v16[6];
    if (v40(v14, 1, v15) == 1)
    {
      v27 = &qword_27FFB1860;
      v28 = &qword_264E267E0;
      v29 = v14;
LABEL_9:
      sub_264D817BC(v29, v27, v28);
      return v25;
    }

    v39 = v16[4];
    v39(v24, v14, v15);
    v41 = v26;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    Calendar.weeksPreceding(date:weekCount:)(v21, 2, v7);
    v30 = v41;
    v41(v21, v15);
    v31 = v42;
    if ((*(v42 + 48))(v7, 1, v46) == 1)
    {
      v30(v24, v15);
      v27 = &qword_27FFB1880;
      v28 = &qword_264E26220;
LABEL_8:
      v29 = v7;
      goto LABEL_9;
    }

    (*(v31 + 32))();
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v7 = v44;
    Calendar.startOfWeek(containing:)(v21, v44);
    v32 = v41;
    v41(v21, v15);
    if (v40(v7, 1, v15) == 1)
    {
      (*(v31 + 8))(v45, v46);
      v32(v24, v15);
      v27 = &qword_27FFB1860;
      v28 = &qword_264E267E0;
      goto LABEL_8;
    }

    v39(v18, v7, v15);
    sub_264D979A4(v24, 0);
    v35 = v34;
    sub_264D979A4(v18, 0);
    v37 = v36;
    v32(v18, v15);
    (*(v31 + 8))(v45, v46);
    v32(v24, v15);
    if (v37 > 0.0)
    {
      return (v35 - v37) / v37;
    }
  }

  return v25;
}

uint64_t ScreenTimeUsageAppIntentView.Model.totalUsage.getter()
{
  v1 = v0 + *(type metadata accessor for ScreenTimeUsageAppIntentView.Model(0) + 36);

  return sub_264D94654(0, v1, 0);
}

uint64_t sub_264D94654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v30 = sub_264E238E8();
  v8 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_264E23AA8();
  v11 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v29 = &v28 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  if (a3)
  {
    v19 = a3;
  }

  else
  {
    v19 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0) + 36));
  }

  if (v31 == 1)
  {

    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    Calendar.startOfWeek(containing:)(v13, v7);
    v20 = *(v11 + 8);
    v21 = v33;
    v20(v13, v33);
    if ((*(v11 + 48))(v7, 1, v21) == 1)
    {
      return sub_264D817BC(v7, &qword_27FFB1860, &qword_264E267E0);
    }

    else
    {
      v25 = v29;
      (*(v11 + 32))(v29, v7, v21);
      v26 = a3;
      if (!a3)
      {
        v26 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0) + 36));
      }

      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0) + 44);

      sub_264DD26C0(v26, v25, v3, (v3 + v27));

      return (v20)(v25, v21);
    }
  }

  else if (v31)
  {
    result = sub_264E253E8();
    __break(1u);
  }

  else
  {

    sub_264E23858();
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    (*(v8 + 8))(v10, v30);
    if (*(v19 + 16))
    {
      sub_264D9D5F4(v18);
      v23 = v33;
      if (v24)
      {
        (*(v11 + 8))(v18, v33);
      }

      else
      {

        return (*(v11 + 8))(v18, v23);
      }
    }

    else
    {

      return (*(v11 + 8))(v18, v33);
    }
  }

  return result;
}

uint64_t ScreenTimeUsageAppIntentView.Model.init(allActivityModel:interval:selectedDay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a3;
  v117 = a2;
  v113 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CD8, &unk_264E267C0);
  MEMORY[0x28223BE20](v5 - 8);
  v111 = &v110 - v6;
  v7 = type metadata accessor for UsageDetailChart.Model(0);
  v150 = *(v7 - 8);
  v151 = v7;
  MEMORY[0x28223BE20](v7);
  v115 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v112 = &v110 - v10;
  v148 = sub_264E23B98();
  v11 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v147 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_264E23B78();
  v169 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v145 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_264E23B38();
  v14 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v143 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  MEMORY[0x28223BE20](v16 - 8);
  v142 = &v110 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v18 - 8);
  v141 = &v110 - v19;
  v140 = sub_264E23928();
  v20 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v139 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  MEMORY[0x28223BE20](v157);
  v23 = &v110 - v22;
  v126 = sub_264E23C18();
  v24 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v125 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v26 - 8);
  v156 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v167 = &v110 - v29;
  MEMORY[0x28223BE20](v30);
  v170 = &v110 - v31;
  v32 = sub_264E23AA8();
  v116 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v149 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v168 = &v110 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v110 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE8, &unk_264E267E8);
  MEMORY[0x28223BE20](v39 - 8);
  v114 = &v110 - v40;
  v41 = type metadata accessor for UsageOverviewChart.Model(0);
  v42 = *(v41 - 8);
  v159 = v41;
  v160 = v42;
  MEMORY[0x28223BE20](v41);
  v44 = &v110 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v119 = &v110 - v46;
  result = type metadata accessor for AllActivityView.Model(0);
  v118 = result;
  v48 = *(result + 32);
  v120 = a1;
  v158 = *(a1 + v48);
  v155 = *(v158 + 16);
  if (v155)
  {
    v49 = 0;
    v154 = v158 + ((*(v160 + 80) + 32) & ~*(v160 + 80));
    v166 = (v116 + 8);
    v124 = (v24 + 104);
    v123 = (v24 + 8);
    v136 = (v14 + 104);
    v122 = *MEMORY[0x277CC99B8];
    v135 = (v169 + 104);
    v134 = (v11 + 104);
    v133 = *MEMORY[0x277CC9878];
    v132 = (v11 + 8);
    v131 = (v169 + 8);
    v130 = *MEMORY[0x277CC98F0];
    v129 = (v14 + 8);
    v128 = (v20 + 8);
    v127 = *MEMORY[0x277CC9900];
    v50 = (v116 + 16);
    v161 = (v116 + 56);
    v152 = (v116 + 48);
    v121 = (v116 + 32);
    v162 = v38;
    v169 = v44;
    v138 = v23;
    v137 = v32;
    v153 = (v116 + 16);
    while (1)
    {
      if (v49 >= *(v158 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v54 = *(v160 + 72);
      v165 = v49;
      sub_264D95F54(v154 + v54 * v49, v44, type metadata accessor for UsageOverviewChart.Model);
      sub_264E23A98();
      v55 = v168;
      sub_264E23AF8();
      v56 = sub_264E23A78();
      v164 = *v166;
      v164(v55, v32);
      v163 = v50 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      if ((v56 & 1) != 0 && (v57 = v125, v58 = v126, (*v124)(v125, v122, v126), v59 = sub_264E23C28(), v60 = v57, v44 = v169, (*v123)(v60, v58), v59 == sub_264E23B18()))
      {
        v50 = v153;
        v61 = *v153;
        v62 = v170;
        (*v153)(v170, v38, v32);
        (*v161)(v62, 0, 1, v32);
      }

      else
      {
        v63 = sub_264E23C38();
        (*(*(v63 - 8) + 56))(v141, 1, 1, v63);
        v64 = sub_264E23C48();
        (*(*(v64 - 8) + 56))(v142, 1, 1, v64);
        sub_264E23B18();
        v65 = v139;
        sub_264E23918();
        v66 = v143;
        v67 = v144;
        (*v136)(v143, v133, v144);
        v68 = v145;
        v69 = v146;
        (*v135)(v145, v130, v146);
        v70 = v147;
        v71 = v148;
        (*v134)(v147, v127, v148);
        sub_264E23C08();
        (*v132)(v70, v71);
        v72 = v68;
        v44 = v169;
        (*v131)(v72, v69);
        v73 = v66;
        v32 = v137;
        v74 = v67;
        v23 = v138;
        (*v129)(v73, v74);
        (*v128)(v65, v140);
        v50 = v153;
        v61 = *v153;
      }

      v75 = v167;
      v61(v167, v44, v32);
      (*v161)(v75, 0, 1, v32);
      v76 = *(v157 + 48);
      sub_264D81744(v170, v23, &qword_27FFB1860, &qword_264E267E0);
      sub_264D81744(v75, &v23[v76], &qword_27FFB1860, &qword_264E267E0);
      v77 = *v152;
      if ((*v152)(v23, 1, v32) == 1)
      {
        break;
      }

      sub_264D81744(v23, v156, &qword_27FFB1860, &qword_264E267E0);
      if (v77(&v23[v76], 1, v32) == 1)
      {
        sub_264D817BC(v167, &qword_27FFB1860, &qword_264E267E0);
        sub_264D817BC(v170, &qword_27FFB1860, &qword_264E267E0);
        v38 = v162;
        v78 = v164;
        v164(v162, v32);
        v78(v156, v32);
        v53 = v165;
LABEL_4:
        sub_264D817BC(v23, &qword_27FFB1858, &unk_264E26200);
        goto LABEL_5;
      }

      v79 = v168;
      (*v121)(v168, &v23[v76], v32);
      sub_264D98234(&qword_27FFB1868, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v80 = v156;
      v81 = sub_264E25068();
      v82 = v164;
      v164(v79, v32);
      sub_264D817BC(v167, &qword_27FFB1860, &qword_264E267E0);
      sub_264D817BC(v170, &qword_27FFB1860, &qword_264E267E0);
      v38 = v162;
      v82(v162, v32);
      v82(v80, v32);
      sub_264D817BC(v23, &qword_27FFB1860, &qword_264E267E0);
      v53 = v165;
      if (v81)
      {
        goto LABEL_19;
      }

LABEL_5:
      v49 = v53 + 1;
      result = sub_264D95FBC(v44, type metadata accessor for UsageOverviewChart.Model);
      if (v155 == v49)
      {
        goto LABEL_16;
      }
    }

    sub_264D817BC(v167, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v170, &qword_27FFB1860, &qword_264E267E0);
    v51 = v162;
    v164(v162, v32);
    v52 = v77(&v23[v76], 1, v32);
    v38 = v51;
    v53 = v165;
    if (v52 == 1)
    {
      sub_264D817BC(v23, &qword_27FFB1860, &qword_264E267E0);
LABEL_19:
      v87 = v114;
      sub_264D9827C(v44, v114, type metadata accessor for UsageOverviewChart.Model);
      (*(v160 + 56))(v87, 0, 1, v159);
      result = sub_264D9827C(v87, v119, type metadata accessor for UsageOverviewChart.Model);
      goto LABEL_20;
    }

    goto LABEL_4;
  }

LABEL_16:
  v83 = v159;
  v84 = v160;
  v85 = v114;
  (*(v160 + 56))(v114, 1, 1, v159);
  v86 = v119;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264E23BF8();
  *(v86 + *(v83 + 28)) = 3;
  *(v86 + *(v83 + 20)) = MEMORY[0x277D84F90];
  result = (*(v84 + 48))(v85, 1, v83);
  if (result != 1)
  {
    result = sub_264D817BC(v85, &qword_27FFB1CE8, &unk_264E267E8);
  }

LABEL_20:
  v88 = *(v120 + *(v118 + 36));
  v89 = *(v88 + 16);
  v90 = v115;
  if (v89)
  {
    v91 = 0;
    v92 = (v116 + 8);
    v93 = v168;
    v94 = v149;
    while (v91 < *(v88 + 16))
    {
      sub_264D95F54(v88 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v91, v90, type metadata accessor for UsageDetailChart.Model);
      sub_264E23A98();
      sub_264E23AF8();
      v95 = sub_264E23A78();
      v96 = *v92;
      (*v92)(v94, v32);
      v96(v93, v32);
      if (v95)
      {
        sub_264D817BC(v110, &qword_27FFB1870, &unk_264E26210);
        v102 = v111;
        sub_264D9827C(v90, v111, type metadata accessor for UsageDetailChart.Model);
        (*(v150 + 56))(v102, 0, 1, v151);
        v100 = v112;
        sub_264D9827C(v102, v112, type metadata accessor for UsageDetailChart.Model);
        v101 = v117;
        goto LABEL_28;
      }

      ++v91;
      result = sub_264D95FBC(v90, type metadata accessor for UsageDetailChart.Model);
      if (v89 == v91)
      {
        goto LABEL_25;
      }
    }

LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_25:
    v97 = v150;
    v98 = v151;
    v99 = v111;
    (*(v150 + 56))(v111, 1, 1, v151);
    v100 = v112;
    v101 = v117;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    sub_264E23BF8();
    sub_264D817BC(v110, &qword_27FFB1870, &unk_264E26210);
    *(v100 + v98[7]) = 0x40BC200000000000;
    *(v100 + v98[8]) = 3;
    *(v100 + v98[5]) = MEMORY[0x277D84F90];
    if ((*(v97 + 48))(v99, 1, v98) != 1)
    {
      sub_264D817BC(v99, &qword_27FFB1CD8, &unk_264E267C0);
    }

LABEL_28:
    v103 = v118;
    v104 = v120;
    v105 = v113;
    sub_264D95F54(v120 + *(v118 + 28), v113, type metadata accessor for UsageHeaderView.Model);
    v106 = *(v103 + 40);
    v107 = type metadata accessor for ScreenTimeUsageAppIntentView.Model(0);
    sub_264D95F54(v104 + v106, v105 + v107[7], type metadata accessor for CategoriesLegendView.Model);
    sub_264D95F54(v104 + *(v103 + 44), v105 + v107[8], type metadata accessor for UsageChartFooterView.Model);
    sub_264D95FBC(v104, type metadata accessor for AllActivityView.Model);
    sub_264D9827C(v119, v105 + v107[5], type metadata accessor for UsageOverviewChart.Model);
    sub_264D9827C(v100, v105 + v107[6], type metadata accessor for UsageDetailChart.Model);
    v108 = v107[9];
    v109 = sub_264E238E8();
    return (*(*(v109 - 8) + 32))(v105 + v108, v101, v109);
  }

  return result;
}

uint64_t sub_264D95F54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264D95FBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ScreenTimeUsageAppIntentView.init(model:mode:selectedDay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ScreenTimeUsageAppIntentView.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  sub_264D95F54(a1, v17 - v12, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
  sub_264D95F54(v13, v10, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
  sub_264E24D78();
  sub_264D95FBC(v13, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
  v14 = type metadata accessor for ScreenTimeUsageAppIntentView(0);
  v15 = *(v14 + 20);
  v17[1] = a2;
  type metadata accessor for STActivityMode(0);
  sub_264E24D78();
  sub_264D95FBC(a1, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
  *(a4 + v15) = v18;
  return sub_264D90E64(a3, a4 + *(v14 + 24), &qword_27FFB1870, &unk_264E26210);
}

uint64_t ScreenTimeUsageAppIntentView.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_264E24828();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CF0, &qword_264E267F8);
  return sub_264D9620C(v2, a2 + *(v4 + 44));
}

uint64_t sub_264D9620C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v108 = type metadata accessor for CategoriesLegendView(0);
  MEMORY[0x28223BE20](v108);
  v111 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v109 = &v83 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v90);
  v89 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v88 = &v83 - v8;
  v91 = type metadata accessor for UsageOverviewChart(0);
  MEMORY[0x28223BE20](v91);
  v92 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D40, &qword_264E268B0);
  MEMORY[0x28223BE20](v106);
  v93 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v94 = &v83 - v12;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D48, &qword_264E268B8);
  MEMORY[0x28223BE20](v102);
  v103 = &v83 - v13;
  v84 = type metadata accessor for UsageDetailChart(0);
  MEMORY[0x28223BE20](v84);
  v85 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D50, &qword_264E268C0);
  MEMORY[0x28223BE20](v101);
  v86 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v87 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D58, &qword_264E268C8);
  MEMORY[0x28223BE20](v18 - 8);
  v107 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v114 = &v83 - v21;
  v22 = type metadata accessor for ScreenTimeUsageAppIntentView.Model(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v83 - v26;
  v28 = type metadata accessor for UsageHeaderView(0);
  v29 = (v28 - 8);
  MEMORY[0x28223BE20](v28);
  v105 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = (&v83 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CF8, qword_264E26858);
  sub_264E24D88();
  sub_264D95F54(v27, v33, type metadata accessor for UsageHeaderView.Model);
  v104 = type metadata accessor for ScreenTimeUsageAppIntentView.Model;
  sub_264D95FBC(v27, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
  v35 = (a1 + *(type metadata accessor for ScreenTimeUsageAppIntentView(0) + 20));
  v36 = a1;
  v37 = v35[1];
  v99 = *v35;
  *&v116 = v99;
  *(&v116 + 1) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D60, &qword_264E268D0);
  sub_264E24D88();
  v95 = v115;
  sub_264E24D88();
  v112 = v22;
  v38 = *(v22 + 36);
  v39 = v29[8];
  v40 = sub_264E238E8();
  v41 = *(v40 - 8);
  v42 = *(v41 + 16);
  v98 = v40;
  v97 = v42;
  v96 = v41 + 16;
  (v42)(v33 + v39, &v24[v38]);
  v100 = v24;
  sub_264D95FBC(v24, v104);
  *(v33 + v29[7]) = v95;
  v43 = v29[9];
  v104 = v33;
  *(v33 + v43) = 0;
  *&v116 = v99;
  *(&v116 + 1) = v37;
  sub_264E24D88();
  v44 = v115;
  v113 = v27;
  v99 = v34;
  v95 = v36;
  sub_264E24D88();
  if (v44)
  {
    v45 = v113;
    v46 = v91;
    v47 = v92;
    sub_264D95F54(&v113[*(v112 + 20)], &v92[*(v91 + 20)], type metadata accessor for UsageOverviewChart.Model);
    sub_264D95FBC(v45, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
    v48 = sub_264E23AA8();
    v49 = *(*(v48 - 8) + 56);
    v50 = v88;
    v49(v88, 1, 1, v48);
    sub_264E24E88();
    sub_264D817BC(v50, &qword_27FFB1860, &qword_264E267E0);
    sub_264E23BF8();
    v49(v50, 1, 1, v48);
    sub_264D81744(v50, v89, &qword_27FFB1860, &qword_264E267E0);
    sub_264E24D78();
    sub_264D817BC(v50, &qword_27FFB1860, &qword_264E267E0);
    *(v47 + v46[8]) = 0;
    v51 = (v47 + v46[9]);
    v115 = 0x40BC200000000000;
    sub_264E24D78();
    v52 = *(&v116 + 1);
    *v51 = v116;
    v51[1] = v52;
    v53 = (v47 + v46[10]);
    v115 = 0;
    sub_264E24D78();
    v54 = *(&v116 + 1);
    *v53 = v116;
    v53[1] = v54;
    sub_264E24F58();
    sub_264E24588();
    v55 = v93;
    sub_264D9827C(v47, v93, type metadata accessor for UsageOverviewChart);
    v56 = (v55 + *(v106 + 36));
    v57 = v121;
    v56[4] = v120;
    v56[5] = v57;
    v56[6] = v122;
    v58 = v117;
    *v56 = v116;
    v56[1] = v58;
    v59 = v119;
    v56[2] = v118;
    v56[3] = v59;
    v60 = &qword_27FFB1D40;
    v61 = &qword_264E268B0;
    v62 = v94;
    sub_264D90E64(v55, v94, &qword_27FFB1D40, &qword_264E268B0);
    sub_264D81744(v62, v103, &qword_27FFB1D40, &qword_264E268B0);
    swift_storeEnumTagMultiPayload();
    sub_264D980BC();
    sub_264D98178();
    v63 = v114;
    v64 = v112;
  }

  else
  {
    v64 = v112;
    v65 = v113;
    v66 = v85;
    sub_264D95F54(&v113[*(v112 + 24)], v85, type metadata accessor for UsageDetailChart.Model);
    sub_264D95FBC(v65, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
    *(v66 + *(v84 + 20)) = 0;
    sub_264E24F58();
    sub_264E24588();
    v67 = v86;
    sub_264D9827C(v66, v86, type metadata accessor for UsageDetailChart);
    v68 = (v67 + *(v101 + 36));
    v69 = v121;
    v68[4] = v120;
    v68[5] = v69;
    v68[6] = v122;
    v70 = v117;
    *v68 = v116;
    v68[1] = v70;
    v71 = v119;
    v68[2] = v118;
    v68[3] = v71;
    v60 = &qword_27FFB1D50;
    v61 = &qword_264E268C0;
    v62 = v87;
    sub_264D90E64(v67, v87, &qword_27FFB1D50, &qword_264E268C0);
    sub_264D81744(v62, v103, &qword_27FFB1D50, &qword_264E268C0);
    swift_storeEnumTagMultiPayload();
    sub_264D980BC();
    sub_264D98178();
    v63 = v114;
  }

  sub_264E24858();
  sub_264D817BC(v62, v60, v61);
  v72 = v113;
  sub_264E24D88();
  v73 = v109;
  sub_264D95F54(v72 + *(v64 + 28), v109, type metadata accessor for CategoriesLegendView.Model);
  sub_264D95FBC(v72, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
  v74 = v100;
  sub_264E24D88();
  v97(v73 + *(v108 + 20), v74 + *(v64 + 36), v98);
  sub_264D95FBC(v74, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
  v75 = v104;
  v76 = v105;
  sub_264D95F54(v104, v105, type metadata accessor for UsageHeaderView);
  v77 = v63;
  v78 = v107;
  sub_264D81744(v77, v107, &qword_27FFB1D58, &qword_264E268C8);
  v79 = v111;
  sub_264D95F54(v73, v111, type metadata accessor for CategoriesLegendView);
  v80 = v110;
  sub_264D95F54(v76, v110, type metadata accessor for UsageHeaderView);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D88, &qword_264E268D8);
  sub_264D81744(v78, v80 + *(v81 + 48), &qword_27FFB1D58, &qword_264E268C8);
  sub_264D95F54(v79, v80 + *(v81 + 64), type metadata accessor for CategoriesLegendView);
  sub_264D95FBC(v73, type metadata accessor for CategoriesLegendView);
  sub_264D817BC(v114, &qword_27FFB1D58, &qword_264E268C8);
  sub_264D95FBC(v75, type metadata accessor for UsageHeaderView);
  sub_264D95FBC(v79, type metadata accessor for CategoriesLegendView);
  sub_264D817BC(v78, &qword_27FFB1D58, &qword_264E268C8);
  return sub_264D95FBC(v76, type metadata accessor for UsageHeaderView);
}

uint64_t sub_264D96F60@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_264E24828();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CF0, &qword_264E267F8);
  return sub_264D9620C(v2, a2 + *(v4 + 44));
}

uint64_t sub_264D96FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CF8, qword_264E26858);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_264D97128(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CF8, qword_264E26858);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_264D97268(uint64_t a1)
{
  sub_264D9733C(319, &qword_27FFB1D10, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
  if (v1 <= 0x3F)
  {
    sub_264D9733C(319, &qword_27FFB1D18, type metadata accessor for STActivityMode);
    if (v2 <= 0x3F)
    {
      sub_264D97390(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264D9733C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264E24DB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_264D97390(uint64_t a1)
{
  if (!qword_27FFB19F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1860, &qword_264E267E0);
    v1 = sub_264E24E98();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB19F0);
    }
  }
}

uint64_t sub_264D97408(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UsageHeaderView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UsageOverviewChart.Model(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = type metadata accessor for UsageDetailChart.Model(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = type metadata accessor for CategoriesLegendView.Model(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = type metadata accessor for UsageChartFooterView.Model(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = sub_264E238E8();
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_264D97634(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UsageHeaderView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for UsageOverviewChart.Model(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for UsageDetailChart.Model(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = type metadata accessor for CategoriesLegendView.Model(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = type metadata accessor for UsageChartFooterView.Model(0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = sub_264E238E8();
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_264D97858(uint64_t a1)
{
  result = type metadata accessor for UsageHeaderView.Model(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UsageOverviewChart.Model(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for UsageDetailChart.Model(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for CategoriesLegendView.Model(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for UsageChartFooterView.Model(319);
          if (v6 <= 0x3F)
          {
            result = sub_264E238E8();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_264D97940()
{
  result = qword_27FFB1D30;
  if (!qword_27FFB1D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1D38, &qword_264E268A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1D30);
  }

  return result;
}

uint64_t sub_264D979A4(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v73 = sub_264E23C18();
  v4 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v6 - 8);
  v81 = &v57 - v7;
  v80 = sub_264E238E8();
  v8 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v66 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_264E23AA8();
  v62 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v77 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D98, &unk_264E268F0);
  MEMORY[0x28223BE20](v14 - 8);
  v76 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v74 = v2;
  v75 = &v57 - v17;
  if (a2)
  {
    v18 = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);
  }

  v61 = v18;
  v19 = *(v18 + 64);
  v58 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v59 = v62 + 16;
  v78 = (v62 + 32);
  v71 = *MEMORY[0x277CC9940];
  v69 = (v4 + 8);
  v70 = (v4 + 104);
  v68 = (v8 + 48);
  v65 = (v8 + 32);
  v64 = (v8 + 8);
  v63 = (v62 + 8);

  v25 = 0;
  v26 = 0.0;
  v60 = v11;
  if (v22)
  {
    while (1)
    {
      v27 = v25;
LABEL_15:
      v30 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v31 = v30 | (v27 << 6);
      v32 = v61;
      v33 = v62;
      v34 = v77;
      v35 = v79;
      (*(v62 + 16))(v77, *(v61 + 48) + *(v62 + 72) * v31, v79);
      v36 = *(*(v32 + 56) + 8 * v31);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA0, &unk_264E27A00);
      v38 = *(v37 + 48);
      v39 = *(v33 + 32);
      v40 = v76;
      v39(v76, v34, v35);
      *&v40[v38] = v36;
      (*(*(v37 - 8) + 56))(v40, 0, 1, v37);
      v29 = v27;
      v41 = v40;
      v11 = v60;
LABEL_16:
      v42 = v75;
      sub_264D90E64(v41, v75, &qword_27FFB1D98, &unk_264E268F0);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA0, &unk_264E27A00);
      if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
      {
      }

      v44 = v29;
      v45 = *(v42 + *(v43 + 48));
      v46 = v79;
      (*v78)(v11, v42, v79);
      v47 = v81;
      v49 = v72;
      v48 = v73;
      (*v70)(v72, v71, v73);
      sub_264E23B08();
      v50 = v80;
      (*v69)(v49, v48);
      result = (*v68)(v47, 1, v50);
      if (result == 1)
      {
        goto LABEL_25;
      }

      v51 = v66;
      v52 = v80;
      (*v65)(v66, v81, v80);
      v53 = v77;
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      (*v64)(v51, v52);
      LOBYTE(v51) = sub_264E23A78();
      v54 = *v63;
      (*v63)(v53, v46);
      result = v54(v11, v46);
      if (v51)
      {
        v26 = v26 + v45;
      }

      v25 = v44;
      if (!v22)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (v23 <= v25 + 1)
    {
      v28 = v25 + 1;
    }

    else
    {
      v28 = v23;
    }

    v29 = v28 - 1;
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v23)
      {
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA0, &unk_264E27A00);
        v56 = v76;
        (*(*(v55 - 8) + 56))(v76, 1, 1, v55);
        v41 = v56;
        v22 = 0;
        goto LABEL_16;
      }

      v22 = *(v58 + 8 * v27);
      ++v25;
      if (v22)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}