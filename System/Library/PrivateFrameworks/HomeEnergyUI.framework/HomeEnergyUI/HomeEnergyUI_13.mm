uint64_t sub_20D94D640@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[1] = a1;
  v3 = type metadata accessor for RatePlanTitle(0);
  v19[0] = *(v3 - 8);
  v4 = *(v19[0] + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA30, &unk_20D97E930);
  MEMORY[0x28223BE20](v5);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - v12;
  sub_20D9721B8();
  sub_20D7EB7E8(v13, v11, &qword_27C838B78, &qword_20D97A5A0);
  sub_20D94AEE0(v2, v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RatePlanTitle);
  v14 = (*(v19[0] + 80) + 16) & ~*(v19[0] + 80);
  v15 = swift_allocObject();
  sub_20D94B290(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for RatePlanTitle);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA38, &qword_20D97E940);
  sub_20D949328();
  sub_20D973AA8();
  sub_20D974C48();
  sub_20D973C18();
  v16 = &v7[*(v5 + 36)];
  v17 = v21;
  *v16 = v20;
  *(v16 + 1) = v17;
  *(v16 + 2) = v22;
  sub_20D956688();
  sub_20D9747D8();
  sub_20D7E3944(v7, &qword_27C83BA30, &unk_20D97E930);
  return sub_20D7E3944(v13, &qword_27C838B78, &qword_20D97A5A0);
}

uint64_t sub_20D94D950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C410, &qword_20D97FD78);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C418, &qword_20D97FD80);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  sub_20D94D640(&v25 - v14);
  *v9 = sub_20D974168();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C438, &qword_20D97FD90);
  sub_20D94DED8(a1, &v9[*(v16 + 44)]);
  v17 = sub_20D974958();
  KeyPath = swift_getKeyPath();
  v19 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C440, &qword_20D97FDC8) + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  v20 = sub_20D974368();
  v21 = &v9[*(v4 + 44)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  sub_20D7EB7E8(v15, v13, &qword_27C83C418, &qword_20D97FD80);
  sub_20D7EB7E8(v9, v7, &qword_27C83C410, &qword_20D97FD78);
  v22 = v26;
  sub_20D7EB7E8(v13, v26, &qword_27C83C418, &qword_20D97FD80);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C448, &unk_20D97FDD0);
  sub_20D7EB7E8(v7, v22 + *(v23 + 48), &qword_27C83C410, &qword_20D97FD78);
  sub_20D7E3944(v9, &qword_27C83C410, &qword_20D97FD78);
  sub_20D7E3944(v15, &qword_27C83C418, &qword_20D97FD80);
  sub_20D7E3944(v7, &qword_27C83C410, &qword_20D97FD78);
  return sub_20D7E3944(v13, &qword_27C83C418, &qword_20D97FD80);
}

uint64_t sub_20D94DBD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
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
    v12 = *(a1 + *(type metadata accessor for RatePlanTitle(0) + 28)) * 0.225;
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
    sub_20D7EAF18(v10, a2, &qword_27C83BA50, &qword_20D97E948);
    return (*(v20 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v18 = *(v20 + 56);

    return v18(a2, 1, 1, v8);
  }
}

uint64_t sub_20D94DED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a1;
  v86 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v87 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v85 = &v72 - v5;
  v6 = sub_20D974458();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D9726E8();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D975058();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3A0, &unk_20D97D7E0);
  MEMORY[0x28223BE20](v82);
  v81 = &v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C450, &unk_20D97FDE0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v84 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v88 = &v72 - v20;
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v21 = qword_28112ABE8;
  v22 = qword_28112ABE8;
  sub_20D9726B8();
  v89 = sub_20D975108(v15, 0, 0, v21, v12, "rate plan title", 15, 2);
  v90 = v23;
  v80 = sub_20D7E1EF8();
  v24 = sub_20D9745C8();
  v26 = v25;
  v28 = v27;
  sub_20D974488();
  v77 = *MEMORY[0x277CE0A10];
  v29 = *(v7 + 104);
  v78 = v7 + 104;
  v79 = v29;
  v73 = v9;
  v29(v9);
  sub_20D974478();
  v74 = v6;

  v30 = *(v7 + 8);
  v75 = v7 + 8;
  v76 = v30;
  v30(v9, v6);
  v31 = sub_20D974558();
  v33 = v32;
  v35 = v34;

  sub_20D7EADC0(v24, v26, v28 & 1);

  sub_20D9743F8();
  v36 = sub_20D9744F8();
  v38 = v37;
  v40 = v39;
  v72 = v41;
  sub_20D7EADC0(v31, v33, v35 & 1);

  v42 = v81;
  v43 = &v81[*(v82 + 36)];
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A108, &unk_20D97B230) + 28);
  v45 = *MEMORY[0x277CE0B48];
  v46 = sub_20D974538();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v43 + v44, v45, v46);
  (*(v47 + 56))(v43 + v44, 0, 1, v46);
  *v43 = swift_getKeyPath();
  *v42 = v36;
  *(v42 + 8) = v38;
  *(v42 + 16) = v40 & 1;
  *(v42 + 24) = v72;
  sub_20D919DD8();
  sub_20D9747D8();
  sub_20D7E3944(v42, &qword_27C83B3A0, &unk_20D97D7E0);
  type metadata accessor for RatePlanTitle(0);
  v89 = UtilityRateInfoSnapshot.ratePlanTitle.getter();
  v90 = v48;
  v49 = sub_20D9745C8();
  v51 = v50;
  LOBYTE(v46) = v52;
  sub_20D974428();
  v53 = v73;
  v54 = v74;
  v79(v73, v77, v74);
  sub_20D974478();

  v76(v53, v54);
  v55 = sub_20D974558();
  v57 = v56;
  LOBYTE(v53) = v58;

  sub_20D7EADC0(v49, v51, v46 & 1);

  v59 = sub_20D974548();
  v61 = v60;
  LOBYTE(v51) = v62;
  v64 = v63;
  sub_20D7EADC0(v55, v57, v53 & 1);

  v89 = v59;
  v90 = v61;
  v91 = v51 & 1;
  v92 = v64;
  v65 = v85;
  sub_20D9747D8();
  sub_20D7EADC0(v59, v61, v51 & 1);

  v66 = v88;
  v67 = v84;
  sub_20D7EB7E8(v88, v84, &qword_27C83C450, &unk_20D97FDE0);
  v68 = v87;
  sub_20D7EB7E8(v65, v87, &qword_27C838F18, &unk_20D977860);
  v69 = v86;
  sub_20D7EB7E8(v67, v86, &qword_27C83C450, &unk_20D97FDE0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C458, &qword_20D97FE20);
  sub_20D7EB7E8(v68, v69 + *(v70 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v65, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v66, &qword_27C83C450, &unk_20D97FDE0);
  sub_20D7E3944(v68, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v67, &qword_27C83C450, &unk_20D97FDE0);
}

uint64_t sub_20D94E6E4@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v1 = sub_20D974458();
  v77 = *(v1 - 8);
  v78 = v1;
  MEMORY[0x28223BE20](v1);
  v76 = v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v81 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v80 = v73 - v6;
  v7 = sub_20D9726E8();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D975058();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839050, &qword_20D977A90);
  v13 = MEMORY[0x28223BE20](v75);
  v79 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v83 = v73 - v15;
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v16 = qword_28112ABE8;
  v17 = qword_28112ABE8;
  v74 = v16;
  v18 = v17;
  sub_20D9726B8();
  v19 = v18;
  v84 = sub_20D975108(v12, 0, 0, v16, v9, "About Electricity Rates title", 29, 2);
  v85 = v20;
  v73[1] = sub_20D7E1EF8();
  v21 = sub_20D9745C8();
  v23 = v22;
  v25 = v24;
  v73[0] = v9;
  sub_20D974428();
  v26 = sub_20D974558();
  v28 = v27;
  LOBYTE(v16) = v29;

  sub_20D7EADC0(v21, v23, v25 & 1);

  v30 = sub_20D974548();
  v32 = v31;
  LOBYTE(v23) = v33;
  sub_20D7EADC0(v26, v28, v16 & 1);

  sub_20D974958();
  v34 = sub_20D974508();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  sub_20D7EADC0(v30, v32, v23 & 1);

  v84 = v34;
  v85 = v36;
  v86 = v38 & 1;
  v87 = v40;
  v41 = v83;
  sub_20D9747D8();
  sub_20D7EADC0(v34, v36, v38 & 1);

  LOBYTE(v30) = sub_20D974338();
  sub_20D973AD8();
  v42 = v41 + *(v75 + 36);
  *v42 = v30;
  *(v42 + 8) = v43;
  *(v42 + 16) = v44;
  *(v42 + 24) = v45;
  *(v42 + 32) = v46;
  *(v42 + 40) = 0;
  sub_20D974FE8();
  v47 = v73[0];
  sub_20D9726B8();
  v84 = sub_20D975108(v12, 0, 0, v74, v47, "About Electricity Rates body", 28, 2);
  v85 = v48;
  v49 = sub_20D9745C8();
  v51 = v50;
  LOBYTE(v23) = v52;
  sub_20D974398();
  v54 = v76;
  v53 = v77;
  v55 = v78;
  (*(v77 + 104))(v76, *MEMORY[0x277CE0A08], v78);
  sub_20D974478();

  (*(v53 + 8))(v54, v55);
  v56 = sub_20D974558();
  v58 = v57;
  LOBYTE(v53) = v59;

  sub_20D7EADC0(v49, v51, v23 & 1);

  sub_20D974968();
  v60 = sub_20D974508();
  v62 = v61;
  LOBYTE(v49) = v63;
  v65 = v64;

  sub_20D7EADC0(v56, v58, v53 & 1);

  v84 = v60;
  v85 = v62;
  v86 = v49 & 1;
  v87 = v65;
  v66 = v80;
  sub_20D9747D8();
  sub_20D7EADC0(v60, v62, v49 & 1);

  v67 = v83;
  v68 = v79;
  sub_20D7EB7E8(v83, v79, &qword_27C839050, &qword_20D977A90);
  v69 = v81;
  sub_20D7EB7E8(v66, v81, &qword_27C838F18, &unk_20D977860);
  v70 = v82;
  sub_20D7EB7E8(v68, v82, &qword_27C839050, &qword_20D977A90);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C370, &qword_20D97FD10);
  sub_20D7EB7E8(v69, v70 + *(v71 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v66, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v67, &qword_27C839050, &qword_20D977A90);
  sub_20D7E3944(v69, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v68, &qword_27C839050, &qword_20D977A90);
}

uint64_t sub_20D94EE0C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_20D974168();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C360, &qword_20D97FD00);
  sub_20D94E6E4(a2 + *(v3 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C368, &qword_20D97FD08);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_20D94EE7C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v67 = a1;
  v73 = a2;
  v69 = sub_20D974458();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v4 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v72 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D10, &qword_20D9775A8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v70 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66[0] = v66 - v12;
  LOBYTE(v74) = v2;
  *&v80[0] = sub_20D96A608();
  *(&v80[0] + 1) = v13;
  v66[1] = sub_20D7E1EF8();
  v14 = sub_20D9745C8();
  v16 = v15;
  v18 = v17;
  sub_20D974428();
  v19 = sub_20D974558();
  v21 = v20;
  v23 = v22;

  sub_20D7EADC0(v14, v16, v18 & 1);

  v24 = sub_20D974548();
  v26 = v25;
  v28 = v27;
  sub_20D7EADC0(v19, v21, v23 & 1);

  sub_20D974958();
  v29 = sub_20D974508();
  v31 = v30;
  LOBYTE(v19) = v32;
  v34 = v33;

  sub_20D7EADC0(v24, v26, v28 & 1);

  LOBYTE(v21) = sub_20D974338();
  sub_20D973AD8();
  v79 = v19 & 1;
  v78 = 0;
  *&v74 = v29;
  *(&v74 + 1) = v31;
  LOBYTE(v75) = v19 & 1;
  *(&v75 + 1) = v34;
  LOBYTE(v76) = v21;
  *(&v76 + 1) = v35;
  *v77 = v36;
  *&v77[8] = v37;
  *&v77[16] = v38;
  v77[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D18, &qword_20D9775B0);
  sub_20D7F021C();
  v39 = v66[0];
  sub_20D9747D8();
  v80[2] = v76;
  *v81 = *v77;
  *&v81[9] = *&v77[9];
  v80[0] = v74;
  v80[1] = v75;
  sub_20D7E3944(v80, &qword_27C838D18, &qword_20D9775B0);
  v79 = v67;
  *&v74 = sub_20D96A8E8();
  *(&v74 + 1) = v40;
  v41 = sub_20D9745C8();
  v43 = v42;
  v45 = v44;
  sub_20D974398();
  v46 = v68;
  v47 = v69;
  (*(v68 + 104))(v4, *MEMORY[0x277CE0A08], v69);
  sub_20D974478();

  (*(v46 + 8))(v4, v47);
  v48 = sub_20D974558();
  v50 = v49;
  LOBYTE(v47) = v51;

  sub_20D7EADC0(v41, v43, v45 & 1);

  sub_20D974968();
  v52 = sub_20D974508();
  v54 = v53;
  LOBYTE(v24) = v55;
  v57 = v56;

  sub_20D7EADC0(v48, v50, v47 & 1);

  *&v74 = v52;
  *(&v74 + 1) = v54;
  LOBYTE(v75) = v24 & 1;
  *(&v75 + 1) = v57;
  v58 = v71;
  sub_20D9747D8();
  sub_20D7EADC0(v52, v54, v24 & 1);

  v59 = v70;
  sub_20D7EB7E8(v39, v70, &qword_27C838D10, &qword_20D9775A8);
  v60 = v58;
  v61 = v58;
  v62 = v72;
  sub_20D7EB7E8(v60, v72, &qword_27C838F18, &unk_20D977860);
  v63 = v73;
  sub_20D7EB7E8(v59, v73, &qword_27C838D10, &qword_20D9775A8);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C588, &qword_20D9800D8);
  sub_20D7EB7E8(v62, v63 + *(v64 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v61, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v39, &qword_27C838D10, &qword_20D9775A8);
  sub_20D7E3944(v62, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v59, &qword_27C838D10, &qword_20D9775A8);
}

uint64_t sub_20D94F508@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_20D974168();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C578, &qword_20D9800C8);
  sub_20D94EE7C(v4, a2 + *(v5 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C580, &qword_20D9800D0);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_20D94F580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20D974218();
  MEMORY[0x28223BE20](v4);
  v5 = sub_20D973D58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C390, &qword_20D97FD28);
  v17 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  v12 = *(a1 + *(type metadata accessor for UtilityRateInfoSnapshot(0) + 40));
  if (v12 == 7 || (sub_20D96659C(v12, 1u) & 1) == 0)
  {
    v15 = *(v17 + 56);

    return v15(a2, 1, 1, v9);
  }

  else
  {
    sub_20D9515B4(type metadata accessor for UtilityPeaksGrid, v8);
    sub_20D973D38();
    (*(v6 + 8))(v8, v5);
    type metadata accessor for UtilityPeaksGrid(0);

    v16[1] = v16;
    MEMORY[0x28223BE20](v13);
    sub_20D974158();
    v18 = 0;
    sub_20D9502D0(&qword_27C83C398, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
    sub_20D9758B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C3A0, &qword_20D97FD30);
    sub_20D956314(&qword_27C83C3A8, &qword_27C83C3A0, &qword_20D97FD30, sub_20D956390);
    sub_20D974C88();
    (*(v17 + 32))(a2, v11, v9);
    return (*(v17 + 56))(a2, 0, 1, v9);
  }
}

uint64_t sub_20D94F948(uint64_t a1)
{
  v2 = type metadata accessor for UtilityPeaksGrid(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v9 = UtilityRateInfoSnapshot.currentDayPeaks.getter();

  sub_20D953308(&v9);

  sub_20D94AEE0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UtilityPeaksGrid);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_20D94B290(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for UtilityPeaksGrid);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C348, &qword_20D97FCC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C3B8, &qword_20D97FD38);
  sub_20D7EBC4C(&qword_27C83C350, &qword_27C83C348, &qword_20D97FCC8, MEMORY[0x277D83980]);
  sub_20D956390();
  sub_20D953264();
  return sub_20D974BA8();
}

void sub_20D94FB58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20D971D98();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = *(a2 + 8);
  v20 = *(a1 + 8);

  sub_20D953374(&v20);
  if (!v2)
  {
    if (*(v20 + 2))
    {
      v19 = v10;
      v14 = *(v7 + 16);
      v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v14(v12, &v20[v15], v6);

      v20 = v13;

      sub_20D953374(&v20);
      v3 = v20;
      if (*(v20 + 2))
      {
        v16 = v19;
        v14(v19, &v20[v15], v6);

        MEMORY[0x20F31FEF0](v12, v16);
        v17 = *(v7 + 8);
        v17(v16, v6);
        v17(v12, v6);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_20D94FD60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  sub_20D94AEE0(a2, a3, type metadata accessor for UtilityRateInfoSnapshot);
  v8 = *(v3 + *(type metadata accessor for UtilityPeaksGrid(0) + 20));
  v9 = type metadata accessor for UtilityPeakSquare(0);
  v10 = (a3 + *(v9 + 20));
  *v10 = v6;
  v10[1] = v5;
  v10[2] = v7;
  *(a3 + *(v9 + 24)) = v8;

  LOBYTE(v3) = sub_20D974318();
  v11 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C3D8, &qword_20D97FD48) + 36);
  *v11 = v3;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 1;
  v12 = sub_20D974C48();
  v14 = v13;
  v15 = [objc_opt_self() tertiarySystemFillColor];
  v16 = sub_20D974888();
  v17 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C3C8, &qword_20D97FD40) + 36);
  *v17 = v16;
  *(v17 + 8) = 256;
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  v18 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C3B8, &qword_20D97FD38) + 36));
  v19 = *(sub_20D973DE8() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_20D974118();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #24.0 }

  *v18 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C98, &unk_20D977550);
  *&v18[*(result + 36)] = 256;
  return result;
}

uint64_t sub_20D94FF2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C378, &qword_20D97FD18);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  *v3 = sub_20D974088();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C380, &qword_20D97FD20);
  sub_20D94F580(v0, &v3[*(v4 + 44)]);
  sub_20D7EBC4C(&qword_27C83C388, &qword_27C83C378, &qword_20D97FD18, MEMORY[0x277CE1138]);
  sub_20D9747D8();
  return sub_20D7E3944(v3, &qword_27C83C378, &qword_20D97FD18);
}

unint64_t sub_20D9500A8()
{
  result = qword_27C83C2D0;
  if (!qword_27C83C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C2D0);
  }

  return result;
}

unint64_t sub_20D9500FC()
{
  result = qword_27C83C300;
  if (!qword_27C83C300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C308, &qword_20D97FCB0);
    sub_20D950188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C300);
  }

  return result;
}

unint64_t sub_20D950188()
{
  result = qword_27C83C310;
  if (!qword_27C83C310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C318, &qword_20D97FCB8);
    sub_20D950214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C310);
  }

  return result;
}

unint64_t sub_20D950214()
{
  result = qword_27C83C320;
  if (!qword_27C83C320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C328, &qword_20D97FCC0);
    sub_20D9502D0(&qword_27C83C330, type metadata accessor for AboutPeakType, &unk_20D980028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C320);
  }

  return result;
}

uint64_t sub_20D9502D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20D950338()
{
  result = qword_27C83C338;
  if (!qword_27C83C338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C2F0, &qword_20D97FCA8);
    sub_20D9503C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C338);
  }

  return result;
}

unint64_t sub_20D9503C4()
{
  result = qword_27C83C340;
  if (!qword_27C83C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C340);
  }

  return result;
}

__n128 sub_20D950418@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C688, &qword_20D9801D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v11 - v4;
  *v5 = sub_20D974168();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C690, &qword_20D9801D8);
  sub_20D950574(v1, &v5[*(v6 + 44)]);
  sub_20D974C58();
  sub_20D973E08();
  sub_20D7EAF18(v5, a1, &qword_27C83C688, &qword_20D9801D0);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C698, &qword_20D9801E0) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_20D950574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v76 = a2;
  v3 = type metadata accessor for UtilityPeakSquare(0);
  v4 = v3 - 8;
  v69 = *(v3 - 8);
  v68 = *(v69 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C6A0, &qword_20D9801E8);
  v7 = *(v6 - 8);
  v74 = v6;
  v75 = v7;
  MEMORY[0x28223BE20](v6);
  v72 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C6A8, &unk_20D9801F0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v73 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v71 = &v62 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3A0, &unk_20D97D7E0);
  MEMORY[0x28223BE20](v63);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C450, &unk_20D97FDE0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v70 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v64 = &v62 - v18;
  v65 = (a1 + *(v4 + 28));
  v19 = v65[2];
  v77 = *v65;
  LOBYTE(v78) = 0;
  v79 = 0;
  v80 = 0;
  v81 = v19;
  v20 = PeakPeriodAttributes.peakName.getter();
  v22 = v21;

  v77 = v20;
  v78 = v22;
  sub_20D7E1EF8();
  v23 = sub_20D9745C8();
  v25 = v24;
  v27 = v26;
  sub_20D974488();
  v28 = sub_20D974558();
  v30 = v29;
  v32 = v31;

  sub_20D7EADC0(v23, v25, v27 & 1);

  sub_20D9743F8();
  v33 = sub_20D9744F8();
  v35 = v34;
  LOBYTE(v25) = v36;
  sub_20D7EADC0(v28, v30, v32 & 1);

  sub_20D974968();
  v37 = sub_20D974508();
  v39 = v38;
  v41 = v40;
  v62 = v42;

  sub_20D7EADC0(v33, v35, v25 & 1);

  v43 = &v14[*(v63 + 36)];
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A108, &unk_20D97B230) + 28);
  v45 = *MEMORY[0x277CE0B48];
  v46 = sub_20D974538();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v43 + v44, v45, v46);
  (*(v47 + 56))(v43 + v44, 0, 1, v46);
  *v43 = swift_getKeyPath();
  *v14 = v37;
  *(v14 + 1) = v39;
  v14[16] = v41 & 1;
  *(v14 + 3) = v62;
  sub_20D919DD8();
  v48 = v64;
  sub_20D9747D8();
  sub_20D7E3944(v14, &qword_27C83B3A0, &unk_20D97D7E0);
  v77 = v65[1];
  swift_getKeyPath();
  v49 = v67;
  sub_20D94AEE0(v66, v67, type metadata accessor for UtilityPeakSquare);
  v50 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v51 = swift_allocObject();
  sub_20D94B290(v49, v51 + v50, type metadata accessor for UtilityPeakSquare);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C6B0, &qword_20D980218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C6B8, &qword_20D980220);
  sub_20D7EBC4C(&qword_27C83C6C0, &qword_27C83C6B0, &qword_20D980218, MEMORY[0x277D83980]);
  sub_20D9502D0(&unk_27C83CA60, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
  sub_20D7EBC4C(&qword_27C83C6C8, &qword_27C83C6B8, &qword_20D980220, MEMORY[0x277CE14C0]);
  v52 = v72;
  sub_20D974B98();
  sub_20D957568();
  v53 = v71;
  v54 = v74;
  sub_20D9747D8();
  (*(v75 + 8))(v52, v54);
  v55 = v70;
  sub_20D7EB7E8(v48, v70, &qword_27C83C450, &unk_20D97FDE0);
  v56 = v53;
  v57 = v73;
  sub_20D7EB7E8(v53, v73, &qword_27C83C6A8, &unk_20D9801F0);
  v58 = v76;
  sub_20D7EB7E8(v55, v76, &qword_27C83C450, &unk_20D97FDE0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C6D8, &qword_20D980228);
  sub_20D7EB7E8(v57, v58 + *(v59 + 48), &qword_27C83C6A8, &unk_20D9801F0);
  v60 = v58 + *(v59 + 64);
  *v60 = 0;
  *(v60 + 8) = 1;
  sub_20D7E3944(v56, &qword_27C83C6A8, &unk_20D9801F0);
  sub_20D7E3944(v48, &qword_27C83C450, &unk_20D97FDE0);
  sub_20D7E3944(v57, &qword_27C83C6A8, &unk_20D9801F0);
  return sub_20D7E3944(v55, &qword_27C83C450, &unk_20D97FDE0);
}

double sub_20D950D58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v85 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C6E0, &qword_20D980230);
  v81 = *(v5 - 8);
  v82 = v5;
  MEMORY[0x28223BE20](v5);
  v75 = &v75 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C6E8, &qword_20D980238);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v84 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v83 = &v75 - v10;
  v11 = sub_20D9740E8();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_20D972628();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v75 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v75 - v20;
  sub_20D971D78();
  v77 = UtilityRateInfoSnapshot.dateToFormattedString(date:)(v21);
  v78 = v22;
  v76 = v13;
  v23 = v13[1];
  (v23)(v21, v12);
  v79 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v80 = a1;
  v24 = *(v79 + 28);
  sub_20D971D48();
  sub_20D9502D0(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_20D974FA8())
  {
    v76[4](v19, v16, v12);
  }

  else
  {
    (v23)(v16, v12);
    v76[2](v19, (a2 + v24), v12);
  }

  UtilityRateInfoSnapshot.dateToFormattedString(date:)(v19);
  (v23)(v19, v12);
  sub_20D9740D8();
  sub_20D9740C8();
  sub_20D9740B8();

  sub_20D9740C8();
  sub_20D9740B8();

  sub_20D9740C8();
  sub_20D974108();
  v77 = a2;
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v76 = qword_28112ABE8;
  v25 = sub_20D9745A8();
  v27 = v26;
  v29 = v28;
  sub_20D9744A8();
  v30 = sub_20D974558();
  v32 = v31;
  v34 = v33;

  sub_20D7EADC0(v25, v27, v29 & 1);

  v86[0] = sub_20D974248();
  v35 = sub_20D974518();
  v37 = v36;
  LODWORD(v78) = v38;
  v40 = v39;
  sub_20D7EADC0(v30, v32, v34 & 1);

  if (sub_20D971D88())
  {
    sub_20D9740F8();
    v41 = v76;
    v42 = sub_20D9745A8();
    v44 = v43;
    v46 = v45;
    sub_20D974468();
    v79 = sub_20D974558();
    v80 = v47;
    v77 = v48;
    v50 = v49;

    sub_20D7EADC0(v42, v44, v46 & 1);

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3A0, &unk_20D97D7E0);
    v52 = v75;
    v53 = &v75[*(v51 + 36)];
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A108, &unk_20D97B230) + 28);
    v55 = *MEMORY[0x277CE0B48];
    v56 = sub_20D974538();
    v57 = *(v56 - 8);
    (*(v57 + 104))(v53 + v54, v55, v56);
    (*(v57 + 56))(v53 + v54, 0, 1, v56);
    *v53 = swift_getKeyPath();
    v58 = v77;
    *v52 = v79;
    *(v52 + 8) = v58;
    *(v52 + 16) = v50 & 1;
    *(v52 + 24) = v80;
    v59 = sub_20D974968();
    KeyPath = swift_getKeyPath();
    v61 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C6F8, &qword_20D980248) + 36));
    *v61 = KeyPath;
    v61[1] = v59;
    LOBYTE(v59) = sub_20D974338();
    sub_20D973AD8();
    v62 = v82;
    v63 = v83;
    v64 = v52 + *(v82 + 36);
    *v64 = v59;
    *(v64 + 8) = v65;
    *(v64 + 16) = v66;
    *(v64 + 24) = v67;
    *(v64 + 32) = v68;
    *(v64 + 40) = 0;
    sub_20D7EAF18(v52, v63, &qword_27C83C6E0, &qword_20D980230);
    v69 = 0;
  }

  else
  {
    v69 = 1;
    v62 = v82;
    v63 = v83;
  }

  (*(v81 + 56))(v63, v69, 1, v62);
  v70 = v84;
  sub_20D7EB7E8(v63, v84, &qword_27C83C6E8, &qword_20D980238);
  v71 = v85;
  *v85 = v35;
  v71[1] = v37;
  v72 = v78 & 1;
  *(v71 + 16) = v78 & 1;
  v71[3] = v40;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C6F0, &qword_20D980240);
  sub_20D7EB7E8(v70, v71 + *(v73 + 48), &qword_27C83C6E8, &qword_20D980238);
  sub_20D7DDC4C(v35, v37, v72);

  sub_20D7E3944(v63, &qword_27C83C6E8, &qword_20D980238);
  sub_20D7E3944(v70, &qword_27C83C6E8, &qword_20D980238);
  sub_20D7EADC0(v35, v37, v72);

  return result;
}

uint64_t sub_20D9515B4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20D974048();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = a1(0);
  sub_20D7EB7E8(v2 + *(v12 + 24), v11, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20D973D58();
    return (*(*(v13 - 8) + 32))(a2, v11, v13);
  }

  else
  {
    sub_20D975468();
    v15 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_20D9517C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C590, &qword_20D9800E0);
  MEMORY[0x28223BE20](v22[0]);
  v4 = v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C598, &qword_20D9800E8);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C5A0, &qword_20D9800F0);
  MEMORY[0x28223BE20](v8);
  v10 = v22 - v9;
  v11 = sub_20D973D58();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D9515B4(type metadata accessor for AboutPeakType, v14);
  v15 = sub_20D973D38();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    *v10 = sub_20D974168();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C5D0, &qword_20D980108);
    sub_20D951E6C(v2, &v10[*(v16 + 44)]);
    v17 = &qword_27C83C5A0;
    v18 = &qword_20D9800F0;
    sub_20D7EB7E8(v10, v7, &qword_27C83C5A0, &qword_20D9800F0);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_27C83C5B0, &qword_27C83C5A0, &qword_20D9800F0, MEMORY[0x277CE1198]);
    sub_20D956FF4();
    sub_20D9741B8();
    v19 = v10;
  }

  else
  {
    *v4 = sub_20D974078();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C5A8, &qword_20D9800F8);
    sub_20D951E6C(v2, &v4[*(v20 + 44)]);
    *&v4[*(v22[0] + 36)] = 256;
    v17 = &qword_27C83C590;
    v18 = &qword_20D9800E0;
    sub_20D7EB7E8(v4, v7, &qword_27C83C590, &qword_20D9800E0);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_27C83C5B0, &qword_27C83C5A0, &qword_20D9800F0, MEMORY[0x277CE1198]);
    sub_20D956FF4();
    sub_20D9741B8();
    v19 = v4;
  }

  return sub_20D7E3944(v19, v17, v18);
}

uint64_t sub_20D951B60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C08, &qword_20D977450);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v31 - v4;
  v6 = *v1;
  v7 = v2[2];

  *&v41 = v6;
  BYTE8(v41) = 0;
  v42 = 0uLL;
  *&v43 = v7;
  PeakPeriodAttributes.variableValue.getter();

  v8 = sub_20D9749A8();
  v9 = sub_20D974328();
  sub_20D973AD8();
  v31[0] = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v51 = 0;
  v50 = 0;
  LOBYTE(v7) = sub_20D974348();
  sub_20D973AD8();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20D977210;
  *(v25 + 32) = sub_20D974938();
  *(v25 + 40) = sub_20D974928();
  v26 = MEMORY[0x20F322D80](v25);
  v27 = sub_20D9743C8();
  (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
  v28 = sub_20D974418();
  sub_20D7E3944(v5, &qword_27C838C08, &qword_20D977450);
  KeyPath = swift_getKeyPath();
  *&v32 = v8;
  *(&v32 + 1) = 0x3FF0000000000000;
  LOWORD(v33) = 0;
  BYTE8(v33) = v9;
  *&v34 = v31[0];
  *(&v34 + 1) = v12;
  *&v35 = v14;
  *(&v35 + 1) = v16;
  LOBYTE(v36) = 0;
  BYTE8(v36) = v7;
  *&v37 = v18;
  *(&v37 + 1) = v20;
  *&v38 = v22;
  *(&v38 + 1) = v24;
  LOBYTE(v39) = 0;
  *(&v39 + 1) = v26;
  *&v40 = KeyPath;
  *(&v40 + 1) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C5F0, &qword_20D980158);
  sub_20D9570AC();
  sub_20D9747D8();
  v47 = v38;
  v48 = v39;
  v49 = v40;
  v43 = v34;
  v44 = v35;
  v45 = v36;
  v46 = v37;
  v41 = v32;
  v42 = v33;
  return sub_20D7E3944(&v41, &qword_27C83C5F0, &qword_20D980158);
}

uint64_t sub_20D951E6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C5D8, &qword_20D980110);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C5E0, &qword_20D980118);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  sub_20D951B60(&v22 - v15);
  *v10 = sub_20D974168();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C578, &qword_20D9800C8);
  sub_20D9520B4(a1, &v10[*(v17 + 44)]);
  v18 = sub_20D974368();
  v19 = &v10[*(v5 + 44)];
  *v19 = v18;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  sub_20D7EB7E8(v16, v14, &qword_27C83C5E0, &qword_20D980118);
  sub_20D7EB7E8(v10, v8, &qword_27C83C5D8, &qword_20D980110);
  sub_20D7EB7E8(v14, a2, &qword_27C83C5E0, &qword_20D980118);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C5E8, &qword_20D980120);
  sub_20D7EB7E8(v8, a2 + *(v20 + 48), &qword_27C83C5D8, &qword_20D980110);
  sub_20D7E3944(v10, &qword_27C83C5D8, &qword_20D980110);
  sub_20D7E3944(v16, &qword_27C83C5E0, &qword_20D980118);
  sub_20D7E3944(v8, &qword_27C83C5D8, &qword_20D980110);
  return sub_20D7E3944(v14, &qword_27C83C5E0, &qword_20D980118);
}

