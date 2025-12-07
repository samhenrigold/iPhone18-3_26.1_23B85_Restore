double sub_213EDE1B4@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ListCellProfileLibrary(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_213EE6480(v1, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListCellProfileLibrary);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_213EE79C4(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ListCellProfileLibrary);
  sub_213EE6480(v2, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListCellProfileLibrary);
  v9 = swift_allocObject();
  sub_213EE79C4(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v7, type metadata accessor for ListCellProfileLibrary);
  sub_213EE6480(v2, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListCellProfileLibrary);
  v10 = swift_allocObject();
  sub_213EE79C4(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v7, type metadata accessor for ListCellProfileLibrary);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB738, &unk_213F60FB0);
  v12 = a1 + v11[29];
  type metadata accessor for CGSize(0);
  v19[0] = 0;
  v19[1] = 0;
  sub_213F4EA90();
  v13 = v21;
  result = *&v20;
  *v12 = v20;
  *(v12 + 2) = v13;
  *(a1 + v11[21]) = 1;
  *(a1 + v11[22]) = 0;
  *(a1 + v11[23]) = 0;
  *(a1 + v11[24]) = 1;
  v15 = (a1 + v11[25]);
  *v15 = sub_213EE7A2C;
  v15[1] = v8;
  v16 = (a1 + v11[26]);
  *v16 = sub_213EE7BF8;
  v16[1] = v9;
  v17 = (a1 + v11[27]);
  *v17 = sub_213EE7C24;
  v17[1] = v10;
  v18 = (a1 + v11[28]);
  *v18 = nullsub_1;
  v18[1] = 0;
  return result;
}

uint64_t sub_213EDE460@<X0>(_BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9540, &qword_213F5DE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;
  v4 = sub_213F4E010();
  *(inited + 32) = v4;
  v5 = sub_213F4E030();
  *(inited + 33) = v5;
  v6 = sub_213F4E020();
  sub_213F4E020();
  if (sub_213F4E020() != v4)
  {
    v6 = sub_213F4E020();
  }

  sub_213F4E020();
  if (sub_213F4E020() != v5)
  {
    v6 = sub_213F4E020();
  }

  *a2 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB740, &qword_213F60FC0);
  return sub_213EDE568(&a2[*(v7 + 44)]);
}

uint64_t sub_213EDE568@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB748, &qword_213F60FC8);
  MEMORY[0x28223BE20](v82);
  v89 = &v73[-v1];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB750, &qword_213F60FD0);
  v2 = MEMORY[0x28223BE20](v84);
  v86 = &v73[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = MEMORY[0x28223BE20](v2);
  v83 = &v73[-v5];
  MEMORY[0x28223BE20](v4);
  v85 = &v73[-v6];
  v88 = sub_213F4D290();
  v7 = *(v88 - 8);
  v8 = MEMORY[0x28223BE20](v88);
  v75 = &v73[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v73[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v73[-v13];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB758, &qword_213F60FD8);
  v80 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v16 = &v73[-v15];
  v17 = sub_213F4D390();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v73[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB760, &qword_213F60FE0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v81 = &v73[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v25 = &v73[-v24];
  sub_213EA886C(v20);
  v26 = sub_213F4D370();
  v27 = *(v18 + 8);
  v78 = v18 + 8;
  v79 = v17;
  v77 = v27;
  v27(v20, v17);
  if (v26)
  {
    v28 = 1;
    v29 = v7;
    v30 = v76;
  }

  else
  {
    *v16 = sub_213F4D8A0();
    *(v16 + 1) = 0x4030000000000000;
    v16[16] = 0;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB768, &qword_213F60FE8);
    sub_213EDCAD8(1, &v16[*(v31 + 44)]);
    v74 = sub_213F4E0B0();
    type metadata accessor for ListCellProfileLibrary(0);
    sub_213DBBD08(v14);
    sub_213F4D280();
    sub_213F4D270();
    v29 = v7;
    v32 = *(v7 + 8);
    v33 = v88;
    v32(v12, v88);
    v32(v14, v33);
    sub_213F4CDA0();
    v34 = v76;
    v35 = &v16[*(v76 + 36)];
    *v35 = v74;
    *(v35 + 1) = v36;
    *(v35 + 2) = v37;
    *(v35 + 3) = v38;
    *(v35 + 4) = v39;
    v35[40] = 0;
    sub_213DE2B44(v16, v25, &qword_27C8FB758, &qword_213F60FD8);
    v28 = 0;
    v30 = v34;
  }

  v40 = *(v80 + 7);
  v80 = v25;
  v40(v25, v28, 1, v30);
  v41 = sub_213F4DA50();
  v42 = v89;
  *v89 = v41;
  v42[1] = 0;
  *(v42 + 16) = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB770, &qword_213F60FF0);
  sub_213EDCAD8(0, v42 + *(v43 + 44));
  v44 = sub_213F4E0B0();
  type metadata accessor for ListCellProfileLibrary(0);
  sub_213DBBD08(v14);
  sub_213F4D280();
  sub_213F4D270();
  v45 = *(v29 + 8);
  v46 = v12;
  v47 = v88;
  v45(v46, v88);
  v45(v14, v47);
  sub_213F4CDA0();
  v48 = v42 + *(v82 + 36);
  *v48 = v44;
  *(v48 + 1) = v49;
  *(v48 + 2) = v50;
  *(v48 + 3) = v51;
  *(v48 + 4) = v52;
  v48[40] = 0;
  v53 = sub_213F4E080();
  sub_213EA886C(v20);
  v54 = sub_213F4D370();
  v77(v20, v79);
  if (v54)
  {
    v55 = v75;
    sub_213DBBD08(v75);
    sub_213F4D280();
    sub_213F4D270();
    v45(v14, v47);
    v45(v55, v47);
  }

  sub_213F4CDA0();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v83;
  sub_213DE2B44(v89, v83, &qword_27C8FB748, &qword_213F60FC8);
  v65 = v85;
  v66 = &v64[*(v84 + 36)];
  *v66 = v53;
  *(v66 + 1) = v57;
  *(v66 + 2) = v59;
  *(v66 + 3) = v61;
  *(v66 + 4) = v63;
  v66[40] = 0;
  sub_213DE2B44(v64, v65, &qword_27C8FB750, &qword_213F60FD0);
  v68 = v80;
  v67 = v81;
  sub_213DE3164(v80, v81, &qword_27C8FB760, &qword_213F60FE0);
  v69 = v86;
  sub_213DE3164(v65, v86, &qword_27C8FB750, &qword_213F60FD0);
  v70 = v87;
  sub_213DE3164(v67, v87, &qword_27C8FB760, &qword_213F60FE0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB778, &qword_213F60FF8);
  sub_213DE3164(v69, v70 + *(v71 + 48), &qword_27C8FB750, &qword_213F60FD0);
  sub_213DE36FC(v65, &qword_27C8FB750, &qword_213F60FD0);
  sub_213DE36FC(v68, &qword_27C8FB760, &qword_213F60FE0);
  sub_213DE36FC(v69, &qword_27C8FB750, &qword_213F60FD0);
  return sub_213DE36FC(v67, &qword_27C8FB760, &qword_213F60FE0);
}

uint64_t sub_213EDECE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB700, &unk_213F60F70);
  v14[0] = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - v5;
  v7 = (a1 + *(type metadata accessor for ListCellProfileLibrary(0) + 24));
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_0(v7, v8);
  if (ListCellProviding.hasLeadingAccessory.getter(v8, v9))
  {
    *v6 = sub_213F4D8A0();
    *(v6 + 1) = 0;
    v6[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB718, &qword_213F60F90);
    v10 = v7[3];
    v11 = v7[4];
    __swift_project_boxed_opaque_existential_0(v7, v10);
    v14[1] = (*(v11 + 64))(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB720, &qword_213F60F98);
    sub_213F4CB40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB728, &unk_213F60FA0);
    sub_213DE3AE4(&qword_2811824B8, &qword_27C8FB720, &qword_213F60F98, MEMORY[0x277D83980]);
    sub_213EE78D8();
    sub_213ED26C4(qword_281184438, type metadata accessor for LeadingAccessoryViewModel, &protocol conformance descriptor for LeadingAccessoryViewModel);
    sub_213F4ECD0();
    sub_213DE2B44(v6, a2, &qword_27C8FB700, &unk_213F60F70);
    return (*(v14[0] + 56))(a2, 0, 1, v4);
  }

  else
  {
    v13 = *(v14[0] + 56);

    return v13(a2, 1, 1, v4);
  }
}

uint64_t sub_213EDEFC0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_213F4CA10();
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v8 = sub_213F4E300();
  v10 = v9;
  v12 = v11;
  v13 = [objc_opt_self() labelColor];
  v29 = sub_213F4E870();
  v14 = sub_213F4E2B0();
  v16 = v15;
  v18 = v17;
  sub_213DBCA40(v8, v10, v12 & 1);

  sub_213F4E0D0();
  if (a2)
  {
    sub_213F4E170();
  }

  else
  {
    sub_213F4E180();
  }

  sub_213F4E1D0();

  v19 = sub_213F4E2E0();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_213DBCA40(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v29 = v19;
  v30 = v21;
  v31 = v23 & 1;
  v32 = v25;
  v33 = KeyPath;
  v34 = 1;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8980, &unk_213F55A40);
  sub_213E0C270();
  sub_213F4E6D0();
  sub_213DBCA40(v19, v21, v23 & 1);
}

uint64_t sub_213EDF244@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_213F4CA10();
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v8 = sub_213F4E300();
  v10 = v9;
  v12 = v11;
  v13 = [objc_opt_self() secondaryLabelColor];
  v29 = sub_213F4E870();
  v14 = sub_213F4E2B0();
  v16 = v15;
  v18 = v17;
  sub_213DBCA40(v8, v10, v12 & 1);

  if (a2)
  {
    sub_213F4E0D0();
  }

  else
  {
    sub_213F4E0C0();
  }

  sub_213F4E170();
  sub_213F4E1D0();

  v19 = sub_213F4E2E0();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_213DBCA40(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v29 = v19;
  v30 = v21;
  v31 = v23 & 1;
  v32 = v25;
  v33 = KeyPath;
  v34 = 1;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8980, &unk_213F55A40);
  sub_213E0C270();
  sub_213F4E6D0();
  sub_213DBCA40(v19, v21, v23 & 1);
}

uint64_t sub_213EDF4D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213F4D910();
  MEMORY[0x28223BE20](v2 - 8);
  sub_213F4D900();
  sub_213F4D8F0();
  sub_213DBC9EC();
  v3 = sub_213F4E310();
  v5 = v4;
  v7 = v6;
  sub_213F4D8C0();
  sub_213DBCA40(v3, v5, v7 & 1);

  sub_213F4D8F0();
  sub_213F4D8E0();
  sub_213F4D8F0();
  sub_213F4D930();
  v8 = sub_213F4E2F0();
  v10 = v9;
  v12 = v11;
  v13 = [objc_opt_self() secondaryLabelColor];
  sub_213F4E870();
  v14 = sub_213F4E2B0();
  v16 = v15;
  v18 = v17;
  sub_213DBCA40(v8, v10, v12 & 1);

  sub_213F4E0D0();
  sub_213F4E170();
  sub_213F4E1D0();

  v19 = sub_213F4E2E0();
  v21 = v20;
  v23 = v22;

  sub_213DBCA40(v14, v16, v18 & 1);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8980, &unk_213F55A40);
  sub_213E0C270();
  sub_213F4E6D0();
  sub_213DBCA40(v19, v21, v23 & 1);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB898, &qword_213F61180);
  *(a1 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_213EDF7E0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v133 = a1;
  v137 = a2;
  v3 = type metadata accessor for ListCellRecentSearch(0);
  v115 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v116 = v4;
  v117 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB850, &qword_213F61130);
  v119 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v118 = &v95 - v5;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB858, &qword_213F61138);
  MEMORY[0x28223BE20](v134);
  v132 = &v95 - v6;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB860, &qword_213F61140);
  MEMORY[0x28223BE20](v135);
  v130 = &v95 - v7;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB868, &qword_213F61148);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v113 = &v95 - v8;
  v108 = sub_213F4D290();
  v105 = *(v108 - 8);
  v9 = MEMORY[0x28223BE20](v108);
  v101 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v100 = &v95 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EC8, &qword_213F61150);
  MEMORY[0x28223BE20](v12 - 8);
  v104 = &v95 - v13;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB870, &qword_213F61158);
  MEMORY[0x28223BE20](v103);
  v107 = &v95 - v14;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB878, &qword_213F61160);
  v15 = MEMORY[0x28223BE20](v106);
  v111 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v102 = &v95 - v18;
  MEMORY[0x28223BE20](v17);
  v109 = &v95 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB880, &qword_213F61168);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v110 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v114 = &v95 - v23;
  v99 = type metadata accessor for RichTextViewModel(0);
  v97 = *(v99 - 8);
  v24 = MEMORY[0x28223BE20](v99);
  v98 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v124 = &v95 - v26;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB888, &qword_213F61170);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v120 = &v95 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB890, &qword_213F61178);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v128 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v129 = &v95 - v31;
  v32 = sub_213F4CA70();
  MEMORY[0x28223BE20](v32 - 8);
  v125 = sub_213F4CA10();
  v33 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v35 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB898, &qword_213F61180);
  v96 = *(v36 - 8);
  v37 = MEMORY[0x28223BE20](v36);
  v131 = &v95 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v95 - v39;
  v112 = v3;
  v41 = (v2 + *(v3 + 24));
  v43 = v41[3];
  v42 = v41[4];
  __swift_project_boxed_opaque_existential_0(v41, v43);
  (*(v42 + 40))(v43, v42);
  if (v44)
  {
    v119 = v2;
    sub_213F4CA60();
    sub_213F4CA20();
    v45 = v133;
    sub_213EDEFC0(v35, v133 & 1, v40);
    (*(v33 + 8))(v35, v125);
    *&v40[*(v36 + 36)] = 0x3FF0000000000000;
    v46 = v41[3];
    v47 = v41[4];
    __swift_project_boxed_opaque_existential_0(v41, v46);
    v48 = *((*(v47 + 48))(v46, v47) + 16);

    v123 = v40;
    if (v48)
    {
      v49 = v41[3];
      v50 = v41[4];
      __swift_project_boxed_opaque_existential_0(v41, v49);
      v51 = (*(v50 + 48))(v49, v50);
      v52 = v132;
      if (*(v51 + 16) && (v53 = *(v51 + 32), , , *(v53 + 16)))
      {
        v54 = v98;
        sub_213EE6480(v53 + ((*(v97 + 80) + 32) & ~*(v97 + 80)), v98, type metadata accessor for RichTextViewModel);

        sub_213EE79C4(v54, v124, type metadata accessor for RichTextViewModel);
        v55 = 1;
        if (v45)
        {
          v56 = v131;
          sub_213EDF4D0(v131);
          sub_213DE2B44(v56, v114, &qword_27C8FB898, &qword_213F61180);
          v55 = 0;
        }

        v57 = v114;
        (*(v96 + 56))(v114, v55, 1, v36);
        v58 = v104;
        sub_213EDF244(v124 + *(v99 + 20), v45 & 1, v104);
        v59 = v100;
        sub_213DBBD08(v100);
        v60 = v101;
        sub_213F4D280();
        sub_213F4D270();
        v61 = *(v105 + 8);
        v62 = v60;
        v63 = v108;
        v61(v62, v108);
        v61(v59, v63);
        sub_213F4EEF0();
        sub_213F4D4E0();
        v64 = v107;
        sub_213DE2B44(v58, v107, &qword_27C8F9EC8, &qword_213F61150);
        v65 = (v64 + *(v103 + 36));
        v66 = v143;
        v65[4] = v142;
        v65[5] = v66;
        v65[6] = v144;
        v67 = v139;
        *v65 = v138;
        v65[1] = v67;
        v68 = v141;
        v65[2] = v140;
        v65[3] = v68;
        v69 = v102;
        sub_213DE2B44(v64, v102, &qword_27C8FB870, &qword_213F61158);
        *(v69 + *(v106 + 36)) = 0;
        v70 = v109;
        sub_213DE2B44(v69, v109, &qword_27C8FB878, &qword_213F61160);
        v71 = v110;
        sub_213DE3164(v57, v110, &qword_27C8FB880, &qword_213F61168);
        v72 = v111;
        sub_213DE3164(v70, v111, &qword_27C8FB878, &qword_213F61160);
        v73 = v113;
        sub_213DE3164(v71, v113, &qword_27C8FB880, &qword_213F61168);
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8B0, &qword_213F61198);
        sub_213DE3164(v72, v73 + *(v74 + 48), &qword_27C8FB878, &qword_213F61160);
        sub_213DE36FC(v70, &qword_27C8FB878, &qword_213F61160);
        sub_213DE36FC(v57, &qword_27C8FB880, &qword_213F61168);
        sub_213EE64E8(v124, type metadata accessor for RichTextViewModel);
        sub_213DE36FC(v72, &qword_27C8FB878, &qword_213F61160);
        sub_213DE36FC(v71, &qword_27C8FB880, &qword_213F61168);
        v75 = v120;
        sub_213DE2B44(v73, v120, &qword_27C8FB868, &qword_213F61148);
        v76 = 0;
        v77 = v129;
        v40 = v123;
      }

      else
      {

        v76 = 1;
        v77 = v129;
        v75 = v120;
      }

      (*(v121 + 56))(v75, v76, 1, v122);
      sub_213DE2B44(v75, v77, &qword_27C8FB888, &qword_213F61170);
      v90 = 0;
    }

    else
    {
      v90 = 1;
      v52 = v132;
      v77 = v129;
    }

    (*(v126 + 56))(v77, v90, 1, v127);
    v91 = v131;
    sub_213DE3164(v40, v131, &qword_27C8FB898, &qword_213F61180);
    v92 = v128;
    sub_213DE3164(v77, v128, &qword_27C8FB890, &qword_213F61178);
    v93 = v130;
    sub_213DE3164(v91, v130, &qword_27C8FB898, &qword_213F61180);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8A8, &qword_213F61190);
    sub_213DE3164(v92, v93 + *(v94 + 48), &qword_27C8FB890, &qword_213F61178);
    sub_213DE36FC(v92, &qword_27C8FB890, &qword_213F61178);
    sub_213DE36FC(v91, &qword_27C8FB898, &qword_213F61180);
    sub_213DE3164(v93, v52, &qword_27C8FB860, &qword_213F61140);
    swift_storeEnumTagMultiPayload();
    sub_213DE3AE4(&qword_281182558, &qword_27C8FB860, &qword_213F61140, MEMORY[0x277CE14C0]);
    sub_213EE83F8();
    sub_213F4DBA0();
    sub_213DE36FC(v93, &qword_27C8FB860, &qword_213F61140);
    sub_213DE36FC(v77, &qword_27C8FB890, &qword_213F61178);
    return sub_213DE36FC(v123, &qword_27C8FB898, &qword_213F61180);
  }

  else
  {
    v78 = v41[3];
    v79 = v41[4];
    __swift_project_boxed_opaque_existential_0(v41, v78);
    v80 = *((*(v79 + 48))(v78, v79) + 16);

    *&v138 = 0;
    *(&v138 + 1) = v80;
    swift_getKeyPath();
    v81 = v117;
    sub_213EE6480(v2, v117, type metadata accessor for ListCellRecentSearch);
    v82 = (*(v115 + 80) + 16) & ~*(v115 + 80);
    v83 = v82 + v116;
    v84 = swift_allocObject();
    sub_213EE79C4(v81, v84 + v82, type metadata accessor for ListCellRecentSearch);
    *(v84 + v83) = v133 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA3C0, &qword_213F5D780);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8A0, &qword_213F61188);
    sub_213E800BC();
    v85 = MEMORY[0x277CE14C0];
    sub_213DE3AE4(&qword_281182560, &qword_27C8FB8A0, &qword_213F61188, MEMORY[0x277CE14C0]);
    v86 = v118;
    sub_213F4ECC0();
    v87 = v119;
    v88 = v136;
    (*(v119 + 16))(v132, v86, v136);
    swift_storeEnumTagMultiPayload();
    sub_213DE3AE4(&qword_281182558, &qword_27C8FB860, &qword_213F61140, v85);
    sub_213EE83F8();
    sub_213F4DBA0();
    return (*(v87 + 8))(v86, v88);
  }
}

uint64_t sub_213EE099C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v113 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB868, &qword_213F61148);
  v118 = *(v7 - 8);
  v119 = v7;
  MEMORY[0x28223BE20](v7);
  v108 = &v99 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EC8, &qword_213F61150);
  MEMORY[0x28223BE20](v9 - 8);
  v103 = &v99 - v10;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB870, &qword_213F61158);
  MEMORY[0x28223BE20](v102);
  v105 = &v99 - v11;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB878, &qword_213F61160);
  v12 = MEMORY[0x28223BE20](v104);
  v107 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v101 = &v99 - v15;
  MEMORY[0x28223BE20](v14);
  v106 = &v99 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB888, &qword_213F61170);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v117 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v116 = &v99 - v20;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB898, &qword_213F61180);
  v123 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v111 = &v99 - v21;
  v22 = type metadata accessor for RichTextViewModel(0);
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v99 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v100 = &v99 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v99 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v109 = &v99 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v110 = &v99 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v99 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB880, &qword_213F61168);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v115 = &v99 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v112 = &v99 - v41;
  MEMORY[0x28223BE20](v40);
  v122 = &v99 - v42;
  v43 = *a1;
  v44 = (a2 + *(type metadata accessor for ListCellRecentSearch(0) + 24));
  v46 = v44[3];
  v45 = v44[4];
  __swift_project_boxed_opaque_existential_0(v44, v46);
  result = (*(v45 + 48))(v46, v45);
  if ((v43 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  if (v43 >= *(result + 16))
  {
    goto LABEL_26;
  }

  v114 = a4;
  v121 = v43;
  v48 = *(result + 8 * v43 + 32);

  v49 = 0;
  v50 = *(v48 + 16);
  while (v50 != v49)
  {
    if (v49 >= *(v48 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v51 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_213EE6480(v48 + v51 + *(v23 + 72) * v49++, v36, type metadata accessor for RichTextViewModel);
    v52 = v36[*(v22 + 24)];
    result = sub_213EE64E8(v36, type metadata accessor for RichTextViewModel);
    if (v52 == 1)
    {

      v53 = v44[3];
      v54 = v44[4];
      __swift_project_boxed_opaque_existential_0(v44, v53);
      result = (*(v54 + 48))(v53, v54);
      if (v121 >= *(result + 16))
      {
        goto LABEL_28;
      }

      v55 = *(result + 8 * v121 + 32);

      if (*(v55 + 16))
      {
        v56 = v109;
        sub_213EE6480(v55 + v51, v109, type metadata accessor for RichTextViewModel);

        v57 = v110;
        sub_213EE79C4(v56, v110, type metadata accessor for RichTextViewModel);
        v58 = v111;
        sub_213EDEFC0(v57 + *(v22 + 20), v113 & 1, v111);
        sub_213EE64E8(v57, type metadata accessor for RichTextViewModel);
        *(v58 + *(v120 + 36)) = 0x3FF0000000000000;
        sub_213DE2B44(v58, v122, &qword_27C8FB898, &qword_213F61180);
        v59 = 0;
        v60 = v123;
        goto LABEL_11;
      }

      break;
    }
  }

  v60 = v123;

  v59 = 1;
LABEL_11:
  v63 = *(v60 + 56);
  v62 = v60 + 56;
  v61 = v63;
  v63(v122, v59, 1, v120);
  v64 = v44[3];
  v65 = v44[4];
  __swift_project_boxed_opaque_existential_0(v44, v64);
  result = (*(v65 + 48))(v64, v65);
  if (v121 >= *(result + 16))
  {
    goto LABEL_27;
  }

  v123 = v62;
  v66 = *(result + 8 * v121 + 32);

  v67 = 0;
  v68 = *(v66 + 16);
  do
  {
    if (v68 == v67)
    {
      goto LABEL_21;
    }

    if (v67 >= *(v66 + 16))
    {
      goto LABEL_24;
    }

    v69 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_213EE6480(v66 + v69 + *(v23 + 72) * v67++, v30, type metadata accessor for RichTextViewModel);
    v70 = v30[*(v22 + 24)];
    result = sub_213EE64E8(v30, type metadata accessor for RichTextViewModel);
  }

  while ((v70 & 1) != 0);

  v71 = v44[3];
  v72 = v44[4];
  __swift_project_boxed_opaque_existential_0(v44, v71);
  result = (*(v72 + 48))(v71, v72);
  if (v121 >= *(result + 16))
  {
    goto LABEL_29;
  }

  v73 = *(result + 8 * v121 + 32);

  if (!*(v73 + 16))
  {
LABEL_21:

    v94 = 1;
    v95 = v114;
    v93 = v116;
    v89 = v115;
    goto LABEL_22;
  }

  v74 = v99;
  sub_213EE6480(v73 + v69, v99, type metadata accessor for RichTextViewModel);

  v75 = v74;
  v76 = v100;
  sub_213EE79C4(v75, v100, type metadata accessor for RichTextViewModel);
  v77 = 1;
  if (v113)
  {
    sub_213EDF4D0(v112);
    v77 = 0;
  }

  v78 = v112;
  v61(v112, v77, 1, v120);
  v79 = v76 + *(v22 + 20);
  v80 = v76;
  v81 = v103;
  sub_213EDF244(v79, v113 & 1, v103);
  sub_213F4EEF0();
  sub_213F4D4E0();
  v82 = v105;
  sub_213DE2B44(v81, v105, &qword_27C8F9EC8, &qword_213F61150);
  v83 = (v82 + *(v102 + 36));
  v84 = v129;
  v83[4] = v128;
  v83[5] = v84;
  v83[6] = v130;
  v85 = v125;
  *v83 = v124;
  v83[1] = v85;
  v86 = v127;
  v83[2] = v126;
  v83[3] = v86;
  v87 = v101;
  sub_213DE2B44(v82, v101, &qword_27C8FB870, &qword_213F61158);
  *(v87 + *(v104 + 36)) = 0;
  v88 = v106;
  sub_213DE2B44(v87, v106, &qword_27C8FB878, &qword_213F61160);
  v89 = v115;
  sub_213DE3164(v78, v115, &qword_27C8FB880, &qword_213F61168);
  v90 = v107;
  sub_213DE3164(v88, v107, &qword_27C8FB878, &qword_213F61160);
  v91 = v108;
  sub_213DE3164(v89, v108, &qword_27C8FB880, &qword_213F61168);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8B0, &qword_213F61198);
  sub_213DE3164(v90, v91 + *(v92 + 48), &qword_27C8FB878, &qword_213F61160);
  sub_213DE36FC(v88, &qword_27C8FB878, &qword_213F61160);
  sub_213DE36FC(v78, &qword_27C8FB880, &qword_213F61168);
  sub_213EE64E8(v80, type metadata accessor for RichTextViewModel);
  sub_213DE36FC(v90, &qword_27C8FB878, &qword_213F61160);
  sub_213DE36FC(v89, &qword_27C8FB880, &qword_213F61168);
  v93 = v116;
  sub_213DE2B44(v91, v116, &qword_27C8FB868, &qword_213F61148);
  v94 = 0;
  v95 = v114;
LABEL_22:
  (*(v118 + 56))(v93, v94, 1, v119);
  v96 = v122;
  sub_213DE3164(v122, v89, &qword_27C8FB880, &qword_213F61168);
  v97 = v117;
  sub_213DE3164(v93, v117, &qword_27C8FB888, &qword_213F61170);
  sub_213DE3164(v89, v95, &qword_27C8FB880, &qword_213F61168);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8B8, &qword_213F611D0);
  sub_213DE3164(v97, v95 + *(v98 + 48), &qword_27C8FB888, &qword_213F61170);
  sub_213DE36FC(v93, &qword_27C8FB888, &qword_213F61170);
  sub_213DE36FC(v96, &qword_27C8FB880, &qword_213F61168);
  sub_213DE36FC(v97, &qword_27C8FB888, &qword_213F61170);
  return sub_213DE36FC(v89, &qword_27C8FB880, &qword_213F61168);
}

double sub_213EE1690@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ListCellRecentSearch(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_213F4D290();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v27 - v12;
  sub_213DBBD08(v27 - v12);
  sub_213F4D280();
  sub_213F4D270();
  v14 = *(v8 + 8);
  v14(v11, v7);
  v14(v13, v7);
  sub_213EE6480(v1, v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListCellRecentSearch);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_213EE79C4(v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ListCellRecentSearch);
  sub_213EE6480(v2, v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListCellRecentSearch);
  v17 = swift_allocObject();
  sub_213EE79C4(v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15, type metadata accessor for ListCellRecentSearch);
  sub_213EE6480(v2, v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListCellRecentSearch);
  v18 = swift_allocObject();
  sub_213EE79C4(v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v15, type metadata accessor for ListCellRecentSearch);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB7E8, &unk_213F61088);
  v20 = a1 + v19[29];
  type metadata accessor for CGSize(0);
  v27[0] = 0;
  v27[1] = 0;
  sub_213F4EA90();
  v21 = v29;
  result = *&v28;
  *v20 = v28;
  *(v20 + 2) = v21;
  *(a1 + v19[21]) = 1;
  *(a1 + v19[22]) = 0;
  *(a1 + v19[23]) = 0x402C000000000000;
  *(a1 + v19[24]) = 1;
  v23 = (a1 + v19[25]);
  *v23 = sub_213EE7DC4;
  v23[1] = v16;
  v24 = (a1 + v19[26]);
  *v24 = sub_213EE7DF0;
  v24[1] = v17;
  v25 = (a1 + v19[27]);
  *v25 = sub_213EE7E1C;
  v25[1] = v18;
  v26 = (a1 + v19[28]);
  *v26 = nullsub_1;
  v26[1] = 0;
  return result;
}

uint64_t sub_213EE1A2C@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB808, &qword_213F610E8);
  MEMORY[0x28223BE20](v64);
  v2 = &v56[-v1];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB810, &qword_213F610F0);
  MEMORY[0x28223BE20](v62);
  v63 = &v56[-v3];
  v60 = sub_213F4D290();
  v4 = *(v60 - 8);
  v5 = MEMORY[0x28223BE20](v60);
  v59 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56[-v8];
  MEMORY[0x28223BE20](v7);
  v11 = &v56[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB818, &qword_213F610F8);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = &v56[-v13];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB820, &qword_213F61100);
  MEMORY[0x28223BE20](v61);
  v15 = &v56[-v14];
  v16 = sub_213F4D390();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v56[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_213EA886C(v19);
  v20 = sub_213F4D370();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    *v15 = sub_213F4DA50();
    *(v15 + 1) = 0;
    v15[16] = 0;
    v21 = v58;
    sub_213EDF7E0(0, v58);
    v57 = sub_213F4E040();
    type metadata accessor for ListCellRecentSearch(0);
    sub_213DBBD08(v11);
    sub_213F4D280();
    sub_213F4D270();
    v22 = *(v4 + 8);
    v23 = v60;
    v22(v9, v60);
    v22(v11, v23);
    v24 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB840, &qword_213F61120) + 44)];
    sub_213F4CDA0();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_213DE2B44(v21, v24, &qword_27C8FB818, &qword_213F610F8);
    v33 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB848, &qword_213F61128) + 36);
    *v33 = v57;
    *(v33 + 8) = v26;
    *(v33 + 16) = v28;
    *(v33 + 24) = v30;
    *(v33 + 32) = v32;
    *(v33 + 40) = 0;
    LOBYTE(v21) = sub_213F4E0B0();
    sub_213DBBD08(v9);
    v34 = v59;
    sub_213F4D280();
    sub_213F4D270();
    v22(v34, v23);
    v22(v9, v23);
    sub_213F4CDA0();
    v35 = &v15[*(v61 + 36)];
    *v35 = v21;
    *(v35 + 1) = v36;
    *(v35 + 2) = v37;
    *(v35 + 3) = v38;
    *(v35 + 4) = v39;
    v35[40] = 0;
    sub_213DE3164(v15, v63, &qword_27C8FB820, &qword_213F61100);
    swift_storeEnumTagMultiPayload();
    sub_213EE8000();
    sub_213EE80B8();
    sub_213F4DBA0();
    v40 = v15;
    v41 = &qword_27C8FB820;
    v42 = &qword_213F61100;
  }

  else
  {
    *v2 = sub_213F4D8A0();
    *(v2 + 1) = 0;
    v2[16] = 0;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB828, &qword_213F61108);
    sub_213EDF7E0(1, &v2[*(v43 + 44)]);
    v44 = sub_213F4E0B0();
    type metadata accessor for ListCellRecentSearch(0);
    sub_213DBBD08(v9);
    v45 = v59;
    sub_213F4D280();
    sub_213F4D270();
    v46 = *(v4 + 8);
    v47 = v45;
    v48 = v60;
    v46(v47, v60);
    v46(v9, v48);
    sub_213F4CDA0();
    v49 = v63;
    v50 = &v2[*(v64 + 36)];
    *v50 = v44;
    *(v50 + 1) = v51;
    *(v50 + 2) = v52;
    *(v50 + 3) = v53;
    *(v50 + 4) = v54;
    v50[40] = 0;
    sub_213DE3164(v2, v49, &qword_27C8FB808, &qword_213F610E8);
    swift_storeEnumTagMultiPayload();
    sub_213EE8000();
    sub_213EE80B8();
    sub_213F4DBA0();
    v40 = v2;
    v41 = &qword_27C8FB808;
    v42 = &qword_213F610E8;
  }

  return sub_213DE36FC(v40, v41, v42);
}

