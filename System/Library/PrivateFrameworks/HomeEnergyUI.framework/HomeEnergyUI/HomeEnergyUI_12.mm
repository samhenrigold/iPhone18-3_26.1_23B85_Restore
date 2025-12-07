uint64_t sub_20D930DBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20D87A568();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  *a1 = sub_20D974168();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA70, &qword_20D97E980);
  sub_20D932380(v2, v4, v6, v8, v10, a1 + *(v11 + 44));

  LOBYTE(v4) = sub_20D974328();
  sub_20D973AD8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA78, &qword_20D97E988) + 36);
  *v20 = v4;
  *(v20 + 8) = v13;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  LOBYTE(v4) = sub_20D974338();
  sub_20D973AD8();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA80, &qword_20D97E990);
  v30 = a1 + *(result + 36);
  *v30 = v4;
  *(v30 + 8) = v22;
  *(v30 + 16) = v24;
  *(v30 + 24) = v26;
  *(v30 + 32) = v28;
  *(v30 + 40) = 0;
  return result;
}

uint64_t sub_20D930F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v58 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB20, &qword_20D97EB18);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v57 = &v49 - v5;
  v53 = sub_20D974458();
  v6 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D9726E8();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20D975058();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20D9740E8();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB28, &qword_20D97EB20);
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB30, &qword_20D97EB28);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v55 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v54 = &v49 - v22;
  sub_20D9740D8();
  sub_20D9740C8();
  sub_20D9749B8();
  sub_20D9740A8();

  sub_20D9740C8();
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v23 = qword_28112ABE8;
  v24 = qword_28112ABE8;
  sub_20D9726B8();
  sub_20D975108(v14, 0, 0, v23, v11, "energy action title", 19, 2);
  sub_20D9740B8();

  sub_20D9740C8();
  sub_20D974108();
  v52 = sub_20D9745A8();
  v51 = v25;
  LOBYTE(v23) = v26;
  v50 = v27;
  sub_20D974C48();
  sub_20D973E08();
  v28 = v23 & 1;
  v67 = v23 & 1;
  sub_20D974488();
  v29 = v53;
  (*(v6 + 104))(v8, *MEMORY[0x277CE0A10], v53);
  v30 = sub_20D974478();

  (*(v6 + 8))(v8, v29);
  KeyPath = swift_getKeyPath();
  v32 = &v18[*(v16 + 36)];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A108, &unk_20D97B230) + 28);
  v34 = *MEMORY[0x277CE0B48];
  v35 = sub_20D974538();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v32 + v33, v34, v35);
  (*(v36 + 56))(v32 + v33, 0, 1, v35);
  *v32 = swift_getKeyPath();
  v37 = v51;
  *v18 = v52;
  *(v18 + 1) = v37;
  v18[16] = v28;
  *(v18 + 3) = v50;
  v38 = v65;
  *(v18 + 6) = v64;
  *(v18 + 7) = v38;
  *(v18 + 8) = v66;
  v39 = v61;
  *(v18 + 2) = v60;
  *(v18 + 3) = v39;
  v40 = v63;
  *(v18 + 4) = v62;
  *(v18 + 5) = v40;
  *(v18 + 18) = KeyPath;
  *(v18 + 19) = v30;
  sub_20D932C3C();
  v41 = v54;
  sub_20D9747D8();
  sub_20D7E3944(v18, &qword_27C83BB28, &qword_20D97EB20);
  v42 = v57;
  sub_20D931660(v57);
  v43 = v55;
  sub_20D7EB7E8(v41, v55, &qword_27C83BB30, &qword_20D97EB28);
  v44 = v59;
  sub_20D7EB7E8(v42, v59, &qword_27C83BB20, &qword_20D97EB18);
  v45 = v58;
  sub_20D7EB7E8(v43, v58, &qword_27C83BB30, &qword_20D97EB28);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB50, &unk_20D97EBA0);
  v47 = v45 + *(v46 + 48);
  *v47 = 0;
  *(v47 + 8) = 1;
  sub_20D7EB7E8(v44, v45 + *(v46 + 64), &qword_27C83BB20, &qword_20D97EB18);
  sub_20D7E3944(v42, &qword_27C83BB20, &qword_20D97EB18);
  sub_20D7E3944(v41, &qword_27C83BB30, &qword_20D97EB28);
  sub_20D7E3944(v44, &qword_27C83BB20, &qword_20D97EB18);
  return sub_20D7E3944(v43, &qword_27C83BB30, &qword_20D97EB28);
}

uint64_t sub_20D931660@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  MEMORY[0x28223BE20](v34);
  v2 = &v31 - v1;
  v3 = type metadata accessor for HistoricalUsageEnergyTip(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB58, &qword_20D97EBB0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB60, &unk_20D97EBB8);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v31 = &v31 - v10;
  sub_20D9749B8();
  v11 = sub_20D9745D8();
  v13 = v12;
  v37 = v11;
  v38 = v12;
  v15 = v14 & 1;
  LOBYTE(v39) = v14 & 1;
  v40 = v16;
  sub_20D932DAC(v36, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_20D932E10(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_20D974748();
  v19 = v6;

  sub_20D7EADC0(v11, v13, v15);

  v20 = sub_20D974398();
  KeyPath = swift_getKeyPath();
  v22 = &v8[*(v6 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = *MEMORY[0x277CDFA10];
  v24 = sub_20D973D58();
  (*(*(v24 - 8) + 104))(v2, v23, v24);
  sub_20D7F8AB0();
  result = sub_20D974FD8();
  if (result)
  {
    v26 = sub_20D932ED4();
    v27 = sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0, MEMORY[0x277D84470]);
    v28 = v31;
    v29 = v34;
    sub_20D974778();
    sub_20D7E3944(v2, &qword_27C839080, &qword_20D977AC0);
    sub_20D7E3944(v8, &qword_27C83BB58, &qword_20D97EBB0);
    v37 = v19;
    v38 = v29;
    v39 = v26;
    v40 = v27;
    swift_getOpaqueTypeConformance2();
    v30 = v33;
    sub_20D9747D8();
    return (*(v32 + 8))(v28, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20D931AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v82 = a3;
  v83 = a4;
  v87 = a5;
  v7 = sub_20D974458();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v86 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v85 = &v74 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v84 = &v74 - v17;
  MEMORY[0x28223BE20](v16);
  v88 = &v74 - v18;
  v89 = a1;
  v90 = a2;
  v81 = sub_20D7E1EF8();

  v19 = sub_20D9745C8();
  v21 = v20;
  v23 = v22;
  sub_20D974428();
  v80 = *MEMORY[0x277CE0A10];
  v24 = *(v8 + 104);
  v78 = v8 + 104;
  v79 = v24;
  v75 = v7;
  v24(v10);
  v74 = v10;
  sub_20D974478();

  v25 = *(v8 + 8);
  v76 = v8 + 8;
  v77 = v25;
  v25(v10, v7);
  v26 = sub_20D974558();
  v28 = v27;
  LOBYTE(v10) = v29;

  sub_20D7EADC0(v19, v21, v23 & 1);

  sub_20D9743F8();
  v30 = sub_20D9744F8();
  v32 = v31;
  LOBYTE(v21) = v33;
  sub_20D7EADC0(v26, v28, v10 & 1);

  v34 = objc_opt_self();
  v35 = [v34 systemOrangeColor];
  sub_20D974888();
  sub_20D974948();

  v36 = sub_20D974508();
  v38 = v37;
  LOBYTE(v10) = v39;

  sub_20D7EADC0(v30, v32, v21 & 1);

  v40 = [v34 quaternaryLabelColor];
  sub_20D974888();
  v41 = sub_20D974948();

  v89 = v41;
  v42 = sub_20D974518();
  v44 = v43;
  LOBYTE(v30) = v45;
  v47 = v46;
  sub_20D7EADC0(v36, v38, v10 & 1);

  v89 = v42;
  v90 = v44;
  v91 = v30 & 1;
  v92 = v47;
  sub_20D9747D8();
  sub_20D7EADC0(v42, v44, v30 & 1);

  v89 = v82;
  v90 = v83;

  v48 = sub_20D9745C8();
  v50 = v49;
  LOBYTE(v36) = v51;
  sub_20D974398();
  v52 = v74;
  v53 = v75;
  v79(v74, v80, v75);
  sub_20D974478();

  v77(v52, v53);
  v54 = sub_20D974558();
  v56 = v55;
  LOBYTE(v47) = v57;

  sub_20D7EADC0(v48, v50, v36 & 1);

  v58 = [v34 secondaryLabelColor];
  v89 = sub_20D974888();
  v59 = sub_20D974518();
  v61 = v60;
  LOBYTE(v36) = v62;
  v64 = v63;
  sub_20D7EADC0(v54, v56, v47 & 1);

  v89 = v59;
  v90 = v61;
  v91 = v36 & 1;
  v92 = v64;
  v65 = v84;
  sub_20D9747D8();
  sub_20D7EADC0(v59, v61, v36 & 1);

  v66 = v88;
  v67 = v85;
  sub_20D7EB7E8(v88, v85, &qword_27C838F18, &unk_20D977860);
  v68 = v65;
  v69 = v65;
  v70 = v86;
  sub_20D7EB7E8(v68, v86, &qword_27C838F18, &unk_20D977860);
  v71 = v87;
  sub_20D7EB7E8(v67, v87, &qword_27C838F18, &unk_20D977860);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839160, &unk_20D977DF0);
  sub_20D7EB7E8(v70, v71 + *(v72 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v69, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v66, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v70, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v67, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D932198@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  *a2 = sub_20D974168();
  *(a2 + 8) = 0x4014000000000000;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839150, &qword_20D97EAC0);
  return sub_20D931AA0(v4, v5, v7, v6, a2 + *(v8 + 44));
}

uint64_t sub_20D932210(unsigned __int8 *a1)
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v1 = [qword_28112ABE8 bundleIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_20D975098();

    v3 = sub_20D975078();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];

  if (v4)
  {
    v5 = sub_20D975398();
    v6 = sub_20D975078();
    [v4 setObject:v5 forKey:v6];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB70, &qword_20D97EBC8);
  return sub_20D974B28();
}

uint64_t sub_20D932380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a2;
  v29 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB00, &qword_20D97EAC8);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  *v16 = sub_20D974088();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB08, &qword_20D97EAD0);
  sub_20D930F14(a1, &v16[*(v17 + 44)]);
  v18 = objc_opt_self();
  v19 = [v18 systemOrangeColor];
  sub_20D974888();
  v20 = sub_20D974948();

  KeyPath = swift_getKeyPath();
  v22 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB10, &qword_20D97EB08) + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = [v18 quaternaryLabelColor];
  sub_20D974888();
  v24 = sub_20D974948();

  *&v16[*(v11 + 44)] = v24;
  sub_20D7EB7E8(v16, v14, &qword_27C83BB00, &qword_20D97EAC8);
  sub_20D7EB7E8(v14, a6, &qword_27C83BB00, &qword_20D97EAC8);
  v25 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB18, &qword_20D97EB10) + 48));
  v26 = v29;
  *v25 = v28;
  v25[1] = a3;
  v25[2] = v26;
  v25[3] = a5;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_20D7E3944(v16, &qword_27C83BB00, &qword_20D97EAC8);

  return sub_20D7E3944(v14, &qword_27C83BB00, &qword_20D97EAC8);
}

uint64_t type metadata accessor for HistoricalUsageEnergyTip(uint64_t a1)
{
  result = qword_27C83BAA8;
  if (!qword_27C83BAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D93263C@<X0>(uint64_t a1@<X8>)
{
  sub_20D930DBC(a1);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA88, &qword_20D97E998) + 36)) = 256;
  v2 = sub_20D974318();
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA90, &qword_20D97E9A0) + 36);
  *v3 = v2;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 1;
  v4 = sub_20D974C48();
  v6 = v5;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA98, &qword_20D97E9A8) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  sub_20D973B78();
  v8 = *(sub_20D973DE8() + 20);
  v9 = *MEMORY[0x277CE0118];
  v10 = sub_20D974118();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = v16 * 24.0;
  v7[1] = v16 * 24.0;
  v11 = [objc_opt_self() systemOrangeColor];
  sub_20D974888();
  v12 = sub_20D974948();

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B800, &qword_20D97E490);
  *(v7 + *(v13 + 52)) = v12;
  *(v7 + *(v13 + 56)) = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BAA0, &qword_20D97E9B0);
  v15 = (v7 + *(result + 36));
  *v15 = v4;
  v15[1] = v6;
  return result;
}

void sub_20D93283C(uint64_t a1)
{
  sub_20D9328E8();
  if (v1 <= 0x3F)
  {
    sub_20D7F8490(319);
    if (v2 <= 0x3F)
    {
      sub_20D7E63C4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20D9328E8()
{
  if (!qword_27C83BAB8)
  {
    v0 = sub_20D974B58();
    if (!v1)
    {
      atomic_store(v0, &qword_27C83BAB8);
    }
  }
}

unint64_t sub_20D932938()
{
  result = qword_27C83BAC0;
  if (!qword_27C83BAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BA98, &qword_20D97E9A8);
    sub_20D932AD4(&qword_27C83BAC8, &qword_27C83BA90, &qword_20D97E9A0, sub_20D932A1C);
    sub_20D7EBC4C(&qword_27C83BAF8, &qword_27C83BAA0, &qword_20D97E9B0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BAC0);
  }

  return result;
}

unint64_t sub_20D932A1C()
{
  result = qword_27C83BAD0;
  if (!qword_27C83BAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BA88, &qword_20D97E998);
    sub_20D932AD4(&qword_27C83BAD8, &qword_27C83BA80, &qword_20D97E990, sub_20D932B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BAD0);
  }

  return result;
}

uint64_t sub_20D932AD4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_20D932B58()
{
  result = qword_27C83BAE0;
  if (!qword_27C83BAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BA78, &qword_20D97E988);
    sub_20D7EBC4C(&qword_27C83BAE8, &qword_27C83BAF0, &qword_20D97EA30, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BAE0);
  }

  return result;
}

unint64_t sub_20D932C3C()
{
  result = qword_27C83BB38;
  if (!qword_27C83BB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BB28, &qword_20D97EB20);
    sub_20D932CF4();
    sub_20D7EBC4C(&qword_281126F50, &qword_27C83A108, &unk_20D97B230, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BB38);
  }

  return result;
}

unint64_t sub_20D932CF4()
{
  result = qword_27C83BB40;
  if (!qword_27C83BB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BB48, &qword_20D97EB98);
    sub_20D8E3FD8();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BB40);
  }

  return result;
}

uint64_t sub_20D932DAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalUsageEnergyTip(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D932E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalUsageEnergyTip(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D932E74()
{
  v1 = *(type metadata accessor for HistoricalUsageEnergyTip(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_20D932210(v2);
}

unint64_t sub_20D932ED4()
{
  result = qword_27C83BB68;
  if (!qword_27C83BB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BB58, &qword_20D97EBB0);
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BB68);
  }

  return result;
}

uint64_t UtilityRateInfoWidgetView.init(snapshot:homeName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_20D9726E8();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_20D975058();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D936D10(a1, a4, type metadata accessor for UtilityRateInfoSnapshot);
  if (!a3)
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v14 = qword_28112ABE8;
    v15 = qword_28112ABE8;
    sub_20D9726B8();
    a2 = sub_20D975108(v13, a2, 0, v14, v10, "Text to show electricity rates widget title", 43, 2);
    a3 = v16;
  }

  sub_20D936D78(a1, type metadata accessor for UtilityRateInfoSnapshot);
  result = type metadata accessor for UtilityRateInfoWidgetView(0);
  v18 = (a4 + *(result + 20));
  *v18 = a2;
  v18[1] = a3;
  return result;
}

uint64_t UtilityRateInfoWidgetView.init(snapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20D9726E8();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_20D975058();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for UtilityRateInfoSnapshot(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D936D10(a1, v12, type metadata accessor for UtilityRateInfoSnapshot);
  sub_20D936D10(v12, a2, type metadata accessor for UtilityRateInfoSnapshot);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v13 = qword_28112ABE8;
  v14 = qword_28112ABE8;
  sub_20D9726B8();
  v15 = sub_20D975108(v9, 0, 0, v13, v6, "Text to show electricity rates widget title", 43, 2);
  v17 = v16;
  sub_20D936D78(a1, type metadata accessor for UtilityRateInfoSnapshot);
  sub_20D936D78(v12, type metadata accessor for UtilityRateInfoSnapshot);
  result = type metadata accessor for UtilityRateInfoWidgetView(0);
  v19 = (a2 + *(result + 20));
  *v19 = v15;
  v19[1] = v17;
  return result;
}

uint64_t UtilityRateInfoWidgetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB78, &qword_20D97EBE0);
  v3 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v5 = &v38 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB80, &qword_20D97EBE8);
  MEMORY[0x28223BE20](v40);
  v42 = &v38 - v6;
  v38 = sub_20D9742A8();
  v7 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB88, &qword_20D97EBF0);
  MEMORY[0x28223BE20](v39);
  v11 = &v38 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB90, &qword_20D97EBF8);
  v12 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v14 = &v38 - v13;
  if (*(v2 + *(type metadata accessor for UtilityRateInfoSnapshot(0) + 44)) == 6)
  {
    *v11 = sub_20D9742F8();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BB98, &qword_20D97EC00);
    sub_20D933ADC(v2, &v11[*(v15 + 44)]);
    sub_20D974298();
    sub_20D974C48();
    v16 = sub_20D7EBC4C(&qword_27C83BBA0, &qword_27C83BB88, &qword_20D97EBF0, MEMORY[0x277CDD828]);
    v17 = v39;
    v18 = MEMORY[0x277CE1428];
    sub_20D9747C8();
    (*(v7 + 8))(v9, v38);
    sub_20D7E3944(v11, &qword_27C83BB88, &qword_20D97EBF0);
    v19 = v41;
    (*(v12 + 16))(v42, v14, v41);
    swift_storeEnumTagMultiPayload();
    *&v49 = v17;
    *(&v49 + 1) = v18;
    *&v50 = v16;
    *(&v50 + 1) = MEMORY[0x277CE1410];
    swift_getOpaqueTypeConformance2();
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BBA8, &qword_20D97EC08);
    v21 = sub_20D936E9C(&qword_27C83BBB0, &qword_27C83BBA8, &qword_20D97EC08, sub_20D933FA4);
    *&v49 = v20;
    *(&v49 + 1) = MEMORY[0x277CE1428];
    *&v50 = v21;
    *(&v50 + 1) = MEMORY[0x277CE1410];
    swift_getOpaqueTypeConformance2();
    sub_20D9741B8();
    return (*(v12 + 8))(v14, v19);
  }

  else
  {
    v23 = sub_20D936804();
    v25 = v24;
    v27 = v26;
    v28 = v3;
    v30 = v29;
    v31 = sub_20D974318();
    v48 = 1;
    *&v45 = v23;
    *(&v45 + 1) = v25;
    *&v46 = v27;
    *(&v46 + 1) = v30;
    v47[0] = v31;
    memset(&v47[8], 0, 32);
    v47[40] = 1;
    sub_20D974298();
    sub_20D974C48();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BBA8, &qword_20D97EC08);
    v33 = sub_20D936E9C(&qword_27C83BBB0, &qword_27C83BBA8, &qword_20D97EC08, sub_20D933FA4);
    v34 = MEMORY[0x277CE1428];
    sub_20D9747C8();
    (*(v7 + 8))(v9, v38);
    v52[0] = *&v47[16];
    *(v52 + 9) = *&v47[25];
    v50 = v46;
    v51 = *v47;
    v49 = v45;
    sub_20D7E3944(&v49, &qword_27C83BBA8, &qword_20D97EC08);
    v35 = v44;
    (*(v28 + 16))(v42, v5, v44);
    swift_storeEnumTagMultiPayload();
    v36 = sub_20D7EBC4C(&qword_27C83BBA0, &qword_27C83BB88, &qword_20D97EBF0, MEMORY[0x277CDD828]);
    *&v45 = v39;
    *(&v45 + 1) = v34;
    *&v46 = v36;
    v37 = MEMORY[0x277CE1410];
    *(&v46 + 1) = MEMORY[0x277CE1410];
    swift_getOpaqueTypeConformance2();
    *&v45 = v32;
    *(&v45 + 1) = v34;
    *&v46 = v33;
    *(&v46 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    sub_20D9741B8();
    return (*(v28 + 8))(v5, v35);
  }
}

uint64_t sub_20D933ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for UtilityRateView(0);
  v4 = MEMORY[0x28223BE20](v3);
  v71 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v70 = v67 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v69 = v67 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (v67 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (v67 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = (v67 - v16);
  v18 = (a1 + *(type metadata accessor for UtilityRateInfoWidgetView(0) + 20));
  v20 = *v18;
  v19 = v18[1];
  sub_20D936D10(a1, v17 + v3[5], type metadata accessor for UtilityRateInfoSnapshot);
  v21 = qword_281125B78;
  swift_bridgeObjectRetain_n();
  if (v21 != -1)
  {
    swift_once();
  }

  v22 = xmmword_281125B90;
  v23 = xmmword_281125BA0;
  v73[2] = xmmword_281125BA0;
  v73[3] = xmmword_281125BB0;
  v24 = xmmword_281125BD0;
  v25 = xmmword_281125BE0;
  v73[6] = xmmword_281125BE0;
  v73[7] = xmmword_281125BF0;
  v26 = xmmword_281125BB0;
  v27 = xmmword_281125BC0;
  v73[4] = xmmword_281125BC0;
  v73[5] = xmmword_281125BD0;
  v28 = xmmword_281125C30;
  v73[12] = xmmword_281125C40;
  v29 = unk_281125C10;
  v30 = xmmword_281125C20;
  v73[10] = xmmword_281125C20;
  v73[11] = xmmword_281125C30;
  v31 = xmmword_281125BF0;
  v32 = xmmword_281125C00;
  v73[8] = xmmword_281125C00;
  v73[9] = unk_281125C10;
  v33 = xmmword_281125B80;
  v73[0] = xmmword_281125B80;
  v73[1] = xmmword_281125B90;
  *v17 = v20;
  v17[1] = v19;
  v34 = (v17 + v3[6]);
  v34[10] = v30;
  v34[11] = v28;
  v34[12] = xmmword_281125C40;
  v34[6] = v25;
  v34[7] = v31;
  v34[8] = v32;
  v34[9] = v29;
  v34[2] = v23;
  v34[3] = v26;
  v34[4] = v27;
  v34[5] = v24;
  *v34 = v33;
  v34[1] = v22;
  *(v17 + v3[7]) = 1;
  *(v17 + v3[8]) = 1;
  sub_20D936D10(a1, v15 + v3[5], type metadata accessor for UtilityRateInfoSnapshot);
  v35 = xmmword_281125B90;
  v36 = xmmword_281125BA0;
  v74[2] = xmmword_281125BA0;
  v74[3] = xmmword_281125BB0;
  v37 = xmmword_281125BD0;
  v38 = xmmword_281125BE0;
  v74[6] = xmmword_281125BE0;
  v74[7] = xmmword_281125BF0;
  v39 = xmmword_281125BB0;
  v40 = xmmword_281125BC0;
  v74[4] = xmmword_281125BC0;
  v74[5] = xmmword_281125BD0;
  v41 = xmmword_281125C30;
  v74[12] = xmmword_281125C40;
  v42 = unk_281125C10;
  v43 = xmmword_281125C20;
  v74[10] = xmmword_281125C20;
  v74[11] = xmmword_281125C30;
  v44 = xmmword_281125BF0;
  v45 = xmmword_281125C00;
  v74[8] = xmmword_281125C00;
  v74[9] = unk_281125C10;
  v46 = xmmword_281125B80;
  v74[0] = xmmword_281125B80;
  v74[1] = xmmword_281125B90;
  *v15 = v20;
  v15[1] = v19;
  v67[1] = v19;
  v47 = (v15 + v3[6]);
  v47[10] = v43;
  v47[11] = v41;
  v47[12] = xmmword_281125C40;
  v47[6] = v38;
  v47[7] = v44;
  v47[8] = v45;
  v47[9] = v42;
  v47[2] = v36;
  v47[3] = v39;
  v47[4] = v40;
  v47[5] = v37;
  *v47 = v46;
  v47[1] = v35;
  *(v15 + v3[7]) = 1;
  *(v15 + v3[8]) = 0;
  sub_20D936D10(a1, v12 + v3[5], type metadata accessor for UtilityRateInfoSnapshot);
  v48 = xmmword_281125B90;
  v49 = xmmword_281125BA0;
  v75[2] = xmmword_281125BA0;
  v75[3] = xmmword_281125BB0;
  v50 = xmmword_281125BD0;
  v51 = xmmword_281125BE0;
  v75[6] = xmmword_281125BE0;
  v75[7] = xmmword_281125BF0;
  v52 = xmmword_281125BB0;
  v53 = xmmword_281125BC0;
  v75[4] = xmmword_281125BC0;
  v75[5] = xmmword_281125BD0;
  v54 = xmmword_281125C30;
  v75[12] = xmmword_281125C40;
  v55 = unk_281125C10;
  v56 = xmmword_281125C20;
  v75[10] = xmmword_281125C20;
  v75[11] = xmmword_281125C30;
  v57 = xmmword_281125BF0;
  v58 = xmmword_281125C00;
  v75[8] = xmmword_281125C00;
  v75[9] = unk_281125C10;
  v59 = xmmword_281125B80;
  v75[0] = xmmword_281125B80;
  v75[1] = xmmword_281125B90;
  *v12 = v20;
  v12[1] = v19;
  v60 = (v12 + v3[6]);
  v60[10] = v56;
  v60[11] = v54;
  v60[12] = xmmword_281125C40;
  v60[6] = v51;
  v60[7] = v57;
  v60[8] = v58;
  v60[9] = v55;
  v60[2] = v49;
  v60[3] = v52;
  v60[4] = v53;
  v60[5] = v50;
  *v60 = v59;
  v60[1] = v48;
  *(v12 + v3[7]) = 0;
  *(v12 + v3[8]) = 0;
  v61 = v69;
  sub_20D936D10(v17, v69, type metadata accessor for UtilityRateView);
  v62 = v70;
  sub_20D936D10(v15, v70, type metadata accessor for UtilityRateView);
  v63 = v71;
  sub_20D936D10(v12, v71, type metadata accessor for UtilityRateView);
  v64 = v68;
  sub_20D936D10(v61, v68, type metadata accessor for UtilityRateView);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC60, &qword_20D97EDF8);
  sub_20D936D10(v62, v64 + *(v65 + 48), type metadata accessor for UtilityRateView);
  sub_20D936D10(v63, v64 + *(v65 + 64), type metadata accessor for UtilityRateView);

  sub_20D85D690(v73, v72);
  sub_20D85D690(v74, v72);
  sub_20D85D690(v75, v72);
  sub_20D936D78(v12, type metadata accessor for UtilityRateView);
  sub_20D936D78(v15, type metadata accessor for UtilityRateView);
  sub_20D936D78(v17, type metadata accessor for UtilityRateView);
  sub_20D936D78(v63, type metadata accessor for UtilityRateView);
  sub_20D936D78(v62, type metadata accessor for UtilityRateView);
  return sub_20D936D78(v61, type metadata accessor for UtilityRateView);
}

unint64_t sub_20D933FA4()
{
  result = qword_27C83BBB8;
  if (!qword_27C83BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BBB8);
  }

  return result;
}

