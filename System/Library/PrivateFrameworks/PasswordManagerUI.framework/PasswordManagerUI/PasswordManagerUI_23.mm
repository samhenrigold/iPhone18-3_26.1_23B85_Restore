uint64_t sub_21C9A6390(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED698, &unk_21CBB8140);
  sub_21C830D18();
  return sub_21CB84C84();
}

uint64_t sub_21C9A6428@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a1;
  v43 = a2;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v15);
  v40 = &v38 - v16;
  MEMORY[0x28223BE20](v17);
  v41 = &v38 - v18;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v39 = sub_21CB81034();
  v19 = *(v39 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v22 = *(v3 + 8);
  v22(v5, v2);
  v22(v8, v2);
  v22(v11, v2);
  v22(v14, v2);
  swift_setDeallocating();
  (*(v19 + 8))(v21 + v20, v39);
  swift_deallocClassInstance();
  v23 = v41;
  sub_21CB81004();
  v22(v40, v2);
  v22(v23, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21CBA15B0;
  v25 = *(v42 + 8);
  v26 = v25[3];
  v27 = MEMORY[0x277D83C10];
  *(v24 + 56) = MEMORY[0x277D83B88];
  *(v24 + 64) = v27;
  *(v24 + 32) = v26;
  v28 = v25[4];
  v29 = v25[5];
  *(v24 + 96) = MEMORY[0x277D837D0];
  *(v24 + 104) = sub_21C7C0050();
  *(v24 + 72) = v28;
  *(v24 + 80) = v29;

  v30 = sub_21CB85594();
  v32 = v31;

  v44 = v30;
  v45 = v32;
  sub_21C71F3FC();
  result = sub_21CB84054();
  v34 = v43;
  *v43 = result;
  v34[1] = v35;
  *(v34 + 16) = v36 & 1;
  v34[3] = v37;
  return result;
}

int64x2_t sub_21C9A6874@<Q0>(int64x2_t *a1@<X8>)
{
  v2 = sub_21CB84BB4();
  v3 = sub_21CB84A84();
  a1->i64[0] = v2;
  a1->i64[1] = v3;
  result = vdupq_n_s64(0x4040000000000000uLL);
  a1[1] = result;
  a1[2].i64[0] = 0x4018000000000000;
  return result;
}

uint64_t sub_21C9A68D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v25 = type metadata accessor for PMAccountRowLabelStyle(0);
  MEMORY[0x28223BE20](v25);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF37F0, &unk_21CBB8108);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3800, &qword_21CBB8118);
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x28223BE20](v9);
  v24 = &v23 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF37E8, &qword_21CBB8100);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - v13;
  v29 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3808, &qword_21CBB8120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3810, &qword_21CBB8128);
  sub_21C6EADEC(&qword_27CDF3818, &qword_27CDF3808, &qword_21CBB8120, MEMORY[0x277CE1198]);
  sub_21C9A7B60();
  sub_21CB84C84();
  *v4 = swift_getKeyPath(byte_21CBB8150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v15 = *(v25 + 20);
  *(v4 + v15) = sub_21CB83074();
  sub_21C6EADEC(&qword_27CDF37F8, &qword_27CDF37F0, &unk_21CBB8108, MEMORY[0x277CDEFF0]);
  sub_21C72C7D4(&qword_27CDEC650, type metadata accessor for PMAccountRowLabelStyle, &unk_21CBA50A8);
  v16 = v24;
  sub_21CB840E4();
  sub_21C9A7E80(v4, type metadata accessor for PMAccountRowLabelStyle);
  (*(v6 + 8))(v8, v5);
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB85224();
  sub_21CB82AC4();
  (*(v26 + 32))(v14, v16, v27);
  v17 = &v14[*(v12 + 44)];
  v18 = v35;
  *(v17 + 4) = v34;
  *(v17 + 5) = v18;
  *(v17 + 6) = v36;
  v19 = v31;
  *v17 = v30;
  *(v17 + 1) = v19;
  v20 = v33;
  *(v17 + 2) = v32;
  *(v17 + 3) = v20;
  v21 = v28;
  sub_21C716934(v14, v28, &qword_27CDF37E8, &qword_21CBB8100);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF37D0, &qword_21CBB80F8);
  *(v21 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21C9A6D74@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_21CB832F4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3848, &qword_21CBB8180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3850, &qword_21CBB8188);
  sub_21C6EADEC(&qword_27CDF3858, &qword_27CDF3850, &qword_21CBB8188, MEMORY[0x277CE14C0]);
  return sub_21CB81FC4();
}

uint64_t sub_21C9A6E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v69 = a2;
  v2 = sub_21CB82834();
  v72 = *(v2 - 8);
  KeyPath = v2;
  MEMORY[0x28223BE20](v2);
  v68 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_21CB81024();
  v4 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v61 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v61 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v61 - v14;
  MEMORY[0x28223BE20](v16);
  v74 = v61 - v17;
  MEMORY[0x28223BE20](v18);
  v70 = v61 - v19;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v66 = sub_21CB81034();
  v20 = *(v66 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v23 = *(v4 + 8);
  v24 = v6;
  v25 = v71;
  v23(v24, v71);
  v23(v9, v25);
  v23(v12, v25);
  v23(v15, v25);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v66);
  swift_deallocClassInstance();
  v26 = v70;
  sub_21CB81004();
  v23(v74, v25);
  v23(v26, v25);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v27 = swift_allocObject();
  v62 = xmmword_21CBA0690;
  *(v27 + 16) = xmmword_21CBA0690;
  v28 = *(v67 + 8);
  v29 = v28[3];
  v30 = MEMORY[0x277D83C10];
  *(v27 + 56) = MEMORY[0x277D83B88];
  *(v27 + 64) = v30;
  *(v27 + 32) = v29;
  v31 = sub_21CB85594();
  v33 = v32;

  *&v80 = v31;
  *(&v80 + 1) = v33;
  v61[1] = sub_21C71F3FC();
  v34 = sub_21CB84054();
  v64 = v35;
  v65 = v34;
  LOBYTE(v22) = v36;
  v66 = v37;
  sub_21C805AD8();
  v74 = sub_21CB83314();
  type metadata accessor for PMGeneratedPasswordsSearchResultsRow(0);
  v38 = v68;
  sub_21C7448E0(v68);
  LOBYTE(v33) = sub_21CB82824();
  (*(v72 + 8))(v38, KeyPath);
  v68 = (v33 & 1) == 0;
  KeyPath = swift_getKeyPath(asc_21CBB8190);
  LOBYTE(v9) = v22 & 1;
  v96 = v22 & 1;
  LODWORD(v67) = v22 & 1;
  LODWORD(v72) = v33 & 1;
  v94 = v33 & 1;
  v39 = v70;
  sub_21CB81014();
  sub_21CB81004();
  v23(v39, v71);
  v40 = swift_allocObject();
  *(v40 + 16) = v62;
  v41 = v28[4];
  v42 = v28[5];
  *(v40 + 56) = MEMORY[0x277D837D0];
  *(v40 + 64) = sub_21C7C0050();
  *(v40 + 32) = v41;
  *(v40 + 40) = v42;

  v43 = sub_21CB85594();
  v45 = v44;

  *&v80 = v43;
  *(&v80 + 1) = v45;
  v46 = sub_21CB84054();
  v48 = v47;
  v50 = v64;
  v49 = v65;
  *&v76 = v65;
  *(&v76 + 1) = v64;
  LOBYTE(v77) = v9;
  *(&v77 + 1) = *v95;
  DWORD1(v77) = *&v95[3];
  v51 = v66;
  *(&v77 + 1) = v66;
  *&v78 = v74;
  *(&v78 + 1) = sub_21C7902AC;
  *&v79[0] = 0;
  v52 = v68;
  *(&v79[0] + 1) = KeyPath;
  *&v79[1] = v68;
  BYTE8(v79[1]) = v72;
  *(v83 + 9) = *(v79 + 9);
  v83[0] = v79[0];
  v81 = v77;
  v82 = v78;
  v80 = v76;
  LOBYTE(v28) = v53 & 1;
  v75 = v53 & 1;
  v54 = v76;
  v55 = v77;
  v56 = v83[1];
  v57 = v69;
  *(v69 + 48) = v79[0];
  *(v57 + 64) = v56;
  v58 = v82;
  *(v57 + 16) = v55;
  *(v57 + 32) = v58;
  *v57 = v54;
  *(v57 + 80) = v46;
  *(v57 + 88) = v47;
  *(v57 + 96) = v53 & 1;
  *(v57 + 104) = v59;
  sub_21C9A7D38(&v76, v84);
  sub_21C79B058(v46, v48, v28);

  sub_21C74A72C(v46, v48, v28);

  v84[0] = v49;
  v84[1] = v50;
  v85 = v67;
  *v86 = *v95;
  *&v86[3] = *&v95[3];
  v87 = v51;
  v88 = v74;
  v89 = sub_21C7902AC;
  v90 = 0;
  v91 = KeyPath;
  v92 = v52;
  v93 = v72;
  return sub_21C9A7DA8(v84);
}

uint64_t sub_21C9A7584@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB84BB4();
  v3 = sub_21CB84A84();
  sub_21CB85214();
  sub_21CB82374();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3830, &qword_21CBB8130) + 36));
  v5 = *(sub_21CB82A84() + 20);
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_21CB831A4();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #6.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAC0, &qword_21CBA2B60) + 36)] = 256;
  *(a1 + 16) = vdupq_n_s64(0x4040000000000000uLL);
  *(a1 + 40) = v23;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 32) = 0x4018000000000000;
  *(a1 + 56) = v24;
  *(a1 + 72) = v25;
  LOBYTE(v2) = sub_21CB83CF4();
  sub_21CB81F24();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3810, &qword_21CBB8128);
  v22 = a1 + *(result + 36);
  *v22 = v2;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_21C9A772C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGeneratedPasswordsSearchResultsRow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9A7790@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMGeneratedPasswordsSearchResultsRow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9A6030(v4, a1);
}

unint64_t sub_21C9A7808()
{
  result = qword_27CDF37B8;
  if (!qword_27CDF37B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF37A8, &qword_21CBB80C8);
    sub_21C72C7D4(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView, &unk_21CBB7C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF37B8);
  }

  return result;
}

unint64_t sub_21C9A7954()
{
  result = qword_27CDF37D8;
  if (!qword_27CDF37D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF37D0, &qword_21CBB80F8);
    sub_21C9A7A0C();
    sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF37D8);
  }

  return result;
}

unint64_t sub_21C9A7A0C()
{
  result = qword_27CDF37E0;
  if (!qword_27CDF37E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF37E8, &qword_21CBB8100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF37F0, &unk_21CBB8108);
    type metadata accessor for PMAccountRowLabelStyle(255);
    sub_21C6EADEC(&qword_27CDF37F8, &qword_27CDF37F0, &unk_21CBB8108, MEMORY[0x277CDEFF0]);
    sub_21C72C7D4(&qword_27CDEC650, type metadata accessor for PMAccountRowLabelStyle, &unk_21CBA50A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF37E0);
  }

  return result;
}

unint64_t sub_21C9A7B60()
{
  result = qword_27CDF3820;
  if (!qword_27CDF3820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3810, &qword_21CBB8128);
    sub_21C9A7BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3820);
  }

  return result;
}

unint64_t sub_21C9A7BEC()
{
  result = qword_27CDF3828;
  if (!qword_27CDF3828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3830, &qword_21CBB8130);
    sub_21C9A7CA4();
    sub_21C6EADEC(&qword_27CDEBAB8, &qword_27CDEBAC0, &qword_21CBA2B60, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3828);
  }

  return result;
}

unint64_t sub_21C9A7CA4()
{
  result = qword_27CDF3838;
  if (!qword_27CDF3838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3840, &qword_21CBB8138);
    sub_21C830D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3838);
  }

  return result;
}

uint64_t sub_21C9A7D38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3860, &qword_21CBB81C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9A7DA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3860, &qword_21CBB81C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C9A7E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9A7E80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C9A7EE0()
{
  result = qword_27CDF3870;
  if (!qword_27CDF3870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3878, &unk_21CBB8220);
    sub_21C9A7F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3870);
  }

  return result;
}

unint64_t sub_21C9A7F64()
{
  result = qword_27CDF3880;
  if (!qword_27CDF3880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3798, &unk_21CBB80B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3788, &qword_21CBB80A0);
    sub_21CB82A54();
    sub_21C6EADEC(&qword_27CDF37C8, &qword_27CDF3788, &qword_21CBB80A0, MEMORY[0x277CDF028]);
    sub_21C72C7D4(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3770, &qword_21CBB8088);
    sub_21C6EADEC(&qword_27CDF37C0, &qword_27CDF3770, &qword_21CBB8088, MEMORY[0x277CDF180]);
    sub_21C830EB0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3880);
  }

  return result;
}

uint64_t sub_21C9A8174()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3888, &qword_21CBB82C8);
  sub_21C9A81F8();
  sub_21C9A825C();
  return sub_21CB84584();
}

unint64_t sub_21C9A81F8()
{
  result = qword_27CDF3890;
  if (!qword_27CDF3890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3888, &qword_21CBB82C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3890);
  }

  return result;
}

unint64_t sub_21C9A825C()
{
  result = qword_27CDF3898;
  if (!qword_27CDF3898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3898);
  }

  return result;
}

uint64_t sub_21C9A82B0(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21C9A8364()
{
  swift_getKeyPath(asc_21CBB8430);
  swift_getKeyPath(asc_21CBB8458);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C9A83D8(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v2[20] = type metadata accessor for PMAccount.Storage(0);
  v2[21] = swift_task_alloc();
  sub_21CB858B4();
  v2[22] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[23] = v4;
  v2[24] = v3;

  return MEMORY[0x2822009F8](sub_21C9A84A0, v4, v3);
}

uint64_t sub_21C9A84A0()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  v0[25] = v2;
  if (*(v1 + 24))
  {

LABEL_5:

    v8 = v0[1];

    return v8();
  }

  v3 = v0[21];
  v4 = v0[18];
  v5 = type metadata accessor for PMAccount(0);
  sub_21C9AB6C0(v4 + *(v5 + 24), v3, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = v0[21];
  if (EnumCaseMultiPayload == 1)
  {

    sub_21C9AB728(v7, type metadata accessor for PMAccount.Storage);
    goto LABEL_5;
  }

  v10 = *v7;
  v0[26] = v10;
  v0[2] = v0;
  v0[3] = sub_21C9A8690;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CAB1570;
  v0[13] = &block_descriptor_11;
  v0[14] = v11;
  [v2 clearGeneratedPasswordsMatchingSavedAccount:v10 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C9A8690()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_21C9A8798, v2, v1);
}

uint64_t sub_21C9A8798()
{
  v1 = v0[25];
  v2 = v0[26];

  sub_21C6E9BB8();

  sub_21C6E9174(v1, 0);

  v3 = v0[1];

  return v3();
}

void *sub_21C9A8824(uint64_t a1)
{
  v3 = type metadata accessor for PMGeneratedPassword(0);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x277D84F90];
  if (*(v1 + 24))
  {
    return v12;
  }

  v13 = *(v1 + 16);
  v14 = type metadata accessor for PMAccount(0);
  sub_21C9AB6C0(a1 + *(v14 + 24), v11, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C9AB728(v11, type metadata accessor for PMAccount.Storage);
    return v12;
  }

  v15 = *v11;
  v16 = [v13 generatedPasswordsMatchingSavedAccount_];
  sub_21C6E8F4C(0, &qword_27CDEAFA0, 0x277D49A38);
  v17 = sub_21CB85824();

  v18 = v17;
  if (!(v17 >> 62))
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_19:

    sub_21C6E9174(v13, 0);

    return v12;
  }

  v40 = v17;
  v19 = sub_21CB85FA4();
  v18 = v40;
  if (!v19)
  {
    goto LABEL_19;
  }

LABEL_6:
  v20 = v18;
  v41 = v15;
  v42 = v13;
  v48 = v12;
  result = sub_21C7B0B84(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v12 = v48;
    v23 = v20;
    v43 = v20 & 0xC000000000000001;
    v44 = v19;
    v45 = v20;
    do
    {
      if (v43)
      {
        v24 = MEMORY[0x21CF15BD0](v22, v23);
      }

      else
      {
        v24 = *(v23 + 8 * v22 + 32);
      }

      v25 = v24;
      *(v5 + *(v47 + 20)) = v24;
      type metadata accessor for PMGeneratedPassword.Storage(0);
      swift_storeEnumTagMultiPayload();
      v26 = v25;
      v27 = [v26 protectionSpace];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 host];
      }

      else
      {
        v29 = [objc_opt_self() privateBrowsingSentinel];
      }

      v30 = sub_21CB855C4();
      v32 = v31;

      v33 = [v26 password];
      v34 = sub_21CB855C4();
      v36 = v35;

      v37 = [v26 generationDate];
      type metadata accessor for PMGeneratedPassword.ID(0);
      sub_21CB80D94();

      *v5 = v30;
      v5[1] = v32;
      v5[2] = v34;
      v5[3] = v36;
      sub_21C7D5F48(v5, v8);
      v48 = v12;
      v39 = *(v12 + 16);
      v38 = *(v12 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_21C7B0B84((v38 > 1), v39 + 1, 1);
        v12 = v48;
      }

      ++v22;
      *(v12 + 16) = v39 + 1;
      sub_21C7D5F48(v8, v12 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v39);
      v23 = v45;
    }

    while (v44 != v22);
    sub_21C6E9174(v42, 0);

    return v12;
  }

  __break(1u);
  return result;
}