uint64_t sub_213EE206C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41[1] = a1;
  v51 = a2;
  v2 = sub_213F4D390();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v46 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v41 - v5;
  v7 = sub_213F4D290();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v41 - v12;
  v48 = sub_213F4E9F0();
  v14 = [objc_opt_self() secondaryLabelColor];
  v47 = sub_213F4E870();
  v15 = *(type metadata accessor for ListCellRecentSearch(0) + 20);
  sub_213DBBD08(v13);
  sub_213F4D280();
  sub_213F4D270();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v13, v7);
  sub_213F4E160();
  v17 = sub_213F4E0F0();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  *(&v45 + 1) = sub_213F4E190();
  sub_213DE36FC(v6, &qword_27C8F7668, &qword_213F52190);
  *&v45 = swift_getKeyPath();
  sub_213DBBD08(v13);
  sub_213F4D280();
  sub_213F4D270();
  v16(v11, v7);
  v16(v13, v7);
  sub_213DBBD08(v13);
  sub_213F4D280();
  sub_213F4D270();
  v16(v11, v7);
  v16(v13, v7);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v44 = sub_213F4E080();
  sub_213DBBD08(v13);
  sub_213F4D280();
  sub_213F4D270();
  v16(v11, v7);
  v16(v13, v7);
  sub_213F4CDA0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  LOBYTE(v65[0]) = 0;
  v43 = sub_213F4E060();
  v41[0] = v15;
  sub_213DBBD08(v13);
  sub_213F4D280();
  sub_213F4D270();
  v16(v11, v7);
  v16(v13, v7);
  sub_213F4CDA0();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v74 = 0;
  v42 = sub_213F4E070();
  v34 = v46;
  sub_213EA886C(v46);
  v35 = sub_213F4D370();
  (*(v49 + 8))(v34, v50);
  if ((v35 & 1) == 0)
  {
    sub_213DBBD08(v13);
    sub_213F4D280();
    sub_213F4D270();
    v16(v11, v7);
    v16(v13, v7);
  }

  sub_213F4CDA0();
  v75 = 0;
  *&v65[0] = v48;
  *(&v65[0] + 1) = v47;
  v65[1] = v45;
  v65[2] = v78;
  v65[3] = v79;
  v65[4] = v80;
  LOBYTE(v66) = v44;
  *(&v66 + 1) = v19;
  *&v67 = v21;
  *(&v67 + 1) = v23;
  *&v68 = v25;
  BYTE8(v68) = 0;
  LOBYTE(v69) = v43;
  *(&v69 + 1) = v27;
  *&v70 = v29;
  *(&v70 + 1) = v31;
  *&v71 = v33;
  BYTE8(v71) = 0;
  *(&v71 + 9) = *v77;
  HIDWORD(v71) = *&v77[3];
  LOBYTE(v72) = v42;
  DWORD1(v72) = *&v76[3];
  *(&v72 + 1) = *v76;
  *(&v72 + 1) = v36;
  *&v73[0] = v37;
  *(&v73[0] + 1) = v38;
  *&v73[1] = v39;
  BYTE8(v73[1]) = 0;
  v62 = v71;
  v63 = v72;
  v64[0] = v73[0];
  *(v64 + 9) = *(v73 + 9);
  v58 = v67;
  v59 = v68;
  v60 = v69;
  v61 = v70;
  v54 = v78;
  v55 = v79;
  v56 = v80;
  v57 = v66;
  v52 = v65[0];
  v53 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB7F0, &qword_213F610C8);
  sub_213EE7E5C();
  sub_213F4E6D0();
  return sub_213DE36FC(v65, &qword_27C8FB7F0, &qword_213F610C8);
}

uint64_t sub_213EE26C8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6D0, &qword_213F60F40);
  v17[0] = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v10 = (a1 + *(a2(0) + 24));
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_0(v10, v11);
  if (ListCellProviding.hasTrailingAccessory.getter(v11, v12))
  {
    *v9 = sub_213F4D8A0();
    *(v9 + 1) = 0;
    v9[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6D8, &qword_213F60F48);
    v13 = v10[3];
    v14 = v10[4];
    __swift_project_boxed_opaque_existential_0(v10, v13);
    v17[1] = (*(v14 + 72))(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6E0, &qword_213F60F50);
    sub_213F4CB40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6E8, &qword_213F60F58);
    sub_213DE3AE4(&qword_2811824B0, &qword_27C8FB6E0, &qword_213F60F50, MEMORY[0x277D83980]);
    sub_213EE75C4();
    sub_213ED26C4(qword_281184010, type metadata accessor for TrailingAccessoryViewModel, &protocol conformance descriptor for TrailingAccessoryViewModel);
    sub_213F4ECD0();
    sub_213DE2B44(v9, a4, &qword_27C8FB6D0, &qword_213F60F40);
    return (*(v17[0] + 56))(a4, 0, 1, v7);
  }

  else
  {
    v16 = *(v17[0] + 56);

    return v16(a4, 1, 1, v7);
  }
}

double sub_213EE29A0@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ListCellNavigation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - v9;
  sub_213EE6480(v1, v23 - v9, type metadata accessor for ListCellNavigation);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_213EE79C4(v10, v12 + v11, type metadata accessor for ListCellNavigation);
  sub_213EE6480(v2, v8, type metadata accessor for ListCellNavigation);
  v13 = swift_allocObject();
  sub_213EE79C4(v8, v13 + v11, type metadata accessor for ListCellNavigation);
  sub_213EE6480(v2, v8, type metadata accessor for ListCellNavigation);
  v14 = swift_allocObject();
  sub_213EE79C4(v8, v14 + v11, type metadata accessor for ListCellNavigation);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6C8, &qword_213F60F38);
  v16 = a1 + v15[29];
  type metadata accessor for CGSize(0);
  v23[0] = 0;
  v23[1] = 0;
  sub_213F4EA90();
  v17 = v25;
  result = *&v24;
  *v16 = v24;
  *(v16 + 2) = v17;
  *(a1 + v15[21]) = 1;
  *(a1 + v15[22]) = 0;
  *(a1 + v15[23]) = 0;
  *(a1 + v15[24]) = 0;
  v19 = (a1 + v15[25]);
  *v19 = sub_213EE74B4;
  v19[1] = v12;
  v20 = (a1 + v15[26]);
  *v20 = sub_213EE74E0;
  v20[1] = v13;
  v21 = (a1 + v15[27]);
  *v21 = sub_213EE7598;
  v21[1] = v14;
  v22 = (a1 + v15[28]);
  *v22 = nullsub_1;
  v22[1] = 0;
  return result;
}

uint64_t sub_213EE2C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4D290();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = type metadata accessor for MultiTextView(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for ListCellNavigation(0);
  sub_213DEBAA8(a1 + *(v15 + 20), v14 + v12[8]);
  *v14 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v16 = v12[7];
  *(v14 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  *(v14 + v12[9]) = 3;
  *(v14 + v12[10]) = 1;
  LOBYTE(v12) = sub_213F4E0A0();
  sub_213DBBD08(v10);
  sub_213F4D280();
  sub_213F4D270();
  v17 = *(v5 + 8);
  v17(v8, v4);
  v17(v10, v4);
  sub_213F4CDA0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_213EE79C4(v14, a2, type metadata accessor for MultiTextView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB730, &qword_213F63CB0);
  v27 = a2 + *(result + 36);
  *v27 = v12;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

uint64_t sub_213EE2F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_213F4D290();
  v58 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v59 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v57 = &v53[-v7];
  MEMORY[0x28223BE20](v6);
  v9 = &v53[-v8];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6F0, &qword_213F60F60);
  MEMORY[0x28223BE20](v63);
  v60 = &v53[-v10];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6F8, &qword_213F60F68);
  MEMORY[0x28223BE20](v61);
  v12 = &v53[-v11];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB700, &unk_213F60F70);
  MEMORY[0x28223BE20](v62);
  v14 = &v53[-v13];
  v15 = type metadata accessor for ListCellNavigation(0);
  v16 = (a1 + *(v15 + 20));
  v17 = v16[3];
  v18 = v16[4];
  __swift_project_boxed_opaque_existential_0(v16, v17);
  if (ListCellProviding.hasLeadingAccessory.getter(v17, v18))
  {
    *v14 = sub_213F4D8A0();
    *(v14 + 1) = 0;
    v14[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB718, &qword_213F60F90);
    v19 = v16[3];
    v20 = v16[4];
    __swift_project_boxed_opaque_existential_0(v16, v19);
    *&v75[0] = (*(v20 + 64))(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB720, &qword_213F60F98);
    sub_213F4CB40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB728, &unk_213F60FA0);
    sub_213DE3AE4(&qword_2811824B8, &qword_27C8FB720, &qword_213F60F98, MEMORY[0x277D83980]);
    sub_213EE78D8();
    sub_213ED26C4(qword_281184438, type metadata accessor for LeadingAccessoryViewModel, &protocol conformance descriptor for LeadingAccessoryViewModel);
    sub_213F4ECD0();
    v21 = &qword_27C8FB700;
    v22 = &unk_213F60F70;
    sub_213DE3164(v14, v12, &qword_27C8FB700, &unk_213F60F70);
    swift_storeEnumTagMultiPayload();
    sub_213DE3AE4(&qword_2811826F0, &qword_27C8FB700, &unk_213F60F70, MEMORY[0x277CE1138]);
    sub_213EE781C();
    sub_213F4DBA0();
    v23 = v14;
  }

  else
  {
    v56 = v12;
    v24 = byte_213F6132A[*(a1 + *(v15 + 24))];
    v25 = v16[3];
    v26 = v16[4];
    __swift_project_boxed_opaque_existential_0(v16, v25);
    (*(v26 + 16))(&v68, v25, v26);
    v66 = 0;
    memset(v65, 0, sizeof(v65));
    *(v75 + 8) = 0u;
    *(&v75[1] + 8) = 0u;
    *(&v75[2] + 8) = 0u;
    *(&v75[3] + 8) = 0u;
    *(&v75[4] + 8) = 0u;
    sub_213E5201C(&v68, v75 + 8, &qword_27C8F7AB8, &qword_213F522C0);
    sub_213E5201C(v65, &v75[3], &qword_27C8F7AB8, &qword_213F522C0);
    BYTE8(v75[5]) = 1;
    v76 = 0;
    LOBYTE(v75[0]) = v24;
    v54 = sub_213F4E0A0();
    v55 = a1;
    sub_213DBBD08(v9);
    v27 = v57;
    sub_213F4D280();
    sub_213F4D270();
    v28 = *(v58 + 8);
    v28(v27, v3);
    v58 = v3;
    v28(v9, v3);
    sub_213F4CDA0();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v71 = v75[3];
    v72 = v75[4];
    v73 = v75[5];
    v68 = v75[0];
    v69 = v75[1];
    v74 = v76;
    v70 = v75[2];
    v67 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BA0, &qword_213F5EAC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_213F51DE0;
    v38 = sub_213F4E080();
    *(inited + 32) = v38;
    v39 = sub_213F4E0B0();
    *(inited + 33) = v39;
    v40 = sub_213F4E090();
    sub_213F4E090();
    v41 = v27;
    if (sub_213F4E090() != v38)
    {
      v40 = sub_213F4E090();
    }

    sub_213F4E090();
    v42 = sub_213F4E090();
    v43 = v56;
    if (v42 != v39)
    {
      v40 = sub_213F4E090();
    }

    v44 = v59;
    sub_213DBBD08(v59);
    sub_213F4D280();
    sub_213F4D270();
    v45 = v41;
    v46 = v58;
    v28(v45, v58);
    v28(v44, v46);
    sub_213F4CDA0();
    v75[4] = v72;
    v75[5] = v73;
    v76 = v74;
    v75[0] = v68;
    v75[1] = v69;
    v75[2] = v70;
    v75[3] = v71;
    v77 = v54;
    *&v78[3] = *(v65 + 3);
    *v78 = v65[0];
    v79 = v30;
    v80 = v32;
    v81 = v34;
    v82 = v36;
    v83 = v67;
    v84 = v40;
    v85 = v47;
    v86 = v48;
    v87 = v49;
    v88 = v50;
    v89 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB708, &qword_213F60F80);
    sub_213EE76B0();
    v51 = v60;
    sub_213F4E6D0();
    sub_213DE36FC(v75, &qword_27C8FB708, &qword_213F60F80);
    v21 = &qword_27C8FB6F0;
    v22 = &qword_213F60F60;
    sub_213DE3164(v51, v43, &qword_27C8FB6F0, &qword_213F60F60);
    swift_storeEnumTagMultiPayload();
    sub_213DE3AE4(&qword_2811826F0, &qword_27C8FB700, &unk_213F60F70, MEMORY[0x277CE1138]);
    sub_213EE781C();
    sub_213F4DBA0();
    v23 = v51;
  }

  return sub_213DE36FC(v23, v21, v22);
}

uint64_t sub_213EE370C(uint64_t a1)
{
  v2 = type metadata accessor for LeadingAccessory(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = (v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_213EE6480(a1, v5 + *(v3 + 24), type metadata accessor for LeadingAccessoryViewModel);
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v6 = *(v2 + 20);
  *(v5 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for LeadingAccessoryViewModel(0);
  sub_213EC9484(a1 + *(v7 + 20), v11);
  if (v12 <= 1u)
  {
    if (v12)
    {
      sub_213EC9658(v11);
      v8 = 0xE600000000000000;
      v9 = 0x656D756C6F56;
    }

    else
    {
      sub_213EC9658(v11);
      v8 = 0xE600000000000000;
      v9 = 0x6C6F626D7953;
    }
  }

  else if (v12 == 2)
  {
    sub_213E5BD34(v11);
    v8 = 0xE800000000000000;
    v9 = 0x6E61466F746F6850;
  }

  else if (v12 == 3)
  {
    sub_213EC9658(v11);
    v8 = 0xE700000000000000;
    v9 = 0x7972617262694CLL;
  }

  else
  {
    sub_213EC9658(v11);
    v8 = 0xE700000000000000;
    v9 = 0x656C69666F7250;
  }

  v11[0] = v9;
  v11[1] = v8;

  MEMORY[0x216052710](0x726F737365636341, 0xE900000000000079);

  sub_213ED26C4(qword_281186640, type metadata accessor for LeadingAccessory, &unk_213F601D4);
  sub_213F4E6D0();

  return sub_213EE64E8(v5, type metadata accessor for LeadingAccessory);
}

uint64_t sub_213EE398C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6D0, &qword_213F60F40);
  v14[0] = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - v5;
  v7 = (a1 + *(type metadata accessor for ListCellNavigation(0) + 20));
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_0(v7, v8);
  if (ListCellProviding.hasTrailingAccessory.getter(v8, v9))
  {
    *v6 = sub_213F4D8A0();
    *(v6 + 1) = 0;
    v6[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6D8, &qword_213F60F48);
    v10 = v7[3];
    v11 = v7[4];
    __swift_project_boxed_opaque_existential_0(v7, v10);
    v14[1] = (*(v11 + 72))(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6E0, &qword_213F60F50);
    sub_213F4CB40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6E8, &qword_213F60F58);
    sub_213DE3AE4(&qword_2811824B0, &qword_27C8FB6E0, &qword_213F60F50, MEMORY[0x277D83980]);
    sub_213EE75C4();
    sub_213ED26C4(qword_281184010, type metadata accessor for TrailingAccessoryViewModel, &protocol conformance descriptor for TrailingAccessoryViewModel);
    sub_213F4ECD0();
    sub_213DE2B44(v6, a2, &qword_27C8FB6D0, &qword_213F60F40);
    return (*(v14[0] + 56))(a2, 0, 1, v4);
  }

  else
  {
    v13 = *(v14[0] + 56);

    return v13(a2, 1, 1, v4);
  }
}

uint64_t sub_213EE3C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TrailingAccessory(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_213EE6480(a1, v9 + *(v7 + 24), type metadata accessor for TrailingAccessoryViewModel);
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v10 = *(v6 + 20);
  *(v9 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v13[0] = TrailingAccessoryViewModel.axIDString.getter();
  v13[1] = v11;

  MEMORY[0x216052710](a2, a3);

  sub_213ED26C4(&qword_281185C30, type metadata accessor for TrailingAccessory, &unk_213F61654);
  sub_213F4E6D0();

  return sub_213EE64E8(v9, type metadata accessor for TrailingAccessory);
}

uint64_t sub_213EE3E50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4CEA0();
  v31 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v8 = sub_213F4D7F0();
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ListCell(0);
  v12 = (v1 + *(v11 + 32));
  v14 = v12[3];
  v13 = v12[4];
  __swift_project_boxed_opaque_existential_0(v12, v14);
  if ((*(v13 + 104))(v14, v13))
  {
    v15 = *MEMORY[0x277CDF3C0];
    v16 = *(v31 + 104);

    return v16(a1, v15, v3);
  }

  v18 = v1 + *(v11 + 24);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    if ((v19 & 1) == 0)
    {
      return sub_213EA8894(a1);
    }
  }

  else
  {

    sub_213F4F520();
    v20 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    v21 = sub_213E053BC(v19, 0);
    (*(v29 + 8))(v10, v8, v21);
    if (v32 != 1)
    {
      return sub_213EA8894(a1);
    }
  }

  sub_213EA8894(v7);
  v22 = *MEMORY[0x277CDF3C0];
  v23 = v30;
  v24 = *(v31 + 104);
  v24(v30, v22, v3);
  v25 = sub_213F4CE90();
  v26 = *(v31 + 8);
  v31 += 8;
  v26(v23, v3);
  v26(v7, v3);
  if (v25)
  {
    v27 = *MEMORY[0x277CDF3D0];
    v28 = a1;
  }

  else
  {
    v28 = a1;
    v27 = v22;
  }

  return (v24)(v28, v27, v3);
}

uint64_t sub_213EE41BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v106 = type metadata accessor for ListCellRecentSearch(0);
  MEMORY[0x28223BE20](v106);
  v86 = (&v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = type metadata accessor for ListCellProfileLibrary(0);
  MEMORY[0x28223BE20](v94);
  v90 = (&v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB658, &qword_213F60B38);
  MEMORY[0x28223BE20](v103);
  v105 = &v81 - v5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB660, &qword_213F60B40);
  MEMORY[0x28223BE20](v91);
  v93 = &v81 - v6;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB668, &qword_213F60B48);
  MEMORY[0x28223BE20](v104);
  v95 = &v81 - v7;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB670, &qword_213F60B50);
  MEMORY[0x28223BE20](v116);
  v107 = &v81 - v8;
  v92 = type metadata accessor for ListCellNavigation(0);
  MEMORY[0x28223BE20](v92);
  v99 = (&v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB678, &qword_213F60B58);
  MEMORY[0x28223BE20](v89);
  v87 = &v81 - v10;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB680, &qword_213F60B60);
  MEMORY[0x28223BE20](v112);
  v88 = &v81 - v11;
  v84 = type metadata accessor for ListCellMediumImageRight(0);
  MEMORY[0x28223BE20](v84);
  v82 = (&v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB688, &qword_213F60B68);
  MEMORY[0x28223BE20](v85);
  v83 = &v81 - v13;
  v97 = type metadata accessor for ListCellMediumImageLeft(0);
  MEMORY[0x28223BE20](v97);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_213F4D390();
  v96 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB690, &qword_213F60B70);
  MEMORY[0x28223BE20](v19);
  v21 = &v81 - v20;
  v102 = type metadata accessor for ListCellMedium(0);
  MEMORY[0x28223BE20](v102);
  v23 = (&v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB698, &qword_213F60B78);
  MEMORY[0x28223BE20](v113);
  v115 = &v81 - v24;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6A0, &qword_213F60B80);
  MEMORY[0x28223BE20](v108);
  v110 = &v81 - v25;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6A8, &qword_213F60B88);
  MEMORY[0x28223BE20](v98);
  v100 = &v81 - v26;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6B0, &qword_213F60B90);
  MEMORY[0x28223BE20](v109);
  v101 = &v81 - v27;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6B8, &qword_213F60B98);
  MEMORY[0x28223BE20](v114);
  v111 = &v81 - v28;
  v29 = type metadata accessor for ListCellSmall(0);
  MEMORY[0x28223BE20](v29);
  v31 = (&v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for ListCell(0);
  v33 = v32;
  v34 = a1;
  v35 = *(a1 + *(v32 + 28));
  if (v35 <= 5)
  {
    if ((v35 - 3) < 3)
    {
      sub_213DEBAA8(v34 + *(v32 + 32), v31 + v29[7]);
      *v31 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
      swift_storeEnumTagMultiPayload();
      v36 = v29[5];
      *(v31 + v36) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v37 = v29[6];
      *(v31 + v37) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
      swift_storeEnumTagMultiPayload();
      *(v31 + v29[8]) = v35;
      sub_213EE6480(v31, v100, type metadata accessor for ListCellSmall);
      swift_storeEnumTagMultiPayload();
      sub_213ED26C4(&qword_281187EA8, type metadata accessor for ListCellSmall, &unk_213F60DF8);
      sub_213ED26C4(&qword_281187AB8, type metadata accessor for ListCellMedium, &unk_213F60DA8);
      v38 = v101;
      sub_213F4DBA0();
      sub_213DE3164(v38, v110, &qword_27C8FB6B0, &qword_213F60B90);
      swift_storeEnumTagMultiPayload();
      sub_213EE6130();
      sub_213EE621C();
      v39 = v111;
      sub_213F4DBA0();
      sub_213DE36FC(v38, &qword_27C8FB6B0, &qword_213F60B90);
      sub_213DE3164(v39, v115, &qword_27C8FB6B8, &qword_213F60B98);
      swift_storeEnumTagMultiPayload();
      sub_213EE60A4();
      sub_213EE63C4();
      sub_213F4DBA0();
      sub_213DE36FC(v39, &qword_27C8FB6B8, &qword_213F60B98);
      v40 = type metadata accessor for ListCellSmall;
      v41 = v31;
      return sub_213EE64E8(v41, v40);
    }

    if (v35 >= 2)
    {
      v60 = v106;
      v61 = v86;
      sub_213DEBAA8(v34 + *(v32 + 32), v86 + *(v106 + 24));
      *v61 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
      swift_storeEnumTagMultiPayload();
      v62 = *(v60 + 20);
      *(v61 + v62) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      *(v61 + *(v60 + 28)) = 2;
      sub_213EE6480(v61, v105, type metadata accessor for ListCellRecentSearch);
      swift_storeEnumTagMultiPayload();
      sub_213EE5FB8();
      sub_213ED26C4(qword_2811853C8, type metadata accessor for ListCellRecentSearch, &unk_213F60E48);
      v63 = v107;
      sub_213F4DBA0();
      sub_213DE3164(v63, v115, &qword_27C8FB670, &qword_213F60B50);
      swift_storeEnumTagMultiPayload();
      sub_213EE60A4();
      sub_213EE63C4();
      sub_213F4DBA0();
      sub_213DE36FC(v63, &qword_27C8FB670, &qword_213F60B50);
      v40 = type metadata accessor for ListCellRecentSearch;
      v41 = v61;
      return sub_213EE64E8(v41, v40);
    }

    v51 = v94;
    v46 = v90;
    sub_213DEBAA8(v34 + *(v32 + 32), v90 + *(v94 + 24));
    *v46 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
    swift_storeEnumTagMultiPayload();
    v52 = *(v51 + 20);
    *(v46 + v52) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    *(v46 + *(v51 + 28)) = v35;
    sub_213EE6480(v46, v93, type metadata accessor for ListCellProfileLibrary);
    swift_storeEnumTagMultiPayload();
    sub_213ED26C4(&qword_281185A28, type metadata accessor for ListCellNavigation, &unk_213F60EE8);
    sub_213ED26C4(qword_281184EC8, type metadata accessor for ListCellProfileLibrary, &unk_213F60E98);
    v53 = v95;
    sub_213F4DBA0();
    sub_213DE3164(v53, v105, &qword_27C8FB668, &qword_213F60B48);
    swift_storeEnumTagMultiPayload();
    sub_213EE5FB8();
    sub_213ED26C4(qword_2811853C8, type metadata accessor for ListCellRecentSearch, &unk_213F60E48);
    v54 = v107;
    sub_213F4DBA0();
    sub_213DE36FC(v53, &qword_27C8FB668, &qword_213F60B48);
    sub_213DE3164(v54, v115, &qword_27C8FB670, &qword_213F60B50);
    swift_storeEnumTagMultiPayload();
    sub_213EE60A4();
    sub_213EE63C4();
    sub_213F4DBA0();
    sub_213DE36FC(v54, &qword_27C8FB670, &qword_213F60B50);
    v50 = type metadata accessor for ListCellProfileLibrary;
    goto LABEL_15;
  }

  v42 = v96;
  v86 = v21;
  v43 = v15;
  v90 = v19;
  v44 = v97;
  if (v35 > 7)
  {
    if (v35 == 8)
    {
      v55 = v43;
      sub_213DEBAA8(v34 + *(v32 + 32), v43 + *(v97 + 28));
      *v55 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
      swift_storeEnumTagMultiPayload();
      v56 = v44[5];
      *(v55 + v56) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v57 = v44[6];
      *(v55 + v57) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
      swift_storeEnumTagMultiPayload();
      *(v55 + v44[8]) = 8;
      sub_213EE6480(v55, v87, type metadata accessor for ListCellMediumImageLeft);
      swift_storeEnumTagMultiPayload();
      sub_213EE62D8();
      sub_213ED26C4(&qword_281184C20, type metadata accessor for ListCellMediumImageLeft, &unk_213F60D58);
      v58 = v88;
      sub_213F4DBA0();
      sub_213DE3164(v58, v110, &qword_27C8FB680, &qword_213F60B60);
      swift_storeEnumTagMultiPayload();
      sub_213EE6130();
      sub_213EE621C();
      v59 = v111;
      sub_213F4DBA0();
      sub_213DE36FC(v58, &qword_27C8FB680, &qword_213F60B60);
      sub_213DE3164(v59, v115, &qword_27C8FB6B8, &qword_213F60B98);
      swift_storeEnumTagMultiPayload();
      sub_213EE60A4();
      sub_213EE63C4();
      sub_213F4DBA0();
      sub_213DE36FC(v59, &qword_27C8FB6B8, &qword_213F60B98);
      v40 = type metadata accessor for ListCellMediumImageLeft;
      v41 = v55;
      return sub_213EE64E8(v41, v40);
    }

    v73 = v92;
    v46 = v99;
    sub_213DEBAA8(v34 + *(v32 + 32), v99 + *(v92 + 20));
    *v46 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    *(v46 + *(v73 + 24)) = 9;
    sub_213EE6480(v46, v93, type metadata accessor for ListCellNavigation);
    swift_storeEnumTagMultiPayload();
    sub_213ED26C4(&qword_281185A28, type metadata accessor for ListCellNavigation, &unk_213F60EE8);
    sub_213ED26C4(qword_281184EC8, type metadata accessor for ListCellProfileLibrary, &unk_213F60E98);
    v74 = v95;
    sub_213F4DBA0();
    sub_213DE3164(v74, v105, &qword_27C8FB668, &qword_213F60B48);
    swift_storeEnumTagMultiPayload();
    sub_213EE5FB8();
    sub_213ED26C4(qword_2811853C8, type metadata accessor for ListCellRecentSearch, &unk_213F60E48);
    v75 = v107;
    sub_213F4DBA0();
    sub_213DE36FC(v74, &qword_27C8FB668, &qword_213F60B48);
    sub_213DE3164(v75, v115, &qword_27C8FB670, &qword_213F60B50);
    swift_storeEnumTagMultiPayload();
    sub_213EE60A4();
    sub_213EE63C4();
    sub_213F4DBA0();
    sub_213DE36FC(v75, &qword_27C8FB670, &qword_213F60B50);
    v50 = type metadata accessor for ListCellNavigation;
LABEL_15:
    v40 = v50;
    v41 = v46;
    return sub_213EE64E8(v41, v40);
  }

  if (v35 == 6)
  {
    v45 = v102;
    v46 = v23;
    sub_213DEBAA8(v34 + *(v32 + 32), v23 + *(v102 + 24));
    *v23 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
    swift_storeEnumTagMultiPayload();
    v47 = *(v45 + 20);
    *(v23 + v47) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    *(v23 + *(v45 + 28)) = 6;
    sub_213EE6480(v23, v100, type metadata accessor for ListCellMedium);
    swift_storeEnumTagMultiPayload();
    sub_213ED26C4(&qword_281187EA8, type metadata accessor for ListCellSmall, &unk_213F60DF8);
    sub_213ED26C4(&qword_281187AB8, type metadata accessor for ListCellMedium, &unk_213F60DA8);
    v48 = v101;
    sub_213F4DBA0();
    sub_213DE3164(v48, v110, &qword_27C8FB6B0, &qword_213F60B90);
    swift_storeEnumTagMultiPayload();
    sub_213EE6130();
    sub_213EE621C();
    v49 = v111;
    sub_213F4DBA0();
    sub_213DE36FC(v48, &qword_27C8FB6B0, &qword_213F60B90);
    sub_213DE3164(v49, v115, &qword_27C8FB6B8, &qword_213F60B98);
    swift_storeEnumTagMultiPayload();
    sub_213EE60A4();
    sub_213EE63C4();
    sub_213F4DBA0();
    sub_213DE36FC(v49, &qword_27C8FB6B8, &qword_213F60B98);
    v50 = type metadata accessor for ListCellMedium;
    goto LABEL_15;
  }

  v64 = v43;
  v65 = v34;
  sub_213EA886C(v18);
  v66 = sub_213F4D370();
  (*(v42 + 8))(v18, v16);
  v67 = *(v33 + 32);
  if (v66)
  {
    sub_213DEBAA8(v65 + v67, v64 + v44[7]);
    *v64 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
    swift_storeEnumTagMultiPayload();
    v68 = v44[5];
    *(v64 + v68) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v69 = v44[6];
    *(v64 + v69) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
    swift_storeEnumTagMultiPayload();
    *(v64 + v44[8]) = 7;
    sub_213EE6480(v64, v83, type metadata accessor for ListCellMediumImageLeft);
    swift_storeEnumTagMultiPayload();
    sub_213ED26C4(&qword_281184C20, type metadata accessor for ListCellMediumImageLeft, &unk_213F60D58);
    sub_213ED26C4(qword_2811846A8, type metadata accessor for ListCellMediumImageRight, &unk_213F60D08);
    v70 = v86;
    sub_213F4DBA0();
    v71 = type metadata accessor for ListCellMediumImageLeft;
    v72 = v64;
  }

  else
  {
    v77 = v84;
    v78 = v82;
    sub_213DEBAA8(v65 + v67, v82 + *(v84 + 20));
    *v78 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    *(v78 + *(v77 + 24)) = 7;
    sub_213EE6480(v78, v83, type metadata accessor for ListCellMediumImageRight);
    swift_storeEnumTagMultiPayload();
    sub_213ED26C4(&qword_281184C20, type metadata accessor for ListCellMediumImageLeft, &unk_213F60D58);
    sub_213ED26C4(qword_2811846A8, type metadata accessor for ListCellMediumImageRight, &unk_213F60D08);
    v70 = v86;
    sub_213F4DBA0();
    v71 = type metadata accessor for ListCellMediumImageRight;
    v72 = v78;
  }

  sub_213EE64E8(v72, v71);
  v79 = v88;
  sub_213DE3164(v70, v87, &qword_27C8FB690, &qword_213F60B70);
  swift_storeEnumTagMultiPayload();
  sub_213EE62D8();
  sub_213ED26C4(&qword_281184C20, type metadata accessor for ListCellMediumImageLeft, &unk_213F60D58);
  sub_213F4DBA0();
  sub_213DE3164(v79, v110, &qword_27C8FB680, &qword_213F60B60);
  swift_storeEnumTagMultiPayload();
  sub_213EE6130();
  sub_213EE621C();
  v80 = v111;
  sub_213F4DBA0();
  sub_213DE36FC(v79, &qword_27C8FB680, &qword_213F60B60);
  sub_213DE3164(v80, v115, &qword_27C8FB6B8, &qword_213F60B98);
  swift_storeEnumTagMultiPayload();
  sub_213EE60A4();
  sub_213EE63C4();
  sub_213F4DBA0();
  sub_213DE36FC(v80, &qword_27C8FB6B8, &qword_213F60B98);
  return sub_213DE36FC(v70, &qword_27C8FB690, &qword_213F60B70);
}