uint64_t sub_20D933FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v77 = a3;
  v78 = a4;
  v75 = a5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BBF8, &qword_20D97ED88);
  v7 = MEMORY[0x28223BE20](v71);
  v74 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = v66 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  MEMORY[0x28223BE20](v80);
  v83 = v66 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  MEMORY[0x28223BE20](v79);
  v12 = v66 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC00, &qword_20D97ED90);
  v70 = *(v72 - 8);
  v13 = MEMORY[0x28223BE20](v72);
  v69 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v81 = v66 - v15;
  v84 = a1;
  v85 = a2;
  v16 = sub_20D7E1EF8();

  v76 = v16;
  v17 = sub_20D9745C8();
  v19 = v18;
  v21 = v20;
  sub_20D9744A8();
  v22 = sub_20D974558();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_20D7EADC0(v17, v19, v21 & 1);

  v84 = v22;
  v85 = v24;
  v86 = v26 & 1;
  v87 = v28;
  v82 = v12;
  sub_20D9747D8();
  sub_20D7EADC0(v22, v24, v26 & 1);

  v29 = *MEMORY[0x277CDFA00];
  v30 = sub_20D973D58();
  v31 = *(v30 - 8);
  v32 = *(v31 + 104);
  v33 = v31 + 104;
  v32(v83, v29, v30);
  v34 = sub_20D9308D4(&qword_281127030, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_20D974FD8();
  if (result)
  {
    v36 = sub_20D809130();
    v67 = v30;
    v68 = v32;
    v37 = sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0, MEMORY[0x277D84470]);
    v38 = v83;
    v66[1] = v36;
    v66[0] = v37;
    v39 = v82;
    sub_20D974778();
    sub_20D7E3944(v38, &qword_27C839080, &qword_20D977AC0);
    sub_20D7E3944(v39, &qword_27C838F18, &unk_20D977860);
    v84 = v77;
    v85 = v78;

    v40 = sub_20D9745C8();
    v42 = v41;
    v44 = v43;
    v78 = v33;
    sub_20D974468();
    v45 = sub_20D974558();
    v77 = v34;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;

    sub_20D7EADC0(v40, v42, v44 & 1);

    v84 = v46;
    v85 = v48;
    v86 = v50 & 1;
    v87 = v52;
    sub_20D9747D8();
    sub_20D7EADC0(v46, v48, v50 & 1);

    v68(v38, *MEMORY[0x277CDF9F0], v67);
    result = sub_20D974FD8();
    if (result)
    {
      v53 = v73;
      v55 = v82;
      v54 = v83;
      sub_20D974778();
      sub_20D7E3944(v54, &qword_27C839080, &qword_20D977AC0);
      sub_20D7E3944(v55, &qword_27C838F18, &unk_20D977860);
      v56 = v70;
      *(v53 + *(v71 + 36)) = 256;
      v57 = *(v56 + 16);
      v58 = v69;
      v59 = v72;
      v57(v69, v81, v72);
      v60 = v74;
      sub_20D7EB7E8(v53, v74, &qword_27C83BBF8, &qword_20D97ED88);
      v61 = v75;
      v57(v75, v58, v59);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC08, &qword_20D97ED98);
      v63 = &v61[v62[12]];
      *v63 = 0;
      v63[8] = 1;
      sub_20D7EB7E8(v60, &v61[v62[16]], &qword_27C83BBF8, &qword_20D97ED88);
      v64 = &v61[v62[20]];
      *v64 = 0;
      v64[8] = 1;
      sub_20D7E3944(v53, &qword_27C83BBF8, &qword_20D97ED88);
      v65 = *(v56 + 8);
      v65(v81, v59);
      sub_20D7E3944(v60, &qword_27C83BBF8, &qword_20D97ED88);
      return (v65)(v58, v59);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20D934708@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  *a2 = sub_20D974168();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BBF0, &qword_20D97ED80);
  return sub_20D933FF8(v4, v5, v7, v6, (a2 + *(v8 + 44)));
}

uint64_t sub_20D934784@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC10, &qword_20D97EDA0);
  MEMORY[0x28223BE20](v3);
  v5 = v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC18, &qword_20D97EDA8);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v33 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC20, &qword_20D97EDB0);
  MEMORY[0x28223BE20](v34);
  v10 = v33 - v9;
  v33[1] = type metadata accessor for UtilityRateView(0);
  UtilityRateInfoSnapshot.statusAndAdviceTextPlusSymbol.getter(v39);
  v11 = v39[0];
  v13 = v40;
  v12 = v41;
  v15 = v42;
  v14 = v43;
  *v5 = sub_20D974168();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v16 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC28, &unk_20D97EDB8) + 44)];
  v37 = v2;
  sub_20D934B44(v2, v13, v12, v15, v14, v11, v16);

  sub_20D7EBC4C(&qword_27C83BC30, &qword_27C83BC10, &qword_20D97EDA0, MEMORY[0x277CE1198]);
  sub_20D9746B8();
  sub_20D7E3944(v5, &qword_27C83BC10, &qword_20D97EDA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C80, &unk_20D97BFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D977210;
  LOBYTE(v13) = sub_20D974348();
  *(inited + 32) = v13;
  v18 = sub_20D974368();
  *(inited + 33) = v18;
  v19 = sub_20D974358();
  sub_20D974358();
  if (sub_20D974358() != v13)
  {
    v19 = sub_20D974358();
  }

  sub_20D974358();
  if (sub_20D974358() != v18)
  {
    v19 = sub_20D974358();
  }

  (*(v35 + 32))(v10, v8, v36);
  v20 = &v10[*(v34 + 36)];
  *v20 = v19;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  v21 = sub_20D974328();
  sub_20D973AD8();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v38;
  sub_20D7EAF18(v10, v38, &qword_27C83BC20, &qword_20D97EDB0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC38, &qword_20D97EDC8);
  v32 = v30 + *(result + 36);
  *v32 = v21;
  *(v32 + 8) = v23;
  *(v32 + 16) = v25;
  *(v32 + 24) = v27;
  *(v32 + 32) = v29;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_20D934B44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v56) = a6;
  *&v62 = a4;
  v64 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  MEMORY[0x28223BE20](v11 - 8);
  v54 = &v54 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC40, &qword_20D97EDD0);
  v13 = *(v57 - 8);
  v14 = MEMORY[0x28223BE20](v57);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v55 = &v54 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC48, &qword_20D97EDD8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v61 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v63 = &v54 - v21;
  v22 = *a1;
  v23 = a1[1];
  v24 = type metadata accessor for UtilityRateView(0);
  v59 = *(a1 + *(v24 + 28));
  v60 = v23;

  *(&v62 + 1) = a5;

  v58 = sub_20D974338();
  sub_20D973AD8();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  LOBYTE(v81) = 0;
  if ((v56 & 1) != 0 && *(a1 + *(v24 + 32)) == 1)
  {
    v33 = v54;
    sub_20D935028(v54);
    sub_20D974C58();
    sub_20D973E08();
    sub_20D7EAF18(v33, v16, &qword_27C838F18, &unk_20D977860);
    v34 = v57;
    v35 = &v16[*(v57 + 36)];
    v36 = v86;
    *(v35 + 4) = v85;
    *(v35 + 5) = v36;
    *(v35 + 6) = v87;
    v37 = v82;
    *v35 = v81;
    *(v35 + 1) = v37;
    v38 = v84;
    *(v35 + 2) = v83;
    *(v35 + 3) = v38;
    v39 = v16;
    v40 = v55;
    sub_20D7EAF18(v39, v55, &qword_27C83BC40, &qword_20D97EDD0);
    v41 = v40;
    v42 = v63;
    sub_20D7EAF18(v41, v63, &qword_27C83BC40, &qword_20D97EDD0);
    (*(v13 + 56))(v42, 0, 1, v34);
  }

  else
  {
    v42 = v63;
    (*(v13 + 56))(v63, 1, 1, v57);
  }

  v43 = v61;
  sub_20D7EB7E8(v42, v61, &qword_27C83BC48, &qword_20D97EDD8);
  *&v65 = v22;
  v56 = a3;
  v57 = v22;
  v44 = v60;
  *(&v65 + 1) = v60;
  *&v66 = v64;
  *(&v66 + 1) = a3;
  v45 = v62;
  v67 = v62;
  v47 = v58;
  v46 = v59;
  LOBYTE(v68) = v59;
  BYTE8(v68) = v58;
  *&v69 = v26;
  *(&v69 + 1) = v28;
  *&v70 = v30;
  *(&v70 + 1) = v32;
  v71 = 0;
  *(a7 + 96) = 0;
  v48 = v70;
  *(a7 + 64) = v69;
  *(a7 + 80) = v48;
  v49 = v66;
  *a7 = v65;
  *(a7 + 16) = v49;
  v50 = v68;
  *(a7 + 32) = v67;
  *(a7 + 48) = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC50, &qword_20D97EDE0);
  sub_20D7EB7E8(v43, a7 + *(v51 + 48), &qword_27C83BC48, &qword_20D97EDD8);
  v52 = a7 + *(v51 + 64);
  *v52 = 0;
  *(v52 + 8) = 1;
  sub_20D7EB7E8(&v65, v72, &qword_27C83BC58, &unk_20D97EDE8);
  sub_20D7E3944(v63, &qword_27C83BC48, &qword_20D97EDD8);
  sub_20D7E3944(v43, &qword_27C83BC48, &qword_20D97EDD8);
  v72[0] = v57;
  v72[1] = v44;
  v72[2] = v64;
  v72[3] = v56;
  v73 = v45;
  v74 = v46;
  v75 = v47;
  v76 = v26;
  v77 = v28;
  v78 = v30;
  v79 = v32;
  v80 = 0;
  return sub_20D7E3944(v72, &qword_27C83BC58, &unk_20D97EDE8);
}

void sub_20D935028(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_20D974458();
  v42 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v41 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D9744B8();
  v40 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D9740E8();
  MEMORY[0x28223BE20](v6 - 8);
  sub_20D9740D8();
  sub_20D9740C8();
  type metadata accessor for UtilityRateView(0);
  UtilityRateInfoSnapshot.peakSymbol.getter();
  UtilityRateInfoSnapshot.attributedPeak.getter(&v49);
  v7 = v52;
  if (v52 != 1)
  {
    v38 = v3;
    v39 = v1;
    v9 = v50;
    v8 = v51;
    v10 = v49;
    v44 = v49;
    v45 = v50 & 1;
    v46 = v51;
    v47 = v52;
    v48 = v53;
    PeakPeriodAttributes.variableValue.getter();
    v11 = v9;
    v12 = v8;
    v3 = v38;
    v1 = v39;
    sub_20D8EE800(v10, v11, v12, v7);
  }

  sub_20D9749A8();
  sub_20D9740A8();

  sub_20D9740C8();
  sub_20D974108();
  v13 = sub_20D9745A8();
  v15 = v14;
  v17 = v16;
  v18 = v40;
  (*(v40 + 104))(v5, *MEMORY[0x277CE0A50], v3);
  MEMORY[0x20F3225C0](0, 0xE000000000000000, v5, 44.0);
  (*(v18 + 8))(v5, v3);
  v20 = v41;
  v19 = v42;
  (*(v42 + 104))(v41, *MEMORY[0x277CE0A10], v1);
  sub_20D974478();

  (*(v19 + 8))(v20, v1);
  v21 = sub_20D974558();
  v23 = v22;
  v25 = v24;

  sub_20D7EADC0(v13, v15, v17 & 1);

  sub_20D9743D8();
  v26 = sub_20D9744F8();
  v28 = v27;
  v30 = v29;
  sub_20D7EADC0(v21, v23, v25 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_20D977210;
  *(v31 + 32) = sub_20D974938();
  *(v31 + 40) = sub_20D974928();
  v49 = MEMORY[0x20F322D80](v31);
  v32 = sub_20D974518();
  v34 = v33;
  LOBYTE(v19) = v35;
  v37 = v36;
  sub_20D7EADC0(v26, v28, v30 & 1);

  v49 = v32;
  v50 = v34;
  LOBYTE(v51) = v19 & 1;
  v52 = v37;
  sub_20D9747D8();
  sub_20D7EADC0(v32, v34, v19 & 1);
}

uint64_t sub_20D935520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC90, &qword_20D97EEA0);
  MEMORY[0x28223BE20](v114);
  v113 = &v96 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC98, &unk_20D97EEA8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v116 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v115 = &v96 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C08, &qword_20D977450);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v96 - v9;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  MEMORY[0x28223BE20](v121);
  v12 = &v96 - v11;
  v13 = sub_20D974458();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BCA0, &qword_20D97EEB8);
  MEMORY[0x28223BE20](v107);
  v104 = &v96 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BCA8, &qword_20D97EEC0);
  v108 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v105 = &v96 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BCB0, &qword_20D97EEC8);
  v109 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v106 = &v96 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BCB8, &qword_20D97EED0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v103 = &v96 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BCC0, &qword_20D97EED8);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v112 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v122 = &v96 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BCC8, &qword_20D97EEE0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v111 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v110 = &v96 - v32;
  sub_20D936378(&v96 - v32);
  v33 = *(a1 + 48);
  v119 = v14;
  v120 = v13;
  v118 = v16;
  if (v33)
  {
    v97 = v18;
    v98 = v23;
    v99 = v20;
    v100 = v22;
    v101 = v10;
    v102 = a1;
    v34 = *(a1 + 16);
    v35 = *(a1 + 24);
    *&v128 = v34;
    *(&v128 + 1) = v35;
    sub_20D7E1EF8();

    v36 = sub_20D9745C8();
    v38 = v37;
    v40 = v39;
    sub_20D974438();
    (*(v14 + 104))(v16, *MEMORY[0x277CE0A10], v13);
    sub_20D974478();

    (*(v14 + 8))(v16, v13);
    v41 = sub_20D974558();
    v43 = v42;
    v45 = v44;
    v47 = v46;

    sub_20D7EADC0(v36, v38, v40 & 1);

    *&v128 = v41;
    *(&v128 + 1) = v43;
    LOBYTE(v129) = v45 & 1;
    *(&v129 + 1) = v47;
    v48 = *MEMORY[0x277CDF9D8];
    v49 = sub_20D973D58();
    (*(*(v49 - 8) + 104))(v12, v48, v49);
    sub_20D9308D4(&qword_281127030, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    result = sub_20D974FD8();
    if ((result & 1) == 0)
    {
      goto LABEL_8;
    }

    sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0, MEMORY[0x277D84470]);
    v51 = v104;
    sub_20D974778();
    sub_20D7E3944(v12, &qword_27C839080, &qword_20D977AC0);
    sub_20D7EADC0(v41, v43, v45 & 1);

    v52 = [objc_opt_self() labelColor];
    v53 = sub_20D974888();
    KeyPath = swift_getKeyPath();
    v55 = v107;
    v56 = (v51 + *(v107 + 36));
    *v56 = KeyPath;
    v56[1] = v53;
    v57 = *MEMORY[0x277CE09A0];
    v58 = sub_20D9743C8();
    v59 = *(v58 - 8);
    v60 = v101;
    (*(v59 + 104))(v101, v57, v58);
    (*(v59 + 56))(v60, 0, 1, v58);
    v61 = sub_20D937244();
    v62 = v105;
    sub_20D9746F8();
    sub_20D7E3944(v60, &qword_27C838C08, &qword_20D977450);
    sub_20D7E3944(v51, &qword_27C83BCA0, &qword_20D97EEB8);
    sub_20D9743F8();
    *&v128 = v55;
    *(&v128 + 1) = v61;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v64 = v106;
    v65 = v97;
    sub_20D974708();
    (*(v108 + 8))(v62, v65);
    *&v128 = v65;
    *(&v128 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v66 = v103;
    v67 = v99;
    sub_20D9747D8();
    (*(v109 + 8))(v64, v67);
    sub_20D7EAF18(v66, v122, &qword_27C83BCB8, &qword_20D97EED0);
    v68 = 0;
    a1 = v102;
    v22 = v100;
    v23 = v98;
  }

  else
  {
    v68 = 1;
  }

  (*(v23 + 56))(v122, v68, 1, v22);
  v69 = *(a1 + 40);
  *&v128 = *(a1 + 32);
  *(&v128 + 1) = v69;
  sub_20D7E1EF8();

  v70 = sub_20D9745C8();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  sub_20D974488();
  v77 = v118;
  v78 = v119;
  v79 = v120;
  (*(v119 + 104))(v118, *MEMORY[0x277CE0A18], v120);
  v80 = sub_20D974478();

  (*(v78 + 8))(v77, v79);
  v81 = swift_getKeyPath();
  v127 = v74 & 1;
  *&v123 = v70;
  *(&v123 + 1) = v72;
  LOBYTE(v124) = v74 & 1;
  *(&v124 + 1) = v76;
  LOWORD(v125) = 256;
  *(&v125 + 1) = v81;
  v126 = v80;
  v82 = *MEMORY[0x277CDFA00];
  v83 = sub_20D973D58();
  (*(*(v83 - 8) + 104))(v12, v82, v83);
  sub_20D9308D4(&qword_281127030, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_20D974FD8();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BCD0, &qword_20D97EF18);
    sub_20D937038();
    sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0, MEMORY[0x277D84470]);
    v84 = v113;
    sub_20D974778();
    sub_20D7E3944(v12, &qword_27C839080, &qword_20D977AC0);
    v128 = v123;
    v129 = v124;
    v130 = v125;
    v131 = v126;
    sub_20D7E3944(&v128, &qword_27C83BCD0, &qword_20D97EF18);
    v85 = [objc_opt_self() secondaryLabelColor];
    v86 = sub_20D974888();
    v87 = swift_getKeyPath();
    v88 = (v84 + *(v114 + 36));
    *v88 = v87;
    v88[1] = v86;
    sub_20D9370F0();
    v89 = v115;
    sub_20D9747D8();
    sub_20D7E3944(v84, &qword_27C83BC90, &qword_20D97EEA0);
    v90 = v110;
    v91 = v111;
    sub_20D7EB7E8(v110, v111, &qword_27C83BCC8, &qword_20D97EEE0);
    v92 = v112;
    sub_20D7EB7E8(v122, v112, &qword_27C83BCC0, &qword_20D97EED8);
    v93 = v116;
    sub_20D7EB7E8(v89, v116, &qword_27C83BC98, &unk_20D97EEA8);
    v94 = v117;
    sub_20D7EB7E8(v91, v117, &qword_27C83BCC8, &qword_20D97EEE0);
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BCE8, &qword_20D97EF58);
    sub_20D7EB7E8(v92, v94 + *(v95 + 48), &qword_27C83BCC0, &qword_20D97EED8);
    sub_20D7EB7E8(v93, v94 + *(v95 + 64), &qword_27C83BC98, &unk_20D97EEA8);
    sub_20D7E3944(v89, &qword_27C83BC98, &unk_20D97EEA8);
    sub_20D7E3944(v122, &qword_27C83BCC0, &qword_20D97EED8);
    sub_20D7E3944(v90, &qword_27C83BCC8, &qword_20D97EEE0);
    sub_20D7E3944(v93, &qword_27C83BC98, &unk_20D97EEA8);
    sub_20D7E3944(v92, &qword_27C83BCC0, &qword_20D97EED8);
    return sub_20D7E3944(v91, &qword_27C83BCC8, &qword_20D97EEE0);
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_20D936378@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  MEMORY[0x28223BE20](v32);
  v3 = &v31 - v2;
  v4 = sub_20D974458();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BCA0, &qword_20D97EEB8);
  MEMORY[0x28223BE20](v34);
  v33 = &v31 - v8;
  v9 = *v1;
  v10 = v1[1];
  v36 = v9;
  v37 = v10;
  sub_20D7E1EF8();

  v11 = sub_20D9745C8();
  v13 = v12;
  v15 = v14;
  sub_20D974498();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A10], v4);
  sub_20D974478();

  (*(v5 + 8))(v7, v4);
  v16 = sub_20D974558();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_20D7EADC0(v11, v13, v15 & 1);

  v36 = v16;
  v37 = v18;
  v38 = v20 & 1;
  v39 = v22;
  v23 = *MEMORY[0x277CDFA00];
  v24 = sub_20D973D58();
  (*(*(v24 - 8) + 104))(v3, v23, v24);
  sub_20D9308D4(&qword_281127030, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_20D974FD8();
  if (result)
  {
    sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0, MEMORY[0x277D84470]);
    v26 = v33;
    sub_20D974778();
    sub_20D7E3944(v3, &qword_27C839080, &qword_20D977AC0);
    sub_20D7EADC0(v16, v18, v20 & 1);

    v27 = [objc_opt_self() labelColor];
    v28 = sub_20D974888();
    KeyPath = swift_getKeyPath();
    v30 = (v26 + *(v34 + 36));
    *v30 = KeyPath;
    v30[1] = v28;
    sub_20D937244();
    sub_20D9747D8();
    return sub_20D7E3944(v26, &qword_27C83BCA0, &qword_20D97EEB8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20D93678C@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v7[2] = *(v2 + 32);
  v8 = *(v2 + 48);
  *a2 = sub_20D974168();
  *(a2 + 8) = 0x3FF0000000000000;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC88, &qword_20D97EE98);
  return sub_20D935520(v7, a2 + *(v5 + 44));
}

uint64_t sub_20D936804()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  v8 = v7;
  v9 = sub_20D975108(v5, 0, 0, v6, v2, "Utility Rate Widget title when no homes have a utility configured.", 66, 2);
  sub_20D974FE8();
  sub_20D9726B8();
  sub_20D975108(v5, 0, 0, v6, v2, "Utility Rate Widget body text when no homes have a utility configured.", 70, 2);
  return v9;
}

uint64_t sub_20D9369FC(uint64_t a1)
{
  result = type metadata accessor for UtilityRateInfoSnapshot(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_20D936A70()
{
  result = qword_27C83BBD0;
  if (!qword_27C83BBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BBD8, &qword_20D97EC90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BB88, &qword_20D97EBF0);
    sub_20D7EBC4C(&qword_27C83BBA0, &qword_27C83BB88, &qword_20D97EBF0, MEMORY[0x277CDD828]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BBA8, &qword_20D97EC08);
    sub_20D936E9C(&qword_27C83BBB0, &qword_27C83BBA8, &qword_20D97EC08, sub_20D933FA4);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BBD0);
  }

  return result;
}

uint64_t sub_20D936C38(uint64_t a1)
{
  result = type metadata accessor for UtilityRateInfoSnapshot(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20D936D10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D936D78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
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

uint64_t sub_20D936DF4(uint64_t a1, int a2)
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

uint64_t sub_20D936E3C(uint64_t result, int a2, int a3)
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

uint64_t sub_20D936E9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_20D936F20()
{
  result = qword_27C83BC80;
  if (!qword_27C83BC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BC20, &qword_20D97EDB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BC10, &qword_20D97EDA0);
    sub_20D7EBC4C(&qword_27C83BC30, &qword_27C83BC10, &qword_20D97EDA0, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BC80);
  }

  return result;
}

unint64_t sub_20D937038()
{
  result = qword_27C83BCD8;
  if (!qword_27C83BCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BCD0, &qword_20D97EF18);
    sub_20D91F06C();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BCD8);
  }

  return result;
}

unint64_t sub_20D9370F0()
{
  result = qword_27C83BCE0;
  if (!qword_27C83BCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BC90, &qword_20D97EEA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BCD0, &qword_20D97EF18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839080, &qword_20D977AC0);
    sub_20D937038();
    sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281126F48, &qword_27C838B68, &unk_20D9771A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BCE0);
  }

  return result;
}

unint64_t sub_20D937244()
{
  result = qword_27C83BCF0;
  if (!qword_27C83BCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BCA0, &qword_20D97EEB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839080, &qword_20D977AC0);
    sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281126F48, &qword_27C838B68, &unk_20D9771A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BCF0);
  }

  return result;
}

