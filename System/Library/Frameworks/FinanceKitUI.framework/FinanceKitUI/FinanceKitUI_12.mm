double sub_238555798@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v100 = a2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E098, &qword_23876EF18);
  v104 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v91 = &v80 - v3;
  v4 = sub_23875B940();
  v5 = *(v4 - 8);
  v95 = v4;
  v96 = v5;
  MEMORY[0x28223BE20](v4);
  v89 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v9 - 8);
  v93 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v94 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E0A0, &qword_23876EF20);
  MEMORY[0x28223BE20](v13 - 8);
  v98 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v103 = &v80 - v16;
  v17 = sub_2387591F0();
  v86 = *(v17 - 8);
  v87 = v17;
  MEMORY[0x28223BE20](v17);
  v85 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_23875BE20();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23875BC40();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v92 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v23 - 8);
  v88 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v80 - v26;
  sub_23875ED50();
  v97 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v29 = v28[7];
  sub_23843981C(a1 + v29, v27, &qword_27DF12E00, &unk_238763FC0);
  v84 = v21;
  v30 = *(v21 + 48);
  v31 = v20;
  v32 = v30(v27, 1, v20);
  v33 = a1;
  v34 = v32;
  sub_238439884(v27, &qword_27DF12E00, &unk_238763FC0);
  if (v34 == 1)
  {
    v35 = 0;
    v36 = 0;
    v101 = 0;
    v102 = 0;
    v37 = v33;
    goto LABEL_12;
  }

  v38 = *(v33 + v28[8]);
  v37 = v33;
  if (v38 == 2 || (v38 & 1) == 0)
  {
    goto LABEL_11;
  }

  v35 = 0;
  v39 = v33 + v28[10];
  if (*(v39 + 8))
  {
    v36 = 0;
    v101 = 0;
    v102 = 0;
  }

  else
  {
    v40 = *v39;
    v36 = 0;
    v101 = 0;
    v102 = 0;
    if (v40 < 1)
    {
      goto LABEL_12;
    }

    v41 = v88;
    sub_23843981C(v37 + v29, v88, &qword_27DF12E00, &unk_238763FC0);
    v42 = v31;
    if (v30(v41, 1, v31) == 1)
    {
      sub_238439884(v41, &qword_27DF12E00, &unk_238763FC0);
LABEL_11:
      v35 = 0;
      v36 = 0;
      v101 = 0;
      v102 = 0;
      goto LABEL_12;
    }

    v65 = v84;
    v66 = v92;
    (*(v84 + 32))(v92, v41, v31);
    type metadata accessor for OrderDetailsReturnInfoSection_iOS(0);
    v67 = v81;
    sub_2384D5588(v81);
    v35 = sub_238554904(v67, v66);
    v36 = v68;
    (*(v82 + 8))(v67, v83);
    v102 = "nfoSection.swift";
    v69 = *MEMORY[0x277CC77C8];
    v70 = v86;
    v71 = *(v86 + 104);
    v88 = v42;
    v72 = v40;
    v73 = v85;
    v74 = v87;
    v71(v85, v69, v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v75 = swift_allocObject();
    v76 = MEMORY[0x277D83B88];
    *(v75 + 16) = xmmword_2387632F0;
    v77 = MEMORY[0x277D83C10];
    *(v75 + 56) = v76;
    *(v75 + 64) = v77;
    *(v75 + 32) = v72;
    v78 = sub_238758A50();
    v101 = v79;
    v102 = v78;

    (*(v70 + 8))(v73, v74);
    (*(v65 + 8))(v92, v88);
  }

LABEL_12:
  if (*(v37 + v28[9]))
  {
    v43 = 1;
    v44 = v99;
  }

  else
  {
    v45 = v28[6];
    v92 = v36;
    v46 = v35;
    v47 = v94;
    sub_23843981C(v37 + v45, v94, &qword_27DF0D040, &qword_2387676A0);
    v48 = v95;
    v88 = v37;
    v49 = *(v96 + 48);
    v43 = 1;
    v50 = v49(v47, 1, v95);
    v51 = v47;
    v35 = v46;
    v36 = v92;
    sub_238439884(v51, &qword_27DF0D040, &qword_2387676A0);
    v52 = v50 == 1;
    v44 = v99;
    if (!v52)
    {
      v53 = v93;
      sub_23843981C(v88 + v45, v93, &qword_27DF0D040, &qword_2387676A0);
      if (v49(v53, 1, v48) == 1)
      {
        sub_238439884(v53, &qword_27DF0D040, &qword_2387676A0);
      }

      else
      {
        v54 = v96;
        v55 = v90;
        (*(v96 + 32))(v90, v53, v48);
        (*(v54 + 16))(v89, v55, v48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E0B0, &unk_23876EF30);
        sub_23843A3E8(&qword_27DF0E0B8, &qword_27DF0E0B0, &unk_23876EF30, MEMORY[0x277CE1138]);
        v56 = v48;
        v57 = v91;
        sub_23875D9A0();
        (*(v54 + 8))(v55, v56);
        (*(v104 + 32))(v103, v57, v44);
        v43 = 0;
      }

      v36 = v92;
    }
  }

  v58 = v103;
  (*(v104 + 56))(v103, v43, 1, v44);
  v59 = v98;
  sub_23843981C(v58, v98, &qword_27DF0E0A0, &qword_23876EF20);
  v60 = v100;
  v61 = v101;
  *v100 = v35;
  v60[1] = v36;
  v62 = v102;
  v60[2] = v102;
  v60[3] = v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E0A8, &qword_23876EF28);
  sub_23843981C(v59, v60 + *(v63 + 48), &qword_27DF0E0A0, &qword_23876EF20);
  sub_2385570E8(v35, v36, v62, v61);
  sub_238439884(v58, &qword_27DF0E0A0, &qword_23876EF20);
  sub_238439884(v59, &qword_27DF0E0A0, &qword_23876EF20);
  sub_23855712C(v35, v36, v62, v61);

  return result;
}

__n128 sub_2385561C8@<Q0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875CE60();
  v16 = 1;
  sub_2385562AC(&v10);

  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  result = v10;
  v9 = v16;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  return result;
}

double sub_2385562AC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2387591F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v3 + 104))(v5, *MEMORY[0x277CC77C8], v2);
  v6 = sub_238758A40();
  v8 = v7;
  v9 = (*(v3 + 8))(v5, v2);
  v20[0] = v6;
  v20[1] = v8;
  sub_2384397A8(v9, v10, v11);
  v12 = sub_23875DAA0();
  v14 = v13;
  LOBYTE(v6) = v15;
  v17 = v16;
  v18 = sub_23875E0D0();
  *a1 = v12;
  *(a1 + 8) = v14;
  LOBYTE(v6) = v6 & 1;
  *(a1 + 16) = v6;
  *(a1 + 24) = v17;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v18;
  sub_23843980C(v12, v14, v6);

  sub_2384397FC(v12, v14, v6);

  return result;
}

double sub_2385564C4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v54 = a1;
  v46 = a2;
  v43 = sub_23875B940();
  v42 = *(v43 - 1);
  MEMORY[0x28223BE20](v43);
  v41 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E0C0, &qword_23876EF40);
  v3 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E0C8, &qword_23876EF48);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  sub_23875ED50();
  v53 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v14 = v12;
  v15 = v54;
  v16 = (v54 + *(v12 + 20));
  v17 = v16[1];
  if (v17)
  {
    v60 = *v16;
    v61 = v17;
    sub_2384397A8(v12, v54, v13);

    v51 = sub_23875DAA0();
    v50 = v18;
    v20 = v19;
    v49 = v21;
    KeyPath = swift_getKeyPath(byte_23876EF60);
    v47 = sub_23875D7F0();
    v55 = swift_getKeyPath(aP_0);
    LOBYTE(v60) = v20 & 1;
    LOBYTE(v56) = 0;
    v22 = v20 & 1;
    v45 = 0;
    v23 = sub_23875D440();
    v15 = v54;
    v44 = v23;
    v24 = 2;
  }

  else
  {
    v51 = 0;
    v50 = 0;
    v49 = 0;
    KeyPath = 0;
    v24 = 0;
    v55 = 0;
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v22 = 0;
  }

  v25 = v52;
  if (*(v15 + *(v14 + 36)))
  {
    v26 = 1;
  }

  else
  {
    (*(v42 + 16))(v41);
    sub_23875D9A0();
    (*(v3 + 32))(v11, v5, v25);
    v26 = 0;
  }

  (*(v3 + 56))(v11, v26, 1, v25);
  v27 = v8;
  sub_23843981C(v11, v8, &qword_27DF0E0C8, &qword_23876EF48);
  v28 = v51;
  v29 = v50;
  *&v56 = v51;
  *(&v56 + 1) = v50;
  v30 = v49;
  *&v57 = v22;
  *(&v57 + 1) = v49;
  v52 = v22;
  v31 = KeyPath;
  *&v58 = KeyPath;
  *(&v58 + 1) = v24;
  v54 = v24;
  v32 = v45;
  *v59 = v45;
  *&v59[8] = v55;
  v33 = v27;
  v43 = v11;
  v34 = v47;
  *&v59[16] = v47;
  v35 = v44;
  *&v59[24] = v44;
  v36 = *v59;
  v37 = v46;
  v46[2] = v58;
  v37[3] = v36;
  *(v37 + 60) = *&v59[12];
  v38 = v57;
  *v37 = v56;
  v37[1] = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E0D0, &qword_23876EF50);
  sub_23843981C(v33, v37 + *(v39 + 48), &qword_27DF0E0C8, &qword_23876EF48);
  sub_23843981C(&v56, &v60, &qword_27DF0E0D8, &qword_23876EF58);
  sub_238439884(v43, &qword_27DF0E0C8, &qword_23876EF48);
  sub_238439884(v33, &qword_27DF0E0C8, &qword_23876EF48);
  v60 = v28;
  v61 = v29;
  v62 = v52;
  v63 = v30;
  v64 = v31;
  v65 = v54;
  v66 = v32;
  v67 = v55;
  v68 = v34;
  v69 = v35;
  sub_238439884(&v60, &qword_27DF0E0D8, &qword_23876EF58);

  return result;
}

void sub_238556A50(uint64_t a1@<X8>)
{
  v2 = sub_2387591F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v3 + 104))(v5, *MEMORY[0x277CC77C8], v2);
  v6 = sub_238758A40();
  v8 = v7;
  v9 = (*(v3 + 8))(v5, v2);
  v18[0] = v6;
  v18[1] = v8;
  sub_2384397A8(v9, v10, v11);
  v12 = sub_23875DAA0();
  v14 = v13;
  LOBYTE(v6) = v15;
  v17 = v16;

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v17;
}

uint64_t sub_238556C30(uint64_t a1)
{
  v2 = sub_23875BE20();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23875CCC0();
}

void sub_238556D20(uint64_t a1)
{
  type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_238556DD4(319, &qword_27DF0DC58, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238556DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_238556E38()
{
  result = qword_27DF0E030;
  if (!qword_27DF0E030)
  {
    type metadata accessor for OrderDetailsReturnInfoSection_iOS(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E030);
  }

  return result;
}

double sub_238556EAC@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_2387591F0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277CC77C8], v3, v5);
  v8 = sub_238758A40();
  v10 = v9;
  (*(v4 + 8))(v7, v3);
  sub_238554F5C(v1, v8, v10, a1);

  return result;
}

unint64_t sub_238556FEC()
{
  result = qword_27DF0E068;
  if (!qword_27DF0E068)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E058, &qword_23876EEB8);
    sub_238532714(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E068);
  }

  return result;
}

uint64_t sub_238557070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E038, &qword_23876EE98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2385570E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

double sub_23855712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_238557170()
{
  result = qword_27DF0E0E0;
  if (!qword_27DF0E0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E0E8, &qword_23876EFC0);
    sub_23843A3E8(&qword_27DF0E0F0, &qword_27DF0E0F8, &qword_23876EFC8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E0E0);
  }

  return result;
}

uint64_t InstitutionLogo.init(institution:style:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a3 + 24) = 0x3FB999999999999ALL;
  *(a3 + 32) = swift_getKeyPath(asc_23876EFD0);
  *(a3 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  *(a3 + 48) = v11;
  v6 = sub_238757B40();
  v8 = v7;
  v9 = sub_238757B60();
  result = (*(*(v9 - 8) + 8))(a1, v9);
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v5;
  return result;
}

double InstitutionLogo.init(institutionID:style:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  *(a4 + 24) = 0x3FB999999999999ALL;
  *(a4 + 32) = swift_getKeyPath(asc_23876EFD0);
  *(a4 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  result = *&v9;
  *(a4 + 48) = v9;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v7;
  return result;
}

double InstitutionLogo.body.getter@<D0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v23 = *v2;
  v24 = v4;
  v5 = v2[3];
  v25 = v2[2];
  v26 = v5;
  v6 = sub_23875D020();
  sub_238557500(&v23, v16);
  v7 = v16[0];
  v8 = v16[1];
  v9 = v17;
  sub_23875E4A0();
  sub_23875C5C0();
  v19 = 0;
  *&v18[6] = v20;
  *&v18[22] = v21;
  *&v18[38] = v22;
  v10 = swift_allocObject();
  v11 = v24;
  v10[1] = v23;
  v10[2] = v11;
  v12 = v26;
  v10[3] = v25;
  v10[4] = v12;
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E100, &qword_23876F018) + 36));
  sub_23875C6E0();
  sub_238558A88(&v23, v16);
  sub_23875ED60();
  *v13 = &unk_23876F010;
  v13[1] = v10;
  v14 = *&v18[16];
  *(a2 + 42) = *v18;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  *(a2 + 58) = v14;
  result = *&v18[32];
  *(a2 + 74) = *&v18[32];
  *(a2 + 88) = *&v18[46];
  return result;
}

void sub_238557500(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875E0E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1B0();
  if (v12)
  {
    v8 = v12;
    sub_23875E0C0();
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v9 = sub_23875E150();

    (*(v5 + 8))(v7, v4);

    v10 = 1;
  }

  else
  {

    v9 = 0;
    v10 = 0;
  }

  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
}

uint64_t sub_2385576EC(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_23875CDB0();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_23875ED50();
  v1[9] = sub_23875ED40();
  v4 = sub_23875ECE0();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x2822009F8](sub_2385577E0, v4, v3);
}

uint64_t sub_2385577E0()
{
  v1 = *(v0 + 40);
  *(v0 + 96) = [objc_allocWithZone(type metadata accessor for BankConnectImageProvider()) init];
  v2 = *(v1 + 16);
  v3 = *(v0 + 40);
  v4 = *(v3 + 40);
  *(v0 + 16) = *(v3 + 32);
  v5 = *&qword_23876F210[v2];
  *(v0 + 24) = v4;
  if (v4 == 1)
  {
    v6 = *(v0 + 16);
  }

  else
  {
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);

    sub_23875EFF0();
    v10 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_238439884(v0 + 16, &qword_27DF0E148, &unk_23876F140);
    (*(v8 + 8))(v7, v9);
    v6 = *(v0 + 32);
    v3 = *(v0 + 40);
  }

  v11 = *v3;
  v12 = *(v3 + 8);
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_2385579AC;

  return BankConnectImageProvider.logo(for:size:scale:)(v11, v12, v5, v5, v6);
}

uint64_t sub_2385579AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  *(*v1 + 112) = a1;

  v4 = *(v2 + 88);
  v5 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_238557AF4, v5, v4);
}

uint64_t sub_238557AF4()
{
  v1 = v0[14];

  if (v1)
  {
    v2 = v0[14];
    v3 = v0[5];
    sub_23875E4E0();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    sub_23875C6F0();
  }

  v5 = v0[1];

  return v5();
}

double sub_238557BDC(uint64_t a1, void *a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1C0();

  return result;
}

uint64_t sub_238557CBC@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = sub_23875E0E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E130, &qword_23876F128);
  MEMORY[0x28223BE20](v37);
  v7 = &v35 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E138, &unk_23876F130);
  MEMORY[0x28223BE20](v38);
  v9 = &v35 - v8;
  v10 = sub_23875C980();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  v14 = qword_23876F240[v13];
  v16 = *(v15 + 28);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_23875CF50();
  (*(*(v18 - 8) + 104))(&v12[v16], v17, v18);
  *v12 = v14;
  *(v12 + 1) = v14;
  LOBYTE(v49) = v13;
  sub_238558208();
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v19 = qword_2814F1B90;
  sub_23875E170();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v36 = sub_23875E150();

  (*(v3 + 8))(v5, v2);
  v35 = sub_23875E040();
  sub_23875E4A0();
  sub_23875C9C0();
  v47 = 1;
  sub_23875E010();
  v20 = sub_23875E060();

  v21 = [objc_opt_self() systemWhiteColor];
  v22 = sub_23875DFB0();
  v23 = sub_23875D780();
  sub_23875E4A0();
  sub_23875C5C0();
  *&v48[7] = v49;
  *&v48[23] = v50;
  *&v48[39] = v51;
  v24 = &v7[*(v37 + 36)];
  sub_23846E86C(v12, v24);
  *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)) = 256;
  v25 = v45;
  *(v7 + 6) = v44;
  *(v7 + 7) = v25;
  *(v7 + 8) = v46;
  v26 = v41;
  *(v7 + 2) = v40;
  *(v7 + 3) = v26;
  v27 = v43;
  *(v7 + 4) = v42;
  *(v7 + 5) = v27;
  *(v7 + 152) = xmmword_2387657B0;
  *(v7 + 185) = *v48;
  v28 = *&v48[32];
  *(v7 + 201) = *&v48[16];
  *v7 = v36;
  *(v7 + 1) = 0;
  *(v7 + 8) = 1;
  *(v7 + 3) = v35;
  *(v7 + 18) = v20;
  *(v7 + 21) = 0x4000000000000000;
  *(v7 + 22) = v22;
  v7[184] = v23;
  *(v7 + 217) = v28;
  *(v7 + 29) = *&v48[47];
  v29 = sub_23875E4A0();
  v31 = v30;
  v32 = &v9[*(v38 + 36)];
  sub_2385586B4(v12, v13, v32);
  v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A430, &unk_238768E20) + 36));
  *v33 = v29;
  v33[1] = v31;
  sub_2384396E4(v7, v9, &qword_27DF0E130, &qword_23876F128);
  sub_2384396E4(v9, v39, &qword_27DF0E138, &unk_23876F130);
  return sub_23846E8D0(v12);
}

unint64_t sub_238558208()
{
  v0 = 0xD000000000000013;
  v1 = sub_23875BD20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E140, &unk_238775000);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  sub_23875BCD0();
  sub_23875BD10();
  (*(v2 + 8))(v4, v1);
  v8 = sub_23875BD00();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_238439884(v7, &qword_27DF0E140, &unk_238775000);
  }

  else
  {
    v10 = sub_23875BCE0();
    v12 = v11;
    (*(v9 + 8))(v7, v8);
    v13 = v10 == 4477781 && v12 == 0xE300000000000000;
    if (!v13 && (sub_23875F630() & 1) == 0)
    {
      v14 = v10 == 4475720 && v12 == 0xE300000000000000;
      if (!v14 && (sub_23875F630() & 1) == 0)
      {
        v15 = v10 == 4478273 && v12 == 0xE300000000000000;
        if (!v15 && (sub_23875F630() & 1) == 0 && (v10 != 4473155 || v12 != 0xE300000000000000) && (sub_23875F630() & 1) == 0 && (v10 != 4479566 || v12 != 0xE300000000000000) && (sub_23875F630() & 1) == 0)
        {
          if (v10 == 5395781 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
          {

            return 0xD000000000000011;
          }

          if (v10 == 5853258 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v10 == 5852739 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v10 == 5722699 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
          {

            return 0xD000000000000010;
          }

          if (v10 == 5259847 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v10 == 5393993 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
          {

            return 0xD000000000000012;
          }
        }
      }
    }
  }

  return v0;
}

void sub_2385586B4(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
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
  sub_23846E86C(a1, v12);
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

uint64_t sub_2385589F4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2384494A4;

  return sub_2385576EC(v0 + 16);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_238558AFC(uint64_t a1, int a2)
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

uint64_t sub_238558B44(uint64_t result, int a2, int a3)
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

unint64_t sub_238558BA4()
{
  result = qword_27DF0E108;
  if (!qword_27DF0E108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E100, &qword_23876F018);
    sub_238558C30();
    sub_238464898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E108);
  }

  return result;
}

unint64_t sub_238558C30()
{
  result = qword_27DF0E110;
  if (!qword_27DF0E110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E118, &qword_23876F118);
    sub_23843A3E8(&qword_27DF0E120, &qword_27DF0E128, &qword_23876F120, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E110);
  }

  return result;
}

unint64_t sub_238558D30()
{
  result = qword_27DF0E150;
  if (!qword_27DF0E150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E138, &unk_23876F130);
    sub_238558DE8();
    sub_23843A3E8(&qword_27DF0A4A0, &qword_27DF0A430, &unk_238768E20, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E150);
  }

  return result;
}

unint64_t sub_238558DE8()
{
  result = qword_27DF0E158;
  if (!qword_27DF0E158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E130, &qword_23876F128);
    sub_238558EA0();
    sub_23843A3E8(&qword_27DF09AD0, &qword_27DF09A88, &qword_238764220, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E158);
  }

  return result;
}

unint64_t sub_238558EA0()
{
  result = qword_27DF0E160;
  if (!qword_27DF0E160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E168, &qword_23876F1D8);
    sub_238558F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E160);
  }

  return result;
}

unint64_t sub_238558F2C()
{
  result = qword_27DF0E170;
  if (!qword_27DF0E170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E178, &qword_23876F1E0);
    sub_238558FE4();
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E170);
  }

  return result;
}

unint64_t sub_238558FE4()
{
  result = qword_27DF0E180;
  if (!qword_27DF0E180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E188, &qword_23876F1E8);
    sub_238559070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E180);
  }

  return result;
}

unint64_t sub_238559070()
{
  result = qword_27DF0E190;
  if (!qword_27DF0E190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E198, &qword_23876F1F0);
    sub_2385590FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E190);
  }

  return result;
}

unint64_t sub_2385590FC()
{
  result = qword_27DF0E1A0;
  if (!qword_27DF0E1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E1A8, &qword_23876F1F8);
    sub_238464BD4();
    sub_23843A3E8(&qword_27DF0A490, &qword_27DF0A498, &qword_23876AB20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E1A0);
  }

  return result;
}