void sub_21C9A8C74(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PMGeneratedPassword(0);
  MEMORY[0x28223BE20](v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMGeneratedPassword.Storage(0);
  MEMORY[0x28223BE20](v10);
  v12 = (aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(v3 + 24) & 1) == 0)
  {
    v13 = *(v3 + 16);
    sub_21C9AB6C0(a1 + *(v7 + 20), v12, type metadata accessor for PMGeneratedPassword.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v15 = *v12;
    if (EnumCaseMultiPayload == 1)
    {

      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
      v17 = sub_21CB80DD4();
      (*(*(v17 - 8) + 8))(v12 + v16, v17);
    }

    else
    {
      if (a2)
      {
        aBlock[4] = a2;
        aBlock[5] = a3;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21C6ECBD4;
        aBlock[3] = &block_descriptor_8;
        v18 = _Block_copy(aBlock);
        sub_21C9AB788(v13, 0);
        sub_21C71DD5C(a2, a3);
      }

      else
      {
        v19 = v13;
        v18 = 0;
      }

      [v13 removeGeneratedPassword:v15 completionHandler:v18];
      _Block_release(v18);
      swift_getKeyPath(asc_21CBB8430);
      swift_getKeyPath(asc_21CBB8458);
      sub_21CB81DB4();

      v20 = sub_21CAB1704(a1, aBlock[0]);
      v22 = v21;

      if ((v22 & 1) == 0)
      {
        swift_getKeyPath(asc_21CBB8430);
        swift_getKeyPath(asc_21CBB8458);
        v23 = sub_21CB81DA4();
        sub_21CACA9F8(v20, v9);
        sub_21C9AB728(v9, type metadata accessor for PMGeneratedPassword);
        v23(aBlock, 0);
      }

      sub_21C6E9174(v13, 0);
    }
  }
}

uint64_t sub_21C9A8FB0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(asc_21CBB8430);
  swift_getKeyPath(asc_21CBB8458);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C9A9030(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(asc_21CBB8430);
  swift_getKeyPath(asc_21CBB8458);

  return sub_21CB81DC4();
}

uint64_t sub_21C9A90AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CB853D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB85404();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v11 = sub_21CB85CF4();
  aBlock[4] = sub_21C9A96FC;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_21;
  v12 = _Block_copy(aBlock);

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C91A4E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C91A53C();
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v10, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21C9A932C(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = type metadata accessor for PMGeneratedPassword.Storage(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = (&v28 - v7);
  v9 = sub_21CB80DD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v16 = type metadata accessor for PMGeneratedPassword(0);
  sub_21C9AB6C0(a1 + *(v16 + 20), v8, type metadata accessor for PMGeneratedPassword.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = *v8;
  if (EnumCaseMultiPayload == 1)
  {

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
    (*(v10 + 32))(v15, v8 + *(v19 + 64), v9);
  }

  else
  {
    v20 = [*v8 generationDate];
    sub_21CB80D94();
  }

  sub_21C9AB6C0(v29 + *(v16 + 20), v5, type metadata accessor for PMGeneratedPassword.Storage);
  v21 = swift_getEnumCaseMultiPayload();
  v22 = *v5;
  if (v21 == 1)
  {

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
    (*(v10 + 32))(v12, v5 + *(v23 + 64), v9);
  }

  else
  {
    v24 = [*v5 generationDate];
    sub_21CB80D94();
  }

  v25 = sub_21CB80D34();
  v26 = *(v10 + 8);
  v26(v12, v9);
  v26(v15, v9);
  return v25 & 1;
}

uint64_t sub_21C9A9634()
{
  sub_21C6E9174(*(v0 + 16), *(v0 + 24));
  v1 = OBJC_IVAR____TtC17PasswordManagerUI24PMGeneratedPasswordStore__generatedPasswords;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB560, &unk_21CBB4090);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_21C9A9700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v71 = type metadata accessor for PMGeneratedPassword.Storage(0);
  MEMORY[0x28223BE20](v71);
  v67 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v54 - v10);
  v12 = sub_21CB80DD4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v68 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v70 = &v54 - v16;
  v17 = type metadata accessor for PMGeneratedPassword(0);
  MEMORY[0x28223BE20](v17);
  v63 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v72 = &v54 - v20;
  MEMORY[0x28223BE20](v21);
  v69 = &v54 - v24;
  v56 = a2;
  if (a3 != a2)
  {
    v25 = v22;
    v26 = *a4;
    v27 = *(v23 + 72);
    v65 = (v13 + 8);
    v66 = (v13 + 32);
    v28 = v26 + v27 * (a3 - 1);
    v61 = -v27;
    v62 = v26;
    v29 = a1 - a3;
    v55 = v27;
    v30 = v26 + v27 * a3;
    v64 = v11;
LABEL_5:
    v59 = v28;
    v60 = a3;
    v57 = v30;
    v58 = v29;
    v31 = v29;
    while (1)
    {
      v32 = v69;
      sub_21C9AB6C0(v30, v69, type metadata accessor for PMGeneratedPassword);
      sub_21C9AB6C0(v28, v72, type metadata accessor for PMGeneratedPassword);
      sub_21C9AB6C0(v32 + *(v25 + 20), v11, type metadata accessor for PMGeneratedPassword.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v34 = *v11;
      if (EnumCaseMultiPayload == 1)
      {

        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
        (*v66)(v70, v11 + *(v35 + 64), v12);
      }

      else
      {
        v36 = v12;
        v37 = [*v11 generationDate];
        sub_21CB80D94();

        v12 = v36;
      }

      v38 = v25;
      v39 = v67;
      sub_21C9AB6C0(v72 + *(v25 + 20), v67, type metadata accessor for PMGeneratedPassword.Storage);
      v40 = swift_getEnumCaseMultiPayload();
      v41 = *v39;
      if (v40 == 1)
      {

        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
        v43 = v68;
        (*v66)(v68, v39 + *(v42 + 64), v12);
        v44 = v12;
      }

      else
      {
        v45 = [*v39 generationDate];
        v44 = v12;
        v46 = v45;
        v43 = v68;
        sub_21CB80D94();
      }

      v47 = v70;
      v48 = sub_21CB80D34();
      v49 = v43;
      v50 = v48;
      v51 = *v65;
      (*v65)(v49, v44);
      v51(v47, v44);
      sub_21C9AB728(v72, type metadata accessor for PMGeneratedPassword);
      sub_21C9AB728(v69, type metadata accessor for PMGeneratedPassword);
      v12 = v44;
      v25 = v38;
      v11 = v64;
      if ((v50 & 1) == 0)
      {
LABEL_4:
        a3 = v60 + 1;
        v28 = v59 + v55;
        v29 = v58 - 1;
        v30 = v57 + v55;
        if (v60 + 1 == v56)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v62)
      {
        break;
      }

      v52 = v63;
      sub_21C7D5F48(v30, v63);
      swift_arrayInitWithTakeFrontToBack();
      sub_21C7D5F48(v52, v28);
      v28 += v61;
      v30 += v61;
      if (__CFADD__(v31++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21C9A9C38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v160 = a1;
  v189 = type metadata accessor for PMGeneratedPassword.Storage(0);
  MEMORY[0x28223BE20](v189);
  v7 = (&v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = (&v156 - v9);
  MEMORY[0x28223BE20](v11);
  v167 = (&v156 - v12);
  MEMORY[0x28223BE20](v13);
  v15 = (&v156 - v14);
  v16 = sub_21CB80DD4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v182 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v188 = &v156 - v20;
  MEMORY[0x28223BE20](v21);
  v166 = &v156 - v22;
  MEMORY[0x28223BE20](v23);
  v175 = &v156 - v24;
  v185 = type metadata accessor for PMGeneratedPassword(0);
  v172 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v162 = &v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v179 = &v156 - v27;
  MEMORY[0x28223BE20](v28);
  v190 = &v156 - v29;
  MEMORY[0x28223BE20](v30);
  v187 = &v156 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v156 - v33;
  MEMORY[0x28223BE20](v35);
  v174 = &v156 - v36;
  MEMORY[0x28223BE20](v37);
  MEMORY[0x28223BE20](v38);
  v173 = a3;
  v41 = *(a3 + 8);
  if (v41 < 1)
  {
    v43 = MEMORY[0x277D84F90];
LABEL_110:
    a3 = *v160;
    if (!*v160)
    {
      goto LABEL_150;
    }

    v17 = v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v177;
    if (isUniquelyReferenced_nonNull_native)
    {
      v151 = v17;
    }

    else
    {
LABEL_144:
      v151 = sub_21C864538(v17);
    }

    v191 = v151;
    v17 = *(v151 + 2);
    if (v17 >= 2)
    {
      while (*v173)
      {
        v152 = *&v151[16 * v17];
        v153 = v151;
        v154 = *&v151[16 * v17 + 24];
        sub_21C9AAC30(&(*v173)[*(v172 + 72) * v152], &(*v173)[*(v172 + 72) * *&v151[16 * v17 + 16]], &(*v173)[*(v172 + 72) * v154], a3);
        if (v34)
        {
          goto LABEL_121;
        }

        if (v154 < v152)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v153 = sub_21C864538(v153);
        }

        if (v17 - 2 >= *(v153 + 2))
        {
          goto LABEL_138;
        }

        v155 = &v153[16 * v17];
        *v155 = v152;
        *(v155 + 1) = v154;
        v191 = v153;
        sub_21C8644AC(v17 - 1);
        v151 = v191;
        v17 = *(v191 + 2);
        if (v17 <= 1)
        {
          goto LABEL_121;
        }
      }

      goto LABEL_148;
    }

    goto LABEL_121;
  }

  v156 = &v156 - v39;
  v157 = v40;
  v42 = 0;
  v184 = (v17 + 32);
  v43 = MEMORY[0x277D84F90];
  v183 = (v17 + 8);
  v159 = a4;
  v168 = v15;
  v186 = v16;
  v180 = v7;
  v181 = v10;
  v170 = v34;
  while (1)
  {
    v44 = v42;
    v163 = v43;
    if (v42 + 1 < v41)
    {
      v176 = v41;
      v45 = *v173;
      a3 = *(v172 + 72);
      v178 = &(*v173)[a3 * (v42 + 1)];
      v46 = v156;
      sub_21C9AB6C0(v178, v156, type metadata accessor for PMGeneratedPassword);
      v171 = v45;
      v47 = &v45[a3 * v44];
      v48 = v44;
      v49 = v157;
      sub_21C9AB6C0(v47, v157, type metadata accessor for PMGeneratedPassword);
      v50 = v177;
      LODWORD(v169) = sub_21C9A932C(v46, v49);
      v177 = v50;
      if (!v50)
      {
        sub_21C9AB728(v49, type metadata accessor for PMGeneratedPassword);
        sub_21C9AB728(v46, type metadata accessor for PMGeneratedPassword);
        v158 = v48;
        v51 = v48 + 2;
        v52 = v171 + a3 * (v48 + 2);
        v53 = a3;
        v171 = a3;
        v17 = v178;
        while (1)
        {
          v72 = v176;
          if (v176 == v51)
          {
            break;
          }

          v62 = v174;
          sub_21C9AB6C0(v52, v174, type metadata accessor for PMGeneratedPassword);
          sub_21C9AB6C0(v17, v34, type metadata accessor for PMGeneratedPassword);
          sub_21C9AB6C0(v62 + *(v185 + 20), v15, type metadata accessor for PMGeneratedPassword.Storage);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v64 = *v15;
          if (EnumCaseMultiPayload == 1)
          {

            v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
            (*v184)(v175, v15 + *(v65 + 64), v186);
          }

          else
          {
            v66 = [*v15 generationDate];
            sub_21CB80D94();
          }

          v67 = v167;
          v68 = v166;
          sub_21C9AB6C0(&v34[*(v185 + 20)], v167, type metadata accessor for PMGeneratedPassword.Storage);
          v69 = swift_getEnumCaseMultiPayload();
          v70 = *v67;
          v178 = v17;
          if (v69 == 1)
          {

            v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
            v55 = v186;
            (*v184)(v68, v67 + *(v54 + 64), v186);
          }

          else
          {
            v71 = [v70 generationDate];
            sub_21CB80D94();

            v55 = v186;
          }

          v56 = v175;
          v57 = sub_21CB80D34();
          v58 = v68;
          v59 = v57 & 1;
          v60 = *v183;
          (*v183)(v58, v55);
          v60(v56, v55);
          a3 = type metadata accessor for PMGeneratedPassword;
          v34 = v170;
          sub_21C9AB728(v170, type metadata accessor for PMGeneratedPassword);
          sub_21C9AB728(v174, type metadata accessor for PMGeneratedPassword);
          ++v51;
          v53 = v171;
          v52 += v171;
          v17 = &v178[v171];
          v61 = (v169 & 1) == v59;
          v15 = v168;
          if (!v61)
          {
            v72 = v51 - 1;
            break;
          }
        }

        a4 = v159;
        v44 = v158;
        if (v169)
        {
          if (v72 < v158)
          {
            goto LABEL_143;
          }

          if (v158 < v72)
          {
            a3 = v53 * (v72 - 1);
            v73 = v72 * v53;
            v176 = v72;
            v74 = v72;
            v75 = v158;
            v76 = v158 * v53;
            do
            {
              if (v75 != --v74)
              {
                v77 = *v173;
                if (!*v173)
                {
                  goto LABEL_147;
                }

                v17 = &v77[v76];
                sub_21C7D5F48(&v77[v76], v162);
                if (v76 < a3 || v17 >= &v77[v73])
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v76 != a3)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_21C7D5F48(v162, &v77[a3]);
                v34 = v170;
                v53 = v171;
              }

              ++v75;
              a3 -= v53;
              v73 -= v53;
              v76 += v53;
            }

            while (v75 < v74);
            a4 = v159;
            v15 = v168;
            v44 = v158;
            v72 = v176;
          }
        }

        goto LABEL_31;
      }

      sub_21C9AB728(v49, type metadata accessor for PMGeneratedPassword);
      sub_21C9AB728(v46, type metadata accessor for PMGeneratedPassword);
LABEL_121:

      return;
    }

    v72 = v42 + 1;
LABEL_31:
    v78 = v173[1];
    if (v72 >= v78)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v72, v44))
    {
      goto LABEL_140;
    }

    if (v72 - v44 >= a4)
    {
LABEL_40:
      v80 = v72;
      if (v72 < v44)
      {
        goto LABEL_139;
      }

      goto LABEL_41;
    }

    if (__OFADD__(v44, a4))
    {
      goto LABEL_141;
    }

    if (v44 + a4 >= v78)
    {
      v79 = v173[1];
    }

    else
    {
      v79 = (v44 + a4);
    }

    if (v79 < v44)
    {
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (v72 == v79)
    {
      goto LABEL_40;
    }

    v125 = *v173;
    v126 = *(v172 + 72);
    v127 = &(*v173)[v126 * (v72 - 1)];
    v128 = v44;
    v129 = -v126;
    v158 = v128;
    v130 = v128 - v72;
    v178 = v125;
    v161 = v126;
    v17 = &v125[v72 * v126];
    v131 = v185;
    v164 = v79;
LABEL_93:
    v176 = v72;
    v165 = v17;
    v169 = v130;
    v171 = v127;
    v132 = v127;
LABEL_94:
    v133 = v187;
    sub_21C9AB6C0(v17, v187, type metadata accessor for PMGeneratedPassword);
    sub_21C9AB6C0(v132, v190, type metadata accessor for PMGeneratedPassword);
    sub_21C9AB6C0(v133 + *(v131 + 20), v10, type metadata accessor for PMGeneratedPassword.Storage);
    v134 = swift_getEnumCaseMultiPayload();
    v135 = *v10;
    if (v134 == 1)
    {

      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
      (*v184)(v188, v10 + *(v136 + 64), v186);
    }

    else
    {
      v137 = [*v10 generationDate];
      sub_21CB80D94();
    }

    sub_21C9AB6C0(v190 + *(v131 + 20), v7, type metadata accessor for PMGeneratedPassword.Storage);
    v138 = swift_getEnumCaseMultiPayload();
    v139 = *v7;
    if (v138 == 1)
    {

      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
      v141 = v182;
      v142 = v186;
      (*v184)(v182, v7 + *(v140 + 64), v186);
    }

    else
    {
      v143 = [*v7 generationDate];
      v144 = v182;
      sub_21CB80D94();

      v141 = v144;
      v142 = v186;
    }

    v145 = v188;
    v146 = sub_21CB80D34();
    v147 = v141;
    a3 = v146;
    v148 = *v183;
    (*v183)(v147, v142);
    v148(v145, v142);
    sub_21C9AB728(v190, type metadata accessor for PMGeneratedPassword);
    sub_21C9AB728(v187, type metadata accessor for PMGeneratedPassword);
    if (a3)
    {
      break;
    }

    v7 = v180;
    v10 = v181;
    v131 = v185;
LABEL_92:
    v72 = v176 + 1;
    v127 = v171 + v161;
    v130 = v169 - 1;
    v17 = v165 + v161;
    v80 = v164;
    if (v176 + 1 != v164)
    {
      goto LABEL_93;
    }

    v15 = v168;
    v34 = v170;
    v44 = v158;
    if (v164 < v158)
    {
      goto LABEL_139;
    }

LABEL_41:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v43 = v163;
    }

    else
    {
      v43 = sub_21C86467C(0, *(v163 + 2) + 1, 1, v163);
    }

    a3 = *(v43 + 2);
    v81 = *(v43 + 3);
    v17 = a3 + 1;
    if (a3 >= v81 >> 1)
    {
      v43 = sub_21C86467C((v81 > 1), a3 + 1, 1, v43);
    }

    *(v43 + 2) = v17;
    v82 = &v43[16 * a3];
    *(v82 + 4) = v44;
    *(v82 + 5) = v80;
    v178 = *v160;
    if (!v178)
    {
      goto LABEL_149;
    }

    v164 = v80;
    if (a3)
    {
      while (2)
      {
        v83 = v17 - 1;
        if (v17 >= 4)
        {
          v88 = &v43[16 * v17 + 32];
          v89 = *(v88 - 64);
          v90 = *(v88 - 56);
          v94 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          if (v94)
          {
            goto LABEL_126;
          }

          v93 = *(v88 - 48);
          v92 = *(v88 - 40);
          v94 = __OFSUB__(v92, v93);
          v86 = v92 - v93;
          v87 = v94;
          if (v94)
          {
            goto LABEL_127;
          }

          v95 = &v43[16 * v17];
          v97 = *v95;
          v96 = *(v95 + 1);
          v94 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v94)
          {
            goto LABEL_129;
          }

          v94 = __OFADD__(v86, v98);
          v99 = v86 + v98;
          if (v94)
          {
            goto LABEL_132;
          }

          if (v99 >= v91)
          {
            v117 = &v43[16 * v83 + 32];
            v119 = *v117;
            v118 = *(v117 + 1);
            v94 = __OFSUB__(v118, v119);
            v120 = v118 - v119;
            if (v94)
            {
              goto LABEL_136;
            }

            if (v86 < v120)
            {
              v83 = v17 - 2;
            }
          }

          else
          {
LABEL_60:
            if (v87)
            {
              goto LABEL_128;
            }

            v100 = &v43[16 * v17];
            v102 = *v100;
            v101 = *(v100 + 1);
            v103 = __OFSUB__(v101, v102);
            v104 = v101 - v102;
            v105 = v103;
            if (v103)
            {
              goto LABEL_131;
            }

            v106 = &v43[16 * v83 + 32];
            v108 = *v106;
            v107 = *(v106 + 1);
            v94 = __OFSUB__(v107, v108);
            v109 = v107 - v108;
            if (v94)
            {
              goto LABEL_134;
            }

            if (__OFADD__(v104, v109))
            {
              goto LABEL_135;
            }

            if (v104 + v109 < v86)
            {
              goto LABEL_74;
            }

            if (v86 < v109)
            {
              v83 = v17 - 2;
            }
          }
        }

        else
        {
          if (v17 == 3)
          {
            v84 = *(v43 + 4);
            v85 = *(v43 + 5);
            v94 = __OFSUB__(v85, v84);
            v86 = v85 - v84;
            v87 = v94;
            goto LABEL_60;
          }

          v110 = &v43[16 * v17];
          v112 = *v110;
          v111 = *(v110 + 1);
          v94 = __OFSUB__(v111, v112);
          v104 = v111 - v112;
          v105 = v94;
LABEL_74:
          if (v105)
          {
            goto LABEL_130;
          }

          v113 = &v43[16 * v83];
          v115 = *(v113 + 4);
          v114 = *(v113 + 5);
          v94 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v94)
          {
            goto LABEL_133;
          }

          if (v116 < v104)
          {
            break;
          }
        }

        a3 = v83 - 1;
        if (v83 - 1 >= v17)
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
          goto LABEL_142;
        }

        if (!*v173)
        {
          goto LABEL_146;
        }

        v121 = v43;
        v17 = *&v43[16 * a3 + 32];
        v122 = *&v43[16 * v83 + 40];
        v123 = v177;
        sub_21C9AAC30(&(*v173)[*(v172 + 72) * v17], &(*v173)[*(v172 + 72) * *&v43[16 * v83 + 32]], &(*v173)[*(v172 + 72) * v122], v178);
        v177 = v123;
        if (v123)
        {
          goto LABEL_121;
        }

        if (v122 < v17)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = sub_21C864538(v121);
        }

        if (a3 >= *(v121 + 2))
        {
          goto LABEL_125;
        }

        v124 = &v121[16 * a3];
        *(v124 + 4) = v17;
        *(v124 + 5) = v122;
        v191 = v121;
        sub_21C8644AC(v83);
        v43 = v191;
        v17 = *(v191 + 2);
        if (v17 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v41 = v173[1];
    v42 = v164;
    a4 = v159;
    if (v164 >= v41)
    {
      goto LABEL_110;
    }
  }

  v131 = v185;
  v10 = v181;
  if (v178)
  {
    a3 = v179;
    sub_21C7D5F48(v17, v179);
    swift_arrayInitWithTakeFrontToBack();
    sub_21C7D5F48(a3, v132);
    v132 += v129;
    v17 += v129;
    v149 = __CFADD__(v130++, 1);
    v7 = v180;
    if (v149)
    {
      goto LABEL_92;
    }

    goto LABEL_94;
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
}

void sub_21C9AAC30(char *a1, char *a2, char *a3, char *a4)
{
  v106 = type metadata accessor for PMGeneratedPassword.Storage(0);
  MEMORY[0x28223BE20](v106);
  v96 = (&v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v95 = (&v90 - v10);
  MEMORY[0x28223BE20](v11);
  v13 = (&v90 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = (&v90 - v15);
  v102 = sub_21CB80DD4();
  v17 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v94 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v101 = &v90 - v20;
  MEMORY[0x28223BE20](v21);
  v99 = &v90 - v22;
  MEMORY[0x28223BE20](v23);
  v104 = &v90 - v24;
  v107 = type metadata accessor for PMGeneratedPassword(0);
  MEMORY[0x28223BE20](v107);
  v97 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v100 = (&v90 - v27);
  MEMORY[0x28223BE20](v28);
  v105 = &v90 - v29;
  MEMORY[0x28223BE20](v30);
  v103 = &v90 - v31;
  v33 = *(v32 + 72);
  if (!v33)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v33 == -1)
  {
    goto LABEL_72;
  }

  v34 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v33 == -1)
  {
    goto LABEL_73;
  }

  v35 = (a2 - a1) / v33;
  v110 = a1;
  v109 = a4;
  if (v35 >= v34 / v33)
  {
    v37 = v34 / v33 * v33;
    if (a4 < a2 || &a2[v37] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v38 = v97;
    }

    else
    {
      v38 = v97;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v103 = a2;
    v63 = &a4[v37];
    if (v37 >= 1)
    {
      v64 = -v33;
      v91 = (v17 + 8);
      v92 = (v17 + 32);
      v65 = &a4[v37];
      v67 = v95;
      v66 = v96;
      v93 = a4;
      v105 = v64;
      do
      {
        v90 = v63;
        v68 = v103;
        v103 += v64;
        v98 = v68;
        v99 = v63;
        while (1)
        {
          if (v68 <= a1)
          {
            v110 = v68;
            v108 = v90;
            goto LABEL_70;
          }

          v69 = a3;
          v70 = (v65 + v64);
          v71 = v100;
          sub_21C9AB6C0(v65 + v64, v100, type metadata accessor for PMGeneratedPassword);
          sub_21C9AB6C0(v103, v38, type metadata accessor for PMGeneratedPassword);
          sub_21C9AB6C0(v71 + *(v107 + 20), v67, type metadata accessor for PMGeneratedPassword.Storage);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v73 = *v67;
          if (EnumCaseMultiPayload == 1)
          {

            v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
            (*v92)(v101, v67 + *(v74 + 64), v102);
          }

          else
          {
            v75 = [*v67 generationDate];
            sub_21CB80D94();
          }

          sub_21C9AB6C0(v38 + *(v107 + 20), v66, type metadata accessor for PMGeneratedPassword.Storage);
          v76 = swift_getEnumCaseMultiPayload();
          v77 = *v66;
          v104 = v70;
          if (v76 == 1)
          {

            v78 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
            v79 = v94;
            v80 = v102;
            (*v92)(v94, v78, v102);
          }

          else
          {
            v81 = [v77 generationDate];
            v79 = v94;
            sub_21CB80D94();

            v80 = v102;
          }

          a3 = &v69[v105];
          v82 = v101;
          v83 = sub_21CB80D34();
          v84 = v79;
          v85 = v83;
          v86 = *v91;
          (*v91)(v84, v80);
          v86(v82, v80);
          v38 = v97;
          sub_21C9AB728(v97, type metadata accessor for PMGeneratedPassword);
          sub_21C9AB728(v100, type metadata accessor for PMGeneratedPassword);
          if (v85)
          {
            break;
          }

          v87 = v104;
          v88 = v104;
          if (v69 < v65 || a3 >= v65)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v69 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v99 = v88;
          v65 = v88;
          v67 = v95;
          v66 = v96;
          v64 = v105;
          v68 = v98;
          if (v87 <= v93)
          {
            v103 = v98;
            v63 = v99;
            goto LABEL_69;
          }
        }

        v67 = v95;
        v66 = v96;
        if (v69 < v98 || a3 >= v98)
        {
          swift_arrayInitWithTakeFrontToBack();
          v89 = v93;
          v63 = v99;
        }

        else
        {
          v89 = v93;
          v63 = v99;
          if (v69 != v98)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v64 = v105;
      }

      while (v65 > v89);
    }

LABEL_69:
    v110 = v103;
    v108 = v63;
  }

  else
  {
    v36 = v35 * v33;
    if (a4 < a1 || &a1[v36] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v101 = &a4[v36];
    v108 = &a4[v36];
    if (v36 >= 1 && a2 < a3)
    {
      v96 = (v17 + 32);
      v97 = v33;
      v40 = (v17 + 8);
      v100 = v13;
      v98 = a3;
      do
      {
        v41 = v103;
        sub_21C9AB6C0(a2, v103, type metadata accessor for PMGeneratedPassword);
        v42 = a4;
        sub_21C9AB6C0(a4, v105, type metadata accessor for PMGeneratedPassword);
        sub_21C9AB6C0(&v41[*(v107 + 20)], v16, type metadata accessor for PMGeneratedPassword.Storage);
        v43 = swift_getEnumCaseMultiPayload();
        v44 = *v16;
        v45 = a2;
        if (v43 == 1)
        {

          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
          v47 = v102;
          (*v96)(v104, v16 + *(v46 + 64), v102);
        }

        else
        {
          v48 = [*v16 generationDate];
          sub_21CB80D94();

          v47 = v102;
        }

        sub_21C9AB6C0(v105 + *(v107 + 20), v13, type metadata accessor for PMGeneratedPassword.Storage);
        v49 = swift_getEnumCaseMultiPayload();
        v50 = *v13;
        if (v49 == 1)
        {

          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
          v52 = v99;
          (*v96)(v99, v13 + *(v51 + 64), v47);
          v53 = v47;
        }

        else
        {
          v54 = [*v13 generationDate];
          v53 = v47;
          v55 = v54;
          v52 = v99;
          sub_21CB80D94();
        }

        v56 = v104;
        v57 = sub_21CB80D34();
        v58 = v52;
        v59 = v57;
        v60 = *v40;
        (*v40)(v58, v53);
        v60(v56, v53);
        sub_21C9AB728(v105, type metadata accessor for PMGeneratedPassword);
        sub_21C9AB728(v103, type metadata accessor for PMGeneratedPassword);
        v61 = v97;
        if (v59)
        {
          v62 = v45;
          a2 = &v45[v97];
          v13 = v100;
          if (a1 < v45 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            a4 = v42;
          }

          else
          {
            a4 = v42;
            if (a1 != v62)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          a2 = v45;
          v13 = v100;
          if (a1 < v42 || a1 >= &v42[v97])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v109 = &v42[v61];
          a4 = &v42[v61];
        }

        a1 += v61;
        v110 = a1;
      }

      while (a4 < v101 && a2 < v98);
    }
  }

LABEL_70:
  sub_21C86454C(&v110, &v109, &v108);
}

uint64_t sub_21C9AB6C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9AB728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_21C9AB788(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t sub_21C9AB7FC(uint64_t a1)
{
  result = type metadata accessor for PMSharingGroup(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21C9AB884@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v83 = sub_21CB829D4();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for _PMGroupAccountsView(0);
  v4 = v3 - 8;
  v86 = *(v3 - 8);
  v92 = *(v86 + 8);
  MEMORY[0x28223BE20](v3);
  v91 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21CB83554();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_21CB83584();
  v67 = *(v87 - 1);
  MEMORY[0x28223BE20](v87);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF38F0, &qword_21CBB8618);
  v65 = *(OpaqueTypeConformance2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeConformance2);
  v11 = &v63 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF38F8, &qword_21CBB8620);
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v90 = &v63 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3900, &qword_21CBB8628);
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v93 = &v63 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3908, &qword_21CBB8630) - 8;
  MEMORY[0x28223BE20](v72);
  v94 = &v63 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3910, &qword_21CBB8638);
  MEMORY[0x28223BE20](v75);
  v73 = &v63 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3918, &qword_21CBB8640);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = &v63 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3920, &qword_21CBB8648);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = &v63 - v17;
  v85 = v1;
  v95 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3928, &qword_21CBB8650);
  sub_21C6EADEC(&qword_27CDF3930, &qword_27CDF3928, &qword_21CBB8650, MEMORY[0x277CE14C0]);
  sub_21CB83EF4();
  v88 = v4;
  type metadata accessor for PMAccountsListModel(0);
  sub_21C705F88(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
  sub_21CB82B54();
  swift_getKeyPath("h");
  sub_21CB82B74();

  sub_21CB83544();
  sub_21CB83534();
  (*(v64 + 8))(v7, v66);
  v18 = sub_21C6EADEC(&qword_27CDF3938, &qword_27CDF38F0, &qword_21CBB8618, MEMORY[0x277CDE580]);
  v19 = OpaqueTypeConformance2;
  sub_21CB84114();

  (*(v67 + 8))(v9, v87);
  (*(v65 + 8))(v11, v19);
  v20 = v85;
  v21 = v85 + *(v4 + 28);
  v22 = *v21;
  v23 = *(v21 + 8);
  LOBYTE(v96) = v22;
  v97 = v23;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v87 = type metadata accessor for _PMGroupAccountsView;
  v24 = v91;
  sub_21C9AF754(v20, v91, type metadata accessor for _PMGroupAccountsView);
  v25 = *(v86 + 80);
  v26 = (v25 + 16) & ~v25;
  v27 = swift_allocObject();
  v86 = type metadata accessor for _PMGroupAccountsView;
  sub_21C9AF7BC(v24, v27 + v26, type metadata accessor for _PMGroupAccountsView);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB90, &qword_21CBA5268);
  v98 = OpaqueTypeConformance2;
  v99 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_21C815788();
  v29 = v68;
  v30 = v90;
  sub_21CB847B4();

  (*(v69 + 8))(v30, v29);
  v31 = v85;
  v32 = v85 + *(v88 + 32);
  v33 = *v32;
  v34 = *(v32 + 8);
  LOBYTE(v96) = v33;
  v97 = v34;
  sub_21CB84D74();
  LODWORD(v90) = v100;
  v35 = v91;
  sub_21C9AF754(v31, v91, v87);
  v36 = swift_allocObject();
  sub_21C9AF7BC(v35, v36 + v26, v86);
  type metadata accessor for PMGroupInvitationAcceptanceFlow(0);
  v98 = v29;
  v99 = v66;
  v100 = OpaqueTypeConformance2;
  v101 = v28;
  swift_getOpaqueTypeConformance2();
  sub_21C705F88(&qword_27CDEE938, type metadata accessor for PMGroupInvitationAcceptanceFlow, &unk_21CBB8F38);
  v37 = v94;
  v38 = v70;
  v39 = v93;
  sub_21CB847B4();

  (*(v71 + 8))(v39, v38);
  sub_21C9AF754(v31, v35, v87);
  v93 = v25;
  v40 = swift_allocObject();
  sub_21C9AF7BC(v35, v40 + v26, v86);
  v41 = (v37 + *(v72 + 44));
  *v41 = sub_21C9AFD2C;
  v41[1] = v40;
  v41[2] = 0;
  v41[3] = 0;
  v42 = *(v31 + *(v88 + 48));
  if (v42)
  {
    swift_getKeyPath("H");
    swift_getKeyPath("(");
    v43 = v75;
    v44 = v73;
    v45 = &v73[*(v75 + 36)];
    v46 = v42;
    sub_21CB81DB4();

    sub_21C9AF754(v31, v35, type metadata accessor for _PMGroupAccountsView);
    v47 = swift_allocObject();
    sub_21C9AF7BC(v35, v47 + v26, type metadata accessor for _PMGroupAccountsView);
    v48 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED990, &qword_21CBA7E90) + 36)];
    *v48 = sub_21C9AFD44;
    v48[1] = v47;
    sub_21C770170(v94, v44);
    v49 = v81;
    sub_21CB85294();
    v50 = sub_21C9AFDB4();
    v51 = sub_21C705F88(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    v52 = v77;
    v53 = v83;
    sub_21CB849C4();
    (*(v82 + 8))(v49, v53);
    sub_21C7701E0(v44);
    v54 = (v31 + *(type metadata accessor for PMSharingGroup(0) + 20));
    v56 = *v54;
    v55 = v54[1];
    v96 = v56;
    v97 = v55;
    v98 = v43;
    v99 = v53;
    v100 = v50;
    v101 = v51;
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    v57 = v74;
    v58 = v80;
    sub_21CB842F4();
    (*(v79 + 8))(v52, v58);
    KeyPath = swift_getKeyPath("\b");
    v60 = v84;
    (*(v76 + 32))(v84, v57, v78);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3950, &unk_21CBB86F8);
    v62 = v60 + *(result + 36);
    *v62 = KeyPath;
    *(v62 + 8) = 0;
  }

  else
  {
    type metadata accessor for PMPasswordManagerState(0);
    sub_21C705F88(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C9AC714@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3958, &qword_21CBB8708);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3960, &qword_21CBB8710);
  MEMORY[0x28223BE20](v7 - 8);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3968, &qword_21CBB8718);
  v40 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v41 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v43 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3970, &qword_21CBB8720);
  sub_21C6EADEC(&qword_27CDF3978, &qword_27CDF3970, &qword_21CBB8720, MEMORY[0x277CE14C0]);
  v39 = v16;
  sub_21CB85054();
  v18 = sub_21C9ACC28(v17);
  if (v18)
  {
    MEMORY[0x28223BE20](v18);
    *(&v35 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB68, &qword_21CBB8730);
    sub_21C6EADEC(&qword_27CDF3988, &qword_27CDEDB68, &qword_21CBB8730, &unk_21CBA7010);
    sub_21CB85054();
    (*(v4 + 32))(v11, v6, v3);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  (*(v4 + 56))(v11, v19, 1, v3);
  type metadata accessor for PMAccountsListModel(0);
  sub_21C705F88(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
  v36 = sub_21CB82B84();
  v37 = v20;
  v21 = [objc_opt_self() safari_browserDefaults];
  v22 = sub_21CB81E74();
  v23 = v40;
  v24 = v41;
  v25 = v11;
  v26 = *(v40 + 16);
  v27 = v39;
  v26(v41, v39, v12);
  v28 = v38;
  sub_21C6EDBAC(v25, v38, &qword_27CDF3960, &qword_21CBB8710);
  v29 = v42;
  v26(v42, v24, v12);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3980, &qword_21CBB8728);
  sub_21C6EDBAC(v28, &v29[*(v30 + 48)], &qword_27CDF3960, &qword_21CBB8710);
  v31 = &v29[*(v30 + 64)];
  v32 = v37;
  *v31 = v36;
  v31[1] = v32;
  v31[2] = v22;

  sub_21C6EA794(v25, &qword_27CDF3960, &qword_21CBB8710);
  v33 = *(v23 + 8);
  v33(v27, v12);

  sub_21C6EA794(v28, &qword_27CDF3960, &qword_21CBB8710);
  return (v33)(v24, v12);
}

BOOL sub_21C9ACC28(__n128 a1)
{
  type metadata accessor for _PMGroupAccountsView(0);
  swift_getKeyPath(byte_21CBB8768);
  swift_getKeyPath(asc_21CBB8790);
  sub_21CB81DB4();

  if (*(v7 + 16) && (v2 = sub_21CB10A54(v1), (v3 & 1) != 0))
  {
    v4 = *(*(v7 + 56) + 8 * v2);

    v5 = *(v4 + 16);

    return v5 != 0;
  }

  else
  {

    return 0;
  }
}

