uint64_t sub_24F1B931C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_24F9289E8();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for GSKVideo(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 + *(type metadata accessor for ActivityCard(0) + 32);
  v16 = type metadata accessor for CommonCardAttributes(0);
  sub_24E60169C(v15 + *(v16 + 32), v10, &qword_27F213FB8, &unk_24F93C010);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &qword_27F213FB8, &unk_24F93C010);
    sub_24E60169C(v15 + *(v16 + 28), v5, &qword_27F213FB0, &qword_24F93E6B0);
    v17 = v35;
    if ((*(v35 + 48))(v5, 1, v6) == 1)
    {
      sub_24E601704(v5, &qword_27F213FB0, &qword_24F93E6B0);
LABEL_14:
      v30 = type metadata accessor for ColorGroup(0);
      return (*(*(v30 - 8) + 56))(v36, 1, 1, v30);
    }

    v24 = v34;
    (*(v17 + 32))(v34, v5, v6);
    v25 = sub_24F9289A8();
    if (!v25)
    {
      (*(v17 + 8))(v24, v6);
      goto LABEL_14;
    }

    v26 = qword_27F20FEE0;
    v27 = v25;
    if (v26 != -1)
    {
      v32 = v27;
      swift_once();
      v27 = v32;
    }

    v28 = v27;
    v29 = sub_24F926BD8();
    ColorGrouping.colorGroup(for:)(v29);

    return (*(v17 + 8))(v24, v6);
  }

  else
  {
    sub_24F1BBDE0(v10, v14, type metadata accessor for GSKVideo);
    v18 = sub_24F9289A8();
    if (!v18)
    {
      sub_24F1BBE48(v14, type metadata accessor for GSKVideo);
      goto LABEL_14;
    }

    v19 = qword_27F20FEE0;
    v20 = v18;
    if (v19 != -1)
    {
      v31 = v20;
      swift_once();
      v20 = v31;
    }

    v21 = v20;
    v22 = sub_24F926BD8();
    ColorGrouping.colorGroup(for:)(v22);

    return sub_24F1BBE48(v14, type metadata accessor for GSKVideo);
  }
}

uint64_t sub_24F1B97E0@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for ColorGroup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2u)
  {
    if (a1 == 3)
    {

      v26 = 3;
LABEL_17:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
      (*(*(v28 - 8) + 56))(v17, v26, 5, v28);
      if ((a2 & 1) == 0)
      {
        return sub_24F1BBDE0(v17, a4, type metadata accessor for CardContentBackgroundStyle);
      }

      sub_24F1BBE48(v17, type metadata accessor for CardContentBackgroundStyle);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
      return (*(*(v29 - 8) + 56))(a4, 5, 5, v29);
    }

    if (a1 == 4)
    {
      sub_24E60169C(a3, v10, &qword_27F2190D8, &unk_24F94BD70);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_24E601704(v10, &qword_27F2190D8, &unk_24F94BD70);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
        return (*(*(v23 - 8) + 56))(a4, 1, 5, v23);
      }

      else
      {
        sub_24F1BBDE0(v10, v14, type metadata accessor for ColorGroup);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
        v31 = *(v30 + 48);
        sub_24F1BBDE0(v14, a4, type metadata accessor for ColorGroup);
        (*(v12 + 56))(a4, 0, 1, v11);
        *(a4 + v31) = 1;
        return (*(*(v30 - 8) + 56))(a4, 0, 5, v30);
      }
    }

LABEL_9:
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
    v19 = *(*(v25 - 8) + 56);
    v20 = v25;
    v21 = a4;
    v22 = 1;
    goto LABEL_10;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  if (a1 != 1)
  {
    v27 = sub_24F92CE08();

    if (v27)
    {
      v26 = 3;
    }

    else
    {
      v26 = 1;
    }

    goto LABEL_17;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
  v19 = *(*(v18 - 8) + 56);
  v20 = v18;
  v21 = a4;
  v22 = 2;
LABEL_10:

  return v19(v21, v22, 5, v20);
}

uint64_t sub_24F1B9C8C@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v110 = a3;
  v112 = a2;
  v137 = a4;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BD8, &unk_24F967D00);
  MEMORY[0x28223BE20](v135);
  v136 = &v106 - v5;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DC0, &unk_24F9D1E50);
  MEMORY[0x28223BE20](v133);
  v134 = &v106 - v6;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DA8, &unk_24F97E340);
  MEMORY[0x28223BE20](v126);
  v129 = &v106 - v7;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D98, &qword_24F9D1E60);
  MEMORY[0x28223BE20](v118);
  v120 = &v106 - v8;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BB8, &unk_24F93E750);
  MEMORY[0x28223BE20](v123);
  v122 = &v106 - v9;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B20, &unk_24F94FF90);
  MEMORY[0x28223BE20](v128);
  v127 = &v106 - v10;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B10, &unk_24F93E700);
  MEMORY[0x28223BE20](v132);
  v131 = &v106 - v11;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98, &unk_24F93E740);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v111 = &v106 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B88, &unk_24F94FFC0);
  MEMORY[0x28223BE20](v117);
  v124 = &v106 - v13;
  v138 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v138);
  v114 = (&v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v141 = &v106 - v16;
  v113 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v113);
  v18 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v19 - 8);
  v130 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v119 = &v106 - v22;
  MEMORY[0x28223BE20](v23);
  v125 = &v106 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1A8, &qword_24F94DAB0);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v106 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2273A8, &qword_24F97E350);
  MEMORY[0x28223BE20](v29 - 8);
  v121 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v106 - v32;
  v34 = type metadata accessor for ActivityCard(0);
  v35 = (a1 + *(v34 + 44));
  v36 = v35[1];
  v37 = MEMORY[0x277CE13B8];
  v139 = v33;
  v140 = v18;
  if (v36)
  {
    v142 = *v35;
    v143 = v36;
    sub_24E600AEC();

    v38 = sub_24F925E18();
    v40 = v39;
    v42 = v41;
    v108 = v26;
    sub_24F925A08();
    v43 = sub_24F925C98();
    v107 = v25;
    v44 = v43;
    v46 = v45;
    v109 = a1;
    v48 = v47;
    v106 = v49;

    sub_24E600B40(v38, v40, v42 & 1);

    v142 = v44;
    v143 = v46;
    v50 = v48 & 1;
    a1 = v109;
    v144 = v50;
    v145 = v106;
    sub_24F9268B8();
    v37 = MEMORY[0x277CE13B8];
    v51 = v50;
    v52 = v139;
    sub_24E600B40(v44, v46, v51);

    LODWORD(v38) = sub_24F9251C8();
    *&v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358, &qword_24F9D1F60) + 36)] = v38;
    v53 = v107;
    v54 = *(v107 + 36);
    v55 = *v37;
    v56 = sub_24F927748();
    v57 = &v28[v54];
    v18 = v140;
    (*(*(v56 - 8) + 104))(v57, v55, v56);
    sub_24E6009C8(v28, v52, &qword_27F21A1A8, &qword_24F94DAB0);
    (*(v108 + 56))(v52, 0, 1, v53);
  }

  else
  {
    (*(v26 + 56))(v33, 1, 1, v25);
  }

  sub_24F1BBD78(a1 + *(v34 + 32), v18, type metadata accessor for CommonCardAttributes);
  if (v112 > 2u)
  {
    v58 = v141;
    v59 = v138;
    v60 = v114;
    if (v112 == 3)
    {
      sub_24F4E9558(v110, v114);
      goto LABEL_24;
    }

    if (v112 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v61 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v61 = qword_27F39E658;
    }

LABEL_23:
    v62 = __swift_project_value_buffer(v59, v61);
    sub_24F1BBD78(v62, v60, type metadata accessor for CardLayoutMetrics);
    goto LABEL_24;
  }

  v58 = v141;
  v59 = v138;
  v60 = v114;
  if (!v112)
  {
    if (qword_27F211300 != -1)
    {
      swift_once();
    }

    v61 = qword_27F39E640;
    goto LABEL_23;
  }

  if (v112 != 1)
  {
    if (qword_27F2112F8 != -1)
    {
      swift_once();
    }

    v61 = qword_27F39E628;
    goto LABEL_23;
  }

  sub_24F4E9E44(v110, v114);
LABEL_24:
  sub_24F1BBDE0(v60, v58, type metadata accessor for CardLayoutMetrics);
  v63 = &v18[*(v113 + 52)];
  v64 = *(v63 + 1);
  if (!v64)
  {
    goto LABEL_29;
  }

  v65 = *v63;
  v66 = HIBYTE(v64) & 0xF;
  if ((v64 & 0x2000000000000000) == 0)
  {
    v66 = v65 & 0xFFFFFFFFFFFFLL;
  }

  if (v66)
  {
    v142 = v65;
    v143 = v64;
    sub_24E600AEC();

    v67 = sub_24F925E18();
    v69 = v68;
    v71 = v70;
    v72 = sub_24F925C98();
    v74 = v73;
    v76 = v75;
    sub_24E600B40(v67, v69, v71 & 1);

    LODWORD(v142) = sub_24F9251C8();
    v77 = sub_24F925C58();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    sub_24E600B40(v72, v74, v76 & 1);

    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
    v85 = *v37;
    v86 = sub_24F927748();
    v87 = v111;
    (*(*(v86 - 8) + 104))(&v111[v84], v85, v86);
    *v87 = v77;
    *(v87 + 8) = v79;
    *(v87 + 16) = v81 & 1;
    *(v87 + 24) = v83;
    v88 = *(v58 + *(v138 + 104));
    KeyPath = swift_getKeyPath();
    v90 = v116;
    v91 = v87 + *(v116 + 36);
    *v91 = KeyPath;
    *(v91 + 8) = v88;
    *(v91 + 16) = 0;
    v92 = v124;
    sub_24F1BBCB8(v87, v124);
    v93 = 0;
  }

  else
  {
LABEL_29:
    v93 = 1;
    v92 = v124;
    v90 = v116;
  }

  (*(v115 + 56))(v92, v93, 1, v90);
  sub_24E60169C(v92, v120, &qword_27F214B88, &unk_24F94FFC0);
  swift_storeEnumTagMultiPayload();
  sub_24F1BB8CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
  v94 = v122;
  sub_24F924E28();
  sub_24E60169C(v94, v129, &qword_27F214BB8, &unk_24F93E750);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B30, &unk_24F93E710);
  sub_24E63C434();
  sub_24E63C8B0();
  v95 = v127;
  sub_24F924E28();
  sub_24E601704(v94, &qword_27F214BB8, &unk_24F93E750);
  sub_24E60169C(v95, v134, &qword_27F214B20, &unk_24F94FF90);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BC8, &unk_24F94DA90);
  sub_24E63C3A8();
  sub_24E63C960();
  v96 = v131;
  sub_24F924E28();
  sub_24E601704(v95, &qword_27F214B20, &unk_24F94FF90);
  sub_24E60169C(v96, v136, &qword_27F214B10, &unk_24F93E700);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C50, &unk_24F93E790);
  sub_24E63C31C();
  sub_24E63CD80();
  v97 = v119;
  sub_24F924E28();
  sub_24E601704(v96, &qword_27F214B10, &unk_24F93E700);
  sub_24E601704(v92, &qword_27F214B88, &unk_24F94FFC0);
  sub_24F1BBE48(v140, type metadata accessor for CommonCardAttributes);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B00, &unk_24F94FF80);
  (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
  v99 = v125;
  sub_24E6009C8(v97, v125, &qword_27F214A20, &unk_24F94D670);
  sub_24F1BBE48(v141, type metadata accessor for CardLayoutMetrics);
  v100 = v139;
  v101 = v121;
  sub_24E60169C(v139, v121, &qword_27F2273A8, &qword_24F97E350);
  v102 = v130;
  sub_24E60169C(v99, v130, &qword_27F214A20, &unk_24F94D670);
  v103 = v137;
  sub_24E60169C(v101, v137, &qword_27F2273A8, &qword_24F97E350);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2273B0, &qword_24F97E358);
  sub_24E60169C(v102, v103 + *(v104 + 48), &qword_27F214A20, &unk_24F94D670);
  sub_24E601704(v99, &qword_27F214A20, &unk_24F94D670);
  sub_24E601704(v100, &qword_27F2273A8, &qword_24F97E350);
  sub_24E601704(v102, &qword_27F214A20, &unk_24F94D670);
  return sub_24E601704(v101, &qword_27F2273A8, &qword_24F97E350);
}

uint64_t sub_24F1BAC70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B9F8, &qword_24F9D1FC8);
  MEMORY[0x28223BE20](v74);
  v75 = (&v65 - v3);
  v4 = sub_24F924A78();
  MEMORY[0x28223BE20](v4 - 8);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BA00, &unk_24F9D1FD0);
  MEMORY[0x28223BE20](v73);
  v6 = &v65 - v5;
  if (v1[3])
  {
    v72 = v6;
    v7 = v1 + *(type metadata accessor for TitleView(0) + 24);
    v71 = v7;
    v70 = type metadata accessor for CardLayoutMetrics(0);
    v8 = &v7[*(v70 + 88)];
    v68 = *(v8 + 3);
    v69 = *(v8 + 4);
    v67 = __swift_project_boxed_opaque_existential_1(v8, v68);

    sub_24F924A68();
    sub_24F924A58();
    sub_24F926DF8();
    v9 = sub_24F925E28();
    v11 = v10;
    v13 = v12;
    LODWORD(v79) = sub_24F9251C8();
    v14 = sub_24F925C58();
    v16 = v15;
    v18 = v17;
    sub_24E600B40(v9, v11, v13 & 1);

    sub_24F924A28();
    sub_24E600B40(v14, v16, v18 & 1);

    sub_24F924A58();
    v19 = v1[1];
    v66 = *v1;
    v65 = v19;
    sub_24F924A48();
    sub_24F924A58();
    sub_24F924A98();
    v20 = sub_24F925DE8();
    v22 = v21;
    v24 = v23;
    v25 = sub_24F925C58();
    v27 = v26;
    LOBYTE(v7) = v28;
    sub_24E600B40(v20, v22, v24 & 1);

    v29 = v70;
    v30 = v71;
    v31 = sub_24F925C98();
    v33 = v32;
    LOBYTE(v20) = v34;
    v36 = v35;
    sub_24E600B40(v25, v27, v7 & 1);

    v37 = *&v30[*(v29 + 84)];
    KeyPath = swift_getKeyPath();
    v79 = v31;
    v80 = v33;
    v81 = v20 & 1;
    v82 = v36;
    v83 = KeyPath;
    v84 = v37;
    v85 = 0;
    v77 = v66;
    v78 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F68, &qword_24F9414F0);
    sub_24E67283C();
    sub_24E600AEC();
    v39 = v72;
    sub_24F926538();
    sub_24E600B40(v31, v33, v20 & 1);

    sub_24E60169C(v39, v75, &qword_27F23BA00, &unk_24F9D1FD0);
    swift_storeEnumTagMultiPayload();
    sub_24F1BC1CC();
    sub_24F924E28();
    return sub_24E601704(v39, &qword_27F23BA00, &unk_24F9D1FD0);
  }

  else
  {
    v41 = v1 + *(type metadata accessor for TitleView(0) + 24);
    v42 = type metadata accessor for CardLayoutMetrics(0);
    __swift_project_boxed_opaque_existential_1(&v41[*(v42 + 88)], *&v41[*(v42 + 88) + 24]);
    v43 = *v2;
    v44 = v2[1];
    v79 = v43;
    v80 = v44;
    sub_24E600AEC();

    v45 = sub_24F925E18();
    v47 = v46;
    v49 = v48;
    v50 = sub_24F925C58();
    v52 = v51;
    v54 = v53;
    sub_24E600B40(v45, v47, v49 & 1);

    v55 = sub_24F925C98();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    sub_24E600B40(v50, v52, v54 & 1);

    v62 = *&v41[*(v42 + 84)];
    v63 = swift_getKeyPath();
    v64 = v75;
    *v75 = v55;
    v64[1] = v57;
    *(v64 + 16) = v59 & 1;
    v64[3] = v61;
    v64[4] = v63;
    v64[5] = v62;
    *(v64 + 48) = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F68, &qword_24F9414F0);
    sub_24F1BC1CC();
    sub_24E67283C();
    return sub_24F924E28();
  }
}

uint64_t type metadata accessor for TitleView(uint64_t a1)
{
  result = qword_27F23B9D8;
  if (!qword_27F23B9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F1BB2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a1)
  {
    case 2u:
      if (a3)
      {
        v5 = sub_24F92CE08();

        v3 = v5 ^ 1;
      }

      else
      {

        v3 = 0;
      }

      return v3 & 1;
    case 0xCu:
      v3 = a3 < 2u;
      return v3 & 1;
    case 4u:
      v3 = (a3 & 0xFE) == 4;
      return v3 & 1;
  }

  return sub_24E92D030(a1, a2, a3);
}

unint64_t sub_24F1BB41C()
{
  result = qword_27F23B960;
  if (!qword_27F23B960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B948, &unk_24F9D1EC0);
    sub_24F1BB4A8();
    sub_24F1BB75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B960);
  }

  return result;
}

unint64_t sub_24F1BB4A8()
{
  result = qword_27F23B968;
  if (!qword_27F23B968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B940, &qword_24F9D1EB8);
    sub_24F1BB560();
    sub_24F1BB61C(&qword_27F23B978, &qword_27F23B910, &qword_24F9D1E88, sub_24F1BB6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B968);
  }

  return result;
}

unint64_t sub_24F1BB560()
{
  result = qword_27F23B970;
  if (!qword_27F23B970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B938, &qword_24F9D1EB0);
    sub_24E74524C();
    sub_24F1BBD30(&qword_27F227370, type metadata accessor for ActivityCardVisualView, &unk_24F9A9788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B970);
  }

  return result;
}

uint64_t sub_24F1BB61C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_24F1BBD30(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F1BB6D0()
{
  result = qword_27F23B980;
  if (!qword_27F23B980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B900, &qword_24F9D1E78);
    sub_24E717E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B980);
  }

  return result;
}

unint64_t sub_24F1BB75C()
{
  result = qword_27F23B988;
  if (!qword_27F23B988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B8E8, &qword_24F9D1E38);
    sub_24F1BB7E8();
    sub_24F1BBA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B988);
  }

  return result;
}

unint64_t sub_24F1BB7E8()
{
  result = qword_27F23B990;
  if (!qword_27F23B990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B8E0, &qword_24F9D1E30);
    sub_24F1BB8CC(&qword_27F23B998, &qword_27F23B8F0, &unk_24F9D1E40, sub_24F1BB948);
    sub_24E602068(&qword_27F227348, &qword_27F2272A0, &qword_24F97E218, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B990);
  }

  return result;
}

uint64_t sub_24F1BB8CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24F1BB948()
{
  result = qword_27F23B9A0;
  if (!qword_27F23B9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B9A8, &qword_24F9D1EE8);
    sub_24E63C774();
    sub_24F1BBD30(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B9A0);
  }

  return result;
}

unint64_t sub_24F1BBA04()
{
  result = qword_27F23B9B0;
  if (!qword_27F23B9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B8B0, &qword_24F9D1DF8);
    sub_24F1BBA90();
    sub_24F1BBBFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B9B0);
  }

  return result;
}

unint64_t sub_24F1BBA90()
{
  result = qword_27F23B9B8;
  if (!qword_27F23B9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B8C8, &unk_24F9D1E10);
    sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    sub_24F1BBB48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B9B8);
  }

  return result;
}

unint64_t sub_24F1BBB48()
{
  result = qword_27F23B9C0;
  if (!qword_27F23B9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B8B8, &qword_24F9D1E00);
    sub_24F1BBD30(&qword_27F21A288, type metadata accessor for CardSmallGameIcon, &unk_24F9AE9A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B9C0);
  }

  return result;
}

unint64_t sub_24F1BBBFC()
{
  result = qword_27F23B9C8;
  if (!qword_27F23B9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B8A0, &qword_24F9D1DE8);
    sub_24F1BBD30(&qword_27F23B9D0, type metadata accessor for TitleView, &unk_24F9D1F74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B9C8);
  }

  return result;
}

uint64_t sub_24F1BBCB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98, &unk_24F93E740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1BBD30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F1BBD78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F1BBDE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F1BBE48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F1BBEBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CardLayoutMetrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F1BBF7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CardLayoutMetrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F1BC020(uint64_t a1)
{
  sub_24E6BCB04();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CardLayoutMetrics(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F1BC0F8()
{
  result = qword_27F23B9F0;
  if (!qword_27F23B9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B950, &unk_24F9D1ED0);
    sub_24F1BB41C();
    sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B9F0);
  }

  return result;
}

unint64_t sub_24F1BC1CC()
{
  result = qword_27F23BA08;
  if (!qword_27F23BA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BA00, &unk_24F9D1FD0);
    sub_24E67283C();
    sub_24F1BBD30(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BA08);
  }

  return result;
}

unint64_t sub_24F1BC28C()
{
  result = qword_27F23BA10;
  if (!qword_27F23BA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BA18, &unk_24F9D1FE0);
    sub_24F1BC1CC();
    sub_24E67283C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BA10);
  }

  return result;
}

uint64_t AdvertActionMetrics.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a3;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v56 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = &v50 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v50 - v20;
  v61 = a1;
  sub_24F928398();
  v54 = sub_24F928348();
  v23 = v22;
  v24 = *(v6 + 8);
  v24(v21, v5);
  if (!v23)
  {
    v33 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v34 = 0x65636E6174736E69;
    v34[1] = 0xEA00000000006449;
    v34[2] = &type metadata for AdvertActionMetrics;
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D22530], v33);
    swift_willThrow();
    v35 = sub_24F9285B8();
    (*(*(v35 - 8) + 8))(a2, v35);