uint64_t type metadata accessor for OrderDetailsBarcodeButton(uint64_t a1)
{
  result = qword_27DF0E1B0;
  if (!qword_27DF0E1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238559228(uint64_t a1)
{
  type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2385592FC(319, &qword_27DF0A0B0, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_2385592FC(319, &qword_2814F09A0, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2385592FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23855936C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v56 = sub_23875CDB0();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for OrderLargeBlackButtonStyle(0);
  MEMORY[0x28223BE20](v68);
  v62 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = type metadata accessor for OrderDetailsBarcodeButton(0);
  v5 = *(v70 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v70);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E1C0, &qword_23876F318);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v59 = &v54 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E1C8, &unk_23876F320);
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v63 = &v54 - v11;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v12 = qword_2814F1B90;
  v13 = sub_23875EA50();
  v14 = sub_23875EA50();
  v15 = sub_23875EA50();
  v16 = [v12 localizedStringForKey:v13 value:v14 table:v15];

  v17 = sub_23875EA80();
  v19 = v18;

  v71 = v17;
  v72 = v19;
  sub_23855A5A4(v2, &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetailsBarcodeButton);
  v20 = *(v5 + 80);
  v21 = v2;
  v22 = (v20 + 16) & ~v20;
  v23 = swift_allocObject();
  v24 = sub_23855A14C(&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  sub_2384397A8(v24, v25, v26);
  sub_23875E230();
  v27 = *(v70 + 20);
  v58 = v21;
  v28 = (v21 + v27);
  v29 = *v28;
  v30 = *(v28 + 1);
  v75 = v29;
  v76 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  sub_23855A5A4(v21, &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetailsBarcodeButton);
  v31 = swift_allocObject();
  sub_23855A14C(&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v22);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E1D0, &qword_23876F330);
  v52 = sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
  v53 = sub_23843A3E8(&qword_27DF0E1D8, &qword_27DF0E1D0, &qword_23876F330, MEMORY[0x277CDDA18]);
  v32 = v59;
  v33 = v61;
  sub_23875DED0();

  (*(v60 + 8))(v9, v33);
  KeyPath = swift_getKeyPath(aH_1);
  v35 = v62;
  *v62 = KeyPath;
  *(v35 + 8) = 0;
  v36 = v68;
  v37 = *(v68 + 20);
  *(v35 + v37) = swift_getKeyPath(asc_23876F368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v71 = v33;
  v72 = v57;
  v73 = v52;
  v74 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = sub_23855A8DC(&qword_27DF0E1E0, type metadata accessor for OrderLargeBlackButtonStyle, &unk_2387837DC);
  v40 = v63;
  v41 = v66;
  sub_23875DB40();
  sub_23855A540(v35);
  (*(v64 + 8))(v32, v41);
  v71 = v41;
  v72 = v36;
  v73 = OpaqueTypeConformance2;
  v74 = v39;
  swift_getOpaqueTypeConformance2();
  v42 = v69;
  v43 = v67;
  sub_23875DE00();
  (*(v65 + 8))(v40, v43);
  v44 = v58 + *(v70 + 24);
  v45 = *v44;
  if (*(v44 + 8) != 1)
  {

    sub_23875EFF0();
    v46 = sub_23875D730();
    sub_23875C110();

    v47 = v54;
    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v45, 0);
    (*(v55 + 8))(v47, v56);
    LOBYTE(v45) = v71;
  }

  v48 = swift_getKeyPath(byte_23876F3A0);
  v49 = swift_allocObject();
  *(v49 + 16) = v45 & 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E1E8, &qword_23876F3D0);
  v51 = (v42 + *(result + 36));
  *v51 = v48;
  v51[1] = sub_238477BAC;
  v51[2] = v49;
  return result;
}

void sub_238559C1C(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for OrderDetailsBarcodeButton(0) + 20));
  v3 = *v2;
  v4 = *(v2 + 1);
  LOBYTE(v20[0]) = v3;
  v20[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v6 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_2384FBFBC(inited + 32);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_238763300;
  v8 = *MEMORY[0x277D383D8];
  *(v7 + 32) = *MEMORY[0x277D383D8];
  *(v7 + 40) = sub_23875EA80();
  *(v7 + 48) = v9;
  v10 = *MEMORY[0x277D38390];
  *(v7 + 56) = *MEMORY[0x277D38390];
  *(v7 + 64) = 0x65646F63726162;
  v11 = *MEMORY[0x277D384B8];
  *(v7 + 72) = 0xE700000000000000;
  *(v7 + 80) = v11;
  strcpy((v7 + 88), "orderDetails");
  *(v7 + 101) = 0;
  *(v7 + 102) = -5120;
  v12 = v8;
  v13 = v10;
  v14 = v11;
  v15 = sub_23854B138(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20[0] = v15;
  sub_2385C33E4(v6, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v20);

  v17 = *MEMORY[0x277D38548];
  v18 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23855A8DC(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v19 = sub_23875E910();

  [v18 subject:v17 sendEvent:v19];
}

double sub_238559F64(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  type metadata accessor for OrderDetailsPickupBarcodeSheet(0);
  sub_23855A8DC(&qword_27DF0E1F0, type metadata accessor for OrderDetailsPickupBarcodeSheet, &unk_238770FFC);
  sub_23875C8F0();

  return result;
}

double sub_23855A088@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23855A5A4(a1, a2, type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel);

  return result;
}

uint64_t sub_23855A14C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsBarcodeButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23855A1B0()
{
  v1 = *(type metadata accessor for OrderDetailsBarcodeButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_238559C1C(v2);
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for OrderDetailsBarcodeButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
  v7 = v6[5];
  v8 = sub_23875B290();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  v9 = v6[7];
  v10 = sub_23875AEB0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v6[8];
  v13 = sub_23875B1D0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = v5 + v6[11];

  v16 = *(type metadata accessor for MerchantImage.ViewModel(0) + 20);
  v17 = sub_23875AF90();
  (*(*(v17 - 8) + 8))(v15 + v16, v17);

  sub_2384348B8(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_23855A4D0()
{
  v1 = *(type metadata accessor for OrderDetailsBarcodeButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_238559F64(v2);
}

uint64_t sub_23855A540(uint64_t a1)
{
  v2 = type metadata accessor for OrderLargeBlackButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23855A5A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_23855A60C()
{
  result = qword_27DF0E1F8;
  if (!qword_27DF0E1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E1E8, &qword_23876F3D0);
    sub_23855A6C4();
    sub_23843A3E8(&qword_27DF0A858, &qword_27DF0A860, &qword_238768810, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E1F8);
  }

  return result;
}

unint64_t sub_23855A6C4()
{
  result = qword_27DF0E200;
  if (!qword_27DF0E200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E208, &unk_23876F3D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E1C0, &qword_23876F318);
    type metadata accessor for OrderLargeBlackButtonStyle(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12E30, &unk_238765430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E1D0, &qword_23876F330);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
    sub_23843A3E8(&qword_27DF0E1D8, &qword_27DF0E1D0, &qword_23876F330, MEMORY[0x277CDDA18]);
    swift_getOpaqueTypeConformance2();
    sub_23855A8DC(&qword_27DF0E1E0, type metadata accessor for OrderLargeBlackButtonStyle, &unk_2387837DC);
    swift_getOpaqueTypeConformance2();
    sub_23855A8DC(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E200);
  }

  return result;
}

uint64_t sub_23855A8DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23855A96C(uint64_t a1)
{
  sub_23875B940();
  if (v1 <= 0x3F)
  {
    sub_238561900(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_238561950(319, &qword_2814F1160, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

BOOL sub_23855AA78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  sub_23843981C(v0 + v7[9], v6, &qword_27DF0D040, &qword_2387676A0);
  v8 = sub_23875B940();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) == 1)
  {
    sub_238439884(v6, &qword_27DF0D040, &qword_2387676A0);
    v37 = 0u;
    v38 = 0u;
  }

  else
  {
    *(&v38 + 1) = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
    (*(v9 + 32))(boxed_opaque_existential_1, v6, v8);
  }

  sub_23843981C(v0 + v7[8], v3, &qword_27DF0D040, &qword_2387676A0);
  if (v10(v3, 1, v8) == 1)
  {
    sub_238439884(v3, &qword_27DF0D040, &qword_2387676A0);
    v39 = 0u;
    v40 = 0u;
  }

  else
  {
    *(&v40 + 1) = v8;
    v12 = __swift_allocate_boxed_opaque_existential_1(&v39);
    (*(v9 + 32))(v12, v3, v8);
  }

  v13 = (v0 + v7[7]);
  v14 = v13[1];
  if (v14)
  {
    v15 = *v13;
    v16 = MEMORY[0x277D837D0];
    v17 = v14;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v16 = 0;
    v43 = 0;
  }

  v41 = v15;
  v42 = v17;
  v44 = v16;
  v18 = (v0 + v7[10]);
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
    v21 = MEMORY[0x277D837D0];
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v47 = 0;
  }

  v45 = v20;
  v46 = v19;
  v48 = v21;

  v22 = MEMORY[0x277D84F90];
  for (i = 32; i != 160; i += 32)
  {
    sub_23843981C(&v36[i], &v33, &qword_27DF0A4A8, &qword_238767840);
    if (*(&v34 + 1))
    {
      v31 = v33;
      v32 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2385FEDCC(0, *(v22 + 16) + 1, 1);
        v22 = v35;
      }

      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2385FEDCC((v25 > 1), v26 + 1, 1);
        v22 = v35;
      }

      *(v22 + 16) = v26 + 1;
      v27 = v22 + 32 * v26;
      v28 = v32;
      *(v27 + 32) = v31;
      *(v27 + 48) = v28;
    }

    else
    {
      sub_238439884(&v33, &qword_27DF0A4A8, &qword_238767840);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4A8, &qword_238767840);
  swift_arrayDestroy();
  v29 = *(v22 + 16);

  return v29 > 1;
}

uint64_t sub_23855AE40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2387632F0;
  v3 = *v0;
  v2 = v0[1];
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_238448C58(v1, v4, v5);
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  v6 = qword_2814F0880;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  sub_23875EA80();
  v12 = sub_23875EAA0();

  return v12;
}

uint64_t sub_23855AFC4@<X0>(uint64_t a1@<X8>)
{
  v243 = a1;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E230, &qword_23876F4A8);
  MEMORY[0x28223BE20](v241);
  v244 = &v203 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v242 = &v203 - v4;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E238, &qword_23876F4B0);
  MEMORY[0x28223BE20](v208);
  v209 = &v203 - v5;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E240, &qword_23876F4B8);
  MEMORY[0x28223BE20](v227);
  v210 = &v203 - v6;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E248, &qword_23876F4C0);
  MEMORY[0x28223BE20](v231);
  v207 = &v203 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v205 = &v203 - v9;
  MEMORY[0x28223BE20](v10);
  v212 = &v203 - v11;
  MEMORY[0x28223BE20](v12);
  v218 = &v203 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v14 - 8);
  v214 = &v203 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v235 = &v203 - v17;
  MEMORY[0x28223BE20](v18);
  v213 = &v203 - v19;
  MEMORY[0x28223BE20](v20);
  v234 = &v203 - v21;
  v245 = sub_23875B940();
  v247 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v206 = &v203 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v204 = &v203 - v24;
  MEMORY[0x28223BE20](v25);
  v211 = &v203 - v26;
  MEMORY[0x28223BE20](v27);
  v215 = &v203 - v28;
  MEMORY[0x28223BE20](v29);
  v217 = &v203 - v30;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E250, &qword_23876F4C8);
  MEMORY[0x28223BE20](v229);
  v230 = &v203 - v31;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E258, &qword_23876F4D0);
  MEMORY[0x28223BE20](v223);
  v225 = &v203 - v32;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E260, &qword_23876F4D8);
  MEMORY[0x28223BE20](v219);
  v220 = &v203 - v33;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E268, &qword_23876F4E0);
  MEMORY[0x28223BE20](v224);
  v222 = &v203 - v34;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E270, &qword_23876F4E8);
  MEMORY[0x28223BE20](v228);
  v226 = &v203 - v35;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E278, &qword_23876F4F0);
  v216 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v233 = &v203 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E280, &qword_23876F4F8);
  MEMORY[0x28223BE20](v37 - 8);
  v240 = &v203 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v239 = &v203 - v40;
  v41 = sub_23875CDB0();
  v42 = *(v41 - 8);
  v254 = v41;
  v255 = v42;
  MEMORY[0x28223BE20](v41);
  v253 = &v203 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for OrderDetailsContactSection(0);
  v45 = v44 - 8;
  v46 = *(v44 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E288, &qword_23876F500);
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v51 = &v203 - v50;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E290, &qword_23876F508);
  MEMORY[0x28223BE20](v232);
  v238 = &v203 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v55 = &v203 - v54;
  sub_2385619D0(v1, &v203 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = *(v46 + 80);
  v57 = (v56 + 16) & ~v56;
  v249 = v57 + v47;
  v250 = v56;
  v58 = swift_allocObject();
  v251 = v57;
  v252 = &v203 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238561A34(v252, v58 + v57);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E0B0, &unk_23876EF30);
  v60 = sub_23843A3E8(&qword_27DF0E0B8, &qword_27DF0E0B0, &unk_23876EF30, MEMORY[0x277CE1138]);
  v237 = v59;
  v236 = v60;
  sub_23875E200();
  sub_23843A3E8(&qword_27DF0E298, &qword_27DF0E288, &qword_23876F500, MEMORY[0x277CDF028]);
  v256 = v55;
  sub_23875DE00();
  (*(v49 + 8))(v51, v48);
  v61 = *(v45 + 28);
  v257 = v1;
  v62 = v1 + v61;
  v63 = *v62;
  v64 = *(v62 + 8);
  v248 = *v62;
  if (v64 == 1)
  {
    v65 = v63;
    v66 = v253;
  }

  else
  {

    sub_23875EFF0();
    v67 = sub_23875D730();
    sub_23875C110();

    v66 = v253;
    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v63, 0);
    (*(v255 + 8))(v66, v254);
    v65 = v258;
  }

  KeyPath = swift_getKeyPath(byte_23876F510);
  v69 = swift_allocObject();
  *(v69 + 16) = v65 & 1;
  v70 = &v256[*(v232 + 36)];
  *v70 = KeyPath;
  v70[1] = sub_238477BAC;
  v70[2] = v69;
  v71 = sub_23855AA78();
  v72 = v235;
  v73 = v234;
  v246 = v64;
  if (!v71)
  {
    v90 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
    sub_23843981C(v257 + v90[8], v73, &qword_27DF0D040, &qword_2387676A0);
    v91 = v247;
    v92 = *(v247 + 48);
    v93 = v245;
    v94 = v92(v73, 1, v245);
    v95 = v73;
    v96 = v255;
    if (v94 != 1)
    {
      v113 = v217;
      (*(v91 + 32))(v217, v95, v93);
      v114 = (*(v91 + 16))(v215, v113, v93);
      MEMORY[0x28223BE20](v114);
      *(&v203 - 16) = 0;
      v115 = v218;
      sub_23875D9A0();
      v116 = v252;
      sub_2385619D0(v257, v252);
      v117 = v249;
      v118 = swift_allocObject();
      sub_238561A34(v116, v118 + v251);
      *(v118 + v117) = 0;
      v119 = swift_getKeyPath(aX_4);
      v120 = swift_allocObject();
      *(v120 + 16) = sub_238562714;
      *(v120 + 24) = v118;
      v121 = &v115[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B0, &qword_23876F580) + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B8, &qword_23876F588);
      sub_23875C6C0();
      *v121 = v119;
      if (v64)
      {
        v122 = v248;
      }

      else
      {
        v123 = v248;

        sub_23875EFF0();
        v124 = sub_23875D730();
        sub_23875C110();

        sub_23875CDA0();
        swift_getAtKeyPath();
        sub_2384348B8(v123, 0);
        (*(v96 + 8))(v66, v254);
        v122 = v258;
      }

      v125 = swift_getKeyPath(byte_23876F510);
      v126 = swift_allocObject();
      *(v126 + 16) = v122 & 1;
      v127 = v218;
      v128 = &v218[*(v231 + 36)];
      *v128 = v125;
      v128[1] = sub_238562718;
      v128[2] = v126;
      sub_23843981C(v127, v220, &qword_27DF0E248, &qword_23876F4C0);
      swift_storeEnumTagMultiPayload();
      v129 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E2D0, &qword_23876F590);
      v130 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E2D8, &unk_23876F598);
      v131 = sub_238561FA0();
      v134 = sub_2384397A8(v131, v132, v133);
      v135 = sub_23843A3E8(&qword_27DF0E2E8, &qword_27DF0E2D8, &unk_23876F598, MEMORY[0x277CE14C0]);
      v258 = v129;
      v259 = MEMORY[0x277D837D0];
      v260 = v130;
      v261 = MEMORY[0x277CE0BD8];
      v262 = v131;
      v263 = v134;
      v264 = v135;
      v265 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      sub_238562084();
      v136 = v222;
      sub_23875D1B0();
      sub_23843981C(v136, v225, &qword_27DF0E268, &qword_23876F4E0);
      swift_storeEnumTagMultiPayload();
      sub_238561E48();
      sub_238562220();
      v137 = v226;
      sub_23875D1B0();
      sub_238439884(v136, &qword_27DF0E268, &qword_23876F4E0);
      sub_23843981C(v137, v230, &qword_27DF0E270, &qword_23876F4E8);
      swift_storeEnumTagMultiPayload();
      sub_238561DBC();
      v86 = v239;
      sub_23875D1B0();
      sub_238439884(v137, &qword_27DF0E270, &qword_23876F4E8);
      sub_238439884(v127, &qword_27DF0E248, &qword_23876F4C0);
      (*(v247 + 8))(v217, v245);
      v87 = 0;
      v138 = v242;
      v88 = v254;
      v89 = v255;
      v101 = v248;
      goto LABEL_35;
    }

    sub_238439884(v95, &qword_27DF0D040, &qword_2387676A0);
    v97 = (v257 + v90[7]);
    v86 = v239;
    if (v97[1])
    {
      v98 = *v97;
      v258 = 980182388;
      v259 = 0xE400000000000000;
      MEMORY[0x23EE63650](v98);
      v99 = v213;
      sub_23875B910();
      v91 = v247;

      v100 = v92(v99, 1, v93);
      v101 = v248;
      v102 = v214;
      if (v100 != 1)
      {
        v103 = v211;
        (*(v91 + 32))(v211, v99, v93);
        v104 = (*(v91 + 16))(v215, v103, v93);
        MEMORY[0x28223BE20](v104);
        *(&v203 - 16) = 2;
        v105 = v212;
        sub_23875D9A0();
        v106 = v252;
        sub_2385619D0(v257, v252);
        v107 = v249;
        v108 = swift_allocObject();
        sub_238561A34(v106, v108 + v251);
        *(v108 + v107) = 2;
        v109 = swift_getKeyPath(aX_4);
        v110 = swift_allocObject();
        *(v110 + 16) = sub_238562714;
        *(v110 + 24) = v108;
        v111 = &v105[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B0, &qword_23876F580) + 36)];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B8, &qword_23876F588);
        sub_23875C6C0();
        *v111 = v109;
        if (v246)
        {
          v112 = v101;
          v89 = v255;
        }

        else
        {

          sub_23875EFF0();
          v166 = sub_23875D730();
          sub_23875C110();

          v167 = v253;
          sub_23875CDA0();
          swift_getAtKeyPath();
          sub_2384348B8(v101, 0);
          v89 = v255;
          (*(v255 + 8))(v167, v254);
          v112 = v258;
        }

        v168 = swift_getKeyPath(byte_23876F510);
        v169 = swift_allocObject();
        *(v169 + 16) = v112 & 1;
        v170 = v212;
        v171 = &v212[*(v231 + 36)];
        *v171 = v168;
        v171[1] = sub_238562718;
        v171[2] = v169;
        sub_23843981C(v170, v209, &qword_27DF0E248, &qword_23876F4C0);
        swift_storeEnumTagMultiPayload();
        sub_238562084();
        v172 = v210;
        sub_23875D1B0();
        sub_23843981C(v172, v225, &qword_27DF0E240, &qword_23876F4B8);
        swift_storeEnumTagMultiPayload();
        sub_238561E48();
        sub_238562220();
        v173 = v226;
        sub_23875D1B0();
        sub_238439884(v172, &qword_27DF0E240, &qword_23876F4B8);
        sub_23843981C(v173, v230, &qword_27DF0E270, &qword_23876F4E8);
        swift_storeEnumTagMultiPayload();
        sub_238561DBC();
        sub_23875D1B0();
        sub_238439884(v173, &qword_27DF0E270, &qword_23876F4E8);
        sub_238439884(v170, &qword_27DF0E248, &qword_23876F4C0);
        (*(v247 + 8))(v211, v245);