uint64_t GridForecastSnapshotManager.setTestingSnapshot(type:error:gridID:locationCity:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t a1))
{
  v116 = a2;
  v111 = a4;
  v112 = a6;
  v109 = a3;
  v110 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v101 - v8;
  v113 = sub_20D9729D8();
  v108 = *(v113 - 8);
  v10 = MEMORY[0x28223BE20](v113);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v101 - v13;
  v15 = type metadata accessor for GridForecastSnapshotType(0);
  v16 = MEMORY[0x28223BE20](v15);
  v107 = (&v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v101 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = (&v101 - v21);
  v23 = type metadata accessor for GridForecastSnapshot(0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v114 = &v101 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v101 - v30;
  MEMORY[0x28223BE20](v29);
  v115 = &v101 - v32;
  LODWORD(v116) = *v116;
  sub_20D86CC5C(a1, v22, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_20D86DC2C(v22, type metadata accessor for GridForecastSnapshotType);
    v64 = v20;
    v106 = v20;
    v107 = type metadata accessor for GridForecastSnapshotType;
    sub_20D86CC5C(a1, v20, type metadata accessor for GridForecastSnapshotType);
    static EnergyWindows.mockNoCleanEnergyWindows()(v14);
    v65 = v109;
    if (!v111)
    {
      v65 = 0;
    }

    v109 = v65;
    v66 = 0xE000000000000000;
    if (v111)
    {
      v67 = v111;
    }

    else
    {
      v67 = 0xE000000000000000;
    }

    v104 = v67;
    v68 = v110;
    if (!v112)
    {
      v68 = 0;
    }

    v110 = v68;
    v69 = v108;
    if (v112)
    {
      v66 = v112;
    }

    v105 = v66;
    sub_20D86CC5C(v64, v31, type metadata accessor for GridForecastSnapshotType);
    v70 = *(v69 + 16);
    v71 = v113;
    v70(&v31[v23[5]], v14, v113);
    v72 = &v31[v23[6]];
    v73 = v104;
    *v72 = v109;
    v72[1] = v73;
    v74 = &v31[v23[7]];
    v75 = v105;
    *v74 = v110;
    v74[1] = v75;
    v31[v23[9]] = v116;
    v70(v9, v14, v71);
    (*(v69 + 56))(v9, 0, 1, v71);

    sub_20D87934C(v9);
    v77 = v76;
    sub_20D7E3944(v9, &qword_27C838A00, &qword_20D976750);
    v119[0] = v77;
    v78 = sub_20D8797EC(v119);

    (*(v69 + 8))(v14, v71);
    sub_20D86DC2C(v106, v107);
    *&v31[v23[8]] = v78;
    v79 = v31;
    v51 = v115;
    sub_20D86CCC4(v79, v115);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v80 = sub_20D9734F8();
    __swift_project_value_buffer(v80, qword_28112AC00);
    v81 = v117;

    v82 = sub_20D9734D8();
    v83 = sub_20D975448();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v119[0] = v85;
      *v84 = 136315650;
      *(v84 + 4) = sub_20D7F4DC8(0xD000000000000033, 0x800000020D98ADC0, v119);
      *(v84 + 12) = 2080;
      *(v84 + 14) = sub_20D7F4DC8(*(v81 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v81 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v119);
      *(v84 + 22) = 2080;
      swift_beginAccess();
      v86 = GridForecastSnapshot.description.getter();
      v88 = sub_20D7F4DC8(v86, v87, v119);

      *(v84 + 24) = v88;
      _os_log_impl(&dword_20D7C9000, v82, v83, "%s(%s): CL: %s", v84, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v85, -1, -1);
      MEMORY[0x20F324260](v84, -1, -1);
    }

    swift_beginAccess();
    v89 = v114;
    sub_20D86CC5C(v51, v114, type metadata accessor for GridForecastSnapshot);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v118 = v81;
    sub_20D890058();
    sub_20D972848();

    sub_20D86DC2C(v89, type metadata accessor for GridForecastSnapshot);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v106 = v22;

    v34 = a1;
    v35 = v107;
    v105 = type metadata accessor for GridForecastSnapshotType;
    sub_20D86CC5C(v34, v107, type metadata accessor for GridForecastSnapshotType);
    static EnergyWindows.mockNoCleanEnergyWindows()(v12);
    v36 = v109;
    if (!v111)
    {
      v36 = 0;
    }

    v109 = v36;
    v37 = 0xE000000000000000;
    if (v111)
    {
      v38 = v111;
    }

    else
    {
      v38 = 0xE000000000000000;
    }

    v102 = v38;
    v39 = v110;
    if (!v112)
    {
      v39 = 0;
    }

    v110 = v39;
    if (v112)
    {
      v37 = v112;
    }

    v103 = v37;
    sub_20D86CC5C(v35, v26, type metadata accessor for GridForecastSnapshotType);
    v40 = v108;
    v41 = *(v108 + 16);
    v42 = &v26[v23[5]];
    v104 = v12;
    v43 = v113;
    v41(v42, v12, v113);
    v44 = &v26[v23[6]];
    v45 = v102;
    *v44 = v109;
    v44[1] = v45;
    v46 = &v26[v23[7]];
    v47 = v103;
    *v46 = v110;
    v46[1] = v47;
    v26[v23[9]] = v116;
    v41(v9, v12, v43);
    (*(v40 + 56))(v9, 0, 1, v43);

    sub_20D87934C(v9);
    v49 = v48;
    sub_20D7E3944(v9, &qword_27C838A00, &qword_20D976750);
    v119[0] = v49;
    v50 = sub_20D8797EC(v119);

    (*(v40 + 8))(v104, v43);
    sub_20D86DC2C(v107, v105);
    *&v26[v23[8]] = v50;
    v51 = v115;
    sub_20D86CCC4(v26, v115);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v52 = sub_20D9734F8();
    __swift_project_value_buffer(v52, qword_28112AC00);
    v53 = v117;

    v54 = sub_20D9734D8();
    v55 = sub_20D975448();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v119[0] = v57;
      *v56 = 136315650;
      *(v56 + 4) = sub_20D7F4DC8(0xD000000000000033, 0x800000020D98ADC0, v119);
      *(v56 + 12) = 2080;
      *(v56 + 14) = sub_20D7F4DC8(*(v53 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v53 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v119);
      *(v56 + 22) = 2080;
      swift_beginAccess();
      v58 = GridForecastSnapshot.description.getter();
      v60 = sub_20D7F4DC8(v58, v59, v119);

      *(v56 + 24) = v60;
      _os_log_impl(&dword_20D7C9000, v54, v55, "%s(%s): F: %s", v56, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v57, -1, -1);
      MEMORY[0x20F324260](v56, -1, -1);
    }

    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    swift_beginAccess();
    v62 = v114;
    sub_20D86CC5C(v51, v114, type metadata accessor for GridForecastSnapshot);
    v63 = swift_getKeyPath();
    MEMORY[0x28223BE20](v63);
    v118 = v53;
    sub_20D890058();
    sub_20D972848();

    sub_20D86DC2C(v62, type metadata accessor for GridForecastSnapshot);
    sub_20D7E3944(v106 + v61, &qword_27C8389F8, &qword_20D978460);
LABEL_31:
    v91 = type metadata accessor for GridForecastSnapshot;
    v92 = v51;
    return sub_20D86DC2C(v92, v91);
  }

  v93 = v22;
  if ((sub_20D972ED8() & 1) == 0)
  {
    v94 = v117;
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v95 = sub_20D9734F8();
    __swift_project_value_buffer(v95, qword_28112AC00);

    v96 = sub_20D9734D8();
    v97 = sub_20D975458();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v119[0] = v99;
      *v98 = 136315394;
      *(v98 + 4) = sub_20D7F4DC8(0xD000000000000033, 0x800000020D98ADC0, v119);
      *(v98 + 12) = 2080;
      *(v98 + 14) = sub_20D7F4DC8(*(v94 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v94 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v119);
      _os_log_impl(&dword_20D7C9000, v96, v97, "%s(%s): This method is only for location & fixed snapshots", v98, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v99, -1, -1);
      MEMORY[0x20F324260](v98, -1, -1);
    }

    v91 = type metadata accessor for GridForecastSnapshotType;
    v92 = v93;
    return sub_20D86DC2C(v92, v91);
  }

  result = sub_20D975738();
  __break(1u);
  return result;
}

void sub_20D938134(uint64_t a1)
{
  sub_20D864F8C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DynamicEnergyUsagesCalculations(319);
    if (v2 <= 0x3F)
    {
      sub_20D93EB94(319, &qword_27C83BD18, &type metadata for HistoricalUsageIntervalView.FilterButtonsType, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_20D93EAD8(319, &qword_27C83BD20, &qword_27C83B158, &qword_20D97D260, MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20D938268(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  v24 = *(a1 + 16);
  sub_20D95DA9C(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_20D9755E8();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_20D95DA9C((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_20D93E67C(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_20D93E67C(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_20D938484@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD30, &qword_20D97F050);
  MEMORY[0x28223BE20](v146);
  v138 = &v116 - v3;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD38, &qword_20D97F058);
  MEMORY[0x28223BE20](v141);
  v144 = &v116 - v4;
  v5 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v139 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v116 - v8;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD40, &qword_20D97F060);
  MEMORY[0x28223BE20](v142);
  v11 = &v116 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD48, &qword_20D97F068);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v145 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v143 = &v116 - v15;
  v16 = type metadata accessor for FilterButtonsAndPickerView(0);
  v135 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v136 = v17;
  v137 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20D9741E8();
  v131 = *(v18 - 8);
  v132 = v18;
  MEMORY[0x28223BE20](v18);
  v129 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_20D974458();
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v21 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD50, &qword_20D97F070);
  MEMORY[0x28223BE20](v124);
  v23 = &v116 - v22;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD58, &qword_20D97F078);
  MEMORY[0x28223BE20](v127);
  v25 = &v116 - v24;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD60, &qword_20D97F080);
  MEMORY[0x28223BE20](v133);
  v134 = &v116 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD68, &qword_20D97F088);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v130 = &v116 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD70, &qword_20D97F090);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v140 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = *(a1 + v16[9]);
  v148 = &v116 - v34;
  if (v33 == 1)
  {
    v120 = v28;
    v121 = v27;
    v116 = v9;
    v117 = v11;
    if (qword_27C838740 != -1)
    {
      swift_once();
    }

    v149 = qword_27C840E50;
    v150 = *algn_27C840E58;
    v122 = v16;
    v35 = a1 + v16[6];
    v36 = *v35;
    v118 = *(v35 + 1);
    v119 = v36;
    v128 = v35[16];
    *&v154 = v36;
    *(&v154 + 1) = v118;
    LOBYTE(v155) = v128;

    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD98, &qword_20D97F0A8);
    sub_20D974B48();
    v154 = v151;
    LOBYTE(v155) = v152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BDA0, &qword_20D97F0B0);
    sub_20D913F54();
    sub_20D7EBC4C(&qword_27C83BDA8, &qword_27C83BDA0, &qword_20D97F0B0, MEMORY[0x277CE14C0]);
    sub_20D7E1EF8();
    v37 = a1;
    sub_20D974AF8();
    sub_20D974428();
    v38 = v123;
    v39 = v125;
    (*(v123 + 104))(v21, *MEMORY[0x277CE0A10], v125);
    v40 = sub_20D974478();

    (*(v38 + 8))(v21, v39);
    KeyPath = swift_getKeyPath();
    v42 = &v23[*(v124 + 36)];
    *v42 = KeyPath;
    v42[1] = v40;
    sub_20D9743D8();
    sub_20D93DF48();
    sub_20D974708();
    sub_20D7E3944(v23, &qword_27C83BD50, &qword_20D97F070);
    v43 = sub_20D974958();
    v44 = swift_getKeyPath();
    v45 = &v25[*(v127 + 36)];
    *v45 = v44;
    v45[1] = v43;
    v46 = v129;
    sub_20D9741D8();
    sub_20D93E02C();
    v47 = v134;
    v48 = v132;
    sub_20D974738();
    (*(v131 + 8))(v46, v48);
    sub_20D7E3944(v25, &qword_27C83BD58, &qword_20D97F078);
    LOBYTE(v43) = sub_20D974338();
    sub_20D973AD8();
    v49 = v47 + *(v133 + 36);
    *v49 = v43;
    *(v49 + 8) = v50;
    *(v49 + 16) = v51;
    *(v49 + 24) = v52;
    *(v49 + 32) = v53;
    *(v49 + 40) = 0;
    v54 = v118;
    v55 = v119;
    *&v154 = v119;
    *(&v154 + 1) = v118;
    LOBYTE(v155) = v128;
    MEMORY[0x20F322CD0](&v151, v126);
    LOBYTE(v154) = v151;
    a1 = v37;
    v56 = v37;
    v57 = v137;
    sub_20D93E120(v56, v137, type metadata accessor for FilterButtonsAndPickerView);
    v58 = (*(v135 + 80) + 16) & ~*(v135 + 80);
    v59 = swift_allocObject();
    sub_20D93EDF0(v57, v59 + v58, type metadata accessor for FilterButtonsAndPickerView);
    sub_20D93E208();
    sub_20D913FF0();
    v60 = v130;
    sub_20D974848();

    sub_20D7E3944(v47, &qword_27C83BD60, &qword_20D97F080);
    v62 = v120;
    v61 = v121;
    v63 = v148;
    (*(v120 + 32))(v148, v60, v121);
    (*(v62 + 56))(v63, 0, 1, v61);
    *&v154 = v55;
    *(&v154 + 1) = v54;
    LOBYTE(v155) = v128;
    MEMORY[0x20F322CD0](&v151, v126);
    if ((v151 & 1) == 0)
    {

      v16 = v122;
LABEL_13:
      v95 = a1;
      v96 = a1 + v16[8];
      v97 = *v96;
      v98 = *(v96 + 2);
      LOBYTE(v96) = v96[24];
      v154 = v97;
      *&v155 = v98;
      BYTE8(v155) = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD78, &qword_20D97F098);
      sub_20D974B48();
      v100 = *(&v151 + 1);
      v99 = v151;
      v101 = v152;
      v102 = v153;
      v103 = v116;
      sub_20D93E120(v95 + v16[5], v116, type metadata accessor for DynamicEnergyUsagesCalculations);
      v104 = *v95;

      v105 = v117;
      sub_20D939B54(v99, v100, v101, v102, v103, v104, v117);
      v106 = &qword_27C83BD40;
      v107 = &qword_20D97F060;
      sub_20D7EB7E8(v105, v144, &qword_27C83BD40, &qword_20D97F060);
      swift_storeEnumTagMultiPayload();
      sub_20D7EBC4C(&qword_27C83BD80, &qword_27C83BD40, &qword_20D97F060, &unk_20D97F308);
      sub_20D7EBC4C(&qword_27C83BD88, &qword_27C83BD30, &qword_20D97F050, &unk_20D97F308);
      v108 = v143;
      sub_20D9741B8();
      v109 = v105;
      goto LABEL_16;
    }

    v64 = sub_20D9757C8();

    v65 = v146;
    v16 = v122;
    if (v64)
    {
      goto LABEL_13;
    }
  }

  else
  {
    (*(v28 + 56))();
    v65 = v146;
  }

  v66 = a1 + v16[7];
  v67 = *v66;
  v68 = *(v66 + 2);
  LOBYTE(v66) = v66[24];
  v154 = v67;
  *&v155 = v68;
  BYTE8(v155) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD78, &qword_20D97F098);
  sub_20D974B48();
  v137 = *(&v151 + 1);
  v146 = v151;
  v69 = v152;
  v70 = v16;
  v71 = v153;
  v72 = v139;
  sub_20D93E120(a1 + v70[5], v139, type metadata accessor for DynamicEnergyUsagesCalculations);
  v73 = type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton(0);
  v74 = MEMORY[0x277D84F98];
  v75 = v65[12];
  v76 = v138;
  *&v138[v75] = MEMORY[0x277D84F98];
  v136 = v65[13];
  *(v76 + v136) = v74;
  *(v76 + v65[14]) = MEMORY[0x277D84F90];
  v77 = v65;
  v78 = (v76 + v65[15]);
  if (qword_27C838450 != -1)
  {
    swift_once();
  }

  v79 = unk_27C839870;
  v164 = xmmword_27C839880;
  v165 = xmmword_27C839890;
  v80 = xmmword_27C839890;
  v166 = xmmword_27C8398A0;
  v81 = xmmword_27C839830;
  v82 = xmmword_27C839840;
  v160 = xmmword_27C839840;
  v161 = xmmword_27C839850;
  v83 = xmmword_27C839850;
  v84 = xmmword_27C839860;
  v162 = xmmword_27C839860;
  v163 = unk_27C839870;
  v85 = xmmword_27C8397F0;
  v86 = xmmword_27C839800;
  v156 = xmmword_27C839800;
  v157 = xmmword_27C839810;
  v87 = xmmword_27C839810;
  v88 = xmmword_27C839820;
  v158 = xmmword_27C839820;
  v159 = xmmword_27C839830;
  v89 = xmmword_27C8397E0;
  v154 = xmmword_27C8397E0;
  v155 = xmmword_27C8397F0;
  v78[10] = xmmword_27C839880;
  v78[11] = v80;
  v78[12] = xmmword_27C8398A0;
  v78[6] = v82;
  v78[7] = v83;
  v78[8] = v84;
  v78[9] = v79;
  v78[2] = v86;
  v78[3] = v87;
  v78[4] = v88;
  v78[5] = v81;
  *v78 = v89;
  v78[1] = v85;
  sub_20D93E120(v72, v76 + v77[9], type metadata accessor for DynamicEnergyUsagesCalculations);
  v90 = v137;
  *v76 = v146;
  *(v76 + 8) = v90;
  *(v76 + 16) = v69;
  *(v76 + 24) = v71;
  *(v76 + v77[10]) = v73;
  *(v76 + v77[11]) = 0;
  *(v76 + v77[16]) = &unk_28249BD58;
  v91 = v72;
  if (*(v72 + *(type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0) + 36)))
  {
    sub_20D85D690(&v154, &v151);

    v93 = sub_20D93DDC8(v92, 0, 2);

    *(v76 + v75) = v93;

    v94 = sub_20D972D08();

    sub_20D93EF00(v91, type metadata accessor for DynamicEnergyUsagesCalculations);
    *(v76 + v136) = v94;
  }

  else
  {
    sub_20D85D690(&v154, &v151);
    sub_20D93EF00(v72, type metadata accessor for DynamicEnergyUsagesCalculations);
  }

  v108 = v143;
  v106 = &qword_27C83BD30;
  v107 = &qword_20D97F050;
  sub_20D7EB7E8(v76, v144, &qword_27C83BD30, &qword_20D97F050);
  swift_storeEnumTagMultiPayload();
  sub_20D7EBC4C(&qword_27C83BD80, &qword_27C83BD40, &qword_20D97F060, &unk_20D97F308);
  sub_20D7EBC4C(&qword_27C83BD88, &qword_27C83BD30, &qword_20D97F050, &unk_20D97F308);
  sub_20D9741B8();
  v109 = v76;
LABEL_16:
  sub_20D7E3944(v109, v106, v107);
  v110 = v148;
  v111 = v140;
  sub_20D7EB7E8(v148, v140, &qword_27C83BD70, &qword_20D97F090);
  v112 = v145;
  sub_20D7EB7E8(v108, v145, &qword_27C83BD48, &qword_20D97F068);
  v113 = v147;
  sub_20D7EB7E8(v111, v147, &qword_27C83BD70, &qword_20D97F090);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD90, &qword_20D97F0A0);
  sub_20D7EB7E8(v112, v113 + *(v114 + 48), &qword_27C83BD48, &qword_20D97F068);
  sub_20D7E3944(v108, &qword_27C83BD48, &qword_20D97F068);
  sub_20D7E3944(v110, &qword_27C83BD70, &qword_20D97F090);
  sub_20D7E3944(v112, &qword_27C83BD48, &qword_20D97F068);
  return sub_20D7E3944(v111, &qword_27C83BD70, &qword_20D97F090);
}

uint64_t sub_20D939458@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BDD8, &qword_20D97F128);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BDE0, &qword_20D97F130);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v30 = &v29 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  sub_20D9740F8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v15 = qword_28112ABE8;
  *v4 = sub_20D9745A8();
  *(v4 + 1) = v16;
  v4[16] = v17 & 1;
  *(v4 + 3) = v18;
  *(v4 + 16) = 257;
  v19 = sub_20D913F54();
  v33 = MEMORY[0x277CE0BD8];
  v34 = &type metadata for HistoricalUsageIntervalView.FilterButtonsType;
  v35 = MEMORY[0x277CE0BC8];
  v36 = v19;
  swift_getOpaqueTypeConformance2();
  sub_20D9747D8();
  v20 = *(v2 + 8);
  v20(v4, v1);
  sub_20D9740F8();
  *v4 = sub_20D9745A8();
  *(v4 + 1) = v21;
  v4[16] = v22 & 1;
  *(v4 + 3) = v23;
  *(v4 + 16) = 256;
  sub_20D9747D8();
  v20(v4, v1);
  v24 = v30;
  sub_20D7EB7E8(v14, v30, &qword_27C83BDE0, &qword_20D97F130);
  v25 = v31;
  sub_20D7EB7E8(v12, v31, &qword_27C83BDE0, &qword_20D97F130);
  v26 = v32;
  sub_20D7EB7E8(v24, v32, &qword_27C83BDE0, &qword_20D97F130);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BDE8, &qword_20D97F138);
  sub_20D7EB7E8(v25, v26 + *(v27 + 48), &qword_27C83BDE0, &qword_20D97F130);
  sub_20D7E3944(v12, &qword_27C83BDE0, &qword_20D97F130);
  sub_20D7E3944(v14, &qword_27C83BDE0, &qword_20D97F130);
  sub_20D7E3944(v25, &qword_27C83BDE0, &qword_20D97F130);
  return sub_20D7E3944(v24, &qword_27C83BDE0, &qword_20D97F130);
}

uint64_t sub_20D939874(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2)
  {
    v4 = sub_20D9757C8();

    if ((v4 & 1) == 0)
    {
      if (qword_281125088 != -1)
      {
        swift_once();
      }

      v5 = sub_20D9734F8();
      __swift_project_value_buffer(v5, qword_28112AB78);
      v6 = sub_20D9734D8();
      v7 = sub_20D975478();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *&v20 = v9;
        *v8 = 136315138;
        *(v8 + 4) = sub_20D7F4DC8(2036625250, 0xE400000000000000, &v20);
        _os_log_impl(&dword_20D7C9000, v6, v7, "%s clearing pricing index", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x20F324260](v9, -1, -1);
        MEMORY[0x20F324260](v8, -1, -1);
      }

      v10 = *(type metadata accessor for FilterButtonsAndPickerView(0) + 32);
      goto LABEL_14;
    }
  }

  else
  {
  }

  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v11 = sub_20D9734F8();
  __swift_project_value_buffer(v11, qword_28112AB78);
  v12 = sub_20D9734D8();
  v13 = sub_20D975478();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v20 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_20D7F4DC8(2036625250, 0xE400000000000000, &v20);
    _os_log_impl(&dword_20D7C9000, v12, v13, "%s clearing grid quality index", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F324260](v15, -1, -1);
    MEMORY[0x20F324260](v14, -1, -1);
  }

  v10 = *(type metadata accessor for FilterButtonsAndPickerView(0) + 28);
LABEL_14:
  v16 = (a3 + v10);
  v17 = *v16;
  v18 = *(v16 + 2);
  LOBYTE(v16) = *(v16 + 24);
  v20 = v17;
  v21 = v18;
  v22 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD78, &qword_20D97F098);
  return sub_20D974B28();
}

uint64_t sub_20D939B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD40, &qword_20D97F060);
  v15 = MEMORY[0x277D84F98];
  v33 = v14[12];
  *(a7 + v33) = MEMORY[0x277D84F98];
  v34 = v14[13];
  *(a7 + v34) = v15;
  *(a7 + v14[14]) = MEMORY[0x277D84F90];
  v16 = (a7 + v14[15]);
  if (qword_27C838450 != -1)
  {
    swift_once();
  }

  v17 = unk_27C839870;
  v36[10] = xmmword_27C839880;
  v36[11] = xmmword_27C839890;
  v18 = xmmword_27C839890;
  v36[12] = xmmword_27C8398A0;
  v19 = xmmword_27C839830;
  v20 = xmmword_27C839840;
  v36[6] = xmmword_27C839840;
  v36[7] = xmmword_27C839850;
  v21 = xmmword_27C839850;
  v22 = xmmword_27C839860;
  v36[8] = xmmword_27C839860;
  v36[9] = unk_27C839870;
  v23 = xmmword_27C8397F0;
  v24 = xmmword_27C839800;
  v36[2] = xmmword_27C839800;
  v36[3] = xmmword_27C839810;
  v25 = xmmword_27C839810;
  v26 = xmmword_27C839820;
  v36[4] = xmmword_27C839820;
  v36[5] = xmmword_27C839830;
  v27 = xmmword_27C8397E0;
  v36[0] = xmmword_27C8397E0;
  v36[1] = xmmword_27C8397F0;
  v16[10] = xmmword_27C839880;
  v16[11] = v18;
  v16[12] = xmmword_27C8398A0;
  v16[6] = v20;
  v16[7] = v21;
  v16[8] = v22;
  v16[9] = v17;
  v16[2] = v24;
  v16[3] = v25;
  v16[4] = v26;
  v16[5] = v19;
  *v16 = v27;
  v16[1] = v23;
  sub_20D93E120(a5, a7 + v14[9], type metadata accessor for DynamicEnergyUsagesCalculations);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + v14[10]) = &type metadata for FilterButtonsAndPickerView.PricingFilterButton;
  *(a7 + v14[11]) = a6;
  if (a6)
  {
    sub_20D85D690(v36, v35);

    v29 = sub_20D938268(v28);

    v35[0] = v29;

    sub_20D93D554(v35);

    *(a7 + v14[16]) = v35[0];
  }

  else
  {
    *(a7 + v14[16]) = MEMORY[0x277D84F90];
    sub_20D85D690(v36, v35);
  }

  v30 = *(a5 + *(type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0) + 32));
  if (!v30)
  {
    return sub_20D93EF00(a5, type metadata accessor for DynamicEnergyUsagesCalculations);
  }

  *(a7 + v33) = sub_20D93DDC8(v30, 0, 4);

  v31 = sub_20D972D08();

  result = sub_20D93EF00(a5, type metadata accessor for DynamicEnergyUsagesCalculations);
  *(a7 + v34) = v31;
  return result;
}

uint64_t sub_20D939E24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD78, &qword_20D97F098);
  sub_20D974B48();
  return v1;
}

uint64_t sub_20D939E8C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_20D974158();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD28, &qword_20D97F048);
  return sub_20D938484(v2, a2 + *(v4 + 44));
}

uint64_t sub_20D939EFC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A590, &qword_20D97B800);
  v33 = v6;
  v7 = *(a1 + 16);
  v31 = sub_20D7EBC4C(&qword_27C83BEC8, &qword_27C83A590, &qword_20D97B800, MEMORY[0x277D83980]);
  v40 = v6;
  v41 = MEMORY[0x277D83B88];
  v42 = v7;
  v43 = v31;
  v44 = MEMORY[0x277D83B98];
  v8 = sub_20D974BB8();
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v29 = &KeyPath - v9;
  v10 = sub_20D973DA8();
  v32 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v30 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v34 = &KeyPath - v13;
  v14 = *(a1 + 64);
  v28 = v2;
  v40 = *(v2 + v14);
  KeyPath = swift_getKeyPath();
  (*(v4 + 16))(&KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v17 = *(a1 + 24);
  *(v16 + 16) = v7;
  *(v16 + 24) = v17;
  (*(v4 + 32))(v16 + v15, &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v18 = *(v17 + 8);

  v19 = v29;
  sub_20D974B98();
  sub_20D974338();
  v39 = v18;
  WitnessTable = swift_getWitnessTable();
  v21 = v30;
  sub_20D974818();
  (*(v35 + 8))(v19, v8);
  v37 = WitnessTable;
  v38 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v22 = v32;
  v23 = *(v32 + 16);
  v24 = v34;
  v23(v34, v21, v10);
  v25 = *(v22 + 8);
  v25(v21, v10);
  v23(v36, v24, v10);
  return (v25)(v24, v10);
}

uint64_t sub_20D93A344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v37 = a4;
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v32 - v11;
  v13 = *v10;
  v36 = v14;
  v16 = type metadata accessor for FilterButtonsAndPickerView.CategoryFilterButtonsView(0, v15, v14, v14);
  v34 = *(*(a2 + v16[16]) + 16);
  v35 = v13;
  v17 = *(a2 + v16[13]);
  if (*(v17 + 16) && (v18 = sub_20D8D4AC0(v13), (v19 & 1) != 0))
  {
    v33 = 0;
    v32 = *(*(v17 + 56) + 8 * v18);
  }

  else
  {
    v32 = 0;
    v33 = 1;
  }

  v20 = sub_20D939E24();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = a2 + v16[9];
  v31 = *(v27 + *(type metadata accessor for DynamicEnergyUsagesCalculations(0) + 24));
  (*(v36 + 16))(v35, v34, v32, v33, v20, v22, v24, v26 & 1, v31, a3, v36);
  v28 = *(v6 + 16);
  v28(v12, v9, a3);
  v29 = *(v6 + 8);
  v29(v9, a3);
  v28(v37, v12, a3);
  return (v29)(v12, a3);
}

double sub_20D93A56C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  v11 = a3;
  if (qword_27C838450 != -1)
  {
    v35 = a2;
    v37 = a8;
    v38 = a4;
    swift_once();
    a2 = v35;
    a4 = v38;
    a8 = v37;
    v11 = a3;
  }

  v43 = a2;
  v48[10] = xmmword_27C839880;
  v48[11] = xmmword_27C839890;
  v48[12] = xmmword_27C8398A0;
  v48[6] = xmmword_27C839840;
  v48[7] = xmmword_27C839850;
  v48[8] = xmmword_27C839860;
  v48[9] = unk_27C839870;
  v48[2] = xmmword_27C839800;
  v48[3] = xmmword_27C839810;
  v48[4] = xmmword_27C839820;
  v48[5] = xmmword_27C839830;
  v48[0] = xmmword_27C8397E0;
  v48[1] = xmmword_27C8397F0;
  *&v45[150] = unk_27C839870;
  *&v45[166] = xmmword_27C839880;
  *&v45[182] = xmmword_27C839890;
  *&v45[198] = xmmword_27C8398A0;
  *&v45[86] = xmmword_27C839830;
  *&v45[102] = xmmword_27C839840;
  *&v45[118] = xmmword_27C839850;
  *&v45[134] = xmmword_27C839860;
  *&v45[22] = xmmword_27C8397F0;
  *&v45[38] = xmmword_27C839800;
  *&v45[54] = xmmword_27C839810;
  *&v45[70] = xmmword_27C839820;
  *&v45[6] = xmmword_27C8397E0;
  v47 = a4 & 1;
  v46 = a8 & 1;
  if (a4)
  {
    sub_20D85D690(v48, v44);
    v14 = 0xE300000000000000;
    v15 = 7104878;
  }

  else
  {
    sub_20D85D690(v48, v44);
    v15 = sub_20D9757A8();
    v14 = v16;
  }

  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v17 = sub_20D9734F8();
  __swift_project_value_buffer(v17, qword_28112AB78);

  v18 = sub_20D9734D8();
  v19 = sub_20D975478();

  if (os_log_type_enabled(v18, v19))
  {
    v39 = v11;
    v20 = swift_slowAlloc();
    v40 = a5;
    v21 = swift_slowAlloc();
    v44[0] = v21;
    *v20 = 136315906;
    *(v20 + 4) = sub_20D7F4DC8(0xD00000000000003FLL, 0x800000020D98AF70, v44);
    *(v20 + 12) = 2048;
    *(v20 + 14) = a1;
    *(v20 + 22) = 2048;
    v22 = v43;
    *(v20 + 24) = v43;
    *(v20 + 32) = 2080;
    v23 = sub_20D7F4DC8(v15, v14, v44);

    *(v20 + 34) = v23;
    _os_log_impl(&dword_20D7C9000, v18, v19, "PricingFilterButton:%s %ld (of %ld): %s", v20, 0x2Au);
    swift_arrayDestroy();
    v24 = v21;
    a5 = v40;
    MEMORY[0x20F324260](v24, -1, -1);
    v25 = v20;
    v11 = v39;
    MEMORY[0x20F324260](v25, -1, -1);
  }

  else
  {

    v22 = v43;
  }

  v26 = *&v45[176];
  *(a9 + 218) = *&v45[160];
  *(a9 + 234) = v26;
  *(a9 + 250) = *&v45[192];
  v27 = *&v45[112];
  *(a9 + 154) = *&v45[96];
  *(a9 + 170) = v27;
  v28 = *&v45[144];
  *(a9 + 186) = *&v45[128];
  *(a9 + 202) = v28;
  v29 = *&v45[48];
  *(a9 + 90) = *&v45[32];
  *(a9 + 106) = v29;
  v30 = *&v45[80];
  *(a9 + 122) = *&v45[64];
  *(a9 + 138) = v30;
  result = *v45;
  v32 = *&v45[16];
  *(a9 + 58) = *v45;
  v33 = v47;
  v34 = v46;
  *a9 = a1;
  *(a9 + 8) = v22;
  *(a9 + 16) = v11;
  *(a9 + 24) = v33;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = v34;
  *(a9 + 57) = a10 & 1;
  *(a9 + 264) = *&v45[206];
  *(a9 + 74) = v32;
  return result;
}