uint64_t sub_20D9520B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v83 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v82 = &v70 - v6;
  v7 = sub_20D974458();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D10, &qword_20D9775A8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v81 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v70 - v14;
  v80 = *a1;
  v79 = a1[2];
  *&v91 = v80;
  BYTE8(v91) = 0;
  v92 = 0uLL;
  *&v93 = v79;
  v15 = PeakPeriodAttributes.peakName.getter();
  v17 = v16;

  *&v91 = v15;
  *(&v91 + 1) = v17;
  v78 = sub_20D7E1EF8();
  v18 = sub_20D9745C8();
  v20 = v19;
  v22 = v21;
  sub_20D974398();
  v77 = *MEMORY[0x277CE0A08];
  v23 = *(v8 + 104);
  v75 = v8 + 104;
  v76 = v23;
  v71 = v7;
  v23(v10);
  sub_20D974478();

  v24 = *(v8 + 8);
  v73 = v8 + 8;
  v74 = v24;
  v24(v10, v7);
  v25 = sub_20D974558();
  v27 = v26;
  LOBYTE(v8) = v28;

  sub_20D7EADC0(v18, v20, v22 & 1);

  sub_20D9743F8();
  v29 = sub_20D9744F8();
  v31 = v30;
  v33 = v32;
  sub_20D7EADC0(v25, v27, v8 & 1);

  sub_20D974958();
  v34 = sub_20D974508();
  v36 = v35;
  LOBYTE(v25) = v37;
  v39 = v38;

  sub_20D7EADC0(v29, v31, v33 & 1);

  LOBYTE(v7) = sub_20D974338();
  sub_20D973AD8();
  v90 = v25 & 1;
  v89 = 0;
  *&v85 = v34;
  *(&v85 + 1) = v36;
  LOBYTE(v86) = v25 & 1;
  *(&v86 + 1) = v39;
  LOBYTE(v87) = v7;
  *(&v87 + 1) = v40;
  *v88 = v41;
  *&v88[8] = v42;
  *&v88[16] = v43;
  v88[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D18, &qword_20D9775B0);
  sub_20D7F021C();
  v44 = v72;
  sub_20D9747D8();
  v93 = v87;
  *v94 = *v88;
  *&v94[9] = *&v88[9];
  v91 = v85;
  v92 = v86;
  sub_20D7E3944(&v91, &qword_27C838D18, &qword_20D9775B0);
  *&v85 = v80;
  BYTE8(v85) = 0;
  v86 = 0uLL;
  *&v87 = v79;
  v45 = PeakPeriodAttributes.description.getter();
  v47 = v46;

  *&v85 = v45;
  *(&v85 + 1) = v47;
  v48 = sub_20D9745C8();
  v50 = v49;
  LOBYTE(v34) = v51;
  sub_20D974398();
  v52 = v71;
  v76(v10, v77, v71);
  sub_20D974478();

  v74(v10, v52);
  v53 = sub_20D974558();
  v55 = v54;
  LOBYTE(v52) = v56;

  sub_20D7EADC0(v48, v50, v34 & 1);

  sub_20D974968();
  v57 = sub_20D974508();
  v59 = v58;
  LOBYTE(v50) = v60;
  v62 = v61;

  sub_20D7EADC0(v53, v55, v52 & 1);

  *&v85 = v57;
  *(&v85 + 1) = v59;
  LOBYTE(v86) = v50 & 1;
  *(&v86 + 1) = v62;
  v63 = v82;
  sub_20D9747D8();
  sub_20D7EADC0(v57, v59, v50 & 1);

  v64 = v81;
  sub_20D7EB7E8(v44, v81, &qword_27C838D10, &qword_20D9775A8);
  v65 = v63;
  v66 = v83;
  sub_20D7EB7E8(v63, v83, &qword_27C838F18, &unk_20D977860);
  v67 = v84;
  sub_20D7EB7E8(v64, v84, &qword_27C838D10, &qword_20D9775A8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C588, &qword_20D9800D8);
  sub_20D7EB7E8(v66, v67 + *(v68 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v65, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v44, &qword_27C838D10, &qword_20D9775A8);
  sub_20D7E3944(v66, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v64, &qword_27C838D10, &qword_20D9775A8);
}

uint64_t sub_20D952838@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C650, &qword_20D980198);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v30 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C08, &qword_20D977450);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C658, &qword_20D9801A0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = sub_20D9749A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20D977210;
  *(v18 + 32) = sub_20D974938();
  *(v18 + 40) = sub_20D974928();
  v19 = MEMORY[0x20F322D80](v18);
  v20 = sub_20D9743C8();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  v21 = sub_20D974418();
  sub_20D7E3944(v10, &qword_27C838C08, &qword_20D977450);
  KeyPath = swift_getKeyPath();
  v32 = v17;
  v33 = v19;
  v34 = KeyPath;
  v35 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C660, &qword_20D9801A8);
  sub_20D957334();
  sub_20D9747D8();

  *v7 = sub_20D974168();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839150, &qword_20D97EAC0);
  sub_20D952C48(&v7[*(v23 + 44)]);
  v24 = sub_20D974368();
  v25 = &v7[*(v3 + 44)];
  *v25 = v24;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  v25[40] = 1;
  sub_20D7EB7E8(v16, v14, &qword_27C83C658, &qword_20D9801A0);
  v26 = v30;
  sub_20D7EB7E8(v7, v30, &qword_27C83C650, &qword_20D980198);
  v27 = v31;
  sub_20D7EB7E8(v14, v31, &qword_27C83C658, &qword_20D9801A0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C680, &unk_20D9801C0);
  sub_20D7EB7E8(v26, v27 + *(v28 + 48), &qword_27C83C650, &qword_20D980198);
  sub_20D7E3944(v7, &qword_27C83C650, &qword_20D980198);
  sub_20D7E3944(v16, &qword_27C83C658, &qword_20D9801A0);
  sub_20D7E3944(v26, &qword_27C83C650, &qword_20D980198);
  return sub_20D7E3944(v14, &qword_27C83C658, &qword_20D9801A0);
}

uint64_t sub_20D952C48@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = sub_20D9726E8();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D975058();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v61 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v60 = &v55 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v59 = &v55 - v13;
  MEMORY[0x28223BE20](v12);
  v63 = &v55 - v14;
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v15 = qword_28112ABE8;
  v16 = qword_28112ABE8;
  v58 = v15;
  v17 = v16;
  sub_20D9726B8();
  v18 = v17;
  v64 = sub_20D975108(v6, 0, 0, v15, v3, "Tiered rate plan type", 21, 2);
  v65 = v19;
  v57 = sub_20D7E1EF8();
  v20 = sub_20D9745C8();
  v56 = v3;
  v22 = v21;
  LOBYTE(v15) = v23;
  sub_20D974398();
  sub_20D9743F8();
  sub_20D974448();

  v24 = sub_20D974558();
  v26 = v25;
  v28 = v27;

  sub_20D7EADC0(v20, v22, v15 & 1);

  sub_20D974958();
  v29 = sub_20D974508();
  v31 = v30;
  LOBYTE(v22) = v32;
  v34 = v33;

  sub_20D7EADC0(v24, v26, v28 & 1);

  v64 = v29;
  v65 = v31;
  v66 = v22 & 1;
  v67 = v34;
  sub_20D9747D8();
  sub_20D7EADC0(v29, v31, v22 & 1);

  sub_20D974FE8();
  v35 = v56;
  sub_20D9726B8();
  v64 = sub_20D975108(v6, 0, 0, v58, v35, "Tiered Plan body 1", 18, 2);
  v65 = v36;
  v37 = sub_20D9745C8();
  v39 = v38;
  LOBYTE(v31) = v40;
  sub_20D974968();
  v41 = sub_20D974508();
  v43 = v42;
  v45 = v44;
  v47 = v46;

  sub_20D7EADC0(v37, v39, v31 & 1);

  v64 = v41;
  v65 = v43;
  v66 = v45 & 1;
  v67 = v47;
  v48 = v59;
  sub_20D9747D8();
  sub_20D7EADC0(v41, v43, v45 & 1);

  v49 = v63;
  v50 = v60;
  sub_20D7EB7E8(v63, v60, &qword_27C838F18, &unk_20D977860);
  v51 = v61;
  sub_20D7EB7E8(v48, v61, &qword_27C838F18, &unk_20D977860);
  v52 = v62;
  sub_20D7EB7E8(v50, v62, &qword_27C838F18, &unk_20D977860);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839160, &unk_20D977DF0);
  sub_20D7EB7E8(v51, v52 + *(v53 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v48, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v49, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v51, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v50, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D9531A0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_20D974078();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C640, &qword_20D980188);
  sub_20D952838(a2 + *(v3 + 44));
  v4 = sub_20D974338();
  sub_20D973AD8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C648, &qword_20D980190);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

unint64_t sub_20D953264()
{
  result = qword_27C83C358;
  if (!qword_27C83C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C358);
  }

  return result;
}

uint64_t objectdestroy_53Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void sub_20D953308(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20D9562E4(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_20D95341C(v4);
  *a1 = v2;
}

void sub_20D953374(uint64_t *a1)
{
  v2 = *(sub_20D971D98() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20D9562F8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20D953514(v5);
  *a1 = v3;
}

void sub_20D95341C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20D975798();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_20D975268();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_20D953CD0(v7, v8, a1, v4);
      *(v6 + 16) = 0;

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
    sub_20D953640(0, v2, 1, a1);
  }
}

void sub_20D953514(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_20D975798();
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
        sub_20D971D98();
        v6 = sub_20D975268();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20D971D98() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_20D954704(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_20D953930(0, v2, 1, a1);
  }
}

void sub_20D953640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v42 = sub_20D971D98();
  v10 = *(v42 - 8);
  v11 = MEMORY[0x28223BE20](v42);
  v36 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v29 - v13;
  v30 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v40 = v10 + 16;
    v34 = (v10 + 8);
    v35 = v10;
    v37 = v14;
    v15 = v14 + 24 * a3 - 24;
    v16 = a1 - a3;
LABEL_6:
    v32 = v15;
    v33 = a3;
    v17 = *(v37 + 24 * a3 + 8);
    v31 = v16;
    while (1)
    {
      v18 = *(v15 + 8);
      v43 = v17;
      swift_bridgeObjectRetain_n();

      sub_20D953374(&v43);
      v19 = v5;
      if (v5)
      {
        break;
      }

      if (!*(v43 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        break;
      }

      v39 = v17;
      v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v21 = *(v10 + 16);
      v21(v41, v43 + v20, v42);

      v43 = v18;

      sub_20D953374(&v43);
      if (!*(v43 + 16))
      {
        goto LABEL_16;
      }

      v5 = 0;
      v22 = v36;
      v19 = v42;
      v21(v36, v43 + v20, v42);

      v23 = v41;
      v38 = MEMORY[0x20F31FEF0](v41, v22);
      v24 = *v34;
      (*v34)(v22, v19);
      v24(v23, v19);

      if ((v38 & 1) == 0)
      {
        v10 = v35;
LABEL_5:
        a3 = v33 + 1;
        v15 = v32 + 24;
        v16 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_6;
      }

      v10 = v35;
      if (!v37)
      {
        goto LABEL_17;
      }

      v17 = *(v15 + 32);
      v25 = *(v15 + 40);
      v27 = *(v15 + 16);
      v26 = *(v15 + 24);
      *(v15 + 24) = *v15;
      *(v15 + 40) = v27;
      *v15 = v26;
      *(v15 + 8) = v17;
      *(v15 + 16) = v25;
      v15 -= 24;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20D953930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_20D972628();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v41 - v11;
  v12 = sub_20D971D98();
  v13 = MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v41 - v16;
  result = MEMORY[0x28223BE20](v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      v54(v56, v26, v12);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_20D971D78();
      v32 = v59;
      sub_20D971D78();
      v62 = sub_20D972548();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      result = v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      result = v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_20D953CD0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v116 = a1;
  v133 = sub_20D971D98();
  v8 = MEMORY[0x28223BE20](v133);
  v125 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v131 = &v113 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v120 = &v113 - v13;
  MEMORY[0x28223BE20](v12);
  v123 = a3;
  v124 = &v113 - v15;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_94:
    v19 = *v116;
    if (*v116)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_96;
    }

    goto LABEL_137;
  }

  v114 = a4;
  v17 = 0;
  v132 = v14 + 16;
  v127 = (v14 + 8);
  v128 = v14;
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    v19 = v17;
    v121 = v18;
    if (v17 + 1 >= v16)
    {
      ++v17;
      goto LABEL_21;
    }

    v122 = v16;
    v20 = *v123;
    v21 = (*v123 + 24 * (v17 + 1));
    v23 = *v21;
    v22 = v21[1];
    v24 = v21[2];
    v135[0] = v23;
    v135[1] = v22;
    v135[2] = v24;
    v25 = (v20 + 24 * v17);
    v26 = *v25;
    v27 = v25[1];
    v28 = v25[2];
    v134[0] = v26;
    v134[1] = v27;
    v134[2] = v28;

    sub_20D94FB58(v135, v134);
    LODWORD(v126) = v29;
    if (v5)
    {
      goto LABEL_107;
    }

    v30 = v17 + 2;
    v115 = v17;
    v119 = 24 * v17;
    v31 = (v20 + 24 * v17 + 56);
    do
    {
      v17 = v122;
      if (v122 == v30)
      {
        goto LABEL_12;
      }

      v32 = *(v31 - 3);
      v135[0] = *v31;
      swift_bridgeObjectRetain_n();

      sub_20D953374(v135);
      v19 = v135[0];
      if (!*(v135[0] + 16))
      {
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

      v130 = v30;
      v33 = (*(v128 + 80) + 32) & ~*(v128 + 80);
      v18 = *(v128 + 16);
      (v18)(v124, v135[0] + v33, v133);

      v135[0] = v32;

      sub_20D953374(v135);
      v19 = v135[0];
      if (!*(v135[0] + 16))
      {
        goto LABEL_109;
      }

      v34 = v120;
      v35 = v133;
      (v18)(v120, v135[0] + v33, v133);

      v36 = v124;
      v129 = MEMORY[0x20F31FEF0](v124, v34);
      v37 = *v127;
      v38 = v34;
      v5 = 0;
      (*v127)(v38, v35);
      v37(v36, v35);

      v30 = v130 + 1;
      v31 += 3;
      v18 = v121;
    }

    while (((v126 ^ v129) & 1) == 0);
    v17 = v130;
LABEL_12:
    v19 = v115;
    if (v126)
    {
      if (v17 >= v115)
      {
        if (v115 < v17)
        {
          v39 = 24 * v17 - 8;
          v40 = v17;
          v41 = v115;
          v42 = v119;
          while (1)
          {
            if (v41 != --v40)
            {
              v43 = *v123;
              if (!*v123)
              {
                goto LABEL_134;
              }

              v44 = v43 + v42;
              v45 = (v43 + v39);
              v46 = *v44;
              v47 = *(v44 + 16);
              v48 = *v45;
              *v44 = *(v45 - 1);
              *(v44 + 16) = v48;
              *(v45 - 1) = v46;
              *v45 = v47;
            }

            ++v41;
            v39 -= 24;
            v42 += 24;
            if (v41 >= v40)
            {
              goto LABEL_21;
            }
          }
        }

        goto LABEL_21;
      }

LABEL_130:
      __break(1u);
LABEL_131:
      v18 = sub_20D9560B0(v18);
LABEL_96:
      v136 = v18;
      v109 = *(v18 + 2);
      if (v109 < 2)
      {
        goto LABEL_104;
      }

      while (*v123)
      {
        v110 = *&v18[16 * v109];
        v111 = *&v18[16 * v109 + 24];
        sub_20D955304((*v123 + 24 * v110), (*v123 + 24 * *&v18[16 * v109 + 16]), *v123 + 24 * v111, v19);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v111 < v110)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_20D9560B0(v18);
        }

        if (v109 - 2 >= *(v18 + 2))
        {
          goto LABEL_125;
        }

        v112 = &v18[16 * v109];
        *v112 = v110;
        *(v112 + 1) = v111;
        v136 = v18;
        sub_20D956024(v109 - 1);
        v18 = v136;
        v109 = *(v136 + 2);
        if (v109 <= 1)
        {
          goto LABEL_104;
        }
      }

LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:

      __break(1u);
      return;
    }

LABEL_21:
    v49 = v123[1];
    if (v17 < v49)
    {
      if (__OFSUB__(v17, v19))
      {
        goto LABEL_127;
      }

      if (v17 - v19 < v114)
      {
        if (__OFADD__(v19, v114))
        {
          goto LABEL_128;
        }

        if (&v19[v114] < v49)
        {
          v49 = &v19[v114];
        }

        if (v49 < v19)
        {
          goto LABEL_129;
        }

        if (v17 != v49)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v17 < v19)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_20D8D42B4(0, *(v18 + 2) + 1, 1, v18);
    }

    v64 = *(v18 + 2);
    v63 = *(v18 + 3);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v18 = sub_20D8D42B4((v63 > 1), v64 + 1, 1, v18);
    }

    *(v18 + 2) = v65;
    v66 = &v18[16 * v64];
    *(v66 + 4) = v19;
    *(v66 + 5) = v17;
    v19 = *v116;
    if (!*v116)
    {
      goto LABEL_136;
    }

    if (v64)
    {
      while (1)
      {
        v67 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v68 = *(v18 + 4);
          v69 = *(v18 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_63:
          if (v71)
          {
            goto LABEL_115;
          }

          v84 = &v18[16 * v65];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_118;
          }

          v90 = &v18[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_122;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v65 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v94 = &v18[16 * v65];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_77:
        if (v89)
        {
          goto LABEL_117;
        }

        v97 = &v18[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_120;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_84:
        v105 = v67 - 1;
        if (v67 - 1 >= v65)
        {
          goto LABEL_110;
        }

        if (!*v123)
        {
          goto LABEL_133;
        }

        v106 = *&v18[16 * v105 + 32];
        v107 = *&v18[16 * v67 + 40];
        sub_20D955304((*v123 + 24 * v106), (*v123 + 24 * *&v18[16 * v67 + 32]), *v123 + 24 * v107, v19);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v107 < v106)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_20D9560B0(v18);
        }

        if (v105 >= *(v18 + 2))
        {
          goto LABEL_112;
        }

        v108 = &v18[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v136 = v18;
        sub_20D956024(v67);
        v18 = v136;
        v65 = *(v136 + 2);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v18[16 * v65 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_113;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_114;
      }

      v79 = &v18[16 * v65];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_116;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_119;
      }

      if (v83 >= v75)
      {
        v101 = &v18[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_123;
        }

        if (v70 < v104)
        {
          v67 = v65 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v16 = v123[1];
    if (v17 >= v16)
    {
      goto LABEL_94;
    }
  }

  v117 = v49;
  v126 = *v123;
  v50 = v126 + 24 * v17 - 24;
  v115 = v19;
  v51 = &v19[-v17];
LABEL_32:
  v122 = v17;
  v52 = *(v126 + 24 * v17 + 8);
  v118 = v51;
  v119 = v50;
  while (1)
  {
    v53 = *(v50 + 8);
    v135[0] = v52;
    swift_bridgeObjectRetain_n();

    sub_20D953374(v135);
    if (v5)
    {
      goto LABEL_138;
    }

    if (!*(v135[0] + 16))
    {
      break;
    }

    v54 = (*(v128 + 80) + 32) & ~*(v128 + 80);
    v55 = *(v128 + 16);
    v55(v131, v135[0] + v54, v133);

    v135[0] = v53;

    sub_20D953374(v135);
    if (!*(v135[0] + 16))
    {
      goto LABEL_106;
    }

    v130 = v52;
    v56 = v125;
    v5 = v133;
    v55(v125, v135[0] + v54, v133);

    v57 = v131;
    v129 = MEMORY[0x20F31FEF0](v131, v56);
    v58 = *v127;
    (*v127)(v56, v5);
    v58(v57, v5);

    if ((v129 & 1) == 0)
    {
      v5 = 0;
LABEL_31:
      v17 = v122 + 1;
      v50 = v119 + 24;
      v51 = v118 - 1;
      if ((v122 + 1) == v117)
      {
        v18 = v121;
        v19 = v115;
        v17 = v117;
        goto LABEL_43;
      }

      goto LABEL_32;
    }

    if (!v126)
    {
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v5 = 0;
    v52 = *(v50 + 32);
    v59 = *(v50 + 40);
    v61 = *(v50 + 16);
    v60 = *(v50 + 24);
    *(v50 + 24) = *v50;
    *(v50 + 40) = v61;
    *v50 = v60;
    *(v50 + 8) = v52;
    *(v50 + 16) = v59;
    v50 -= 24;
    if (__CFADD__(v51++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:

LABEL_104:
}

void sub_20D954704(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v159 = sub_20D972628();
  v8 = *(v159 - 8);
  v9 = MEMORY[0x28223BE20](v159);
  v158 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v157 = &v133 - v11;
  v12 = sub_20D971D98();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v140 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v149 = &v133 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v156 = &v133 - v19;
  MEMORY[0x28223BE20](v18);
  v160 = &v133 - v20;
  v21 = *(a3 + 1);
  v145 = a3;
  if (v21 < 1)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v23;
    v23 = *v137;
    if (!*v137)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v145;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_20D9560B0(v12);
    }

    v162 = v12;
    v129 = *(v12 + 16);
    if (v129 >= 2)
    {
      while (*v51)
      {
        v130 = *(v12 + 16 * v129);
        v131 = *(v12 + 16 * (v129 - 1) + 40);
        sub_20D955934(*v51 + *(v13 + 72) * v130, *v51 + *(v13 + 72) * *(v12 + 16 * (v129 - 1) + 32), *v51 + *(v13 + 72) * v131, v23);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v131 < v130)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_20D9560B0(v12);
        }

        if (v129 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v132 = (v12 + 16 * v129);
        *v132 = v130;
        v132[1] = v131;
        v162 = v12;
        sub_20D956024(v129 - 1);
        v12 = v162;
        v129 = *(v162 + 16);
        if (v129 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v133 = a4;
  v22 = 0;
  v153 = (v8 + 8);
  v154 = v13 + 16;
  v151 = (v13 + 32);
  v152 = (v13 + 8);
  v23 = MEMORY[0x277D84F90];
  v155 = v12;
  v136 = v13;
  while (1)
  {
    v24 = v22 + 1;
    if (v22 + 1 >= v21)
    {
      v40 = v22 + 1;
      v51 = v145;
    }

    else
    {
      v146 = v21;
      v134 = v23;
      v135 = v5;
      v25 = v22;
      v138 = v22;
      v26 = *v145;
      v161 = v26;
      v27 = *(v13 + 72);
      v28 = (v26 + v27 * v24);
      v29 = v12;
      v30 = *(v13 + 16);
      (v30)(v160, v28, v12);
      v31 = v156;
      v147 = v30;
      (v30)(v156, v26 + v27 * v25, v29);
      v32 = v157;
      sub_20D971D78();
      v33 = v158;
      sub_20D971D78();
      LODWORD(v148) = sub_20D972548();
      v34 = *v153;
      v35 = v33;
      v36 = v159;
      (*v153)(v35, v159);
      v144 = v34;
      (v34)(v32, v36);
      v37 = *(v136 + 8);
      v23 = v152;
      v37(v31, v29);
      v143 = v37;
      v37(v160, v29);
      v38 = v138 + 2;
      v150 = v27;
      v39 = v161 + v27 * (v138 + 2);
      while (1)
      {
        v40 = v146;
        if (v146 == v38)
        {
          break;
        }

        v41 = v155;
        v42 = v147;
        v147();
        v43 = v156;
        v42(v156, v28, v41);
        v44 = v157;
        sub_20D971D78();
        v45 = v158;
        sub_20D971D78();
        LOBYTE(v161) = sub_20D972548() & 1;
        LODWORD(v161) = v161;
        v46 = v45;
        v47 = v159;
        v48 = v28;
        v49 = v144;
        (v144)(v46, v159);
        v49(v44, v47);
        v23 = v152;
        v50 = v143;
        (v143)(v43, v41);
        v50(v160, v41);
        ++v38;
        v39 += v150;
        v28 = &v150[v48];
        if ((v148 & 1) != v161)
        {
          v40 = v38 - 1;
          goto LABEL_9;
        }
      }

      v5 = v135;
      v51 = v145;
      v13 = v136;
      v12 = v155;
      v22 = v138;
      if ((v148 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v40 < v138)
      {
        goto LABEL_125;
      }

      if (v138 < v40)
      {
        v52 = v40;
        v53 = v150 * (v40 - 1);
        v54 = v40 * v150;
        v146 = v40;
        v55 = v138;
        v56 = v138 * v150;
        do
        {
          if (v55 != --v52)
          {
            v57 = *v51;
            if (!v57)
            {
              goto LABEL_131;
            }

            v58 = *v151;
            (*v151)(v140, v57 + v56, v12);
            if (v56 < v53 || v57 + v56 >= (v57 + v54))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v56 != v53)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v58((v57 + v53), v140, v12);
            v51 = v145;
          }

          ++v55;
          v53 -= v150;
          v54 -= v150;
          v56 += v150;
        }

        while (v55 < v52);
        v5 = v135;
        v13 = v136;
        v23 = v134;
        v22 = v138;
        v40 = v146;
      }

      else
      {
LABEL_23:
        v23 = v134;
      }
    }

    v59 = v51[1];
    if (v40 < v59)
    {
      if (__OFSUB__(v40, v22))
      {
        goto LABEL_124;
      }

      if (v40 - v22 < v133)
      {
        if (__OFADD__(v22, v133))
        {
          goto LABEL_126;
        }

        if (v22 + v133 >= v59)
        {
          v60 = v51[1];
        }

        else
        {
          v60 = v22 + v133;
        }

        if (v60 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v40 != v60)
        {
          break;
        }
      }
    }

    v61 = v40;
    if (v40 < v22)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_20D8D42B4(0, *(v23 + 2) + 1, 1, v23);
    }

    v63 = *(v23 + 2);
    v62 = *(v23 + 3);
    v64 = v63 + 1;
    v51 = v13;
    if (v63 >= v62 >> 1)
    {
      v23 = sub_20D8D42B4((v62 > 1), v63 + 1, 1, v23);
    }

    *(v23 + 2) = v64;
    v65 = &v23[16 * v63];
    *(v65 + 4) = v22;
    *(v65 + 5) = v61;
    v66 = *v137;
    if (!*v137)
    {
      goto LABEL_133;
    }

    v141 = v61;
    if (v63)
    {
      v13 = v66;
      while (1)
      {
        v67 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v68 = *(v23 + 4);
          v69 = *(v23 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_55:
          if (v71)
          {
            goto LABEL_112;
          }

          v84 = &v23[16 * v64];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_115;
          }

          v90 = &v23[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_119;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v64 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v94 = &v23[16 * v64];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_69:
        if (v89)
        {
          goto LABEL_114;
        }

        v97 = &v23[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_117;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_76:
        v105 = v67 - 1;
        if (v67 - 1 >= v64)
        {
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
          goto LABEL_127;
        }

        if (!*v145)
        {
          goto LABEL_130;
        }

        v106 = *&v23[16 * v105 + 32];
        v107 = *&v23[16 * v67 + 40];
        sub_20D955934(*v145 + v51[9] * v106, *v145 + v51[9] * *&v23[16 * v67 + 32], *v145 + v51[9] * v107, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v107 < v106)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_20D9560B0(v23);
        }

        if (v105 >= *(v23 + 2))
        {
          goto LABEL_109;
        }

        v108 = &v23[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v162 = v23;
        sub_20D956024(v67);
        v23 = v162;
        v64 = *(v162 + 16);
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v23[16 * v64 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_110;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_111;
      }

      v79 = &v23[16 * v64];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_113;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_116;
      }

      if (v83 >= v75)
      {
        v101 = &v23[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_120;
        }

        if (v70 < v104)
        {
          v67 = v64 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v21 = *(v145 + 1);
    v22 = v141;
    v13 = v51;
    if (v141 >= v21)
    {
      goto LABEL_96;
    }
  }

  v134 = v23;
  v135 = v5;
  v109 = *v51;
  v110 = *(v13 + 72);
  v150 = *(v13 + 16);
  v111 = (v109 + v110 * (v40 - 1));
  v147 = -v110;
  v138 = v22;
  v112 = (v22 - v40);
  v148 = v109;
  v139 = v110;
  v113 = v109 + v40 * v110;
  v141 = v60;
LABEL_87:
  v146 = v40;
  v142 = v113;
  v143 = v112;
  v114 = v113;
  v144 = v111;
  v115 = v111;
  while (1)
  {
    v51 = v160;
    v116 = v150;
    (v150)(v160, v114, v12);
    v117 = v156;
    v116(v156, v115, v12);
    v118 = v157;
    sub_20D971D78();
    v119 = v158;
    sub_20D971D78();
    LODWORD(v161) = sub_20D972548();
    v120 = *v153;
    v121 = v119;
    v122 = v159;
    (*v153)(v121, v159);
    v123 = v118;
    v12 = v155;
    v120(v123, v122);
    v124 = *v152;
    (*v152)(v117, v12);
    v124(v51, v12);
    if ((v161 & 1) == 0)
    {
LABEL_86:
      v40 = v146 + 1;
      v111 = &v144[v139];
      v112 = v143 - 1;
      v61 = v141;
      v113 = v142 + v139;
      if (v146 + 1 != v141)
      {
        goto LABEL_87;
      }

      v5 = v135;
      v13 = v136;
      v23 = v134;
      v22 = v138;
      if (v141 < v138)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v148)
    {
      break;
    }

    v125 = *v151;
    v126 = v149;
    (*v151)(v149, v114, v12);
    swift_arrayInitWithTakeFrontToBack();
    v125(v115, v126, v12);
    v115 = v147 + v115;
    v114 += v147;
    if (__CFADD__(v112++, 1))
    {
      goto LABEL_86;
    }
  }

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
}

void sub_20D955304(char *a1, char *a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v61 = sub_20D971D98();
  v56 = *(v61 - 8);
  v9 = MEMORY[0x28223BE20](v61);
  v53 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v57 = &v50 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v52 = &v50 - v14;
  MEMORY[0x28223BE20](v13);
  v55 = &v50 - v16;
  v17 = (a2 - a1) / 24;
  v18 = v15 - a2;
  v19 = (v15 - a2) / 24;
  v60 = a4;
  if (v17 < v19)
  {
    v59 = v15;
    v20 = a4;
    if (a4 != a1 || &a1[24 * v17] <= a4)
    {
      memmove(a4, a1, 24 * v17);
      v20 = v60;
    }

    v21 = &v20[24 * v17];
    if (a2 - a1 >= 24 && a2 < v59)
    {
      v54 = v56 + 16;
      v51 = (v56 + 8);
      v58 = &v20[24 * v17];
      while (1)
      {
        v57 = a2;
        v22 = *(a2 + 1);
        v60 = v20;
        v23 = *(v20 + 1);
        v62 = v22;
        swift_bridgeObjectRetain_n();

        sub_20D953374(&v62);
        if (v5)
        {
          goto LABEL_47;
        }

        if (!*(v62 + 16))
        {
          goto LABEL_44;
        }

        v24 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v25 = *(v56 + 16);
        v25(v55, v62 + v24, v61);

        v62 = v23;

        sub_20D953374(&v62);
        if (!*(v62 + 16))
        {
          goto LABEL_45;
        }

        v53 = 0;
        v26 = v62 + v24;
        v27 = v52;
        v28 = v61;
        v25(v52, v26, v61);

        v29 = v55;
        v30 = MEMORY[0x20F31FEF0](v55, v27);
        v31 = *v51;
        (*v51)(v27, v28);
        v31(v29, v28);

        if ((v30 & 1) == 0)
        {
          break;
        }

        v32 = v57;
        v57 += 24;
        v20 = v60;
        v21 = v58;
        if (a1 != v32)
        {
          goto LABEL_15;
        }

LABEL_16:
        a1 += 24;
        v5 = v53;
        if (v20 < v21)
        {
          a2 = v57;
          if (v57 < v59)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      v32 = v60;
      v20 = v60 + 24;
      v21 = v58;
      if (a1 == v60)
      {
        goto LABEL_16;
      }

LABEL_15:
      v33 = *v32;
      *(a1 + 2) = *(v32 + 2);
      *a1 = v33;
      goto LABEL_16;
    }

LABEL_18:
    a2 = a1;
    goto LABEL_39;
  }

  v51 = a1;
  v20 = a4;
  if (a4 != a2 || &a2[24 * v19] <= a4)
  {
    v34 = v15;
    memmove(a4, a2, 24 * v19);
    v15 = v34;
    v20 = v60;
  }

  v21 = &v20[24 * v19];
  if (v18 < 24 || a2 <= v51)
  {
LABEL_39:
    v49 = (v21 - v20) / 24;
    if (a2 != v20 || a2 >= &v20[24 * v49])
    {
      memmove(a2, v20, 24 * v49);
    }

    return;
  }

  v55 = (v56 + 16);
  v52 = (v56 + 8);
LABEL_25:
  v35 = v15 - 24;
  while (1)
  {
    v59 = v35;
    v36 = *(a2 - 2);
    v62 = *(v21 - 2);
    swift_bridgeObjectRetain_n();

    sub_20D953374(&v62);
    if (v5)
    {
      break;
    }

    if (!*(v62 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      break;
    }

    v58 = v21;
    v37 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v38 = *(v56 + 16);
    v38(v57, v62 + v37, v61);

    v62 = v36;

    sub_20D953374(&v62);
    if (!*(v62 + 16))
    {
      goto LABEL_46;
    }

    v39 = v53;
    v40 = v61;
    v38(v53, v62 + v37, v61);

    v41 = v57;
    LODWORD(v54) = MEMORY[0x20F31FEF0](v57, v39);
    v42 = *v52;
    (*v52)(v39, v40);
    v42(v41, v40);

    if (v54)
    {
      v47 = a2 - 24;
      v15 = v59;
      v20 = v60;
      v21 = v58;
      if ((v59 + 24) != a2)
      {
        v48 = *v47;
        *(v59 + 16) = *(a2 - 1);
        *v15 = v48;
      }

      v5 = 0;
      if (v21 <= v20 || (a2 -= 24, v47 <= v51))
      {
        a2 = v47;
        goto LABEL_39;
      }

      goto LABEL_25;
    }

    v44 = v58;
    v43 = v59;
    v45 = v58 - 24;
    v20 = v60;
    v5 = 0;
    if ((v59 + 24) != v58)
    {
      v46 = *v45;
      *(v59 + 16) = *(v58 - 1);
      *v43 = v46;
    }

    v35 = v43 - 24;
    v21 = v44 - 24;
    if (v45 <= v20)
    {
      v21 = v44 - 24;
      goto LABEL_39;
    }
  }

LABEL_47:

  __break(1u);
}

uint64_t sub_20D955934(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v73 = a3;
  v68 = sub_20D972628();
  v7 = *(v68 - 8);
  v8 = MEMORY[0x28223BE20](v68);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v56 - v10;
  v72 = sub_20D971D98();
  v11 = *(v72 - 8);
  v12 = MEMORY[0x28223BE20](v72);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v70 = &v56 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v18 = v73 - a2;
  if (v73 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v17;
  v76 = a1;
  v75 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v21;
    if (v21 >= 1)
    {
      v39 = -v17;
      v60 = (v7 + 8);
      v61 = (v11 + 16);
      v58 = a4;
      v59 = (v11 + 8);
      v40 = v38;
      v71 = a1;
      v62 = -v17;
      v41 = v72;
      while (2)
      {
        while (1)
        {
          v56 = v38;
          v42 = a2;
          v43 = a2 + v39;
          v63 = v42;
          v64 = v43;
          while (1)
          {
            v44 = v73;
            if (v42 <= a1)
            {
              v76 = v42;
              v74 = v56;
              goto LABEL_59;
            }

            v57 = v38;
            v73 += v39;
            v45 = v40 + v39;
            v46 = *v61;
            (*v61)();
            v47 = v65;
            (v46)(v65, v43, v41);
            v48 = v66;
            sub_20D971D78();
            v49 = v67;
            sub_20D971D78();
            v69 = sub_20D972548();
            v50 = *v60;
            v51 = v49;
            v52 = v68;
            (*v60)(v51, v68);
            v50(v48, v52);
            v53 = *v59;
            (*v59)(v47, v41);
            v53(v70, v41);
            if (v69)
            {
              break;
            }

            v38 = v45;
            v54 = v58;
            if (v44 < v40 || v73 >= v40)
            {
              swift_arrayInitWithTakeFrontToBack();
              v43 = v64;
              v39 = v62;
            }

            else
            {
              v43 = v64;
              v39 = v62;
              if (v44 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v40 = v45;
            a1 = v71;
            v42 = v63;
            if (v45 <= v54)
            {
              a2 = v63;
              goto LABEL_58;
            }
          }

          v55 = v58;
          if (v44 < v63 || v73 >= v63)
          {
            break;
          }

          a2 = v64;
          a1 = v71;
          v38 = v57;
          v39 = v62;
          if (v44 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v40 <= v55)
          {
            goto LABEL_58;
          }
        }

        a2 = v64;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v71;
        v38 = v57;
        v39 = v62;
        if (v40 > v55)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v76 = a2;
    v74 = v38;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v64 = a4 + v20;
    v74 = a4 + v20;
    if (v20 >= 1 && a2 < v73)
    {
      v23 = *(v11 + 16);
      v60 = (v7 + 8);
      v61 = v23;
      v62 = v17;
      v63 = v11 + 16;
      v59 = (v11 + 8);
      v24 = v72;
      do
      {
        v71 = a1;
        v25 = v70;
        v26 = v61;
        (v61)(v70, a2, v24);
        v27 = v65;
        (v26)(v65, a4, v24);
        v28 = v66;
        sub_20D971D78();
        v29 = v67;
        sub_20D971D78();
        v69 = sub_20D972548();
        v30 = a2;
        v31 = *v60;
        v32 = v29;
        v33 = a4;
        v34 = v68;
        (*v60)(v32, v68);
        v31(v28, v34);
        v35 = *v59;
        (*v59)(v27, v24);
        v35(v25, v24);
        if (v69)
        {
          v36 = v62;
          a2 = v30 + v62;
          v37 = v71;
          a4 = v33;
          if (v71 < v30 || v71 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v30;
          v36 = v62;
          a4 = v33 + v62;
          v37 = v71;
          if (v71 < v33 || v71 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v75 = a4;
        }

        a1 = v37 + v36;
        v76 = a1;
      }

      while (a4 < v64 && a2 < v73);
    }
  }

LABEL_59:
  sub_20D9560F4(&v76, &v75, &v74, MEMORY[0x277CC88A8]);
  return 1;
}

uint64_t sub_20D956024(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20D9560B0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_20D9560F4(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_20D956200(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C460, &unk_20D97FE28);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D7EB7E8(a1, &v5 - v3, &qword_27C83C460, &unk_20D97FE28);
  return sub_20D973F98();
}

uint64_t sub_20D956314(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_20D956390()
{
  result = qword_27C83C3B0;
  if (!qword_27C83C3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C3B8, &qword_20D97FD38);
    sub_20D956448();
    sub_20D7EBC4C(&qword_281124FF8, &qword_27C838C98, &unk_20D977550, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C3B0);
  }

  return result;
}

unint64_t sub_20D956448()
{
  result = qword_27C83C3C0;
  if (!qword_27C83C3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C3C8, &qword_20D97FD40);
    sub_20D956500();
    sub_20D7EBC4C(&qword_27C83C3E8, &qword_27C83C3F0, &unk_20D97FD50, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C3C0);
  }

  return result;
}

unint64_t sub_20D956500()
{
  result = qword_27C83C3D0;
  if (!qword_27C83C3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C3D8, &qword_20D97FD48);
    sub_20D9502D0(&qword_27C83C3E0, type metadata accessor for UtilityPeakSquare, &unk_20D97FF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C3D0);
  }

  return result;
}

uint64_t sub_20D9565DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UtilityPeaksGrid(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20D94FD60(a1, v6, a2);
}

unint64_t sub_20D956688()
{
  result = qword_27C83C468;
  if (!qword_27C83C468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BA30, &unk_20D97E930);
    sub_20D7EBC4C(&qword_27C83C470, &qword_27C83C478, &unk_20D97FE38, MEMORY[0x277CDD638]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C468);
  }

  return result;
}

uint64_t sub_20D956740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20D9567A0()
{
  result = qword_27C83C4C0;
  if (!qword_27C83C4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C4B8, &qword_20D97FEA0);
    sub_20D95682C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C4C0);
  }

  return result;
}

unint64_t sub_20D95682C()
{
  result = qword_27C83C4C8;
  if (!qword_27C83C4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C4D0, &qword_20D97FEA8);
    sub_20D9568B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C4C8);
  }

  return result;
}

unint64_t sub_20D9568B8()
{
  result = qword_27C83C4D8;
  if (!qword_27C83C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C4D8);
  }

  return result;
}

void sub_20D956954(uint64_t a1)
{
  sub_20D94CBC8(319, &qword_281127050, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_20D956A30(uint64_t a1)
{
  result = type metadata accessor for UtilityRateInfoSnapshot(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_20D956AB4()
{
  result = qword_27C83C508;
  if (!qword_27C83C508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C510, &qword_20D97FF58);
    sub_20D956B38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C508);
  }

  return result;
}

unint64_t sub_20D956B38()
{
  result = qword_27C83C518;
  if (!qword_27C83C518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C520, &qword_20D97FF60);
    sub_20D9500A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C518);
  }

  return result;
}

unint64_t sub_20D956BC4()
{
  result = qword_27C83C528;
  if (!qword_27C83C528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C530, &qword_20D97FF68);
    sub_20D956C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C528);
  }

  return result;
}

unint64_t sub_20D956C48()
{
  result = qword_27C83C538;
  if (!qword_27C83C538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C2E8, &qword_20D97FCA0);
    sub_20D956314(&qword_27C83C2F8, &qword_27C83C2E0, &qword_20D97FC98, sub_20D9500FC);
    sub_20D950338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C538);
  }

  return result;
}

unint64_t sub_20D956D00()
{
  result = qword_27C83C540;
  if (!qword_27C83C540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C368, &qword_20D97FD08);
    sub_20D7EBC4C(&qword_27C83C548, &qword_27C83C550, &qword_20D97FF70, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C540);
  }

  return result;
}

unint64_t sub_20D956DB8()
{
  result = qword_27C83C558;
  if (!qword_27C83C558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C560, &qword_20D97FF78);
    sub_20D7EBC4C(&qword_27C83C388, &qword_27C83C378, &qword_20D97FD18, MEMORY[0x277CE1138]);
    sub_20D9502D0(&qword_281126F38, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C558);
  }

  return result;
}

unint64_t sub_20D956EA0()
{
  result = qword_27C83C568;
  if (!qword_27C83C568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C570, &qword_20D97FF80);
    sub_20D7EBC4C(&qword_27C83C428, &qword_27C83C408, &qword_20D97FD70, MEMORY[0x277CE14C0]);
    sub_20D7EBC4C(&qword_27C83C430, &qword_27C83C3F8, &qword_20D97FD60, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C568);
  }

  return result;
}

unint64_t sub_20D956FF4()
{
  result = qword_27C83C5B8;
  if (!qword_27C83C5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C590, &qword_20D9800E0);
    sub_20D7EBC4C(&qword_27C83C5C0, &qword_27C83C5C8, &qword_20D980100, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C5B8);
  }

  return result;
}

unint64_t sub_20D9570AC()
{
  result = qword_27C83C5F8;
  if (!qword_27C83C5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C5F0, &qword_20D980158);
    sub_20D957164();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C5F8);
  }

  return result;
}

unint64_t sub_20D957164()
{
  result = qword_27C83C600;
  if (!qword_27C83C600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C608, &qword_20D980160);
    sub_20D95721C();
    sub_20D7EBC4C(&qword_27C83C630, &qword_27C83C638, &unk_20D980178, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C600);
  }

  return result;
}

unint64_t sub_20D95721C()
{
  result = qword_27C83C610;
  if (!qword_27C83C610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C618, &qword_20D980168);
    sub_20D9572A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C610);
  }

  return result;
}