LABEL_32:
        v87 = 0;
        v88 = v254;
        goto LABEL_33;
      }
    }

    else
    {
      v99 = v213;
      (*(v91 + 56))(v213, 1, 1, v93);
      v101 = v248;
      v102 = v214;
    }

    sub_238439884(v99, &qword_27DF0D040, &qword_2387676A0);
    v139 = (v257 + v90[10]);
    if (v139[1])
    {
      v140 = *v139;
      v258 = 0x3A6F746C69616DLL;
      v259 = 0xE700000000000000;
      MEMORY[0x23EE63650](v140);
      sub_23875B910();

      v141 = v92(v72, 1, v93);
      v89 = v255;
      if (v141 != 1)
      {
        v142 = v247;
        v143 = v204;
        (*(v247 + 32))(v204, v72, v93);
        v144 = (*(v142 + 16))(v215, v143, v93);
        MEMORY[0x28223BE20](v144);
        *(&v203 - 16) = 3;
        v145 = v205;
        sub_23875D9A0();
        v146 = v252;
        sub_2385619D0(v257, v252);
        v147 = v249;
        v148 = swift_allocObject();
        sub_238561A34(v146, v148 + v251);
        *(v148 + v147) = 3;
        v149 = swift_getKeyPath(aX_4);
        v150 = swift_allocObject();
        *(v150 + 16) = sub_238562714;
        *(v150 + 24) = v148;
        v151 = &v145[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B0, &qword_23876F580) + 36)];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B8, &qword_23876F588);
        sub_23875C6C0();
        *v151 = v149;
        if (v246)
        {
          v152 = v101;
        }

        else
        {

          sub_23875EFF0();
          v180 = sub_23875D730();
          sub_23875C110();

          v181 = v253;
          sub_23875CDA0();
          swift_getAtKeyPath();
          sub_2384348B8(v101, 0);
          (*(v89 + 8))(v181, v254);
          v152 = v258;
        }

        v182 = swift_getKeyPath(byte_23876F510);
        v183 = swift_allocObject();
        *(v183 + 16) = v152 & 1;
        v184 = v205;
        v185 = &v205[*(v231 + 36)];
        *v185 = v182;
        v185[1] = sub_238562718;
        v185[2] = v183;
        sub_23843981C(v184, v209, &qword_27DF0E248, &qword_23876F4C0);
        swift_storeEnumTagMultiPayload();
        sub_238562084();
        v186 = v210;
        sub_23875D1B0();
        sub_23843981C(v186, v225, &qword_27DF0E240, &qword_23876F4B8);
        swift_storeEnumTagMultiPayload();
        sub_238561E48();
        sub_238562220();
        v187 = v226;
        sub_23875D1B0();
        sub_238439884(v186, &qword_27DF0E240, &qword_23876F4B8);
        sub_23843981C(v187, v230, &qword_27DF0E270, &qword_23876F4E8);
        swift_storeEnumTagMultiPayload();
        sub_238561DBC();
        sub_23875D1B0();
        sub_238439884(v187, &qword_27DF0E270, &qword_23876F4E8);
        sub_238439884(v184, &qword_27DF0E248, &qword_23876F4C0);
        (*(v247 + 8))(v204, v245);
        goto LABEL_32;
      }
    }

    else
    {
      (*(v91 + 56))(v72, 1, 1, v93);
      v89 = v255;
    }

    sub_238439884(v72, &qword_27DF0D040, &qword_2387676A0);
    v153 = v257 + v90[9];
    v154 = v245;
    sub_23843981C(v153, v102, &qword_27DF0D040, &qword_2387676A0);
    if (v92(v102, 1, v154) == 1)
    {
      sub_238439884(v102, &qword_27DF0D040, &qword_2387676A0);
      v87 = 1;
    }

    else
    {
      v155 = v247;
      v156 = v206;
      (*(v247 + 32))(v206, v102, v154);
      v157 = (*(v155 + 16))(v215, v156, v154);
      MEMORY[0x28223BE20](v157);
      *(&v203 - 16) = 1;
      v158 = v207;
      sub_23875D9A0();
      v159 = v252;
      sub_2385619D0(v257, v252);
      v160 = v249;
      v161 = swift_allocObject();
      sub_238561A34(v159, v161 + v251);
      *(v161 + v160) = 1;
      v162 = swift_getKeyPath(aX_4);
      v163 = swift_allocObject();
      *(v163 + 16) = sub_238561DB0;
      *(v163 + 24) = v161;
      v164 = &v158[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B0, &qword_23876F580) + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B8, &qword_23876F588);
      sub_23875C6C0();
      *v164 = v162;
      if (v246)
      {
        v165 = v101;
      }

      else
      {

        sub_23875EFF0();
        v174 = sub_23875D730();
        sub_23875C110();

        v175 = v253;
        sub_23875CDA0();
        swift_getAtKeyPath();
        sub_2384348B8(v101, 0);
        (*(v89 + 8))(v175, v254);
        v165 = v258;
      }

      v176 = swift_getKeyPath(byte_23876F510);
      v177 = swift_allocObject();
      *(v177 + 16) = v165 & 1;
      v178 = v207;
      v179 = &v207[*(v231 + 36)];
      *v179 = v176;
      v179[1] = sub_238562718;
      v179[2] = v177;
      sub_23843981C(v178, v230, &qword_27DF0E248, &qword_23876F4C0);
      swift_storeEnumTagMultiPayload();
      sub_238561DBC();
      sub_238562084();
      sub_23875D1B0();
      sub_238439884(v178, &qword_27DF0E248, &qword_23876F4C0);
      (*(v247 + 8))(v206, v245);
      v87 = 0;
    }

    v88 = v254;
    goto LABEL_34;
  }

  v74 = v233;
  sub_23855DA28(v233);
  v75 = v216;
  v76 = v221;
  (*(v216 + 16))(v220, v74, v221);
  swift_storeEnumTagMultiPayload();
  v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E2D0, &qword_23876F590);
  v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E2D8, &unk_23876F598);
  v79 = sub_238561FA0();
  v82 = sub_2384397A8(v79, v80, v81);
  v83 = sub_23843A3E8(&qword_27DF0E2E8, &qword_27DF0E2D8, &unk_23876F598, MEMORY[0x277CE14C0]);
  v258 = v77;
  v259 = MEMORY[0x277D837D0];
  v260 = v78;
  v261 = MEMORY[0x277CE0BD8];
  v262 = v79;
  v263 = v82;
  v264 = v83;
  v265 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_238562084();
  v84 = v222;
  sub_23875D1B0();
  sub_23843981C(v84, v225, &qword_27DF0E268, &qword_23876F4E0);
  swift_storeEnumTagMultiPayload();
  sub_238561E48();
  sub_238562220();
  v85 = v226;
  sub_23875D1B0();
  sub_238439884(v84, &qword_27DF0E268, &qword_23876F4E0);
  sub_23843981C(v85, v230, &qword_27DF0E270, &qword_23876F4E8);
  swift_storeEnumTagMultiPayload();
  sub_238561DBC();
  v86 = v239;
  sub_23875D1B0();
  sub_238439884(v85, &qword_27DF0E270, &qword_23876F4E8);
  (*(v75 + 8))(v233, v76);
  v87 = 0;
  v88 = v254;
  v89 = v255;
LABEL_33:
  v101 = v248;
LABEL_34:
  v138 = v242;
LABEL_35:
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2A0, &qword_23876F540);
  (*(*(v188 - 8) + 56))(v86, v87, 1, v188);
  v189 = v252;
  sub_2385619D0(v257, v252);
  v190 = swift_allocObject();
  sub_238561A34(v189, v190 + v251);
  sub_23875E200();
  if (!v246)
  {

    sub_23875EFF0();
    v191 = sub_23875D730();
    sub_23875C110();

    v192 = v253;
    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v101, 0);
    (*(v89 + 8))(v192, v88);
    LOBYTE(v101) = v258;
  }

  v193 = swift_getKeyPath(byte_23876F510);
  v194 = swift_allocObject();
  *(v194 + 16) = v101 & 1;
  v195 = (v138 + *(v241 + 36));
  *v195 = v193;
  v195[1] = sub_238562718;
  v195[2] = v194;
  v196 = v238;
  sub_23843981C(v256, v238, &qword_27DF0E290, &qword_23876F508);
  v197 = v240;
  sub_23843981C(v86, v240, &qword_27DF0E280, &qword_23876F4F8);
  v198 = v86;
  v199 = v244;
  sub_23843981C(v138, v244, &qword_27DF0E230, &qword_23876F4A8);
  v200 = v243;
  sub_23843981C(v196, v243, &qword_27DF0E290, &qword_23876F508);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2A8, &qword_23876F548);
  sub_23843981C(v197, v200 + *(v201 + 48), &qword_27DF0E280, &qword_23876F4F8);
  sub_23843981C(v199, v200 + *(v201 + 64), &qword_27DF0E230, &qword_23876F4A8);
  sub_238439884(v138, &qword_27DF0E230, &qword_23876F4A8);
  sub_238439884(v198, &qword_27DF0E280, &qword_23876F4F8);
  sub_238439884(v256, &qword_27DF0E290, &qword_23876F508);
  sub_238439884(v199, &qword_27DF0E230, &qword_23876F4A8);
  sub_238439884(v197, &qword_27DF0E280, &qword_23876F4F8);
  return sub_238439884(v196, &qword_27DF0E290, &qword_23876F508);
}

void sub_23855D418()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = [objc_opt_self() sharedApplication];
  type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v1 = sub_23875B860();
  sub_23854BA18(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_2385626C8(&qword_27DF09138, type metadata accessor for OpenExternalURLOptionsKey, &unk_2387628B0);
  v2 = sub_23875E910();

  [v0 openURL:v1 options:v2 completionHandler:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v4 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_238763300;
  v6 = *MEMORY[0x277D383D8];
  *(v5 + 32) = *MEMORY[0x277D383D8];
  *(v5 + 40) = sub_23875EA80();
  *(v5 + 48) = v7;
  v8 = *MEMORY[0x277D38390];
  *(v5 + 56) = *MEMORY[0x277D38390];
  *(v5 + 64) = 0x724F6567616E616DLL;
  v9 = *MEMORY[0x277D384B8];
  *(v5 + 72) = 0xEB00000000726564;
  *(v5 + 80) = v9;
  strcpy((v5 + 88), "orderDetails");
  *(v5 + 101) = 0;
  *(v5 + 102) = -5120;
  v10 = v6;
  v11 = v8;
  v12 = v9;
  v13 = sub_23854B138(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v13;
  sub_2385C33E4(v4, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v18);

  v15 = *MEMORY[0x277D38548];
  v16 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385626C8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v17 = sub_23875E910();

  [v16 subject:v15 sendEvent:v17];
}

double sub_23855D82C@<D0>(uint64_t a1@<X8>)
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
  v16 = sub_23875E0D0();
  *a1 = v10;
  *(a1 + 8) = v12;
  LOBYTE(v4) = v4 & 1;
  *(a1 + 16) = v4;
  *(a1 + 24) = v15;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v16;
  sub_23843980C(v10, v12, v4);

  sub_2384397FC(v10, v12, v4);

  return result;
}

uint64_t sub_23855DA28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OrderDetailsContactSection(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2D0, &qword_23876F590);
  MEMORY[0x28223BE20](v36);
  v11 = v32 - v10;
  v38 = sub_23855AE40();
  v39 = v12;
  sub_2385619D0(v1, v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  v15 = sub_238561A34(v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v35 = sub_2384397A8(v15, v16, v17);
  sub_23875E230();
  v18 = v2 + *(v7 + 20);
  v19 = *v18;
  if (*(v18 + 8) != 1)
  {

    sub_23875EFF0();
    v20 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v19, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v19) = v38;
  }

  KeyPath = swift_getKeyPath(byte_23876F510);
  v22 = swift_allocObject();
  *(v22 + 16) = v19 & 1;
  v23 = &v11[*(v36 + 36)];
  *v23 = KeyPath;
  v23[1] = sub_238562718;
  v23[2] = v22;
  v24 = sub_23855AE40();
  v34 = v25;
  v43 = v24;
  v44 = v25;
  v26 = v2 + *(v7 + 24);
  v27 = *v26;
  v28 = *(v26 + 8);
  v41 = v27;
  v42 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  v29 = sub_23875E1D0();
  v33 = v32;
  v32[3] = v40;
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2D8, &unk_23876F598);
  sub_238561FA0();
  sub_23843A3E8(&qword_27DF0E2E8, &qword_27DF0E2D8, &unk_23876F598, MEMORY[0x277CE14C0]);
  sub_23875DCD0();

  return sub_238439884(v11, &qword_27DF0E2D0, &qword_23876F590);
}

double sub_23855DED4(uint64_t a1)
{
  v20[1] = a1;
  v21 = sub_23875C6D0();
  v1 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v20[0] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v5 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_238763300;
  v7 = *MEMORY[0x277D383D8];
  *(v6 + 32) = *MEMORY[0x277D383D8];
  *(v6 + 40) = sub_23875EA80();
  *(v6 + 48) = v8;
  v9 = *MEMORY[0x277D38390];
  *(v6 + 56) = *MEMORY[0x277D38390];
  *(v6 + 64) = 0x746E61686372656DLL;
  v10 = *MEMORY[0x277D384B8];
  *(v6 + 72) = 0xEF65746973626557;
  *(v6 + 80) = v10;
  strcpy((v6 + 88), "orderDetails");
  *(v6 + 101) = 0;
  *(v6 + 102) = -5120;
  v11 = v7;
  v12 = v9;
  v13 = v10;
  v14 = sub_23854B138(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v14;
  sub_2385C33E4(v5, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v22);

  v16 = *MEMORY[0x277D38548];
  v17 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385626C8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v18 = sub_23875E910();

  [v17 subject:v16 sendEvent:v18];

  type metadata accessor for OrderDetailsContactSection(0);
  sub_2384D51B0(v3);
  type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  sub_23875C6A0();
  (*(v1 + 8))(v3, v21);

  return result;
}

__n128 sub_23855E2EC@<Q0>(char a2@<W1>, void (*a3)(__n128 *__return_ptr)@<X2>, uint64_t a4@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_23875CE60();
  v21 = a2 & 1;
  a3(&v15);

  v8 = v16;
  v9 = v17;
  v10 = v18;
  v11 = v19;
  v12 = v20;
  result = v15;
  v14 = v21;
  *a4 = v7;
  *(a4 + 8) = 0;
  *(a4 + 16) = v14;
  *(a4 + 24) = result;
  *(a4 + 40) = v8;
  *(a4 + 48) = v9;
  *(a4 + 56) = v10;
  *(a4 + 64) = v11;
  *(a4 + 72) = v12;
  return result;
}

double sub_23855E3F0@<D0>(uint64_t a1@<X8>)
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
  v16 = sub_23875E0D0();
  *a1 = v10;
  *(a1 + 8) = v12;
  LOBYTE(v4) = v4 & 1;
  *(a1 + 16) = v4;
  *(a1 + 24) = v15;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v16;
  sub_23843980C(v10, v12, v4);

  sub_2384397FC(v10, v12, v4);

  return result;
}