LABEL_10:
    v32 = v61;
    return (v24)(v32, v5);
  }

  v59 = v23;
  v60 = a2;
  sub_24F928398();
  v25 = sub_24F928348();
  v27 = v26;
  v24(v18, v5);
  if (!v27)
  {

    v36 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v38 = v37;
    *v37 = 0x64496D616461;
    v37[1] = 0xE600000000000000;
LABEL_9:
    v37[2] = &type metadata for AdvertActionMetrics;
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D22530], v36);
    swift_willThrow();
    v39 = sub_24F9285B8();
    (*(*(v39 - 8) + 8))(v60, v39);
    goto LABEL_10;
  }

  v53 = v25;
  sub_24F928398();
  v52 = sub_24F928348();
  v29 = v28;
  v24(v15, v5);
  if (!v29)
  {

    v36 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v38 = v37;
    *v37 = 0x6449656C646E7562;
    v37[1] = 0xE800000000000000;
    goto LABEL_9;
  }

  sub_24F928398();
  sub_24F1BCA78();
  v30 = v58;
  sub_24F928218();
  if (v30)
  {

    v31 = sub_24F9285B8();
    (*(*(v31 - 8) + 8))(v60, v31);
    v24(v61, v5);
    v32 = v12;
    return (v24)(v32, v5);
  }

  v24(v12, v5);
  LODWORD(v58) = v64;
  v41 = v57;
  sub_24F928398();
  sub_24F1BCACC();
  sub_24F928218();
  v42 = v5;
  v43 = v60;
  v51 = v27;
  v24(v41, v42);
  LOBYTE(v41) = v63;
  v44 = v56;
  sub_24F928398();
  sub_24F1BCB20();
  sub_24F928218();
  v45 = sub_24F9285B8();
  (*(*(v45 - 8) + 8))(v43, v45);
  v24(v61, v42);
  result = (v24)(v44, v42);
  v46 = v62;
  v47 = v55;
  v48 = v59;
  *v55 = v54;
  v47[1] = v48;
  v49 = v51;
  v47[2] = v53;
  v47[3] = v49;
  v47[4] = v52;
  v47[5] = v29;
  *(v47 + 48) = v41;
  *(v47 + 49) = v58;
  *(v47 + 50) = v46;
  return result;
}

unint64_t sub_24F1BCA78()
{
  result = qword_27F23BA20;
  if (!qword_27F23BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BA20);
  }

  return result;
}

unint64_t sub_24F1BCACC()
{
  result = qword_27F23BA28;
  if (!qword_27F23BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BA28);
  }

  return result;
}

unint64_t sub_24F1BCB20()
{
  result = qword_27F23BA30;
  if (!qword_27F23BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BA30);
  }

  return result;
}

void __swiftcall AdvertActionMetrics.init(instanceId:adamId:bundleId:advertType:invocation:purchaseType:)(GameStoreKit::AdvertActionMetrics *__return_ptr retstr, Swift::String instanceId, GameStoreKit::AdamId adamId, Swift::String bundleId, GameStoreKit::AdvertActionMetrics::AdvertType advertType, GameStoreKit::AdvertActionMetrics::Invocation invocation, GameStoreKit::AdvertActionMetrics::PurchaseType purchaseType)
{
  v7 = *adamId.underlyingAdamID._countAndFlagsBits;
  v8 = *(adamId.underlyingAdamID._countAndFlagsBits + 8);
  v9 = *bundleId._object;
  v10 = *advertType;
  v11 = *invocation;
  retstr->instanceId = instanceId;
  retstr->adamId.underlyingAdamID._countAndFlagsBits = v7;
  retstr->adamId.underlyingAdamID._object = v8;
  retstr->bundleId._countAndFlagsBits = adamId.underlyingAdamID._object;
  retstr->bundleId._object = bundleId._countAndFlagsBits;
  retstr->advertType = v9;
  retstr->invocation = v10;
  retstr->purchaseType = v11;
}

uint64_t AdvertActionMetrics.instanceId.getter()
{
  v1 = *v0;

  return v1;
}

double AdvertActionMetrics.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t AdvertActionMetrics.bundleId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

GameStoreKit::AdvertActionMetrics::Invocation_optional __swiftcall AdvertActionMetrics.Invocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AdvertActionMetrics.Invocation.rawValue.getter()
{
  v1 = 0x725072656B72616DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7250747265766461;
  }
}

uint64_t sub_24F1BCD00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x725072656B72616DLL;
  v4 = 0xEB00000000737365;
  v5 = 0x800000024FA421D0;
  if (v2 != 1)
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000024FA421D0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x7250747265766461;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xED00006465737365;
  }

  v8 = 0x725072656B72616DLL;
  if (*a2 == 1)
  {
    v5 = 0xEB00000000737365;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7250747265766461;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xED00006465737365;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F1BCE14()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1BCED0(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F1BCF78()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F1BD03C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006465737365;
  v4 = 0xEB00000000737365;
  v5 = 0x725072656B72616DLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000024FA421D0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7250747265766461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AdvertActionMetrics.AdvertType.rawValue.getter()
{
  if (*v0)
  {
    return 0x7041656461637261;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_24F1BD108(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7041656461637261;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2)
  {
    v4 = 0xEB00000000707041;
  }

  else
  {
    v4 = 0xE900000000000070;
  }

  if (*a2)
  {
    v5 = 0x7041656461637261;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (*a2)
  {
    v6 = 0xE900000000000070;
  }

  else
  {
    v6 = 0xEB00000000707041;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F1BD1BC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1BD24C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F1BD2C8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F1BD360(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x7041656461637261;
  }

  v3 = 0xEB00000000707041;
  if (*v1)
  {
    v3 = 0xE900000000000070;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t AdvertActionMetrics.PurchaseType.rawValue.getter()
{
  if (*v0)
  {
    return 0x726564726F657270;
  }

  else
  {
    return 0x647261646E617473;
  }
}

unint64_t sub_24F1BD3F0()
{
  result = qword_27F23BA38;
  if (!qword_27F23BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BA38);
  }

  return result;
}

unint64_t sub_24F1BD448()
{
  result = qword_27F23BA40;
  if (!qword_27F23BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BA40);
  }

  return result;
}

uint64_t sub_24F1BD49C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x726564726F657270;
  }

  else
  {
    v2 = 0x647261646E617473;
  }

  if (*a2)
  {
    v3 = 0x726564726F657270;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24F92CE08();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_24F1BD528()
{
  result = qword_27F23BA48;
  if (!qword_27F23BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BA48);
  }

  return result;
}

uint64_t sub_24F1BD57C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1BD5F4(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F1BD650()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F1BD6D0(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x726564726F657270;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_24F1BD720(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
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

uint64_t sub_24F1BD768(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HeroCarousel.__allocating_init(deserializing:using:)(char *a1, char *a2)
{
  v4 = swift_allocObject();
  HeroCarousel.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *HeroCarousel.init(deserializing:using:)(char *a1, char *a2)
{
  v3 = v2;
  v69 = *v3;
  v86 = sub_24F9285B8();
  v6 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v78 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = &v69 - v9;
  MEMORY[0x28223BE20](v10);
  v76 = &v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v12 - 8);
  v81 = &v69 - v13;
  v83 = sub_24F91F6B8();
  v74 = *(v83 - 1);
  MEMORY[0x28223BE20](v83);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v71 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v70 = &v69 - v20;
  MEMORY[0x28223BE20](v21);
  v75 = &v69 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v69 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v69 - v27;
  v91 = a1;
  sub_24F928398();
  v29 = sub_24F928348();
  v84 = v16;
  v77 = v17;
  v82 = v25;
  if (v30)
  {
    v87 = v29;
    v88 = v30;
  }

  else
  {
    sub_24F91F6A8();
    v31 = sub_24F91F668();
    v32 = a2;
    v33 = v6;
    v35 = v34;
    (*(v74 + 1))(v15, v83);
    v87 = v31;
    v88 = v35;
    v6 = v33;
    a2 = v32;
  }

  sub_24F92C7F8();
  v83 = *(v17 + 8);
  v83(v28, v16);
  v79 = v6;
  v36 = *&v89[16];
  *(v3 + 9) = *v89;
  *(v3 + 11) = v36;
  v3[13] = v90;
  sub_24F929608();
  sub_24F928398();
  v37 = *(v6 + 16);
  v38 = v76;
  v39 = v86;
  v37(v76, a2, v86);
  v40 = v81;
  sub_24F929548();
  v72 = OBJC_IVAR____TtC12GameStoreKit12HeroCarousel_impressionMetrics;
  sub_24E65E0D4(v40, v3 + OBJC_IVAR____TtC12GameStoreKit12HeroCarousel_impressionMetrics);
  v41 = v3;
  v42 = v85;
  v81 = a2;
  v74 = v37;
  v37(v85, a2, v39);
  sub_24F928398();
  v37(v38, v42, v39);
  v73 = type metadata accessor for HeroCarouselItem(0);
  sub_24F1BE370(&qword_27F23BA50, type metadata accessor for HeroCarouselItem, &protocol conformance descriptor for HeroCarouselItem);
  v43 = v41;
  v41[2] = sub_24F92B698();
  v44 = v91;
  sub_24F928398();
  v45 = v86;
  v46 = v74;
  v74(v38, v42, v86);
  v47 = v44;
  v41[3] = sub_24F92B698();
  v48 = v75;
  sub_24F928398();
  v49 = v78;
  v46(v78, v42, v45);
  v50 = v80;
  AutoScrollConfiguration.init(deserializing:using:)(v48, v49, v89);
  if (!v50)
  {
    v82 = 0;
    v52 = *&v89[24];
    *(v43 + 32) = v89[0];
    *(v43 + 5) = *&v89[8];
    v43[7] = v52;
    v53 = v70;
    sub_24F928398();
    v54 = sub_24F928278();
    v55 = v53;
    v57 = v83;
    v56 = v84;
    v83(v55, v84);
    *(v43 + 64) = (v54 == 2) | v54 & 1;
    v58 = v71;
    sub_24F928398();
    v59 = sub_24F928278();
    v57(v58, v56);
    *(v43 + 65) = (v59 == 2) | v59 & 1;
    v60 = v43[2];
    if (v60 >> 62)
    {
      v61 = sub_24F92C738();
    }

    else
    {
      v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v62 = v79;
    if (v61)
    {
      goto LABEL_11;
    }

    v63 = v43[3];
    if (v63 >> 62)
    {
      if (sub_24F92C738())
      {
        goto LABEL_11;
      }
    }

    else if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      v64 = *(v62 + 8);
      v64(v81, v45);
      v83(v47, v84);
      v64(v85, v45);
      return v43;
    }

    v66 = sub_24F92AC38();
    sub_24F1BE370(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v67 = 0x736D657469;
    v67[1] = 0xE500000000000000;
    v67[2] = v69;
    (*(*(v66 - 8) + 104))(v67, *MEMORY[0x277D22530], v66);
    swift_willThrow();
    v68 = *(v62 + 8);
    v68(v81, v45);
    v83(v47, v84);
    v68(v85, v45);

    return v43;
  }

  v51 = *(v79 + 8);
  v51(v81, v45);
  v83(v47, v84);
  v51(v42, v45);

  sub_24E6585F8((v43 + 9));
  sub_24EB05BC8(v43 + v72);
  type metadata accessor for HeroCarousel(0);
  swift_deallocPartialClassInstance();
  return v43;
}

uint64_t type metadata accessor for HeroCarousel(uint64_t a1)
{
  result = qword_27F23BA60;
  if (!qword_27F23BA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double HeroCarousel.autoScrollConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 40);
  *(a1 + 24) = result;
  return result;
}

uint64_t HeroCarousel.deinit()
{

  sub_24E6585F8(v0 + 72);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit12HeroCarousel_impressionMetrics);
  return v0;
}

uint64_t HeroCarousel.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 72);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit12HeroCarousel_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t sub_24F1BE370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_24F1BE3C8@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for HeroCarousel(0);
  v7 = swift_allocObject();
  result = HeroCarousel.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_24F1BE454(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t CancellablePromise.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  CancellablePromise.init()();
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v5;
  swift_retain_n();
  v9[3] = sub_24F929638();
  v9[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v9);

  sub_24F929628();
  sub_24F92A558();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v5;
}

double CancellablePromise.then(perform:orCatchError:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_24F92A958();

  return result;
}

uint64_t CancellablePromise.__allocating_init()()
{
  v0 = swift_allocObject();
  CancellablePromise.init()();
  return v0;
}

uint64_t CancellablePromise.init()()
{
  sub_24F92A9F8();
  *(v0 + 24) = sub_24F92A9E8();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  *(v0 + 32) = 0;
  return v0;
}

id CancellablePromise.resolve(_:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  [v3 lock];
  v4 = sub_24F1BE8E4(v1, a1);

  return [v3 unlock];
}

id CancellablePromise.reject(_:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  [v3 lock];
  v4 = sub_24F1BE934(v1, a1);

  return [v3 unlock];
}

double sub_24F1BE8E4(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 1) == 0)
  {

    sub_24F92A9C8();
  }

  return result;
}

double sub_24F1BE934(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 1) == 0)
  {

    sub_24F92A9A8();
  }

  return result;
}

uint64_t CancellablePromise.map<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  type metadata accessor for CancellablePromise(0, a4, a3, a4);
  v9 = swift_allocObject();
  CancellablePromise.init()();
  v10 = swift_allocObject();
  v11 = *(v8 + 80);
  v10[2] = v11;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v9;
  swift_retain_n();

  CancellablePromise.then(perform:orCatchError:on:)(sub_24F1BEC04, v10, sub_24F1BEC48, v12, a1);

  return v9;
}

uint64_t sub_24F1BEABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a4 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v11 - v7;
  v9(v6);
  CancellablePromise.resolve(_:)(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24F1BEBC4()
{

  return swift_deallocObject();
}

uint64_t sub_24F1BEC10()
{

  return swift_deallocObject();
}

uint64_t CancellablePromise.flatMap<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for CancellablePromise(0, AssociatedTypeWitness, v13, v14);
  v15 = swift_allocObject();
  CancellablePromise.init()();
  sub_24E615E00(a1, v20);
  v16 = swift_allocObject();
  v17 = *(v11 + 80);
  v16[2] = v17;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = v15;
  sub_24E612C80(v20, (v16 + 8));
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = v15;
  swift_retain_n();

  CancellablePromise.then(perform:orCatchError:on:)(sub_24F1BEF34, v16, sub_24F1BF884, v18, a1);

  return v15;
}

double sub_24F1BEDE4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a2(a1);
  v12 = swift_allocObject();
  v12[2] = a6;
  v12[3] = a7;
  v12[4] = a8;
  v12[5] = a4;
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a7;
  v13[4] = a8;
  v13[5] = a4;
  swift_retain_n();
  sub_24F92A558();
  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_24F1BEEEC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocObject();
}

uint64_t CancellablePromise.join<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  type metadata accessor for CancellablePromise(0, TupleTypeMetadata2, v9, v10);
  v11 = swift_allocObject();
  CancellablePromise.init()();
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a1;
  v12[6] = v11;
  v13 = swift_allocObject();
  v13[2] = v7;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = v11;
  v15[3] = sub_24F929638();
  v15[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v15);
  swift_retain_n();
  swift_unknownObjectRetain();
  sub_24F929628();
  CancellablePromise.then(perform:orCatchError:on:)(sub_24F1BF2FC, v12, sub_24F1BF4CC, v13, v15);

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v11;
}

uint64_t sub_24F1BF0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  (*(v10 + 16))(&v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v13 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a4;
  *(v14 + 3) = a5;
  *(v14 + 4) = a6;
  *(v14 + 5) = a3;
  (*(v10 + 32))(&v14[v13], &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a3;
  v18[3] = sub_24F929638();
  v18[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v18);
  swift_retain_n();
  sub_24F929628();
  sub_24F92A558();

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_24F1BF2BC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F1BF30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v18 - v13;
  v16 = *(v15 + 48);
  (*(*(a4 - 8) + 16))(&v18 - v13, a3, a4, v12);
  (*(*(AssociatedTypeWitness - 8) + 16))(&v14[v16], a1, AssociatedTypeWitness);
  CancellablePromise.resolve(_:)(v14);
  return (*(v11 + 8))(v14, TupleTypeMetadata2);
}

uint64_t sub_24F1BF494()
{

  return swift_deallocObject();
}

uint64_t CancellablePromise.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F1BF55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24E614970;

  return MEMORY[0x282180370](a1, v7, a3);
}

uint64_t sub_24F1BF6D0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F1BF7F0()
{

  return swift_deallocObject();
}

void static SocialUser.getHandleSet(contact:contactHandle:includeSocialProfiles:callProviders:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v69 = *a5;
  v67 = a5[1];
  v68 = a5[2];
  if (!a1)
  {
    if (a3)
    {
      *&v71 = a2;
      *(&v71 + 1) = a3;
      v70[0] = 64;
      v70[1] = 0xE100000000000000;
      sub_24E600AEC();

      if (sub_24F92C5F8())
      {
        v26 = 2;
      }

      else
      {
        v26 = 1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213858, &unk_24F9DFE90);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_24F93DE60;
      *(v27 + 32) = v26;
      *(v27 + 40) = a2;
      *(v27 + 48) = a3;
      sub_24F26E39C(v27, &v71);
      v64 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1D0, &qword_24F93B780);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_24F93DE60;
      *(v28 + 32) = v64;
      v29 = MEMORY[0x277D84F90];
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
      v29 = MEMORY[0x277D84F90];
    }

    goto LABEL_55;
  }

  v61 = a1;
  v8 = [v61 allTUHandles];
  sub_24E69A5C4(0, &unk_27F2376E0, 0x277D6EEE8);
  v9 = sub_24F92B5A8();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_29:
    v62 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

LABEL_28:
  v10 = sub_24F92C738();
  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_4:
  v11 = 0;
  v62 = MEMORY[0x277D84F90];
  do
  {
    v12 = v11;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x253052270](v12, v9);
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v15 = [v13 type] - 1;
      if (v15 < 3)
      {
        break;
      }

      ++v12;
      if (v11 == v10)
      {
        goto LABEL_30;
      }
    }

    v63 = a4;
    v16 = [v14 value];
    v17 = sub_24F92B0D8();
    v59 = v18;
    v60 = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213858, &unk_24F9DFE90);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24F93DE60;
    *(v19 + 32) = v15;
    *(v19 + 40) = v60;
    *(v19 + 48) = v59;
    *&v71 = MEMORY[0x277D84FA0];

    sub_24ED7CF18(v70, v15);

    v20 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_24E616D5C(0, *(v62 + 2) + 1, 1, v62);
    }

    v22 = *(v62 + 2);
    v21 = *(v62 + 3);
    if (v22 >= v21 >> 1)
    {
      v62 = sub_24E616D5C((v21 > 1), v22 + 1, 1, v62);
    }

    *(v62 + 2) = v22 + 1;
    v23 = &v62[16 * v22];
    *(v23 + 4) = v19;
    *(v23 + 5) = v20;
    a4 = v63;
  }

  while (v11 != v10);
LABEL_30:

  if ((a4 & 1) == 0)
  {

    v29 = MEMORY[0x277D84F90];
LABEL_54:
    v28 = v62;
    goto LABEL_55;
  }

  v30 = [v61 socialProfiles];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E458, &unk_24F95C3C8);
  v31 = sub_24F92B5A8();

  v32 = v31;
  v28 = v62;
  if (v31 >> 62)
  {
    goto LABEL_59;
  }

  v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v33)
  {
LABEL_60:

    v29 = MEMORY[0x277D84F90];
LABEL_55:
    v71 = v69;
    v72 = v67;
    v73 = v68;
    v52 = v67;

    v53 = v68;
    v54 = *(&v68 + 1);
    v55 = v69;
    v56 = *(&v69 + 1);
    sub_24F4B6440(&v71, v28, v29, a6);
    return;
  }

  while (v33 >= 1)
  {
    v28 = 0;
    v66 = v32 & 0xC000000000000001;
    v29 = MEMORY[0x277D84F90];
    v65 = v32;
    while (1)
    {
      if (v66)
      {
        v34 = MEMORY[0x253052270](v28);
      }

      else
      {
        v34 = *(v32 + 8 * v28 + 32);
      }

      v71 = v69;
      v72 = v67;
      v73 = v68;
      v35 = v34;
      v36 = v69;
      v37 = *(&v69 + 1);
      v38 = v67;

      v39 = v68;
      v40 = *(&v68 + 1);
      v41 = sub_24F7E8410(v35, &v71);
      v42 = *(v41 + 16);
      if (!v42)
      {

        goto LABEL_36;
      }

      v43 = v29[2];
      v44 = v43 + v42;
      if (__OFADD__(v43, v42))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v46 = v29[3] >> 1, v46 < v44))
      {
        if (v43 <= v44)
        {
          v47 = v43 + v42;
        }

        else
        {
          v47 = v43;
        }

        v29 = sub_24E616D0C(isUniquelyReferenced_nonNull_native, v47, 1, v29);
        v46 = v29[3] >> 1;
      }

      if (!*(v41 + 16))
      {
        goto LABEL_62;
      }

      v48 = v46 - v29[2];
      type metadata accessor for CallProviderConversationHandle(0);
      if (v48 < v42)
      {
        goto LABEL_57;
      }

      swift_arrayInitWithCopy();

      v49 = v29[2];
      v50 = __OFADD__(v49, v42);
      v51 = v49 + v42;
      if (v50)
      {
        goto LABEL_58;
      }

      v29[2] = v51;

LABEL_36:
      ++v28;
      v32 = v65;
      if (v33 == v28)
      {

        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v57 = v32;
    v58 = sub_24F92C738();
    v32 = v57;
    v33 = v58;
    if (!v58)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_62:

  __break(1u);
}

id sub_24F1BFED0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F9D2540;
  *(v0 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v1 = [objc_opt_self() descriptorForAllComparatorKeys];
  v2 = *MEMORY[0x277CBD020];
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = *MEMORY[0x277CBD098];
  v4 = *MEMORY[0x277CBCFC0];
  *(v0 + 56) = *MEMORY[0x277CBD098];
  *(v0 + 64) = v4;
  v5 = *MEMORY[0x277CBD018];
  v6 = *MEMORY[0x277CBD138];
  *(v0 + 72) = *MEMORY[0x277CBD018];
  *(v0 + 80) = v6;
  v13 = *MEMORY[0x277CBD160];
  *(v0 + 88) = *MEMORY[0x277CBD160];
  qword_27F23BAF0 = v0;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;

  return v13;
}