__n128 sub_21C9ACD04@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_21CB82644();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for _PMGroupAccountsView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = type metadata accessor for PMEditGroupFlow(0);
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C9AF754(a1, v16, type metadata accessor for PMSharingGroup);
  sub_21C9AF754(a1, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _PMGroupAccountsView);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  sub_21C9AF7BC(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for _PMGroupAccountsView);
  v19 = &v16[v14[8]];
  *(v19 + 3) = &type metadata for PMIMessageAvailabilityProviderMain;
  *(v19 + 4) = &off_282E572E8;
  v20 = &v16[v14[7]];
  *v20 = sub_21C9B0050;
  v20[1] = v18;
  *&v29 = &unk_282E49158;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBA0, &qword_21CBA5280);
  sub_21C6EADEC(&qword_27CDECBA8, &qword_27CDECBA0, &qword_21CBA5280, MEMORY[0x277D83970]);
  sub_21C8158AC();
  sub_21CB82654();
  (*(v4 + 16))(v6, v9, v3);
  sub_21CB84D44();
  (*(v4 + 8))(v9, v3);
  v21 = v14[10];
  *&v16[v21] = swift_getKeyPath(asc_21CBB8500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  sub_21CB85214();
  sub_21CB82AC4();
  v22 = v28;
  sub_21C9AF7BC(v16, v28, type metadata accessor for PMEditGroupFlow);
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB90, &qword_21CBA5268) + 36);
  v24 = v34;
  *(v23 + 64) = v33;
  *(v23 + 80) = v24;
  *(v23 + 96) = v35;
  v25 = v30;
  *v23 = v29;
  *(v23 + 16) = v25;
  result = v32;
  *(v23 + 32) = v31;
  *(v23 + 48) = result;
  return result;
}

void sub_21C9AD10C(char a1)
{
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for _PMGroupAccountsView(0);
    sub_21C95B2C8(v5);
    sub_21CB823A4();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_21C9AD1F8(uint64_t a1)
{
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v40 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  MEMORY[0x28223BE20](v5);
  v7 = &v38[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v44 = &v38[-v11];
  MEMORY[0x28223BE20](v12);
  v47 = &v38[-v13];
  MEMORY[0x28223BE20](v14);
  v16 = &v38[-v15];
  MEMORY[0x28223BE20](v17);
  v19 = &v38[-v18];
  v42 = type metadata accessor for _PMGroupAccountsView(0);
  v20 = *(a1 + *(v42 + 40));
  if (!v20)
  {
    type metadata accessor for PMPasswordManagerState(0);
    sub_21C705F88(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
    return result;
  }

  swift_getKeyPath("H");
  swift_getKeyPath("(");
  v21 = v20;
  sub_21CB81DB4();
  v43 = v21;

  v22 = v3[2];
  v46 = a1;
  v22(v16, a1, v2);
  v41 = v3[7];
  v41(v16, 0, 1, v2);
  v23 = *(v5 + 48);
  sub_21C6EDBAC(v19, v7, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(v16, &v7[v23], &unk_27CDF20B0, &unk_21CBA0090);
  v24 = v3;
  v25 = v3[6];
  if (v25(v7, 1, v2) == 1)
  {
    sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EA794(v19, &unk_27CDF20B0, &unk_21CBA0090);
    if (v25(&v7[v23], 1, v2) == 1)
    {
      sub_21C6EA794(v7, &unk_27CDF20B0, &unk_21CBA0090);
LABEL_9:
      v33 = v46 + *(v42 + 24);
      v34 = *v33;
      v35 = *(v33 + 8);
      v49 = v34;
      v50 = v35;
      v48 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
      sub_21CB84D64();
      v36 = v44;
      v41(v44, 1, 1, v2);
      swift_getKeyPath("H");
      swift_getKeyPath("(");
      sub_21C6EDBAC(v36, v45, &unk_27CDF20B0, &unk_21CBA0090);
      v37 = v43;
      sub_21CB81DC4();
      v28 = v36;
      v26 = &unk_27CDF20B0;
      v27 = &unk_21CBA0090;
      return sub_21C6EA794(v28, v26, v27);
    }
  }

  else
  {
    sub_21C6EDBAC(v7, v47, &unk_27CDF20B0, &unk_21CBA0090);
    if (v25(&v7[v23], 1, v2) != 1)
    {
      v29 = v40;
      (v24[4])(v40, &v7[v23], v2);
      sub_21C705F88(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
      v30 = v47;
      v39 = sub_21CB85574();
      v31 = v24[1];
      v31(v29, v2);
      sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EA794(v19, &unk_27CDF20B0, &unk_21CBA0090);
      v31(v30, v2);
      result = sub_21C6EA794(v7, &unk_27CDF20B0, &unk_21CBA0090);
      if ((v39 & 1) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

    sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EA794(v19, &unk_27CDF20B0, &unk_21CBA0090);
    (v24[1])(v47, v2);
  }

  v26 = &qword_27CDEAC40;
  v27 = &qword_21CBA1A40;
  v28 = v7;
  return sub_21C6EA794(v28, v26, v27);
}

uint64_t sub_21C9AD834(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v11 - 8);
  v43 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = &v40 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v40 - v20;
  v22 = *(v5 + 16);
  v44 = a2;
  v22(&v40 - v20, a2, v4, v19);
  v41 = *(v5 + 56);
  v41(v21, 0, 1, v4);
  v23 = *(v8 + 56);
  sub_21C6EDBAC(a1, v10, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(v21, &v10[v23], &unk_27CDF20B0, &unk_21CBA0090);
  v24 = *(v5 + 48);
  if (v24(v10, 1, v4) == 1)
  {
    sub_21C6EA794(v21, &unk_27CDF20B0, &unk_21CBA0090);
    if (v24(&v10[v23], 1, v4) == 1)
    {
      sub_21C6EA794(v10, &unk_27CDF20B0, &unk_21CBA0090);
LABEL_8:
      v32 = type metadata accessor for _PMGroupAccountsView(0);
      v33 = v44;
      v34 = v44 + *(v32 + 24);
      v35 = *v34;
      v36 = *(v34 + 8);
      v46 = v35;
      v47 = v36;
      v45 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
      sub_21CB84D64();
      v37 = *(v33 + *(v32 + 40));
      if (!v37)
      {
        type metadata accessor for PMPasswordManagerState(0);
        sub_21C705F88(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
        result = sub_21CB82B64();
        __break(1u);
        return result;
      }

      v38 = v42;
      v41(v42, 1, 1, v4);
      swift_getKeyPath("H");
      swift_getKeyPath("(");
      sub_21C6EDBAC(v38, v43, &unk_27CDF20B0, &unk_21CBA0090);
      v39 = v37;
      sub_21CB81DC4();
      v27 = v38;
      v25 = &unk_27CDF20B0;
      v26 = &unk_21CBA0090;
      return sub_21C6EA794(v27, v25, v26);
    }
  }

  else
  {
    sub_21C6EDBAC(v10, v17, &unk_27CDF20B0, &unk_21CBA0090);
    if (v24(&v10[v23], 1, v4) != 1)
    {
      v28 = v40;
      (*(v5 + 32))(v40, &v10[v23], v4);
      sub_21C705F88(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
      v29 = sub_21CB85574();
      v30 = *(v5 + 8);
      v30(v28, v4);
      sub_21C6EA794(v21, &unk_27CDF20B0, &unk_21CBA0090);
      v30(v17, v4);
      result = sub_21C6EA794(v10, &unk_27CDF20B0, &unk_21CBA0090);
      if ((v29 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_21C6EA794(v21, &unk_27CDF20B0, &unk_21CBA0090);
    (*(v5 + 8))(v17, v4);
  }

  v25 = &qword_27CDEAC40;
  v26 = &qword_21CBA1A40;
  v27 = v10;
  return sub_21C6EA794(v27, v25, v26);
}

uint64_t sub_21C9ADDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3990, &qword_21CBB87B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3998, &qword_21CBB87B8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  *v15 = sub_21CB83074();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39A0, &qword_21CBB87C0);
  sub_21C9ADFE8(a1, &v15[*(v16 + 44)]);
  *v9 = sub_21CB83074();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39A8, &qword_21CBB87C8);
  sub_21C9AE398(a1, &v9[*(v17 + 44)]);
  sub_21C6EDBAC(v15, v12, &qword_27CDF3998, &qword_21CBB87B8);
  sub_21C6EDBAC(v9, v6, &qword_27CDF3990, &qword_21CBB87B0);
  sub_21C6EDBAC(v12, a2, &qword_27CDF3998, &qword_21CBB87B8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39B0, &unk_21CBB87D0);
  sub_21C6EDBAC(v6, a2 + *(v18 + 48), &qword_27CDF3990, &qword_21CBB87B0);
  sub_21C6EA794(v9, &qword_27CDF3990, &qword_21CBB87B0);
  sub_21C6EA794(v15, &qword_27CDF3998, &qword_21CBB87B8);
  sub_21C6EA794(v6, &qword_27CDF3990, &qword_21CBB87B0);
  return sub_21C6EA794(v12, &qword_27CDF3998, &qword_21CBB87B8);
}

uint64_t sub_21C9ADFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39C0, &qword_21CBBEE90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v25 - v8;
  *v9 = sub_21CB832F4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39C8, &unk_21CBB87F0);
  v25[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF730, &qword_21CBBFED0);
  sub_21C6EADEC(&qword_27CDEF738, &qword_27CDEF730, &qword_21CBBFED0, MEMORY[0x277CE14C0]);
  sub_21CB81FC4();
  v10 = *(a1 + *(type metadata accessor for PMSharingGroup(0) + 24));
  sub_21CB13134(MEMORY[0x277D84F90]);
  KeyPath = swift_getKeyPath(byte_21CBB8800);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C328(KeyPath, *&v33[0]);

  type metadata accessor for PMGroupMemberImageCache();
  sub_21C705F88(&qword_27CDEECA8, type metadata accessor for PMGroupMemberImageCache, &unk_21CBBBA3C);
  v12 = sub_21CB82674();
  v14 = v13;

  *(&v28 + 1) = v12;
  *&v29 = v14;
  *(&v29 + 1) = swift_getKeyPath(byte_21CBB8580);
  v30 = 0;
  *&v26[0] = v10;
  *(v26 + 8) = xmmword_21CBAA500;
  *(&v26[1] + 1) = 5;
  *&v27 = 0x3FE0000000000000;
  BYTE8(v27) = 0;

  v15 = sub_21C867B48(MEMORY[0x277D84F98], v10, v26, 40.0);

  *&v28 = v15;
  sub_21C6EDBAC(v9, v6, &qword_27CDF39C0, &qword_21CBBEE90);
  sub_21C6EDBAC(v6, a2, &qword_27CDF39C0, &qword_21CBBEE90);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39D0, &unk_21CBB8820);
  v17 = a2 + *(v16 + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a2 + *(v16 + 64);
  v19 = v28;
  v20 = v27;
  v31[2] = v27;
  v31[3] = v28;
  v21 = v26[0];
  v22 = v26[1];
  v31[0] = v26[0];
  v31[1] = v26[1];
  v23 = v29;
  v31[4] = v29;
  v32 = v30;
  *(v18 + 80) = v30;
  *(v18 + 32) = v20;
  *(v18 + 48) = v19;
  *(v18 + 64) = v23;
  *v18 = v21;
  *(v18 + 16) = v22;
  sub_21C87CED0(v31, v33);
  sub_21C6EA794(v9, &qword_27CDF39C0, &qword_21CBBEE90);
  v33[2] = v27;
  v33[3] = v28;
  v33[4] = v29;
  v34 = v30;
  v33[0] = v26[0];
  v33[1] = v26[1];
  sub_21C87CF2C(v33);
  return sub_21C6EA794(v6, &qword_27CDF39C0, &qword_21CBBEE90);
}

uint64_t sub_21C9AE398@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v30 = a1;
  v31 = a2;
  v3 = type metadata accessor for _PMGroupAccountsView(0);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  sub_21CB81014();
  v16 = sub_21CB81004();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  v32 = v16;
  v33 = v18;
  v19 = v28;
  sub_21C9AF754(v30, v28, type metadata accessor for _PMGroupAccountsView);
  v20 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v21 = swift_allocObject();
  sub_21C9AF7BC(v19, v21 + v20, type metadata accessor for _PMGroupAccountsView);
  sub_21C71F3FC();
  sub_21CB84DE4();
  v22 = *(v10 + 16);
  v22(v12, v15, v9);
  v23 = v31;
  *v31 = 0;
  *(v23 + 8) = 1;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39B8, &unk_21CBB87E0);
  v22(&v24[*(v25 + 48)], v12, v9);
  v26 = *(v10 + 8);
  v26(v15, v9);
  return (v26)(v12, v9);
}

uint64_t sub_21C9AE6EC(uint64_t a1, __n128 a2)
{
  type metadata accessor for _PMGroupAccountsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21C9AE760@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a1;
  v53 = a2;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  MEMORY[0x28223BE20](v15);
  v50 = &v48 - v16;
  MEMORY[0x28223BE20](v17);
  v51 = &v48 - v18;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v49 = sub_21CB81034();
  v19 = *(v49 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v22 = *(v3 + 8);
  v22(v5, v2);
  v22(v8, v2);
  v22(v11, v2);
  v22(v14, v2);
  swift_setDeallocating();
  (*(v19 + 8))(v21 + v20, v49);
  swift_deallocClassInstance();
  v23 = v51;
  sub_21CB81004();
  v22(v50, v2);
  v22(v23, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21CBA0690;
  v25 = type metadata accessor for PMSharingGroup(0);
  v26 = v52;
  v27 = *(*(v52 + *(v25 + 24)) + 16);
  v28 = MEMORY[0x277D83C10];
  *(v24 + 56) = MEMORY[0x277D83B88];
  *(v24 + 64) = v28;
  *(v24 + 32) = v27;
  v29 = sub_21CB85594();
  v31 = v30;

  v55 = v29;
  v56 = v31;
  sub_21C71F3FC();
  v32 = sub_21CB84054();
  v34 = v33;
  LOBYTE(v11) = v35;
  v37 = v36;
  v38 = (v26 + *(v25 + 28));
  v39 = v38[1];
  v55 = *v38;
  v56 = v39;

  v40 = sub_21CB84054();
  v42 = v41;
  v43 = v11 & 1;
  v54 = v11 & 1;
  LOBYTE(v55) = v11 & 1;
  LOBYTE(v11) = v44 & 1;
  v57 = v44 & 1;
  v45 = v53;
  *v53 = v32;
  v45[1] = v34;
  *(v45 + 16) = v43;
  v45[3] = v37;
  v45[4] = v40;
  v45[5] = v41;
  *(v45 + 48) = v44 & 1;
  v45[7] = v46;
  sub_21C79B058(v32, v34, v43);

  sub_21C79B058(v40, v42, v11);

  sub_21C74A72C(v40, v42, v11);

  sub_21C74A72C(v32, v34, v54);
}

uint64_t sub_21C9AEC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for _PMGroupAccountsView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = sub_21CB85C44();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a2, a1, v8);
  (*(v9 + 56))(a2, 0, 2, v8);
  type metadata accessor for PMSystemSettingsNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  sub_21C9AF754(a1, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _PMGroupAccountsView);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  sub_21C9AF7BC(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for _PMGroupAccountsView);
  sub_21C9AF754(a1, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _PMGroupAccountsView);
  v12 = swift_allocObject();
  sub_21C9AF7BC(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10, type metadata accessor for _PMGroupAccountsView);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB68, &qword_21CBB8730);
  v14 = a2 + v13[19];
  result = swift_getKeyPath(byte_21CBB8580);
  *v14 = result;
  *(v14 + 8) = 0;
  v16 = (a2 + v13[18]);
  *v16 = sub_21C9B00D0;
  v16[1] = v11;
  v17 = (a2 + v13[17]);
  *v17 = sub_21C9B00E8;
  v17[1] = v12;
  return result;
}

void *sub_21C9AEEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 2, v4);
  v6 = (a2 + *(type metadata accessor for PMRecentlyDeletedAccountsView(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE0, &qword_21CBB8760);
  *(swift_allocObject() + 16) = 0;
  result = sub_21CB84D44();
  *v6 = v8;
  v6[1] = v9;
  return result;
}

uint64_t sub_21C9AEFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 2, v4);
  v6 = type metadata accessor for PMRecentlyDeletedRow(0);
  v7 = *(v6 + 20);
  KeyPath = swift_getKeyPath(byte_21CBB8538);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v9 = (a2 + v7);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v15);

  type metadata accessor for PMAccountsState(0);
  sub_21C705F88(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v10 = sub_21CB82674();
  v12 = v11;

  *v9 = v10;
  v9[1] = v12;
  v13 = a2 + *(v6 + 24);
  result = swift_getKeyPath(byte_21CBB8738);
  *v13 = result;
  *(v13 + 8) = 0;
  return result;
}

uint64_t sub_21C9AF188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C9AF7BC(a1, a2, type metadata accessor for PMSharingGroup);
  v3 = type metadata accessor for _PMGroupAccountsView(0);
  v4 = a2 + v3[5];
  sub_21CB84D44();
  *v4 = v24;
  *(v4 + 8) = v25;
  v5 = a2 + v3[6];
  sub_21CB84D44();
  *v5 = v24;
  *(v5 + 8) = v25;
  v6 = v3[7];
  *(a2 + v6) = swift_getKeyPath(asc_21CBB8500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v7 = v3[8];
  KeyPath = swift_getKeyPath(byte_21CBB8538);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v9 = (a2 + v7);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v24);

  type metadata accessor for PMAccountsState(0);
  sub_21C705F88(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v10 = sub_21CB82674();
  v12 = v11;

  *v9 = v10;
  v9[1] = v12;
  v13 = (a2 + v3[9]);
  v14 = swift_getKeyPath(byte_21CBB8560);
  sub_21CB86544();
  sub_21C7073E8(v14, v24);

  type metadata accessor for PMGroupsStore(0);
  sub_21C705F88(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v15 = sub_21CB82674();
  v17 = v16;

  *v13 = v15;
  v13[1] = v17;
  v18 = (a2 + v3[10]);
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C705F88(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  *v18 = sub_21CB82B84();
  v18[1] = v19;
  v20 = (a2 + v3[11]);
  type metadata accessor for PMAccountsListModel(0);
  sub_21C705F88(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
  *v20 = sub_21CB82B84();
  v20[1] = v21;
  v22 = a2 + v3[12];
  result = swift_getKeyPath(byte_21CBB8580);
  *v22 = result;
  *(v22 + 8) = 0;
  return result;
}

uint64_t sub_21C9AF4D0(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = type metadata accessor for PMSharingGroup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C9AF754(a1, v6, type metadata accessor for PMSharingGroup);
  return a2(v6);
}

uint64_t sub_21C9AF578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB85C44();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a2, v3, v8);
  (*(v9 + 56))(a2, 0, 2, v8);
  sub_21C9AF754(v3, v7, type metadata accessor for PMGroupAccountsView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_21C9AF7BC(v7, v11 + v10, type metadata accessor for PMGroupAccountsView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF38D0, &qword_21CBB84F8);
  v13 = (a2 + *(result + 36));
  *v13 = sub_21C9AF728;
  v13[1] = v11;
  return result;
}

uint64_t sub_21C9AF754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9AF7BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21C9AF86C(uint64_t a1)
{
  type metadata accessor for PMSharingGroup(319);
  if (v1 <= 0x3F)
  {
    sub_21C713604(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_21C721A6C(319);
      if (v3 <= 0x3F)
      {
        sub_21C705CFC(319);
        if (v4 <= 0x3F)
        {
          sub_21C70640C(319);
          if (v5 <= 0x3F)
          {
            sub_21C707F4C(319);
            if (v6 <= 0x3F)
            {
              sub_21C713510(319);
              if (v7 <= 0x3F)
              {
                sub_21C713604(319, &qword_27CDED658, &type metadata for PMAccountsNavigationStyle, MEMORY[0x277CDF468]);
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

uint64_t sub_21C9AFA04(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for _PMGroupAccountsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_25Tm()
{
  v1 = type metadata accessor for _PMGroupAccountsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_21CB85C44();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  type metadata accessor for PMSharingGroup(0);

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB823B4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_21C7025C4(*(v5 + v1[12]), *(v5 + v1[12] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C9AFD44(uint64_t a1)
{
  v3 = *(type metadata accessor for _PMGroupAccountsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9AD834(a1, v4);
}

unint64_t sub_21C9AFDB4()
{
  result = qword_27CDF3940;
  if (!qword_27CDF3940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3910, &qword_21CBB8638);
    sub_21C9AFE6C();
    sub_21C6EADEC(&qword_27CDED9E0, &qword_27CDED990, &qword_21CBA7E90, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3940);
  }

  return result;
}

unint64_t sub_21C9AFE6C()
{
  result = qword_27CDF3948;
  if (!qword_27CDF3948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3908, &qword_21CBB8630);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3900, &qword_21CBB8628);
    type metadata accessor for PMGroupInvitationAcceptanceFlow(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF38F8, &qword_21CBB8620);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECB90, &qword_21CBA5268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF38F0, &qword_21CBB8618);
    sub_21C6EADEC(&qword_27CDF3938, &qword_27CDF38F0, &qword_21CBB8618, MEMORY[0x277CDE580]);
    swift_getOpaqueTypeConformance2();
    sub_21C815788();
    swift_getOpaqueTypeConformance2();
    sub_21C705F88(&qword_27CDEE938, type metadata accessor for PMGroupInvitationAcceptanceFlow, &unk_21CBB8F38);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3948);
  }

  return result;
}

void sub_21C9B0050(char a1)
{
  type metadata accessor for _PMGroupAccountsView(0);

  sub_21C9AD10C(a1 & 1);
}

uint64_t sub_21C9B0118(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for _PMGroupAccountsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21C9B0194()
{
  result = qword_27CDF39D8;
  if (!qword_27CDF39D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3950, &unk_21CBB86F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3918, &qword_21CBB8640);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3910, &qword_21CBB8638);
    sub_21CB829D4();
    sub_21C9AFDB4();
    sub_21C705F88(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&unk_27CDEBFE0, &qword_27CDEB1E0, &unk_21CBA5270, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF39D8);
  }

  return result;
}

uint64_t sub_21C9B0330@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v21[0] = type metadata accessor for PMAccount(0);
  *&v4 = MEMORY[0x28223BE20](v21[0]).n128_u64[0];
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath(byte_21CBB8830, v4);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v21[1]);

  type metadata accessor for PMAccountsState(0);
  sub_21C705FD0(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v8 = sub_21CB82674();
  v10 = v9;

  *a2 = v8;
  a2[1] = v10;
  v11 = type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0);
  v12 = a2 + *(v11 + 28);
  *v12 = 0u;
  *(v12 + 1) = 0u;
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705FD0(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);

  a2[2] = sub_21CB82674();
  a2[3] = v13;
  swift_getKeyPath(byte_21CBB8858);
  swift_getKeyPath(byte_21CBB8880);
  sub_21CB81DB4();

  swift_getKeyPath(byte_21CBB8858);
  swift_getKeyPath(byte_21CBB8880);
  sub_21CB81DB4();

  v14 = &v6[*(v21[0] + 28)];
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  sub_21C7D33AC(*v14, v16, v17, v18);
  sub_21C719540(v6, type metadata accessor for PMAccount);
  sub_21C7D33F0(*v12, *(v12 + 1), *(v12 + 2), *(v12 + 3));
  *v12 = v15;
  *(v12 + 1) = v16;
  *(v12 + 2) = v17;
  *(v12 + 3) = v18;
  v19 = sub_21C9B0610(a1);

  *(a2 + *(v11 + 32)) = v19;
  return result;
}

uint64_t sub_21C9B0610(uint64_t a1)
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v1);
  v70 = (&v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v71 = (&v69 - v4);
  MEMORY[0x28223BE20](v5);
  v75 = (&v69 - v6);
  MEMORY[0x28223BE20](v7);
  v9 = (&v69 - v8);
  v10 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v10);
  v69 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v69 - v13;
  MEMORY[0x28223BE20](v14);
  v73 = &v69 - v15;
  MEMORY[0x28223BE20](v16);
  v74 = &v69 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v69 - v19;
  MEMORY[0x28223BE20](v21);
  v72 = &v69 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v69 - v24;
  *&v27 = MEMORY[0x28223BE20](v26).n128_u64[0];
  v29 = &v69 - v28;
  swift_getKeyPath(byte_21CBB8858, v27);
  swift_getKeyPath(byte_21CBB8880);
  v30 = v10;
  sub_21CB81DB4();

  sub_21C9B5580(&v29[*(v10 + 24)], v9, type metadata accessor for PMAccount.Storage);
  v77 = v1;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719540(v9, type metadata accessor for PMAccount.Storage);
    sub_21C719540(v29, type metadata accessor for PMAccount);
  }

  else
  {
    v31 = *v9;
    v32 = [*v9 credentialTypes];

    sub_21C719540(v29, type metadata accessor for PMAccount);
    if (v32 == 3)
    {
      swift_getKeyPath(byte_21CBB8858);
      swift_getKeyPath(byte_21CBB8880);
      sub_21CB81DB4();

      v33 = &v25[*(v10 + 28)];
      v34 = *v33;
      v35 = v33[1];
      v37 = v33[2];
      v36 = v33[3];
      sub_21C7D33AC(*v33, v35, v37, v36);
      sub_21C719540(v25, type metadata accessor for PMAccount);
      if (v35)
      {
        if (([v36 issueTypes] & 0x10) != 0)
        {
          v38 = [v36 issueTypes];
          sub_21C7D33F0(v34, v35, v37, v36);
          if ((v38 & 0x20) != 0)
          {
            return 8;
          }
        }

        else
        {
          sub_21C7D33F0(v34, v35, v37, v36);
        }
      }

      swift_getKeyPath(byte_21CBB8858);
      swift_getKeyPath(byte_21CBB8880);
      v39 = v72;
      sub_21CB81DB4();

      PMAccount.password.getter();
      v41 = v40;
      sub_21C719540(v39, type metadata accessor for PMAccount);
      if (v41)
      {
        v42 = objc_opt_self();
        v43 = sub_21CB85584();

        LOBYTE(v42) = [v42 passwordLooksLikePasswordManagerGeneratedPassword_];

        if (v42)
        {
          return 2;
        }
      }
    }
  }

  swift_getKeyPath(byte_21CBB8858);
  swift_getKeyPath(byte_21CBB8880);
  sub_21CB81DB4();

  v44 = &v20[*(v30 + 28)];
  v45 = *v44;
  v46 = v44[1];
  v48 = v44[2];
  v47 = v44[3];
  sub_21C7D33AC(*v44, v46, v48, v47);
  sub_21C719540(v20, type metadata accessor for PMAccount);
  if (v46)
  {
    if (([v47 issueTypes] & 8) != 0 || (objc_msgSend(v47, sel_issueTypes) & 4) != 0)
    {
      sub_21C7D33F0(v45, v46, v48, v47);
      return 9;
    }

    if (([v47 issueTypes] & 0x10) != 0)
    {
      sub_21C7D33F0(v45, v46, v48, v47);
      return 7;
    }

    if (([v47 issueTypes] & 0x20) != 0)
    {
      sub_21C7D33F0(v45, v46, v48, v47);
      return 6;
    }

    if (([v47 issueTypes] & 2) != 0)
    {
      sub_21C7D33F0(v45, v46, v48, v47);
      return 4;
    }

    if ([v47 issueTypes])
    {
      sub_21C7D33F0(v45, v46, v48, v47);
      return 5;
    }

    if ([objc_opt_self() isPromotePasskeyUpgradesEnabled])
    {
      v49 = [v47 issueTypes];
      sub_21C7D33F0(v45, v46, v48, v47);
      if ((v49 & 0x40) != 0)
      {
        return 11;
      }
    }

    else
    {
      sub_21C7D33F0(v45, v46, v48, v47);
    }
  }

  swift_getKeyPath(byte_21CBB8858);
  swift_getKeyPath(byte_21CBB8880);
  v51 = v74;
  sub_21CB81DB4();

  v52 = v75;
  sub_21C9B5580(v51 + *(v30 + 24), v75, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719540(v52, type metadata accessor for PMAccount.Storage);
    sub_21C719540(v51, type metadata accessor for PMAccount);
    v53 = v76;
  }

  else
  {
    v54 = *v52;
    v55 = [*v52 credentialTypes];

    sub_21C719540(v51, type metadata accessor for PMAccount);
    v53 = v76;
    if (v55 == 2)
    {
      return 2;
    }
  }

  swift_getKeyPath(byte_21CBB8858);
  swift_getKeyPath(byte_21CBB8880);
  v56 = v73;
  sub_21CB81DB4();

  PMAccount.password.getter();
  v58 = v57;
  sub_21C719540(v56, type metadata accessor for PMAccount);
  if (v58)
  {
    v59 = objc_opt_self();
    v60 = sub_21CB85584();

    v61 = [v59 passwordLooksLikePasswordManagerGeneratedPassword_];

    if (v61)
    {
      swift_getKeyPath(aX_47);
      swift_getKeyPath(aX_48);
      sub_21CB81DB4();

      if (!v78)
      {
        return 0;
      }

      return 1;
    }
  }

  swift_getKeyPath(byte_21CBB8858);
  swift_getKeyPath(byte_21CBB8880);
  sub_21CB81DB4();

  v62 = v71;
  sub_21C9B5580(v53 + *(v30 + 24), v71, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v63 = *v62;
    v64 = [v63 credentialTypes];

    sub_21C719540(v53, type metadata accessor for PMAccount);
    if ((v64 & 2) == 0)
    {
      goto LABEL_37;
    }

    return 2;
  }

  sub_21C719540(v62, type metadata accessor for PMAccount.Storage);
  sub_21C719540(v53, type metadata accessor for PMAccount);
LABEL_37:
  swift_getKeyPath(byte_21CBB8858);
  swift_getKeyPath(byte_21CBB8880);
  v65 = v69;
  sub_21CB81DB4();

  v66 = v70;
  sub_21C9B5580(v65 + *(v30 + 24), v70, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719540(v66, type metadata accessor for PMAccount.Storage);
    sub_21C719540(v65, type metadata accessor for PMAccount);
  }

  else
  {
    v67 = *v66;
    v68 = [v67 credentialTypes];

    sub_21C719540(v65, type metadata accessor for PMAccount);
    if (v68 == 4)
    {
      return 10;
    }
  }

  return 3;
}

uint64_t sub_21C9B110C@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39F8, &qword_21CBB89E8);
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v75 = &v75 - v1;
  v2 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v2 - 8);
  v88 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A00, &qword_21CBB89F0);
  MEMORY[0x28223BE20](v4 - 8);
  v92 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v89 = &v75 - v7;
  MEMORY[0x28223BE20](v8);
  v90 = &v75 - v9;
  v87 = sub_21CB83274();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_21CB83A34();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A08, &qword_21CBB89F8);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v75 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A10, &qword_21CBB8A00);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v75 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A18, &qword_21CBB8A08);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v75 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A20, &qword_21CBB8A10);
  v25 = v24 - 8;
  MEMORY[0x28223BE20](v24);
  v27 = &v75 - v26;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A28, &qword_21CBB8A18);
  MEMORY[0x28223BE20](v78);
  v29 = &v75 - v28;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A30, &qword_21CBB8A20);
  v80 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v75 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A38, &qword_21CBB8A28);
  MEMORY[0x28223BE20](v31 - 8);
  v84 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v76 = &v75 - v34;
  *v15 = sub_21CB832E4();
  *(v15 + 1) = 0x4020000000000000;
  v15[16] = 0;
  v35 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A40, &qword_21CBB8A30) + 44)];
  *v35 = sub_21CB83074();
  *(v35 + 1) = 0;
  v35[16] = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A48, &qword_21CBB8A38);
  sub_21C9B1B4C(&v35[*(v36 + 44)]);
  LOBYTE(v35) = sub_21CB83CE4();
  sub_21CB81F24();
  v37 = &v15[*(v13 + 44)];
  *v37 = v35;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C716934(v15, v19, &qword_27CDF3A08, &qword_21CBB89F8);
  v42 = &v19[*(v17 + 44)];
  v43 = v103;
  *(v42 + 4) = v102;
  *(v42 + 5) = v43;
  *(v42 + 6) = v104;
  v44 = v99;
  *v42 = v98;
  *(v42 + 1) = v44;
  v45 = v101;
  *(v42 + 2) = v100;
  *(v42 + 3) = v45;
  KeyPath = swift_getKeyPath(aP_68);
  sub_21C716934(v19, v23, &qword_27CDF3A10, &qword_21CBB8A00);
  v47 = &v23[*(v21 + 44)];
  *v47 = KeyPath;
  v47[8] = 0;
  v48 = sub_21CB832C4();
  sub_21C716934(v23, v27, &qword_27CDF3A18, &qword_21CBB8A08);
  v49 = *(v25 + 44);
  v50 = v76;
  v51 = &v27[v49];
  *v51 = v48;
  v51[1] = sub_21C7902AC;
  v51[2] = 0;
  v52 = sub_21CB832D4();
  sub_21C716934(v27, v29, &qword_27CDF3A20, &qword_21CBB8A10);
  v53 = v78;
  v54 = &v29[*(v78 + 36)];
  *v54 = v52;
  v54[1] = sub_21C8B5998;
  v54[2] = 0;
  v55 = v81;
  sub_21CB83A24();
  v56 = sub_21C9B52D8(&qword_27CDF3A50, &qword_27CDF3A28, &qword_21CBB8A18, sub_21C9B52A8);
  v57 = v77;
  sub_21CB844F4();
  (*(v82 + 8))(v55, v83);
  sub_21C6EA794(v29, &qword_27CDF3A28, &qword_21CBB8A18);
  v58 = v85;
  sub_21CB83254();
  v96 = v53;
  v97 = v56;
  swift_getOpaqueTypeConformance2();
  v59 = v58;
  v60 = v79;
  sub_21CB84614();
  v61 = v95;
  (*(v86 + 8))(v59, v87);
  (*(v80 + 8))(v57, v60);
  v62 = type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0);
  v63 = v88;
  sub_21C9B5580(v61 + *(v62 + 24), v88, type metadata accessor for PMAccount);
  v64 = *(v62 + 32);
  v65 = *(v61 + v64);
  if (sub_21C9B55E8(v63, *(v61 + v64)) != 4 || v65 == 11 || v65 == 2)
  {
    v66 = v75;
    sub_21C9B304C(v61, v75);
    v67 = v89;
    sub_21C716934(v66, v89, &qword_27CDF39F8, &qword_21CBB89E8);
    v68 = 0;
  }

  else
  {
    v68 = 1;
    v67 = v89;
  }

  (*(v91 + 56))(v67, v68, 1, v93);
  v69 = v90;
  sub_21C716934(v67, v90, &qword_27CDF3A00, &qword_21CBB89F0);
  v70 = v84;
  sub_21C7703F4(v50, v84);
  v71 = v92;
  sub_21C6EDBAC(v69, v92, &qword_27CDF3A00, &qword_21CBB89F0);
  v72 = v94;
  sub_21C7703F4(v70, v94);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A90, &unk_21CBB8A78);
  sub_21C6EDBAC(v71, v72 + *(v73 + 48), &qword_27CDF3A00, &qword_21CBB89F0);
  sub_21C6EA794(v69, &qword_27CDF3A00, &qword_21CBB89F0);
  sub_21C770464(v50);
  sub_21C6EA794(v71, &qword_27CDF3A00, &qword_21CBB89F0);
  return sub_21C770464(v70);
}