unint64_t sub_20D9572A8()
{
  result = qword_27C83C620;
  if (!qword_27C83C620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C628, &qword_20D980170);
    sub_20D7F0198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C620);
  }

  return result;
}

unint64_t sub_20D957334()
{
  result = qword_27C83C668;
  if (!qword_27C83C668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C660, &qword_20D9801A8);
    sub_20D9573EC();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C668);
  }

  return result;
}

unint64_t sub_20D9573EC()
{
  result = qword_27C83C670;
  if (!qword_27C83C670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C678, &unk_20D9801B0);
    sub_20D7EBC4C(&qword_27C83C630, &qword_27C83C638, &unk_20D980178, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C670);
  }

  return result;
}

uint64_t sub_20D9574D0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_20D957568()
{
  result = qword_27C83C6D0;
  if (!qword_27C83C6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C6A0, &qword_20D9801E8);
    sub_20D7EBC4C(&qword_27C83C6C8, &qword_27C83C6B8, &qword_20D980220, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C6D0);
  }

  return result;
}

unint64_t sub_20D957618()
{
  result = qword_27C83C700;
  if (!qword_27C83C700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C580, &qword_20D9800D0);
    sub_20D7EBC4C(&qword_27C83C708, &qword_27C83C710, &qword_20D980250, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C700);
  }

  return result;
}

unint64_t sub_20D9576D0()
{
  result = qword_27C83C718;
  if (!qword_27C83C718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C720, &qword_20D980258);
    sub_20D7EBC4C(&qword_27C83C5B0, &qword_27C83C5A0, &qword_20D9800F0, MEMORY[0x277CE1198]);
    sub_20D956FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C718);
  }

  return result;
}

unint64_t sub_20D957788()
{
  result = qword_27C83C728;
  if (!qword_27C83C728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C648, &qword_20D980190);
    sub_20D7EBC4C(&qword_27C83C730, &qword_27C83C738, &unk_20D980260, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C728);
  }

  return result;
}

unint64_t sub_20D957840()
{
  result = qword_27C83C740;
  if (!qword_27C83C740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C698, &qword_20D9801E0);
    sub_20D7EBC4C(&qword_27C83C748, &qword_27C83C688, &qword_20D9801D0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C740);
  }

  return result;
}

uint64_t HistoricalUsageSnapshotDerivedInfo.init(requestedDisplayDate:snapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v44 = a1;
  v39 = sub_20D972E88();
  v45 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v6 = MEMORY[0x28223BE20](v42);
  v41 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = sub_20D972628();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  MEMORY[0x28223BE20](v40);
  v37 = &v32 - v17;
  v18 = type metadata accessor for HistoricalUsageSnapshot(0);
  sub_20D971D78();
  v38 = v18;
  v19 = a2;
  sub_20D971D48();
  sub_20D925CA0(&qword_281126E30, MEMORY[0x277CC9590]);
  result = sub_20D974FC8();
  if (result)
  {
    v36 = v5;
    v21 = *(v11 + 32);
    v21(v9, v16, v10);
    v34 = v11;
    v35 = v16;
    v22 = v11;
    v23 = v42;
    v21(&v9[*(v42 + 48)], v14, v10);
    v24 = v41;
    sub_20D7EB7E8(v9, v41, &unk_27C83C750, &unk_20D978DD0);
    v25 = *(v23 + 48);
    v26 = v37;
    v21(v37, v24, v10);
    v33 = v19;
    v27 = *(v22 + 8);
    v27(v24 + v25, v10);
    sub_20D7EAF18(v9, v24, &unk_27C83C750, &unk_20D978DD0);
    v21((v26 + *(v40 + 36)), (v24 + *(v23 + 48)), v10);
    v27(v24, v10);
    v28 = v33;
    v29 = v36;
    (*(v45 + 16))(v36, v33 + *(v38 + 48), v39);
    v30 = v35;
    v31 = v44;
    (*(v34 + 16))(v35, v44, v10);
    HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v26, v29, v30, v43);
    sub_20D7FEF04(v28);
    return (v27)(v31, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v329 = a3;
  v322 = a1;
  v311 = sub_20D972AF8();
  v328 = *(v311 - 8);
  v6 = MEMORY[0x28223BE20](v311);
  v306 = &v277 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v320 = (&v277 - v8);
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v313 = *(v314 - 8);
  v9 = MEMORY[0x28223BE20](v314);
  v301 = &v277 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v326 = &v277 - v12;
  MEMORY[0x28223BE20](v11);
  v296 = &v277 - v13;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v14 = MEMORY[0x28223BE20](v317);
  v316 = &v277 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v315 = &v277 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0C0, &qword_20D980270);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v277 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v282 = &v277 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C760, &unk_20D97D090);
  MEMORY[0x28223BE20](v22 - 8);
  v281 = &v277 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v303 = &v277 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v289 = &v277 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v297 = &v277 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v310 = &v277 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v321 = &v277 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v304 = (&v277 - v36);
  MEMORY[0x28223BE20](v35);
  v284 = &v277 - v37;
  v336 = sub_20D972C58();
  v332 = *(v336 - 1);
  v38 = MEMORY[0x28223BE20](v336);
  v279 = &v277 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v285 = &v277 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v291 = &v277 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v280 = &v277 - v45;
  MEMORY[0x28223BE20](v44);
  v295 = &v277 - v46;
  v47 = sub_20D972628();
  v48 = *(v47 - 8);
  v49 = MEMORY[0x28223BE20](v47);
  v299 = (&v277 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = MEMORY[0x28223BE20](v49);
  v288 = &v277 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v318 = &v277 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v286 = &v277 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v334 = &v277 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v333 = &v277 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v283 = &v277 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v294 = &v277 - v64;
  MEMORY[0x28223BE20](v63);
  v287 = &v277 - v65;
  v66 = sub_20D9727B8();
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v69 = &v277 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v71 = *(v70 + 44);
  v325 = v48;
  v72 = *(v48 + 56);
  v302 = v71;
  v319 = v48 + 56;
  v327 = v72;
  v72(a4 + v71, 1, 1, v47);
  v323 = v70;
  v73 = *(v70 + 60);
  v331 = a4;
  v300 = v73;
  *(a4 + v73) = 0;
  if (qword_2811250E8 != -1)
  {
    swift_once();
  }

  v312 = v20;
  v330 = v47;
  v298 = sub_20D9734F8();
  __swift_project_value_buffer(v298, qword_28112AB90);
  v74 = sub_20D9734D8();
  v75 = sub_20D975478();
  v76 = os_log_type_enabled(v74, v75);
  v335 = a2;
  if (v76)
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_20D7C9000, v74, v75, "Init HistoricalUsageSnapshotDerivedInfo", v77, 2u);
    MEMORY[0x20F324260](v77, -1, -1);
  }

  v78 = v331;
  sub_20D972E58();
  v79 = v323;
  v80 = v78 + v323[5];
  sub_20D972AB8();
  v324 = v78 + v79[16];
  sub_20D972E48();
  v308 = v78 + v79[7];
  sub_20D7EB7E8(v322, v308, &qword_27C839550, &qword_20D979C30);
  v81 = *MEMORY[0x277CC9968];
  v82 = *(v67 + 104);
  v82(v69, v81, v66);
  v307 = v80;
  v83 = sub_20D9727A8();
  v84 = *(v67 + 8);
  v84(v69, v66);
  if ((v83 & 1) == 0)
  {
    goto LABEL_10;
  }

  v85 = sub_20D972E38();
  v86 = *(v85 + 16);
  if (!v86)
  {

    v78 = v331;
    v79 = v323;
LABEL_10:
    v102 = 0;
    *(v78 + v79[9]) = 0;
    v103 = v311;
    v97 = v330;
    v105 = v321;
    goto LABEL_24;
  }

  v87 = v332;
  v309 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v305 = *(v332 + 72);
  v88 = *(v332 + 16);
  v293 = v66;
  v89 = v295;
  v90 = v336;
  v88(v295, v85 + v309 + v305 * (v86 - 1), v336);

  v92 = v294;
  MEMORY[0x20F320DF0](v91);
  (*(v87 + 8))(v89, v90);
  v93 = v325;
  v94 = v287;
  v95 = v92;
  v96 = (v325 + 32);
  v97 = v330;
  v295 = *(v325 + 32);
  (v295)(v287, v95, v330);
  v98 = v81;
  v99 = v293;
  v82(v69, v98, v293);
  v100 = v284;
  sub_20D972758();
  v84(v69, v99);
  v101 = v304;
  sub_20D7EB7E8(v100, v304, &qword_27C8389E8, &qword_20D9768D0);
  if ((*(v93 + 48))(v101, 1, v97) == 1)
  {
    sub_20D7E3944(v100, &qword_27C8389E8, &qword_20D9768D0);
    (*(v93 + 8))(v94, v97);
    sub_20D7E3944(v101, &qword_27C8389E8, &qword_20D9768D0);
    v102 = 0;
    v78 = v331;
    v103 = v311;
    v104 = v323;
    v105 = v321;
  }

  else
  {
    v106 = v283;
    (v295)(v283, v101, v97);
    v107 = v329;
    v108 = sub_20D972538();
    v78 = v331;
    v103 = v311;
    v105 = v321;
    if (v108)
    {
      v304 = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A028, &qword_20D97D0A0);
      v109 = v325;
      v110 = (*(v325 + 80) + 32) & ~*(v325 + 80);
      v294 = *(v325 + 72);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_20D979110;
      v112 = *(v109 + 16);
      v278 = v110;
      v112(v111 + v110, v106, v97);
      v338 = v111;
      sub_20D925CA0(&qword_281126E30, MEMORY[0x277CC9590]);
      result = sub_20D974FC8();
      if ((result & 1) == 0)
      {
LABEL_96:
        __break(1u);
        return result;
      }

      v114 = v109;
      v115 = v107;
      v116 = v315;
      v112(v315, v106, v97);
      v117 = v317;
      v118 = v116 + *(v317 + 48);
      v293 = v109 + 16;
      v292 = v112;
      v112(v118, v115, v97);
      v119 = v316;
      sub_20D7EB7E8(v116, v316, &unk_27C83C750, &unk_20D978DD0);
      v290 = *(v117 + 48);
      v120 = v282;
      v121 = v295;
      (v295)(v282, v119, v97);
      v122 = *(v114 + 8);
      v122(&v290[v119], v97);
      v123 = v116;
      v124 = (v114 + 8);
      sub_20D7EAF18(v123, v119, &unk_27C83C750, &unk_20D978DD0);
      v125 = v314;
      v121(v120 + *(v314 + 36), v119 + *(v117 + 48), v97);
      v126 = v119;
      v127 = v122;
      v122(v126, v97);
      (*(v313 + 7))(v120, 0, 1, v125);
      v128 = v281;
      v129 = v283;
      sub_20D972768();
      sub_20D7E3944(v120, &qword_27C83B0C0, &qword_20D980270);
      sub_20D95A7B8(v128);
      v130 = v338;
      v131 = *(v338 + 16);
      v132 = v129;
      v133 = v280;
      if (v131)
      {
        v295 = v127;
        v304 = v124;
        v337 = MEMORY[0x277D84F90];
        sub_20D95D484(0, v131, 0);
        v102 = v337;
        v277 = v130;
        v134 = v130 + v278;
        v290 = (v332 + 32);
        do
        {
          v135 = v333;
          v136 = v97;
          v137 = v97;
          v138 = v292;
          v292(v333, v134, v136);
          v138(v334, v135, v137);
          sub_20D972C48();
          (v295)(v135, v137);
          v337 = v102;
          v140 = *(v102 + 16);
          v139 = *(v102 + 24);
          if (v140 >= v139 >> 1)
          {
            sub_20D95D484((v139 > 1), v140 + 1, 1);
            v102 = v337;
          }

          *(v102 + 16) = v140 + 1;
          (*v290)(v102 + v309 + v140 * v305, v133, v336);
          v134 += v294;
          --v131;
          v97 = v137;
        }

        while (v131);
        v142 = v295;
        (v295)(v283, v137);
        sub_20D7E3944(v284, &qword_27C8389E8, &qword_20D9768D0);
        v142(v287, v137);

        v78 = v331;
      }

      else
      {

        (v127)(v132, v97);
        sub_20D7E3944(v284, &qword_27C8389E8, &qword_20D9768D0);
        (v127)(v287, v97);
        v102 = MEMORY[0x277D84F90];
      }

      v104 = v323;
      v103 = v311;
      v105 = v321;
      if (!*(v102 + 16))
      {

        v102 = 0;
      }
    }

    else
    {
      v141 = *(v325 + 8);
      v141(v106, v97);
      sub_20D7E3944(v100, &qword_27C8389E8, &qword_20D9768D0);
      v141(v287, v97);
      v102 = 0;
      v104 = v323;
    }
  }

  *(v78 + *(v104 + 36)) = v102;

LABEL_24:
  v143 = *(v328 + 16);
  v305 = v328 + 16;
  v304 = v143;
  (v143)(v320, v78, v103);
  v144 = sub_20D972E38();
  v145 = *(v144 + 16);
  if (v145)
  {
    v146 = v332;
    v147 = v291;
    v148 = v336;
    (*(v332 + 16))(v291, v144 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * (v145 - 1), v336);

    MEMORY[0x20F320DF0](v149);
    (*(v146 + 8))(v147, v148);
    v150 = 0;
  }

  else
  {

    v150 = 1;
  }

  v151 = 1;
  v327(v105, v150, 1, v97);
  if (v102)
  {
    v152 = *(v102 + 16);
    if (v152)
    {
      v153 = v78;
      v154 = v332;
      v155 = v285;
      v156 = v336;
      (*(v332 + 16))(v285, v102 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * (v152 - 1), v336);

      v158 = v310;
      MEMORY[0x20F320DF0](v157);
      (*(v154 + 8))(v155, v156);
      v151 = 0;
      goto LABEL_33;
    }

    v153 = v78;
  }

  else
  {
    v153 = v78;
  }

  v158 = v310;
LABEL_33:
  v159 = v327;
  v327(v158, v151, 1, v97);
  v160 = v312;
  v161 = v320;
  v162 = v321;
  sub_20D95B3C0(v320, v321, v158, v324, v312);
  sub_20D7E3944(v158, &qword_27C8389E8, &qword_20D9768D0);
  sub_20D7E3944(v162, &qword_27C8389E8, &qword_20D9768D0);
  v163 = *(v328 + 8);
  v295 = (v328 + 8);
  v294 = v163;
  (v163)(v161, v103);
  v164 = v314;
  if ((*(v313 + 6))(v160, 1, v314) == 1)
  {
    sub_20D7E3944(v160, &qword_27C83B0C0, &qword_20D980270);
    v165 = 0;
    v166 = v323;
    v167 = v153;
    v168 = v325;
    goto LABEL_47;
  }

  v169 = v164;
  v170 = v296;
  sub_20D7EAF18(v160, v296, &qword_27C839550, &qword_20D979C30);
  v168 = v325;
  v171 = (v325 + 16);
  v172 = v297;
  v321 = *(v325 + 16);
  (v321)(v297, v170, v97);
  v159(v172, 0, 1, v97);
  v173 = v172;
  v174 = *(v169 + 36);
  v175 = v289;
  sub_20D7EB7E8(v173, v289, &qword_27C8389E8, &qword_20D9768D0);
  v167 = v153;
  if ((*(v168 + 48))(v175, 1, v97) == 1)
  {
    sub_20D7E3944(v173, &qword_27C8389E8, &qword_20D9768D0);
    sub_20D7E3944(v170, &qword_27C839550, &qword_20D979C30);
    sub_20D7E3944(v175, &qword_27C8389E8, &qword_20D9768D0);
    v165 = 0;
    v103 = v311;
    v166 = v323;
LABEL_46:
    v164 = v314;
    goto LABEL_47;
  }

  v176 = *(v168 + 32);
  v177 = v175;
  v178 = v286;
  v176(v286, v177, v97);
  if ((sub_20D972538() & 1) == 0)
  {
    (*(v168 + 8))(v178, v97);
    sub_20D7E3944(v297, &qword_27C8389E8, &qword_20D9768D0);
    sub_20D7E3944(v170, &qword_27C839550, &qword_20D979C30);
    v165 = 0;
    v103 = v311;
    v166 = v323;
    goto LABEL_46;
  }

  v320 = v176;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A028, &qword_20D97D0A0);
  v179 = (*(v168 + 80) + 32) & ~*(v168 + 80);
  v312 = *(v168 + 72);
  v180 = swift_allocObject();
  *(v180 + 16) = xmmword_20D979110;
  v309 = v179;
  v181 = v321;
  (v321)(v180 + v179, v178, v97);
  v338 = v180;
  sub_20D925CA0(&qword_281126E30, MEMORY[0x277CC9590]);
  result = sub_20D974FC8();
  if ((result & 1) == 0)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v182 = v315;
  v181(v315, v178, v97);
  v183 = v181;
  v184 = v317;
  v183(v182 + *(v317 + 48), v296 + v174, v97);
  v185 = v316;
  sub_20D7EB7E8(v182, v316, &unk_27C83C750, &unk_20D978DD0);
  v310 = *(v184 + 48);
  v186 = v282;
  (v320)(v282, v185, v97);
  v188 = (v325 + 8);
  v187 = *(v325 + 8);
  v187(v185 + v310, v97);
  sub_20D7EAF18(v182, v185, &unk_27C83C750, &unk_20D978DD0);
  v189 = *(v184 + 48);
  v164 = v314;
  (v320)(v186 + *(v314 + 36), v185 + v189, v97);
  v190 = v286;
  v191 = v187;
  v320 = v188;
  v187(v185, v97);
  (*(v313 + 7))(v186, 0, 1, v164);
  v192 = v281;
  v193 = v190;
  sub_20D972768();
  sub_20D7E3944(v186, &qword_27C83B0C0, &qword_20D980270);
  sub_20D95A7B8(v192);
  v194 = v338;
  v195 = *(v338 + 16);
  if (v195)
  {
    v313 = v191;
    v310 = v171;
    v337 = MEMORY[0x277D84F90];
    sub_20D95D484(0, v195, 0);
    v165 = v337;
    v293 = v194;
    v196 = v194 + v309;
    v309 = v332 + 32;
    v197 = v279;
    do
    {
      v198 = v333;
      v199 = v330;
      v200 = v321;
      (v321)(v333, v196, v330);
      v200(v334, v198, v199);
      sub_20D972C48();
      v313(v198, v199);
      v337 = v165;
      v202 = *(v165 + 16);
      v201 = *(v165 + 24);
      if (v202 >= v201 >> 1)
      {
        sub_20D95D484((v201 > 1), v202 + 1, 1);
        v165 = v337;
      }

      *(v165 + 16) = v202 + 1;
      (*(v332 + 32))(v165 + ((*(v332 + 80) + 32) & ~*(v332 + 80)) + *(v332 + 72) * v202, v197, v336);
      v196 += v312;
      --v195;
    }

    while (v195);
    v97 = v330;
    v313(v286, v330);
    sub_20D7E3944(v297, &qword_27C8389E8, &qword_20D9768D0);
    sub_20D7E3944(v296, &qword_27C839550, &qword_20D979C30);

    v167 = v331;
    v164 = v314;
  }

  else
  {

    v191(v193, v97);
    sub_20D7E3944(v297, &qword_27C8389E8, &qword_20D9768D0);
    sub_20D7E3944(v296, &qword_27C839550, &qword_20D979C30);
    v165 = MEMORY[0x277D84F90];
  }

  v168 = v325;
  v103 = v311;
  v166 = v323;
  if (!*(v165 + 16))
  {

    v165 = 0;
  }

LABEL_47:
  *(v167 + v166[10]) = v165;
  v203 = sub_20D972E38();
  MEMORY[0x28223BE20](v203);
  v204 = v307;
  *(&v277 - 4) = v167;
  *(&v277 - 3) = v204;
  *(&v277 - 2) = v324;
  sub_20D95A3E8(sub_20D95D45C, (&v277 - 6), v203);
  v206 = v205;

  *(v167 + v166[12]) = v206;
  v207 = v306;
  (v304)(v306, v167, v103);
  v208 = (*(v328 + 88))(v207, v103);
  if (v208 == *MEMORY[0x277D075B0])
  {
    sub_20D973018();
LABEL_57:
    *(v167 + v166[6]) = v209;
    goto LABEL_58;
  }

  if (v208 == *MEMORY[0x277D075B8])
  {
    sub_20D973058();
    goto LABEL_57;
  }

  if (v208 == *MEMORY[0x277D075C8])
  {
    sub_20D9730A8();
    goto LABEL_57;
  }

  if (v208 == *MEMORY[0x277D075D0])
  {
    sub_20D9730A8();
    v209 = v210 * 6.0;
    goto LABEL_57;
  }

  if (v208 == *MEMORY[0x277D075C0])
  {
    sub_20D973068();
    goto LABEL_57;
  }

  sub_20D973058();
  *(v167 + v166[6]) = v276;
  (v294)(v207, v103);