void sub_23855E5E8(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for OrderDetailsContactSection(0) + 24));
  v3 = *v2;
  v4 = *(v2 + 1);
  LOBYTE(v20[0]) = v3;
  v20[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v6 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_238763300;
  v8 = *MEMORY[0x277D383D8];
  *(v7 + 32) = *MEMORY[0x277D383D8];
  *(v7 + 40) = sub_23875EA80();
  *(v7 + 48) = v9;
  v10 = *MEMORY[0x277D38390];
  *(v7 + 56) = *MEMORY[0x277D38390];
  strcpy((v7 + 64), "contactSupport");
  v11 = *MEMORY[0x277D384B8];
  *(v7 + 79) = -18;
  *(v7 + 80) = v11;
  strcpy((v7 + 88), "orderDetails");
  *(v7 + 101) = 0;
  *(v7 + 102) = -5120;
  v12 = v8;
  v13 = v10;
  v14 = v11;
  v15 = sub_23854B138(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20[0] = v15;
  sub_2385C33E4(v6, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v20);

  v17 = *MEMORY[0x277D38548];
  v18 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385626C8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v19 = sub_23875E910();

  [v18 subject:v17 sendEvent:v19];
}

double sub_23855E950@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  MEMORY[0x28223BE20](v3 - 8);
  v143 = &v135 - v4;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v144 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v157 = &v135 - v7;
  v8 = type metadata accessor for OrderDetailsContactSection(0);
  v161 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v162 = v9;
  v160 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B0, &qword_23876F580);
  v167 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v151 = &v135 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v12 - 8);
  v141 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v135 - v15;
  MEMORY[0x28223BE20](v17);
  v140 = &v135 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v135 - v20;
  v22 = sub_23875B940();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v138 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v137 = &v135 - v26;
  MEMORY[0x28223BE20](v27);
  v136 = &v135 - v28;
  MEMORY[0x28223BE20](v29);
  v150 = &v135 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v135 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E318, &qword_23876F5A8);
  MEMORY[0x28223BE20](v34 - 8);
  v156 = &v135 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v164 = &v135 - v37;
  MEMORY[0x28223BE20](v38);
  v155 = &v135 - v39;
  MEMORY[0x28223BE20](v40);
  v154 = &v135 - v41;
  MEMORY[0x28223BE20](v42);
  v153 = &v135 - v43;
  MEMORY[0x28223BE20](v44);
  v166 = &v135 - v45;
  MEMORY[0x28223BE20](v46);
  v165 = &v135 - v47;
  MEMORY[0x28223BE20](v48);
  v163 = &v135 - v49;
  sub_23875ED50();
  v142 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v159 = v10;
  v149 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  sub_23843981C(a1 + *(v149 + 32), v21, &qword_27DF0D040, &qword_2387676A0);
  v158 = *(v23 + 48);
  v50 = v158(v21, 1, v22);
  v152 = v23;
  if (v50 == 1)
  {
    sub_238439884(v21, &qword_27DF0D040, &qword_2387676A0);
    v51 = 1;
    v52 = v163;
    v53 = v159;
  }

  else
  {
    (*(v23 + 32))(v33, v21, v22);
    (*(v23 + 16))(v150, v33, v22);
    v139 = v16;
    v54 = v151;
    sub_23875D9A0();
    v55 = v160;
    sub_2385619D0(a1, v160);
    v56 = a1;
    v57 = (*(v161 + 80) + 16) & ~*(v161 + 80);
    v58 = swift_allocObject();
    sub_238561A34(v55, v58 + v57);
    KeyPath = swift_getKeyPath(aX_4);
    v60 = swift_allocObject();
    *(v60 + 16) = sub_2385626C0;
    *(v60 + 24) = v58;
    v53 = v159;
    v61 = &v54[*(v159 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B8, &qword_23876F588);
    a1 = v56;
    sub_23875C6C0();
    (*(v23 + 8))(v33, v22);
    *v61 = KeyPath;
    v62 = v54;
    v16 = v139;
    v52 = v163;
    sub_2385625DC(v62, v163);
    v51 = 0;
  }

  v63 = *(v167 + 56);
  v167 += 56;
  v63(v52, v51, 1, v53);
  v64 = v149;
  v65 = (a1 + *(v149 + 28));
  v66 = v65[1];
  v67 = v53;
  v148 = v63;
  if (v66)
  {
    v68 = *v65;
    v168 = 980182388;
    v169 = 0xE400000000000000;
    MEMORY[0x23EE63650](v68);
    v69 = v140;
    sub_23875B910();
    v70 = v69;

    if (v158(v69, 1, v22) != 1)
    {
      v71 = v152;
      v72 = v136;
      (*(v152 + 32))(v136, v70, v22);
      (*(v71 + 16))(v150, v72, v22);
      v139 = v16;
      v73 = v151;
      sub_23875D9A0();
      v74 = v160;
      sub_2385619D0(a1, v160);
      v75 = (*(v161 + 80) + 16) & ~*(v161 + 80);
      v76 = swift_allocObject();
      sub_238561A34(v74, v76 + v75);
      v77 = swift_getKeyPath(aX_4);
      v78 = swift_allocObject();
      *(v78 + 16) = sub_2385626B8;
      *(v78 + 24) = v76;
      v79 = &v73[*(v159 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B8, &qword_23876F588);
      v67 = v159;
      sub_23875C6C0();
      (*(v71 + 8))(v72, v22);
      *v79 = v77;
      v64 = v149;
      v80 = v73;
      v16 = v139;
      v81 = v74;
      v63 = v148;
      sub_2385625DC(v80, v165);
      v82 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v70 = v140;
    (*(v152 + 56))(v140, 1, 1, v22);
  }

  sub_238439884(v70, &qword_27DF0D040, &qword_2387676A0);
  v82 = 1;
  v81 = v160;
LABEL_11:
  v63(v165, v82, 1, v67);
  v83 = (a1 + *(v64 + 40));
  if (v83[1])
  {
    v84 = *v83;
    v168 = 0x3A6F746C69616DLL;
    v169 = 0xE700000000000000;
    MEMORY[0x23EE63650](v84);
    sub_23875B910();

    if (v158(v16, 1, v22) != 1)
    {
      v85 = v152;
      v86 = v137;
      (*(v152 + 32))(v137, v16, v22);
      (*(v85 + 16))(v150, v86, v22);
      v87 = v151;
      sub_23875D9A0();
      sub_2385619D0(a1, v160);
      v88 = (*(v161 + 80) + 16) & ~*(v161 + 80);
      v89 = swift_allocObject();
      sub_238561A34(v160, v89 + v88);
      v90 = swift_getKeyPath(aX_4);
      v91 = swift_allocObject();
      *(v91 + 16) = sub_23856264C;
      *(v91 + 24) = v89;
      v92 = (v87 + *(v159 + 36));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B8, &qword_23876F588);
      v67 = v159;
      sub_23875C6C0();
      v93 = v85;
      v63 = v148;
      v94 = v86;
      v81 = v160;
      (*(v93 + 8))(v94, v22);
      *v92 = v90;
      v64 = v149;
      sub_2385625DC(v87, v166);
      v95 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    (*(v152 + 56))(v16, 1, 1, v22);
  }

  sub_238439884(v16, &qword_27DF0D040, &qword_2387676A0);
  v95 = 1;
LABEL_16:
  v63(v166, v95, 1, v67);
  v96 = v141;
  sub_23843981C(a1 + *(v64 + 36), v141, &qword_27DF0D040, &qword_2387676A0);
  if (v158(v96, 1, v22) == 1)
  {
    sub_238439884(v96, &qword_27DF0D040, &qword_2387676A0);
    v97 = 1;
    v98 = v153;
  }

  else
  {
    v99 = v152;
    v100 = v138;
    (*(v152 + 32))(v138, v96, v22);
    (*(v99 + 16))(v150, v100, v22);
    v101 = v151;
    sub_23875D9A0();
    sub_2385619D0(a1, v81);
    v102 = (*(v161 + 80) + 16) & ~*(v161 + 80);
    v103 = swift_allocObject();
    sub_238561A34(v81, v103 + v102);
    v104 = swift_getKeyPath(aX_4);
    v105 = swift_allocObject();
    *(v105 + 16) = sub_2385625D4;
    *(v105 + 24) = v103;
    v106 = (v101 + *(v67 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B8, &qword_23876F588);
    sub_23875C6C0();
    (*(v99 + 8))(v100, v22);
    v63 = v148;
    *v106 = v104;
    v98 = v153;
    sub_2385625DC(v101, v153);
    v97 = 0;
  }

  v63(v98, v97, 1, v67);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v107 = qword_2814F1B90;
  v108 = sub_23875EA50();
  v109 = sub_23875EA50();
  v110 = sub_23875EA50();
  v111 = [v107 localizedStringForKey:v108 value:v109 table:v110];

  v112 = sub_23875EA80();
  v114 = v113;

  v168 = v112;
  v169 = v114;
  v115 = v143;
  sub_23875C3B0();
  v116 = sub_23875C3C0();
  (*(*(v116 - 8) + 56))(v115, 0, 1, v116);
  sub_2385619D0(a1, v81);
  v117 = (*(v161 + 80) + 16) & ~*(v161 + 80);
  v118 = swift_allocObject();
  v119 = sub_238561A34(v81, v118 + v117);
  sub_2384397A8(v119, v120, v121);
  v122 = v157;
  sub_23875E220();
  v123 = v154;
  sub_23843981C(v163, v154, &qword_27DF0E318, &qword_23876F5A8);
  v124 = v155;
  sub_23843981C(v165, v155, &qword_27DF0E318, &qword_23876F5A8);
  sub_23843981C(v166, v164, &qword_27DF0E318, &qword_23876F5A8);
  sub_23843981C(v98, v156, &qword_27DF0E318, &qword_23876F5A8);
  v125 = v146;
  v126 = *(v146 + 16);
  v127 = v144;
  v128 = v122;
  v129 = v147;
  v126(v144, v128, v147);
  v130 = v145;
  sub_23843981C(v123, v145, &qword_27DF0E318, &qword_23876F5A8);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E320, qword_23876F5B0);
  sub_23843981C(v124, v130 + v131[12], &qword_27DF0E318, &qword_23876F5A8);
  sub_23843981C(v164, v130 + v131[16], &qword_27DF0E318, &qword_23876F5A8);
  v132 = v156;
  sub_23843981C(v156, v130 + v131[20], &qword_27DF0E318, &qword_23876F5A8);
  v126((v130 + v131[24]), v127, v129);
  v133 = *(v125 + 8);
  v133(v157, v129);
  sub_238439884(v153, &qword_27DF0E318, &qword_23876F5A8);
  sub_238439884(v166, &qword_27DF0E318, &qword_23876F5A8);
  sub_238439884(v165, &qword_27DF0E318, &qword_23876F5A8);
  sub_238439884(v163, &qword_27DF0E318, &qword_23876F5A8);
  v133(v127, v129);
  sub_238439884(v132, &qword_27DF0E318, &qword_23876F5A8);
  sub_238439884(v164, &qword_27DF0E318, &qword_23876F5A8);
  sub_238439884(v155, &qword_27DF0E318, &qword_23876F5A8);
  sub_238439884(v154, &qword_27DF0E318, &qword_23876F5A8);

  return result;
}

void sub_23855FC00(uint64_t a1@<X8>)
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

uint64_t sub_23855FDA8(char a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      v2 = qword_2814F0880;
      if (a1)
      {
LABEL_8:
        if (v2 != -1)
        {
          swift_once();
        }

        v3 = qword_2814F1B90;
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v3 = qword_2814F1B90;
  }

  else if (a2 == 2)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v3 = qword_2814F1B90;
  }

  else
  {
    if (a2 == 3)
    {
      v2 = qword_2814F0880;
      if (a1)
      {
        goto LABEL_8;
      }

LABEL_20:
      if (v2 != -1)
      {
        swift_once();
      }

      v3 = qword_2814F1B90;
      goto LABEL_23;
    }

    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v3 = qword_2814F1B90;
  }

LABEL_23:
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  v8 = sub_23875EA80();
  return v8;
}

void sub_238560034(int a1)
{
  v2 = v1;
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v35 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763310;
  *(inited + 32) = sub_23875EA50();
  v35[1] = inited + 32;
  v7 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v8 = v7[9];
  v9 = sub_23875B940();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v11(v2 + v8, 1, v9);
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v12;
  *(inited + 56) = sub_23875EA50();
  v13 = v7[7];
  v36 = v2;
  v14 = (v2 + v13);
  if (v14[1])
  {
    v15 = *v14;
    v39[0] = 980182388;
    v39[1] = 0xE400000000000000;
    MEMORY[0x23EE63650](v15);
    sub_23875B910();

    v11(v5, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v5, 1, 1, v9);
  }

  v16 = sub_23875EA80();
  v18 = v17;
  sub_238439884(v5, &qword_27DF0D040, &qword_2387676A0);
  *(inited + 64) = v16;
  *(inited + 72) = v18;
  *(inited + 80) = sub_23875EA50();
  v11(v36 + v7[8], 1, v9);
  *(inited + 88) = sub_23875EA80();
  *(inited + 96) = v19;
  *(inited + 104) = sub_23875EA50();
  *(inited + 112) = 0x63697373616C63;
  *(inited + 120) = 0xE700000000000000;
  v20 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_238763300;
  v22 = *MEMORY[0x277D383D8];
  *(v21 + 32) = *MEMORY[0x277D383D8];
  *(v21 + 40) = sub_23875EA80();
  *(v21 + 48) = v23;
  v24 = *MEMORY[0x277D38390];
  *(v21 + 56) = *MEMORY[0x277D38390];
  *(v21 + 64) = sub_23844B4DC(v38);
  *(v21 + 72) = v25;
  v26 = *MEMORY[0x277D384B8];
  *(v21 + 80) = *MEMORY[0x277D384B8];
  *(v21 + 88) = 0xD000000000000013;
  *(v21 + 96) = 0x8000000238784EC0;
  v27 = v22;
  v28 = v24;
  v29 = v26;
  v30 = sub_23854B138(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39[0] = v30;
  sub_2385C33E4(v20, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v39);

  v32 = *MEMORY[0x277D38548];
  v33 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385626C8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v34 = sub_23875E910();

  [v33 subject:v32 sendEvent:v34];
}

void sub_238560528(uint64_t a1@<X8>)
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

void sub_2385606D0(uint64_t a1@<X8>)
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

void sub_238560878(uint64_t a1@<X8>)
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

double sub_238560A20(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for OrderDetailsContactSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  sub_238560034(35);

  return result;
}

void sub_238560B08(uint64_t a1@<X8>)
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

void sub_238560CB0(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = sub_23855FDA8(1, a1);
  sub_2384397A8(v13, v4, v5);
  v6 = sub_23875DAA0();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v12;
}

uint64_t sub_238560DD4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v47 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v11 = v10[8];
  v12 = sub_23875B940();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v42 = v11;
  v14(&a3[v11], 1, 1, v12);
  v43 = v10[9];
  v44 = v14;
  v14(&a3[v43], 1, 1, v12);
  v15 = [a1 displayName];
  v16 = sub_2387586A0();
  v18 = v17;

  *a3 = v16;
  *(a3 + 1) = v18;
  v19 = [a1 url];
  sub_23875B8B0();

  v20 = v10[6];
  v46 = v13;
  (*(v13 + 16))(&a3[v20], v47, v12);
  v21 = [a1 phoneNumber];
  if (v21)
  {
    v22 = v21;
    v23 = sub_23875EA80();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = &a3[v10[7]];
  *v26 = v23;
  v26[1] = v25;
  v27 = [a1 businessChatURL];
  v28 = v45;
  if (v27)
  {
    v29 = v27;
    sub_23875B8B0();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = v44;
  v32 = 1;
  v44(v9, v30, 1, v12);
  sub_2384A475C(v9, &a3[v42]);
  v33 = [a1 contactURL];
  if (v33)
  {
    v34 = v33;
    sub_23875B8B0();

    v32 = 0;
  }

  v31(v28, v32, 1, v12);
  sub_2384A475C(v28, &a3[v43]);
  v35 = [a1 emailAddress];
  if (v35)
  {
    v36 = v35;
    v37 = sub_23875EA80();
    v39 = v38;
  }

  else
  {

    v37 = 0;
    v39 = 0;
  }

  v40 = &a3[v10[10]];
  result = (*(v46 + 8))(v47, v12);
  *v40 = v37;
  v40[1] = v39;
  return result;
}

BOOL sub_238561120(void *a1, void *a2)
{
  v4 = sub_23875B940();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B0D8, &qword_238772730);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  if (*a1 != *a2 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v54 = v7;
  v20 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  if ((sub_23875B890() & 1) == 0 || (sub_23875B890() & 1) == 0)
  {
    return 0;
  }

  v21 = v20[7];
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

  v50 = v10;
  v53 = v5;
  v26 = v20[8];
  v27 = *(v14 + 48);
  sub_23843981C(a1 + v26, v19, &qword_27DF0D040, &qword_2387676A0);
  v52 = v27;
  sub_23843981C(a2 + v26, &v19[v27], &qword_27DF0D040, &qword_2387676A0);
  v28 = v53 + 48;
  v29 = *(v53 + 48);
  v30 = v29(v19, 1, v4);
  v51 = v29;
  if (v30 == 1)
  {
    if (v29(&v19[v52], 1, v4) == 1)
    {
      v49 = v28;
      sub_238439884(v19, &qword_27DF0D040, &qword_2387676A0);
      goto LABEL_19;
    }

LABEL_17:
    v31 = v19;
LABEL_25:
    sub_238439884(v31, &qword_27DF0B0D8, &qword_238772730);
    return 0;
  }

  sub_23843981C(v19, v13, &qword_27DF0D040, &qword_2387676A0);
  v49 = v28;
  if (v29(&v19[v52], 1, v4) == 1)
  {
    (*(v53 + 8))(v13, v4);
    goto LABEL_17;
  }

  v32 = v53;
  (*(v53 + 32))(v54, &v19[v52], v4);
  sub_2385626C8(&qword_27DF0B0E0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  LODWORD(v52) = sub_23875E9E0();
  v33 = *(v32 + 8);
  v33(v54, v4);
  v33(v13, v4);
  sub_238439884(v19, &qword_27DF0D040, &qword_2387676A0);
  if ((v52 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v34 = v20[9];
  v35 = *(v14 + 48);
  sub_23843981C(a1 + v34, v16, &qword_27DF0D040, &qword_2387676A0);
  sub_23843981C(a2 + v34, &v16[v35], &qword_27DF0D040, &qword_2387676A0);
  v36 = v51;
  if (v51(v16, 1, v4) == 1)
  {
    if (v36(&v16[v35], 1, v4) == 1)
    {
      sub_238439884(v16, &qword_27DF0D040, &qword_2387676A0);
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v37 = v50;
  sub_23843981C(v16, v50, &qword_27DF0D040, &qword_2387676A0);
  if (v36(&v16[v35], 1, v4) == 1)
  {
    (*(v53 + 8))(v37, v4);
LABEL_24:
    v31 = v16;
    goto LABEL_25;
  }

  v39 = v53;
  v40 = &v16[v35];
  v41 = v54;
  (*(v53 + 32))(v54, v40, v4);
  sub_2385626C8(&qword_27DF0B0E0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v42 = sub_23875E9E0();
  v43 = *(v39 + 8);
  v43(v41, v4);
  v43(v37, v4);
  sub_238439884(v16, &qword_27DF0D040, &qword_2387676A0);
  if ((v42 & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  v44 = v20[10];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = v47[1];
  if (v46)
  {
    return v48 && (*v45 == *v47 && v46 == v48 || (sub_23875F630() & 1) != 0);
  }

  return !v48;
}

void sub_2385617D4(uint64_t a1)
{
  type metadata accessor for OrderDetailsContactSection.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_238561900(319, &qword_2814F09A0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_238561900(319, &qword_27DF0A0B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_238561950(319, &qword_27DF0B130, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_238561900(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_238561950(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2385619D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsContactSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238561A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsContactSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for OrderDetailsContactSection(0);
  v2 = *(*(v1 - 8) + 80);
  v15 = *(*(v1 - 8) + 64);
  v16 = (v2 + 16) & ~v2;
  v17 = v0;
  v3 = v0 + v16;

  v4 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v5 = v4[5];
  v6 = sub_23875B940();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v3 + v5, v6);
  v8(v3 + v4[6], v6);

  v9 = v4[8];
  v10 = *(v7 + 48);
  if (!v10(v3 + v9, 1, v6))
  {
    v8(v3 + v9, v6);
  }

  v11 = v4[9];
  if (!v10(v3 + v11, 1, v6))
  {
    v8(v3 + v11, v6);
  }

  sub_2384348B8(*(v3 + *(v1 + 20)), *(v3 + *(v1 + 20) + 8));

  v12 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C6D0();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v17, v16 + v15, v2 | 7);
}

uint64_t sub_238561D34(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OrderDetailsContactSection(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_238561DBC()
{
  result = qword_27DF0E2C0;
  if (!qword_27DF0E2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E270, &qword_23876F4E8);
    sub_238561E48();
    sub_238562220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E2C0);
  }

  return result;
}

unint64_t sub_238561E48()
{
  result = qword_27DF0E2C8;
  if (!qword_27DF0E2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E268, &qword_23876F4E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E2D0, &qword_23876F590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E2D8, &unk_23876F598);
    v1 = sub_238561FA0();
    sub_2384397A8(v1, v2, v3);
    sub_23843A3E8(&qword_27DF0E2E8, &qword_27DF0E2D8, &unk_23876F598, MEMORY[0x277CE14C0]);
    swift_getOpaqueTypeConformance2();
    sub_238562084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E2C8);
  }

  return result;
}

unint64_t sub_238561FA0()
{
  result = qword_27DF0E2E0;
  if (!qword_27DF0E2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E2D0, &qword_23876F590);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
    sub_23843A3E8(&qword_27DF0A858, &qword_27DF0A860, &qword_238768810, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E2E0);
  }

  return result;
}

unint64_t sub_238562084()
{
  result = qword_27DF0E2F0;
  if (!qword_27DF0E2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E248, &qword_23876F4C0);
    sub_23856213C();
    sub_23843A3E8(&qword_27DF0A858, &qword_27DF0A860, &qword_238768810, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E2F0);
  }

  return result;
}

unint64_t sub_23856213C()
{
  result = qword_27DF0E2F8;
  if (!qword_27DF0E2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E2B0, &qword_23876F580);
    sub_23843A3E8(&qword_27DF0E300, &qword_27DF0E0C0, &qword_23876EF40, MEMORY[0x277CDE598]);
    sub_23843A3E8(&qword_27DF0E308, &qword_27DF0E2B8, &qword_23876F588, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E2F8);
  }

  return result;
}

unint64_t sub_238562220()
{
  result = qword_27DF0E310;
  if (!qword_27DF0E310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E240, &qword_23876F4B8);
    sub_238562084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E310);
  }

  return result;
}

uint64_t objectdestroy_22Tm()
{
  v1 = type metadata accessor for OrderDetailsContactSection(0);
  v2 = *(*(v1 - 8) + 80);
  v15 = *(*(v1 - 8) + 64);
  v16 = (v2 + 16) & ~v2;
  v17 = v0;
  v3 = v0 + v16;

  v4 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v5 = v4[5];
  v6 = sub_23875B940();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v3 + v5, v6);
  v8(v3 + v4[6], v6);

  v9 = v4[8];
  v10 = *(v7 + 48);
  if (!v10(v3 + v9, 1, v6))
  {
    v8(v3 + v9, v6);
  }

  v11 = v4[9];
  if (!v10(v3 + v11, 1, v6))
  {
    v8(v3 + v11, v6);
  }

  sub_2384348B8(*(v3 + *(v1 + 20)), *(v3 + *(v1 + 20) + 8));

  v12 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C6D0();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v17, v15 + v16 + 1, v2 | 7);
}

void sub_238562514()
{
  v1 = *(type metadata accessor for OrderDetailsContactSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  sub_238560D94(v2, v3);
}

uint64_t sub_2385625DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B0, &qword_23876F580);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385626C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OrderReturnLabel.fileUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_fileUrl;
  v4 = sub_23875B940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OrderReturnLabel.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_name);

  return v1;
}

FinanceKitUI::OrderReturnLabel::MimeType_optional __swiftcall OrderReturnLabel.MimeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23875F590();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t OrderReturnLabel.MimeType.rawValue.getter()
{
  v1 = 0x746163696C707061;
  if (*v0 != 1)
  {
    v1 = 0x6E702F6567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x706A2F6567616D69;
  }
}

uint64_t sub_2385628C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746163696C707061;
  v4 = 0xEF6664702F6E6F69;
  if (v2 != 1)
  {
    v3 = 0x6E702F6567616D69;
    v4 = 0xE900000000000067;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x706A2F6567616D69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000006765;
  }

  v7 = 0x746163696C707061;
  v8 = 0xEF6664702F6E6F69;
  if (*a2 != 1)
  {
    v7 = 0x6E702F6567616D69;
    v8 = 0xE900000000000067;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x706A2F6567616D69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000006765;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23875F630();
  }

  return v11 & 1;
}

uint64_t sub_2385629E8()
{
  sub_23875F700();
  sub_23875EB30();

  return sub_23875F760();
}

double sub_238562AA0(uint64_t a1)
{
  sub_23875EB30();

  return result;
}

uint64_t sub_238562B44()
{
  sub_23875F700();
  sub_23875EB30();

  return sub_23875F760();
}

void sub_238562C04(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006765;
  v4 = 0xEF6664702F6E6F69;
  v5 = 0x746163696C707061;
  if (v2 != 1)
  {
    v5 = 0x6E702F6567616D69;
    v4 = 0xE900000000000067;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x706A2F6567616D69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t *sub_238562C78(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  sub_23875EAE0();
  v14 = sub_23875F590();

  if (v14 > 2)
  {
    if (qword_27DF08CD8 != -1)
    {
      swift_once();
    }

    v18 = sub_23875C1E0();
    __swift_project_value_buffer(v18, qword_27DF2F690);

    v19 = sub_23875C1B0();
    v20 = sub_23875EFE0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315394;
      v23 = sub_2384615AC(a4, a5, &v27);

      *(v21 + 4) = v23;
      *(v21 + 12) = 2080;
      v24 = sub_2384615AC(a2, a3, &v27);

      *(v21 + 14) = v24;
      _os_log_impl(&dword_2383F8000, v19, v20, "Return label %s has unsupported mime type: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE64DF0](v22, -1, -1);
      MEMORY[0x23EE64DF0](v21, -1, -1);
    }

    else
    {
    }

    v25 = sub_23875B940();
    (*(*(v25 - 8) + 8))(a1, v25);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {

    v15 = OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_fileUrl;
    v16 = sub_23875B940();
    (*(*(v16 - 8) + 32))(v7 + v15, a1, v16);
    *(v7 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_mimeType) = v14;
    v17 = (v7 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_name);
    *v17 = a4;
    v17[1] = a5;
    *(v7 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_shouldCleanUp) = a6 & 1;
  }

  return v7;
}

uint64_t OrderReturnLabel.deinit()
{
  v1 = v0;
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23875B940();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_shouldCleanUp))
  {
    v6 = [objc_opt_self() defaultManager];
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_fileUrl, v2);
    v7 = sub_23875B860();
    v8 = *(v3 + 8);
    v8(v5, v2);
    v15[0] = 0;
    v9 = [v6 removeItemAtURL:v7 error:v15];

    if (v9)
    {
      v10 = v15[0];
    }

    else
    {
      v11 = v15[0];
      v12 = sub_23875B730();

      swift_willThrow();
    }

    v8((v1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_fileUrl), v2);
  }

  else
  {
    (*(v3 + 8))(v1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_fileUrl, v2);
  }

  return v1;
}

uint64_t OrderReturnLabel.__deallocating_deinit()
{
  OrderReturnLabel.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s12FinanceKitUI16OrderReturnLabelC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_23875B890() & 1) == 0)
  {
    goto LABEL_23;
  }

  v4 = 0xEA00000000006765;
  v5 = 0x706A2F6567616D69;
  if (*(a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_mimeType))
  {
    if (*(a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_mimeType) == 1)
    {
      v6 = 0x746163696C707061;
      v7 = 0xEF6664702F6E6F69;
      if (!*(a2 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_mimeType))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = 0x6E702F6567616D69;
      v7 = 0xE900000000000067;
      if (!*(a2 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_mimeType))
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v6 = 0x706A2F6567616D69;
    v7 = 0xEA00000000006765;
    if (!*(a2 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_mimeType))
    {
LABEL_11:
      if (v6 != v5)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

  if (*(a2 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_mimeType) == 1)
  {
    v5 = 0x746163696C707061;
    v4 = 0xEF6664702F6E6F69;
    goto LABEL_11;
  }

  v4 = 0xE900000000000067;
  if (v6 != 0x6E702F6567616D69)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (v7 == v4)
  {

    goto LABEL_17;
  }

LABEL_16:
  v8 = sub_23875F630();

  if ((v8 & 1) == 0)
  {
LABEL_23:
    v10 = 0;
    return v10 & 1;
  }

LABEL_17:
  v9 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_name) == *(a2 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_name) && *(a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_name + 8) == *(a2 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_name + 8);
  if (!v9 && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_23;
  }

  v10 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_shouldCleanUp) ^ *(a2 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_shouldCleanUp) ^ 1;
  return v10 & 1;
}

uint64_t *_s12FinanceKitUI16OrderReturnLabelC7fileUrlACSg10Foundation3URLV_tcfC_0(char *a1)
{
  v45 = sub_23875B940();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - v4;
  v6 = sub_23875B6C0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DBB8, &qword_23876E0B8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E350, &unk_23876F730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  v14 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v15 = v14;
  sub_23844D11C(inited);
  swift_setDeallocating();
  sub_238564548(inited + 32);
  sub_23875B830();

  sub_23875B6B0();
  (*(v7 + 8))(v9, v6);
  v16 = sub_23875C0D0();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v12, 1, v16) == 1)
  {
    sub_238439884(v12, &qword_27DF0DBB8, &qword_23876E0B8);
    v18 = v44;
LABEL_3:
    if (qword_27DF08CD8 != -1)
    {
      swift_once();
    }

    v19 = sub_23875C1E0();
    __swift_project_value_buffer(v19, qword_27DF2F690);
    v20 = v43;
    v21 = v45;
    (*(v43 + 16))(v18, a1, v45);
    v22 = sub_23875C1B0();
    v23 = sub_23875EFE0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v46 = v25;
      *v24 = 136315138;
      v26 = sub_23875B8F0();
      v27 = v18;
      v29 = v28;
      v30 = *(v20 + 8);
      v30(v27, v21);
      v31 = sub_2384615AC(v26, v29, &v46);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_2383F8000, v22, v23, "Could not retreive mimeType from %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x23EE64DF0](v25, -1, -1);
      MEMORY[0x23EE64DF0](v24, -1, -1);

      v30(a1, v21);
    }

    else
    {

      v32 = *(v20 + 8);
      v32(a1, v21);
      v32(v18, v21);
    }

    return 0;
  }

  v34 = sub_23875C0C0();
  v36 = v35;
  (*(v17 + 8))(v12, v16);
  v18 = v44;
  if (!v36)
  {
    goto LABEL_3;
  }

  v37 = sub_23875B850();
  v39 = v38;
  v40 = v43;
  v41 = v45;
  (*(v43 + 16))(v5, a1, v45);
  type metadata accessor for OrderReturnLabel(0);
  swift_allocObject();
  v42 = sub_238562C78(v5, v34, v36, v37, v39, 0);
  (*(v40 + 8))(a1, v41);
  result = v42;
  if (!v42)
  {
    return 0;
  }

  return result;
}