uint64_t sub_21C9B1B4C@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3AA8, &qword_21CBB8B10);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  sub_21C9B1E60(&v29 - v8);
  v10 = sub_21CB83D34();
  sub_21CB81F24();
  v11 = &v9[*(v4 + 44)];
  *v11 = v10;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  v16 = sub_21CB832F4();
  v31 = 0;
  sub_21C9B2644(&v41);
  v35[0] = *&v42[32];
  *(v35 + 9) = *&v42[41];
  v33 = *v42;
  v34 = *&v42[16];
  v32 = v41;
  v36[2] = *&v42[16];
  v37[0] = *&v42[32];
  *(v37 + 9) = *&v42[41];
  v36[0] = v41;
  v36[1] = *v42;
  sub_21C6EDBAC(&v32, &v38, &qword_27CDF3AB0, &qword_21CBB8B18);
  sub_21C6EA794(v36, &qword_27CDF3AB0, &qword_21CBB8B18);
  *(&v30[1] + 7) = v33;
  *(&v30[2] + 7) = v34;
  *(&v30[3] + 7) = v35[0];
  v30[4] = *(v35 + 9);
  *(v30 + 7) = v32;
  v17 = v31;
  KeyPath = swift_getKeyPath(byte_21CBB8B20);
  sub_21C6EDBAC(v9, v6, &qword_27CDF3AA8, &qword_21CBB8B10);
  sub_21C6EDBAC(v6, a2, &qword_27CDF3AA8, &qword_21CBB8B10);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3AB8, &qword_21CBB8B50);
  v20 = a2 + *(v19 + 48);
  *&v38 = v16;
  *(&v38 + 1) = 0x4018000000000000;
  LOBYTE(v39[0]) = v17;
  *(v39 + 1) = v30[0];
  *(&v39[1] + 1) = v30[1];
  *(&v39[2] + 1) = v30[2];
  *(&v39[3] + 1) = v30[3];
  *(&v39[4] + 1) = v30[4];
  *(&v39[5] + 1) = KeyPath;
  v40 = 0;
  v21 = v38;
  v22 = v39[0];
  v23 = v39[2];
  *(v20 + 32) = v39[1];
  *(v20 + 48) = v23;
  *v20 = v21;
  *(v20 + 16) = v22;
  v24 = v39[3];
  v25 = v39[4];
  v26 = v39[5];
  *(v20 + 112) = 0;
  *(v20 + 80) = v25;
  *(v20 + 96) = v26;
  *(v20 + 64) = v24;
  v27 = a2 + *(v19 + 64);
  *v27 = 0;
  *(v27 + 8) = 0;
  sub_21C6EDBAC(&v38, &v41, &qword_27CDF3AC0, &qword_21CBB8B58);
  sub_21C6EA794(v9, &qword_27CDF3AA8, &qword_21CBB8B10);
  *&v42[17] = v30[1];
  *&v42[33] = v30[2];
  *&v42[49] = v30[3];
  v43 = v30[4];
  *&v41 = v16;
  *(&v41 + 1) = 0x4018000000000000;
  v42[0] = v17;
  *&v42[1] = v30[0];
  v44 = KeyPath;
  v45 = 0;
  sub_21C6EA794(&v41, &qword_27CDF3AC0, &qword_21CBB8B58);
  return sub_21C6EA794(v6, &qword_27CDF3AA8, &qword_21CBB8B10);
}

uint64_t sub_21C9B1E60@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3AC8, &qword_21CBB8B60);
  MEMORY[0x28223BE20](v42);
  v38 = &v36 - v2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3AD0, &qword_21CBB8B68);
  MEMORY[0x28223BE20](v39);
  v41 = &v36 - v3;
  v4 = sub_21CB84BD4();
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3AD8, &qword_21CBB8B70);
  MEMORY[0x28223BE20](v40);
  v37 = &v36 - v7;
  v8 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PMAccount(0);
  v12 = v11 - 8;
  *&v13 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBB8858, v13);
  swift_getKeyPath(byte_21CBB8880);
  sub_21CB81DB4();

  sub_21C9B5580(&v15[*(v12 + 32)], v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719540(v10, type metadata accessor for PMAccount.Storage);
    sub_21C719540(v15, type metadata accessor for PMAccount);
  }

  else
  {
    v16 = *v10;
    v17 = [v16 credentialTypes];

    sub_21C719540(v15, type metadata accessor for PMAccount);
    if (v17 == 4)
    {
      type metadata accessor for PMPasswordManager(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = [objc_opt_self() bundleForClass_];
      sub_21CB84C74();
      v20 = v36;
      (*(v36 + 104))(v6, *MEMORY[0x277CE0FE0], v4);
      v21 = sub_21CB84C64();

      (*(v20 + 8))(v6, v4);
      sub_21CB85214();
      sub_21CB82374();
      v44 = v21;
      v45 = v50;
      LOBYTE(v46) = v51;
      v47 = v52;
      v48 = v53;
      v49 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09A8, &unk_21CBAF7E0);
      sub_21C8FD198();
      v22 = v37;
      sub_21CB84494();

      v23 = &qword_27CDF3AD8;
      v24 = &qword_21CBB8B70;
      sub_21C6EDBAC(v22, v41, &qword_27CDF3AD8, &qword_21CBB8B70);
      swift_storeEnumTagMultiPayload();
      sub_21C9B5B08(&qword_27CDF3B08, &qword_27CDF3AD8, &qword_21CBB8B70, sub_21C8FD198);
      sub_21C9B5B08(&qword_27CDF3B10, &qword_27CDF3AC8, &qword_21CBB8B60, sub_21C9B5970);
      sub_21CB83494();
      v25 = v22;
      return sub_21C6EA794(v25, v23, v24);
    }
  }

  v26 = type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0);
  v27 = *(v1 + *(v26 + 32));
  if (v27 <= 3 || v27 - 4 < 6 || v27 == 11)
  {
    v28 = sub_21CB84BB4();
    v29 = v1 + *(v26 + 28);
    if (*(v29 + 8))
    {
      v30 = [*(v29 + 24) hasBeenCompromised];
    }

    else
    {
      v30 = 0;
    }

    v31 = v41;
    v32 = sub_21CB83DB4();
    KeyPath = swift_getKeyPath(asc_21CBB8B78);
    v44 = v28;
    LOBYTE(v45) = v27;
    BYTE1(v45) = v30;
    v46 = KeyPath;
    v47 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3AE0, &qword_21CBB8BA8);
    sub_21C9B5970();
    v34 = v38;
    sub_21CB84494();

    v23 = &qword_27CDF3AC8;
    v24 = &qword_21CBB8B60;
    sub_21C6EDBAC(v34, v31, &qword_27CDF3AC8, &qword_21CBB8B60);
    swift_storeEnumTagMultiPayload();
    sub_21C9B5B08(&qword_27CDF3B08, &qword_27CDF3AD8, &qword_21CBB8B70, sub_21C8FD198);
    sub_21C9B5B08(&qword_27CDF3B10, &qword_27CDF3AC8, &qword_21CBB8B60, sub_21C9B5970);
    sub_21CB83494();
    v25 = v34;
    return sub_21C6EA794(v25, v23, v24);
  }

  result = sub_21CB861C4();
  __break(1u);
  return result;
}

uint64_t sub_21C9B2644@<X0>(uint64_t a1@<X8>)
{
  sub_21C9B28D0();
  sub_21C71F3FC();
  v2 = sub_21CB84054();
  v4 = v3;
  v6 = v5;
  sub_21CB83EC4();
  v7 = sub_21CB84024();
  v30 = v8;
  v31 = v7;
  v29 = v9;
  v32 = v10;

  sub_21C74A72C(v2, v4, v6 & 1);

  sub_21C9B2D18();
  v11 = sub_21CB84054();
  v13 = v12;
  v15 = v14;
  sub_21CB84B34();
  v16 = sub_21CB83FB4();
  v18 = v17;
  LOBYTE(v2) = v19;

  sub_21C74A72C(v11, v13, v15 & 1);

  sub_21CB83E84();
  v20 = sub_21CB84024();
  v22 = v21;
  LOBYTE(v11) = v23;
  v25 = v24;

  sub_21C74A72C(v16, v18, v2 & 1);

  sub_21CB855C4();
  v26 = [objc_opt_self() pm_defaults];
  v27 = sub_21CB81E74();
  *a1 = v31;
  *(a1 + 8) = v30;
  *(a1 + 16) = v29 & 1;
  *(a1 + 24) = v32;
  *(a1 + 32) = v20;
  *(a1 + 40) = v22;
  *(a1 + 48) = v11 & 1;
  *(a1 + 56) = v25;
  *(a1 + 64) = v27;
  *(a1 + 72) = 1;
  sub_21C79B058(v31, v30, v29 & 1);

  sub_21C79B058(v20, v22, v11 & 1);

  sub_21C74A72C(v20, v22, v11 & 1);

  sub_21C74A72C(v31, v30, v29 & 1);
}

uint64_t sub_21C9B28D0()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  if (*(v0 + *(type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0) + 32)) > 9u)
  {
    sub_21CB81014();
    v8 = sub_21CB81004();
    (*(v2 + 8))(v7, v1);
  }

  else
  {
    sub_21CB81014();
    sub_21CB81014();
    v8 = sub_21CB80FF4();
    v9 = *(v2 + 8);
    v9(v4, v1);
    v9(v7, v1);
  }

  return v8;
}

uint64_t sub_21C9B2D18()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0) + 32));
  if (v5 > 5)
  {
    if (v5 > 9 && v5 != 10)
    {
      [objc_opt_self() biometryType];
    }
  }

  else if (v5 <= 2 && v5 > 1)
  {
    [objc_opt_self() biometryType];
  }

  sub_21CB81014();
  v6 = sub_21CB81004();
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t sub_21C9B304C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B8, &qword_21CBA3EB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A98, &unk_21CBB8A88);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v31 - v20;
  sub_21C9B340C(&v31 - v20);
  v22 = *(a1 + *(v4 + 40));
  if (v22 == 11 || v22 == 2)
  {
    sub_21C9B5580(a1, &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountDetailsCredentialSecurityView);
    v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v25 = swift_allocObject();
    sub_21C9B5908(&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for PMAppAccountDetailsCredentialSecurityView);
    sub_21CB84DA4();
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  (*(*(v27 - 8) + 56))(v12, v26, 1, v27);
  sub_21C716934(v12, v15, &qword_27CDEC2B8, &qword_21CBA3EB0);
  sub_21C6EDBAC(v21, v18, &qword_27CDF3A98, &unk_21CBB8A88);
  sub_21C6EDBAC(v15, v9, &qword_27CDEC2B8, &qword_21CBA3EB0);
  v28 = v32;
  sub_21C6EDBAC(v18, v32, &qword_27CDF3A98, &unk_21CBB8A88);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3AA0, &qword_21CBB8A98);
  sub_21C6EDBAC(v9, v28 + *(v29 + 48), &qword_27CDEC2B8, &qword_21CBA3EB0);
  sub_21C6EA794(v15, &qword_27CDEC2B8, &qword_21CBA3EB0);
  sub_21C6EA794(v21, &qword_27CDF3A98, &unk_21CBB8A88);
  sub_21C6EA794(v9, &qword_27CDEC2B8, &qword_21CBA3EB0);
  return sub_21C6EA794(v18, &qword_27CDF3A98, &unk_21CBB8A88);
}

uint64_t sub_21C9B340C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PMCredentialSecurityButton(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0);
  v11 = *(v10 + 24);
  sub_21C9B5580(v1 + v11, v9, type metadata accessor for PMAccount);
  v12 = sub_21C9B55E8(v9, *(v1 + *(v10 + 32)));
  if (v12 == 4)
  {
    v13 = 1;
  }

  else
  {
    v14 = v12;
    sub_21C9B5580(v1 + v11, v6, type metadata accessor for PMAccount);
    type metadata accessor for PMCombinedAccountDetailsModel(0);
    sub_21C705FD0(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
    sub_21CB82684();
    swift_getKeyPath(byte_21CBB8AE8);
    sub_21CB82694();

    v15 = v20[1];
    v16 = v20[2];
    v6[*(v3 + 20)] = v14;
    v17 = v21;
    v18 = &v6[*(v3 + 24)];
    *v18 = v15;
    *(v18 + 1) = v16;
    v18[16] = v17;
    sub_21C9B5908(v6, a1, type metadata accessor for PMCredentialSecurityButton);
    v13 = 0;
  }

  return (*(v4 + 56))(a1, v13, 1, v3);
}

uint64_t sub_21C9B3678(uint64_t a1)
{
  swift_getKeyPath(byte_21CBB8AA0);
  swift_getKeyPath(byte_21CBB8AC8);

  return sub_21CB81DC4();
}

uint64_t sub_21C9B3710@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v49 = type metadata accessor for PMManagePasskeyOnWebsiteLink(0);
  MEMORY[0x28223BE20](v49);
  v44 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3BB0, &qword_21CBB8D88);
  MEMORY[0x28223BE20](v46);
  v47 = &v41 - v2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3BB8, &qword_21CBB8D90);
  MEMORY[0x28223BE20](v55);
  v50 = &v41 - v3;
  v4 = sub_21CB81024();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMChangePasswordOnWebsiteLink(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3BC0, &qword_21CBB8D98);
  MEMORY[0x28223BE20](v52);
  v54 = &v41 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3BC8, &qword_21CBB8DA0);
  MEMORY[0x28223BE20](v45);
  v12 = &v41 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3BD0, &qword_21CBB8DA8);
  MEMORY[0x28223BE20](v53);
  v48 = &v41 - v13;
  v14 = type metadata accessor for PMCredentialSecurityButton(0);
  v15 = v14 - 8;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = *(v51 + *(v15 + 28));
  if (v23 > 1)
  {
    if (v23 != 2)
    {
      v9 = v44;
      sub_21C9B5580(v51, &v44[*(v49 + 20)], type metadata accessor for PMAccount);
      *v9 = swift_getKeyPath(a0_37);
      *(v9 + 1) = 0;
      v9[16] = 0;
      sub_21C9B5580(v9, v47, type metadata accessor for PMManagePasskeyOnWebsiteLink);
      swift_storeEnumTagMultiPayload();
      sub_21C705FD0(&qword_27CDF3BD8, type metadata accessor for PMChangePasswordOnWebsiteLink, &unk_21CBB1088);
      sub_21C705FD0(&qword_27CDF3BE0, type metadata accessor for PMManagePasskeyOnWebsiteLink, &unk_21CB9FB70);
      v40 = v50;
      sub_21CB83494();
      sub_21C6EDBAC(v40, v54, &qword_27CDF3BB8, &qword_21CBB8D90);
      swift_storeEnumTagMultiPayload();
      sub_21C9B60C0();
      sub_21C9B61A8();
      sub_21CB83494();
      sub_21C6EA794(v40, &qword_27CDF3BB8, &qword_21CBB8D90);
      v39 = type metadata accessor for PMManagePasskeyOnWebsiteLink;
      return sub_21C719540(v9, v39);
    }

    sub_21C9B5580(v51, &v9[v7[5]], type metadata accessor for PMAccount);
    *v9 = swift_getKeyPath(a0_37);
    *(v9 + 1) = 0;
    v9[16] = 0;
    v29 = &v9[v7[7]];
    v30 = &v9[v7[9]];
    v9[v7[6]] = 0;
    *v29 = 0;
    *(v29 + 1) = 0;
    v9[v7[8]] = 0;
    *v30 = 0;
    *(v30 + 1) = 0;
    sub_21C9B5580(v9, v47, type metadata accessor for PMChangePasswordOnWebsiteLink);
    swift_storeEnumTagMultiPayload();
    sub_21C705FD0(&qword_27CDF3BD8, type metadata accessor for PMChangePasswordOnWebsiteLink, &unk_21CBB1088);
    sub_21C705FD0(&qword_27CDF3BE0, type metadata accessor for PMManagePasskeyOnWebsiteLink, &unk_21CB9FB70);
    v31 = v50;
    sub_21CB83494();
    v32 = &qword_27CDF3BB8;
    v33 = &qword_21CBB8D90;
    sub_21C6EDBAC(v31, v54, &qword_27CDF3BB8, &qword_21CBB8D90);
  }

  else
  {
    v50 = v20;
    if (!v23)
    {
      sub_21C9B5580(v51, &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMCredentialSecurityButton);
      v24 = (*(v16 + 80) + 16) & ~*(v16 + 80);
      v25 = swift_allocObject();
      sub_21C9B5908(&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for PMCredentialSecurityButton);
      sub_21CB84DA4();
      v26 = v50;
      (*(v19 + 16))(v12, v22, v50);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
      sub_21C705FD0(&qword_27CDF3BD8, type metadata accessor for PMChangePasswordOnWebsiteLink, &unk_21CBB1088);
      v27 = v48;
      sub_21CB83494();
      sub_21C6EDBAC(v27, v54, &qword_27CDF3BD0, &qword_21CBB8DA8);
      swift_storeEnumTagMultiPayload();
      sub_21C9B60C0();
      sub_21C9B61A8();
      sub_21CB83494();
      sub_21C6EA794(v27, &qword_27CDF3BD0, &qword_21CBB8DA8);
      return (*(v19 + 8))(v22, v26);
    }

    sub_21C9B5580(v51, &v9[v7[5]], type metadata accessor for PMAccount);
    sub_21CB81014();
    v34 = sub_21CB81004();
    v36 = v35;
    (*(v42 + 8))(v6, v43);
    *v9 = swift_getKeyPath(a0_37);
    *(v9 + 1) = 0;
    v9[16] = 0;
    v37 = &v9[v7[7]];
    v38 = &v9[v7[9]];
    v9[v7[6]] = 0;
    *v37 = v34;
    v37[1] = v36;
    v9[v7[8]] = 0;
    *v38 = 0;
    *(v38 + 1) = 0;
    sub_21C9B5580(v9, v12, type metadata accessor for PMChangePasswordOnWebsiteLink);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21C705FD0(&qword_27CDF3BD8, type metadata accessor for PMChangePasswordOnWebsiteLink, &unk_21CBB1088);
    v31 = v48;
    sub_21CB83494();
    v32 = &qword_27CDF3BD0;
    v33 = &qword_21CBB8DA8;
    sub_21C6EDBAC(v31, v54, &qword_27CDF3BD0, &qword_21CBB8DA8);
  }

  swift_storeEnumTagMultiPayload();
  sub_21C9B60C0();
  sub_21C9B61A8();
  sub_21CB83494();
  sub_21C6EA794(v31, v32, v33);
  v39 = type metadata accessor for PMChangePasswordOnWebsiteLink;
  return sub_21C719540(v9, v39);
}

uint64_t sub_21C9B41E0(uint64_t a1)
{
  type metadata accessor for PMCredentialSecurityButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  return sub_21CB84F34();
}

uint64_t sub_21C9B4278@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v8 = sub_21CB81004();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v15[0] = v8;
  v15[1] = v10;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a3 = result;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v14;
  return result;
}