double static SocialUser.keysToFetch.getter()
{
  if (qword_27F210FC8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t static SocialUser.displayName(for:)(void *a1)
{
  v2 = [objc_opt_self() stringFromContact:a1 style:0];
  if (!v2)
  {
    v2 = [a1 nickname];
  }

  v3 = v2;
  v4 = sub_24F92B0D8();

  return v4;
}

void SocialUser.init(player:contacts:callProviders:includeSocialProfiles:preferPlayerName:)(uint64_t *a1@<X0>, void *a2@<X2>, int a3@<W3>, int a4@<W4>, void *a5@<X8>)
{
  LODWORD(v134) = a4;
  v132 = a3;
  v145 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
  MEMORY[0x28223BE20](v7 - 8);
  v133 = v120 - v8;
  v148 = type metadata accessor for Player(0);
  v9 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v121 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_24F91EAA8();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v12 - 8);
  v128 = v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v124 = v120 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v120 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = (v120 - v20);
  MEMORY[0x28223BE20](v22);
  v24 = (v120 - v23);
  v25 = type metadata accessor for SocialUser(0);
  v143 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = (v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = a2[1];
  *&v140 = *a2;
  *(&v140 + 1) = v28;
  v29 = a2[3];
  v141 = a2[2];
  v30 = a2[5];
  v138 = a2[4];
  v139 = v29;
  v137 = v30;
  v27[6] = 0;
  v27[7] = 0;
  v144 = v31;
  v32 = *(v31 + 36);
  v33 = type metadata accessor for CallProviderConversationHandleSet(0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v142 = v32;
  v131 = v33;
  v130 = v35;
  v129 = v34 + 56;
  (v35)(v27 + v32, 1, 1);
  v36 = [objc_opt_self() comparatorForNameSortOrder_];
  v37 = swift_allocObject();
  *(v37 + 16) = v36;

  *&v150 = sub_24EC4E10C(v39, v38);
  sub_24F1C2248(&v150, sub_24F1C233C, v37);

  v136 = v37;

  v40 = v150;
  v41 = v150 < 0 || (v150 & 0x4000000000000000) != 0;
  if (v41)
  {
    v44 = sub_24F92C738();
    v42 = v148;
    if (v44)
    {
      goto LABEL_6;
    }

LABEL_11:
    v147 = 0;
    goto LABEL_12;
  }

  v42 = v148;
  if (!*(v150 + 16))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v40 & 0xC000000000000001) != 0)
  {
    v43 = MEMORY[0x253052270](0, v40);
  }

  else
  {
    if (!*(v40 + 16))
    {
      __break(1u);
      goto LABEL_62;
    }

    v43 = *(v40 + 32);
  }

  v147 = v43;
LABEL_12:
  sub_24E6364A0(a1, v24);
  v45 = v9[6];
  v146 = v9 + 6;
  v149 = v45;
  if (v45(v24, 1, v42) == 1)
  {
    sub_24E601704(v24, &unk_27F23E1F0, &unk_24F9549C0);
    v9 = v147;
    if (!v147)
    {

      sub_24E601704(a1, &unk_27F23E1F0, &unk_24F9549C0);
      v70 = v143;
      v69 = v144;
      v54 = v145;
LABEL_41:
      sub_24E601704(v27 + v142, &unk_27F23E170, &unk_24F9EBA60);
      (*(v70 + 56))(v54, 1, 1, v69);
      return;
    }

    v123 = v41;
    v46 = [v147 identifier];
    v47 = sub_24F92B0D8();
    v49 = v48;

    v50 = v49;
  }

  else
  {
    v123 = v41;
    v47 = *v24;
    v50 = v24[1];

    sub_24F1C2344(v24, type metadata accessor for Player);
    v9 = v147;
  }

  *v27 = v47;
  v27[1] = v50;
  v120[1] = v50;
  sub_24E6364A0(a1, v21);
  if (v149(v21, 1, v42) == 1)
  {
    sub_24E601704(v21, &unk_27F23E1F0, &unk_24F9549C0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v51 = *v21;
    v52 = v21[1];

    sub_24F1C2344(v21, type metadata accessor for Player);
  }

  v27[2] = v51;
  v27[3] = v52;
  sub_24E6364A0(a1, v18);
  v53 = v149(v18, 1, v42);
  v135 = a1;
  v120[0] = v52;
  if (v53 == 1)
  {
    sub_24E601704(v18, &unk_27F23E1F0, &unk_24F9549C0);
    v54 = v145;
    if (v9)
    {
      goto LABEL_21;
    }

LABEL_28:
    v27[8] = 0;
    v27[9] = 0;
    goto LABEL_31;
  }

  v66 = a1;
  v68 = *(v18 + 2);
  v67 = *(v18 + 3);

  sub_24F1C2344(v18, type metadata accessor for Player);
  v54 = v145;
  if ((v68 || v67 != 0xE000000000000000) && (sub_24F92CE08() & 1) == 0)
  {
    v27[8] = v68;
    v27[9] = v67;
    a1 = v66;
    v42 = v148;
    goto LABEL_31;
  }

  a1 = v66;
  v42 = v148;
  if (!v9)
  {
    goto LABEL_28;
  }

LABEL_21:
  v55 = v54;
  v56 = v9;
  v57 = [v56 identifier];
  v58 = sub_24F92B0D8();
  v60 = v59;

  *&v150 = v58;
  *(&v150 + 1) = v60;
  v61 = v125;
  sub_24F91EA28();
  sub_24E600AEC();
  v62 = sub_24F92C578();
  v64 = v63;
  (*(v126 + 8))(v61, v127);
  if (!v64)
  {

    v62 = v58;
    v64 = v60;
  }

  *&v150 = 0x3A746361746E6F63;
  *(&v150 + 1) = 0xEA00000000002F2FLL;
  MEMORY[0x253050C20](v62, v64);

  v65 = *(&v150 + 1);
  v27[8] = v150;
  v27[9] = v65;
  v54 = v55;
  a1 = v135;
  v9 = v147;
  v42 = v148;
LABEL_31:
  if (((v134 & 1) == 0 || v149(a1, 1, v42) == 1) && v9)
  {
    if (v123)
    {
      if (sub_24F92C738() < 2)
      {
LABEL_36:
        v71 = v9;

        v72 = [objc_opt_self() stringFromContact:v71 style:0];
        if (!v72)
        {
          v72 = [v71 nickname];
        }

        v73 = v72;
        v74 = sub_24F92B0D8();
        v76 = v75;

        v27[4] = v74;
        v27[5] = v76;
        goto LABEL_56;
      }
    }

    else if (*(v40 + 16) < 2)
    {
      goto LABEL_36;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_24F93A400;
    v134 = v40 & 0xC000000000000001;
    if ((v40 & 0xC000000000000001) == 0)
    {
      if (!*(v40 + 16))
      {
        __break(1u);
        goto LABEL_64;
      }

      v78 = *(v40 + 32);
      v79 = v9;
      v80 = v78;
LABEL_46:
      v81 = v80;
      v82 = a1;
      v83 = objc_opt_self();
      v84 = [v83 stringFromContact:v81 style:0];
      v85 = MEMORY[0x277D837D0];
      if (!v84)
      {
        v84 = [v81 nickname];
      }

      v54 = v84;
      v86 = sub_24F92B0D8();
      v88 = v87;

      *(v42 + 56) = v85;
      *(v42 + 64) = sub_24E90A06C();
      *(v42 + 32) = v86;
      *(v42 + 40) = v88;
      if (v134)
      {
        v89 = MEMORY[0x253052270](1, v40);

        a1 = v82;
LABEL_53:
        v96 = v147;
        v97 = [v83 stringFromContact:v89 style:{0, v120[0]}];
        if (!v97)
        {
          v97 = [v89 nickname];
        }

        v98 = v97;
        v99 = sub_24F92B0D8();
        v101 = v100;

        *(v42 + 96) = v85;
        *(v42 + 104) = sub_24E90A06C();
        *(v42 + 72) = v99;
        *(v42 + 80) = v101;
        v102 = sub_24F92B0A8();
        v104 = v103;

        v27[4] = v102;
        v27[5] = v104;
        goto LABEL_56;
      }

      if (*(v40 + 16) >= 2uLL)
      {
        a1 = v82;
        v89 = *(v40 + 40);

        goto LABEL_53;
      }

LABEL_64:
      __break(1u);

      __break(1u);
      return;
    }

LABEL_62:
    v119 = v9;
    v80 = MEMORY[0x253052270](0, v40);
    goto LABEL_46;
  }

  v77 = v124;
  sub_24E6364A0(a1, v124);
  if (v149(v77, 1, v42) == 1)
  {

    sub_24E601704(v77, &unk_27F23E1F0, &unk_24F9549C0);
    sub_24E601704(a1, &unk_27F23E1F0, &unk_24F9549C0);

    v70 = v143;
    v69 = v144;
    goto LABEL_41;
  }

  v90 = v121;
  sub_24E61C0A8(v77, v121);
  v91 = (v90 + *(v42 + 28));
  v92 = v91[1];
  v27[4] = *v91;
  v27[5] = v92;

  v93 = sub_24F37B534();
  v95 = v94;
  sub_24F1C2344(v90, type metadata accessor for Player);

  v27[6] = v93;
  v27[7] = v95;
LABEL_56:
  v105 = v133;
  v106 = v128;
  sub_24E6364A0(a1, v128);
  v107 = v148;
  v108 = v149(v106, 1, v148);
  v122 = v27;
  if (v108 == 1)
  {
    sub_24E601704(v106, &unk_27F23E1F0, &unk_24F9549C0);
    v109 = 0;
    v110 = 0;
  }

  else
  {
    v111 = (v106 + *(v107 + 40));
    v109 = *v111;
    v110 = v111[1];

    sub_24F1C2344(v106, type metadata accessor for Player);
  }

  v112 = v140;
  v150 = v140;
  v113 = v141;
  v114 = v138;
  v151 = v141;
  v152 = v139;
  v115 = v137;
  v153 = v138;
  v154 = v137;
  v116 = v147;
  static SocialUser.getHandleSet(contact:contactHandle:includeSocialProfiles:callProviders:)(v147, v109, v110, v132 & 1, &v150, v105);

  v130(v105, 0, 1, v131);
  v117 = v122;
  sub_24F1416E4(v105, v122 + v142);
  v118 = v145;
  sub_24F14246C(v117, v145);
  (*(v143 + 56))(v118, 0, 1, v144);
  sub_24E601704(v135, &unk_27F23E1F0, &unk_24F9549C0);
  sub_24F1C2344(v117, type metadata accessor for SocialUser);
}

uint64_t sub_24F1C0F38(void *a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_24F92CDE8();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = sub_24F92CDE8();
  v7 = (*(a3 + 16))(a3, v5, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

BOOL sub_24F1C0FC8(id *a1, void **a2, uint64_t (*a3)(void *, void *))
{
  v4 = *a1;
  v5 = *a2;
  v6 = [*a1 imageDataAvailable];
  v7 = [v5 imageDataAvailable];
  if (v6)
  {
    if ((v7 & 1) == 0)
    {
      return 1;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v14 = sub_24E69A5C4(0, &qword_27F223450, 0x277CBDA58);
  v12[3] = v14;
  v13[0] = v4;
  v12[0] = v5;
  v9 = v4;
  v10 = v5;
  v11 = a3(v13, v12);
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v11 == -1;
}

uint64_t SocialUser.init(player:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for SocialUser(0) + 36);
  v5 = type metadata accessor for CallProviderConversationHandleSet(0);
  v13 = *(*(v5 - 8) + 56);
  (v13)((v5 - 8), &a2[v4], 1, 1, v5);
  v6 = *a1;
  v7 = a1[1];
  *a2 = *a1;
  *(a2 + 1) = v7;
  *(a2 + 2) = v6;
  *(a2 + 3) = v7;
  v8 = (a1 + *(type metadata accessor for Player(0) + 28));
  v9 = v8[1];
  *(a2 + 4) = *v8;
  *(a2 + 5) = v9;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  v11 = a1[2];
  v10 = a1[3];
  swift_bridgeObjectRetain_n();

  sub_24F1C2344(a1, type metadata accessor for Player);
  *(a2 + 8) = v11;
  *(a2 + 9) = v10;
  sub_24E601704(&a2[v4], &unk_27F23E170, &unk_24F9EBA60);

  return v13(&a2[v4], 1, 1, v5);
}

uint64_t sub_24F1C11F8(void **__src, void **a2, void **a3, void **a4, uint64_t (*a5)(void *, void *))
{
  v49 = a5;
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != a2 || &a2[v13] <= a4)
    {
      v26 = a2;
      memmove(a4, a2, 8 * v13);
      a2 = v26;
    }

    v27 = a2;
    v15 = &v5[v13];
    if (v11 < 8 || a2 <= v7)
    {
      goto LABEL_49;
    }

    v42 = v7;
    while (2)
    {
      __dst = v27;
      v28 = v27 - 1;
      --v6;
      v29 = v15;
      v44 = v27 - 1;
      while (1)
      {
        v30 = *--v29;
        v31 = *v28;
        v32 = v30;
        v33 = v31;
        v34 = [v32 imageDataAvailable];
        v35 = [v33 imageDataAvailable];
        if (v34)
        {
          break;
        }

        if ((v35 & 1) == 0)
        {
          goto LABEL_39;
        }

        v28 = v44;
LABEL_40:
        if (v6 + 1 != v15)
        {
          *v6 = *v29;
        }

        --v6;
        v15 = v29;
        if (v29 <= v5)
        {
          v15 = v29;
          v27 = __dst;
          goto LABEL_49;
        }
      }

      if ((v35 & 1) == 0)
      {

        v39 = v42;
        v28 = v44;
LABEL_42:
        if (v6 + 1 != __dst)
        {
          *v6 = *v28;
        }

        if (v15 <= v5 || (v27 = v28, v28 <= v39))
        {
          v27 = v28;
          goto LABEL_49;
        }

        continue;
      }

      break;
    }

LABEL_39:
    v48 = sub_24E69A5C4(0, &qword_27F223450, 0x277CBDA58);
    v46 = v48;
    v47[0] = v32;
    v45[0] = v33;
    v36 = v32;
    v37 = v33;
    v38 = v49(v47, v45);
    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_destroy_boxed_opaque_existential_1(v47);

    v39 = v42;
    v28 = v44;
    if (v38 == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v14 = a2;
  if (a4 != __src || &__src[v10] <= a4)
  {
    memmove(a4, __src, 8 * v10);
  }

  v15 = &v5[v10];
  if (v8 >= 8 && v14 < v6)
  {
    v43 = v15;
    do
    {
      v16 = *v5;
      v17 = *v14;
      v18 = v16;
      v19 = [v17 imageDataAvailable];
      v20 = [v18 imageDataAvailable];
      if (v19)
      {
        if ((v20 & 1) == 0)
        {

          goto LABEL_23;
        }
      }

      else if (v20)
      {

LABEL_18:
        v24 = v5;
        v25 = v7 == v5++;
        v15 = v43;
        if (v25)
        {
          goto LABEL_20;
        }

LABEL_19:
        *v7 = *v24;
        goto LABEL_20;
      }

      v48 = sub_24E69A5C4(0, &qword_27F223450, 0x277CBDA58);
      v46 = v48;
      v47[0] = v17;
      v45[0] = v18;
      v21 = v17;
      v22 = v18;
      v23 = v49(v47, v45);
      __swift_destroy_boxed_opaque_existential_1(v45);
      __swift_destroy_boxed_opaque_existential_1(v47);

      if (v23 != -1)
      {
        goto LABEL_18;
      }

LABEL_23:
      v24 = v14;
      v25 = v7 == v14++;
      v15 = v43;
      if (!v25)
      {
        goto LABEL_19;
      }

LABEL_20:
      ++v7;
    }

    while (v5 < v15 && v14 < v6);
  }

  v27 = v7;
LABEL_49:
  if (v27 != v5 || v27 >= (v5 + ((v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v27, v5, 8 * (v15 - v5));
  }

  return 1;
}

void sub_24F1C15CC(void **a1, void **a2, uint64_t *a3, uint64_t (*a4)(void *, void *))
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v24 = sub_24E86164C(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = v24 + 16;
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v13 = *v12;
      v14 = v8;
      v15 = &v8[16 * v9];
      v16 = *(v15 + 1);
      __src = (v10 + 8 * *v12);
      v17 = (v10 + 8 * *v15);
      v6 = (v10 + 8 * v16);

      sub_24F1C11F8(__src, v17, v6, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return;
      }

      if (v16 < v13)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v18 = *v14;
      if (v9 - 2 >= *v14)
      {
        goto LABEL_12;
      }

      *v12 = v13;
      *(v12 + 1) = v16;
      v19 = v18 - v9;
      if (v18 < v9)
      {
        goto LABEL_13;
      }

      v8 = v14;
      v9 = v18 - 1;
      memmove(v15, v15 + 16, 16 * v19);
      *v14 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }
}

uint64_t sub_24F1C1774(void ***a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t (*a5)(id *, void **), unint64_t a6)
{
  v123 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_retain_n();
LABEL_105:
    v105 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    sub_24F1C15CC(&v123, v105, a3, a5);
    if (!v117)
    {
    }

LABEL_108:
  }

  swift_retain_n();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      break;
    }

LABEL_24:
    v26 = a3[1];
    if (v10 >= v26)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v10, v9))
    {
      goto LABEL_128;
    }

    v27 = v10;
    if (v10 - v9 >= a4)
    {
      goto LABEL_32;
    }

    v28 = v9 + a4;
    if (__OFADD__(v9, a4))
    {
      goto LABEL_129;
    }

    if (v28 >= v26)
    {
      v28 = a3[1];
    }

    if (v28 < v9)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v10 == v28)
    {
LABEL_32:
      if (v10 < v9)
      {
        goto LABEL_127;
      }

      goto LABEL_33;
    }

    v107 = v8;
    v83 = *a3;
    v84 = *a3 + 8 * v10 - 8;
    v112 = v28;
    v85 = v9 - v10;
    while (2)
    {
      v115 = v27;
      v86 = *(v83 + 8 * v27);
      v87 = v85;
      v88 = v84;
      while (1)
      {
        v89 = *v88;
        v90 = v86;
        v91 = v89;
        v92 = [v90 imageDataAvailable];
        v93 = [v91 imageDataAvailable];
        if (!v92)
        {
          break;
        }

        if (v93)
        {
          goto LABEL_90;
        }

LABEL_91:
        if (!v83)
        {
          goto LABEL_132;
        }

        v97 = *v88;
        v86 = *(v88 + 8);
        *v88 = v86;
        *(v88 + 8) = v97;
        v88 -= 8;
        if (__CFADD__(v87++, 1))
        {
          goto LABEL_84;
        }
      }

      if ((v93 & 1) == 0)
      {
LABEL_90:
        v122 = sub_24E69A5C4(0, &qword_27F223450, 0x277CBDA58);
        v120 = v122;
        v121[0] = v90;
        v119[0] = v91;
        v94 = v90;
        v95 = v91;
        v96 = a5(v121, v119);
        __swift_destroy_boxed_opaque_existential_1(v119);
        __swift_destroy_boxed_opaque_existential_1(v121);

        if (v96 != -1)
        {
          goto LABEL_84;
        }

        goto LABEL_91;
      }

LABEL_84:
      v27 = v115 + 1;
      v84 += 8;
      --v85;
      if ((v115 + 1) != v112)
      {
        continue;
      }

      break;
    }

    v10 = v112;
    v8 = v107;
    if (v112 < v9)
    {
      goto LABEL_127;
    }

LABEL_33:
    v114 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_24E615ED8(0, *(v8 + 2) + 1, 1, v8);
    }

    v30 = *(v8 + 2);
    v29 = *(v8 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      v8 = sub_24E615ED8((v29 > 1), v30 + 1, 1, v8);
    }

    *(v8 + 2) = v31;
    v32 = v8 + 32;
    v33 = &v8[16 * v30 + 32];
    *v33 = v9;
    *(v33 + 1) = v114;
    v123 = v8;
    v111 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (v30)
    {
      v110 = v8 + 32;
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v35 = *(v8 + 4);
          v36 = *(v8 + 5);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_53:
          if (v38)
          {
            goto LABEL_118;
          }

          v51 = &v8[16 * v31];
          v53 = *v51;
          v52 = *(v51 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_121;
          }

          v57 = &v32[16 * v34];
          v59 = *v57;
          v58 = *(v57 + 1);
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_124;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_125;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v34 = v31 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v61 = &v8[16 * v31];
        v63 = *v61;
        v62 = *(v61 + 1);
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_67:
        if (v56)
        {
          goto LABEL_120;
        }

        v64 = &v32[16 * v34];
        v66 = *v64;
        v65 = *(v64 + 1);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_123;
        }

        if (v67 < v55)
        {
          goto LABEL_3;
        }

LABEL_74:
        if (v34 - 1 >= v31)
        {
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

        v72 = *a3;
        if (!*a3)
        {
          goto LABEL_133;
        }

        v73 = v8;
        v74 = &v32[16 * v34 - 16];
        v75 = *v74;
        v76 = v34;
        v77 = &v32[16 * v34];
        v78 = *(v77 + 1);
        v79 = (v72 + 8 * *v74);
        v80 = (v72 + 8 * *v77);
        v81 = (v72 + 8 * v78);

        sub_24F1C11F8(v79, v80, v81, v111, a5);
        if (v117)
        {

          v123 = v73;
          goto LABEL_108;
        }

        if (v78 < v75)
        {
          goto LABEL_113;
        }

        v82 = *(v73 + 2);
        if (v76 > v82)
        {
          goto LABEL_114;
        }

        *v74 = v75;
        *(v74 + 1) = v78;
        if (v76 >= v82)
        {
          goto LABEL_115;
        }

        v31 = v82 - 1;
        memmove(v77, v77 + 16, 16 * (v82 - 1 - v76));
        v8 = v73;
        *(v73 + 2) = v82 - 1;
        v32 = v110;
        if (v82 <= 2)
        {
LABEL_3:
          v123 = v8;
          goto LABEL_4;
        }
      }

      v39 = &v32[16 * v31];
      v40 = *(v39 - 8);
      v41 = *(v39 - 7);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_116;
      }

      v44 = *(v39 - 6);
      v43 = *(v39 - 5);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_117;
      }

      v46 = &v8[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_119;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_122;
      }

      if (v50 >= v42)
      {
        v68 = &v32[16 * v34];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_126;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_4:
    v7 = v114;
    v6 = a3[1];
    if (v114 >= v6)
    {
      goto LABEL_105;
    }
  }

  v11 = *a3;
  v121[0] = *(*a3 + 8 * v10);
  v119[0] = *(v11 + 8 * v7);
  v12 = v119[0];
  v13 = v121[0];
  v14 = v12;
  v113 = sub_24F1C0FC8(v121, v119, a5);
  if (v117)
  {

    goto LABEL_108;
  }

  v15 = v9 + 2;
  if (v9 + 2 >= v6)
  {
    goto LABEL_20;
  }

  v16 = (v11 + 8 * v9 + 16);
  while (1)
  {
    v20 = v15;
    v21 = *(v16 - 1);
    v22 = *v16;
    v23 = v21;
    v24 = [v22 imageDataAvailable];
    v25 = [v23 imageDataAvailable];
    if (v24)
    {
      if ((v25 & 1) == 0)
      {

        if (!v113)
        {
          v10 = v20;
          goto LABEL_24;
        }

        goto LABEL_10;
      }
    }

    else if (v25)
    {

      if (v113)
      {
        v15 = v20;
        v10 = v20 - 1;
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    v122 = sub_24E69A5C4(0, &qword_27F223450, 0x277CBDA58);
    v120 = v122;
    v121[0] = v22;
    v119[0] = v23;
    v17 = v22;
    v18 = v23;
    v19 = a5(v121, v119);
    __swift_destroy_boxed_opaque_existential_1(v119);
    __swift_destroy_boxed_opaque_existential_1(v121);

    if (((v113 ^ (v19 != -1)) & 1) == 0)
    {
      break;
    }

LABEL_10:
    v15 = v20 + 1;
    ++v16;
    if (v6 == v20 + 1)
    {
      v10 = v20;
      v15 = v6;
      goto LABEL_20;
    }
  }

  v15 = v20;
  v10 = v20 - 1;
LABEL_20:
  if (!v113)
  {
LABEL_23:
    v10 = v15;
    goto LABEL_24;
  }

LABEL_21:
  if (v15 >= v9)
  {
    if (v9 <= v10)
    {
      v99 = v15;
      v100 = 8 * v15 - 8;
      v101 = 8 * v9;
      v10 = v99;
      v102 = v9;
      while (1)
      {
        if (v102 != --v99)
        {
          v104 = *a3;
          if (!*a3)
          {
            goto LABEL_134;
          }

          v103 = *(v104 + v101);
          *(v104 + v101) = *(v104 + v100);
          *(v104 + v100) = v103;
        }

        ++v102;
        v100 -= 8;
        v101 += 8;
        if (v102 >= v99)
        {
          goto LABEL_24;
        }
      }
    }

    goto LABEL_23;
  }

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
  return result;
}

void sub_24F1C1F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void *, void *))
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_6:
    v25 = a3;
    v9 = *(v6 + 8 * a3);
    v20 = v8;
    v21 = v7;
    while (1)
    {
      v10 = *v7;
      v11 = v9;
      v12 = v10;
      LODWORD(v10) = [v11 imageDataAvailable];
      v13 = [v12 imageDataAvailable];
      if (v10)
      {
        if ((v13 & 1) == 0)
        {

          goto LABEL_12;
        }
      }

      else if (v13)
      {

LABEL_5:
        a3 = v25 + 1;
        v7 = v21 + 8;
        v8 = v20 - 1;
        if (v25 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v24 = sub_24E69A5C4(0, &qword_27F223450, 0x277CBDA58);
      v22[3] = v24;
      v23[0] = v11;
      v22[0] = v12;
      v14 = v11;
      v15 = v12;
      v16 = a5(v23, v22);
      __swift_destroy_boxed_opaque_existential_1(v22);
      __swift_destroy_boxed_opaque_existential_1(v23);

      if (v16 != -1)
      {
        goto LABEL_5;
      }

LABEL_12:
      if (!v6)
      {
        __break(1u);
        return;
      }

      v17 = *v7;
      v9 = *(v7 + 8);
      *v7 = v9;
      *(v7 + 8) = v17;
      v7 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t sub_24F1C20D0(uint64_t *a1, uint64_t (*a2)(id *, void **), unint64_t a3)
{
  v6 = a1[1];
  swift_retain_n();
  result = sub_24F92CD78();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24E69A5C4(0, &qword_27F223450, 0x277CBDA58);
        v10 = sub_24F92B618();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11[0] = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v9;

      sub_24F1C1774(v11, v12, a1, v8, a2, a3);

      *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {

    sub_24F1C1F5C(0, v6, 1, a1, a2);
  }
}

uint64_t sub_24F1C2248(uint64_t *a1, uint64_t (*a2)(id *, void **), unint64_t a3)
{
  v6 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_24E861E6C(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;

  sub_24F1C20D0(v10, a2, a3);

  sub_24F92C958();
}

uint64_t sub_24F1C2304()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24F1C2344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F1C23CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GameAchievementsListPageIntent(0);
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

uint64_t sub_24F1C249C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GameAchievementsListPageIntent(0);
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

uint64_t type metadata accessor for AchievementsPageView(uint64_t a1)
{
  result = qword_27F23BAF8;
  if (!qword_27F23BAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F1C25A0(uint64_t a1)
{
  type metadata accessor for GameAchievementsListPageIntent(319);
  if (v1 <= 0x3F)
  {
    sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      type metadata accessor for LocalPlayerProvider(319);
      if (v3 <= 0x3F)
      {
        sub_24F1C2654();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F1C2654()
{
  if (!qword_27F22F670)
  {
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22F670);
    }
  }
}

uint64_t sub_24F1C26C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v50 = sub_24F9220D8();
  v3 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = v4;
  v49 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BB08, &unk_24F9D25D8);
  MEMORY[0x28223BE20](v51);
  v52 = (&v44 - v5);
  v6 = type metadata accessor for AchievementsPageView(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F924848();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GameAchievementsListPageIntent(0);
  v56[3] = v13;
  v56[4] = sub_24F1C4418(&qword_27F21D338, type metadata accessor for GameAchievementsListPageIntent, &protocol conformance descriptor for GameAchievementsListPageIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  sub_24F1C4144(v1, boxed_opaque_existential_1, type metadata accessor for GameAchievementsListPageIntent);
  v15 = v1 + *(v6 + 28);
  v16 = *v15;
  if (*(v15 + 8) == 1)
  {
    v55 = v16 & 1;
  }

  else
  {

    sub_24F92BDC8();
    v45 = v9;
    v17 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = sub_24F9257A8();
    v46 = v7;
    v19 = v10;
    v20 = v18;
    v8 = v17;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E83C01C(v16, 0);
    (*(v19 + 8))(v12, v45);
    v16 = v55;
  }

  v46 = v16;
  v21 = *(v13 + 28);
  v22 = *(v2 + *(v6 + 20));
  if (qword_27F2113A0 != -1)
  {
    swift_once();
  }

  v23 = v50;
  v24 = __swift_project_value_buffer(v50, qword_27F39E730);
  sub_24F1C4144(v2, v8, type metadata accessor for AchievementsPageView);
  v25 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v26 = v2;
  v27 = swift_allocObject();
  sub_24F1C41AC(v8, v27 + v25, type metadata accessor for AchievementsPageView);
  sub_24E615E00(v56, v54);
  v28 = v49;
  (*(v3 + 16))(v49, v24, v23);
  v29 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v30 = (v48 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 2) = v22;
  *(v31 + 3) = sub_24F1C3EA8;
  *(v31 + 4) = v27;
  (*(v3 + 32))(&v31[v29], v28, v23);
  v32 = &v31[v30];
  *v32 = sub_24F1C30F0;
  v32[1] = 0;
  swift_retain_n();
  v33 = v52;
  sub_24EDA3F08(v54, v22, 1, sub_24F1C400C, v31, v52);
  v34 = v33 + *(v51 + 36);
  sub_24E7D14D8(v26 + v21, v34);
  v35 = type metadata accessor for PageBackgroundViewModifier(0);
  *(v34 + *(v35 + 20)) = 0;
  *(v34 + *(v35 + 24)) = 0;
  v36 = type metadata accessor for Page.Background(0);
  v37 = (*(*(v36 - 8) + 48))(v26 + v21, 1, v36) == 1;
  v38 = v37 & v46;
  KeyPath = swift_getKeyPath();
  v40 = v33;
  v41 = v53;
  sub_24F1C40CC(v40, v53);
  v42 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BB10, &qword_24F9D2610) + 36);
  *v42 = KeyPath;
  *(v42 + 8) = v38;
  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_24F1C2C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_24F92A708();
  sub_24F92CA38();
  v12 = v23;
  v13 = v24;
  v14 = type metadata accessor for Page(0);
  sub_24E7D14D8(a1 + *(v14 + 96), v11);
  v15 = sub_24F1C2F14();
  v17 = v16;
  v18 = *(a2 + *(type metadata accessor for AchievementsPageView(0) + 24));
  swift_getKeyPath();
  v23 = v18;
  sub_24F1C4418(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v19 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24F1C4144(v18 + v19, v8, type metadata accessor for Player);
  *a3 = v12;
  a3[1] = v13;
  v20 = type metadata accessor for AchievementsCountHeaderItemIntent(0);
  sub_24E7D14D8(v11, a3 + v20[5]);
  v21 = (a3 + v20[6]);
  *v21 = v15;
  v21[1] = v17;
  sub_24F1C4144(v8, a3 + v20[7], type metadata accessor for Player);
  v25 = &_s14descr2861AC041O5GamesON;
  v26 = sub_24EDA569C();
  LOBYTE(v23) = 0;
  LOBYTE(a2) = sub_24F91FE68();
  sub_24F1C4214(v8, type metadata accessor for Player);
  sub_24E7D1F98(v11);
  result = __swift_destroy_boxed_opaque_existential_1(&v23);
  *(a3 + v20[8]) = a2 & 1;
  return result;
}

uint64_t sub_24F1C2F14()
{
  v1 = type metadata accessor for GameMAPI(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for GameSource(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F1C4144(v0, v9, type metadata accessor for GameSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_24F1C41AC(v9, v6, type metadata accessor for Game);
    v11 = *v6;

    v12 = type metadata accessor for Game;
    v13 = v6;
LABEL_6:
    sub_24F1C4214(v13, v12);
    return v11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_24F1C41AC(v9, v3, type metadata accessor for GameMAPI);
    v11 = *v3;

    v12 = type metadata accessor for GameMAPI;
    v13 = v3;
    goto LABEL_6;
  }

  return *v9;
}

uint64_t sub_24F1C3124()
{
  v1 = type metadata accessor for AchievementsPageView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  type metadata accessor for GameSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v14 = type metadata accessor for GameMAPI(0);
    v15 = *(v14 + 28);
    v16 = sub_24F9289E8();
    (*(*(v16 - 8) + 8))(v3 + v15, v16);

    v17 = *(v14 + 40);
    v18 = sub_24F928388();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v3 + v17, 1, v18))
    {
      (*(v19 + 8))(v3 + v17, v18);
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_12;
      }

      v5 = type metadata accessor for Game(0);
      v6 = v5[18];
      v7 = sub_24F9289E8();
      v8 = *(v7 - 8);
      v9 = *(v8 + 8);
      v9(v3 + v6, v7);
      v10 = v5[19];
      if (!(*(v8 + 48))(v3 + v10, 1, v7))
      {
        v9(v3 + v10, v7);
      }

      v11 = v5[21];
      v12 = sub_24F920818();
      v13 = *(v12 - 8);
      if (!(*(v13 + 48))(v3 + v11, 1, v12))
      {
        (*(v13 + 8))(v3 + v11, v12);
      }
    }
  }

LABEL_12:
  v20 = type metadata accessor for GameAchievementsListPageIntent(0);
  v21 = v3 + *(v20 + 20);
  v22 = type metadata accessor for Player(0);
  if (!(*(*(v22 - 1) + 48))(v21, 1, v22))
  {
    v71 = v1;

    v23 = v22[6];
    v24 = sub_24F9289E8();
    v70 = *(v24 - 8);
    v69 = *(v70 + 8);
    v69(v21 + v23, v24);

    if (*(v21 + v22[9] + 8) != 1)
    {
    }

    v25 = v21 + v22[13];
    v26 = type metadata accessor for CallProviderConversationHandleSet(0);
    if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
    {
      v68 = v24;
      v27 = type metadata accessor for CallProviderConversationHandle(0);
      v28 = *(*(v27 - 8) + 48);
      if (!v28(v25, 1, v27))
      {

        v29 = *(type metadata accessor for CallProvider(0) + 24);
        if (!(*(v70 + 48))(v25 + v29, 1, v68))
        {
          v69(v25 + v29, v68);
        }
      }

      v30 = v25 + *(v26 + 20);
      v31 = v28(v30, 1, v27);
      v24 = v68;
      if (!v31)
      {

        v32 = *(type metadata accessor for CallProvider(0) + 24);
        if (!(*(v70 + 48))(v30 + v32, 1, v68))
        {
          v69(v30 + v32, v68);
        }
      }
    }

    if (*(v21 + v22[15] + 8))
    {
    }

    v33 = v21 + v22[16];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    v1 = v71;
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v33, 1, PlayedTogetherInfo))
    {

      v35 = type metadata accessor for Game(0);
      v69(v33 + v35[18], v24);
      v36 = v35[19];
      if (!(*(v70 + 48))(v33 + v36, 1, v24))
      {
        v69(v33 + v36, v24);
      }

      v37 = v24;

      v38 = v35[21];
      v39 = sub_24F920818();
      v40 = *(v39 - 8);
      if (!(*(v40 + 48))(v33 + v38, 1, v39))
      {
        (*(v40 + 8))(v33 + v38, v39);
      }

      v24 = v37;
      v1 = v71;
    }

    v41 = v21 + v22[17];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    if (!(*(*(ChallengeInfo - 8) + 48))(v41, 1, ChallengeInfo))
    {

      v43 = type metadata accessor for Game(0);
      v69(v41 + v43[18], v24);
      v44 = v43[19];
      if (!(*(v70 + 48))(v41 + v44, 1, v24))
      {
        v69(v41 + v44, v24);
      }

      v45 = v43[21];
      v46 = sub_24F920818();
      v47 = *(v46 - 8);
      if (!(*(v47 + 48))(v41 + v45, 1, v46))
      {
        (*(v47 + 8))(v41 + v45, v46);
      }
    }
  }

  v48 = v3 + *(v20 + 28);
  v49 = type metadata accessor for Page.Background(0);
  if (!(*(*(v49 - 8) + 48))(v48, 1, v49))
  {
    v51 = swift_getEnumCaseMultiPayload();
    if (v51 <= 1)
    {
      if (v51)
      {
        if (v51 == 1)
        {
          v53 = sub_24F9289E8();
          (*(*(v53 - 8) + 8))(v48, v53);
          v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v55 = sub_24F922348();
          v56 = *(v55 - 8);
          if (!(*(v56 + 48))(v48 + v54, 1, v55))
          {
            (*(v56 + 8))(v48 + v54, v55);
          }
        }
      }

      else
      {
        v67 = sub_24F9289E8();
        (*(*(v67 - 8) + 8))(v48, v67);
      }
    }

    else if (v51 == 2)
    {
      v57 = sub_24F9289E8();
      v58 = *(v57 - 8);
      if (!(*(v58 + 48))(v48, 1, v57))
      {
        (*(v58 + 8))(v48, v57);
      }

      v59 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v60 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v60 - 1) + 48))(v59, 1, v60))
      {
        v61 = sub_24F91F4A8();
        (*(*(v61 - 8) + 8))(v59, v61);
        (*(v58 + 8))(v59 + v60[5], v57);
        v62 = v60[9];
        v63 = sub_24F928698();
        v64 = *(v63 - 8);
        v65 = *(v64 + 48);
        if (!v65(v59 + v62, 1, v63))
        {
          (*(v64 + 8))(v59 + v62, v63);
        }

        v66 = v60[10];
        if (!v65(v59 + v66, 1, v63))
        {
          (*(v64 + 8))(v59 + v66, v63);
        }
      }
    }

    else if (v51 == 3 || v51 == 4)
    {
      v52 = sub_24F928388();
      (*(*(v52 - 8) + 8))(v48, v52);
    }
  }

  sub_24E83C01C(*(v3 + *(v1 + 28)), *(v3 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

uint64_t sub_24F1C3EA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for AchievementsPageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F1C2C84(a1, v6, a2);
}

uint64_t sub_24F1C3F28()
{
  v1 = sub_24F9220D8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F1C400C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_24F9220D8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_24EDA52F8(a1, v7, v8, v2 + v6, v10, v11, a2);
}

uint64_t sub_24F1C40CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BB08, &unk_24F9D25D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1C4144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F1C41AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F1C4214(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F1C4278()
{
  result = qword_27F23BB18;
  if (!qword_27F23BB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BB10, &qword_24F9D2610);
    sub_24F1C4330();
    sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8, &unk_24FA0B110, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BB18);
  }

  return result;
}