uint64_t *_s12FinanceKitUI16OrderReturnLabelC4data8mimeType4nameACSg10Foundation4DataV_S2StcfC_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v83 = a2;
  v84 = a6;
  v78 = a5;
  v81 = a4;
  v82 = a1;
  v74 = a3;
  v86[1] = *MEMORY[0x277D85DE8];
  v85 = sub_23875B810();
  v6 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_23875BCB0();
  v9 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875B940();
  v79 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v75 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v73 - v15;
  MEMORY[0x28223BE20](v16);
  v77 = &v73 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v73 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  v24 = NSTemporaryDirectory();
  sub_23875EA80();

  sub_23875B840();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_238763B60;
  strcpy((v25 + 32), "returnLabels");
  *(v25 + 45) = 0;
  *(v25 + 46) = -5120;
  sub_23875BCA0();
  v26 = sub_23875BC50();
  v28 = v27;
  (*(v9 + 8))(v11, v80);
  v29 = v79;
  *(v25 + 48) = v26;
  *(v25 + 56) = v28;
  v30 = v85;
  v31 = (*(v6 + 104))(v8, *MEMORY[0x277CC91D8], v85);
  sub_2384397A8(v31, v32, v33);
  sub_23875B920();

  (*(v6 + 8))(v8, v30);
  v34 = *(v29 + 8);
  v85 = v12;
  v34(v20, v12);
  v35 = [objc_opt_self() defaultManager];
  v36 = sub_23875B860();
  v86[0] = 0;
  LODWORD(v12) = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v86];

  if (!v12)
  {
    v44 = v86[0];

    v45 = sub_23875B730();

    swift_willThrow();
    if (qword_27DF08CD8 != -1)
    {
      swift_once();
    }

    v46 = sub_23875C1E0();
    __swift_project_value_buffer(v46, qword_27DF2F690);
    v47 = v76;
    (*(v29 + 16))(v76, v23, v85);
    v48 = v45;
    v49 = sub_23875C1B0();
    v50 = sub_23875EFE0();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v80 = v23;
      v54 = v53;
      v86[0] = v53;
      *v51 = 136315394;
      v55 = sub_23875B8F0();
      v56 = v47;
      v57 = v55;
      v59 = v58;
      v34(v56, v85);
      v60 = sub_2384615AC(v57, v59, v86);

      *(v51 + 4) = v60;
      *(v51 + 12) = 2112;
      v61 = v45;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 14) = v62;
      *v52 = v62;
      _os_log_impl(&dword_2383F8000, v49, v50, "Could not create directory %s with error %@", v51, 0x16u);
      sub_238439884(v52, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x23EE64DF0](v54, -1, -1);
      MEMORY[0x23EE64DF0](v51, -1, -1);
      sub_23844C954(v82, v83);

      v63 = v80;
      v64 = v85;
    }

    else
    {
      sub_23844C954(v82, v83);

      v65 = v47;
      v66 = v85;
      v34(v65, v85);
      v63 = v23;
      v64 = v66;
    }

    v34(v63, v64);
    return 0;
  }

  v37 = v81;
  v76 = v34;
  v38 = v86[0];
  v39 = v77;
  sub_23875B870();
  v41 = v82;
  v40 = v83;
  sub_23875B9A0();
  v42 = v40;
  v43 = v39;
  v67 = v85;
  (*(v29 + 16))(v20, v39, v85);
  type metadata accessor for OrderReturnLabel(0);
  swift_allocObject();
  v68 = v42;
  v69 = v43;
  v70 = sub_238562C78(v20, v74, v37, v78, v84, 1);
  sub_23844C954(v41, v68);
  v71 = v76;
  (v76)(v69, v67);
  (v71)(v23, v67);
  result = v70;
  if (!v70)
  {
    return 0;
  }

  return result;
}

unint64_t sub_23856428C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0E338;
  if (!qword_27DF0E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E338);
  }

  return result;
}

uint64_t type metadata accessor for OrderReturnLabel(uint64_t a1)
{
  result = qword_27DF0E340;
  if (!qword_27DF0E340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238564334(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for WidgetAccount.ActivationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetAccount.ActivationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_238564548(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for OrderWidgetMerchantTitleModifier(uint64_t a1)
{
  result = qword_27DF0E358;
  if (!qword_27DF0E358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238564618(uint64_t a1)
{
  sub_2384BEA74(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2385646A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875C880();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E368, &qword_23876F7B8);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  sub_2384D5138(v10);
  (*(v5 + 104))(v7, *MEMORY[0x277CDFA00], v4);
  sub_23848987C();
  v15 = sub_23875E9B0();
  v16 = *(v5 + 8);
  v16(v7, v4);
  v16(v10, v4);
  if (v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  KeyPath = swift_getKeyPath(byte_23876F7C0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E370, &qword_23876F7F0);
  (*(*(v19 - 8) + 16))(v14, a1, v19);
  v20 = &v14[*(v12 + 44)];
  *v20 = KeyPath;
  *(v20 + 1) = v17;
  v20[16] = 0;
  v21 = swift_getKeyPath(asc_23876F7F8);
  sub_238564904(v14, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E378, &qword_23876F828);
  v23 = a2 + *(result + 36);
  *v23 = v21;
  *(v23 + 8) = 1;
  return result;
}

uint64_t sub_238564904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E368, &qword_23876F7B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_238564974()
{
  result = qword_27DF0E380;
  if (!qword_27DF0E380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E378, &qword_23876F828);
    sub_238564A2C();
    sub_23843A3E8(&qword_27DF0BAF0, &qword_27DF0BAF8, &unk_2387690A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E380);
  }

  return result;
}

unint64_t sub_238564A2C()
{
  result = qword_27DF0E388;
  if (!qword_27DF0E388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E368, &qword_23876F7B8);
    sub_23843A3E8(&qword_27DF0E390, &qword_27DF0E370, &qword_23876F7F0, MEMORY[0x277CE04B0]);
    sub_23843A3E8(&qword_2814F0928, &qword_27DF09360, &unk_23876F830, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E388);
  }

  return result;
}

uint64_t sub_238564B78(uint64_t a1)
{
  result = type metadata accessor for OrderDetailsFulfillment.ViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_238564C2C(uint64_t a1)
{
  type metadata accessor for OrderDetailsFulfillment.FulfillmentDetailsViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2385662D0(319, &qword_27DF0E3B8, type metadata accessor for OrderDetailsLargeLineItem.ViewModel, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_238564CE8(uint64_t a1)
{
  result = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_238564D5C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t sub_238564D8C@<X0>(uint64_t a1@<X8>)
{
  sub_2385667D8(v1, a1, type metadata accessor for OrderDetailsFulfillment.ViewModel);
  v3 = type metadata accessor for OrderDetailsFulfillment_iOS(0);
  v4 = a1 + *(v3 + 20);
  *v4 = swift_getKeyPath(aH_2);
  *(v4 + 8) = 0;
  v5 = *(v3 + 24);
  *(a1 + v5) = swift_getKeyPath(asc_23876F940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_238564E40@<X0>(char *a1@<X8>)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E3E8, &qword_23876F9E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E3F0, &qword_23876F9E8);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E3F8, &qword_23876F9F0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  v28 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E400, &qword_23876F9F8);
  sub_238566358();
  sub_23875D9C0();
  v17 = sub_23843A3E8(&qword_27DF0E470, &qword_27DF0E3E8, &qword_23876F9E0, MEMORY[0x277CDE5A0]);
  sub_23875DB70();
  (*(v3 + 8))(v5, v2);
  v29 = v2;
  v30 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v25;
  sub_23875DD80();
  (*(v26 + 8))(v9, v18);
  v19 = *(v24 + *(type metadata accessor for OrderDetailsFulfillment.ViewModel(0) + 20));
  v20 = *(v11 + 16);
  v20(v13, v16, v10);
  v21 = v27;
  v20(v27, v13, v10);
  *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E478, &qword_23876FA30) + 48)] = v19;
  v22 = *(v11 + 8);
  swift_bridgeObjectRetain_n();
  v22(v16, v10);

  return (v22)(v13, v10);
}

double sub_2385651E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_23875C880();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = v35 - v6;
  v7 = sub_23875CEA0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E428, &qword_23876FA08);
  MEMORY[0x28223BE20](v11);
  v13 = v35 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E418, &qword_23876FA00);
  MEMORY[0x28223BE20](v38);
  v39 = v35 - v14;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E400, &qword_23876F9F8);
  MEMORY[0x28223BE20](v37);
  v36 = v35 - v15;
  sub_23875ED50();
  v35[2] = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v35[1] = v35;
  MEMORY[0x28223BE20](isCurrentExecutor);
  v35[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E458, &unk_23876FA20);
  sub_23856669C();
  sub_23875E3D0();
  sub_23875CE90();
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E438, &qword_23876FA10) + 36);
  (*(v8 + 16))(&v13[v17], v10, v7);
  v18 = *(v8 + 56);
  v18(&v13[v17], 0, 1, v7);
  KeyPath = swift_getKeyPath(byte_23876FA38);
  v20 = &v13[*(v11 + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v8 + 32))(v20 + v21, v10, v7);
  v18(v20 + v21, 0, 1, v7);
  *v20 = KeyPath;
  type metadata accessor for OrderDetailsFulfillment_iOS(0);
  v22 = v40;
  sub_2384D5138(v40);
  v23 = v41;
  v24 = v42;
  v25 = v43;
  (*(v42 + 104))(v41, *MEMORY[0x277CDF9D8], v43);
  LOBYTE(KeyPath) = sub_23875C870();
  v26 = *(v24 + 8);
  v26(v23, v25);
  v26(v22, v25);
  if (KeyPath)
  {
    v27 = 0x4028000000000000;
  }

  else
  {
    v27 = 0x4030000000000000;
  }

  v28 = v39;
  sub_2384396E4(v13, v39, &qword_27DF0E428, &qword_23876FA08);
  v29 = v28 + *(v38 + 36);
  *v29 = 0x4028000000000000;
  *(v29 + 8) = v27;
  *(v29 + 16) = 0x4028000000000000;
  *(v29 + 24) = v27;
  *(v29 + 32) = 0;
  v30 = sub_23875D000();
  v31 = v28;
  v32 = v36;
  sub_2384396E4(v31, v36, &qword_27DF0E418, &qword_23876FA00);
  v33 = (v32 + *(v37 + 36));
  *v33 = v30;
  v33[1] = sub_23843480C;
  v33[2] = 0;
  sub_2384396E4(v32, v44, &qword_27DF0E400, &qword_23876F9F8);

  return result;
}

uint64_t sub_238565734@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v23 = a2;
  v24 = type metadata accessor for OrderDetailsPickupFulfillment(0);
  MEMORY[0x28223BE20](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E480, &qword_23876FA68);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for OrderDetailsShippingFulfillment(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OrderDetailsFulfillment.FulfillmentDetailsViewModel(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385667D8(a1, v19, type metadata accessor for OrderDetailsFulfillment.FulfillmentDetailsViewModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_238566840(v19, v7, type metadata accessor for OrderDetailsPickupFulfillment.ViewModel);
    sub_2385667D8(v7, v4, type metadata accessor for OrderDetailsPickupFulfillment.ViewModel);
    sub_2385667D8(v4, v10, type metadata accessor for OrderDetailsPickupFulfillment);
    swift_storeEnumTagMultiPayload();
    sub_238566788(&qword_27DF0E460, type metadata accessor for OrderDetailsShippingFulfillment, &unk_238772738);
    sub_238566788(&qword_27DF0E468, type metadata accessor for OrderDetailsPickupFulfillment, &unk_238771658);
    sub_23875D1B0();
    sub_2385668A8(v4, type metadata accessor for OrderDetailsPickupFulfillment);
    v20 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel;
    v21 = v7;
  }

  else
  {
    sub_238566840(v19, v16, type metadata accessor for OrderDetailsShippingFulfillment.ViewModel);
    sub_2385667D8(v16, v13, type metadata accessor for OrderDetailsShippingFulfillment.ViewModel);
    sub_2385667D8(v13, v10, type metadata accessor for OrderDetailsShippingFulfillment);
    swift_storeEnumTagMultiPayload();
    sub_238566788(&qword_27DF0E460, type metadata accessor for OrderDetailsShippingFulfillment, &unk_238772738);
    sub_238566788(&qword_27DF0E468, type metadata accessor for OrderDetailsPickupFulfillment, &unk_238771658);
    sub_23875D1B0();
    sub_2385668A8(v13, type metadata accessor for OrderDetailsShippingFulfillment);
    v20 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel;
    v21 = v16;
  }

  return sub_2385668A8(v21, v20);
}

uint64_t sub_238565BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v55 = a3;
  v54 = type metadata accessor for ProductImage.ViewModel(0);
  MEMORY[0x28223BE20](v54);
  v53 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  MEMORY[0x28223BE20](v57);
  v48 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v42 - v8;
  v47 = sub_23875AF90();
  v9 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v60 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v56 = &v42 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = sub_238758940();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v20;
  v21 = *(v20 + 16);
  v51 = v22;
  v21(v19, a1, v17);
  sub_238759AB0();
  sub_23845C998(a2, v59);
  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  sub_238758920();
  v46 = sub_23875A360();
  v24 = v23;

  sub_238758910();
  v45 = sub_238758930();
  v43 = sub_238758900();
  v44 = v25;
  v52 = v9;
  v26 = *(v9 + 16);
  v27 = v56;
  v50 = v15;
  v28 = v47;
  v26(v56, v15, v47);
  v29 = v57;
  v30 = *(v57 + 20);
  v31 = sub_238758090();
  v32 = v48;
  (*(*(v31 - 8) + 56))(v48 + v30, 1, 1, v31);
  *v32 = v46;
  v32[1] = v24;
  v33 = v32;
  sub_23853098C(v58, v32 + v30);
  *(v32 + *(v29 + 24)) = v45;
  v34 = v27;
  v35 = v44;
  v26(v60, v34, v28);
  if (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_2387632F0;
    *(v36 + 32) = v43;
    *(v36 + 40) = v35;
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  v37 = v53;
  v26(v53, v60, v28);
  if (*(v36 + 16) >= 5uLL)
  {
    sub_23852EE64(v36, v36 + 32, 0, 9uLL);
    v39 = v38;

    v36 = v39;
  }

  v40 = *(v52 + 8);
  v40(v50, v28);
  (*(v49 + 8))(v19, v51);
  v40(v60, v28);
  v40(v56, v28);
  sub_238566104(v58);
  *(v37 + *(v54 + 20)) = v36;
  sub_238566840(v37, v33 + *(v57 + 28), type metadata accessor for ProductImage.ViewModel);
  sub_238566840(v33, v55, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_238566104(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2385661B4(uint64_t a1)
{
  type metadata accessor for OrderDetailsFulfillment.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_238566280();
    if (v2 <= 0x3F)
    {
      sub_2385662D0(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238566280()
{
  if (!qword_2814F09A0)
  {
    v0 = sub_23875C470();
    if (!v1)
    {
      atomic_store(v0, &qword_2814F09A0);
    }
  }
}

void sub_2385662D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_238566358()
{
  result = qword_27DF0E408;
  if (!qword_27DF0E408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E400, &qword_23876F9F8);
    sub_2385663E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E408);
  }

  return result;
}

unint64_t sub_2385663E4()
{
  result = qword_27DF0E410;
  if (!qword_27DF0E410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E418, &qword_23876FA00);
    sub_23856649C();
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E410);
  }

  return result;
}

unint64_t sub_23856649C()
{
  result = qword_27DF0E420;
  if (!qword_27DF0E420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E428, &qword_23876FA08);
    sub_238566554();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E420);
  }

  return result;
}

unint64_t sub_238566554()
{
  result = qword_27DF0E430;
  if (!qword_27DF0E430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E438, &qword_23876FA10);
    sub_23856660C();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E430);
  }

  return result;
}

unint64_t sub_23856660C()
{
  result = qword_27DF0E440;
  if (!qword_27DF0E440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E448, &qword_23876FA18);
    sub_23856669C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E440);
  }

  return result;
}

unint64_t sub_23856669C()
{
  result = qword_27DF0E450;
  if (!qword_27DF0E450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E458, &unk_23876FA20);
    sub_238566788(&qword_27DF0E460, type metadata accessor for OrderDetailsShippingFulfillment, &unk_238772738);
    sub_238566788(&qword_27DF0E468, type metadata accessor for OrderDetailsPickupFulfillment, &unk_238771658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E450);
  }

  return result;
}

uint64_t sub_238566788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2385667D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238566840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385668A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_238566950(uint64_t a1)
{
  result = type metadata accessor for MerchantImage.ViewModel(319);
  if (v2 <= 0x3F)
  {
    result = sub_23875BC40();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2385669E4(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_23875F630() & 1) == 0 || (sub_2384C7CB8((a1 + *(a3 + 20)), (a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  return sub_23875BBD0();
}

uint64_t sub_238566AB0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E4D0, &qword_23876FB88);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E4D8, &qword_23876FB90);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  *v5 = sub_23875D020();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E4E0, &qword_23876FB98);
  sub_238566D78(v1, &v5[*(v9 + 44)]);
  v10 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E4E8, &unk_23876FBA0) + 36)];
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
  v12 = sub_23875DA40();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *v10 = swift_getKeyPath(byte_23876FBB0);
  KeyPath = swift_getKeyPath(byte_23876FBE0);
  v14 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E4F0, &qword_23876FC10) + 36)];
  *v14 = KeyPath;
  v14[8] = 1;
  LOBYTE(KeyPath) = sub_23875D7A0();
  sub_23875C3D0();
  v15 = &v5[*(v3 + 44)];
  *v15 = KeyPath;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  sub_23875E4A0();
  sub_23875C9C0();
  sub_238567864(v5, v8);
  v20 = &v8[*(v6 + 36)];
  v21 = v25[5];
  *(v20 + 4) = v25[4];
  *(v20 + 5) = v21;
  *(v20 + 6) = v25[6];
  v22 = v25[1];
  *v20 = v25[0];
  *(v20 + 1) = v22;
  v23 = v25[3];
  *(v20 + 2) = v25[2];
  *(v20 + 3) = v23;
  sub_2385678D4();
  sub_23875DE00();
  return sub_238439884(v8, &qword_27DF0E4D8, &qword_23876FB90);
}

double sub_238566D78@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = sub_23875BE40();
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875BE20();
  MEMORY[0x28223BE20](v5 - 8);
  v85 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875BD20();
  MEMORY[0x28223BE20](v7 - 8);
  v83 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2387595E0();
  MEMORY[0x28223BE20](v9 - 8);
  v81 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_238759290();
  MEMORY[0x28223BE20](v84);
  v82 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875BC40();
  v78 = *(v12 - 8);
  v79 = v12;
  MEMORY[0x28223BE20](v12);
  v80 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23875DFD0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7D0, &unk_23876B3E0);
  MEMORY[0x28223BE20](v18);
  v88 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v72 - v21;
  sub_23875ED50();
  v87 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v77 = type metadata accessor for OrderDetailsHeader.ViewModel(0);
  sub_238567B88(&a1[*(v77 + 20)], v22, type metadata accessor for MerchantImage.ViewModel);
  v23 = type metadata accessor for MerchantImage(0);
  v22[*(v23 + 20)] = 1;
  v24 = a1;
  v25 = *(v23 + 24);
  *&v22[v25] = swift_getKeyPath(aP_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v15 + 104))(v17, *MEMORY[0x277CE0EE0], v14);
  v26 = sub_23875E090();
  KeyPath = swift_getKeyPath(asc_23876FC58);
  v28 = &v22[*(v18 + 36)];
  v29 = type metadata accessor for OrderImageStyleModifier(0);
  *&v28[*(v29 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v28[*(v29 + 40)] = swift_getKeyPath(aP_1);
  v30 = swift_storeEnumTagMultiPayload();
  *v28 = xmmword_2387643A0;
  *(v28 + 2) = 0;
  v28[24] = 1;
  *(v28 + 4) = v26;
  v28[40] = 0;
  v72 = v24;
  v31 = *(v24 + 1);
  v90 = *v24;
  v91 = v31;
  sub_2384397A8(v30, v32, v33);

  v34 = sub_23875DAA0();
  v36 = v35;
  LOBYTE(v29) = v37;
  sub_23875D830();
  v38 = sub_23875DA60();
  v40 = v39;
  LOBYTE(v25) = v41;

  sub_2384397FC(v34, v36, v29 & 1);

  sub_23875D890();
  v42 = sub_23875D9E0();
  v44 = v43;
  LOBYTE(v36) = v45;
  sub_2384397FC(v38, v40, v25 & 1);

  sub_23875E070();
  v75 = sub_23875DA10();
  v74 = v46;
  v73 = v47;
  v76 = v48;

  sub_2384397FC(v42, v44, v36 & 1);

  (*(v78 + 16))(v80, &v72[*(v77 + 24)], v79);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_238759270();
  sub_238567BF0(&qword_27DF0E528, MEMORY[0x277CC7808], MEMORY[0x277CC7800]);
  sub_238567BF0(&qword_27DF0DC38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v49 = sub_23875DA80();
  v51 = v50;
  LOBYTE(v36) = v52;
  sub_23875D7F0();
  v53 = sub_23875DA60();
  v55 = v54;
  LOBYTE(v38) = v56;

  sub_2384397FC(v49, v51, v36 & 1);

  sub_23875E080();
  v57 = sub_23875DA10();
  v59 = v58;
  LOBYTE(v29) = v60;
  v62 = v61;

  sub_2384397FC(v53, v55, v38 & 1);

  v63 = v88;
  sub_238567C38(v22, v88);
  LOBYTE(v38) = v73 & 1;
  LOBYTE(v90) = v73 & 1;
  v64 = v89;
  sub_238567C38(v63, v89);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E530, &qword_23876FC90);
  v66 = v64 + *(v65 + 48);
  v67 = v75;
  v68 = v74;
  *v66 = v75;
  *(v66 + 8) = v68;
  *(v66 + 16) = v38;
  *(v66 + 24) = v76;
  v69 = v64 + *(v65 + 64);
  *v69 = v57;
  *(v69 + 8) = v59;
  LOBYTE(v64) = v29 & 1;
  *(v69 + 16) = v29 & 1;
  *(v69 + 24) = v62;
  v70 = v68;
  sub_23843980C(v67, v68, v38);

  sub_23843980C(v57, v59, v64);

  sub_238439884(v22, &qword_27DF0C7D0, &unk_23876B3E0);
  sub_2384397FC(v57, v59, v64);

  sub_2384397FC(v67, v70, v90);

  sub_238439884(v63, &qword_27DF0C7D0, &unk_23876B3E0);

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsHeader.ViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsHeader.ViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2385677DC(uint64_t a1)
{
  result = type metadata accessor for OrderDetailsHeader.ViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_238567864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E4D0, &qword_23876FB88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2385678D4()
{
  result = qword_27DF0E4F8;
  if (!qword_27DF0E4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E4D8, &qword_23876FB90);
    sub_238567960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E4F8);
  }

  return result;
}

unint64_t sub_238567960()
{
  result = qword_27DF0E500;
  if (!qword_27DF0E500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E4D0, &qword_23876FB88);
    sub_2385679EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E500);
  }

  return result;
}