uint64_t sub_21C9B43A0@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v53 = a3;
  v4 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B40, &qword_21CBB8D38);
  MEMORY[0x28223BE20](v46);
  v6 = &v42 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B48, &qword_21CBB8D40);
  MEMORY[0x28223BE20](v52);
  v8 = &v42 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B50, &qword_21CBB8D48);
  MEMORY[0x28223BE20](v49);
  v51 = &v42 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B58, &qword_21CBB8D50);
  MEMORY[0x28223BE20](v43);
  v44 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B60, &qword_21CBB8D58);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B68, &qword_21CBB8D60);
  MEMORY[0x28223BE20](v48);
  v15 = &v42 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B70, &qword_21CBB8D68);
  MEMORY[0x28223BE20](v50);
  v45 = &v42 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B78, &qword_21CBB8D70);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  MEMORY[0x28223BE20](v23);
  if (v4 <= 3)
  {
    if (v4 > 1)
    {
      v28 = &v42 - v24;
      if (v4 == 2)
      {
        v29 = sub_21CB84AC4();
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B80, &unk_21CBB8D78);
        (*(*(v30 - 8) + 16))(v28, v47, v30);
        *&v28[*(v17 + 36)] = v29;
        sub_21C6EDBAC(v28, v13, &qword_27CDF3B78, &qword_21CBB8D70);
        swift_storeEnumTagMultiPayload();
        sub_21C9B5EA4();
        sub_21CB83494();
        sub_21C6EDBAC(v15, v44, &qword_27CDF3B68, &qword_21CBB8D60);
        swift_storeEnumTagMultiPayload();
        sub_21C9B5F88();
        v31 = v45;
        sub_21CB83494();
        sub_21C6EA794(v15, &qword_27CDF3B68, &qword_21CBB8D60);
        v32 = &qword_27CDF3B70;
        v33 = &qword_21CBB8D68;
        sub_21C6EDBAC(v31, v51, &qword_27CDF3B70, &qword_21CBB8D68);
        swift_storeEnumTagMultiPayload();
        sub_21C9B5FB8(&qword_27CDF3BA0, &qword_27CDF3B70, &qword_21CBB8D68, sub_21C9B5F88);
        sub_21C9B6034();
        sub_21CB83494();
        v34 = v31;
      }

      else
      {
        v35 = sub_21CB84A84();
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B80, &unk_21CBB8D78);
        (*(*(v36 - 8) + 16))(v28, v47, v36);
        *&v28[*(v17 + 36)] = v35;
        sub_21C6EDBAC(v28, v13, &qword_27CDF3B78, &qword_21CBB8D70);
        swift_storeEnumTagMultiPayload();
        sub_21C9B5EA4();
        sub_21CB83494();
        sub_21C6EDBAC(v15, v6, &qword_27CDF3B68, &qword_21CBB8D60);
        swift_storeEnumTagMultiPayload();
        sub_21C9B5F88();
        sub_21CB83494();
        sub_21C6EA794(v15, &qword_27CDF3B68, &qword_21CBB8D60);
        v32 = &qword_27CDF3B48;
        v33 = &qword_21CBB8D40;
        sub_21C6EDBAC(v8, v51, &qword_27CDF3B48, &qword_21CBB8D40);
        swift_storeEnumTagMultiPayload();
        sub_21C9B5FB8(&qword_27CDF3BA0, &qword_27CDF3B70, &qword_21CBB8D68, sub_21C9B5F88);
        sub_21C9B6034();
        sub_21CB83494();
        v34 = v8;
      }

      sub_21C6EA794(v34, v32, v33);
      v22 = v28;
      return sub_21C6EA794(v22, &qword_27CDF3B78, &qword_21CBB8D70);
    }

    goto LABEL_14;
  }

  if ((v4 - 4) < 6)
  {
    if ((a2 & 0x100) != 0)
    {
      v25 = sub_21CB84A64();
    }

    else
    {
      v25 = sub_21CB84AF4();
    }

    v26 = v25;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B80, &unk_21CBB8D78);
    (*(*(v27 - 8) + 16))(v19, v47, v27);
    *&v19[*(v17 + 36)] = v26;
    sub_21C716934(v19, v22, &qword_27CDF3B78, &qword_21CBB8D70);
    sub_21C6EDBAC(v22, v13, &qword_27CDF3B78, &qword_21CBB8D70);
    swift_storeEnumTagMultiPayload();
    sub_21C9B5EA4();
    sub_21CB83494();
    sub_21C6EDBAC(v15, v6, &qword_27CDF3B68, &qword_21CBB8D60);
    swift_storeEnumTagMultiPayload();
    sub_21C9B5F88();
    sub_21CB83494();
    sub_21C6EA794(v15, &qword_27CDF3B68, &qword_21CBB8D60);
    sub_21C6EDBAC(v8, v51, &qword_27CDF3B48, &qword_21CBB8D40);
    swift_storeEnumTagMultiPayload();
    sub_21C9B5FB8(&qword_27CDF3BA0, &qword_27CDF3B70, &qword_21CBB8D68, sub_21C9B5F88);
    sub_21C9B6034();
    sub_21CB83494();
    sub_21C6EA794(v8, &qword_27CDF3B48, &qword_21CBB8D40);
    return sub_21C6EA794(v22, &qword_27CDF3B78, &qword_21CBB8D70);
  }

  if (v4 == 11)
  {
LABEL_14:
    v37 = &v42 - v24;
    v38 = sub_21CB84AC4();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3B80, &unk_21CBB8D78);
    (*(*(v39 - 8) + 16))(v37, v47, v39);
    *&v37[*(v17 + 36)] = v38;
    sub_21C6EDBAC(v37, v13, &qword_27CDF3B78, &qword_21CBB8D70);
    swift_storeEnumTagMultiPayload();
    sub_21C9B5EA4();
    sub_21CB83494();
    sub_21C6EDBAC(v15, v44, &qword_27CDF3B68, &qword_21CBB8D60);
    swift_storeEnumTagMultiPayload();
    sub_21C9B5F88();
    v40 = v45;
    sub_21CB83494();
    sub_21C6EA794(v15, &qword_27CDF3B68, &qword_21CBB8D60);
    sub_21C6EDBAC(v40, v51, &qword_27CDF3B70, &qword_21CBB8D68);
    swift_storeEnumTagMultiPayload();
    sub_21C9B5FB8(&qword_27CDF3BA0, &qword_27CDF3B70, &qword_21CBB8D68, sub_21C9B5F88);
    sub_21C9B6034();
    sub_21CB83494();
    sub_21C6EA794(v40, &qword_27CDF3B70, &qword_21CBB8D68);
    v22 = v37;
    return sub_21C6EA794(v22, &qword_27CDF3B78, &qword_21CBB8D70);
  }

  result = sub_21CB861C4();
  __break(1u);
  return result;
}

uint64_t sub_21C9B4FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_21C9B43A0(a1, v3 | *v2, a2);
}

void sub_21C9B5004(uint64_t a1)
{
  sub_21C705CFC(319);
  if (v1 <= 0x3F)
  {
    sub_21C940C08(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PMAccount(319);
      if (v3 <= 0x3F)
      {
        sub_21C6EE3E0(319, &qword_27CDEB2F0, &type metadata for PMSecurityRecommendation, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for PMSecurityType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PMSecurityType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21C9B5238()
{
  result = qword_27CDF39F0;
  if (!qword_27CDF39F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF39F0);
  }

  return result;
}

uint64_t sub_21C9B52D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_21C9B535C()
{
  result = qword_27CDF3A60;
  if (!qword_27CDF3A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3A18, &qword_21CBB8A08);
    sub_21C9B53E8();
    sub_21C9B552C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3A60);
  }

  return result;
}

unint64_t sub_21C9B53E8()
{
  result = qword_27CDF3A68;
  if (!qword_27CDF3A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3A10, &qword_21CBB8A00);
    sub_21C9B5474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3A68);
  }

  return result;
}

unint64_t sub_21C9B5474()
{
  result = qword_27CDF3A70;
  if (!qword_27CDF3A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3A08, &qword_21CBB89F8);
    sub_21C6EADEC(&qword_27CDF3A78, &qword_27CDF3A80, &qword_21CBB8A70, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3A70);
  }

  return result;
}

unint64_t sub_21C9B552C()
{
  result = qword_27CDF3A88;
  if (!qword_27CDF3A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3A88);
  }

  return result;
}

uint64_t sub_21C9B5580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9B55E8(uint64_t a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v19 - v8);
  if (a2 > 5u)
  {
    if (a2 > 8u)
    {
      if (a2 == 9)
      {
LABEL_16:
        v14 = type metadata accessor for PMAccount(0);
        sub_21C9B5580(a1 + *(v14 + 24), v6, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C719540(a1, type metadata accessor for PMAccount);
          v11 = type metadata accessor for PMAccount.Storage;
          v12 = v6;
          goto LABEL_11;
        }

        v15 = *v6;
        v16 = [v15 hasValidWebsite];

        sub_21C719540(a1, type metadata accessor for PMAccount);
        if ((v16 & 1) == 0)
        {
          return 4;
        }

        return 2;
      }

      if (a2 != 10)
      {
        sub_21C719540(a1, type metadata accessor for PMAccount);
        return 3;
      }
    }

    else if (a2 == 7)
    {
      goto LABEL_16;
    }

LABEL_10:
    v11 = type metadata accessor for PMAccount;
    v12 = a1;
LABEL_11:
    sub_21C719540(v12, v11);
    return 4;
  }

  if (a2 <= 3u)
  {
    if (a2 - 1 >= 3)
    {
      sub_21C719540(a1, type metadata accessor for PMAccount);
      return 0;
    }

    goto LABEL_10;
  }

  if (a2 != 4)
  {
    goto LABEL_16;
  }

  v13 = type metadata accessor for PMAccount(0);
  sub_21C9B5580(a1 + *(v13 + 24), v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719540(a1, type metadata accessor for PMAccount);
    v11 = type metadata accessor for PMAccount.Storage;
    v12 = v9;
    goto LABEL_11;
  }

  v17 = *v9;
  v18 = [*v9 hasValidWebsite];

  sub_21C719540(a1, type metadata accessor for PMAccount);
  if ((v18 & 1) == 0)
  {
    return 4;
  }

  return 1;
}

uint64_t sub_21C9B5908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C9B5970()
{
  result = qword_27CDF3AE8;
  if (!qword_27CDF3AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3AE0, &qword_21CBB8BA8);
    sub_21C9B5A28();
    sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3AE8);
  }

  return result;
}

unint64_t sub_21C9B5A28()
{
  result = qword_27CDF3AF0;
  if (!qword_27CDF3AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3AF8, &unk_21CBB8BB0);
    sub_21C9B5AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3AF0);
  }

  return result;
}

unint64_t sub_21C9B5AB4()
{
  result = qword_27CDF3B00;
  if (!qword_27CDF3B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3B00);
  }

  return result;
}

uint64_t sub_21C9B5B08(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21C705FD0(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21C9B5BE4(uint64_t a1)
{
  type metadata accessor for PMAccount(319);
  if (v1 <= 0x3F)
  {
    sub_21C6EE3E0(319, &qword_27CDEE2A8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for PMCredentialSecurityColorModifier(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PMCredentialSecurityColorModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21C9B5E18()
{
  result = qword_27CDF3B38;
  if (!qword_27CDF3B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3B38);
  }

  return result;
}

unint64_t sub_21C9B5EA4()
{
  result = qword_27CDF3B88;
  if (!qword_27CDF3B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3B78, &qword_21CBB8D70);
    sub_21C6EADEC(&qword_27CDF3B90, &qword_27CDF3B80, &unk_21CBB8D78, MEMORY[0x277CE04B0]);
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3B88);
  }

  return result;
}

uint64_t sub_21C9B5FB8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_21C9B6034()
{
  result = qword_27CDF3BA8;
  if (!qword_27CDF3BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3B48, &qword_21CBB8D40);
    sub_21C9B5F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3BA8);
  }

  return result;
}

unint64_t sub_21C9B60C0()
{
  result = qword_27CDF3BE8;
  if (!qword_27CDF3BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3BD0, &qword_21CBB8DA8);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21C705FD0(&qword_27CDF3BD8, type metadata accessor for PMChangePasswordOnWebsiteLink, &unk_21CBB1088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3BE8);
  }

  return result;
}

unint64_t sub_21C9B61A8()
{
  result = qword_27CDF3BF0;
  if (!qword_27CDF3BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3BB8, &qword_21CBB8D90);
    sub_21C705FD0(&qword_27CDF3BD8, type metadata accessor for PMChangePasswordOnWebsiteLink, &unk_21CBB1088);
    sub_21C705FD0(&qword_27CDF3BE0, type metadata accessor for PMManagePasskeyOnWebsiteLink, &unk_21CB9FB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3BF0);
  }

  return result;
}

uint64_t sub_21C9B62C0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_21C9B633C()
{
  result = qword_27CDF3BF8;
  if (!qword_27CDF3BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3C00, &qword_21CBB8DE0);
    sub_21C9B5FB8(&qword_27CDF3BA0, &qword_27CDF3B70, &qword_21CBB8D68, sub_21C9B5F88);
    sub_21C9B6034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3BF8);
  }

  return result;
}

unint64_t sub_21C9B63F4()
{
  result = qword_27CDF3C08;
  if (!qword_27CDF3C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3C10, &qword_21CBB8DE8);
    sub_21C9B60C0();
    sub_21C9B61A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3C08);
  }

  return result;
}

uint64_t sub_21C9B6494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB82644();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  sub_21C9BA424(a1, a2, type metadata accessor for PMSharingGroup);
  v11 = type metadata accessor for PMGroupInvitationAcceptanceFlow(0);
  v21 = &unk_282E48D78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE950, &qword_21CBB8DF0);
  sub_21C6EADEC(&qword_27CDEE958, &qword_27CDEE950, &qword_21CBB8DF0, MEMORY[0x277D83970]);
  sub_21C87BEA8();
  sub_21CB82654();
  (*(v5 + 16))(v7, v10, v4);
  sub_21CB84D44();
  (*(v5 + 8))(v10, v4);
  v12 = *(v11 + 24);
  *(a2 + v12) = swift_getKeyPath(byte_21CBB8DF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v13 = *(v11 + 28);
  KeyPath = swift_getKeyPath(byte_21CBB8E30);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v15 = (a2 + v13);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v21);

  type metadata accessor for PMAccountsState(0);
  sub_21C706018(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v16 = sub_21CB82674();
  v18 = v17;

  *v15 = v16;
  v15[1] = v18;
  return result;
}

uint64_t type metadata accessor for PMGroupInvitationAcceptanceFlow(uint64_t a1)
{
  result = qword_27CDF3C18;
  if (!qword_27CDF3C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C9B67C0(uint64_t a1)
{
  sub_21CB86484();
  if (a1 <= 1)
  {
    if (!a1)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (a1 == 1)
    {
      v2 = 2;
      goto LABEL_12;
    }

LABEL_14:
    MEMORY[0x21CF15F90](1);
    sub_21CB85DE4();
    return sub_21CB864D4();
  }

  if (a1 == 2)
  {
    v2 = 3;
    goto LABEL_12;
  }

  if (a1 == 3)
  {
    v2 = 4;
    goto LABEL_12;
  }

  if (a1 != 4)
  {
    goto LABEL_14;
  }

  v2 = 5;
LABEL_12:
  MEMORY[0x21CF15F90](v2);
  return sub_21CB864D4();
}

uint64_t sub_21C9B6888(uint64_t a1)
{
  v2 = *v1;
  if (*v1 <= 1)
  {
    if (!v2)
    {
      v3 = 0;
      return MEMORY[0x21CF15F90](v3);
    }

    if (v2 == 1)
    {
      v3 = 2;
      return MEMORY[0x21CF15F90](v3);
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        v3 = 3;
        return MEMORY[0x21CF15F90](v3);
      case 3:
        v3 = 4;
        return MEMORY[0x21CF15F90](v3);
      case 4:
        v3 = 5;
        return MEMORY[0x21CF15F90](v3);
    }
  }

  MEMORY[0x21CF15F90](1);
  return sub_21CB85DE4();
}

uint64_t sub_21C9B6928(uint64_t a1)
{
  v2 = *v1;
  sub_21CB86484();
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = 2;
      goto LABEL_12;
    }

LABEL_14:
    MEMORY[0x21CF15F90](1);
    sub_21CB85DE4();
    return sub_21CB864D4();
  }

  if (v2 == 2)
  {
    v3 = 3;
    goto LABEL_12;
  }

  if (v2 == 3)
  {
    v3 = 4;
    goto LABEL_12;
  }

  if (v2 != 4)
  {
    goto LABEL_14;
  }

  v3 = 5;
LABEL_12:
  MEMORY[0x21CF15F90](v3);
  return sub_21CB864D4();
}

BOOL sub_21C9B69E4(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (!v2)
    {
      return !v3;
    }

    if (v2 == 1)
    {
      return v3 == 1;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        return v3 == 2;
      case 3:
        return v3 == 3;
      case 4:
        return v3 == 4;
    }
  }

  if (v3 < 5)
  {
    return 0;
  }

  sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
  return sub_21CB85DD4() & 1;
}

__n128 sub_21C9B6AB0@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A50, &qword_21CBB51C0);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3C30, &qword_21CBB8F90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-v6];
  type metadata accessor for PMGroupInvitationAcceptanceFlow(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
  sub_21CB84D74();
  v18 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3C38, &qword_21CBB8F98);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3C40, &qword_21CBB8FA0);
  v9 = sub_21C87BEA8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3C48, &qword_21CBB8FA8);
  v11 = sub_21C9B9CD4();
  *&v19 = v10;
  *(&v19 + 1) = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v19 = MEMORY[0x277CE1428];
  *(&v19 + 1) = &type metadata for PMGroupInvitationAcceptanceFlow.Step;
  *&v20 = v8;
  *(&v20 + 1) = MEMORY[0x277CE1410];
  *&v21 = v9;
  *(&v21 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21CB82904();
  sub_21CB85214();
  sub_21CB82AC4();
  (*(v5 + 32))(a1, v7, v4);
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3CC0, &qword_21CBB8FD8) + 36);
  v14 = v24;
  *(v13 + 64) = v23;
  *(v13 + 80) = v14;
  *(v13 + 96) = v25;
  v15 = v20;
  *v13 = v19;
  *(v13 + 16) = v15;
  result = v22;
  *(v13 + 32) = v21;
  *(v13 + 48) = result;
  return result;
}

uint64_t sub_21C9B6D90(uint64_t a1)
{
  v2 = type metadata accessor for PMGroupInvitationAcceptanceFlow(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21C9BA3BC(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationAcceptanceFlow);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21C9BA424(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PMGroupInvitationAcceptanceFlow);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3C40, &qword_21CBB8FA0);
  sub_21C87BEA8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3C48, &qword_21CBB8FA8);
  v8 = sub_21C9B9CD4();
  v10[0] = v7;
  v10[1] = v8;
  swift_getOpaqueTypeConformance2();
  sub_21CB84564();
}

uint64_t sub_21C9B6F54(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3C48, &qword_21CBB8FA8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  sub_21C9B7030(*a1, a2, &v8 - v5);
  sub_21C9B9CD4();
  sub_21CB84674();
  return sub_21C6EA794(v6, &qword_27CDF3C48, &qword_21CBB8FA8);
}