unint64_t sub_24F1C4330()
{
  result = qword_27F23BB20;
  if (!qword_27F23BB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BB08, &unk_24F9D25D8);
    sub_24E602068(qword_27F23BB28, &qword_27F22F6A8, &qword_24F99CEA0, &unk_24FA0AFB0);
    sub_24F1C4418(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier, &protocol conformance descriptor for PageBackgroundViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BB20);
  }

  return result;
}

uint64_t sub_24F1C4418(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F1C44BC()
{
  sub_24F92D068();
  sub_24F0A2C8C(v2, *v0);
  return sub_24F92D0B8();
}

uint64_t sub_24F1C4504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0, &unk_24F9949F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22[-1] - v11;
  v13 = sub_24F928AE8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, *MEMORY[0x277D21CA8], v13, v15);
  sub_24F92A9C8();
  (*(v14 + 8))(v17, v13);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  sub_24F928EF8();
  sub_24E60169C(v12, v9, &qword_27F220FF0, &unk_24F9949F0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v9, 1, v18) == 1)
  {
    sub_24E601704(v12, &qword_27F220FF0, &unk_24F9949F0);
    return sub_24E601704(v9, &qword_27F220FF0, &unk_24F9949F0);
  }

  else
  {
    v22[3] = type metadata accessor for Action(0);
    v22[4] = sub_24F1C53FC(&qword_27F216DE8, type metadata accessor for Action);
    v22[0] = v21;
    (*(v4 + 104))(v6, *MEMORY[0x277D21E18], v3);

    sub_24F929288();

    (*(v4 + 8))(v6, v3);
    sub_24E601704(v12, &qword_27F220FF0, &unk_24F9949F0);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return (*(v19 + 8))(v9, v18);
  }
}

uint64_t sub_24F1C48A0()
{
  v0 = sub_24F928AE8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D21CA8], v0, v2);
  sub_24F92A9C8();
  return (*(v1 + 8))(v4, v0);
}

void sub_24F1C498C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ArcadeActionImplementation.ArcadeActionImplementationError(0, a2, a3, a4);
  swift_getWitnessTable();
  v4 = swift_allocError();
  *v5 = 1;
  sub_24F92A9A8();
}

uint64_t sub_24F1C4A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v6 = sub_24F92A9E8();
  v9 = v6;
  v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_productId + 8);
  if (v10 && (v11 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_appAdamId + 8)) != 0)
  {
    v41 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_appAdamId);
    v43 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_productId);
    v12 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_postSubscribeAction);
    if (v12)
    {
      v13 = swift_allocObject();
      v13[2] = v9;
      v13[3] = a2;
      v13[4] = v12;

      v14 = sub_24F1C53F0;
    }

    else
    {
      v14 = sub_24F1C51B0;
      v13 = v6;
    }

    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = v9;
    v18 = v17;
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    memset(v56, 0, sizeof(v56));
    sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_subscriptionToken, &v46, &qword_27F2129B0, &unk_24F945320);
    v19 = *(&v47 + 1);

    swift_retain_n();
    v39 = v13;

    if (v19)
    {
      sub_24E601704(v56, qword_27F23BBB0, &unk_24F9D26D0);
      sub_24E612B0C(&v46, &v51);
      sub_24E612B0C(&v51, &v56[1]);
      v56[0] = a2;
      *(&v57 + 1) = v43;
      *&v58 = v10;
      *(&v58 + 1) = v41;
      v59 = v11;

      v20 = v11;
    }

    else
    {
      v20 = v11;
      sub_24E601704(&v46, &qword_27F2129B0, &unk_24F945320);
    }

    v40 = v9;
    type metadata accessor for CommerceDialogHandler(0);
    sub_24F928FD8();
    sub_24F92A758();
    v21 = v51;
    type metadata accessor for ArcadeSubscriptionManager();
    sub_24F92A758();
    v22 = v51;
    v23 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_paymentMetricsOverlay);
    v24 = *(v51 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_dialogHandler);
    *(v51 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_dialogHandler) = v21;

    sub_24E60169C(v56, &v46, qword_27F23BBB0, &unk_24F9D26D0);
    if (v46)
    {
      v54 = v49;
      v55 = v50;
      v52 = v47;
      v53 = v48;
      v51 = v46;
      v25 = v21;
      ArcadeSubscriptionDecorator.decorate()();
      v26 = swift_allocObject();
      v26[2] = v22;
      v26[3] = v23;
      v26[4] = v14;
      v26[5] = v39;
      v26[6] = sub_24F1C51F0;
      v26[7] = v18;
      v27 = swift_allocObject();
      v28 = v14;
      v29 = v18;
      v27[2] = v22;
      v27[3] = v43;
      v27[4] = v10;
      v27[5] = v41;
      v27[6] = v20;
      v27[7] = v23;
      v27[8] = v28;
      v27[9] = v39;
      v27[10] = sub_24F1C51F0;
      v27[11] = v18;
      v42 = sub_24E74EC40();

      v30 = v22;
      sub_24E5FCA4C(sub_24F1C51F0, v18);

      v31 = v30;

      sub_24E5FCA4C(sub_24F1C51F0, v18);
      v32 = sub_24F92BEF8();
      *(&v47 + 1) = v42;
      *&v48 = MEMORY[0x277D225C0];
      *&v46 = v32;
      sub_24F92A958();

      sub_24F1C5354(&v51);
      __swift_destroy_boxed_opaque_existential_1(&v46);
    }

    else
    {
      v33 = v21;
      sub_24E601704(&v46, qword_27F23BBB0, &unk_24F9D26D0);
      *&v46 = v41;
      *(&v46 + 1) = v20;
      *&v51 = v14;
      *(&v51 + 1) = v39;
      *&v52 = sub_24F1C51F0;
      *(&v52 + 1) = v18;
      sub_24F210878(v43, v10, &v46, 0, v23, &v51);
      v29 = v18;
    }

    __swift_project_boxed_opaque_existential_1(&v22[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger], *&v22[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger + 24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    *(&v52 + 1) = MEMORY[0x277D837D0];
    *&v51 = v43;
    *(&v51 + 1) = v10;

    sub_24F928438();
    sub_24E601704(&v51, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A588();

    v34 = swift_allocObject();
    v35 = &v22[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
    swift_beginAccess();
    v36 = *v35;
    v37 = v35[8];
    *(v34 + 16) = *v35;
    *(v34 + 24) = v37;
    v44 = v34;
    v45 = 64;
    sub_24EB6CE50(v36, v37);
    ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v44, 1, &v46);

    sub_24E824448(sub_24F1C51F0, v29);

    sub_24E601704(v56, qword_27F23BBB0, &unk_24F9D26D0);
    sub_24EB6CE70(v44, v45);
    sub_24EB6CE70(v46, BYTE8(v46));
    return v40;
  }

  else
  {
    type metadata accessor for ArcadeActionImplementation.ArcadeActionImplementationError(0, a3, v7, v8);
    swift_getWitnessTable();
    v15 = swift_allocError();
    *v16 = 0;
    sub_24F92A9A8();
  }

  return v9;
}

uint64_t sub_24F1C51B8()
{

  return swift_deallocObject();
}

uint64_t sub_24F1C51F8()
{
  sub_24EB6CE70(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_24F1C5234()
{

  if (*(v0 + 32))
  {

    if (*(v0 + 48))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F1C52A4()
{

  if (*(v0 + 64))
  {

    if (*(v0 + 80))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F1C53A8()
{

  return swift_deallocObject();
}

uint64_t sub_24F1C53FC(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

JSValue __swiftcall OnDeviceAdvert.makeValue(in:)(JSContext in)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v43 = *(v1 + 64);
  v44 = *(v1 + 32);
  v41 = *(v1 + 80);
  v42 = *(v1 + 56);
  v39 = *(v1 + 88);
  v40 = *(v1 + 72);
  v37 = *(v1 + 104);
  v38 = *(v1 + 96);
  v36 = *(v1 + 112);
  v9 = objc_opt_self();
  result.super.isa = [v9 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_35;
  }

  isa = result.super.isa;
  v45 = v4;
  v46 = v3;

  v12 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_24F92C328();
  v45 = v6;
  v46 = v5;

  v13 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v13)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_24F92C328();
  v45 = v44;
  v46 = v7;

  v14 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_24F92C328();
  if (v8 <= 1)
  {
    if (v8)
    {
      v15 = 0xED000073746C7573;
      v16 = 0x6552686372616573;
    }

    else
    {
      v15 = 0xED0000676E69646ELL;
      v16 = 0x614C686372616573;
    }
  }

  else if (v8 == 2)
  {
    v15 = 0xE500000000000000;
    v16 = 0x7961646F74;
  }

  else if (v8 == 3)
  {
    v15 = 0xEF4C414D59656761;
    v16 = 0x50746375646F7270;
  }

  else
  {
    v15 = 0x800000024FA41CD0;
    v16 = 0xD00000000000001DLL;
  }

  v45 = v16;
  v46 = v15;
  v17 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v17)
  {
    goto LABEL_38;
  }

  sub_24F92C328();
  v45 = v42;
  v46 = v43;

  v18 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_24F92C328();
  v45 = v40;
  v46 = v41;

  v19 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v19)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_24F92C328();
  if (v39)
  {
    v45 = v39;

    v20 = in.super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8, &unk_24F9B8130);
    v21 = sub_24F92CDE8();
    sub_24E601704(&v45, &qword_27F2218D8, &unk_24F9B8130);
  }

  else
  {
    v22 = in.super.isa;
    v21 = 0;
  }

  v23 = [v9 valueWithObject:v21 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v23)
  {
    goto LABEL_41;
  }

  sub_24F92C328();
  v24 = v38;
  if (v38)
  {
    v45 = v38;
    v25 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8, &unk_24F9B8130);
    v24 = sub_24F92CDE8();
    sub_24E601704(&v45, &qword_27F2218D8, &unk_24F9B8130);
  }

  else
  {
    v26 = in.super.isa;
  }

  v27 = [v9 valueWithObject:v24 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v27)
  {
    goto LABEL_42;
  }

  sub_24F92C328();
  v28 = v37;
  if (v37)
  {
    v45 = v37;
    v29 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    v28 = sub_24F92CDE8();
    sub_24E601704(&v45, &unk_27F2285F0, &qword_24F93B070);
  }

  else
  {
    v30 = in.super.isa;
  }

  v31 = [v9 valueWithObject:v28 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v31)
  {
    goto LABEL_43;
  }

  sub_24F92C328();
  v32 = v36;
  if (v36)
  {
    v45 = v36;
    v33 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BC38, &qword_24F9D27B8);
    v32 = sub_24F92CDE8();
    sub_24E601704(&v45, &qword_27F23BC38, &qword_24F9D27B8);
  }

  else
  {
    v34 = in.super.isa;
  }

  v35 = [v9 valueWithObject:v32 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v35)
  {
    sub_24F92C328();
    return isa;
  }

LABEL_44:
  __break(1u);
  return result;
}

__n128 OnDeviceAdvert.init(instanceId:impressionId:adamId:placementType:metadata:privacy:positionInfo:appMetadata:cppIds:alignedRegionDetails:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  v14 = *a5;
  v15 = a5[1];
  v16 = *a6;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v14;
  *(a9 + 40) = v15;
  *(a9 + 48) = v16;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 88) = a11;
  *(a9 + 104) = a12;
  *(a9 + 112) = a13;
  return result;
}