uint64_t sub_213EE5C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB640, &qword_213F60AE8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB648, &qword_213F60AF0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  sub_213EE41BC(v2, v7);
  v12 = (v2 + *(a1 + 32));
  v14 = v12[3];
  v13 = v12[4];
  __swift_project_boxed_opaque_existential_0(v12, v14);
  if ((*(v13 + 96))(v14, v13))
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  sub_213DE2B44(v7, v11, &qword_27C8FB640, &qword_213F60AE8);
  *&v11[*(v9 + 44)] = v15;
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB650, &qword_213F60AF8) + 36));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B38, &qword_213F60B00);
  sub_213EE3E50(v16 + *(v17 + 28));
  *v16 = swift_getKeyPath();
  return sub_213DE2B44(v11, a2, &qword_27C8FB648, &qword_213F60AF0);
}

uint64_t sub_213EE5E10(uint64_t a1)
{
  v2 = sub_213F4CEA0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_213F4D5C0();
}

unint64_t sub_213EE5FB8()
{
  result = qword_281182BA0;
  if (!qword_281182BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB668, &qword_213F60B48);
    sub_213ED26C4(&qword_281185A28, type metadata accessor for ListCellNavigation, &unk_213F60EE8);
    sub_213ED26C4(qword_281184EC8, type metadata accessor for ListCellProfileLibrary, &unk_213F60E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182BA0);
  }

  return result;
}

unint64_t sub_213EE60A4()
{
  result = qword_281182A80;
  if (!qword_281182A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB6B8, &qword_213F60B98);
    sub_213EE6130();
    sub_213EE621C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A80);
  }

  return result;
}

unint64_t sub_213EE6130()
{
  result = qword_281182BA8;
  if (!qword_281182BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB6B0, &qword_213F60B90);
    sub_213ED26C4(&qword_281187EA8, type metadata accessor for ListCellSmall, &unk_213F60DF8);
    sub_213ED26C4(&qword_281187AB8, type metadata accessor for ListCellMedium, &unk_213F60DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182BA8);
  }

  return result;
}

unint64_t sub_213EE621C()
{
  result = qword_281182A70;
  if (!qword_281182A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB680, &qword_213F60B60);
    sub_213EE62D8();
    sub_213ED26C4(&qword_281184C20, type metadata accessor for ListCellMediumImageLeft, &unk_213F60D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A70);
  }

  return result;
}

unint64_t sub_213EE62D8()
{
  result = qword_281182B88;
  if (!qword_281182B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB690, &qword_213F60B70);
    sub_213ED26C4(&qword_281184C20, type metadata accessor for ListCellMediumImageLeft, &unk_213F60D58);
    sub_213ED26C4(qword_2811846A8, type metadata accessor for ListCellMediumImageRight, &unk_213F60D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B88);
  }

  return result;
}

unint64_t sub_213EE63C4()
{
  result = qword_281182A78;
  if (!qword_281182A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB670, &qword_213F60B50);
    sub_213EE5FB8();
    sub_213ED26C4(qword_2811853C8, type metadata accessor for ListCellRecentSearch, &unk_213F60E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A78);
  }

  return result;
}

uint64_t sub_213EE6480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213EE64E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_213EE6570(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_213EE65FC(uint64_t a1)
{
  sub_213EE6570(319, &qword_281183518, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213EE6570(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_213E753F0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_184Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_185Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_213EE68E4(uint64_t a1)
{
  sub_213EE6570(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213E753F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213EE69C8(uint64_t a1)
{
  if (!qword_281183508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8D50, &unk_213F5E0A0);
    v1 = sub_213F4CEF0();
    if (!v2)
    {
      atomic_store(v1, &qword_281183508);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_166Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(v9 + 48);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v10 = v13;
    v11 = *(v14 + 48);
    v12 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v16 = *(a1 + *(a3 + 24) + 24);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t __swift_store_extra_inhabitant_index_167Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = *(v11 + 56);
    v14 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
    v16 = *(result - 8);
    if (*(v16 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v12 = result;
    v13 = *(v16 + 56);
    v14 = a1 + *(a4 + 20);
  }

  return v13(v14, a2, a2, v12);
}

void sub_213EE6C90(uint64_t a1)
{
  sub_213EE69C8(319);
  if (v1 <= 0x3F)
  {
    sub_213EE6570(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_213E753F0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_202Tm(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D38, &qword_213F578A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 24);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t __swift_store_extra_inhabitant_index_203Tm(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D38, &qword_213F578A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 24) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_213EE7080(uint64_t a1)
{
  sub_213EE69C8(319);
  if (v1 <= 0x3F)
  {
    sub_213EE6570(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_213EE6570(319, &qword_281183518, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_213E753F0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_213EE719C()
{
  result = qword_281182FE8;
  if (!qword_281182FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB650, &qword_213F60AF8);
    sub_213EE7254();
    sub_213DE3AE4(&qword_281182898, &qword_27C8F9B38, &qword_213F60B00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182FE8);
  }

  return result;
}

unint64_t sub_213EE7254()
{
  result = qword_281183250;
  if (!qword_281183250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB648, &qword_213F60AF0);
    sub_213EE72E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183250);
  }

  return result;
}

unint64_t sub_213EE72E0()
{
  result = qword_2811827F0;
  if (!qword_2811827F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB640, &qword_213F60AE8);
    sub_213EE7364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811827F0);
  }

  return result;
}

unint64_t sub_213EE7364()
{
  result = qword_2811829F8;
  if (!qword_2811829F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB6C0, &qword_213F60D00);
    sub_213EE60A4();
    sub_213EE63C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811829F8);
  }

  return result;
}

uint64_t sub_213EE750C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_213EE75C4()
{
  result = qword_281183418;
  if (!qword_281183418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB6E8, &qword_213F60F58);
    sub_213ED26C4(&qword_281185C30, type metadata accessor for TrailingAccessory, &unk_213F61654);
    sub_213ED26C4(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183418);
  }

  return result;
}

unint64_t sub_213EE76B0()
{
  result = qword_281183120;
  if (!qword_281183120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB708, &qword_213F60F80);
    sub_213EE773C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183120);
  }

  return result;
}

unint64_t sub_213EE773C()
{
  result = qword_281183450;
  if (!qword_281183450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB710, &qword_213F60F88);
    sub_213EE77C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183450);
  }

  return result;
}

unint64_t sub_213EE77C8()
{
  result = qword_281187B70[0];
  if (!qword_281187B70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281187B70);
  }

  return result;
}

unint64_t sub_213EE781C()
{
  result = qword_281182F20;
  if (!qword_281182F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB6F0, &qword_213F60F60);
    sub_213EE76B0();
    sub_213ED26C4(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F20);
  }

  return result;
}

unint64_t sub_213EE78D8()
{
  result = qword_281183420;
  if (!qword_281183420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB728, &unk_213F60FA0);
    sub_213ED26C4(qword_281186640, type metadata accessor for LeadingAccessory, &unk_213F601D4);
    sub_213ED26C4(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183420);
  }

  return result;
}

uint64_t sub_213EE79C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_231Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80);
  v4 = v1 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D390();
    (*(*(v5 - 8) + 8))(v1 + v3, v5);
  }

  else
  {
  }

  v6 = *(v2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_213F4D290();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1((v4 + *(v2 + 24)));

  return swift_deallocObject();
}

unint64_t sub_213EE7D14()
{
  result = qword_27C8FB7B8;
  if (!qword_27C8FB7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB780, &qword_213F61000);
    sub_213DE3AE4(&qword_27C8FB7A8, &qword_27C8FB7A0, &qword_213F61058, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB7B8);
  }

  return result;
}

unint64_t sub_213EE7E5C()
{
  result = qword_281182CC0;
  if (!qword_281182CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB7F0, &qword_213F610C8);
    sub_213EE7EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182CC0);
  }

  return result;
}

unint64_t sub_213EE7EE8()
{
  result = qword_281182D10;
  if (!qword_281182D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB7F8, &qword_213F610D0);
    sub_213EE7F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D10);
  }

  return result;
}

unint64_t sub_213EE7F74()
{
  result = qword_281182D78;
  if (!qword_281182D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB800, &qword_213F610D8);
    sub_213E508E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D78);
  }

  return result;
}

unint64_t sub_213EE8000()
{
  result = qword_281183170;
  if (!qword_281183170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB820, &qword_213F61100);
    sub_213DE3AE4(&qword_2811826B8, &qword_27C8FB830, &qword_213F61110, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183170);
  }

  return result;
}

unint64_t sub_213EE80B8()
{
  result = qword_281183200;
  if (!qword_281183200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB808, &qword_213F610E8);
    sub_213DE3AE4(&qword_281182708, &qword_27C8FB838, &qword_213F61118, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183200);
  }

  return result;
}

uint64_t objectdestroy_242Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80);
  v4 = v1 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D390();
    (*(*(v5 - 8) + 8))(v1 + v3, v5);
  }

  else
  {
  }

  v6 = *(v2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_213F4D290();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1((v4 + *(v2 + 24)));

  return swift_deallocObject();
}

uint64_t sub_213EE8340(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  a2(0);

  return a3(a1);
}

unint64_t sub_213EE83F8()
{
  result = qword_281182600;
  if (!qword_281182600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB850, &qword_213F61130);
    sub_213DE3AE4(&qword_281182560, &qword_27C8FB8A0, &qword_213F61188, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182600);
  }

  return result;
}

uint64_t objectdestroy_265Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 1) + 80) + 16) & ~*(*(v2 - 1) + 80);
  v4 = v1 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FC8, &qword_213F61200);
    if (!(*(*(v5 - 8) + 48))(v1 + v3, 1, v5))
    {

      v6 = *(v5 + 32);
      v7 = sub_213F4EDA0();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
    }
  }

  else
  {
  }

  v8 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_213F4D290();
    (*(*(v9 - 8) + 8))(v4 + v8, v9);
  }

  else
  {
  }

  v10 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D390();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1((v4 + v2[7]));

  return swift_deallocObject();
}

unint64_t sub_213EE8838()
{
  result = qword_281183400;
  if (!qword_281183400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB928, &qword_213F61268);
    sub_213EE88BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183400);
  }

  return result;
}

unint64_t sub_213EE88BC()
{
  result = qword_281183408;
  if (!qword_281183408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB930, &unk_213F61270);
    sub_213ED26C4(&qword_2811855A8, type metadata accessor for ContextLineAccessory, &unk_213F5EDD8);
    sub_213ED26C4(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183408);
  }

  return result;
}

unint64_t sub_213EE89D0()
{
  result = qword_281183100;
  if (!qword_281183100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB950, &qword_213F61298);
    sub_213EE75C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183100);
  }

  return result;
}

uint64_t objectdestroy_282Tm()
{
  v1 = type metadata accessor for ListCellMedium(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FC8, &qword_213F61200);
    if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
    {

      v5 = *(v4 + 32);
      v6 = sub_213F4EDA0();
      (*(*(v6 - 8) + 8))(v3 + v5, v6);
    }
  }

  else
  {
  }

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4D290();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1((v3 + *(v1 + 24)));

  return swift_deallocObject();
}

unint64_t sub_213EE8EC0()
{
  result = qword_27C8FB9D0;
  if (!qword_27C8FB9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB9C8, &qword_213F61308);
    sub_213EE76B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB9D0);
  }

  return result;
}

unint64_t sub_213EE8F4C()
{
  result = qword_27C8FB9D8;
  if (!qword_27C8FB9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB9B8, &qword_213F612F8);
    sub_213EE8EC0();
    sub_213ED26C4(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB9D8);
  }

  return result;
}

unint64_t sub_213EE908C()
{
  result = qword_2811831A8;
  if (!qword_2811831A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB8C8, &qword_213F611E0);
    sub_213DE3AE4(&qword_2811826A8, &qword_27C8FB9F0, &unk_213F61318, MEMORY[0x277CE1198]);
    sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831A8);
  }

  return result;
}

uint64_t static TrailingAccessoryViewModel.more(actions:onMenuPresentationChanged:customMenuContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{

  sub_213DD74C4(a2, a3);
  sub_213DD74C4(a4, a5);
  sub_213F4CB30();
  result = type metadata accessor for TrailingAccessoryViewModel(0);
  v13 = a6 + *(result + 20);
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  *(v13 + 40) = 0;
  return result;
}

__n128 TrailingAccessoryViewModel.init(type:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_213F4CB30();
  v6 = a2 + *(type metadata accessor for TrailingAccessoryViewModel(0) + 20);
  result = *a1;
  v8 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = v8;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  return result;
}

uint64_t TrailingAccessoryViewModel.axIDString.getter()
{
  v1 = (v0 + *(type metadata accessor for TrailingAccessoryViewModel(0) + 20));
  v2 = *(v1 + 40);
  if (v2 <= 2)
  {
    if (!*(v1 + 40))
    {
      return 1701998413;
    }

    if (v2 != 1)
    {
      return 0x7463656C6553;
    }

    v4 = 0x6E696C66664FLL;
    return v4 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
  }

  if (*(v1 + 40) <= 4u)
  {
    if (v2 == 3)
    {
      return 0x6F69746365726944;
    }

    else
    {
      return 0x706F7453646441;
    }
  }

  if (v2 == 5)
  {
    return 0x4154456572616853;
  }

  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];
  v8 = *v1;
  v9 = v1[1];
  v10 = v6 | v5;
  if (!(v10 | v8 | v7 | v9))
  {
    return 6579265;
  }

  v11 = v10 | v7 | v9;
  if (v8 == 1 && v11 == 0)
  {
    return 1868983881;
  }

  if (v8 == 2 && v11 == 0)
  {
    return 7235920;
  }

  if (v8 == 3 && v11 == 0)
  {
    return 0x6975427972657551;
  }

  if (v8 == 4 && !v11)
  {
    return 0x7265766F796C46;
  }

  if (v8 == 5 && !v11)
  {
    return 0x756F72416B6F6F4CLL;
  }

  if (v8 == 6 && !v11)
  {
    return 1819042115;
  }

  if (v8 == 7 && !v11)
  {
    v4 = 0x746973626557;
    return v4 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
  }

  result = 0x697461676976614ELL;
  if (v8 == 8 && !v11)
  {
    return 0xD000000000000010;
  }

  return result;
}

uint64_t TrailingAccessoryViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TrailingAccessoryViewModel.id.setter(uint64_t a1)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_213EE96F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_213F4DBC0();
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  MEMORY[0x28223BE20](v3);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_213F4D450();
  v6 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ButtonTrailingAccessory(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBC98, &qword_213F61F00);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCA0, &qword_213F61F08);
  MEMORY[0x28223BE20](v34);
  v17 = &v34 - v16;
  sub_213EFA438(v2, &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonTrailingAccessory);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_213EF8E7C(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for ButtonTrailingAccessory);
  v40 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCA8, &qword_213F61F10);
  sub_213EFA550();
  sub_213F4EB00();
  sub_213F4D440();
  sub_213DE3AE4(&qword_281182750, &qword_27C8FBC98, &qword_213F61F00, MEMORY[0x277CDF028]);
  sub_213EF7D6C(&qword_281182C78, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v20 = v35;
  sub_213F4E3B0();
  (*(v6 + 8))(v8, v20);
  (*(v13 + 8))(v15, v12);
  v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCD8, &qword_213F61F28) + 36)] = 0;
  v21 = &v17[*(v34 + 36)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA708, &qword_213F61F30);
  sub_213F4D510();
  v23 = *(sub_213F4D470() + 20);
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_213F4D950();
  (*(*(v25 - 8) + 104))(&v21[v23], v24, v25);
  __asm { FMOV            V0.2D, #6.0 }

  *v21 = _Q0;
  *&v21[*(sub_213F4D460() + 20)] = 0xC020000000000000;
  v21[*(v22 + 36)] = 0;
  v31 = v36;
  sub_213F4D570();
  sub_213EFA74C();
  sub_213EF7D6C(&qword_2811829B0, MEMORY[0x277CDDFF8], MEMORY[0x277CDDFF0]);
  v32 = v37;
  sub_213F4E410();
  (*(v38 + 8))(v31, v32);
  return sub_213DE36FC(v17, &qword_27C8FBCA0, &qword_213F61F08);
}

uint64_t sub_213EE9C64(uint64_t a1)
{
  v2 = sub_213F4D7F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v8 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    v9 = sub_213EB8B1C(v7, v6, 0);
    (*(v3 + 8))(v5, v2, v9);
    v7 = v15;
  }

  v10 = a1 + *(type metadata accessor for ButtonTrailingAccessory(0) + 28);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v15 = *v10;
  v16 = v11;
  v17 = v12;
  sub_213EC4B2C(v15, v11, v12);
  v7(&v15);

  return sub_213EB8F2C(v15, v16, v17);
}

double sub_213EE9E08@<D0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v27 - v4;
  v5 = sub_213F4D290();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for ButtonTrailingAccessory(0);

  v27 = sub_213F4E9F0();
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCD0, &qword_213F61F20) + 36));
  v13 = a2;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
  v15 = *MEMORY[0x277CE1058];
  v16 = sub_213F4EA30();
  (*(*(v16 - 8) + 104))(v12 + v14, v15, v16);
  *v12 = swift_getKeyPath();
  v17 = v13;
  *v13 = v27;
  sub_213DBBD08(v11);
  sub_213F4D280();
  sub_213F4D270();
  v18 = *(v6 + 8);
  v18(v9, v5);
  v18(v11, v5);
  sub_213F4E160();
  v19 = sub_213F4E0F0();
  v20 = v28;
  (*(*(v19 - 8) + 56))(v28, 1, 1, v19);
  v21 = sub_213F4E190();
  sub_213DE36FC(v20, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  v23 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCC0, &qword_213F61F18) + 36));
  *v23 = KeyPath;
  v23[1] = v21;
  sub_213DBBD08(v11);
  sub_213F4D280();
  sub_213F4D270();
  v18(v9, v5);
  v18(v11, v5);
  sub_213DBBD08(v11);
  sub_213F4D280();
  sub_213F4D270();
  v18(v9, v5);
  v18(v11, v5);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v24 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCA8, &qword_213F61F10) + 36));
  v25 = v30;
  *v24 = v29;
  v24[1] = v25;
  result = *&v31;
  v24[2] = v31;
  return result;
}

double sub_213EEA1E8()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_213DBBD08(&v9 - v5);
  sub_213F4D280();
  sub_213F4D270();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v7(v6, v0);
  return 20.0;
}

double sub_213EEA2FC()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_213DBBD08(&v9 - v5);
  sub_213F4D280();
  sub_213F4D270();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v7(v6, v0);
  return 28.0;
}

uint64_t sub_213EEA410@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93A8, &unk_213F59F90);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F08, &unk_213F56DF0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9360, &unk_213F59F70);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = a1[3];
  v52 = a1[2];
  v53 = v18;
  v54 = a1[4];
  v55 = *(a1 + 80);
  v19 = a1[1];
  v50 = *a1;
  v51 = v19;
  v20 = swift_allocObject();
  v21 = a1[3];
  *(v20 + 48) = a1[2];
  *(v20 + 64) = v21;
  *(v20 + 80) = a1[4];
  *(v20 + 96) = *(a1 + 80);
  v22 = *a1;
  v23 = a1[1];
  *(v20 + 16) = *a1;
  *(v20 + 32) = v23;
  *(v20 + 104) = a2;
  v56 = v22;
  v24 = v53;
  v47 = a3;
  v46 = v11;
  v45 = v17;
  v44 = v15;
  v43 = v12;
  v42 = v14;
  if (v53 == 1)
  {
    sub_213E32048(&v50, &v48);
    v25 = a2;
    sub_213E32160(&v56, &v48);
    sub_213F4CD80();
    v26 = sub_213F4CD90();
    (*(*(v26 - 8) + 56))(v10, 0, 1, v26);
  }

  else
  {
    v27 = sub_213F4CD90();
    (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
    sub_213E32048(&v50, &v48);
    v28 = a2;
    sub_213E32160(&v56, &v48);
  }

  v29 = v51;
  v48 = v56;
  v30 = sub_213DE3164(v10, v41, &qword_27C8F93A8, &unk_213F59F90);
  MEMORY[0x28223BE20](v30);
  *(&v40 - 4) = &v48;
  *(&v40 - 3) = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F10, &qword_213F57850);
  sub_213DE3AE4(&qword_27C8F8F18, &qword_27C8F8F10, &qword_213F57850, MEMORY[0x277CDEFF0]);
  v31 = v42;
  sub_213F4EAF0();
  sub_213DE36FC(v10, &qword_27C8F93A8, &unk_213F59F90);
  sub_213E321BC(&v56);
  if (v24 >= 2)
  {

    KeyPath = swift_getKeyPath();
    *&v48 = v24;

    v33 = sub_213F4D0D0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v33 = 0;
  }

  v34 = v46;
  v35 = v45;
  v36 = v44;
  v37 = v43;
  (*(v43 + 16))(v45, v31, v46);

  v38 = (v35 + *(v36 + 36));
  *v38 = KeyPath;
  v38[1] = v33;
  (*(v37 + 8))(v31, v34);
  v48 = v54;
  v49 = v55;
  sub_213DD76C0();
  sub_213E31F4C();
  sub_213F4E6D0();

  return sub_213DE36FC(v35, &qword_27C8F9360, &unk_213F59F70);
}

uint64_t sub_213EEA97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v54 = *&v7;
  v55 = a1;
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  (*(v3 + 32))(v7 + v6, v5, a1);
  v53 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBA8, &qword_213F61D48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9348, &unk_213F577F0);
  v11 = sub_213F4DBB0();
  v12 = sub_213EF99D0();
  v13 = sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0, MEMORY[0x277CE14C0]);
  v72 = v9;
  v73 = v13;
  WitnessTable = swift_getWitnessTable();
  *&v84 = v10;
  *(&v84 + 1) = v11;
  *&v85 = v12;
  *(&v85 + 1) = WitnessTable;
  v15 = sub_213F4E280();
  v16 = sub_213F4D360();
  v17 = swift_getWitnessTable();
  v18 = sub_213EF7D6C(&qword_281183498, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
  *&v84 = v15;
  *(&v84 + 1) = v16;
  *&v85 = v17;
  *(&v85 + 1) = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = sub_213F4D450();
  *&v84 = v15;
  *(&v84 + 1) = v16;
  *&v85 = v17;
  *(&v85 + 1) = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_213EF7D6C(&qword_281182C78, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  *&v84 = OpaqueTypeMetadata2;
  *(&v84 + 1) = v20;
  *&v85 = OpaqueTypeConformance2;
  *(&v85 + 1) = v22;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D0, &unk_213F5A1B0);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B58, &unk_213F59EF0);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9368, &unk_213F59F80);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA708, &qword_213F61F30);
  v23 = sub_213F4D400();
  v51 = sub_213F4DBC0();
  *&v84 = OpaqueTypeMetadata2;
  *(&v84 + 1) = v20;
  *&v85 = OpaqueTypeConformance2;
  *(&v85 + 1) = v22;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0, MEMORY[0x277CE0470]);
  v70 = v24;
  v71 = v25;
  v26 = MEMORY[0x277CDFAD8];
  v27 = swift_getWitnessTable();
  v28 = MEMORY[0x277CE0868];
  v29 = sub_213DE3AE4(&qword_2811828A0, &qword_27C8F9B58, &unk_213F59EF0, MEMORY[0x277CE0868]);
  v68 = v27;
  v69 = v29;
  v52 = v26;
  v30 = swift_getWitnessTable();
  v31 = sub_213DE3AE4(&qword_281182890, &qword_27C8F9368, &unk_213F59F80, v28);
  v66 = v30;
  v67 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_213DE3AE4(&qword_2811828E0, &qword_27C8FA708, &qword_213F61F30, MEMORY[0x277CE07A8]);
  v64 = v32;
  v65 = v33;
  v34 = swift_getWitnessTable();
  v35 = sub_213EF7D6C(&qword_2811829B0, MEMORY[0x277CDDFF8], MEMORY[0x277CDDFF0]);
  v36 = v51;
  *&v84 = v23;
  *(&v84 + 1) = v51;
  *&v85 = v34;
  *(&v85 + 1) = v35;
  v37 = swift_getOpaqueTypeMetadata2();
  *&v84 = v23;
  *(&v84 + 1) = v36;
  *&v85 = v34;
  *(&v85 + 1) = v35;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_213F3CB80(sub_213EFA97C, *&v54, v53);
  v41 = v40;
  *&v79 = v39;
  *(&v79 + 1) = v42;
  *&v80 = v40;
  *(&v80 + 1) = v43;
  v54 = sub_213EEA2FC();
  sub_213EEA2FC();
  sub_213F4EEE0();
  type metadata accessor for BackgroundUIView(0, v37, v38, v44);
  v45 = swift_getWitnessTable();
  sub_213F4E740();

  v61 = v86;
  v62 = v87;
  v63 = v88;
  v59 = v84;
  v60 = v85;
  v46 = sub_213F4D400();
  v57 = v45;
  v58 = MEMORY[0x277CDF678];
  v47 = swift_getWitnessTable();
  sub_213DBFEEC(&v59, v46, v47);
  v81 = v61;
  v82 = v62;
  v83 = v63;
  v79 = v59;
  v80 = v60;
  v48 = *(*(v46 - 8) + 8);
  v48(&v79, v46);
  v61 = v76;
  v62 = v77;
  v63 = v78;
  v59 = v74;
  v60 = v75;
  sub_213DBFEEC(&v59, v46, v47);
  v86 = v61;
  v87 = v62;
  v88 = v63;
  v84 = v59;
  v85 = v60;
  return (v48)(&v84, v46);
}

uint64_t sub_213EEB0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v117 = a2;
  v125 = a1;
  v134 = a5;
  v132 = sub_213F4DBC0();
  v133 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v131 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_213F4D460();
  MEMORY[0x28223BE20](v128);
  v127 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_213F4D530();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v126 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_213F4D450();
  v94 = v10;
  v124 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v123 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_213F4D360();
  v122 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v120 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a4;
  v116 = type metadata accessor for MoreTrailingAccessory(0, a3, a4, v14);
  v113 = *(v116 - 8);
  v115 = *(v113 + 64);
  MEMORY[0x28223BE20](v116);
  v16 = &v85 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBA8, &qword_213F61D48);
  v109 = v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9348, &unk_213F577F0);
  v18 = sub_213F4DBB0();
  v108 = v18;
  v19 = sub_213EF99D0();
  v106 = v19;
  v20 = sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0, MEMORY[0x277CE14C0]);
  v154 = a4;
  v155 = v20;
  WitnessTable = swift_getWitnessTable();
  v150 = v17;
  v151 = v18;
  v152 = v19;
  v153 = WitnessTable;
  v21 = sub_213F4E280();
  v114 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v103 = &v85 - v22;
  v23 = swift_getWitnessTable();
  v24 = sub_213EF7D6C(&qword_281183498, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
  v150 = v21;
  v151 = v12;
  v93 = v12;
  v152 = v23;
  v153 = v24;
  v97 = v23;
  v25 = v24;
  v96 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v95 = OpaqueTypeMetadata2;
  v107 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v92 = &v85 - v27;
  v150 = v21;
  v151 = v12;
  v152 = v23;
  v153 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = OpaqueTypeConformance2;
  v90 = sub_213EF7D6C(&qword_281182C78, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v150 = OpaqueTypeMetadata2;
  v151 = v10;
  v152 = OpaqueTypeConformance2;
  v153 = v90;
  v98 = MEMORY[0x277CDE668];
  v89 = swift_getOpaqueTypeMetadata2();
  v100 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v86 = &v85 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D0, &unk_213F5A1B0);
  v30 = sub_213F4D400();
  v102 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v87 = &v85 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B58, &unk_213F59EF0);
  v101 = sub_213F4D400();
  v111 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v88 = &v85 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9368, &unk_213F59F80);
  v112 = sub_213F4D400();
  v118 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v99 = &v85 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA708, &qword_213F61F30);
  v119 = sub_213F4D400();
  v121 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v110 = &v85 - v34;
  v35 = v113;
  v36 = v16;
  v37 = v117;
  v38 = v116;
  (*(v113 + 16))(v16, v117, v116);
  v39 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v40 = swift_allocObject();
  v41 = a3;
  *(v40 + 16) = a3;
  v42 = v105;
  *(v40 + 24) = v105;
  (*(v35 + 32))(v40 + v39, v36, v38);
  v138 = v41;
  v139 = v42;
  v140 = v37;
  v141 = v125;
  v135 = v41;
  v136 = v42;
  v137 = v37;
  v43 = v103;
  sub_213F4E260();
  v44 = v120;
  sub_213F4D350();
  v45 = v92;
  v46 = v93;
  sub_213F4E860();
  (*(v122 + 8))(v44, v46);
  (*(v114 + 8))(v43, v21);
  v47 = v123;
  sub_213F4D440();
  v48 = v86;
  v49 = v95;
  v50 = v94;
  v51 = v91;
  v52 = v90;
  sub_213F4E3B0();
  (*(v124 + 8))(v47, v50);
  (*(v107 + 8))(v45, v49);
  v150 = v49;
  v151 = v50;
  v152 = v51;
  v153 = v52;
  v53 = swift_getOpaqueTypeConformance2();
  sub_213E37D5C();
  v54 = v87;
  v55 = v89;
  sub_213F4E460();
  (*(v100 + 8))(v48, v55);
  v56 = sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0, MEMORY[0x277CE0470]);
  v148 = v53;
  v149 = v56;
  v57 = swift_getWitnessTable();
  v58 = v88;
  sub_213F4E4D0();
  (*(v102 + 8))(v54, v30);
  v59 = [objc_opt_self() labelColor];
  v150 = sub_213F4E870();
  v60 = MEMORY[0x277CE0868];
  v61 = sub_213DE3AE4(&qword_2811828A0, &qword_27C8F9B58, &unk_213F59EF0, MEMORY[0x277CE0868]);
  v146 = v57;
  v147 = v61;
  v62 = v101;
  v63 = swift_getWitnessTable();
  v64 = v99;
  sub_213F4E730();

  (*(v111 + 8))(v58, v62);
  v65 = v126;
  sub_213F4D510();
  v66 = *(sub_213F4D470() + 20);
  v67 = *MEMORY[0x277CE0118];
  v68 = sub_213F4D950();
  v69 = v127;
  (*(*(v68 - 8) + 104))(&v127[v66], v67, v68);
  __asm { FMOV            V0.2D, #6.0 }

  *v69 = _Q0;
  *(v69 + *(v128 + 20)) = 0xC020000000000000;
  v75 = v69;
  v76 = sub_213DE3AE4(&qword_281182890, &qword_27C8F9368, &unk_213F59F80, v60);
  v144 = v63;
  v145 = v76;
  v77 = v112;
  v78 = swift_getWitnessTable();
  sub_213EF7D6C(&qword_281182C70, MEMORY[0x277CDFBC8], MEMORY[0x277CDFBC0]);
  v79 = v110;
  sub_213F4E470();
  sub_213EFAC04(v75);
  (*(v129 + 8))(v65, v130);
  (*(v118 + 8))(v64, v77);
  v80 = v131;
  sub_213F4D570();
  v81 = sub_213DE3AE4(&qword_2811828E0, &qword_27C8FA708, &qword_213F61F30, MEMORY[0x277CE07A8]);
  v142 = v78;
  v143 = v81;
  v82 = v119;
  swift_getWitnessTable();
  sub_213EF7D6C(&qword_2811829B0, MEMORY[0x277CDDFF8], MEMORY[0x277CDDFF0]);
  v83 = v132;
  sub_213F4E410();
  (*(v133 + 8))(v80, v83);
  return (*(v121 + 8))(v79, v82);
}