uint64_t sub_20D93A92C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  memcpy(v47, v1, sizeof(v47));
  v5 = v47[0];
  v39 = *&v47[0];
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = *(&v47[0] + 1);
  PeakPeriodAttributes.variableValue.getter();
  v6 = sub_20D9749A8();
  v48 = *&v47[1];
  v49 = BYTE8(v47[1]);
  v39 = v5;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = *(&v5 + 1);
  v7 = PeakPeriodAttributes.peakName.getter();
  v36 = v8;
  v37 = v7;

  v46[0] = v47[2];
  *(v46 + 9) = *(&v47[2] + 9);

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD78, &qword_20D97F098);
  MEMORY[0x20F322CD0](&v44, v9);
  v10 = v44;
  v11 = v45;
  v12 = *&v47[5];
  v13 = BYTE9(v47[3]);
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B150, &qword_20D97D200);
  swift_storeEnumTagMultiPayload();
  v14 = v2[5];
  *(v4 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  swift_storeEnumTagMultiPayload();
  *(v4 + v2[6]) = v5;
  v15 = v4 + v2[7];
  *v15 = v48;
  v15[8] = v49;
  v16 = (v4 + v2[8]);
  v17 = v36;
  *v16 = v37;
  v16[1] = v17;
  *(v4 + v2[9]) = v6;
  v18 = v4 + v2[10];
  *v18 = v10;
  v18[8] = v11;
  *(v4 + v2[11]) = v12;
  *(v4 + v2[12]) = 0;
  *(v4 + v2[13]) = v13;
  v19 = v2[14];
  v20 = qword_27C838450;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = unk_27C839870;
  v46[10] = xmmword_27C839880;
  v46[11] = xmmword_27C839890;
  v22 = xmmword_27C839890;
  v46[12] = xmmword_27C8398A0;
  v23 = xmmword_27C839830;
  v24 = xmmword_27C839840;
  v46[6] = xmmword_27C839840;
  v46[7] = xmmword_27C839850;
  v25 = xmmword_27C839850;
  v26 = xmmword_27C839860;
  v46[8] = xmmword_27C839860;
  v46[9] = unk_27C839870;
  v27 = xmmword_27C8397F0;
  v28 = xmmword_27C839800;
  v46[2] = xmmword_27C839800;
  v46[3] = xmmword_27C839810;
  v29 = xmmword_27C839810;
  v30 = xmmword_27C839820;
  v46[4] = xmmword_27C839820;
  v46[5] = xmmword_27C839830;
  v31 = xmmword_27C8397E0;
  v46[0] = xmmword_27C8397E0;
  v46[1] = xmmword_27C8397F0;
  v32 = (v4 + v19);
  v32[10] = xmmword_27C839880;
  v32[11] = v22;
  v32[12] = xmmword_27C8398A0;
  v32[6] = v24;
  v32[7] = v25;
  v32[8] = v26;
  v32[9] = v21;
  v32[2] = v28;
  v32[3] = v29;
  v32[4] = v30;
  v32[5] = v23;
  *v32 = v31;
  v32[1] = v27;
  v33 = swift_allocObject();
  memcpy((v33 + 16), v47, 0x110uLL);
  sub_20D85D690(v46, &v39);
  sub_20D93EF68(v47, &v39);
  sub_20D93EEB8(&qword_27C83BED8, type metadata accessor for FilterButtonsAndPickerView.UsageFilterView, &unk_20D97F440);
  sub_20D974748();

  return sub_20D93EF00(v4, type metadata accessor for FilterButtonsAndPickerView.UsageFilterView);
}

uint64_t sub_20D93AD10(uint64_t *a1)
{
  v17[0] = *(a1 + 2);
  *(v17 + 9) = *(a1 + 41);
  *v14 = *(a1 + 2);
  *(&v14[1] + 1) = *(a1 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD78, &qword_20D97F098);
  MEMORY[0x20F322CD0](&v15);
  v2 = *a1;
  if ((v16 & 1) != 0 || v15 != v2)
  {
    if (qword_281125088 != -1)
    {
      swift_once();
    }

    v8 = sub_20D9734F8();
    __swift_project_value_buffer(v8, qword_28112AB78);
    sub_20D93EF68(a1, v14);
    v9 = sub_20D9734D8();
    v10 = sub_20D975478();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_20D7F4DC8(2036625250, 0xE400000000000000, v14);
      *(v11 + 12) = 2048;
      *(v11 + 14) = v2;
      sub_20D93EFA0(a1);
      _os_log_impl(&dword_20D7C9000, v9, v10, "%s setting selected index to %ld", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x20F324260](v12, -1, -1);
      MEMORY[0x20F324260](v11, -1, -1);
    }

    else
    {
      sub_20D93EFA0(a1);
    }

    *v14 = v17[0];
    *(&v14[1] + 1) = *(v17 + 9);
    v15 = v2;
    v16 = 0;
  }

  else
  {
    if (qword_281125088 != -1)
    {
      swift_once();
    }

    v3 = sub_20D9734F8();
    __swift_project_value_buffer(v3, qword_28112AB78);
    v4 = sub_20D9734D8();
    v5 = sub_20D975478();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_20D7F4DC8(2036625250, 0xE400000000000000, v14);
      _os_log_impl(&dword_20D7C9000, v4, v5, "%s clearing selected index", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x20F324260](v7, -1, -1);
      MEMORY[0x20F324260](v6, -1, -1);
    }

    *v14 = v17[0];
    *(&v14[1] + 1) = *(v17 + 9);
    v15 = 0;
    v16 = 1;
  }

  return sub_20D974B28();
}

uint64_t sub_20D93B03C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton(0);
  sub_20D7EB7E8(v1 + *(v10 + 40), v9, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D973D58();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_20D975468();
    v13 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_20D93B244@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton(0);
  sub_20D7EB7E8(v1 + *(v10 + 44), v9, &qword_27C838AA0, &qword_20D978750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D973B18();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_20D975468();
    v13 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_20D93B44C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  if (qword_27C838450 != -1)
  {
    swift_once();
  }

  v16 = unk_27C839870;
  v45[10] = xmmword_27C839880;
  v45[11] = xmmword_27C839890;
  v17 = xmmword_27C839890;
  v45[12] = xmmword_27C8398A0;
  v18 = xmmword_27C839830;
  v19 = xmmword_27C839840;
  v45[6] = xmmword_27C839840;
  v45[7] = xmmword_27C839850;
  v20 = xmmword_27C839850;
  v21 = xmmword_27C839860;
  v45[8] = xmmword_27C839860;
  v45[9] = unk_27C839870;
  v22 = xmmword_27C8397F0;
  v23 = xmmword_27C839800;
  v45[2] = xmmword_27C839800;
  v45[3] = xmmword_27C839810;
  v24 = xmmword_27C839810;
  v25 = xmmword_27C839820;
  v45[4] = xmmword_27C839820;
  v45[5] = xmmword_27C839830;
  v26 = xmmword_27C8397E0;
  v45[0] = xmmword_27C8397E0;
  v45[1] = xmmword_27C8397F0;
  *(a9 + 224) = xmmword_27C839880;
  *(a9 + 240) = v17;
  *(a9 + 256) = xmmword_27C8398A0;
  *(a9 + 160) = v19;
  *(a9 + 176) = v20;
  *(a9 + 192) = v21;
  *(a9 + 208) = v16;
  *(a9 + 96) = v23;
  *(a9 + 112) = v24;
  *(a9 + 128) = v25;
  *(a9 + 144) = v18;
  *(a9 + 64) = v26;
  *(a9 + 80) = v22;
  v27 = type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton(0);
  v28 = *(v27 + 40);
  *(a9 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  v29 = *(v27 + 44);
  *(a9 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  swift_storeEnumTagMultiPayload();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = a10 & 1;
  v30 = a2;
  v31 = a1;
  sub_20D85D690(v45, v44);
  if (a4)
  {
    v32 = 0xE300000000000000;
    v33 = 7104878;
  }

  else
  {
    v33 = sub_20D9757A8();
    v32 = v34;
  }

  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v35 = sub_20D9734F8();
  __swift_project_value_buffer(v35, qword_28112AB78);

  v36 = sub_20D9734D8();
  v37 = sub_20D975478();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44[0] = v39;
    *v38 = 136315906;
    *(v38 + 4) = sub_20D7F4DC8(0xD00000000000003FLL, 0x800000020D98AF70, v44);
    *(v38 + 12) = 2048;
    *(v38 + 14) = v31;
    *(v38 + 22) = 2048;
    *(v38 + 24) = v30;
    *(v38 + 32) = 2080;
    v40 = sub_20D7F4DC8(v33, v32, v44);

    *(v38 + 34) = v40;
    _os_log_impl(&dword_20D7C9000, v36, v37, "GridQualityFilterButton:%s %ld (of %ld): %s", v38, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v39, -1, -1);
    MEMORY[0x20F324260](v38, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_20D93B7D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton(0);
  v92 = *(v4 - 8);
  v5 = *(v92 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_20D973D58();
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x28223BE20](v6);
  v89 = &v73[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = sub_20D973B18();
  v8 = *(v88 - 8);
  v9 = MEMORY[0x28223BE20](v88);
  v11 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v73[-v12];
  v14 = type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v73[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BED0, &qword_20D97F380);
  MEMORY[0x28223BE20](v17);
  v21 = &v73[-v20];
  v22 = *v2;
  if (*v2 == 2)
  {
    v82 = 2;
    v83 = v21;
    v93 = v19;
    v84 = v18;
    v86 = &v73[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v31 = *(v2 + 16);
    v80 = *(v2 + 24);
    v32 = sub_20D8E52A0(2);
    v78 = v33;
    v79 = v32;
    v87 = a1;
    v85 = v5;
    v81 = v31;
    if (qword_281126F20 != -1)
    {
      swift_once();
      v77 = 2;
      v26 = &qword_28112ABF0;
      goto LABEL_14;
    }

    v26 = &qword_28112ABF0;
    v30 = 2;
LABEL_13:
    v77 = v30;
    goto LABEL_14;
  }

  if (v22 == 1)
  {
    v82 = 1;
    v83 = v21;
    v93 = v19;
    v84 = v18;
    v86 = &v73[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v27 = *(v2 + 16);
    v80 = *(v2 + 24);
    v28 = sub_20D8E52A0(1);
    v78 = v29;
    v79 = v28;
    v87 = a1;
    v85 = v5;
    v81 = v27;
    if (qword_281124D98 != -1)
    {
      swift_once();
      v77 = 1;
      v26 = &qword_28112AB68;
LABEL_14:
      v76 = *v26;

      v34 = *(v2 + 48);
      v35 = *(v2 + 56);
      v96 = *(v2 + 32);
      *&v97 = v34;
      BYTE8(v97) = v35;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD78, &qword_20D97F098);
      MEMORY[0x20F322CD0](&v94, v36);
      v75 = v94;
      v74 = v95;
      sub_20D93B244(v13);
      v37 = v11;
      v38 = v11;
      v39 = v88;
      (*(v8 + 104))(v38, *MEMORY[0x277CDF3C0], v88);
      v40 = sub_20D973B08();
      v41 = *(v8 + 8);
      v41(v37, v39);
      v41(v13, v39);
      v42 = v89;
      sub_20D93B03C(v89);
      v43 = sub_20D973D38();
      (*(v90 + 8))(v42, v91);
      v44 = sub_20D8E5420(v40 & 1, v43 & 1, v77);
      v45 = *(v2 + 57);
      *v16 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B150, &qword_20D97D200);
      swift_storeEnumTagMultiPayload();
      v46 = v14[5];
      *(v16 + v46) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
      swift_storeEnumTagMultiPayload();
      v47 = v81;
      *(v16 + v14[6]) = v82;
      v48 = v16 + v14[7];
      *v48 = v47;
      v48[8] = v80;
      v49 = (v16 + v14[8]);
      v50 = v78;
      *v49 = v79;
      v49[1] = v50;
      v51 = v75;
      *(v16 + v14[9]) = v76;
      v52 = v16 + v14[10];
      *v52 = v51;
      v52[8] = v74;
      *(v16 + v14[11]) = v44;
      *(v16 + v14[12]) = 1;
      *(v16 + v14[13]) = v45;
      v53 = (v16 + v14[14]);
      if (qword_27C838450 != -1)
      {
        swift_once();
      }

      v54 = unk_27C839870;
      v106 = xmmword_27C839880;
      v107 = xmmword_27C839890;
      v55 = xmmword_27C839890;
      v108 = xmmword_27C8398A0;
      v56 = xmmword_27C839830;
      v57 = xmmword_27C839840;
      v102 = xmmword_27C839840;
      v103 = xmmword_27C839850;
      v58 = xmmword_27C839850;
      v59 = xmmword_27C839860;
      v104 = xmmword_27C839860;
      v105 = unk_27C839870;
      v60 = xmmword_27C8397F0;
      v61 = xmmword_27C839800;
      v98 = xmmword_27C839800;
      v99 = xmmword_27C839810;
      v62 = xmmword_27C839810;
      v63 = xmmword_27C839820;
      v100 = xmmword_27C839820;
      v101 = xmmword_27C839830;
      v64 = xmmword_27C8397E0;
      v96 = xmmword_27C8397E0;
      v97 = xmmword_27C8397F0;
      v53[10] = xmmword_27C839880;
      v53[11] = v55;
      v53[12] = xmmword_27C8398A0;
      v53[6] = v57;
      v53[7] = v58;
      v53[8] = v59;
      v53[9] = v54;
      v53[2] = v61;
      v53[3] = v62;
      v53[4] = v63;
      v53[5] = v56;
      *v53 = v64;
      v53[1] = v60;
      v65 = v86;
      sub_20D93E120(v2, v86, type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton);
      v66 = (*(v92 + 80) + 16) & ~*(v92 + 80);
      v67 = swift_allocObject();
      sub_20D93EDF0(v65, v67 + v66, type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton);
      sub_20D85D690(&v96, &v94);
      sub_20D93EEB8(&qword_27C83BED8, type metadata accessor for FilterButtonsAndPickerView.UsageFilterView, &unk_20D97F440);
      v68 = v83;
      sub_20D974748();

      sub_20D93EF00(v16, type metadata accessor for FilterButtonsAndPickerView.UsageFilterView);
      v69 = v87;
      v70 = v84;
      (*(v93 + 32))(v87, v68, v84);
      return (*(v93 + 56))(v69, 0, 1, v70);
    }

    v26 = &qword_28112AB68;
    v30 = 1;
    goto LABEL_13;
  }

  if (!v22)
  {
    v82 = 0;
    v83 = v21;
    v93 = v19;
    v84 = v18;
    v86 = &v73[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v23 = *(v2 + 16);
    v80 = *(v2 + 24);
    v24 = sub_20D8E52A0(0);
    v78 = v25;
    v79 = v24;
    v87 = a1;
    v85 = v5;
    v81 = v23;
    if (qword_27C838750 != -1)
    {
      swift_once();
    }

    v77 = 0;
    v26 = &qword_27C840E70;
    goto LABEL_14;
  }

  v72 = *(v19 + 56);

  return v72(a1, 1, 1);
}

uint64_t sub_20D93C048(uint64_t *a1)
{
  v2 = type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = *(a1 + 56);
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BD78, &qword_20D97F098);
  MEMORY[0x20F322CD0](&v29);
  v10 = *a1;
  if ((v30 & 1) != 0 || v29 != v10)
  {
    if (qword_281125088 != -1)
    {
      swift_once();
    }

    v16 = sub_20D9734F8();
    __swift_project_value_buffer(v16, qword_28112AB78);
    sub_20D93E120(a1, v4, type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton);
    v17 = sub_20D9734D8();
    v18 = sub_20D975478();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28[0] = swift_slowAlloc();
      v28[1] = v9;
      v31 = v28[0];
      *v19 = 136315394;
      *(v19 + 4) = sub_20D7F4DC8(2036625250, 0xE400000000000000, &v31);
      *(v19 + 12) = 2048;
      v20 = v10;
      v21 = v8;
      v22 = v7;
      v23 = v6;
      v24 = v5;
      v25 = *v4;
      sub_20D93EF00(v4, type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton);
      *(v19 + 14) = v25;
      v5 = v24;
      v6 = v23;
      v7 = v22;
      v8 = v21;
      v10 = v20;
      _os_log_impl(&dword_20D7C9000, v17, v18, "%s setting selected index to %ld", v19, 0x16u);
      v26 = v28[0];
      __swift_destroy_boxed_opaque_existential_0(v28[0]);
      MEMORY[0x20F324260](v26, -1, -1);
      MEMORY[0x20F324260](v19, -1, -1);
    }

    else
    {
      sub_20D93EF00(v4, type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton);
    }

    v31 = v5;
    v32 = v6;
    v33 = v7;
    v34 = v8;
    v29 = v10;
    v30 = 0;
  }

  else
  {
    if (qword_281125088 != -1)
    {
      swift_once();
    }

    v11 = sub_20D9734F8();
    __swift_project_value_buffer(v11, qword_28112AB78);
    v12 = sub_20D9734D8();
    v13 = sub_20D975478();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_20D7F4DC8(2036625250, 0xE400000000000000, &v31);
      _os_log_impl(&dword_20D7C9000, v12, v13, "%s clearing selected index", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F324260](v15, -1, -1);
      MEMORY[0x20F324260](v14, -1, -1);
    }

    v31 = v5;
    v32 = v6;
    v33 = v7;
    v34 = v8;
    v29 = 0;
    v30 = 1;
  }

  return sub_20D974B28();
}

uint64_t sub_20D93C414@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BF10, &qword_20D97F490);
  MEMORY[0x28223BE20](v3);
  v5 = v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BF18, &qword_20D97F498);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BF20, &qword_20D97F4A0);
  MEMORY[0x28223BE20](v10);
  v12 = v35 - v11;
  v35[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BF28, &qword_20D97F4A8);
  MEMORY[0x28223BE20](v35[0]);
  v14 = v35 - v13;
  *v5 = sub_20D974088();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BF30, &qword_20D97F4B0);
  sub_20D93C8C0(v2, &v5[*(v15 + 44)]);
  v16 = sub_20D974388();
  KeyPath = swift_getKeyPath();
  v18 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BF38, &qword_20D97F4B8) + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  *&v5[*(v3 + 36)] = sub_20D974248();
  sub_20D9743F8();
  sub_20D93F284();
  sub_20D974708();
  sub_20D7E3944(v5, &qword_27C83BF10, &qword_20D97F490);
  *&v9[*(v7 + 44)] = sub_20D93CF2C();
  v19 = type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(0);
  v20 = v19;
  v21 = v2 + v19[10];
  if ((*(v21 + 8) & 1) != 0 || *v21 != *(v2 + v19[6]))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_20D979110;
    v26 = [objc_opt_self() tertiarySystemFillColor];
    *(v25 + 32) = sub_20D974888();
    v22 = MEMORY[0x20F322D80](v25);
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  else
  {
    v22 = *(v2 + v19[11]);

    v23 = 0x657463656C65532ELL;
    v24 = 0xE900000000000064;
  }

  v27 = sub_20D974318();
  sub_20D7EAF18(v9, v12, &qword_27C83BF18, &qword_20D97F498);
  v28 = &v12[*(v10 + 36)];
  *v28 = v22;
  v28[8] = v27;
  v29 = *(v2 + v20[14] + 152);
  v30 = &v14[*(v35[0] + 36)];
  v31 = *(sub_20D973DE8() + 20);
  v32 = *MEMORY[0x277CE0118];
  v33 = sub_20D974118();
  (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
  *v30 = v29;
  *(v30 + 1) = v29;
  *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C98, &unk_20D977550) + 36)] = 256;
  sub_20D7EAF18(v12, v14, &qword_27C83BF20, &qword_20D97F4A0);
  v35[2] = 0;
  v35[3] = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD00000000000003ELL, 0x800000020D98AFB0);
  MEMORY[0x20F323340](*(v2 + v20[8]), *(v2 + v20[8] + 8));
  MEMORY[0x20F323340](v23, v24);

  sub_20D93F420();
  sub_20D9747D8();

  return sub_20D7E3944(v14, &qword_27C83BF28, &qword_20D97F4A8);
}

uint64_t sub_20D93C8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BF88, &qword_20D97F4D0);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v35 - v9;
  v35[6] = a1;
  v35[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BF90, &qword_20D97F4D8);
  sub_20D93F6E8();
  sub_20D974A18();
  v11 = sub_20D974348();
  v12 = &v10[*(v5 + 44)];
  *v12 = v11;
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  v12[40] = 1;
  v13 = sub_20D93CD08();
  v15 = v14;
  v16 = sub_20D974378();
  type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(0);
  sub_20D973AD8();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  LOBYTE(v37) = 0;
  v36 = 0;
  LOBYTE(a1) = sub_20D974308();
  LOBYTE(v43[0]) = 1;
  sub_20D7EB7E8(v10, v8, &qword_27C83BF88, &qword_20D97F4D0);
  sub_20D7EB7E8(v8, a2, &qword_27C83BF88, &qword_20D97F4D0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFB0, &qword_20D97F4E8);
  v26 = a2 + *(v25 + 48);
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = (a2 + *(v25 + 64));
  *&v37 = v13;
  *(&v37 + 1) = v15;
  LOBYTE(v38) = 0;
  *(&v38 + 1) = MEMORY[0x277D84F90];
  LOBYTE(v39) = v16;
  *(&v39 + 1) = v18;
  *&v40 = v20;
  *(&v40 + 1) = v22;
  *&v41 = v24;
  BYTE8(v41) = 0;
  LOBYTE(v42[0]) = a1;
  *(v42 + 8) = 0u;
  *(&v42[1] + 8) = 0u;
  BYTE8(v42[2]) = 1;
  v28 = v37;
  v29 = v38;
  v30 = v40;
  v27[2] = v39;
  v27[3] = v30;
  *v27 = v28;
  v27[1] = v29;
  v31 = v41;
  v32 = v42[0];
  v33 = v42[1];
  *(v27 + 105) = *(&v42[1] + 9);
  v27[5] = v32;
  v27[6] = v33;
  v27[4] = v31;
  sub_20D7EB7E8(&v37, v43, &qword_27C83BFB8, &qword_20D97F4F0);
  sub_20D7E3944(v10, &qword_27C83BF88, &qword_20D97F4D0);
  v43[0] = v13;
  v43[1] = v15;
  v44 = 0;
  v45 = MEMORY[0x277D84F90];
  v46 = v16;
  v47 = v18;
  v48 = v20;
  v49 = v22;
  v50 = v24;
  v51 = 0;
  v52 = a1;
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  sub_20D7E3944(v43, &qword_27C83BFB8, &qword_20D97F4F0);
  return sub_20D7E3944(v8, &qword_27C83BF88, &qword_20D97F4D0);
}

uint64_t sub_20D93CBF0@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C48, &qword_20D977500);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(0);
  sub_20D974198();
  v6 = sub_20D9741A8();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = sub_20D9749E8();
  sub_20D7E3944(v5, &qword_27C838C48, &qword_20D977500);
  v8 = sub_20D974248();
  result = sub_20D974258();
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 12) = result;
  return result;
}

uint64_t sub_20D93CD08()
{
  v1 = sub_20D9726E8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E0, &unk_20D97D7B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - v4;
  v6 = type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(0);
  if (*(v0 + *(v6 + 52)) == 1)
  {
    v7 = v0 + *(v6 + 28);
    if (*(v7 + 8))
    {
      return 11565;
    }

    else
    {
      v10[1] = *v7;
      sub_20D9726A8();
      sub_20D85CBD0();
      sub_20D972058();
      sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0, MEMORY[0x277CC8CC8]);
      sub_20D975588();
      (*(v3 + 8))(v5, v2);
      return v10[2];
    }
  }

  else
  {
    if (qword_27C838748 != -1)
    {
      swift_once();
    }

    v8 = qword_27C840E60;
  }

  return v8;
}

uint64_t sub_20D93CF2C()
{
  v1 = v0;
  v2 = sub_20D973B18();
  v30 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - v5;
  v7 = sub_20D974138();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  sub_20D90851C(&v27 - v12);
  v14 = *(v8 + 104);
  v33 = *MEMORY[0x277CE0220];
  v32 = v14;
  v14(v11);
  v15 = sub_20D973B08();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v34 = v16;
  v16(v13, v7);
  if (v15)
  {
    v27 = type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(0);
    sub_20D9084F4(v6);
    v18 = v30;
    v17 = v31;
    (*(v30 + 104))(v31, *MEMORY[0x277CDF3C0], v2);
    v28 = sub_20D973B08();
    v29 = v1;
    v19 = *(v18 + 8);
    v19(v17, v2);
    v19(v6, v2);
    v1 = v29;
    if (v28)
    {
      v20 = v29 + *(v27 + 40);
      if ((*(v20 + 8) & 1) == 0 && *v20 == *(v29 + *(v27 + 24)))
      {
        return sub_20D9748E8();
      }
    }
  }

  sub_20D90851C(v13);
  v32(v11, v33, v7);
  v22 = sub_20D973B08();
  v23 = v34;
  v34(v11, v7);
  v23(v13, v7);
  if (v22)
  {
    v24 = type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(0);
    v25 = v1 + *(v24 + 40);
    if ((*(v25 + 8) & 1) == 0 && *v25 == *(v1 + *(v24 + 24)))
    {
      return sub_20D974918();
    }
  }

  v26 = [objc_opt_self() labelColor];
  return sub_20D974888();
}

uint64_t sub_20D93D2B4()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  result = sub_20D975108(v5, 0, 0, v6, v2, "Accessibility string used to describe the which types of filters are available", 78, 2);
  qword_27C840E50 = result;
  *algn_27C840E58 = v9;
  return result;
}