uint64_t sub_21C9B7030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v138 = a3;
  v139 = a2;
  v125 = type metadata accessor for PMRemoveDuplicateAccountsList(0);
  MEMORY[0x28223BE20](v125);
  v116 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3CC8, &qword_21CBB8FE0);
  MEMORY[0x28223BE20](v120);
  v123 = &v111 - v5;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3CB0, &qword_21CBB8FD0);
  MEMORY[0x28223BE20](v137);
  v126 = &v111 - v6;
  v122 = type metadata accessor for PMMoveAccountsList(0);
  MEMORY[0x28223BE20](v122);
  v115 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3CD0, &qword_21CBB8FE8);
  MEMORY[0x28223BE20](v119);
  v121 = (&v111 - v8);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3CA0, &qword_21CBB8FC8);
  MEMORY[0x28223BE20](v130);
  v124 = &v111 - v9;
  v118 = sub_21CB81024();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v11 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for PMOnboardingView(0);
  MEMORY[0x28223BE20](v132);
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3CD8, &qword_21CBB8FF0);
  MEMORY[0x28223BE20](v135);
  v136 = &v111 - v14;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3CE0, &qword_21CBB8FF8);
  MEMORY[0x28223BE20](v127);
  v129 = &v111 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3CE8, &unk_21CBB9000);
  MEMORY[0x28223BE20](v16);
  v18 = (&v111 - v17);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3C80, &qword_21CBB8FC0);
  MEMORY[0x28223BE20](v128);
  v20 = &v111 - v19;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3C70, &qword_21CBB8FB8);
  MEMORY[0x28223BE20](v134);
  v131 = &v111 - v21;
  v22 = type metadata accessor for PMGroupInvitationAcceptanceFlow(0);
  v133 = *(v22 - 8);
  v23 = *(v133 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PMGroupInvitationOnboardingView(0);
  MEMORY[0x28223BE20](v25);
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = &v111 - v27;
  if (a1 <= 1)
  {
    if (!a1)
    {
      v97 = v139;
      sub_21C9BA3BC(v139, &v111 - v27, type metadata accessor for PMSharingGroup);
      sub_21C9BA3BC(v97, &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationAcceptanceFlow);
      v98 = (*(v133 + 80) + 16) & ~*(v133 + 80);
      v99 = swift_allocObject();
      sub_21C9BA424(v24, v99 + v98, type metadata accessor for PMGroupInvitationAcceptanceFlow);
      v100 = &v28[v25[5]];
      *v100 = sub_21C9BA34C;
      v100[1] = v99;
      v101 = &v28[v25[6]];
      LOBYTE(v140) = 0;
      sub_21CB84D44();
      v102 = v141.n128_u64[1];
      *v101 = v141.n128_u8[0];
      *(v101 + 1) = v102;
      v103 = &v28[v25[7]];
      LOBYTE(v140) = 0;
      sub_21CB84D44();
      v104 = v141.n128_u64[1];
      *v103 = v141.n128_u8[0];
      *(v103 + 1) = v104;
      v105 = v25[8];
      v140 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EE8, &qword_21CBB95F0);
      sub_21CB84D44();
      *&v28[v105] = v141;
      sub_21C9BA3BC(v28, v18, type metadata accessor for PMGroupInvitationOnboardingView);
      swift_storeEnumTagMultiPayload();
      sub_21C706018(&qword_27CDF3C88, type metadata accessor for PMGroupInvitationOnboardingView, &unk_21CBB95F8);
      sub_21C9B9F2C();
      sub_21CB83494();
      sub_21C6EDBAC(v20, v129, &qword_27CDF3C80, &qword_21CBB8FC0);
      swift_storeEnumTagMultiPayload();
      sub_21C9B9E70();
      sub_21C9B9F80();
      v106 = v131;
      sub_21CB83494();
      sub_21C6EA794(v20, &qword_27CDF3C80, &qword_21CBB8FC0);
      sub_21C6EDBAC(v106, v136, &qword_27CDF3C70, &qword_21CBB8FB8);
      swift_storeEnumTagMultiPayload();
      sub_21C9B9DE4();
      sub_21C9BA06C();
      sub_21CB83494();
      sub_21C6EA794(v106, &qword_27CDF3C70, &qword_21CBB8FB8);
      v38 = type metadata accessor for PMGroupInvitationOnboardingView;
      goto LABEL_13;
    }

    if (a1 != 1)
    {
LABEL_16:
      sub_21C9BA3BC(v139, &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationAcceptanceFlow);
      v108 = (*(v133 + 80) + 16) & ~*(v133 + 80);
      v109 = swift_allocObject();
      sub_21C9BA424(v24, v109 + v108, type metadata accessor for PMGroupInvitationAcceptanceFlow);
      *v18 = a1;
      v18[1] = sub_21C9BA2E0;
      v18[2] = v109;
      swift_storeEnumTagMultiPayload();
      sub_21C9BA33C(a1);
      sub_21C706018(&qword_27CDF3C88, type metadata accessor for PMGroupInvitationOnboardingView, &unk_21CBB95F8);
      sub_21C9B9F2C();

      sub_21CB83494();
      sub_21C6EDBAC(v20, v129, &qword_27CDF3C80, &qword_21CBB8FC0);
      swift_storeEnumTagMultiPayload();
      sub_21C9B9E70();
      sub_21C9B9F80();
      v110 = v131;
      sub_21CB83494();
      sub_21C6EA794(v20, &qword_27CDF3C80, &qword_21CBB8FC0);
      sub_21C6EDBAC(v110, v136, &qword_27CDF3C70, &qword_21CBB8FB8);
      swift_storeEnumTagMultiPayload();
      sub_21C9B9DE4();
      sub_21C9BA06C();
      sub_21CB83494();

      return sub_21C6EA794(v110, &qword_27CDF3C70, &qword_21CBB8FB8);
    }

    v39 = objc_opt_self();
    v40 = [v39 headerImageNameForMovingCredentialsToGroup];
    sub_21CB855C4();

    v126 = sub_21CB84BB4();
    v41 = [v39 headerTitleForMovingCredentialsToGroup];
    v125 = sub_21CB855C4();
    v123 = v42;

    type metadata accessor for PMSharingGroup(0);
    v43 = v139;
    v44 = sub_21CB85584();
    v45 = [v39 descriptionForMovingCredentialsToGroup_];

    v120 = sub_21CB855C4();
    v116 = v46;

    sub_21CB81014();
    v115 = sub_21CB81004();
    v114 = v47;
    v117 = *(v117 + 8);
    v48 = v118;
    (v117)(v11, v118);
    sub_21C9BA3BC(v43, &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationAcceptanceFlow);
    v49 = (*(v133 + 80) + 16) & ~*(v133 + 80);
    v133 = swift_allocObject();
    sub_21C9BA424(&v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v133 + v49, type metadata accessor for PMGroupInvitationAcceptanceFlow);
    sub_21CB81014();
    v113 = sub_21CB81004();
    v112 = v50;
    (v117)(v11, v48);
    sub_21C9BA3BC(v139, &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationAcceptanceFlow);
    v51 = swift_allocObject();
    sub_21C9BA424(v24, v51 + v49, type metadata accessor for PMGroupInvitationAcceptanceFlow);
    v52 = v125;
    *v13 = v126;
    *(v13 + 1) = v52;
    v53 = v120;
    *(v13 + 2) = v123;
    *(v13 + 3) = v53;
    *(v13 + 4) = v116;
    *(v13 + 5) = 0;
    *(v13 + 24) = 258;
    v54 = v114;
    *(v13 + 7) = v115;
    *(v13 + 8) = v54;
    v55 = v133;
    *(v13 + 9) = sub_21C9BA25C;
    *(v13 + 10) = v55;
    v13[88] = 0;
    v56 = v112;
    *(v13 + 12) = v113;
    *(v13 + 13) = v56;
    *(v13 + 14) = sub_21C9BA264;
    *(v13 + 15) = v51;
    v13[128] = 0;
    v57 = *(v132 + 28);
    *&v13[v57] = swift_getKeyPath(aP_69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
    swift_storeEnumTagMultiPayload();
    sub_21C9BA3BC(v13, v121, type metadata accessor for PMOnboardingView);
    swift_storeEnumTagMultiPayload();
    sub_21C706018(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
    sub_21C706018(&qword_27CDEE968, type metadata accessor for PMMoveAccountsList, &unk_21CBC1478);
    v58 = v124;
    sub_21CB83494();
    sub_21C6EDBAC(v58, v129, &qword_27CDF3CA0, &qword_21CBB8FC8);
    swift_storeEnumTagMultiPayload();
    sub_21C9B9E70();
    sub_21C9B9F80();
    v59 = v131;
    sub_21CB83494();
    sub_21C6EA794(v58, &qword_27CDF3CA0, &qword_21CBB8FC8);
    v60 = &qword_27CDF3C70;
    v61 = &qword_21CBB8FB8;
    sub_21C6EDBAC(v59, v136, &qword_27CDF3C70, &qword_21CBB8FB8);
    goto LABEL_11;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        v29 = v139;
        v28 = v116;
        sub_21C9BA3BC(v139, v116, type metadata accessor for PMSharingGroup);
        sub_21C9BA3BC(v29, &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationAcceptanceFlow);
        v30 = (*(v133 + 80) + 16) & ~*(v133 + 80);
        v31 = swift_allocObject();
        sub_21C9BA424(&v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for PMGroupInvitationAcceptanceFlow);
        v32 = v125;
        v33 = &v28[*(v125 + 20)];
        *v33 = sub_21C9BA5A4;
        *(v33 + 1) = v31;
        v34 = &v28[*(v32 + 24)];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3CF0, &qword_21CBC8760);
        v35 = swift_allocObject();
        *(v35 + 16) = 0;
        v140 = v35;
        sub_21CB84D44();
        v36 = v141.n128_u64[1];
        *v34 = v141.n128_u64[0];
        *(v34 + 1) = v36;
        sub_21C9BA3BC(v28, v123, type metadata accessor for PMRemoveDuplicateAccountsList);
        swift_storeEnumTagMultiPayload();
        sub_21C706018(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
        sub_21C706018(&qword_27CDF3CB8, type metadata accessor for PMRemoveDuplicateAccountsList, &unk_21CBC8768);
        v37 = v126;
        sub_21CB83494();
        sub_21C6EDBAC(v37, v136, &qword_27CDF3CB0, &qword_21CBB8FD0);
        swift_storeEnumTagMultiPayload();
        sub_21C9B9DE4();
        sub_21C9BA06C();
        sub_21CB83494();
        sub_21C6EA794(v37, &qword_27CDF3CB0, &qword_21CBB8FD0);
        v38 = type metadata accessor for PMRemoveDuplicateAccountsList;
LABEL_13:
        v74 = v38;
        v75 = v28;
        return sub_21C9BA48C(v75, v74);
      }

      goto LABEL_16;
    }

    v76 = objc_opt_self();
    v77 = [v76 headerImageNameForRemovingDuplicateCredentialsInGroup];
    sub_21CB855C4();

    v131 = sub_21CB84BB4();
    v78 = [v76 headerTitleForRemovingDuplicateCredentialsInGroup];
    v79 = sub_21CB855C4();
    v129 = v80;
    v130 = v79;

    type metadata accessor for PMSharingGroup(0);
    v81 = v139;
    v82 = sub_21CB85584();
    v83 = [v76 descriptionForRemovingDuplicateCredentialsInGroup_];

    v84 = sub_21CB855C4();
    v127 = v85;
    v128 = v84;

    sub_21CB81014();
    v124 = sub_21CB81004();
    v122 = v86;
    v121 = *(v117 + 8);
    v87 = v118;
    v121(v11, v118);
    sub_21C9BA3BC(v81, &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationAcceptanceFlow);
    v88 = (*(v133 + 80) + 16) & ~*(v133 + 80);
    v133 = swift_allocObject();
    sub_21C9BA424(&v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v133 + v88, type metadata accessor for PMGroupInvitationAcceptanceFlow);
    sub_21CB81014();
    v119 = sub_21CB81004();
    v117 = v89;
    v121(v11, v87);
    sub_21C9BA3BC(v139, &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationAcceptanceFlow);
    v90 = swift_allocObject();
    sub_21C9BA424(v24, v90 + v88, type metadata accessor for PMGroupInvitationAcceptanceFlow);
    v91 = v130;
    *v13 = v131;
    *(v13 + 1) = v91;
    v92 = v128;
    *(v13 + 2) = v129;
    *(v13 + 3) = v92;
    *(v13 + 4) = v127;
    *(v13 + 5) = 0;
    *(v13 + 24) = 258;
    v93 = v122;
    *(v13 + 7) = v124;
    *(v13 + 8) = v93;
    v94 = v133;
    *(v13 + 9) = sub_21C9BA1D8;
    *(v13 + 10) = v94;
    v13[88] = 0;
    v95 = v117;
    *(v13 + 12) = v119;
    *(v13 + 13) = v95;
    *(v13 + 14) = sub_21C9BA244;
    *(v13 + 15) = v90;
    v13[128] = 0;
    v96 = *(v132 + 28);
    *&v13[v96] = swift_getKeyPath(aP_69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
    swift_storeEnumTagMultiPayload();
    sub_21C9BA3BC(v13, v123, type metadata accessor for PMOnboardingView);
    swift_storeEnumTagMultiPayload();
    sub_21C706018(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
    sub_21C706018(&qword_27CDF3CB8, type metadata accessor for PMRemoveDuplicateAccountsList, &unk_21CBC8768);
    v59 = v126;
    sub_21CB83494();
    v60 = &qword_27CDF3CB0;
    v61 = &qword_21CBB8FD0;
    sub_21C6EDBAC(v59, v136, &qword_27CDF3CB0, &qword_21CBB8FD0);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    sub_21C9B9DE4();
    sub_21C9BA06C();
    sub_21CB83494();
    sub_21C6EA794(v59, v60, v61);
    v74 = type metadata accessor for PMOnboardingView;
    v75 = v13;
    return sub_21C9BA48C(v75, v74);
  }

  v62 = v139;
  v63 = v115;
  sub_21C9BA3BC(v139, v115, type metadata accessor for PMSharingGroup);
  v64 = type metadata accessor for PMSharingGroup(0);
  (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
  sub_21C9BA3BC(v62, &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationAcceptanceFlow);
  v65 = (*(v133 + 80) + 16) & ~*(v133 + 80);
  v66 = swift_allocObject();
  sub_21C9BA424(&v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v66 + v65, type metadata accessor for PMGroupInvitationAcceptanceFlow);
  v67 = v122;
  *(v63 + *(v122 + 20)) = 0;
  v68 = (v63 + *(v67 + 24));
  *v68 = sub_21C9BA5A8;
  v68[1] = v66;
  v69 = (v63 + *(v67 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD0, &unk_21CBB9040);
  v70 = swift_allocObject();
  *(v70 + 16) = 0;
  v140 = v70;
  sub_21CB84D44();
  v71 = v141.n128_u64[1];
  *v69 = v141.n128_u64[0];
  v69[1] = v71;
  sub_21C9BA3BC(v63, v121, type metadata accessor for PMMoveAccountsList);
  swift_storeEnumTagMultiPayload();
  sub_21C706018(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
  sub_21C706018(&qword_27CDEE968, type metadata accessor for PMMoveAccountsList, &unk_21CBC1478);
  v72 = v124;
  sub_21CB83494();
  sub_21C6EDBAC(v72, v129, &qword_27CDF3CA0, &qword_21CBB8FC8);
  swift_storeEnumTagMultiPayload();
  sub_21C9B9E70();
  sub_21C9B9F80();
  v73 = v131;
  sub_21CB83494();
  sub_21C6EA794(v72, &qword_27CDF3CA0, &qword_21CBB8FC8);
  sub_21C6EDBAC(v73, v136, &qword_27CDF3C70, &qword_21CBB8FB8);
  swift_storeEnumTagMultiPayload();
  sub_21C9B9DE4();
  sub_21C9BA06C();
  sub_21CB83494();
  sub_21C6EA794(v73, &qword_27CDF3C70, &qword_21CBB8FB8);
  v74 = type metadata accessor for PMMoveAccountsList;
  v75 = v63;
  return sub_21C9BA48C(v75, v74);
}

void sub_21C9B889C(void *a1)
{
  v2 = sub_21CB82644();
  MEMORY[0x28223BE20](v2 - 8);
  if (a1)
  {
    v3 = a1;
    v4 = [v3 devicesWithSharingUnavailable];
    type metadata accessor for PMDevice(0);
    v5 = sub_21CB85824();

    if (v5 >> 62)
    {
      v6 = sub_21CB85FA4();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6)
    {
      type metadata accessor for PMGroupInvitationAcceptanceFlow(0);
      v7 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
      sub_21CB84D54();
      sub_21C87BEA8();
      sub_21CB82634();

      sub_21CB84D64();
      return;
    }
  }

  sub_21C9B8A18();
}

uint64_t sub_21C9B8A18()
{
  v0 = sub_21CB823B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB82644();
  MEMORY[0x28223BE20](v4 - 8);
  if (sub_21C9B9278())
  {
    type metadata accessor for PMGroupInvitationAcceptanceFlow(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
    sub_21CB84D54();
    v5 = 1;
  }

  else
  {
    v6 = [objc_opt_self() sharedStore];
    sub_21CB85B64();
    v7 = sub_21CB85584();

    v8 = [v6 duplicateAccountsWithGroupID_];

    sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
    v9 = sub_21CB85824();

    if (v9 >> 62)
    {
      v10 = sub_21CB85FA4();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    type metadata accessor for PMGroupInvitationAcceptanceFlow(0);
    if (!v10)
    {
      sub_21C95B2C8(v3);
      sub_21CB823A4();
      return (*(v1 + 8))(v3, v0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
    sub_21CB84D54();
    v5 = 3;
  }

  v12[1] = v5;
  sub_21C87BEA8();
  sub_21CB82634();
  return sub_21CB84D64();
}

uint64_t sub_21C9B8CB4()
{
  v0 = sub_21CB823B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB82644();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = [objc_opt_self() sharedStore];
  sub_21CB85B64();
  v6 = sub_21CB85584();

  v7 = [v5 duplicateAccountsWithGroupID_];

  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  v8 = sub_21CB85824();

  if (v8 >> 62)
  {
    v9 = sub_21CB85FA4();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  type metadata accessor for PMGroupInvitationAcceptanceFlow(0);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
    sub_21CB84D54();
    v11[1] = 3;
    sub_21C87BEA8();
    sub_21CB82634();
    return sub_21CB84D64();
  }

  else
  {
    sub_21C95B2C8(v3);
    sub_21CB823A4();
    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_21C9B8F10(uint64_t a1, uint64_t a2)
{
  v2 = sub_21CB82644();
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for PMGroupInvitationAcceptanceFlow(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
  sub_21CB84D54();
  sub_21C87BEA8();
  sub_21CB82634();
  return sub_21CB84D64();
}

uint64_t sub_21C9B8FF0(uint64_t a1)
{
  v16 = sub_21CB82F84();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_21CB823B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMGroupInvitationAcceptanceFlow(0);
  sub_21C6EDBAC(a1 + *(v12 + 24), v7, &qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_21CB85B04();
    v13 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_21CB823A4();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21C9B9278()
{
  v1 = sub_21CB85C44();
  v58 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v40 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  MEMORY[0x28223BE20](v54);
  v4 = &v38 - v3;
  v42 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v42);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v53);
  v57 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v18 = type metadata accessor for PMAccount(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v59 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMGroupInvitationAcceptanceFlow(0);
  v55 = v0;
  swift_getKeyPath(a8_27);
  swift_getKeyPath(byte_21CBB9078);
  sub_21CB81DB4();

  result = v60;
  v46 = *(v60 + 16);
  if (v46)
  {
    v22 = v18;
    v23 = 0;
    v47 = v60 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v24 = *(v22 + 24);
    v50 = (v58 + 16);
    v51 = v24;
    v48 = (v58 + 48);
    v49 = (v58 + 56);
    v38 = (v58 + 32);
    v39 = (v58 + 8);
    v25 = v19;
    v26 = v57;
    v58 = v11;
    v44 = v19;
    v45 = v14;
    v52 = v60;
    while (v23 < *(result + 16))
    {
      v27 = v59;
      sub_21C9BA3BC(v47 + *(v25 + 72) * v23, v59, type metadata accessor for PMAccount);
      sub_21C9BA3BC(v27 + v51, v26, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = v41;
        sub_21C9BA424(v26, v41, type metadata accessor for PMAccount.MockData);
        sub_21C6EDBAC(v28 + *(v42 + 72), v14, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C9BA48C(v28, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v29 = *v26;
        sub_21CB85B94();
      }

      sub_21C7C3490(v14, v17);
      (*v50)(v11, v55, v1);
      (*v49)(v11, 0, 1, v1);
      v30 = *(v54 + 48);
      sub_21C6EDBAC(v17, v4, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EDBAC(v11, &v4[v30], &unk_27CDF20B0, &unk_21CBA0090);
      v31 = v17;
      v32 = v11;
      v33 = *v48;
      if ((*v48)(v4, 1, v1) == 1)
      {
        sub_21C6EA794(v32, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C6EA794(v31, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C9BA48C(v59, type metadata accessor for PMAccount);
        if (v33(&v4[v30], 1, v1) != 1)
        {
          goto LABEL_16;
        }

        v17 = v31;
        sub_21C6EA794(v4, &unk_27CDF20B0, &unk_21CBA0090);
      }

      else
      {
        sub_21C6EDBAC(v4, v56, &unk_27CDF20B0, &unk_21CBA0090);
        if (v33(&v4[v30], 1, v1) == 1)
        {
          sub_21C6EA794(v58, &unk_27CDF20B0, &unk_21CBA0090);
          sub_21C6EA794(v31, &unk_27CDF20B0, &unk_21CBA0090);
          sub_21C9BA48C(v59, type metadata accessor for PMAccount);
          (*v39)(v56, v1);
LABEL_16:
          sub_21C6EA794(v4, &qword_27CDEAC40, &qword_21CBA1A40);
LABEL_17:
          v37 = 1;
          goto LABEL_18;
        }

        v34 = v56;
        v35 = v40;
        (*v38)(v40, &v4[v30], v1);
        sub_21C706018(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
        v43 = sub_21CB85574();
        v36 = *v39;
        (*v39)(v35, v1);
        sub_21C6EA794(v58, &unk_27CDF20B0, &unk_21CBA0090);
        v17 = v31;
        sub_21C6EA794(v31, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C9BA48C(v59, type metadata accessor for PMAccount);
        v36(v34, v1);
        sub_21C6EA794(v4, &unk_27CDF20B0, &unk_21CBA0090);
        if ((v43 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      ++v23;
      v14 = v45;
      v26 = v57;
      v11 = v58;
      result = v52;
      v25 = v44;
      if (v46 == v23)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    v37 = 0;
LABEL_18:

    return v37;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI31PMGroupInvitationAcceptanceFlowV4Step33_A8D840243F507EFDC0F63BB124EEB1B4LLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21C9B9A64(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C9B9ABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void sub_21C9B9B44(uint64_t a1)
{
  type metadata accessor for PMSharingGroup(319);
  if (v1 <= 0x3F)
  {
    sub_21C721FAC(319, &qword_27CDF2A40, MEMORY[0x277CDD968], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_21C721FAC(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_21C705CFC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_21C9B9C5C()
{
  result = qword_27CDF3C28;
  if (!qword_27CDF3C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3C28);
  }

  return result;
}

unint64_t sub_21C9B9CD4()
{
  result = qword_27CDF3C50;
  if (!qword_27CDF3C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3C48, &qword_21CBB8FA8);
    sub_21C9B9D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3C50);
  }

  return result;
}

unint64_t sub_21C9B9D58()
{
  result = qword_27CDF3C58;
  if (!qword_27CDF3C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3C60, &qword_21CBB8FB0);
    sub_21C9B9DE4();
    sub_21C9BA06C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3C58);
  }

  return result;
}

unint64_t sub_21C9B9DE4()
{
  result = qword_27CDF3C68;
  if (!qword_27CDF3C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3C70, &qword_21CBB8FB8);
    sub_21C9B9E70();
    sub_21C9B9F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3C68);
  }

  return result;
}

unint64_t sub_21C9B9E70()
{
  result = qword_27CDF3C78;
  if (!qword_27CDF3C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3C80, &qword_21CBB8FC0);
    sub_21C706018(&qword_27CDF3C88, type metadata accessor for PMGroupInvitationOnboardingView, &unk_21CBB95F8);
    sub_21C9B9F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3C78);
  }

  return result;
}

unint64_t sub_21C9B9F2C()
{
  result = qword_27CDF3C90;
  if (!qword_27CDF3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3C90);
  }

  return result;
}

unint64_t sub_21C9B9F80()
{
  result = qword_27CDF3C98;
  if (!qword_27CDF3C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3CA0, &qword_21CBB8FC8);
    sub_21C706018(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
    sub_21C706018(&qword_27CDEE968, type metadata accessor for PMMoveAccountsList, &unk_21CBC1478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3C98);
  }

  return result;
}

unint64_t sub_21C9BA06C()
{
  result = qword_27CDF3CA8;
  if (!qword_27CDF3CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3CB0, &qword_21CBB8FD0);
    sub_21C706018(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
    sub_21C706018(&qword_27CDF3CB8, type metadata accessor for PMRemoveDuplicateAccountsList, &unk_21CBC8768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3CA8);
  }

  return result;
}

uint64_t sub_21C9BA158(uint64_t *a1)
{
  v3 = *(type metadata accessor for PMGroupInvitationAcceptanceFlow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9B6F54(a1, v4);
}

id sub_21C9BA33C(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

void sub_21C9BA34C(void *a1)
{
  type metadata accessor for PMGroupInvitationAcceptanceFlow(0);

  sub_21C9B889C(a1);
}

uint64_t sub_21C9BA3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9BA424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9BA48C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C9BA4EC()
{
  result = qword_27CDF3CF8;
  if (!qword_27CDF3CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3CC0, &qword_21CBB8FD8);
    sub_21C6EADEC(&qword_27CDF3D00, &qword_27CDF3C30, &qword_21CBB8F90, MEMORY[0x277CDDA18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3CF8);
  }

  return result;
}

uint64_t type metadata accessor for PMGroupInvitationDetails(uint64_t a1)
{
  result = qword_27CDF3D08;
  if (!qword_27CDF3D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9BA620(uint64_t a1)
{
  type metadata accessor for PMSharingGroup(319);
  if (v1 <= 0x3F)
  {
    sub_21C707F4C(319);
    if (v2 <= 0x3F)
    {
      sub_21C9BA6D4(319);
      if (v3 <= 0x3F)
      {
        sub_21C721A6C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C9BA6D4(uint64_t a1)
{
  if (!qword_27CDF3D18)
  {
    type metadata accessor for PMGroupInvitationModel(255);
    sub_21C707CB0(&qword_27CDF3D20, type metadata accessor for PMGroupInvitationModel, &unk_21CBB93B8);
    v1 = sub_21CB826A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF3D18);
    }
  }
}

uint64_t sub_21C9BA784@<X0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v81 = sub_21CB81024();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMGroupInvitationDetails(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v87 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for PMOnboardingView(0);
  MEMORY[0x28223BE20](v70);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3D50, &qword_21CBB9120);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v71 = &v64 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3D38, &qword_21CBB9118);
  MEMORY[0x28223BE20](v72);
  v69 = &v64 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3D58, &unk_21CBB9128);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v64 - v13;
  v76 = a1 + *(v5 + 32);
  v14 = sub_21C9BD2A0();
  v15 = sub_21C9BD434(v14);
  sub_21CA88900(v14, v15 & 1, v94);

  v17 = sub_21C9BD434(v16);
  v18 = objc_opt_self();
  v19 = &selRef_declineButtonTitle;
  if (v17)
  {
    v19 = &selRef_acceptButtonTitle;
  }

  v20 = *v19;
  v21 = sub_21C9BCF98;
  if (v17)
  {
    v21 = sub_21C9BD298;
  }

  v73 = v21;
  v22 = [v18 v20];
  v68 = sub_21CB855C4();
  v67 = v23;

  sub_21C9BCED0(a1, v8);
  v24 = *(v6 + 80);
  v25 = (v24 + 16) & ~v24;
  v66 = swift_allocObject();
  v26 = sub_21C9BCF34(v8, v66 + v25);
  v27 = sub_21C9BD434(v26);
  v28 = objc_opt_self();
  v29 = &selRef_declineButtonTitle;
  if ((v27 & 1) == 0)
  {
    v29 = &selRef_acceptButtonTitle;
  }

  v30 = *v29;
  v31 = sub_21C9BCFB8;
  if (v27)
  {
    v31 = sub_21C9BD294;
  }

  v65 = v31;
  v32 = [v28 v30];
  v64 = sub_21CB855C4();
  v34 = v33;

  sub_21C9BCED0(a1, v8);
  v77 = v24;
  v35 = swift_allocObject();
  v78 = (v24 + 16) & ~v24;
  v85 = v8;
  sub_21C9BCF34(v8, v35 + v25);
  v36 = v94[2];
  *(v10 + 1) = v94[1];
  *(v10 + 2) = v36;
  *(v10 + 24) = v95;
  *v10 = v94[0];
  v37 = v67;
  *(v10 + 7) = v68;
  *(v10 + 8) = v37;
  v38 = v66;
  *(v10 + 9) = v73;
  *(v10 + 10) = v38;
  v10[88] = 0;
  *(v10 + 12) = v64;
  *(v10 + 13) = v34;
  *(v10 + 14) = v65;
  *(v10 + 15) = v35;
  v39 = v69;
  v10[128] = 0;
  v40 = *(v70 + 28);
  *&v10[v40] = swift_getKeyPath(byte_21CBB9138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v73 = a1;
  v88 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B68, &qword_21CBB5398);
  sub_21C707CB0(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B70, &qword_21CBB53A0);
  v42 = sub_21C6EADEC(&qword_27CDF2B78, &qword_27CDF2B70, &qword_21CBB53A0, MEMORY[0x277CDDF68]);
  v90 = v41;
  v91 = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v71;
  sub_21CB84894();
  v44 = v10;
  v45 = v72;
  sub_21C85BC4C(v44);
  swift_getKeyPath(byte_21CBB9168);
  swift_getKeyPath(byte_21CBB9190);
  sub_21CB81DB4();

  LOBYTE(v34) = v90;
  KeyPath = swift_getKeyPath(byte_21CBB91B0);
  v47 = swift_allocObject();
  *(v47 + 16) = v34;
  (*(v74 + 32))(v39, v43, v75);
  v48 = (v39 + *(v45 + 36));
  *v48 = KeyPath;
  v48[1] = sub_21C735744;
  v48[2] = v47;
  swift_getKeyPath(asc_21CBB91E0);
  swift_getKeyPath(asc_21CBB9208);
  sub_21CB81DB4();

  if (v90 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570), sub_21C82A2F0(), (swift_dynamicCast() & 1) != 0))
  {
    v49 = v92;
    [v92 safari_isOrContainsNetworkUnavailableError];
  }

  else
  {
    v49 = 0;
  }

  v50 = v79;
  sub_21CB81014();
  v51 = sub_21CB81004();
  v53 = v52;

  (*(v80 + 8))(v50, v81);
  v92 = v51;
  v93 = v53;
  type metadata accessor for PMGroupInvitationModel(0);
  sub_21C707CB0(&qword_27CDF3D20, type metadata accessor for PMGroupInvitationModel, &unk_21CBB93B8);
  sub_21CB82684();
  swift_getKeyPath(asc_21CBB9228);
  sub_21CB82694();

  swift_getKeyPath(asc_21CBB91E0);
  swift_getKeyPath(asc_21CBB9208);
  sub_21CB81DB4();

  v54 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C9BCC18();
  sub_21C71F3FC();
  v55 = v82;
  sub_21CB84734();

  sub_21C6EA794(v39, &qword_27CDF3D38, &qword_21CBB9118);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3D28, &qword_21CBB9110);
  v57 = v86;
  v58 = v86 + *(v56 + 36);
  sub_21CB829E4();
  v59 = v85;
  sub_21C9BCED0(v73, v85);
  v60 = v78;
  v61 = swift_allocObject();
  sub_21C9BCF34(v59, v61 + v60);
  v62 = (v58 + *(type metadata accessor for PMKeyboardShortcutActionViewModifier(0) + 20));
  *v62 = sub_21C9BD054;
  v62[1] = v61;
  return (*(v83 + 32))(v57, v55, v84);
}

uint64_t sub_21C9BB2C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B70, &qword_21CBB53A0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  sub_21C9BB3E4(&v6 - v2);
  v4 = sub_21C6EADEC(&qword_27CDF2B78, &qword_27CDF2B70, &qword_21CBB53A0, MEMORY[0x277CDDF68]);
  MEMORY[0x21CF131E0](v3, v0, v4);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21C9BB3E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B98, &unk_21CBB9270);
  MEMORY[0x28223BE20](v45);
  v44 = &v35 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F90, &unk_21CBB2DE0);
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v38 = &v35 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F98, &unk_21CBB9280);
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v7 = &v35 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FA0, &unk_21CBB2DF0);
  v37 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FA8, &unk_21CBB9290);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = &v35 - v14;
  v15 = sub_21CB83604();
  MEMORY[0x28223BE20](v15 - 8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v16 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v18 = &v35 - v17;
  sub_21CB83594();
  v47 = v2;
  type metadata accessor for PMPlatformRoleButton(0);
  sub_21C707CB0(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
  sub_21CB82194();
  type metadata accessor for PMGroupInvitationDetails(0);
  swift_getKeyPath(byte_21CBB9168);
  swift_getKeyPath(byte_21CBB9190);
  sub_21CB81DB4();

  if (v48 == 1)
  {
    sub_21CB835E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FD0, &qword_21CBB92A0);
    sub_21C94B6AC();
    sub_21CB82194();
    v19 = sub_21C6EADEC(&qword_27CDF1FC8, &qword_27CDF1F98, &unk_21CBB9280, MEMORY[0x277CDD7A8]);
    v20 = v39;
    sub_21CB82784();
    (*(v36 + 8))(v7, v20);
    v48 = v20;
    v49 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v22 = v38;
    v23 = v41;
    MEMORY[0x21CF131E0](v9, v41, OpaqueTypeConformance2);
    v24 = v43;
    (*(v4 + 16))(v12, v22, v43);
    (*(v4 + 56))(v12, 0, 1, v24);
    v48 = v23;
    v49 = OpaqueTypeConformance2;
    v25 = swift_getOpaqueTypeConformance2();
    v26 = v42;
    MEMORY[0x21CF13220](v12, v24, v25);
    sub_21C6EA794(v12, &qword_27CDF1FA8, &unk_21CBB9290);
    (*(v4 + 8))(v22, v24);
    (*(v37 + 8))(v9, v23);
  }

  else
  {
    v27 = v43;
    (*(v4 + 56))(v12, 1, 1, v43);
    v28 = sub_21C6EADEC(&qword_27CDF1FC8, &qword_27CDF1F98, &unk_21CBB9280, MEMORY[0x277CDD7A8]);
    v48 = v39;
    v49 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v48 = v41;
    v49 = v29;
    v30 = swift_getOpaqueTypeConformance2();
    v26 = v42;
    MEMORY[0x21CF13220](v12, v27, v30);
    sub_21C6EA794(v12, &qword_27CDF1FA8, &unk_21CBB9290);
  }

  v31 = v44;
  v32 = *(v45 + 48);
  v33 = v40;
  (*(v16 + 16))(v44, v18, v40);
  sub_21C76BBC4(v26, &v31[v32]);
  sub_21CB83394();
  sub_21C6EA794(v26, &qword_27CDF1FA8, &unk_21CBB9290);
  return (*(v16 + 8))(v18, v33);
}

uint64_t sub_21C9BBB40@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath(asc_21CBB9228);
  swift_getKeyPath(asc_21CBB9250);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C9BBBC0(char *a1, uint64_t *a2)
{
  swift_getKeyPath(asc_21CBB9228);
  swift_getKeyPath(asc_21CBB9250);

  return sub_21CB81DC4();
}

uint64_t sub_21C9BBC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_21CB823B4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_21CB858B4();
  v4[6] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_21C9BBD28, v7, v6);
}

uint64_t sub_21C9BBD28()
{
  *(v0 + 72) = type metadata accessor for PMGroupInvitationDetails(0);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_21C9BBDD0;

  return sub_21C9BD638();
}

uint64_t sub_21C9BBDD0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_21C9BBFC4;
  }

  else
  {
    v5 = sub_21C9BBF0C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C9BBF0C()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  sub_21C95B2C8(v1);
  sub_21CB823A4();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21C9BBFC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C9BC030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PMGroupInvitationDetails(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_21CB858E4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_21C9BCED0(a1, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB858B4();
  v12 = sub_21CB858A4();
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_21C9BCF34(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_21C822ECC(0, 0, v10, a3, v14);
}

uint64_t sub_21C9BC1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_21CB823B4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_21CB858B4();
  v4[6] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_21C9BC2D8, v7, v6);
}

uint64_t sub_21C9BC2D8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  type metadata accessor for PMGroupInvitationDetails(0);
  sub_21C95B2C8(v1);
  sub_21CB823A4();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_21C9BC3C4;

  return sub_21C9BDE98();
}

uint64_t sub_21C9BC3C4()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_21C9BC56C;
  }

  else
  {
    v5 = sub_21C9BC500;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C9BC500()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C9BC56C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C9BC5D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PMGroupInvitationDetails(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = [objc_opt_self() cancelButtonTitle];
  v8 = sub_21CB855C4();
  v10 = v9;

  v11 = type metadata accessor for PMPlatformRoleButton(0);
  sub_21CB81EF4();
  sub_21C9BCED0(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  result = sub_21C9BCF34(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *a2 = v8;
  a2[1] = v10;
  v15 = (a2 + *(v11 + 24));
  *v15 = sub_21C9BD29C;
  v15[1] = v13;
  return result;
}

uint64_t sub_21C9BC730(uint64_t a1)
{
  v2 = sub_21CB82F84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = sub_21CB823B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMGroupInvitationDetails(0);
  sub_21C7B8998(a1 + *(v13 + 28), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_21CB85B04();
    v14 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_21CB823A4();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21C9BC9A4@<X0>(uint64_t a2@<X8>)
{
  sub_21CB82234();
  v3 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FD0, &qword_21CBB92A0) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
  v5 = *MEMORY[0x277CDF438];
  v6 = sub_21CB82064();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  result = swift_getKeyPath(byte_21CBB92A8);
  *v3 = result;
  return result;
}

uint64_t sub_21C9BCA5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3D28, &qword_21CBB9110);
  sub_21C9BCAD4();
  return sub_21CB82924();
}

unint64_t sub_21C9BCAD4()
{
  result = qword_27CDF3D30;
  if (!qword_27CDF3D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3D28, &qword_21CBB9110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3D38, &qword_21CBB9118);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED298, &qword_21CBA6570);
    sub_21C9BCC18();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C707CB0(&qword_27CDF3D48, type metadata accessor for PMKeyboardShortcutActionViewModifier, &unk_21CBBEF58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3D30);
  }

  return result;
}

unint64_t sub_21C9BCC18()
{
  result = qword_27CDF3D40;
  if (!qword_27CDF3D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3D38, &qword_21CBB9118);
    type metadata accessor for PMOnboardingView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B68, &qword_21CBB5398);
    sub_21C707CB0(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B70, &qword_21CBB53A0);
    sub_21C6EADEC(&qword_27CDF2B78, &qword_27CDF2B70, &qword_21CBB53A0, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3D40);
  }

  return result;
}

uint64_t sub_21C9BCDD4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(asc_21CBB91E0);
  swift_getKeyPath(asc_21CBB9208);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C9BCE54(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath(asc_21CBB91E0);
  swift_getKeyPath(asc_21CBB9208);

  v3 = v2;
  return sub_21CB81DC4();
}

uint64_t sub_21C9BCED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGroupInvitationDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9BCF34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGroupInvitationDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9BD0B4(uint64_t a1)
{
  v4 = *(type metadata accessor for PMGroupInvitationDetails(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C9BBC34(a1, v6, v7, v1 + v5);
}

uint64_t sub_21C9BD1A4(uint64_t a1)
{
  v4 = *(type metadata accessor for PMGroupInvitationDetails(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C6F35D0;

  return sub_21C9BC1E4(a1, v6, v7, v1 + v5);
}

uint64_t sub_21C9BD2A0()
{
  v1 = v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_group;
  v2 = *(v1 + *(type metadata accessor for PMSharingGroup(0) + 24));
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = *(v2 + 16);
      v8 = (v2 + 32 + 112 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= v7)
        {
          __break(1u);
          return result;
        }

        v10 = v8[3];
        v11 = v8[4];
        v12 = v8[6];
        v29 = v8[5];
        v13 = v8[1];
        v14 = v8[2];
        v24 = *v8;
        v25 = v13;
        v30 = v12;
        v27 = v10;
        v28 = v11;
        v26 = v14;
        v5 = v9 + 1;
        if ((v29 & 1) == 0)
        {
          break;
        }

        v8 += 7;
        ++v9;
        if (v3 == v5)
        {
          goto LABEL_15;
        }
      }

      sub_21C7A33F0(&v24, &v23);
      result = swift_isUniquelyReferenced_nonNull_native();
      v31 = v6;
      if ((result & 1) == 0)
      {
        result = sub_21C7B10A0(0, *(v6 + 16) + 1, 1);
        v6 = v31;
      }

      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_21C7B10A0((v15 > 1), v16 + 1, 1);
        v6 = v31;
      }

      *(v6 + 16) = v16 + 1;
      v17 = (v6 + 112 * v16);
      v18 = v24;
      v19 = v26;
      v17[3] = v25;
      v17[4] = v19;
      v17[2] = v18;
      v20 = v27;
      v21 = v28;
      v22 = v30;
      v17[7] = v29;
      v17[8] = v22;
      v17[5] = v20;
      v17[6] = v21;
    }

    while (v3 - 1 != v9);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_15:

  return v6;
}

uint64_t sub_21C9BD434(uint64_t a1)
{
  v2 = v1;
  sub_21CB25D9C(v16);
  v3 = v18;
  if (!v18)
  {
    return 0;
  }

  v4 = v17;

  sub_21C6EA794(v16, &qword_27CDECC50, &unk_21CBB52A0);
  v5 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_knownUserStatusCache;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (*(v6 + 16) && (v7 = sub_21CB10A3C(v4, v3), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + v7);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v10 = [objc_opt_self() sharedManager];

    v11 = sub_21CB85584();

    v12 = [v10 fetchContactForUserHandle_];

    v9 = v12 != 0;
    if (v12)
    {
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + v5);
    *(v2 + v5) = 0x8000000000000000;
    sub_21C8D4CD8(v12 != 0, v4, v3, isUniquelyReferenced_nonNull_native);

    *(v2 + v5) = v15;
    swift_endAccess();
  }

  return v9;
}

uint64_t sub_21C9BD638()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v1[6] = swift_task_alloc();
  v2 = sub_21CB85C44();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  sub_21CB858B4();
  v1[10] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x2822009F8](sub_21C9BD764, v4, v3);
}

uint64_t sub_21C9BD764()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  swift_getKeyPath(byte_21CBB9400);
  swift_getKeyPath(byte_21CBB9428);
  *(v0 + 144) = 1;

  sub_21CB81DC4();
  v5 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_didStartProcessingInvitation);

  v5(v6);

  v7 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_group;
  *(v0 + 104) = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_group;
  v8 = *(v2 + 16);
  *(v0 + 112) = v8;
  *(v0 + 120) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v4 + v7, v3);
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  *v9 = v0;
  v9[1] = sub_21C9BD8D4;
  v10 = *(v0 + 72);

  return sub_21C9DB508(v10);
}

uint64_t sub_21C9BD8D4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  v3 = v2[12];
  v4 = v2[11];
  if (v0)
  {
    v5 = sub_21C9BDB7C;
  }

  else
  {
    v5 = sub_21C9BDA5C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C9BDA5C()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];

  v7 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_recentlyAcceptedInvitationUpdated);
  v1(v5, v6 + v2, v3);
  (*(v4 + 56))(v5, 0, 1, v3);

  v7(v5);

  sub_21C6EA794(v5, &unk_27CDF20B0, &unk_21CBA0090);

  v8 = v0[1];

  return v8();
}

uint64_t sub_21C9BDB7C()
{
  v18 = v0;
  v1 = *(v0 + 136);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 24);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v4 = sub_21CB81C84();
    __swift_project_value_buffer(v4, qword_27CE186E0);
    v5 = v3;
    v6 = sub_21CB81C64();
    v7 = sub_21CB85AF4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      v10 = [v5 safari_privacyPreservingDescription];
      v11 = sub_21CB855C4();
      v13 = v12;

      v14 = sub_21C98E004(v11, v13, &v17);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_21C6E5000, v6, v7, "Failed to accept invitation to a shared passwords group. %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x21CF16D90](v9, -1, -1);
      MEMORY[0x21CF16D90](v8, -1, -1);
    }

    swift_getKeyPath(byte_21CBB9530);
    swift_getKeyPath(byte_21CBB9558);
    *(v0 + 145) = 1;

    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBB9578);
    swift_getKeyPath(byte_21CBB95A0);
    *(v0 + 32) = v5;

    v5;
    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBB9400);
    swift_getKeyPath(byte_21CBB9428);
    *(v0 + 146) = 0;

    sub_21CB81DC4();
    swift_willThrow();
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_21C9BDE98()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v1[6] = swift_task_alloc();
  v2 = sub_21CB85C44();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  sub_21CB858B4();
  v1[10] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x2822009F8](sub_21C9BDFC4, v4, v3);
}