LABEL_58:
  sub_20D972CE8();
  v212 = fmin(-v211, 0.0);
  sub_20D972CF8();
  if (v212 > v213)
  {
    __break(1u);
    goto LABEL_86;
  }

  v214 = v213;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C770, &qword_20D980278);
  v215 = swift_allocObject();
  *(v215 + 16) = xmmword_20D977210;
  v216 = round(v212);
  if ((*&v216 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v216 <= -9.22337204e18)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v216 >= 9.22337204e18)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  *(v215 + 32) = v216;
  v217 = round(v214);
  if ((*&v217 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (v217 <= -9.22337204e18)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (v217 >= 9.22337204e18)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  *(v215 + 40) = v217;
  v218 = v167 + v166[14];
  *v218 = v212;
  *(v218 + 8) = v214;
  *(v218 + 16) = v215;
  sub_20D972E08();
  v219 = v326;
  sub_20D972DE8();
  sub_20D7EB7E8(v219, v167 + v166[13], &qword_27C839550, &qword_20D979C30);
  v220 = *(v164 + 36);
  v207 = sub_20D925CA0(&qword_281126E30, MEMORY[0x277CC9590]);
  v221 = v308;
  if ((sub_20D974FC8() & 1) == 0)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v324 = v207;
  v222 = v168 + 16;
  v223 = *(v168 + 16);
  v224 = v168;
  v225 = v315;
  v223(v315, v221, v97);
  v226 = v317;
  v227 = v225 + *(v317 + 48);
  v332 = v222;
  v334 = v223;
  v223(v227, v221 + v220, v97);
  v228 = v316;
  sub_20D7EB7E8(v225, v316, &unk_27C83C750, &unk_20D978DD0);
  v229 = *(v226 + 48);
  v230 = v167 + v166[8];
  v231 = v224;
  v232 = *(v224 + 32);
  v232(v230, v228, v97);
  v233 = *(v224 + 8);
  v233(v228 + v229, v97);
  sub_20D7EAF18(v225, v228, &unk_27C83C750, &unk_20D978DD0);
  v234 = *(v226 + 48);
  v235 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80) + 36);
  v323 = v230;
  v321 = v235;
  v236 = v331;
  v328 = v224 + 32;
  v232(&v235[v230], v228 + v234, v97);
  v237 = v232;
  v333 = (v231 + 8);
  v336 = v233;
  v233(v228, v97);
  v238 = v302;
  sub_20D7E3944(v236 + v302, &qword_27C8389E8, &qword_20D9768D0);
  v239 = v327;
  v327(v236 + v238, 1, 1, v97);
  v240 = v303;
  sub_20D95C8A4(v303);
  if ((*(v325 + 48))(v240, 1, v97) == 1)
  {
    sub_20D7E3944(v240, &qword_27C8389E8, &qword_20D9768D0);
    goto LABEL_70;
  }

  v241 = v238;
  v242 = v288;
  v237(v288, v240, v97);
  sub_20D7E3944(v236 + v241, &qword_27C8389E8, &qword_20D9768D0);
  v243 = v334;
  (v334)(v236 + v241, v242, v97);
  v239(v236 + v241, 0, 1, v97);
  v244 = v308;
  result = sub_20D974FC8();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_95;
  }

  v245 = v315;
  v243(v315, v244, v97);
  v246 = v317;
  v237((v245 + *(v317 + 48)), v242, v97);
  v247 = v316;
  sub_20D7EB7E8(v245, v316, &unk_27C83C750, &unk_20D978DD0);
  v248 = *(v246 + 48);
  v249 = v323;
  sub_20D7E3944(v323, &qword_27C83A698, &qword_20D97CB80);
  v237(v249, v247, v97);
  v250 = v237;
  v251 = v336;
  (v336)(v247 + v248, v97);
  sub_20D7EAF18(v245, v247, &unk_27C83C750, &unk_20D978DD0);
  v250(&v321[v249], v247 + *(v246 + 48), v97);
  v251(v247, v97);
LABEL_70:
  v207 = v329;
  v168 = v301;
  v166 = v299;
  if (qword_281125088 != -1)
  {
LABEL_93:
    swift_once();
  }

  __swift_project_value_buffer(v298, qword_28112AB78);
  (v334)(v166, v207, v97);
  sub_20D7EB7E8(v326, v168, &qword_27C839550, &qword_20D979C30);
  v252 = sub_20D9734D8();
  v253 = sub_20D975478();
  if (os_log_type_enabled(v252, v253))
  {
    v254 = swift_slowAlloc();
    v255 = swift_slowAlloc();
    v338 = v255;
    *v254 = 136315650;
    *(v254 + 4) = sub_20D7F4DC8(0xD000000000000037, 0x800000020D98B620, &v338);
    *(v254 + 12) = 2080;
    sub_20D925CA0(&qword_281127730, MEMORY[0x277CC95B8]);
    v256 = sub_20D9757A8();
    v258 = v257;
    (v336)(v166, v97);
    v259 = sub_20D7F4DC8(v256, v258, &v338);

    *(v254 + 14) = v259;
    *(v254 + 22) = 2080;
    v260 = sub_20D975408();
    v262 = v261;
    sub_20D7E3944(v168, &qword_27C839550, &qword_20D979C30);
    v263 = sub_20D7F4DC8(v260, v262, &v338);

    *(v254 + 24) = v263;
    _os_log_impl(&dword_20D7C9000, v252, v253, "%s: requested date:%s ---> adjusted to view range:%s", v254, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v255, -1, -1);
    MEMORY[0x20F324260](v254, -1, -1);
  }

  else
  {

    sub_20D7E3944(v168, &qword_27C839550, &qword_20D979C30);
    (v336)(v166, v97);
  }

  v264 = v331;
  v265 = v322;
  v266 = v335;
  if (sub_20D972ED8())
  {
    v267 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v268 = sub_20D975078();
    v269 = [v267 initWithSuiteName_];

    if (v269)
    {
      v270 = sub_20D975078();
      v271 = [v269 BOOLForKey_];
    }

    else
    {
      v271 = 0;
    }

    v274 = v336;
    (v336)(v329, v97);
    v275 = sub_20D972E88();
    (*(*(v275 - 8) + 8))(v266, v275);
    sub_20D7E3944(v322, &qword_27C839550, &qword_20D979C30);
    sub_20D7E3944(v326, &qword_27C839550, &qword_20D979C30);
    result = v274(v318, v97);
  }

  else
  {
    v272 = v336;
    (v336)(v329, v97);
    v273 = sub_20D972E88();
    (*(*(v273 - 8) + 8))(v266, v273);
    sub_20D7E3944(v265, &qword_27C839550, &qword_20D979C30);
    sub_20D7E3944(v326, &qword_27C839550, &qword_20D979C30);
    result = v272(v318, v97);
    v271 = 0;
  }

  *(v264 + v300) = v271;
  return result;
}

void sub_20D95A3E8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for CenteredEnergyUsage(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (v10)
  {
    v20 = MEMORY[0x277D84F90];
    sub_20D95D974(0, v10, 0);
    v11 = v20;
    v12 = *(sub_20D972C58() - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17 = *(v12 + 72);
    while (1)
    {
      v18(v13);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v20 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_20D95D974((v14 > 1), v15 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v15 + 1;
      sub_20D95E7F4(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for CenteredEnergyUsage);
      v13 += v17;
      if (!--v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_20D95A5E4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for FeaturedInterval(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (v10)
  {
    v20 = MEMORY[0x277D84F90];
    sub_20D95DA18(0, v10, 0);
    v11 = v20;
    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = a3 + v17;
    v13 = *(v7 + 72);
    while (1)
    {
      v18(v12);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v20 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_20D95DA18((v14 > 1), v15 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v15 + 1;
      sub_20D95E7F4(v9, v11 + v17 + v15 * v13, type metadata accessor for FeaturedInterval);
      v12 += v13;
      if (!--v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20D95A7B8(uint64_t a1)
{
  v50 = sub_20D972628();
  v56 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v53 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v48 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v49 = v43 - v8;
  MEMORY[0x28223BE20](v7);
  v52 = v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C760, &unk_20D97D090);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v43 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C810, &unk_20D97D080);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v15 = v43 - v14;
  swift_getOpaqueTypeConformance2();
  v16 = sub_20D9751F8();
  v54 = v1;
  v17 = *v1;
  v18 = *(*v1 + 16);
  v19 = v18 + v16;
  if (__OFADD__(v18, v16))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v22 = v17[3] >> 1, v22 < v19))
  {
    if (v18 <= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v18;
    }

    v17 = sub_20D8D4264(isUniquelyReferenced_nonNull_native, v23, 1, v17);
    v22 = v17[3] >> 1;
  }

  v24 = *(v56 + 72);
  v25 = v22 - v17[2];
  v47 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v51 = v24;
  (*(v11 + 16))(v13, a1, v10);
  v26 = sub_20D9751E8();
  (*(v11 + 8))(a1, v10);
  if (v26 < v20)
  {
    goto LABEL_16;
  }

  if (v26 >= 1)
  {
    v27 = v17[2];
    v28 = __OFADD__(v27, v26);
    v29 = v27 + v26;
    if (v28)
    {
      __break(1u);
      goto LABEL_21;
    }

    v17[2] = v29;
  }

  if (v26 == v25)
  {
LABEL_17:
    if (v10 == __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C818, &unk_20D980370))
    {
      goto LABEL_13;
    }

    v13 = v17[2];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = v52;
    v43[1] = AssociatedConformanceWitness;
    sub_20D975518();
    v10 = v49;
    sub_20D7EB7E8(v32, v49, &qword_27C8389E8, &qword_20D9768D0);
    v20 = v56;
    v26 = v50;
    v45 = *(v56 + 48);
    v46 = v56 + 48;
    if (v45(v10, 1, v50) == 1)
    {
LABEL_19:
      sub_20D7E3944(v52, &qword_27C8389E8, &qword_20D9768D0);
      (*(v55 + 8))(v15, v57);
      result = sub_20D7E3944(v10, &qword_27C8389E8, &qword_20D9768D0);
      goto LABEL_14;
    }

LABEL_21:
    v33 = (v20 + 32);
    v43[0] = v20 + 8;
    v34 = v48;
    do
    {
      sub_20D7E3944(v10, &qword_27C8389E8, &qword_20D9768D0);
      v35 = v17[3];
      v36 = v35 >> 1;
      if ((v35 >> 1) < (v13 + 1))
      {
        v17 = sub_20D8D4264((v35 > 1), (v13 + 1), 1, v17);
        v36 = v17[3] >> 1;
      }

      sub_20D7EB7E8(v52, v34, &qword_27C8389E8, &qword_20D9768D0);
      if (v45(v34, 1, v26) == 1)
      {
        v34 = v48;
LABEL_34:
        sub_20D7E3944(v34, &qword_27C8389E8, &qword_20D9768D0);
        v37 = v13;
      }

      else
      {
        v56 = *v33;
        if (v13 <= v36)
        {
          v37 = v36;
        }

        else
        {
          v37 = v13;
        }

        v34 = v48;
        v38 = v17 + v47 + v51 * v13;
        v44 = v37;
        while (1)
        {
          (v56)(v53, v34, v26);
          if (v37 == v13)
          {
            break;
          }

          v39 = v33;
          v40 = v52;
          sub_20D7E3944(v52, &qword_27C8389E8, &qword_20D9768D0);
          (v56)(v38, v53, v26);
          ++v13;
          sub_20D975518();
          v26 = v50;
          v41 = v40;
          v33 = v39;
          v37 = v44;
          sub_20D7EB7E8(v41, v34, &qword_27C8389E8, &qword_20D9768D0);
          v42 = v45(v34, 1, v26);
          v38 += v51;
          if (v42 == 1)
          {
            goto LABEL_34;
          }
        }

        (*v43[0])(v53, v26);
        v13 = v37;
      }

      v17[2] = v37;
      v10 = v49;
      sub_20D7EB7E8(v52, v49, &qword_27C8389E8, &qword_20D9768D0);
    }

    while (v45(v10, 1, v26) != 1);
    goto LABEL_19;
  }

LABEL_13:
  result = (*(v55 + 8))(v15, v57);
LABEL_14:
  *v54 = v17;
  return result;
}

void sub_20D95AEB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_20D8D4130(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_20D95AFAC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_20D975748();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    v6 = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_20D975748();
  v5 = __OFADD__(v13, v3);
  v6 = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_20D95E4DC(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_20D95E57C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_20D95B0F4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

uint64_t HistoricalUsageSnapshotDerivedInfo.description.getter()
{
  sub_20D975678();
  MEMORY[0x20F323340](0xD000000000000025, 0x800000020D98B660);
  sub_20D972AE8();
  v0 = sub_20D975128();
  v2 = v1;

  MEMORY[0x20F323340](v0, v2);

  MEMORY[0x20F323340](0xD000000000000011, 0x800000020D98B690);
  type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v3 = sub_20D9725F8();
  MEMORY[0x20F323340](v3);

  MEMORY[0x20F323340](2108192, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v4 = sub_20D9725F8();
  MEMORY[0x20F323340](v4);

  MEMORY[0x20F323340](0xD000000000000010, 0x800000020D98B6B0);
  v5 = sub_20D975408();
  MEMORY[0x20F323340](v5);

  return 0;
}

uint64_t sub_20D95B3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v182 = a4;
  v186 = a5;
  v187[0] = a3;
  v178 = a1;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v6 = MEMORY[0x28223BE20](v164);
  v165 = v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v163 = v152 - v8;
  v9 = sub_20D9727B8();
  v180 = *(v9 - 8);
  v181 = v9;
  MEMORY[0x28223BE20](v9);
  v179 = v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D972AF8();
  v184 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v183 = v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v177 = v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v176 = v152 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v154 = v152 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v155 = v152 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v157 = v152 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v158 = v152 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v160 = v152 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v161 = v152 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v169 = v152 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v170 = v152 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v171 = v152 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v172 = v152 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v175 = v152 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v189 = v152 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = v152 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = v152 - v45;
  v47 = sub_20D972628();
  v48 = *(v47 - 8);
  v49 = MEMORY[0x28223BE20](v47);
  v167 = v152 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v174 = v152 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v153 = v152 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v156 = v152 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v159 = v152 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v168 = v152 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v188 = v152 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v65 = v152 - v64;
  v66 = MEMORY[0x28223BE20](v63);
  v68 = v152 - v67;
  MEMORY[0x28223BE20](v66);
  v190 = v152 - v69;
  sub_20D7EB7E8(a2, v46, &qword_27C8389E8, &qword_20D9768D0);
  v70 = *(v48 + 48);
  if (v70(v46, 1, v47) == 1)
  {
    sub_20D972428();
    if (v70(v46, 1, v47) != 1)
    {
      sub_20D7E3944(v46, &qword_27C8389E8, &qword_20D9768D0);
    }
  }

  else
  {
    (*(v48 + 32))(v68, v46, v47);
  }

  sub_20D7EB7E8(v187[0], v44, &qword_27C8389E8, &qword_20D9768D0);
  v71 = v70(v44, 1, v47);
  v185 = v70;
  v187[1] = v48 + 48;
  v72 = v11;
  if (v71 == 1)
  {
    sub_20D972428();
    if (v70(v44, 1, v47) != 1)
    {
      sub_20D7E3944(v44, &qword_27C8389E8, &qword_20D9768D0);
    }
  }

  else
  {
    (*(v48 + 32))(v65, v44, v47);
  }

  v166 = sub_20D925CA0(&qword_281126E30, MEMORY[0x277CC9590]);
  v73 = sub_20D974FB8();
  v74 = *(v48 + 8);
  v75 = (v73 & 1) == 0;
  if (v73)
  {
    v76 = v68;
  }

  else
  {
    v76 = v65;
  }

  if (v75)
  {
    v77 = v68;
  }

  else
  {
    v77 = v65;
  }

  v74(v76, v47);
  v78 = v190;
  v187[0] = *(v48 + 32);
  (v187[0])(v190, v77, v47);
  v79 = v188;
  sub_20D972428();
  sub_20D925CA0(&qword_281127740, MEMORY[0x277CC9598]);
  v80 = sub_20D974FD8();
  v74(v79, v47);
  if (v80)
  {
    v74(v78, v47);
LABEL_48:
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
    return (*(*(v141 - 8) + 56))(v186, 1, 1, v141);
  }

  v152[1] = v48 + 32;
  v173 = v74;
  v82 = v183;
  v81 = v184;
  (*(v184 + 16))(v183, v178, v72);
  v83 = (*(v81 + 88))(v82, v72);
  v75 = v83 == *MEMORY[0x277D075B0];
  v162 = v48 + 8;
  if (!v75)
  {
    v95 = v181;
    v96 = v180;
    if (v83 == *MEMORY[0x277D075B8])
    {
      v97 = v168;
      sub_20D972F98();
      v98 = *MEMORY[0x277CC9968];
      v99 = v179;
      v184 = *(v96 + 104);
      (v184)(v179, v98, v95);
      v100 = v95;
      v101 = v189;
      sub_20D972758();
      v183 = *(v96 + 8);
      (v183)(v99, v100);
      v102 = v101;
      v103 = v169;
      sub_20D7EB7E8(v102, v169, &qword_27C8389E8, &qword_20D9768D0);
      if (v185(v103, 1, v47) == 1)
      {
        v94 = v173;
        v173(v97, v47);
        v104 = *(v48 + 56);
        v105 = &v192;
LABEL_36:
        v92 = *(v105 - 32);
        v104(v92, 1, 1, v47);
        goto LABEL_42;
      }

      v117 = v188;
      (v187[0])(v188, v103, v47);
      (v184)(v99, v98, v100);
      v118 = v170;
      sub_20D972758();
      (v183)(v99, v100);
      v94 = v173;
      v173(v117, v47);
      v119 = v97;
    }

    else
    {
      v107 = v179;
      if (v83 == *MEMORY[0x277D075C8])
      {
        v108 = v159;
        sub_20D972F98();
        v109 = *(v96 + 104);
        LODWORD(v184) = *MEMORY[0x277CC9968];
        v183 = v109;
        (v109)(v107);
        v110 = v95;
        v111 = v189;
        sub_20D972758();
        v112 = v107;
        v113 = *(v96 + 8);
        v113(v112, v110);
        v114 = v111;
        v115 = v160;
        sub_20D7EB7E8(v114, v160, &qword_27C8389E8, &qword_20D9768D0);
        if (v185(v115, 1, v47) == 1)
        {
          v116 = v108;
          v94 = v173;
          v173(v116, v47);
          v104 = *(v48 + 56);
          v105 = &v191;
          goto LABEL_36;
        }

        v125 = v188;
        (v187[0])(v188, v115, v47);
        (v183)(v112, v184, v110);
        v118 = v161;
      }

      else if (v83 == *MEMORY[0x277D075D0])
      {
        v108 = v156;
        sub_20D972FB8();
        v120 = *(v96 + 104);
        LODWORD(v184) = *MEMORY[0x277CC9940];
        v183 = v120;
        (v120)(v107);
        v110 = v95;
        v121 = v189;
        sub_20D972758();
        v112 = v107;
        v113 = *(v96 + 8);
        v113(v112, v110);
        v122 = v121;
        v123 = v157;
        sub_20D7EB7E8(v122, v157, &qword_27C8389E8, &qword_20D9768D0);
        if (v185(v123, 1, v47) == 1)
        {
          v124 = v108;
          v94 = v173;
          v173(v124, v47);
          v104 = *(v48 + 56);
          v105 = &v189;
          goto LABEL_36;
        }

        v125 = v188;
        (v187[0])(v188, v123, v47);
        (v183)(v112, v184, v110);
        v118 = v158;
      }

      else
      {
        if (v83 != *MEMORY[0x277D075C0])
        {
          v173(v78, v47);
          v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
          (*(*(v131 - 8) + 56))(v186, 1, 1, v131);
          return (*(v184 + 8))(v183, v72);
        }

        v108 = v153;
        sub_20D972FF8();
        v126 = *(v96 + 104);
        LODWORD(v184) = *MEMORY[0x277CC9998];
        v183 = v126;
        (v126)(v107);
        v110 = v95;
        v127 = v189;
        sub_20D972758();
        v112 = v107;
        v113 = *(v96 + 8);
        v113(v112, v110);
        v128 = v127;
        v129 = v154;
        sub_20D7EB7E8(v128, v154, &qword_27C8389E8, &qword_20D9768D0);
        if (v185(v129, 1, v47) == 1)
        {
          v130 = v108;
          v94 = v173;
          v173(v130, v47);
          v104 = *(v48 + 56);
          v105 = v187;
          goto LABEL_36;
        }

        v125 = v188;
        (v187[0])(v188, v129, v47);
        (v183)(v112, v184, v110);
        v118 = v155;
      }

      sub_20D972758();
      v113(v112, v110);
      v133 = v108;
      v94 = v173;
      v173(v125, v47);
      v119 = v133;
    }

    v94(v119, v47);
    v92 = v118;
    goto LABEL_42;
  }

  v84 = *MEMORY[0x277CC9980];
  v86 = v179;
  v85 = v180;
  v87 = v181;
  v184 = *(v180 + 104);
  (v184)(v179, v84, v181);
  v88 = v189;
  sub_20D972758();
  v89 = *(v85 + 8);
  v89(v86, v87);
  v90 = v88;
  v91 = v171;
  sub_20D7EB7E8(v90, v171, &qword_27C8389E8, &qword_20D9768D0);
  if (v185(v91, 1, v47) == 1)
  {
    v92 = v172;
    (*(v48 + 56))(v172, 1, 1, v47);
    v93 = v177;
    v94 = v173;
    goto LABEL_43;
  }

  v106 = v188;
  (v187[0])(v188, v91, v47);
  (v184)(v86, v84, v87);
  v92 = v172;
  sub_20D972758();
  v89(v86, v87);
  v94 = v173;
  v173(v106, v47);
LABEL_42:
  v93 = v177;
LABEL_43:
  v134 = v175;
  sub_20D7EAF18(v92, v175, &qword_27C8389E8, &qword_20D9768D0);
  v135 = v176;
  sub_20D7EB7E8(v189, v176, &qword_27C8389E8, &qword_20D9768D0);
  v136 = v185;
  v137 = v185(v135, 1, v47);
  v138 = v190;
  if (v137 == 1)
  {
    v93 = v135;
LABEL_47:
    sub_20D7E3944(v134, &qword_27C8389E8, &qword_20D9768D0);
    sub_20D7E3944(v189, &qword_27C8389E8, &qword_20D9768D0);
    v94(v138, v47);
    sub_20D7E3944(v93, &qword_27C8389E8, &qword_20D9768D0);
    goto LABEL_48;
  }

  v139 = v174;
  v140 = v187[0];
  (v187[0])(v174, v135, v47);
  sub_20D7EB7E8(v134, v93, &qword_27C8389E8, &qword_20D9768D0);
  if (v136(v93, 1, v47) == 1)
  {
    v94 = v173;
    v173(v139, v47);
    goto LABEL_47;
  }

  v142 = v167;
  v140(v167, v93, v47);
  v143 = sub_20D974FC8();
  sub_20D7E3944(v134, &qword_27C8389E8, &qword_20D9768D0);
  sub_20D7E3944(v189, &qword_27C8389E8, &qword_20D9768D0);
  result = (v173)(v138, v47);
  if (v143)
  {
    v144 = v163;
    v140(v163, v174, v47);
    v145 = v164;
    v140((v144 + *(v164 + 48)), v142, v47);
    v146 = v165;
    sub_20D7EB7E8(v144, v165, &unk_27C83C750, &unk_20D978DD0);
    v147 = *(v145 + 48);
    v148 = v186;
    v140(v186, v146, v47);
    v149 = v173;
    v173((v146 + v147), v47);
    sub_20D7EAF18(v144, v146, &unk_27C83C750, &unk_20D978DD0);
    v150 = *(v145 + 48);
    v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
    v140(&v148[*(v151 + 36)], v146 + v150, v47);
    v149(v146, v47);
    return (*(*(v151 - 8) + 56))(v148, 0, 1, v151);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20D95C8A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = sub_20D972C58();
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v62 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v62 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v71 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v62 - v11;
  v13 = sub_20D972628();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v68 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v69 = &v62 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v62 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v62 - v23;
  MEMORY[0x28223BE20](v22);
  v66 = &v62 - v25;
  v26 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v27 = *(v2 + *(v26 + 36));
  if (v27 && (v28 = *(v27 + 16)) != 0)
  {
    v29 = v63;
    v30 = v26;
    v31 = v2;
    v32 = v64;
    v33 = (*(v63 + 16))(v7, v27 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * (v28 - 1), v64);
    MEMORY[0x20F320DF0](v33);
    v34 = v32;
    v2 = v31;
    v26 = v30;
    (*(v29 + 8))(v7, v34);
    v35 = *(v14 + 56);
    v35(v12, 0, 1, v13);
    (*(v14 + 32))(v24, v12, v13);
  }

  else
  {
    v35 = *(v14 + 56);
    v35(v12, 1, 1, v13);
    sub_20D972428();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_20D7E3944(v12, &qword_27C8389E8, &qword_20D9768D0);
    }
  }

  v65 = v26;
  v36 = *(v2 + *(v26 + 40));
  v67 = v35;
  if (v36 && (v37 = *(v36 + 16)) != 0)
  {
    v38 = v62;
    v39 = v63;
    v40 = v2;
    v41 = v64;
    v42 = (*(v63 + 16))(v62, v36 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * (v37 - 1), v64);
    v43 = v71;
    MEMORY[0x20F320DF0](v42);
    v44 = v41;
    v2 = v40;
    (*(v39 + 8))(v38, v44);
    v35(v43, 0, 1, v13);
    (*(v14 + 32))(v21, v43, v13);
  }

  else
  {
    v45 = v71;
    v35(v71, 1, 1, v13);
    sub_20D972428();
    if ((*(v14 + 48))(v45, 1, v13) != 1)
    {
      sub_20D7E3944(v71, &qword_27C8389E8, &qword_20D9768D0);
    }
  }

  sub_20D925CA0(&qword_281126E30, MEMORY[0x277CC9590]);
  v46 = sub_20D974FB8();
  v47 = *(v14 + 8);
  v48 = (v46 & 1) == 0;
  if (v46)
  {
    v49 = v24;
  }

  else
  {
    v49 = v21;
  }

  if (v48)
  {
    v21 = v24;
  }

  v47(v49, v13);
  v50 = v66;
  v64 = *(v14 + 32);
  v64(v66, v21, v13);
  v51 = v2 + *(v65 + 28);
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30) + 36);
  v53 = sub_20D974FB8();
  v71 = v14;
  if (v53)
  {
    v54 = (v51 + v52);
    v55 = v69;
    v56 = v69;
  }

  else
  {
    v55 = v69;
    v56 = v69;
    v54 = v50;
  }

  (*(v14 + 16))(v56, v54, v13);
  v57 = v68;
  sub_20D972428();
  v58 = sub_20D972598();
  v47(v57, v13);
  v47(v50, v13);
  if (v58)
  {
    v47(v55, v13);
    v59 = 1;
    v60 = v70;
  }

  else
  {
    v60 = v70;
    v64(v70, v55, v13);
    v59 = 0;
  }

  return v67(v60, v59, 1, v13);
}

uint64_t sub_20D95CF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a5;
  v46 = a3;
  v47 = a4;
  v49 = a2;
  v6 = sub_20D972AF8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D972628();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v50 = &v44 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v44 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v44 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v54 = &v44 - v26;
  v55 = a1;
  MEMORY[0x20F320DF0](v25);
  v51 = v11;
  v27 = v11 + 16;
  v28 = *(v11 + 16);
  v28(v21, v24, v10);
  v52 = v28;
  v53 = v27;
  v28(v18, v21, v10);
  (*(v7 + 16))(v9, v49, v6);
  v44 = v9;
  v45 = v7;
  v29 = *(v7 + 88);
  v49 = v6;
  v30 = v29(v9, v6);
  if (v30 != *MEMORY[0x277D075B0])
  {
    v36 = v30 == *MEMORY[0x277D075B8] || v30 == *MEMORY[0x277D075C8];
    v37 = v51;
    v35 = v10;
    if (!v36)
    {
      if (v30 == *MEMORY[0x277D075D0])
      {
        v38 = v50;
        sub_20D972F98();
        sub_20D973018();
        goto LABEL_11;
      }

      if (v30 != *MEMORY[0x277D075C0])
      {
        v33 = *(v51 + 8);
        v33(v18, v10);
        v33(v24, v10);
        v34 = *(v37 + 32);
        v34(v18, v21, v10);
        (*(v45 + 8))(v44, v49);
        goto LABEL_12;
      }
    }

    v38 = v50;
    sub_20D9730D8();
    sub_20D972458();
LABEL_11:
    sub_20D972498();
    v33 = *(v37 + 8);
    v33(v38, v35);
    v33(v18, v35);
    v33(v21, v35);
    v33(v24, v35);
    v34 = *(v37 + 32);
    v34(v18, v48, v35);
    goto LABEL_12;
  }

  sub_20D9730E8();
  v31 = v50;
  sub_20D972498();
  v32 = v51;
  v33 = *(v51 + 8);
  v33(v18, v10);
  v33(v21, v10);
  v33(v24, v10);
  v34 = *(v32 + 32);
  v34(v18, v31, v10);
  v35 = v10;
LABEL_12:
  v39 = v54;
  v34(v54, v18, v35);
  v40 = v56;
  v52(v56, v39, v35);
  sub_20D972BC8();
  v42 = v41;
  v33(v39, v35);
  result = type metadata accessor for CenteredEnergyUsage(0);
  *(v40 + *(result + 20)) = v42;
  return result;
}

void *sub_20D95D484(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20D95DABC(a1, a2, a3, *v3, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
  *v3 = result;
  return result;
}

void sub_20D95D4F0(uint64_t a1)
{
  sub_20D972AF8();
  if (v1 <= 0x3F)
  {
    sub_20D9727B8();
    if (v2 <= 0x3F)
    {
      sub_20D95D6BC(319, &qword_281124BC8, MEMORY[0x277D83D00]);
      if (v3 <= 0x3F)
      {
        sub_20D95D6BC(319, &qword_281124C40, MEMORY[0x277D83638]);
        if (v4 <= 0x3F)
        {
          sub_20D95D744(319);
          if (v5 <= 0x3F)
          {
            sub_20D95D7A8(319, &qword_281126E20, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_20D95D7A8(319, &qword_281124C10, type metadata accessor for CenteredEnergyUsage, MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                sub_20D9727D8();
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

void sub_20D95D6BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_20D972628();
    v7 = sub_20D925CA0(&qword_281126E30, MEMORY[0x277CC9590]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_20D95D744(uint64_t a1)
{
  if (!qword_281124BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C83C780, &qword_20D97E0C0);
    v1 = sub_20D975508();
    if (!v2)
    {
      atomic_store(v1, &qword_281124BF8);
    }
  }
}

void sub_20D95D7A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_20D95D840(uint64_t a1, int a2)
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

uint64_t sub_20D95D888(uint64_t result, int a2, int a3)
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

uint64_t sub_20D95D900(uint64_t a1)
{
  result = sub_20D972628();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_20D95D974(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20D95DABC(a1, a2, a3, *v3, &unk_27C83C790, &qword_20D980328, type metadata accessor for CenteredEnergyUsage);
  *v3 = result;
  return result;
}

char *sub_20D95D9B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20D95DCC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20D95D9D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20D95DDDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20D95D9F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20D95DEE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20D95DA18(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20D95DABC(a1, a2, a3, *v3, &unk_27C83C7C0, &qword_20D97B4A8, type metadata accessor for FeaturedInterval);
  *v3 = result;
  return result;
}

void *sub_20D95DA5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20D95E01C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20D95DA7C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20D95E18C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20D95DA9C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20D95E290(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20D95DABC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_20D95DCC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C800, &qword_20D980368);
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

char *sub_20D95DDDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394D0, &qword_20D9790A0);
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

void *sub_20D95DEE8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A388, &qword_20D980360);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C7F0, &qword_20D97B4A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20D95E01C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B8, &unk_20D980340);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20D95E18C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7A8, &unk_20D980330);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_20D95E290(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C770, &qword_20D980278);
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

char *sub_20D95E394(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7A0, &qword_20D97B440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_20D95E4DC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_20D975748();
LABEL_9:
  result = sub_20D9756A8();
  *v2 = result;
  return result;
}

uint64_t sub_20D95E57C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20D975748();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_20D975748();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20D95E790();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7D8, &qword_20D980358);
            v9 = sub_20D95E708(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7D0, &qword_20D97AC00);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_20D95E708(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F323850](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_20D95E788;
  }

  __break(1u);
  return result;
}

unint64_t sub_20D95E790()
{
  result = qword_27C83C7E0;
  if (!qword_27C83C7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C7D8, &qword_20D980358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C7E0);
  }

  return result;
}

uint64_t sub_20D95E7F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t HistoricalUsageWidgetView.init(widgetDate:usageSnapshot:homeName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v30 = a3;
  v8 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v8);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D972628();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D9726E8();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20D975058();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v11 + 16);
  v31(a5, a1, v10);
  v19 = type metadata accessor for HistoricalUsageWidgetView(0);
  sub_20D9631AC(a2, a5 + v19[5], type metadata accessor for HistoricalUsageSnapshot);
  if (sub_20D972D68())
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v20 = qword_28112ABE8;
    v21 = qword_28112ABE8;
    sub_20D9726B8();
    v22 = sub_20D975108(v18, 0, 0, v20, v15, "electricity usage summary title", 31, 2);
    v24 = v33;
    if (!v33)
    {
      goto LABEL_10;
    }

LABEL_9:

    v23 = v24;
    v22 = v30;
    goto LABEL_10;
  }

  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v25 = qword_28112ABE8;
  sub_20D9726B8();
  v22 = sub_20D9750F8();
  v24 = v33;
  if (v33)
  {
    goto LABEL_9;
  }

LABEL_10:
  v26 = (a5 + v19[6]);
  *v26 = v22;
  v26[1] = v23;
  v27 = v32;
  v31(v32, a1, v10);
  v28 = v34;
  sub_20D9631AC(a2, v34, type metadata accessor for HistoricalUsageSnapshot);
  HistoricalUsageSnapshotDerivedInfo.init(requestedDisplayDate:snapshot:)(v27, v28, a5 + v19[7]);
  sub_20D963214(a2, type metadata accessor for HistoricalUsageSnapshot);
  return (*(v11 + 8))(a1, v10);
}

uint64_t HistoricalUsageWidgetView.init(widgetDate:usageSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = sub_20D9726E8();
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D975058();
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HistoricalUsageSnapshot(0);
  v10 = MEMORY[0x28223BE20](v9);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = sub_20D972628();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v36 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - v18;
  v20 = *(v15 + 16);
  v40 = a1;
  v20(&v35 - v18, a1, v14);
  v39 = a2;
  v21 = a2;
  v22 = v35;
  sub_20D9631AC(v21, v13, type metadata accessor for HistoricalUsageSnapshot);
  v20(v22, v19, v14);
  v23 = type metadata accessor for HistoricalUsageWidgetView(0);
  sub_20D9631AC(v13, v22 + v23[5], type metadata accessor for HistoricalUsageSnapshot);
  if (sub_20D972D68())
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v24 = qword_28112ABE8;
    v25 = qword_28112ABE8;
    v26 = v37;
    sub_20D9726B8();
    v27 = sub_20D975108(v41, 0, 0, v24, v26, "electricity usage summary title", 31, 2);
  }

  else
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v29 = qword_28112ABE8;
    sub_20D9726B8();
    v27 = sub_20D9750F8();
  }

  v30 = (v22 + v23[6]);
  *v30 = v27;
  v30[1] = v28;
  v31 = v36;
  v20(v36, v19, v14);
  v32 = v38;
  sub_20D9631AC(v13, v38, type metadata accessor for HistoricalUsageSnapshot);
  HistoricalUsageSnapshotDerivedInfo.init(requestedDisplayDate:snapshot:)(v31, v32, v22 + v23[7]);
  sub_20D963214(v39, type metadata accessor for HistoricalUsageSnapshot);
  v33 = *(v15 + 8);
  v33(v40, v14);
  sub_20D963214(v13, type metadata accessor for HistoricalUsageSnapshot);
  return (v33)(v19, v14);
}

uint64_t HistoricalUsageWidgetView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C820, &qword_20D980380);
  MEMORY[0x28223BE20](v1);
  v3 = &v18[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C828, &qword_20D980388);
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-v5];
  v7 = v0 + *(type metadata accessor for HistoricalUsageWidgetView(0) + 20);
  if (*(v7 + *(type metadata accessor for HistoricalUsageSnapshot(0) + 64)) == 6)
  {
    *v6 = sub_20D9742F8();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C830, &qword_20D980390);
    sub_20D95F424(v0, &v6[*(v8 + 44)]);
    sub_20D7EB7E8(v6, v3, &qword_27C83C828, &qword_20D980388);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C838, &qword_20D980398);
    sub_20D7EBC4C(&qword_281124FD8, &qword_27C83C828, &qword_20D980388, MEMORY[0x277CDD828]);
    sub_20D9635A8(&qword_281124FC8, &qword_27C83C838, &qword_20D980398, sub_20D95FBCC);
    sub_20D9741B8();
    return sub_20D7E3944(v6, &qword_27C83C828, &qword_20D980388);
  }

  else
  {
    v10 = sub_20D962CB8();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = sub_20D974318();
    v18[8] = 1;
    *v3 = v10;
    *(v3 + 1) = v12;
    *(v3 + 2) = v14;
    *(v3 + 3) = v16;
    v3[32] = v17;
    *(v3 + 40) = 0u;
    *(v3 + 56) = 0u;
    v3[72] = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C838, &qword_20D980398);
    sub_20D7EBC4C(&qword_281124FD8, &qword_27C83C828, &qword_20D980388, MEMORY[0x277CDD828]);
    sub_20D9635A8(&qword_281124FC8, &qword_27C83C838, &qword_20D980398, sub_20D95FBCC);
    return sub_20D9741B8();
  }
}