unint64_t sub_2385679EC()
{
  result = qword_27DF0E508;
  if (!qword_27DF0E508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E4F0, &qword_23876FC10);
    sub_238567AA4();
    sub_23843A3E8(&qword_27DF09C68, &unk_27DF12EF0, &unk_2387646D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E508);
  }

  return result;
}

unint64_t sub_238567AA4()
{
  result = qword_27DF0E510;
  if (!qword_27DF0E510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E4E8, &unk_23876FBA0);
    sub_23843A3E8(&qword_27DF0E518, &qword_27DF0E520, &qword_23876FC18, MEMORY[0x277CE1198]);
    sub_23843A3E8(&qword_27DF09C60, &qword_27DF09C20, &qword_2387711C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E510);
  }

  return result;
}

uint64_t sub_238567B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238567BF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238567C38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7D0, &unk_23876B3E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_238567CA8()
{
  result = qword_27DF0E538;
  if (!qword_27DF0E538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E540, &unk_23876FC98);
    sub_2385678D4();
    sub_238567BF0(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E538);
  }

  return result;
}

uint64_t sub_238567E68(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_238567EC8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_238567F60;
}

void sub_238567F60(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id PrivacyAppSpecifierProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PrivacyAppSpecifierProvider.init()()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_authorizationManager;
  v9[3] = sub_2387588D0();
  v9[4] = MEMORY[0x277CC70E0];
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_2387588C0();
  sub_23875A460();
  swift_allocObject();
  *&v0[v1] = sub_23875A420();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_appsSpecifiers] = MEMORY[0x277D84F90];
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PrivacyAppSpecifierProvider();
  v2 = objc_msgSendSuper2(&v8, sel_init);
  v3 = *MEMORY[0x277D38568];
  v4 = objc_opt_self();
  v5 = v2;
  v6 = [v4 reporterForSubject_];
  if (v6)
  {
  }

  else
  {
    [v4 beginSubjectReporting_];
  }

  return v5;
}

void sub_23856831C()
{
  v1 = v0;
  v2 = sub_238758850();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  sub_23875A450();
  v7 = sub_23875A440();
  v8 = v7[2];
  if (v8)
  {
    v43 = v1;
    v9 = MEMORY[0x277CC7098];
    v10 = sub_238569FD4(v8, 0, &qword_27DF0E578, &unk_238777420, MEMORY[0x277CC7098]);
    sub_23856BD5C(v46, &v10[(*(v3 + 80) + 32) & ~*(v3 + 80)], v8, v7, v9);
    v11 = v46[0];
    v12 = v46[1];
    v13 = v46[2];
    v44 = v46[4];
    v45 = v14;

    sub_238434840(v11);
    if (v45 != v8)
    {
      __break(1u);
LABEL_32:
      swift_once();
      goto LABEL_14;
    }

    v6 = MEMORY[0x277D84F90];
    v1 = v43;
  }

  else
  {
    v10 = v6;
  }

  v46[0] = v10;
  sub_238569DEC(v46);
  v43 = 0;

  v15 = v46[0];
  v44 = v6;
  v46[0] = v6;
  v16 = *(v15 + 16);
  v17 = (v3 + 16);
  v45 = v1;
  v12 = 0;
  while (v16 != v12)
  {
    if (v12 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_26;
    }

    (*(v3 + 16))(v5, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12++, v2);
    sub_238568B8C();
    v19 = v18;
    v20 = (*(v3 + 8))(v5, v2);
    if (v19)
    {
      MEMORY[0x23EE63730](v20);
      if (*((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v44 = *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23875EC90();
      }

      sub_23875ECB0();
      v44 = v46[0];
    }
  }

  v21 = v45;

  v12 = OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_appsSpecifiers;
  *(v21 + OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_appsSpecifiers) = v44;

  v3 = objc_opt_self();
  v22 = [v3 emptyGroupSpecifier];
  v2 = 0x2814F0000uLL;
  v5 = &unk_2814F1000;
  v13 = MEMORY[0x277D3FF88];
  v8 = &unk_278A55000;
  if (!v22)
  {
    goto LABEL_19;
  }

  v7 = v22;
  if (qword_2814F0880 != -1)
  {
    goto LABEL_32;
  }

LABEL_14:
  v23 = *(v5 + 370);
  v24 = sub_23875EA50();
  v25 = sub_23875EA50();
  v26 = sub_23875EA50();
  v27 = [v23 localizedStringForKey:v24 value:v25 table:v26];

  if (!v27)
  {
    sub_23875EA80();
    v27 = sub_23875EA50();
  }

  [v7 v8[332]];

  v28 = v7;
  MEMORY[0x23EE63730]();
  if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23875EC90();
  }

  sub_23875ECB0();

  v5 = &unk_2814F1000;
LABEL_19:
  v17 = v13;
  if (*(v2 + 2176) != -1)
  {
LABEL_26:
    swift_once();
  }

  v29 = *(v5 + 370);
  v30 = sub_23875EA50();
  v31 = sub_23875EA50();
  v32 = sub_23875EA50();
  v33 = [v29 localizedStringForKey:v30 value:v31 table:v32];

  if (!v33)
  {
    sub_23875EA80();
    v33 = sub_23875EA50();
  }

  v34 = [v3 preferenceSpecifierNamed:v33 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  if (v34)
  {
    v35 = v17;
    if (*(v45 + v12) >> 62)
    {
      sub_23875F3A0();
    }

    v36 = sub_23875EA50();
    v37 = sub_23875EA50();
    v38 = sub_23875EA50();
    v39 = [v29 localizedStringForKey:v36 value:v37 table:v38];

    sub_23875EA80();
    v40 = sub_23875EA50();

    [v34 setProperty:v40 forKey:*v35];

    v41 = v34;
    MEMORY[0x23EE63730]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23875EC90();
    }

    sub_23875ECB0();

    sub_238569CEC(v42, sub_2386CFF20, sub_2384913DC);
  }

  else
  {
    __break(1u);

    __break(1u);
  }
}

uint64_t sub_238568A88()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_238758840();
  v2 = v1;
  if (v0 == sub_238758840() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_23875F630();
  }

  return v4 & 1;
}

void sub_238568B8C()
{
  v1 = v0;
  v2 = sub_238758850();
  MEMORY[0x28223BE20](v2);
  v3 = sub_23875C1E0();
  MEMORY[0x28223BE20](v3);
  v4 = sub_238758840();
  v6 = v5;
  v7 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v8 = sub_2386CB5C4(v4, v6, 0);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 localizedName];
    if (!v10)
    {
      sub_23875EA80();
      v10 = sub_23875EA50();
    }

    v11 = objc_opt_self();
    type metadata accessor for AppSettingsController();
    v12 = [v11 preferenceSpecifierNamed:v10 target:v1 set:sel_authChanged:: get:sel_getAuthWithSpecifier_ detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

    if (v12)
    {
      sub_238758840();
      v13 = sub_23875EA50();

      v14 = sub_23875EA50();
      [v12 setProperty:v13 forKey:v14];

      sub_238758840();
      v15 = sub_23875EA50();

      [v12 setProperty:v15 forKey:*MEMORY[0x277D40008]];

      v16 = sub_23875ECD0();
      v17 = *MEMORY[0x277D40020];
      [v12 setProperty:v16 forKey:v17];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_238569084(uint64_t a1)
{
  v2 = v1;
  v23 = MEMORY[0x277D84F90];
  v3 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI27PrivacyAppSpecifierProvider_appsSpecifiers);
  if (v3 >> 62)
  {
    goto LABEL_34;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_35;
  }

LABEL_3:
  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EE63F70](v5, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = sub_23875EA50();
      v10 = [v8 propertyForKey_];

      if (v10)
      {
        sub_23875F2E0();
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
      }

      v22[0] = v20;
      v22[1] = v21;
      if (*(&v21 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && v19 == 1)
        {
          v11 = v8;
          MEMORY[0x23EE63730]();
          if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23875EC90();
          }

          sub_23875ECB0();
          v6 = v23;
          v12 = sub_23875ECD0();
          v13 = sub_23875EA50();
          [v11 setProperty:v12 forKey:v13];
        }

        else
        {
        }
      }

      else
      {

        sub_238439884(v22, &qword_27DF0A4A8, &qword_238767840);
      }

      ++v5;
    }

    while (v4 != v5);

    if (v6 >> 62)
    {
      while (1)
      {
        v3 = sub_23875F3A0();
        if (!v3)
        {
          break;
        }

LABEL_22:
        sub_23875A450();
        swift_beginAccess();
        v14 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x23EE63F70](v14, v6);
          }

          else
          {
            if (v14 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_33;
            }

            v15 = *(v6 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [Strong provider:v2 specifierDidChange:v16];

            swift_unknownObjectRelease();
          }

          else
          {
          }

          ++v14;
          if (v17 == v3)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v4 = sub_23875F3A0();
        if (v4)
        {
          goto LABEL_3;
        }

LABEL_35:
        v6 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
      v3 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        goto LABEL_22;
      }
    }

LABEL_37:
  }
}

id PrivacyAppSpecifierProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrivacyAppSpecifierProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23856953C(void *a1)
{
  v2 = sub_23875C1E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2387591F0();
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238758850();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23875EA50();
  v14 = [a1 propertyForKey_];

  if (v14)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26[0] = v24;
  v26[1] = v25;
  if (*(&v25 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_238758830();
      sub_23875A430();
      (*(v10 + 8))(v12, v9);
      v16 = v22;
      v15 = v23;
      (*(v22 + 104))(v8, *MEMORY[0x277CC77B8], v23);
      v20 = sub_238758A40();
      (*(v16 + 8))(v8, v15);
      return v20;
    }
  }

  else
  {
    sub_238439884(v26, &qword_27DF0A4A8, &qword_238767840);
  }

  sub_23875C120();
  v17 = sub_23875C1B0();
  v18 = sub_23875EFE0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2383F8000, v17, v18, "Expected bundleID property on specifier", v19, 2u);
    MEMORY[0x23EE64DF0](v19, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

void sub_238569B7C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
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

void sub_238569CEC(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_23875F3A0();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    if (!__OFADD__(*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10), v7))
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(sub_23875F3A0(), v7))
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v8 = *v3;
  v9 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v3 = v8;
    return;
  }

  v12 = *(v9 + 16);
  v13 = __OFADD__(v12, v11);
  v14 = v12 + v11;
  if (!v13)
  {
    *(v9 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_238569DEC(uint64_t *a1)
{
  v2 = *(sub_238758850() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_238491580(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_23856A0D0(v5);
  *a1 = v3;
}

void *sub_238569E94(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_238569F1C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E560, &qword_23876FD00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_238569FD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23856A0D0(uint64_t *a1)
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
        sub_238758850();
        v6 = sub_23875ECA0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_238758850() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_23856A570(v8, v9, a1, v4);
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
    sub_23856A1FC(0, v2, 1, a1);
  }
}

void sub_23856A1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_238758850();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v46 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = &v36 - v12;
  MEMORY[0x28223BE20](v13);
  v50 = &v36 - v14;
  v38 = a2;
  if (a3 != a2)
  {
    v15 = *a4;
    v16 = sub_23875ED50();
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v47 = v18;
    v48 = v16;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v49 = v17;
    v21 = (v15 + v19 * (a3 - 1));
    v43 = -v19;
    v44 = (v17 + 16);
    v22 = a1 - a3;
    v45 = v15;
    v37 = v19;
    v23 = v15 + v19 * a3;
LABEL_6:
    v41 = v21;
    v42 = a3;
    v39 = v23;
    v40 = v22;
    v25 = v21;
    while (1)
    {
      v26 = v47;
      v47(v50, v23, v8);
      v26(v51, v25, v8);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v27 = sub_238758840();
      v29 = v28;
      if (v27 == sub_238758840() && v29 == v30)
      {

        v24 = *v20;
        (*v20)(v51, v8);
        v24(v50, v8);
LABEL_5:
        a3 = v42 + 1;
        v21 = &v41[v37];
        v22 = v40 - 1;
        v23 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return;
        }

        goto LABEL_6;
      }

      v31 = sub_23875F630();

      v32 = *v20;
      (*v20)(v51, v8);
      v32(v50, v8);
      if ((v31 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v33 = *v44;
      v34 = v46;
      (*v44)(v46, v23, v8);
      swift_arrayInitWithTakeFrontToBack();
      v33(v25, v34, v8);
      v25 += v43;
      v23 += v43;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_23856A570(char **a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v5;
  v125 = a1;
  v9 = sub_238758850();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v129 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v141 = &v121 - v13;
  MEMORY[0x28223BE20](v14);
  v147 = &v121 - v15;
  MEMORY[0x28223BE20](v16);
  v146 = &v121 - v17;
  MEMORY[0x28223BE20](v18);
  v138 = &v121 - v19;
  MEMORY[0x28223BE20](v20);
  v137 = &v121 - v21;
  MEMORY[0x28223BE20](v22);
  v121 = &v121 - v23;
  v25.n128_f64[0] = MEMORY[0x28223BE20](v24);
  v123 = &v121 - v26;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_105:
    a4 = *v125;
    if (!*v125)
    {
      goto LABEL_145;
    }

    v4 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v115 = v4;
      goto LABEL_108;
    }

LABEL_139:
    v115 = sub_238490ED4(v4);
LABEL_108:
    v148 = v115;
    v4 = *(v115 + 2);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v116 = *&v115[16 * v4];
        v117 = v115;
        v118 = *&v115[16 * v4 + 24];
        sub_23856B1BC(*a3 + *(v10 + 72) * v116, (*a3 + *(v10 + 72) * *&v115[16 * v4 + 16]), (*a3 + *(v10 + 72) * v118), a4);
        if (v6)
        {
          goto LABEL_116;
        }

        if (v118 < v116)
        {
          goto LABEL_132;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_238490ED4(v117);
        }

        if (v4 - 2 >= *(v117 + 2))
        {
          goto LABEL_133;
        }

        v119 = &v117[16 * v4];
        *v119 = v116;
        *(v119 + 1) = v118;
        v148 = v117;
        sub_238490E48(v4 - 1);
        v115 = v148;
        v4 = *(v148 + 2);
        if (v4 <= 1)
        {
          goto LABEL_116;
        }
      }

      goto LABEL_143;
    }

    goto LABEL_116;
  }

  v28 = 0;
  v143 = v10 + 16;
  v144 = (v10 + 8);
  v142 = (v10 + 32);
  v29 = MEMORY[0x277D84F90];
  v126 = a3;
  v135 = v10;
  v145 = v9;
  v124 = a4;
  while (1)
  {
    v130 = v29;
    if (v28 + 1 >= v27)
    {
      v43 = v28 + 1;
    }

    else
    {
      v136 = v27;
      v30 = *a3;
      v31 = *(v10 + 72);
      v32 = v28;
      v33 = v30 + v31 * (v28 + 1);
      v34 = *(v10 + 16);
      v34(v123, v33, v9, v25);
      v140 = v30;
      v35 = v30 + v31 * v32;
      v4 = v121;
      v134 = v34;
      (v34)(v121, v35, v9);
      v36 = v123;
      LODWORD(v139) = sub_238568A88();
      if (v6)
      {
        v120 = *v144;
        (*v144)(v4, v9);
        (v120)(v36, v9);
LABEL_116:

        return;
      }

      v127 = 0;
      v37 = *v144;
      (*v144)(v4, v9);
      (v37)(v36, v9);
      v122 = v32;
      v38 = v32 + 2;
      v39 = v140 + v31 * v38;
      v40 = v31;
      v140 = v31;
      while (1)
      {
        v43 = v136;
        if (v136 == v38)
        {
          break;
        }

        v44 = v134;
        (v134)(v137, v39, v9);
        (v44)(v138, v33, v9);
        sub_23875ED50();
        sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v45 = sub_238758840();
        v47 = v46;
        if (v45 == sub_238758840() && v47 == v48)
        {
          v41 = 0;
        }

        else
        {
          v41 = sub_23875F630();
        }

        v4 = v144;
        v9 = v145;
        (v37)(v138, v145);
        (v37)(v137, v9);
        v42 = v139 ^ v41;
        ++v38;
        v40 = v140;
        v39 += v140;
        v33 += v140;
        v10 = v135;
        if (v42)
        {
          v43 = v38 - 1;
          break;
        }
      }

      v6 = v127;
      a3 = v126;
      v49 = v130;
      a4 = v124;
      v28 = v122;
      if (v139)
      {
        if (v43 < v122)
        {
          goto LABEL_138;
        }

        if (v122 < v43)
        {
          v4 = v40 * (v43 - 1);
          v50 = v43 * v40;
          v136 = v43;
          v51 = v122;
          v52 = v122 * v40;
          do
          {
            if (v51 != --v43)
            {
              v54 = *a3;
              if (!v54)
              {
                goto LABEL_142;
              }

              v55 = *v142;
              (*v142)(v129, v54 + v52, v145, v49);
              if (v52 < v4 || v54 + v52 >= (v54 + v50))
              {
                v53 = v145;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v53 = v145;
                if (v52 != v4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v55(v54 + v4, v129, v53);
              a3 = v126;
              v10 = v135;
              v49 = v130;
              v6 = v127;
              v40 = v140;
            }

            ++v51;
            v4 -= v40;
            v50 -= v40;
            v52 += v40;
          }

          while (v51 < v43);
          v9 = v145;
          a4 = v124;
          v28 = v122;
          v43 = v136;
        }
      }
    }

    v56 = a3[1];
    if (v43 < v56)
    {
      if (__OFSUB__(v43, v28))
      {
        goto LABEL_135;
      }

      if (v43 - v28 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v43 < v28)
    {
      goto LABEL_134;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v29 = v130;
    }

    else
    {
      v29 = sub_238490EE8(0, *(v130 + 2) + 1, 1, v130);
    }

    a4 = *(v29 + 2);
    v71 = *(v29 + 3);
    v4 = a4 + 1;
    if (a4 >= v71 >> 1)
    {
      v29 = sub_238490EE8((v71 > 1), a4 + 1, 1, v29);
    }

    *(v29 + 2) = v4;
    v72 = &v29[16 * a4];
    *(v72 + 4) = v28;
    *(v72 + 5) = v43;
    v73 = *v125;
    if (!*v125)
    {
      goto LABEL_144;
    }

    v131 = v43;
    if (a4)
    {
      while (1)
      {
        v74 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v75 = *(v29 + 4);
          v76 = *(v29 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_73:
          if (v78)
          {
            goto LABEL_123;
          }

          v91 = &v29[16 * v4];
          v93 = *v91;
          v92 = *(v91 + 1);
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_126;
          }

          v97 = &v29[16 * v74 + 32];
          v99 = *v97;
          v98 = *(v97 + 1);
          v85 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v85)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v95, v100))
          {
            goto LABEL_130;
          }

          if (v95 + v100 >= v77)
          {
            if (v77 < v100)
            {
              v74 = v4 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v101 = &v29[16 * v4];
        v103 = *v101;
        v102 = *(v101 + 1);
        v85 = __OFSUB__(v102, v103);
        v95 = v102 - v103;
        v96 = v85;
LABEL_87:
        if (v96)
        {
          goto LABEL_125;
        }

        v104 = &v29[16 * v74];
        v106 = *(v104 + 4);
        v105 = *(v104 + 5);
        v85 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v85)
        {
          goto LABEL_128;
        }

        if (v107 < v95)
        {
          goto LABEL_3;
        }

LABEL_94:
        a4 = v74 - 1;
        if (v74 - 1 >= v4)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v112 = v29;
        v4 = *&v29[16 * a4 + 32];
        v113 = *&v29[16 * v74 + 40];
        sub_23856B1BC(*a3 + *(v10 + 72) * v4, (*a3 + *(v10 + 72) * *&v29[16 * v74 + 32]), (*a3 + *(v10 + 72) * v113), v73);
        if (v6)
        {
          goto LABEL_116;
        }

        if (v113 < v4)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = sub_238490ED4(v112);
        }

        if (a4 >= *(v112 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v112[16 * a4];
        *(v114 + 4) = v4;
        *(v114 + 5) = v113;
        v148 = v112;
        sub_238490E48(v74);
        v29 = v148;
        v4 = *(v148 + 2);
        v9 = v145;
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v79 = &v29[16 * v4 + 32];
      v80 = *(v79 - 64);
      v81 = *(v79 - 56);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_121;
      }

      v84 = *(v79 - 48);
      v83 = *(v79 - 40);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_122;
      }

      v86 = &v29[16 * v4];
      v88 = *v86;
      v87 = *(v86 + 1);
      v85 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v85)
      {
        goto LABEL_124;
      }

      v85 = __OFADD__(v77, v89);
      v90 = v77 + v89;
      if (v85)
      {
        goto LABEL_127;
      }

      if (v90 >= v82)
      {
        v108 = &v29[16 * v74 + 32];
        v110 = *v108;
        v109 = *(v108 + 1);
        v85 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v85)
        {
          goto LABEL_131;
        }

        if (v77 < v111)
        {
          v74 = v4 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v131;
    a4 = v124;
    if (v131 >= v27)
    {
      goto LABEL_105;
    }
  }

  if (__OFADD__(v28, a4))
  {
    goto LABEL_136;
  }

  if ((v28 + a4) < v56)
  {
    v56 = v28 + a4;
  }

  if (v56 < v28)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v131 = v56;
  if (v43 == v56)
  {
    goto LABEL_53;
  }

  v127 = v6;
  v57 = *a3;
  sub_23875ED50();
  v58 = *(v10 + 72);
  v59 = *(v10 + 16);
  v60 = (v57 + v58 * (v43 - 1));
  v139 = -v58;
  v122 = v28;
  v61 = v28 - v43;
  v140 = v57;
  v128 = v58;
  v62 = v57 + v43 * v58;
LABEL_42:
  v136 = v43;
  v132 = v62;
  v133 = v61;
  v63 = v62;
  v134 = v60;
  a4 = v60;
  while (1)
  {
    v59(v146, v63, v9);
    v59(v147, a4, v9);
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v64 = sub_238758840();
    v66 = v65;
    if (v64 == sub_238758840() && v66 == v67)
    {

      v4 = v144;
      v9 = v145;
      a4 = *v144;
      (*v144)(v147, v145);
      (a4)(v146, v9);
LABEL_41:
      v43 = v136 + 1;
      v60 = &v134[v128];
      v61 = v133 - 1;
      v62 = v132 + v128;
      if (v136 + 1 == v131)
      {
        v6 = v127;
        a3 = v126;
        v10 = v135;
        v43 = v131;
        v28 = v122;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v68 = sub_23875F630();

    v9 = v145;
    v4 = *v144;
    (*v144)(v147, v145);
    (v4)(v146, v9);
    if ((v68 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v140)
    {
      break;
    }

    v69 = v141;
    v4 = *v142;
    (*v142)(v141, v63, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v4)(a4, v69, v9);
    a4 += v139;
    v63 += v139;
    if (__CFADD__(v61++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

void sub_23856B1BC(unint64_t a1, char *a2, char *a3, char *a4)
{
  v8 = sub_238758850();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v61 = &v54 - v12;
  MEMORY[0x28223BE20](v13);
  v64 = &v54 - v14;
  MEMORY[0x28223BE20](v15);
  v63 = &v54 - v16;
  v60 = *(v17 + 72);
  if (!v60)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v60 == -1)
  {
    goto LABEL_73;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v60 == -1)
  {
    goto LABEL_74;
  }

  v19 = &a2[-a1] / v60;
  v67 = a1;
  v66 = a4;
  if (v19 >= v18 / v60)
  {
    v21 = v18 / v60 * v60;
    if (a4 < a2 || &a2[v21] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v21 < 1)
    {
      v40 = &a4[v21];
    }

    else
    {
      v38 = -v60;
      v57 = a4;
      v58 = (v9 + 16);
      v56 = (v9 + 8);
      v39 = &a4[v21];
      v40 = &a4[v21];
      v64 = -v60;
      do
      {
        v55 = v40;
        v41 = a2;
        v42 = &a2[v38];
        v63 = v42;
        v60 = v41;
        while (1)
        {
          if (v41 <= a1)
          {
            v67 = v41;
            v65 = v55;
            goto LABEL_71;
          }

          v43 = a3;
          v59 = v40;
          v44 = v39 + v38;
          v45 = *v58;
          (*v58)(v61, v39 + v38, v8);
          v45(v62, v42, v8);
          sub_23875ED50();
          sub_23875ED40();
          sub_23875ECE0();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v46 = sub_238758840();
          v48 = v47;
          if (v46 == sub_238758840() && v48 == v49)
          {
            v50 = 0;
          }

          else
          {
            v50 = sub_23875F630();
          }

          a3 += v64;
          v51 = *v56;
          (*v56)(v62, v8);
          v51(v61, v8);
          if (v50)
          {
            break;
          }

          v40 = v44;
          v42 = v63;
          v52 = v57;
          if (v43 < v39 || a3 >= v39)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v43 != v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v39 = v44;
          v38 = v64;
          v41 = v60;
          if (v44 <= v52)
          {
            a2 = v60;
            goto LABEL_70;
          }
        }

        a2 = v63;
        v53 = v57;
        if (v43 < v60 || a3 >= v60)
        {
          swift_arrayInitWithTakeFrontToBack();
          v40 = v59;
        }

        else
        {
          v40 = v59;
          if (v43 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v38 = v64;
      }

      while (v39 > v53);
    }

LABEL_70:
    v67 = a2;
    v65 = v40;
  }

  else
  {
    v20 = v19 * v60;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v62 = &a4[v20];
    v65 = &a4[v20];
    if (v20 >= 1 && a2 < a3)
    {
      v58 = *(v9 + 16);
      v59 = a3;
      v61 = (v9 + 16);
      v23 = (v9 + 8);
      do
      {
        v24 = a2;
        v25 = a2;
        v26 = v58;
        (v58)(v63, v25, v8);
        v27 = a4;
        (v26)(v64, a4, v8);
        sub_23875ED50();
        sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v28 = sub_238758840();
        v30 = v29;
        if (v28 == sub_238758840() && v30 == v31)
        {

          v32 = *v23;
          (*v23)(v64, v8);
          v32(v63, v8);
        }

        else
        {
          v33 = sub_23875F630();

          v34 = *v23;
          (*v23)(v64, v8);
          v34(v63, v8);
          if (v33)
          {
            a2 = &v24[v60];
            a4 = v27;
            if (a1 < v24 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
              v35 = v59;
            }

            else
            {
              v35 = v59;
              if (a1 != v24)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v37 = v60;
            goto LABEL_39;
          }
        }

        v36 = v27;
        v37 = v60;
        a4 = (v36 + v60);
        a2 = v24;
        if (a1 < v36 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          v35 = v59;
        }

        else
        {
          v35 = v59;
          if (a1 != v36)
          {
            swift_arrayInitWithTakeBackToFront();
            v66 = a4;
            goto LABEL_39;
          }
        }

        v66 = a4;
LABEL_39:
        a1 += v37;
        v67 = a1;
      }

      while (a4 < v62 && a2 < v35);
    }
  }

LABEL_71:
  sub_238708FF0(&v67, &v66, &v65);
}

void (*sub_23856B91C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EE63F70](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_23856B99C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_23856B9A4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EE63F70](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_23856BA24;
  }

  __break(1u);
  return result;
}

void (*sub_23856BA2C(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EE63F70](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_23856C35C;
  }

  __break(1u);
  return result;
}

void *sub_23856BAAC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
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

        goto LABEL_23;
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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_23856BD5C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
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

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_23856C004(void *a1)
{
  v2 = v1;
  v4 = sub_23875C1E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238758850();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875EA50();
  v13 = [a1 propertyForKey_];

  if (v13)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_238758830();
      sub_23875A410();
      (*(v9 + 8))(v11, v8);
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result provider:v2 specifierDidChange:a1];
        return swift_unknownObjectRelease();
      }

      return result;
    }
  }

  else
  {
    sub_238439884(v21, &qword_27DF0A4A8, &qword_238767840);
  }

  sub_23875C120();
  v15 = sub_23875C1B0();
  v16 = sub_23875EFE0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2383F8000, v15, v16, "Expected bundleID property on specifier", v17, 2u);
    MEMORY[0x23EE64DF0](v17, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_23856C304()
{
  result = qword_27DF0E570;
  if (!qword_27DF0E570)
  {
    sub_238758850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E570);
  }

  return result;
}

uint64_t sub_23856C364()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2387632F0;
  v1 = type metadata accessor for LineItemView.ViewModel(0);
  sub_23856F608(v1, v2, v3);
  v4 = sub_23875F2C0();
  v6 = v5;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_238448C58(v4, v5, v7);
  *(v0 + 32) = v4;
  *(v0 + 40) = v6;
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

  return v13;
}

uint64_t sub_23856C518()
{
  v32 = sub_23875BD20();
  v1 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v3 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v31 - v5;
  v7 = sub_238758090();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LineItemView.ViewModel(0);
  sub_23843981C(v0 + *(v11 + 24), v6, &unk_27DF0B080, &unk_2387662A0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_238439884(v6, &unk_27DF0B080, &unk_2387662A0);
    return sub_23856C364();
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v31[1] = "FinanceKitUI/LineItemView.swift";
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_238763B60;
    v33 = *(v0 + *(v11 + 28));
    sub_23856F608(v13, v14, v15);
    v16 = sub_23875F2C0();
    v18 = v17;
    v19 = MEMORY[0x277D837D0];
    *(v13 + 56) = MEMORY[0x277D837D0];
    v21 = sub_238448C58(v16, v17, v20);
    *(v13 + 64) = v21;
    *(v13 + 32) = v16;
    *(v13 + 40) = v18;
    sub_23875BCC0();
    v22 = sub_238758080();
    v24 = v23;
    (*(v1 + 8))(v3, v32);
    *(v13 + 96) = v19;
    *(v13 + 104) = v21;
    *(v13 + 72) = v22;
    *(v13 + 80) = v24;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v25 = qword_2814F1B90;
    v26 = sub_23875EA50();
    v27 = sub_23875EA50();
    v28 = sub_23875EA50();
    v29 = [v25 localizedStringForKey:v26 value:v27 table:v28];

    sub_23875EA80();
    v30 = sub_23875EAA0();

    (*(v8 + 8))(v10, v7);
    return v30;
  }
}

uint64_t LineItemView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for LineItemView(0) + 20));
  sub_23856F5A0(v1, a1, type metadata accessor for LineItemView.ViewModel);
  v4 = type metadata accessor for LineItemView_iOS(0);
  *(a1 + *(v4 + 20)) = v3;
  v5 = *(v4 + 24);
  *(a1 + v5) = swift_getKeyPath(byte_23876FD20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23856C9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 20));
  sub_23856F5A0(v2, a2, type metadata accessor for LineItemView.ViewModel);
  v5 = type metadata accessor for LineItemView_iOS(0);
  *(a2 + *(v5 + 20)) = v4;
  v6 = *(v5 + 24);
  *(a2 + v6) = swift_getKeyPath(byte_23876FD20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23856CA5C@<X0>(void *a1@<X8>)
{
  v51 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E5B8, &qword_23876FE78);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v43 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E5C0, &qword_23876FE80);
  MEMORY[0x28223BE20](v50);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v43 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E5C8, &qword_23876FE88);
  MEMORY[0x28223BE20](v48);
  v49 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E5D0, &qword_23876FE90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E5D8, &qword_23876FE98);
  MEMORY[0x28223BE20](v47);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v44 = &v43 - v15;
  v16 = sub_23875C880();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v43 - v21;
  type metadata accessor for LineItemView_iOS(0);
  v23 = v1;
  sub_2384D5138(v22);
  (*(v17 + 104))(v19, *MEMORY[0x277CDF9F0], v16);
  sub_23856F3E8(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v24 = sub_23875E9C0();
  v25 = *(v17 + 8);
  v25(v19, v16);
  v25(v22, v16);
  if (v24)
  {
    *v11 = sub_23875CE50();
    *(v11 + 1) = 0x4028000000000000;
    v11[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E608, &qword_23876FEA8);
    sub_23856D0AC(v23, &v11[*(v26 + 44)]);
    sub_23875E4B0();
    sub_23875C9C0();
    sub_2384396E4(v11, v13, &qword_27DF0E5D0, &qword_23876FE90);
    v27 = &v13[*(v47 + 36)];
    v28 = v57;
    *(v27 + 4) = v56;
    *(v27 + 5) = v28;
    *(v27 + 6) = v58;
    v29 = v53;
    *v27 = v52;
    *(v27 + 1) = v29;
    v30 = v55;
    *(v27 + 2) = v54;
    *(v27 + 3) = v30;
    v31 = v44;
    sub_2384396E4(v13, v44, &qword_27DF0E5D8, &qword_23876FE98);
    sub_23843981C(v31, v49, &qword_27DF0E5D8, &qword_23876FE98);
    swift_storeEnumTagMultiPayload();
    sub_23856F430();
    sub_23856F4E8();
    sub_23875D1B0();
    v32 = v31;
    v33 = &qword_27DF0E5D8;
    v34 = &qword_23876FE98;
  }

  else
  {
    *v4 = sub_23875D030();
    *(v4 + 1) = 0x4010000000000000;
    v4[16] = 0;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E5E0, &qword_23876FEA0);
    sub_23856E0B0(v23, &v4[*(v35 + 44)]);
    sub_23875E4B0();
    sub_23875C9C0();
    v36 = v45;
    sub_2384396E4(v4, v45, &qword_27DF0E5B8, &qword_23876FE78);
    v37 = (v36 + *(v50 + 36));
    v38 = v57;
    v37[4] = v56;
    v37[5] = v38;
    v37[6] = v58;
    v39 = v53;
    *v37 = v52;
    v37[1] = v39;
    v40 = v55;
    v37[2] = v54;
    v37[3] = v40;
    v41 = v46;
    sub_2384396E4(v36, v46, &qword_27DF0E5C0, &qword_23876FE80);
    sub_23843981C(v41, v49, &qword_27DF0E5C0, &qword_23876FE80);
    swift_storeEnumTagMultiPayload();
    sub_23856F430();
    sub_23856F4E8();
    sub_23875D1B0();
    v32 = v41;
    v33 = &qword_27DF0E5C0;
    v34 = &qword_23876FE80;
  }

  return sub_238439884(v32, v33, v34);
}

double sub_23856D0AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E610, &unk_23876FEB0);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = sub_23875DFD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E618, &unk_2387766D0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  sub_23875ED50();
  v28 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = type metadata accessor for LineItemView.ViewModel(0);
  sub_23856F5A0(v29 + *(v17 + 32), v16, type metadata accessor for ProductImage.ViewModel);
  v18 = *(type metadata accessor for ProductImage(0) + 20);
  *&v16[v18] = swift_getKeyPath("p");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v8 + 104))(v10, *MEMORY[0x277CE0EE0], v7);
  v19 = sub_23875E090();
  KeyPath = swift_getKeyPath(byte_23876FD20);
  v21 = &v16[*(v11 + 36)];
  v22 = type metadata accessor for OrderImageStyleModifier(0);
  *&v21[*(v22 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v21[*(v22 + 40)] = swift_getKeyPath("p");
  swift_storeEnumTagMultiPayload();
  *v21 = xmmword_23876FD10;
  *(v21 + 2) = 0;
  v21[24] = 1;
  *(v21 + 4) = v19;
  v21[40] = 0;
  *v6 = sub_23875D030();
  *(v6 + 1) = 0x4010000000000000;
  v6[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E620, &qword_23876FEF8);
  sub_23856D518(&v6[*(v23 + 44)]);
  sub_23843981C(v16, v13, &qword_27DF0E618, &unk_2387766D0);
  v24 = v31;
  sub_23843981C(v6, v31, &qword_27DF0E610, &unk_23876FEB0);
  v25 = v30;
  sub_23843981C(v13, v30, &qword_27DF0E618, &unk_2387766D0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E628, &qword_23876FF00);
  sub_23843981C(v24, v25 + *(v26 + 48), &qword_27DF0E610, &unk_23876FEB0);
  sub_238439884(v6, &qword_27DF0E610, &unk_23876FEB0);
  sub_238439884(v16, &qword_27DF0E618, &unk_2387766D0);
  sub_238439884(v24, &qword_27DF0E610, &unk_23876FEB0);
  sub_238439884(v13, &qword_27DF0E618, &unk_2387766D0);

  return result;
}

double sub_23856D518@<D0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E630, &unk_23876FF08);
  MEMORY[0x28223BE20](v1 - 8);
  v46 = &v39[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v5 = &v39[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v39[-v9];
  sub_23875ED50();
  v43 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23856D8E8(v10);
  sub_23856DBE8(v5);
  v47 = sub_23856C518();
  v48 = v11;
  sub_2384397A8(v47, v11, v12);
  v13 = sub_23875DAA0();
  v15 = v14;
  v41 = v10;
  v42 = v5;
  v17 = v16;
  sub_23875D7F0();
  v18 = sub_23875DA60();
  v20 = v19;
  v22 = v21;

  sub_2384397FC(v13, v15, v17 & 1);

  LODWORD(v47) = sub_23875D440();
  v23 = sub_23875DA20();
  v25 = v24;
  v40 = v26;
  v28 = v27;
  sub_2384397FC(v18, v20, v22 & 1);

  v29 = v41;
  v30 = v44;
  sub_23843981C(v41, v44, &qword_27DF0A028, &qword_238764FC0);
  v31 = v42;
  v32 = v46;
  sub_23843981C(v42, v46, &qword_27DF0E630, &unk_23876FF08);
  v33 = v45;
  sub_23843981C(v30, v45, &qword_27DF0A028, &qword_238764FC0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E638, &unk_23876FF18);
  sub_23843981C(v32, v33 + *(v34 + 48), &qword_27DF0E630, &unk_23876FF08);
  v35 = v33 + *(v34 + 64);
  *v35 = v23;
  *(v35 + 8) = v25;
  v36 = v40;
  v37 = v40 & 1;
  *(v35 + 16) = v40 & 1;
  *(v35 + 24) = v28;
  sub_23843980C(v23, v25, v36 & 1);

  sub_238439884(v31, &qword_27DF0E630, &unk_23876FF08);
  sub_238439884(v29, &qword_27DF0A028, &qword_238764FC0);
  sub_2384397FC(v23, v25, v37);

  sub_238439884(v32, &qword_27DF0E630, &unk_23876FF08);
  sub_238439884(v30, &qword_27DF0A028, &qword_238764FC0);

  return result;
}

uint64_t sub_23856D8E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875C880();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v34[-v8];
  v10 = v1[1];
  v39 = *v1;
  v40 = v10;
  sub_2384397A8(v11, v12, v13);

  v14 = sub_23875DAA0();
  v16 = v15;
  v18 = v17;
  sub_23875D890();
  v19 = sub_23875D9E0();
  v36 = v20;
  v37 = v19;
  v35 = v21;
  v38 = v22;
  sub_2384397FC(v14, v16, v18 & 1);

  v23 = 0;
  v24 = *(v1 + *(type metadata accessor for LineItemView_iOS(0) + 20));
  if (v24 == 1)
  {
    sub_2384D5138(v9);
    (*(v4 + 104))(v6, *MEMORY[0x277CDF9D8], v3);
    sub_23856F3E8(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    v25 = sub_23875E9C0();
    v26 = *(v4 + 8);
    v26(v6, v3);
    v26(v9, v3);
    if (v25)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }
  }

  KeyPath = swift_getKeyPath(byte_23876FF28);
  v28 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0) + 36));
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A040, &qword_238765ED0) + 28);
  v30 = *MEMORY[0x277CE0B28];
  v31 = sub_23875DA00();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  result = swift_getKeyPath(byte_23876FF60);
  *v28 = result;
  v33 = v36;
  *a1 = v37;
  *(a1 + 8) = v33;
  *(a1 + 16) = v35 & 1;
  *(a1 + 24) = v38;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v23;
  *(a1 + 48) = v24 ^ 1;
  return result;
}

uint64_t sub_23856DBE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875C880();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v21 = *(v1 + 24);
  if (v21)
  {
    v59 = v9;
    v60 = v6;
    v61 = v4;
    v62 = v3;
    v66 = &v58 - v19;
    v67 = v18;
    v68 = v17;
    v69 = a1;
    v70 = *(v1 + 16);
    v71 = v21;
    sub_2384397A8(v14, v15, v16);

    v22 = sub_23875DAA0();
    v24 = v23;
    v26 = v25;
    sub_23875D7F0();
    v27 = sub_23875DA60();
    v65 = v1;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_2384397FC(v22, v24, v26 & 1);

    LODWORD(v70) = sub_23875D440();
    v33 = sub_23875DA20();
    v35 = v34;
    v63 = v36;
    v64 = v37;
    v38 = v65;
    sub_2384397FC(v28, v30, v32 & 1);

    v39 = 0;
    v40 = *(v38 + *(type metadata accessor for LineItemView_iOS(0) + 20));
    if (v40 == 1)
    {
      v41 = v59;
      sub_2384D5138(v59);
      v43 = v60;
      v42 = v61;
      v44 = v62;
      (*(v61 + 104))(v60, *MEMORY[0x277CDF9D8], v62);
      sub_23856F3E8(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
      v45 = sub_23875E9C0();
      v46 = *(v42 + 8);
      v46(v43, v44);
      v46(v41, v44);
      if (v45)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }
    }

    KeyPath = swift_getKeyPath(byte_23876FF28);
    v48 = v68;
    v49 = &v12[*(v68 + 36)];
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A040, &qword_238765ED0) + 28);
    v51 = *MEMORY[0x277CE0B28];
    v52 = sub_23875DA00();
    (*(*(v52 - 8) + 104))(&v49[v50], v51, v52);
    *v49 = swift_getKeyPath(byte_23876FF60);
    *v12 = v33;
    *(v12 + 1) = v35;
    v12[16] = v63 & 1;
    *(v12 + 3) = v64;
    *(v12 + 4) = KeyPath;
    *(v12 + 5) = v39;
    v12[48] = v40 ^ 1;
    v53 = v66;
    sub_2384396E4(v12, v66, &qword_27DF0A028, &qword_238764FC0);
    v54 = v53;
    v55 = v69;
    sub_2384396E4(v54, v69, &qword_27DF0A028, &qword_238764FC0);
    return (*(v67 + 56))(v55, 0, 1, v48);
  }

  else
  {
    v57 = *(v18 + 56);

    return v57(a1, 1, 1, v20);
  }
}