uint64_t sub_20D93D404()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  result = sub_20D975108(v5, 0, 0, v6, v2, "String used when data is not available on filter buttons", 56, 2);
  qword_27C840E60 = result;
  *algn_27C840E68 = v9;
  return result;
}

void sub_20D93D554(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20D9562D0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_20D975798();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_20D975268();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_20D93D688(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_20D93D688(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_20D9560B0(v8);
    }

    v75 = v8 + 16;
    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_20D93DBD4((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_20D8D42B4(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v29 = *(v8 + 3);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      v8 = sub_20D8D42B4((v29 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v30;
    v31 = v8 + 32;
    v32 = &v8[16 * v5 + 32];
    *v32 = v9;
    *(v32 + 1) = v7;
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 4);
          v34 = *(v8 + 5);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[16 * v30];
          v51 = *v49;
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[16 * v30];
        v61 = *v59;
        v60 = *(v59 + 1);
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        sub_20D93DBD4((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = *(v8 + 2);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        *(v8 + 2) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[16 * v30];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_20D93DBD4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

unint64_t *sub_20D93DDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v10 = v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_20D93E2F0(v10, v8, v6, a2, a3);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_20D93E3E8(v12, v8, v6, a2, a3);
  result = MEMORY[0x20F324260](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

unint64_t sub_20D93DF48()
{
  result = qword_27C83BDB0;
  if (!qword_27C83BDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BD50, &qword_20D97F070);
    sub_20D7EBC4C(&qword_27C83BDB8, &qword_27C83BDC0, &unk_20D97F0E8, MEMORY[0x277CDF038]);
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BDB0);
  }

  return result;
}

unint64_t sub_20D93E02C()
{
  result = qword_27C83BDC8;
  if (!qword_27C83BDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BD58, &qword_20D97F078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BD50, &qword_20D97F070);
    sub_20D93DF48();
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281126F48, &qword_27C838B68, &unk_20D9771A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BDC8);
  }

  return result;
}

uint64_t sub_20D93E120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D93E188(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for FilterButtonsAndPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20D939874(a1, a2, v6);
}

unint64_t sub_20D93E208()
{
  result = qword_27C83BDD0;
  if (!qword_27C83BDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BD60, &qword_20D97F080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BD58, &qword_20D97F078);
    sub_20D9741E8();
    sub_20D93E02C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BDD0);
  }

  return result;
}

unint64_t *sub_20D93E2F0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v13 = v12 | (v7 << 6);
LABEL_11:
    v16 = *(*(a3 + 48) + 8 * v13);
    if (v16 >= a4 && v16 <= a5)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return sub_20D93E478(result, a2, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v11)
    {
      return sub_20D93E478(result, a2, v6, a3);
    }

    v15 = *(a3 + 64 + 8 * v7);
    ++v14;
    if (v15)
    {
      v10 = (v15 - 1) & v15;
      v13 = __clz(__rbit64(v15)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_20D93E3E8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_20D93E2F0(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t sub_20D93E478(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
  result = sub_20D975778();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = sub_20D975878();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

double sub_20D93E67C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_20D93E6B0(uint64_t a1)
{
  sub_20D93EB94(319, &qword_281124BD8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20D93EAD8(319, &qword_27C83BD20, &qword_27C83B158, &qword_20D97D260, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_20D93F130(319, &qword_281127050, MEMORY[0x277CDFA28]);
      if (v3 <= 0x3F)
      {
        sub_20D93F130(319, &qword_281127058, MEMORY[0x277CDF3E0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20D93E814(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20D93E85C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_20D93E8F8(uint64_t a1)
{
  sub_20D93EAD8(319, &qword_27C83BD20, &qword_27C83B158, &qword_20D97D260, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DynamicEnergyUsagesCalculations(319);
    if (v2 <= 0x3F)
    {
      swift_getMetatypeMetadata();
      sub_20D93EAD8(319, &qword_27C83BE80, &qword_27C83BE88, qword_20D97F210, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20D93EB3C(319, &qword_27C83BE90, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          sub_20D93EB3C(319, &qword_27C83BE98, MEMORY[0x277D83B88]);
          if (v5 <= 0x3F)
          {
            sub_20D93EB94(319, &qword_27C83BEA0, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
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

void sub_20D93EAD8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_20D93EB3C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_20D974F68();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20D93EB94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_20D93EBE4(uint64_t a1)
{
  result = sub_20D93EC0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_20D93EC0C()
{
  result = qword_27C83BEB8;
  if (!qword_27C83BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BEB8);
  }

  return result;
}

uint64_t sub_20D93EC7C(uint64_t a1)
{
  result = sub_20D93EEB8(&qword_27C83BEC0, type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton, &unk_20D97F2B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20D93ED34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(type metadata accessor for FilterButtonsAndPickerView.CategoryFilterButtonsView(0, v6, *(v3 + 24), a2) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_20D93A344(a1, v8, v6, a3);
}

uint64_t sub_20D93EDF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D93EE58()
{
  v1 = *(type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_20D93C048(v2);
}

uint64_t sub_20D93EEB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D93EF00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20D93EFF8(uint64_t a1)
{
  sub_20D93F130(319, &qword_27C83BEF8, MEMORY[0x277CE0228]);
  if (v1 <= 0x3F)
  {
    sub_20D93F130(319, &qword_281127058, MEMORY[0x277CDF3E0]);
    if (v2 <= 0x3F)
    {
      sub_20D93EB94(319, &qword_281124BD8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20D93F130(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20D973B28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_20D93F184()
{
  result = qword_27C83BF00;
  if (!qword_27C83BF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BF08, &qword_20D97F438);
    type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(255);
    sub_20D93EEB8(&qword_27C83BED8, type metadata accessor for FilterButtonsAndPickerView.UsageFilterView, &unk_20D97F440);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BF00);
  }

  return result;
}

unint64_t sub_20D93F284()
{
  result = qword_27C83BF40;
  if (!qword_27C83BF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BF10, &qword_20D97F490);
    sub_20D93F33C();
    sub_20D7EBC4C(&qword_281124DE8, &qword_27C838F88, &qword_20D977910, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BF40);
  }

  return result;
}

unint64_t sub_20D93F33C()
{
  result = qword_27C83BF48;
  if (!qword_27C83BF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BF38, &qword_20D97F4B8);
    sub_20D7EBC4C(&qword_27C83BF50, &qword_27C83BF58, &qword_20D97F4C0, MEMORY[0x277CE1138]);
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BF48);
  }

  return result;
}

unint64_t sub_20D93F420()
{
  result = qword_27C83BF60;
  if (!qword_27C83BF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BF28, &qword_20D97F4A8);
    sub_20D93F4D8();
    sub_20D7EBC4C(&qword_281124FF8, &qword_27C838C98, &unk_20D977550, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BF60);
  }

  return result;
}

unint64_t sub_20D93F4D8()
{
  result = qword_27C83BF68;
  if (!qword_27C83BF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BF20, &qword_20D97F4A0);
    sub_20D93F590();
    sub_20D7EBC4C(&qword_27C83BF78, &qword_27C83BF80, &qword_20D97F4C8, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BF68);
  }

  return result;
}

unint64_t sub_20D93F590()
{
  result = qword_27C83BF70;
  if (!qword_27C83BF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BF18, &qword_20D97F498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BF10, &qword_20D97F490);
    sub_20D93F284();
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281126F60, &qword_27C83A110, &qword_20D97CC10, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BF70);
  }

  return result;
}

double sub_20D93F684@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = (v3 + *(type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(0) + 32));
  v5 = v4[1];
  *a1 = *v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];

  return result;
}

unint64_t sub_20D93F6E8()
{
  result = qword_27C83BF98;
  if (!qword_27C83BF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BF90, &qword_20D97F4D8);
    sub_20D7EBC4C(&qword_27C83BFA0, &qword_27C83BFA8, &qword_20D97F4E0, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BF98);
  }

  return result;
}

unint64_t sub_20D93F7A0()
{
  result = qword_27C83BFC0;
  if (!qword_27C83BFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BFC8, &qword_20D97F4F8);
    sub_20D93F420();
    sub_20D93EEB8(&qword_281126F38, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BFC0);
  }

  return result;
}

uint64_t sub_20D93F85C()
{
  v1 = sub_20D974048();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 232);
  if (*(v0 + 240) != 1)
  {

    sub_20D975468();
    v6 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();
    sub_20D809438(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

void UtilityUsageAndRatesView.init(dataIsReady:showBanner:utilityDetails:removeProviderFunction:host:)(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X5>, uint64_t a5@<X8>)
{
  swift_unknownObjectWeakInit();
  if (qword_27C838418 != -1)
  {
    swift_once();
  }

  v26 = qword_27C839510;
  type metadata accessor for HistoricalUsageSnapshotManager(0);

  sub_20D974A38();
  v10 = v24;
  *(a5 + 32) = v24;
  if (qword_27C8383D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for UtilityRateInfoSnapshotManager(0);

  sub_20D974A38();
  v11 = *(&v24 + 1);
  v23 = v24;
  *(a5 + 48) = v24;
  *(a5 + 56) = v11;
  sub_20D974A38();
  v12 = v25;
  *(a5 + 64) = v24;
  *(a5 + 80) = v12;
  sub_20D974A38();
  v13 = *(&v24 + 1);
  *(a5 + 88) = v24;
  *(a5 + 96) = v13;
  sub_20D974A38();
  v14 = *(&v24 + 1);
  *(a5 + 104) = v24;
  *(a5 + 112) = v14;
  sub_20D974A38();
  v15 = *(&v24 + 1);
  *(a5 + 120) = v24;
  *(a5 + 128) = v15;
  sub_20D974A38();
  v16 = v25;
  *(a5 + 136) = v24;
  *(a5 + 152) = v16;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_20D974A38();
  v17 = v25;
  *(a5 + 160) = v24;
  *(a5 + 176) = v17;
  sub_20D974A38();
  v18 = *(&v24 + 1);
  *(a5 + 184) = v24;
  *(a5 + 192) = v18;
  sub_20D974A38();
  v19 = *(&v24 + 1);
  *(a5 + 200) = v24;
  *(a5 + 208) = v19;
  LOBYTE(v26) = 0;
  sub_20D974A38();
  v20 = *(&v24 + 1);
  *(a5 + 216) = v24;
  *(a5 + 224) = v20;
  *(a5 + 232) = swift_getKeyPath();
  *(a5 + 240) = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  swift_unknownObjectWeakAssign();
  if (*(a1 + 16))
  {

    v21 = sub_20D8D4A48(0x6F6D2D6563726F66, 0xEA00000000006B63);
    if (v22)
    {
      sub_20D7EB630(*(a1 + 56) + 32 * v21, &v24);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD0, &qword_20D97F528);
      if (swift_dynamicCast() & 1) != 0 && (v26)
      {
        if (qword_27C838420 != -1)
        {
          swift_once();
        }

        v24 = v10;
        v26 = qword_27C839518;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD8, &qword_20D97F530);
        sub_20D974A58();
        if (qword_27C8383E0 != -1)
        {
          swift_once();
        }

        *&v24 = v23;
        *(&v24 + 1) = v11;
        v26 = qword_27C839498;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFE0, &qword_20D97F538);
        sub_20D974A58();
      }
    }

    else
    {
    }
  }
}

uint64_t UtilityUsageAndRatesView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFE8, &qword_20D97F540);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-v6 - 8];
  *v7 = sub_20D974158();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFF0, &qword_20D97F548);
  sub_20D94011C(v1, &v7[*(v8 + 44)]);
  sub_20D9484C8(v1, v23);
  v9 = swift_allocObject();
  sub_20D948500(v23, v9 + 16);
  v10 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFF8, &qword_20D97F550) + 36)];
  *v10 = sub_20D948538;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  sub_20D9484C8(v2, v23);
  v11 = swift_allocObject();
  sub_20D948500(v23, v11 + 16);
  v12 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C000, &unk_20D97F568) + 36)];
  sub_20D973CB8();
  sub_20D9752F8();
  *v12 = &unk_20D97F560;
  *(v12 + 1) = v11;
  sub_20D81A2E0();
  v13 = [swift_getObjCClassFromMetadata() defaultCenter];
  sub_20D972F08();
  v14 = sub_20D975078();

  sub_20D9754B8();

  sub_20D9484C8(v2, v23);
  v15 = swift_allocObject();
  sub_20D948500(v23, v15 + 16);
  v16 = &v7[*(v5 + 64)];
  *v16 = sub_20D9485D4;
  v16[1] = v15;
  v17 = *(v2 + 128);
  v23[0] = *(v2 + 120);
  v24 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A48();
  v18 = 1.0;
  if ((v22 & 0x100000000000000) == 0)
  {
    v19 = *(v2 + 96);
    v23[0] = *(v2 + 88);
    v24 = v19;
    sub_20D974A48();
    if ((v22 & 0x100000000000000) == 0)
    {
      v20 = *(v2 + 112);
      v23[0] = *(v2 + 104);
      v24 = v20;
      sub_20D974A48();
      if (HIBYTE(v22))
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }
    }
  }

  sub_20D7DB478(v7, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C008, &qword_20D97F578);
  *(a1 + *(result + 36)) = v18;
  return result;
}

uint64_t sub_20D94011C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = sub_20D9744B8();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for UtilityRemoveBanner(0);
  MEMORY[0x28223BE20](v69);
  v64 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C030, &qword_20D97F798);
  MEMORY[0x28223BE20](v66);
  v65 = &v56 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C038, &qword_20D97F7A0);
  MEMORY[0x28223BE20](v67);
  v8 = &v56 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C040, &qword_20D97F7A8);
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C048, &qword_20D97F7B0);
  MEMORY[0x28223BE20](v68);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C050, &qword_20D97F7B8);
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C058, &qword_20D97F7C0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v72 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C060, &qword_20D97F7C8);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v71 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v70 = &v56 - v25;
  sub_20D940B68(&v56 - v25);
  v26 = *(a1 + 128);
  LOBYTE(v76) = *(a1 + 120);
  *(&v76 + 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A48();
  if (v74 == 1)
  {
    *v16 = 0x4024000000000000;
    sub_20D940F64(&v16[*(v14 + 44)]);
    sub_20D7EB7E8(v16, v11, &qword_27C83C050, &qword_20D97F7B8);
    swift_storeEnumTagMultiPayload();
    sub_20D948BA4();
    sub_20D948C88();
    sub_20D9741B8();
    sub_20D7EB7E8(v13, v8, &qword_27C83C048, &qword_20D97F7B0);
    swift_storeEnumTagMultiPayload();
    sub_20D948B18();
    sub_20D94911C(&qword_27C83C100, type metadata accessor for UtilityRemoveBanner, &protocol conformance descriptor for UtilityRemoveBanner);
    sub_20D9741B8();
    sub_20D7E3944(v13, &qword_27C83C048, &qword_20D97F7B0);
    sub_20D7E3944(v16, &qword_27C83C050, &qword_20D97F7B8);
LABEL_11:
    v34 = 0;
    goto LABEL_12;
  }

  v60 = v21;
  v27 = *(a1 + 96);
  LOBYTE(v76) = *(a1 + 88);
  *(&v76 + 1) = v27;
  sub_20D974A48();
  if (v74 == 1)
  {
    v28 = v65;
    sub_20D941B4C(v65);
    sub_20D7EB7E8(v28, v11, &qword_27C83C030, &qword_20D97F798);
    swift_storeEnumTagMultiPayload();
    sub_20D948BA4();
    sub_20D948C88();
    sub_20D9741B8();
    sub_20D7EB7E8(v13, v8, &qword_27C83C048, &qword_20D97F7B0);
    swift_storeEnumTagMultiPayload();
    sub_20D948B18();
    sub_20D94911C(&qword_27C83C100, type metadata accessor for UtilityRemoveBanner, &protocol conformance descriptor for UtilityRemoveBanner);
    v21 = v60;
    sub_20D9741B8();
    sub_20D7E3944(v13, &qword_27C83C048, &qword_20D97F7B0);
    sub_20D7E3944(v28, &qword_27C83C030, &qword_20D97F798);
    goto LABEL_11;
  }

  v29 = *(a1 + 112);
  LOBYTE(v76) = *(a1 + 104);
  *(&v76 + 1) = v29;
  sub_20D974A48();
  if (v74 == 1)
  {
    v30 = *(a1 + 152);
    v76 = *(a1 + 136);
    v77 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C028, &qword_20D97F720);
    sub_20D974A48();
    v65 = v75;
    v66 = v74;
    v31 = *(a1 + 176);
    v76 = *(a1 + 160);
    v77 = v31;
    sub_20D974A48();
    v58 = v75;
    v59 = v74;
    v32 = *(a1 + 192);
    LOBYTE(v76) = *(a1 + 184);
    *(&v76 + 1) = v32;
    sub_20D974A48();
    if (v74 == 1)
    {
      v33 = *(a1 + 16);
      v57 = *(a1 + 8);
      v56 = v33;
    }

    else
    {
      v57 = 0;
      v56 = 0;
    }

    v35 = v69;
    Strong = swift_unknownObjectWeakLoadStrong();
    KeyPath = swift_getKeyPath();
    v38 = v64;
    *v64 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
    swift_storeEnumTagMultiPayload();
    v39 = v38 + v35[5];
    LOBYTE(v74) = 1;
    sub_20D974A38();
    v40 = *(&v76 + 1);
    *v39 = v76;
    *(v39 + 8) = v40;
    v41 = v35[7];
    *(v38 + v41) = 2;
    v42 = (v38 + v35[8]);
    *v42 = 0;
    v42[1] = 0;
    v43 = (v38 + v35[9]);
    v44 = (v38 + v35[10]);
    swift_unknownObjectWeakInit();
    *&v76 = 0x3FF0000000000000;
    (*(v62 + 104))(v61, *MEMORY[0x277CE0A68], v63);
    sub_20D7E6420();
    sub_20D973B68();
    v45 = (v38 + v35[6]);
    v46 = v65;
    *v45 = v66;
    v45[1] = v46;
    *(v38 + v41) = 0;
    v47 = v58;
    *v43 = v59;
    v43[1] = v47;
    v48 = v56;
    *v44 = v57;
    v44[1] = v48;
    swift_unknownObjectWeakAssign();

    sub_20D948FCC(v38, v8, type metadata accessor for UtilityRemoveBanner);
    swift_storeEnumTagMultiPayload();
    sub_20D948B18();
    sub_20D94911C(&qword_27C83C100, type metadata accessor for UtilityRemoveBanner, &protocol conformance descriptor for UtilityRemoveBanner);
    v21 = v60;
    sub_20D9741B8();
    sub_20D949164(v38, type metadata accessor for UtilityRemoveBanner);
    goto LABEL_11;
  }

  v34 = 1;
  v21 = v60;
LABEL_12:
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C068, &qword_20D97F7D0);
  (*(*(v49 - 8) + 56))(v21, v34, 1, v49);
  v51 = v70;
  v50 = v71;
  sub_20D7EB7E8(v70, v71, &qword_27C83C060, &qword_20D97F7C8);
  v52 = v72;
  sub_20D7EB7E8(v21, v72, &qword_27C83C058, &qword_20D97F7C0);
  v53 = v73;
  sub_20D7EB7E8(v50, v73, &qword_27C83C060, &qword_20D97F7C8);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C070, &qword_20D97F7D8);
  sub_20D7EB7E8(v52, v53 + *(v54 + 48), &qword_27C83C058, &qword_20D97F7C0);
  sub_20D7E3944(v21, &qword_27C83C058, &qword_20D97F7C0);
  sub_20D7E3944(v51, &qword_27C83C060, &qword_20D97F7C8);
  sub_20D7E3944(v52, &qword_27C83C058, &qword_20D97F7C0);
  return sub_20D7E3944(v50, &qword_27C83C060, &qword_20D97F7C8);
}

uint64_t sub_20D940B68@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_20D974458();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C218, &qword_20D97F958);
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v28 = &v27 - v6;
  sub_20D9740F8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v7 = qword_28112ABE8;
  v8 = sub_20D9745A8();
  v10 = v9;
  v12 = v11;
  sub_20D974428();
  (*(v2 + 104))(v4, *MEMORY[0x277CE0A10], v1);
  sub_20D974478();

  (*(v2 + 8))(v4, v1);
  v13 = sub_20D974558();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_20D7EADC0(v8, v10, v12 & 1);

  sub_20D974C58();
  sub_20D973E08();
  v42 = v17 & 1;
  *&v32 = v13;
  *(&v32 + 1) = v15;
  LOBYTE(v33) = v17 & 1;
  *(&v33 + 1) = v19;
  sub_20D9743F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A738, &qword_20D97C0F0);
  sub_20D8E3FD8();
  v20 = v28;
  sub_20D974708();
  v41[6] = v38;
  v41[7] = v39;
  v41[8] = v40;
  v41[2] = v34;
  v41[3] = v35;
  v41[4] = v36;
  v41[5] = v37;
  v41[0] = v32;
  v41[1] = v33;
  sub_20D7E3944(v41, &qword_27C83A738, &qword_20D97C0F0);
  if (sub_20D93F85C())
  {
    v21 = sub_20D9748E8();
  }

  else
  {
    v21 = sub_20D974918();
  }

  v22 = v21;
  v23 = sub_20D974258();
  v24 = v31;
  (*(v29 + 32))(v31, v20, v30);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C060, &qword_20D97F7C8);
  v26 = v24 + *(result + 36);
  *v26 = v22;
  *(v26 + 8) = v23;
  return result;
}

uint64_t sub_20D940F64@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C108, &qword_20D97F858);
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C110, &qword_20D97F860);
  v27 = *(v8 - 8);
  v9 = v27;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  sub_20D94120C(&v25 - v13);
  sub_20D941618(v7);
  v15 = *(v9 + 16);
  v15(v12, v14, v8);
  v16 = *(v2 + 16);
  v16(v5, v7, v1);
  v17 = v28;
  v15(v28, v12, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C118, &qword_20D97F868) + 48)];
  v19 = v25;
  v16(v18, v5, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v5, v22);
  return (v23)(v12, v8);
}

uint64_t sub_20D94120C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_20D972628();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for HistoricalUsageSummaryView(0);
  MEMORY[0x28223BE20](v21);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C188, &qword_20D97F8D8);
  v9 = *(v8 - 8);
  v23 = v8;
  v24 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = *(v1 + 40);
  v28[0] = *(v1 + 32);
  v28[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD8, &qword_20D97F530);
  sub_20D974A48();
  v13 = v26;
  sub_20D9725C8();
  HistoricalUsageSummaryView.init(displayDate:snapshotManager:)(v5, v13, v7);
  sub_20D9484C8(v2, v28);
  v14 = swift_allocObject();
  sub_20D948500(v28, v14 + 16);
  v15 = sub_20D94911C(&qword_27C83C190, type metadata accessor for HistoricalUsageSummaryView, &protocol conformance descriptor for HistoricalUsageSummaryView);
  sub_20D974748();

  sub_20D949164(v7, type metadata accessor for HistoricalUsageSummaryView);
  v16 = *(v2 + 208);
  LOBYTE(v26) = *(v2 + 200);
  v27 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A68();
  v22 = v29;
  sub_20D9484C8(v2, v28);
  v17 = swift_allocObject();
  sub_20D948500(v28, v17 + 16);
  sub_20D9484C8(v2, &v26);
  v18 = swift_allocObject();
  sub_20D948500(&v26, v18 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C198, &qword_20D97F8E0);
  v26 = v21;
  v27 = v15;
  swift_getOpaqueTypeConformance2();
  sub_20D7EBC4C(&qword_27C83C1A0, &qword_27C83C198, &qword_20D97F8E0, MEMORY[0x277CDDA18]);
  v19 = v23;
  sub_20D974808();

  return (*(v24 + 8))(v11, v19);
}

uint64_t sub_20D941618@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_20D9744B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UtilityRateInfoSummaryView(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C120, &qword_20D97F870);
  v11 = *(v10 - 8);
  v27 = v10;
  v28 = v11;
  MEMORY[0x28223BE20](v10);
  v26 = v25 - v12;
  v13 = *(v1 + 56);
  v32[0] = *(v1 + 48);
  v32[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFE0, &qword_20D97F538);
  sub_20D974A48();
  v14 = v30;
  v32[0] = 0x3FF0000000000000;
  (*(v4 + 104))(v6, *MEMORY[0x277CE0A68], v3);
  sub_20D7E6420();
  sub_20D973B68();
  *v9 = v14;
  v15 = *(v7 + 20);
  swift_getKeyPath();
  v32[0] = v14;
  sub_20D94911C(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);

  sub_20D972858();

  v16 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot;
  swift_beginAccess();
  sub_20D948FCC(v14 + v16, v9 + v15, type metadata accessor for UtilityRateInfoSnapshot);

  sub_20D9484C8(v2, v32);
  v17 = swift_allocObject();
  sub_20D948500(v32, v17 + 16);
  v18 = sub_20D94911C(&qword_27C83C128, type metadata accessor for UtilityRateInfoSummaryView, &protocol conformance descriptor for UtilityRateInfoSummaryView);
  sub_20D974748();

  sub_20D949164(v9, type metadata accessor for UtilityRateInfoSummaryView);
  v19 = *(v2 + 224);
  LOBYTE(v30) = *(v2 + 216);
  v31 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A68();
  v25[3] = v33;
  sub_20D9484C8(v2, v32);
  v20 = swift_allocObject();
  sub_20D948500(v32, v20 + 16);
  sub_20D9484C8(v2, &v30);
  v21 = swift_allocObject();
  sub_20D948500(&v30, v21 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C130, &qword_20D97F8A0);
  v30 = v7;
  v31 = v18;
  swift_getOpaqueTypeConformance2();
  sub_20D7EBC4C(&qword_27C83C138, &qword_27C83C130, &qword_20D97F8A0, MEMORY[0x277CDDA18]);
  v22 = v26;
  v23 = v27;
  sub_20D974808();

  return (*(v28 + 8))(v22, v23);
}

uint64_t sub_20D941B4C@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C0F8, &unk_20D97F848);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v52 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C0E8, &qword_20D97F840);
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C0D8, &qword_20D97F838);
  MEMORY[0x28223BE20](v53);
  v9 = &v52 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C0C8, &qword_20D97F830);
  MEMORY[0x28223BE20](v54);
  v55 = &v52 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C0B8, &qword_20D97F828);
  MEMORY[0x28223BE20](v56);
  v12 = &v52 - v11;
  *v4 = sub_20D974078();
  *(v4 + 1) = 0x402C000000000000;
  v4[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1C8, &qword_20D97F900);
  sub_20D9471A8(v1, &v4[*(v13 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C80, &unk_20D97BFB0);
  inited = swift_initStackObject();
  v52 = xmmword_20D977210;
  *(inited + 16) = xmmword_20D977210;
  v15 = sub_20D974328();
  *(inited + 32) = v15;
  v16 = sub_20D974348();
  *(inited + 33) = v16;
  v17 = sub_20D974358();
  sub_20D974358();
  if (sub_20D974358() != v15)
  {
    v17 = sub_20D974358();
  }

  sub_20D974358();
  if (sub_20D974358() != v16)
  {
    v17 = sub_20D974358();
  }

  sub_20D973AD8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_20D7EAF18(v4, v7, &qword_27C83C0F8, &unk_20D97F848);
  v26 = &v7[*(v5 + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = swift_initStackObject();
  *(v27 + 16) = v52;
  v28 = sub_20D974338();
  *(v27 + 32) = v28;
  v29 = sub_20D974368();
  *(v27 + 33) = v29;
  v30 = sub_20D974358();
  sub_20D974358();
  if (sub_20D974358() != v28)
  {
    v30 = sub_20D974358();
  }

  sub_20D974358();
  if (sub_20D974358() != v29)
  {
    v30 = sub_20D974358();
  }

  sub_20D7EAF18(v7, v9, &qword_27C83C0E8, &qword_20D97F840);
  v31 = &v9[*(v53 + 36)];
  *v31 = v30;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  v31[40] = 1;
  sub_20D974C48();
  sub_20D973E08();
  v32 = v55;
  sub_20D7EAF18(v9, v55, &qword_27C83C0D8, &qword_20D97F838);
  v33 = (v32 + *(v54 + 36));
  v34 = v63;
  v33[4] = v62;
  v33[5] = v34;
  v33[6] = v64;
  v35 = v59;
  *v33 = v58;
  v33[1] = v35;
  v36 = v61;
  v33[2] = v60;
  v33[3] = v36;
  v37 = sub_20D974C48();
  v39 = v38;
  v40 = &v12[*(v56 + 36)];
  v41 = *(sub_20D973DE8() + 20);
  v42 = *MEMORY[0x277CE0118];
  v43 = sub_20D974118();
  (*(*(v43 - 8) + 104))(&v40[v41], v42, v43);
  __asm { FMOV            V0.2D, #24.0 }

  *v40 = _Q0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FD0, &unk_20D97BFC0);
  sub_20D974C08();
  *&v40[*(v49 + 56)] = 256;
  v50 = &v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FD8, &qword_20D977990) + 36)];
  *v50 = v37;
  v50[1] = v39;
  sub_20D7EAF18(v32, v12, &qword_27C83C0C8, &qword_20D97F830);
  sub_20D948D44();
  sub_20D9747D8();
  return sub_20D7E3944(v12, &qword_27C83C0B8, &qword_20D97F828);
}