uint64_t OnDeviceAdvert.instanceId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OnDeviceAdvert.impressionId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double OnDeviceAdvert.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;

  return result;
}

uint64_t OnDeviceAdvert.metadata.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t OnDeviceAdvert.privacy.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

char *FlowBackAction.__allocating_init(id:title:actionMetrics:dismissal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a2;
  v27 = a3;
  v8 = sub_24F91F6B8();
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928AD8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = swift_allocObject();
  sub_24F928A98();
  sub_24F92A668();
  sub_24E65E064(a1, v33);
  (*(v12 + 16))(&v13[OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics], a4, v11);
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v15 = sub_24F929608();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v16 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v17 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v33, &v30);
  if (*(&v31 + 1))
  {
    v18 = v31;
    *v17 = v30;
    *(v17 + 1) = v18;
    *(v17 + 4) = v32;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v21 = v20;
    (*(v25 + 8))(v10, v8);
    v28 = v19;
    v29 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v30, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v12 + 8))(a4, v11);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v33, &qword_27F235830, &qword_24F93B8C0);
  v22 = v27;
  *(v13 + 2) = v26;
  *(v13 + 3) = v22;
  *(v13 + 4) = 0;
  *(v13 + 5) = 0;
  return v13;
}

void *FlowBackAction.init(id:title:actionMetrics:dismissal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v40 = a6;
  v39 = a5;
  v42 = a4;
  v43 = a2;
  v44 = a3;
  v41 = a1;
  v38 = sub_24F91F6B8();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = sub_24F928AD8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v18 = sub_24F92A6B8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928A98();
  v22 = v12;
  sub_24F92A668();
  v23 = v21;
  v24 = v42;
  v25 = v18;
  v26 = v41;
  (*(v19 + 32))(v7 + OBJC_IVAR____TtC12GameStoreKit14FlowBackAction_base, v23, v25);
  sub_24E65E064(v26, v53);
  (*(v14 + 16))(v16, v24, v13);
  v27 = sub_24F929608();
  (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
  v28 = (v7 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v28 = 0u;
  v28[1] = 0u;
  sub_24E65E064(v53, &v47);
  if (*(&v48 + 1))
  {
    v50 = v47;
    v51 = v48;
    v52 = v49;
  }

  else
  {
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v31 = v30;
    (*(v37 + 8))(v9, v38);
    v45 = v29;
    v46 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v47, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v14 + 8))(v24, v13);
  sub_24E601704(v26, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v53, &qword_27F235830, &qword_24F93B8C0);
  v32 = v7 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v32 + 4) = v52;
  v33 = v51;
  *v32 = v50;
  *(v32 + 1) = v33;
  sub_24E65E0D4(v22, v7 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v34 = v44;
  v7[2] = v43;
  v7[3] = v34;
  v7[4] = 0;
  v7[5] = 0;
  (*(v14 + 32))(v7 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v16, v13);
  return v7;
}

char *FlowBackAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v37 = v2;
  v30 = *v3;
  v5 = sub_24F9285B8();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928AD8();
  MEMORY[0x28223BE20](v7 - 8);
  v31 = sub_24F92A6B8();
  v8 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v39 = a1;
  sub_24F928398();
  sub_24F1C6CA0();
  sub_24F928248();
  v18 = v17;
  v19 = *(v12 + 8);
  v19(v18, v11);
  if (v38)
  {
    v30 = v19;
    sub_24F928A98();
    sub_24F92A668();
    (*(v8 + 32))(v37 + OBJC_IVAR____TtC12GameStoreKit14FlowBackAction_base, v10, v31);
    v20 = v39;
    (*(v12 + 16))(v14, v39, v11);
    v22 = v34;
    v21 = v35;
    v23 = v32;
    v24 = v36;
    (*(v34 + 16))(v32, v36, v35);
    v25 = v33;
    v26 = Action.init(deserializing:using:)(v14, v23);
    if (!v25)
    {
      v14 = v26;
    }

    (*(v22 + 8))(v24, v21);
    v30(v20, v11);
  }

  else
  {
    v14 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v27 = 0x617373696D736964;
    v28 = v30;
    v27[1] = 0xE90000000000006CLL;
    v27[2] = v28;
    (*(*(v14 - 1) + 104))(v27, *MEMORY[0x277D22530], v14);
    swift_willThrow();
    (*(v34 + 8))(v36, v35);
    v19(v39, v11);
    swift_deallocPartialClassInstance();
  }

  return v14;
}

uint64_t FlowBackAction.base.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit14FlowBackAction_base;
  v4 = sub_24F92A6B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24F1C69DC()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit14FlowBackAction_base;
  v2 = sub_24F92A6B8();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t FlowBackAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  v3 = OBJC_IVAR____TtC12GameStoreKit14FlowBackAction_base;
  v4 = sub_24F92A6B8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t FlowBackAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  v3 = OBJC_IVAR____TtC12GameStoreKit14FlowBackAction_base;
  v4 = sub_24F92A6B8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

unint64_t sub_24F1C6CA0()
{
  result = qword_27F23BC40;
  if (!qword_27F23BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BC40);
  }

  return result;
}

uint64_t type metadata accessor for FlowBackAction(uint64_t a1)
{
  result = qword_27F23BC48;
  if (!qword_27F23BC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F1C6D48(uint64_t a1)
{
  result = sub_24F92A6B8();
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

char *SearchHintSet.__allocating_init(hints:ghostHintTerm:pageMetrics:pageRenderEvent:searchClearAction:searchCancelAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  *(v14 + 4) = a3;
  v15 = OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageMetrics;
  v16 = sub_24F928818();
  (*(*(v16 - 8) + 32))(&v14[v15], a4, v16);
  *&v14[OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageRenderEvent] = a5;
  *&v14[OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_searchClearAction] = a6;
  *&v14[OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_searchCancelAction] = a7;
  return v14;
}

char *SearchHintSet.init(hints:ghostHintTerm:pageMetrics:pageRenderEvent:searchClearAction:searchCancelAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  *(v7 + 4) = a3;
  v12 = OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageMetrics;
  v13 = sub_24F928818();
  (*(*(v13 - 8) + 32))(&v7[v12], a4, v13);
  *&v7[OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageRenderEvent] = a5;
  *&v7[OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_searchClearAction] = a6;
  *&v7[OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_searchCancelAction] = a7;
  return v7;
}

uint64_t SearchHintSet.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchHintSet.init(deserializing:using:)(a1, a2);
  return v4;
}

void *SearchHintSet.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v71 = a2;
  v64 = *v3;
  v5 = sub_24F928818();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_24F9285B8();
  v69 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v58 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v60 = (&v53 - v9);
  MEMORY[0x28223BE20](v10);
  v63 = (&v53 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v53 - v13;
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v59 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v62 = &v53 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v23 = sub_24F92AC28();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v53 - v28;
  v67 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v70 = *(v16 + 8);
  v68 = v16 + 8;
  v70(v22, v15);
  if (v24[6](v14, 1, v23) == 1)
  {
    sub_24E8F2EE8(v14);
    v30 = sub_24F92AC38();
    sub_24EAA4E04(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v31 = 0x73746E6968;
    v32 = v64;
    v31[1] = 0xE500000000000000;
    v31[2] = v32;
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D22530], v30);
    swift_willThrow();
    (*(v69 + 8))(v71, v72);
    v70(v67, v15);
    v33 = v66;
LABEL_6:
    type metadata accessor for SearchHintSet(0);
    swift_deallocPartialClassInstance();
    return v33;
  }

  v64 = v15;
  v24[4](v29, v14, v23);
  v24[2](v26, v29, v23);
  v34 = v69;
  v35 = v71;
  v55 = *(v69 + 16);
  v55(v63, v71, v72);
  type metadata accessor for SearchAction(0);
  sub_24EAA4E04(&qword_27F226C48, type metadata accessor for SearchAction, &protocol conformance descriptor for Action);
  v36 = v65;
  v37 = sub_24F92B688();
  if (v36)
  {
    (*(v34 + 8))(v35, v72);
    v70(v67, v64);
    (v24[1])(v29, v23);
    v33 = v66;
    goto LABEL_6;
  }

  v54 = v29;
  v63 = v24;
  v65 = v23;
  v33 = v66;
  *(v66 + 16) = v37;
  v38 = v62;
  sub_24F928398();
  v39 = sub_24F928348();
  v41 = v40;
  v42 = v64;
  v70(v38, v64);
  *(v33 + 24) = v39;
  *(v33 + 32) = v41;
  v43 = v71;
  sub_24F928398();
  v55(v60, v43, v72);
  v44 = v61;
  sub_24F928788();
  (*(v56 + 32))(v33 + OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageMetrics, v44, v57);
  type metadata accessor for PageRenderMetricsEvent();
  v46 = v62;
  sub_24F928398();
  v55(v58, v43, v72);
  sub_24EAA4E04(&qword_27F2218C0, type metadata accessor for PageRenderMetricsEvent, &protocol conformance descriptor for PageRenderMetricsEvent);
  sub_24F929548();
  *(v33 + OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageRenderEvent) = v73;
  v61 = type metadata accessor for Action(0);
  sub_24F928398();
  v47 = v71;
  v48 = static Action.tryToMakeInstance(byDeserializing:using:)(v46, v71);
  v49 = v46;
  v50 = v46;
  v51 = v70;
  v70(v49, v42);
  *(v33 + OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_searchClearAction) = v48;
  sub_24F928398();
  v52 = static Action.tryToMakeInstance(byDeserializing:using:)(v50, v47);
  (*(v69 + 8))(v47, v72);
  v51(v67, v42);
  v51(v50, v42);
  v63[1](v54, v65);
  *(v33 + OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_searchCancelAction) = v52;
  return v33;
}

uint64_t type metadata accessor for SearchHintSet(uint64_t a1)
{
  result = qword_27F23BC58;
  if (!qword_27F23BC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchHintSet.ghostHintTerm.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SearchHintSet.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageMetrics;
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchHintSet.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SearchHintSet.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_24F1C7C20@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for SearchHintSet(0);
  v7 = swift_allocObject();
  result = SearchHintSet.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F1C7CA0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageMetrics;
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24F1C7D4C(uint64_t a1)
{
  result = sub_24F928818();
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

uint64_t sub_24F1C7E88@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BC68, &qword_24F9D2A40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BC70, &qword_24F9D2A48);
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BC78, &qword_24F9D2A50);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v12 = *v1;
  v13 = *(v1 + 8);
  if (*(v12 + 48))
  {
    v14 = sub_24F924C98();
  }

  else
  {
    v14 = sub_24F924C88();
  }

  *v5 = v14;
  *(v5 + 1) = 0x4024000000000000;
  v5[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BC80, &qword_24F9D2A58);
  sub_24F1C81B0(v12, v13, &v5[*(v15 + 44)]);
  v16 = *(v12 + 48) == 0;
  KeyPath = swift_getKeyPath();
  sub_24E6009C8(v5, v8, &qword_27F23BC68, &qword_24F9D2A40);
  v18 = &v8[*(v6 + 36)];
  *v18 = KeyPath;
  v18[8] = v16;
  if (*(v12 + 48))
  {
    sub_24F927628();
  }

  else
  {
    sub_24F927618();
  }

  sub_24F9242E8();
  sub_24E6009C8(v8, v11, &qword_27F23BC70, &qword_24F9D2A48);
  v19 = &v11[*(v9 + 36)];
  v20 = v27[5];
  *(v19 + 4) = v27[4];
  *(v19 + 5) = v20;
  *(v19 + 6) = v27[6];
  v21 = v27[1];
  *v19 = v27[0];
  *(v19 + 1) = v21;
  v22 = v27[3];
  *(v19 + 2) = v27[2];
  *(v19 + 3) = v22;
  v23 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BC88, &qword_24F9D2A90) + 36);
  v24 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v25 = type metadata accessor for GradientBackground(0);
  (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  *(v23 + 16) = xmmword_24F93CFD0;
  *(v23 + 32) = 0x4030000000000000;
  *(v23 + 40) = 257;
  return sub_24E6009C8(v11, a1, &qword_27F23BC78, &qword_24F9D2A50);
}

uint64_t sub_24F1C81B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BC90, &qword_24F9D2AC8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  *v12 = sub_24F9249A8();
  *(v12 + 1) = 0x4024000000000000;
  v12[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BC98, &qword_24F9D2AD0);
  sub_24F1C8428(a1, a2 & 1, &v12[*(v13 + 44)]);
  v14 = sub_24F925808();
  sub_24F923318();
  v15 = &v12[*(v7 + 44)];
  *v15 = v14;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  if (a2)
  {
    v20 = *(a1 + 40);

    v21 = sub_24F9257F8();
    sub_24F923318();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    LOBYTE(v38[0]) = 0;
    v30 = v21;
    v31 = 1;
  }

  else
  {
    v20 = 0;
    v30 = 0;
    v31 = 0;
    v23 = 0;
    v25 = 0;
    v27 = 0;
    v29 = 0;
  }

  sub_24E60169C(v12, v9, &qword_27F23BC90, &qword_24F9D2AC8);
  sub_24E60169C(v9, a3, &qword_27F23BC90, &qword_24F9D2AC8);
  v32 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BCA0, &qword_24F9D2AD8) + 48));
  *&v35 = v20;
  *(&v35 + 1) = v31;
  *&v36 = v30;
  *(&v36 + 1) = v23;
  *v37 = v25;
  *&v37[8] = v27;
  *&v37[16] = v29;
  v37[24] = 0;
  v33 = v36;
  *v32 = v35;
  v32[1] = v33;
  v32[2] = *v37;
  *(v32 + 41) = *&v37[9];
  sub_24E60169C(&v35, v38, &qword_27F23BCA8, &qword_24F9D2AE0);
  sub_24E601704(v12, &qword_27F23BC90, &qword_24F9D2AC8);
  v38[0] = v20;
  v38[1] = v31;
  v38[2] = v30;
  v38[3] = v23;
  v38[4] = v25;
  v38[5] = v27;
  v38[6] = v29;
  v39 = 0;
  sub_24E601704(v38, &qword_27F23BCA8, &qword_24F9D2AE0);
  return sub_24E601704(v9, &qword_27F23BC90, &qword_24F9D2AC8);
}

uint64_t sub_24F1C8428@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v82 = a3;
  v86 = type metadata accessor for LinkableTextView(0);
  MEMORY[0x28223BE20](v86);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C450, &qword_24F955890);
  MEMORY[0x28223BE20](v84);
  v81 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v77 - v8;
  MEMORY[0x28223BE20](v9);
  v89 = &v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v77 - v12;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BCB0, &qword_24F9D2AE8);
  MEMORY[0x28223BE20](v80);
  v15 = &v77 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BCB8, &qword_24F9D2AF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v77 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BCC0, &qword_24F9D2AF8);
  MEMORY[0x28223BE20](v23 - 8);
  v83 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v28 = &v77 - v26;
  v88 = a1;
  v29 = *(a1 + 48);
  if (v29)
  {
    v30 = type metadata accessor for SwiftUIArtworkView(0);
    v78 = v16;
    v31 = v17;
    v32 = v22;
    v33 = v30;
    v34 = *(v30 + 24);
    v79 = v28;
    v35 = *MEMORY[0x277CE1010];
    v36 = sub_24F926E68();
    (*(*(v36 - 8) + 104))(&v15[v34], v35, v36);
    *(v15 + 1) = 0;
    *(v15 + 2) = 0;
    *v15 = v29;
    v15[24] = 1;
    v37 = &v15[v33[7]];
    *v37 = 0;
    *(v37 + 1) = 0;
    v37[16] = 1;
    v15[v33[8]] = 2;
    v15[v33[9]] = 0;
    v38 = sub_24F925908();
    (*(*(v38 - 8) + 56))(v13, 1, 1, v38);

    v39 = sub_24F925968();
    sub_24E601704(v13, &qword_27F214698, &unk_24F95F810);
    KeyPath = swift_getKeyPath();
    v41 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BCD0, &unk_24F9D2C30) + 36)];
    *v41 = KeyPath;
    v41[1] = v39;
    v42 = &v15[*(v80 + 36)];
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0, &unk_24F9B4DB0) + 28);
    sub_24F924CF8();
    v44 = sub_24F924D08();
    (*(*(v44 - 8) + 56))(v42 + v43, 0, 1, v44);
    *v42 = swift_getKeyPath();
    sub_24F9275F8();
    sub_24F9242E8();
    sub_24E6009C8(v15, v19, &qword_27F23BCB0, &qword_24F9D2AE8);
    v45 = v78;
    v46 = &v19[*(v78 + 36)];
    v47 = v95;
    *(v46 + 4) = v94;
    *(v46 + 5) = v47;
    *(v46 + 6) = v96;
    v48 = v91;
    *v46 = v90;
    *(v46 + 1) = v48;
    v49 = v93;
    *(v46 + 2) = v92;
    *(v46 + 3) = v49;
    sub_24E6009C8(v19, v32, &qword_27F23BCB8, &qword_24F9D2AF0);
    v50 = v32;
    v51 = v79;
    sub_24E6009C8(v50, v79, &qword_27F23BCB8, &qword_24F9D2AF0);
    v52 = v51;
    (*(v31 + 56))(v51, 0, 1, v45);
  }

  else
  {
    v52 = &v77 - v26;
    (*(v17 + 56))(&v77 - v26, 1, 1, v16, v27);
  }

  v53 = v29 == 0;
  v54 = v88;
  v55 = Banner.linkableMessage.getter();
  v56 = sub_24F926D18();
  v57 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v58 = sub_24F925898();
  type metadata accessor for LinkableTextViewModel(0);
  swift_allocObject();
  v59 = sub_24E6567EC(v55, v56, v57, v58);
  *(v5 + 2) = swift_getKeyPath();
  v5[56] = 0;
  v60 = v86;
  v61 = *(v86 + 32);
  *&v5[v61] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  swift_storeEnumTagMultiPayload();
  v62 = &v5[v60[9]];
  *v62 = swift_getKeyPath();
  v62[8] = 0;
  v63 = &v5[v60[10]];
  *v63 = swift_getKeyPath();
  v63[8] = 0;
  v64 = &v5[v60[11]];
  *v64 = swift_getKeyPath();
  v64[8] = 0;
  *v5 = v59;
  v5[8] = v53;
  v5[9] = 1;
  v65 = *(v84 + 36);
  v66 = *MEMORY[0x277CE13B8];
  v67 = sub_24F927748();
  v68 = v85;
  (*(*(v67 - 8) + 104))(&v85[v65], v66, v67);
  sub_24EB9ACEC(v5, v68);
  sub_24E6009C8(v68, v89, &qword_27F21C450, &qword_24F955890);
  v69 = 0;
  if ((v87 & 1) == 0)
  {
    v69 = *(v54 + 40);
  }

  v70 = v83;
  sub_24E60169C(v52, v83, &qword_27F23BCC0, &qword_24F9D2AF8);
  v71 = v89;
  v72 = v81;
  sub_24E60169C(v89, v81, &qword_27F21C450, &qword_24F955890);
  v73 = v82;
  sub_24E60169C(v70, v82, &qword_27F23BCC0, &qword_24F9D2AF8);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BCC8, &qword_24F9D2BF8);
  sub_24E60169C(v72, v73 + *(v74 + 48), &qword_27F21C450, &qword_24F955890);
  v75 = v73 + *(v74 + 64);
  *v75 = 0;
  *(v75 + 8) = 0;
  *(v75 + 16) = v69;
  *(v75 + 24) = 0;

  sub_24E601704(v71, &qword_27F21C450, &qword_24F955890);
  sub_24E601704(v52, &qword_27F23BCC0, &qword_24F9D2AF8);

  sub_24E601704(v72, &qword_27F21C450, &qword_24F955890);
  return sub_24E601704(v70, &qword_27F23BCC0, &qword_24F9D2AF8);
}