uint64_t sub_21C9BDFC4()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  swift_getKeyPath(byte_21CBB9400);
  swift_getKeyPath(byte_21CBB9428);
  *(v0 + 120) = 1;

  sub_21CB81DC4();
  v5 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_didStartProcessingInvitation);

  v5(v6);

  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_group, v3);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_21C9BE124;
  v8 = *(v0 + 72);

  return sub_21C9DB88C(v8);
}

uint64_t sub_21C9BE124()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  v3 = v2[12];
  v4 = v2[11];
  if (v0)
  {
    v5 = sub_21C9BE3A0;
  }

  else
  {
    v5 = sub_21C9BE2AC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C9BE2AC()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  v5 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_recentlyAcceptedInvitationUpdated);
  (*(v2 + 56))(v3, 1, 1, v1);

  v5(v3);

  sub_21C6EA794(v3, &unk_27CDF20B0, &unk_21CBA0090);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21C9BE3A0()
{
  v18 = v0;
  v1 = *(v0 + 112);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 24);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v4 = sub_21CB81C84();
    __swift_project_value_buffer(v4, qword_27CE186E0);
    v5 = v3;
    v6 = sub_21CB81C64();
    v7 = sub_21CB85AF4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      v10 = [v5 safari_privacyPreservingDescription];
      v11 = sub_21CB855C4();
      v13 = v12;

      v14 = sub_21C98E004(v11, v13, &v17);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_21C6E5000, v6, v7, "Failed to decline invitation to a shared passwords group. %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x21CF16D90](v9, -1, -1);
      MEMORY[0x21CF16D90](v8, -1, -1);
    }

    swift_getKeyPath(byte_21CBB9450);
    swift_getKeyPath(byte_21CBB9478);
    *(v0 + 121) = 1;

    sub_21CB81DC4();
    swift_getKeyPath(aX_49);
    swift_getKeyPath(aX_50);
    *(v0 + 32) = v5;

    v5;
    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBB9400);
    swift_getKeyPath(byte_21CBB9428);
    *(v0 + 122) = 0;

    sub_21CB81DC4();
    swift_willThrow();
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_21C9BE6F8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_21C979EE8(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_group);
  v1 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__failedToAcceptAlertPresented;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__failedToAcceptError;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1E98, &unk_21CBB2A80);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__failedToDeclineAlertPresented, v2);
  v6(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__failedToDeclineError, v5);
  v3(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__isProcessingInvitation, v2);
  v3(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__isDeclineAlertPresented, v2);

  return v0;
}

uint64_t sub_21C9BE890()
{
  sub_21C9BE6F8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PMGroupInvitationModel(uint64_t a1)
{
  result = qword_27CDF3DA8;
  if (!qword_27CDF3DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9BE93C(uint64_t a1)
{
  type metadata accessor for PMSharingGroup(319);
  if (v1 <= 0x3F)
  {
    sub_21C6E7ED8();
    if (v2 <= 0x3F)
    {
      sub_21C9BEA70(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21C9BEA70(uint64_t a1)
{
  if (!qword_27CDF2128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1EC0, &qword_21CBB2AB0);
    v1 = sub_21CB81DD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF2128);
    }
  }
}

uint64_t type metadata accessor for PMGroupInvitationOnboardingView(uint64_t a1)
{
  result = qword_27CDF3DB8;
  if (!qword_27CDF3DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9BEB48(uint64_t a1)
{
  type metadata accessor for PMSharingGroup(319);
  if (v1 <= 0x3F)
  {
    sub_21C7226D8();
    if (v2 <= 0x3F)
    {
      sub_21C7210DC();
      if (v3 <= 0x3F)
      {
        sub_21C9BEBFC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C9BEBFC(uint64_t a1)
{
  if (!qword_27CDF3DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1EE8, &qword_21CBB95F0);
    v1 = sub_21CB84D84();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF3DC8);
    }
  }
}

uint64_t sub_21C9BEC7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for PMGroupInvitationOnboardingView(0);
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for PMOnboardingView(0);
  MEMORY[0x28223BE20](v42);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3DD0, &qword_21CBB9648);
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3DD8, &qword_21CBB9650);
  MEMORY[0x28223BE20](v43);
  v48 = &v42 - v16;
  sub_21CA88FA4(v54);
  sub_21CB81014();
  v17 = sub_21CB81004();
  v19 = v18;
  (*(v8 + 8))(v10, v7);
  sub_21C9C0038(v2, v6);
  v20 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v45 = v5;
  v21 = swift_allocObject();
  sub_21C9C009C(v6, v21 + v20);
  v22 = v54[2];
  *(v12 + 1) = v54[1];
  *(v12 + 2) = v22;
  *(v12 + 24) = v55;
  *v12 = v54[0];
  *(v12 + 7) = v17;
  *(v12 + 8) = v19;
  *(v12 + 9) = sub_21C9C0100;
  *(v12 + 10) = v21;
  v12[88] = 0;
  *(v12 + 6) = 0u;
  *(v12 + 7) = 0u;
  v12[128] = 0;
  v23 = *(v42 + 28);
  *&v12[v23] = swift_getKeyPath(aX_51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v50 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3DE0, &qword_21CBB9688);
  sub_21C9C0620(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1FA8, &unk_21CBB9290);
  v25 = sub_21C9C0168();
  v52 = v24;
  v53 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v44;
  sub_21CB84894();
  sub_21C85BC4C(v12);
  v27 = v2 + *(v26 + 24);
  v28 = *v27;
  v29 = *(v27 + 8);
  LOBYTE(v52) = v28;
  v53 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  v30 = 0;
  if (v51 == 1)
  {
    v31 = v2 + *(v26 + 28);
    v32 = *v31;
    v33 = *(v31 + 8);
    LOBYTE(v52) = v32;
    v53 = v33;
    sub_21CB84D54();
    v30 = v51;
  }

  sub_21C9C0038(v2, v6);
  v34 = swift_allocObject();
  sub_21C9C009C(v6, v34 + v20);
  v35 = v48;
  (*(v46 + 32))(v48, v15, v47);
  v36 = v35 + *(v43 + 36);
  *v36 = v30;
  *(v36 + 8) = sub_21C9C02A0;
  *(v36 + 16) = v34;
  sub_21C9C0038(v2, v6);
  v37 = swift_allocObject();
  sub_21C9C009C(v6, v37 + v20);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3DF0, &qword_21CBB96A0);
  v39 = v49;
  v40 = (v49 + *(v38 + 36));
  sub_21CB824F4();
  sub_21CB858C4();
  *v40 = &unk_21CBB9698;
  v40[1] = v37;
  return sub_21C771BE8(v35, v39);
}

uint64_t sub_21C9BF228(uint64_t a1)
{
  type metadata accessor for PMGroupInvitationOnboardingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21C9BF29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F90, &unk_21CBB2DE0);
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v35 - v4;
  v5 = sub_21CB83604();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F98, &unk_21CBB9280);
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FA0, &unk_21CBB2DF0);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = &v35 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FA8, &unk_21CBB9290);
  MEMORY[0x28223BE20](v41);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for PMGroupInvitationOnboardingView(0);
  v16 = (a1 + *(v15 + 24));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v45) = v17;
  v46 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  if (v44 == 1 && (v19 = (a1 + *(v15 + 28)), v20 = *v19, v21 = *(v19 + 1), LOBYTE(v45) = v20, v46 = v21, sub_21CB84D54(), (v44 & 1) == 0))
  {
    sub_21CB835E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FD0, &qword_21CBB92A0);
    sub_21C94B6AC();
    sub_21CB82194();
    v26 = sub_21C6EADEC(&qword_27CDF1FC8, &qword_27CDF1F98, &unk_21CBB9280, MEMORY[0x277CDD7A8]);
    v27 = v37;
    sub_21CB82784();
    (*(v36 + 8))(v8, v6);
    v45 = v6;
    v46 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v29 = v39;
    v30 = v40;
    MEMORY[0x21CF131E0](v27, v40, OpaqueTypeConformance2);
    v31 = v42;
    (*(v3 + 16))(v11, v29, v42);
    (*(v3 + 56))(v11, 0, 1, v31);
    v45 = v30;
    v46 = OpaqueTypeConformance2;
    v32 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v11, v31, v32);
    sub_21C771C58(v11);
    (*(v3 + 8))(v29, v31);
    (*(v38 + 8))(v27, v30);
  }

  else
  {
    v22 = v42;
    (*(v3 + 56))(v11, 1, 1, v42);
    v23 = sub_21C6EADEC(&qword_27CDF1FC8, &qword_27CDF1F98, &unk_21CBB9280, MEMORY[0x277CDD7A8]);
    v45 = v6;
    v46 = v23;
    v24 = swift_getOpaqueTypeConformance2();
    v45 = v40;
    v46 = v24;
    v25 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v11, v22, v25);
    sub_21C771C58(v11);
  }

  v33 = sub_21C9C0168();
  MEMORY[0x21CF131E0](v14, v41, v33);
  return sub_21C771C58(v14);
}

uint64_t sub_21C9BF844@<X0>(uint64_t a2@<X8>)
{
  sub_21CB82234();
  v3 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FD0, &qword_21CBB92A0) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
  v5 = *MEMORY[0x277CDF438];
  v6 = sub_21CB82064();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  result = swift_getKeyPath(asc_21CBB96B0);
  *v3 = result;
  return result;
}

void sub_21C9BF8FC(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v2 = *(a2 + *(type metadata accessor for PMGroupInvitationOnboardingView(0) + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3DF8, &qword_21CBB96A8);
    sub_21CB84D54();
    v2();
  }
}

uint64_t sub_21C9BF994(uint64_t a1)
{
  v1[20] = a1;
  sub_21CB858B4();
  v1[21] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_21C9BFA2C, v3, v2);
}

uint64_t sub_21C9BFA2C()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21C9BFB54;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2150, &unk_21CBB3640);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21C952AD0;
  v0[13] = &block_descriptor_22;
  v0[14] = v2;
  [v1 fetchListsOfSharingDevicesSeparatedByAvailability_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C9BFB54()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_21C9BFD84;
  }

  else
  {
    v5 = sub_21C9BFC84;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C9BFC84()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 144);
  v3 = type metadata accessor for PMGroupInvitationOnboardingView(0);
  *(v0 + 80) = *(v1 + *(v3 + 32));
  *(v0 + 152) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3DF8, &qword_21CBB96A8);
  sub_21CB84D64();
  v4 = (*(v0 + 160) + *(v3 + 28));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 80) = v5;
  *(v0 + 88) = v6;
  *(v0 + 144) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21C9BFD84(uint64_t a1)
{
  v24 = v1;
  v2 = *(v1 + 192);
  swift_willThrow();
  *(v1 + 80) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = *(v1 + 192);

    v6 = *(v1 + 144);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v7 = sub_21CB81C84();
    __swift_project_value_buffer(v7, qword_27CE186E0);
    v8 = v6;
    v9 = sub_21CB81C64();
    v10 = sub_21CB85AF4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136315138;
      v13 = [v8 safari_privacyPreservingDescription];
      v14 = sub_21CB855C4();
      v16 = v15;

      v17 = sub_21C98E004(v14, v16, &v23);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_21C6E5000, v9, v10, "Failed to get device list with error: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x21CF16D90](v12, -1, -1);
      MEMORY[0x21CF16D90](v11, -1, -1);
    }

    else
    {
    }

    v18 = *(v1 + 160);
    v19 = (v18 + *(type metadata accessor for PMGroupInvitationOnboardingView(0) + 28));
    v20 = *v19;
    v21 = *(v19 + 1);
    *(v1 + 80) = v20;
    *(v1 + 88) = v21;
    *(v1 + 144) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D64();
    v22 = *(v1 + 8);

    return v22();
  }

  return result;
}

uint64_t sub_21C9C0038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGroupInvitationOnboardingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9C009C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGroupInvitationOnboardingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9C0100()
{
  v1 = *(type metadata accessor for PMGroupInvitationOnboardingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C9BF228(v2);
}

unint64_t sub_21C9C0168()
{
  result = qword_27CDF3DE8;
  if (!qword_27CDF3DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1FA8, &unk_21CBB9290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1FA0, &unk_21CBB2DF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1F98, &unk_21CBB9280);
    sub_21C6EADEC(&qword_27CDF1FC8, &qword_27CDF1F98, &unk_21CBB9280, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3DE8);
  }

  return result;
}

void sub_21C9C02A0(_BYTE *a1)
{
  v3 = *(type metadata accessor for PMGroupInvitationOnboardingView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_21C9BF8FC(a1, v4);
}

uint64_t sub_21C9C0310()
{
  v2 = *(type metadata accessor for PMGroupInvitationOnboardingView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21C702EFC;

  return sub_21C9BF994(v0 + v3);
}

unint64_t sub_21C9C03DC()
{
  result = qword_27CDF3E00;
  if (!qword_27CDF3E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3DF0, &qword_21CBB96A0);
    sub_21C9C0498();
    sub_21C9C0620(&qword_27CDEA598, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3E00);
  }

  return result;
}

unint64_t sub_21C9C0498()
{
  result = qword_27CDF3E08;
  if (!qword_27CDF3E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3DD8, &qword_21CBB9650);
    type metadata accessor for PMOnboardingView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3DE0, &qword_21CBB9688);
    sub_21C9C0620(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1FA8, &unk_21CBB9290);
    sub_21C9C0168();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED9D0, &qword_27CDED9D8, &unk_21CBB96E0, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3E08);
  }

  return result;
}

uint64_t sub_21C9C0620(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PMGroupInvitationSheetContent(uint64_t a1)
{
  result = qword_27CDF3E10;
  if (!qword_27CDF3E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9C06DC(uint64_t a1)
{
  sub_21CB85C44();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PMGroupInvitationModel(319);
    if (v2 <= 0x3F)
    {
      sub_21C70640C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21C9C0794@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v41 = type metadata accessor for PMGroupInvitationDetails(0);
  MEMORY[0x28223BE20](v41);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E20, &unk_21CBB9760);
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for PMSharingGroup(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v40 = &v39 - v15;
  type metadata accessor for PMGroupInvitationSheetContent(0);
  swift_getKeyPath(byte_21CBB9770);
  swift_getKeyPath(byte_21CBB9798);
  sub_21CB81DB4();

  v47 = v1;
  sub_21C968E80(sub_21C9C0E68, v48, v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21C9C0EF8(v9);
    v16 = 1;
    v17 = v46;
    v18 = v44;
  }

  else
  {
    v19 = v40;
    sub_21C9C0F60(v9, v40, type metadata accessor for PMSharingGroup);
    sub_21C94B4A8(v19, v13);
    v20 = v41;
    v21 = &v3[*(v41 + 20)];
    type metadata accessor for PMPasswordManagerState(0);
    sub_21C7064E8(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);

    *v21 = sub_21CB82B84();
    v21[1] = v22;
    v23 = *(v20 + 28);
    *&v3[v23] = swift_getKeyPath(byte_21CBB97B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
    swift_storeEnumTagMultiPayload();
    sub_21C94B4A8(v13, v3);
    v24 = &v3[*(v20 + 24)];
    type metadata accessor for PMGroupInvitationModel(0);
    sub_21C7064E8(&qword_27CDF3D20, type metadata accessor for PMGroupInvitationModel, &unk_21CBB93B8);
    v25 = sub_21CB82674();
    v27 = v26;
    sub_21C979EE8(v13);
    *v24 = v25;
    v24[1] = v27;
    sub_21CB85214();
    sub_21CB82AC4();
    sub_21C979EE8(v19);
    v28 = v43;
    sub_21C9C0F60(v3, v43, type metadata accessor for PMGroupInvitationDetails);
    v29 = v44;
    v30 = (v28 + *(v44 + 36));
    v31 = v53;
    v30[4] = v52;
    v30[5] = v31;
    v30[6] = v54;
    v32 = v49;
    *v30 = v48;
    v30[1] = v32;
    v33 = v51;
    v30[2] = v50;
    v30[3] = v33;
    v34 = v28;
    v35 = v42;
    sub_21C9C0FC8(v34, v42);
    v36 = v35;
    v37 = v46;
    sub_21C9C0FC8(v36, v46);
    v16 = 0;
    v17 = v37;
    v18 = v29;
  }

  return (*(v45 + 56))(v17, v16, 1, v18);
}

uint64_t sub_21C9C0D0C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBB9770);
  swift_getKeyPath(byte_21CBB9798);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C9C0D8C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBB9770);
  swift_getKeyPath(byte_21CBB9798);

  return sub_21CB81DC4();
}

uint64_t sub_21C9C0E68(uint64_t a1)
{
  sub_21CB85C44();
  sub_21C7064E8(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
  return sub_21CB85574() & 1;
}

uint64_t sub_21C9C0EF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C9C0F60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9C0FC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E20, &unk_21CBB9760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9C1098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_21C7064E8(a4, a5, a6);
  return sub_21CB85574() & 1;
}

unint64_t sub_21C9C1124()
{
  result = qword_27CDF3E28;
  if (!qword_27CDF3E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E30, &unk_21CBB97F0);
    sub_21C9C11A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3E28);
  }

  return result;
}

unint64_t sub_21C9C11A8()
{
  result = qword_27CDF3E38;
  if (!qword_27CDF3E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E20, &unk_21CBB9760);
    sub_21C7064E8(&qword_27CDF3E40, type metadata accessor for PMGroupInvitationDetails, &unk_21CBB90BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3E38);
  }

  return result;
}