uint64_t sub_20D942138(uint64_t *a1)
{
  v2 = *a1;
  if (*(*a1 + 16))
  {
    v3 = sub_20D8D4A48(0x4449656D6F68, 0xE600000000000000);
    if (v4)
    {
      sub_20D7EB630(*(v2 + 56) + 32 * v3, &v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD0, &qword_20D97F528);
      swift_dynamicCast();
    }
  }

  v5 = a1[10];
  v10 = *(a1 + 4);
  v11 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C028, &qword_20D97F720);
  sub_20D974A58();
  if (*(v2 + 16))
  {
    v6 = sub_20D8D4A48(0x656B6F7665527369, 0xEF6465776F6C6C41);
    if (v7)
    {
      sub_20D7EB630(*(v2 + 56) + 32 * v6, &v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD0, &qword_20D97F528);
      swift_dynamicCast();
    }
  }

  v8 = a1[24];
  LOBYTE(v10) = *(a1 + 184);
  *(&v10 + 1) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  return sub_20D974A58();
}

uint64_t sub_20D9422D8()
{
  v0[2] = sub_20D9752E8();
  v0[3] = sub_20D9752D8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20D92D3C8;

  return sub_20D942384();
}

uint64_t sub_20D942384()
{
  v1[471] = v0;
  v2 = sub_20D973488();
  v1[472] = v2;
  v1[473] = *(v2 - 8);
  v1[474] = swift_task_alloc();
  v1[475] = swift_task_alloc();
  v3 = sub_20D973448();
  v1[476] = v3;
  v1[477] = *(v3 - 8);
  v1[478] = swift_task_alloc();
  v1[479] = swift_task_alloc();
  v1[480] = swift_task_alloc();
  v1[481] = swift_task_alloc();
  v4 = sub_20D973478();
  v1[482] = v4;
  v1[483] = *(v4 - 8);
  v1[484] = swift_task_alloc();
  v5 = sub_20D972EA8();
  v1[485] = v5;
  v1[486] = *(v5 - 8);
  v1[487] = swift_task_alloc();
  v1[488] = swift_task_alloc();
  v1[489] = swift_task_alloc();
  sub_20D9752E8();
  v1[490] = sub_20D9752D8();
  v7 = sub_20D975298();
  v1[491] = v7;
  v1[492] = v6;

  return MEMORY[0x2822009F8](sub_20D9425D8, v7, v6);
}

uint64_t sub_20D9425D8()
{
  v1 = *(v0 + 3768);
  sub_20D972CD8();
  v2 = *(v1 + 80);
  *(v0 + 3192) = *(v1 + 64);
  *(v0 + 3208) = v2;
  *(v0 + 3944) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C028, &qword_20D97F720);
  sub_20D974A48();
  v3 = *(v0 + 3624);
  v4 = *(v0 + 3632);
  v5 = swift_task_alloc();
  *(v0 + 3952) = v5;
  *v5 = v0;
  v5[1] = sub_20D9426C8;

  return MEMORY[0x28215C940](v3, v4);
}

uint64_t sub_20D9426C8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 3960) = a1;

  v3 = *(v2 + 3936);
  v4 = *(v2 + 3928);

  return MEMORY[0x2822009F8](sub_20D9427F0, v4, v3);
}

uint64_t sub_20D9427F0()
{
  v105 = v0;
  v1 = *(v0 + 3960);
  if (v1)
  {
    if (qword_27C838470 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 3768);
    v3 = sub_20D9734F8();
    *(v0 + 3968) = __swift_project_value_buffer(v3, qword_27C840CC8);
    sub_20D9484C8(v2, v0 + 2904);

    v4 = sub_20D9734D8();
    v5 = sub_20D975478();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v104 = v7;
      *v6 = 136315650;
      *(v6 + 4) = sub_20D7F4DC8(0x4468736572666572, 0xED00002928617461, &v104);
      *(v6 + 12) = 2080;
      v8 = sub_20D972C68();
      v10 = sub_20D7F4DC8(v8, v9, &v104);

      *(v6 + 14) = v10;
      *(v6 + 22) = 2080;
      v11 = *(v0 + 2984);
      *(v0 + 3256) = *(v0 + 2968);
      *(v0 + 3272) = v11;
      sub_20D974A48();
      v12 = *(v0 + 3656);
      v13 = *(v0 + 3664);
      sub_20D948844(v0 + 2904);
      v14 = sub_20D7F4DC8(v12, v13, &v104);

      *(v6 + 24) = v14;
      _os_log_impl(&dword_20D7C9000, v4, v5, "%s obtained site %s for homeID: %s", v6, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v7, -1, -1);
      MEMORY[0x20F324260](v6, -1, -1);
    }

    else
    {

      sub_20D948844(v0 + 2904);
    }

    v25 = sub_20D972C98();
    v27 = v26;
    v28 = sub_20D9734D8();
    v29 = sub_20D975448();
    v102 = v1;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v104 = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_20D7F4DC8(0x4468736572666572, 0xED00002928617461, &v104);
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_20D7F4DC8(v25, v27, &v104);
      _os_log_impl(&dword_20D7C9000, v28, v29, "%s site.subscriptionState: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v31, -1, -1);
      MEMORY[0x20F324260](v30, -1, -1);
    }

    v32 = *(v0 + 3912);
    v33 = *(v0 + 3888);
    v34 = *(v0 + 3880);
    v103 = *(v33 + 104);
    v103(v32, *MEMORY[0x277D07348], v34);
    v35 = sub_20D972E98();
    v37 = v36;
    v38 = *(v33 + 8);
    v38(v32, v34);
    if (v25 == v35 && v27 == v37)
    {
      goto LABEL_15;
    }

    v41 = sub_20D9757C8();

    if (v41)
    {
      v39 = v27;
      v40 = v25;
      v101 = 1;
      goto LABEL_19;
    }

    v52 = *(v0 + 3904);
    v53 = *(v0 + 3880);
    v103(v52, *MEMORY[0x277D07350], v53);
    v54 = sub_20D972E98();
    v56 = v55;
    v38(v52, v53);
    if (v25 == v54 && v27 == v56)
    {
LABEL_15:
      v39 = v27;
      v40 = v25;
      v101 = 1;
    }

    else
    {
      v57 = v27;
      v40 = v25;
      v39 = v57;
      v101 = sub_20D9757C8();
    }

LABEL_19:
    v42 = *(v0 + 3896);
    v43 = *(v0 + 3880);
    v103(v42, *MEMORY[0x277D07358], v43);
    v44 = sub_20D972E98();
    v46 = v45;
    v38(v42, v43);
    if (v40 == v44 && v39 == v46)
    {

      LOBYTE(v47) = 1;
      v48 = v102;
LABEL_23:
      *(v0 + 3149) = v47 & 1;
      v49 = swift_task_alloc();
      *(v0 + 3976) = v49;
      *v49 = v0;
      v49[1] = sub_20D9435F0;

      return sub_20D944A30(v48, 0);
    }

    v47 = sub_20D9757C8();

    v48 = v102;
    if ((v47 | v101))
    {
      goto LABEL_23;
    }

    v58 = *(v0 + 3768);
    v59 = *(v58 + 32);
    *(v0 + 3984) = v59;
    v60 = *(v58 + 40);
    *(v0 + 3992) = v60;
    *(v0 + 3592) = v59;
    *(v0 + 3600) = v60;
    *(v0 + 4000) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD8, &qword_20D97F530);
    sub_20D974A48();
    v61 = *(v0 + 3752);
    swift_getKeyPath();
    *(v0 + 3760) = v61;
    sub_20D94911C(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
    sub_20D972858();

    swift_beginAccess();
    v63 = *(v61 + 24);
    v62 = *(v61 + 32);

    v64 = sub_20D972C68();
    if (v62)
    {
      if (v63 == v64 && v62 == v65)
      {

LABEL_39:
        v67 = *(v0 + 3768);
        v68 = *(v67 + 96);
        *(v0 + 3640) = *(v67 + 88);
        *(v0 + 3648) = v68;
        *(v0 + 3148) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
        sub_20D974A58();
        v69 = *(v67 + 112);
        *(v0 + 3672) = *(v67 + 104);
        *(v0 + 3680) = v69;
        *(v0 + 2858) = 0;
        sub_20D974A58();
        v70 = *(v67 + 128);
        *(v0 + 3448) = *(v67 + 120);
        *(v0 + 3456) = v70;
        *(v0 + 2857) = 1;
        sub_20D974A58();
        goto LABEL_40;
      }

      v66 = sub_20D9757C8();

      if (v66)
      {
        goto LABEL_39;
      }
    }

    else
    {
    }

LABEL_40:
    if (qword_27C8384A0 != -1)
    {
      swift_once();
    }

    v71 = *(v0 + 3872);
    v72 = *(v0 + 3864);
    v73 = *(v0 + 3856);
    v74 = __swift_project_value_buffer(v73, qword_27C839AA8);
    (*(v72 + 16))(v71, v74, v73);
    sub_20D973458();
    sub_20D973418();
    v75 = sub_20D973458();
    v76 = sub_20D975498();
    if (sub_20D9754E8())
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      v78 = sub_20D973428();
      _os_signpost_emit_with_name_impl(&dword_20D7C9000, v75, v76, v78, "UtilityUsageAndRatesView.refreshData", "", v77, 2u);
      MEMORY[0x20F324260](v77, -1, -1);
    }

    v79 = *(v0 + 3848);
    v80 = *(v0 + 3840);
    v81 = *(v0 + 3816);
    v82 = *(v0 + 3808);

    v83 = *(v81 + 16);
    v83(v80, v79, v82);
    sub_20D9734B8();
    swift_allocObject();
    *(v0 + 4008) = sub_20D9734A8();
    v84 = sub_20D973458();
    v85 = sub_20D975498();
    if (sub_20D9754E8())
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      v87 = sub_20D973428();
      _os_signpost_emit_with_name_impl(&dword_20D7C9000, v84, v85, v87, "Show tiles", "", v86, 2u);
      MEMORY[0x20F324260](v86, -1, -1);
    }

    v88 = *(v0 + 3848);
    v89 = *(v0 + 3840);
    v90 = *(v0 + 3808);

    v83(v89, v88, v90);
    swift_allocObject();
    *(v0 + 4016) = sub_20D9734A8();

    v91 = sub_20D9734D8();
    v92 = sub_20D975478();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v104 = v94;
      *v93 = 136315394;
      *(v93 + 4) = sub_20D7F4DC8(0x4468736572666572, 0xED00002928617461, &v104);
      *(v93 + 12) = 2080;
      v95 = sub_20D972C68();
      v97 = sub_20D7F4DC8(v95, v96, &v104);

      *(v93 + 14) = v97;
      _os_log_impl(&dword_20D7C9000, v91, v92, "%s configuring for site %s", v93, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v94, -1, -1);
      MEMORY[0x20F324260](v93, -1, -1);
    }

    v98 = *(v0 + 3768);
    v99 = swift_task_alloc();
    *(v0 + 4024) = v99;
    *(v99 + 16) = v98;
    *(v99 + 24) = v102;
    swift_asyncLet_begin();
    v100 = swift_task_alloc();
    *(v0 + 4032) = v100;
    *(v100 + 16) = v98;
    *(v100 + 24) = v102;
    swift_asyncLet_begin();

    return MEMORY[0x282200928](v0 + 1296);
  }

  if (qword_27C838470 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 3768);
  v16 = sub_20D9734F8();
  __swift_project_value_buffer(v16, qword_27C840CC8);
  sub_20D9484C8(v15, v0 + 2616);
  v17 = sub_20D9734D8();
  v18 = sub_20D975458();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v104 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_20D7F4DC8(0x4468736572666572, 0xED00002928617461, &v104);
    *(v19 + 12) = 2080;
    v21 = *(v0 + 2696);
    *(v0 + 3384) = *(v0 + 2680);
    *(v0 + 3400) = v21;
    sub_20D974A48();
    v22 = *(v0 + 3608);
    v23 = *(v0 + 3616);
    sub_20D948844(v0 + 2616);
    v24 = sub_20D7F4DC8(v22, v23, &v104);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_20D7C9000, v17, v18, "%s could not get EnergySite for homeID: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v20, -1, -1);
    MEMORY[0x20F324260](v19, -1, -1);
  }

  else
  {

    sub_20D948844(v0 + 2616);
  }

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_20D9435F0()
{
  v1 = *v0;

  v2 = *(v1 + 3936);
  v3 = *(v1 + 3928);

  return MEMORY[0x2822009F8](sub_20D943710, v3, v2);
}

uint64_t sub_20D943710()
{
  v1 = *(v0 + 3149);
  v2 = *(v0 + 3768);

  v3 = *(v2 + 128);
  *(v0 + 3688) = *(v2 + 120);
  *(v0 + 3696) = v3;
  *(v0 + 2859) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A58();
  if (v1)
  {
    v4 = 3146;
  }

  else
  {
    v4 = 2861;
  }

  v5 = *(v2 + 96);
  v6 = 2860;
  if (v1)
  {
    v6 = 2863;
  }

  v7 = 3576;
  if (v1)
  {
    v7 = 3528;
    v8 = 3496;
  }

  else
  {
    v8 = 3560;
  }

  v9 = 3584;
  if (v1)
  {
    v9 = 3536;
  }

  *(v0 + v7) = *(v2 + 88);
  if (v1)
  {
    v10 = 3504;
  }

  else
  {
    v10 = 3568;
  }

  *(v0 + v9) = v5;
  *(v0 + v6) = v1;
  sub_20D974A58();
  v11 = *(v2 + 104);
  v12 = *(v2 + 112);
  *(v0 + v8) = v11;
  *(v0 + v10) = v12;
  *(v0 + v4) = v1 ^ 1;

  sub_20D974A58();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_20D943934(uint64_t a1)
{
  v2 = sub_20D973458();
  v3 = sub_20D9754A8();
  if (sub_20D9754E8())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v2, v3, v5, "RateInfo+HistoricalUsage configureForSite", "", v4, 2u);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  v6 = v1[499];
  v7 = v1[498];

  v1[443] = v7;
  v1[444] = v6;
  sub_20D974A48();
  v1[505] = v1[463];
  v8 = swift_task_alloc();
  v1[506] = v8;
  *v8 = v1;
  v8[1] = sub_20D943A74;

  return sub_20D821518();
}

uint64_t sub_20D943A74()
{
  v1 = *v0;

  v2 = *(v1 + 3936);
  v3 = *(v1 + 3928);

  return MEMORY[0x2822009F8](sub_20D943BB8, v3, v2);
}

uint64_t sub_20D943BB8()
{
  v30 = v0;
  v1 = *(v0 + 3768);
  v2 = *(v1 + 96);
  *(v0 + 3464) = *(v1 + 88);
  *(v0 + 3472) = v2;
  *(v0 + 3147) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A58();
  v3 = *(v1 + 112);
  *(v0 + 3480) = *(v1 + 104);
  *(v0 + 3488) = v3;
  *(v0 + 3145) = 0;
  sub_20D974A58();
  v4 = *(v1 + 128);
  *(v0 + 3512) = *(v1 + 120);
  *(v0 + 3520) = v4;
  *(v0 + 2862) = 1;
  sub_20D974A58();
  v5 = sub_20D973458();
  sub_20D973498();
  v6 = sub_20D975488();
  if (sub_20D9754E8())
  {
    v7 = *(v0 + 3800);
    v8 = *(v0 + 3784);
    v9 = *(v0 + 3776);

    sub_20D9734C8();

    if ((*(v8 + 88))(v7, v9) == *MEMORY[0x277D85B00])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 3784) + 8))(*(v0 + 3800), *(v0 + 3776));
      v10 = "";
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v5, v6, v12, "Show tiles", v10, v11, 2u);
    MEMORY[0x20F324260](v11, -1, -1);
  }

  v13 = *(v0 + 3960);
  v14 = *(v0 + 3832);
  v15 = *(v0 + 3816);
  v16 = *(v0 + 3808);
  v17 = *(v0 + 3768);

  v18 = *(v15 + 8);
  *(v0 + 4056) = v18;
  v18(v14, v16);
  v19 = swift_task_alloc();
  *(v0 + 4064) = v19;
  *(v19 + 16) = v17;
  swift_asyncLet_begin();
  v20 = swift_task_alloc();
  *(v0 + 4072) = v20;
  *(v20 + 16) = v17;
  *(v20 + 24) = v13;
  swift_asyncLet_begin();

  v21 = sub_20D9734D8();
  v22 = sub_20D975478();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_20D7F4DC8(0x4468736572666572, 0xED00002928617461, &v29);
    *(v23 + 12) = 2080;
    v25 = sub_20D972C68();
    v27 = sub_20D7F4DC8(v25, v26, &v29);

    *(v23 + 14) = v27;
    _os_log_impl(&dword_20D7C9000, v21, v22, "%s starting snapshot tasks for site %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v24, -1, -1);
    MEMORY[0x20F324260](v23, -1, -1);
  }

  return MEMORY[0x282200928](v0 + 16);
}

uint64_t sub_20D943FD0()
{
  v21 = v0;

  v1 = sub_20D9734D8();
  v2 = sub_20D975478();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v20 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_20D7F4DC8(0x4468736572666572, 0xED00002928617461, &v20);
    *(v3 + 12) = 2080;
    v5 = sub_20D972C68();
    v7 = sub_20D7F4DC8(v5, v6, &v20);

    *(v3 + 14) = v7;
    _os_log_impl(&dword_20D7C9000, v1, v2, "%s finished snapshot tasks for site %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v4, -1, -1);
    MEMORY[0x20F324260](v3, -1, -1);
  }

  v8 = sub_20D973458();
  sub_20D973498();
  v9 = sub_20D975488();
  if (sub_20D9754E8())
  {
    v10 = v0[474];
    v11 = v0[473];
    v12 = v0[472];

    sub_20D9734C8();

    if ((*(v11 + 88))(v10, v12) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[473] + 8))(v0[474], v0[472]);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v8, v9, v15, "UtilityUsageAndRatesView.refreshData", v13, v14, 2u);
    MEMORY[0x20F324260](v14, -1, -1);
  }

  v16 = v0[507];
  v17 = v0[478];
  v18 = v0[476];

  v16(v17, v18);

  return MEMORY[0x282200920](v0 + 82);
}

uint64_t sub_20D9442C0()
{

  return MEMORY[0x282200920](v0 + 16);
}

uint64_t sub_20D944344()
{

  return MEMORY[0x282200920](v0 + 1936);
}

uint64_t sub_20D9443C8()
{

  return MEMORY[0x282200920](v0 + 1296);
}

uint64_t sub_20D94444C()
{
  v7 = v0[484];
  v8 = v0[507];
  v1 = v0[483];
  v2 = v0[482];
  v3 = v0[481];
  v4 = v0[476];

  v8(v3, v4);
  (*(v1 + 8))(v7, v2);

  v5 = v0[1];

  return v5();
}

double sub_20D9445C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_20D971DE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C838470 != -1)
  {
    swift_once();
  }

  v11 = sub_20D9734F8();
  __swift_project_value_buffer(v11, qword_27C840CC8);
  (*(v8 + 16))(v10, a1, v7);
  v12 = sub_20D9734D8();
  v13 = sub_20D975448();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v29[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_20D7F4DC8(2036625250, 0xE400000000000000, v29);
    *(v15 + 12) = 2080;
    sub_20D94911C(&qword_27C83C020, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
    v17 = sub_20D9757A8();
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    v20 = sub_20D7F4DC8(v17, v19, v29);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_20D7C9000, v12, v13, "%s onReceive: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v16, -1, -1);
    v21 = v15;
    a2 = v28;
    MEMORY[0x20F324260](v21, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v22 = sub_20D975318();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  sub_20D9484C8(a2, v29);
  sub_20D9752E8();
  v23 = sub_20D9752D8();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  sub_20D948500(v29, v24 + 32);
  sub_20D82D02C(0, 0, v6, &unk_20D97F710, v24);

  return result;
}

uint64_t sub_20D944984()
{
  v0[2] = sub_20D9752E8();
  v0[3] = sub_20D9752D8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20D92E8CC;

  return sub_20D942384();
}

uint64_t sub_20D944A30(uint64_t a1, char a2)
{
  *(v3 + 432) = a2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v2;
  sub_20D9752E8();
  *(v3 + 344) = sub_20D9752D8();
  v5 = sub_20D975298();
  *(v3 + 352) = v5;
  *(v3 + 360) = v4;

  return MEMORY[0x2822009F8](sub_20D944ACC, v5, v4);
}

uint64_t sub_20D944ACC()
{
  v26 = v0;
  v1 = v0[42];
  v2 = v1[17];
  v0[46] = v2;
  v3 = v1[18];
  v0[47] = v3;
  v4 = v1[19];
  v0[2] = v2;
  v0[48] = v4;
  v0[3] = v3;
  v0[4] = v4;
  v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C028, &qword_20D97F720);
  sub_20D974A48();
  v5 = v0[20];
  v6 = v0[21];

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {

LABEL_5:
    v8 = v0[1];

    return v8();
  }

  v10 = sub_20D972CC8();
  v0[50] = v11;
  if (!v11)
  {

    if (qword_27C838470 != -1)
    {
      swift_once();
    }

    v17 = sub_20D9734F8();
    __swift_project_value_buffer(v17, qword_27C840CC8);

    v18 = sub_20D9734D8();
    v19 = sub_20D975458();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D98B0A0, &v25);
      *(v20 + 12) = 2080;
      v22 = sub_20D972C68();
      v24 = sub_20D7F4DC8(v22, v23, &v25);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_20D7C9000, v18, v19, "%s could not get utilityID for site: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v21, -1, -1);
      MEMORY[0x20F324260](v20, -1, -1);
    }

    goto LABEL_5;
  }

  v12 = v10;
  v13 = v11;
  v14 = [objc_opt_self() defaultSessionConfiguration];
  v15 = [objc_opt_self() sessionWithConfiguration_];
  v0[51] = v15;

  sub_20D973328();
  v16 = swift_task_alloc();
  v0[52] = v16;
  *v16 = v0;
  v16[1] = sub_20D944E10;

  return MEMORY[0x282172650](v12, v13, v15);
}

uint64_t sub_20D944E10(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 424) = a1;

  if (v1)
  {

    v4 = *(v3 + 352);
    v5 = *(v3 + 360);
    v6 = sub_20D945330;
  }

  else
  {

    v4 = *(v3 + 352);
    v5 = *(v3 + 360);
    v6 = sub_20D944F60;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20D944F60()
{
  v38 = v0;
  v1 = *(v0 + 424);

  if (v1)
  {
    v2 = *(v0 + 424);
    v3 = sub_20D9731D8();
    if (!v4)
    {
      v3 = sub_20D9731B8();
    }

    v5 = *(v0 + 384);
    v6 = *(v0 + 336);
    v7 = *(v0 + 432);
    *(v0 + 40) = *(v0 + 368);
    *(v0 + 56) = v5;
    *(v0 + 176) = v3;
    *(v0 + 184) = v4;
    sub_20D974A58();
    v8 = sub_20D9731A8();
    v36 = v2;
    v9 = sub_20D973168();

    v10 = sub_20D9732E8();
    v12 = v11;

    v13 = v6[20];
    v14 = v6[21];
    v15 = v6[22];
    *(v0 + 64) = v13;
    *(v0 + 72) = v14;
    *(v0 + 80) = v15;
    *(v0 + 192) = v10;
    *(v0 + 200) = v12;
    sub_20D974A58();
    v16 = *(v0 + 408);
    if (v7 == 1)
    {
      v34 = *(v0 + 376);
      v35 = *(v0 + 384);
      v33 = *(v0 + 368);
      v17 = *(v0 + 336);
      v18 = v17[6];
      v19 = v17[7];
      *(v0 + 208) = v18;
      *(v0 + 216) = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFE0, &qword_20D97F538);
      sub_20D974A48();
      *(v0 + 88) = v13;
      *(v0 + 96) = v14;
      *(v0 + 104) = v15;
      sub_20D974A48();
      sub_20D80D4B0(*(v0 + 224), *(v0 + 232));

      *(v0 + 240) = v18;
      *(v0 + 248) = v19;
      sub_20D974A48();
      *(v0 + 112) = v33;
      *(v0 + 120) = v34;
      *(v0 + 128) = v35;
      sub_20D974A48();
      sub_20D80D89C(*(v0 + 256), *(v0 + 264));

      v20 = v17[5];
      *(v0 + 272) = v17[4];
      *(v0 + 280) = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD8, &qword_20D97F530);
      sub_20D974A48();
      *(v0 + 136) = v33;
      *(v0 + 144) = v34;
      *(v0 + 152) = v35;
      sub_20D974A48();
      sub_20D81B69C(*(v0 + 288), *(v0 + 296));
    }

    else
    {
    }
  }

  else
  {
    if (qword_27C838470 != -1)
    {
      swift_once();
    }

    v21 = sub_20D9734F8();
    __swift_project_value_buffer(v21, qword_27C840CC8);

    v22 = sub_20D9734D8();
    v23 = sub_20D975458();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 408);
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37 = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D98B0A0, &v37);
      *(v26 + 12) = 2080;
      v28 = sub_20D972C68();
      v30 = sub_20D7F4DC8(v28, v29, &v37);

      *(v26 + 14) = v30;
      _os_log_impl(&dword_20D7C9000, v22, v23, "%s could not get utilityConfiguration for site: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v27, -1, -1);
      MEMORY[0x20F324260](v26, -1, -1);
    }
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_20D945330()
{
  v14 = v0;

  if (qword_27C838470 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  __swift_project_value_buffer(v1, qword_27C840CC8);

  v2 = sub_20D9734D8();
  v3 = sub_20D975458();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 408);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D98B0A0, &v13);
    *(v6 + 12) = 2080;
    v8 = sub_20D972C68();
    v10 = sub_20D7F4DC8(v8, v9, &v13);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s could not get utilityConfiguration for site: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v7, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_20D94550C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return MEMORY[0x2822009F8](sub_20D94552C, 0, 0);
}