uint64_t sub_213EEC144@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v134 = a2;
  v143 = a1;
  v142 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9348, &unk_213F577F0);
  MEMORY[0x28223BE20](v7);
  v138 = &v122 - v8;
  v144 = a4;
  v10 = type metadata accessor for MoreTrailingAccessory(0, a3, a4, v9);
  v133 = *(v10 - 8);
  v11 = *(v133 + 64);
  MEMORY[0x28223BE20](v10);
  v132 = &v122 - v12;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9370, &qword_213F57810);
  v136 = *(v137 - 8);
  v13 = MEMORY[0x28223BE20](v137);
  v135 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v122 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9378, &qword_213F57818);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v122 - v22;
  v24 = *(a3 - 8);
  v25 = MEMORY[0x28223BE20](v21);
  v27 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v122 - v28;
  v141 = v7;
  v140 = sub_213F4DBB0();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v32 = &v122 - v31;
  v33 = v10;
  v34 = v30 + *(v10 + 44);
  v35 = *v34;
  if (*v34)
  {
    v36 = *(v34 + 8);

    v35(v37);
    v38 = v144;
    sub_213DBFEEC(v27, a3, v144);
    v39 = *(v24 + 8);
    v39(v27, a3);
    sub_213DBFEEC(v29, a3, v38);
    v40 = sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0, MEMORY[0x277CE14C0]);
    sub_213E95440(v27, a3, v141, v38, v40);
    sub_213DD7558(v35, v36);
    v39(v27, a3);
    v39(v29, a3);
  }

  else
  {
    v125 = v11;
    v127 = v20;
    v130 = v23;
    v128 = v16;
    v129 = v32;
    v126 = v33;
    v41 = *(v30 + *(v33 + 36));
    v42 = *(v41 + 16);
    v131 = a3;
    if (v42)
    {
      v43 = 0;
      v44 = v41 + 32;
      v45 = v42 - 1;
      v46 = MEMORY[0x277D84F90];
      do
      {
        v47 = (v44 + 88 * v43);
        v48 = v43;
        while (1)
        {
          if (v48 >= *(v41 + 16))
          {
            __break(1u);
            goto LABEL_45;
          }

          v49 = v47[4];
          v50 = *(v47 + 80);
          v51 = v47[2];
          v151 = v47[3];
          v52 = v47[1];
          v148 = *v47;
          v149 = v52;
          v153 = v50;
          v152 = v49;
          v150 = v51;
          v43 = v48 + 1;
          if (BYTE8(v151))
          {
            break;
          }

          v47 = (v47 + 88);
          ++v48;
          if (v42 == v43)
          {
            goto LABEL_17;
          }
        }

        sub_213E32048(&v148, v147);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v154 = v46;
        v124 = v44;
        v54 = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_213EA90C8(0, *(v46 + 16) + 1, 1);
          v46 = v154;
        }

        v56 = *(v46 + 16);
        v55 = *(v46 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_213EA90C8((v55 > 1), v56 + 1, 1);
          v46 = v154;
        }

        *(v46 + 16) = v56 + 1;
        v57 = v46 + 88 * v56;
        v58 = v149;
        *(v57 + 32) = v148;
        *(v57 + 48) = v58;
        v59 = v150;
        v60 = v151;
        v61 = v152;
        *(v57 + 112) = v153;
        *(v57 + 80) = v60;
        *(v57 + 96) = v61;
        *(v57 + 64) = v59;
        v45 = v54;
        v44 = v124;
      }

      while (v54 != v48);
    }

    else
    {
      v46 = MEMORY[0x277D84F90];
    }

LABEL_17:
    v62 = *(v46 + 16);
    if (v62 >= 3)
    {
      if (v62 == 3)
      {

        v63 = 3;
        v124 = v46;
        goto LABEL_21;
      }

      goto LABEL_46;
    }

    v124 = v46;
    v46 = MEMORY[0x277D84F90];
    while (1)
    {
      v67 = *(v41 + 16);
      if (!v67)
      {
        break;
      }

      v68 = 0;
      v69 = v41 + 32;
      v70 = MEMORY[0x277D84F90];
LABEL_27:
      v71 = *(v41 + 16);
      v72 = (v69 + 88 * v68);
      v73 = v68;
      while (v73 < v71)
      {
        v74 = v72[4];
        v75 = *(v72 + 80);
        v76 = v72[2];
        v151 = v72[3];
        v77 = v72[1];
        v148 = *v72;
        v149 = v77;
        v153 = v75;
        v152 = v74;
        v150 = v76;
        v68 = v73 + 1;
        if ((BYTE8(v151) & 1) == 0)
        {
          sub_213E32048(&v148, v147);
          v78 = swift_isUniquelyReferenced_nonNull_native();
          v154 = v70;
          if ((v78 & 1) == 0)
          {
            sub_213EA90C8(0, *(v70 + 16) + 1, 1);
            v70 = v154;
          }

          v80 = *(v70 + 16);
          v79 = *(v70 + 24);
          v81 = v80 + 1;
          if (v80 >= v79 >> 1)
          {
            v123 = v69;
            sub_213EA90C8((v79 > 1), v80 + 1, 1);
            v81 = v80 + 1;
            v69 = v123;
            v70 = v154;
          }

          *(v70 + 16) = v81;
          v82 = v70 + 88 * v80;
          v83 = v149;
          *(v82 + 32) = v148;
          *(v82 + 48) = v83;
          v84 = v150;
          v85 = v151;
          v86 = v152;
          *(v82 + 112) = v153;
          *(v82 + 80) = v85;
          *(v82 + 96) = v86;
          *(v82 + 64) = v84;
          if (v67 - 1 != v73)
          {
            goto LABEL_27;
          }

          goto LABEL_39;
        }

        v72 = (v72 + 88);
        ++v73;
        if (v67 == v68)
        {
          goto LABEL_39;
        }
      }

LABEL_45:
      __break(1u);
LABEL_46:
      sub_213E5B720(v46, v46 + 32, 0, 7uLL);
      v124 = v120;
      v63 = *(v46 + 16);
      if (v63)
      {
LABEL_21:
        if (v63 >= 3)
        {
          v64 = 3;
        }

        else
        {
          v64 = v63;
        }

        sub_213E5B720(v46, v46 + 32, v64, (2 * v63) | 1);
        v66 = v65;

        v46 = v66;
      }
    }

    v70 = MEMORY[0x277D84F90];
LABEL_39:
    *&v148 = v46;
    v87 = sub_213E273F0(v70);
    v88 = v148;
    v89 = v124;
    if (*(v124 + 16))
    {
      MEMORY[0x28223BE20](v87);
      v90 = v144;
      *(&v122 - 6) = v131;
      *(&v122 - 5) = v90;
      v91 = v143;
      *(&v122 - 4) = v89;
      *(&v122 - 3) = v91;
      v92 = v134;
      v121 = v134;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9350, &unk_213F59F60);
      sub_213E31E00();
      v93 = v130;
      sub_213F4CFD0();

      v94 = 0;
      v95 = v136;
    }

    else
    {

      v94 = 1;
      v95 = v136;
      v93 = v130;
      v92 = v134;
      v91 = v143;
    }

    v96 = v133;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9380, &qword_213F57820);
    (*(*(v97 - 8) + 56))(v93, v94, 1, v97);
    *&v148 = v88;
    v98 = v132;
    v99 = v126;
    (*(v96 + 16))(v132, v91, v126);
    v100 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v101 = (v125 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
    v102 = swift_allocObject();
    v103 = v144;
    *(v102 + 16) = v131;
    *(v102 + 24) = v103;
    (*(v96 + 32))(v102 + v100, v98, v99);
    *(v102 + v101) = v92;
    v104 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9388, &qword_213F57828);
    v105 = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9390, &qword_213F57830);
    sub_213DE3AE4(&qword_2811824E8, &qword_27C8F9388, &qword_213F57828, MEMORY[0x277D83980]);
    v143 = MEMORY[0x277CE14C0];
    sub_213DE3AE4(&qword_281182578, &qword_27C8F9390, &qword_213F57830, MEMORY[0x277CE14C0]);
    v121 = sub_213E320C4();
    v106 = v128;
    sub_213F4ECD0();
    v107 = v127;
    sub_213DE3164(v105, v127, &qword_27C8F9378, &qword_213F57818);
    v108 = *(v95 + 16);
    v109 = v135;
    v110 = v137;
    v108(v135, v106, v137);
    v111 = v138;
    sub_213DE3164(v107, v138, &qword_27C8F9378, &qword_213F57818);
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9398, &qword_213F57838);
    v108((v111 + *(v112 + 48)), v109, v110);
    v113 = *(v95 + 8);
    v113(v109, v110);
    v114 = v107;
    v38 = v144;
    sub_213DE36FC(v114, &qword_27C8F9378, &qword_213F57818);
    v115 = sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0, v143);
    v32 = v129;
    sub_213DBFF2C(v111, v131, v141, v38, v115);
    sub_213DE36FC(v111, &qword_27C8F9348, &unk_213F577F0);
    v113(v106, v110);
    sub_213DE36FC(v130, &qword_27C8F9378, &qword_213F57818);
  }

  v116 = sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0, MEMORY[0x277CE14C0]);
  v145 = v38;
  v146 = v116;
  v117 = v140;
  WitnessTable = swift_getWitnessTable();
  sub_213DBFEEC(v32, v117, WitnessTable);
  return (*(v139 + 8))(v32, v117);
}

uint64_t sub_213EECE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22[0] = a6;
  v11 = type metadata accessor for MoreTrailingAccessory(0, a4, a5, a4);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v22 - v14;
  v22[3] = a1;
  (*(v12 + 16))(v22 - v14, a2, v11);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  (*(v12 + 32))(v17 + v16, v15, v11);
  *(v17 + ((v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  v18 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9388, &qword_213F57828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93A0, &unk_213F57840);
  sub_213DE3AE4(&qword_2811824E8, &qword_27C8F9388, &qword_213F57828, MEMORY[0x277D83980]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9358, &unk_213F57800);
  v20 = sub_213EF8120(&qword_281182FB0, &qword_27C8F9358, &unk_213F57800, sub_213E31F4C);
  v22[1] = v19;
  v22[2] = v20;
  swift_getOpaqueTypeConformance2();
  sub_213E320C4();
  return sub_213F4ECD0();
}

uint64_t sub_213EED0B4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v20[1] = a5;
  v9 = sub_213F4D330();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9358, &unk_213F57800);
  MEMORY[0x28223BE20](v13);
  v15 = v20 - v14;
  v16 = *(a1 + 48);
  v21[2] = *(a1 + 32);
  v21[3] = v16;
  v21[4] = *(a1 + 64);
  v22 = *(a1 + 80);
  v17 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v17;
  type metadata accessor for MoreTrailingAccessory(0, a3, a4, v18);
  sub_213EEA410(v21, a2, v15);
  sub_213F4D320();
  sub_213EF8120(&qword_281182FB0, &qword_27C8F9358, &unk_213F57800, sub_213E31F4C);
  sub_213F4E4E0();
  (*(v10 + 8))(v12, v9);
  return sub_213DE36FC(v15, &qword_27C8F9358, &unk_213F57800);
}

uint64_t sub_213EED2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a3;
  v33 = a2;
  v34 = a6;
  v9 = sub_213F4ECB0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93B0, &unk_213F59FD0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9358, &unk_213F57800);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  v25 = *(a1 + 16);
  v35[0] = *a1;
  v35[1] = v25;
  *v36 = *(a1 + 32);
  *&v36[9] = *(a1 + 41);
  v39 = *(a1 + 57);
  *v38 = *(a1 + 58);
  *&v38[15] = *(a1 + 73);
  v37 = v39;
  type metadata accessor for MoreTrailingAccessory(0, a4, a5, v26);
  sub_213EEA410(v35, v32, v24);
  if (v39 == 1)
  {
    sub_213F4ECA0();
    (*(v10 + 32))(v18, v12, v9);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  (*(v10 + 56))(v18, v27, 1, v9);
  sub_213DE3164(v24, v22, &qword_27C8F9358, &unk_213F57800);
  sub_213DE3164(v18, v16, &qword_27C8F93B0, &unk_213F59FD0);
  v28 = v34;
  sub_213DE3164(v22, v34, &qword_27C8F9358, &unk_213F57800);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93B8, &qword_213F57890);
  sub_213DE3164(v16, v28 + *(v29 + 48), &qword_27C8F93B0, &unk_213F59FD0);
  sub_213DE36FC(v18, &qword_27C8F93B0, &unk_213F59FD0);
  sub_213DE36FC(v24, &qword_27C8F9358, &unk_213F57800);
  sub_213DE36FC(v16, &qword_27C8F93B0, &unk_213F59FD0);
  return sub_213DE36FC(v22, &qword_27C8F9358, &unk_213F57800);
}

double sub_213EED5D0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - v7;
  v9 = sub_213F4E9F0();
  type metadata accessor for MoreTrailingAccessory(0, a1, a2, v10);
  sub_213EEA1E8();
  sub_213F4E160();
  v11 = sub_213F4E0F0();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = sub_213F4E190();
  sub_213DE36FC(v8, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  v14 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7798, &unk_213F61D50) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
  v16 = *MEMORY[0x277CE1058];
  v17 = sub_213F4EA30();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = swift_getKeyPath();
  *a3 = v9;
  a3[1] = KeyPath;
  a3[2] = v12;
  sub_213EEA2FC();
  sub_213EEA2FC();
  sub_213F4EEE0();
  sub_213F4D0C0();
  v18 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBA8, &qword_213F61D48) + 36));
  v19 = v21[1];
  *v18 = v21[0];
  v18[1] = v19;
  result = *&v22;
  v18[2] = v22;
  return result;
}

uint64_t OfflineState.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t sub_213EED8C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OfflineTrailingAccessory(0);
  sub_213DE3164(v1 + *(v10 + 20), v9, &qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4CEA0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

unint64_t sub_213EEDB14()
{
  result = qword_27C8FBA10;
  if (!qword_27C8FBA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBA10);
  }

  return result;
}

uint64_t sub_213EEDB90(uint64_t a1)
{
  result = sub_213F4CB40();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10MapsDesign26TrailingAccessoryViewModelV0cD4TypeO(uint64_t a1)
{
  if ((*(a1 + 40) & 7u) <= 5)
  {
    return *(a1 + 40) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_213EEDC34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 41))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 40);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_213EEDC7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_213EEDCCC(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 6;
  }

  *(result + 40) = a2;
  return result;
}

void sub_213EEDD58(uint64_t a1)
{
  sub_213EF9108(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v1 <= 0x3F)
  {
    sub_213EF9108(319, &qword_281183518, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for TrailingAccessoryViewModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213EEDE48@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v30 - v8;
  *a1 = sub_213F4EEE0();
  a1[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCE0, &qword_213F61F68);
  v12 = sub_213EEE0CC(v1, a1 + *(v11 + 44));
  v13 = MEMORY[0x216052350](v12, 0.5, 1.0, 0.0);
  v14 = *(v1 + *(type metadata accessor for OfflineTrailingAccessory(0) + 28));
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCE8, &qword_213F61F70) + 36);
  *v15 = v13;
  v15[8] = v14;
  sub_213DBBD08(v9);
  sub_213F4D280();
  sub_213F4D270();
  v16 = *(v4 + 8);
  v16(v7, v3);
  v16(v9, v3);
  sub_213DBBD08(v9);
  sub_213F4D280();
  sub_213F4D270();
  v16(v7, v3);
  v16(v9, v3);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCF0, &qword_213F61F78) + 36));
  v18 = v30[1];
  *v17 = v30[0];
  v17[1] = v18;
  v17[2] = v30[2];
  v19 = sub_213F4E050();
  sub_213F4CDA0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCF8, &qword_213F61F80);
  v29 = a1 + *(result + 36);
  *v29 = v19;
  *(v29 + 1) = v21;
  *(v29 + 2) = v23;
  *(v29 + 3) = v25;
  *(v29 + 4) = v27;
  v29[40] = 0;
  return result;
}

uint64_t sub_213EEE0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD00, &qword_213F61F88);
  v3 = MEMORY[0x28223BE20](v145);
  v154 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v144 = &v126 - v6;
  MEMORY[0x28223BE20](v5);
  v153 = &v126 - v7;
  v142 = sub_213F4CEA0();
  v157 = *(v142 - 8);
  v8 = MEMORY[0x28223BE20](v142);
  v151 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v150 = &v126 - v10;
  v152 = sub_213F4EF90();
  v156 = *(v152 - 8);
  v11 = MEMORY[0x28223BE20](v152);
  v143 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v141 = &v126 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v14 - 8);
  v132 = &v126 - v15;
  v130 = sub_213F4D290();
  v16 = *(v130 - 8);
  v17 = MEMORY[0x28223BE20](v130);
  v19 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v126 - v20;
  v22 = sub_213F4EA00();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD08, &qword_213F61F90);
  v137 = *(v26 - 1);
  v138 = v26;
  MEMORY[0x28223BE20](v26);
  v129 = &v126 - v27;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD10, &qword_213F61F98);
  MEMORY[0x28223BE20](v131);
  v128 = &v126 - v28;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD18, &qword_213F61FA0);
  MEMORY[0x28223BE20](v135);
  v133 = &v126 - v29;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD20, &qword_213F61FA8);
  MEMORY[0x28223BE20](v134);
  v147 = &v126 - v30;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD28, &qword_213F61FB0);
  v31 = MEMORY[0x28223BE20](v139);
  v149 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v136 = &v126 - v34;
  MEMORY[0x28223BE20](v33);
  v148 = &v126 - v35;
  v140 = type metadata accessor for OfflineTrailingAccessory(0);
  v155 = *(v140 + 28);
  v36 = a1;
  sub_213F4E9F0();
  (*(v23 + 104))(v25, *MEMORY[0x277CE0FE0], v22);
  v37 = 0.0;
  v38 = sub_213F4EA40();

  (*(v23 + 8))(v25, v22);
  v39 = v36;
  sub_213DBBD08(v21);
  sub_213F4D280();
  sub_213F4D270();
  v40 = *(v16 + 8);
  v41 = v19;
  v42 = v130;
  v40(v41, v130);
  v40(v21, v42);
  v43 = sub_213F4E0F0();
  v44 = v132;
  (*(*(v43 - 8) + 56))(v132, 1, 1, v43);
  v45 = sub_213F4E190();
  sub_213DE36FC(v44, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  v170 = v38;
  v171 = KeyPath;
  *&v172 = v45;
  sub_213F4E180();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F77C0, &qword_213F519B0);
  sub_213DE2CCC();
  v47 = v129;
  sub_213F4E370();

  v48 = v128;
  v49 = &v128[*(v131 + 36)];
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
  v51 = *MEMORY[0x277CE1050];
  v52 = sub_213F4EA30();
  (*(*(v52 - 8) + 104))(v49 + v50, v51, v52);
  *v49 = swift_getKeyPath();
  (*(v137 + 32))(v48, v47, v138);
  v138 = objc_opt_self();
  v53 = [v138 tertiaryLabelColor];
  v54 = sub_213F4E870();
  v55 = v133;
  sub_213DE2B44(v48, v133, &qword_27C8FBD10, &qword_213F61F98);
  *&v55[*(v135 + 36)] = v54;
  v127 = v39;
  if (*(v39 + v155) == 1)
  {
    v56 = 0.0;
  }

  else
  {
    v56 = 1.0;
  }

  v57 = v55;
  v58 = v147;
  sub_213DE2B44(v57, v147, &qword_27C8FBD18, &qword_213F61FA0);
  *(v58 + *(v134 + 36)) = v56;
  v59 = v150;
  sub_213EED8C0(v150);
  LODWORD(v137) = *MEMORY[0x277CDF3D0];
  v60 = v157;
  v135 = *(*&v157 + 104);
  v61 = v151;
  v62 = v142;
  (v135)(v151);
  v63 = sub_213F4CE90();
  v64 = *(*&v60 + 8);
  *&v157 = *&v60 + 8;
  v64(v61, v62);
  v64(v59, v62);
  v65 = v156;
  v66 = *(v156 + 104);
  v133 = v66;
  v67 = *MEMORY[0x277CE13B0];
  LODWORD(v132) = *MEMORY[0x277CE13B0];
  v68 = *MEMORY[0x277CE13B8];
  LODWORD(v134) = *MEMORY[0x277CE13B8];
  if (v63)
  {
    v69 = v67;
  }

  else
  {
    v69 = v68;
  }

  v70 = v141;
  v71 = v152;
  (v66)(v141, v69, v152);
  v72 = *(v139 + 36);
  v73 = *(v65 + 32);
  v156 = v65 + 32;
  v74 = v136;
  v73(&v136[v72], v70, v71);
  sub_213DE2B44(v147, v74, &qword_27C8FBD20, &qword_213F61FA8);
  sub_213DE2B44(v74, v148, &qword_27C8FBD28, &qword_213F61FB0);
  sub_213F4CF60();
  v75 = v189;
  v76 = v191;
  v147 = v192;
  v77 = v193;
  v141 = sub_213F4EEE0();
  v139 = v78;
  v79 = [v138 tertiaryLabelColor];
  v138 = sub_213F4E870();
  v80 = v127;
  LODWORD(v74) = *(v127 + v155);
  v81 = v150;
  sub_213EED8C0(v150);
  if (v74 == 1)
  {
    v82 = 1.0;
  }

  else
  {
    v82 = 0.0;
  }

  v83 = v190;
  v84 = v151;
  (v135)(v151, v137, v62);
  v85 = v84;
  LOBYTE(v84) = sub_213F4CE90();
  v64(v85, v62);
  v64(v81, v62);
  if (v84)
  {
    v86 = v132;
  }

  else
  {
    v86 = v134;
  }

  v87 = v143;
  v88 = v152;
  (v133)(v143, v86, v152);
  v89 = v144;
  v73(&v144[*(v145 + 36)], v87, v88);
  *v89 = v75 * 0.5;
  *(v89 + 8) = v75;
  *(v89 + 16) = v83;
  *(v89 + 24) = v76;
  *(v89 + 32) = v147;
  *(v89 + 40) = v77;
  *(v89 + 48) = 256;
  v90 = v138;
  v91 = v139;
  *(v89 + 56) = v141;
  *(v89 + 64) = v91;
  *(v89 + 72) = v90;
  *(v89 + 80) = v82;
  v92 = v153;
  sub_213DE2B44(v89, v153, &qword_27C8FBD00, &qword_213F61F88);
  v93 = *(v140 + 24);
  v94 = *(v80 + v93);
  if (v94 < 0.0)
  {
    v95 = 0.0;
  }

  else
  {
    v95 = *(v80 + v93);
  }

  v157 = v95;
  v96 = v94;
  sub_213F4CF60();
  v97 = sub_213F4E8B0();
  sub_213F4F040();
  v99 = v98;
  v101 = v100;
  v102 = sub_213F4EF40();
  if (*(v80 + v155) == 1)
  {
    v37 = 1.0;
  }

  LODWORD(v156) = sub_213F4E050();
  sub_213F4CDA0();
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v155 = v109;
  v188 = 0;
  v111 = v148;
  v110 = v149;
  sub_213DE3164(v148, v149, &qword_27C8FBD28, &qword_213F61FB0);
  v112 = v154;
  sub_213DE3164(v92, v154, &qword_27C8FBD00, &qword_213F61F88);
  v113 = v110;
  v114 = v146;
  sub_213DE3164(v113, v146, &qword_27C8FBD28, &qword_213F61FB0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD30, &qword_213F61FB8);
  sub_213DE3164(v112, v114 + *(v115 + 48), &qword_27C8FBD00, &qword_213F61F88);
  v116 = (v114 + *(v115 + 64));
  *&v161 = 0;
  *(&v161 + 1) = v95;
  v162 = v158;
  v163 = v159;
  *&v164 = v160;
  *(&v164 + 1) = v97;
  *&v165 = 0xBFF921FB54442D18;
  *(&v165 + 1) = v99;
  *&v166 = v101;
  *(&v166 + 1) = v102;
  *&v167 = v96;
  *(&v167 + 1) = v37;
  v117 = v96;
  v118 = v156;
  LOBYTE(v168) = v156;
  *(&v168 + 1) = v104;
  *&v169[0] = v106;
  v119 = v155;
  *(&v169[0] + 1) = v108;
  *&v169[1] = v155;
  BYTE8(v169[1]) = 0;
  v120 = v164;
  v116[2] = v159;
  v116[3] = v120;
  v121 = v162;
  *v116 = v161;
  v116[1] = v121;
  v122 = v169[0];
  v116[7] = v168;
  v116[8] = v122;
  v123 = v167;
  v124 = v166;
  v116[4] = v165;
  v116[5] = v124;
  v116[6] = v123;
  *(v116 + 137) = *(v169 + 9);
  sub_213DE3164(&v161, &v170, &qword_27C8FBD38, &qword_213F61FC0);
  sub_213DE36FC(v153, &qword_27C8FBD00, &qword_213F61F88);
  sub_213DE36FC(v111, &qword_27C8FBD28, &qword_213F61FB0);
  v170 = 0;
  v171 = *&v157;
  v172 = v158;
  v173 = v159;
  v174 = v160;
  v175 = v97;
  v176 = 0xBFF921FB54442D18;
  v177 = v99;
  v178 = v101;
  v179 = v102;
  v180 = v117;
  v181 = v37;
  v182 = v118;
  v183 = v104;
  v184 = v106;
  v185 = v108;
  v186 = v119;
  v187 = 0;
  sub_213DE36FC(&v170, &qword_27C8FBD38, &qword_213F61FC0);
  sub_213DE36FC(v154, &qword_27C8FBD00, &qword_213F61F88);
  return sub_213DE36FC(v149, &qword_27C8FBD28, &qword_213F61FB0);
}

uint64_t sub_213EEEFB4()
{
  v1 = sub_213F4D7F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_213F4D290();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v24[-v10];
  sub_213DBBD08(&v24[-v10]);
  sub_213F4D280();
  v12 = sub_213F4D270();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  v14 = type metadata accessor for SelectedTrailingAccessory(0);
  v15 = *(v0 + *(v14 + 28));
  if ((v12 & 1) == 0)
  {
    v19 = objc_opt_self();
    if (v15)
    {
      v18 = [v19 systemBlueColor];
    }

    else
    {
      v18 = [v19 quaternaryLabelColor];
    }

    goto LABEL_12;
  }

  if (!*(v0 + *(v14 + 28)))
  {
    v25 = sub_213F4E8D0();
    sub_213ECDD7C();
    return sub_213F4E950();
  }

  v16 = v0 + *(v14 + 24);
  v17 = *v16;
  if (*(v16 + 8) != 1)
  {

    sub_213F4F520();
    v21 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    v22 = sub_213E053BC(v17, 0);
    (*(v2 + 8))(v4, v1, v22);
    if (v24[7] != 1)
    {
      goto LABEL_5;
    }

LABEL_11:
    v18 = [objc_opt_self() labelColor];
    goto LABEL_12;
  }

  if (v17)
  {
    goto LABEL_11;
  }

LABEL_5:
  v18 = [objc_opt_self() systemBlueColor];
LABEL_12:
  v23 = v18;
  return sub_213F4E870();
}