uint64_t sub_24F1C8CFC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BCF8, &qword_24F9D2CF8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  if (*(*v1 + 16))
  {
    v9 = v1[8];
    v13[0] = v4;
    *v7 = sub_24F9249A8();
    *(v7 + 1) = 0x4024000000000000;
    v7[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD00, &qword_24F9D2D00);
    v13[1] = v8;
    swift_getKeyPath();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD08, &qword_24F9D2D30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD10, &unk_24F9D2D38);
    sub_24E602068(&qword_27F23BD18, &qword_27F23BD08, &qword_24F9D2D30, MEMORY[0x277D83980]);
    sub_24EFCC404();
    sub_24F1C97AC();
    sub_24F927228();
    sub_24F1C9924(v7, a1);
    return (*(v13[0] + 56))(a1, 0, 1, v3);
  }

  else
  {
    v12 = *(v4 + 56);

    return v12(a1, 1, 1, v3, v5);
  }
}

uint64_t sub_24F1C8F6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = sub_24F9241F8();
  v8 = *(v7 - 8);
  v30 = v7;
  v31 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD28, &qword_24F9D2D48);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28[-v16];
  v18 = *a1;
  v19 = *(a1 + 8);
  v29 = v19;
  v20 = sub_24F9232F8();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v34 = type metadata accessor for Action(0);
  v35 = sub_24F1C99E8(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  v33 = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;
  *(v21 + 32) = a2;
  *(v21 + 40) = a3 & 1;
  type metadata accessor for LargeButtonContentView(0);
  sub_24F1C99E8(&qword_27F215FE0, type metadata accessor for LargeButtonContentView, &unk_24F9412F0);
  swift_retain_n();

  sub_24F921788();
  sub_24F9241E8();
  sub_24E602068(&qword_27F23BD30, &qword_27F23BD28, &qword_24F9D2D48, MEMORY[0x277D7EB00]);
  sub_24F1C99E8(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v22 = v32;
  v23 = v30;
  sub_24F926178();
  (*(v31 + 8))(v10, v23);
  (*(v15 + 8))(v17, v14);
  LOBYTE(v15) = v29 ^ 1;
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD10, &unk_24F9D2D38);
  v27 = (v22 + *(result + 36));
  *v27 = KeyPath;
  v27[1] = sub_24E600A48;
  v27[2] = v25;
  return result;
}

uint64_t sub_24F1C937C@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);

  sub_24F925898();
  v7 = sub_24F9258E8();

  v8 = (a2 & 1) == 0;
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0x7FF0000000000000;
  }

  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8, &qword_24F9471F0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for LargeButtonContentView(0);
  v11 = (a3 + v10[5]);
  *v11 = v6;
  v11[1] = v5;
  v12 = (a3 + v10[6]);
  *v12 = 0;
  v12[1] = 0;
  *(a3 + v10[7]) = v7;
  v13 = (a3 + v10[8]);
  *v13 = 0;
  v13[1] = 0;
  *(a3 + v10[9]) = 0;
  *(a3 + v10[10]) = 0;
  v14 = a3 + v10[11];
  *v14 = 0x4041000000000000;
  v14[8] = 0;
  v15 = a3 + v10[12];
  *v15 = 0;
  v15[8] = 1;
  v16 = a3 + v10[13];
  *v16 = v9;
  v16[8] = v8;
  *(a3 + v10[14]) = 1;
  *(a3 + v10[15]) = 1;
  sub_24E66ED98();
  return sub_24F9237C8();
}

unint64_t sub_24F1C9520()
{
  result = qword_27F23BCD8;
  if (!qword_27F23BCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BC88, &qword_24F9D2A90);
    sub_24F1C95DC();
    sub_24F1C99E8(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier, &unk_24FA0D0EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BCD8);
  }

  return result;
}

unint64_t sub_24F1C95DC()
{
  result = qword_27F23BCE0;
  if (!qword_27F23BCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BC78, &qword_24F9D2A50);
    sub_24F1C9668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BCE0);
  }

  return result;
}

unint64_t sub_24F1C9668()
{
  result = qword_27F23BCE8;
  if (!qword_27F23BCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BC70, &qword_24F9D2A48);
    sub_24E602068(&qword_27F23BCF0, &qword_27F23BC68, &qword_24F9D2A40, MEMORY[0x277CE1198]);
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8, &qword_24F93D5B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BCE8);
  }

  return result;
}

uint64_t sub_24F1C9768()
{

  return swift_deallocObject();
}

unint64_t sub_24F1C97AC()
{
  result = qword_27F23BD20;
  if (!qword_27F23BD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BD10, &unk_24F9D2D38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BD28, &qword_24F9D2D48);
    sub_24F9241F8();
    sub_24E602068(&qword_27F23BD30, &qword_27F23BD28, &qword_24F9D2D48, MEMORY[0x277D7EB00]);
    sub_24F1C99E8(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320, &unk_24F9397C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BD20);
  }

  return result;
}

uint64_t sub_24F1C9924(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BCF8, &qword_24F9D2CF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1C9994()
{

  return swift_deallocObject();
}

uint64_t sub_24F1C99E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F1C9A54()
{
  result = qword_27F23BD38;
  if (!qword_27F23BD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BD40, &qword_24F9D2DB8);
    sub_24E602068(&qword_27F23BD48, &qword_27F23BCF8, &qword_24F9D2CF8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BD38);
  }

  return result;
}

JUMeasurements __swiftcall JUMeasurements.adding(outsets:)(UIEdgeInsets outsets)
{
  v5 = outsets.left + outsets.right + v1;
  v6 = outsets.top + outsets.bottom + v2;
  v7 = outsets.top + v3;
  v8 = outsets.bottom + v4;
  v9 = v5;
  v10 = v7;
  result.var3 = v8;
  result.var2 = v10;
  result.var1 = v6;
  result.var0 = v9;
  return result;
}

Swift::Void __swiftcall JUMeasurements.add(outsets:)(UIEdgeInsets outsets)
{
  *v1 = outsets.left + outsets.right + *v1;
  v2.f64[0] = outsets.top + outsets.bottom;
  v2.f64[1] = outsets.top;
  *(v1 + 8) = vaddq_f64(v2, *(v1 + 8));
  *(v1 + 24) = *(v1 + 24) + outsets.bottom;
}

double JUMeasurements.add(outsets:in:)(void *a1, float64_t a2, double a3, double a4, double a5)
{
  v9 = [a1 traitCollection];
  [v9 layoutDirection];

  *v5 = a3 + a5 + *v5;
  v10.f64[0] = a2 + a4;
  v10.f64[1] = a2;
  *(v5 + 8) = vaddq_f64(v10, *(v5 + 8));
  result = *(v5 + 24) + a4;
  *(v5 + 24) = result;
  return result;
}

double JUMeasurements.adding(outsets:in:)(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v9 = [a1 traitCollection];
  [v9 layoutDirection];

  return a3 + a5 + a6;
}

GameStoreKit::PersonalizedOfferType_optional __swiftcall PersonalizedOfferType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizedOfferType.rawValue.getter()
{
  v1 = 0x6574656C706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x6573616863727570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_24F1C9D54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6574656C706D6F63;
  if (v2 != 1)
  {
    v4 = 0x6573616863727570;
    v3 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6574656C706D6F63;
  if (*a2 != 1)
  {
    v8 = 0x6573616863727570;
    v7 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

unint64_t sub_24F1C9E5C()
{
  result = qword_27F23BD50;
  if (!qword_27F23BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BD50);
  }

  return result;
}

uint64_t sub_24F1C9EB0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1C9F50(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F1C9FDC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F1CA084(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6574656C706D6F63;
  if (v2 != 1)
  {
    v5 = 0x6573616863727570;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double CallProviderConversationHandles.conversationHandles.getter(__n128 a1)
{
  type metadata accessor for CallProviderConversationHandles(0);

  return result;
}

uint64_t type metadata accessor for CallProviderConversationHandles(uint64_t a1)
{
  result = qword_27F23BD90;
  if (!qword_27F23BD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CallProviderConversationHandles.conversationHandles.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CallProviderConversationHandles(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

unint64_t CallProviderConversationHandles.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x72656469766F7270;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = type metadata accessor for CallProvider(0);
  *(inited + 80) = sub_24EA45F98(&qword_27F225B48, &protocol conformance descriptor for CallProvider);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F1CAEA8(v2, boxed_opaque_existential_1, type metadata accessor for CallProvider);
  *(inited + 88) = 0xD000000000000013;
  *(inited + 96) = 0x800000024FA6EB30;
  v6 = *(v2 + *(type metadata accessor for CallProviderConversationHandles(0) + 20));
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD58, &qword_24F9D2E98);
  *(inited + 136) = sub_24F1CAE30(&qword_27F23BD60, sub_24EDD5814, MEMORY[0x277D22590]);
  *(inited + 104) = v6;

  v7 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v8 = sub_24E80FFAC(v7);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

void static CallProviderConversationHandles.== infix(_:_:)(void *a1, void *a2)
{
  if (_s12GameStoreKit12CallProviderV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    v4 = *(type metadata accessor for CallProviderConversationHandles(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);

    sub_24EA15730(v5, v6);
  }
}

uint64_t sub_24F1CA494()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x72656469766F7270;
  }
}

uint64_t sub_24F1CA4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA6EB30 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F1CA5B8(uint64_t a1)
{
  v2 = sub_24F1CADDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F1CA5F4(uint64_t a1)
{
  v2 = sub_24F1CADDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CallProviderConversationHandles.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD68, &qword_24F9D2EA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F1CADDC();
  sub_24F92D128();
  v12 = 0;
  type metadata accessor for CallProvider(0);
  sub_24EA45F98(&qword_27F225B60, &protocol conformance descriptor for CallProvider);
  sub_24F92CD48();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for CallProviderConversationHandles(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD58, &qword_24F9D2E98);
    sub_24F1CAE30(&qword_27F23BD78, sub_24EDD6418, MEMORY[0x277D83948]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CallProviderConversationHandles.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for CallProvider(0);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD80, &qword_24F9D2EA8);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for CallProviderConversationHandles(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F1CADDC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v18;
  v23 = 0;
  sub_24EA45F98(&qword_27F225B70, &protocol conformance descriptor for CallProvider);
  v14 = v19;
  sub_24F92CC68();
  sub_24EA45FDC(v20, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD58, &qword_24F9D2E98);
  v22 = 1;
  sub_24F1CAE30(&qword_27F23BD88, sub_24EDD646C, MEMORY[0x277D83978]);
  sub_24F92CC68();
  (*(v13 + 8))(v8, v14);
  *(v12 + *(v9 + 20)) = v21;
  sub_24F1CAEA8(v12, v17, type metadata accessor for CallProviderConversationHandles);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F1CAF10(v12, type metadata accessor for CallProviderConversationHandles);
}

void sub_24F1CAB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static CallProvider.== infix(_:_:)(a1, a2))
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);

    sub_24EA15730(v7, v8);
  }
}

unint64_t sub_24F1CAC00@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x72656469766F7270;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = type metadata accessor for CallProvider(0);
  *(inited + 80) = sub_24EA45F98(&qword_27F225B48, &protocol conformance descriptor for CallProvider);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F1CAEA8(v4, boxed_opaque_existential_1, type metadata accessor for CallProvider);
  *(inited + 88) = 0xD000000000000013;
  *(inited + 96) = 0x800000024FA6EB30;
  v8 = *(v4 + *(a1 + 20));
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BD58, &qword_24F9D2E98);
  *(inited + 136) = sub_24F1CAE30(&qword_27F23BD60, sub_24EDD5814, MEMORY[0x277D22590]);
  *(inited + 104) = v8;

  v9 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v10 = sub_24E80FFAC(v9);

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v10;
  return result;
}

unint64_t sub_24F1CADDC()
{
  result = qword_27F23BD70;
  if (!qword_27F23BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BD70);
  }

  return result;
}

uint64_t sub_24F1CAE30(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BD58, &qword_24F9D2E98);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F1CAEA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F1CAF10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F1CAF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CallProvider(0);
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

uint64_t sub_24F1CB054(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CallProvider(0);
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

void sub_24F1CB10C(uint64_t a1)
{
  type metadata accessor for CallProvider(319);
  if (v1 <= 0x3F)
  {
    sub_24F1CB190();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F1CB190()
{
  if (!qword_27F23BDA0)
  {
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23BDA0);
    }
  }
}

unint64_t sub_24F1CB1F4()
{
  result = qword_27F23BDA8;
  if (!qword_27F23BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BDA8);
  }

  return result;
}

unint64_t sub_24F1CB24C()
{
  result = qword_27F23BDB0;
  if (!qword_27F23BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BDB0);
  }

  return result;
}

unint64_t sub_24F1CB2A4()
{
  result = qword_27F23BDB8;
  if (!qword_27F23BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BDB8);
  }

  return result;
}

GameStoreKit::AppShowcaseType_optional __swiftcall AppShowcaseType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppShowcaseType.rawValue.getter()
{
  v1 = 0x6C6C616D73;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656772616CLL;
  }
}

uint64_t sub_24F1CB3AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6C6C616D73;
  v5 = 0x800000024FA41CF0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000024FA41CF0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x656772616CLL;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x6C6C616D73;
  if (*a2 == 1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656772616CLL;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F1CB498()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1CB538(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F1CB5C4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F1CB66C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6C6C616D73;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000024FA41CF0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656772616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AppShowcase.descriptionText.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AppShowcase.__allocating_init(id:lockup:descriptionText:screenshots:video:type:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v27 = a5;
  v28 = a6;
  v29 = a2;
  v30 = a3;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = *a7;
  sub_24E60169C(a1, &v33, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v34 + 1))
  {
    v18 = v34;
    *(v16 + 64) = v33;
    *(v16 + 80) = v18;
    *(v16 + 96) = v35;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v26 = a8;
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    v31 = v19;
    v32 = v21;
    a8 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v33, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(a8, v16 + OBJC_IVAR____TtC12GameStoreKit11AppShowcase_impressionMetrics);
  v22 = v30;
  *(v16 + 16) = v29;
  *(v16 + 24) = v22;
  v24 = v27;
  v23 = v28;
  *(v16 + 32) = a4;
  *(v16 + 40) = v24;
  *(v16 + 48) = v23;
  *(v16 + 56) = v17;
  return v16;
}

uint64_t AppShowcase.init(id:lockup:descriptionText:screenshots:video:type:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v9 = v8;
  v28 = a5;
  v29 = a6;
  v30 = a2;
  v31 = a3;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a7;
  sub_24E60169C(a1, &v34, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v35 + 1))
  {
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v27 = a8;
    v21 = v20;
    (*(v15 + 8))(v17, v14);
    v32 = v19;
    v33 = v21;
    a8 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v34, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v22 = v38;
  *(v9 + 64) = v37;
  *(v9 + 80) = v22;
  *(v9 + 96) = v39;
  sub_24E65E0D4(a8, v9 + OBJC_IVAR____TtC12GameStoreKit11AppShowcase_impressionMetrics);
  v23 = v31;
  *(v9 + 16) = v30;
  *(v9 + 24) = v23;
  v25 = v28;
  v24 = v29;
  *(v9 + 32) = a4;
  *(v9 + 40) = v25;
  *(v9 + 48) = v24;
  *(v9 + 56) = v18;
  return v9;
}

uint64_t sub_24F1CBB34@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for AppShowcase(0);
  *a1 = v1;
}

uint64_t AppShowcase.deinit()
{

  sub_24E6585F8(v0 + 64);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11AppShowcase_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t AppShowcase.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 64);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11AppShowcase_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

char *sub_24F1CBC84@<X0>(char **a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F1CBD34(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24F1CBCB0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for AppShowcase(0);
  *a1 = v3;
}

char *sub_24F1CBD34(char *a1, uint64_t a2)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v59 - v4;
  v63 = sub_24F91F6B8();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v68 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v59 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v67 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v66 = &v59 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  sub_24F928398();
  v60 = sub_24F928348();
  v72 = v12;
  v73 = v23;
  v77 = *(v13 + 8);
  v74 = (v13 + 8);
  v77(v22, v12);
  sub_24F928398();
  v69 = v7;
  v24 = *(v7 + 16);
  v25 = v76;
  v24(v11, v76, v6);
  type metadata accessor for Screenshots();
  sub_24F1CC824(&qword_27F2273E0, type metadata accessor for Screenshots, &protocol conformance descriptor for Screenshots);
  v65 = v11;
  v26 = sub_24F92B698();
  v71 = a1;
  sub_24F928398();
  v27 = v68;
  v75 = v6;
  v28 = v6;
  v29 = v24;
  v24(v68, v25, v28);
  type metadata accessor for Lockup(0);
  swift_allocObject();
  v30 = v70;
  v31 = Lockup.init(deserializing:using:)(v19, v27);
  if (v30)
  {

    (*(v69 + 8))(v25, v75);
    v77(v71, v72);
  }

  else
  {
    v32 = v31;
    v70 = 0;
    v68 = v26;
    type metadata accessor for Video(0);
    v33 = v71;
    sub_24F928398();
    v29(v65, v25, v75);
    sub_24F1CC824(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
    sub_24F929548();
    v65 = v83[0];
    v34 = v66;
    sub_24F928398();
    v35 = sub_24F928348();
    v37 = v32;
    if (v36)
    {
      *&v80 = v35;
      *(&v80 + 1) = v36;
    }

    else
    {
      v38 = v61;
      sub_24F91F6A8();
      v39 = sub_24F91F668();
      v41 = v40;
      (*(v62 + 8))(v38, v63);
      *&v80 = v39;
      *(&v80 + 1) = v41;
    }

    sub_24F92C7F8();
    v42 = v72;
    v22 = v74;
    v77(v34, v72);
    v43 = v69;
    v44 = v67;
    sub_24F928398();
    sub_24F1CC86C();
    v45 = v70;
    sub_24F928218();
    v46 = v76;
    v47 = v73;
    if (v45)
    {

      (*(v43 + 8))(v46, v75);
      v48 = v77;
      v77(v33, v42);
      v48(v44, v42);
      sub_24E601704(v83, &qword_27F235830, &qword_24F93B8C0);
    }

    else
    {
      v70 = 0;
      v77(v44, v42);
      v50 = v84;
      v51 = v64;
      sub_24E60169C(v37 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, v64, &qword_27F213E68, &unk_24F93BC80);
      type metadata accessor for AppShowcase(0);
      v22 = swift_allocObject();
      sub_24E60169C(v83, &v80, &qword_27F235830, &qword_24F93B8C0);
      if (*(&v81 + 1))
      {
        v52 = v81;
        *(v22 + 4) = v80;
        *(v22 + 5) = v52;
        *(v22 + 12) = v82;
      }

      else
      {
        v53 = v61;
        sub_24F91F6A8();
        v54 = sub_24F91F668();
        v56 = v55;
        (*(v62 + 8))(v53, v63);
        v78 = v54;
        v79 = v56;
        v42 = v72;
        v47 = v73;
        v51 = v64;
        sub_24F92C7F8();
        sub_24E601704(&v80, &qword_27F235830, &qword_24F93B8C0);
      }

      (*(v43 + 8))(v46, v75);
      v77(v33, v42);
      sub_24E601704(v83, &qword_27F235830, &qword_24F93B8C0);
      sub_24E65E0D4(v51, &v22[OBJC_IVAR____TtC12GameStoreKit11AppShowcase_impressionMetrics]);
      v57 = v60;
      *(v22 + 2) = v37;
      *(v22 + 3) = v57;
      v58 = v68;
      *(v22 + 4) = v47;
      *(v22 + 5) = v58;
      *(v22 + 6) = v65;
      v22[56] = v50;
    }
  }

  return v22;
}

uint64_t type metadata accessor for AppShowcase(uint64_t a1)
{
  result = qword_27F23BDD0;
  if (!qword_27F23BDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F1CC60C()
{
  result = qword_27F23BDC0;
  if (!qword_27F23BDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BDC0);
  }

  return result;
}

void sub_24F1CC6C0(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F1CC824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F1CC86C()
{
  result = qword_27F23BDE0;
  if (!qword_27F23BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BDE0);
  }

  return result;
}

void sub_24F1CC8D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = objc_opt_self();
  v6 = [v5 valueWithNewObjectInContext_];
  if (v6)
  {
    v7 = v6;
    v10 = v3;

    v8 = v7;
    v9 = [v5 valueWithObject:sub_24F92CF68() inContext:{a1, v4, v10}];
    swift_unknownObjectRelease();
    if (v9)
    {
      sub_24F92C328();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_24F1CC9D4()
{
  result = qword_27F23BDE8;
  if (!qword_27F23BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BDE8);
  }

  return result;
}

unint64_t sub_24F1CCA30()
{
  result = qword_27F23BDF0;
  if (!qword_27F23BDF0)
  {
    type metadata accessor for MSOProviderData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BDF0);
  }

  return result;
}

uint64_t SearchFocusDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a3;
  v57 = a4;
  v59 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v14 = swift_allocObject();
  v50 = a2;
  sub_24E60169C(a2, v13, &qword_27F228530, &unk_24F93C6E0);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_24E911D90(v13, v17 + v15);
  v18 = v59;
  *(v17 + v16) = v59;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a5;
  sub_24E60169C(a2, v10, &qword_27F228530, &unk_24F93C6E0);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24F041928;
  *(v20 + 24) = v18;
  v55 = v20;
  *(v14 + qword_27F22F198) = 0;
  v21 = MEMORY[0x277D84F90];
  *(v14 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v22 = qword_27F39C780;
  v58 = a5;
  swift_retain_n();
  swift_retain_n();

  *(v14 + v22) = sub_24E60986C(v21);
  v23 = (v14 + qword_27F22F1A8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v14 + qword_27F22F1B0);
  *v24 = 0;
  v24[1] = 0;
  v53 = v24;
  v25 = (v14 + qword_27F22F1B8);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v14 + qword_27F22F1C0);
  *v26 = 0;
  v26[1] = 0;
  v52 = v26;
  v27 = (v14 + qword_27F22F1C8);
  *v27 = 0;
  v27[1] = 0;
  v51 = v27;
  v28 = (v14 + qword_27F39C788);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 25) = 0u;
  *(v14 + qword_27F39C790) = 0;
  *(v14 + qword_27F22F1D0) = 0;
  *(v14 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v14 + qword_27F39C798) = 0;
  v29 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADC8, &qword_24F989DB0);
  swift_allocObject();
  *(v14 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v14 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADE0, &qword_24F989DC0);
  swift_allocObject();
  *(v14 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B8;
  swift_allocObject();
  *(v14 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v14 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  v35 = sub_24F92ADA8();

  v36 = v19;

  v37 = v59;

  sub_24E601704(v50, &qword_27F228530, &unk_24F93C6E0);
  *(v14 + v34) = v35;
  v38 = qword_27F22F1E0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v40 = *(*(v39 - 8) + 56);
  v40(v14 + v38, 1, 1, v39);
  v40(v14 + qword_27F22F1E8, 1, 1, v39);
  v41 = v56;
  *(v14 + 16) = v37;
  sub_24E911D90(v54, v14 + qword_27F39C7D0);
  *v23 = sub_24F1CD960;
  v23[1] = v17;
  *v25 = 0;
  v25[1] = 0;
  if (v41)
  {
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    v43 = sub_24E965688;
  }

  else
  {
    v43 = 0;
    v42 = 0;
  }

  v44 = v52;
  v45 = v53;
  *v53 = v43;
  v45[1] = v42;
  *v44 = sub_24F041920;
  v44[1] = v36;
  v46 = v51;
  v47 = v55;
  *v51 = sub_24ECF3DB0;
  v46[1] = v47;
  v48 = v58;
  *(v14 + qword_27F22F1F0) = v57;
  *(v14 + qword_27F39C7D8) = v48;
  return v14;
}

uint64_t SearchFocusDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v70 = a3;
  v71 = a4;
  v62 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - v14;
  v64 = a2;
  sub_24E60169C(a2, &v61 - v14, &qword_27F228530, &unk_24F93C6E0);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_24E911D90(v15, v18 + v16);
  v19 = v62;
  *(v18 + v17) = v62;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v63 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a5;
  sub_24E60169C(a2, v12, &qword_27F228530, &unk_24F93C6E0);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_24F1CDDF4;
  *(v21 + 24) = v19;
  v68 = v21;
  *(v6 + qword_27F22F198) = 0;
  v22 = MEMORY[0x277D84F90];
  *(v6 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v23 = qword_27F39C780;
  v72 = a5;
  swift_retain_n();
  swift_retain_n();

  *(v6 + v23) = sub_24E60986C(v22);
  v24 = (v6 + qword_27F22F1A8);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v6 + qword_27F22F1B0);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v6 + qword_27F22F1B8);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v6 + qword_27F22F1C0);
  *v27 = 0;
  v27[1] = 0;
  v65 = v27;
  v28 = (v6 + qword_27F22F1C8);
  *v28 = 0;
  v28[1] = 0;
  v66 = v28;
  v29 = (v6 + qword_27F39C788);
  *v29 = 0u;
  v29[1] = 0u;
  *(v29 + 25) = 0u;
  *(v6 + qword_27F39C790) = 0;
  *(v6 + qword_27F22F1D0) = 0;
  *(v6 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v6 + qword_27F39C798) = 0;
  v30 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADC8, &qword_24F989DB0);
  swift_allocObject();
  *(v6 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v6 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADE0, &qword_24F989DC0);
  swift_allocObject();
  *(v6 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7B8;
  swift_allocObject();
  *(v6 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v6 + v34) = sub_24F92ADA8();
  v35 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  v36 = sub_24F92ADA8();
  v37 = v63;

  v69 = v20;

  sub_24E601704(v64, &qword_27F228530, &unk_24F93C6E0);
  *(v6 + v35) = v36;
  v38 = qword_27F22F1E0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v40 = *(*(v39 - 8) + 56);
  v40(v6 + v38, 1, 1, v39);
  v41 = v39;
  v42 = v70;
  v40(v6 + qword_27F22F1E8, 1, 1, v41);
  *(v6 + 16) = v19;
  sub_24E911D90(v67, v6 + qword_27F39C7D0);
  v43 = *v24;
  v44 = v24[1];
  *v24 = sub_24F1CDDF0;
  v24[1] = v37;
  sub_24E824448(v43, v44);
  v45 = *v26;
  v46 = v26[1];
  *v26 = 0;
  v26[1] = 0;
  sub_24E824448(v45, v46);
  if (v42)
  {
    v47 = swift_allocObject();
    *(v47 + 16) = v42;
    v48 = sub_24EC02BCC;
  }

  else
  {
    v48 = 0;
    v47 = 0;
  }

  v50 = *v25;
  v49 = v25[1];
  *v25 = v48;
  v25[1] = v47;
  sub_24E824448(v50, v49);
  v51 = v65;
  v52 = *v65;
  v53 = v65[1];
  v54 = v69;
  *v65 = sub_24F1CDE1C;
  v51[1] = v54;
  sub_24E824448(v52, v53);
  v55 = v66;
  v56 = *v66;
  v57 = v66[1];
  v58 = v68;
  *v66 = sub_24ECF4148;
  v55[1] = v58;
  sub_24E824448(v56, v57);
  v59 = v72;
  *(v6 + qword_27F22F1F0) = v71;
  *(v6 + qword_27F39C7D8) = v59;
  return v6;
}