uint64_t sub_20D95F424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8B0, &qword_20D9805B8);
  v3 = MEMORY[0x28223BE20](v116);
  v120 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v118 = &v111 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v111 - v8);
  MEMORY[0x28223BE20](v7);
  v125 = (&v111 - v10);
  v11 = type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView(0);
  v12 = MEMORY[0x28223BE20](v11);
  v117 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v124 = &v111 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v126 = (&v111 - v17);
  MEMORY[0x28223BE20](v16);
  v19 = (&v111 - v18);
  v20 = type metadata accessor for HistoricalUsageWidgetView(0);
  v21 = (a1 + v20[6]);
  v23 = *v21;
  v22 = v21[1];
  v24 = v20[5];
  sub_20D9631AC(a1 + v24, v19 + v11[5], type metadata accessor for HistoricalUsageSnapshot);
  v25 = v20[7];
  sub_20D9631AC(a1 + v25, v19 + v11[6], type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
  v114 = v22;
  v115 = v23;
  *v19 = v23;
  v19[1] = v22;
  *(v19 + v11[7]) = 0;
  *(v19 + v11[8]) = 0;
  v26 = v19;
  *(v19 + v11[9]) = 0;
  v27 = v11[10];
  v28 = qword_281125B78;
  swift_bridgeObjectRetain_n();
  if (v28 != -1)
  {
    swift_once();
  }

  v29 = unk_281125C10;
  v128[10] = xmmword_281125C20;
  v128[11] = xmmword_281125C30;
  v30 = xmmword_281125C30;
  v128[12] = xmmword_281125C40;
  v31 = xmmword_281125BD0;
  v32 = xmmword_281125BE0;
  v128[6] = xmmword_281125BE0;
  v128[7] = xmmword_281125BF0;
  v33 = xmmword_281125BF0;
  v34 = xmmword_281125C00;
  v128[8] = xmmword_281125C00;
  v128[9] = unk_281125C10;
  v35 = xmmword_281125B90;
  v36 = xmmword_281125BA0;
  v128[2] = xmmword_281125BA0;
  v128[3] = xmmword_281125BB0;
  v37 = xmmword_281125BB0;
  v38 = xmmword_281125BC0;
  v128[4] = xmmword_281125BC0;
  v128[5] = xmmword_281125BD0;
  v39 = xmmword_281125B80;
  v128[0] = xmmword_281125B80;
  v128[1] = xmmword_281125B90;
  v123 = v26;
  v40 = (v26 + v27);
  v40[10] = xmmword_281125C20;
  v40[11] = v30;
  v40[12] = xmmword_281125C40;
  v40[6] = v32;
  v40[7] = v33;
  v40[8] = v34;
  v40[9] = v29;
  v40[2] = v36;
  v40[3] = v37;
  v40[4] = v38;
  v40[5] = v31;
  *v40 = v39;
  v40[1] = v35;
  v41 = v11[5];
  v42 = a1 + v24;
  v43 = v24;
  v112 = type metadata accessor for HistoricalUsageSnapshot;
  v113 = v24;
  v44 = v126;
  sub_20D9631AC(v42, v126 + v41, type metadata accessor for HistoricalUsageSnapshot);
  v45 = v11[6];
  v121 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo;
  v122 = v25;
  sub_20D9631AC(a1 + v25, v44 + v45, type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
  v47 = v114;
  v46 = v115;
  *v44 = v115;
  v44[1] = v47;
  *(v44 + v11[7]) = 1;
  *(v44 + v11[8]) = 0;
  *(v44 + v11[9]) = 0;
  v48 = v11[10];
  v129[0] = xmmword_281125B80;
  v129[1] = xmmword_281125B90;
  v50 = xmmword_281125B80;
  v49 = xmmword_281125B90;
  v129[2] = xmmword_281125BA0;
  v129[3] = xmmword_281125BB0;
  v51 = xmmword_281125BD0;
  v52 = xmmword_281125BE0;
  v129[6] = xmmword_281125BE0;
  v129[7] = xmmword_281125BF0;
  v53 = xmmword_281125BA0;
  v54 = xmmword_281125BB0;
  v55 = xmmword_281125BC0;
  v129[4] = xmmword_281125BC0;
  v129[5] = xmmword_281125BD0;
  v56 = xmmword_281125C30;
  v129[12] = xmmword_281125C40;
  v57 = unk_281125C10;
  v129[10] = xmmword_281125C20;
  v129[11] = xmmword_281125C30;
  v58 = xmmword_281125BF0;
  v59 = xmmword_281125C00;
  v129[8] = xmmword_281125C00;
  v129[9] = unk_281125C10;
  v60 = (v44 + v48);
  v60[10] = xmmword_281125C20;
  v60[11] = v56;
  v60[12] = xmmword_281125C40;
  v60[6] = v52;
  v60[7] = v58;
  v60[8] = v59;
  v60[9] = v57;
  v60[2] = v53;
  v60[3] = v54;
  v60[4] = v55;
  v60[5] = v51;
  *v60 = v50;
  v60[1] = v49;
  v61 = a1 + v43;
  v62 = v125;
  sub_20D9631AC(v61, v125 + v11[5], type metadata accessor for HistoricalUsageSnapshot);
  sub_20D9631AC(a1 + v122, v62 + v11[6], v121);
  v63 = v62;
  *v62 = v46;
  v62[1] = v47;
  *(v62 + v11[7]) = 0;
  *(v62 + v11[8]) = 1;
  *(v62 + v11[9]) = 0;
  v64 = v11[10];
  v130[0] = xmmword_281125B80;
  v130[1] = xmmword_281125B90;
  v66 = xmmword_281125B80;
  v65 = xmmword_281125B90;
  v130[2] = xmmword_281125BA0;
  v130[3] = xmmword_281125BB0;
  v67 = xmmword_281125BD0;
  v68 = xmmword_281125BE0;
  v130[6] = xmmword_281125BE0;
  v130[7] = xmmword_281125BF0;
  v69 = xmmword_281125BA0;
  v70 = xmmword_281125BB0;
  v71 = xmmword_281125BC0;
  v130[4] = xmmword_281125BC0;
  v130[5] = xmmword_281125BD0;
  v72 = xmmword_281125C30;
  v130[12] = xmmword_281125C40;
  v73 = unk_281125C10;
  v130[10] = xmmword_281125C20;
  v130[11] = xmmword_281125C30;
  v74 = xmmword_281125BF0;
  v75 = xmmword_281125C00;
  v130[8] = xmmword_281125C00;
  v130[9] = unk_281125C10;
  v76 = (v62 + v64);
  v76[10] = xmmword_281125C20;
  v76[11] = v72;
  v76[12] = xmmword_281125C40;
  v76[6] = v68;
  v76[7] = v74;
  v76[8] = v75;
  v76[9] = v73;
  v76[2] = v69;
  v76[3] = v70;
  v76[4] = v71;
  v76[5] = v67;
  *v76 = v66;
  v76[1] = v65;

  sub_20D85D690(v128, v131);
  sub_20D85D690(v129, v131);
  sub_20D85D690(v130, v131);
  LOBYTE(v62) = sub_20D974338();
  sub_20D973AD8();
  v77 = v116;
  v78 = v63 + *(v116 + 36);
  *v78 = v62;
  *(v78 + 8) = v79;
  *(v78 + 16) = v80;
  *(v78 + 24) = v81;
  *(v78 + 32) = v82;
  *(v78 + 40) = 0;
  sub_20D9631AC(a1 + v113, v9 + v11[5], v112);
  sub_20D9631AC(a1 + v122, v9 + v11[6], v121);
  *v9 = v46;
  v9[1] = v47;
  *(v9 + v11[7]) = 0;
  *(v9 + v11[8]) = 1;
  *(v9 + v11[9]) = 1;
  v83 = v11[10];
  v131[0] = xmmword_281125B80;
  v131[1] = xmmword_281125B90;
  v85 = xmmword_281125B80;
  v84 = xmmword_281125B90;
  v131[2] = xmmword_281125BA0;
  v131[3] = xmmword_281125BB0;
  v86 = xmmword_281125BD0;
  v87 = xmmword_281125BE0;
  v131[7] = xmmword_281125BF0;
  v131[6] = xmmword_281125BE0;
  v88 = xmmword_281125BA0;
  v89 = xmmword_281125BB0;
  v90 = xmmword_281125BC0;
  v131[4] = xmmword_281125BC0;
  v131[5] = xmmword_281125BD0;
  v91 = xmmword_281125C30;
  v131[12] = xmmword_281125C40;
  v92 = unk_281125C10;
  v131[11] = xmmword_281125C30;
  v131[10] = xmmword_281125C20;
  v93 = xmmword_281125BF0;
  v94 = xmmword_281125C00;
  v131[8] = xmmword_281125C00;
  v131[9] = unk_281125C10;
  v95 = (v9 + v83);
  v95[10] = xmmword_281125C20;
  v95[11] = v91;
  v95[12] = xmmword_281125C40;
  v95[6] = v87;
  v95[7] = v93;
  v95[8] = v94;
  v95[9] = v92;
  v95[2] = v88;
  v95[3] = v89;
  v95[4] = v90;
  v95[5] = v86;
  *v95 = v85;
  v95[1] = v84;
  sub_20D85D690(v131, &v127);
  v96 = sub_20D974338();
  sub_20D973AD8();
  v97 = v9 + *(v77 + 36);
  *v97 = v96;
  *(v97 + 1) = v98;
  *(v97 + 2) = v99;
  *(v97 + 3) = v100;
  *(v97 + 4) = v101;
  v97[40] = 0;
  v102 = v124;
  sub_20D9631AC(v123, v124, type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView);
  v103 = v117;
  sub_20D9631AC(v126, v117, type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView);
  v104 = v118;
  sub_20D7EB7E8(v63, v118, &qword_27C83C8B0, &qword_20D9805B8);
  v105 = v120;
  sub_20D7EB7E8(v9, v120, &qword_27C83C8B0, &qword_20D9805B8);
  v106 = v102;
  v107 = v103;
  v108 = v119;
  sub_20D9631AC(v106, v119, type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8B8, &unk_20D9805C0);
  sub_20D9631AC(v107, v108 + v109[12], type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView);
  sub_20D7EB7E8(v104, v108 + v109[16], &qword_27C83C8B0, &qword_20D9805B8);
  sub_20D7EB7E8(v105, v108 + v109[20], &qword_27C83C8B0, &qword_20D9805B8);
  sub_20D7E3944(v9, &qword_27C83C8B0, &qword_20D9805B8);
  sub_20D7E3944(v125, &qword_27C83C8B0, &qword_20D9805B8);
  sub_20D963214(v126, type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView);
  sub_20D963214(v123, type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView);
  sub_20D7E3944(v105, &qword_27C83C8B0, &qword_20D9805B8);
  sub_20D7E3944(v104, &qword_27C83C8B0, &qword_20D9805B8);
  sub_20D963214(v107, type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView);
  return sub_20D963214(v124, type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView);
}

unint64_t sub_20D95FBCC()
{
  result = qword_2811262F0;
  if (!qword_2811262F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811262F0);
  }

  return result;
}

uint64_t sub_20D95FC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v75 = a3;
  v76 = a4;
  v72 = a5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C850, &qword_20D980518);
  MEMORY[0x28223BE20](v77);
  v81 = &v63[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C858, &unk_20D980520);
  v70 = *(v8 - 8);
  v71 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v69 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v79 = &v63[-v11];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  MEMORY[0x28223BE20](v80);
  v13 = &v63[-v12];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  MEMORY[0x28223BE20](v74);
  v78 = &v63[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC00, &qword_20D97ED90);
  v67 = *(v15 - 8);
  v68 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v66 = &v63[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v82 = &v63[-v18];
  v83 = a1;
  v84 = a2;
  v19 = sub_20D7E1EF8();

  v73 = v19;
  v20 = sub_20D9745C8();
  v22 = v21;
  v24 = v23;
  sub_20D9744A8();
  v25 = sub_20D974558();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_20D7EADC0(v20, v22, v24 & 1);

  v83 = v25;
  v84 = v27;
  LOBYTE(v22) = v29 & 1;
  v32 = v78;
  v85 = v22;
  v86 = v31;
  sub_20D9747D8();
  sub_20D7EADC0(v25, v27, v22);

  v33 = *MEMORY[0x277CDFA00];
  v34 = sub_20D973D58();
  v35 = *(*(v34 - 8) + 104);
  v35(v13, v33, v34);
  sub_20D963A7C(&qword_281127030, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_20D974FD8();
  if (result)
  {
    sub_20D809130();
    v64 = v33;
    v65 = v35;
    v74 = sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0, MEMORY[0x277D84470]);
    sub_20D974778();
    sub_20D7E3944(v13, &qword_27C839080, &qword_20D977AC0);
    sub_20D7E3944(v32, &qword_27C838F18, &unk_20D977860);
    v83 = v75;
    v84 = v76;

    v37 = sub_20D9745C8();
    v39 = v38;
    v83 = v37;
    v84 = v38;
    v41 = v40 & 1;
    v85 = v40 & 1;
    v86 = v42;
    v43 = v81;
    sub_20D9747D8();
    sub_20D7EADC0(v37, v39, v41);

    v44 = sub_20D974468();
    KeyPath = swift_getKeyPath();
    v46 = &v43[*(v77 + 36)];
    *v46 = KeyPath;
    v46[1] = v44;
    v65(v13, v64, v34);
    result = sub_20D974FD8();
    if (result)
    {
      sub_20D9630D4();
      v47 = v79;
      v48 = v81;
      sub_20D974778();
      sub_20D7E3944(v13, &qword_27C839080, &qword_20D977AC0);
      sub_20D7E3944(v48, &qword_27C83C850, &qword_20D980518);
      v49 = v67;
      v50 = v68;
      v51 = *(v67 + 16);
      v52 = v66;
      v51(v66, v82, v68);
      v54 = v69;
      v53 = v70;
      v81 = *(v70 + 16);
      v55 = v47;
      v56 = v71;
      (v81)(v69, v55, v71);
      v57 = v72;
      v51(v72, v52, v50);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C868, &qword_20D980568);
      v59 = &v57[v58[12]];
      *v59 = 0;
      v59[8] = 1;
      (v81)(&v57[v58[16]], v54, v56);
      v60 = &v57[v58[20]];
      *v60 = 0;
      v60[8] = 1;
      v61 = *(v53 + 8);
      v61(v79, v56);
      v62 = *(v49 + 8);
      v62(v82, v50);
      v61(v54, v56);
      return (v62)(v52, v50);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20D96036C@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  *a2 = sub_20D974168();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C848, &qword_20D980510);
  return sub_20D95FC20(v4, v5, v7, v6, (a2 + *(v8 + 44)));
}

uint64_t sub_20D9603E4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C870, &qword_20D980570);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C878, &qword_20D980578);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  *v5 = sub_20D974168();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C880, &unk_20D980580);
  sub_20D960664(v1, &v5[*(v9 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C80, &unk_20D97BFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D977210;
  v11 = sub_20D974348();
  *(inited + 32) = v11;
  v12 = sub_20D974368();
  *(inited + 33) = v12;
  v13 = sub_20D974358();
  sub_20D974358();
  if (sub_20D974358() != v11)
  {
    v13 = sub_20D974358();
  }

  sub_20D974358();
  if (sub_20D974358() != v12)
  {
    v13 = sub_20D974358();
  }

  sub_20D7EAF18(v5, v8, &qword_27C83C870, &qword_20D980570);
  v14 = &v8[*(v6 + 36)];
  *v14 = v13;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  v14[40] = 1;
  v15 = sub_20D974328();
  type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView(0);
  sub_20D973AD8();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_20D7EAF18(v8, a1, &qword_27C83C878, &qword_20D980578);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C888, &qword_20D980590);
  v25 = a1 + *(result + 36);
  *v25 = v15;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_20D960664@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v66 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HistoricalUsageSummaryChart(0);
  MEMORY[0x28223BE20](v6 - 8);
  v81 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C890, &qword_20D980598);
  v82 = *(v78 - 8);
  v8 = MEMORY[0x28223BE20](v78);
  v67 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C898, &qword_20D9805A0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v84 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v83 = &v64 - v14;
  v76 = sub_20D972628();
  v72 = *(v76 - 8);
  v15 = v72;
  MEMORY[0x28223BE20](v76);
  v75 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for HistoricalUsageSnapshot(0) - 8;
  MEMORY[0x28223BE20](v77);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v18;
  v79 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8A0, &qword_20D9805A8) - 8);
  v19 = MEMORY[0x28223BE20](v79);
  v80 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v64 - v21;
  v23 = a1[1];
  v71 = *a1;
  v24 = type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView(0);
  v65 = v24[5];
  sub_20D9631AC(a1 + v65, v18, type metadata accessor for HistoricalUsageSnapshot);
  v25 = v24[6];
  v73 = a1;
  v74 = v24;
  v26 = a1 + v25;
  v27 = *(v4 + 60);
  v28 = *(v15 + 16);
  v64 = v26;
  v29 = v75;
  v30 = v76;
  v28(v75, &v26[v27], v76);
  v69 = *(a1 + v24[9]);
  *v22 = v71;
  *(v22 + 1) = v23;
  v31 = type metadata accessor for HistoricalUsageWidgetView.UsageSummaryView(0);
  v32 = v70;
  sub_20D9631AC(v70, &v22[v31[5]], type metadata accessor for HistoricalUsageSnapshot);
  v28(&v22[v31[6]], v29, v30);
  v22[v31[8]] = v69;

  LOBYTE(v4) = sub_20D972D68();
  (*(v72 + 8))(v29, v30);
  sub_20D963214(v32, type metadata accessor for HistoricalUsageSnapshot);
  v22[v31[7]] = v4 & 1;
  LOBYTE(v4) = sub_20D974338();
  v33 = v73;
  v34 = v74;
  sub_20D973AD8();
  v35 = *(v79 + 11);
  v79 = v22;
  v36 = &v22[v35];
  *v36 = v4;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  if (*(v33 + v34[8]))
  {
    v41 = v83;
    (*(v82 + 56))(v83, 1, 1, v78);
  }

  else
  {
    v42 = v33;
    v43 = v78;
    sub_20D9631AC(v33 + v65, v32, type metadata accessor for HistoricalUsageSnapshot);
    v44 = v66;
    sub_20D9631AC(v64, v66, type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
    if (qword_281125B78 != -1)
    {
      swift_once();
    }

    v100[10] = xmmword_281125C20;
    v100[11] = xmmword_281125C30;
    v100[12] = xmmword_281125C40;
    v100[6] = xmmword_281125BE0;
    v100[7] = xmmword_281125BF0;
    v100[8] = xmmword_281125C00;
    v100[9] = unk_281125C10;
    v100[2] = xmmword_281125BA0;
    v100[3] = xmmword_281125BB0;
    v100[4] = xmmword_281125BC0;
    v100[5] = xmmword_281125BD0;
    v100[0] = xmmword_281125B80;
    v100[1] = xmmword_281125B90;
    v97 = xmmword_281125C20;
    v98 = xmmword_281125C30;
    v99 = xmmword_281125C40;
    v93 = xmmword_281125BE0;
    v94 = xmmword_281125BF0;
    v95 = xmmword_281125C00;
    v96 = unk_281125C10;
    v89 = xmmword_281125BA0;
    v90 = xmmword_281125BB0;
    v91 = xmmword_281125BC0;
    v92 = xmmword_281125BD0;
    v87 = xmmword_281125B80;
    v88 = xmmword_281125B90;
    sub_20D85D690(v100, &v86);
    sub_20D92046C(v32, v44, &v87, v81);
    v45 = *(v42 + v34[7]);
    sub_20D974C48();
    if (v45)
    {
      v46 = 40.0;
    }

    else
    {
      v46 = 0.0;
    }

    if (v45)
    {
      v47 = 0.0;
    }

    else
    {
      v47 = 60.0;
    }

    v48 = v47;
    v49 = -INFINITY;
    if (v45)
    {
      v48 = v46;
    }

    else
    {
      v49 = v47;
    }

    if (v49 > v48)
    {
      sub_20D975468();
      v50 = sub_20D9742C8();
      sub_20D973408();
    }

    sub_20D973E08();
    v51 = v67;
    sub_20D925A14(v81, v67);
    v52 = (v51 + *(v43 + 36));
    v53 = v92;
    v52[4] = v91;
    v52[5] = v53;
    v52[6] = v93;
    v54 = v88;
    *v52 = v87;
    v52[1] = v54;
    v55 = v90;
    v52[2] = v89;
    v52[3] = v55;
    v56 = v51;
    v57 = v68;
    sub_20D7EAF18(v56, v68, &qword_27C83C890, &qword_20D980598);
    v41 = v83;
    sub_20D7EAF18(v57, v83, &qword_27C83C890, &qword_20D980598);
    (*(v82 + 56))(v41, 0, 1, v43);
  }

  v59 = v79;
  v58 = v80;
  sub_20D7EB7E8(v79, v80, &qword_27C83C8A0, &qword_20D9805A8);
  v60 = v84;
  sub_20D7EB7E8(v41, v84, &qword_27C83C898, &qword_20D9805A0);
  v61 = v85;
  sub_20D7EB7E8(v58, v85, &qword_27C83C8A0, &qword_20D9805A8);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8A8, &qword_20D9805B0);
  sub_20D7EB7E8(v60, v61 + *(v62 + 48), &qword_27C83C898, &qword_20D9805A0);
  sub_20D7E3944(v41, &qword_27C83C898, &qword_20D9805A0);
  sub_20D7E3944(v59, &qword_27C83C8A0, &qword_20D9805A8);
  sub_20D7E3944(v60, &qword_27C83C898, &qword_20D9805A0);
  return sub_20D7E3944(v58, &qword_27C83C8A0, &qword_20D9805A8);
}

uint64_t sub_20D960EC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = sub_20D971FC8();
  MEMORY[0x28223BE20](v3 - 8);
  v121 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8E0, &qword_20D980650);
  MEMORY[0x28223BE20](v104);
  v103 = &v94 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8E8, &qword_20D980658);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v107 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v106 = &v94 - v9;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8F0, &qword_20D980660);
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v95 = (&v94 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8F8, &qword_20D980668);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v105 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v125 = &v94 - v14;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  MEMORY[0x28223BE20](v123);
  v126 = &v94 - v15;
  v16 = sub_20D974458();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C900, &qword_20D980670);
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v94 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C908, &qword_20D980678);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v102 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v124 = &v94 - v24;
  v25 = *a1;
  v26 = a1[1];
  v122 = a1;
  *&v132 = v25;
  *(&v132 + 1) = v26;
  sub_20D7E1EF8();

  v27 = sub_20D9745C8();
  v29 = v28;
  v31 = v30;
  sub_20D974498();
  v32 = *(v17 + 104);
  v114 = *MEMORY[0x277CE0A10];
  v115 = v17 + 104;
  v113 = v32;
  v32(v19);
  sub_20D974478();

  v33 = *(v17 + 8);
  v116 = v19;
  v118 = v16;
  v117 = v17 + 8;
  v112 = v33;
  v33(v19, v16);
  v34 = sub_20D974558();
  v36 = v35;
  LOBYTE(a1) = v37;
  v39 = v38;

  sub_20D7EADC0(v27, v29, v31 & 1);

  v40 = objc_opt_self();
  v41 = [v40 labelColor];
  v42 = sub_20D974888();
  KeyPath = swift_getKeyPath();
  LOBYTE(v127) = a1 & 1;
  *&v132 = v34;
  *(&v132 + 1) = v36;
  v44 = v126;
  LOBYTE(v133) = a1 & 1;
  *(&v133 + 1) = v39;
  LOWORD(v134) = 256;
  *(&v134 + 1) = KeyPath;
  *&v135 = v42;
  v45 = *MEMORY[0x277CDFA10];
  v46 = sub_20D973D58();
  v47 = *(v46 - 8);
  v48 = *(v47 + 104);
  v49 = v47 + 104;
  v48(v44, v45, v46);
  v50 = sub_20D963A7C(&qword_281127030, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_20D974FD8();
  if (result)
  {
    v98 = v50;
    v99 = v49;
    v100 = v48;
    v101 = v45;
    v97 = v40;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C910, &qword_20D9806B0);
    v53 = sub_20D963700();
    v54 = sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0, MEMORY[0x277D84470]);
    v55 = v109;
    v56 = v123;
    sub_20D974778();
    sub_20D7E3944(v44, &qword_27C839080, &qword_20D977AC0);
    v137[0] = v132;
    v137[1] = v133;
    v137[2] = v134;
    v138 = v135;
    sub_20D7E3944(v137, &qword_27C83C910, &qword_20D9806B0);
    *&v132 = v52;
    *(&v132 + 1) = v56;
    *&v133 = v53;
    *(&v133 + 1) = v54;
    v96 = v54;
    v57 = 1;
    swift_getOpaqueTypeConformance2();
    v58 = v111;
    sub_20D9747D8();
    (*(v110 + 8))(v55, v58);
    v59 = type metadata accessor for HistoricalUsageWidgetView.UsageSummaryView(0);
    v60 = v122;
    v61 = v125;
    if ((*(v122 + *(v59 + 32)) & 1) == 0)
    {
      v62 = sub_20D974088();
      v63 = v95;
      *v95 = v62;
      *(v63 + 8) = 0x4010000000000000;
      *(v63 + 16) = 0;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C918, &qword_20D9806B8);
      sub_20D961C3C(v60, v63 + *(v64 + 44));
      sub_20D7EAF18(v63, v61, &qword_27C83C8F0, &qword_20D980660);
      v57 = 0;
    }

    (*(v119 + 56))(v61, v57, 1, v120);
    HistoricalUsageSnapshot.summaryDailyUsageOrSurplusTrend(_:)(v60 + *(v59 + 24), v121);
    v65 = sub_20D9745B8();
    v67 = v66;
    v69 = v68;
    sub_20D974488();
    v70 = v116;
    v71 = v118;
    v113(v116, v114, v118);
    sub_20D974478();

    v112(v70, v71);
    v72 = sub_20D974558();
    v74 = v73;
    LOBYTE(v70) = v75;
    v77 = v76;

    sub_20D7EADC0(v65, v67, v69 & 1);

    v78 = swift_getKeyPath();
    LOBYTE(v132) = v70 & 1;
    LOBYTE(v127) = 0;
    v79 = swift_getKeyPath();
    *&v127 = v72;
    *(&v127 + 1) = v74;
    LOBYTE(v128) = v70 & 1;
    *(&v128 + 1) = v77;
    LOWORD(v129) = 256;
    *(&v129 + 1) = v78;
    *&v130 = 2;
    BYTE8(v130) = 0;
    *&v131 = v79;
    *(&v131 + 1) = 0x3FE8000000000000;
    v80 = v126;
    v100(v126, v101, v46);
    result = sub_20D974FD8();
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C920, &qword_20D980720);
      sub_20D9637B8();
      v81 = v103;
      sub_20D974778();
      sub_20D7E3944(v80, &qword_27C839080, &qword_20D977AC0);
      v135 = v130;
      v136 = v131;
      v133 = v128;
      v134 = v129;
      v132 = v127;
      sub_20D7E3944(&v132, &qword_27C83C920, &qword_20D980720);
      v82 = [v97 secondaryLabelColor];
      v83 = sub_20D974888();
      v84 = swift_getKeyPath();
      v85 = (v81 + *(v104 + 36));
      *v85 = v84;
      v85[1] = v83;
      sub_20D963928();
      v86 = v106;
      sub_20D9747D8();
      sub_20D7E3944(v81, &qword_27C83C8E0, &qword_20D980650);
      v87 = v124;
      v88 = v102;
      sub_20D7EB7E8(v124, v102, &qword_27C83C908, &qword_20D980678);
      v89 = v125;
      v90 = v105;
      sub_20D7EB7E8(v125, v105, &qword_27C83C8F8, &qword_20D980668);
      v91 = v107;
      sub_20D7EB7E8(v86, v107, &qword_27C83C8E8, &qword_20D980658);
      v92 = v108;
      sub_20D7EB7E8(v88, v108, &qword_27C83C908, &qword_20D980678);
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C930, &qword_20D980740);
      sub_20D7EB7E8(v90, v92 + *(v93 + 48), &qword_27C83C8F8, &qword_20D980668);
      sub_20D7EB7E8(v91, v92 + *(v93 + 64), &qword_27C83C8E8, &qword_20D980658);
      sub_20D7E3944(v86, &qword_27C83C8E8, &qword_20D980658);
      sub_20D7E3944(v89, &qword_27C83C8F8, &qword_20D980668);
      sub_20D7E3944(v87, &qword_27C83C908, &qword_20D980678);
      sub_20D7E3944(v91, &qword_27C83C8E8, &qword_20D980658);
      sub_20D7E3944(v90, &qword_27C83C8F8, &qword_20D980668);
      return sub_20D7E3944(v88, &qword_27C83C908, &qword_20D980678);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20D961C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v111 = sub_20D971F38();
  MEMORY[0x28223BE20](v111);
  v4 = v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839268, &qword_20D978090);
  MEMORY[0x28223BE20](v5 - 8);
  v106 = v99 - v6;
  v7 = sub_20D975058();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_20D971F48();
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v100 = v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D975038();
  MEMORY[0x28223BE20](v11 - 8);
  v99[2] = v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C08, &qword_20D977450);
  MEMORY[0x28223BE20](v13 - 8);
  v117 = v99 - v14;
  v15 = sub_20D974458();
  v113 = *(v15 - 8);
  v114 = v15;
  MEMORY[0x28223BE20](v15);
  v112 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20D972AF8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v121 = v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v107 = v99 - v21;
  v104 = sub_20D971FC8();
  v102 = *(v104 - 8);
  v22 = MEMORY[0x28223BE20](v104);
  v109 = v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v110 = (v99 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v118 = v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v116 = v99 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A7B0, &qword_20D97C1D8);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = (v99 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A7B8, &qword_20D97C1E0);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v115 = v99 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = v99 - v36;
  v38 = *(type metadata accessor for HistoricalUsageWidgetView.UsageSummaryView(0) + 28);
  v108 = a1;
  v39 = *(a1 + v38) == 1;
  v120 = v37;
  v105 = v9;
  if (v39)
  {
    v99[1] = v4;
    if (qword_27C838770 != -1)
    {
      swift_once();
    }

    v40 = qword_27C840E88;
    v41 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB0, &qword_20D977D40) + 36));
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
    v43 = *MEMORY[0x277CE1050];
    v44 = sub_20D9749F8();
    (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
    *v41 = swift_getKeyPath();
    *v32 = v40;

    *(v32 + *(v29 + 36)) = sub_20D974908();
    v45 = v120;
    sub_20D7EAF18(v32, v120, &qword_27C83A7B0, &qword_20D97C1D8);
    (*(v30 + 56))(v45, 0, 1, v29);
  }

  else
  {
    (*(v30 + 56))(v37, 1, 1, v29);
  }

  type metadata accessor for HistoricalUsageSnapshot(0);
  sub_20D972DB8();
  v47 = v46;
  v48 = v107;
  sub_20D972E58();
  (*(v18 + 104))(v121, *MEMORY[0x277D075B0], v17);
  sub_20D963A7C(&qword_2811250F0, MEMORY[0x277D075D8], MEMORY[0x277D075F0]);
  sub_20D975208();
  sub_20D975208();
  v49 = v109;
  if (v122 == v126 && v123 == v127)
  {
    v50 = *(v18 + 8);
    v50(v121, v17);
    v50(v48, v17);

LABEL_10:
    sub_20D88D380(0, v110, v47, COERCE__INT64(1.0));
    goto LABEL_14;
  }

  v51 = sub_20D9757C8();
  v52 = *(v18 + 8);
  v52(v121, v17);
  v52(v48, v17);

  if (v51)
  {
    goto LABEL_10;
  }

  sub_20D88D380(0, v49, v47, COERCE__INT64(1.0));
  sub_20D975028();
  sub_20D975018();
  v53 = MEMORY[0x277D84F90];
  v122 = MEMORY[0x277D84F90];
  sub_20D963A7C(&qword_281126E58, MEMORY[0x277CC8B88], MEMORY[0x277CC8B90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839270, &qword_20D978098);
  sub_20D7EBC4C(&qword_281124C18, &qword_27C839270, &qword_20D978098, MEMORY[0x277D83970]);
  v54 = v100;
  v55 = v103;
  sub_20D9755D8();
  sub_20D974FF8();
  (*(v101 + 8))(v54, v55);
  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v56 = qword_28112ABE8;
  v57 = sub_20D9726E8();
  (*(*(v57 - 8) + 56))(v106, 1, 1, v57);
  v122 = v53;
  sub_20D963A7C(&qword_281126E60, MEMORY[0x277CC8B58], MEMORY[0x277CC8B60]);
  v58 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839278, &unk_20D9780A0);
  sub_20D7EBC4C(&qword_281124C20, &qword_27C839278, &unk_20D9780A0, MEMORY[0x277D83970]);
  sub_20D9755D8();
  sub_20D971FB8();
  (*(v102 + 8))(v49, v104);