uint64_t sub_20D94552C()
{
  sub_20D9752E8();
  *(v0 + 56) = sub_20D9752D8();
  v2 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D9455C0, v2, v1);
}

uint64_t sub_20D9455C0()
{
  v1 = v0[5];

  v2 = *(v1 + 56);
  v0[2] = *(v1 + 48);
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFE0, &qword_20D97F538);
  sub_20D974A48();
  v0[8] = v0[4];

  return MEMORY[0x2822009F8](sub_20D945660, 0, 0);
}

uint64_t sub_20D945660(uint64_t a1)
{
  v2 = sub_20D972C68();
  v4 = v3;
  *(v1 + 72) = v3;
  v5 = swift_task_alloc();
  *(v1 + 80) = v5;
  *v5 = v1;
  v5[1] = sub_20D945714;

  return sub_20D80FEF0(v2, v4);
}

uint64_t sub_20D945714()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20D945844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return MEMORY[0x2822009F8](sub_20D945864, 0, 0);
}

uint64_t sub_20D945864()
{
  sub_20D9752E8();
  *(v0 + 56) = sub_20D9752D8();
  v2 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D9458F8, v2, v1);
}

uint64_t sub_20D9458F8()
{
  v1 = v0[5];

  v2 = *(v1 + 40);
  v0[2] = *(v1 + 32);
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD8, &qword_20D97F530);
  sub_20D974A48();
  v0[8] = v0[4];

  return MEMORY[0x2822009F8](sub_20D945998, 0, 0);
}

uint64_t sub_20D945998(uint64_t a1)
{
  v2 = sub_20D972C68();
  v4 = v3;
  *(v1 + 72) = v3;
  v5 = swift_task_alloc();
  *(v1 + 80) = v5;
  *v5 = v1;
  v5[1] = sub_20D9493B4;

  return sub_20D81F678(v2, v4);
}

uint64_t sub_20D945A6C()
{
  sub_20D9752E8();
  *(v0 + 48) = sub_20D9752D8();
  v2 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D945B00, v2, v1);
}

uint64_t sub_20D945B00()
{
  v1 = v0[5];

  v2 = *(v1 + 40);
  v0[2] = *(v1 + 32);
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD8, &qword_20D97F530);
  sub_20D974A48();
  v0[7] = v0[4];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_20D945BC8;

  return sub_20D821F08();
}

uint64_t sub_20D945BC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20D945CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_20D84B0F8;

  return sub_20D944A30(a3, 1);
}

uint64_t sub_20D945D7C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1A8, &qword_20D97F8E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C1B0, &qword_20D97F8F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C150, &qword_20D97F8B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C1B8, &qword_20D97F8F8);
  type metadata accessor for HistoricalUsageDetailsSheet(255);
  sub_20D94911C(&qword_27C83C1C0, type metadata accessor for HistoricalUsageDetailsSheet, &protocol conformance descriptor for HistoricalUsageDetailsSheet);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C168, &qword_20D97F8C8);
  sub_20D7EBC4C(&qword_27C83C170, &qword_27C83C168, &qword_20D97F8C8, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_20D973DB8();
}

uint64_t sub_20D945F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_20D974068();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D9726E8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_20D975058();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for HistoricalUsageDetailsSheet(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1B8, &qword_20D97F8F8);
  v37 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1B0, &qword_20D97F8F0);
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x28223BE20](v13);
  v36 = &v35 - v14;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v43 = a1;
  v46 = v15;
  v47 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFD8, &qword_20D97F530);
  sub_20D974A48();
  HistoricalUsageDetailsSheet.init(snapshotManager:)(v45, v9);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v17 = qword_28112ABE8;
  sub_20D9726B8();
  v46 = sub_20D9750F8();
  v47 = v18;
  sub_20D7E1EF8();
  v19 = sub_20D9745C8();
  v21 = v20;
  v23 = v22;
  v24 = sub_20D94911C(&qword_27C83C1C0, type metadata accessor for HistoricalUsageDetailsSheet, &protocol conformance descriptor for HistoricalUsageDetailsSheet);
  sub_20D974788();
  sub_20D7EADC0(v19, v21, v23 & 1);

  sub_20D949164(v9, type metadata accessor for HistoricalUsageDetailsSheet);
  v26 = v40;
  v25 = v41;
  v27 = v42;
  (*(v41 + 104))(v40, *MEMORY[0x277CDDDC0], v42);
  v46 = v7;
  v47 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v36;
  sub_20D9747E8();
  (*(v25 + 8))(v26, v27);
  v30 = (*(v37 + 8))(v12, v10);
  MEMORY[0x28223BE20](v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C150, &qword_20D97F8B8);
  v46 = v10;
  v47 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C168, &qword_20D97F8C8);
  v32 = sub_20D7EBC4C(&qword_27C83C170, &qword_27C83C168, &qword_20D97F8C8, MEMORY[0x277CDD7A8]);
  v46 = v31;
  v47 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v39;
  sub_20D974828();
  return (*(v38 + 8))(v29, v33);
}

uint64_t sub_20D9465D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C140, &qword_20D97F8A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C148, &qword_20D97F8B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C150, &qword_20D97F8B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C158, &qword_20D97F8C0);
  type metadata accessor for UtilityRateInfoDetailsSheet(255);
  sub_20D94911C(&qword_27C83C160, type metadata accessor for UtilityRateInfoDetailsSheet, &protocol conformance descriptor for UtilityRateInfoDetailsSheet);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C168, &qword_20D97F8C8);
  sub_20D7EBC4C(&qword_27C83C170, &qword_27C83C168, &qword_20D97F8C8, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_20D973DB8();
}

uint64_t sub_20D9467C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_20D974068();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D9726E8();
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D975058();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D972628();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v17 = type metadata accessor for UtilityRateInfoDetailsSheet(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C158, &qword_20D97F8C0);
  v51 = *(v20 - 8);
  v52 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C148, &qword_20D97F8B0);
  v54 = *(v23 - 8);
  v55 = v23;
  MEMORY[0x28223BE20](v23);
  v53 = &v49 - v24;
  v25 = *(a1 + 48);
  v26 = *(a1 + 56);
  v59 = a1;
  v62 = v25;
  v63 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFE0, &qword_20D97F538);
  sub_20D974A48();
  v27 = v61;
  sub_20D9725C8();
  (*(v11 + 16))(v14, v16, v10);
  sub_20D974A38();
  (*(v11 + 8))(v16, v10);
  *v19 = v27;
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v28 = qword_28112ABE8;
  v29 = qword_28112ABE8;
  v30 = v50;
  sub_20D9726B8();
  v62 = sub_20D975108(v9, 0, 0, v28, v30, "Text to show electricity rates widget title", 43, 2);
  v63 = v31;
  sub_20D7E1EF8();
  v32 = sub_20D9745C8();
  v34 = v33;
  v36 = v35;
  v37 = sub_20D94911C(&qword_27C83C160, type metadata accessor for UtilityRateInfoDetailsSheet, &protocol conformance descriptor for UtilityRateInfoDetailsSheet);
  sub_20D974788();
  sub_20D7EADC0(v32, v34, v36 & 1);

  sub_20D949164(v19, type metadata accessor for UtilityRateInfoDetailsSheet);
  v39 = v56;
  v38 = v57;
  v40 = v58;
  (*(v57 + 104))(v56, *MEMORY[0x277CDDDC0], v58);
  v62 = v17;
  v63 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v52;
  v43 = v53;
  sub_20D9747E8();
  (*(v38 + 8))(v39, v40);
  v44 = (*(v51 + 8))(v22, v42);
  MEMORY[0x28223BE20](v44);
  *(&v49 - 2) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C150, &qword_20D97F8B8);
  v62 = v42;
  v63 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C168, &qword_20D97F8C8);
  v46 = sub_20D7EBC4C(&qword_27C83C170, &qword_27C83C168, &qword_20D97F8C8, MEMORY[0x277CDD7A8]);
  v62 = v45;
  v63 = v46;
  swift_getOpaqueTypeConformance2();
  v47 = v55;
  sub_20D974828();
  return (*(v54 + 8))(v43, v47);
}

uint64_t sub_20D946E9C(uint64_t a1, uint64_t a2)
{
  v3 = sub_20D974208();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C168, &qword_20D97F8C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  sub_20D9741F8();
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C178, &qword_20D97F8D0);
  sub_20D7EBC4C(&qword_27C83C180, &qword_27C83C178, &qword_20D97F8D0, MEMORY[0x277CDF028]);
  sub_20D973B48();
  v8 = sub_20D7EBC4C(&qword_27C83C170, &qword_27C83C168, &qword_20D97F8C8, MEMORY[0x277CDD7A8]);
  MEMORY[0x20F3223E0](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_20D94707C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20D973AC8();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_20D973AB8();
  sub_20D9484C8(a1, v11);
  v8 = swift_allocObject();
  sub_20D948500(v11, v8 + 16);
  return MEMORY[0x20F322C50](v7, a3, v8);
}

uint64_t sub_20D9471A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1D0, &qword_20D97F908);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v30 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA30, &unk_20D97E930);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  v21 = *(a1 + 176);
  v32 = *(a1 + 160);
  *&v33 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C028, &qword_20D97F720);
  sub_20D974A48();
  sub_20D9721B8();

  sub_20D7EB7E8(v20, v18, &qword_27C838B78, &qword_20D97A5A0);
  *(swift_allocObject() + 16) = 0x4042800000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA38, &qword_20D97E940);
  sub_20D949328();
  sub_20D973AA8();
  sub_20D974C48();
  sub_20D973C18();
  v22 = &v14[*(v9 + 44)];
  v23 = v33;
  *v22 = v32;
  *(v22 + 1) = v23;
  *(v22 + 2) = v34;
  *v7 = sub_20D974168();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1D8, &qword_20D97F910);
  sub_20D94788C(a1, &v7[*(v24 + 44)]);
  sub_20D7EB7E8(v14, v12, &qword_27C83BA30, &unk_20D97E930);
  v25 = v30;
  sub_20D7EB7E8(v7, v30, &qword_27C83C1D0, &qword_20D97F908);
  v26 = v31;
  sub_20D7EB7E8(v12, v31, &qword_27C83BA30, &unk_20D97E930);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1E0, &qword_20D97F918);
  sub_20D7EB7E8(v25, v26 + *(v27 + 48), &qword_27C83C1D0, &qword_20D97F908);
  v28 = v26 + *(v27 + 64);
  *v28 = 0;
  *(v28 + 8) = 1;
  sub_20D7E3944(v7, &qword_27C83C1D0, &qword_20D97F908);
  sub_20D7E3944(v14, &qword_27C83BA30, &unk_20D97E930);
  sub_20D7E3944(v20, &qword_27C838B78, &qword_20D97A5A0);
  sub_20D7E3944(v25, &qword_27C83C1D0, &qword_20D97F908);
  return sub_20D7E3944(v12, &qword_27C83BA30, &unk_20D97E930);
}

uint64_t sub_20D9475A8@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_20D9749C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA50, &qword_20D97E948);
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  if (sub_20D973D28())
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v11 = sub_20D974A08();

    (*(v5 + 8))(v7, v4);
    v12 = a2 * 0.225;
    v13 = &v10[*(v8 + 36)];
    v14 = *(sub_20D973DE8() + 20);
    v15 = *MEMORY[0x277CE0118];
    v16 = sub_20D974118();
    (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
    *v13 = v12;
    v13[1] = v12;
    *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C98, &unk_20D977550) + 36)) = 256;
    *v10 = v11;
    *(v10 + 1) = 0;
    *(v10 + 8) = 1;
    sub_20D7EAF18(v10, a1, &qword_27C83BA50, &qword_20D97E948);
    return (*(v20 + 56))(a1, 0, 1, v8);
  }

  else
  {
    v18 = *(v20 + 56);

    return v18(a1, 1, 1, v8);
  }
}

uint64_t sub_20D94788C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v88 = sub_20D974458();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v85 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1E8, &unk_20D97F920);
  v4 = MEMORY[0x28223BE20](v86);
  v92 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v94 = (&v83 - v6);
  v7 = sub_20D9740E8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v90 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v91 = &v83 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v89 = &v83 - v14;
  MEMORY[0x28223BE20](v13);
  v95 = &v83 - v15;
  sub_20D9740D8();
  sub_20D9740C8();
  v16 = *(a1 + 152);
  v96 = *(a1 + 136);
  v97 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C028, &qword_20D97F720);
  sub_20D974A48();
  sub_20D9740B8();

  sub_20D9740C8();
  sub_20D974108();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v17 = qword_28112ABE8;
  v18 = sub_20D9745A8();
  v20 = v19;
  v22 = v21;
  sub_20D974388();
  sub_20D9743A8();

  v23 = sub_20D974558();
  v25 = v24;
  v27 = v26;

  sub_20D7EADC0(v18, v20, v22 & 1);

  v84 = objc_opt_self();
  v28 = [v84 labelColor];
  *&v96 = sub_20D974888();
  v29 = sub_20D974518();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_20D7EADC0(v23, v25, v27 & 1);

  *&v96 = v29;
  *(&v96 + 1) = v31;
  LOBYTE(v97) = v33 & 1;
  v98 = v35;
  sub_20D9747D8();
  sub_20D7EADC0(v29, v31, v33 & 1);

  v36 = sub_20D974088();
  v37 = v94;
  *v94 = v36;
  v37[1] = 0;
  *(v37 + 16) = 1;
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1F0, &qword_20D97F930);
  v40 = v38;
  sub_20D948170(v38 + *(v39 + 44));
  LOBYTE(v38) = sub_20D974328();
  sub_20D973AD8();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C1F8, &qword_20D97F938) + 36);
  *v49 = v38;
  *(v49 + 8) = v42;
  *(v49 + 16) = v44;
  *(v49 + 24) = v46;
  *(v49 + 32) = v48;
  *(v49 + 40) = 0;
  LOBYTE(v38) = sub_20D974338();
  sub_20D973AD8();
  v50 = v40 + *(v86 + 36);
  *v50 = v38;
  *(v50 + 8) = v51;
  *(v50 + 16) = v52;
  *(v50 + 24) = v53;
  *(v50 + 32) = v54;
  *(v50 + 40) = 0;
  sub_20D9740F8();
  v55 = sub_20D9745A8();
  v57 = v56;
  LOBYTE(v31) = v58;
  sub_20D974388();
  v59 = v87;
  v60 = v85;
  v61 = v88;
  (*(v87 + 104))(v85, *MEMORY[0x277CE0A10], v88);
  sub_20D974478();

  (*(v59 + 8))(v60, v61);
  v62 = sub_20D974558();
  v64 = v63;
  v66 = v65;

  sub_20D7EADC0(v55, v57, v31 & 1);

  v67 = [v84 secondaryLabelColor];
  *&v96 = sub_20D974888();
  v68 = sub_20D974518();
  v70 = v69;
  LOBYTE(v31) = v71;
  v73 = v72;
  sub_20D7EADC0(v62, v64, v66 & 1);

  *&v96 = v68;
  *(&v96 + 1) = v70;
  LOBYTE(v97) = v31 & 1;
  v98 = v73;
  v74 = v89;
  sub_20D9747D8();
  sub_20D7EADC0(v68, v70, v31 & 1);

  v75 = v95;
  v76 = v91;
  sub_20D7EB7E8(v95, v91, &qword_27C838F18, &unk_20D977860);
  v77 = v94;
  v78 = v92;
  sub_20D7EB7E8(v94, v92, &qword_27C83C1E8, &unk_20D97F920);
  v79 = v90;
  sub_20D7EB7E8(v74, v90, &qword_27C838F18, &unk_20D977860);
  v80 = v93;
  sub_20D7EB7E8(v76, v93, &qword_27C838F18, &unk_20D977860);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C200, &qword_20D97F940);
  sub_20D7EB7E8(v78, v80 + *(v81 + 48), &qword_27C83C1E8, &unk_20D97F920);
  sub_20D7EB7E8(v79, v80 + *(v81 + 64), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v74, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v77, &qword_27C83C1E8, &unk_20D97F920);
  sub_20D7E3944(v75, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v79, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v78, &qword_27C83C1E8, &unk_20D97F920);
  return sub_20D7E3944(v76, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D948170@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C208, &qword_20D97F948);
  v32 = *(v35 - 8);
  v1 = MEMORY[0x28223BE20](v35);
  v34 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - v3;
  sub_20D973B58();
  sub_20D9740F8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v5 = qword_28112ABE8;
  v6 = sub_20D9745A8();
  v8 = v7;
  v10 = v9;
  sub_20D974388();
  v11 = sub_20D974558();
  v13 = v12;
  v15 = v14;

  sub_20D7EADC0(v6, v8, v10 & 1);

  v16 = [objc_opt_self() secondaryLabelColor];
  v36 = sub_20D974888();
  v17 = sub_20D974518();
  v19 = v18;
  v21 = v20;
  v31 = v22;
  sub_20D7EADC0(v11, v13, v15 & 1);

  v23 = v32;
  v24 = *(v32 + 16);
  v26 = v34;
  v25 = v35;
  v24(v34, v4, v35);
  v27 = v33;
  v24(v33, v26, v25);
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C210, &qword_20D97F950) + 48);
  *v28 = v17;
  *(v28 + 8) = v19;
  *(v28 + 16) = v21 & 1;
  *(v28 + 24) = v31;
  sub_20D7DDC4C(v17, v19, v21 & 1);
  v29 = *(v23 + 8);

  v29(v4, v25);
  sub_20D7EADC0(v17, v19, v21 & 1);

  return (v29)(v26, v25);
}

uint64_t sub_20D948540()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20D805810;

  return sub_20D9422D8();
}

uint64_t sub_20D948604(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 241))
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

uint64_t sub_20D94864C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20D9486DC()
{
  result = qword_27C83C010;
  if (!qword_27C83C010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C008, &qword_20D97F578);
    sub_20D7EBC4C(&qword_27C83C018, &qword_27C83BFE8, &qword_20D97F540, MEMORY[0x277CDDB50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C010);
  }

  return result;
}

uint64_t sub_20D948794()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20D7EB52C;

  return sub_20D944984();
}

uint64_t sub_20D948874(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D7EB52C;

  return sub_20D94550C(a1, v5, v4);
}

uint64_t sub_20D948920(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D805810;

  return sub_20D945844(a1, v5, v4);
}

uint64_t sub_20D9489CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D805810;

  return sub_20D945A4C(a1, v4);
}

uint64_t sub_20D948A6C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D805810;

  return sub_20D945CDC(a1, v5, v4);
}

unint64_t sub_20D948B18()
{
  result = qword_27C83C078;
  if (!qword_27C83C078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C048, &qword_20D97F7B0);
    sub_20D948BA4();
    sub_20D948C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C078);
  }

  return result;
}

unint64_t sub_20D948BA4()
{
  result = qword_27C83C080;
  if (!qword_27C83C080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C050, &qword_20D97F7B8);
    sub_20D7EBC4C(&qword_27C83C088, &qword_27C83C090, &qword_20D97F818, MEMORY[0x277CDF510]);
    sub_20D7EBC4C(&qword_27C83C098, &qword_27C83C0A0, &qword_20D97F820, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C080);
  }

  return result;
}

unint64_t sub_20D948C88()
{
  result = qword_27C83C0A8;
  if (!qword_27C83C0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C030, &qword_20D97F798);
    sub_20D948D44();
    sub_20D94911C(&qword_281126F38, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C0A8);
  }

  return result;
}

unint64_t sub_20D948D44()
{
  result = qword_27C83C0B0;
  if (!qword_27C83C0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C0B8, &qword_20D97F828);
    sub_20D948DFC();
    sub_20D7EBC4C(&qword_281124E40, &qword_27C838FD8, &qword_20D977990, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C0B0);
  }

  return result;
}

unint64_t sub_20D948DFC()
{
  result = qword_27C83C0C0;
  if (!qword_27C83C0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C0C8, &qword_20D97F830);
    sub_20D948E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C0C0);
  }

  return result;
}

unint64_t sub_20D948E88()
{
  result = qword_27C83C0D0;
  if (!qword_27C83C0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C0D8, &qword_20D97F838);
    sub_20D948F14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C0D0);
  }

  return result;
}

unint64_t sub_20D948F14()
{
  result = qword_27C83C0E0;
  if (!qword_27C83C0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C0E8, &qword_20D97F840);
    sub_20D7EBC4C(&qword_27C83C0F0, &qword_27C83C0F8, &unk_20D97F848, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C0E0);
  }

  return result;
}

uint64_t sub_20D948FCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D94911C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D949164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_6()
{

  MEMORY[0x20F324310](v0 + 40);

  sub_20D809438(*(v0 + 248), *(v0 + 256));

  return MEMORY[0x2821FE8E8](v0, 257, 7);
}

unint64_t sub_20D949328()
{
  result = qword_27C83BA40;
  if (!qword_27C83BA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BA38, &qword_20D97E940);
    sub_20D9309A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BA40);
  }

  return result;
}

uint64_t UtilityRateInfoDetailsSheet.init(snapshotManager:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  type metadata accessor for UtilityRateInfoDetailsSheet(0);
  sub_20D9725C8();
  (*(v5 + 16))(v8, v10, v4);
  sub_20D974A38();
  result = (*(v5 + 8))(v10, v4);
  *a2 = a1;
  return result;
}

uint64_t UtilityRateInfoDetailsSheet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = type metadata accessor for UtilityRateInfoDetailsSheet(0);
  v61 = *(v2 - 8);
  v59 = *(v61 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v62 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_20D973CD8();
  v4 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C220, &qword_20D97F980);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - v9;
  v11 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v57 = *(v11 - 8);
  v56 = *(v57 + 64);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v55 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - v14;
  v16 = *v1;
  v58 = v1;
  swift_getKeyPath();
  v65 = v16;
  sub_20D9502D0(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  v17 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot;
  swift_beginAccess();
  v53 = v15;
  v54 = type metadata accessor for UtilityRateInfoSnapshot;
  sub_20D94AEE0(v16 + v17, v15, type metadata accessor for UtilityRateInfoSnapshot);
  v63 = v15;
  v64 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C228, &qword_20D97F9B0);
  sub_20D7EBC4C(&qword_27C83C230, &qword_27C83C228, &qword_20D97F9B0, MEMORY[0x277CE14C0]);
  sub_20D9744D8();
  sub_20D973CC8();
  sub_20D7EBC4C(&qword_27C83C238, &qword_27C83C220, &qword_20D97F980, MEMORY[0x277CDE5A0]);
  v18 = v52;
  v19 = v60;
  sub_20D974878();
  (*(v4 + 8))(v6, v19);
  (*(v8 + 8))(v10, v7);
  v20 = objc_opt_self();
  v21 = [v20 defaultCenter];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C240, &qword_20D97F9B8);
  v23 = v18;
  sub_20D9754B8();

  v24 = v58;
  v25 = v62;
  v51 = type metadata accessor for UtilityRateInfoDetailsSheet;
  sub_20D94AEE0(v58, v62, type metadata accessor for UtilityRateInfoDetailsSheet);
  v26 = *(v61 + 80);
  v27 = v59 + ((v26 + 16) & ~v26);
  v28 = (v26 + 16) & ~v26;
  v60 = v28;
  v61 = v26 | 7;
  v29 = swift_allocObject();
  v59 = type metadata accessor for UtilityRateInfoDetailsSheet;
  v30 = v29 + v28;
  v31 = v25;
  sub_20D94B290(v25, v30, type metadata accessor for UtilityRateInfoDetailsSheet);
  v32 = v23;
  v33 = (v23 + *(v22 + 56));
  *v33 = sub_20D94AF48;
  v33[1] = v29;
  v34 = [v20 defaultCenter];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C248, &qword_20D97F9C8);
  sub_20D9754B8();

  sub_20D94AEE0(v24, v31, type metadata accessor for UtilityRateInfoDetailsSheet);
  v37 = v53;
  v36 = v54;
  v38 = v55;
  sub_20D94AEE0(v53, v55, v54);
  v39 = *(v57 + 80);
  v40 = &v27[v39] & ~v39;
  v41 = swift_allocObject();
  sub_20D94B290(v31, v41 + v60, v59);
  sub_20D94B290(v38, v41 + v40, type metadata accessor for UtilityRateInfoSnapshot);
  v42 = (v32 + *(v35 + 56));
  *v42 = sub_20D94B2F8;
  v42[1] = v41;
  sub_20D94AEE0(v37, v38, v36);
  v43 = swift_allocObject();
  v44 = v38;
  sub_20D94B290(v38, v43 + ((v39 + 16) & ~v39), type metadata accessor for UtilityRateInfoSnapshot);
  v45 = v32;
  v46 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C250, &qword_20D97F9D0) + 36));
  *v46 = sub_20D94B568;
  v46[1] = v43;
  v46[2] = 0;
  v46[3] = 0;
  v47 = v62;
  sub_20D94AEE0(v58, v62, v51);
  sub_20D94AEE0(v37, v44, v36);
  v48 = swift_allocObject();
  sub_20D94B290(v47, v48 + v60, v59);
  sub_20D94B290(v44, v48 + v40, type metadata accessor for UtilityRateInfoSnapshot);
  v49 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C258, &qword_20D97F9D8) + 36));
  *v49 = 0;
  v49[1] = 0;
  v49[2] = sub_20D94BAE4;
  v49[3] = v48;
  return sub_20D956740(v37, type metadata accessor for UtilityRateInfoSnapshot);
}