uint64_t sub_24F1CD62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229650, &qword_24F985210);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_24F91F4A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a2, v10, &qword_27F228530, &unk_24F93C6E0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &qword_27F228530, &unk_24F93C6E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229638, &unk_24F9851F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BE08, &qword_24F9D3438);
    sub_24F1CDD7C();
    swift_allocError();
    *v15 = 0;
    return sub_24F92A978();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    (*(v12 + 16))(v7, v14, v11);
    sub_24F929C28();

    sub_24F928FE8();
    sub_24F929BF8();

    v17 = sub_24F929C08();

    v18 = sub_24EB498B4(v7, v17, "GameStoreKit/SearchFocusDiffablePageContentPresenter.swift", 58, 2);

    sub_24E601704(v7, &qword_27F229650, &qword_24F985210);
    (*(v12 + 8))(v14, v11);
    return v18;
  }
}

uint64_t sub_24F1CD964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();
  sub_24F929BF8();

  v4 = sub_24F929C18();

  v5 = sub_24EB46264(a1, v4, "GameStoreKit/SearchFocusDiffablePageContentPresenter.swift", 58, 2);

  return v5;
}

uint64_t sub_24F1CDA54(uint64_t a1, uint64_t a2)
{
  sub_24E60169C(a1, &v6, &qword_27F2129B0, &unk_24F945320);
  if (v7)
  {
    sub_24E612B0C(&v6, v8);
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    sub_24E643A9C(v8, &v6);
    v3 = sub_24EB49B50(&v6, a2, "GameStoreKit/SearchFocusDiffablePageContentPresenter.swift", 58, 2);

    sub_24E601704(&v6, &qword_27F229640, &unk_24F9D3440);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    sub_24E601704(&v6, &qword_27F2129B0, &unk_24F945320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229638, &unk_24F9851F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BE08, &qword_24F9D3438);
    sub_24F1CDD7C();
    swift_allocError();
    *v5 = 2;
    return sub_24F92A978();
  }
}

uint64_t SearchFocusDiffablePageContentPresenter.__deallocating_deinit()
{
  _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_24F1CDC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_24E824448(a10, a11);
  sub_24E824448(a6, a7);
  sub_24E824448(a4, a5);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_24F1CDC94()
{

  return swift_deallocObject();
}

uint64_t sub_24F1CDCCC()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for SearchFocusDiffablePageContentPresenter(uint64_t a1)
{
  result = qword_27F23BDF8;
  if (!qword_27F23BDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F1CDD7C()
{
  result = qword_27F23BE10;
  if (!qword_27F23BE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BE08, &qword_24F9D3438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BE10);
  }

  return result;
}

uint64_t sub_24F1CDE34(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = _s9ViewModelVMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24F1CDEF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = _s9ViewModelVMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ArticlePageEditorialStoryCardViewModel(uint64_t a1)
{
  result = qword_27F23BE18;
  if (!qword_27F23BE18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F1CDFE4(uint64_t a1)
{
  result = type metadata accessor for EditorialStoryCard(319);
  if (v2 <= 0x3F)
  {
    result = sub_24F928FD8();
    if (v3 <= 0x3F)
    {
      result = _s9ViewModelVMa(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_24F1CE104()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  if (sub_24F1CE294())
  {
    return 1;
  }

  v8 = *v0;
  sub_24E747EE8(*v0 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_title, v6);
  v9 = sub_24F91F008();
  v10 = *(*(v9 - 8) + 48);
  v7 = 1;
  v11 = v10(v6, 1, v9);
  sub_24E601704(v6, &qword_27F215340, &qword_24F943530);
  if (v11 == 1)
  {
    sub_24E747EE8(v8 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_description, v3);
    v7 = v10(v3, 1, v9) != 1;
    sub_24E601704(v3, &qword_27F215340, &qword_24F943530);
  }

  return v7;
}

uint64_t sub_24F1CE294()
{
  v1 = sub_24F91F008();
  v31 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236B38, &unk_24F9D3490);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = type metadata accessor for EditorialStoryCard.Badge(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  sub_24EFF5FA0(*v0 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_badge, &v30 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
  v18 = *(v17 - 8);
  (*(v18 + 56))(v13, 2, 2, v17);
  v19 = *(v5 + 56);
  sub_24EFF5FA0(v16, v7);
  sub_24EFF5FA0(v13, &v7[v19]);
  v20 = *(v18 + 48);
  v21 = v20(v7, 2, v17);
  if (!v21)
  {
    v30 = v1;
    v22 = v31;
    sub_24EFF5FA0(v7, v10);
    if (!v20(&v7[v19], 2, v17))
    {
      v25 = v22;
      v26 = *(v22 + 32);
      v27 = v30;
      v26(v3, &v7[v19], v30);
      v28 = sub_24F91EED8();
      v29 = *(v25 + 8);
      v29(v3, v27);
      sub_24EFF6004(v13);
      sub_24EFF6004(v16);
      v29(v10, v27);
      sub_24EFF6004(v7);
      v23 = v28 ^ 1;
      return v23 & 1;
    }

    sub_24EFF6004(v13);
    sub_24EFF6004(v16);
    (*(v22 + 8))(v10, v30);
    goto LABEL_9;
  }

  if (v21 == 1)
  {
    sub_24EFF6004(v13);
    sub_24EFF6004(v16);
    if (v20(&v7[v19], 2, v17) != 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_24EFF6004(v13);
    sub_24EFF6004(v16);
    if (v20(&v7[v19], 2, v17) != 2)
    {
LABEL_9:
      sub_24E601704(v7, &qword_27F236B38, &unk_24F9D3490);
      v23 = 1;
      return v23 & 1;
    }
  }

  sub_24EFF6004(v7);
  v23 = 0;
  return v23 & 1;
}

uint64_t SearchLockupListLayout.__allocating_init(metrics:iconHeadingView:titleHeadingView:lockupCollectionView:)(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  v9 = *(a1 + 112);
  *(v8 + 232) = *(a1 + 96);
  *(v8 + 248) = v9;
  *(v8 + 264) = *(a1 + 128);
  v10 = *(a1 + 48);
  *(v8 + 168) = *(a1 + 32);
  *(v8 + 184) = v10;
  v11 = *(a1 + 80);
  *(v8 + 200) = *(a1 + 64);
  *(v8 + 216) = v11;
  v12 = *(a1 + 16);
  *(v8 + 136) = *a1;
  *(v8 + 280) = *(a1 + 144);
  *(v8 + 152) = v12;
  sub_24E612C80(a2, v8 + 16);
  sub_24E612C80(a3, v8 + 56);
  sub_24E612C80(a4, v8 + 96);
  return v8;
}

uint64_t SearchLockupListLayout.init(metrics:iconHeadingView:titleHeadingView:lockupCollectionView:)(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v7 = *(a1 + 112);
  *(v4 + 232) = *(a1 + 96);
  *(v4 + 248) = v7;
  *(v4 + 264) = *(a1 + 128);
  v8 = *(a1 + 48);
  *(v4 + 168) = *(a1 + 32);
  *(v4 + 184) = v8;
  v9 = *(a1 + 80);
  *(v4 + 200) = *(a1 + 64);
  *(v4 + 216) = v9;
  v10 = *(a1 + 16);
  *(v4 + 136) = *a1;
  *(v4 + 280) = *(a1 + 144);
  *(v4 + 152) = v10;
  sub_24E612C80(a2, v4 + 16);
  sub_24E612C80(a3, v4 + 56);
  sub_24E612C80(a4, v4 + 96);
  return v4;
}

uint64_t SearchLockupListLayout.Metrics.init(headingLeadingSpace:titleLeadingSpace:lockupCollectionViewTopSpace:layoutMargins:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  sub_24E612C80(a1, a4);
  sub_24E612C80(a2, (a4 + 5));
  result = sub_24E612C80(a3, (a4 + 10));
  a4[15] = a5;
  a4[16] = a6;
  a4[17] = a7;
  a4[18] = a8;
  return result;
}

double sub_24F1CE93C(uint64_t a1, double a2, double a3)
{
  v3 = sub_24F922758();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F1CEB64(v6);
  sub_24F9226D8();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t sub_24F1CEA54(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = sub_24F922758();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F1CEB64(v8);
  sub_24F9226E8();
  return (*(v6 + 8))(v8, v5);
}

void sub_24F1CEB64(uint64_t a1@<X8>)
{
  v3 = v2;
  v48 = a1;
  v60 = sub_24F922708();
  v67 = *(v60 - 8);
  v4 = v67;
  MEMORY[0x28223BE20](v60);
  v55 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_24F922718();
  v66 = *(v42 - 8);
  v6 = v66;
  MEMORY[0x28223BE20](v42);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_24F9226C8();
  v65 = *(v49 - 8);
  v8 = v65;
  MEMORY[0x28223BE20](v49);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A88, &unk_24F9B8120);
  v11 = *(sub_24F922748() - 8);
  v45 = *(v11 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v46 = 2 * v45;
  v13 = swift_allocObject();
  v47 = v13;
  *(v13 + 16) = xmmword_24F9479A0;
  v50 = v13 + v12;
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  sub_24F922258();
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v44 = *MEMORY[0x277D227C8];
  v14 = *(v8 + 104);
  v63 = v8 + 104;
  v64 = v14;
  v14(v10);
  v43 = *MEMORY[0x277D227F0];
  v15 = *(v6 + 104);
  v61 = v6 + 104;
  v62 = v15;
  v16 = v41;
  v17 = v42;
  v15(v41);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E8, &unk_24F9AC240);
  v58 = *(v4 + 72);
  v18 = v67;
  v57 = *(v67 + 80);
  v40 = (v57 + 32) & ~v57;
  v19 = swift_allocObject();
  v56 = xmmword_24F93DE60;
  *(v19 + 16) = xmmword_24F93DE60;
  sub_24F9226F8();
  v68 = v19;
  v53 = sub_24EED36B4(v20);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330F0, &qword_24F9C0E50);
  v54 = sub_24EED370C();
  v21 = v55;
  v22 = v60;
  sub_24F92C6A8();
  v23 = v37;
  sub_24F922738();
  v39 = *(v18 + 8);
  v67 = v18 + 8;
  v39(v21, v22);
  v38 = *(v66 + 8);
  v66 += 8;
  v24 = v17;
  v38(v16, v17);
  v25 = *(v65 + 8);
  v65 += 8;
  v51 = v25;
  v26 = v49;
  v25(v23, v49);
  sub_24E930E6C(&v69);
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
  sub_24F922258();
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v27 = v26;
  v64(v23, v44, v26);
  v62(v16, v43, v24);
  v28 = swift_allocObject();
  *(v28 + 16) = v56;
  sub_24F9226F8();
  v68 = v28;
  v29 = v55;
  v30 = v60;
  sub_24F92C6A8();
  sub_24F922738();
  v31 = v39;
  v39(v29, v30);
  v32 = v24;
  v33 = v24;
  v34 = v38;
  v38(v16, v33);
  v51(v23, v27);
  sub_24E930E6C(&v69);
  __swift_destroy_boxed_opaque_existential_1(v72);
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v64(v23, *MEMORY[0x277D227D0], v27);
  v35 = v32;
  v62(v16, *MEMORY[0x277D227E8], v32);
  v36 = swift_allocObject();
  *(v36 + 16) = v56;
  sub_24F9226F8();
  *&v69 = v36;
  sub_24F92C6A8();
  sub_24F922738();
  v31(v29, v30);
  v34(v16, v35);
  v51(v23, v49);
  sub_24E930E6C(v72);
  sub_24F922728();
}

void *SearchLockupListLayout.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_24F1CF3F4((v0 + 17));
  return v0;
}

uint64_t SearchLockupListLayout.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_24F1CF3F4((v0 + 17));

  return swift_deallocClassInstance();
}

uint64_t sub_24F1CF474(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = sub_24F922758();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F1CEB64(v8);
  sub_24F9226E8();
  return (*(v6 + 8))(v8, v5);
}

double sub_24F1CF588(uint64_t a1, double a2, double a3)
{
  v3 = sub_24F922758();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F1CEB64(v6);
  sub_24F9226D8();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t ArcadeFooterLayout.ButtonLocation.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t ArcadeFooterLayout.__allocating_init(metrics:riverView:wordmarkView:buttonView:footnoteView:)(const void *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  memcpy((v10 + 16), a1, 0x250uLL);
  sub_24E612C80(a2, v10 + 608);
  sub_24E612C80(a3, v10 + 648);
  sub_24E612C80(a4, v10 + 688);
  v11 = *(a5 + 16);
  *(v10 + 728) = *a5;
  *(v10 + 744) = v11;
  *(v10 + 760) = *(a5 + 32);
  return v10;
}

uint64_t ArcadeFooterLayout.init(metrics:riverView:wordmarkView:buttonView:footnoteView:)(void *__src, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  memcpy((v5 + 16), __src, 0x250uLL);
  sub_24E612C80(a2, v5 + 608);
  sub_24E612C80(a3, v5 + 648);
  sub_24E612C80(a4, v5 + 688);
  v10 = *(a5 + 16);
  *(v5 + 728) = *a5;
  *(v5 + 744) = v10;
  *(v5 + 760) = *(a5 + 32);
  return v5;
}

uint64_t sub_24F1CF910(uint64_t a1, uint64_t *a2)
{
  sub_24F1CF9B4(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  sub_24F1CFA3C(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t sub_24F1CF9EC(uint64_t a1)
{
  swift_beginAccess();
  sub_24F1CFA3C(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t ArcadeFooterLayout.Metrics.init(iconSize:iconSpacing:iconRowCount:firstIconHorizontalOffset:wordmarkTopMargin:wordmarkHeight:buttonLocation:buttonTopMargin:buttonBottomMargin:buttonViewTopSpace:buttonViewBottomSpace:buttonMinWidth:buttonPreferredEdgeInsets:footnoteTopSpace:footnoteBottomSpace:footnoteSpaceMultiplier:layoutMargins:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, __int128 *a17, __int128 *a18, uint64_t a19, uint64_t a20, __int128 *a21, __int128 *a22, __int128 *a23)
{
  v32 = *a7;
  *(a9 + 392) = 0;
  *(a9 + 360) = 0u;
  *(a9 + 376) = 0u;
  *a9 = a10;
  *(a9 + 8) = a11;
  sub_24E612C80(a1, a9 + 16);
  *(a9 + 56) = a2;
  *(a9 + 64) = a3 & 1;
  sub_24E612C80(a4, a9 + 72);
  sub_24E612C80(a5, a9 + 112);
  sub_24E612C80(a6, a9 + 152);
  *(a9 + 192) = v32;
  sub_24E612C80(a8, a9 + 200);
  sub_24E612C80(a16, a9 + 240);
  sub_24E612C80(a17, a9 + 280);
  sub_24E612C80(a18, a9 + 320);
  sub_24EA63A70(a19, a9 + 360);
  v33 = *(a20 + 16);
  *(a9 + 400) = *a20;
  *(a9 + 416) = v33;
  *(a9 + 432) = *(a20 + 32);
  sub_24E612C80(a21, a9 + 440);
  sub_24E612C80(a22, a9 + 480);
  result = sub_24E612C80(a23, a9 + 520);
  *(a9 + 560) = a12;
  *(a9 + 568) = a13;
  *(a9 + 576) = a14;
  *(a9 + 584) = a15;
  return result;
}

uint64_t ArcadeFooterLayout.Metrics.iconSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return sub_24E612C80(a1, v1 + 16);
}

uint64_t ArcadeFooterLayout.Metrics.iconRowCount.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t ArcadeFooterLayout.Metrics.firstIconHorizontalOffset.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 72));

  return sub_24E612C80(a1, v1 + 72);
}

uint64_t ArcadeFooterLayout.Metrics.wordmarkTopMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 112));

  return sub_24E612C80(a1, v1 + 112);
}

uint64_t ArcadeFooterLayout.Metrics.wordmarkHeight.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 152));

  return sub_24E612C80(a1, v1 + 152);
}

uint64_t ArcadeFooterLayout.Metrics.buttonTopMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 200));

  return sub_24E612C80(a1, v1 + 200);
}

uint64_t ArcadeFooterLayout.Metrics.buttonBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 240));

  return sub_24E612C80(a1, v1 + 240);
}