uint64_t sub_213EEF2C0@<X0>(uint64_t a1@<X8>)
{
  v182 = a1;
  v141 = sub_213F4CEA0();
  v140 = *(v141 - 8);
  v2 = MEMORY[0x28223BE20](v141);
  v139 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v138 = &v137 - v4;
  v164 = sub_213F4EF90();
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v161 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_213F4EA00();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBC0, &qword_213F61DE0);
  v7 = MEMORY[0x28223BE20](v181);
  v160 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v162 = &v137 - v9;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBC8, &qword_213F61DE8);
  MEMORY[0x28223BE20](v179);
  v180 = &v137 - v10;
  v11 = sub_213F4F0A0();
  v175 = *(v11 - 8);
  v176 = v11;
  MEMORY[0x28223BE20](v11);
  v172 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_213F4F080();
  v173 = *(v13 - 8);
  v174 = v13;
  MEMORY[0x28223BE20](v13);
  v171 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v15 - 8);
  v166 = &v137 - v16;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7798, &unk_213F61D50);
  v17 = MEMORY[0x28223BE20](v167);
  v146 = &v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v144 = &v137 - v19;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBD0, &qword_213F61DF0);
  v20 = MEMORY[0x28223BE20](v169);
  v154 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v149 = &v137 - v22;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBD8, &qword_213F61DF8);
  v23 = MEMORY[0x28223BE20](v168);
  v153 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v148 = &v137 - v25;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBE0, &qword_213F61E00);
  v26 = MEMORY[0x28223BE20](v170);
  v158 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v156 = &v137 - v28;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBE8, &qword_213F61E08);
  v29 = MEMORY[0x28223BE20](v178);
  v159 = &v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v155 = &v137 - v32;
  MEMORY[0x28223BE20](v31);
  v157 = &v137 - v33;
  v34 = sub_213F4D290();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v147 = &v137 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v145 = &v137 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v137 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v143 = &v137 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v142 = &v137 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v137 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v137 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = &v137 - v53;
  sub_213DBBD08(&v137 - v53);
  sub_213F4D280();
  v55 = sub_213F4D270();
  v56 = *(v35 + 8);
  v56(v52, v34);
  v57 = v34;
  v56(v54, v34);
  if ((v55 & 1) == 0)
  {
    type metadata accessor for SelectedTrailingAccessory(0);
  }

  v58 = sub_213F4E9F0();
  sub_213DBBD08(v54);
  sub_213F4D280();
  v59 = sub_213F4D270();
  v60 = v52;
  v61 = v57;
  v56(v60, v57);
  v56(v54, v57);
  v177 = v58;
  v183 = v1;
  v165 = v57;
  if (v59)
  {
    sub_213DBBD08(v49);
    sub_213F4D280();
    sub_213F4D270();
    v56(v54, v57);
    v56(v49, v57);
    sub_213F4E180();
    v62 = sub_213F4E0F0();
    v63 = v166;
    (*(*(v62 - 8) + 56))(v166, 1, 1, v62);
    v64 = sub_213F4E190();
    sub_213DE36FC(v63, &qword_27C8F7668, &qword_213F52190);
    KeyPath = swift_getKeyPath();
    v66 = v58;
    v67 = v144;
    v68 = &v144[*(v167 + 36)];
    v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
    v70 = *MEMORY[0x277CE1058];
    v71 = sub_213F4EA30();
    (*(*(v71 - 8) + 104))(v68 + v69, v70, v71);
    *v68 = swift_getKeyPath();
    *v67 = v66;
    v67[1] = KeyPath;
    v67[2] = v64;

    v72 = sub_213EEEFB4();
    v73 = v149;
    sub_213DE2B44(v67, v149, &qword_27C8F7798, &unk_213F61D50);
    *(v73 + *(v169 + 36)) = v72;
    v74 = v171;
    sub_213F4F070();
    v75 = v172;
    sub_213F4F090();
    v76 = v148;
    v77 = &v148[*(v168 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F28, &qword_213F61E10);
    sub_213EF7D6C(&qword_281182550, MEMORY[0x277CE1598], MEMORY[0x277CE1590]);
    v78 = v174;
    sub_213F4D550();
    (*(v175 + 8))(v75, v176);
    (*(v173 + 8))(v74, v78);
    *v77 = swift_getKeyPath();
    v79 = sub_213DE2B44(v73, v76, &qword_27C8FBBD0, &qword_213F61DF0);
    v80 = MEMORY[0x216052350](v79, 0.5, 0.7, 0.0);
    LOBYTE(v78) = *(v183 + *(type metadata accessor for SelectedTrailingAccessory(0) + 28));
    v81 = v156;
    sub_213DE2B44(v76, v156, &qword_27C8FBBD8, &qword_213F61DF8);
    v82 = v81 + *(v170 + 36);
    *v82 = v80;
    *(v82 + 8) = v78;
    v83 = v142;
    sub_213DBBD08(v142);
    sub_213F4D280();
    sub_213F4D270();
    v84 = v165;
    v56(v54, v165);
    v56(v83, v84);
    v85 = v143;
    sub_213DBBD08(v143);
    sub_213F4D280();
    sub_213F4D270();
    v56(v54, v84);
    v56(v85, v84);
    sub_213F4EEE0();
    sub_213F4D0C0();
    v86 = v155;
    sub_213DE2B44(v81, v155, &qword_27C8FBBE0, &qword_213F61E00);
    v87 = (v86 + *(v178 + 36));
    v88 = v185;
    *v87 = v184;
    v87[1] = v88;
    v87[2] = v186;
    v89 = &qword_27C8FBBE8;
    v90 = &qword_213F61E08;
    v91 = v157;
    sub_213DE2B44(v86, v157, &qword_27C8FBBE8, &qword_213F61E08);
    sub_213DE3164(v91, v180, &qword_27C8FBBE8, &qword_213F61E08);
    swift_storeEnumTagMultiPayload();
    sub_213EF9C8C();
    sub_213EF9F40();
    sub_213F4DBA0();

    v92 = v91;
  }

  else
  {
    v93 = v151;
    v94 = v150;
    v95 = v152;
    (*(v151 + 104))(v150, *MEMORY[0x277CE0FE0], v152);
    v157 = sub_213F4EA40();
    (*(v93 + 8))(v94, v95);
    sub_213DBBD08(v42);
    sub_213F4D280();
    sub_213F4D270();
    v56(v54, v61);
    v56(v42, v61);
    sub_213F4E180();
    v96 = sub_213F4E0F0();
    v97 = v166;
    (*(*(v96 - 8) + 56))(v166, 1, 1, v96);
    v98 = sub_213F4E190();
    sub_213DE36FC(v97, &qword_27C8F7668, &qword_213F52190);
    v99 = swift_getKeyPath();
    v100 = v146;
    v101 = &v146[*(v167 + 36)];
    v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
    v103 = *MEMORY[0x277CE1058];
    v104 = sub_213F4EA30();
    (*(*(v104 - 8) + 104))(v101 + v102, v103, v104);
    *v101 = swift_getKeyPath();
    *v100 = v157;
    v100[1] = v99;
    v100[2] = v98;
    v105 = sub_213EEEFB4();
    v106 = v154;
    sub_213DE2B44(v100, v154, &qword_27C8F7798, &unk_213F61D50);
    *(v106 + *(v169 + 36)) = v105;
    v107 = v171;
    sub_213F4F070();
    v108 = v172;
    sub_213F4F090();
    v109 = v153;
    v110 = &v153[*(v168 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F28, &qword_213F61E10);
    sub_213EF7D6C(&qword_281182550, MEMORY[0x277CE1598], MEMORY[0x277CE1590]);
    v111 = v174;
    sub_213F4D550();
    (*(v175 + 8))(v108, v176);
    (*(v173 + 8))(v107, v111);
    *v110 = swift_getKeyPath();
    v112 = sub_213DE2B44(v106, v109, &qword_27C8FBBD0, &qword_213F61DF0);
    v113 = MEMORY[0x216052350](v112, 0.5, 0.7, 0.0);
    v176 = type metadata accessor for SelectedTrailingAccessory(0);
    LODWORD(v107) = *(v1 + *(v176 + 28));
    v114 = v158;
    sub_213DE2B44(v109, v158, &qword_27C8FBBD8, &qword_213F61DF8);
    v115 = v114 + *(v170 + 36);
    *v115 = v113;
    *(v115 + 8) = v107;
    v116 = v145;
    sub_213DBBD08(v145);
    sub_213F4D280();
    sub_213F4D270();
    v117 = v165;
    v56(v54, v165);
    v56(v116, v117);
    v118 = v147;
    sub_213DBBD08(v147);
    sub_213F4D280();
    sub_213F4D270();
    v56(v54, v117);
    v56(v118, v117);
    sub_213F4EEE0();
    sub_213F4D0C0();
    v119 = v159;
    sub_213DE2B44(v114, v159, &qword_27C8FBBE0, &qword_213F61E00);
    v120 = (v119 + *(v178 + 36));
    v121 = v185;
    *v120 = v184;
    v120[1] = v121;
    v120[2] = v186;
    if (v107 == 1)
    {
      v122 = *MEMORY[0x277CE13D8];
      v123 = v163;
      v124 = *(v163 + 104);
    }

    else
    {
      v125 = v138;
      sub_213EA8894(v138);
      v126 = v140;
      v127 = v139;
      v128 = v141;
      (*(v140 + 104))(v139, *MEMORY[0x277CDF3D0], v141);
      v129 = sub_213F4CE90();
      v130 = *(v126 + 8);
      v130(v127, v128);
      v130(v125, v128);
      v123 = v163;
      v124 = *(v163 + 104);
      if (v129)
      {
        v131 = MEMORY[0x277CE13B0];
      }

      else
      {
        v131 = MEMORY[0x277CE13B8];
      }

      v122 = *v131;
    }

    v132 = v161;
    v133 = v164;
    v124(v161, v122, v164);
    v134 = v160;
    (*(v123 + 32))(&v160[*(v181 + 36)], v132, v133);
    sub_213DE2B44(v119, v134, &qword_27C8FBBE8, &qword_213F61E08);
    v89 = &qword_27C8FBBC0;
    v90 = &qword_213F61DE0;
    v135 = v162;
    sub_213DE2B44(v134, v162, &qword_27C8FBBC0, &qword_213F61DE0);
    sub_213DE3164(v135, v180, &qword_27C8FBBC0, &qword_213F61DE0);
    swift_storeEnumTagMultiPayload();
    sub_213EF9C8C();
    sub_213EF9F40();
    sub_213F4DBA0();

    v92 = v135;
  }

  return sub_213DE36FC(v92, v89, v90);
}

uint64_t sub_213EF0800@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v24 = sub_213F4DBC0();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_213F4DCA0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB88, &qword_213F61D30);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB90, &qword_213F61D38);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = *(v1 + 48);
  v29[2] = *(v1 + 32);
  v29[3] = v14;
  v30 = *(v1 + 64);
  v15 = *(v1 + 16);
  v29[0] = *v1;
  v29[1] = v15;
  v16 = swift_allocObject();
  v17 = *(v1 + 48);
  *(v16 + 48) = *(v1 + 32);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(v1 + 64);
  v18 = *(v1 + 16);
  *(v16 + 16) = *v1;
  *(v16 + 32) = v18;
  v27 = v29;
  sub_213EF98E0(v29, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB98, &qword_213F61D40);
  sub_213EF9918();
  sub_213F4EB00();
  sub_213F4DC90();
  sub_213DE3AE4(&qword_281182748, &qword_27C8FBB88, &qword_213F61D30, MEMORY[0x277CDF028]);
  sub_213EF7D6C(&qword_281182998, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  sub_213F4E3B0();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBB0, &qword_213F61D68) + 36)] = 0;
  v19 = &v13[*(v11 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBB8, &qword_213F61D70);
  sub_213F4D510();
  *v19 = 0;
  v20 = v23;
  sub_213F4D570();
  sub_213EF9A5C();
  sub_213EF7D6C(&qword_2811829B0, MEMORY[0x277CDDFF8], MEMORY[0x277CDDFF0]);
  v21 = v24;
  sub_213F4E410();
  (*(v25 + 8))(v20, v21);
  return sub_213DE36FC(v13, &qword_27C8FBB90, &qword_213F61D38);
}

uint64_t sub_213EF0C94(__int128 *a1)
{
  v2 = sub_213F4D7F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16 = *(a1 + 16);
  v15 = *a1;
  v6 = v15;
  if (v16 == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v7 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213DE36FC(&v15, &qword_27C8FB358, &qword_213F5F4A8);
    (*(v3 + 8))(v5, v2);
    v6 = v13;
  }

  v13 = a1[3];
  v14 = *(a1 + 64);
  v11 = a1[3];
  v12 = *(a1 + 64);
  sub_213EC3260(&v13, v10);
  v6(&v11);

  return sub_213EB8F2C(v11, *(&v11 + 1), v12);
}

uint64_t sub_213EF0E5C@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v23 - v4;

  v6 = sub_213F4E9F0();
  sub_213F4E180();
  v7 = sub_213F4E0F0();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_213F4E190();
  sub_213DE36FC(v5, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7798, &unk_213F61D50) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
  v12 = *MEMORY[0x277CE1058];
  v13 = sub_213F4EA30();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  *a2 = v6;
  a2[1] = KeyPath;
  a2[2] = v8;
  sub_213F4EEE0();
  sub_213F4D0C0();
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBA8, &qword_213F61D48) + 36));
  v15 = v23[1];
  *v14 = v23[0];
  v14[1] = v15;
  v14[2] = v23[2];
  v16 = sub_213F4EEE0();
  v18 = v17;
  v19 = [objc_opt_self() quaternarySystemFillColor];
  v20 = sub_213F4E870();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB98, &qword_213F61D40);
  v22 = (a2 + *(result + 36));
  *v22 = v20;
  v22[1] = v16;
  v22[2] = v18;
  return result;
}

uint64_t sub_213EF10DC@<X0>(uint64_t a1@<X8>)
{
  sub_213F4F280();
  sub_213DBC9EC();
  v2 = sub_213F4E310();
  v4 = v3;
  v6 = v5;
  sub_213F4E8E0();
  v7 = sub_213F4E2B0();
  v9 = v8;
  v11 = v10;
  sub_213DBCA40(v2, v4, v6 & 1);

  sub_213F4E220();
  v12 = sub_213F4E2E0();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_213DBCA40(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_213EF121C@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_213F4DBC0();
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  MEMORY[0x28223BE20](v2);
  v51 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_213F4D290();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  v11 = type metadata accessor for ActionTrailingAccessory(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBF0, &qword_213F61E50);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBF8, &qword_213F61E58);
  MEMORY[0x28223BE20](v45);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBC00, &qword_213F61E60);
  v21 = *(v20 - 8);
  v49 = v20;
  v50 = v21;
  MEMORY[0x28223BE20](v20);
  v46 = &v45 - v22;
  sub_213EFA438(v1, &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionTrailingAccessory);
  v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v24 = swift_allocObject();
  sub_213EF8E7C(&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for ActionTrailingAccessory);
  v55 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBC08, &qword_213F61E68);
  sub_213EFA000();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_281182740, &qword_27C8FBBF0, &qword_213F61E50, MEMORY[0x277CDF028]);
  sub_213E4FC2C();
  sub_213F4E3C0();
  (*(v15 + 8))(v17, v14);
  v25 = v45;
  v26 = &v19[*(v45 + 36)];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93E8, &qword_213F61EA0);
  sub_213F4D510();
  sub_213DBBD08(v10);
  sub_213F4D280();
  sub_213F4D270();
  v28 = v48;
  v29 = *(v47 + 8);
  v29(v8, v48);
  v29(v10, v28);
  v30 = *(sub_213F4D470() + 20);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_213F4D950();
  (*(*(v32 - 8) + 104))(&v26[v30], v31, v32);
  __asm { FMOV            V0.2D, #14.0 }

  *v26 = _Q0;
  v26[*(v27 + 36)] = 0;
  v38 = v51;
  sub_213F4D570();
  v39 = sub_213EFA2E0();
  v40 = sub_213EF7D6C(&qword_2811829B0, MEMORY[0x277CDDFF8], MEMORY[0x277CDDFF0]);
  v41 = v46;
  v42 = v52;
  sub_213F4E410();
  (*(v53 + 8))(v38, v42);
  sub_213DE36FC(v19, &qword_27C8FBBF8, &qword_213F61E58);
  strcpy(v56, "ActionButton");
  BYTE5(v56[1]) = 0;
  HIWORD(v56[1]) = -5120;
  MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);
  v56[0] = v25;
  v56[1] = v42;
  v56[2] = v39;
  v56[3] = v40;
  swift_getOpaqueTypeConformance2();
  v43 = v49;
  sub_213F4E6D0();

  return (*(v50 + 8))(v41, v43);
}

uint64_t sub_213EF18A8(uint64_t a1)
{
  v2 = sub_213F4D7F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionTrailingAccessory(0);
  v7 = a1 + *(v6 + 24);
  v9 = *v7;
  v8 = *(v7 + 8);
  if (*(v7 + 16) == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v10 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    v11 = sub_213EB8B1C(v9, v8, 0);
    (*(v3 + 8))(v5, v2, v11);
    v9 = v17;
  }

  v12 = a1 + *(v6 + 36);
  v13 = *(v12 + 8);
  v14 = *(v12 + 16);
  v17 = *v12;
  v18 = v13;
  v19 = v14;
  sub_213EC4B2C(v17, v13, v14);
  v9(&v17);

  return sub_213EB8F2C(v17, v18, v19);
}

double sub_213EF1A64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v4 = sub_213F4D290();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - v8;
  v44 = sub_213F4CEA0();
  v10 = *(v44 - 8);
  v11 = MEMORY[0x28223BE20](v44);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v48 = sub_213F4DA40();
  v65 = 0;
  sub_213EF1F3C(a1, &v54);
  v72 = v60;
  v73 = v61;
  v74 = v62;
  v68 = v56;
  v69 = v57;
  v70 = v58;
  v71 = v59;
  v66 = v54;
  v67 = v55;
  v76[6] = v60;
  v76[7] = v61;
  v76[8] = v62;
  v76[2] = v56;
  v76[3] = v57;
  v76[4] = v58;
  v76[5] = v59;
  v75 = v63;
  v77 = v63;
  v76[0] = v54;
  v76[1] = v55;
  sub_213DE3164(&v66, &v53, &qword_27C8FBC78, &qword_213F61EA8);
  sub_213DE36FC(v76, &qword_27C8FBC78, &qword_213F61EA8);
  *&v64[103] = v72;
  *&v64[119] = v73;
  *&v64[135] = v74;
  *&v64[39] = v68;
  *&v64[55] = v69;
  *&v64[71] = v70;
  *&v64[87] = v71;
  *&v64[7] = v66;
  v64[151] = v75;
  *&v64[23] = v67;
  v45 = v65;
  v43 = type metadata accessor for ActionTrailingAccessory(0);
  v16 = v15;
  sub_213EA8894(v15);
  v17 = v13;
  v18 = v44;
  (*(v10 + 104))(v13, *MEMORY[0x277CDF3C0], v44);
  LOBYTE(v13) = sub_213F4CE90();
  v19 = *(v10 + 8);
  v19(v17, v18);
  v19(v16, v18);
  if (v13)
  {
    v20 = sub_213F4E8F0();
  }

  else
  {
    v20 = sub_213F4E8B0();
  }

  v21 = v20;
  v22 = v49;
  sub_213DBBD08(v9);
  sub_213F4D280();
  sub_213F4D270();
  v23 = v47;
  v24 = *(v46 + 8);
  v24(v7, v47);
  v24(v9, v23);
  sub_213DBBD08(v9);
  sub_213F4D280();
  sub_213F4D270();
  v24(v7, v23);
  v24(v9, v23);
  sub_213F4EEE0();
  v25 = sub_213F4D0C0();
  v26 = MEMORY[0x216052350](v25, 0.5, 0.7, 0.0);
  v27 = (v22 + *(v43 + 32));
  v29 = *v27;
  v28 = v27[1];

  v30 = sub_213F4EEE0();
  v32 = v31;
  v33 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBC08, &qword_213F61E68) + 36);
  sub_213EF2440(v22, v33);
  v34 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBC70, &qword_213F61E98) + 36));
  *v34 = v30;
  v34[1] = v32;
  v35 = *v64;
  *(a2 + 33) = *&v64[16];
  *(a2 + 17) = v35;
  v36 = *&v64[64];
  *(a2 + 97) = *&v64[80];
  *(a2 + 81) = v36;
  v37 = *&v64[32];
  *(a2 + 65) = *&v64[48];
  *(a2 + 49) = v37;
  v38 = *&v64[112];
  *(a2 + 145) = *&v64[128];
  v39 = *&v64[96];
  *(a2 + 129) = v38;
  *(a2 + 113) = v39;
  v40 = v51;
  *(a2 + 184) = v50;
  *a2 = v48;
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = v45;
  *(a2 + 161) = *&v64[144];
  *(a2 + 176) = v21;
  *(a2 + 200) = v40;
  result = *&v52;
  *(a2 + 216) = v52;
  *(a2 + 232) = v26;
  *(a2 + 240) = v29;
  *(a2 + 248) = v28;
  return result;
}

void sub_213EF1F3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4D290();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for ActionTrailingAccessory(0);

  v55 = sub_213F4EA10();
  v13 = *(v12 + 32);
  v50 = a1;
  v14 = (a1 + v13);
  v15 = *v14;
  v16 = v14[1];
  sub_213F4E160();
  v17 = sub_213F4E0F0();
  v18 = *(*(v17 - 8) + 56);
  v18(v11, 1, 1, v17);
  v54 = sub_213F4E190();
  sub_213DE36FC(v11, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  if (v16)
  {
    *&v66 = v15;
    *(&v66 + 1) = v16;
    sub_213DBC9EC();

    v19 = sub_213F4E310();
    v47 = v20;
    v48 = v19;
    v22 = v21;
    v46 = v23;
    v45 = swift_getKeyPath();
    sub_213F4E110();
    v18(v11, 1, 1, v17);
    v44 = sub_213F4E190();
    sub_213DE36FC(v11, &qword_27C8F7668, &qword_213F52190);
    v24 = swift_getKeyPath();
    v25 = v22 & 1;
    LOBYTE(v66) = v22 & 1;
    LOBYTE(v59) = 0;
    sub_213F4F040();
    sub_213F4D0F0();
    sub_213F4D100();
    v26 = sub_213F4D110();

    v27 = sub_213F4E040();
    sub_213DBBD08(v8);
    v28 = v49;
    sub_213F4D280();
    sub_213F4D270();
    v29 = *(v51 + 8);
    v30 = v28;
    v31 = v52;
    v29(v30, v52);
    v29(v8, v31);
    sub_213F4CDA0();
    LOBYTE(v66) = 0;
    *&v59 = v48;
    *(&v59 + 1) = v47;
    LOBYTE(v60) = v25;
    *(&v60 + 1) = v46;
    *&v61 = v45;
    *(&v61 + 1) = 1;
    LOBYTE(v62) = 0;
    *(&v62 + 1) = v24;
    *&v63 = v44;
    *(&v63 + 1) = v26;
    LOBYTE(v64) = v27;
    *(&v64 + 1) = v32;
    *&v65[0] = v33;
    *(&v65[0] + 1) = v34;
    *&v65[1] = v35;
    BYTE8(v65[1]) = 0;
    nullsub_1();
    v70 = v63;
    v71 = v64;
    v72[0] = v65[0];
    *(v72 + 9) = *(v65 + 9);
    v66 = v59;
    v67 = v60;
    v68 = v61;
    v69 = v62;
  }

  else
  {
    sub_213EFA41C(&v66);
  }

  v63 = v70;
  v64 = v71;
  v65[0] = v72[0];
  *(v65 + 9) = *(v72 + 9);
  v59 = v66;
  v60 = v67;
  v36 = v68;
  v61 = v68;
  v62 = v69;
  v37 = v70;
  v57[2] = v68;
  v57[3] = v69;
  v39 = v66;
  v38 = v67;
  v57[0] = v66;
  v57[1] = v67;
  *(v58 + 9) = *(v72 + 9);
  v58[0] = v72[0];
  v40 = v72[0];
  v41 = v71;
  v57[4] = v70;
  v57[5] = v71;
  *(a2 + 72) = v69;
  *(a2 + 56) = v36;
  v42 = v54;
  v43 = KeyPath;
  *a2 = v55;
  *(a2 + 8) = v43;
  *(a2 + 16) = v42;
  *(a2 + 40) = v38;
  *(a2 + 24) = v39;
  *(a2 + 129) = *(v72 + 9);
  *(a2 + 120) = v40;
  *(a2 + 104) = v41;
  *(a2 + 88) = v37;

  sub_213DE3164(v57, &v56, &qword_27C8FBC90, &qword_213F61EC8);
  sub_213DE36FC(&v59, &qword_27C8FBC90, &qword_213F61EC8);
}

double sub_213EF2440@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v70 = sub_213F4EF90();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v66 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_213F4CEA0();
  v58 = *(v56 - 8);
  v4 = MEMORY[0x28223BE20](v56);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v55 - v7;
  v9 = sub_213F4D290();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v55 - v14;
  v16 = sub_213F4D470();
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D90, &qword_213F61EB0);
  MEMORY[0x28223BE20](v59);
  v62 = &v55 - v20;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBC80, &qword_213F61EB8);
  MEMORY[0x28223BE20](v60);
  v64 = &v55 - v21;
  sub_213DBBD08(v15);
  sub_213F4D280();
  sub_213F4D270();
  v22 = *(v10 + 8);
  v65 = v13;
  v22(v13, v9);
  v61 = v15;
  v69 = v9;
  v67 = v10 + 8;
  v63 = v22;
  v22(v15, v9);
  v23 = *(v17 + 28);
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_213F4D950();
  (*(*(v25 - 8) + 104))(&v19[v23], v24, v25);
  __asm { FMOV            V0.2D, #14.0 }

  v57 = v19;
  *v19 = _Q0;
  v72 = *(type metadata accessor for ActionTrailingAccessory(0) + 20);
  v73 = a1;
  sub_213EA8894(v8);
  v31 = v58;
  v32 = v56;
  v33 = *(v58 + 104);
  v33(v6, *MEMORY[0x277CDF3C0], v56);
  LOBYTE(v24) = sub_213F4CE90();
  v34 = *(v31 + 8);
  v35 = v6;
  v34(v6, v32);
  v36 = v8;
  v37 = v8;
  v38 = v32;
  v34(v37, v32);
  if (v24)
  {
    sub_213F4E8F0();
  }

  else
  {
    sub_213F4E8B0();
  }

  sub_213EA8894(v36);
  LODWORD(v58) = *MEMORY[0x277CDF3D0];
  v39 = v33;
  (v33)(v35);
  sub_213F4CE90();
  v34(v35, v38);
  v34(v36, v38);
  v40 = sub_213F4E900();

  v41 = v62;
  sub_213EF8E7C(v57, v62, MEMORY[0x277CDFC08]);
  *(v41 + *(v59 + 36)) = v40;
  sub_213EA8894(v36);
  v39(v35, v58, v38);
  LOBYTE(v40) = sub_213F4CE90();
  v34(v35, v38);
  v34(v36, v38);
  v42 = v68;
  v43 = MEMORY[0x277CE13B0];
  if ((v40 & 1) == 0)
  {
    v43 = MEMORY[0x277CE13B8];
  }

  v44 = v66;
  v45 = v70;
  (*(v68 + 104))(v66, *v43, v70);
  v46 = v64;
  (*(v42 + 32))(&v64[*(v60 + 36)], v44, v45);
  sub_213DE2B44(v41, v46, &qword_27C8F7D90, &qword_213F61EB0);
  v47 = v61;
  sub_213DBBD08(v61);
  v48 = v65;
  sub_213F4D280();
  sub_213F4D270();
  v49 = v69;
  v50 = v63;
  v63(v48, v69);
  v50(v47, v49);
  sub_213DBBD08(v47);
  sub_213F4D280();
  sub_213F4D270();
  v50(v48, v49);
  v50(v47, v49);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v51 = v71;
  sub_213DE2B44(v46, v71, &qword_27C8FBC80, &qword_213F61EB8);
  v52 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBC88, &qword_213F61EC0) + 36));
  v53 = v75;
  *v52 = v74;
  v52[1] = v53;
  result = *&v76;
  v52[2] = v76;
  return result;
}