uint64_t sub_20D949C60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v145 = a3;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A890, &qword_20D97C498);
  v141 = *(v142 - 1);
  MEMORY[0x28223BE20](v142);
  v127 = &v126 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A898, &qword_20D97C4A0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v144 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v153 = &v126 - v9;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C480, &qword_20D97FE48);
  v10 = MEMORY[0x28223BE20](v140);
  v154 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v126 - v12;
  v13 = type metadata accessor for UtilityRateInfoDetailsSheet.RatePlanTypeView(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v159 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v157 = &v126 - v16;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C488, &qword_20D97FE50);
  v143 = *(v152 - 8);
  v17 = MEMORY[0x28223BE20](v152);
  v151 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v156 = &v126 - v19;
  v136 = sub_20D974BD8();
  v134 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v133 = (&v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C490, &qword_20D97FE58);
  v21 = MEMORY[0x28223BE20](v135);
  v150 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v155 = &v126 - v23;
  v24 = type metadata accessor for UtilityRateInfoSnapshot(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for RatePlanTitle(0);
  MEMORY[0x28223BE20](v27);
  v29 = (&v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C498, &qword_20D97FE60);
  v148 = *(v149 - 8);
  v30 = MEMORY[0x28223BE20](v149);
  v147 = &v126 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v126 - v32;
  sub_20D94AEE0(a1, v26, type metadata accessor for UtilityRateInfoSnapshot);
  v34 = *a2;
  swift_getKeyPath();
  v35 = v34 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  v161 = v34;
  v137 = sub_20D9502D0(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  v138 = v35;
  sub_20D972858();

  v139 = v34;
  v36 = (v34 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityArtworkURL);
  swift_beginAccess();
  if (v36[1])
  {
    v37 = *v36;
    v38 = v36[1];
  }

  else
  {
    v37 = 0;
    v38 = 0xE000000000000000;
  }

  *v29 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  sub_20D94B290(v26, v29 + v27[5], type metadata accessor for UtilityRateInfoSnapshot);
  v39 = (v29 + v27[6]);
  *v39 = v37;
  v39[1] = v38;
  *(v29 + v27[7]) = 0x4044800000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C4A0, &qword_20D97FE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D977210;

  v41 = sub_20D973BB8();
  *(inited + 32) = v41;
  v42 = sub_20D973BC8();
  *(inited + 33) = v42;
  sub_20D973BD8();
  sub_20D973BD8();
  if (sub_20D973BD8() != v41)
  {
    sub_20D973BD8();
  }

  sub_20D973BD8();
  if (sub_20D973BD8() != v42)
  {
    sub_20D973BD8();
  }

  sub_20D9502D0(&qword_27C83C4A8, type metadata accessor for RatePlanTitle, &unk_20D97FB00);
  v146 = v33;
  sub_20D974798();
  sub_20D956740(v29, type metadata accessor for RatePlanTitle);
  v131 = type metadata accessor for UtilityRateInfoSnapshot;
  v43 = a1;
  v132 = a1;
  v44 = v155;
  sub_20D94AEE0(v43, v155, type metadata accessor for UtilityRateInfoSnapshot);
  KeyPath = swift_getKeyPath();
  v46 = type metadata accessor for UtilityPeaksGrid(0);
  *(v44 + v46[6]) = KeyPath;
  swift_storeEnumTagMultiPayload();
  *(v44 + v46[5]) = 0x4039000000000000;
  v130 = v46[7];
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C4B0, &qword_20D97FE98);
  sub_20D974BE8();
  v47 = swift_allocObject();
  v128 = xmmword_20D979110;
  *(v47 + 16) = xmmword_20D979110;
  v48 = v133;
  *v133 = xmmword_20D97F960;
  v49 = *(v134 + 104);
  v50 = v136;
  v49(v48, *MEMORY[0x277CDF100], v136);
  sub_20D974BF8();
  *(v44 + v130) = v47;
  v51 = v46[8];
  v52 = swift_allocObject();
  *(v52 + 16) = v128;
  *v48 = xmmword_20D97F970;
  v49(v48, *MEMORY[0x277CDF108], v50);
  sub_20D974BF8();
  *(v44 + v51) = v52;
  LOBYTE(v52) = sub_20D974338();
  sub_20D973AD8();
  v53 = v44 + *(v135 + 36);
  *v53 = v52;
  *(v53 + 8) = v54;
  *(v53 + 16) = v55;
  *(v53 + 24) = v56;
  *(v53 + 32) = v57;
  *(v53 + 40) = 0;
  LOBYTE(v52) = sub_20D974328();
  sub_20D973AD8();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  LOBYTE(v48) = sub_20D974338();
  sub_20D973AD8();
  v160[0] = 0;
  v175 = 0;
  LOBYTE(v161) = v52;
  *(&v161 + 1) = *v178;
  HIDWORD(v161) = *&v178[3];
  v162 = v59;
  v163 = v61;
  v164 = v63;
  v165 = v65;
  v166 = 0;
  *v167 = *v177;
  *&v167[3] = *&v177[3];
  v168 = v48;
  *&v169[3] = *&v176[3];
  *v169 = *v176;
  v170 = v66;
  v171 = v67;
  v172 = v68;
  v173 = v69;
  v174 = 0;
  sub_20D973BC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C4B8, &qword_20D97FEA0);
  sub_20D9567A0();
  sub_20D974798();
  v70 = v132;
  v71 = v131;
  sub_20D94AEE0(v132, v157, v131);
  v72 = v158;
  sub_20D94AEE0(v70, v158, v71);
  LOBYTE(v70) = sub_20D974328();
  sub_20D973AD8();
  v73 = v72 + *(v140 + 36);
  *v73 = v70;
  *(v73 + 8) = v74;
  *(v73 + 16) = v75;
  *(v73 + 24) = v76;
  *(v73 + 32) = v77;
  *(v73 + 40) = 0;
  swift_getKeyPath();
  v78 = v139;
  v161 = v139;
  sub_20D972858();

  v79 = (v78 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityName);
  swift_beginAccess();
  v80 = v79[1];
  if (v80)
  {
    v81 = *v79;

    v82 = _s12HomeEnergyUI25UtilityIntegrationStringsV17utilityRateFooter0G4NameS2S_tFZ_0(v81, v80);
    v84 = v83;

    v161 = v82;
    v162 = v84;
    sub_20D7E1EF8();
    v85 = sub_20D9745C8();
    v87 = v86;
    LOBYTE(v84) = v88;
    sub_20D974398();
    v89 = sub_20D974558();
    v91 = v90;
    v93 = v92;

    sub_20D7EADC0(v85, v87, v84 & 1);

    v94 = sub_20D974588();
    v96 = v95;
    LOBYTE(v84) = v97;
    sub_20D7EADC0(v89, v91, v93 & 1);

    sub_20D974968();
    v98 = sub_20D974508();
    v100 = v99;
    v102 = v101;
    v104 = v103;

    sub_20D7EADC0(v94, v96, v84 & 1);

    v161 = v98;
    v162 = v100;
    LOBYTE(v163) = v102 & 1;
    v164 = v104;
    sub_20D973BC8();
    v105 = v127;
    sub_20D974798();
    sub_20D7EADC0(v98, v100, v102 & 1);

    v106 = v141;
    v107 = v153;
    v108 = v142;
    (*(v141 + 32))(v153, v105, v142);
    v109 = 0;
  }

  else
  {
    v107 = v153;
    v108 = v142;
    v106 = v141;
    v109 = 1;
  }

  (*(v106 + 56))(v107, v109, 1, v108);
  v110 = *(v148 + 16);
  v111 = v147;
  v110(v147, v146, v149);
  v112 = v150;
  sub_20D7EB7E8(v155, v150, &qword_27C83C490, &qword_20D97FE58);
  v113 = v143;
  v142 = *(v143 + 16);
  v114 = v151;
  (v142)(v151, v156, v152);
  sub_20D94AEE0(v157, v159, type metadata accessor for UtilityRateInfoDetailsSheet.RatePlanTypeView);
  sub_20D7EB7E8(v158, v154, &qword_27C83C480, &qword_20D97FE48);
  v115 = v107;
  v116 = v144;
  sub_20D7DC374(v115, v144);
  v117 = v145;
  v118 = v111;
  v119 = v149;
  v110(v145, v118, v149);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C4E0, &qword_20D97FED8);
  sub_20D7EB7E8(v112, &v117[v120[12]], &qword_27C83C490, &qword_20D97FE58);
  v121 = v152;
  (v142)(&v117[v120[16]], v114, v152);
  sub_20D94AEE0(v159, &v117[v120[20]], type metadata accessor for UtilityRateInfoDetailsSheet.RatePlanTypeView);
  v122 = v154;
  sub_20D7EB7E8(v154, &v117[v120[24]], &qword_27C83C480, &qword_20D97FE48);
  sub_20D7DC374(v116, &v117[v120[28]]);
  sub_20D7DC3E4(v153);
  sub_20D7E3944(v158, &qword_27C83C480, &qword_20D97FE48);
  sub_20D956740(v157, type metadata accessor for UtilityRateInfoDetailsSheet.RatePlanTypeView);
  v123 = *(v113 + 8);
  v123(v156, v121);
  sub_20D7E3944(v155, &qword_27C83C490, &qword_20D97FE58);
  v124 = *(v148 + 8);
  v124(v146, v119);
  sub_20D7DC3E4(v116);
  sub_20D7E3944(v122, &qword_27C83C480, &qword_20D97FE48);
  sub_20D956740(v159, type metadata accessor for UtilityRateInfoDetailsSheet.RatePlanTypeView);
  v123(v151, v121);
  sub_20D7E3944(v150, &qword_27C83C490, &qword_20D97FE58);
  return (v124)(v147, v119);
}

uint64_t sub_20D94ADA4()
{
  v0 = sub_20D972628();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  sub_20D9725C8();
  type metadata accessor for UtilityRateInfoDetailsSheet(0);
  (*(v1 + 16))(v4, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
  sub_20D974A58();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_20D94AEE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D94AF48()
{
  type metadata accessor for UtilityRateInfoDetailsSheet(0);

  return sub_20D94ADA4();
}

void sub_20D94AFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  sub_20D972618();
  type metadata accessor for UtilityRateInfoDetailsSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
  sub_20D974A48();
  sub_20D972458();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  LODWORD(v14) = *(a3 + *(type metadata accessor for UtilityRateInfoSnapshot(0) + 40));
  v15 = v14 == 7;
  if (v14 == 7)
  {
    v14 = 0;
  }

  else
  {
    v14 = v14;
  }

  v19[424] = 0;
  v19[416] = 1;
  v19[408] = 1;
  v19[400] = 1;
  v19[392] = 1;
  v19[384] = 1;
  v19[376] = 1;
  v19[368] = 1;
  v19[360] = 1;
  v19[352] = 1;
  v19[344] = 1;
  v19[336] = 1;
  v19[328] = 1;
  v19[320] = 1;
  v19[312] = 1;
  v19[304] = v15;
  v17[0] = v12;
  LOWORD(v17[1]) = 512;
  v17[2] = 0;
  LOBYTE(v17[3]) = 1;
  v17[4] = 0;
  LOBYTE(v17[5]) = 1;
  memset(&v17[6], 0, 24);
  LOBYTE(v17[9]) = 1;
  memset(&v17[10], 0, 24);
  LOBYTE(v17[13]) = 1;
  v17[14] = 0;
  LOWORD(v17[15]) = 513;
  v17[16] = 0;
  LOWORD(v17[17]) = 1;
  memset(&v17[18], 0, 24);
  LOBYTE(v17[21]) = 1;
  v17[22] = 0;
  LOBYTE(v17[23]) = 1;
  v17[24] = 0;
  LOBYTE(v17[25]) = 1;
  v17[26] = 0;
  LOWORD(v17[27]) = 513;
  v17[28] = 0;
  LOWORD(v17[29]) = 513;
  v17[30] = 0;
  LOBYTE(v17[31]) = 1;
  v17[32] = 0;
  LOBYTE(v17[33]) = 1;
  v17[34] = 0;
  LOBYTE(v17[35]) = 1;
  v17[36] = v14;
  LOBYTE(v17[37]) = v15;
  nullsub_5();
  type metadata accessor for HEUIFAnalyticsEvent();
  v16 = swift_allocObject();
  sub_20D7E3AF0(v18);
  *(v16 + 16) = 36;
  memcpy(v19, v18, 0x129uLL);
  memcpy((v16 + 24), v17, 0x129uLL);
  sub_20D7E3944(v19, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v16);
}

uint64_t sub_20D94B290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_20D94B2F8(uint64_t a1)
{
  v3 = *(type metadata accessor for UtilityRateInfoDetailsSheet(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UtilityRateInfoSnapshot(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_20D94AFB8(a1, v1 + v4, v7);
}

double sub_20D94B3CC(uint64_t a1)
{
  LODWORD(v1) = *(a1 + *(type metadata accessor for UtilityRateInfoSnapshot(0) + 40));
  v2 = v1 == 7;
  __dst[424] = 1;
  if (v1 == 7)
  {
    v1 = 0;
  }

  else
  {
    v1 = v1;
  }

  __dst[416] = 1;
  __dst[408] = 1;
  __dst[400] = 1;
  __dst[392] = 1;
  __dst[384] = 1;
  __dst[376] = 1;
  __dst[368] = 1;
  __dst[360] = 1;
  __dst[352] = 1;
  __dst[344] = 1;
  __dst[336] = 1;
  __dst[328] = 1;
  __dst[320] = 1;
  __dst[312] = 1;
  __dst[304] = v2;
  v5[0] = 0;
  LOWORD(v5[1]) = 513;
  v5[2] = 0;
  LOBYTE(v5[3]) = 1;
  v5[4] = 0;
  LOBYTE(v5[5]) = 1;
  memset(&v5[6], 0, 24);
  LOBYTE(v5[9]) = 1;
  memset(&v5[10], 0, 24);
  LOBYTE(v5[13]) = 1;
  v5[14] = 0;
  LOWORD(v5[15]) = 513;
  v5[16] = 0;
  LOWORD(v5[17]) = 1;
  memset(&v5[18], 0, 24);
  LOBYTE(v5[21]) = 1;
  v5[22] = 0;
  LOBYTE(v5[23]) = 1;
  v5[24] = 0;
  LOBYTE(v5[25]) = 1;
  v5[26] = 0;
  LOWORD(v5[27]) = 513;
  v5[28] = 0;
  LOWORD(v5[29]) = 513;
  v5[30] = 0;
  LOBYTE(v5[31]) = 1;
  v5[32] = 0;
  LOBYTE(v5[33]) = 1;
  v5[34] = 0;
  LOBYTE(v5[35]) = 1;
  v5[36] = v1;
  LOBYTE(v5[37]) = v2;
  nullsub_5();
  type metadata accessor for HEUIFAnalyticsEvent();
  v3 = swift_allocObject();
  sub_20D7E3AF0(__src);
  *(v3 + 16) = 35;
  memcpy(__dst, __src, 0x129uLL);
  memcpy((v3 + 24), v5, 0x129uLL);
  sub_20D7E3944(__dst, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v3);

  return result;
}

double sub_20D94B568()
{
  v1 = *(type metadata accessor for UtilityRateInfoSnapshot(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_20D94B3CC(v2);
}

void sub_20D94B5C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_20D972628();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  sub_20D972618();
  type metadata accessor for UtilityRateInfoDetailsSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
  sub_20D974A48();
  sub_20D972458();
  v11 = v10;
  v12 = *(v4 + 8);
  v12(v7, v3);
  v12(v9, v3);
  LODWORD(v13) = *(a2 + *(type metadata accessor for UtilityRateInfoSnapshot(0) + 40));
  v14 = v13 == 7;
  if (v13 == 7)
  {
    v13 = 0;
  }

  else
  {
    v13 = v13;
  }

  v18[424] = 0;
  v18[416] = 1;
  v18[408] = 1;
  v18[400] = 1;
  v18[392] = 1;
  v18[384] = 1;
  v18[376] = 1;
  v18[368] = 1;
  v18[360] = 1;
  v18[352] = 1;
  v18[344] = 1;
  v18[336] = 1;
  v18[328] = 1;
  v18[320] = 1;
  v18[312] = 1;
  v18[304] = v14;
  v16[0] = v11;
  LOWORD(v16[1]) = 512;
  v16[2] = 0;
  LOBYTE(v16[3]) = 1;
  v16[4] = 0;
  LOBYTE(v16[5]) = 1;
  memset(&v16[6], 0, 24);
  LOBYTE(v16[9]) = 1;
  memset(&v16[10], 0, 24);
  LOBYTE(v16[13]) = 1;
  v16[14] = 0;
  LOWORD(v16[15]) = 513;
  v16[16] = 0;
  LOWORD(v16[17]) = 1;
  memset(&v16[18], 0, 24);
  LOBYTE(v16[21]) = 1;
  v16[22] = 0;
  LOBYTE(v16[23]) = 1;
  v16[24] = 0;
  LOBYTE(v16[25]) = 1;
  v16[26] = 0;
  LOWORD(v16[27]) = 513;
  v16[28] = 0;
  LOWORD(v16[29]) = 513;
  v16[30] = 0;
  LOBYTE(v16[31]) = 1;
  v16[32] = 0;
  LOBYTE(v16[33]) = 1;
  v16[34] = 0;
  LOBYTE(v16[35]) = 1;
  v16[36] = v13;
  LOBYTE(v16[37]) = v14;
  nullsub_5();
  type metadata accessor for HEUIFAnalyticsEvent();
  v15 = swift_allocObject();
  sub_20D7E3AF0(v17);
  *(v15 + 16) = 36;
  memcpy(v18, v17, 0x129uLL);
  memcpy((v15 + 24), v16, 0x129uLL);
  sub_20D7E3944(v18, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v15);
}

uint64_t objectdestroy_2Tm()
{
  v1 = (type metadata accessor for UtilityRateInfoDetailsSheet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for UtilityRateInfoSnapshot(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v2 | v6;

  v10 = v0 + v3 + v1[7];
  v11 = sub_20D972628();
  v12 = *(*(v11 - 8) + 8);
  v12(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);

  v12(v0 + v7 + v5[7], v11);
  v12(v0 + v7 + v5[8], v11);
  v12(v0 + v7 + v5[9], v11);

  v13 = v5[11];
  v14 = sub_20D972838();
  (*(*(v14 - 8) + 8))(v0 + v7 + v13, v14);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

void sub_20D94BAE4()
{
  v1 = *(type metadata accessor for UtilityRateInfoDetailsSheet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UtilityRateInfoSnapshot(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_20D94B5C8(v0 + v2, v5);
}

uint64_t sub_20D94BBCC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C2D8, &qword_20D97FC90);
  MEMORY[0x28223BE20](v3);
  v5 = (&v29 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C2E0, &qword_20D97FC98);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = *(type metadata accessor for UtilityRateInfoSnapshot(0) + 40);
  v11 = *(v1 + v10);
  if (v11 == 7)
  {
LABEL_2:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C2E8, &qword_20D97FCA0);
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }

  if ((sub_20D96659C(*(v1 + v10), 1u) & 1) == 0)
  {
    if (sub_20D96659C(v11, 2u))
    {
      v23 = sub_20D974148();
      *v5 = 0x4045000000000000;
      v5[1] = v23;
      v5[2] = sub_20D7EDA0C;
      v5[3] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C2F0, &qword_20D97FCA8);
      sub_20D956314(&qword_27C83C2F8, &qword_27C83C2E0, &qword_20D97FC98, sub_20D9500FC);
      sub_20D950338();
      sub_20D9741B8();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C2E8, &qword_20D97FCA0);
      return (*(*(v24 - 8) + 56))(a1, 0, 1, v24);
    }

    goto LABEL_2;
  }

  v33 = UtilityRateInfoSnapshot.currentDayPeaks.getter();

  sub_20D953308(&v33);
  v32 = a1;

  v15 = v33;
  v16 = *(v33 + 2);
  if (v16)
  {
    v17 = *(v33 + 4);
    v18 = *(v33 + 5);
    v30 = *(v33 + 6);
    v31 = v17;
    v19 = &v33[24 * v16 + 32];
    v21 = *(v19 - 3);
    v20 = *(v19 - 2);
    v22 = *(v19 - 1);
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v22 = 0;
    v30 = 0;
    v31 = 0;
    v18 = 0;
  }

  v33 = v15;
  v25 = swift_allocObject();
  v26 = v30;
  v25[2] = v31;
  v25[3] = v18;
  v25[4] = v26;
  v25[5] = v21;
  v25[6] = v20;
  v25[7] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C348, &qword_20D97FCC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C308, &qword_20D97FCB0);
  sub_20D7EBC4C(&qword_27C83C350, &qword_27C83C348, &qword_20D97FCC8, MEMORY[0x277D83980]);
  sub_20D9500FC();
  sub_20D953264();
  sub_20D974BA8();
  (*(v7 + 16))(v5, v9, v6);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C2F0, &qword_20D97FCA8);
  sub_20D956314(&qword_27C83C2F8, &qword_27C83C2E0, &qword_20D97FC98, sub_20D9500FC);
  sub_20D950338();
  v27 = v32;
  sub_20D9741B8();
  (*(v7 + 8))(v9, v6);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C2E8, &qword_20D97FCA0);
  return (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
}

void sub_20D94C0E8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v56 = a5;
  v57 = a7;
  v53 = a6;
  v50[1] = a4;
  v51 = a2;
  v58 = a8;
  v10 = type metadata accessor for AboutPeakType(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = (v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C328, &qword_20D97FCC0);
  MEMORY[0x28223BE20](v52);
  v15 = v50 - v14;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C318, &qword_20D97FCB8);
  MEMORY[0x28223BE20](v54);
  v17 = v50 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C308, &qword_20D97FCB0);
  MEMORY[0x28223BE20](v55);
  v19 = v50 - v18;
  v20 = *a1;
  v21 = a1[1];
  v22 = a1[2];
  *(v13 + *(v11 + 32)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  v59 = v22;
  v60 = v20;
  *v13 = v20;
  v13[1] = v21;
  v13[2] = v22;
  v13[3] = 0x4045000000000000;

  v23 = sub_20D974328();
  if (!v21)
  {
    if (!a3)
    {

      v24 = v53;
      goto LABEL_9;
    }

LABEL_8:
    v24 = v53;

    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_8;
  }

  v24 = v53;
  if (v60 == v51)
  {
    swift_bridgeObjectRetain_n();

    sub_20D96B6FC(v21, a3);

    swift_bridgeObjectRelease_n();
  }

LABEL_9:
  sub_20D973AD8();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_20D94B290(v13, v15, type metadata accessor for AboutPeakType);
  v33 = &v15[*(v52 + 36)];
  *v33 = v23;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = sub_20D974338();
  if (!v21)
  {
    v36 = v56;
    v35 = v57;
    if (!v24)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v36 = v56;
  v35 = v57;
  if (!v24)
  {
LABEL_15:

    goto LABEL_16;
  }

  if (v60 != v56)
  {
LABEL_16:

    goto LABEL_17;
  }

  swift_bridgeObjectRetain_n();

  sub_20D96B6FC(v21, v24);

  swift_bridgeObjectRelease_n();
LABEL_17:
  sub_20D973AD8();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_20D7EAF18(v15, v17, &qword_27C83C328, &qword_20D97FCC0);
  v45 = &v17[*(v54 + 36)];
  *v45 = v34;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  v46 = sub_20D974148();
  v47 = swift_allocObject();
  v48 = v59;
  v47[2] = v60;
  v47[3] = v21;
  v47[4] = v48;
  v47[5] = v36;
  v47[6] = v24;
  v47[7] = v35;
  sub_20D7EAF18(v17, v19, &qword_27C83C318, &qword_20D97FCB8);
  v49 = &v19[*(v55 + 36)];
  *v49 = v46;
  v49[1] = sub_20D9532F8;
  v49[2] = v47;
  sub_20D7EAF18(v19, v58, &qword_27C83C308, &qword_20D97FCB0);
}

double sub_20D94C58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a3)
  {
    if (!a6)
    {

      return 0.0;
    }

LABEL_8:

LABEL_9:
    v12 = sub_20D974148();
    MEMORY[0x20F321ED0](v12);
    return result;
  }

  if (!a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    goto LABEL_9;
  }

  swift_bridgeObjectRetain_n();

  v11 = sub_20D96B6FC(a3, a6);
  swift_bridgeObjectRelease_n();

  if ((v11 & 1) == 0 || a4 != a7)
  {
    goto LABEL_9;
  }

  return 0.0;
}

void sub_20D94C68C(uint64_t a1)
{
  type metadata accessor for UtilityRateInfoSnapshotManager(319);
  if (v1 <= 0x3F)
  {
    sub_20D94CBC8(319, &qword_27C83A860, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_20D94C750()
{
  result = qword_27C83C270;
  if (!qword_27C83C270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C258, &qword_20D97F9D8);
    sub_20D94C7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C270);
  }

  return result;
}

unint64_t sub_20D94C7DC()
{
  result = qword_27C83C278;
  if (!qword_27C83C278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C250, &qword_20D97F9D0);
    sub_20D7EBC4C(&qword_27C83C280, &qword_27C83C248, &qword_20D97F9C8, MEMORY[0x277CDDB50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C278);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_22Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_23Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20D94CA00(uint64_t a1)
{
  result = type metadata accessor for UtilityRateInfoSnapshot(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20D94CAC4(uint64_t a1)
{
  type metadata accessor for UtilityRateInfoSnapshot(319);
  if (v1 <= 0x3F)
  {
    sub_20D94CBC8(319, &qword_281127050, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_20D94CBC8(319, &qword_27C83C2B8, MEMORY[0x277CDF110], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20D94CBC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20D94CC74(uint64_t a1)
{
  sub_20D94CBC8(319, &qword_281127050, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UtilityRateInfoSnapshot(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20D94CD5C@<X0>(__int16 *a1@<X8>)
{
  result = type metadata accessor for UtilityRateInfoSnapshot(0);
  v4 = *(v1 + *(result + 40));
  if ((v4 - 1) >= 5)
  {
    if (v4 == 7)
    {
      v8 = -256;
      goto LABEL_7;
    }

    sub_20D9500A8();
    result = sub_20D9741B8();
    v5 = v11;
    v6 = v12;
  }

  else
  {
    sub_20D9500A8();
    result = sub_20D9741B8();
    v5 = v9;
    v6 = v10;
  }

  if (v6)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | v5;
LABEL_7:
  *a1 = v8;
  return result;
}

uint64_t sub_20D94CE40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20D974048();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_20D7EB7E8(v2, &v14 - v9, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D973D58();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_20D975468();
    v13 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20D94D044@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C3F8, &qword_20D97FD60);
  MEMORY[0x28223BE20](v42);
  v4 = &v36 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C400, &qword_20D97FD68);
  MEMORY[0x28223BE20](v39);
  v41 = &v36 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C408, &qword_20D97FD70);
  MEMORY[0x28223BE20](v40);
  v38 = &v36 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C410, &qword_20D97FD78);
  v7 = MEMORY[0x28223BE20](v37);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C418, &qword_20D97FD80);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = sub_20D973D58();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D94CE40(v21);
  v22 = sub_20D973D38();
  (*(v19 + 8))(v21, v18);
  if (v22)
  {
    sub_20D94D640(v17);
    *v11 = sub_20D974168();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C438, &qword_20D97FD90);
    sub_20D94DED8(v2, &v11[*(v23 + 44)]);
    v24 = sub_20D974958();
    KeyPath = swift_getKeyPath();
    v26 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C440, &qword_20D97FDC8) + 36)];
    *v26 = KeyPath;
    v26[1] = v24;
    v27 = sub_20D974368();
    v28 = &v11[*(v37 + 36)];
    *v28 = v27;
    *(v28 + 8) = 0u;
    *(v28 + 24) = 0u;
    v28[40] = 1;
    v29 = &qword_20D97FD80;
    sub_20D7EB7E8(v17, v15, &qword_27C83C418, &qword_20D97FD80);
    sub_20D7EB7E8(v11, v9, &qword_27C83C410, &qword_20D97FD78);
    v30 = v38;
    sub_20D7EB7E8(v15, v38, &qword_27C83C418, &qword_20D97FD80);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C448, &unk_20D97FDD0);
    sub_20D7EB7E8(v9, v30 + *(v31 + 48), &qword_27C83C410, &qword_20D97FD78);
    sub_20D7E3944(v9, &qword_27C83C410, &qword_20D97FD78);
    sub_20D7E3944(v15, &qword_27C83C418, &qword_20D97FD80);
    sub_20D7EB7E8(v30, v41, &qword_27C83C408, &qword_20D97FD70);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_27C83C428, &qword_27C83C408, &qword_20D97FD70, MEMORY[0x277CE14C0]);
    sub_20D7EBC4C(&qword_27C83C430, &qword_27C83C3F8, &qword_20D97FD60, MEMORY[0x277CE1138]);
    sub_20D9741B8();
    sub_20D7E3944(v30, &qword_27C83C408, &qword_20D97FD70);
    sub_20D7E3944(v11, &qword_27C83C410, &qword_20D97FD78);
    v32 = v17;
    v33 = &qword_27C83C418;
  }

  else
  {
    *v4 = sub_20D974088();
    *(v4 + 1) = 0x402C000000000000;
    v4[16] = 0;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C420, &qword_20D97FD88);
    sub_20D94D950(v2, &v4[*(v34 + 44)]);
    v29 = &qword_20D97FD60;
    sub_20D7EB7E8(v4, v41, &qword_27C83C3F8, &qword_20D97FD60);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_27C83C428, &qword_27C83C408, &qword_20D97FD70, MEMORY[0x277CE14C0]);
    sub_20D7EBC4C(&qword_27C83C430, &qword_27C83C3F8, &qword_20D97FD60, MEMORY[0x277CE1138]);
    sub_20D9741B8();
    v32 = v4;
    v33 = &qword_27C83C3F8;
  }

  return sub_20D7E3944(v32, v33, v29);
}