uint64_t ArcadeFooterLayout.Metrics.buttonViewTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 280));

  return sub_24E612C80(a1, v1 + 280);
}

uint64_t ArcadeFooterLayout.Metrics.buttonViewBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 320));

  return sub_24E612C80(a1, v1 + 320);
}

__n128 ArcadeFooterLayout.Metrics.buttonPreferredEdgeInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 432);
  result = *(v1 + 400);
  v4 = *(v1 + 416);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 ArcadeFooterLayout.Metrics.buttonPreferredEdgeInsets.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 400) = *a1;
  *(v1 + 416) = v3;
  *(v1 + 432) = *(a1 + 32);
  return result;
}

uint64_t ArcadeFooterLayout.Metrics.footnoteTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 440));

  return sub_24E612C80(a1, v1 + 440);
}

uint64_t ArcadeFooterLayout.Metrics.footnoteBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 480));

  return sub_24E612C80(a1, v1 + 480);
}

uint64_t ArcadeFooterLayout.Metrics.footnoteSpaceMultiplier.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 520));

  return sub_24E612C80(a1, v1 + 520);
}

void ArcadeFooterLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[70] = a1;
  v4[71] = a2;
  v4[72] = a3;
  v4[73] = a4;
}

uint64_t sub_24F1D0248@<X0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v69 = a2;
  v12 = sub_24F922C28();
  MEMORY[0x28223BE20](v12 - 8);
  v68 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F92CDB8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_24F92C1C8();
  x = v81.origin.x;
  y = v81.origin.y;
  width = v81.size.width;
  height = v81.size.height;
  MaxY = CGRectGetMaxY(v81);
  v82.origin.x = a3;
  v82.origin.y = a4;
  v82.size.width = a5;
  v82.size.height = a6;
  MinX = CGRectGetMinX(v82);
  v83.origin.x = x;
  v83.origin.y = y;
  v83.size.width = width;
  v83.size.height = height;
  MinY = CGRectGetMinY(v83);
  v70 = a3;
  v71 = a4;
  v84.origin.x = a3;
  v84.origin.y = a4;
  v72 = a5;
  v73 = a6;
  v84.size.width = a5;
  v84.size.height = a6;
  v66 = CGRectGetWidth(v84);
  v85.origin.x = x;
  v85.origin.y = y;
  v85.size.width = width;
  v85.size.height = height;
  v22 = CGRectGetHeight(v85);
  sub_24E60169C(v6 + 728, &v79, &qword_27F229780, &unk_24F965BB0);
  if (v80)
  {
    sub_24E612C80(&v79, v76);
    __swift_project_boxed_opaque_existential_1(v76, v77);
    sub_24F922298();
    v24 = v23;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    v86.origin.x = x;
    v86.origin.y = y;
    v86.size.width = width;
    v86.size.height = height;
    CGRectGetMinX(v86);
    v87.origin.x = x;
    v87.origin.y = y;
    v87.size.width = width;
    v87.size.height = height;
    CGRectGetMaxY(v87);
    v88.origin.x = x;
    v88.origin.y = y;
    v88.size.width = width;
    v88.size.height = height;
    CGRectGetWidth(v88);
    sub_24F922228();
    __swift_project_boxed_opaque_existential_1(v76, v77);
    sub_24F922218();
    v25 = CGRectGetMinY(v89);
    v22 = v22 - v24;
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  else
  {
    sub_24E942EA8(&v79);
    v25 = MaxY;
  }

  MaxY = v25;
  sub_24E615E00(v6 + 296, v76);
  v26 = v77;
  __swift_project_boxed_opaque_existential_1(v76, v77);
  sub_24E8ED7D8(v26);
  v27 = sub_24F9223A8();
  v28 = *(v15 + 8);
  v28(v17, v14);
  sub_24E615E00(v7 + 336, &v79);
  v29 = v80;
  __swift_project_boxed_opaque_existential_1(&v79, v80);
  sub_24E8ED7D8(v29);
  v30 = sub_24F9223A8();
  v28(v17, v14);
  __swift_destroy_boxed_opaque_existential_1(&v79);
  __swift_destroy_boxed_opaque_existential_1(v76);
  sub_24F1CF9B4(v7 + 16, v76);
  if (v78[3])
  {
    sub_24E615E00(v78, &v79);
    sub_24F1D1384(v76);
    v31 = v80;
    __swift_project_boxed_opaque_existential_1(&v79, v80);
    sub_24E8ED7D8(v31);
    v32 = sub_24F9223A8();
    v28(v17, v14);
    __swift_destroy_boxed_opaque_existential_1(&v79);
  }

  else
  {
    sub_24F1D1384(v76);
    v32 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1((v7 + 688), *(v7 + 712));
  sub_24F922298();
  if (v32 <= v33)
  {
    v32 = v33;
  }

  if ((*(v7 + 448) & 1) == 0)
  {
    v34 = *(v7 + 424);
    v35 = (v32 - v33) * 0.5;
    if (v35 < v34)
    {
      v32 = v32 + v34 - v35 + v34 - v35;
    }
  }

  v64 = v27 + v30;
  v65 = v22;
  v90.origin.x = x;
  v90.origin.y = y;
  v90.size.width = width;
  v90.size.height = height;
  v36 = CGRectGetWidth(v90);
  if (v32 >= v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = v32;
  }

  __swift_project_boxed_opaque_existential_1((v7 + 648), *(v7 + 672));
  sub_24F922298();
  v39 = v38;
  v75 = v40;
  v41 = *(v7 + 208);
  v91.origin.x = x;
  v91.origin.y = y;
  v91.size.width = width;
  v91.size.height = height;
  MidX = CGRectGetMidX(v91);
  if (v41 == 1)
  {
    v61 = MidX - v37 * 0.5;
    v62 = v37;
    v43 = y;
    v44 = v64;
    v45 = MaxY - v64;
    sub_24E615E00(v7 + 256, v76);
    v46 = v77;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    sub_24E8ED7D8(v46);
    v47 = sub_24F9223A8();
    v28(v17, v14);
    __swift_destroy_boxed_opaque_existential_1(v76);
    v92.origin.x = x;
    v92.origin.y = v43;
    v92.size.width = width;
    v92.size.height = height;
    CGRectGetMidX(v92);
    v93.size.width = v62;
    v93.origin.x = v61;
    v93.origin.y = v45 - v47;
    v93.size.height = v44;
    CGRectGetMinY(v93);
    sub_24E615E00(v7 + 216, v76);
  }

  else
  {
    v49 = MidX - v39 * 0.5;
    MaxY = v49;
    v94.origin.x = x;
    v94.origin.y = y;
    v94.size.width = width;
    v94.size.height = height;
    MinY = CGRectGetMinY(v94);
    sub_24E615E00(v7 + 128, v76);
    v50 = v77;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    sub_24E8ED7D8(v50);
    v51 = sub_24F9223A8();
    v28(v17, v14);
    v52 = MinY + v51;
    __swift_destroy_boxed_opaque_existential_1(v76);
    v95.origin.x = x;
    v95.origin.y = y;
    v95.size.width = width;
    v95.size.height = height;
    v53 = CGRectGetMidX(v95) - v37 * 0.5;
    v96.origin.x = v49;
    v96.origin.y = v52;
    v96.size.width = v39;
    v96.size.height = v75;
    v54 = CGRectGetMaxY(v96);
    sub_24E615E00(v7 + 216, v76);
    v55 = v77;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    sub_24E8ED7D8(v55);
    v56 = sub_24F9223A8();
    v28(v17, v14);
    __swift_destroy_boxed_opaque_existential_1(v76);
    v97.origin.x = v53;
    v97.origin.y = v54 + v56;
    v97.size.width = v37;
    v97.size.height = v64;
    CGRectGetMaxY(v97);
    sub_24E615E00(v7 + 256, v76);
  }

  v48 = v77;
  __swift_project_boxed_opaque_existential_1(v76, v77);
  sub_24E8ED7D8(v48);
  sub_24F9223A8();
  v28(v17, v14);
  __swift_destroy_boxed_opaque_existential_1(v76);
  __swift_project_boxed_opaque_existential_1((v7 + 688), *(v7 + 712));
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1((v7 + 648), *(v7 + 672));
  sub_24F922228();
  sub_24E615E00(v7 + 128, v76);
  v57 = v77;
  __swift_project_boxed_opaque_existential_1(v76, v77);
  sub_24E8ED7D8(v57);
  sub_24F9223A8();
  v28(v17, v14);
  __swift_destroy_boxed_opaque_existential_1(v76);
  sub_24E615E00(v7 + 256, v76);
  v58 = v77;
  __swift_project_boxed_opaque_existential_1(v76, v77);
  sub_24E8ED7D8(v58);
  sub_24F9223A8();
  v28(v17, v14);
  __swift_destroy_boxed_opaque_existential_1(v76);
  sub_24E615E00(v7 + 216, v76);
  v59 = v77;
  __swift_project_boxed_opaque_existential_1(v76, v77);
  sub_24E8ED7D8(v59);
  sub_24F9223A8();
  v28(v17, v14);
  __swift_destroy_boxed_opaque_existential_1(v76);
  __swift_project_boxed_opaque_existential_1((v7 + 608), *(v7 + 632));
  sub_24F922228();
  sub_24F922C18();
  return sub_24F922188();
}

void *ArcadeFooterLayout.deinit()
{
  sub_24F1D1384((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 76);
  __swift_destroy_boxed_opaque_existential_1(v0 + 81);
  __swift_destroy_boxed_opaque_existential_1(v0 + 86);
  sub_24E942EA8((v0 + 91));
  return v0;
}

uint64_t ArcadeFooterLayout.__deallocating_deinit()
{
  sub_24F1D1384((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 76);
  __swift_destroy_boxed_opaque_existential_1(v0 + 81);
  __swift_destroy_boxed_opaque_existential_1(v0 + 86);
  sub_24E942EA8((v0 + 91));

  return swift_deallocClassInstance();
}

uint64_t sub_24F1D0D88(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  WitnessTable = swift_getWitnessTable();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, WitnessTable, a3, v11, v12);
}

uint64_t sub_24F1D0E0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24F1CF9B4(v3 + 16, a1);
}

void _s12GameStoreKit18ArcadeFooterLayoutC21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = sub_24F92CDB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9225E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F922618();
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 64) & 1) == 0)
  {
    v31 = v6;
    v32 = v5;
    v34 = v15;
    v35 = v14;
    v19 = *(a1 + 56);
    v20 = *MEMORY[0x277D22788];
    v21 = *(v10 + 104);
    v33 = v12;
    v21(v12, v20, v9, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_24F9C5960;
    v23 = MEMORY[0x277D85048];
    v24 = *(a1 + 560);
    v25 = MEMORY[0x277D225F8];
    v37 = MEMORY[0x277D85048];
    v38 = MEMORY[0x277D225F8];
    v36[0] = v24;
    v26 = sub_24F9229A8();
    v27 = MEMORY[0x277D228E0];
    *(v22 + 56) = v26;
    *(v22 + 64) = v27;
    __swift_allocate_boxed_opaque_existential_1((v22 + 32));
    sub_24F9229B8();
    v28 = *(a1 + 8);
    v37 = v23;
    v38 = v25;
    v36[0] = v28;
    *(v22 + 96) = v26;
    *(v22 + 104) = v27;
    __swift_allocate_boxed_opaque_existential_1((v22 + 72));
    sub_24F9229B8();
    sub_24E615E00(a1 + 16, v36);
    if (__OFSUB__(v19, 1))
    {
      __break(1u);
    }

    else
    {
      *(v22 + 136) = v26;
      *(v22 + 144) = v27;
      __swift_allocate_boxed_opaque_existential_1((v22 + 112));
      sub_24F9229B8();
      sub_24E615E00(a1 + 112, v36);
      *(v22 + 176) = v26;
      *(v22 + 184) = v27;
      __swift_allocate_boxed_opaque_existential_1((v22 + 152));
      sub_24F9229B8();
      sub_24E615E00(a1 + 152, v36);
      *(v22 + 216) = v26;
      *(v22 + 224) = v27;
      __swift_allocate_boxed_opaque_existential_1((v22 + 192));
      sub_24F9229B8();
      sub_24E615E00(a1 + 200, v36);
      *(v22 + 256) = v26;
      *(v22 + 264) = v27;
      __swift_allocate_boxed_opaque_existential_1((v22 + 232));
      sub_24F9229B8();
      sub_24E615E00(a1 + 280, v36);
      *(v22 + 296) = v26;
      *(v22 + 304) = v27;
      __swift_allocate_boxed_opaque_existential_1((v22 + 272));
      sub_24F9229B8();
      sub_24E615E00(a1 + 320, v36);
      *(v22 + 336) = v26;
      *(v22 + 344) = v27;
      __swift_allocate_boxed_opaque_existential_1((v22 + 312));
      sub_24F9229B8();
      sub_24E615E00(a1 + 240, v36);
      *(v22 + 376) = v26;
      *(v22 + 384) = v27;
      __swift_allocate_boxed_opaque_existential_1((v22 + 352));
      sub_24F9229B8();
      sub_24E615E00(a1 + 440, v36);
      v29 = *(a1 + 544);
      __swift_project_boxed_opaque_existential_1((a1 + 520), v29);
      sub_24E8ED7D8(v29);
      sub_24F9223A8();
      (*(v31 + 8))(v8, v32);
      *(v22 + 416) = v26;
      *(v22 + 424) = v27;
      __swift_allocate_boxed_opaque_existential_1((v22 + 392));
      sub_24F9229B8();
      sub_24E615E00(a1 + 480, v36);
      *(v22 + 456) = v26;
      *(v22 + 464) = v27;
      __swift_allocate_boxed_opaque_existential_1((v22 + 432));
      sub_24F9229B8();
      v30 = *(a1 + 576);
      v37 = MEMORY[0x277D85048];
      v38 = MEMORY[0x277D225F8];
      v36[0] = v30;
      *(v22 + 496) = v26;
      *(v22 + 504) = v27;
      __swift_allocate_boxed_opaque_existential_1((v22 + 472));
      sub_24F9229B8();
      sub_24F9225F8();
      sub_24F9225D8();
      (*(v34 + 8))(v18, v35);
    }
  }
}

unint64_t sub_24F1D13B8()
{
  result = qword_27F23BE28;
  if (!qword_27F23BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BE28);
  }

  return result;
}

unint64_t sub_24F1D1410(uint64_t a1, uint64_t a2)
{
  result = qword_27F23BE30;
  if (!qword_27F23BE30)
  {
    type metadata accessor for ArcadeFooterLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BE30);
  }

  return result;
}

uint64_t sub_24F1D1488@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24F1CF9B4(v3 + 16, a2);
}

uint64_t sub_24F1D15AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 592))
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

uint64_t sub_24F1D15F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 584) = 0;
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
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 592) = 1;
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

    *(result + 592) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t UpsellGridPresenter.__allocating_init(objectGraph:contentDictionary:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_contentDictionary) = a2;
  v5 = sub_24EC8415C(a1, 0, 0, 0);

  return v5;
}

uint64_t UpsellGridPresenter.init(objectGraph:contentDictionary:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_contentDictionary) = a2;
  v5 = sub_24EC8415C(a1, 0, 0, 0);

  return v5;
}

double UpsellGridPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*UpsellGridPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

double sub_24F1D199C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a2 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(*(v3 + 16), *(v3 + 24), ObjectType, v5);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  *(a2 + 32) = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v4 + 8);
    v9 = swift_getObjectType();
    (*(*(v8 + 16) + 16))(v9);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24F1D1A88(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  swift_beginAccess();
  *(a2 + 32) = 0;
  v7 = a2 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v8 + 16) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v7 + 8);
    v11 = swift_getObjectType();
    v12 = sub_24F91F4A8();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = type metadata accessor for PresenterError(0);
    sub_24F1D2278();
    v14 = swift_allocError();
    *v15 = a1;
    sub_24E911D90(v6, v15 + *(v13 + 20));
    v16 = *(v10 + 16);
    v17 = *(v16 + 24);
    v18 = a1;
    v17(v14, v11, v16);
    swift_unknownObjectRelease();
  }

  if (qword_27F210568 != -1)
  {
    swift_once();
  }

  v19 = sub_24F92AAE8();
  __swift_project_value_buffer(v19, qword_27F39C398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v20 = v24;
  v21 = v25;
  v26[3] = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v20, v21);
  sub_24F928438();
  sub_24E857CC8(v26);
  sub_24F92A5A8();
}

uint64_t sub_24F1D1E0C()
{
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view);
}

uint64_t UpsellGridPresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view);

  return v0;
}

uint64_t UpsellGridPresenter.__deallocating_deinit()
{
  BasePresenter.deinit();
  v0 = OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view;

  sub_24E883630(v1 + v0);

  return swift_deallocClassInstance();
}

uint64_t _s12GameStoreKit19UpsellGridPresenterC6update13ignoringCacheySb_tF_0()
{
  swift_beginAccess();
  *(v0 + 32) = 1;
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v2 + 16) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  type metadata accessor for JSIntentDispatcher();
  v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph);
  sub_24F928FD8();
  sub_24F92A758();
  sub_24EB4729C(*(v0 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_contentDictionary), v4, "GameStoreKit/UpsellGridPresenter.swift", 38, 2);
  v5 = sub_24E74EC40();
  swift_retain_n();
  v6 = sub_24F92BEF8();
  v8[3] = v5;
  v8[4] = MEMORY[0x277D225C0];
  v8[0] = v6;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_24F1D20C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24F1D2120(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t type metadata accessor for UpsellGridPresenter(uint64_t a1)
{
  result = qword_27F23BE40;
  if (!qword_27F23BE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F1D2278()
{
  result = qword_27F22B028;
  if (!qword_27F22B028)
  {
    type metadata accessor for PresenterError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B028);
  }

  return result;
}

uint64_t sub_24F1D22E0(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v11 = *(i - 1);
    v10 = *i;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *a2;
    v13 = v28;
    *a2 = 0x8000000000000000;
    v14 = sub_24E7728F0(v11, v10);
    v16 = v13[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v13[3] < v19)
    {
      sub_24E8A3030(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_24E7728F0(v11, v10);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v20)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v26 = v14;
    sub_24E8B347C();
    v14 = v26;
    if (v20)
    {
LABEL_3:
      v5 = v28;
      v6 = v28[7] + (v14 << 6);
      v7 = *(v6 + 48);
      v9 = *v6;
      v8 = *(v6 + 16);
      v27[2] = *(v6 + 32);
      v27[3] = v7;
      v27[0] = v9;
      v27[1] = v8;
      *v6 = 4;
      *(v6 + 8) = 0u;
      *(v6 + 24) = 0u;
      *(v6 + 40) = 0;
      *(v6 + 48) = xmmword_24F966510;
      sub_24E88D2AC(v27);
      goto LABEL_4;
    }

LABEL_11:
    v5 = v28;
    v28[(v14 >> 6) + 8] |= 1 << v14;
    v22 = (v5[6] + 16 * v14);
    *v22 = v11;
    v22[1] = v10;
    v23 = v5[7] + (v14 << 6);
    *v23 = 4;
    *(v23 + 40) = 0;
    *(v23 + 24) = 0u;
    *(v23 + 8) = 0u;
    *(v23 + 48) = xmmword_24F966510;
    v24 = v5[2];
    v18 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v18)
    {
      goto LABEL_17;
    }

    v5[2] = v25;

LABEL_4:
    *a2 = v5;

    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

double sub_24F1D2514(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_24F1D2574(uint64_t *a1))(uint64_t, char)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24F1D2608;
}

uint64_t DefaultAppStateDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t DefaultAppStateDataSource.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

double sub_24F1D2678@<D0>(uint64_t a1@<X8>)
{
  *a1 = 4;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  result = -0.0;
  *(a1 + 48) = xmmword_24F966510;
  return result;
}

uint64_t sub_24F1D26A0(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  sub_24F1D22E0(a1, &v2);
  return v2;
}

uint64_t DefaultAppStateDataSource.__deallocating_deinit()
{
  sub_24E883630(v0 + 16);

  return swift_deallocClassInstance();
}

void (*sub_24F1D2738(uint64_t *a1))(uint64_t, char)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24F1D2A50;
}

uint64_t sub_24F1D27CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24F1D281C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

char *ClearSearchHistoryAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *ClearSearchHistoryAction.__allocating_init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v10 = sub_24F91F6B8();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v29 = a1;
  sub_24E60169C(a1, v39, &qword_27F235830, &qword_24F93B8C0);
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v28 = a6;
  v17(&v13[v14], a6, v15);
  sub_24E60169C(a7, &v13[OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics], &qword_27F213E68, &unk_24F93BC80);
  v18 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E60169C(v39, &v36, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v37 + 1))
  {
    v20 = v37;
    *v19 = v36;
    *(v19 + 1) = v20;
    *(v19 + 4) = v38;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v27 + 8))(v12, v10);
    v34 = v21;
    v35 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a7, &qword_27F213E68, &unk_24F93BC80);
  (*(v16 + 8))(v28, v15);
  sub_24E601704(v29, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v39, &qword_27F235830, &qword_24F93B8C0);
  v24 = v31;
  *(v13 + 2) = v30;
  *(v13 + 3) = v24;
  v25 = v33;
  *(v13 + 4) = v32;
  *(v13 + 5) = v25;
  return v13;
}

void *ClearSearchHistoryAction.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a7;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v40 = a2;
  v37 = sub_24F91F6B8();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v20 = a1;
  v21 = a6;
  v22 = v38;
  sub_24E60169C(v20, v52, &qword_27F235830, &qword_24F93B8C0);
  (*(v17 + 16))(v19, v21, v16);
  sub_24E60169C(v22, v15, &qword_27F213E68, &unk_24F93BC80);
  v23 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_24E60169C(v52, &v46, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    sub_24F91F6A8();
    v24 = v22;
    v25 = sub_24F91F668();
    v26 = v15;
    v28 = v27;
    (*(v36 + 8))(v12, v37);
    v44 = v25;
    v45 = v28;
    v22 = v24;
    v15 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v46, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v22, &qword_27F213E68, &unk_24F93BC80);
  (*(v17 + 8))(v21, v16);
  sub_24E601704(v39, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v52, &qword_27F235830, &qword_24F93B8C0);
  v29 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v29 + 4) = v51;
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  sub_24E65E0D4(v15, v8 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v31 = v41;
  v32 = v42;
  v8[2] = v40;
  v8[3] = v31;
  v33 = v43;
  v8[4] = v32;
  v8[5] = v33;
  (*(v17 + 32))(v8 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v8;
}

char *ClearSearchHistoryAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}