LABEL_14:
  v59 = sub_20D9745B8();
  v61 = v60;
  v63 = v62;
  v64 = [objc_opt_self() labelColor];
  v122 = sub_20D974888();
  v65 = sub_20D974518();
  v67 = v66;
  v69 = v68;
  sub_20D7EADC0(v59, v61, v63 & 1);

  sub_20D974438();
  v71 = v113;
  v70 = v114;
  v72 = v112;
  (*(v113 + 104))(v112, *MEMORY[0x277CE0A10], v114);
  sub_20D974478();

  (*(v71 + 8))(v72, v70);
  v73 = sub_20D974558();
  v75 = v74;
  v77 = v76;

  sub_20D7EADC0(v65, v67, v69 & 1);

  v78 = *MEMORY[0x277CE09A0];
  v79 = sub_20D9743C8();
  v80 = *(v79 - 8);
  v81 = v117;
  (*(v80 + 104))(v117, v78, v79);
  (*(v80 + 56))(v81, 0, 1, v79);
  v82 = sub_20D9744E8();
  v84 = v83;
  LOBYTE(v80) = v85;
  sub_20D7EADC0(v73, v75, v77 & 1);

  sub_20D7E3944(v81, &qword_27C838C08, &qword_20D977450);
  sub_20D9743F8();
  v86 = sub_20D9744F8();
  v88 = v87;
  LOBYTE(v73) = v89;
  v91 = v90;
  sub_20D7EADC0(v82, v84, v80 & 1);

  v122 = v86;
  v123 = v88;
  v124 = v73 & 1;
  v125 = v91;
  v92 = v116;
  sub_20D9747D8();
  sub_20D7EADC0(v86, v88, v73 & 1);

  v93 = v120;
  v94 = v115;
  sub_20D7EB7E8(v120, v115, &qword_27C83A7B8, &qword_20D97C1E0);
  v95 = v118;
  sub_20D7EB7E8(v92, v118, &qword_27C838F18, &unk_20D977860);
  v96 = v119;
  sub_20D7EB7E8(v94, v119, &qword_27C83A7B8, &qword_20D97C1E0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C938, &qword_20D980748);
  sub_20D7EB7E8(v95, v96 + *(v97 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v92, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v93, &qword_27C83A7B8, &qword_20D97C1E0);
  sub_20D7E3944(v95, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v94, &qword_27C83A7B8, &qword_20D97C1E0);
}

uint64_t sub_20D962B9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8D0, &qword_20D980640);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  *v3 = sub_20D974168();
  *(v3 + 1) = 0x3FF0000000000000;
  v3[16] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8D8, &qword_20D980648);
  sub_20D960EC8(v0, &v3[*(v4 + 44)]);
  sub_20D7EBC4C(&qword_281124D30, &qword_27C83C8D0, &qword_20D980640, MEMORY[0x277CE1198]);
  sub_20D9746B8();
  return sub_20D7E3944(v3, &qword_27C83C8D0, &qword_20D980640);
}

uint64_t sub_20D962CB8()
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
  v9 = sub_20D975108(v5, 0, 0, v6, v2, "Historical Usage Widget title when no homes have a utility configured.", 70, 2);
  sub_20D974FE8();
  sub_20D9726B8();
  sub_20D975108(v5, 0, 0, v6, v2, "Historical Usage Widget body text when no homes have a utility configured.", 74, 2);
  return v9;
}

unint64_t sub_20D962EB0()
{
  result = qword_281124E20;
  if (!qword_281124E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C840, &qword_20D980420);
    sub_20D7EBC4C(&qword_281124FD8, &qword_27C83C828, &qword_20D980388, MEMORY[0x277CDD828]);
    sub_20D9635A8(&qword_281124FC8, &qword_27C83C838, &qword_20D980398, sub_20D95FBCC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E20);
  }

  return result;
}

uint64_t sub_20D962FEC(uint64_t a1)
{
  result = type metadata accessor for HistoricalUsageSnapshot(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_20D9630D4()
{
  result = qword_27C83C860;
  if (!qword_27C83C860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C850, &qword_20D980518);
    sub_20D809130();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C860);
  }

  return result;
}

uint64_t sub_20D9631AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D963214(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_14Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v10 = type metadata accessor for HistoricalUsageSnapshot(0);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = a4(0);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_15Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v10 = type metadata accessor for HistoricalUsageSnapshot(0);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v6 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = a5(0);
      v16 = *(*(v15 - 8) + 56);
      v17 = v6 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

uint64_t sub_20D963504(uint64_t a1)
{
  result = type metadata accessor for HistoricalUsageSnapshot(319);
  if (v2 <= 0x3F)
  {
    result = sub_20D972628();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20D9635A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_20D96362C()
{
  result = qword_281124F28;
  if (!qword_281124F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C878, &qword_20D980578);
    sub_20D7EBC4C(&qword_281124D38, &qword_27C83C870, &qword_20D980570, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F28);
  }

  return result;
}

unint64_t sub_20D963700()
{
  result = qword_281124F08;
  if (!qword_281124F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C910, &qword_20D9806B0);
    sub_20D91F06C();
    sub_20D7EBC4C(&qword_281126F48, &qword_27C838B68, &unk_20D9771A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F08);
  }

  return result;
}

unint64_t sub_20D9637B8()
{
  result = qword_281124EA8;
  if (!qword_281124EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C920, &qword_20D980720);
    sub_20D963870();
    sub_20D7EBC4C(&qword_281124DC8, &qword_27C83A7A0, &unk_20D97C1C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124EA8);
  }

  return result;
}

unint64_t sub_20D963870()
{
  result = qword_281124F00;
  if (!qword_281124F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C928, &qword_20D980728);
    sub_20D91F06C();
    sub_20D7EBC4C(&qword_281124DA8, &qword_27C83A798, &unk_20D980730, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F00);
  }

  return result;
}

unint64_t sub_20D963928()
{
  result = qword_281124F80;
  if (!qword_281124F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C8E0, &qword_20D980650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C920, &qword_20D980720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839080, &qword_20D977AC0);
    sub_20D9637B8();
    sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281126F48, &qword_27C838B68, &unk_20D9771A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F80);
  }

  return result;
}

uint64_t sub_20D963A7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D963AC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_20D963B0C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

double sub_20D963B80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v5 = **a1;
  v4 = *(*a1 + 8);
  v6 = *(*a1 + 24);
  v48 = *(*a1 + 16);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *v8;
  v10 = *(v8 + 8);
  v12 = *(v8 + 24);
  v11 = *(v8 + 16);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *v13;
  v16 = v13[1];
  v17 = v13[2];
  v18 = v13[3];
  v19 = v13[4];
  v20 = v14[1];
  v45 = *v14;
  v21 = v14[2];
  v22 = v14[3];
  v23 = v14[4];
  v24 = *(a1 + 48);
  v25 = *(a1 + 56);
  v26 = *v24;
  v27 = v24[1];
  v28 = v24[2];
  v29 = v24[3];
  v30 = v24[4];
  v31 = *v25;
  v47 = v25[1];
  v32 = v25[2];
  v34 = *(a1 + 64);
  v33 = *(a1 + 72);
  v46 = *v33;
  v35 = v33[1];
  v36 = v33[2];
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v48;
  *(a2 + 24) = v6;
  v37 = v3[1];
  *(a2 + 32) = *v3;
  *(a2 + 48) = v37;
  v38 = v3[3];
  *(a2 + 64) = v3[2];
  *(a2 + 80) = v38;
  *(a2 + 96) = v9;
  *(a2 + 104) = v10;
  *(a2 + 112) = v11;
  *(a2 + 120) = v12;
  v39 = *v7;
  v40 = v7[1];
  v41 = v7[3];
  *(a2 + 160) = v7[2];
  *(a2 + 176) = v41;
  *(a2 + 128) = v39;
  *(a2 + 144) = v40;
  *(a2 + 192) = v15;
  *(a2 + 200) = v16;
  *(a2 + 208) = v17;
  *(a2 + 216) = v18;
  *(a2 + 224) = v19;
  *(a2 + 232) = v45;
  *(a2 + 240) = v20;
  *(a2 + 248) = v21;
  *(a2 + 256) = v22;
  *(a2 + 264) = v23;
  *(a2 + 272) = v26;
  *(a2 + 280) = v27;
  *(a2 + 288) = v28;
  *(a2 + 296) = v29;
  *(a2 + 304) = v30;
  *(a2 + 312) = v31;
  *(a2 + 320) = v47;
  *(a2 + 328) = v32;
  v42 = v34[3];
  *(a2 + 368) = v34[2];
  *(a2 + 384) = v42;
  v43 = v34[1];
  *(a2 + 336) = *v34;
  *(a2 + 352) = v43;
  *(a2 + 400) = v46;
  *(a2 + 408) = v35;
  *(a2 + 416) = v36;
  sub_20D7DDC4C(v5, v4, v48);

  sub_20D7DDC4C(v9, v10, v11);

  return result;
}

void sub_20D963D58(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a1;
  v105 = a2;
  v2 = sub_20D9726E8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D975058();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v8 = qword_28112ABE8;
  v9 = qword_28112ABE8;
  v108 = v8;
  v10 = v9;
  sub_20D9726B8();
  v11 = v10;
  v156 = sub_20D975108(v7, 0, 0, v8, v4, "About Electricity Usage title", 29, 2);
  v157 = v12;
  v96 = sub_20D7E1EF8();
  v13 = sub_20D9745C8();
  v15 = v14;
  v17 = v16;
  sub_20D974428();
  v18 = sub_20D974558();
  v106 = v4;
  v107 = v7;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_20D7EADC0(v13, v15, v17 & 1);

  v24 = sub_20D974548();
  v26 = v25;
  LOBYTE(v15) = v27;
  sub_20D7EADC0(v19, v21, v23 & 1);

  sub_20D974958();
  v28 = sub_20D974508();
  v102 = v29;
  v103 = v28;
  v104 = v30;
  v101 = v31;

  sub_20D7EADC0(v24, v26, v15 & 1);

  v76 = *(v109 + 16);
  v32 = v76;
  sub_20D974C48();
  sub_20D973C18();
  v99 = v168;
  v100 = v166;
  v97 = v171;
  v98 = v170;
  v189 = 1;
  v187 = v167;
  v185 = v169;
  v33 = v107;
  sub_20D974FE8();
  v34 = v106;
  sub_20D9726B8();
  v156 = sub_20D975108(v33, 0, 0, v108, v34, "About Electricity Usage body", 28, 2);
  v157 = v35;
  v36 = sub_20D9745C8();
  v38 = v37;
  LOBYTE(v8) = v39;
  sub_20D974398();
  v40 = sub_20D974558();
  v42 = v41;
  v44 = v43;

  sub_20D7EADC0(v36, v38, v8 & 1);

  sub_20D974968();
  v45 = sub_20D974508();
  v90 = v46;
  v91 = v45;
  LODWORD(v96) = v47;
  v89 = v48;

  sub_20D7EADC0(v40, v42, v44 & 1);

  sub_20D974C48();
  sub_20D973C18();
  v92 = v172;
  v93 = v174;
  v94 = v177;
  v95 = v176;
  v195 = 1;
  v193 = v173;
  v191 = v175;
  v49 = v107;
  sub_20D974FE8();
  v50 = v106;
  sub_20D9726B8();
  v51 = v108;
  v52 = sub_20D975108(v49, 0, 0, v108, v50, "How Electricity is Measured title", 33, 2);
  v87 = v53;
  v88 = v52;
  v54 = _s12HomeEnergyUI25UtilityIntegrationStringsV33howElectricityMeasuredDescriptionSSvgZ_0();
  v85 = v55;
  v86 = v54;
  sub_20D974FE8();
  sub_20D9726B8();
  v56 = sub_20D975108(v49, 0, 0, v51, v50, "Viewing Electricity Usage title", 31, 2);
  v83 = v57;
  v84 = v56;
  sub_20D974FE8();
  sub_20D9726B8();
  v58 = sub_20D975108(v49, 0, 0, v51, v50, "Viewing Electricity Usage body", 30, 2);
  v81 = v59;
  v82 = v58;
  sub_20D974FE8();
  sub_20D9726B8();
  v60 = sub_20D975108(v49, 0, 0, v51, v50, "What impacts electricity usage title", 36, 2);
  v79 = v61;
  v80 = v60;
  sub_20D974FE8();
  sub_20D9726B8();
  v62 = sub_20D975108(v49, 0, 0, v51, v50, "What impacts electricity usage body", 35, 2);
  v77 = v63;
  v78 = v62;
  sub_20D974FE8();
  sub_20D9726B8();
  v64 = sub_20D975108(v49, 0, 0, v51, v50, "Highest Consumers title", 23, 2);
  v66 = v65;
  v67 = v109;
  v68 = *(v109 + 24);

  sub_20D974C48();
  sub_20D973C18();
  v69 = v178;
  v70 = v180;
  v75 = v183;
  v76 = v182;
  v201 = 1;
  v199 = v179;
  v197 = v181;
  sub_20D974FE8();
  sub_20D9726B8();
  v71 = sub_20D975108(v49, 0, 0, v51, v50, "Lower Consumers list element", 28, 2);
  v152 = v103;
  v153 = v102;
  v155 = v101;
  v144 = v100;
  v147 = v99;
  v150 = v98;
  v151 = v97;
  v137 = v91;
  v138 = v90;
  v140 = v89;
  v72 = *(v67 + 32);
  v154 = v104 & 1;
  v141 = 0;
  v142 = v189;
  *v143 = *v188;
  *&v143[3] = *&v188[3];
  v145 = v187;
  *v146 = *v186;
  *&v146[3] = *&v186[3];
  v148 = v185;
  *&v149[3] = *&v184[3];
  *v149 = *v184;
  v156 = &v152;
  v157 = &v141;
  v139 = v96 & 1;
  v126 = 0;
  v127 = v195;
  *v128 = *v194;
  *&v128[3] = *&v194[3];
  v129 = v92;
  v130 = v193;
  *v131 = *v192;
  *&v131[3] = *&v192[3];
  v132 = v93;
  v133 = v191;
  *&v134[3] = *&v190[3];
  *v134 = *v190;
  v135 = v95;
  v136 = v94;
  v158 = &v137;
  v159 = &v126;
  v125[0] = v88;
  v125[1] = v87;
  v125[2] = v86;
  v125[3] = v85;
  v125[4] = v32;
  v124[0] = v84;
  v124[1] = v83;
  v124[2] = v82;
  v124[3] = v81;
  v124[4] = v32;
  v160 = v125;
  v161 = v124;
  v123[0] = v80;
  v123[1] = v79;
  v123[2] = v78;
  v123[3] = v77;
  v123[4] = v32;
  v122[0] = v64;
  v122[1] = v66;
  v122[2] = v68;
  v162 = v123;
  v163 = v122;
  v111 = 0;
  v112 = v201;
  *v113 = *v200;
  *&v113[3] = *&v200[3];
  v114 = v69;
  v115 = v199;
  *v116 = *v198;
  *&v116[3] = *&v198[3];
  v117 = v70;
  v118 = v197;
  *&v119[3] = *&v196[3];
  *v119 = *v196;
  v120 = v76;
  v121 = v75;
  v110[0] = v71;
  v110[1] = v73;
  v110[2] = v72;
  v164 = &v111;
  v165 = v110;
  sub_20D963B80(&v156, v105);

  sub_20D7EADC0(v137, v138, v139);

  sub_20D7EADC0(v152, v153, v154);
}

double sub_20D964750@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v41 = a3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C958, &unk_20D980960);
  v7 = *(v43 - 8);
  v8 = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v37 - v10;
  v45 = a1;
  v46 = a2;
  sub_20D7E1EF8();

  v11 = sub_20D9745C8();
  v13 = v12;
  v15 = v14;
  v16 = sub_20D974548();
  v18 = v17;
  v20 = v19;
  sub_20D7EADC0(v11, v13, v15 & 1);

  sub_20D974958();
  v21 = sub_20D974508();
  v38 = v22;
  v39 = v23;
  v40 = v24;

  sub_20D7EADC0(v16, v18, v20 & 1);

  v45 = v41;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
  sub_20D7EBC4C(&qword_27C83C960, &qword_27C8398E8, &unk_20D97ABF0, MEMORY[0x277D83980]);
  sub_20D965810();
  v25 = v44;
  sub_20D974B98();
  v26 = v7;
  v27 = *(v7 + 16);
  v29 = v42;
  v28 = v43;
  v27(v42, v25, v43);
  v30 = a4;
  *a4 = v21;
  v31 = v38;
  v30[1] = v38;
  v32 = v39 & 1;
  *(v30 + 16) = v39 & 1;
  v30[3] = v40;
  v33 = v30;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C970, &qword_20D980990);
  v27(v33 + *(v34 + 48), v29, v28);
  sub_20D7DDC4C(v21, v31, v32);
  v35 = *(v26 + 8);

  v35(v44, v28);
  v35(v29, v28);
  sub_20D7EADC0(v21, v31, v32);

  return result;
}

double sub_20D964AA0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

void sub_20D964AB8(uint64_t a1@<X8>)
{
  sub_20D7E1EF8();

  v2 = sub_20D9745C8();
  v4 = v3;
  v6 = v5;
  sub_20D974398();
  v7 = sub_20D974558();
  v9 = v8;
  v11 = v10;

  sub_20D7EADC0(v2, v4, v6 & 1);

  sub_20D974968();
  v12 = sub_20D974508();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_20D7EADC0(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
}

double sub_20D964BE4@<D0>(uint64_t a1@<X8>)
{
  sub_20D7E1EF8();

  v2 = sub_20D9745C8();
  v4 = v3;
  v6 = v5;
  sub_20D974438();
  v7 = sub_20D974558();
  v9 = v8;
  v11 = v10;

  sub_20D7EADC0(v2, v4, v6 & 1);

  v12 = sub_20D974548();
  v14 = v13;
  v16 = v15;
  sub_20D7EADC0(v7, v9, v11 & 1);

  sub_20D974958();
  v17 = sub_20D974508();
  v39 = v18;
  v40 = v17;
  v38 = v19;
  v41 = v20;

  sub_20D7EADC0(v12, v14, v16 & 1);

  sub_20D974C48();
  sub_20D973C18();
  v48 = *(v37 + 16);
  v49 = *(v37 + 24);

  v21 = sub_20D9745C8();
  v23 = v22;
  LOBYTE(v14) = v24;
  sub_20D974398();
  v25 = sub_20D974558();
  v27 = v26;
  LOBYTE(v12) = v28;

  sub_20D7EADC0(v21, v23, v14 & 1);

  sub_20D974968();
  v29 = sub_20D974508();
  v31 = v30;
  v33 = v32;
  v35 = v34;

  sub_20D7EADC0(v25, v27, v12 & 1);

  sub_20D974C48();
  sub_20D973C18();
  *a1 = v40;
  *(a1 + 8) = v39;
  *(a1 + 16) = v38 & 1;
  *(a1 + 24) = v41;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v42;
  *(a1 + 56) = v43;
  *(a1 + 64) = v44;
  *(a1 + 72) = v45;
  *(a1 + 80) = v46;
  *(a1 + 88) = v47;
  *(a1 + 96) = v29;
  *(a1 + 104) = v31;
  *(a1 + 112) = v33 & 1;
  *(a1 + 120) = v35;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = v48;
  *(a1 + 152) = v49;
  *(a1 + 160) = v50;
  *(a1 + 168) = v51;
  *(a1 + 176) = v52;
  sub_20D7DDC4C(v40, v39, v38 & 1);

  sub_20D7DDC4C(v29, v31, v33 & 1);

  sub_20D7EADC0(v29, v31, v33 & 1);

  sub_20D7EADC0(v40, v39, v38 & 1);

  return result;
}

void *sub_20D964F94@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v4;
  v13 = *(v2 + 32);
  v5 = sub_20D974168();
  v11 = 1;
  sub_20D963D58(v12, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v15, __src, sizeof(v15));
  sub_20D965058(__dst, v8);
  sub_20D9650C8(v15);
  memcpy(&v10[7], __dst, 0x1A8uLL);
  v6 = v11;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  return memcpy((a2 + 17), v10, 0x1AFuLL);
}

uint64_t sub_20D965058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C940, &unk_20D980830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D9650C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C940, &unk_20D980830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D965130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_20D9726E8();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D975058();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394D0, &qword_20D9790A0);
  v12 = swift_allocObject();
  v30[0] = xmmword_20D980780;
  *(v12 + 16) = xmmword_20D980780;
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v13 = qword_28112ABE8;
  v14 = qword_28112ABE8;
  sub_20D9726B8();
  v15 = v14;
  *(v12 + 32) = sub_20D975108(v11, 0, 0, v13, v8, "Highest Consumers list element", 30, 2);
  *(v12 + 40) = v16;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v12 + 48) = sub_20D975108(v11, 0, 0, v13, v8, "Highest Consumers list element", 30, 2);
  *(v12 + 56) = v17;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v12 + 64) = sub_20D975108(v11, 0, 0, v13, v8, "Highest Consumers list element", 30, 2);
  *(v12 + 72) = v18;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v12 + 80) = sub_20D975108(v11, 0, 0, v13, v8, "Highest Consumers list element", 30, 2);
  *(v12 + 88) = v19;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v12 + 96) = sub_20D975108(v11, 0, 0, v13, v8, "Highest Consumers list element", 30, 2);
  *(v12 + 104) = v20;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v12 + 112) = sub_20D975108(v11, 0, 0, v13, v8, "Highest Consumers list element", 30, 2);
  *(v12 + 120) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v30[0];
  sub_20D974FE8();
  sub_20D9726B8();
  *(v22 + 32) = sub_20D975108(v11, 0, 0, v13, v8, "Lower Consumers list element", 28, 2);
  *(v22 + 40) = v23;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v22 + 48) = sub_20D975108(v11, 0, 0, v13, v8, "Lower Consumers list element", 28, 2);
  *(v22 + 56) = v24;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v22 + 64) = sub_20D975108(v11, 0, 0, v13, v8, "Lower Consumers list element", 28, 2);
  *(v22 + 72) = v25;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v22 + 80) = sub_20D975108(v11, 0, 0, v13, v8, "Lower Consumers list element", 28, 2);
  *(v22 + 88) = v26;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v22 + 96) = sub_20D975108(v11, 0, 0, v13, v8, "Lower Consumers list element", 28, 2);
  *(v22 + 104) = v27;
  sub_20D974FE8();
  sub_20D9726B8();
  result = sub_20D975108(v11, 0, 0, v13, v8, "Lower Consumers list element", 28, 2);
  *(v22 + 112) = result;
  *(v22 + 120) = v29;
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 0x4024000000000000;
  a3[3] = v12;
  a3[4] = v22;
  return result;
}

uint64_t sub_20D9656A0(uint64_t a1, int a2)
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

uint64_t sub_20D9656E8(uint64_t result, int a2, int a3)
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

uint64_t sub_20D965738(uint64_t a1, int a2)
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

uint64_t sub_20D965780(uint64_t result, int a2, int a3)
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

unint64_t sub_20D965810()
{
  result = qword_27C83C968;
  if (!qword_27C83C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C968);
  }

  return result;
}

uint64_t sub_20D965890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C10, &qword_20D977458);
  MEMORY[0x28223BE20](v4);
  v6 = (&v23 - v5);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C998, &qword_20D980A28);
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v23 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C9A0, &qword_20D980A30);
  MEMORY[0x28223BE20](v24);
  v11 = &v23 - v10;
  v12 = sub_20D9743B8();
  KeyPath = swift_getKeyPath();
  v14 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C20, &qword_20D977498) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C28, &qword_20D9774A0) + 28);

  sub_20D974198();
  v16 = sub_20D9741A8();
  (*(*(v16 - 8) + 56))(v14 + v15, 0, 1, v16);
  *v14 = swift_getKeyPath();
  *v6 = a2;
  v6[1] = KeyPath;
  v6[2] = v12;
  if (qword_281126F30 != -1)
  {
    swift_once();
  }

  v17 = qword_28112ABF8;
  v18 = sub_20D974948();
  v19 = (v6 + *(v4 + 36));
  *v19 = v17;
  v19[1] = v18;
  v20 = sub_20D7EFE2C();

  sub_20D974768();
  sub_20D7E3944(v6, &qword_27C838C10, &qword_20D977458);
  v27 = v4;
  v28 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v23;
  sub_20D9747B8();
  (*(v7 + 8))(v9, v21);
  sub_20D973D98();
  return sub_20D7DD478(v11);
}

uint64_t sub_20D965BD0()
{
  result = sub_20D9749D8();
  qword_28112ABF0 = result;
  return result;
}

uint64_t sub_20D965C08()
{
  result = sub_20D9749D8();
  qword_28112AB68 = result;
  return result;
}

uint64_t sub_20D965C40()
{
  result = sub_20D9749B8();
  qword_27C840E70 = result;
  return result;
}

uint64_t sub_20D965C78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C48, &qword_20D977500);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  sub_20D9749D8();
  sub_20D974188();
  v3 = sub_20D9741A8();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = sub_20D9749E8();

  result = sub_20D7E3944(v2, &qword_27C838C48, &qword_20D977500);
  qword_28112AB60 = v4;
  return result;
}

uint64_t sub_20D965D94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C48, &qword_20D977500);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  sub_20D9749D8();
  sub_20D974188();
  v3 = sub_20D9741A8();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = sub_20D9749E8();

  result = sub_20D7E3944(v2, &qword_27C838C48, &qword_20D977500);
  qword_27C840E78 = v4;
  return result;
}

uint64_t sub_20D965EB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C48, &qword_20D977500);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  sub_20D9749B8();
  sub_20D974188();
  v3 = sub_20D9741A8();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = sub_20D9749E8();

  result = sub_20D7E3944(v2, &qword_27C838C48, &qword_20D977500);
  qword_27C840E80 = v4;
  return result;
}

uint64_t sub_20D965FCC()
{
  result = sub_20D9749D8();
  qword_27C840E88 = result;
  return result;
}