uint64_t sub_21C9C12A8@<X0>(uint64_t a1@<X8>)
{
  v110 = a1;
  v2 = sub_21CB81024();
  v108 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v107 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB829D4();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x28223BE20](v4);
  v104 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB058, &unk_21CBB50B0);
  v7 = *(v6 - 8);
  v118 = v6;
  v119 = v7;
  MEMORY[0x28223BE20](v6);
  v115 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v117 = &v85 - v10;
  MEMORY[0x28223BE20](v11);
  v116 = &v85 - v12;
  v13 = type metadata accessor for PMSharingGroup(0);
  v114 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PMGroupInvitationsList(0);
  v91 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v111 = v17;
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E68, &qword_21CBB9888);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v85 - v20;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E70, &qword_21CBB9890);
  MEMORY[0x28223BE20](v88);
  v92 = &v85 - v22;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E78, &qword_21CBB9898);
  MEMORY[0x28223BE20](v90);
  v24 = &v85 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E80, &qword_21CBB98A0);
  MEMORY[0x28223BE20](v25);
  v93 = &v85 - v26;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E88, &qword_21CBB98A8);
  v96 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v95 = &v85 - v27;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E90, &qword_21CBB98B0);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v100 = &v85 - v28;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E98, &qword_21CBB98B8);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v85 - v29;
  v89 = v21;
  sub_21C9C20B8(v1, v21);
  v112 = v1;
  v30 = *v1;
  swift_getKeyPath(asc_21CBB98C0);
  v122 = v30;
  sub_21C707CF8(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810D4();

  v31 = *(v30 + 24);
  v32 = *(v31 + 16);
  v33 = MEMORY[0x277D84F90];
  v109 = v2;
  v94 = v25;
  if (v32)
  {
    v86 = v24;
    v87 = v18;
    v122 = MEMORY[0x277D84F90];

    sub_21C7B1188(0, v32, 0);
    v34 = v122;
    v35 = (*(v119 + 80) + 32) & ~*(v119 + 80);
    v85 = v31;
    v36 = v31 + v35;
    v113 = *(v119 + 72);
    v37 = v15;
    v38 = v116;
    do
    {
      v119 = v32;
      sub_21C6EDBAC(v36, v38, &qword_27CDEB058, &unk_21CBB50B0);
      v39 = v117;
      sub_21C6EDBAC(v38, v117, &qword_27CDEB058, &unk_21CBB50B0);
      v40 = *(v118 + 48);
      v41 = *(v39 + v40);
      v42 = v39;
      v43 = v115;
      sub_21C9C4CA8(v42, v115, type metadata accessor for PMSharingGroup);
      *(v43 + v40) = v41;
      sub_21C9C4C40(v43, v37, type metadata accessor for PMSharingGroup);
      sub_21C6EA794(v43, &qword_27CDEB058, &unk_21CBB50B0);
      sub_21C6EA794(v38, &qword_27CDEB058, &unk_21CBB50B0);
      v122 = v34;
      v45 = *(v34 + 16);
      v44 = *(v34 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_21C7B1188((v44 > 1), v45 + 1, 1);
        v34 = v122;
      }

      *(v34 + 16) = v45 + 1;
      sub_21C9C4CA8(v37, v34 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v45, type metadata accessor for PMSharingGroup);
      v36 += v113;
      v32 = v119 - 1;
    }

    while (v119 != 1);
    v33 = v34;

    v46 = v87;
    v47 = v86;
  }

  else
  {
    v46 = v18;
    v47 = v24;
  }

  v48 = v112;
  sub_21C9C4C40(v112, v46, type metadata accessor for PMGroupInvitationsList);
  v49 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v50 = swift_allocObject();
  sub_21C9C4CA8(v46, v50 + v49, type metadata accessor for PMGroupInvitationsList);
  v51 = v92;
  sub_21C716934(v89, v92, &qword_27CDF3E68, &qword_21CBB9888);
  v52 = (v51 + *(v88 + 36));
  *v52 = v33;
  v52[1] = sub_21C9C4D10;
  v52[2] = v50;
  sub_21C9C4C40(v48, v46, type metadata accessor for PMGroupInvitationsList);
  v53 = swift_allocObject();
  sub_21C9C4CA8(v46, v53 + v49, type metadata accessor for PMGroupInvitationsList);
  sub_21C716934(v51, v47, &qword_27CDF3E70, &qword_21CBB9890);
  v54 = (v47 + *(v90 + 36));
  *v54 = sub_21C9C4D80;
  v54[1] = v53;
  v54[2] = 0;
  v54[3] = 0;
  v55 = *(v48 + 8);
  if (v55)
  {
    v56 = v47;
    swift_getKeyPath(byte_21CBB98F0);
    swift_getKeyPath(byte_21CBB9918);
    v57 = v94;
    v58 = v93;
    v59 = &v93[*(v94 + 36)];
    v60 = v55;
    sub_21CB81DB4();

    sub_21C9C4C40(v112, v46, type metadata accessor for PMGroupInvitationsList);
    v61 = swift_allocObject();
    sub_21C9C4CA8(v46, v61 + v49, type metadata accessor for PMGroupInvitationsList);
    v62 = &v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED990, &qword_21CBA7E90) + 36)];
    *v62 = sub_21C9C4D80;
    v62[1] = v61;
    sub_21C716934(v56, v58, &qword_27CDF3E78, &qword_21CBB9898);
    v63 = v104;
    sub_21CB85294();
    v64 = sub_21C9C4DDC();
    v65 = sub_21C707CF8(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    v66 = v95;
    v67 = v57;
    v68 = v106;
    sub_21CB849C4();
    (*(v105 + 8))(v63, v68);
    v69 = sub_21C6EA794(v58, &qword_27CDF3E80, &qword_21CBB98A0);
    MEMORY[0x28223BE20](v69);
    *(&v85 - 2) = v112;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3F00, &unk_21CBB9970);
    v122 = v67;
    v123 = v68;
    v124 = v64;
    v125 = v65;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1870, &qword_21CBB21E0);
    v73 = sub_21C9C52B8();
    v122 = v72;
    v123 = v73;
    v74 = swift_getOpaqueTypeConformance2();
    v75 = v100;
    v76 = v101;
    sub_21CB84894();
    (*(v96 + 8))(v66, v76);
    v77 = v107;
    sub_21CB81014();
    v78 = sub_21CB81004();
    v80 = v79;
    (*(v108 + 8))(v77, v109);
    v120 = v78;
    v121 = v80;
    v122 = v76;
    v123 = v70;
    v124 = OpaqueTypeConformance2;
    v125 = v74;
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    v81 = v97;
    v82 = v103;
    sub_21CB842F4();

    (*(v102 + 8))(v75, v82);
    v83 = v110;
    (*(v98 + 32))(v110, v81, v99);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3F10, &unk_21CBB9980);
    *(v83 + *(result + 36)) = 1;
  }

  else
  {
    type metadata accessor for PMPasswordManagerState(0);
    sub_21C707CF8(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C9C20B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_21CB830D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3ED8, &qword_21CBB9950);
  MEMORY[0x28223BE20](v26);
  v8 = &v23 - v7;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3F18, &qword_21CBB99B8);
  MEMORY[0x28223BE20](v24);
  v25 = &v23 - v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0228, &qword_21CBAE660);
  v10 = *(v23 - 8);
  *&v11 = MEMORY[0x28223BE20](v23).n128_u64[0];
  v13 = &v23 - v12;
  v14 = *a1;
  swift_getKeyPath(asc_21CBB98C0, v11);
  v28 = v14;
  sub_21C707CF8(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810D4();

  if (*(*(v14 + 24) + 16))
  {
    MEMORY[0x28223BE20](v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3F20, &qword_21CBB99C0);
    sub_21C9C538C();
    sub_21CB83EF4();
    sub_21CB830B4();
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3EE8, &qword_21CBB9958) + 36);
    (*(v4 + 16))(&v8[v16], v6, v3);
    v17 = *(v4 + 56);
    v17(&v8[v16], 0, 1, v3);
    KeyPath = swift_getKeyPath(aP_70);
    v19 = &v8[*(v26 + 36)];
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
    (*(v4 + 32))(v19 + v20, v6, v3);
    v17(v19 + v20, 0, 1, v3);
    *v19 = KeyPath;
    sub_21C6EDBAC(v8, v25, &qword_27CDF3ED8, &qword_21CBB9950);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF0220, &qword_27CDF0228, &qword_21CBAE660, MEMORY[0x277CDE158]);
    sub_21C9C5114();
    sub_21CB83494();
    return sub_21C6EA794(v8, &qword_27CDF3ED8, &qword_21CBB9950);
  }

  else
  {
    sub_21CB83774();
    v22 = v23;
    (*(v10 + 16))(v25, v13, v23);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF0220, &qword_27CDF0228, &qword_21CBAE660, MEMORY[0x277CDE158]);
    sub_21C9C5114();
    sub_21CB83494();
    return (*(v10 + 8))(v13, v22);
  }
}

uint64_t sub_21C9C262C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C9C2760(uint64_t *a1)
{
  v2 = type metadata accessor for PMGroupInvitationsList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v6 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_getKeyPath(asc_21CBB98C0, v5);
  v13 = v7;
  sub_21C707CF8(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810D4();

  v13 = *(v7 + 24);
  swift_getKeyPath(asc_21CBB9A00);
  sub_21C9C4C40(a1, v6, type metadata accessor for PMGroupInvitationsList);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_21C9C4CA8(v6, v9 + v8, type metadata accessor for PMGroupInvitationsList);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21C9C54D0;
  *(v10 + 24) = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3F48, &qword_21CBB9A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3F38, &qword_21CBB99C8);
  sub_21C6EADEC(&qword_27CDF3F50, &qword_27CDF3F48, &qword_21CBB9A20, MEMORY[0x277D83980]);
  sub_21C707CF8(&qword_27CDF3F58, type metadata accessor for PMSharingGroup, &unk_21CBCAC44);
  sub_21C9C5410();
  return sub_21CB84FD4();
}

uint64_t sub_21C9C2A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PMGroupInvitationView(0);
  sub_21C707CF8(&qword_27CDF3F40, type metadata accessor for PMGroupInvitationView, &unk_21CBBA4B8);
  return sub_21CB85054();
}

uint64_t sub_21C9C2AA0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for PMSharingGroup(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C9C4C40(a1, v7, type metadata accessor for PMSharingGroup);
  v26 = sub_21C9C2E1C(a1);
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for PMGroupInvitationView(0);
  v25 = v12[6];
  *(a3 + v25) = 0;
  *(a3 + v12[7]) = 0x403E000000000000;
  v13 = (a3 + v12[8]);
  KeyPath = swift_getKeyPath(asc_21CBB9A28);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C328(KeyPath, *&v34[0]);

  type metadata accessor for PMGroupMemberImageCache();
  sub_21C707CF8(&qword_27CDEECA8, type metadata accessor for PMGroupMemberImageCache, &unk_21CBBBA3C);
  v15 = sub_21CB82674();
  v17 = v16;

  *v13 = v15;
  v13[1] = v17;
  v18 = a3 + v12[10];
  *v18 = swift_getKeyPath(byte_21CBB9A48);
  *(v18 + 8) = 0;
  *(a3 + v12[11]) = 0;
  sub_21C9C4C40(v7, a3, type metadata accessor for PMSharingGroup);
  v19 = (a3 + v12[9]);
  type metadata accessor for PMGroupInvitationModel(0);
  sub_21C707CF8(&qword_27CDF3D20, type metadata accessor for PMGroupInvitationModel, &unk_21CBB93B8);

  *v19 = sub_21CB82674();
  v19[1] = v20;
  v21 = a3 + v12[5];
  *v21 = v26;
  *(v21 + 8) = v9;
  *(v21 + 16) = v11 & 1;
  sub_21CB25D9C(v27);
  if (!v29)
  {
    return sub_21C9C55C0(v7, type metadata accessor for PMSharingGroup);
  }

  v34[0] = v27[0];
  v34[1] = v27[1];
  v35 = v28;
  v36 = v29;
  v37 = v30;
  v38 = v31;
  v39 = v32;
  v40 = v33;
  type metadata accessor for PMGroupMemberImageModel(0);
  swift_allocObject();

  v23 = sub_21CA42988(v22, v34, 30.0);
  sub_21C6EA794(v27, &qword_27CDECC50, &unk_21CBB52A0);

  result = sub_21C9C55C0(v7, type metadata accessor for PMSharingGroup);
  *(a3 + v25) = v23;
  return result;
}

uint64_t sub_21C9C2E1C(uint64_t a1)
{
  v33 = a1;
  v3 = sub_21CB85C44();
  v31 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = v5;
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMGroupInvitationsList(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for PMGroupInvitationsList;
  sub_21C9C4C40(v1, v10, type metadata accessor for PMGroupInvitationsList);
  v32 = *(v4 + 16);
  v32(v6, a1, v3);
  sub_21CB858B4();
  v11 = sub_21CB858A4();
  v12 = *(v8 + 80);
  v13 = *(v4 + 80);
  v14 = (v12 + 32) & ~v12;
  v15 = (v9 + v13 + v14) & ~v13;
  v27 = v14;
  v28 = v12 | v13;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v11;
  *(v16 + 24) = v17;
  v18 = v30;
  sub_21C9C4CA8(v10, v16 + v14, v30);
  v19 = *(v4 + 32);
  v26 = v4 + 32;
  v20 = v31;
  v19(v16 + v15, v6, v31);
  v21 = v19;
  sub_21C9C4C40(v34, v10, v18);
  v22 = v20;
  v32(v6, v33, v20);
  v23 = sub_21CB858A4();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = MEMORY[0x277D85700];
  sub_21C9C4CA8(v10, v24 + v27, v18);
  v21(v24 + v15, v6, v22);
  sub_21CB84F64();
  return v35;
}

uint64_t sub_21C9C3118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMDismissAction(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_21CB82F84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(*a1 + 16))
  {
    v13 = v9;
    v14 = a2 + *(type metadata accessor for PMGroupInvitationsList(0) + 32);
    v15 = *v14;
    if (*(v14 + 8) == 1)
    {
      v23 = *v14;
    }

    else
    {

      sub_21CB85B04();
      v16 = sub_21CB83C94();
      sub_21CB81C14();

      sub_21CB82F74();
      swift_getAtKeyPath();
      sub_21C7025C4(v15, 0);
      (*(v8 + 8))(v11, v13);
      LOBYTE(v15) = v23;
    }

    if (v15 == 1)
    {
    }

    else
    {
      v17 = sub_21CB86344();

      if ((v17 & 1) == 0)
      {
        sub_21C95B584(v6);
        v18 = &v6[*(v4 + 20)];
        v19 = *v18;
        if (*v18)
        {
          v20 = *(v18 + 1);

          v19(v21);
          sub_21C71B710(v19, v20);
        }

        else
        {
          sub_21CB823A4();
        }

        sub_21C9C55C0(v6, type metadata accessor for PMDismissAction);
      }
    }
  }

  return sub_21C9C3408();
}

uint64_t sub_21C9C3408()
{
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB058, &unk_21CBB50B0);
  v87 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = v80 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v100 = v80 - v3;
  MEMORY[0x28223BE20](v4);
  v99 = v80 - v5;
  v6 = type metadata accessor for PMSharingGroup(0);
  v97 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v96 = v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v10 - 8);
  v91 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v93 = v80 - v13;
  MEMORY[0x28223BE20](v14);
  v86 = v80 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v80 - v17;
  v19 = sub_21CB85C44();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = MEMORY[0x28223BE20](v23).n128_u64[0];
  v26 = v80 - v25;
  v94 = v0;
  v27 = *v0;
  swift_getKeyPath(byte_21CBB9990, v24);
  v28 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel___observationRegistrar;
  v103 = v27;
  v29 = sub_21C707CF8(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810D4();

  v30 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForInvitationToPresent;
  swift_beginAccess();
  sub_21C6EDBAC(v27 + v30, v18, &unk_27CDF20B0, &unk_21CBA0090);
  v89 = *(v20 + 48);
  v90 = (v20 + 48);
  v31 = v89(v18, 1, v19);
  v92 = v22;
  v85 = v29;
  if (v31 == 1)
  {
    sub_21C6EA794(v18, &unk_27CDF20B0, &unk_21CBA0090);
    v33 = v93;
    v32 = v94;
  }

  else
  {
    v34 = *(v20 + 32);
    v81 = v26;
    v34(v26, v18, v19);
    swift_getKeyPath(asc_21CBB98C0);
    v102 = v27;
    sub_21CB810D4();

    v82 = v27;
    v35 = *(v27 + 24);
    v36 = *(v35 + 16);
    v37 = MEMORY[0x277D84F90];
    if (v36)
    {
      v80[1] = v28;
      v88 = v20;
      v83 = v19;
      v102 = MEMORY[0x277D84F90];

      sub_21C7B1188(0, v36, 0);
      v37 = v102;
      v38 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v80[0] = v35;
      v39 = v35 + v38;
      v95 = *(v87 + 72);
      v40 = v96;
      v41 = v99;
      do
      {
        v96 = v37;
        sub_21C6EDBAC(v39, v41, &qword_27CDEB058, &unk_21CBB50B0);
        v42 = v100;
        sub_21C6EDBAC(v41, v100, &qword_27CDEB058, &unk_21CBB50B0);
        v43 = *(v101 + 48);
        v44 = *(v42 + v43);
        v45 = v42;
        v46 = v98;
        sub_21C9C4CA8(v45, v98, type metadata accessor for PMSharingGroup);
        *(v46 + v43) = v44;
        sub_21C9C4C40(v46, v40, type metadata accessor for PMSharingGroup);
        sub_21C6EA794(v46, &qword_27CDEB058, &unk_21CBB50B0);
        v37 = v96;
        sub_21C6EA794(v41, &qword_27CDEB058, &unk_21CBB50B0);
        v102 = v37;
        v48 = *(v37 + 16);
        v47 = *(v37 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_21C7B1188((v47 > 1), v48 + 1, 1);
          v37 = v102;
        }

        *(v37 + 16) = v48 + 1;
        sub_21C9C4CA8(v40, v37 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v48, type metadata accessor for PMSharingGroup);
        v39 += v95;
        --v36;
      }

      while (v36);

      v33 = v93;
      v32 = v94;
      v19 = v83;
      v20 = v88;
    }

    else
    {
      v33 = v93;
      v32 = v94;
    }

    v49 = v81;
    v50 = sub_21C7A120C(v81, v37);

    if (v50)
    {
      v51 = *(v20 + 16);
      v52 = v20;
      v53 = v86;
      v51(v86, v49, v19);
      v54 = *(v52 + 56);
      v54(v53, 0, 1, v19);
      type metadata accessor for PMGroupInvitationsList(0);
      sub_21C6EDBAC(v53, v33, &unk_27CDF20B0, &unk_21CBA0090);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);
      sub_21CB84D64();
      sub_21C6EA794(v53, &unk_27CDF20B0, &unk_21CBA0090);
      v54(v53, 1, 1, v19);
      v55 = v53;
      v20 = v52;
      v27 = v82;
      sub_21C9C5C48(v55);
      (*(v52 + 8))(v49, v19);
    }

    else
    {
      (*(v20 + 8))(v49, v19);
      v27 = v82;
    }
  }

  v56 = v32[1];
  v57 = v91;
  if (v56)
  {
    swift_getKeyPath(byte_21CBB98F0);
    swift_getKeyPath(byte_21CBB9918);
    v58 = v56;
    sub_21CB81DB4();

    if (v89(v57, 1, v19) == 1)
    {
      return sub_21C6EA794(v57, &unk_27CDF20B0, &unk_21CBA0090);
    }

    else
    {
      v90 = v58;
      v88 = v20;
      v60 = v92;
      (*(v20 + 32))(v92, v57, v19);
      swift_getKeyPath(asc_21CBB98C0);
      v102 = v27;
      sub_21CB810D4();

      v61 = *(v27 + 24);
      v62 = *(v61 + 2);
      v63 = MEMORY[0x277D84F90];
      if (v62)
      {
        v83 = v19;
        v102 = MEMORY[0x277D84F90];

        sub_21C7B1188(0, v62, 0);
        v63 = v102;
        v64 = *(v87 + 80);
        v91 = v61;
        v65 = &v61[(v64 + 32) & ~v64];
        v95 = *(v87 + 72);
        v66 = v84;
        v67 = v99;
        do
        {
          v96 = v63;
          sub_21C6EDBAC(v65, v67, &qword_27CDEB058, &unk_21CBB50B0);
          v68 = v100;
          sub_21C6EDBAC(v67, v100, &qword_27CDEB058, &unk_21CBB50B0);
          v69 = *(v101 + 48);
          v70 = *(v68 + v69);
          v71 = v68;
          v72 = v98;
          sub_21C9C4CA8(v71, v98, type metadata accessor for PMSharingGroup);
          *(v72 + v69) = v70;
          sub_21C9C4C40(v72, v66, type metadata accessor for PMSharingGroup);
          sub_21C6EA794(v72, &qword_27CDEB058, &unk_21CBB50B0);
          v63 = v96;
          sub_21C6EA794(v67, &qword_27CDEB058, &unk_21CBB50B0);
          v102 = v63;
          v74 = *(v63 + 16);
          v73 = *(v63 + 24);
          if (v74 >= v73 >> 1)
          {
            sub_21C7B1188((v73 > 1), v74 + 1, 1);
            v63 = v102;
          }

          *(v63 + 16) = v74 + 1;
          sub_21C9C4CA8(v66, v63 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v74, type metadata accessor for PMSharingGroup);
          v65 += v95;
          --v62;
        }

        while (v62);

        v33 = v93;
        v19 = v83;
        v60 = v92;
      }

      v75 = sub_21C7A120C(v60, v63);

      v76 = v88;
      if (v75)
      {
        v77 = v86;
        (*(v88 + 16))(v86, v60, v19);
        v78 = *(v76 + 56);
        v78(v77, 0, 1, v19);
        type metadata accessor for PMGroupInvitationsList(0);
        sub_21C6EDBAC(v77, v33, &unk_27CDF20B0, &unk_21CBA0090);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);
        sub_21CB84D64();
        sub_21C6EA794(v77, &unk_27CDF20B0, &unk_21CBA0090);
        v78(v77, 1, 1, v19);
        swift_getKeyPath(byte_21CBB98F0);
        swift_getKeyPath(byte_21CBB9918);
        sub_21C6EDBAC(v77, v33, &unk_27CDF20B0, &unk_21CBA0090);
        v79 = v90;
        sub_21CB81DC4();
        sub_21C6EA794(v77, &unk_27CDF20B0, &unk_21CBA0090);
        return (*(v76 + 8))(v92, v19);
      }

      else
      {
        return (*(v88 + 8))(v60, v19);
      }
    }
  }

  else
  {
    type metadata accessor for PMPasswordManagerState(0);
    sub_21C707CF8(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C9C4014(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0560, &qword_21CBAEF20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v29 = &v27 - v4;
  v5 = sub_21CB82F84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1870, &qword_21CBB21E0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = a1 + *(type metadata accessor for PMGroupInvitationsList(0) + 32);
  v16 = *v15;
  LODWORD(v15) = *(v15 + 8);
  v30 = v14;
  if (v15 == 1)
  {
    LOBYTE(v31) = v16;
  }

  else
  {

    sub_21CB85B04();
    v28 = v5;
    v17 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v16, 0);
    (*(v6 + 8))(v8, v28);
    LOBYTE(v16) = v31;
  }

  if (v16 == 1)
  {

    goto LABEL_8;
  }

  v18 = sub_21CB86344();

  if (v18)
  {
LABEL_8:
    v22 = sub_21C8F0690();
    v23 = v29;
    MEMORY[0x21CF131E0](v22, &type metadata for PMAppSeamlessToolbarItemPlaceholder, v22);
    (*(v3 + 16))(v11, v23, v2);
    (*(v3 + 56))(v11, 0, 1, v2);
    v31 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
    v32 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v21 = v30;
    MEMORY[0x21CF13220](v11, v2, OpaqueTypeConformance2);
    sub_21C7720E4(v11);
    (*(v3 + 8))(v23, v2);
    goto LABEL_9;
  }

  (*(v3 + 56))(v11, 1, 1, v2);
  v19 = sub_21C8F0690();
  v31 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
  v32 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = v30;
  MEMORY[0x21CF13220](v11, v2, v20);
  sub_21C7720E4(v11);
LABEL_9:
  v25 = sub_21C9C52B8();
  MEMORY[0x21CF131E0](v21, v9, v25);
  return sub_21C7720E4(v21);
}

uint64_t sub_21C9C44AC@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  v25 = a1;
  v27 = a2;
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v9 - 8);
  v26 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  type metadata accessor for PMGroupInvitationsList(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);
  sub_21CB84D54();
  (*(v3 + 16))(v13, v25, v2);
  (*(v3 + 56))(v13, 0, 1, v2);
  v17 = *(v6 + 56);
  sub_21C6EDBAC(v16, v8, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(v13, &v8[v17], &unk_27CDF20B0, &unk_21CBA0090);
  v18 = *(v3 + 48);
  if (v18(v8, 1, v2) != 1)
  {
    sub_21C6EDBAC(v8, v26, &unk_27CDF20B0, &unk_21CBA0090);
    if (v18(&v8[v17], 1, v2) != 1)
    {
      v21 = v24;
      (*(v3 + 32))(v24, &v8[v17], v2);
      sub_21C707CF8(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
      v22 = v26;
      v20 = sub_21CB85574();
      v23 = *(v3 + 8);
      v23(v21, v2);
      sub_21C6EA794(v13, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
      v23(v22, v2);
      result = sub_21C6EA794(v8, &unk_27CDF20B0, &unk_21CBA0090);
      goto LABEL_8;
    }

    sub_21C6EA794(v13, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
    (*(v3 + 8))(v26, v2);
    goto LABEL_6;
  }

  sub_21C6EA794(v13, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
  if (v18(&v8[v17], 1, v2) != 1)
  {
LABEL_6:
    result = sub_21C6EA794(v8, &qword_27CDEAC40, &qword_21CBA1A40);
    v20 = 0;
    goto LABEL_8;
  }

  result = sub_21C6EA794(v8, &unk_27CDF20B0, &unk_21CBA0090);
  v20 = 1;
LABEL_8:
  *v27 = v20 & 1;
  return result;
}

uint64_t sub_21C9C491C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  v13 = *a1;
  v14 = sub_21CB85C44();
  v15 = *(v14 - 8);
  v16 = v15;
  if (v13 == 1)
  {
    (*(v15 + 16))(v12, a5, v14);
    (*(v16 + 56))(v12, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v12, 1, 1, v14);
  }

  type metadata accessor for PMGroupInvitationsList(0);
  sub_21C6EDBAC(v12, v9, &unk_27CDF20B0, &unk_21CBA0090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);
  sub_21CB84D64();
  return sub_21C6EA794(v12, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C9C4AC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_21CBB98C0);
  sub_21C707CF8(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810D4();

  *a2 = *(v3 + 24);
}

uint64_t sub_21C9C4B74(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(asc_21CBB98C0);
  sub_21C707CF8(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel, &unk_21CBB9AC0);
  sub_21CB810C4();
}

uint64_t sub_21C9C4C40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9C4CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9C4D10(uint64_t a1)
{
  v3 = *(type metadata accessor for PMGroupInvitationsList(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9C3118(a1, v4);
}

unint64_t sub_21C9C4DDC()
{
  result = qword_27CDF3EA0;
  if (!qword_27CDF3EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E80, &qword_21CBB98A0);
    sub_21C9C4E94();
    sub_21C6EADEC(&qword_27CDED9E0, &qword_27CDED990, &qword_21CBA7E90, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3EA0);
  }

  return result;
}

unint64_t sub_21C9C4E94()
{
  result = qword_27CDF3EA8;
  if (!qword_27CDF3EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E78, &qword_21CBB9898);
    sub_21C9C4F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3EA8);
  }

  return result;
}

unint64_t sub_21C9C4F20()
{
  result = qword_27CDF3EB0;
  if (!qword_27CDF3EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E70, &qword_21CBB9890);
    sub_21C9C4FD8();
    sub_21C6EADEC(&qword_27CDED9C0, &qword_27CDED9C8, &unk_21CBA7F50, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3EB0);
  }

  return result;
}

unint64_t sub_21C9C4FD8()
{
  result = qword_27CDF3EB8;
  if (!qword_27CDF3EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E68, &qword_21CBB9888);
    sub_21C9C505C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3EB8);
  }

  return result;
}

unint64_t sub_21C9C505C()
{
  result = qword_27CDF3EC0;
  if (!qword_27CDF3EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3EC8, &unk_21CBB9940);
    sub_21C6EADEC(&qword_27CDF0220, &qword_27CDF0228, &qword_21CBAE660, MEMORY[0x277CDE158]);
    sub_21C9C5114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3EC0);
  }

  return result;
}

unint64_t sub_21C9C5114()
{
  result = qword_27CDF3ED0;
  if (!qword_27CDF3ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3ED8, &qword_21CBB9950);
    sub_21C9C51CC();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3ED0);
  }

  return result;
}

unint64_t sub_21C9C51CC()
{
  result = qword_27CDF3EE0;
  if (!qword_27CDF3EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3EE8, &qword_21CBB9958);
    sub_21C6EADEC(&qword_27CDF3EF0, &qword_27CDF3EF8, &unk_21CBB9960, MEMORY[0x277CDE580]);
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3EE0);
  }

  return result;
}

unint64_t sub_21C9C52B8()
{
  result = qword_27CDF3F08;
  if (!qword_27CDF3F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1870, &qword_21CBB21E0);
    sub_21C8F0690();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3F08);
  }

  return result;
}

unint64_t sub_21C9C538C()
{
  result = qword_27CDF3F28;
  if (!qword_27CDF3F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3F20, &qword_21CBB99C0);
    sub_21C9C5410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3F28);
  }

  return result;
}