double sub_23856E0B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E630, &unk_23876FF08);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v54 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v63 = &v54 - v11;
  v12 = sub_23875DFD0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E618, &unk_2387766D0);
  MEMORY[0x28223BE20](v16);
  v58 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  sub_23875ED50();
  v57 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = type metadata accessor for LineItemView.ViewModel(0);
  sub_23856F5A0(a1 + *(v21 + 32), v20, type metadata accessor for ProductImage.ViewModel);
  v22 = v20;
  v23 = *(type metadata accessor for ProductImage(0) + 20);
  *(v22 + v23) = swift_getKeyPath("p");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  v62 = v22;
  swift_storeEnumTagMultiPayload();
  (*(v13 + 104))(v15, *MEMORY[0x277CE0EE0], v12);
  v24 = sub_23875E090();
  KeyPath = swift_getKeyPath(byte_23876FD20);
  v26 = v22 + *(v16 + 36);
  v27 = type metadata accessor for OrderImageStyleModifier(0);
  *(v26 + *(v27 + 36)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *(v26 + *(v27 + 40)) = swift_getKeyPath("p");
  swift_storeEnumTagMultiPayload();
  *v26 = xmmword_23876FD10;
  *(v26 + 16) = 0;
  *(v26 + 24) = 1;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  sub_23856D8E8(v63);
  sub_23856DBE8(v7);
  v64 = sub_23856C518();
  v65 = v28;
  sub_2384397A8(v64, v28, v29);
  v30 = sub_23875DAA0();
  v32 = v31;
  LOBYTE(v24) = v33;
  sub_23875D7F0();
  v34 = sub_23875DA60();
  v36 = v35;
  v54 = v7;
  v38 = v37;

  sub_2384397FC(v30, v32, v24 & 1);

  LODWORD(v64) = sub_23875D440();
  v39 = sub_23875DA20();
  v41 = v40;
  v55 = v42;
  v56 = v43;
  sub_2384397FC(v34, v36, v38 & 1);

  v44 = v58;
  sub_23843981C(v62, v58, &qword_27DF0E618, &unk_2387766D0);
  v45 = v63;
  v46 = v60;
  sub_23843981C(v63, v60, &qword_27DF0A028, &qword_238764FC0);
  v47 = v54;
  v48 = v61;
  sub_23843981C(v54, v61, &qword_27DF0E630, &unk_23876FF08);
  v49 = v59;
  sub_23843981C(v44, v59, &qword_27DF0E618, &unk_2387766D0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E648, &qword_23876FF90);
  sub_23843981C(v46, v49 + v50[12], &qword_27DF0A028, &qword_238764FC0);
  sub_23843981C(v48, v49 + v50[16], &qword_27DF0E630, &unk_23876FF08);
  v51 = v49 + v50[20];
  *v51 = v39;
  *(v51 + 8) = v41;
  v52 = v55;
  LOBYTE(v49) = v55 & 1;
  *(v51 + 16) = v55 & 1;
  *(v51 + 24) = v56;
  sub_23843980C(v39, v41, v52 & 1);

  sub_238439884(v47, &qword_27DF0E630, &unk_23876FF08);
  sub_238439884(v45, &qword_27DF0A028, &qword_238764FC0);
  sub_238439884(v62, &qword_27DF0E618, &unk_2387766D0);
  sub_2384397FC(v39, v41, v49);

  sub_238439884(v48, &qword_27DF0E630, &unk_23876FF08);
  sub_238439884(v46, &qword_27DF0A028, &qword_238764FC0);
  sub_238439884(v44, &qword_27DF0E618, &unk_2387766D0);

  return result;
}

uint64_t sub_23856E74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v46 = type metadata accessor for ProductImage.ViewModel(0);
  MEMORY[0x28223BE20](v46);
  v45 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875AF90();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_23875B210();
  v42 = v17;
  v43 = v16;
  v38 = sub_23875B230();
  v19 = v18;
  sub_23875B200();
  v37 = sub_23875B220();
  v39 = a1;
  v36 = sub_23875B1F0();
  v21 = v20;
  v41 = v8;
  v22 = *(v8 + 16);
  v44 = a2;
  v22(v12, a2, v7);
  v23 = type metadata accessor for LineItemView.ViewModel(0);
  v24 = *(v23 + 24);
  v25 = sub_238758090();
  (*(*(v25 - 8) + 56))(&a3[v24], 1, 1, v25);
  v26 = v42;
  *a3 = v43;
  *(a3 + 1) = v26;
  *(a3 + 2) = v38;
  *(a3 + 3) = v19;
  v27 = v40;
  v43 = v15;
  sub_23853098C(v15, &a3[v24]);
  v42 = v23;
  *&a3[*(v23 + 28)] = v37;
  v22(v27, v12, v7);
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_2387632F0;
    *(v28 + 32) = v36;
    *(v28 + 40) = v21;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v29 = v45;
  v22(v45, v27, v7);
  if (*(v28 + 16) >= 5uLL)
  {
    sub_23852EE64(v28, v28 + 32, 0, 9uLL);
    v31 = v30;

    v28 = v31;
  }

  v32 = *(v41 + 8);
  v32(v44, v7);
  v33 = sub_23875B240();
  (*(*(v33 - 8) + 8))(v39, v33);
  v32(v27, v7);
  v32(v12, v7);
  sub_238439884(v43, &unk_27DF0B080, &unk_2387662A0);
  *(v29 + *(v46 + 20)) = v28;
  return sub_23856F65C(v29, &a3[*(v42 + 32)]);
}

uint64_t sub_23856EB10@<X0>(uint64_t a1@<X8>)
{
  result = sub_23875CD60();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23856EB98(uint64_t a1)
{
  v2 = sub_23875DA00();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23875CAB0();
}

uint64_t _s12FinanceKitUI12LineItemViewV0F5ModelV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_238758090();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC88, &qword_23876D250);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  if (*a1 != *a2 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v14 = a1[3];
  v15 = a2[3];
  if (v14)
  {
    if (!v15 || (a1[2] != a2[2] || v14 != v15) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v28 = v7;
  v29 = type metadata accessor for LineItemView.ViewModel(0);
  v16 = v29[6];
  v17 = *(v11 + 48);
  sub_23843981C(a1 + v16, v13, &unk_27DF0B080, &unk_2387662A0);
  sub_23843981C(a2 + v16, &v13[v17], &unk_27DF0B080, &unk_2387662A0);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_23843981C(v13, v10, &unk_27DF0B080, &unk_2387662A0);
    if (v18(&v13[v17], 1, v4) != 1)
    {
      v19 = &v13[v17];
      v20 = v28;
      (*(v5 + 32))(v28, v19, v4);
      sub_23856F3E8(&qword_27DF0BC90, MEMORY[0x277CC6DC0], MEMORY[0x277CC6DD0]);
      v21 = sub_23875E9E0();
      v22 = *(v5 + 8);
      v22(v20, v4);
      v22(v10, v4);
      sub_238439884(v13, &unk_27DF0B080, &unk_2387662A0);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    (*(v5 + 8))(v10, v4);
LABEL_15:
    sub_238439884(v13, &qword_27DF0BC88, &qword_23876D250);
    return 0;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_15;
  }

  sub_238439884(v13, &unk_27DF0B080, &unk_2387662A0);
LABEL_17:
  if (*(a1 + v29[7]) == *(a2 + v29[7]))
  {
    v23 = v29[8];
    v24 = a1 + v23;
    v25 = a2 + v23;
    if (MEMORY[0x23EE5FA60](a1 + v23, v25))
    {
      v26 = type metadata accessor for ProductImage.ViewModel(0);
      if (sub_238518C1C(*&v24[*(v26 + 20)], *&v25[*(v26 + 20)]))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_23856F104(uint64_t a1)
{
  result = type metadata accessor for LineItemView.ViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23856F1A0(uint64_t a1)
{
  sub_2384561E8();
  if (v1 <= 0x3F)
  {
    sub_23856F368(319, &qword_27DF0BB88, MEMORY[0x277CC6DC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ProductImage.ViewModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23856F2AC(uint64_t a1)
{
  type metadata accessor for LineItemView.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_23856F368(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23856F368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23856F3E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23856F430()
{
  result = qword_27DF0E5E8;
  if (!qword_27DF0E5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E5D8, &qword_23876FE98);
    sub_23843A3E8(&qword_27DF0E5F0, &qword_27DF0E5D0, &qword_23876FE90, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E5E8);
  }

  return result;
}

unint64_t sub_23856F4E8()
{
  result = qword_27DF0E5F8;
  if (!qword_27DF0E5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E5C0, &qword_23876FE80);
    sub_23843A3E8(&qword_27DF0E600, &qword_27DF0E5B8, &qword_23876FE78, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E5F8);
  }

  return result;
}

uint64_t sub_23856F5A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_23856F608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0E640;
  if (!qword_27DF0E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E640);
  }

  return result;
}

uint64_t sub_23856F65C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductImage.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23856F6C0()
{
  result = qword_27DF0E650;
  if (!qword_27DF0E650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E658, &qword_23876FF98);
    sub_23856F430();
    sub_23856F4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E650);
  }

  return result;
}

uint64_t sub_23856F74C(uint64_t a1)
{
  v2 = sub_2387587A0();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  v5 = 0;
  if (v4 != *MEMORY[0x277CC7028])
  {
    if (v4 == *MEMORY[0x277CC6FC0])
    {
      return 1;
    }

    else if (v4 == *MEMORY[0x277CC6FF8])
    {
      return 2;
    }

    else if (v4 == *MEMORY[0x277CC6FD0])
    {
      return 3;
    }

    else if (v4 == *MEMORY[0x277CC7010])
    {
      return 4;
    }

    else if (v4 == *MEMORY[0x277CC7020])
    {
      return 5;
    }

    else if (v4 == *MEMORY[0x277CC6FE8])
    {
      return 7;
    }

    else if (v4 == *MEMORY[0x277CC7030])
    {
      return 8;
    }

    else if (v4 == *MEMORY[0x277CC7000])
    {
      return 9;
    }

    else if (v4 == *MEMORY[0x277CC7038])
    {
      return 10;
    }

    else if (v4 == *MEMORY[0x277CC6FE0])
    {
      return 11;
    }

    else if (v4 == *MEMORY[0x277CC7040])
    {
      return 13;
    }

    else if (v4 == *MEMORY[0x277CC6FC8])
    {
      return 14;
    }

    else if (v4 == *MEMORY[0x277CC6FF0])
    {
      return 12;
    }

    else if (v4 == *MEMORY[0x277CC6FD8])
    {
      return 6;
    }

    else if (v4 == *MEMORY[0x277CC7008])
    {
      return 15;
    }

    else if (v4 == *MEMORY[0x277CC7018])
    {
      return 16;
    }

    else
    {
      (*(v3 + 8))(a1, v2);
      return 0;
    }
  }

  return v5;
}

uint64_t type metadata accessor for FetchedOrderDetails(uint64_t a1)
{
  result = qword_27DF0E668;
  if (!qword_27DF0E668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23856FA48(uint64_t a1)
{
  sub_2384561E8();
  if (v1 <= 0x3F)
  {
    sub_23856FACC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23856FACC(uint64_t a1)
{
  if (!qword_27DF0E678)
  {
    sub_238757DF0();
    v1 = sub_23875C520();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0E678);
    }
  }
}

void sub_23856FB40(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E680, &qword_238770018);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-1] - v6;
  type metadata accessor for FetchedOrderDetails(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E660, &unk_23876FFA0);
  sub_23875C500();
  sub_23856FD20();
  sub_23875EED0();
  sub_23875EF00();
  if (v15[4] == v15[0])
  {
    (*(v5 + 8))(v7, v4);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    KeyPath = 0;
  }

  else
  {
    v12 = sub_23875EF20();
    v8 = *v13;
    v12(v15, 0);
    (*(v5 + 8))(v7, v4);
    v9 = *v2;
    v10 = v2[1];
    KeyPath = swift_getKeyPath(byte_238770020);
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 0;
}

unint64_t sub_23856FD20()
{
  result = qword_27DF0E688;
  if (!qword_27DF0E688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E680, &qword_238770018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E688);
  }

  return result;
}

unint64_t sub_23856FD84()
{
  result = qword_27DF0E690;
  if (!qword_27DF0E690)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E698, &qword_238770048);
    sub_23856FE08(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E690);
  }

  return result;
}

unint64_t sub_23856FE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0E6A0;
  if (!qword_27DF0E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E6A0);
  }

  return result;
}

uint64_t sub_23856FE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a1;
  v47 = a5;
  v46 = type metadata accessor for OrderLargeBlackButtonStyle(0);
  MEMORY[0x28223BE20](v46);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2387591F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v15 = *(v14 - 8);
  v42 = v14;
  v43 = v15;
  MEMORY[0x28223BE20](v14);
  v39 = &v38 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E6A8, &unk_2387700F8);
  v18 = *(v17 - 8);
  v44 = v17;
  v45 = v18;
  v19 = MEMORY[0x28223BE20](v17);
  v41 = &v38 - v20;
  (*(v11 + 104))(v13, *MEMORY[0x277CC77C8], v10, v19);
  v21 = sub_238758A40();
  v23 = v22;
  (*(v11 + 8))(v13, v10);
  v48 = v21;
  v49 = v23;
  v24 = swift_allocObject();
  v25 = v40;
  *(v24 + 16) = v40;
  *(v24 + 24) = a2;
  *(v24 + 32) = a3;
  *(v24 + 40) = a4;
  sub_2384397A8(v24, v26, v27);

  sub_23875E230();
  v52 = a3;
  v53 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  *(v28 + 24) = a2;
  *(v28 + 32) = a3;
  *(v28 + 40) = a4;

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E6B0, &qword_238770108);
  v36 = sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
  v37 = sub_23843A3E8(&qword_27DF0E6B8, &qword_27DF0E6B0, &qword_238770108, MEMORY[0x277CDDA18]);
  v30 = v41;
  v31 = v42;
  v32 = v39;
  sub_23875DED0();

  (*(v43 + 8))(v32, v31);
  *v9 = swift_getKeyPath(aP_3);
  v9[8] = 0;
  v33 = *(v46 + 20);
  *&v9[v33] = swift_getKeyPath(asc_238770140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v48 = v31;
  v49 = v29;
  v50 = v36;
  v51 = v37;
  swift_getOpaqueTypeConformance2();
  sub_23857131C(&qword_27DF0E1E0, type metadata accessor for OrderLargeBlackButtonStyle, &unk_2387837DC);
  v34 = v44;
  sub_23875DB40();
  sub_23855A540(v9);
  return (*(v45 + 8))(v30, v34);
}

double sub_2385703E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();

  return result;
}

double sub_2385704B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_238571044(v5, v6, v7);
  sub_23875C8F0();

  return result;
}

double sub_2385705C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = a1;
  *(a3 + 8) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E6C8, &qword_238770BA0);
  sub_23875E1A0();
  *(a3 + 16) = v7;
  *(a3 + 32) = swift_getKeyPath(byte_238770170);
  *(a3 + 72) = 0;

  return result;
}

uint64_t objectdestroyTm_15()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238570724@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for OrderFileAttachmentPreview(0);
  MEMORY[0x28223BE20](v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E6D0, &qword_238770290);
  sub_23875E1B0();
  v10 = v23;
  if (v23)
  {
    v11 = OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_fileUrl;
    v12 = sub_23875B940();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v6, v10 + v11, v12);

    (*(v13 + 56))(v6, 0, 1, v12);
  }

  else
  {
    v14 = sub_23875B940();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  }

  sub_23853B5CC(v6, v9);
  v15 = *(v7 + 20);
  *&v9[v15] = swift_getKeyPath(aH_3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  sub_2385710D0(v2, v21);
  v16 = swift_allocObject();
  v17 = v22[0];
  v16[3] = v21[2];
  v16[4] = v17;
  *(v16 + 73) = *(v22 + 9);
  v18 = v21[1];
  v16[1] = v21[0];
  v16[2] = v18;
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E6D8, &unk_2387702E0) + 36));
  sub_23875C6E0();
  sub_23875ED60();
  *v19 = &unk_2387702D8;
  v19[1] = v16;
  return sub_23857119C(v9, a1);
}

uint64_t sub_2385709EC(uint64_t a1)
{
  v1[20] = a1;
  v2 = sub_23875C1E0();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  sub_23875ED50();
  v1[24] = sub_23875ED40();
  v4 = sub_23875ECE0();
  v1[25] = v4;
  v1[26] = v3;

  return MEMORY[0x2822009F8](sub_238570AE0, v4, v3);
}

uint64_t sub_238570AE0()
{
  v1 = v0[20];
  sub_2384D55B0((v0 + 12));
  v2 = v0[15];
  v3 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v2);
  v4 = *v1;
  v5 = v1[1];
  v8 = (*(v3 + 24) + **(v3 + 24));
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_238570C28;

  return v8(v4, v5, v2, v3);
}

uint64_t sub_238570C28(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_238570E04;
  }

  else
  {
    v4[29] = a1;
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_238570D50;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_238570D50()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 160);

  *(v0 + 136) = *(v2 + 16);
  *(v0 + 152) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E6D0, &qword_238770290);
  sub_23875E1C0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_238570E04()
{
  v24 = v0;
  v1 = v0[28];
  v2 = v0[20];

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_23875C180();
  sub_2385710D0(v2, (v0 + 2));
  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[28];
  v8 = v0[22];
  v9 = v0[23];
  v10 = v0[21];
  if (v6)
  {
    v22 = v0[21];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 136315394;
    v21 = v9;
    v15 = v0[2];
    v14 = v0[3];

    sub_238571200((v0 + 2));
    v16 = sub_2384615AC(v15, v14, &v23);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_2383F8000, v4, v5, "Error loading returnLabel %s: %@", v11, 0x16u);
    sub_238455DD4(v12);
    MEMORY[0x23EE64DF0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x23EE64DF0](v13, -1, -1);
    MEMORY[0x23EE64DF0](v11, -1, -1);

    (*(v8 + 8))(v21, v22);
  }

  else
  {

    sub_238571200((v0 + 2));
    (*(v8 + 8))(v9, v10);
  }

  v19 = v0[1];

  return v19();
}

unint64_t sub_238571044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0E6C0;
  if (!qword_27DF0E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E6C0);
  }

  return result;
}

uint64_t sub_238571108()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2384494A4;

  return sub_2385709EC(v0 + 16);
}

uint64_t sub_23857119C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderFileAttachmentPreview(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_238571230()
{
  result = qword_27DF0E6E0;
  if (!qword_27DF0E6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E6D8, &unk_2387702E0);
    sub_23857131C(&qword_27DF0E6E8, type metadata accessor for OrderFileAttachmentPreview, &unk_238775F1C);
    sub_23857131C(&qword_27DF08DC8, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E6E0);
  }

  return result;
}

uint64_t sub_23857131C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2385713AC(uint64_t a1)
{
  sub_238571480(319);
  if (v1 <= 0x3F)
  {
    sub_2384561E8();
    if (v2 <= 0x3F)
    {
      sub_2385662D0(319, &qword_27DF0E3B8, type metadata accessor for OrderDetailsLargeLineItem.ViewModel, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238571480(uint64_t a1)
{
  if (!qword_27DF0E700)
  {
    sub_238757C30();
    sub_238573D2C(&qword_27DF0E708, MEMORY[0x277CC6BB0], MEMORY[0x277CC6BB8]);
    v1 = sub_23875ACC0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0E700);
    }
  }
}

void sub_238571530(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v91 = type metadata accessor for ProductImage.ViewModel(0);
  MEMORY[0x28223BE20](v91);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v8 - 8);
  v103 = &v77 - v9;
  v10 = sub_23875AF90();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v90 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v102 = &v77 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v77 - v16;
  v101 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  v89 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v77 - v20;
  v22 = a1;
  v23 = a2;
  v92 = v22;
  sub_23875ACB0();
  v24 = [v23 merchant];
  v25 = [v24 displayName];

  v26 = sub_2387586A0();
  v28 = v27;

  v79 = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
  v29 = (a3 + v79[5]);
  *v29 = v26;
  v29[1] = v28;
  v80 = v23;
  v30 = [v23 statusDescription];
  if (v30)
  {
    v31 = v30;
    v32 = sub_2387586A0();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = (a3 + v79[6]);
  *v35 = v32;
  v35[1] = v34;
  v36 = sub_23875A5A0();
  v37 = v36;
  if (v36 >> 62)
  {
    v38 = sub_23875F3A0();
  }

  else
  {
    v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v78 = a3;
  if (!v38)
  {

    v40 = MEMORY[0x277D84F90];
LABEL_28:
    *(v78 + v79[7]) = v40;
    return;
  }

  v104 = MEMORY[0x277D84F90];
  sub_2385FEB6C(0, v38 & ~(v38 >> 63), 0);
  if ((v38 & 0x8000000000000000) == 0)
  {
    v39 = 0;
    v40 = v104;
    v41 = v37;
    v83 = v37 & 0xC000000000000001;
    v98 = (v11 + 16);
    v82 = (v11 + 8);
    v81 = xmmword_2387632F0;
    v87 = v17;
    v88 = v7;
    v85 = v37;
    v86 = v21;
    v99 = v10;
    v84 = v38;
    do
    {
      v97 = v40;
      if (v83)
      {
        v42 = MEMORY[0x23EE63F70](v39, v41);
      }

      else
      {
        v42 = *(v41 + 8 * v39 + 32);
      }

      v43 = v42;
      sub_238757DA0();
      v44 = [v43 title];
      v45 = sub_2387586A0();
      v94 = v46;
      v95 = v45;

      sub_238759200();
      v47 = [v43 quantity];
      v48 = [v43 image];
      v96 = v39;
      if (v48)
      {
        v49 = v48;
        v93 = sub_23875EA80();
        v51 = v50;
      }

      else
      {
        v93 = 0;
        v51 = 0;
      }

      v52 = *v98;
      v53 = v102;
      v54 = v17;
      v55 = v99;
      (*v98)(v102, v54, v99);
      v56 = v101;
      v57 = *(v101 + 20);
      v58 = sub_238758090();
      v59 = v100;
      (*(*(v58 - 8) + 56))(&v100[v57], 1, 1, v58);
      v60 = v94;
      *v59 = v95;
      v59[1] = v60;
      sub_23853098C(v103, v59 + v57);
      *(v59 + *(v56 + 24)) = v47;
      v61 = v90;
      v52(v90, v53, v55);
      if (v51)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
        v62 = swift_allocObject();
        *(v62 + 16) = v81;
        *(v62 + 32) = v93;
        *(v62 + 40) = v51;
      }

      else
      {
        v62 = MEMORY[0x277D84F90];
      }

      v63 = v88;
      v64 = v84;
      v65 = v99;
      v52(v88, v61, v99);
      v66 = v96;
      if (*(v62 + 16) <= 4uLL)
      {

        v72 = *v82;
        (*v82)(v61, v65);
        v72(v102, v65);
        sub_238566104(v103);
        v17 = v87;
        v72(v87, v65);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
        v67 = v61;
        v68 = swift_allocObject();
        v69 = _swift_stdlib_malloc_size(v68);
        v70 = v69 - 32;
        if (v69 < 32)
        {
          v70 = v69 - 17;
        }

        v68[2] = 4;
        v68[3] = 2 * (v70 >> 4);
        swift_arrayInitWithCopy();

        v71 = *v82;
        (*v82)(v67, v65);
        v71(v102, v65);
        sub_238566104(v103);
        v17 = v87;
        v71(v87, v65);

        v62 = v68;
      }

      *(v63 + *(v91 + 20)) = v62;
      v73 = v100;
      sub_2385739BC(v63, &v100[*(v101 + 28)], type metadata accessor for ProductImage.ViewModel);
      v74 = v86;
      sub_2385739BC(v73, v86, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
      v40 = v97;
      v104 = v97;
      v76 = *(v97 + 16);
      v75 = *(v97 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_2385FEB6C((v75 > 1), v76 + 1, 1);
        v40 = v104;
      }

      v39 = v66 + 1;
      *(v40 + 16) = v76 + 1;
      sub_2385739BC(v74, v40 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v76, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
      v41 = v85;
    }

    while (v64 != v39);

    goto LABEL_28;
  }

  __break(1u);
}