uint64_t sub_20D966004(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_20D9757C8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_20D966208(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x800000020D981670;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x800000020D981690;
    }

    v5 = 0x800000020D981630;
    if (a1 != 3)
    {
      v5 = 0x800000020D981650;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_20D9757C8();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x800000020D981670;
    }

    else
    {
      v10 = 0x800000020D981690;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x800000020D981630;
    }

    else
    {
      v10 = 0x800000020D981650;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_20D9663E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x5654656C707041;
  v6 = 0xE700000000000000;
  v7 = 0x646F50656D6F48;
  if (a1 != 4)
  {
    v7 = 6512973;
    v6 = 0xE300000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (a1 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x5654656C707041)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x646F50656D6F48)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 6512973)
      {
LABEL_34:
        v13 = sub_20D9757C8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1684099177)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6863746157)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x656E6F685069)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_20D96659C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x726F707075736E75;
  v5 = 0xEB00000000646574;
  if (a1 != 5)
  {
    v4 = 0x676E6964616F6CLL;
    v5 = 0xE700000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1952541798;
  if (a1 != 3)
  {
    v7 = 0x6465786966;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 7696244;
  if (a1 != 1)
  {
    v9 = 0x646572656974;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE300000000000000;
        if (v10 != 7696244)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x646572656974)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEB00000000646574;
      if (v10 != 0x726F707075736E75)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x676E6964616F6CLL)
      {
LABEL_39:
        v13 = sub_20D9757C8();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE400000000000000;
    if (v10 != 1952541798)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6465786966)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_20D9667AC(uint64_t a1, unsigned __int8 a2)
{
  sub_20D975888();
  sub_20D975158();

  return sub_20D9758A8();
}

uint64_t sub_20D9668C0(uint64_t a1, unsigned __int8 a2)
{
  sub_20D975888();
  sub_20D975158();

  return sub_20D9758A8();
}

uint64_t sub_20D9669AC(uint64_t a1, unsigned __int8 a2)
{
  sub_20D975888();
  sub_20D975158();

  return sub_20D9758A8();
}

uint64_t sub_20D966ABC(uint64_t a1, unsigned __int8 a2)
{
  sub_20D975888();
  sub_20D975158();

  return sub_20D9758A8();
}

void UtilityRateInfoSnapshot.peakUntil.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v84 = sub_20D972488();
  v87 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v57 - v9;
  MEMORY[0x28223BE20](v8);
  v82 = &v57 - v11;
  v12 = sub_20D972628();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v63 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v81 = &v57 - v16;
  v89 = sub_20D973158();
  v17 = *(v89 - 8);
  v18 = MEMORY[0x28223BE20](v89);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v57 - v22;
  MEMORY[0x28223BE20](v21);
  v88 = &v57 - v24;
  v25 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v26 = v25;
  v27 = *(v2 + v25[14]);
  v28 = *(v27 + 16);
  v85 = v27;
  v77 = v28;
  if (v28)
  {
    v58 = v23;
    v76 = v10;
    v60 = v20;
    v61 = v7;
    v86 = v25[5];
    v78 = v27 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v59 = v25;
    v29 = v25[9];
    v79 = v17 + 16;
    v74 = (v87 + 1);
    v75 = v29;
    v87 = (v13 + 56);
    v66 = "Home.Energy.EducationTip.Icon";
    v69 = (v13 + 32);
    v68 = (v13 + 16);
    v62 = v13;
    v72 = (v13 + 8);
    v80 = (v17 + 8);

    v30 = 0;
    *&v31 = 136315394;
    v65 = v31;
    v67 = v17;
    v73 = (v13 + 48);
    do
    {
      if (v30 >= *(v27 + 16))
      {
        __break(1u);
        return;
      }

      v70 = *(v17 + 72);
      v71 = *(v17 + 16);
      v71(v88, v78 + v70 * v30, v89);
      sub_20D973148();
      v32 = v83;
      sub_20D972FD8();
      v33 = v76;
      sub_20D972468();
      (*v74)(v32, v84);
      v34 = *v87;
      (*v87)(v33, 0, 1, v12);
      v35 = v82;
      (*v69)(v82, v33, v12);
      v34(v35, 0, 1, v12);
      v36 = v81;

      v37 = *v73;
      if ((*v73)(v35, 1, v12) == 1)
      {
        (*v68)(v36, v2 + v86, v12);
        v38 = v37(v35, 1, v12);
        v27 = v85;
        if (v38 != 1)
        {
          sub_20D7E3944(v35, &qword_27C8389E8, &qword_20D9768D0);
        }
      }

      else
      {
        (*v69)(v36, v35, v12);
        v27 = v85;
      }

      v39 = sub_20D972538();
      (*v72)(v36, v12);
      if (v39)
      {

        v43 = v88;
        sub_20D973148();
        UtilityRateInfoSnapshot.stringToDate(stringDate:)(v64);

        (*v80)(v43, v89);
        return;
      }

      ++v30;
      v40 = *v80;
      (*v80)(v88, v89);
    }

    while (v77 != v30);

    v44 = *(v27 + 16);
    if (v44)
    {
      v45 = v58;
      v46 = v89;
      v71(v58, v78 + v70 * (v44 - 1), v89);
      sub_20D973148();
      v40(v45, v46);
    }

    v41 = v64;
    v13 = v62;
    v7 = v61;
    v42 = v60;
    v26 = v59;
  }

  else
  {
    v41 = v64;
    v42 = v20;
  }

  UtilityRateInfoSnapshot.stringToDate(stringDate:)(v7);

  v47 = *(v13 + 48);
  if (v47(v7, 1, v12) == 1)
  {
    v48 = v2 + v26[5];
    v49 = v42;
    v50 = v26;
    v51 = v63;
    (*(v13 + 16))(v63, v48, v12);
    v52 = v47(v7, 1, v12);
    v53 = v51;
    v26 = v50;
    v42 = v49;
    v41 = v64;
    if (v52 != 1)
    {
      sub_20D7E3944(v7, &qword_27C8389E8, &qword_20D9768D0);
    }
  }

  else
  {
    v53 = v63;
    (*(v13 + 32))(v63, v7, v12);
  }

  v54 = sub_20D972548();
  (*(v13 + 8))(v53, v12);
  if (v54)
  {
    (*(v13 + 16))(v41, v2 + v26[7], v12);
    (*(v13 + 56))(v41, 0, 1, v12);
  }

  else
  {
    v55 = *(v85 + 16);
    if (v55)
    {
      v56 = v89;
      (*(v17 + 16))(v42, v85 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * (v55 - 1), v89);
      sub_20D973148();
      (*(v17 + 8))(v42, v56);
    }

    UtilityRateInfoSnapshot.stringToDate(stringDate:)(v41);
  }
}

uint64_t UtilityRateInfoSnapshot.description.getter()
{
  v1 = type metadata accessor for UtilityRateInfoSnapshot(0);
  if (*(v0 + *(v1 + 44)) <= 4u || (v2 = 0, v3 = 0, *(v0 + *(v1 + 44)) == 5))
  {
    sub_20D7E1EF8();
    v2 = sub_20D975538();
    v3 = v4;
  }

  sub_20D975678();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA30, &qword_20D976870);
  v5 = sub_20D975118();
  MEMORY[0x20F323340](v5);

  MEMORY[0x20F323340](0x616C506574617220, 0xEF203A656D614E6ELL);
  MEMORY[0x20F323340](*(v0 + *(v1 + 32)), *(v0 + *(v1 + 32) + 8));
  MEMORY[0x20F323340](673197344, 0xE400000000000000);
  if (v3)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0x7272456F6ELL;
  }

  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x20F323340](v6, v7);

  MEMORY[0x20F323340](41, 0xE100000000000000);
  return 0x4449657469536B65;
}

uint64_t sub_20D9678F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_20D95DA5C(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x277D837D0];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_20D95DA5C((v9 > 1), v8 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = sub_20D84E340();
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v8 + 1;
      sub_20D7EB734(&v11, v2 + 40 * v8 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_20D9679F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_20D9756F8();
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7D0, &qword_20D97AC00);
      swift_dynamicCast();
      sub_20D9756D8();
      sub_20D975708();
      sub_20D975718();
      sub_20D9756E8();
      v4 += 16;
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

unint64_t UtilityRateInfoSnapshot.peakSymbol.getter()
{
  UtilityRateInfoSnapshot.attributedPeak.getter(v2);
  if (v3 == 1)
  {
    return 0;
  }

  v1 = v4;
  sub_20D8EE800(v2[0], v2[1], v2[2], v3);
  if (v1 >= 3)
  {
    return 0xD000000000000034;
  }

  else
  {
    return 0xD000000000000029;
  }
}

void UtilityRateInfoSnapshot.peakVariableValue.getter()
{
  UtilityRateInfoSnapshot.attributedPeak.getter(v4);
  v0 = v5;
  if (v5 != 1)
  {
    v2 = v4[1];
    v1 = v4[2];
    v3 = v4[0];
    PeakPeriodAttributes.variableValue.getter();
    sub_20D8EE800(v3, v2, v1, v0);
  }
}

uint64_t UtilityRateInfoSnapshot.peakName.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA40, &qword_20D980AA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + *(type metadata accessor for UtilityRateInfoSnapshot(0) + 56));
  v5 = *(v4 + 16);
  v6 = sub_20D973158();
  v7 = *(v6 - 8);
  v8 = v7;
  if (v5)
  {
    (*(v7 + 16))(v3, v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
    (*(v8 + 56))(v3, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v3, 1, 1, v6);
  }

  v9 = sub_20D96D7D4(v3);
  sub_20D7E3944(v3, &unk_27C83CA40, &qword_20D980AA0);
  return v9;
}

uint64_t sub_20D967D64()
{
  v1 = sub_20D9726E8();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v27[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_20D975058();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v0;
  if (v7 > 2)
  {
    if (*v0 <= 4u)
    {
      if (v7 == 3)
      {
        sub_20D974FE8();
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v8 = qword_28112ABE8;
        v9 = qword_28112ABE8;
        sub_20D9726B8();
        return sub_20D975108(v6, 0, 0, v8, v3, "Flat rate plan type", 19, 2);
      }

      else
      {
        sub_20D974FE8();
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v23 = qword_28112ABE8;
        v24 = qword_28112ABE8;
        sub_20D9726B8();
        return sub_20D975108(v6, 0, 0, v23, v3, "Fixed rate plan type", 20, 2);
      }
    }

    if (v7 != 5)
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v25 = qword_28112ABE8;
      v26 = qword_28112ABE8;
      sub_20D9726B8();
      v13 = "rate plan information is loading";
      v15 = v6;
      v16 = v25;
      v17 = v3;
      v18 = 32;
      return sub_20D975108(v15, 0, 0, v16, v17, v13, v18, 2);
    }

    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v11 = qword_28112ABE8;
    v14 = qword_28112ABE8;
    sub_20D9726B8();
    v13 = "Unsupported rate plan type";
LABEL_16:
    v15 = v6;
    v16 = v11;
    v17 = v3;
    v18 = 26;
    return sub_20D975108(v15, 0, 0, v16, v17, v13, v18, 2);
  }

  if (*v0)
  {
    if (v7 == 1)
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v11 = qword_28112ABE8;
      v12 = qword_28112ABE8;
      sub_20D9726B8();
      v13 = "Time of Use rate plan type";
      goto LABEL_16;
    }

    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v21 = qword_28112ABE8;
    v22 = qword_28112ABE8;
    sub_20D9726B8();
    return sub_20D975108(v6, 0, 0, v21, v3, "Tiered rate plan type", 21, 2);
  }

  else
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v19 = qword_28112ABE8;
    v20 = qword_28112ABE8;
    sub_20D9726B8();
    return sub_20D975108(v6, 0, 0, v19, v3, "Unknown rate plan type", 22, 2);
  }
}

uint64_t UtilityRateInfoSnapshot.statusAndAdviceTextPlusSymbol.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D9726E8();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D975058();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UtilityRateInfoSnapshot(0);
  if (*(v1 + *(v9 + 44)) != 6)
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v17 = qword_28112ABE8;
    v18 = qword_28112ABE8;
    sub_20D9726B8();
    result = sub_20D975108(v8, 0, 0, v17, v5, "Error occured and no data was retrieved", 39, 2);
    goto LABEL_7;
  }

  v10 = *(v9 + 40);
  v11 = *(v1 + v10);
  if (v11 == 7)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0xE000000000000000;
    v15 = 0xE200000000000000;
    result = 11565;
    goto LABEL_8;
  }

  if ((sub_20D96659C(*(v1 + v10), 1u) & 1) == 0)
  {
    if (sub_20D96659C(v11, 2u))
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v25 = qword_28112ABE8;
      v26 = qword_28112ABE8;
      sub_20D9726B8();
      result = sub_20D975108(v8, 0, 0, v25, v5, "Tiered rate plan type", 21, 2);
    }

    else
    {
      LOBYTE(v30) = v11;
      result = sub_20D967D64();
    }

LABEL_7:
    v12 = 0;
    v13 = 0;
    v14 = 0xE000000000000000;
    goto LABEL_8;
  }

  v19 = UtilityRateInfoSnapshot.peakName.getter();
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v14 = 0xE000000000000000;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  v30 = v21;
  v31 = v22;
  v24 = sub_20D9751B8();
  result = 11565;
  if (v24 == 11565 && v23 == 0xE200000000000000)
  {
    v12 = 0;
    v13 = 0;
    v15 = 0xE200000000000000;
  }

  else
  {
    v27 = v23;
    if (sub_20D9757C8())
    {
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v13 = UtilityRateInfoSnapshot.energyPricing.getter();
      v14 = v28;
      v12 = 1;
    }

    result = v24;
    v15 = v27;
  }

LABEL_8:
  *a1 = v12;
  *(a1 + 8) = result;
  *(a1 + 16) = v15;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  return result;
}

unint64_t UtilityRateInfoSnapshot.currentDayPeaks.getter()
{
  v244 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v0 = MEMORY[0x28223BE20](v244);
  *&v250 = &v202 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v0);
  v208 = &v202 - v2;
  v219 = sub_20D971D98();
  v215 = *(v219 - 8);
  v3 = MEMORY[0x28223BE20](v219);
  v207 = &v202 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v222 = &v202 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v202 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v217 = &v202 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v218 = &v202 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v228 = &v202 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v230 = &v202 - v17;
  MEMORY[0x28223BE20](v16);
  v247 = &v202 - v18;
  v242 = sub_20D972628();
  v19 = *(v242 - 8);
  v20 = MEMORY[0x28223BE20](v242);
  v214 = &v202 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v216 = (&v202 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v223 = (&v202 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v227 = (&v202 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v241 = (&v202 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v248 = (&v202 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v251 = (&v202 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v202 - v35;
  MEMORY[0x28223BE20](v34);
  v212 = &v202 - v37;
  v253 = sub_20D973158();
  v38 = *(v253 - 8);
  v39 = MEMORY[0x28223BE20](v253);
  v41 = &v202 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v202 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v229 = &v202 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v220 = &v202 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v236 = &v202 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v252 = (&v202 - v52);
  v53 = MEMORY[0x28223BE20](v51);
  v55 = &v202 - v54;
  MEMORY[0x28223BE20](v53);
  v254 = &v202 - v56;
  if (qword_27C838480 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v57 = sub_20D9734F8();
    v213 = __swift_project_value_buffer(v57, qword_27C840CE0);
    v58 = sub_20D9734D8();
    v59 = sub_20D975438();
    v60 = os_log_type_enabled(v58, v59);
    v221 = v19;
    v210 = v9;
    v209 = v44;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v255 = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_20D7F4DC8(0x44746E6572727563, 0xEF736B6165507961, &v255);
      _os_log_impl(&dword_20D7C9000, v58, v59, "%s: converting UtilityPeakPeriods", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x20F324260](v62, -1, -1);
      MEMORY[0x20F324260](v61, -1, -1);
    }

    v256 = MEMORY[0x277D84F98];
    v238 = *&v245[v244[13]];
    v63 = *(v238 + 16);
    v64 = v253;
    if (!v63)
    {
      break;
    }

    v205 = v36;
    if (v63 == 1)
    {
      (*(v38 + 2))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7A0, &qword_20D97B440);
      v65 = swift_allocObject();
      v250 = xmmword_20D979110;
      *(v65 + 16) = xmmword_20D979110;
      v252 = v38;
      v251 = sub_20D973128();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A348, &unk_20D97B430);
      v66 = swift_allocObject();
      *(v66 + 16) = v250;
      v68 = v244;
      v67 = v245;
      v69 = *(v221 + 16);
      v70 = v242;
      v69(v212, &v245[v244[5]], v242);
      v69(v205, (v67 + v68[7]), v70);
      sub_20D971D58();
      v71 = UtilityRateInfoSnapshot.uniquePeakRanks.getter();
      v72 = v252;
      *(v65 + 32) = v251;
      *(v65 + 40) = v66;
      v55 = v65;
      *(v65 + 48) = v71;
      v72[1](v254, v64);
      return v55;
    }

    v204 = v63 - 1;
    v235 = v63;
    v202 = v41;
    v211 = (v38[80] + 32) & ~v38[80];
    v82 = v238;
    v83 = v238 + v211;
    v36 = v38 + 16;
    v44 = *(v38 + 2);
    (v44)(v55, v238 + v211, v253);
    v84 = v38;
    *&v250 = sub_20D973128();
    v19 = (v38 + 8);
    v38 = *(v38 + 1);
    (v38)(v55, v64);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A348, &unk_20D97B430);
    v86 = *(v215 + 80);
    v232 = *(v215 + 72);
    v243 = (v86 + 32) & ~v86;
    v225 = v86;
    v226 = v85;
    v87 = swift_allocObject();
    v224 = xmmword_20D979110;
    v240 = v87;
    *(v87 + 16) = xmmword_20D979110;
    v88 = v245;
    v89 = *(v221 + 16);
    v90 = &v245[v244[6]];
    v91 = v242;
    v234 = v221 + 16;
    v233 = v89;
    v89(v251, v90, v242);
    if (*(v82 + 16) < 2uLL)
    {
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v249 = v84[9];
    v203 = v83;
    v92 = v249 + v83;
    v93 = v252;
    (v44)(v252, v92, v64);
    sub_20D973148();
    v254 = v19;
    (v38)(v93, v64);
    v94 = v247;
    UtilityRateInfoSnapshot.stringToDate(stringDate:)(v247);

    v95 = v221;
    v96 = (v221 + 48);
    v97 = *(v221 + 48);
    v98 = v97(v94, 1, v91);
    v246 = v96;
    v237 = v97;
    if (v98 == 1)
    {
      v233(v248, v88 + v244[5], v91);
      v99 = v97(v94, 1, v91);
      v100 = v204;
      v101 = v250;
      if (v99 != 1)
      {
        sub_20D7E3944(v94, &qword_27C8389E8, &qword_20D9768D0);
      }
    }

    else
    {
      (*(v95 + 32))(v248, v94, v91);
      v100 = v204;
      v101 = v250;
    }

    v19 = v240;
    sub_20D971D58();
    v102 = v256;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v255 = v102;
    v84 = &v255;
    sub_20D8D56D8(v19, v101, isUniquelyReferenced_nonNull_native);
    v256 = v255;
    v247 = v36;
    v251 = v44;
    *&v250 = v38;
    v104 = v235;
    if (v100 != 1)
    {
      v110 = *(v238 + 16);
      if (v110 >= 2 && v235 - 2 < v110)
      {
        v231 = (v221 + 32);
        v206 = (v215 + 32);
        v248 = (v238 + v211 + 2 * v249);
        v19 = v249 + v211 + v238;
        v55 = 2;
        while (1)
        {
          v114 = v236;
          (v44)(v236, v19, v64);
          v115 = sub_20D973128();
          (v38)(v114, v64);
          if (v256[2] && (sub_20D8D4AC0(v115), (v116 & 1) != 0))
          {
            v117 = v220;
            (v44)(v220, v19, v64);
            v118 = sub_20D973128();
            v119 = v250;
            (v250)(v117, v64);
            v84 = &v256;
            v120 = sub_20D96D710(&v255, v118);
            if (*v121)
            {
              v239 = v121;
              v240 = v120;
              v122 = v252;
              (v44)(v252, v19, v64);
              sub_20D973148();
              (v119)(v122, v64);
              v36 = v218;
              v123 = v245;
              UtilityRateInfoSnapshot.stringToDate(stringDate:)(v218);

              v124 = v242;
              v9 = v246;
              v44 = v237;
              v38 = v119;
              if ((v237)(v36, 1, v242) == 1)
              {
                v41 = v123;
                v233(v223, v123 + v244[5], v124);
                v125 = v124;
                if ((v44)(v36, 1, v124) != 1)
                {
                  sub_20D7E3944(v36, &qword_27C8389E8, &qword_20D9768D0);
                }
              }

              else
              {
                v41 = v123;
                (*v231)(v223, v36, v124);
                v125 = v124;
              }

              if ((v55 & 0x8000000000000000) != 0)
              {
                goto LABEL_105;
              }

              if (v55 >= *(v238 + 16))
              {
                goto LABEL_106;
              }

              v134 = v252;
              v135 = v253;
              (v251)(v252, v248, v253);
              sub_20D973148();
              (v38)(v134, v135);
              v136 = v217;
              UtilityRateInfoSnapshot.stringToDate(stringDate:)(v217);

              v137 = v237;
              if ((v237)(v136, 1, v125) == 1)
              {
                v233(v216, v41 + v244[7], v125);
                v138 = v137(v136, 1, v125);
                v139 = v240;
                if (v138 != 1)
                {
                  sub_20D7E3944(v136, &qword_27C8389E8, &qword_20D9768D0);
                }
              }

              else
              {
                (*v231)(v216, v136, v125);
                v139 = v240;
              }

              sub_20D971D58();
              v140 = v239;
              v84 = *v239;
              v141 = swift_isUniquelyReferenced_nonNull_native();
              *v140 = v84;
              v36 = v247;
              if ((v141 & 1) == 0)
              {
                v84 = sub_20D8D4844(0, v84[2] + 1, 1, v84);
                *v140 = v84;
              }

              v143 = v84[2];
              v142 = v84[3];
              if (v143 >= v142 >> 1)
              {
                v84 = sub_20D8D4844((v142 > 1), v143 + 1, 1, v84);
                *v140 = v84;
              }

              v64 = v253;
              v44 = v251;
              v84[2] = (v143 + 1);
              (*v206)(v84 + v243 + v143 * v232, v222, v219);
              v139(&v255, 0);
            }

            else
            {
              (v120)(&v255, 0);
              v38 = v119;
            }

            v91 = v242;
          }

          else
          {
            v126 = v229;
            (v44)(v229, v19, v64);
            v240 = sub_20D973128();
            v127 = v250;
            (v250)(v126, v64);
            v128 = v64;
            v129 = swift_allocObject();
            *(v129 + 16) = v224;
            v130 = v252;
            (v44)(v252, v19, v128);
            v36 = sub_20D973148();
            (v127)(v130, v128);
            v38 = v127;
            v41 = v230;
            v44 = v245;
            UtilityRateInfoSnapshot.stringToDate(stringDate:)(v230);

            v91 = v242;
            v9 = v237;
            if ((v237)(v41, 1, v242) == 1)
            {
              v233(v241, &v44[v244[5]], v91);
              if ((v9)(v41, 1, v91) != 1)
              {
                sub_20D7E3944(v41, &qword_27C8389E8, &qword_20D9768D0);
              }
            }

            else
            {
              (*v231)(v241, v41, v91);
            }

            if ((v55 & 0x8000000000000000) != 0)
            {
              goto LABEL_103;
            }

            if (v55 >= *(v238 + 16))
            {
              goto LABEL_104;
            }

            v239 = v129;
            v131 = v252;
            v132 = v253;
            (v251)(v252, v248, v253);
            sub_20D973148();
            (v38)(v131, v132);
            v133 = v228;
            UtilityRateInfoSnapshot.stringToDate(stringDate:)(v228);

            if ((v9)(v133, 1, v91) == 1)
            {
              v233(v227, &v44[v244[7]], v91);
              if ((v9)(v133, 1, v91) != 1)
              {
                sub_20D7E3944(v133, &qword_27C8389E8, &qword_20D9768D0);
              }
            }

            else
            {
              (*v231)(v227, v133, v91);
            }

            v111 = v239;
            sub_20D971D58();
            v112 = v256;
            v113 = swift_isUniquelyReferenced_nonNull_native();
            v255 = v112;
            v84 = &v255;
            sub_20D8D56D8(v111, v240, v113);
            v256 = v255;
            v64 = v253;
            v36 = v247;
            v44 = v251;
          }

          ++v55;
          v248 = (v249 + v248);
          v19 += v249;
          v104 = v235;
          if (v235 == v55)
          {
            goto LABEL_17;
          }
        }
      }

LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

LABEL_17:
    if (v104 > *(v238 + 16))
    {
      goto LABEL_109;
    }

    v105 = v245;
    v106 = v91;
    v248 = (v249 * v204);
    v107 = v209;
    (v44)(v209, v203 + v249 * v204, v64);
    sub_20D973148();
    (v38)(v107, v64);
    v108 = v210;
    UtilityRateInfoSnapshot.stringToDate(stringDate:)(v210);

    v109 = v237;
    if ((v237)(v108, 1, v106) == 1)
    {
      v84 = v214;
      v233(v214, v105 + v244[7], v106);
      if (v109(v108, 1, v106) != 1)
      {
        sub_20D7E3944(v108, &qword_27C8389E8, &qword_20D9768D0);
      }
    }

    else
    {
      v84 = v214;
      (*(v221 + 32))(v214, v108, v106);
    }

    v19 = v244[7];
    if (sub_20D972548())
    {
      if (v235 <= *(v238 + 16))
      {
        v144 = v202;
        (v44)(v202, v248 + v203, v64);
        v145 = sub_20D973128();
        (v38)(v144, v64);
        v146 = sub_20D96D710(&v255, v145);
        if (!*v147)
        {
          (v146)(&v255, 0);
          goto LABEL_65;
        }

        v84 = v147;
        v248 = v146;
        v44 = v212;
        v148 = v242;
        v149 = v233;
        v233(v212, v214, v242);
        v149(v205, &v245[v19], v148);
        sub_20D971D58();
        v19 = *v84;
        v150 = swift_isUniquelyReferenced_nonNull_native();
        *v84 = v19;
        if (v150)
        {
          goto LABEL_61;
        }

        goto LABEL_112;
      }

LABEL_111:
      __break(1u);
LABEL_112:
      v19 = sub_20D8D4844(0, *(v19 + 16) + 1, 1, v19);
      *v84 = v19;
LABEL_61:
      v152 = *(v19 + 16);
      v151 = *(v19 + 24);
      if (v152 >= v151 >> 1)
      {
        v19 = sub_20D8D4844((v151 > 1), v152 + 1, 1, v19);
        *v84 = v19;
      }

      *(v19 + 16) = v152 + 1;
      (*(v215 + 32))(v19 + v243 + v152 * v232, v207, v219);
      (v248)(&v255, 0);
    }

LABEL_65:
    v9 = v256;
    v153 = (v256 + 8);
    v154 = 1 << *(v256 + 32);
    if (v154 < 64)
    {
      v155 = ~(-1 << v154);
    }

    else
    {
      v155 = -1;
    }

    v41 = v155 & v256[8];
    v19 = (v154 + 63) >> 6;

    v156 = 0;
    v55 = MEMORY[0x277D84F90];
    v240 = v153;
    v239 = v19;
    v241 = v9;
    if (v41)
    {
      goto LABEL_73;
    }

    while (1)
    {
      v157 = v156 + 1;
      if (__OFADD__(v156, 1))
      {
        break;
      }

      if (v157 >= v19)
      {

        v186 = v208;
        sub_20D815A38(v245, v208);
        v187 = sub_20D9734D8();
        v188 = sub_20D975438();
        if (os_log_type_enabled(v187, v188))
        {
          v189 = swift_slowAlloc();
          v190 = swift_slowAlloc();
          v255 = v190;
          *v189 = 136315650;
          *(v189 + 4) = sub_20D7F4DC8(0x44746E6572727563, 0xEF736B6165507961, &v255);
          *(v189 + 12) = 2080;

          v192 = MEMORY[0x20F323400](v191, &type metadata for PeakPeriodListing);
          v193 = v55;
          v195 = v194;

          v196 = sub_20D7F4DC8(v192, v195, &v255);

          *(v189 + 14) = v196;
          *(v189 + 22) = 2080;
          v197 = MEMORY[0x20F323400](*(v186 + v244[12]), v64);
          v199 = v198;
          sub_20D815AB8(v186);
          v200 = sub_20D7F4DC8(v197, v199, &v255);
          v55 = v193;

          *(v189 + 24) = v200;
          _os_log_impl(&dword_20D7C9000, v187, v188, "%s: made %s from %s", v189, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x20F324260](v190, -1, -1);
          MEMORY[0x20F324260](v189, -1, -1);
        }

        else
        {

          sub_20D815AB8(v186);
        }

        (*(v221 + 8))(v214, v242);

        return v55;
      }

      v41 = *(v153 + 8 * v157);
      ++v156;
      if (v41)
      {
        v156 = v157;
        do
        {
LABEL_73:
          v246 = v55;
          v158 = (v156 << 9) | (8 * __clz(__rbit64(v41)));
          v159 = v9[7];
          v243 = *(v9[6] + v158);
          v44 = *(v159 + v158);
          v160 = *&v245[v244[12]];
          v161 = *(v160 + 16);
          v248 = v44;
          if (v161)
          {
            v255 = MEMORY[0x277D84F90];
            swift_bridgeObjectRetain_n();
            sub_20D95DA9C(0, v161, 0);
            v162 = v255;
            v163 = v160 + v211;
            do
            {
              v164 = v252;
              v165 = v253;
              (v251)(v252, v163, v253);
              v166 = sub_20D973128();
              (v38)(v164, v165);
              v255 = v162;
              v168 = v162[2];
              v167 = v162[3];
              v169 = v168 + 1;
              if (v168 >= v167 >> 1)
              {
                sub_20D95DA9C((v167 > 1), v168 + 1, 1);
                v162 = v255;
              }

              v162[2] = v169;
              v162[v168 + 4] = v166;
              v38 = v250;
              v163 += v249;
              --v161;
            }

            while (v161);
            v44 = v248;
          }

          else
          {
            swift_bridgeObjectRetain_n();
            v162 = MEMORY[0x277D84F90];
            v169 = *(MEMORY[0x277D84F90] + 16);
          }

          v170 = MEMORY[0x20F323530](v169, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
          v171 = v170;
          v172 = v162[2];
          if (v172)
          {
            v173 = 0;
            v174 = (v170 + 56);
            do
            {
              while (1)
              {
                v175 = v162[v173++ + 4];
                v176 = sub_20D975878();
                v177 = -1 << *(v171 + 32);
                v178 = v176 & ~v177;
                if ((*(v174 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178))
                {
                  break;
                }

LABEL_87:
                v180 = swift_isUniquelyReferenced_nonNull_native();
                v255 = v171;
                sub_20D96FF60(v175, v178, v180);
                v171 = v255;
                if (v173 == v172)
                {
                  goto LABEL_89;
                }

                v174 = v255 + 7;
              }

              v179 = ~v177;
              while (*(v171[6] + 8 * v178) != v175)
              {
                v178 = (v178 + 1) & v179;
                if (((*(v174 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178) & 1) == 0)
                {
                  goto LABEL_87;
                }
              }
            }

            while (v173 != v172);
LABEL_89:
            v44 = v248;

            v36 = v247;
            v38 = v250;
          }

          else
          {
          }

          v181 = v171[2];

          v55 = v246;
          v182 = swift_isUniquelyReferenced_nonNull_native();
          v64 = v253;
          if ((v182 & 1) == 0)
          {
            v55 = sub_20D8D4724(0, *(v55 + 16) + 1, 1, v55);
          }

          v184 = *(v55 + 16);
          v183 = *(v55 + 24);
          if (v184 >= v183 >> 1)
          {
            v55 = sub_20D8D4724((v183 > 1), v184 + 1, 1, v55);
          }

          v41 &= v41 - 1;
          *(v55 + 16) = v184 + 1;
          v185 = (v55 + 24 * v184);
          v185[4] = v243;
          v185[5] = v44;
          v185[6] = v181;
          v153 = v240;
          v9 = v241;
          v19 = v239;
        }

        while (v41);
      }
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
  }

  v73 = v250;
  sub_20D815A38(v245, v250);
  v74 = sub_20D9734D8();
  v75 = sub_20D975438();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v255 = v77;
    *v76 = 136315394;
    *(v76 + 4) = sub_20D7F4DC8(0x44746E6572727563, 0xEF736B6165507961, &v255);
    *(v76 + 12) = 2080;
    v78 = MEMORY[0x20F323400](*(v73 + v244[12]), v64);
    v80 = v79;
    sub_20D815AB8(v73);
    v81 = sub_20D7F4DC8(v78, v80, &v255);

    *(v76 + 14) = v81;
    _os_log_impl(&dword_20D7C9000, v74, v75, "%s: made no objects from %s", v76, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v77, -1, -1);
    MEMORY[0x20F324260](v76, -1, -1);
  }

  else
  {

    sub_20D815AB8(v73);
  }

  return MEMORY[0x277D84F90];
}

uint64_t UtilityRateInfoSnapshot.ratePlanTitle.getter()
{
  v1 = sub_20D9726E8();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_20D975058();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_20D975038();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v9 = *(v0 + *(v8 + 40));
  if (v9 > 3)
  {
    if (*(v0 + *(v8 + 40)) > 5u)
    {
      if (v9 == 6)
      {

        return 0;
      }
    }

    else if (v9 == 4)
    {
      goto LABEL_8;
    }

    LOBYTE(v9) = 5;
  }

LABEL_8:
  v10 = sub_20D9757C8();

  if (v10)
  {
    return 0;
  }

  v12 = (v0 + *(v8 + 32));
  v13 = *v12;
  v14 = v12[1];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    sub_20D975028();
    sub_20D975018();
    sub_20D975008();
    sub_20D975018();
    v18[15] = v9;
    sub_20D967D64();
    sub_20D975008();

    sub_20D975018();
    sub_20D975048();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v16 = qword_28112ABE8;
    v17 = qword_28112ABE8;
    sub_20D9726B8();
    return sub_20D975108(v6, 0, 0, v16, v3, "rate plan title. %1 is rate plan id, %2 is rate plan type", 57, 2);
  }

  else
  {
    v18[13] = v9;
    return sub_20D967D64();
  }
}

uint64_t sub_20D96A608()
{
  v1 = sub_20D9726E8();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_20D975058();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = 0;
  v8 = *v0;
  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v13 = qword_28112ABE8;
      v14 = qword_28112ABE8;
      sub_20D9726B8();
      return sub_20D975108(v6, 0, 0, v13, v3, "Time-of-Use Plan title", 22, 2);
    }

    else if (v8 == 2)
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v9 = qword_28112ABE8;
      v10 = qword_28112ABE8;
      sub_20D9726B8();
      return sub_20D975108(v6, 0, 0, v9, v3, "Tiered Plan title", 17, 2);
    }
  }

  else if (v8 == 3 || v8 == 4 || v8 == 5)
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v11 = qword_28112ABE8;
    v12 = qword_28112ABE8;
    sub_20D9726B8();
    return sub_20D975108(v6, 0, 0, v11, v3, "", 0, 2);
  }

  return result;
}

uint64_t sub_20D96A8E8()
{
  v1 = sub_20D9726E8();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_20D975058();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = 0;
  v8 = *v0;
  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v17 = qword_28112ABE8;
      v18 = qword_28112ABE8;
      sub_20D9726B8();
      return sub_20D975108(v6, 0, 0, v17, v3, "Time-of-Use Plan body", 21, 2);
    }

    else if (v8 == 2)
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v11 = qword_28112ABE8;
      v12 = qword_28112ABE8;
      sub_20D9726B8();
      return sub_20D975108(v6, 0, 0, v11, v3, "Tiered Plan body 2", 18, 2);
    }
  }

  else
  {
    switch(v8)
    {
      case 3u:
        sub_20D974FE8();
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v13 = qword_28112ABE8;
        v14 = qword_28112ABE8;
        sub_20D9726B8();
        return sub_20D975108(v6, 0, 0, v13, v3, "Flat Rate Plan body", 19, 2);
      case 4u:
        sub_20D974FE8();
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v15 = qword_28112ABE8;
        v16 = qword_28112ABE8;
        sub_20D9726B8();
        return sub_20D975108(v6, 0, 0, v15, v3, "Fixed Rate Plan body", 20, 2);
      case 5u:
        sub_20D974FE8();
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v9 = qword_28112ABE8;
        v10 = qword_28112ABE8;
        sub_20D9726B8();
        return sub_20D975108(v6, 0, 0, v9, v3, "Unsupported Rate Plan body", 26, 2);
    }
  }

  return result;
}