uint64_t sub_213EF2B84@<X0>(uint64_t a1@<X8>)
{
  v717 = a1;
  v641 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA20, &qword_213F616B0);
  MEMORY[0x28223BE20](v641);
  v643 = (&v607 - v2);
  v673 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA28, &qword_213F616B8);
  MEMORY[0x28223BE20](v673);
  v645 = &v607 - v3;
  v642 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA30, &qword_213F616C0);
  MEMORY[0x28223BE20](v642);
  v611 = &v607 - v4;
  v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA38, &qword_213F616C8);
  MEMORY[0x28223BE20](v649);
  v610 = &v607 - v5;
  v670 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA40, &qword_213F616D0);
  MEMORY[0x28223BE20](v670);
  v672 = &v607 - v6;
  v646 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA48, &qword_213F616D8);
  MEMORY[0x28223BE20](v646);
  v647 = &v607 - v7;
  v671 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA50, &qword_213F616E0);
  MEMORY[0x28223BE20](v671);
  v648 = &v607 - v8;
  v697 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA58, &qword_213F616E8);
  MEMORY[0x28223BE20](v697);
  v674 = &v607 - v9;
  v661 = sub_213F4D390();
  v693 = *(v661 - 8);
  MEMORY[0x28223BE20](v661);
  v669 = &v607 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v692 = type metadata accessor for SelectedTrailingAccessory(0);
  MEMORY[0x28223BE20](v692);
  v691 = (&v607 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA60, &qword_213F616F0);
  MEMORY[0x28223BE20](v636);
  v667 = &v607 - v12;
  v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA68, &qword_213F616F8);
  MEMORY[0x28223BE20](v638);
  v668 = &v607 - v13;
  v644 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA70, &qword_213F61700);
  v14 = MEMORY[0x28223BE20](v644);
  v639 = &v607 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v640 = &v607 - v16;
  v694 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA78, &qword_213F61708);
  MEMORY[0x28223BE20](v694);
  v696 = &v607 - v17;
  v650 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA80, &qword_213F61710);
  MEMORY[0x28223BE20](v650);
  v651 = &v607 - v18;
  v695 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA88, &qword_213F61718);
  MEMORY[0x28223BE20](v695);
  v652 = &v607 - v19;
  v716 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA90, &qword_213F61720);
  MEMORY[0x28223BE20](v716);
  v698 = &v607 - v20;
  v677 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA98, &qword_213F61728);
  MEMORY[0x28223BE20](v677);
  v679 = &v607 - v21;
  v699 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAA0, &qword_213F61730);
  MEMORY[0x28223BE20](v699);
  v680 = &v607 - v22;
  v675 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAA8, &qword_213F61738);
  MEMORY[0x28223BE20](v675);
  v676 = (&v607 - v23);
  v678 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAB0, &qword_213F61740);
  MEMORY[0x28223BE20](v678);
  v681 = &v607 - v24;
  v656 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAB8, &qword_213F61748);
  MEMORY[0x28223BE20](v656);
  v690 = (&v607 - v25);
  v682 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAC0, &qword_213F61750);
  MEMORY[0x28223BE20](v682);
  v684 = &v607 - v26;
  v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAC8, &qword_213F61758);
  MEMORY[0x28223BE20](v653);
  v654 = &v607 - v27;
  v683 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAD0, &qword_213F61760);
  MEMORY[0x28223BE20](v683);
  v655 = &v607 - v28;
  v703 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAD8, &qword_213F61768);
  MEMORY[0x28223BE20](v703);
  v685 = &v607 - v29;
  v628 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAE0, &qword_213F61770);
  MEMORY[0x28223BE20](v628);
  v629 = &v607 - v30;
  v666 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAE8, &qword_213F61778);
  MEMORY[0x28223BE20](v666);
  v630 = &v607 - v31;
  v689 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAF0, &qword_213F61780);
  MEMORY[0x28223BE20](v689);
  v688 = &v607 - v32;
  v634 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAF8, &qword_213F61788);
  MEMORY[0x28223BE20](v634);
  v633 = &v607 - v33;
  v660 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB00, &qword_213F61790);
  MEMORY[0x28223BE20](v660);
  v635 = &v607 - v34;
  v713 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB08, &qword_213F61798);
  MEMORY[0x28223BE20](v713);
  v715 = &v607 - v35;
  v700 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB10, &qword_213F617A0);
  MEMORY[0x28223BE20](v700);
  v702 = &v607 - v36;
  v662 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB18, &qword_213F617A8);
  MEMORY[0x28223BE20](v662);
  v664 = &v607 - v37;
  v657 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB20, &qword_213F617B0);
  MEMORY[0x28223BE20](v657);
  v658 = &v607 - v38;
  v663 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB28, &qword_213F617B8);
  MEMORY[0x28223BE20](v663);
  v659 = &v607 - v39;
  v701 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB30, &qword_213F617C0);
  MEMORY[0x28223BE20](v701);
  v665 = &v607 - v40;
  v714 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB38, &qword_213F617C8);
  MEMORY[0x28223BE20](v714);
  v704 = &v607 - v41;
  v42 = sub_213F4CB60();
  MEMORY[0x28223BE20](v42 - 8);
  v705 = &v607 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v707 = sub_213F4F210();
  v706 = *(v707 - 8);
  v44 = MEMORY[0x28223BE20](v707);
  v708 = &v607 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v709 = &v607 - v46;
  v710 = sub_213F4D290();
  v711 = *(v710 - 8);
  v47 = MEMORY[0x28223BE20](v710);
  v49 = &v607 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v607 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v686 = &v607 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v614 = &v607 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v619 = &v607 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v623 = &v607 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v63 = &v607 - v62;
  v64 = MEMORY[0x28223BE20](v61);
  v712 = &v607 - v65;
  MEMORY[0x28223BE20](v64);
  v67 = &v607 - v66;
  v631 = type metadata accessor for ButtonTrailingAccessory(0);
  v68 = MEMORY[0x28223BE20](v631);
  v613 = (&v607 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = MEMORY[0x28223BE20](v68);
  v618 = (&v607 - v71);
  v72 = MEMORY[0x28223BE20](v70);
  v74 = &v607 - v73;
  MEMORY[0x28223BE20](v72);
  v76 = &v607 - v75;
  v632 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB40, &qword_213F617D0);
  v77 = MEMORY[0x28223BE20](v632);
  v612 = &v607 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x28223BE20](v77);
  v617 = &v607 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v622 = &v607 - v82;
  MEMORY[0x28223BE20](v81);
  v84 = &v607 - v83;
  v637 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB48, &qword_213F617D8);
  v85 = MEMORY[0x28223BE20](v637);
  v615 = &v607 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x28223BE20](v85);
  v620 = &v607 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v624 = &v607 - v90;
  MEMORY[0x28223BE20](v89);
  v626 = &v607 - v91;
  v687 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB50, &qword_213F617E0);
  v92 = MEMORY[0x28223BE20](v687);
  v616 = &v607 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = MEMORY[0x28223BE20](v92);
  v621 = &v607 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v625 = &v607 - v97;
  MEMORY[0x28223BE20](v96);
  v627 = &v607 - v98;
  v99 = *(type metadata accessor for TrailingAccessory(0) + 24);
  v718 = v1;
  v100 = v1 + v99 + *(type metadata accessor for TrailingAccessoryViewModel(0) + 20);
  v102 = *v100;
  v101 = *(v100 + 8);
  v104 = *(v100 + 16);
  v103 = *(v100 + 24);
  v105 = *(v100 + 32);
  v106 = *(v100 + 40);
  if (v106 <= 2)
  {
    v681 = v49;
    v152 = v689;
    v153 = v688;
    v154 = v690;
    v155 = v692;
    v156 = v691;
    if (!v106)
    {
      v609 = v104;
      v699 = v102;
      v183 = v101;
      if (v103)
      {
        v184 = v103;
        v185 = v105;
        v186 = swift_allocObject();
        *(v186 + 16) = v184;
        *(v186 + 24) = v185;
        v187 = sub_213EF8F94;
        v188 = v153;
      }

      else
      {
        v187 = 0;
        v186 = 0;
        v188 = v688;
        v185 = v105;
        v184 = 0;
      }

      v607 = v185;
      v608 = v184;
      *v188 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v314 = (v188 + v152[10]);
      v315 = (v188 + v152[11]);
      v316 = v699;
      *(v188 + v152[9]) = v699;
      v317 = v609;
      *v314 = v183;
      v314[1] = v317;
      *v315 = v187;
      v315[1] = v186;
      sub_213EF8EE4(v316, v183, v317, v184, v185, 0);
      sub_213DD74C4(v184, v185);
      v699 = v183;
      sub_213DD74C4(v183, v317);
      v318 = sub_213F4E0A0();
      sub_213DBBD08(v63);
      v319 = v188;
      v320 = v712;
      sub_213F4D280();
      sub_213F4D270();
      v321 = *(v711 + 1);
      v322 = v320;
      v323 = v710;
      v321(v322, v710);
      v321(v63, v323);
      sub_213F4CDA0();
      v325 = v324;
      v327 = v326;
      v329 = v328;
      v331 = v330;
      v332 = v633;
      sub_213DE3164(v319, v633, &qword_27C8FBAF0, &qword_213F61780);
      v333 = v332 + *(v634 + 36);
      *v333 = v318;
      *(v333 + 8) = v325;
      *(v333 + 16) = v327;
      *(v333 + 24) = v329;
      *(v333 + 32) = v331;
      *(v333 + 40) = 0;
      sub_213DE36FC(v319, &qword_27C8FBAF0, &qword_213F61780);
      v334 = v709;
      sub_213F4F200();
      v335 = v706;
      v336 = v707;
      (*(v706 + 16))(v708, v334, v707);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v337 = qword_281182518;
      sub_213F4CB50();
      v338 = sub_213F4F260();
      v340 = v339;
      (*(v335 + 8))(v334, v336);
      *&v726 = v338;
      *(&v726 + 1) = v340;
      sub_213EF8A68();
      sub_213DBC9EC();
      v159 = v635;
      sub_213F4E5C0();

      sub_213DE36FC(v332, &qword_27C8FBAF8, &qword_213F61788);
      v145 = &qword_27C8FBB00;
      v146 = &qword_213F61790;
      sub_213DE3164(v159, v658, &qword_27C8FBB00, &qword_213F61790);
      swift_storeEnumTagMultiPayload();
      sub_213EF8120(&qword_281182F10, &qword_27C8FBB50, &qword_213F617E0, sub_213EF88F4);
      sub_213EF8120(&qword_2811830F0, &qword_27C8FBB00, &qword_213F61790, sub_213EF8A68);
      v341 = v659;
      sub_213F4DBA0();
      sub_213DE3164(v341, v664, &qword_27C8FBB28, &qword_213F617B8);
      swift_storeEnumTagMultiPayload();
      sub_213EF8810();
      sub_213EF8B20();
      v342 = v665;
      sub_213F4DBA0();
      sub_213DE36FC(v341, &qword_27C8FBB28, &qword_213F617B8);
      sub_213DE3164(v342, v702, &qword_27C8FBB30, &qword_213F617C0);
      swift_storeEnumTagMultiPayload();
      sub_213EF8784();
      sub_213EF8BD0();
      v244 = v704;
      sub_213F4DBA0();
      sub_213DE36FC(v342, &qword_27C8FBB30, &qword_213F617C0);
      v245 = &qword_27C8FBB38;
      v246 = &qword_213F617C8;
      sub_213DE3164(v244, v715, &qword_27C8FBB38, &qword_213F617C8);
      swift_storeEnumTagMultiPayload();
      sub_213EF86F8();
      sub_213EF8DF0();
      sub_213F4DBA0();
      sub_213DD7558(v699, v609);
      sub_213DD7558(v608, v607);
      goto LABEL_50;
    }

    v157 = v102;
    if (v106 == 1)
    {
      v158 = v101;
      v159 = v690;
      *v154 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v160 = type metadata accessor for OfflineTrailingAccessory(0);
      v161 = v160[5];
      *(v159 + v161) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
      swift_storeEnumTagMultiPayload();
      *(v159 + v160[6]) = v157;
      *(v159 + v160[7]) = v158;
      LOBYTE(v160) = sub_213F4E0A0();
      sub_213F4CDA0();
      v162 = v159 + *(v656 + 36);
      *v162 = v160;
      *(v162 + 8) = v163;
      *(v162 + 16) = v164;
      *(v162 + 24) = v165;
      *(v162 + 32) = v166;
      *(v162 + 40) = 0;
      v145 = &qword_27C8FBAB8;
      v146 = &qword_213F61748;
      sub_213DE3164(v159, v654, &qword_27C8FBAB8, &qword_213F61748);
      swift_storeEnumTagMultiPayload();
      sub_213EF8120(&qword_281182F10, &qword_27C8FBB50, &qword_213F617E0, sub_213EF88F4);
      sub_213EF8D14();
      v167 = v655;
LABEL_11:
      sub_213F4DBA0();
      sub_213DE3164(v167, v684, &qword_27C8FBAD0, &qword_213F61760);
      swift_storeEnumTagMultiPayload();
      sub_213EF8C5C();
      sub_213EF8454();
      v168 = v685;
      sub_213F4DBA0();
      sub_213DE36FC(v167, &qword_27C8FBAD0, &qword_213F61760);
      v169 = &qword_27C8FBAD8;
      v170 = &qword_213F61768;
      sub_213DE3164(v168, v702, &qword_27C8FBAD8, &qword_213F61768);
LABEL_48:
      swift_storeEnumTagMultiPayload();
      sub_213EF8784();
      sub_213EF8BD0();
      v244 = v704;
      sub_213F4DBA0();
      sub_213DE36FC(v168, v169, v170);
      v245 = &qword_27C8FBB38;
      v246 = &qword_213F617C8;
      sub_213DE3164(v244, v715, &qword_27C8FBB38, &qword_213F617C8);
      goto LABEL_49;
    }

    *v156 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v189 = v155;
    v190 = *(v155 + 20);
    *(v156 + v190) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v191 = v156 + *(v189 + 24);
    *v191 = swift_getKeyPath();
    v191[8] = 0;
    *(v156 + *(v189 + 28)) = v157 & 1;
    LOBYTE(v189) = sub_213F4E0A0();
    sub_213DBBD08(v52);
    v192 = v712;
    sub_213F4D280();
    sub_213F4D270();
    v193 = *(v711 + 1);
    v194 = v192;
    v195 = v710;
    v193(v194, v710);
    v711 = v193;
    v193(v52, v195);
    sub_213F4CDA0();
    v197 = v196;
    v199 = v198;
    v201 = v200;
    v203 = v202;
    v204 = v667;
    sub_213EF8E7C(v156, v667, type metadata accessor for SelectedTrailingAccessory);
    v205 = v204 + *(v636 + 36);
    *v205 = v189;
    *(v205 + 8) = v197;
    *(v205 + 16) = v199;
    *(v205 + 24) = v201;
    *(v205 + 32) = v203;
    *(v205 + 40) = 0;
    v206 = sub_213F4E060();
    v207 = v669;
    sub_213EA886C(v669);
    LOBYTE(v204) = sub_213F4D370();
    v208 = *(v693 + 8);
    v209 = v661;
    v693 += 8;
    v208(v207, v661);
    if (v204)
    {
      v210 = v681;
      sub_213DBBD08(v681);
      v211 = v712;
      sub_213F4D280();
      sub_213F4D270();
      v212 = v211;
      v209 = v661;
      v213 = v711;
      v711(v212, v195);
      v213(v210, v195);
    }

    sub_213F4CDA0();
    v215 = v214;
    v217 = v216;
    v219 = v218;
    v221 = v220;
    v222 = v668;
    sub_213DE2B44(v667, v668, &qword_27C8FBA60, &qword_213F616F0);
    v223 = v222 + *(v638 + 36);
    *v223 = v206;
    *(v223 + 8) = v215;
    *(v223 + 16) = v217;
    *(v223 + 24) = v219;
    *(v223 + 32) = v221;
    *(v223 + 40) = 0;
    v224 = sub_213F4E070();
    v225 = v669;
    sub_213EA886C(v669);
    LOBYTE(v222) = sub_213F4D370();
    v208(v225, v209);
    if (v222)
    {
      v226 = v712;
      sub_213DBBD08(v712);
      v227 = v686;
      sub_213F4D280();
      sub_213F4D270();
      v228 = v227;
      v229 = v711;
      v711(v228, v195);
      v229(v226, v195);
    }

    sub_213F4CDA0();
    v231 = v230;
    v233 = v232;
    v235 = v234;
    v237 = v236;
    v238 = v639;
    sub_213DE2B44(v668, v639, &qword_27C8FBA68, &qword_213F616F8);
    v239 = v238 + *(v644 + 36);
    *v239 = v224;
    *(v239 + 8) = v231;
    *(v239 + 16) = v233;
    *(v239 + 24) = v235;
    *(v239 + 32) = v237;
    *(v239 + 40) = 0;
    v145 = &qword_27C8FBA70;
    v146 = &qword_213F61700;
    v159 = v640;
    sub_213DE2B44(v238, v640, &qword_27C8FBA70, &qword_213F61700);
    sub_213DE3164(v159, v647, &qword_27C8FBA70, &qword_213F61700);
    swift_storeEnumTagMultiPayload();
    sub_213EF7F4C();
    sub_213EF8120(&qword_281182EE8, &qword_27C8FBA38, &qword_213F616C8, sub_213EF81D4);
    v240 = v648;
    goto LABEL_21;
  }

  if (v106 <= 4)
  {
    v107 = v102;
    v108 = v101;
    v109 = v710;
    if (v106 == 3)
    {
      KeyPath = swift_getKeyPath();
      v111 = v676;
      *v676 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v112 = type metadata accessor for ActionTrailingAccessory(0);
      v113 = v112[5];
      *(v111 + v113) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
      swift_storeEnumTagMultiPayload();
      v114 = v111 + v112[6];
      *v114 = swift_getKeyPath();
      *(v114 + 8) = 0;
      *(v114 + 16) = 0;
      v115 = (v111 + v112[7]);
      *v115 = 0xD00000000000002DLL;
      v115[1] = 0x8000000213FA4B20;
      v116 = (v111 + v112[8]);
      *v116 = v107;
      v116[1] = v108;
      v117 = v111 + v112[9];
      *v117 = xmmword_213F613D0;
      *(v117 + 16) = 4;

      v118 = sub_213F4E0A0();
      v119 = v712;
      sub_213DBBD08(v712);
      v120 = v686;
      sub_213F4D280();
      sub_213F4D270();
      v121 = *(v711 + 1);
      v121(v120, v109);
      v121(v119, v109);
      sub_213F4CDA0();
      v123 = v122;
      v125 = v124;
      v127 = v126;
      v129 = v128;
      v130 = v111 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB78, &qword_213F61810) + 36);
      *v130 = v118;
      *(v130 + 8) = v123;
      *(v130 + 16) = v125;
      *(v130 + 24) = v127;
      *(v130 + 32) = v129;
      *(v130 + 40) = 0;
      v131 = sub_213F4E0B0();
      sub_213DBBD08(v119);
      sub_213F4D280();
      sub_213F4D270();
      v121(v120, v109);
      v121(v119, v109);
      sub_213F4CDA0();
      v132 = v111 + *(v675 + 36);
      *v132 = v131;
      *(v132 + 8) = v133;
      *(v132 + 16) = v134;
      *(v132 + 24) = v135;
      *(v132 + 32) = v136;
      *(v132 + 40) = 0;
      v137 = v709;
      sub_213F4F200();
      v138 = v706;
      v139 = v707;
      (*(v706 + 16))(v708, v137, v707);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v140 = qword_281182518;
      sub_213F4CB50();
      v141 = sub_213F4F260();
      v143 = v142;
      (*(v138 + 8))(v137, v139);
      *&v726 = v141;
      *(&v726 + 1) = v143;
      sub_213EF8504();
      sub_213DBC9EC();
      v144 = v681;
      sub_213F4E5C0();

      sub_213DE36FC(v111, &qword_27C8FBAA8, &qword_213F61738);
      v145 = &qword_27C8FBAB0;
      v146 = &qword_213F61740;
      sub_213DE3164(v144, v679, &qword_27C8FBAB0, &qword_213F61740);
LABEL_7:
      swift_storeEnumTagMultiPayload();
      sub_213EF8120(&qword_281182F18, &qword_27C8FBAB0, &qword_213F61740, sub_213EF8504);
      v147 = v680;
      sub_213F4DBA0();
      sub_213DE3164(v147, v684, &qword_27C8FBAA0, &qword_213F61730);
      swift_storeEnumTagMultiPayload();
      sub_213EF8C5C();
      sub_213EF8454();
      v148 = v685;
      sub_213F4DBA0();
      sub_213DE36FC(v147, &qword_27C8FBAA0, &qword_213F61730);
      sub_213DE3164(v148, v702, &qword_27C8FBAD8, &qword_213F61768);
      swift_storeEnumTagMultiPayload();
      sub_213EF8784();
      sub_213EF8BD0();
      v149 = v704;
      sub_213F4DBA0();
      sub_213DE36FC(v148, &qword_27C8FBAD8, &qword_213F61768);
      v150 = &qword_27C8FBB38;
      v151 = &qword_213F617C8;
      sub_213DE3164(v149, v715, &qword_27C8FBB38, &qword_213F617C8);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      sub_213EF86F8();
      sub_213EF8DF0();
      sub_213F4DBA0();
      sub_213DE36FC(v149, v150, v151);
      v182 = v144;
      return sub_213DE36FC(v182, v145, v146);
    }

    v247 = swift_getKeyPath();
    v248 = v676;
    *v676 = v247;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v249 = type metadata accessor for ActionTrailingAccessory(0);
    v250 = v249[5];
    *(v248 + v250) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v251 = v248 + v249[6];
    *v251 = swift_getKeyPath();
    *(v251 + 8) = 0;
    *(v251 + 16) = 0;
    v252 = (v248 + v249[7]);
    *v252 = 0xD000000000000010;
    v252[1] = 0x8000000213FA5CC0;
    v253 = (v248 + v249[8]);
    *v253 = v107;
    v253[1] = v108;
    v254 = v248 + v249[9];
    *v254 = xmmword_213F613C0;
    *(v254 + 16) = 4;

    v255 = sub_213F4E0A0();
    v256 = v712;
    sub_213DBBD08(v712);
    v257 = v686;
    sub_213F4D280();
    sub_213F4D270();
    v258 = *(v711 + 1);
    v258(v257, v109);
    v258(v256, v109);
    sub_213F4CDA0();
    v260 = v259;
    v262 = v261;
    v264 = v263;
    v266 = v265;
    v267 = v248 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB78, &qword_213F61810) + 36);
    *v267 = v255;
    *(v267 + 8) = v260;
    *(v267 + 16) = v262;
    *(v267 + 24) = v264;
    *(v267 + 32) = v266;
    *(v267 + 40) = 0;
    v268 = sub_213F4E0B0();
    sub_213DBBD08(v256);
    sub_213F4D280();
    sub_213F4D270();
    v258(v257, v109);
    v258(v256, v109);
    sub_213F4CDA0();
    v269 = v248 + *(v675 + 36);
    *v269 = v268;
    *(v269 + 8) = v270;
    *(v269 + 16) = v271;
    *(v269 + 24) = v272;
    *(v269 + 32) = v273;
    *(v269 + 40) = 0;
    v274 = v709;
    sub_213F4F200();
    v275 = v706;
    v276 = v707;
    (*(v706 + 16))(v708, v274, v707);
    if (qword_281182510 != -1)
    {
      swift_once();
    }

    v277 = qword_281182518;
    sub_213F4CB50();
    v278 = sub_213F4F260();
    v280 = v279;
    (*(v275 + 8))(v274, v276);
    *&v726 = v278;
    *(&v726 + 1) = v280;
    sub_213EF8504();
    sub_213DBC9EC();
    v144 = v681;
    sub_213F4E5C0();

    sub_213DE36FC(v248, &qword_27C8FBAA8, &qword_213F61738);
    v145 = &qword_27C8FBAB0;
    v146 = &qword_213F61740;
    sub_213DE3164(v144, v679, &qword_27C8FBAB0, &qword_213F61740);
LABEL_26:
    swift_storeEnumTagMultiPayload();
    sub_213EF8120(&qword_281182F18, &qword_27C8FBAB0, &qword_213F61740, sub_213EF8504);
    v281 = v680;
    sub_213F4DBA0();
    sub_213DE3164(v281, v651, &qword_27C8FBAA0, &qword_213F61730);
    swift_storeEnumTagMultiPayload();
    sub_213EF8454();
    v282 = v652;
    sub_213F4DBA0();
    sub_213DE36FC(v281, &qword_27C8FBAA0, &qword_213F61730);
    sub_213DE3164(v282, v696, &qword_27C8FBA88, &qword_213F61718);
    swift_storeEnumTagMultiPayload();
    sub_213EF83D0();
    sub_213EF866C();
    v149 = v698;
    sub_213F4DBA0();
    sub_213DE36FC(v282, &qword_27C8FBA88, &qword_213F61718);
    v150 = &qword_27C8FBA90;
    v151 = &qword_213F61720;
    sub_213DE3164(v149, v715, &qword_27C8FBA90, &qword_213F61720);
    goto LABEL_27;
  }

  if (v106 != 5)
  {
    v283 = v711;
    if (!(v104 | v101 | v102 | v103 | v105))
    {
      *v76 = swift_getKeyPath();
      *(v76 + 1) = 0;
      v76[16] = 0;
      v343 = v631;
      v344 = *(v631 + 20);
      *&v76[v344] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v345 = &v76[*(v343 + 24)];
      *v345 = 1937075312;
      *(v345 + 1) = 0xE400000000000000;
      v346 = &v76[*(v343 + 28)];
      *v346 = 0;
      *(v346 + 1) = 0;
      v346[16] = 4;
      LOBYTE(v344) = sub_213F4E0A0();
      sub_213DBBD08(v67);
      v347 = v712;
      sub_213F4D280();
      sub_213F4D270();
      v348 = *(v283 + 1);
      v349 = v347;
      v350 = v710;
      v348(v349, v710);
      v348(v67, v350);
      sub_213F4CDA0();
      v352 = v351;
      v354 = v353;
      v356 = v355;
      v358 = v357;
      sub_213EF8E7C(v76, v84, type metadata accessor for ButtonTrailingAccessory);
      v359 = &v84[*(v632 + 36)];
      *v359 = v344;
      *(v359 + 1) = v352;
      *(v359 + 2) = v354;
      *(v359 + 3) = v356;
      *(v359 + 4) = v358;
      v359[40] = 0;
      v360 = [objc_opt_self() systemBlueColor];
      v361 = sub_213F4E870();
      v362 = v626;
      sub_213DE2B44(v84, v626, &qword_27C8FBB40, &qword_213F617D0);
      *(v362 + *(v637 + 36)) = v361;
      v363 = v709;
      sub_213F4F200();
      v364 = v706;
      v365 = v707;
      (*(v706 + 16))(v708, v363, v707);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v366 = qword_281182518;
      sub_213F4CB50();
      v367 = sub_213F4F260();
      v369 = v368;
      (*(v364 + 8))(v363, v365);
      *&v726 = v367;
      *(&v726 + 1) = v369;
      sub_213EF88F4();
      sub_213DBC9EC();
      v159 = v627;
      sub_213F4E5C0();

      sub_213DE36FC(v362, &qword_27C8FBB48, &qword_213F617D8);
      v145 = &qword_27C8FBB50;
      v146 = &qword_213F617E0;
      sub_213DE3164(v159, v658, &qword_27C8FBB50, &qword_213F617E0);
      swift_storeEnumTagMultiPayload();
      sub_213EF8120(&qword_281182F10, &qword_27C8FBB50, &qword_213F617E0, sub_213EF88F4);
      sub_213EF8120(&qword_2811830F0, &qword_27C8FBB00, &qword_213F61790, sub_213EF8A68);
      v370 = v659;
      sub_213F4DBA0();
      v371 = &qword_27C8FBB28;
      v372 = &qword_213F617B8;
      sub_213DE3164(v370, v664, &qword_27C8FBB28, &qword_213F617B8);
      goto LABEL_47;
    }

    v284 = v104 | v101 | v103 | v105;
    if (v102 == 1 && !v284)
    {
      *v74 = swift_getKeyPath();
      *(v74 + 1) = 0;
      v74[16] = 0;
      v285 = v631;
      v286 = *(v631 + 20);
      *&v74[v286] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v287 = &v74[*(v285 + 24)];
      *v287 = 0x7269632E6F666E69;
      *(v287 + 1) = 0xEB00000000656C63;
      v288 = &v74[*(v285 + 28)];
      *v288 = xmmword_213F613B0;
      v288[16] = 4;
      LOBYTE(v286) = sub_213F4E0A0();
      v289 = v623;
      sub_213DBBD08(v623);
      v290 = v712;
      sub_213F4D280();
      sub_213F4D270();
      v291 = *(v283 + 1);
      v292 = v290;
      v293 = v710;
      v291(v292, v710);
      v291(v289, v293);
      sub_213F4CDA0();
      v295 = v294;
      v297 = v296;
      v299 = v298;
      v301 = v300;
      v302 = v622;
      sub_213EF8E7C(v74, v622, type metadata accessor for ButtonTrailingAccessory);
      v303 = v302 + *(v632 + 36);
      *v303 = v286;
      *(v303 + 8) = v295;
      *(v303 + 16) = v297;
      *(v303 + 24) = v299;
      *(v303 + 32) = v301;
      *(v303 + 40) = 0;
      v304 = [objc_opt_self() systemBlueColor];
      v305 = sub_213F4E870();
      v306 = v624;
      sub_213DE2B44(v302, v624, &qword_27C8FBB40, &qword_213F617D0);
      *(v306 + *(v637 + 36)) = v305;
      v307 = v709;
      sub_213F4F200();
      v308 = v706;
      v309 = v707;
      (*(v706 + 16))(v708, v307, v707);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v310 = qword_281182518;
      sub_213F4CB50();
      v311 = sub_213F4F260();
      v313 = v312;
      (*(v308 + 8))(v307, v309);
      *&v726 = v311;
      *(&v726 + 1) = v313;
      sub_213EF88F4();
      sub_213DBC9EC();
      v159 = v625;
      sub_213F4E5C0();

      sub_213DE36FC(v306, &qword_27C8FBB48, &qword_213F617D8);
      v145 = &qword_27C8FBB50;
      v146 = &qword_213F617E0;
      sub_213DE3164(v159, v629, &qword_27C8FBB50, &qword_213F617E0);
LABEL_46:
      swift_storeEnumTagMultiPayload();
      sub_213EF8120(&qword_281182F10, &qword_27C8FBB50, &qword_213F617E0, sub_213EF88F4);
      v370 = v630;
      sub_213F4DBA0();
      v371 = &qword_27C8FBAE8;
      v372 = &qword_213F61778;
      sub_213DE3164(v370, v664, &qword_27C8FBAE8, &qword_213F61778);
LABEL_47:
      swift_storeEnumTagMultiPayload();
      sub_213EF8810();
      sub_213EF8B20();
      v168 = v665;
      sub_213F4DBA0();
      sub_213DE36FC(v370, v371, v372);
      v169 = &qword_27C8FBB30;
      v170 = &qword_213F617C0;
      sub_213DE3164(v168, v702, &qword_27C8FBB30, &qword_213F617C0);
      goto LABEL_48;
    }

    v373 = v707;
    if (v102 == 2 && !v284)
    {
      v374 = swift_getKeyPath();
      v375 = v618;
      *v618 = v374;
      *(v375 + 8) = 0;
      *(v375 + 16) = 0;
      v376 = v631;
      v377 = *(v631 + 20);
      *(v375 + v377) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v378 = (v375 + *(v376 + 24));
      *v378 = 7235952;
      v378[1] = 0xE300000000000000;
      v379 = v375 + *(v376 + 28);
      *v379 = xmmword_213F613A0;
      *(v379 + 16) = 4;
      LOBYTE(v377) = sub_213F4E0A0();
      v380 = v619;
      sub_213DBBD08(v619);
      v381 = v712;
      sub_213F4D280();
      sub_213F4D270();
      v382 = *(v283 + 1);
      v383 = v381;
      v384 = v710;
      v382(v383, v710);
      v382(v380, v384);
      sub_213F4CDA0();
      v386 = v385;
      v388 = v387;
      v390 = v389;
      v392 = v391;
      v393 = v617;
      sub_213EF8E7C(v375, v617, type metadata accessor for ButtonTrailingAccessory);
      v394 = v393 + *(v632 + 36);
      *v394 = v377;
      *(v394 + 8) = v386;
      *(v394 + 16) = v388;
      *(v394 + 24) = v390;
      *(v394 + 32) = v392;
      *(v394 + 40) = 0;
      v395 = [objc_opt_self() systemBlueColor];
      v396 = sub_213F4E870();
      v397 = v620;
      sub_213DE2B44(v393, v620, &qword_27C8FBB40, &qword_213F617D0);
      *(v397 + *(v637 + 36)) = v396;
      v398 = v709;
      sub_213F4F200();
      v399 = v706;
      (*(v706 + 16))(v708, v398, v373);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v400 = qword_281182518;
      sub_213F4CB50();
      v401 = sub_213F4F260();
      v403 = v402;
      (*(v399 + 8))(v398, v373);
      *&v726 = v401;
      *(&v726 + 1) = v403;
      sub_213EF88F4();
      sub_213DBC9EC();
      v159 = v621;
      sub_213F4E5C0();

      sub_213DE36FC(v397, &qword_27C8FBB48, &qword_213F617D8);
      v145 = &qword_27C8FBB50;
      v146 = &qword_213F617E0;
      sub_213DE3164(v159, v629, &qword_27C8FBB50, &qword_213F617E0);
      goto LABEL_46;
    }

    v405 = v708;
    v406 = v637;
    if (v102 == 3 && !v284)
    {
      v407 = swift_getKeyPath();
      v408 = v613;
      *v613 = v407;
      *(v408 + 8) = 0;
      *(v408 + 16) = 0;
      v409 = v631;
      v410 = *(v631 + 20);
      *(v408 + v410) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v411 = (v408 + *(v409 + 24));
      *v411 = 0xD000000000000018;
      v411[1] = 0x8000000213FA5CE0;
      v412 = v408 + *(v409 + 28);
      *v412 = xmmword_213F5CBA0;
      *(v412 + 16) = 4;
      LODWORD(v698) = sub_213F4E0A0();
      v413 = v614;
      sub_213DBBD08(v614);
      v414 = v712;
      sub_213F4D280();
      sub_213F4D270();
      v415 = *(v711 + 1);
      v416 = v414;
      v417 = v710;
      v415(v416, v710);
      v418 = v417;
      v419 = v405;
      v420 = v406;
      v415(v413, v418);
      sub_213F4CDA0();
      v422 = v421;
      v424 = v423;
      v426 = v425;
      v428 = v427;
      v429 = v612;
      sub_213EF8E7C(v408, v612, type metadata accessor for ButtonTrailingAccessory);
      v430 = v429 + *(v632 + 36);
      *v430 = v698;
      *(v430 + 8) = v422;
      *(v430 + 16) = v424;
      *(v430 + 24) = v426;
      *(v430 + 32) = v428;
      *(v430 + 40) = 0;
      v431 = [objc_opt_self() secondaryLabelColor];
      v432 = sub_213F4E870();
      v433 = v615;
      sub_213DE2B44(v429, v615, &qword_27C8FBB40, &qword_213F617D0);
      *(v433 + *(v420 + 36)) = v432;
      v434 = v709;
      sub_213F4F200();
      v435 = v706;
      (*(v706 + 16))(v419, v434, v373);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v436 = qword_281182518;
      sub_213F4CB50();
      v437 = sub_213F4F260();
      v439 = v438;
      (*(v435 + 8))(v709, v373);
      *&v726 = v437;
      *(&v726 + 1) = v439;
      sub_213EF88F4();
      sub_213DBC9EC();
      v159 = v616;
      sub_213F4E5C0();

      sub_213DE36FC(v433, &qword_27C8FBB48, &qword_213F617D8);
      v145 = &qword_27C8FBB50;
      v146 = &qword_213F617E0;
      sub_213DE3164(v159, v654, &qword_27C8FBB50, &qword_213F617E0);
      swift_storeEnumTagMultiPayload();
      sub_213EF8120(&qword_281182F10, &qword_27C8FBB50, &qword_213F617E0, sub_213EF88F4);
      sub_213EF8D14();
      v167 = v655;
      goto LABEL_11;
    }

    if (v102 == 4 && !v284)
    {
      v440 = swift_getKeyPath();
      v441 = v676;
      *v676 = v440;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v442 = type metadata accessor for ActionTrailingAccessory(0);
      v443 = v442[5];
      *(v441 + v443) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
      swift_storeEnumTagMultiPayload();
      v444 = v441 + v442[6];
      *v444 = swift_getKeyPath();
      *(v444 + 8) = 0;
      *(v444 + 16) = 0;
      v445 = v441 + v442[7];
      strcpy(v445, "buildings.3d");
      *(v445 + 13) = 0;
      *(v445 + 14) = -5120;
      v446 = (v441 + v442[8]);
      *v446 = 0;
      v446[1] = 0;
      v447 = v441 + v442[9];
      *v447 = xmmword_213F61390;
      *(v447 + 16) = 4;
      LOBYTE(v444) = sub_213F4E0A0();
      v448 = v712;
      sub_213DBBD08(v712);
      v449 = v686;
      sub_213F4D280();
      sub_213F4D270();
      v450 = *(v711 + 1);
      v451 = v709;
      v452 = v710;
      v450(v449, v710);
      v450(v448, v452);
      sub_213F4CDA0();
      v454 = v453;
      v456 = v455;
      v458 = v457;
      v460 = v459;
      v461 = v441 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB78, &qword_213F61810) + 36);
      *v461 = v444;
      *(v461 + 8) = v454;
      *(v461 + 16) = v456;
      *(v461 + 24) = v458;
      *(v461 + 32) = v460;
      *(v461 + 40) = 0;
      LOBYTE(v444) = sub_213F4E0B0();
      sub_213DBBD08(v448);
      sub_213F4D280();
      sub_213F4D270();
      v462 = v449;
      v463 = v708;
      v450(v462, v452);
      v464 = v452;
      v465 = v451;
      v466 = v707;
      v450(v448, v464);
      sub_213F4CDA0();
      v467 = v441 + *(v675 + 36);
      *v467 = v444;
      *(v467 + 8) = v468;
      *(v467 + 16) = v469;
      *(v467 + 24) = v470;
      *(v467 + 32) = v471;
      *(v467 + 40) = 0;
      sub_213F4F200();
      v472 = v706;
      (*(v706 + 16))(v463, v465, v466);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v473 = qword_281182518;
      sub_213F4CB50();
      v474 = sub_213F4F260();
      v476 = v475;
      (*(v472 + 8))(v465, v466);
      *&v726 = v474;
      *(&v726 + 1) = v476;
      sub_213EF8504();
      sub_213DBC9EC();
      v144 = v681;
      sub_213F4E5C0();

      sub_213DE36FC(v441, &qword_27C8FBAA8, &qword_213F61738);
      v145 = &qword_27C8FBAB0;
      v146 = &qword_213F61740;
      sub_213DE3164(v144, v679, &qword_27C8FBAB0, &qword_213F61740);
      goto LABEL_7;
    }

    if (v102 == 5 && !v284)
    {
      v477 = swift_getKeyPath();
      v478 = v676;
      *v676 = v477;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v479 = type metadata accessor for ActionTrailingAccessory(0);
      v480 = v479[5];
      *(v478 + v480) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
      swift_storeEnumTagMultiPayload();
      v481 = v478 + v479[6];
      *v481 = swift_getKeyPath();
      *(v481 + 8) = 0;
      *(v481 + 16) = 0;
      v482 = (v478 + v479[7]);
      *v482 = 0x616C75636F6E6962;
      v482[1] = 0xEF6C6C69662E7372;
      v483 = (v478 + v479[8]);
      *v483 = 0;
      v483[1] = 0;
      v484 = v478 + v479[9];
      *v484 = xmmword_213F61380;
      *(v484 + 16) = 4;
      LOBYTE(v481) = sub_213F4E0A0();
      v485 = v712;
      sub_213DBBD08(v712);
      v486 = v686;
      sub_213F4D280();
      sub_213F4D270();
      v487 = *(v711 + 1);
      v488 = v709;
      v489 = v710;
      v487(v486, v710);
      v487(v485, v489);
      sub_213F4CDA0();
      v491 = v490;
      v493 = v492;
      v495 = v494;
      v497 = v496;
      v498 = v478 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB78, &qword_213F61810) + 36);
      *v498 = v481;
      *(v498 + 8) = v491;
      *(v498 + 16) = v493;
      *(v498 + 24) = v495;
      *(v498 + 32) = v497;
      *(v498 + 40) = 0;
      LOBYTE(v481) = sub_213F4E0B0();
      sub_213DBBD08(v485);
      sub_213F4D280();
      sub_213F4D270();
      v499 = v486;
      v500 = v708;
      v487(v499, v489);
      v501 = v489;
      v502 = v488;
      v503 = v707;
      v487(v485, v501);
      sub_213F4CDA0();
      v504 = v478 + *(v675 + 36);
      *v504 = v481;
      *(v504 + 8) = v505;
      *(v504 + 16) = v506;
      *(v504 + 24) = v507;
      *(v504 + 32) = v508;
      *(v504 + 40) = 0;
      sub_213F4F200();
      v509 = v706;
      (*(v706 + 16))(v500, v502, v503);
      if (qword_281182510 == -1)
      {
        goto LABEL_69;
      }

      goto LABEL_90;
    }

    if (v102 == 6 && !v284)
    {
      v510 = swift_getKeyPath();
      v478 = v676;
      *v676 = v510;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v511 = type metadata accessor for ActionTrailingAccessory(0);
      v512 = v511[5];
      *(v478 + v512) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
      swift_storeEnumTagMultiPayload();
      v513 = v478 + v511[6];
      *v513 = swift_getKeyPath();
      *(v513 + 8) = 0;
      *(v513 + 16) = 0;
      v514 = (v478 + v511[7]);
      *v514 = 0x69662E656E6F6870;
      v514[1] = 0xEA00000000006C6CLL;
      v515 = (v478 + v511[8]);
      *v515 = 0;
      v515[1] = 0;
      v516 = v478 + v511[9];
      *v516 = xmmword_213F61350;
      *(v516 + 16) = 4;
      LOBYTE(v513) = sub_213F4E0A0();
      v517 = v712;
      sub_213DBBD08(v712);
      v518 = v686;
      sub_213F4D280();
      sub_213F4D270();
      v519 = *(v711 + 1);
      v520 = v709;
      v521 = v710;
      v519(v518, v710);
      v519(v517, v521);
      sub_213F4CDA0();
      v523 = v522;
      v525 = v524;
      v527 = v526;
      v529 = v528;
      v530 = v478 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB78, &qword_213F61810) + 36);
      *v530 = v513;
      *(v530 + 8) = v523;
      *(v530 + 16) = v525;
      *(v530 + 24) = v527;
      *(v530 + 32) = v529;
      *(v530 + 40) = 0;
      LOBYTE(v513) = sub_213F4E0B0();
      sub_213DBBD08(v517);
      sub_213F4D280();
      sub_213F4D270();
      v519(v518, v521);
      v531 = v521;
      v502 = v520;
      v519(v517, v531);
      sub_213F4CDA0();
      v532 = v478 + *(v675 + 36);
      *v532 = v513;
      *(v532 + 8) = v533;
      *(v532 + 16) = v534;
      *(v532 + 24) = v535;
      *(v532 + 32) = v536;
      *(v532 + 40) = 0;
      sub_213F4F200();
      v509 = v706;
      v537 = v520;
      v503 = v707;
      (*(v706 + 16))(v708, v537, v707);
      if (qword_281182510 == -1)
      {
LABEL_69:
        v538 = qword_281182518;
        sub_213F4CB50();
        v539 = sub_213F4F260();
        v541 = v540;
        (*(v509 + 8))(v502, v503);
        *&v726 = v539;
        *(&v726 + 1) = v541;
        sub_213EF8504();
        sub_213DBC9EC();
        v144 = v681;
        sub_213F4E5C0();

        sub_213DE36FC(v478, &qword_27C8FBAA8, &qword_213F61738);
        v145 = &qword_27C8FBAB0;
        v146 = &qword_213F61740;
        sub_213DE3164(v144, v679, &qword_27C8FBAB0, &qword_213F61740);
        goto LABEL_26;
      }