uint64_t UtilityRateInfoSnapshot.dateToFormattedString(date:)(uint64_t a1)
{
  v67 = a1;
  v1 = sub_20D972398();
  v51 = *(v1 - 8);
  v52 = v1;
  MEMORY[0x28223BE20](v1);
  v50 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_20D972308();
  v61 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_20D972318();
  v60 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_20D9726C8();
  v59 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v57 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D972188();
  MEMORY[0x28223BE20](v6 - 8);
  v56 = sub_20D972838();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D9727D8();
  MEMORY[0x28223BE20](v9 - 8);
  v53 = sub_20D9726E8();
  v10 = *(v53 - 8);
  v11 = MEMORY[0x28223BE20](v53);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v48 - v18;
  v20 = sub_20D972408();
  v55 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v49 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v58 = &v48 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v48 - v25;
  v27 = sub_20D972248();
  (*(*(v27 - 8) + 56))(v19, 1, 1, v27);
  v28 = sub_20D972208();
  (*(*(v28 - 8) + 56))(v16, 1, 1, v28);
  sub_20D9726A8();
  sub_20D972738();
  sub_20D972818();
  sub_20D972178();
  v29 = v57;
  sub_20D972268();
  v30 = type metadata accessor for UtilityRateInfoSnapshot(0);
  (*(v54 + 16))(v8, v62 + *(v30 + 36), v56);
  sub_20D9723F8();
  sub_20D9726B8();
  sub_20D9726D8();
  v31 = v13;
  v32 = v59;
  (*(v10 + 8))(v31, v53);
  v33 = (*(v32 + 88))(v29, v68);
  v34 = (v61 + 8);
  v35 = (v60 + 8);
  if (v33 == *MEMORY[0x277CC9760] || v33 == *MEMORY[0x277CC9758])
  {
    v43 = v64;
    sub_20D9722E8();
    v44 = v63;
    sub_20D9722D8();
    (*v34)(v43, v66);
    v45 = v58;
    sub_20D972278();
    (*v35)(v44, v65);
    v46 = v55;
    v42 = *(v55 + 8);
    v42(v26, v20);
    (*(v46 + 32))(v26, v45, v20);
  }

  else
  {
    v36 = v64;
    sub_20D9722F8();
    v37 = v63;
    sub_20D9722D8();
    (*v34)(v36, v66);
    v38 = v49;
    sub_20D972278();
    (*v35)(v37, v65);
    v39 = v50;
    sub_20D972388();
    v40 = v58;
    sub_20D9723D8();
    (*(v51 + 8))(v39, v52);
    v41 = v55;
    v42 = *(v55 + 8);
    v42(v38, v20);
    v42(v26, v20);
    (*(v41 + 32))(v26, v40, v20);
    (*(v32 + 8))(v29, v68);
  }

  sub_20D9716B8(&unk_281127750, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
  sub_20D972608();
  v42(v26, v20);
  return v69;
}

unint64_t PeakPeriodListing.peakPeriodSymbol.getter()
{
  v1 = *(v0 + 16);

  if (v1 >= 3)
  {
    return 0xD000000000000034;
  }

  else
  {
    return 0xD000000000000029;
  }
}

double PeakPeriodListing.peakVariableValue.getter()
{
  v0 = PeakPeriodAttributes.variableValue.getter();

  return v0;
}

uint64_t sub_20D96B634(uint64_t (*a1)(void))
{
  v1 = a1();

  return v1;
}

uint64_t static PeakPeriodListing.== infix(_:_:)(void *a1, void *a2, __n128 a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[2];
  v4 = a1[2];
  return sub_20D96B6FC(a1[1], a2[1]) & (v4 == v3);
}

uint64_t sub_20D96B6FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D971D98();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_20D9716B8(&qword_27C83CAA8, MEMORY[0x277CC88A8], MEMORY[0x277CC88C8]);
    v21 = sub_20D974FD8();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t PeakPeriodListing.hash(into:)(uint64_t a1)
{
  v2 = sub_20D971D98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = v1[1];
  v16 = v1[2];
  MEMORY[0x20F323A50](v6);
  MEMORY[0x20F323A50](*(v7 + 16));
  v8 = *(v7 + 16);
  if (v8)
  {
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v5, v12, v2);
      sub_20D9716B8(&unk_27C83CA60, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
      sub_20D974F88();
      (*(v9 - 8))(v5, v2);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return MEMORY[0x20F323A50](v16);
}

uint64_t PeakPeriodListing.hashValue.getter()
{
  v1 = *(v0 + 16);
  *&v3[72] = *v0;
  v4 = v1;
  sub_20D975888();
  PeakPeriodListing.hash(into:)(v3);
  return sub_20D9758A8();
}

uint64_t sub_20D96BAF4()
{
  v1 = *(v0 + 16);
  *&v3[72] = *v0;
  v4 = v1;
  sub_20D975888();
  PeakPeriodListing.hash(into:)(v3);
  return sub_20D9758A8();
}

uint64_t sub_20D96BB4C()
{
  v1 = *(v0 + 16);
  *&v3[72] = *v0;
  v4 = v1;
  sub_20D975888();
  PeakPeriodListing.hash(into:)(v3);
  return sub_20D9758A8();
}

uint64_t sub_20D96BB9C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  return sub_20D96B6FC(a1[1], a2[1]) & (v3 == v2);
}

HomeEnergyUI::RatePlanType_optional __swiftcall RatePlanType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20D975788();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RatePlanType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x726F707075736E75;
  if (v1 != 5)
  {
    v3 = 0x676E6964616F6CLL;
  }

  v4 = 1952541798;
  if (v1 != 3)
  {
    v4 = 0x6465786966;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 7696244;
  if (v1 != 1)
  {
    v5 = 0x646572656974;
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

double sub_20D96BD2C(uint64_t a1)
{
  sub_20D975158();

  return result;
}

void sub_20D96BE40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEB00000000646574;
  v6 = 0x726F707075736E75;
  if (v2 != 5)
  {
    v6 = 0x676E6964616F6CLL;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1952541798;
  if (v2 != 3)
  {
    v8 = 0x6465786966;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7696244;
  if (v2 != 1)
  {
    v10 = 0x646572656974;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t UtilityRateInfoSnapshot.ekSiteID.getter()
{
  v1 = *v0;

  return v1;
}

void UtilityRateInfoSnapshot.ekSiteID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t UtilityRateInfoSnapshot.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UtilityRateInfoSnapshot(0) + 20);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UtilityRateInfoSnapshot.startDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UtilityRateInfoSnapshot(0) + 20);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UtilityRateInfoSnapshot.startOfDay.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UtilityRateInfoSnapshot(0) + 24);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UtilityRateInfoSnapshot.endOfDay.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UtilityRateInfoSnapshot(0) + 28);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UtilityRateInfoSnapshot.ratePlanName.getter()
{
  v1 = *(v0 + *(type metadata accessor for UtilityRateInfoSnapshot(0) + 32));

  return v1;
}

void UtilityRateInfoSnapshot.ratePlanName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for UtilityRateInfoSnapshot(0) + 32));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t UtilityRateInfoSnapshot.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UtilityRateInfoSnapshot(0) + 36);
  v4 = sub_20D972838();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UtilityRateInfoSnapshot.timeZone.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UtilityRateInfoSnapshot(0) + 36);
  v4 = sub_20D972838();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UtilityRateInfoSnapshot.ratePlanType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UtilityRateInfoSnapshot(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t UtilityRateInfoSnapshot.ratePlanType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for UtilityRateInfoSnapshot(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t UtilityRateInfoSnapshot.error.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UtilityRateInfoSnapshot(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t UtilityRateInfoSnapshot.error.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for UtilityRateInfoSnapshot(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

unint64_t UtilityRateInfoError.description.getter()
{
  v1 = *v0;
  v2 = 0x724520726568744FLL;
  if (v1 == 4)
  {
    v2 = 0xD000000000000016;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000013;
  v4 = 0xD00000000000001DLL;
  if (v1 != 1)
  {
    v4 = 0xD000000000000021;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

double UtilityRateInfoSnapshot.sortedPeaks.getter()
{
  type metadata accessor for UtilityRateInfoSnapshot(0);

  return result;
}

void sub_20D96C640()
{
  v0 = type metadata accessor for UtilityRateInfoSnapshot(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_20D972838();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v44 - v8;
  v55 = sub_20D972628();
  v10 = *(v55 - 8);
  v11 = MEMORY[0x28223BE20](v55);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  v16 = qword_27C83C9B0;
  __swift_allocate_value_buffer(v0, qword_27C83C9B0);
  v54 = v0;
  v51 = __swift_project_value_buffer(v0, qword_27C83C9B0);
  sub_20D972618();
  sub_20D9727E8();
  if ((*(v4 + 48))(v9, 1, v3) != 1)
  {
    v49 = v4;
    v52 = *(v4 + 16);
    v47 = v9;
    v52(v6, v9, v3);
    v45 = v15;
    v46 = v10;
    v17 = *(v10 + 16);
    v18 = v55;
    v17(v13, v15, v55);
    v19 = v54;
    v53 = v54[10];
    *(v2 + v53) = 7;
    v20 = v19[11];
    *(v2 + v20) = 6;
    *v2 = xmmword_20D977660;
    v21 = v2 + v19[9];
    v48 = v6;
    v50 = v3;
    (v52)(v21);
    v22 = v2 + v19[5];
    v52 = v13;
    v17(v22, v13, v18);
    v23 = (v2 + v19[8]);
    *v23 = 11565;
    v23[1] = 0xE200000000000000;
    *(v2 + v53) = 7;
    *(v2 + v20) = 6;
    v16 = MEMORY[0x277D84F90];
    v24 = sub_20D817948(MEMORY[0x277D84F90]);
    v25 = v24;
    v26 = *(v24 + 16);
    if (!v26 || (v16 = sub_20D815D18(*(v24 + 16), 0), v27 = *(sub_20D973158() - 8), v53 = sub_20D81754C(&v56, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v26, v25), v28 = v56, , sub_20D817AE4(v28), v53 == v26))
    {
      v29 = v19;
      v56 = v16;
      sub_20D815E14(&v56);
      v30 = v55;
      v31 = v46;
      v32 = v52;

      v33 = v56;
      *(v2 + v29[12]) = v56;
      v34 = v29[6];

      v35 = v48;
      sub_20D972F88();
      v36 = v29[7];
      sub_20D9730F8();
      _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v2 + v34, v2 + v36, v33, v35);
      *(v2 + v29[13]) = v37;
      _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v32, v2 + v36, v33, v35);
      v39 = v38;

      v40 = *(v31 + 8);
      v40(v32, v30);
      v41 = *(v49 + 8);
      v42 = v35;
      v43 = v50;
      v41(v42, v50);
      v40(v45, v30);
      v41(v47, v43);
      *(v2 + v29[14]) = v39;
      sub_20D817AEC(v2, v51);
      return;
    }

    __break(1u);
  }

  __break(1u);

  __break(1u);
}

void sub_20D96CC54(uint64_t a1, uint64_t *a2, int a3)
{
  LODWORD(v53) = a3;
  v4 = type metadata accessor for UtilityRateInfoSnapshot(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_20D972838();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D972628();
  v54 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  __swift_allocate_value_buffer(v4, a2);
  v52 = __swift_project_value_buffer(v4, a2);
  sub_20D9725C8();
  sub_20D9727F8();
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v20 = v11;
    v21 = *(v54 + 16);
    v47 = v19;
    v21(v17, v19, v14);
    v22 = v13;
    v23 = v4[10];
    *(v6 + v23) = 7;
    v24 = v4[11];
    *(v6 + v24) = 6;
    *v6 = 0;
    v6[1] = 0;
    v25 = v4[9];
    v49 = v22;
    v50 = v20;
    v26 = *(v20 + 16);
    v51 = v10;
    v26(v6 + v25);
    v27 = v6 + v4[5];
    v46 = v17;
    v48 = v14;
    v21(v27, v17, v14);
    v28 = (v6 + v4[8]);
    *v28 = 0;
    v28[1] = 0xE000000000000000;
    *(v6 + v23) = 7;
    *(v6 + v24) = v53;
    v17 = MEMORY[0x277D84F90];
    v29 = sub_20D817948(MEMORY[0x277D84F90]);
    v30 = v29;
    v31 = *(v29 + 16);
    if (!v31 || (v17 = sub_20D815D18(*(v29 + 16), 0), v32 = *(sub_20D973158() - 8), v53 = sub_20D81754C(&v55, &v17[(*(v32 + 80) + 32) & ~*(v32 + 80)], v31, v30), v33 = v55, , sub_20D817AE4(v33), v53 == v31))
    {
      v55 = v17;
      sub_20D815E14(&v55);
      v35 = v48;
      v34 = v49;
      v37 = v46;
      v36 = v47;

      v38 = v55;
      *(v6 + v4[12]) = v55;
      v39 = v4[6];

      sub_20D972F88();
      v40 = v4[7];
      sub_20D9730F8();
      _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v6 + v39, v6 + v40, v38, v34);
      *(v6 + v4[13]) = v41;
      _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v37, v6 + v40, v38, v34);
      v43 = v42;

      v44 = *(v54 + 8);
      v44(v37, v35);
      (*(v50 + 8))(v34, v51);
      v44(v36, v35);
      *(v6 + v4[14]) = v43;
      sub_20D817AEC(v6, v52);
      return;
    }

    __break(1u);
  }

  __break(1u);

  __break(1u);
}

uint64_t UtilityRateInfoSnapshot.uniquePeakRanks.getter()
{
  v21 = sub_20D973158();
  v1 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + *(type metadata accessor for UtilityRateInfoSnapshot(0) + 48));
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v22 = MEMORY[0x277D84F90];
    sub_20D95DA9C(0, v5, 0);
    v6 = v22;
    v8 = *(v1 + 16);
    v7 = v1 + 16;
    v9 = v4 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v19 = *(v7 + 56);
    v20 = v8;
    v10 = (v7 - 8);
    do
    {
      v11 = v21;
      v12 = v7;
      v20(v3, v9, v21);
      v13 = sub_20D973128();
      (*v10)(v3, v11);
      v22 = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_20D95DA9C((v14 > 1), v15 + 1, 1);
        v6 = v22;
      }

      *(v6 + 16) = v15 + 1;
      *(v6 + 8 * v15 + 32) = v13;
      v9 += v19;
      --v5;
      v7 = v12;
    }

    while (v5);
  }

  v16 = sub_20D81A18C(v6);

  v17 = *(v16 + 16);

  return v17;
}

uint64_t UtilityRateInfoSnapshot.stringToDate(stringDate:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_20D972488();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v14 - v8;
  type metadata accessor for UtilityRateInfoSnapshot(0);
  sub_20D972FD8();
  sub_20D972468();
  (*(v4 + 8))(v6, v3);
  v10 = sub_20D972628();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  (*(v11 + 32))(a2, v9, v10);
  return (v12)(a2, 0, 1, v10);
}

uint64_t (*sub_20D96D710(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_20D970FF8(v4, a2);
  return sub_20D96D788;
}

void sub_20D96D788(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_20D96D7D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA40, &qword_20D980AA0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(v1 + *(type metadata accessor for UtilityRateInfoSnapshot(0) + 40));
  result = 11565;
  if (((1 << v9) & 0x3D) != 0)
  {
    LOBYTE(v18) = v9;
    return sub_20D967D64();
  }

  else if (((1 << v9) & 0xC0) == 0)
  {
    sub_20D97130C(a1, v8);
    v11 = UtilityRateInfoSnapshot.uniquePeakRanks.getter();
    sub_20D97130C(v8, v6);
    v12 = sub_20D973158();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v6, 1, v12);
    if (v14 == 1)
    {
      sub_20D7E3944(v8, &unk_27C83CA40, &qword_20D980AA0);
      sub_20D7E3944(v6, &unk_27C83CA40, &qword_20D980AA0);
      v15 = 0;
    }

    else
    {
      v15 = sub_20D973128();
      sub_20D7E3944(v8, &unk_27C83CA40, &qword_20D980AA0);
      (*(v13 + 8))(v6, v12);
    }

    v18 = v15;
    v19 = v14 == 1;
    v20 = 0;
    v21 = 0;
    v22 = v11;
    v16 = PeakPeriodAttributes.peakName.getter();

    return v16;
  }

  return result;
}

uint64_t UtilityRateInfoSnapshot.currentPeak.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for UtilityRateInfoSnapshot(0) + 56));
  v4 = *(v3 + 16);
  v5 = sub_20D973158();
  v6 = *(v5 - 8);
  if (v4)
  {
    v10 = *(v5 - 8);
    (*(v10 + 16))(a1, v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v5);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a1, v7, 1, v5);
}

double UtilityRateInfoSnapshot.selectedPeaks.getter()
{
  type metadata accessor for UtilityRateInfoSnapshot(0);

  return result;
}

uint64_t type metadata accessor for UtilityRateInfoSnapshot(uint64_t a1)
{
  result = qword_281127258;
  if (!qword_281127258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UtilityRateInfoSnapshot.attributedPeak.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA40, &qword_20D980AA0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = *(v1 + *(type metadata accessor for UtilityRateInfoSnapshot(0) + 56));
  v10 = *(v9 + 16);
  v11 = sub_20D973158();
  v12 = *(v11 - 8);
  if (v10)
  {
    (*(v12 + 16))(v8, v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);
    (*(v12 + 56))(v8, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v8, 1, 1, v11);
  }

  v13 = UtilityRateInfoSnapshot.uniquePeakRanks.getter();
  sub_20D97130C(v8, v6);
  sub_20D973158();
  v14 = v12;
  v15 = (*(v12 + 48))(v6, 1, v11);
  if (v15 == 1)
  {
    sub_20D7E3944(v8, &unk_27C83CA40, &qword_20D980AA0);
    result = sub_20D7E3944(v6, &unk_27C83CA40, &qword_20D980AA0);
    v17 = 0;
  }

  else
  {
    v17 = sub_20D973128();
    sub_20D7E3944(v8, &unk_27C83CA40, &qword_20D980AA0);
    result = (*(v14 + 8))(v6, v11);
  }

  *a1 = v17;
  a1[1] = v15 == 1;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v13;
  return result;
}

uint64_t UtilityRateInfoSnapshot.peakLevel.getter()
{
  UtilityRateInfoSnapshot.attributedPeak.getter(v2);
  if (v3 == 1)
  {
    return 0;
  }

  v0 = v2[0];
  sub_20D8EE800(v2[0], v2[1], v2[2], v3);
  return v0;
}

uint64_t UtilityRateInfoSnapshot.energyPricing.getter()
{
  v1 = sub_20D972188();
  MEMORY[0x28223BE20](v1 - 8);
  v94 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  MEMORY[0x28223BE20](v3 - 8);
  v93 = &v78 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  MEMORY[0x28223BE20](v5 - 8);
  v92 = &v78 - v6;
  v7 = sub_20D972408();
  v95 = *(v7 - 8);
  v96 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D9726E8();
  MEMORY[0x28223BE20](v10 - 8);
  v91 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20D975058();
  MEMORY[0x28223BE20](v12 - 8);
  v90 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_20D971EA8();
  v85 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20D972838();
  v98 = *(v15 - 8);
  v99 = v15;
  MEMORY[0x28223BE20](v15);
  v97 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20D9726F8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_20D9727D8();
  v83 = *(v82 - 8);
  v21 = MEMORY[0x28223BE20](v82);
  v89 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v80 = &v78 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v78 - v25;
  v27 = sub_20D972628();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = (&v78 - v32);
  UtilityRateInfoSnapshot.peakUntil.getter(v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_20D7E3944(v26, &qword_27C8389E8, &qword_20D9768D0);
    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v34 = sub_20D9734F8();
    __swift_project_value_buffer(v34, qword_27C840CE0);
    v35 = sub_20D9734D8();
    v36 = sub_20D975458();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v100[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_20D7F4DC8(0x7250796772656E65, 0xED0000676E696369, v100);
      _os_log_impl(&dword_20D7C9000, v35, v36, "%s: nil peakUntil", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x20F324260](v38, -1, -1);
      MEMORY[0x20F324260](v37, -1, -1);
    }

    return 0;
  }

  v87 = v28;
  v40 = *(v28 + 32);
  v88 = v27;
  v40(v33, v26, v27);
  v41 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v42 = sub_20D972538();
  v86 = v0;
  if (v42)
  {
    v79 = v9;
    v78 = v41;
    v43 = *(v41 + 36);
    v44 = v31;
    sub_20D9730F8();
    v45 = v0;
    if (sub_20D972548())
    {
      v46 = 0x800000020D98BA00;
      v47 = 0xD000000000000014;
      v9 = v79;
      v48 = v88;
      v49 = v87;
LABEL_33:
      (*(v49 + 8))(v44, v48);
      v41 = v78;
      goto LABEL_34;
    }

    (*(v18 + 104))(v20, *MEMORY[0x277CC9830], v17);
    v50 = v80;
    sub_20D972708();
    (*(v18 + 8))(v20, v17);
    (*(v98 + 16))(v97, v0 + v43, v99);
    sub_20D972798();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CA70, &unk_20D97CC90);
    v51 = sub_20D9727B8();
    v52 = *(v51 - 8);
    v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_20D979110;
    (*(v52 + 104))(v54 + v53, *MEMORY[0x277CC99B8], v51);
    sub_20D84CE2C(v54);
    swift_setDeallocating();
    (*(v52 + 8))(v54 + v53, v51);
    swift_deallocClassInstance();
    v55 = v81;
    sub_20D972728();

    v56 = sub_20D971E88();
    if (v57)
    {
      v85[1](v55, v84);
      (*(v83 + 8))(v50, v82);
      v46 = 0xE800000000000000;
      v45 = v86;
      v9 = v79;
      v48 = v88;
      v49 = v87;
LABEL_13:
      v47 = 0x4025206C69746E55;
      goto LABEL_33;
    }

    v9 = v79;
    v58 = v88;
    v49 = v87;
    if (v56 <= 3)
    {
      v45 = v86;
      switch(v56)
      {
        case 1:
          v60 = "Until Sunday at %@";
          break;
        case 2:
          v60 = "Until Monday at %@";
          break;
        case 3:
          v46 = 0x800000020D98B9A0;
          v85[1](v55, v84);
          (*(v83 + 8))(v50, v82);
          v47 = 0xD000000000000013;
LABEL_32:
          v48 = v58;
          goto LABEL_33;
        default:
          goto LABEL_27;
      }
    }

    else
    {
      v45 = v86;
      if (v56 <= 5)
      {
        if (v56 == 4)
        {
          v46 = 0x800000020D98B980;
          v85[1](v55, v84);
          (*(v83 + 8))(v50, v82);
          v47 = 0xD000000000000015;
          goto LABEL_32;
        }

        v59 = "Until Thursday at %@";
        goto LABEL_25;
      }

      if (v56 != 6)
      {
        if (v56 == 7)
        {
          v59 = "Until Saturday at %@";
LABEL_25:
          v46 = (v59 - 32) | 0x8000000000000000;
          v85[1](v55, v84);
          (*(v83 + 8))(v50, v82);
          v47 = 0xD000000000000014;
          goto LABEL_32;
        }

LABEL_27:
        v85[1](v55, v84);
        (*(v83 + 8))(v50, v82);
        v46 = 0xE800000000000000;
        v48 = v58;
        goto LABEL_13;
      }

      v60 = "Until Friday at %@";
    }

    v46 = (v60 - 32) | 0x8000000000000000;
    v85[1](v55, v84);
    v47 = 0xD000000000000012;
    (*(v83 + 8))(v50, v82);
    goto LABEL_32;
  }

  v46 = 0xE800000000000000;
  v45 = v0;
  v47 = 0x4025206C69746E55;
LABEL_34:
  v61 = *(v41 + 36);
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v62 = qword_28112ABE8;
  v85 = v33;
  v63 = sub_20D88F060(v33, v45 + v61);
  v64 = v9;
  if (v63 == 1)
  {
    v100[0] = v47;
    v100[1] = v46;

    MEMORY[0x20F323340](1701736227, 0xE400000000000000);
  }

  v65 = v90;
  sub_20D975068();
  v66 = v91;
  sub_20D9726B8();
  v67 = v62;
  sub_20D975108(v65, 0x617A696C61636F4CLL, 0xEB00000000656C62, v62, v66, "", 0, 2);
  v68 = sub_20D972248();
  (*(*(v68 - 8) + 56))(v92, 1, 1, v68);
  v69 = v93;
  sub_20D9721F8();
  v70 = sub_20D972208();
  (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
  sub_20D9726A8();
  sub_20D972738();
  v71 = v97;
  sub_20D972818();
  sub_20D972178();
  sub_20D972268();
  (*(v98 + 16))(v71, v86 + v61, v99);
  sub_20D9723F8();
  v72 = v85;
  v73 = sub_20D9723C8();
  v75 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394D0, &qword_20D9790A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D979110;
  *(inited + 32) = v73;
  *(inited + 40) = v75;
  v100[0] = inited;
  sub_20D95AEB8(MEMORY[0x277D84F90]);
  sub_20D9678F8(v100[0]);

  v77 = sub_20D9750B8();

  (*(v95 + 8))(v64, v96);
  (*(v87 + 8))(v72, v88);
  return v77;
}

uint64_t UtilityRateInfoError.tileText.getter()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108(v5, 0, 0, v6, v2, "Error occured and no data was retrieved", 39, 2);
}

HomeEnergyUI::UtilityRateInfoError_optional __swiftcall UtilityRateInfoError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_20D96EE98()
{
  v1 = *v0;
  v2 = 0x724520726568744FLL;
  if (v1 == 4)
  {
    v2 = 0xD000000000000016;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000013;
  v4 = 0xD00000000000001DLL;
  if (v1 != 1)
  {
    v4 = 0xD000000000000021;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20D96EF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D971664();
  v5 = sub_20D7DDF10();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

void sub_20D96EFC0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20D973158();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CAC0, &unk_20D980E30);
  v6 = sub_20D975648();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20D9716B8(&qword_27C839F40, MEMORY[0x277D180E0], MEMORY[0x277D180F0]);
      v21 = sub_20D974F78();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20D96F31C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395F8, &qword_20D979400);
  v4 = sub_20D975648();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_20D975888();
      MEMORY[0x20F323A50](v17);
      v18 = sub_20D9758A8();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_20D96F56C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839628, &qword_20D9794D0);
  v4 = sub_20D975648();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_20D975888();
      sub_20D975158();
      v21 = sub_20D9758A8();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_20D96F7CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CAB0, &qword_20D980E28);
  v4 = sub_20D975648();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_20D975878();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

uint64_t sub_20D96F9F0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_20D973158();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D96EFC0(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_20D970080();
      goto LABEL_12;
    }

    sub_20D970694(v10 + 1);
  }

  v12 = *v3;
  sub_20D9716B8(&qword_27C839F40, MEMORY[0x277D180E0], MEMORY[0x277D180F0]);
  v13 = sub_20D974F78();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_20D9716B8(&qword_27C839F48, MEMORY[0x277D180E0], MEMORY[0x277D180F8]);
      v21 = sub_20D974FD8();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20D9757E8();
  __break(1u);
  return result;
}

void sub_20D96FC94(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D96F31C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_20D9702B8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_20D9709B0(v5 + 1);
  }

  v8 = *v3;
  sub_20D975888();
  MEMORY[0x20F323A50](v4);
  v9 = sub_20D9758A8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20D9757E8();
  __break(1u);
}

void sub_20D96FDE0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_20D96F56C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_20D9703F8();
      goto LABEL_16;
    }

    sub_20D970BD0(v8 + 1);
  }

  v10 = *v4;
  sub_20D975888();
  sub_20D975158();
  v11 = sub_20D9758A8();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_20D9757C8() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_20D9757E8();
  __break(1u);
}

void sub_20D96FF60(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D96F7CC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_20D970554();
      a2 = v7;
      goto LABEL_12;
    }

    sub_20D970E08(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_20D975878();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20D9757E8();
  __break(1u);
}

void sub_20D970080()
{
  v1 = v0;
  v2 = sub_20D973158();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CAC0, &unk_20D980E30);
  v6 = *v0;
  v7 = sub_20D975638();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_20D9702B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395F8, &qword_20D979400);
  v2 = *v0;
  v3 = sub_20D975638();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_20D9703F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839628, &qword_20D9794D0);
  v2 = *v0;
  v3 = sub_20D975638();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_20D970554()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CAB0, &qword_20D980E28);
  v2 = *v0;
  v3 = sub_20D975638();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_20D970694(uint64_t a1)
{
  v2 = v1;
  v34 = sub_20D973158();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CAC0, &unk_20D980E30);
  v7 = sub_20D975648();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_20D9716B8(&qword_27C839F40, MEMORY[0x277D180E0], MEMORY[0x277D180F0]);
      v21 = sub_20D974F78();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_20D9709B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395F8, &qword_20D979400);
  v4 = sub_20D975648();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_20D975888();
      MEMORY[0x20F323A50](v16);
      v17 = sub_20D9758A8();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_20D970BD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839628, &qword_20D9794D0);
  v4 = sub_20D975648();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_20D975888();

      sub_20D975158();
      v20 = sub_20D9758A8();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_20D970E08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CAB0, &qword_20D980E28);
  v4 = sub_20D975648();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_20D975878();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void (*sub_20D970FF8(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_20D9712D8(v5);
  v5[9] = sub_20D9710FC(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_20D97109C;
}

void sub_20D97109C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_20D9710FC(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_20D8D4AC0(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_20D8D65C4();
      v11 = v19;
      goto LABEL_11;
    }

    sub_20D909670(v16, a3 & 1);
    v11 = sub_20D8D4AC0(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_20D9757F8();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_20D971244;
}

void sub_20D971244(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_20D8D5944(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    sub_20D8D4E40(v1[3], *v1[2]);
  }

  free(v1);
}

uint64_t (*sub_20D9712D8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_20D971300;
}

uint64_t sub_20D97130C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA40, &qword_20D980AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20D97138C()
{
  result = qword_27C83CA78;
  if (!qword_27C83CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83CA78);
  }

  return result;
}

unint64_t sub_20D9713E4()
{
  result = qword_27C83CA80;
  if (!qword_27C83CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83CA80);
  }

  return result;
}

unint64_t sub_20D97143C()
{
  result = qword_27C83CA88;
  if (!qword_27C83CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83CA88);
  }

  return result;
}

void sub_20D9714D8(uint64_t a1)
{
  sub_20D7FBFB4(319, &qword_281124C28, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_20D972628();
    if (v2 <= 0x3F)
    {
      sub_20D972838();
      if (v3 <= 0x3F)
      {
        sub_20D7FBFB4(319, &qword_281126A00, &type metadata for RatePlanType);
        if (v4 <= 0x3F)
        {
          sub_20D7FBFB4(319, qword_281126738, &type metadata for UtilityRateInfoError);
          if (v5 <= 0x3F)
          {
            sub_20D9715FC(319);
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

void sub_20D9715FC(uint64_t a1)
{
  if (!qword_281124BF0)
  {
    sub_20D973158();
    v1 = sub_20D975288();
    if (!v2)
    {
      atomic_store(v1, &qword_281124BF0);
    }
  }
}

unint64_t sub_20D971664()
{
  result = qword_27C83CA98;
  if (!qword_27C83CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83CA98);
  }

  return result;
}

uint64_t sub_20D9716B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27C840BB8 == -1)
  {
    if (qword_27C840BC0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27C840BC0)
    {
      return _availability_version_check();
    }
  }

  if (qword_27C840BB0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27C840BA4 > a3)
      {
        return 1;
      }

      if (dword_27C840BA4 >= a3)
      {
        return dword_27C840BA8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27C840BC0;
  if (qword_27C840BC0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27C840BC0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x20F323BE0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27C840BA4, &dword_27C840BA8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}