LABEL_90:
      swift_once();
      goto LABEL_69;
    }

    if (v102 == 7 && !v284)
    {
      v542 = swift_getKeyPath();
      v478 = v676;
      *v676 = v542;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v543 = type metadata accessor for ActionTrailingAccessory(0);
      v544 = v543[5];
      *(v478 + v544) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
      swift_storeEnumTagMultiPayload();
      v545 = v478 + v543[6];
      *v545 = swift_getKeyPath();
      *(v545 + 8) = 0;
      *(v545 + 16) = 0;
      v546 = (v478 + v543[7]);
      *v546 = 0x662E697261666173;
      v546[1] = 0xEB000000006C6C69;
      v547 = (v478 + v543[8]);
      *v547 = 0;
      v547[1] = 0;
      v548 = v478 + v543[9];
      *v548 = xmmword_213F61370;
      *(v548 + 16) = 4;
      LOBYTE(v545) = sub_213F4E0A0();
      v549 = v712;
      sub_213DBBD08(v712);
      v550 = v686;
      sub_213F4D280();
      sub_213F4D270();
      v551 = *(v711 + 1);
      v552 = v709;
      v553 = v710;
      v551(v550, v710);
      v551(v549, v553);
      sub_213F4CDA0();
      v555 = v554;
      v557 = v556;
      v559 = v558;
      v561 = v560;
      v562 = v478 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB78, &qword_213F61810) + 36);
      *v562 = v545;
      *(v562 + 8) = v555;
      *(v562 + 16) = v557;
      *(v562 + 24) = v559;
      *(v562 + 32) = v561;
      *(v562 + 40) = 0;
      LOBYTE(v545) = sub_213F4E0B0();
      sub_213DBBD08(v549);
      sub_213F4D280();
      sub_213F4D270();
      v551(v550, v553);
      v563 = v553;
      v502 = v552;
      v551(v549, v563);
      sub_213F4CDA0();
      v564 = v478 + *(v675 + 36);
      *v564 = v545;
      *(v564 + 8) = v565;
      *(v564 + 16) = v566;
      *(v564 + 24) = v567;
      *(v564 + 32) = v568;
      *(v564 + 40) = 0;
      sub_213F4F200();
      v509 = v706;
      v569 = v552;
      v503 = v707;
      (*(v706 + 16))(v708, v569, v707);
      if (qword_281182510 == -1)
      {
        goto LABEL_69;
      }

      goto LABEL_90;
    }

    if (v102 != 8 || v284)
    {
      v589 = swift_getKeyPath();
      v735 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BA0, &qword_213F5EAC0);
      v590 = swift_allocObject();
      *(v590 + 16) = xmmword_213F51DE0;
      v591 = sub_213F4E0B0();
      *(v590 + 32) = v591;
      v592 = sub_213F4E0A0();
      *(v590 + 33) = v592;
      v593 = sub_213F4E090();
      sub_213F4E090();
      v594 = sub_213F4E090();
      v595 = v707;
      v596 = v708;
      if (v594 != v591)
      {
        v593 = sub_213F4E090();
      }

      sub_213F4E090();
      if (sub_213F4E090() != v592)
      {
        v593 = sub_213F4E090();
      }

      sub_213F4CDA0();
      v736 = 0;
      v719 = v589;
      LOBYTE(v720) = 0;
      *(&v720 + 1) = 0x69662E656E6F6870;
      *&v721 = 0xEA00000000006C6CLL;
      *(&v721 + 1) = 0x4034000000000000;
      v722 = xmmword_213F61350;
      LOBYTE(v723) = 4;
      BYTE8(v723) = v593;
      *&v724 = v597;
      *(&v724 + 1) = v598;
      *&v725[0] = v599;
      *(&v725[0] + 1) = v600;
      LOBYTE(v725[1]) = 0;
      v601 = v709;
      sub_213F4F200();
      v602 = v706;
      (*(v706 + 16))(v596, v601, v595);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v603 = qword_281182518;
      sub_213F4CB50();
      v604 = sub_213F4F260();
      v606 = v605;
      (*(v602 + 8))(v709, v595);
      v733 = v604;
      v734 = v606;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB60, &qword_213F617F0);
      sub_213EF7C8C();
      sub_213DBC9EC();
      v159 = v611;
      sub_213F4E5C0();

      v730 = v723;
      v731 = v724;
      v732[0] = v725[0];
      LOBYTE(v732[1]) = v725[1];
      v726 = v719;
      v727 = v720;
      v728 = v721;
      v729 = v722;
      sub_213DE36FC(&v726, &qword_27C8FBB60, &qword_213F617F0);
      v145 = &qword_27C8FBA30;
      v146 = &qword_213F616C0;
      sub_213DE3164(v159, v643, &qword_27C8FBA30, &qword_213F616C0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB58, &qword_213F617E8);
      sub_213EF8120(&qword_2811830B8, &qword_27C8FBA30, &qword_213F616C0, sub_213EF7C8C);
      sub_213EF7DB4();
      v240 = v645;
      sub_213F4DBA0();
      v241 = &qword_27C8FBA28;
      v242 = &qword_213F616B8;
      sub_213DE3164(v240, v672, &qword_27C8FBA28, &qword_213F616B8);
      goto LABEL_22;
    }

    v570 = v709;
    v571 = swift_getKeyPath();
    LOBYTE(v726) = 0;
    v572 = [objc_opt_self() systemRedColor];
    v573 = sub_213F4E870();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BA0, &qword_213F5EAC0);
    v574 = swift_allocObject();
    *(v574 + 16) = xmmword_213F51DE0;
    v575 = sub_213F4E0B0();
    *(v574 + 32) = v575;
    v576 = sub_213F4E0A0();
    *(v574 + 33) = v576;
    v577 = sub_213F4E090();
    sub_213F4E090();
    v578 = sub_213F4E090();
    v579 = v707;
    if (v578 != v575)
    {
      v577 = sub_213F4E090();
    }

    sub_213F4E090();
    if (sub_213F4E090() != v576)
    {
      v577 = sub_213F4E090();
    }

    sub_213F4CDA0();
    v736 = 0;
    v719 = v571;
    LOBYTE(v720) = 0;
    *(&v720 + 1) = 0x73756E696DLL;
    *&v721 = 0xE500000000000000;
    *(&v721 + 1) = 0x4038000000000000;
    v722 = xmmword_213F61360;
    LOBYTE(v723) = 4;
    *(&v723 + 1) = v573;
    LOBYTE(v724) = v577;
    *(&v724 + 1) = v580;
    *&v725[0] = v581;
    *(&v725[0] + 1) = v582;
    *&v725[1] = v583;
    BYTE8(v725[1]) = 0;
    sub_213F4F200();
    v584 = v706;
    (*(v706 + 16))(v708, v570, v579);
    if (qword_281182510 != -1)
    {
      swift_once();
    }

    v585 = qword_281182518;
    sub_213F4CB50();
    v586 = sub_213F4F260();
    v588 = v587;
    (*(v584 + 8))(v570, v579);
    v733 = v586;
    v734 = v588;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB68, &qword_213F617F8);
    sub_213EF81D4();
    sub_213DBC9EC();
    v159 = v610;
    sub_213F4E5C0();

    v730 = v723;
    v731 = v724;
    v732[0] = v725[0];
    *(v732 + 9) = *(v725 + 9);
    v726 = v719;
    v727 = v720;
    v728 = v721;
    v729 = v722;
    sub_213DE36FC(&v726, &qword_27C8FBB68, &qword_213F617F8);
    v145 = &qword_27C8FBA38;
    v146 = &qword_213F616C8;
    sub_213DE3164(v159, v647, &qword_27C8FBA38, &qword_213F616C8);
    swift_storeEnumTagMultiPayload();
    sub_213EF7F4C();
    sub_213EF8120(&qword_281182EE8, &qword_27C8FBA38, &qword_213F616C8, sub_213EF81D4);
    v240 = v648;
LABEL_21:
    sub_213F4DBA0();
    v241 = &qword_27C8FBA50;
    v242 = &qword_213F616E0;
    sub_213DE3164(v240, v672, &qword_27C8FBA50, &qword_213F616E0);
LABEL_22:
    swift_storeEnumTagMultiPayload();
    sub_213EF7E94();
    sub_213EF8318();
    v243 = v674;
    sub_213F4DBA0();
    sub_213DE36FC(v240, v241, v242);
    sub_213DE3164(v243, v696, &qword_27C8FBA58, &qword_213F616E8);
    swift_storeEnumTagMultiPayload();
    sub_213EF83D0();
    sub_213EF866C();
    v244 = v698;
    sub_213F4DBA0();
    sub_213DE36FC(v243, &qword_27C8FBA58, &qword_213F616E8);
    v245 = &qword_27C8FBA90;
    v246 = &qword_213F61720;
    sub_213DE3164(v244, v715, &qword_27C8FBA90, &qword_213F61720);
LABEL_49:
    swift_storeEnumTagMultiPayload();
    sub_213EF86F8();
    sub_213EF8DF0();
    sub_213F4DBA0();
LABEL_50:
    sub_213DE36FC(v244, v245, v246);
    v182 = v159;
    return sub_213DE36FC(v182, v145, v146);
  }

  v171 = v101;
  v172 = v102;

  v173 = sub_213F4E0A0();
  sub_213F4CDA0();
  LOBYTE(v726) = 0;
  v174 = v643;
  *v643 = v172;
  v174[1] = v171;
  *(v174 + 16) = v173;
  v174[3] = v175;
  v174[4] = v176;
  v174[5] = v177;
  v174[6] = v178;
  *(v174 + 56) = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB58, &qword_213F617E8);
  sub_213EF8120(&qword_2811830B8, &qword_27C8FBA30, &qword_213F616C0, sub_213EF7C8C);
  sub_213EF7DB4();
  v179 = v645;
  sub_213F4DBA0();
  sub_213DE3164(v179, v672, &qword_27C8FBA28, &qword_213F616B8);
  swift_storeEnumTagMultiPayload();
  sub_213EF7E94();
  sub_213EF8318();
  v180 = v674;
  sub_213F4DBA0();
  sub_213DE36FC(v179, &qword_27C8FBA28, &qword_213F616B8);
  sub_213DE3164(v180, v696, &qword_27C8FBA58, &qword_213F616E8);
  swift_storeEnumTagMultiPayload();
  sub_213EF83D0();
  sub_213EF866C();
  v181 = v698;
  sub_213F4DBA0();
  sub_213DE36FC(v180, &qword_27C8FBA58, &qword_213F616E8);
  v145 = &qword_27C8FBA90;
  v146 = &qword_213F61720;
  sub_213DE3164(v181, v715, &qword_27C8FBA90, &qword_213F61720);
  swift_storeEnumTagMultiPayload();
  sub_213EF86F8();
  sub_213EF8DF0();
  sub_213F4DBA0();
  v182 = v181;
  return sub_213DE36FC(v182, v145, v146);
}

double sub_213EF7BD0@<D0>(uint64_t a1@<X8>)
{
  sub_213EF2B84(a1);
  sub_213F4EF00();
  sub_213F4D0C0();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA18, &qword_213F616A8) + 36));
  *v2 = v4;
  v2[1] = v5;
  result = *&v6;
  v2[2] = v6;
  return result;
}

unint64_t sub_213EF7C8C()
{
  result = qword_2811833A8;
  if (!qword_2811833A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB60, &qword_213F617F0);
    sub_213EF7D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833A8);
  }

  return result;
}

unint64_t sub_213EF7D18()
{
  result = qword_281183BC0[0];
  if (!qword_281183BC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281183BC0);
  }

  return result;
}

uint64_t sub_213EF7D6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_213EF7DB4()
{
  result = qword_2811833B8;
  if (!qword_2811833B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB58, &qword_213F617E8);
    sub_213EF7E40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833B8);
  }

  return result;
}

unint64_t sub_213EF7E40()
{
  result = qword_281183D10[0];
  if (!qword_281183D10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281183D10);
  }

  return result;
}

unint64_t sub_213EF7E94()
{
  result = qword_281182AF0;
  if (!qword_281182AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBA50, &qword_213F616E0);
    sub_213EF7F4C();
    sub_213EF8120(&qword_281182EE8, &qword_27C8FBA38, &qword_213F616C8, sub_213EF81D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AF0);
  }

  return result;
}

unint64_t sub_213EF7F4C()
{
  result = qword_281182EF8;
  if (!qword_281182EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBA70, &qword_213F61700);
    sub_213EF7FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182EF8);
  }

  return result;
}

unint64_t sub_213EF7FD8()
{
  result = qword_2811830C8;
  if (!qword_2811830C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBA68, &qword_213F616F8);
    sub_213EF8064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811830C8);
  }

  return result;
}

unint64_t sub_213EF8064()
{
  result = qword_2811833C8;
  if (!qword_2811833C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBA60, &qword_213F616F0);
    sub_213EF7D6C(qword_2811842F8, type metadata accessor for SelectedTrailingAccessory, &unk_213F61C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833C8);
  }

  return result;
}

uint64_t sub_213EF8120(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_213EF7D6C(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213EF81D4()
{
  result = qword_2811830B0;
  if (!qword_2811830B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB68, &qword_213F617F8);
    sub_213EF8260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811830B0);
  }

  return result;
}

unint64_t sub_213EF8260()
{
  result = qword_2811833A0;
  if (!qword_2811833A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB70, &unk_213F61800);
    sub_213EF7D18();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833A0);
  }

  return result;
}

unint64_t sub_213EF8318()
{
  result = qword_281182B20;
  if (!qword_281182B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBA28, &qword_213F616B8);
    sub_213EF8120(&qword_2811830B8, &qword_27C8FBA30, &qword_213F616C0, sub_213EF7C8C);
    sub_213EF7DB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B20);
  }

  return result;
}

unint64_t sub_213EF83D0()
{
  result = qword_281182A38;
  if (!qword_281182A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBA88, &qword_213F61718);
    sub_213EF8454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A38);
  }

  return result;
}

unint64_t sub_213EF8454()
{
  result = qword_281182B10;
  if (!qword_281182B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBAA0, &qword_213F61730);
    sub_213EF8120(&qword_281182F18, &qword_27C8FBAB0, &qword_213F61740, sub_213EF8504);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B10);
  }

  return result;
}

unint64_t sub_213EF8504()
{
  result = qword_2811830E8;
  if (!qword_2811830E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBAA8, &qword_213F61738);
    sub_213EF8590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811830E8);
  }

  return result;
}

unint64_t sub_213EF8590()
{
  result = qword_2811833F0;
  if (!qword_2811833F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB78, &qword_213F61810);
    sub_213EF7D6C(qword_281184D80, type metadata accessor for ActionTrailingAccessory, &unk_213F61BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833F0);
  }

  return result;
}

unint64_t sub_213EF866C()
{
  result = qword_281182A20;
  if (!qword_281182A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBA58, &qword_213F616E8);
    sub_213EF7E94();
    sub_213EF8318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A20);
  }

  return result;
}

unint64_t sub_213EF86F8()
{
  result = qword_2811829D0;
  if (!qword_2811829D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB38, &qword_213F617C8);
    sub_213EF8784();
    sub_213EF8BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811829D0);
  }

  return result;
}

unint64_t sub_213EF8784()
{
  result = qword_281182A30;
  if (!qword_281182A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB30, &qword_213F617C0);
    sub_213EF8810();
    sub_213EF8B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A30);
  }

  return result;
}

unint64_t sub_213EF8810()
{
  result = qword_281182B08;
  if (!qword_281182B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB28, &qword_213F617B8);
    sub_213EF8120(&qword_281182F10, &qword_27C8FBB50, &qword_213F617E0, sub_213EF88F4);
    sub_213EF8120(&qword_2811830F0, &qword_27C8FBB00, &qword_213F61790, sub_213EF8A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B08);
  }

  return result;
}

unint64_t sub_213EF88F4()
{
  result = qword_2811830E0;
  if (!qword_2811830E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB48, &qword_213F617D8);
    sub_213EF89AC();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811830E0);
  }

  return result;
}

unint64_t sub_213EF89AC()
{
  result = qword_2811833E8;
  if (!qword_2811833E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB40, &qword_213F617D0);
    sub_213EF7D6C(qword_281184CD8, type metadata accessor for ButtonTrailingAccessory, &unk_213F61BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833E8);
  }

  return result;
}

unint64_t sub_213EF8A68()
{
  result = qword_2811833F8;
  if (!qword_2811833F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBAF8, &qword_213F61788);
    sub_213DE3AE4(qword_2811852A0, &qword_27C8FBAF0, &qword_213F61780, &unk_213F61B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833F8);
  }

  return result;
}

unint64_t sub_213EF8B20()
{
  result = qword_281182AF8;
  if (!qword_281182AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBAE8, &qword_213F61778);
    sub_213EF8120(&qword_281182F10, &qword_27C8FBB50, &qword_213F617E0, sub_213EF88F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AF8);
  }

  return result;
}

unint64_t sub_213EF8BD0()
{
  result = qword_281182A28;
  if (!qword_281182A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBAD8, &qword_213F61768);
    sub_213EF8C5C();
    sub_213EF8454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A28);
  }

  return result;
}

unint64_t sub_213EF8C5C()
{
  result = qword_281182B00;
  if (!qword_281182B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBAD0, &qword_213F61760);
    sub_213EF8120(&qword_281182F10, &qword_27C8FBB50, &qword_213F617E0, sub_213EF88F4);
    sub_213EF8D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B00);
  }

  return result;
}

unint64_t sub_213EF8D14()
{
  result = qword_2811833D0;
  if (!qword_2811833D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBAB8, &qword_213F61748);
    sub_213EF7D6C(&qword_281184600, type metadata accessor for OfflineTrailingAccessory, &unk_213F61B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833D0);
  }

  return result;
}

unint64_t sub_213EF8DF0()
{
  result = qword_2811829D8;
  if (!qword_2811829D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBA90, &qword_213F61720);
    sub_213EF83D0();
    sub_213EF866C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811829D8);
  }

  return result;
}

uint64_t sub_213EF8E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_213EF8EE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 3u)
  {
    if (a6 == 4 || a6 == 5)
    {

      goto LABEL_6;
    }
  }

  else if (a6)
  {
    if (a6 == 3)
    {

LABEL_6:
    }
  }

  else
  {

    sub_213DD74C4(a2, a3);

    sub_213DD74C4(a4, a5);
  }
}

uint64_t sub_213EF8F94@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void sub_213EF900C(uint64_t a1)
{
  sub_213EF9108(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v1 <= 0x3F)
  {
    sub_213EF9108(319, &qword_281183528, MEMORY[0x277CDF3E0]);
    if (v2 <= 0x3F)
    {
      sub_213EF950C(319, &qword_281183500, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213EF9108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213F4CEF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_213EF9184(uint64_t a1)
{
  sub_213EF9108(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v1 <= 0x3F)
  {
    sub_213EF9108(319, &qword_281183528, MEMORY[0x277CDF3E0]);
    if (v2 <= 0x3F)
    {
      sub_213EF955C(319, &qword_2811834F0, &qword_27C8FB0B0, &unk_213F5EFA0, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_213EF950C(319, &qword_281182500, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_213EF92F0(uint64_t a1)
{
  sub_213EF9108(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v1 <= 0x3F)
  {
    sub_213EF9108(319, &qword_281183528, MEMORY[0x277CDF3E0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213EF93C4(uint64_t a1)
{
  sub_213EF9108(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v1 <= 0x3F)
  {
    sub_213EF950C(319, &qword_2811824F0, &type metadata for CellAction, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_213EF955C(319, &qword_2811822D8, &qword_27C8F8958, &qword_213F58650, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213EF950C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_213EF955C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_213EF95E8(uint64_t a1)
{
  sub_213EF955C(319, &qword_2811834F0, &qword_27C8FB0B0, &unk_213F5EFA0, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213EF9108(319, &qword_281183520, MEMORY[0x277CDF7E8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_213EF96CC()
{
  result = qword_281183370;
  if (!qword_281183370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBA18, &qword_213F616A8);
    sub_213EF9758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183370);
  }

  return result;
}

unint64_t sub_213EF9758()
{
  result = qword_2811829B8;
  if (!qword_2811829B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB80, &qword_213F61AF8);
    sub_213EF86F8();
    sub_213EF8DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811829B8);
  }

  return result;
}

unint64_t sub_213EF9918()
{
  result = qword_27C8FBBA0;
  if (!qword_27C8FBBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB98, &qword_213F61D40);
    sub_213EF99D0();
    sub_213DE3AE4(&qword_281182BE8, &qword_27C8FB618, &qword_213F61D60, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBBA0);
  }

  return result;
}

unint64_t sub_213EF99D0()
{
  result = qword_281182E10;
  if (!qword_281182E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBA8, &qword_213F61D48);
    sub_213DE2C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E10);
  }

  return result;
}

unint64_t sub_213EF9A5C()
{
  result = qword_281183010;
  if (!qword_281183010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB90, &qword_213F61D38);
    sub_213EF9B14();
    sub_213DE3AE4(&qword_2811828C8, &qword_27C8FBBB8, &qword_213F61D70, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183010);
  }

  return result;
}

unint64_t sub_213EF9B14()
{
  result = qword_2811832D0;
  if (!qword_2811832D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBB0, &qword_213F61D68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB88, &qword_213F61D30);
    sub_213F4DCA0();
    sub_213DE3AE4(&qword_281182748, &qword_27C8FBB88, &qword_213F61D30, MEMORY[0x277CDF028]);
    sub_213EF7D6C(&qword_281182998, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832D0);
  }

  return result;
}

unint64_t sub_213EF9C8C()
{
  result = qword_281182CA0;
  if (!qword_281182CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBE8, &qword_213F61E08);
    sub_213EF9D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182CA0);
  }

  return result;
}

unint64_t sub_213EF9D18()
{
  result = qword_281182CF0;
  if (!qword_281182CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBE0, &qword_213F61E00);
    sub_213EF9DD0();
    sub_213DE3AE4(&qword_281182C30, &qword_27C8F7A78, &unk_213F5D5E0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182CF0);
  }

  return result;
}

unint64_t sub_213EF9DD0()
{
  result = qword_281182D50;
  if (!qword_281182D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBD8, &qword_213F61DF8);
    sub_213EF9E88();
    sub_213DE3AE4(&qword_281182870, &qword_27C8F8F28, &qword_213F61E10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D50);
  }

  return result;
}

unint64_t sub_213EF9E88()
{
  result = qword_281182E18;
  if (!qword_281182E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBD0, &qword_213F61DF0);
    sub_213DE2C14();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E18);
  }

  return result;
}

unint64_t sub_213EF9F40()
{
  result = qword_281182C88;
  if (!qword_281182C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBC0, &qword_213F61DE0);
    sub_213EF9C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182C88);
  }

  return result;
}

unint64_t sub_213EFA000()
{
  result = qword_27C8FBC10;
  if (!qword_27C8FBC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBC08, &qword_213F61E68);
    sub_213EFA0B8();
    sub_213DE3AE4(&qword_27C8FBC68, &qword_27C8FBC70, &qword_213F61E98, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBC10);
  }

  return result;
}

unint64_t sub_213EFA0B8()
{
  result = qword_27C8FBC18;
  if (!qword_27C8FBC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBC20, &qword_213F61E70);
    sub_213EFA170();
    sub_213DE3AE4(&qword_27C8FBC58, &qword_27C8FBC60, &qword_213F61E90, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBC18);
  }

  return result;
}

unint64_t sub_213EFA170()
{
  result = qword_27C8FBC28;
  if (!qword_27C8FBC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBC30, &qword_213F61E78);
    sub_213EFA1FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBC28);
  }

  return result;
}

unint64_t sub_213EFA1FC()
{
  result = qword_27C8FBC38;
  if (!qword_27C8FBC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBC40, &qword_213F61E80);
    sub_213DE3AE4(&qword_27C8FBC48, &qword_27C8FBC50, &qword_213F61E88, MEMORY[0x277CE1198]);
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBC38);
  }

  return result;
}

unint64_t sub_213EFA2E0()
{
  result = qword_2811832B0;
  if (!qword_2811832B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBF8, &qword_213F61E58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBF0, &qword_213F61E50);
    sub_213DE3AE4(&qword_281182740, &qword_27C8FBBF0, &qword_213F61E50, MEMORY[0x277CDF028]);
    sub_213E4FC2C();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_2811828D8, &qword_27C8F93E8, &qword_213F61EA0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832B0);
  }

  return result;
}

double sub_213EFA41C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_213EFA438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213EFA4CC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_213EFA550()
{
  result = qword_27C8FBCB0;
  if (!qword_27C8FBCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBCA8, &qword_213F61F10);
    sub_213EFA5DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBCB0);
  }

  return result;
}

unint64_t sub_213EFA5DC()
{
  result = qword_27C8FBCB8;
  if (!qword_27C8FBCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBCC0, &qword_213F61F18);
    sub_213EFA694();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBCB8);
  }

  return result;
}

unint64_t sub_213EFA694()
{
  result = qword_27C8FBCC8;
  if (!qword_27C8FBCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBCD0, &qword_213F61F20);
    sub_213DE3AE4(&qword_281182850, &qword_27C8F76B0, &qword_213F518C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBCC8);
  }

  return result;
}

unint64_t sub_213EFA74C()
{
  result = qword_281183018;
  if (!qword_281183018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBCA0, &qword_213F61F08);
    sub_213EFA804();
    sub_213DE3AE4(&qword_2811828E0, &qword_27C8FA708, &qword_213F61F30, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183018);
  }

  return result;
}

unint64_t sub_213EFA804()
{
  result = qword_2811832D8;
  if (!qword_2811832D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBCD8, &qword_213F61F28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBC98, &qword_213F61F00);
    sub_213F4D450();
    sub_213DE3AE4(&qword_281182750, &qword_27C8FBC98, &qword_213F61F00, MEMORY[0x277CDF028]);
    sub_213EF7D6C(&qword_281182C78, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832D8);
  }

  return result;
}

uint64_t sub_213EFA97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for MoreTrailingAccessory(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_213EEB0F4(a1, v9, v6, v7, a3);
}

uint64_t objectdestroy_116Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MoreTrailingAccessory(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = v4 + v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4D290();
    (*(*(v8 - 8) + 8))(v4 + v6, v8);
  }

  else
  {
  }

  if (*(v7 + *(v5 + 40)))
  {
  }

  if (*(v7 + *(v5 + 44)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_213EFAB6C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for MoreTrailingAccessory(0, *(v4 + 16), *(v4 + 24), a4);
  v8 = *(v6 - 8);
  result = v6 - 8;
  v9 = (v4 + *(result + 48) + ((*(v8 + 80) + 32) & ~*(v8 + 80)));
  if (*v9)
  {
    return (*v9)(a1 & 1);
  }

  return result;
}

uint64_t sub_213EFAC04(uint64_t a1)
{
  v2 = sub_213F4D460();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_123Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MoreTrailingAccessory(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = v4 + v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_213F4D290();
    (*(*(v9 - 8) + 8))(v4 + v6, v9);
  }

  else
  {
  }

  if (*(v8 + *(v5 + 40)))
  {
  }

  if (*(v8 + *(v5 + 44)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_213EFAE08(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for MoreTrailingAccessory(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v4 + v9, v10, v6, v7);
}

unint64_t sub_213EFAEE4()
{
  result = qword_281182AD0;
  if (!qword_281182AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBD40, &qword_213F61FC8);
    sub_213EF9C8C();
    sub_213EF9F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AD0);
  }

  return result;
}

unint64_t sub_213EFAF70()
{
  result = qword_2811832A8;
  if (!qword_2811832A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBD48, &qword_213F61FD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBF8, &qword_213F61E58);
    sub_213F4DBC0();
    sub_213EFA2E0();
    sub_213EF7D6C(&qword_2811829B0, MEMORY[0x277CDDFF8], MEMORY[0x277CDDFF0]);
    swift_getOpaqueTypeConformance2();
    sub_213EF7D6C(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832A8);
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverE0Rd__lFQOyAA15ModifiedContentVyAHyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAHyAHyAHyAHyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAPyAN5ScaleOGGAA12_FrameLayoutVGAA011_BackgroundT0VyAHyAA6CircleVAA011_ForegroundmT0VyAA5ColorVGGGGG_AA010BorderlessoM0VQo_AA01_k5ShapeT0VyAA9RectangleVGGAA01_k9ShapeKindT0VyA4_GG_AA09HighlightiE0VQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_213F4DBC0();
  a4();
  sub_213EF7D6C(&qword_2811829B0, MEMORY[0x277CDDFF8], MEMORY[0x277CDDFF0]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_213EFB16C()
{
  result = qword_281182DD0;
  if (!qword_281182DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBCF8, &qword_213F61F80);
    sub_213EFB1F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182DD0);
  }

  return result;
}

unint64_t sub_213EFB1F8()
{
  result = qword_281182F38;
  if (!qword_281182F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBCF0, &qword_213F61F78);
    sub_213EFB284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F38);
  }

  return result;
}

unint64_t sub_213EFB284()
{
  result = qword_281183158;
  if (!qword_281183158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBCE8, &qword_213F61F70);
    sub_213DE3AE4(&qword_281182658, &qword_27C8FBD50, &qword_213F61FD8, MEMORY[0x277CE11A8]);
    sub_213DE3AE4(&qword_281182C38, &qword_27C8FBD58, &qword_213F61FE0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183158);
  }

  return result;
}

uint64_t View.backgroundPlatter(isCarPlay:isHighlighted:isFocused:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_213F4EEE0();
  type metadata accessor for Platter(0);
  sub_213EFC648(qword_281183890, type metadata accessor for Platter, &protocol conformance descriptor for Platter);
  return sub_213F4E350();
}

uint64_t sub_213EFB448@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for Platter(0);
  sub_213DE3164(v1 + *(v10 + 28), v9, &qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4CEA0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_213EFB650@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for Platter(0);
  sub_213DE3164(v1 + *(v10 + 32), v9, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D290();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t Platter.init(isCarPlay:isHighlighted:isFocused:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for Platter(0);
  v9 = *(v8 + 28);
  *&a4[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v10 = *(v8 + 32);
  *&a4[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  result = swift_storeEnumTagMultiPayload();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_213EFB91C()
{
  v1 = sub_213F4CEA0();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - v6;
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  if (*(v0 + 2) == 1)
  {
    v11 = [objc_opt_self() _carSystemFocusColor];

    return sub_213F4E870();
  }

  else
  {
    v13 = (v8 + 104);
    v14 = (v8 + 8);
    if (*(v0 + 1) == 1)
    {
      sub_213EFB448(&v22 - v9);
      (*v13)(v7, *MEMORY[0x277CDF3C0], v1);
      v15 = sub_213F4CE90();
      v16 = *v14;
      (*v14)(v7, v1);
      if (v15)
      {
        v23 = sub_213F4E8F0();
        sub_213ECDD7C();
        sub_213F4E950();
        v17 = sub_213F4E900();
      }

      else
      {
        v21 = [objc_opt_self() systemFillColor];
        v17 = sub_213F4E870();
      }

      v20 = v10;
    }

    else
    {
      sub_213EFB448(v4);
      (*v13)(v7, *MEMORY[0x277CDF3C0], v1);
      v18 = sub_213F4CE90();
      v16 = *v14;
      (*v14)(v7, v1);
      v19 = sub_213F4E8F0();
      v17 = v19;
      if (v18)
      {
        v23 = v19;
        sub_213ECDD7C();
        sub_213F4E950();
        v17 = sub_213F4E900();
      }

      v20 = v4;
    }

    v16(v20, v1);
    return v17;
  }
}

uint64_t sub_213EFBC00@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBDB0, &qword_213F620D8);
  MEMORY[0x28223BE20](v39);
  v3 = &v36 - v2;
  v37 = sub_213F4D290();
  v4 = *(v37 - 8);
  v5 = MEMORY[0x28223BE20](v37);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = sub_213F4D470();
  MEMORY[0x28223BE20](v13);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD80, &qword_213F62058);
  v16 = MEMORY[0x28223BE20](v38);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  v21 = (v4 + 8);
  if (*(v1 + 1) == 1)
  {
    sub_213EFB650(v12);
    sub_213F4D280();
    v22 = sub_213F4D270();
    v23 = *v21;
    v24 = v10;
    v25 = v37;
    (*v21)(v24, v37);
    v23(v12, v25);
    if (v22)
    {
      v26 = 14.0;
    }

    else
    {
      v26 = 26.0;
    }

    v27 = *(v13 + 20);
    v28 = *MEMORY[0x277CE0118];
    v29 = sub_213F4D950();
    (*(*(v29 - 8) + 104))(v15 + v27, v28, v29);
    *v15 = v26;
    v15[1] = v26;
    sub_213DEEF8C(v15, v18);
    sub_213EFCA50(v18, v20);
    sub_213DE3164(v20, v3, &qword_27C8FBD80, &qword_213F62058);
    swift_storeEnumTagMultiPayload();
    sub_213EFC71C();
    sub_213EFC804();
    sub_213F4DBA0();
    return sub_213DE36FC(v20, &qword_27C8FBD80, &qword_213F62058);
  }

  else
  {
    sub_213EFB650(v7);
    sub_213F4D280();
    v31 = sub_213F4D270();
    v32 = *v21;
    v33 = v37;
    (*v21)(v10, v37);
    v32(v7, v33);
    if (v31)
    {
      v34 = 14.0;
    }

    else
    {
      v34 = 26.0;
    }

    v41 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    sub_213E29028();
    sub_213F4EA90();
    v35 = v43;
    *v3 = v42;
    *(v3 + 1) = v35;
    *(v3 + 2) = v34;
    *(v3 + 3) = v34;
    *(v3 + 4) = v34;
    *(v3 + 5) = v34;
    swift_storeEnumTagMultiPayload();
    sub_213EFC71C();
    sub_213EFC804();
    return sub_213F4DBA0();
  }
}

uint64_t Platter.body.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD60, &qword_213F62048);
  MEMORY[0x28223BE20](v33);
  v4 = v29 - v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD68, &qword_213F62050);
  MEMORY[0x28223BE20](v31);
  v32 = v29 - v5;
  v6 = sub_213F4D290();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - v11;
  v13 = sub_213F4D470();
  MEMORY[0x28223BE20](v13);
  v15 = (v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D90, &qword_213F61EB0);
  MEMORY[0x28223BE20](v30);
  v17 = v29 - v16;
  if (*v1 == 1)
  {
    sub_213EFB650(v12);
    sub_213F4D280();
    v18 = sub_213F4D270();
    v29[1] = a1;
    v19 = *(v7 + 8);
    v19(v10, v6);
    v19(v12, v6);
    if (v18)
    {
      v20 = 14.0;
    }

    else
    {
      v20 = 26.0;
    }

    v21 = *(v13 + 20);
    v22 = *MEMORY[0x277CE0118];
    v23 = sub_213F4D950();
    (*(*(v23 - 8) + 104))(v15 + v21, v22, v23);
    *v15 = v20;
    v15[1] = v20;
    v24 = sub_213EFB91C();
    sub_213DEEF8C(v15, v17);
    *&v17[*(v30 + 36)] = v24;
    v25 = &qword_27C8F7D90;
    v26 = &qword_213F61EB0;
    sub_213DE3164(v17, v32, &qword_27C8F7D90, &qword_213F61EB0);
    swift_storeEnumTagMultiPayload();
    sub_213EFC560();
    sub_213EFC690();
    sub_213F4DBA0();
    v27 = v17;
  }

  else
  {
    sub_213EFBC00(v4);
    v25 = &qword_27C8FBD60;
    v26 = &qword_213F62048;
    sub_213DE3164(v4, v32, &qword_27C8FBD60, &qword_213F62048);
    swift_storeEnumTagMultiPayload();
    sub_213EFC560();
    sub_213EFC690();
    sub_213F4DBA0();
    v27 = v4;
  }

  return sub_213DE36FC(v27, v25, v26);
}

uint64_t sub_213EFC440@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for Platter(0);
  v9 = *(v8 + 28);
  *&a4[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v10 = *(v8 + 32);
  *&a4[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  result = swift_storeEnumTagMultiPayload();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t type metadata accessor for Platter(uint64_t a1)
{
  result = qword_281183880;
  if (!qword_281183880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_213EFC560()
{
  result = qword_281183358;
  if (!qword_281183358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7D90, &qword_213F61EB0);
    sub_213EFC648(&qword_281182C68, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183358);
  }

  return result;
}

uint64_t sub_213EFC648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_213EFC690()
{
  result = qword_27C8FBD70;
  if (!qword_27C8FBD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBD60, &qword_213F62048);
    sub_213EFC71C();
    sub_213EFC804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBD70);
  }

  return result;
}

unint64_t sub_213EFC71C()
{
  result = qword_27C8FBD78;
  if (!qword_27C8FBD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBD80, &qword_213F62058);
    sub_213EFC648(&qword_281182C68, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    sub_213DE3AE4(&qword_27C8FBD88, &qword_27C8FBD90, &qword_213F62060, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBD78);
  }

  return result;
}

unint64_t sub_213EFC804()
{
  result = qword_27C8FBD98;
  if (!qword_27C8FBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBD98);
  }

  return result;
}

void sub_213EFC89C(uint64_t a1)
{
  sub_213EFC970(319, &qword_281183528, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    sub_213EFC970(319, &qword_281183520, MEMORY[0x277CDF7E8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213EFC970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213F4CEF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_213EFC9C4()
{
  result = qword_27C8FBDA0;
  if (!qword_27C8FBDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBDA8, &qword_213F620D0);
    sub_213EFC560();
    sub_213EFC690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBDA0);
  }

  return result;
}

uint64_t sub_213EFCA50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD80, &qword_213F62058);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AudioPickerViewModel.init(options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_213F4CB30();
  result = type metadata accessor for AudioPickerViewModel(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

int *AudioPickerViewModel.AudioOption.init(name:symbol:axID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_213F4CB30();
  result = type metadata accessor for AudioPickerViewModel.AudioOption(0);
  v15 = (a7 + result[5]);
  *v15 = a1;
  v15[1] = a2;
  v16 = (a7 + result[6]);
  *v16 = a3;
  v16[1] = a4;
  v17 = (a7 + result[7]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t static AudioPickerViewModel.AudioOption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for AudioPickerViewModel.AudioOption(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_213F4F830();
}

uint64_t sub_213EFCC28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213DE3164(v2, &v14 - v9, &qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4CEA0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_213EFCE28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AudioPickerView(0);
  sub_213DE3164(v1 + *(v10 + 20), v9, &qword_27C8F7AC0, &qword_213F52760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D3B0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_213EFD030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (*(a1 + v3) == *(a2 + v3) && *(a1 + v3 + 8) == *(a2 + v3 + 8))
  {
    return 1;
  }

  else
  {
    return sub_213F4F830();
  }
}

double AudioPickerView.init(model:currentAudioOption:audioTypeChangeHandler:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for AudioPickerView(0);
  v11 = v10[5];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v12 = (a5 + v10[9]);
  sub_213F4EA90();
  *v12 = v18;
  v13 = a5 + v10[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBDB8, &unk_213F62160);
  sub_213F4EA90();
  *v13 = v18;
  v13[8] = BYTE8(v18);
  *(v13 + 2) = v19;
  v14 = a5 + v10[11];
  sub_213F4EA90();
  *v14 = v18;
  *(v14 + 1) = *(&v18 + 1);
  *(a5 + v10[12]) = 0x400C000000000000;
  sub_213F01974(a1, a5 + v10[6], type metadata accessor for AudioPickerViewModel);
  v15 = (a5 + v10[7]);
  *v15 = a3;
  v15[1] = a4;

  sub_213F00F80(a2, a1);
  v16 = v10[8];
  sub_213F4EA90();

  sub_213F01384(a2, type metadata accessor for AudioPickerViewModel.AudioOption);
  sub_213F01384(a1, type metadata accessor for AudioPickerViewModel);
  result = *&v18;
  *(a5 + v16) = v18;
  return result;
}

void *sub_213EFD2B0(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AudioPickerViewModel.AudioOption(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AudioPickerView(0);
  v9 = (v2 + v8[8]);
  v11 = v9[1];
  v17 = *v9;
  v10 = v17;
  v18 = v11;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEA0, &qword_213F622C8);
  sub_213F4EAB0();
  v12 = v2 + v8[6];
  v13 = *(v12 + *(type metadata accessor for AudioPickerViewModel(0) + 20));
  v17 = v10;
  v18 = v11;
  result = sub_213F4EAA0();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *(v13 + 16))
  {
    sub_213F01974(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, v7, type metadata accessor for AudioPickerViewModel.AudioOption);
    (*(v2 + v8[7]))(v7);
    return sub_213F01384(v7, type metadata accessor for AudioPickerViewModel.AudioOption);
  }

  __break(1u);
  return result;
}

uint64_t AudioPickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F75C0, &qword_213F54760);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBDC0, &qword_213F62170);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  *v8 = sub_213F4DA40();
  *(v8 + 1) = 0x4020000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBDC8, &qword_213F62178);
  sub_213EFD708(v1, &v8[*(v9 + 44)]);
  v10 = *MEMORY[0x277CDFA00];
  v11 = sub_213F4D390();
  (*(*(v11 - 8) + 104))(v5, v10, v11);
  sub_213F02440(&qword_281183488, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_213F4F1F0();
  if (result)
  {
    sub_213DE3AE4(&qword_27C8FBDD0, &qword_27C8FBDC0, &qword_213F62170, MEMORY[0x277CE1198]);
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760, MEMORY[0x277D84470]);
    sub_213F4E570();
    sub_213DE36FC(v5, &qword_27C8F75C0, &qword_213F54760);
    sub_213DE36FC(v8, &qword_27C8FBDC0, &qword_213F62170);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBDD8, &qword_213F62180);
    v13 = a1 + *(result + 36);
    *v13 = xmmword_213F620E0;
    *(v13 + 16) = 16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213EFD708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v80 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBE30, &qword_213F62248) - 8;
  v3 = MEMORY[0x28223BE20](v78);
  v79 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v66 - v5;
  v7 = type metadata accessor for AudioPickerView(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v75 = v10;
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBE38, &qword_213F62250);
  v13 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12);
  v77 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - v16;
  v70 = sub_213F4EEE0();
  v69 = v18;
  v76 = type metadata accessor for AudioPickerView;
  sub_213F01974(a1, v11, type metadata accessor for AudioPickerView);
  v74 = *(v9 + 80);
  v19 = (v74 + 16) & ~v74;
  v72 = v19;
  v20 = swift_allocObject();
  v73 = type metadata accessor for AudioPickerView;
  sub_213F01BB8(v11, v20 + v19, type metadata accessor for AudioPickerView);
  v68 = sub_213F4E0B0();
  sub_213F4CDA0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v86 = 0;
  v67 = sub_213F4E040();
  sub_213F4CDA0();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  LOBYTE(v83) = 0;
  v37 = sub_213F4EEE0();
  v39 = v38;
  v40 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBE40, &unk_213F62258) + 36)];
  v41 = *MEMORY[0x277CE0118];
  v42 = sub_213F4D950();
  (*(*(v42 - 8) + 104))(v40, v41, v42);
  v43 = [objc_opt_self() tertiarySystemFillColor];
  v44 = sub_213F4E870();
  *&v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A28, &qword_213F529B0) + 36)] = v44;
  v45 = &v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBE48, &qword_213F62268) + 36)];
  *v45 = v37;
  v45[1] = v39;
  v46 = v69;
  *v17 = v70;
  *(v17 + 1) = v46;
  *(v17 + 2) = sub_213F019DC;
  *(v17 + 3) = v20;
  v17[32] = v68;
  *(v17 + 9) = *&v89[3];
  *(v17 + 33) = *v89;
  *(v17 + 5) = v22;
  *(v17 + 6) = v24;
  *(v17 + 7) = v26;
  *(v17 + 8) = v28;
  v17[72] = 0;
  *(v17 + 19) = *&v88[3];
  *(v17 + 73) = *v88;
  v17[80] = v67;
  *(v17 + 21) = *&v87[3];
  *(v17 + 81) = *v87;
  *(v17 + 11) = v30;
  *(v17 + 12) = v32;
  *(v17 + 13) = v34;
  *(v17 + 14) = v36;
  v17[120] = 0;
  sub_213F4EEE0();
  sub_213F4D0C0();
  v47 = &v17[*(v13 + 44)];
  v48 = v84;
  *v47 = v83;
  *(v47 + 1) = v48;
  *(v47 + 2) = v85;
  v49 = sub_213F4D890();
  v50 = v71;
  v51 = *(v71 + *(v8 + 56));
  *v6 = v49;
  *(v6 + 1) = v51;
  v6[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBE50, &unk_213F62270);
  v52 = v50 + *(v8 + 32);
  v53 = *(*(v52 + *(type metadata accessor for AudioPickerViewModel(0) + 20)) + 16);
  v81 = 0;
  v82 = v53;
  swift_getKeyPath();
  sub_213F01974(v50, v11, v76);
  v54 = v72;
  v55 = swift_allocObject();
  sub_213F01BB8(v11, v55 + v54, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA3C0, &qword_213F5D780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBE58, &qword_213F622A0);
  sub_213E800BC();
  sub_213F01CFC(&qword_27C8FBE60, &qword_27C8FBE58, &qword_213F622A0, sub_213F01A74);
  sub_213F4ECC0();
  LOBYTE(v52) = sub_213F4E040();
  sub_213F4CDA0();
  v56 = &v6[*(v78 + 44)];
  *v56 = v52;
  *(v56 + 1) = v57;
  *(v56 + 2) = v58;
  *(v56 + 3) = v59;
  *(v56 + 4) = v60;
  v56[40] = 0;
  v61 = v77;
  sub_213DD2C48(v17, v77);
  v62 = v79;
  sub_213DE3164(v6, v79, &qword_27C8FBE30, &qword_213F62248);
  v63 = v80;
  sub_213DD2C48(v61, v80);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBE98, &qword_213F622C0);
  sub_213DE3164(v62, v63 + *(v64 + 48), &qword_27C8FBE30, &qword_213F62248);
  sub_213DE36FC(v6, &qword_27C8FBE30, &qword_213F62248);
  sub_213DE36FC(v17, &qword_27C8FBE38, &qword_213F62250);
  sub_213DE36FC(v62, &qword_27C8FBE30, &qword_213F62248);
  return sub_213DE36FC(v61, &qword_27C8FBE38, &qword_213F62250);
}

uint64_t sub_213EFDDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v180 = a1;
  v175 = a3;
  v164 = sub_213F4D160();
  v161 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v157 = v4;
  v158 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_213F4DBD0();
  MEMORY[0x28223BE20](v156);
  v154 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_213F4CEE0();
  v163 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v159 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEA8, &qword_213F62330);
  v168 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v166 = &v134 - v7;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEB0, &qword_213F62338);
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v171 = &v134 - v8;
  v150 = type metadata accessor for AudioPickerView(0);
  v152 = *(v150 - 1);
  MEMORY[0x28223BE20](v150);
  v151 = v9;
  v155 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEB8, &qword_213F62340);
  MEMORY[0x28223BE20](v160);
  v177 = (&v134 - v10);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEC0, &qword_213F62348);
  v169 = *(v172 - 8);
  v11 = MEMORY[0x28223BE20](v172);
  v167 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v162 = &v134 - v13;
  v14 = sub_213F4CEA0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v134 - v19;
  v21 = sub_213F4EC90();
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v139 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v134 - v24;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A28, &qword_213F529B0);
  MEMORY[0x28223BE20](v176);
  v138 = &v134 - v26;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A30, &qword_213F62350);
  MEMORY[0x28223BE20](v137);
  v140 = &v134 - v27;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEC8, &qword_213F62358);
  MEMORY[0x28223BE20](v136);
  v142 = &v134 - v28;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBED0, &qword_213F62360);
  MEMORY[0x28223BE20](v141);
  v144 = &v134 - v29;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBED8, &qword_213F62368);
  MEMORY[0x28223BE20](v143);
  KeyPath = &v134 - v30;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEE0, &qword_213F62370);
  MEMORY[0x28223BE20](v146);
  v149 = &v134 - v31;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEE8, &qword_213F62378);
  v32 = MEMORY[0x28223BE20](v148);
  v153 = &v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v145 = &v134 - v35;
  MEMORY[0x28223BE20](v34);
  v179 = &v134 - v36;
  v37 = *MEMORY[0x277CE0118];
  v38 = sub_213F4D950();
  v39 = *(*(v38 - 8) + 104);
  v40 = v25;
  v135 = v37;
  v134 = v39;
  v39(v25, v37, v38);
  v41 = a2;
  sub_213EFCC28(v20);
  (*(v15 + 104))(v18, *MEMORY[0x277CDF3C0], v14);
  LOBYTE(a2) = sub_213F4CE90();
  v42 = *(v15 + 8);
  v42(v18, v14);
  v42(v20, v14);
  if (a2)
  {
    v43 = [objc_opt_self() systemFillColor];
    v44 = sub_213F4E870();
  }

  else
  {
    v44 = sub_213F4E8F0();
  }

  v45 = v44;
  v46 = v138;
  sub_213F01BB8(v40, v138, MEMORY[0x277CE1260]);
  *(v46 + *(v176 + 36)) = v45;
  sub_213F4D140();
  v47 = v150;
  v48 = v41 + *(v150 + 6);
  v178 = v41;
  v176 = *(v48 + *(type metadata accessor for AudioPickerViewModel(0) + 20));
  v49 = *(v41 + v47[12]);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v50 = v140;
  sub_213DE2B44(v46, v140, &qword_27C8F7A28, &qword_213F529B0);
  v51 = (v50 + *(v137 + 36));
  v52 = v185;
  *v51 = v184;
  v51[1] = v52;
  v51[2] = v186;
  v138 = sub_213F4EEE0();
  v54 = v53;
  v55 = v142;
  v56 = &v142[*(v136 + 36)];
  v57 = v139;
  v134(v139, v135, v38);
  v58 = sub_213F4DD90();
  sub_213F4CF60();
  sub_213F01974(v57, v56, MEMORY[0x277CE1260]);
  v59 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEF0, &qword_213F62380) + 36);
  v60 = v188;
  *v59 = v187;
  *(v59 + 16) = v60;
  *(v59 + 32) = v189;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEF8, &qword_213F62388);
  v62 = (v56 + *(v61 + 52));
  *v62 = v58;
  v62[1] = 1025758986;
  *(v56 + *(v61 + 56)) = 256;
  v63 = sub_213F4EEE0();
  v65 = v64;
  sub_213F01384(v57, MEMORY[0x277CE1260]);
  v66 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF00, &qword_213F62390) + 36));
  *v66 = v63;
  v66[1] = v65;
  v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF08, &qword_213F62398) + 36);
  v68 = *MEMORY[0x277CE13D8];
  v69 = sub_213F4EF90();
  (*(*(v69 - 8) + 104))(v56 + v67, v68, v69);
  v70 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF10, &unk_213F623A0) + 36));
  *v70 = v138;
  v70[1] = v54;
  sub_213DE2B44(v50, v55, &qword_27C8F7A30, &qword_213F62350);
  v71 = v178;
  v72 = (v178 + v47[11]);
  v73 = *v72;
  v74 = *(v72 + 1);
  LOBYTE(v182) = *v72;
  v183 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v181)
  {
    v75 = 0.98;
  }

  else
  {
    v75 = 1.0;
  }

  sub_213F4F040();
  v77 = v76;
  v79 = v78;
  v80 = v144;
  sub_213DE2B44(v55, v144, &qword_27C8FBEC8, &qword_213F62358);
  v81 = v80 + *(v141 + 36);
  *v81 = v75;
  *(v81 + 8) = v75;
  *(v81 + 16) = v77;
  *(v81 + 24) = v79;
  sub_213F4D140();
  v83 = (v71 + v47[8]);
  v84 = v71;
  v86 = v83[1];
  v87 = (v82 - v49 * (*(v176 + 16) + -1.0)) / *(v176 + 16);
  v182 = *v83;
  v85 = v182;
  v183 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEA0, &qword_213F622C8);
  sub_213F4EAA0();
  v88 = v87 * v181;
  v182 = v85;
  v183 = v86;
  sub_213F4EAA0();
  v89 = v88 + v49 * v181;
  v90 = KeyPath;
  sub_213DE2B44(v80, KeyPath, &qword_27C8FBED0, &qword_213F62360);
  v91 = v90 + *(v143 + 36);
  *v91 = v89;
  *(v91 + 8) = 0;
  v92 = sub_213F4EF20();
  v182 = v85;
  v183 = v86;
  sub_213F4EAA0();
  v93 = v181;
  v94 = v149;
  v95 = sub_213DE2B44(v90, v149, &qword_27C8FBED8, &qword_213F62368);
  v96 = (v94 + *(v146 + 36));
  *v96 = v92;
  v96[1] = v93;
  v97 = MEMORY[0x216052350](v95, 0.5, 0.7, 0.0);
  LOBYTE(v182) = v73;
  v183 = v74;
  sub_213F4EAA0();
  v98 = v181;
  v99 = v145;
  sub_213DE2B44(v94, v145, &qword_27C8FBEE0, &qword_213F62370);
  v100 = v99 + *(v148 + 36);
  *v100 = v97;
  *(v100 + 8) = v98;
  sub_213DE2B44(v99, v179, &qword_27C8FBEE8, &qword_213F62378);
  v101 = sub_213F4D8A0();
  v102 = v177;
  *v177 = v101;
  *(v102 + 1) = v49;
  *(v102 + 16) = 0;
  v148 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF18, &qword_213F623B0) + 44);
  v103 = *(v176 + 16);
  v182 = 0;
  v183 = v103;
  KeyPath = swift_getKeyPath();
  v104 = v155;
  v150 = type metadata accessor for AudioPickerView;
  sub_213F01974(v84, v155, type metadata accessor for AudioPickerView);
  v105 = *(v152 + 80);
  v106 = v151 + ((v105 + 16) & ~v105);
  v107 = (v105 + 16) & ~v105;
  v152 = v107;
  v176 = v105 | 7;
  v149 = v106;
  v108 = swift_allocObject();
  v151 = type metadata accessor for AudioPickerView;
  sub_213F01BB8(v104, v108 + v107, type metadata accessor for AudioPickerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA3C0, &qword_213F5D780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF20, &qword_213F623B8);
  sub_213E800BC();
  sub_213F01CFC(&qword_27C8FBF28, &qword_27C8FBF20, &qword_213F623B8, sub_213F01CCC);
  sub_213F4ECC0();
  sub_213F4DDE0();
  v109 = v159;
  sub_213F4CEB0();
  sub_213F01974(v178, v104, type metadata accessor for AudioPickerView);
  v110 = v161;
  v111 = v158;
  v112 = v164;
  (*(v161 + 16))(v158, v180, v164);
  v113 = &v106[*(v110 + 80)] & ~*(v110 + 80);
  v114 = swift_allocObject();
  v115 = v152;
  v116 = v151;
  sub_213F01BB8(v104, v114 + v152, v151);
  (*(v110 + 32))(v114 + v113, v111, v112);
  sub_213F02440(&qword_27C8FBFA8, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  sub_213F02440(&qword_27C8FBFB0, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
  v117 = v166;
  v118 = v165;
  sub_213F4ED00();

  (*(v163 + 8))(v109, v118);
  sub_213F01974(v178, v104, v150);
  v119 = swift_allocObject();
  sub_213F01BB8(v104, v119 + v115, v116);
  sub_213DE3AE4(&qword_27C8FBFB8, &qword_27C8FBEA8, &qword_213F62330, MEMORY[0x277CDFB18]);
  v120 = v171;
  v121 = v170;
  sub_213F4ECF0();

  (*(v168 + 8))(v117, v121);
  sub_213F4CF00();
  sub_213DE3AE4(&qword_27C8FBFC0, &qword_27C8FBEB8, &qword_213F62340, MEMORY[0x277CE1138]);
  sub_213DE3AE4(&qword_27C8FBFC8, &qword_27C8FBEB0, &qword_213F62338, MEMORY[0x277CDF728]);
  v122 = v162;
  v123 = v174;
  v124 = v177;
  sub_213F4E790();
  (*(v173 + 8))(v120, v123);
  sub_213DE36FC(v124, &qword_27C8FBEB8, &qword_213F62340);
  v125 = v153;
  sub_213DE3164(v179, v153, &qword_27C8FBEE8, &qword_213F62378);
  v126 = v169;
  v127 = *(v169 + 16);
  v128 = v167;
  v129 = v172;
  v127(v167, v122, v172);
  v130 = v175;
  sub_213DE3164(v125, v175, &qword_27C8FBEE8, &qword_213F62378);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBFD0, &qword_213F62400);
  v127((v130 + *(v131 + 48)), v128, v129);
  v132 = *(v126 + 8);
  v132(v122, v129);
  sub_213DE36FC(v179, &qword_27C8FBEE8, &qword_213F62378);
  v132(v128, v129);
  return sub_213DE36FC(v125, &qword_27C8FBEE8, &qword_213F62378);
}