uint64_t sub_213EFF324@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a3;
  v5 = sub_213F4D9E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AudioPickerView(0);
  v131 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v132 = v10;
  v134 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_213F4CE70();
  v136 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v135 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF58, &qword_213F623D8);
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v137 = &v104 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v104 - v14;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBFE0, &qword_213F62410);
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = &v104 - v16;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF98, &qword_213F623F8);
  MEMORY[0x28223BE20](v117);
  v143 = &v104 - v17;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF90, &qword_213F623F0);
  MEMORY[0x28223BE20](v142);
  v19 = &v104 - v18;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF80, &qword_213F623E8);
  MEMORY[0x28223BE20](v123);
  v122 = &v104 - v20;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF70, &qword_213F623E0);
  MEMORY[0x28223BE20](v121);
  v124 = &v104 - v21;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF50, &qword_213F623D0);
  MEMORY[0x28223BE20](v125);
  v126 = &v104 - v22;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBFE8, &qword_213F62418);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v127 = &v104 - v23;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF48, &qword_213F623C8);
  MEMORY[0x28223BE20](v130);
  v133 = &v104 - v24;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF38, &qword_213F623C0);
  MEMORY[0x28223BE20](v115);
  v139 = &v104 - v25;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF20, &qword_213F623B8);
  MEMORY[0x28223BE20](v113);
  v116 = &v104 - v26;
  v27 = *a1;
  v28 = v9;
  v29 = *(v9 + 24);
  result = type metadata accessor for AudioPickerViewModel(0);
  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v31 = *(a2 + v29 + *(result + 20));
  if (v27 >= *(v31 + 16))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v110 = v8;
  v111 = v6;
  v112 = v5;
  v32 = type metadata accessor for AudioPickerViewModel.AudioOption(0);
  v33 = *(v32 - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v108 = v31;
  v35 = v31 + v34 + *(v33 + 72) * v27;
  v105 = v32;
  v104 = v35;

  v36 = sub_213F4E9F0();
  v107 = v28;
  v37 = (a2 + *(v28 + 32));
  v145 = *v37;
  v106 = v19;
  v38 = v37[1];
  *&v152 = v145;
  *(&v152 + 1) = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEA0, &qword_213F622C8);
  sub_213F4EAA0();
  v109 = a2;
  v40 = v149;
  v41 = objc_opt_self();
  v42 = &selRef_labelColor;
  v144 = v27;
  if (v27 != v40)
  {
    v42 = &selRef_secondaryLabelColor;
  }

  v43 = [v41 *v42];
  v44 = sub_213F4E870();
  v45 = sub_213F4E0F0();
  (*(*(v45 - 8) + 56))(v15, 1, 1, v45);
  v46 = sub_213F4E190();
  sub_213DE36FC(v15, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  *&v152 = v36;
  *(&v152 + 1) = v44;
  *&v153 = KeyPath;
  *(&v153 + 1) = v46;
  sub_213F4E160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9938, &unk_213F59410);
  sub_213E5096C();
  v48 = v118;
  sub_213F4E370();

  sub_213F4EEE0();
  sub_213F4D0C0();
  v49 = v143;
  (*(v119 + 32))(v143, v48, v120);
  v50 = (v49 + *(v117 + 36));
  v51 = v150;
  *v50 = v149;
  v50[1] = v51;
  v50[2] = v151;
  sub_213F4EEE0();
  sub_213F4D4E0();
  v52 = v106;
  sub_213DE2B44(v49, v106, &qword_27C8FBF98, &qword_213F623F8);
  v53 = (v52 + *(v142 + 36));
  v54 = v157;
  v53[4] = v156;
  v53[5] = v54;
  v53[6] = v158;
  v55 = v153;
  *v53 = v152;
  v53[1] = v55;
  v56 = v155;
  v53[2] = v154;
  v53[3] = v56;
  v57 = sub_213F4EF80();
  v147 = v145;
  v143 = v38;
  v148 = v38;
  v142 = v39;
  sub_213F4EAA0();
  v58 = v146;
  v59 = v52;
  v60 = v122;
  sub_213DE2B44(v59, v122, &qword_27C8FBF90, &qword_213F623F0);
  v61 = (v60 + *(v123 + 36));
  *v61 = v57;
  v61[1] = v58;
  v62 = v109;
  v63 = v124;
  sub_213DE2B44(v60, v124, &qword_27C8FBF80, &qword_213F623E8);
  *(v63 + *(v121 + 36)) = 0;
  v64 = v62 + *(v107 + 44);
  v65 = *v64;
  v66 = *(v64 + 8);
  LOBYTE(v147) = v65;
  v123 = v66;
  v148 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v146 == 1 && (v147 = v145, v148 = v143, sub_213F4EAA0(), v146 == v144))
  {
    v67 = 0.98;
  }

  else
  {
    v67 = 1.0;
  }

  sub_213F4F040();
  v69 = v68;
  v71 = v70;
  v72 = v126;
  sub_213DE2B44(v63, v126, &qword_27C8FBF70, &qword_213F623E0);
  v73 = (v72 + *(v125 + 36));
  *v73 = v67;
  v73[1] = v67;
  *(v73 + 2) = v69;
  *(v73 + 3) = v71;
  v74 = v135;
  sub_213F4CE60();
  v75 = v134;
  sub_213F01974(v62, v134, type metadata accessor for AudioPickerView);
  v76 = (*(v131 + 80) + 16) & ~*(v131 + 80);
  v77 = (v132 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  sub_213F01BB8(v75, v78 + v76, type metadata accessor for AudioPickerView);
  v79 = v144;
  *(v78 + v77) = v144;
  v80 = v137;
  v81 = v138;
  sub_213F4ECF0();

  (*(v136 + 8))(v74, v81);
  sub_213F4CF00();
  sub_213F01F04();
  sub_213DE3AE4(&qword_27C8FBFA0, &qword_27C8FBF58, &qword_213F623D8, MEMORY[0x277CDF728]);
  v82 = v127;
  v83 = v141;
  sub_213F4E630();
  (*(v140 + 8))(v80, v83);
  v84 = v72;
  v85 = v79;
  v86 = sub_213DE36FC(v84, &qword_27C8FBF50, &qword_213F623D0);
  v87 = MEMORY[0x216052350](v86, 0.5, 0.7, 0.0);
  LOBYTE(v147) = v65;
  v148 = v123;
  sub_213F4EAA0();
  LOBYTE(v76) = v146;
  v88 = v133;
  (*(v128 + 32))(v133, v82, v129);
  v89 = v88 + *(v130 + 36);
  *v89 = v87;
  *(v89 + 8) = v76;
  v147 = v145;
  v148 = v143;
  sub_213F4EAA0();
  if (v79 == v146)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBFF0, &qword_213F62450);
    v90 = v111;
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_213F51DE0;
    sub_213F4D9B0();
    sub_213F4D9C0();
    v147 = v91;
    sub_213F02440(&qword_27C8FBFF8, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC000, &qword_213F62458);
    sub_213DE3AE4(&qword_27C8FC008, &qword_27C8FC000, &qword_213F62458, MEMORY[0x277D83970]);
    v92 = v110;
    v93 = v112;
    sub_213F4F6F0();
  }

  else
  {
    v92 = v110;
    sub_213F4D9C0();
    v93 = v112;
    v90 = v111;
  }

  v94 = v139;
  sub_213F01DB0();
  sub_213F4E6A0();
  (*(v90 + 8))(v92, v93);
  result = sub_213DE36FC(v88, &qword_27C8FBF48, &qword_213F623C8);
  v95 = v108;
  if (v85 >= *(v108 + 16))
  {
    goto LABEL_17;
  }

  v96 = v105;
  v97 = v104;
  v98 = (v104 + *(v105 + 28));
  v99 = v98[1];
  v147 = *v98;
  v148 = v99;

  MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);
  sub_213F01CCC();
  v100 = v116;
  sub_213F4E6D0();

  result = sub_213DE36FC(v94, &qword_27C8FBF38, &qword_213F623C0);
  if (v85 < *(v95 + 16))
  {
    v101 = (v97 + *(v96 + 20));
    v103 = *v101;
    v102 = v101[1];
    v147 = v103;
    v148 = v102;
    sub_213DBC9EC();
    sub_213F4D3D0();
    return sub_213DE36FC(v100, &qword_27C8FBF20, &qword_213F623B8);
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_213F004CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v4 = sub_213F4D3B0();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v36 - v8;
  sub_213F4CEC0();
  v11 = v10;
  v12 = type metadata accessor for AudioPickerView(0);
  v13 = (a2 + v12[9]);
  v14 = *v13;
  v15 = v13[1];
  *&v42 = v14;
  v36[0] = v15;
  *(&v42 + 1) = v15;
  v40 = v11;
  v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76F8, &unk_213F555A0);
  sub_213F4EAB0();
  v16 = (a2 + v12[11]);
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v42) = v17;
  *(&v42 + 1) = v18;
  LOBYTE(v40) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAB0();
  v19 = (a2 + v12[10]);
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = v19[2];
  *&v42 = *v19;
  BYTE8(v42) = v21;
  v43 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBFD8, &qword_213F62408);
  sub_213F4EAA0();
  if (v41 == 1)
  {
    sub_213F4CED0();
    *&v42 = v20;
    BYTE8(v42) = v21;
    v43 = v22;
    v40 = v23;
    v41 = 0;
    sub_213F4EAB0();
  }

  *&v42 = v20;
  BYTE8(v42) = v21;
  v43 = v22;
  sub_213F4EAA0();
  if ((v41 & 1) == 0)
  {
    v24 = v40;
    sub_213F4D140();
    v25 = a2 + v12[6];
    v27 = v26 / *(*(v25 + *(type metadata accessor for AudioPickerViewModel(0) + 20)) + 16);
    sub_213EFCE28(v9);
    v29 = v37;
    v28 = v38;
    (*(v37 + 104))(v7, *MEMORY[0x277CDFA90], v38);
    LOBYTE(v25) = sub_213F4D3A0();
    v30 = *(v29 + 8);
    v30(v7, v28);
    v30(v9, v28);
    if (v25)
    {
      sub_213F4D140();
      v32 = v31 - v24;
      *&v42 = v14;
      *(&v42 + 1) = v36[0];
      sub_213F4EAA0();
      v33 = v32 - v40;
    }

    else
    {
      *&v42 = v14;
      *(&v42 + 1) = v36[0];
      sub_213F4EAA0();
      v33 = v24 + v40;
    }

    v34 = floor(v33 / v27);
    v42 = *(a2 + v12[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEA0, &qword_213F622C8);
    v35 = sub_213F4EAA0();
    if (v34 != *&v40)
    {
      MEMORY[0x28223BE20](v35);
      v36[-2] = a2;
      *&v36[-1] = v34;
      sub_213F4EF60();
      sub_213F4D210();
    }
  }
}

uint64_t sub_213F008A4(uint64_t result, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v2 = result + *(type metadata accessor for AudioPickerView(0) + 24);
  result = type metadata accessor for AudioPickerViewModel(0);
  v3 = *(*(v2 + *(result + 20)) + 16);
  if (v3 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!__OFSUB__(v3, 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEA0, &qword_213F622C8);
    return sub_213F4EAB0();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_213F009D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AudioPickerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEA0, &qword_213F622C8);
  sub_213F4EAA0();
  sub_213EFD2B0(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBFD8, &qword_213F62408);
  sub_213F4EAB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

void *sub_213F00ADC(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for AudioPickerView(0);
  v5 = *(v4 + 24);
  result = type metadata accessor for AudioPickerViewModel(0);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = *(a2 + v5 + *(result + 5));
  if (v3 >= *(v7 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v40 = type metadata accessor for AudioPickerViewModel.AudioOption(0);
  v8 = (v7 + ((*(*(v40 - 8) + 80) + 32) & ~*(*(v40 - 8) + 80)) + *(*(v40 - 8) + 72) * v3 + *(v40 + 20));
  v9 = v3;
  v42 = v3;
  v10 = v8[1];
  v45 = *v8;
  v46 = v10;
  sub_213DBC9EC();

  v11 = sub_213F4E310();
  v13 = v12;
  v15 = v14;
  v16 = (a2 + *(v4 + 32));
  v41 = v16[1];
  v45 = *v16;
  v46 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEA0, &qword_213F622C8);
  sub_213F4EAA0();
  v43 = v7;
  v17 = objc_opt_self();
  v18 = &selRef_labelColor;
  if (v9 != v44)
  {
    v18 = &selRef_secondaryLabelColor;
  }

  v19 = [v17 *v18];
  sub_213F4E870();
  v20 = sub_213F4E2B0();
  v22 = v21;
  v24 = v23;
  sub_213DBCA40(v11, v13, v15 & 1);

  sub_213F4E0C0();
  v25 = sub_213F4E2E0();
  v27 = v26;
  v29 = v28;

  sub_213DBCA40(v20, v22, v24 & 1);

  sub_213F4E160();
  v30 = sub_213F4E2A0();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_213DBCA40(v25, v27, v29 & 1);

  KeyPath = swift_getKeyPath();
  v38 = swift_getKeyPath();
  v63 = v34 & 1;
  v62 = 0;
  sub_213F4EEE0();
  sub_213F4D4E0();
  *(&v64[6] + 7) = *&v64[21];
  *(&v64[8] + 7) = *&v64[23];
  *(&v64[10] + 7) = *&v64[25];
  *(&v64[12] + 7) = v65;
  *(v64 + 7) = *&v64[15];
  *(&v64[2] + 7) = *&v64[17];
  *(&v64[4] + 7) = *&v64[19];
  v39 = sub_213F4EF80();
  result = sub_213F4EAA0();
  v58 = *&v64[8];
  v59 = *&v64[10];
  *v60 = *&v64[12];
  v54 = *v64;
  v55 = *&v64[2];
  v56 = *&v64[4];
  v45 = v30;
  v46 = v32;
  v47 = v34 & 1;
  v48 = v36;
  v49 = KeyPath;
  v50 = 1;
  v51 = 0;
  v52 = v38;
  v53 = 1;
  v57 = *&v64[6];
  *&v60[15] = *(&v65 + 1);
  v61 = v39;
  if (v42 < *(v43 + 16))
  {

    MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBE70, &qword_213F622A8);
    sub_213F01A74();
    sub_213F4E6D0();
    sub_213DE36FC(&v45, &qword_27C8FBE70, &qword_213F622A8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_213F00F80(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v34 = type metadata accessor for AudioPickerViewModel.AudioOption(0);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC010, &qword_213F62460);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = (&v30 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC018, &qword_213F62468);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v30 - v12);
  v14 = 0;
  v33 = *(a2 + *(type metadata accessor for AudioPickerViewModel(0) + 20));
  v15 = *(v33 + 16);
  v16 = (v6 + 56);
  v17 = (v6 + 48);
  while (1)
  {
    if (v14 == v15)
    {
      v18 = 1;
      v14 = v15;
      goto LABEL_7;
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v14 >= *(v33 + 16))
    {
      goto LABEL_17;
    }

    v19 = v31;
    v20 = v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v14;
    v21 = *(v5 + 48);
    *v31 = v14;
    sub_213F01974(v20, v19 + v21, type metadata accessor for AudioPickerViewModel.AudioOption);
    sub_213DE2B44(v19, v11, &qword_27C8FC010, &qword_213F62460);
    v18 = 0;
    ++v14;
LABEL_7:
    (*v16)(v11, v18, 1, v5);
    sub_213DE2B44(v11, v13, &qword_27C8FC018, &qword_213F62468);
    if ((*v17)(v13, 1, v5) == 1)
    {
      goto LABEL_18;
    }

    v22 = *v13;
    sub_213F01BB8(v13 + *(v5 + 48), v4, type metadata accessor for AudioPickerViewModel.AudioOption);
    v23 = *(v34 + 20);
    v24 = *&v4[v23];
    v25 = *&v4[v23 + 8];
    v26 = (v35 + v23);
    if (v24 == *v26 && v25 == v26[1])
    {
      sub_213F01384(v4, type metadata accessor for AudioPickerViewModel.AudioOption);
      return v22;
    }

    v28 = sub_213F4F830();
    sub_213F01384(v4, type metadata accessor for AudioPickerViewModel.AudioOption);
    if (v28)
    {
      return v22;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_213F4F710();
  MEMORY[0x216052710](0xD000000000000021, 0x8000000213FA5D70);
  sub_213F4F7B0();
  result = sub_213F4F7C0();
  __break(1u);
  return result;
}

uint64_t sub_213F01384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_213F01428(uint64_t a1)
{
  sub_213F4CB40();
  if (v1 <= 0x3F)
  {
    sub_213F01750(319, &qword_27C8FBDF0, type metadata accessor for AudioPickerViewModel.AudioOption, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_213F01504(uint64_t a1)
{
  result = sub_213F4CB40();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_213F015A4(uint64_t a1)
{
  sub_213F01750(319, &qword_281183528, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213F01750(319, &qword_281183510, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AudioPickerViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_213DE22E8();
        if (v4 <= 0x3F)
        {
          sub_213E61EBC(319, &qword_27C8FBE18, MEMORY[0x277D83B88]);
          if (v5 <= 0x3F)
          {
            sub_213E61EBC(319, &qword_27C8F7660, MEMORY[0x277D85048]);
            if (v6 <= 0x3F)
            {
              sub_213F017B4(319);
              if (v7 <= 0x3F)
              {
                sub_213E61EBC(319, &qword_2811827B0, MEMORY[0x277D839B0]);
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

void sub_213F01750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_213F017B4(uint64_t a1)
{
  if (!qword_27C8FBE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBDB8, &unk_213F62160);
    v1 = sub_213F4EAD0();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8FBE20);
    }
  }
}

unint64_t sub_213F01818()
{
  result = qword_27C8FBE28;
  if (!qword_27C8FBE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBDD8, &qword_213F62180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBDC0, &qword_213F62170);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F75C0, &qword_213F54760);
    sub_213DE3AE4(&qword_27C8FBDD0, &qword_27C8FBDC0, &qword_213F62170, MEMORY[0x277CE1198]);
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBE28);
  }

  return result;
}

uint64_t sub_213F01974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213F019DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AudioPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_213EFDDD8(a1, v6, a2);
}

unint64_t sub_213F01A74()
{
  result = qword_27C8FBE68;
  if (!qword_27C8FBE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBE70, &qword_213F622A8);
    sub_213F01B2C();
    sub_213DE3AE4(&qword_27C8FBE88, &qword_27C8FBE90, &qword_213F622B8, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBE68);
  }

  return result;
}

unint64_t sub_213F01B2C()
{
  result = qword_27C8FBE78;
  if (!qword_27C8FBE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBE80, &qword_213F622B0);
    sub_213E50DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBE78);
  }

  return result;
}

uint64_t sub_213F01BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213F01C38(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AudioPickerView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_213F01CFC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_213F02440(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213F01DB0()
{
  result = qword_27C8FBF40;
  if (!qword_27C8FBF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBF48, &qword_213F623C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBF50, &qword_213F623D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBF58, &qword_213F623D8);
    sub_213F01F04();
    sub_213DE3AE4(&qword_27C8FBFA0, &qword_27C8FBF58, &qword_213F623D8, MEMORY[0x277CDF728]);
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182C30, &qword_27C8F7A78, &unk_213F5D5E0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBF40);
  }

  return result;
}

unint64_t sub_213F01F04()
{
  result = qword_27C8FBF60;
  if (!qword_27C8FBF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBF50, &qword_213F623D0);
    sub_213F01F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBF60);
  }

  return result;
}

unint64_t sub_213F01F90()
{
  result = qword_27C8FBF68;
  if (!qword_27C8FBF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBF70, &qword_213F623E0);
    sub_213F02048();
    sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBF68);
  }

  return result;
}

unint64_t sub_213F02048()
{
  result = qword_27C8FBF78;
  if (!qword_27C8FBF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBF80, &qword_213F623E8);
    sub_213F02100();
    sub_213DE3AE4(&qword_27C8FBE88, &qword_27C8FBE90, &qword_213F622B8, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBF78);
  }

  return result;
}

unint64_t sub_213F02100()
{
  result = qword_27C8FBF88;
  if (!qword_27C8FBF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBF90, &qword_213F623F0);
    sub_213F0218C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBF88);
  }

  return result;
}

unint64_t sub_213F0218C()
{
  result = qword_281183300;
  if (!qword_281183300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBF98, &qword_213F623F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9938, &unk_213F59410);
    sub_213E5096C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183300);
  }

  return result;
}

void sub_213F02254(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPickerView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_213F4D160() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_213F004CC(a1, v1 + v4, v7);
}

uint64_t sub_213F02328(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPickerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_213F009D8(a1, v4);
}

uint64_t sub_213F02440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NavigationCell.init(model:tapHandler:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_213DD7500(a1, a4);
  a4[5] = 0;
  a4[6] = a2;
  a4[7] = a3;
  return result;
}

double NavigationCell.init(model:tapHandler:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0;
  *(a4 + 40) = a1;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

uint64_t NavigationCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v5 = *(v2 + 56);
  sub_213F02B34(v2, v16);
  v6 = swift_allocObject();
  v7 = v16[1];
  v6[1] = v16[0];
  v6[2] = v7;
  v8 = v16[3];
  v6[3] = v16[2];
  v6[4] = v8;
  sub_213DE3164(v2, a1 + 32, &qword_27C8F9318, &qword_213F57710);
  sub_213DD74C4(v4, v5);
  *(a1 + 80) = sub_213F4CDF0() & 1;
  *(a1 + 88) = v9;
  *(a1 + 96) = v10 & 1;
  sub_213F4EA90();
  v11 = *(&v16[0] + 1);
  *(a1 + 104) = v16[0];
  *(a1 + 112) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC020, &qword_213F62490);
  v13 = *(v12 + 56);
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  swift_storeEnumTagMultiPayload();
  v14 = *(v12 + 60);
  *(a1 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  result = swift_storeEnumTagMultiPayload();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = sub_213F02B6C;
  *(a1 + 24) = v6;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_213F02660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9500, &unk_213F58050);
  MEMORY[0x28223BE20](v4);
  v6 = (&v27 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC028, &qword_213F625D8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC030, &qword_213F625E0);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = (&v27 - v12);
  v14 = *(v11 + 40);
  if (v14)
  {
    *v13 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v15 = type metadata accessor for SharedTripCell(0);
    v16 = v15[5];
    *(v13 + v16) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v17 = v13 + v15[6];
    *v17 = swift_getKeyPath();
    v17[8] = 0;
    v18 = v15[8];
    *&v28 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC040, &qword_213F62678);
    sub_213F4EA90();
    *(v13 + v18) = v30[0];
    *(v13 + v15[9]) = 0x3FF8000000000000;
    *(v13 + v15[7]) = v14;
    v19 = v13 + *(v10 + 36);
    *v19 = xmmword_213F62470;
    v19[16] = 2;
    sub_213DE3164(v13, v9, &qword_27C8FC030, &qword_213F625E0);
    swift_storeEnumTagMultiPayload();
    sub_213F02CC8();
    sub_213E82DE4();
    sub_213F4DBA0();
    sub_213DE36FC(v13, &qword_27C8FC030, &qword_213F625E0);
  }

  else
  {
    sub_213DE3164(v11, &v28, &qword_27C8F9318, &qword_213F57710);
    if (!v29)
    {
      sub_213DE36FC(&v28, &qword_27C8F9318, &qword_213F57710);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC038, &qword_213F625E8);
      return (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
    }

    sub_213DD7500(&v28, v30);
    v20 = type metadata accessor for ListCell(0);
    sub_213DEBAA8(v30, v6 + v20[8]);
    *v6 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v21 = v20[5];
    *(v6 + v21) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
    swift_storeEnumTagMultiPayload();
    v22 = v6 + v20[6];
    *v22 = swift_getKeyPath();
    v22[8] = 0;
    *(v6 + v20[7]) = 9;
    v23 = v6 + *(v4 + 36);
    *v23 = xmmword_213F62480;
    v23[16] = 2;
    sub_213DE3164(v6, v9, &qword_27C8F9500, &unk_213F58050);
    swift_storeEnumTagMultiPayload();
    sub_213F02CC8();
    sub_213E82DE4();
    sub_213F4DBA0();
    sub_213DE36FC(v6, &qword_27C8F9500, &unk_213F58050);
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC038, &qword_213F625E8);
  return (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
}

uint64_t sub_213F02B94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_213F02BF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_213F02C64()
{
  result = qword_281188580[0];
  if (!qword_281188580[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC020, &qword_213F62490);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281188580);
  }

  return result;
}

unint64_t sub_213F02CC8()
{
  result = qword_281183430;
  if (!qword_281183430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC030, &qword_213F625E0);
    sub_213F02D84(qword_281186D18, type metadata accessor for SharedTripCell, &unk_213F63A60);
    sub_213DD9738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183430);
  }

  return result;
}

uint64_t sub_213F02D84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_213F02DCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_213F02F04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel, &protocol conformance descriptor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213F03014@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel, &protocol conformance descriptor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213F0312C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__id;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_213F033CC(&qword_27C8F8BF8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v14[0] = a1;
  LOBYTE(a1) = sub_213F4F1F0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel, &protocol conformance descriptor for NavigationTray.AccessoryWaldoViewModel);
    sub_213F4CB70();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_213F033CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t (*sub_213F03438(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel, &protocol conformance descriptor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F02EA4(v4);
  return sub_213F03570;
}

uint64_t sub_213F035DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel, &protocol conformance descriptor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__sharedTripCell;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_213F036D0()
{
  swift_getKeyPath();
  sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel, &protocol conformance descriptor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  swift_beginAccess();
}

double sub_213F03790(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__sharedTripCell;
  swift_beginAccess();
  v5 = *(v1 + v4);
  swift_getKeyPath();
  sub_213F033CC(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);

  sub_213F4CB80();

  swift_beginAccess();
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  swift_getKeyPath();

  sub_213F4CB80();

  swift_beginAccess();
  if (v7 == *(a1 + 16) && v6 == *(a1 + 24))
  {
  }

  else
  {
    v9 = sub_213F4F830();

    if ((v9 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel, &protocol conformance descriptor for NavigationTray.AccessoryWaldoViewModel);
      sub_213F4CB70();

      return result;
    }
  }

  *(v2 + v4) = a1;

  return result;
}

void sub_213F039FC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__sharedTripCell;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*sub_213F03A6C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel, &protocol conformance descriptor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F0357C(v4);
  return sub_213F03BA4;
}

uint64_t sub_213F03C10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel, &protocol conformance descriptor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  v4 = (v3 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__footer);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_213F03CF4()
{
  swift_getKeyPath();
  sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel, &protocol conformance descriptor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  v1 = (v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__footer);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_213F03DC4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__footer);
  swift_beginAccess();
  v6 = *v5 == a1 && v5[1] == a2;
  if (v6 || (sub_213F4F830() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel, &protocol conformance descriptor for NavigationTray.AccessoryWaldoViewModel);
    sub_213F4CB70();
  }
}

uint64_t (*sub_213F03F24(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel, &protocol conformance descriptor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F03BB0(v4);
  return sub_213F0405C;
}

uint64_t NavigationTray.AccessoryWaldoViewModel.__allocating_init(sharedTripCell:footer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_213F4CB30();
  sub_213F4CBB0();
  *(v6 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__sharedTripCell) = a1;
  v7 = (v6 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__footer);
  *v7 = a2;
  v7[1] = a3;
  return v6;
}

uint64_t NavigationTray.AccessoryWaldoViewModel.init(sharedTripCell:footer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_213F4CB40();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4CB30();
  (*(v8 + 32))(v3 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__id, v10, v7);
  sub_213F4CBB0();
  *(v3 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__sharedTripCell) = a1;
  v11 = (v3 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__footer);
  *v11 = a2;
  v11[1] = a3;
  return v3;
}

uint64_t NavigationTray.AccessoryWaldoViewModel.deinit()
{
  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel___observationRegistrar;
  v4 = sub_213F4CBC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t NavigationTray.AccessoryWaldoViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel___observationRegistrar;
  v4 = sub_213F4CBC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_213F043C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel, &protocol conformance descriptor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_213F04520@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel, &protocol conformance descriptor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213F04630@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel, &protocol conformance descriptor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213F04728(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__id;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_213F033CC(&qword_27C8F8BF8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v14[0] = a1;
  LOBYTE(a1) = sub_213F4F1F0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel, &protocol conformance descriptor for NavigationTray.AccessoryItemViewModel);
    sub_213F4CB70();
  }

  return (v10)(v14[0], v4);
}

uint64_t (*sub_213F049C8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel, &protocol conformance descriptor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F044C0(v4);
  return sub_213F04B00;
}

uint64_t sub_213F04B6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel, &protocol conformance descriptor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  v4 = (v3 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__title);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t keypath_set_7Tm_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_213F04C98()
{
  swift_getKeyPath();
  sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel, &protocol conformance descriptor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  v1 = (v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_213F04D68(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__title);
  swift_beginAccess();
  v6 = *v5 == a1 && v5[1] == a2;
  if (v6 || (sub_213F4F830() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel, &protocol conformance descriptor for NavigationTray.AccessoryItemViewModel);
    sub_213F4CB70();
  }
}

uint64_t (*sub_213F04EC8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel, &protocol conformance descriptor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F04B0C(v4);
  return sub_213F05000;
}

uint64_t sub_213F0506C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel, &protocol conformance descriptor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  v4 = (v3 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__shortTitle);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_213F05138(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_213F05248(v1, v2);
}

uint64_t sub_213F05178()
{
  swift_getKeyPath();
  sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel, &protocol conformance descriptor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  v1 = (v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__shortTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_213F05248(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__shortTitle);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_213F4F830() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel, &protocol conformance descriptor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB70();
}

uint64_t sub_213F053B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__shortTitle);
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

uint64_t (*sub_213F0542C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel, &protocol conformance descriptor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F0500C(v4);
  return sub_213F05564;
}

uint64_t NavigationTray.AccessoryItemViewModel.__allocating_init(title:shortTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213F4CB40();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  sub_213F4CB30();
  (*(v9 + 32))(v12 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__id, v11, v8);
  v13 = (v12 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__shortTitle);
  *v13 = 0;
  v13[1] = 0;
  sub_213F4CBB0();
  v14 = (v12 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__title);
  *v14 = a1;
  v14[1] = a2;
  sub_213F05248(a3, a4);
  return v12;
}

uint64_t NavigationTray.AccessoryItemViewModel.init(title:shortTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_213F4CB40();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4CB30();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__id, v12, v9);
  v13 = (v4 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__shortTitle);
  *v13 = 0;
  v13[1] = 0;
  sub_213F4CBB0();
  v14 = (v4 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__title);
  *v14 = a1;
  v14[1] = a2;
  sub_213F05248(a3, a4);
  return v4;
}

uint64_t NavigationTray.AccessoryItemViewModel.deinit()
{
  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel___observationRegistrar;
  v4 = sub_213F4CBC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t NavigationTray.AccessoryItemViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel___observationRegistrar;
  v4 = sub_213F4CBC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_213F059B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel, &protocol conformance descriptor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t NavigationTray.AccessoriesViewModel.SharedTripState.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t sub_213F05B94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213F05CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_213F4CB40();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  return a5(v9);
}

uint64_t sub_213F05D78@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213F05E70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__id;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_213F033CC(&qword_27C8F8BF8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v14[0] = a1;
  LOBYTE(a1) = sub_213F4F1F0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
    sub_213F4CB70();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_213F06110(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a2, v6);
  v10 = *a3;
  swift_beginAccess();
  (*(v7 + 40))(a1 + v10, v9, v6);
  return swift_endAccess();
}

uint64_t (*sub_213F06234(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F05B34(v4);
  return sub_213F0636C;
}

uint64_t (*sub_213F06440(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F06378(v4);
  return sub_213F06578;
}

uint64_t (*sub_213F0664C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F06584(v4);
  return sub_213F06784;
}

uint64_t sub_213F067F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessoryState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_213F068EC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessoryState;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

void sub_213F069B0(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessoryState;
  swift_beginAccess();
  if (v2 == *(v1 + v3))
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
    sub_213F4CB70();
  }
}

uint64_t (*sub_213F06ADC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F06790(v4);
  return sub_213F06C14;
}

uint64_t sub_213F06C94@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

double sub_213F06D80(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB70();

  return result;
}

uint64_t sub_213F06E50(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  swift_beginAccess();
}

double sub_213F06F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB70();

  return result;
}

void sub_213F06FF0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

uint64_t (*sub_213F0705C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F06C20(v4);
  return sub_213F07194;
}

double sub_213F07200@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__expansionProgress;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

double sub_213F072EC()
{
  swift_getKeyPath();
  v3 = v0;
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__expansionProgress;
  swift_beginAccess();
  return *(v3 + v1);
}

void sub_213F073A8(double a1)
{
  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__expansionProgress;
  swift_beginAccess();
  if (*(v1 + v3) == a1)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
    sub_213F4CB70();
  }
}

uint64_t (*sub_213F074DC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F071A0(v4);
  return sub_213F07614;
}

uint64_t NavigationTray.AccessoriesViewModel.__allocating_init(evAccessory:sharedTripAccessory:sharedTripAccessoryState:sharedTripWaldo:expansionProgress:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, double a5)
{
  v10 = swift_allocObject();
  LOBYTE(a3) = *a3;
  sub_213F4CB30();
  v11 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory;
  v12 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory;
  v13 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripWaldo;
  sub_213F4CBB0();
  *(v10 + v11) = a1;
  *(v10 + v12) = a2;
  *(v10 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessoryState) = a3;
  *(v10 + v13) = a4;
  *(v10 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__expansionProgress) = a5;
  return v10;
}

uint64_t NavigationTray.AccessoriesViewModel.init(evAccessory:sharedTripAccessory:sharedTripAccessoryState:sharedTripWaldo:expansionProgress:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, double a5)
{
  v11 = sub_213F4CB40();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a3) = *a3;
  sub_213F4CB30();
  (*(v12 + 32))(v5 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__id, v14, v11);
  v15 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory;
  *(v5 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory) = 0;
  v16 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory;
  *(v5 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory) = 0;
  v17 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripWaldo;
  *(v5 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripWaldo) = 0;
  sub_213F4CBB0();

  *(v5 + v15) = a1;

  *(v5 + v16) = a2;
  *(v5 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessoryState) = a3;

  *(v5 + v17) = a4;
  *(v5 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__expansionProgress) = a5;
  return v5;
}

BOOL sub_213F07858()
{
  v1 = v0;
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v2 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    return 0;
  }

  swift_getKeyPath();
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    return 0;
  }

  swift_getKeyPath();
  sub_213F4CB80();

  v5 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripWaldo;
  swift_beginAccess();
  return *(v1 + v5) == 0;
}

BOOL sub_213F079D8()
{
  v1 = v0;
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v2 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    return 0;
  }

  swift_getKeyPath();
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory;
  swift_beginAccess();
  return *(v1 + v3) != 0;
}

BOOL sub_213F07B04()
{
  swift_getKeyPath();
  v3 = v0;
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripWaldo;
  swift_beginAccess();
  return *(v3 + v1) != 0;
}

uint64_t NavigationTray.AccessoriesViewModel.deinit()
{
  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel___observationRegistrar;
  v4 = sub_213F4CBC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t NavigationTray.AccessoriesViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel___observationRegistrar;
  v4 = sub_213F4CBC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_213F07DA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_213F07E9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_213DBBD08(&v15 - v8);
  sub_213F4D280();
  v10 = sub_213F4D270();
  v11 = *(v4 + 8);
  v11(v7, v3);
  v11(v9, v3);
  if (v10)
  {
    sub_213F4E170();
  }

  else
  {
    sub_213F4E160();
  }

  v12 = sub_213F4E0F0();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  v13 = sub_213F4E190();
  sub_213DE36FC(v2, &qword_27C8F7668, &qword_213F52190);
  return v13;
}

double sub_213F0808C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = sub_213F4D290();
  v4 = *(v26 - 8);
  v5 = MEMORY[0x28223BE20](v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = _s14AccessoryWaldoVMa(0);
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0A8, &qword_213F62C80);
  sub_213F4ED40();
  v13 = v30;
  swift_getKeyPath();
  v30 = v13;
  sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel, &protocol conformance descriptor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  v14 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__sharedTripCell;
  swift_beginAccess();
  v15 = *(v13 + v14);

  sub_213F0E66C(v2, v12, _s14AccessoryWaldoVMa);
  v16 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v17 = swift_allocObject();
  sub_213F0E598(v12, v17 + v16, _s14AccessoryWaldoVMa);
  sub_213DBBD08(v9);
  sub_213F4D280();
  LOBYTE(v16) = sub_213F4D270();
  v18 = *(v4 + 8);
  v19 = v7;
  v20 = v26;
  v18(v19, v26);
  v18(v9, v20);
  if (v16)
  {
    v21 = 14.0;
  }

  else
  {
    v21 = 26.0;
  }

  v27 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_213E29028();
  sub_213F4EA90();
  v22 = v28;
  v23 = v29;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = v15;
  *(a1 + 48) = sub_213F0E600;
  *(a1 + 56) = v17;
  *(a1 + 64) = v22;
  *(a1 + 72) = v23;
  *(a1 + 80) = v21;
  return result;
}

uint64_t sub_213F083D8@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = sub_213F4D290();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v55 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v54 = &v51 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v51 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC148, &qword_213F62E30);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC150, &qword_213F62E38);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v51 = &v51 - v17;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC158, &qword_213F62E40) - 8;
  MEMORY[0x28223BE20](v53);
  v52 = &v51 - v18;
  sub_213DBBD08(v11);
  sub_213F4D280();
  v19 = sub_213F4D270();
  v20 = *(v2 + 8);
  v20(v9, v1);
  v20(v11, v1);
  if (v19)
  {
    v21 = 0x4010000000000000;
  }

  else
  {
    v21 = 0x4024000000000000;
  }

  *v14 = sub_213F4DA40();
  *(v14 + 1) = v21;
  v14[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC160, &qword_213F62E48);
  sub_213F088E0(&v14[*(v22 + 44)]);
  sub_213F4F040();
  sub_213F4D0F0();
  sub_213F4D100();
  sub_213F4D110();

  sub_213F4D0E0();
  sub_213F4D110();

  MEMORY[0x216052350](v23, 0.5, 1.0, 0.0);
  v24 = sub_213F4D120();

  v25 = v51;
  sub_213DE2B44(v14, v51, &qword_27C8FC148, &qword_213F62E30);
  *(v25 + *(v16 + 44)) = v24;
  v26 = sub_213F4E060();
  v27 = v54;
  sub_213DBBD08(v54);
  sub_213F4D280();
  sub_213F4D270();
  v20(v9, v1);
  v20(v27, v1);
  sub_213F4CDA0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v52;
  sub_213DE2B44(v25, v52, &qword_27C8FC150, &qword_213F62E38);
  v37 = v36 + *(v53 + 44);
  *v37 = v26;
  *(v37 + 8) = v29;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = 0;
  v38 = sub_213F4E070();
  v39 = v55;
  sub_213DBBD08(v55);
  sub_213F4D280();
  sub_213F4D270();
  v20(v9, v1);
  v20(v39, v1);
  sub_213F4CDA0();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v56;
  sub_213DE2B44(v36, v56, &qword_27C8FC158, &qword_213F62E40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC168, &unk_213F62E50);
  v50 = v48 + *(result + 36);
  *v50 = v38;
  *(v50 + 8) = v41;
  *(v50 + 16) = v43;
  *(v50 + 24) = v45;
  *(v50 + 32) = v47;
  *(v50 + 40) = 0;
  return result;
}

uint64_t sub_213F088E0@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9640, &qword_213F584C8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v32 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - v4;
  sub_213F0808C(v40);
  _s14AccessoryWaldoVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0A8, &qword_213F62C80);
  sub_213F4ED40();
  v6 = v34;
  swift_getKeyPath();
  v34 = v6;
  sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel, &protocol conformance descriptor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  v7 = (v6 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__footer);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];

  v34 = v8;
  v35 = v9;
  sub_213DBC9EC();
  v10 = sub_213F4E310();
  v12 = v11;
  v14 = v13;
  LODWORD(v34) = sub_213F4DDB0();
  v15 = sub_213F4E2B0();
  v17 = v16;
  v19 = v18;
  sub_213DBCA40(v10, v12, v14 & 1);

  sub_213F07E9C();
  v20 = sub_213F4E2E0();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_213DBCA40(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  v34 = v20;
  v35 = v22;
  v36 = v24 & 1;
  v37 = v26;
  v38 = KeyPath;
  v39 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9648, &unk_213F58500);
  sub_213E3D854();
  sub_213F4E6D0();
  sub_213DBCA40(v20, v22, v24 & 1);

  sub_213DE3164(v40, &v34, &qword_27C8FC170, &qword_213F62E90);
  v28 = v32;
  sub_213DE3164(v5, v32, &qword_27C8F9640, &qword_213F584C8);
  v29 = v33;
  sub_213DE3164(&v34, v33, &qword_27C8FC170, &qword_213F62E90);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC178, &qword_213F62E98);
  sub_213DE3164(v28, v29 + *(v30 + 48), &qword_27C8F9640, &qword_213F584C8);
  sub_213DE36FC(v5, &qword_27C8F9640, &qword_213F584C8);
  sub_213DE36FC(v40, &qword_27C8FC170, &qword_213F62E90);
  sub_213DE36FC(v28, &qword_27C8F9640, &qword_213F584C8);
  return sub_213DE36FC(&v34, &qword_27C8FC170, &qword_213F62E90);
}

uint64_t sub_213F08D04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_213DBBD08(&v15 - v8);
  sub_213F4D280();
  v10 = sub_213F4D270();
  v11 = *(v4 + 8);
  v11(v7, v3);
  v11(v9, v3);
  if (v10)
  {
    sub_213F4E160();
  }

  else
  {
    sub_213F4E180();
  }

  v12 = sub_213F4E0F0();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  v13 = sub_213F4E190();
  sub_213DE36FC(v2, &qword_27C8F7668, &qword_213F52190);
  return v13;
}

uint64_t sub_213F08F04()
{
  v0 = sub_213F4D910();
  MEMORY[0x28223BE20](v0 - 8);
  sub_213F4D900();
  sub_213F4D8F0();
  _s13AccessoryItemVMa(0);

  sub_213F4EA10();
  sub_213F4D8D0();

  sub_213F4D8F0();
  sub_213F4D8E0();
  sub_213F4D8F0();
  sub_213F4D930();
  v1 = sub_213F4E2F0();
  v3 = v2;
  v5 = v4;
  sub_213DBCA50(v1, v2, v4 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76E8, &unk_213F523C0);
  sub_213F4CDC0();
  if (v9 == 1)
  {
    v6 = [objc_opt_self() _carSystemFocusLabelColor];
    sub_213F4E870();
  }

  else
  {
  }

  v7 = sub_213F4E2B0();
  sub_213DBCA40(v1, v3, v5 & 1);

  sub_213DBCA40(v1, v3, v5 & 1);

  return v7;
}

uint64_t sub_213F0916C()
{
  if (*(v0 + *(_s13AccessoryItemVMa(0) + 24)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0A0, &qword_213F62C60);
    sub_213F4ED40();
    swift_getKeyPath();
    sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel, &protocol conformance descriptor for NavigationTray.AccessoryItemViewModel);
    sub_213F4CB80();

    v1 = v12 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__shortTitle;
    swift_beginAccess();
    v2 = *(v1 + 8);

    if (v2)
    {
      goto LABEL_6;
    }

    sub_213F4ED40();
    swift_getKeyPath();
    sub_213F4CB80();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0A0, &qword_213F62C60);
    sub_213F4ED40();
    swift_getKeyPath();
    sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel, &protocol conformance descriptor for NavigationTray.AccessoryItemViewModel);
    sub_213F4CB80();
  }

  swift_beginAccess();

LABEL_6:
  sub_213DBC9EC();
  v3 = sub_213F4E310();
  v5 = v4;
  v7 = v6;
  sub_213DBCA50(v3, v4, v6 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76E8, &unk_213F523C0);
  sub_213F4CDC0();
  if (v11 == 1)
  {
    v8 = [objc_opt_self() _carSystemFocusLabelColor];
    sub_213F4E870();
  }

  else
  {
  }

  v9 = sub_213F4E2B0();
  sub_213DBCA40(v3, v5, v7 & 1);

  sub_213DBCA40(v3, v5, v7 & 1);

  return v9;
}

uint64_t sub_213F094F8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7760, &unk_213F51950);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v28 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v28 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = sub_213F08F04();
  v15 = v14;
  v30 = v13;
  v31 = v14;
  v17 = v16 & 1;
  v32 = v16 & 1;
  v33 = v18;
  sub_213F4E6D0();
  sub_213DBCA40(v13, v15, v17);

  v19 = sub_213F0916C();
  v21 = v20;
  v30 = v19;
  v31 = v20;
  v23 = v22 & 1;
  v32 = v22 & 1;
  v33 = v24;
  sub_213F4E6D0();
  sub_213DBCA40(v19, v21, v23);

  sub_213DE3164(v12, v7, &qword_27C8F7760, &unk_213F51950);
  sub_213DE3164(v10, v4, &qword_27C8F7760, &unk_213F51950);
  v25 = v29;
  sub_213DE3164(v7, v29, &qword_27C8F7760, &unk_213F51950);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC140, &qword_213F62E28);
  sub_213DE3164(v4, v25 + *(v26 + 48), &qword_27C8F7760, &unk_213F51950);
  sub_213DE36FC(v10, &qword_27C8F7760, &unk_213F51950);
  sub_213DE36FC(v12, &qword_27C8F7760, &unk_213F51950);
  sub_213DE36FC(v4, &qword_27C8F7760, &unk_213F51950);
  return sub_213DE36FC(v7, &qword_27C8F7760, &unk_213F51950);
}

uint64_t sub_213F09790@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v47 = sub_213F4D290();
  v2 = *(v47 - 8);
  v3 = MEMORY[0x28223BE20](v47);
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v46 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0B0, &qword_213F62D38);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0B8, &qword_213F62D40);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v46 = &v46 - v16;
  *v13 = sub_213F4D8A0();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0C0, &qword_213F62D48);
  sub_213F09BA8(v1, &v13[*(v17 + 44)]);
  sub_213F4F040();
  sub_213F4D0F0();
  sub_213F4D100();
  sub_213F4D110();

  sub_213F4D0E0();
  sub_213F4D110();

  MEMORY[0x216052350](v18, 0.5, 1.0, 0.0);
  v19 = sub_213F4D120();

  *&v13[*(v11 + 44)] = v19;
  v20 = sub_213F4E060();
  sub_213DBBD08(v9);
  sub_213F4D280();
  sub_213F4D270();
  v21 = *(v2 + 8);
  v22 = v47;
  v21(v7, v47);
  v21(v9, v22);
  sub_213F4CDA0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v46;
  sub_213DE2B44(v13, v46, &qword_27C8FC0B0, &qword_213F62D38);
  v32 = v31 + *(v15 + 44);
  *v32 = v20;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  v33 = sub_213F4E070();
  v34 = v48;
  sub_213DBBD08(v48);
  sub_213F4D280();
  sub_213F4D270();
  v21(v7, v22);
  v21(v34, v22);
  sub_213F4CDA0();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v49;
  sub_213DE2B44(v31, v49, &qword_27C8FC0B8, &qword_213F62D40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0C8, &qword_213F62D50);
  v45 = v43 + *(result + 36);
  *v45 = v33;
  *(v45 + 8) = v36;
  *(v45 + 16) = v38;
  *(v45 + 24) = v40;
  *(v45 + 32) = v42;
  *(v45 + 40) = 0;
  return result;
}

uint64_t sub_213F09BA8@<X0>(uint64_t (*a1)(char *a1)@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0D0, &qword_213F62D58);
  v82 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v81 = &v72 - v3;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0D8, &qword_213F62D60);
  MEMORY[0x28223BE20](v88);
  v5 = &v72 - v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0E0, &qword_213F62D68);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v72 - v6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0E8, &qword_213F62D70);
  MEMORY[0x28223BE20](v87);
  v83 = &v72 - v7;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0F0, &qword_213F62D78);
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v72 - v8;
  v9 = sub_213F4D290();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v72 - v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0F8, &qword_213F62D80);
  MEMORY[0x28223BE20](v92);
  v89 = &v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC100, &qword_213F62D88);
  MEMORY[0x28223BE20](v17);
  v19 = &v72 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC108, &qword_213F62D90);
  MEMORY[0x28223BE20](v20);
  v22 = &v72 - v21;
  v23 = _s13AccessoryItemVMa(0);
  v24 = (a1 + *(v23 + 40));
  v86 = *v24;
  if (v86)
  {
    v73 = v23;
    v75 = v17;
    v76 = v19;
    v77 = v5;
    v74 = v24[1];

    v25 = a1;
    sub_213DBBD08(v15);
    sub_213F4D280();
    v26 = sub_213F4D270();
    v27 = *(v10 + 8);
    v27(v13, v9);
    v27(v15, v9);
    if (v26)
    {
      *v22 = sub_213F4D8A0();
      *(v22 + 1) = 0;
      v22[16] = 0;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC110, &qword_213F62D98);
      sub_213F094F8(&v22[*(v28 + 44)]);
      v29 = sub_213F08D04();
      KeyPath = swift_getKeyPath();
      v31 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC118, &qword_213F62DD0) + 36)];
      *v31 = KeyPath;
      v31[1] = v29;
      v32 = swift_getKeyPath();
      v33 = v20;
      v34 = &v22[*(v20 + 36)];
      *v34 = v32;
      *(v34 + 1) = 1;
      v34[16] = 0;
      v35 = sub_213F0E380();
      v36 = v78;
      v72 = v33;
      sub_213F4E840();
      sub_213DE36FC(v22, &qword_27C8FC108, &qword_213F62D90);
      v37 = v25 + *(v73 + 44);
      v38 = *v37;
      v39 = *(v37 + 8);
      LOBYTE(v37) = *(v37 + 16);
      LOBYTE(v94) = v38;
      v95 = v39;
      LOBYTE(v96) = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76E8, &unk_213F523C0);
      sub_213F4CDE0();
      v94 = v33;
      v95 = v35;
      swift_getOpaqueTypeConformance2();
      v40 = v83;
      v41 = v80;
      sub_213F4E780();

      (*(v79 + 8))(v36, v41);
      v42 = sub_213F4EEE0();
      v44 = v43;
      v45 = v87;
      v46 = v40 + *(v87 + 36);
      sub_213F0A6E8(v25, v46);
      v47 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC128, &qword_213F62E10) + 36));
      *v47 = v42;
      v47[1] = v44;
      v48 = swift_allocObject();
      v49 = v86;
      v50 = v74;
      *(v48 + 16) = v86;
      *(v48 + 24) = v50;
      v94 = sub_213F0E55C;
      v95 = v48;
      v51 = sub_213F0E248();
      v52 = sub_213DE295C();

      v53 = v84;
      sub_213F4E7A0();

      sub_213DE36FC(v40, &qword_27C8FC0E8, &qword_213F62D70);
      v54 = v85;
      v55 = v90;
      (*(v85 + 16))(v77, v53, v90);
      swift_storeEnumTagMultiPayload();
      v94 = v45;
      v95 = &type metadata for CarGestureRepresentable;
      v96 = v51;
      v97 = v52;
      swift_getOpaqueTypeConformance2();
      sub_213DE3AE4(&qword_281182768, &qword_27C8FC0D0, &qword_213F62D58, MEMORY[0x277CDF028]);
      v56 = v89;
      sub_213F4DBA0();
      v57 = v53;
      v58 = v49;
      (*(v54 + 8))(v57, v55);
    }

    else
    {
      v66 = swift_allocObject();
      v58 = v86;
      v50 = v74;
      *(v66 + 16) = v86;
      *(v66 + 24) = v50;
      MEMORY[0x28223BE20](v66);
      *(&v72 - 2) = a1;
      sub_213F0E380();

      v67 = v81;
      sub_213F4EB00();
      v68 = v82;
      v69 = v91;
      (*(v82 + 16))(v77, v67, v91);
      swift_storeEnumTagMultiPayload();
      v70 = sub_213F0E248();
      v71 = sub_213DE295C();
      v94 = v87;
      v95 = &type metadata for CarGestureRepresentable;
      v96 = v70;
      v97 = v71;
      swift_getOpaqueTypeConformance2();
      sub_213DE3AE4(&qword_281182768, &qword_27C8FC0D0, &qword_213F62D58, MEMORY[0x277CDF028]);
      v56 = v89;
      sub_213F4DBA0();
      (*(v68 + 8))(v67, v69);
    }

    sub_213DD38DC(v56, v76);
    swift_storeEnumTagMultiPayload();
    sub_213F0E138();
    sub_213F0E380();
    sub_213F4DBA0();
    sub_213DD7558(v58, v50);
    return sub_213DE36FC(v56, &qword_27C8FC0F8, &qword_213F62D80);
  }

  else
  {
    *v22 = sub_213F4D8A0();
    *(v22 + 1) = 0;
    v22[16] = 0;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC110, &qword_213F62D98);
    sub_213F094F8(&v22[*(v59 + 44)]);
    v60 = sub_213F08D04();
    v61 = swift_getKeyPath();
    v62 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC118, &qword_213F62DD0) + 36)];
    *v62 = v61;
    v62[1] = v60;
    v63 = swift_getKeyPath();
    v64 = &v22[*(v20 + 36)];
    *v64 = v63;
    *(v64 + 1) = 1;
    v64[16] = 0;
    sub_213DE3164(v22, v19, &qword_27C8FC108, &qword_213F62D90);
    swift_storeEnumTagMultiPayload();
    sub_213F0E138();
    sub_213F0E380();
    sub_213F4DBA0();
    return sub_213DE36FC(v22, &qword_27C8FC108, &qword_213F62D90);
  }
}

uint64_t sub_213F0A6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4EC90();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A28, &qword_213F529B0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC130, &qword_213F62E18);
  MEMORY[0x28223BE20](v10);
  v12 = &v40[-v11];
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_213F4D950();
  (*(*(v14 - 8) + 104))(v6, v13, v14);
  v15 = (a1 + *(_s13AccessoryItemVMa(0) + 44));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v15) = v15[16];
  v40[8] = v16;
  v41 = v17;
  v42 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76E8, &unk_213F523C0);
  sub_213F4CDC0();
  if (v40[7] == 1)
  {
    v18 = [objc_opt_self() _carSystemFocusColor];
    v19 = sub_213F4E870();
  }

  else
  {
    v19 = sub_213F4E8D0();
  }

  v20 = v19;
  sub_213F0E598(v6, v9, MEMORY[0x277CE1260]);
  *&v9[*(v7 + 36)] = v20;
  LOBYTE(v20) = sub_213F4E040();
  sub_213F4CDA0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_213DE2B44(v9, v12, &qword_27C8F7A28, &qword_213F529B0);
  v29 = &v12[*(v10 + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  LOBYTE(v20) = sub_213F4E0B0();
  sub_213F4CDA0();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_213DE2B44(v12, a2, &qword_27C8FC130, &qword_213F62E18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC138, &qword_213F62E20);
  v39 = a2 + *(result + 36);
  *v39 = v20;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_213F0A9D8@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_213F4D8A0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC110, &qword_213F62D98);
  sub_213F094F8(a2 + *(v3 + 44));
  v4 = sub_213F08D04();
  KeyPath = swift_getKeyPath();
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC118, &qword_213F62DD0) + 36));
  *v6 = KeyPath;
  v6[1] = v4;
  v7 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC108, &qword_213F62D90);
  v9 = a2 + *(result + 36);
  *v9 = v7;
  *(v9 + 8) = 1;
  *(v9 + 16) = 0;
  return result;
}

uint64_t NavigationTray.Accessories.AccessoryButtonType.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t sub_213F0AB30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213DE3164(v2, &v14 - v9, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D290();
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

uint64_t NavigationTray.Accessories.init(model:tapHandler:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for NavigationTray.Accessories(0);
  type metadata accessor for NavigationTray.AccessoriesViewModel(0);
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  result = sub_213F4ED60();
  v9 = (a4 + *(v7 + 24));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

void sub_213F0AE18()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_213F0AB30(&v9 - v5);
  sub_213F4D280();
  sub_213F4D270();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v7(v6, v0);
  sub_213F0AB30(v6);
  sub_213F4D280();
  sub_213F4D270();
  v7(v4, v0);
  v7(v6, v0);
  type metadata accessor for NavigationTray.Accessories(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC098, &qword_213F62C28);
  sub_213F4ED40();
  v8 = v10;
  swift_getKeyPath();
  v10 = v8;
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  swift_beginAccess();
}

void sub_213F0B064()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_213F0AB30(&v9 - v5);
  sub_213F4D280();
  sub_213F4D270();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v7(v6, v0);
  sub_213F0AB30(v6);
  sub_213F4D280();
  sub_213F4D270();
  v7(v4, v0);
  v7(v6, v0);
  type metadata accessor for NavigationTray.Accessories(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC098, &qword_213F62C28);
  sub_213F4ED40();
  v8 = v10;
  swift_getKeyPath();
  v10 = v8;
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  swift_beginAccess();
}

uint64_t NavigationTray.Accessories.body.getter@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = sub_213F4D290();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v52 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC058, &qword_213F628E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC060, &qword_213F628E8);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v53 = &v52 - v17;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC068, &qword_213F628F0) - 8;
  MEMORY[0x28223BE20](v56);
  v54 = &v52 - v18;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC070, &qword_213F628F8) - 8;
  MEMORY[0x28223BE20](v57);
  v55 = &v52 - v19;
  sub_213F0AB30(v11);
  sub_213F4D280();
  v20 = sub_213F4D270();
  v21 = *(v3 + 8);
  v21(v9, v2);
  v21(v11, v2);
  if (v20)
  {
    v22 = 0x4030000000000000;
  }

  else
  {
    v22 = 0x4040000000000000;
  }

  *v14 = sub_213F4D8A0();
  *(v14 + 1) = v22;
  v14[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC078, &qword_213F62900);
  sub_213F0B780(v1, &v14[*(v23 + 44)]);
  v24 = sub_213F4E040();
  sub_213F0AB30(v9);
  sub_213F4D280();
  sub_213F4D270();
  v21(v6, v2);
  v21(v9, v2);
  sub_213F4CDA0();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v14;
  v34 = v53;
  sub_213DE2B44(v33, v53, &qword_27C8FC058, &qword_213F628E0);
  v35 = v34 + *(v16 + 44);
  *v35 = v24;
  *(v35 + 8) = v26;
  *(v35 + 16) = v28;
  *(v35 + 24) = v30;
  *(v35 + 32) = v32;
  *(v35 + 40) = 0;
  sub_213F4EED0();
  sub_213F4D4E0();
  v36 = v34;
  v37 = v54;
  sub_213DE2B44(v36, v54, &qword_27C8FC060, &qword_213F628E8);
  v38 = (v37 + *(v56 + 44));
  v39 = v64;
  v38[4] = v63;
  v38[5] = v39;
  v38[6] = v65;
  v40 = v60;
  *v38 = v59;
  v38[1] = v40;
  v41 = v62;
  v38[2] = v61;
  v38[3] = v41;
  sub_213F0AE18();
  v43 = v42;
  v44 = v37;
  v45 = v55;
  sub_213DE2B44(v44, v55, &qword_27C8FC068, &qword_213F628F0);
  *(v45 + *(v57 + 44)) = v43;
  sub_213F0B064();
  v47 = v46;
  v48 = v45;
  v49 = v58;
  sub_213DE2B44(v48, v58, &qword_27C8FC070, &qword_213F628F8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC080, &qword_213F62908);
  v51 = v49 + *(result + 36);
  *v51 = v47;
  *(v51 + 8) = 0;
  return result;
}

uint64_t sub_213F0B780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v175 = a2;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC180, &qword_213F62EA0);
  MEMORY[0x28223BE20](v174);
  v164 = &v140 - v3;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC188, &qword_213F62EA8);
  MEMORY[0x28223BE20](v157);
  v156 = &v140 - v4;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC190, &qword_213F62EB0);
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v155 = &v140 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC198, &qword_213F62EB8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v162 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v163 = &v140 - v9;
  v165 = _s13AccessoryItemVMa(0);
  v10 = MEMORY[0x28223BE20](v165);
  v148 = (&v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v147 = (&v140 - v13);
  MEMORY[0x28223BE20](v12);
  v154 = (&v140 - v14);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC1A0, &qword_213F62EC0);
  v158 = *(v169 - 8);
  v15 = MEMORY[0x28223BE20](v169);
  v144 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v145 = &v140 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v143 = &v140 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v146 = &v140 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v153 = &v140 - v24;
  MEMORY[0x28223BE20](v23);
  v152 = &v140 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC1A8, &qword_213F62EC8);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v159 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v170 = &v140 - v29;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC1B0, &qword_213F62ED0);
  MEMORY[0x28223BE20](v172);
  v173 = &v140 - v30;
  v31 = type metadata accessor for NavigationTray.Accessories(0);
  v32 = v31 - 8;
  v166 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v167 = v33;
  v168 = &v140 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC1B8, &qword_213F62ED8);
  MEMORY[0x28223BE20](v171);
  v35 = (&v140 - v34);
  v36 = *(v32 + 28);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC098, &qword_213F62C28);
  v38 = a1;
  sub_213F4ED40();
  v39 = v181;
  swift_getKeyPath();
  v181 = v39;
  v40 = sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel, &protocol conformance descriptor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v41 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripWaldo;
  swift_beginAccess();
  v42 = *(v39 + v41);

  if (v42 && (sub_213F4ED40(), v43 = v180, swift_getKeyPath(), v180 = v43, sub_213F4CB80(), , v44 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripWaldo, swift_beginAccess(), v45 = *(v43 + v44), , , v45))
  {

    sub_213F4ED40();
    v46 = v180;
    swift_getKeyPath();
    v180 = v46;
    sub_213F4CB80();

    v47 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__expansionProgress;
    swift_beginAccess();
    v48 = *(v46 + v47);

    v49 = v168;
    sub_213F0E66C(v38, v168, type metadata accessor for NavigationTray.Accessories);
    v50 = (*(v166 + 80) + 16) & ~*(v166 + 80);
    v51 = swift_allocObject();
    sub_213F0E598(v49, v51 + v50, type metadata accessor for NavigationTray.Accessories);
    *v35 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v52 = _s14AccessoryWaldoVMa(0);
    v53 = v35 + v52[8];
    *v53 = sub_213F4CDF0() & 1;
    *(v53 + 1) = v54;
    v53[16] = v55 & 1;
    type metadata accessor for NavigationTray.AccessoryWaldoViewModel(0);
    sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel, &protocol conformance descriptor for NavigationTray.AccessoryWaldoViewModel);
    sub_213F4ED60();
    *(v35 + v52[6]) = v48;
    v56 = (v35 + v52[7]);
    *v56 = sub_213F0EA08;
    v56[1] = v51;
    v57 = v35 + *(v171 + 36);
    *v57 = xmmword_213F62680;
    v57[16] = 16;
    v58 = &qword_213F62ED8;
    sub_213DE3164(v35, v173, &qword_27C8FC1B8, &qword_213F62ED8);
    swift_storeEnumTagMultiPayload();
    sub_213DBEE50();
    sub_213DE3AE4(&qword_281182580, &qword_27C8FC180, &qword_213F62EA0, MEMORY[0x277CE14C0]);
    sub_213F4DBA0();

    v59 = v35;
    v60 = &qword_27C8FC1B8;
  }

  else
  {
    v61 = v38;
    sub_213F4ED40();
    v62 = v180;
    swift_getKeyPath();
    v180 = v62;
    sub_213F4CB80();

    v63 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory;
    swift_beginAccess();
    v64 = *(v62 + v63);

    v151 = v40;
    v150 = v36;
    v149 = v37;
    if (v64)
    {
      v142 = v38;
      sub_213F4ED40();
      v65 = v179;
      swift_getKeyPath();
      v179 = v65;
      sub_213F4CB80();

      v66 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory;
      swift_beginAccess();
      if (*(v65 + v66))
      {
        swift_getKeyPath();
        v179 = v65;
        sub_213F4CB80();

        v67 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory;
        swift_beginAccess();
        v68 = *(v65 + v67) != 0;
      }

      else
      {
        v68 = 0;
      }

      v72 = sub_213F4E920();
      v141 = sub_213F4E8E0();
      KeyPath = swift_getKeyPath();
      v74 = v154;
      *v154 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v75 = v165;
      v76 = v165[6];
      v77 = (v74 + v165[10]);
      v78 = v74 + v165[11];

      *v78 = sub_213F4CDF0() & 1;
      *(v78 + 8) = v79;
      *(v78 + 16) = v80 & 1;
      type metadata accessor for NavigationTray.AccessoryItemViewModel(0);
      sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel, &protocol conformance descriptor for NavigationTray.AccessoryItemViewModel);
      sub_213F4ED60();
      *(v74 + v76) = v68;
      v81 = (v74 + v75[7]);
      *v81 = 0x6C69662E746C6F62;
      v81[1] = 0xE90000000000006CLL;
      *(v74 + v75[8]) = v72;
      *(v74 + v75[9]) = v141;
      *v77 = 0;
      v77[1] = 0;

      v82 = v153;
      sub_213F0E66C(v74, v153, _s13AccessoryItemVMa);
      v71 = v169;
      v83 = v82 + *(v169 + 36);
      *v83 = xmmword_213F62690;
      *(v83 + 16) = 16;
      sub_213F0E6DC(v74);
      v84 = v82;
      v85 = v152;
      sub_213DE2B44(v84, v152, &qword_27C8FC1A0, &qword_213F62EC0);
      v70 = v170;
      sub_213DE2B44(v85, v170, &qword_27C8FC1A0, &qword_213F62EC0);
      v69 = 0;
      v61 = v142;
    }

    else
    {
      v69 = 1;
      v70 = v170;
      v71 = v169;
    }

    v86 = 1;
    (*(v158 + 56))(v70, v69, 1, v71);
    sub_213F4ED40();
    v87 = v179;
    swift_getKeyPath();
    v179 = v87;
    sub_213F4CB80();

    v88 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory;
    swift_beginAccess();
    v89 = *(v87 + v88);

    if (v89)
    {
      sub_213F4ED40();
      v90 = v178;
      swift_getKeyPath();
      v178 = v90;
      sub_213F4CB80();

      v91 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessoryState;
      swift_beginAccess();
      LOBYTE(v91) = *(v90 + v91);

      if (v91)
      {
        sub_213F4ED40();
        v92 = v177;
        swift_getKeyPath();
        v177 = v92;
        sub_213F4CB80();

        v93 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory;
        swift_beginAccess();
        if (*(v92 + v93))
        {
          swift_getKeyPath();
          v176 = v92;
          sub_213F4CB80();

          v94 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory;
          swift_beginAccess();
          LODWORD(v158) = *(v92 + v94) != 0;
        }

        else
        {
          LODWORD(v158) = 0;
        }

        v154 = 0x8000000213FA5F20;
        v99 = sub_213F4E8B0();
        v100 = sub_213F4E8B0();
        v101 = v168;
        sub_213F0E66C(v61, v168, type metadata accessor for NavigationTray.Accessories);
        v102 = (*(v166 + 80) + 16) & ~*(v166 + 80);
        v103 = swift_allocObject();
        sub_213F0E598(v101, v103 + v102, type metadata accessor for NavigationTray.Accessories);
        v104 = swift_getKeyPath();
        v105 = v148;
        *v148 = v104;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
        swift_storeEnumTagMultiPayload();
        v106 = v165;
        v107 = v165[6];
        v108 = (v105 + v165[10]);
        v109 = v105 + v165[11];

        *v109 = sub_213F4CDF0() & 1;
        *(v109 + 8) = v110;
        *(v109 + 16) = v111 & 1;
        type metadata accessor for NavigationTray.AccessoryItemViewModel(0);
        sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel, &protocol conformance descriptor for NavigationTray.AccessoryItemViewModel);
        sub_213F4ED60();
        *(v105 + v107) = v158;
        v112 = (v105 + v106[7]);
        v113 = v154;
        *v112 = 0xD00000000000001ALL;
        v112[1] = v113;
        *(v105 + v106[8]) = v99;
        *(v105 + v106[9]) = v100;
        *v108 = sub_213F0E6D4;
        v108[1] = v103;
        v114 = v144;
        sub_213F0E66C(v105, v144, _s13AccessoryItemVMa);
        v115 = v114 + *(v169 + 36);
        *v115 = 0xD00000000000001ALL;
        *(v115 + 8) = 0x8000000213FA5F40;
        *(v115 + 16) = 16;
        sub_213F0E6DC(v105);
        v116 = v145;
        sub_213DE2B44(v114, v145, &qword_27C8FC1A0, &qword_213F62EC0);
      }

      else
      {
        sub_213F4ED40();
        v96 = v177;
        swift_getKeyPath();
        v177 = v96;
        sub_213F4CB80();

        v97 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory;
        swift_beginAccess();
        if (*(v96 + v97))
        {
          swift_getKeyPath();
          v176 = v96;
          sub_213F4CB80();

          v98 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory;
          swift_beginAccess();
          LODWORD(v158) = *(v96 + v98) != 0;
        }

        else
        {
          LODWORD(v158) = 0;
        }

        v154 = 0x8000000213FA5F60;
        v117 = sub_213F4E8B0();
        v118 = sub_213F4E8B0();
        v119 = v168;
        sub_213F0E66C(v61, v168, type metadata accessor for NavigationTray.Accessories);
        v120 = (*(v166 + 80) + 16) & ~*(v166 + 80);
        v121 = swift_allocObject();
        sub_213F0E598(v119, v121 + v120, type metadata accessor for NavigationTray.Accessories);
        v122 = swift_getKeyPath();
        v123 = v147;
        *v147 = v122;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
        swift_storeEnumTagMultiPayload();
        v124 = v165;
        v125 = v165[6];
        v126 = (v123 + v165[10]);
        v127 = v123 + v165[11];

        *v127 = sub_213F4CDF0() & 1;
        *(v127 + 8) = v128;
        *(v127 + 16) = v129 & 1;
        type metadata accessor for NavigationTray.AccessoryItemViewModel(0);
        sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel, &protocol conformance descriptor for NavigationTray.AccessoryItemViewModel);
        sub_213F4ED60();
        *(v123 + v125) = v158;
        v130 = (v123 + v124[7]);
        v131 = v154;
        *v130 = 0xD000000000000016;
        v130[1] = v131;
        *(v123 + v124[8]) = v117;
        *(v123 + v124[9]) = v118;
        *v126 = sub_213F0E968;
        v126[1] = v121;
        v132 = v143;
        sub_213F0E66C(v123, v143, _s13AccessoryItemVMa);
        v133 = v132 + *(v169 + 36);
        *v133 = 0xD00000000000001DLL;
        *(v133 + 8) = 0x8000000213FA5F80;
        *(v133 + 16) = 16;
        sub_213F0E6DC(v123);
        v116 = v146;
        sub_213DE2B44(v132, v146, &qword_27C8FC1A0, &qword_213F62EC0);
      }

      sub_213DE3164(v116, v156, &qword_27C8FC1A0, &qword_213F62EC0);
      swift_storeEnumTagMultiPayload();
      sub_213F0E738();
      v134 = v155;
      sub_213F4DBA0();

      sub_213DE36FC(v116, &qword_27C8FC1A0, &qword_213F62EC0);
      v95 = v163;
      sub_213DE2B44(v134, v163, &qword_27C8FC190, &qword_213F62EB0);
      v86 = 0;
      v70 = v170;
    }

    else
    {
      v95 = v163;
    }

    (*(v160 + 56))(v95, v86, 1, v161);
    v58 = &qword_213F62EC8;
    v135 = v159;
    sub_213DE3164(v70, v159, &qword_27C8FC1A8, &qword_213F62EC8);
    v136 = v162;
    sub_213DE3164(v95, v162, &qword_27C8FC198, &qword_213F62EB8);
    v137 = v164;
    sub_213DE3164(v135, v164, &qword_27C8FC1A8, &qword_213F62EC8);
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC1C0, &qword_213F62EE0);
    sub_213DE3164(v136, v137 + *(v138 + 48), &qword_27C8FC198, &qword_213F62EB8);
    sub_213DE36FC(v136, &qword_27C8FC198, &qword_213F62EB8);
    sub_213DE36FC(v135, &qword_27C8FC1A8, &qword_213F62EC8);
    sub_213DE3164(v137, v173, &qword_27C8FC180, &qword_213F62EA0);
    swift_storeEnumTagMultiPayload();
    sub_213DBEE50();
    sub_213DE3AE4(&qword_281182580, &qword_27C8FC180, &qword_213F62EA0, MEMORY[0x277CE14C0]);
    sub_213F4DBA0();
    sub_213DE36FC(v137, &qword_27C8FC180, &qword_213F62EA0);
    sub_213DE36FC(v95, &qword_27C8FC198, &qword_213F62EB8);
    v59 = v70;
    v60 = &qword_27C8FC1A8;
  }

  return sub_213DE36FC(v59, v60, v58);
}

uint64_t sub_213F0D004()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessoryState;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_213F0D084()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__expansionProgress;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_213F0D10C()
{
  result = qword_27C8FC088;
  if (!qword_27C8FC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC088);
  }

  return result;
}

unint64_t sub_213F0D164()
{
  result = qword_27C8FC090;
  if (!qword_27C8FC090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC090);
  }

  return result;
}

uint64_t sub_213F0D380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_213F4CB40();
  if (v6 <= 0x3F)
  {
    result = sub_213F4CBC0();
    if (v7 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_213F0D5D8(uint64_t a1)
{
  result = sub_213F4CB40();
  if (v2 <= 0x3F)
  {
    result = sub_213F4CBC0();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_213F0DA98(uint64_t a1)
{
  sub_213F0DB94(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213F0DB94(319, &qword_2811825E0, type metadata accessor for NavigationTray.AccessoriesViewModel, MEMORY[0x277CE12F8]);
    if (v2 <= 0x3F)
    {
      sub_213DE22E8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213F0DB94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_213F0DC08()
{
  result = qword_281182D40;
  if (!qword_281182D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC080, &qword_213F62908);
    sub_213F0DC94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D40);
  }

  return result;
}

unint64_t sub_213F0DC94()
{
  result = qword_281182E00;
  if (!qword_281182E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC070, &qword_213F628F8);
    sub_213F0DD20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E00);
  }

  return result;
}

unint64_t sub_213F0DD20()
{
  result = qword_281182F98;
  if (!qword_281182F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC068, &qword_213F628F0);
    sub_213F0DDAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F98);
  }

  return result;
}

unint64_t sub_213F0DDAC()
{
  result = qword_2811831F8;
  if (!qword_2811831F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC060, &qword_213F628E8);
    sub_213DE3AE4(&qword_281182710, &qword_27C8FC058, &qword_213F628E0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831F8);
  }

  return result;
}

void sub_213F0DE64(uint64_t a1)
{
  sub_213F0DB94(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213F0DB94(319, &qword_2811825D8, type metadata accessor for NavigationTray.AccessoryItemViewModel, MEMORY[0x277CE12F8]);
    if (v2 <= 0x3F)
    {
      sub_213E0C0F8(319);
      if (v3 <= 0x3F)
      {
        sub_213DE2394();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_213F0DFE4(uint64_t a1)
{
  sub_213F0DB94(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213F0DB94(319, &qword_2811825D0, type metadata accessor for NavigationTray.AccessoryWaldoViewModel, MEMORY[0x277CE12F8]);
    if (v2 <= 0x3F)
    {
      sub_213DE22E8();
      if (v3 <= 0x3F)
      {
        sub_213DE2394();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_213F0E138()
{
  result = qword_281182AA8;
  if (!qword_281182AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC0F8, &qword_213F62D80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC0E8, &qword_213F62D70);
    sub_213F0E248();
    sub_213DE295C();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182768, &qword_27C8FC0D0, &qword_213F62D58, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AA8);
  }

  return result;
}

unint64_t sub_213F0E248()
{
  result = qword_281183278;
  if (!qword_281183278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC0E8, &qword_213F62D70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC0E0, &qword_213F62D68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC108, &qword_213F62D90);
    sub_213F0E380();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182BC8, &qword_27C8FC128, &qword_213F62E10, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183278);
  }

  return result;
}

unint64_t sub_213F0E380()
{
  result = qword_281182F70;
  if (!qword_281182F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC108, &qword_213F62D90);
    sub_213F0E438();
    sub_213DE3AE4(&qword_281182840, &qword_27C8F81E8, &unk_213F53670, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F70);
  }

  return result;
}

unint64_t sub_213F0E438()
{
  result = qword_2811831C8;
  if (!qword_2811831C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC118, &qword_213F62DD0);
    sub_213DE3AE4(&qword_2811826D0, &qword_27C8FC120, &qword_213F62E08, MEMORY[0x277CE1138]);
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831C8);
  }

  return result;
}

uint64_t sub_213F0E51C()
{
  v1 = *(v0 + 16);
  v3 = 0;
  return v1(&v3);
}

uint64_t sub_213F0E55C(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_213F0E598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213F0E66C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213F0E6DC(uint64_t a1)
{
  v2 = _s13AccessoryItemVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_213F0E738()
{
  result = qword_281183440;
  if (!qword_281183440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC1A0, &qword_213F62EC0);
    sub_213F033CC(qword_281187970, _s13AccessoryItemVMa, &unk_213F62CE8);
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183440);
  }

  return result;
}

uint64_t objectdestroy_158Tm()
{
  v1 = type metadata accessor for NavigationTray.Accessories(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_213F4D290();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC098, &qword_213F62C28);
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_213F0E970(char *a1, char a2)
{
  v5 = type metadata accessor for NavigationTray.Accessories(0);
  v6 = *a1;
  v7 = *(v2 + *(v5 + 24) + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80)));
  v10 = a2;
  v9 = v6;
  return v7(&v10, &v9);
}

uint64_t sub_213F0EA08()
{
  v1 = type metadata accessor for NavigationTray.Accessories(0);
  v2 = *(v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v5 = 2;
  v4 = 0;
  return v2(&v5, &v4);
}

unint64_t sub_213F0EA90()
{
  result = qword_281182DF8;
  if (!qword_281182DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC0C8, &qword_213F62D50);
    sub_213F0EB1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182DF8);
  }

  return result;
}

unint64_t sub_213F0EB1C()
{
  result = qword_281182F90;
  if (!qword_281182F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC0B8, &qword_213F62D40);
    sub_213F0EBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F90);
  }

  return result;
}

unint64_t sub_213F0EBA8()
{
  result = qword_2811831F0;
  if (!qword_2811831F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC0B0, &qword_213F62D38);
    sub_213DE3AE4(&qword_281182700, &qword_27C8FC1C8, &qword_213F62EE8, MEMORY[0x277CE1138]);
    sub_213DE3AE4(&qword_281182970, &qword_27C8F8770, &unk_213F62EF0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831F0);
  }

  return result;
}

unint64_t sub_213F0EC8C()
{
  result = qword_27C8FC1D0;
  if (!qword_27C8FC1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC168, &unk_213F62E50);
    sub_213F0ED18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC1D0);
  }

  return result;
}

unint64_t sub_213F0ED18()
{
  result = qword_27C8FC1D8;
  if (!qword_27C8FC1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC158, &qword_213F62E40);
    sub_213F0EDA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC1D8);
  }

  return result;
}

unint64_t sub_213F0EDA4()
{
  result = qword_27C8FC1E0;
  if (!qword_27C8FC1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC150, &qword_213F62E38);
    sub_213DE3AE4(&qword_27C8FC1E8, &qword_27C8FC148, &qword_213F62E30, MEMORY[0x277CE1198]);
    sub_213DE3AE4(&qword_281182970, &qword_27C8F8770, &unk_213F62EF0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC1E0);
  }

  return result;
}

uint64_t NavigationTray.MetricSection.__allocating_init(unit:value:unitAccessibilityLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  sub_213F4CB30();
  sub_213F4CBB0();
  v13 = (v12 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__unit);
  *v13 = a1;
  v13[1] = a2;
  v14 = (v12 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__value);
  *v14 = a3;
  v14[1] = a4;
  v15 = (v12 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__unitAccessibilityLabel);
  *v15 = a5;
  v15[1] = a6;
  return v12;
}

uint64_t NavigationTray.MetricsViewModel.__allocating_init(state:eta:time:distance:disableAnimations:navigationTrayHasAccessories:expansionProgress:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, double a7)
{
  v14 = swift_allocObject();
  LOBYTE(a1) = *a1;
  sub_213F4CBB0();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a5;
  *(v14 + 49) = a6;
  *(v14 + 56) = a7;
  return v14;
}

double sub_213F0F024@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_213F16F2C();
  v9 = type metadata accessor for ShimmeringView(0, a2, a3, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC350, &unk_213F636E0);
  sub_213F4EAA0();
  v10 = (a1 + *(v9 + 48));
  v12 = *v10;
  *&v13 = *(v10 + 2);
  sub_213F4EAA0();
  sub_213F4D2C0();
  result = *&v12;
  *a4 = v12;
  *(a4 + 16) = v13;
  *(a4 + 32) = v14;
  return result;
}

double sub_213F0F11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213F4EF30();
  sub_213F4EF10();

  sub_213F4D210();

  return result;
}

uint64_t sub_213F0F1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213F4F060();
  type metadata accessor for ShimmeringView(0, a2, a3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC350, &unk_213F636E0);
  sub_213F4EAB0();
  return sub_213F4EAB0();
}

uint64_t sub_213F0F304@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection, &protocol conformance descriptor for NavigationTray.MetricSection);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213F0F3FC(uint64_t a1)
{
  v2 = sub_213F4CB40();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_213F0F5C0(v4);
}

uint64_t sub_213F0F4C8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection, &protocol conformance descriptor for NavigationTray.MetricSection);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213F0F5C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__id;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_213DBBCC0(&qword_27C8F8BF8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v14[0] = a1;
  LOBYTE(a1) = sub_213F4F1F0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection, &protocol conformance descriptor for NavigationTray.MetricSection);
    sub_213F4CB70();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_213F0F860(uint64_t a1, uint64_t a2)
{
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__id;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

uint64_t (*sub_213F0F97C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection, &protocol conformance descriptor for NavigationTray.MetricSection);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F0F2A4(v4);
  return sub_213F0FAB4;
}

uint64_t (*sub_213F0FB88(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection, &protocol conformance descriptor for NavigationTray.MetricSection);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F0FAC0(v4);
  return sub_213F0FCC0;
}

uint64_t keypath_set_14Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t (*sub_213F0FDDC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection, &protocol conformance descriptor for NavigationTray.MetricSection);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F0FCCC(v4);
  return sub_213F0FF14;
}

uint64_t sub_213F0FF94@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection, &protocol conformance descriptor for NavigationTray.MetricSection);
  sub_213F4CB80();

  v7 = (v6 + *a3);
  swift_beginAccess();
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
}

uint64_t sub_213F10090(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection, &protocol conformance descriptor for NavigationTray.MetricSection);
  sub_213F4CB80();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_213F10180(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (v5 + *a3);
  swift_beginAccess();
  v9 = *v8 == a1 && v8[1] == a2;
  if (v9 || (sub_213F4F830() & 1) != 0)
  {
    *v8 = a1;
    v8[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection, &protocol conformance descriptor for NavigationTray.MetricSection);
    sub_213F4CB70();
  }
}

uint64_t (*sub_213F102D8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection, &protocol conformance descriptor for NavigationTray.MetricSection);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F0FF20(v4);
  return sub_213F10410;
}

uint64_t NavigationTray.MetricSection.init(unit:value:unitAccessibilityLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_213F4CB40();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4CB30();
  (*(v14 + 32))(v6 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__id, v16, v13);
  sub_213F4CBB0();
  v17 = (v6 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__unit);
  *v17 = a1;
  v17[1] = a2;
  v18 = (v6 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__value);
  *v18 = a3;
  v18[1] = a4;
  v19 = (v6 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__unitAccessibilityLabel);
  *v19 = a5;
  v19[1] = a6;
  return v6;
}

uint64_t NavigationTray.MetricSection.deinit()
{
  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection___observationRegistrar;
  v4 = sub_213F4CBC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_213F10638@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection, &protocol conformance descriptor for NavigationTray.MetricSection);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t NavigationTray.MetricsViewModel.MetricsViewState.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t sub_213F107B8()
{
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v1 = 4281413;
  if (*(v0 + 16) != 1)
  {
    v1 = 0x6E6974756F726552;
  }

  if (*(v0 + 16))
  {
    return v1;
  }

  else
  {
    return 0x676E6964616F4CLL;
  }
}

uint64_t sub_213F108BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_213F109B0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

double sub_213F10A6C(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
    sub_213F4CB70();
  }

  return result;
}

uint64_t (*sub_213F10B88(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray16MetricsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213DDE118(v4);
  return sub_213F10CC0;
}

uint64_t sub_213F10D1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_213F10E08()
{
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
}

double sub_213F10EC0(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 24) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
    sub_213F4CB70();
  }

  return result;
}

void sub_213F10FE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

uint64_t (*sub_213F11050(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray16MetricsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F10CCC(v4);
  return sub_213F11188;
}

uint64_t sub_213F11194@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_213F11280()
{
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
}

double sub_213F11338(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 32) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
    sub_213F4CB70();
  }

  return result;
}

void sub_213F11460(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

uint64_t (*sub_213F114C8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray16MetricsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213DE6004(v4);
  return sub_213F11600;
}

uint64_t sub_213F1165C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_213F11748()
{
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
}

double sub_213F11800(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 40) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
    sub_213F4CB70();
  }

  return result;
}

void sub_213F11928(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
}

uint64_t (*sub_213F11990(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray16MetricsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F1160C(v4);
  return sub_213F11AC8;
}

uint64_t sub_213F11AD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_213F11BB8()
{
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return *(v0 + 48);
}

void sub_213F11C6C(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 48) == v2)
  {
    *(v1 + 48) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
    sub_213F4CB70();
  }
}

uint64_t (*sub_213F11D90(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray16MetricsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213DDEB98(v4);
  return sub_213F11EC8;
}

uint64_t sub_213F11F24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_213F12008()
{
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return *(v0 + 49);
}

void sub_213F120BC(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 49) == v2)
  {
    *(v1 + 49) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
    sub_213F4CB70();
  }
}

uint64_t (*sub_213F121E0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray16MetricsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F11ED4(v4);
  return sub_213F12318;
}

double sub_213F12324@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  result = *(v3 + 56);
  *a2 = result;
  return result;
}

double sub_213F12408()
{
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return *(v0 + 56);
}

void sub_213F124BC(double a1)
{
  swift_beginAccess();
  if (*(v1 + 56) == a1)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
    sub_213F4CB70();
  }
}

uint64_t (*sub_213F125E8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray16MetricsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213DE6958(v4);
  return sub_213F12720;
}

uint64_t NavigationTray.MetricsViewModel.init(state:eta:time:distance:disableAnimations:navigationTrayHasAccessories:expansionProgress:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, double a7)
{
  v14 = *a1;
  sub_213F4CBB0();
  *(v7 + 16) = v14;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 49) = a6;
  *(v7 + 56) = a7;
  return v7;
}

uint64_t sub_213F12844()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_213F12920()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 49) = v2;
  return result;
}

uint64_t sub_213F12974()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

char *NavigationTray.MetricsViewModel.deinit()
{

  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray16MetricsViewModel___observationRegistrar;
  v2 = sub_213F4CBC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_213F12A40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213DE3164(v2, &v14 - v9, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D290();
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

uint64_t sub_213F12C40@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NavigationTray.Metrics(0);
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

double sub_213F12E48()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v16 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  sub_213F12A40(&v16 - v8);
  sub_213F4D280();
  v10 = sub_213F4D270();
  v11 = *(v1 + 8);
  v11(v7, v0);
  v11(v9, v0);
  if (v10)
  {
    v12 = 10.0;
  }

  else
  {
    v12 = 20.0;
  }

  sub_213F12A40(v7);
  sub_213F4D280();
  sub_213F4D270();
  v11(v4, v0);
  v11(v7, v0);
  type metadata accessor for NavigationTray.Metrics(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC220, &qword_213F631C0);
  sub_213F4ED40();
  v13 = v17;
  swift_getKeyPath();
  v17 = v13;
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v14 = *(v13 + 56);

  return v12 + (12.0 - v12) * v14;
}

uint64_t sub_213F130B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = sub_213F4DF50();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_213F4D290();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F75C0, &qword_213F54760);
  MEMORY[0x28223BE20](v32);
  v13 = &v31 - v12;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC298, &unk_213F634D0);
  MEMORY[0x28223BE20](v31);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2B0, &qword_213F634E8);
  v33 = *(v16 - 8);
  v34 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC288, &qword_213F634C8);
  MEMORY[0x28223BE20](v35);
  v20 = &v31 - v19;
  *v15 = sub_213F4DA40();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2B8, &qword_213F634F0);
  sub_213F136D0(a1, v2, &v15[*(v21 + 44)]);
  sub_213F12A40(v11);
  sub_213F4D280();
  LOBYTE(a1) = sub_213F4D270();
  v22 = *(v6 + 8);
  v22(v9, v5);
  v22(v11, v5);
  v23 = sub_213F4D390();
  v24 = *(*(v23 - 8) + 104);
  if (a1)
  {
    v24(v13, *MEMORY[0x277CDF9D8], v23);
    sub_213DBBCC0(&qword_281183488, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    if (sub_213F4F1F0())
    {
LABEL_5:
      sub_213DE3AE4(&qword_27C8FC2A0, &qword_27C8FC298, &unk_213F634D0, MEMORY[0x277CE1198]);
      sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760, MEMORY[0x277D84470]);
      sub_213F4E570();
      sub_213DE36FC(v13, &qword_27C8F75C0, &qword_213F54760);
      sub_213DE36FC(v15, &qword_27C8FC298, &unk_213F634D0);
      sub_213F4EEE0();
      sub_213F4D4E0();
      (*(v33 + 32))(v20, v18, v34);
      v26 = v36;
      v27 = &v20[*(v35 + 36)];
      v28 = v45;
      *(v27 + 4) = v44;
      *(v27 + 5) = v28;
      *(v27 + 6) = v46;
      v29 = v41;
      *v27 = v40;
      *(v27 + 1) = v29;
      v30 = v43;
      *(v27 + 2) = v42;
      *(v27 + 3) = v30;
      sub_213F4DF30();
      sub_213F1674C();
      sub_213F4E640();
      (*(v37 + 8))(v26, v39);
      return sub_213DE36FC(v20, &qword_27C8FC288, &qword_213F634C8);
    }

    __break(1u);
  }

  v24(v13, *MEMORY[0x277CDF9F0], v23);
  sub_213DBBCC0(&qword_281183488, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_213F4F1F0();
  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_213F136D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v145 = a3;
  v144 = sub_213F4D3B0();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B50, &qword_213F653D0);
  v6 = MEMORY[0x28223BE20](v136);
  v135 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v134 = &v110 - v8;
  v9 = type metadata accessor for NavigationTray.Metrics(0);
  v10 = *(v9 - 8);
  v123 = v9 - 8;
  v129 = v10;
  MEMORY[0x28223BE20](v9 - 8);
  v130 = v11;
  v131 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B58, &unk_213F52120);
  MEMORY[0x28223BE20](v12 - 8);
  v137 = &v110 - v13;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2C0, &unk_213F634F8);
  v14 = MEMORY[0x28223BE20](v139);
  v141 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v138 = &v110 - v17;
  MEMORY[0x28223BE20](v16);
  v140 = &v110 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v19 - 8);
  v117 = &v110 - v20;
  v116 = sub_213F4E230();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v22 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_213F4D290();
  v23 = *(v114 - 8);
  v24 = MEMORY[0x28223BE20](v114);
  v26 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v110 - v27;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2C8, &qword_213F63508) - 8;
  MEMORY[0x28223BE20](v118);
  v30 = &v110 - v29;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2D0, &qword_213F63510) - 8;
  MEMORY[0x28223BE20](v120);
  v119 = &v110 - v31;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2D8, &qword_213F63518);
  MEMORY[0x28223BE20](v124);
  v146 = &v110 - v32;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2E0, &qword_213F63520);
  MEMORY[0x28223BE20](v126);
  v128 = &v110 - v33;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2E8, &qword_213F63528);
  v34 = MEMORY[0x28223BE20](v125);
  v132 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v127 = &v110 - v37;
  MEMORY[0x28223BE20](v36);
  v147 = &v110 - v38;
  swift_getKeyPath();
  v39 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection___observationRegistrar;
  v155 = a1;
  v40 = sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection, &protocol conformance descriptor for NavigationTray.MetricSection);
  v122 = v39;
  v121 = v40;
  sub_213F4CB80();

  v133 = a1;
  v41 = (a1 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__value);
  swift_beginAccess();
  v42 = v41[1];
  v113 = *v41;
  KeyPath = swift_getKeyPath();
  v111 = swift_getKeyPath();
  v157 = 0;
  v156 = 0;

  sub_213F12A40(v28);
  sub_213F4D280();
  LOBYTE(v39) = sub_213F4D270();
  v43 = *(v23 + 8);
  v44 = v26;
  v45 = v114;
  v43(v44, v114);
  v43(v28, v45);
  v46 = v115;
  v47 = MEMORY[0x277CE0A58];
  if ((v39 & 1) == 0)
  {
    v47 = MEMORY[0x277CE0A70];
  }

  v48 = v116;
  (*(v115 + 104))(v22, *v47, v116);
  v49 = sub_213F4E0F0();
  v50 = v117;
  (*(*(v49 - 8) + 56))(v117, 1, 1, v49);
  sub_213F4E180();
  v51 = sub_213F4E1A0();
  sub_213DE36FC(v50, &qword_27C8F7668, &qword_213F52190);
  (*(v46 + 8))(v22, v48);
  v52 = swift_getKeyPath();
  v53 = sub_213F4DD90();
  v54 = (a2 + *(v123 + 36));
  v55 = *v54;
  v56 = *(v54 + 1);
  LODWORD(v116) = v55;
  LOBYTE(v153) = v55;
  v117 = v56;
  v154 = v56;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v152)
  {
    v57 = 0.0;
  }

  else
  {
    v57 = 1.0;
  }

  v58 = &v30[*(v118 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F28, &qword_213F61E10);
  sub_213F4D540();
  *v58 = swift_getKeyPath();
  *v30 = v113;
  *(v30 + 1) = v42;
  v30[16] = 0;
  v59 = KeyPath;
  *(v30 + 3) = MEMORY[0x277D84F90];
  *(v30 + 4) = v59;
  *(v30 + 5) = 1;
  v30[48] = 0;
  *(v30 + 7) = v111;
  v30[64] = 1;
  *(v30 + 9) = v52;
  *(v30 + 10) = v51;
  *(v30 + 22) = v53;
  *(v30 + 12) = v57;
  v60 = v119;
  sub_213DE2B44(v30, v119, &qword_27C8FC2C8, &qword_213F63508);
  v61 = v60;
  *(v60 + *(v120 + 44)) = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC220, &qword_213F631C0);
  v62 = a2;
  sub_213F4ED40();
  v63 = v153;
  swift_getKeyPath();
  v153 = v63;
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  LOBYTE(v60) = *(v63 + 48);

  v64 = 0;
  if ((v60 & 1) == 0)
  {
    v64 = sub_213F4EF70();
  }

  swift_getKeyPath();
  v65 = v133;
  v152 = v133;
  sub_213F4CB80();

  v67 = *v41;
  v66 = v41[1];
  v68 = v146;
  sub_213DE2B44(v61, v146, &qword_27C8FC2D0, &qword_213F63510);
  v69 = (v68 + *(v124 + 36));
  *v69 = v64;
  v69[1] = v67;
  v69[2] = v66;

  v70 = v62;
  sub_213F4ED40();
  v71 = v152;
  swift_getKeyPath();
  v152 = v71;
  sub_213F4CB80();

  swift_beginAccess();
  LOBYTE(v67) = *(v71 + 48);

  v72 = 0;
  if ((v67 & 1) == 0)
  {
    v72 = sub_213F4EF70();
  }

  LOBYTE(v150) = v116;
  *(&v150 + 1) = v117;
  sub_213F4EAA0();
  v73 = v148;
  v74 = v128;
  sub_213DE2B44(v146, v128, &qword_27C8FC2D8, &qword_213F63518);
  v75 = v74 + *(v126 + 36);
  *v75 = v72;
  *(v75 + 8) = v73;
  v76 = sub_213F4EEE0();
  v78 = v77;
  v79 = v127;
  v80 = &v127[*(v125 + 36)];
  sub_213F147EC(v70, v80);
  v81 = (v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2F0, &qword_213F635F8) + 36));
  *v81 = v76;
  v81[1] = v78;
  sub_213DE2B44(v74, v79, &qword_27C8FC2E0, &qword_213F63520);
  sub_213DE2B44(v79, v147, &qword_27C8FC2E8, &qword_213F63528);
  v82 = v137;
  sub_213F12C40(v137);
  v83 = v143;
  v84 = v144;
  (*(v143 + 56))(v82, 0, 1, v144);
  v85 = v131;
  sub_213DBCA60(v70, v131);
  v86 = (*(v129 + 80) + 24) & ~*(v129 + 80);
  v87 = swift_allocObject();
  *(v87 + 16) = v65;
  v146 = v87;
  sub_213DBCAC4(v85, v87 + v86);
  v88 = v139;
  v89 = v138;
  v90 = &v138[*(v139 + 56)];
  v148 = 0;
  v149 = 0;
  type metadata accessor for CGSize(0);

  sub_213F4EA90();
  v91 = v151;
  *v90 = v150;
  *(v90 + 2) = v91;
  v92 = &v89[v88[15]];
  LOBYTE(v148) = 0;
  sub_213F4EA90();
  v93 = *(&v150 + 1);
  *v92 = v150;
  *(v92 + 1) = v93;
  v94 = sub_213F4CB00();
  v95 = v134;
  (*(*(v94 - 8) + 56))(v134, 1, 1, v94);
  sub_213DE3164(v95, v135, &qword_27C8F7B50, &qword_213F653D0);
  sub_213F4EA90();
  sub_213DE36FC(v95, &qword_27C8F7B50, &qword_213F653D0);
  v96 = &v89[v88[17]];
  *v96 = swift_getKeyPath();
  *(v96 + 1) = 0;
  *(v96 + 8) = 0;
  v97 = v88[18];
  *&v89[v97] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v98 = &v89[v88[19]];
  *v98 = sub_213F47E1C;
  *(v98 + 1) = 0;
  v98[16] = 0;
  *v89 = xmmword_213F51DD0;
  *(v89 + 1) = xmmword_213F62F20;
  v99 = *(v83 + 48);
  if (v99(v82, 1, v84) == 1)
  {
    v100 = v142;
    (*(v83 + 104))(v142, *MEMORY[0x277CDFA88], v84);
    if (v99(v82, 1, v84) != 1)
    {
      sub_213DE36FC(v82, &qword_27C8F7B58, &unk_213F52120);
    }
  }

  else
  {
    v100 = v142;
    (*(v83 + 32))(v142, v82, v84);
  }

  (*(v83 + 32))(&v89[v88[12]], v100, v84);
  v101 = &v89[v88[13]];
  v102 = v146;
  *v101 = sub_213F168A8;
  v101[1] = v102;
  v103 = v140;
  sub_213DE2B44(v89, v140, &qword_27C8FC2C0, &unk_213F634F8);
  v104 = v147;
  v105 = v132;
  sub_213DE3164(v147, v132, &qword_27C8FC2E8, &qword_213F63528);
  v106 = v141;
  sub_213DE3164(v103, v141, &qword_27C8FC2C0, &unk_213F634F8);
  v107 = v145;
  sub_213DE3164(v105, v145, &qword_27C8FC2E8, &qword_213F63528);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2F8, &qword_213F63628);
  sub_213DE3164(v106, v107 + *(v108 + 48), &qword_27C8FC2C0, &unk_213F634F8);
  sub_213DE36FC(v103, &qword_27C8FC2C0, &unk_213F634F8);
  sub_213DE36FC(v104, &qword_27C8FC2E8, &qword_213F63528);
  sub_213DE36FC(v106, &qword_27C8FC2C0, &unk_213F634F8);
  return sub_213DE36FC(v105, &qword_27C8FC2E8, &qword_213F63528);
}

uint64_t sub_213F147EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC330, &qword_213F63648);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC338, &qword_213F63650);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC340, &qword_213F63658);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v15 = *(sub_213F4D470() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_213F4D950();
  (*(*(v17 - 8) + 104))(&v6[v15], v16, v17);
  __asm { FMOV            V0.2D, #8.0 }

  *v6 = _Q0;
  *&v6[*(v4 + 44)] = sub_213F4DDA0();
  sub_213F4EEE0();
  sub_213F4D4E0();
  sub_213DE2B44(v6, v10, &qword_27C8FC330, &qword_213F63648);
  v23 = &v10[*(v8 + 44)];
  v24 = v51;
  *(v23 + 4) = v50;
  *(v23 + 5) = v24;
  *(v23 + 6) = v52;
  v25 = v47;
  *v23 = v46;
  *(v23 + 1) = v25;
  v26 = v49;
  *(v23 + 2) = v48;
  *(v23 + 3) = v26;
  LOBYTE(v16) = sub_213F4E0B0();
  sub_213F4CDA0();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_213DE2B44(v10, v14, &qword_27C8FC338, &qword_213F63650);
  v35 = &v14[*(v12 + 44)];
  *v35 = v16;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = v42 + *(type metadata accessor for NavigationTray.Metrics(0) + 28);
  v37 = *v36;
  v38 = *(v36 + 8);
  v44 = v37;
  v45 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v43)
  {
    v39 = 1.0;
  }

  else
  {
    v39 = 0.0;
  }

  sub_213DE2B44(v14, a2, &qword_27C8FC340, &qword_213F63658);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC348, &qword_213F63660);
  *(a2 + *(result + 36)) = v39;
  return result;
}

uint64_t sub_213F14B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39[1] = a2;
  v48 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v39 - v5;
  v45 = sub_213F4E230();
  v7 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_213F4D290();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v39 - v15;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection___observationRegistrar;
  *&v55[0] = a1;
  v18 = sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection, &protocol conformance descriptor for NavigationTray.MetricSection);
  v46 = v17;
  v44 = v18;
  sub_213F4CB80();

  v19 = (a1 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__unit);
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  *&v55[0] = v20;
  *(&v55[0] + 1) = v21;
  v22 = sub_213DBC9EC();

  v47 = v22;
  v43 = sub_213F4E310();
  v42 = v23;
  v40 = v24;
  v41 = v25;
  sub_213F12A40(v16);
  sub_213F4D280();
  LOBYTE(v21) = sub_213F4D270();
  v26 = *(v11 + 8);
  v26(v14, v10);
  v26(v16, v10);
  v27 = *(v7 + 104);
  if (v21)
  {
    v28 = v45;
    v27(v9, *MEMORY[0x277CE0AA8], v45);
    v29 = sub_213F4E0F0();
    (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
    sub_213F4E160();
  }

  else
  {
    v28 = v45;
    v27(v9, *MEMORY[0x277CE0A68], v45);
    v30 = sub_213F4E0F0();
    (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
    sub_213F4E180();
  }

  v31 = sub_213F4E1A0();
  sub_213DE36FC(v6, &qword_27C8F7668, &qword_213F52190);
  (*(v7 + 8))(v9, v28);
  KeyPath = swift_getKeyPath();
  v33 = [objc_opt_self() secondaryLabelColor];
  v34 = sub_213F4E870();
  v35 = swift_getKeyPath();
  v58 = v40 & 1;
  v57 = 0;
  *&v51 = v43;
  *(&v51 + 1) = v42;
  LOBYTE(v52) = v40 & 1;
  *(&v52 + 1) = v41;
  *&v53 = KeyPath;
  *(&v53 + 1) = v31;
  *v54 = v34;
  *&v54[8] = v35;
  *&v54[16] = 1;
  v54[24] = 0;
  swift_getKeyPath();
  *&v55[0] = a1;
  sub_213F4CB80();

  v36 = (a1 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__unitAccessibilityLabel);
  swift_beginAccess();
  v37 = v36[1];
  v49 = *v36;
  v50 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC300, &qword_213F63630);
  sub_213F1691C();
  sub_213F4E5C0();
  v55[1] = v52;
  v55[2] = v53;
  *v56 = *v54;
  *&v56[9] = *&v54[9];
  v55[0] = v51;
  return sub_213DE36FC(v55, &qword_27C8FC300, &qword_213F63630);
}

uint64_t sub_213F15108@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC278, &qword_213F634B8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v39 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC280, &qword_213F634C0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v48 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v47 = v39 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v46 = v39 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v45 = v39 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v50 = v39 - v15;
  MEMORY[0x28223BE20](v14);
  v44 = v39 - v16;
  v43 = *(type metadata accessor for NavigationTray.Metrics(0) + 24);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC220, &qword_213F631C0);
  sub_213F4ED40();
  v17 = v57;
  swift_getKeyPath();
  v57 = v17;
  v41 = sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel, &protocol conformance descriptor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v18 = *(v17 + 24);

  sub_213F130B0(v18, v4);

  v55 = 4281413;
  v56 = 0xE300000000000000;
  MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC288, &qword_213F634C8);
  v20 = sub_213F1674C();
  v55 = v19;
  v56 = v20;
  v21 = v1;
  v39[1] = swift_getOpaqueTypeConformance2();
  sub_213F4E6D0();

  v22 = *(v2 + 8);
  v39[2] = v2 + 8;
  v40 = v22;
  v22(v4, v1);
  sub_213F4ED40();
  v23 = v55;
  swift_getKeyPath();
  v55 = v23;
  sub_213F4CB80();

  swift_beginAccess();
  v24 = *(v23 + 32);

  sub_213F130B0(v24, v4);

  v53 = 1701669204;
  v54 = 0xE400000000000000;
  MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);
  sub_213F4E6D0();

  v25 = v40;
  v40(v4, v1);
  sub_213F4ED40();
  v26 = v53;
  swift_getKeyPath();
  v53 = v26;
  sub_213F4CB80();

  swift_beginAccess();
  v27 = *(v26 + 40);

  sub_213F130B0(v27, v4);

  v51 = 0x65636E6174736944;
  v52 = 0xE800000000000000;
  MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);
  v28 = v45;
  sub_213F4E6D0();

  v25(v4, v21);
  v29 = v44;
  v30 = v46;
  sub_213DD3F28(v44, v46);
  v31 = v50;
  v32 = v47;
  sub_213DD3F28(v50, v47);
  v33 = v48;
  sub_213DD3F28(v28, v48);
  v34 = v30;
  v35 = v30;
  v36 = v49;
  sub_213DD3F28(v34, v49);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2A8, &qword_213F634E0);
  sub_213DD3F28(v32, v36 + *(v37 + 48));
  sub_213DD3F28(v33, v36 + *(v37 + 64));
  sub_213DE36FC(v28, &qword_27C8FC280, &qword_213F634C0);
  sub_213DE36FC(v31, &qword_27C8FC280, &qword_213F634C0);
  sub_213DE36FC(v29, &qword_27C8FC280, &qword_213F634C0);
  sub_213DE36FC(v33, &qword_27C8FC280, &qword_213F634C0);
  sub_213DE36FC(v32, &qword_27C8FC280, &qword_213F634C0);
  return sub_213DE36FC(v35, &qword_27C8FC280, &qword_213F634C0);
}

double sub_213F15784(__n128 a1, uint64_t a2, char *a3, uint64_t a4)
{
  sub_213F4EF70();
  sub_213F4D210();

  return result;
}

double sub_213F15804(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for NavigationTray.Metrics(0) - 8);
  v7 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_213F15784(v6, a1, a2, v7);
}

uint64_t sub_213F158B4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_213F15938()
{
  result = qword_27C8FC238;
  if (!qword_27C8FC238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC1F8, &qword_213F63190);
    sub_213F159C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC238);
  }

  return result;
}

unint64_t sub_213F159C4()
{
  result = qword_27C8FC240;
  if (!qword_27C8FC240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC1F0, &qword_213F63188);
    sub_213DE3AE4(&qword_27C8FC248, &qword_27C8FC250, &qword_213F631C8, MEMORY[0x277CE1138]);
    sub_213F15A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC240);
  }

  return result;
}

unint64_t sub_213F15A7C()
{
  result = qword_281186930;
  if (!qword_281186930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281186930);
  }

  return result;
}

uint64_t sub_213F15B38(uint64_t a1, char a2)
{
  type metadata accessor for NavigationTray.Metrics(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

uint64_t sub_213F15BCC(uint64_t a1)
{
  result = sub_213F4CB40();
  if (v2 <= 0x3F)
  {
    result = sub_213F4CBC0();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_213F15EA8(uint64_t a1)
{
  result = sub_213F4CBC0();
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

void sub_213F16354(uint64_t a1)
{
  sub_213F16504(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213F16504(319, &qword_281183510, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_213F16504(319, &qword_2811825E8, type metadata accessor for NavigationTray.MetricsViewModel, MEMORY[0x277CE12F8]);
      if (v3 <= 0x3F)
      {
        sub_213F16C98(319, &qword_2811827B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_213F16C98(319, &qword_2811827A8, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213F16504(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_213F16568()
{
  result = qword_27C8FC260;
  if (!qword_27C8FC260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC258, &qword_213F631D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC208, &qword_213F631A0);
    sub_213F158B4(&qword_27C8FC228, &qword_27C8FC208, &qword_213F631A0, sub_213F15884);
    sub_213DBCB28();
    swift_getOpaqueTypeConformance2();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC260);
  }

  return result;
}

uint64_t sub_213F16678(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_213F166C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_213F1674C()
{
  result = qword_27C8FC290;
  if (!qword_27C8FC290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC288, &qword_213F634C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC298, &unk_213F634D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F75C0, &qword_213F54760);
    sub_213DE3AE4(&qword_27C8FC2A0, &qword_27C8FC298, &unk_213F634D0, MEMORY[0x277CE1198]);
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC290);
  }

  return result;
}

uint64_t sub_213F168A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NavigationTray.Metrics(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_213F14B28(v4, v5, a1);
}

unint64_t sub_213F1691C()
{
  result = qword_27C8FC308;
  if (!qword_27C8FC308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC300, &qword_213F63630);
    sub_213F169D4();
    sub_213DE3AE4(&qword_281182840, &qword_27C8F81E8, &unk_213F53670, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC308);
  }

  return result;
}

unint64_t sub_213F169D4()
{
  result = qword_27C8FC310;
  if (!qword_27C8FC310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC318, &qword_213F63638);
    sub_213F16A8C();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC310);
  }

  return result;
}

unint64_t sub_213F16A8C()
{
  result = qword_27C8FC320;
  if (!qword_27C8FC320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC328, &qword_213F63640);
    sub_213DFA480();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC320);
  }

  return result;
}

void sub_213F16B44(uint64_t a1)
{
  sub_213F16504(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213F16C98(319, &qword_281182628, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_213DE22E8();
      if (v3 <= 0x3F)
      {
        sub_213F16C98(319, &qword_2811827B8, MEMORY[0x277CE14E0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_213F16C98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_213F16D38()
{
  result = qword_2811834A0;
  if (!qword_2811834A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811834A0);
  }

  return result;
}

uint64_t objectdestroy_159Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for ShimmeringView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_213F4D290();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_213F16F2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86B0, &qword_213F5A010);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_213F62F40;
  sub_213F4E8C0();
  *(v0 + 32) = sub_213F4EDB0();
  *(v0 + 40) = v1;
  sub_213F4E8F0();
  sub_213F4E900();

  *(v0 + 48) = sub_213F4EDB0();
  *(v0 + 56) = v2;
  sub_213F4E8F0();
  sub_213F4E900();

  *(v0 + 64) = sub_213F4EDB0();
  *(v0 + 72) = v3;
  sub_213F4E8C0();
  *(v0 + 80) = sub_213F4EDB0();
  *(v0 + 88) = v4;

  sub_213F4EDC0();
  return result;
}

uint64_t SharedTripCellViewModel.__allocating_init(state:imageProvider:appIconProvider:title:sharingSubtitle:handleSubtitle:stopSubtitle:trailingLabel:)(char *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a11, uint64_t a13)
{
  v16 = a2[3];
  v15 = a2[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  v18 = a3[3];
  v19 = a3[4];
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a3, v18);
  v21 = sub_213F1F104(a1, v17, v20, a4, a5, a6, a7, a8, a9, a11, a13, v11, v16, v18, v15, v19);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v21;
}

uint64_t SharedTripCellViewModel.SharedTripState.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t sub_213F17188()
{
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_213F1724C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_213F4F830() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
    sub_213F4CB70();
  }
}

uint64_t (*sub_213F173A0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213DDE118(v4);
  return sub_213F174D8;
}

uint64_t sub_213F174E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_213F175D8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a1 = *(v1 + 32);
  return result;
}

double sub_213F17694(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (*(v1 + 32) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
    sub_213F4CB70();
  }

  return result;
}

uint64_t (*sub_213F177B0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213DE6004(v4);
  return sub_213F178E8;
}

uint64_t sub_213F178F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return sub_213DEBAA8(v3 + 40, a2);
}

uint64_t sub_213F179D4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return sub_213DEBAA8(v1 + 40, a1);
}

uint64_t sub_213F17AB4(uint64_t a1, uint64_t a2)
{
  sub_213DEBAA8(a2, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((a1 + 40));
  sub_213DD7500(v4, a1 + 40);
  return swift_endAccess();
}

uint64_t (*sub_213F17B24(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F1160C(v4);
  return sub_213F17C5C;
}

uint64_t sub_213F17C68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return sub_213DEBAA8(v3 + 80, a2);
}

uint64_t sub_213F17D48(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_213DEBAA8(a1, v7);
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB70();

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_213F17E24@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return sub_213DEBAA8(v1 + 80, a1);
}

uint64_t sub_213F17F04(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB70();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_213F17FCC(uint64_t a1, uint64_t a2)
{
  sub_213DEBAA8(a2, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((a1 + 80));
  sub_213DD7500(v4, a1 + 80);
  return swift_endAccess();
}

uint64_t (*sub_213F1803C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E475F0(v4);
  return sub_213F18174;
}

uint64_t sub_213F181D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 128);
  *a2 = *(v3 + 120);
  a2[1] = v4;
}

uint64_t sub_213F182A8()
{
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v1 = *(v0 + 120);

  return v1;
}

uint64_t sub_213F1836C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 120) == a1 && *(v2 + 128) == a2;
  if (v5 || (sub_213F4F830() & 1) != 0)
  {
    *(v2 + 120) = a1;
    *(v2 + 128) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
    sub_213F4CB70();
  }
}

uint64_t sub_213F184C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
}

uint64_t (*sub_213F1852C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F18180(v4);
  return sub_213F18664;
}

uint64_t sub_213F186C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 144);
  *a2 = *(v3 + 136);
  a2[1] = v4;
}

uint64_t sub_213F18798()
{
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v1 = *(v0 + 136);

  return v1;
}

uint64_t sub_213F1885C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 144);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 136) == a1 && v5 == a2;
      if (v6 || (sub_213F4F830() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 136) = a1;
    *(v2 + 144) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB70();
}

uint64_t sub_213F189C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 136) = a2;
  *(a1 + 144) = a3;
}

uint64_t (*sub_213F18A2C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F18670(v4);
  return sub_213F18B64;
}

uint64_t sub_213F18BC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 160);
  *a2 = *(v3 + 152);
  a2[1] = v4;
}

uint64_t sub_213F18C98()
{
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v1 = *(v0 + 152);

  return v1;
}

uint64_t sub_213F18D5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 160);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 152) == a1 && v5 == a2;
      if (v6 || (sub_213F4F830() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 152) = a1;
    *(v2 + 160) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB70();
}

uint64_t sub_213F18EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 152) = a2;
  *(a1 + 160) = a3;
}

uint64_t (*sub_213F18F2C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F18B70(v4);
  return sub_213F19064;
}

uint64_t sub_213F190C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 176);
  *a2 = *(v3 + 168);
  a2[1] = v4;
}

uint64_t keypath_set_16Tm_1(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_213F191E0()
{
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v1 = *(v0 + 168);

  return v1;
}

uint64_t sub_213F192A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 168) == a1 && *(v2 + 176) == a2;
  if (v5 || (sub_213F4F830() & 1) != 0)
  {
    *(v2 + 168) = a1;
    *(v2 + 176) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
    sub_213F4CB70();
  }
}

uint64_t sub_213F193F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 168) = a2;
  *(a1 + 176) = a3;
}

uint64_t (*sub_213F19464(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F19070(v4);
  return sub_213F1959C;
}

uint64_t sub_213F195F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 192);
  *a2 = *(v3 + 184);
  a2[1] = v4;
}

uint64_t keypath_set_21Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_213F19718()
{
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v1 = *(v0 + 184);

  return v1;
}

uint64_t sub_213F197DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 192);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 184) == a1 && v5 == a2;
      if (v6 || (sub_213F4F830() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 184) = a1;
    *(v2 + 192) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB70();
}

uint64_t sub_213F19940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 184) = a2;
  *(a1 + 192) = a3;
}

uint64_t (*sub_213F199AC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F195A8(v4);
  return sub_213F19AE4;
}

uint64_t SharedTripCellViewModel.init(state:imageProvider:appIconProvider:title:sharingSubtitle:handleSubtitle:stopSubtitle:trailingLabel:)(char *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  v31 = a4;
  v34 = a7;
  v35 = a8;
  v32 = a5;
  v33 = a6;
  v28 = a10;
  v29 = a9;
  v15 = a2[3];
  v14 = a2[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = a3[3];
  v21 = a3[4];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a3, v20);
  MEMORY[0x28223BE20](v22);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  v26 = sub_213F1ED68(a1, v18, v24, v31, v32, v33, v34, v35, v29, v28, *(&v28 + 1), a11, v30, v15, v20, v14, v21);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v26;
}

char *SharedTripCellViewModel.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  v1 = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  v2 = sub_213F4CBC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SharedTripCellViewModel.__deallocating_deinit()
{
  SharedTripCellViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_213F19DE0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a1 = *(v3 + 16);
  a1[1] = v4;
}

double sub_213F19EAC()
{
  v1 = v0;
  v2 = sub_213F4D290();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v17 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  sub_213DBBD08(v17 - v10);
  sub_213F4D280();
  sub_213F1FCB4(&qword_2811834A8, MEMORY[0x277CDF7E8], MEMORY[0x277CDF7F0]);
  v12 = sub_213F4F1F0();
  v13 = *(v3 + 8);
  v13(v9, v2);
  v13(v11, v2);
  if ((v12 & 1) != 0 || (v14 = *(v1 + *(type metadata accessor for SharedTripCell(0) + 28)), swift_getKeyPath(), v17[1] = v14, sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel), sub_213F4CB80(), , swift_beginAccess(), result = 0.0, !*(v14 + 192)))
  {
    sub_213DBBD08(v6);
    sub_213F4D280();
    v16 = sub_213F4D270();
    v13(v11, v2);
    v13(v6, v2);
    result = 16.0;
    if (v16)
    {
      return 10.0;
    }
  }

  return result;
}

double sub_213F1A134()
{
  v84 = sub_213F4D290();
  v83 = *(v84 - 8);
  v1 = MEMORY[0x28223BE20](v84);
  v81 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v86 = &v77 - v3;
  v87 = type metadata accessor for RichTextViewModel(0);
  v4 = *(v87 - 8);
  v5 = MEMORY[0x28223BE20](v87);
  v78 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v80 = &v77 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v79 = &v77 - v10;
  MEMORY[0x28223BE20](v9);
  v77 = &v77 - v11;
  v12 = sub_213F4CA70();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_213F4CA10();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA4C0, &qword_213F5C5B0);
  v19 = *(v4 + 72);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v96 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_213F55C80;
  v85 = v21;
  v95 = v20;
  v22 = v21 + v20;
  v23 = *(type metadata accessor for SharedTripCell(0) + 28);
  v82 = v0;
  v24 = *(v0 + v23);
  swift_getKeyPath();
  v25 = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  v101 = v24;
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();

  sub_213F4CA60();
  v92 = v14;
  v26 = v87;
  sub_213F4CA20();
  v27 = *(v16 + 16);
  v28 = v22 + v26[5];
  v91 = v16 + 16;
  v90 = v27;
  v27(v28, v18, v15);
  sub_213F4CB30();
  v29 = *(v16 + 8);
  v89 = v18;
  v93 = v16 + 8;
  v94 = v15;
  v88 = v29;
  v29(v18, v15);
  v31 = v26[7];
  v30 = v26[8];
  *(v22 + v26[6]) = 1;
  v32 = (v22 + v31);
  *v32 = 0;
  v32[1] = 0;
  *(v22 + v30) = 0;
  *(v22 + v26[9]) = 0;
  *(v22 + v26[10]) = 0;
  v33 = v22 + v26[11];
  *v33 = 0;
  *(v33 + 8) = 1;
  *(v22 + v26[12]) = 0;
  swift_getKeyPath();
  v100 = v24;
  sub_213F4CB80();

  swift_beginAccess();
  if (!*(v24 + 32))
  {
    v41 = MEMORY[0x277D84F90];
    v45 = v84;
    v34 = v86;
    goto LABEL_12;
  }

  if (*(v24 + 32) != 1)
  {
    swift_getKeyPath();
    v99 = v24;
    sub_213F4CB80();

    swift_beginAccess();

    v46 = sub_213F4E8A0();
    sub_213F4CA60();
    v47 = v89;
    sub_213F4CA20();
    v36 = v79;
    v48 = v94;
    v90(&v79[v26[5]], v47, v94);
    sub_213F4CB30();
    v88(v47, v48);
    v49 = (v36 + v26[7]);
    v50 = v26[8];
    *(v36 + v26[6]) = 0;
    *v49 = 0;
    v49[1] = 0;
    *(v36 + v50) = v46;
    *(v36 + v26[9]) = 0;
    *(v36 + v26[10]) = 0;
    v51 = v36 + v26[11];
    *v51 = 0;
    *(v51 + 8) = 1;
    *(v36 + v26[12]) = 0;
    v41 = sub_213F1EB8C(0, 1, 1, MEMORY[0x277D84F90], &qword_27C8FA4C0, &qword_213F5C5B0, type metadata accessor for RichTextViewModel);
    v43 = v41[2];
    v52 = v41[3];
    v44 = v43 + 1;
    v34 = v86;
    if (v43 >= v52 >> 1)
    {
      v41 = sub_213F1EB8C((v52 > 1), v43 + 1, 1, v41, &qword_27C8FA4C0, &qword_213F5C5B0, type metadata accessor for RichTextViewModel);
    }

    v45 = v84;
    goto LABEL_11;
  }

  swift_getKeyPath();
  v99 = v24;
  sub_213F4CB80();

  swift_beginAccess();
  v34 = v86;
  if (*(v24 + 144))
  {

    sub_213F4CA60();
    v35 = v89;
    sub_213F4CA20();
    v36 = v77;
    v37 = v94;
    v90(&v77[v26[5]], v35, v94);
    sub_213F4CB30();
    v88(v35, v37);
    v38 = (v36 + v26[7]);
    v39 = v26[8];
    *(v36 + v26[6]) = 0;
    *v38 = 0;
    v38[1] = 0;
    *(v36 + v39) = 0;
    *(v36 + v26[9]) = 0;
    *(v36 + v26[10]) = 0;
    v40 = v36 + v26[11];
    *v40 = 0;
    *(v40 + 8) = 1;
    *(v36 + v26[12]) = 0;
    v41 = sub_213F1EB8C(0, 1, 1, MEMORY[0x277D84F90], &qword_27C8FA4C0, &qword_213F5C5B0, type metadata accessor for RichTextViewModel);
    v43 = v41[2];
    v42 = v41[3];
    v44 = v43 + 1;
    v45 = v84;
    if (v43 >= v42 >> 1)
    {
      v41 = sub_213F1EB8C((v42 > 1), v43 + 1, 1, v41, &qword_27C8FA4C0, &qword_213F5C5B0, type metadata accessor for RichTextViewModel);
    }

    v34 = v86;
LABEL_11:
    v41[2] = v44;
    sub_213F2004C(v36, v41 + v95 + v43 * v96, type metadata accessor for RichTextViewModel);
    goto LABEL_12;
  }

  v41 = MEMORY[0x277D84F90];
  v45 = v84;
LABEL_12:
  swift_getKeyPath();
  v98 = v24;
  sub_213F4CB80();

  swift_beginAccess();
  if (*(v24 + 160))
  {
    v84 = v25;
    v53 = v34;

    sub_213F4CA60();
    v54 = v89;
    sub_213F4CA20();
    v55 = v80;
    v56 = v94;
    v90(&v80[v26[5]], v54, v94);
    sub_213F4CB30();
    v88(v54, v56);
    v57 = (v55 + v26[7]);
    v58 = v26[8];
    *(v55 + v26[6]) = 0;
    *v57 = 0;
    v57[1] = 0;
    *(v55 + v58) = 0;
    *(v55 + v26[9]) = 0;
    *(v55 + v26[10]) = 0;
    v59 = v55 + v26[11];
    *v59 = 0;
    *(v59 + 8) = 1;
    *(v55 + v26[12]) = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_213F1EB8C(0, v41[2] + 1, 1, v41, &qword_27C8FA4C0, &qword_213F5C5B0, type metadata accessor for RichTextViewModel);
    }

    v61 = v41[2];
    v60 = v41[3];
    v34 = v53;
    if (v61 >= v60 >> 1)
    {
      v41 = sub_213F1EB8C((v60 > 1), v61 + 1, 1, v41, &qword_27C8FA4C0, &qword_213F5C5B0, type metadata accessor for RichTextViewModel);
    }

    v41[2] = v61 + 1;
    sub_213F2004C(v55, v41 + v95 + v61 * v96, type metadata accessor for RichTextViewModel);
  }

  sub_213DBBD08(v34);
  v62 = v81;
  sub_213F4D280();
  v63 = sub_213F4D270();
  v64 = *(v83 + 8);
  v64(v62, v45);
  v64(v34, v45);
  if (v63)
  {
    swift_getKeyPath();
    v97 = v24;
    sub_213F4CB80();

    swift_beginAccess();
    if (*(v24 + 192))
    {

      v65 = sub_213F4E8E0();
      sub_213F4CA60();
      v66 = v89;
      sub_213F4CA20();
      v67 = v87;
      v68 = v78;
      v69 = v94;
      v90(&v78[*(v87 + 20)], v66, v94);
      sub_213F4CB30();
      v88(v66, v69);
      v70 = (v68 + v67[7]);
      v71 = v67[8];
      *(v68 + v67[6]) = 0;
      *v70 = 0;
      v70[1] = 0;
      *(v68 + v71) = v65;
      *(v68 + v67[9]) = 0;
      *(v68 + v67[10]) = 0;
      v72 = v68 + v67[11];
      *v72 = 0;
      *(v72 + 8) = 1;
      *(v68 + v67[12]) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_213F1EB8C(0, v41[2] + 1, 1, v41, &qword_27C8FA4C0, &qword_213F5C5B0, type metadata accessor for RichTextViewModel);
      }

      v74 = v41[2];
      v73 = v41[3];
      if (v74 >= v73 >> 1)
      {
        v41 = sub_213F1EB8C((v73 > 1), v74 + 1, 1, v41, &qword_27C8FA4C0, &qword_213F5C5B0, type metadata accessor for RichTextViewModel);
      }

      v41[2] = v74 + 1;
      sub_213F2004C(v68, v41 + v95 + v74 * v96, type metadata accessor for RichTextViewModel);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC418, &unk_213F63CC8);
  v75 = swift_allocObject();
  *&result = 2;
  *(v75 + 16) = xmmword_213F51DE0;
  *(v75 + 32) = v85;
  *(v75 + 40) = v41;
  return result;
}

uint64_t sub_213F1AEB4()
{
  v22 = sub_213F4CB40();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v1 = &v17 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB630, &qword_213F63CC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v21 = &v17 - v3;
  sub_213F1A134();
  v19 = v5;
  v6 = type metadata accessor for BottomAccessoryViewModel(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  sub_213F4CB30();
  type metadata accessor for ListCellViewModel(0);
  v8 = swift_allocObject();
  v9 = v8 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imageProvider;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  v10 = v8 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imageOverlayProvider;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v18 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imagePlaceholder;
  v11 = (v8 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__title);
  v12 = (v8 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__query);
  v13 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__bottomAccessory;
  v7((v8 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__bottomAccessory), 1, 1, v6);
  sub_213F4CBB0();
  (*(v20 + 32))(v8 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__id, v1, v22);
  sub_213DE36FC(v9, &qword_27C8F7AB8, &qword_213F522C0);
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  sub_213DE36FC(v10, &qword_27C8F7AB8, &qword_213F522C0);
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  v14 = v19;
  *(v8 + v18) = 0;
  *v11 = 0;
  v11[1] = 0;
  *(v8 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__richTextViews) = v14;
  *v12 = 0;
  v12[1] = 0;
  v15 = MEMORY[0x277D84F90];
  *(v8 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__leadingAccessory) = MEMORY[0x277D84F90];
  *(v8 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__trailingAccessory) = v15;
  *(v8 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__contextLineAccessory) = v15;
  sub_213DE36FC(v8 + v13, &qword_27C8FB630, &qword_213F63CC0);
  sub_213DE2B44(v21, v8 + v13, &qword_27C8FB630, &qword_213F63CC0);
  *(v8 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__active) = 1;
  *(v8 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__isSelected) = 0;
  *(v8 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__leadingSwipeActions) = v15;
  *(v8 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__trailingSwipeActions) = v15;
  *(v8 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__menuActions) = v15;
  *(v8 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__allowsFullSwipe) = 1;
  return v8;
}

uint64_t sub_213F1B1EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for SharedTripCell(0);
  v4 = v3 - 8;
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v46 = v5;
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_213F4D290();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3A0, &qword_213F63B98);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v38 - v16);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3A8, &qword_213F63BA0);
  MEMORY[0x28223BE20](v39);
  v19 = &v38 - v18;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3B0, &qword_213F63BA8);
  MEMORY[0x28223BE20](v43);
  v44 = &v38 - v20;
  *v17 = sub_213F4EEE0();
  v17[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3B8, &qword_213F63BB0);
  sub_213F1B7DC(v2, v17 + *(v22 + 44));
  v23 = v2;
  v24 = *(v2 + *(v4 + 36));
  swift_getKeyPath();
  v25 = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *&v50 = v24;
  v40 = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  v41 = v25;
  sub_213F4CB80();

  swift_beginAccess();
  if (*(v24 + 32))
  {
    if (*(v24 + 32) == 1)
    {
      v26 = 0x8000000213FA6150;
      v27 = 0xD000000000000010;
    }

    else
    {
      v26 = 0xE700000000000000;
      v27 = 0x676E6972616853;
    }
  }

  else
  {
    v26 = 0xEA0000000000676ELL;
    v27 = 0x6972616853746F4ELL;
  }

  sub_213DE2B44(v17, v19, &qword_27C8FC3A0, &qword_213F63B98);
  v28 = &v19[*(v39 + 36)];
  *v28 = v27;
  *(v28 + 1) = v26;
  v28[16] = 5;
  sub_213DBBD08(v14);
  sub_213F4D280();
  sub_213F4D270();
  v29 = *(v7 + 8);
  v29(v12, v6);
  v29(v14, v6);
  v30 = v42;
  sub_213DBBD08(v42);
  sub_213F4D280();
  sub_213F4D270();
  v29(v12, v6);
  v29(v30, v6);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v31 = v44;
  sub_213DE2B44(v19, v44, &qword_27C8FC3A8, &qword_213F63BA0);
  v32 = (v31 + *(v43 + 36));
  v33 = v51;
  *v32 = v50;
  v32[1] = v33;
  v32[2] = v52;
  swift_getKeyPath();
  v49 = v24;
  sub_213F4CB80();

  LOBYTE(v49) = *(v24 + 32);
  v34 = v47;
  sub_213F1FF84(v23, v47, type metadata accessor for SharedTripCell);
  v35 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v36 = swift_allocObject();
  sub_213F2004C(v34, v36 + v35, type metadata accessor for SharedTripCell);
  sub_213F1FD7C();
  sub_213F1F42C();
  sub_213F4E810();

  return sub_213DE36FC(v31, &qword_27C8FC3B0, &qword_213F63BA8);
}

uint64_t sub_213F1B7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v3 = sub_213F4D290();
  v133 = *(v3 - 8);
  v134 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v132 = v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v130 = v115 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v123 = (v115 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v131 = v115 - v11;
  MEMORY[0x28223BE20](v10);
  v122 = v115 - v12;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BE8, &unk_213F52220);
  MEMORY[0x28223BE20](v124);
  v127 = v115 - v13;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3E8, &qword_213F63BD0);
  MEMORY[0x28223BE20](v126);
  v129 = v115 - v14;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3F0, &qword_213F63BD8);
  v15 = MEMORY[0x28223BE20](v128);
  v136 = v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v125 = v115 - v18;
  MEMORY[0x28223BE20](v17);
  v135 = v115 - v19;
  v20 = type metadata accessor for MapsDesignImage(0);
  v21 = MEMORY[0x28223BE20](v20);
  v141 = v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v115 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v115 - v26;
  v118 = type metadata accessor for SharedTripCell(0);
  v28 = *(v118 + 28);
  v138 = a1;
  v29 = *(a1 + v28);
  swift_getKeyPath();
  *&v151 = v29;
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  sub_213DEBAA8(v29 + 40, &v27[v20[8]]);
  v30 = sub_213F4EEE0();
  KeyPath = v31;
  v140 = v30;
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v32 = v20[5];
  *&v27[v32] = swift_getKeyPath();
  v115[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v33 = v20[6];
  *&v27[v33] = swift_getKeyPath();
  v115[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v34 = v20[7];
  *&v27[v34] = swift_getKeyPath();
  v115[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v35 = &v27[v20[12]];
  v36 = &v27[v20[13]];
  v37 = &v27[v20[14]];
  v142 = 0uLL;
  *(&v143 + 7) = 0;
  *&v143 = 0;
  sub_213F4EA90();
  v38 = v152;
  v39 = BYTE8(v152);
  v40 = BYTE9(v152);
  v41 = BYTE10(v152);
  v42 = v153;
  *v37 = v151;
  *(v37 + 2) = v38;
  v37[24] = v39;
  v37[25] = v40;
  v37[26] = v41;
  *(v37 + 4) = v42;
  v43 = v20[15];
  *&v142 = 0;
  v115[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v27[v43] = v151;
  v27[v20[9]] = 1;
  v44 = &v27[v20[10]];
  v45 = KeyPath;
  *v44 = v140;
  *(v44 + 1) = v45;
  v46 = v20[11];
  v140 = v27;
  v27[v46] = 1;
  *v35 = 0;
  *(v35 + 1) = 0;
  *v36 = 0;
  *(v36 + 1) = 0;
  swift_getKeyPath();
  *&v151 = v29;
  sub_213F4CB80();

  swift_beginAccess();
  LODWORD(v35) = *(v29 + 32);
  sub_213F4CF60();
  v121 = sub_213F4E8B0();
  KeyPath = swift_getKeyPath();
  sub_213F4F040();
  v119 = v48;
  v120 = v47;
  swift_getKeyPath();
  *&v151 = v29;
  sub_213F4CB80();

  if (v35)
  {
    v49 = 1.0;
  }

  else
  {
    v49 = 0.0;
  }

  v118 = sub_213F4EF70();
  swift_getKeyPath();
  *&v151 = v29;
  sub_213F4CB80();

  v116 = *(v29 + 32);
  v117 = sub_213F4E050();
  sub_213F4CDA0();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v175 = 0;
  swift_getKeyPath();
  *&v151 = v29;
  sub_213F4CB80();

  swift_beginAccess();
  sub_213DEBAA8(v29 + 80, &v25[v20[8]]);
  v58 = sub_213F4EEE0();
  v60 = v59;
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v61 = v20[5];
  *&v25[v61] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v62 = v20[6];
  *&v25[v62] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v63 = v20[7];
  *&v25[v63] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v64 = &v25[v20[12]];
  v65 = &v25[v20[13]];
  v66 = &v25[v20[14]];
  v142 = 0uLL;
  *(&v143 + 7) = 0;
  *&v143 = 0;
  sub_213F4EA90();
  v67 = v152;
  v68 = BYTE8(v152);
  v69 = BYTE9(v152);
  v70 = BYTE10(v152);
  v71 = v153;
  *v66 = v151;
  *(v66 + 2) = v67;
  v66[24] = v68;
  v66[25] = v69;
  v66[26] = v70;
  *(v66 + 4) = v71;
  v72 = v20[15];
  *&v142 = 0;
  sub_213F4EA90();
  *&v25[v72] = v151;
  v25[v20[9]] = 1;
  v73 = &v25[v20[10]];
  *v73 = v58;
  v73[1] = v60;
  v25[v20[11]] = 1;
  *v64 = 0;
  *(v64 + 1) = 0;
  *v65 = 0;
  *(v65 + 1) = 0;
  v74 = v122;
  sub_213DBBD08(v122);
  v75 = v131;
  sub_213F4D280();
  sub_213F4D270();
  v76 = v134;
  v77 = *(v133 + 1);
  v77(v75, v134);
  v77(v74, v76);
  v78 = v123;
  sub_213DBBD08(v123);
  sub_213F4D280();
  sub_213F4D270();
  v77(v75, v76);
  v77(v78, v76);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v123 = type metadata accessor for MapsDesignImage;
  v79 = v127;
  sub_213F1FF84(v25, v127, type metadata accessor for MapsDesignImage);
  v80 = (v79 + *(v124 + 36));
  v81 = v177;
  *v80 = v176;
  v80[1] = v81;
  v80[2] = v178;
  v133 = type metadata accessor for MapsDesignImage;
  sub_213F1FFEC(v25, type metadata accessor for MapsDesignImage);
  v82 = v130;
  sub_213DBBD08(v130);
  sub_213F4D280();
  LOBYTE(v58) = sub_213F4D270();
  v77(v75, v76);
  v77(v82, v76);
  v83 = 11.0;
  if (v58)
  {
    v84 = 11.0;
  }

  else
  {
    v84 = 14.0;
  }

  v85 = v132;
  sub_213DBBD08(v132);
  sub_213F4D280();
  v86 = sub_213F4D270();
  v77(v75, v76);
  v77(v85, v76);
  if ((v86 & 1) == 0)
  {
    v83 = 14.0;
  }

  v87 = v129;
  sub_213DE2B44(v79, v129, &qword_27C8F7BE8, &unk_213F52220);
  v88 = (v87 + *(v126 + 36));
  *v88 = v84;
  v88[1] = v83;
  sub_213F4E8C0();
  v89 = sub_213F4E900();

  v90 = v87;
  v91 = v125;
  sub_213DE2B44(v90, v125, &qword_27C8FC3E8, &qword_213F63BD0);
  v92 = v91 + *(v128 + 36);
  *v92 = v89;
  *(v92 + 8) = xmmword_213F636F0;
  *(v92 + 24) = 0x3FF0000000000000;
  v93 = v91;
  v94 = v135;
  sub_213DE2B44(v93, v135, &qword_27C8FC3F0, &qword_213F63BD8);
  v95 = v141;
  v96 = v123;
  sub_213F1FF84(v140, v141, v123);
  v97 = v136;
  sub_213DE3164(v94, v136, &qword_27C8FC3F0, &qword_213F63BD8);
  v98 = v137;
  sub_213F1FF84(v95, v137, v96);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3F8, &qword_213F63CA0);
  v100 = (v98 + *(v99 + 48));
  *&v142 = 0;
  *(&v142 + 1) = v49;
  v143 = v172;
  v144 = v173;
  *&v145 = v174;
  *(&v145 + 1) = KeyPath;
  v101 = v121;
  *&v146 = v121;
  *(&v146 + 1) = 0x4012D97C7F3321D2;
  v103 = v119;
  v102 = v120;
  *&v147 = v120;
  *(&v147 + 1) = v119;
  v104 = v118;
  *&v148 = v118;
  v105 = v116;
  v106 = v117;
  BYTE8(v148) = v116;
  *(&v148 + 9) = *v171;
  HIDWORD(v148) = *&v171[3];
  LOBYTE(v149) = v117;
  DWORD1(v149) = *&v170[3];
  *(&v149 + 1) = *v170;
  *(&v149 + 1) = v51;
  *&v150[0] = v53;
  *(&v150[0] + 1) = v55;
  *&v150[1] = v57;
  BYTE8(v150[1]) = 0;
  v107 = v145;
  v100[2] = v173;
  v100[3] = v107;
  v108 = v143;
  *v100 = v142;
  v100[1] = v108;
  v109 = v147;
  v100[4] = v146;
  v100[5] = v109;
  v110 = v148;
  v111 = v149;
  v112 = v150[0];
  *(v100 + 137) = *(v150 + 9);
  v100[7] = v111;
  v100[8] = v112;
  v100[6] = v110;
  sub_213DE3164(v97, v98 + *(v99 + 64), &qword_27C8FC3F0, &qword_213F63BD8);
  sub_213DE3164(&v142, &v151, &qword_27C8FC400, &qword_213F63CA8);
  sub_213DE36FC(v94, &qword_27C8FC3F0, &qword_213F63BD8);
  v113 = v133;
  sub_213F1FFEC(v140, v133);
  sub_213DE36FC(v97, &qword_27C8FC3F0, &qword_213F63BD8);
  *&v151 = 0;
  *(&v151 + 1) = v49;
  v152 = v172;
  v153 = v173;
  v154 = v174;
  v155 = KeyPath;
  v156 = v101;
  v157 = 0x4012D97C7F3321D2;
  v158 = v102;
  v159 = v103;
  v160 = v104;
  v161 = v105;
  *&v162[3] = *&v171[3];
  *v162 = *v171;
  v163 = v106;
  *&v164[3] = *&v170[3];
  *v164 = *v170;
  v165 = v51;
  v166 = v53;
  v167 = v55;
  v168 = v57;
  v169 = 0;
  sub_213DE36FC(&v151, &qword_27C8FC400, &qword_213F63CA8);
  return sub_213F1FFEC(v141, v113);
}

void sub_213F1C538(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_213F4F0F0();
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v28 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v29 = v27 - v8;
  v9 = sub_213F4F0B0();
  MEMORY[0x28223BE20](v9);
  v27[1] = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SharedTripCell(0);
  v27[0] = *(v11 - 8);
  v12 = *(v27[0] + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = *a2;
  v27[2] = v13;
  v15 = (a3 + *(v13 + 32));
  v17 = *v15;
  v16 = v15[1];
  aBlock = *v15;
  v33 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3D8, &qword_213F63BB8);
  sub_213F4EAA0();
  if (v38)
  {
    sub_213F4F110();
    aBlock = v17;
    v33 = v16;
    v38 = 0;

    sub_213F4EAB0();
  }

  if (v14 == 1)
  {
    sub_213F1FF84(a3, v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedTripCell);
    v18 = (*(v27[0] + 80) + 16) & ~*(v27[0] + 80);
    v19 = swift_allocObject();
    sub_213F2004C(v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for SharedTripCell);
    v36 = sub_213F1FEC0;
    v37 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_213F1CB04;
    v35 = &block_descriptor_1;
    _Block_copy(&aBlock);
    v38 = MEMORY[0x277D84F90];
    sub_213F1FCB4(&qword_281182548, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3E0, &unk_213F63BC0);
    sub_213DE3AE4(&qword_2811824A0, &qword_27C8FC3E0, &unk_213F63BC0, MEMORY[0x277D83970]);
    sub_213F4F6F0();
    sub_213F4F120();
    swift_allocObject();
    v20 = sub_213F4F100();

    aBlock = v17;
    v33 = v16;
    v38 = v20;

    sub_213F4EAB0();
    sub_213F1FF38();
    v21 = sub_213F4F580();
    v22 = v28;
    sub_213F4F0E0();
    v23 = v29;
    sub_213F4F130();
    v24 = *(v30 + 8);
    v25 = v22;
    v26 = v31;
    v24(v25, v31);
    sub_213F4F560();

    v24(v23, v26);
  }
}

double sub_213F1C9D4(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for SharedTripCell(0) + 28));
  swift_beginAccess();
  if (*(v1 + 32) != 2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
    sub_213F4CB70();
  }

  return result;
}

double sub_213F1CB04(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

double sub_213F1CB48@<D0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v62 = sub_213F4D7F0();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_213F4CEA0();
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v61 = &v59 - v7;
  MEMORY[0x28223BE20](v6);
  v69 = &v59 - v8;
  v66 = type metadata accessor for SharedTripCell(0);
  v9 = *(v66 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v66);
  v65 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v59 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC360, &qword_213F63AB0);
  v18 = (v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v59 - v19);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC368, &qword_213F63AB8);
  MEMORY[0x28223BE20](v67);
  v68 = &v59 - v21;
  sub_213F1FF84(v1, v16, type metadata accessor for SharedTripCell);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v64 = swift_allocObject();
  sub_213F2004C(v16, v64 + v22, type metadata accessor for SharedTripCell);
  sub_213F1FF84(v1, v14, type metadata accessor for SharedTripCell);
  v23 = swift_allocObject();
  sub_213F2004C(v14, v23 + v22, type metadata accessor for SharedTripCell);
  v24 = v65;
  sub_213F1FF84(v1, v65, type metadata accessor for SharedTripCell);
  v25 = swift_allocObject();
  v26 = v25 + v22;
  v27 = v1;
  v28 = v24;
  v29 = v66;
  sub_213F2004C(v28, v26, type metadata accessor for SharedTripCell);
  *v20 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v30 = v20 + v18[31];
  type metadata accessor for CGSize(0);
  v73 = 0;
  v74 = 0;
  sub_213F4EA90();
  v31 = v76;
  *v30 = v75;
  *(v30 + 2) = v31;
  *(v20 + v18[23]) = 1;
  *(v20 + v18[24]) = 0;
  *(v20 + v18[25]) = 0;
  *(v20 + v18[26]) = 1;
  v32 = (v20 + v18[27]);
  v33 = v64;
  *v32 = sub_213F1FBE8;
  v32[1] = v33;
  v34 = (v20 + v18[28]);
  *v34 = sub_213F1FC00;
  v34[1] = v23;
  v35 = (v20 + v18[29]);
  *v35 = sub_213F1FC9C;
  v35[1] = v25;
  v36 = (v20 + v18[30]);
  *v36 = nullsub_1;
  v36[1] = 0;
  v37 = v27 + *(v29 + 24);
  v38 = *v37;
  if (*(v37 + 8) == 1)
  {
    if ((v38 & 1) == 0)
    {
LABEL_3:
      v39 = v69;
      sub_213EA8894(v69);
      v41 = v70;
      v40 = v71;
      goto LABEL_9;
    }
  }

  else
  {

    sub_213F4F520();
    v42 = sub_213F4E000();
    sub_213F4CC10();

    v43 = v59;
    sub_213F4D7E0();
    swift_getAtKeyPath();
    v44 = sub_213E053BC(v38, 0);
    (*(v60 + 8))(v43, v62, v44);
    if (v75 != 1)
    {
      goto LABEL_3;
    }
  }

  v45 = v61;
  sub_213EA8894(v61);
  v41 = v70;
  v40 = v71;
  v46 = *(v70 + 104);
  v47 = v63;
  LODWORD(v66) = *MEMORY[0x277CDF3C0];
  v46(v63);
  v48 = sub_213F4CE90();
  v49 = *(v41 + 8);
  v49(v47, v40);
  v49(v45, v40);
  if (v48)
  {
    v50 = *MEMORY[0x277CDF3D0];
    v39 = v69;
    v51 = v69;
  }

  else
  {
    v39 = v69;
    v51 = v69;
    v50 = v66;
  }

  (v46)(v51, v50, v40);
LABEL_9:
  KeyPath = swift_getKeyPath();
  v53 = v68;
  v54 = &v68[*(v67 + 36)];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B38, &qword_213F60B00);
  (*(v41 + 32))(v54 + *(v55 + 28), v39, v40);
  *v54 = KeyPath;
  sub_213DE2B44(v20, v53, &qword_27C8FC360, &qword_213F63AB0);
  v56 = v72;
  sub_213DE2B44(v53, v72, &qword_27C8FC368, &qword_213F63AB8);
  v57 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC370, &qword_213F63B30) + 36);
  result = 5.43901214e242;
  *v57 = xmmword_213F62470;
  *(v57 + 16) = 2;
  return result;
}

uint64_t sub_213F1D268@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_213F1AEB4();
  v5 = type metadata accessor for MultiTextView(0);
  v6 = (a2 + v5[6]);
  v6[3] = type metadata accessor for ListCellViewModel(0);
  v6[4] = sub_213F1FCB4(&qword_27C8FC408, type metadata accessor for ListCellViewModel, &protocol conformance descriptor for ListCellViewModel);
  *v6 = v4;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v7 = v5[5];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  *(a2 + v5[7]) = 3;
  *(a2 + v5[8]) = 1;
  LOBYTE(v5) = sub_213F4E0A0();
  sub_213F19EAC();
  sub_213F4CDA0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB730, &qword_213F63CB0) + 36);
  *v16 = v5;
  *(v16 + 1) = v9;
  *(v16 + 2) = v11;
  *(v16 + 3) = v13;
  *(v16 + 4) = v15;
  v16[40] = 0;
  v17 = *(a1 + *(type metadata accessor for SharedTripCell(0) + 28));
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  LOBYTE(a1) = *(v17 + 32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC410, &qword_213F63CB8);
  v19 = a2 + *(result + 36);
  *v19 = 0;
  v19[8] = a1;
  return result;
}

uint64_t sub_213F1D4A0@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_213F4D290();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v42 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC388, &qword_213F63B78);
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC390, &unk_213F63B80);
  MEMORY[0x28223BE20](v43);
  v14 = &v42 - v13;
  v44 = v12;
  sub_213F1B1EC(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BA0, &qword_213F5EAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;
  v16 = sub_213F4E080();
  *(inited + 32) = v16;
  v17 = sub_213F4E0B0();
  *(inited + 33) = v17;
  v18 = sub_213F4E090();
  sub_213F4E090();
  if (sub_213F4E090() != v16)
  {
    v18 = sub_213F4E090();
  }

  sub_213F4E090();
  if (sub_213F4E090() != v17)
  {
    v18 = sub_213F4E090();
  }

  sub_213DBBD08(v9);
  sub_213F4D280();
  sub_213F4D270();
  v19 = *(v2 + 8);
  v19(v7, v1);
  v19(v9, v1);
  sub_213F4CDA0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v45 + 32))(v14, v44, v46);
  v28 = &v14[*(v43 + 36)];
  *v28 = v18;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = sub_213F4E0A0();
  v30 = v47;
  sub_213DBBD08(v47);
  sub_213F4D280();
  sub_213F4D270();
  v19(v7, v1);
  v19(v30, v1);
  sub_213F4CDA0();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v48;
  sub_213DE2B44(v14, v48, &qword_27C8FC390, &unk_213F63B80);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC398, &qword_213F63B90);
  v41 = v39 + *(result + 36);
  *v41 = v29;
  *(v41 + 8) = v32;
  *(v41 + 16) = v34;
  *(v41 + 24) = v36;
  *(v41 + 32) = v38;
  *(v41 + 40) = 0;
  return result;
}

uint64_t sub_213F1D8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9228, &unk_213F5A640);
  v3 = MEMORY[0x28223BE20](v63);
  v61 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v60 = &v58 - v5;
  v6 = sub_213F4D390();
  v68 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v69 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = &v58 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9230, &qword_213F57250);
  MEMORY[0x28223BE20](v67);
  v59 = &v58 - v11;
  v70 = type metadata accessor for TrailingAccessory(0);
  MEMORY[0x28223BE20](v70);
  v13 = (&v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC378, &qword_213F63B38);
  v65 = *(v14 - 8);
  v66 = v14;
  MEMORY[0x28223BE20](v14);
  v64 = &v58 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC380, &qword_213F63B40);
  v71 = *(v16 - 8);
  v72 = v16;
  MEMORY[0x28223BE20](v16);
  v62 = &v58 - v17;
  v18 = sub_213F4D290();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v58 - v23;
  sub_213DBBD08(&v58 - v23);
  sub_213F4D280();
  sub_213F1FCB4(&qword_2811834A8, MEMORY[0x277CDF7E8], MEMORY[0x277CDF7F0]);
  v25 = sub_213F4F1F0();
  v26 = *(v19 + 8);
  v26(v22, v18);
  v26(v24, v18);
  if ((v25 & 1) != 0 || (v27 = *(a1 + *(type metadata accessor for SharedTripCell(0) + 28)), swift_getKeyPath(), v74 = v27, sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel), sub_213F4CB80(), , swift_beginAccess(), (v28 = *(v27 + 192)) == 0))
  {
    v57 = 1;
    v56 = v73;
    return (*(v71 + 56))(v56, v57, 1, v72);
  }

  v29 = *(v27 + 184);
  v30 = v70;
  v31 = v13 + *(v70 + 24);

  sub_213F4CB30();
  v32 = &v31[*(type metadata accessor for TrailingAccessoryViewModel(0) + 20)];
  *v32 = v29;
  *(v32 + 1) = v28;
  *(v32 + 3) = 0;
  *(v32 + 4) = 0;
  *(v32 + 2) = 0;
  v32[40] = 5;
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v33 = *(v30 + 20);
  *(v13 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v34 = v68;
  v35 = *(v68 + 104);
  v36 = v10;
  v35(v10, *MEMORY[0x277CDF9E8], v6);
  v37 = v69;
  v35(v69, *MEMORY[0x277CDF998], v6);
  sub_213F1FCB4(&qword_281183490, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  result = sub_213F4F1E0();
  if (result)
  {
    v39 = *(v34 + 32);
    v40 = v60;
    v39(v60, v36, v6);
    v41 = v63;
    v39((v40 + *(v63 + 48)), v37, v6);
    v42 = v61;
    sub_213DE3164(v40, v61, &qword_27C8F9228, &unk_213F5A640);
    v69 = v13;
    v43 = *(v41 + 48);
    v44 = v59;
    v39(v59, v42, v6);
    v45 = *(v34 + 8);
    v45(v42 + v43, v6);
    sub_213DE2B44(v40, v42, &qword_27C8F9228, &unk_213F5A640);
    v46 = *(v41 + 48);
    v47 = v67;
    v39((v44 + *(v67 + 36)), (v42 + v46), v6);
    v45(v42, v6);
    v48 = sub_213F1FCB4(&qword_281185C30, type metadata accessor for TrailingAccessory, &unk_213F61654);
    v49 = sub_213DE3AE4(&qword_281182520, &qword_27C8F9230, &qword_213F57250, MEMORY[0x277D83660]);
    v50 = v64;
    v51 = v69;
    v52 = v70;
    sub_213F4E570();
    sub_213DE36FC(v44, &qword_27C8F9230, &qword_213F57250);
    sub_213F1FFEC(v51, type metadata accessor for TrailingAccessory);
    v74 = 0x4154456572616853;
    v75 = 0xE800000000000000;
    MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);
    v74 = v52;
    v75 = v47;
    v76 = v48;
    v77 = v49;
    swift_getOpaqueTypeConformance2();
    v53 = v62;
    v54 = v66;
    sub_213F4E6D0();

    (*(v65 + 8))(v50, v54);
    v55 = v73;
    sub_213DE2B44(v53, v73, &qword_27C8FC380, &qword_213F63B40);
    v56 = v55;
    v57 = 0;
    return (*(v71 + 56))(v56, v57, 1, v72);
  }

  __break(1u);
  return result;
}

char *sub_213F1E18C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B60, &qword_213F59FE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_213F1E2B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC420, &qword_213F63CD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC428, &qword_213F63CE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_213F1E3F8(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC450, &unk_213F63CF0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA468, &qword_213F5C550) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA468, &qword_213F5C550) - 8);
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

char *sub_213F1E5E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC448, &qword_213F63CE8);
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

void *sub_213F1E6EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC458, &qword_213F63D00);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA358, &qword_213F5C108);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_213F1E820(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF78, &qword_213F5E2B8);
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

char *sub_213F1E924(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF80, &unk_213F5E2C0);
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

char *sub_213F1EA30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC460, &qword_213F63D08);
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

void *sub_213F1EB8C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_213F1ED68(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v44 = a8;
  v42 = a7;
  v39 = a6;
  v36 = a4;
  v37 = a5;
  v35 = a1;
  v43 = a11;
  v38 = a9;
  v40 = a10;
  v41 = a12;
  v19 = sub_213F4CB40();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[3] = a14;
  v46[4] = a16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  (*(*(a14 - 8) + 32))(boxed_opaque_existential_1, a2, a14);
  v45[3] = a15;
  v45[4] = a17;
  v24 = __swift_allocate_boxed_opaque_existential_1(v45);
  (*(*(a15 - 8) + 32))(v24, a3, a15);
  v25 = *v35;
  sub_213F4CB30();
  v26 = sub_213F4CB10();
  v28 = v27;
  (*(v20 + 8))(v22, v19);
  *(a13 + 16) = v26;
  *(a13 + 24) = v28;
  *(a13 + 136) = 0u;
  *(a13 + 152) = 0u;
  *(a13 + 184) = 0;
  *(a13 + 192) = 0;
  sub_213F4CBB0();
  *(a13 + 32) = v25;
  sub_213DEBAA8(v46, a13 + 40);
  sub_213DEBAA8(v45, a13 + 80);
  v29 = v37;
  *(a13 + 120) = v36;
  *(a13 + 128) = v29;

  v30 = v42;
  *(a13 + 136) = v39;
  *(a13 + 144) = v30;

  v31 = v43;
  *(a13 + 152) = v44;
  *(a13 + 160) = v38;
  v32 = v41;
  *(a13 + 176) = v40;
  sub_213F197DC(v31, v32);
  __swift_destroy_boxed_opaque_existential_1(v45);
  __swift_destroy_boxed_opaque_existential_1(v46);
  return a13;
}

uint64_t _s10MapsDesign23SharedTripCellViewModelC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel, &protocol conformance descriptor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getKeyPath();

  sub_213F4CB80();

  swift_beginAccess();
  if (__PAIR128__(v4, v5) == *(a2 + 16))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_213F4F830();
  }

  return v6 & 1;
}

uint64_t sub_213F1F104(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v34 = a7;
  v35 = a8;
  v32 = a5;
  v33 = a6;
  v30 = a1;
  v31 = a4;
  v28 = a10;
  v29 = a9;
  v26 = a3;
  v27 = a11;
  v17 = *(a14 - 8);
  v18 = MEMORY[0x28223BE20](a1);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a13 - 8);
  MEMORY[0x28223BE20](v18);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SharedTripCellViewModel(0);
  v24 = swift_allocObject();
  (*(v21 + 16))(v23, a2, a13);
  (*(v17 + 16))(v20, v26, a14);
  return sub_213F1ED68(v30, v23, v20, v31, v32, v33, v34, v35, v29, v28, *(&v28 + 1), v27, v24, a13, a14, a15, a16);
}

void sub_213F1F2FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 32) = v2;
}

unint64_t sub_213F1F42C()
{
  result = qword_27C8FC358;
  if (!qword_27C8FC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC358);
  }

  return result;
}

uint64_t sub_213F1F488(uint64_t a1)
{
  result = sub_213F4CBC0();
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

void sub_213F1FA5C(uint64_t a1)
{
  sub_213E61E68(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v1 <= 0x3F)
  {
    sub_213E61E68(319, &qword_281183528, MEMORY[0x277CDF3E0]);
    if (v2 <= 0x3F)
    {
      sub_213ECD90C();
      if (v3 <= 0x3F)
      {
        type metadata accessor for SharedTripCellViewModel(319);
        if (v4 <= 0x3F)
        {
          sub_213F1FB68(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213F1FB68(uint64_t a1)
{
  if (!qword_2811827C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC040, &qword_213F62678);
    v1 = sub_213F4EAD0();
    if (!v2)
    {
      atomic_store(v1, &qword_2811827C8);
    }
  }
}

uint64_t sub_213F1FC18(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SharedTripCell(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_213F1FCB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_213F1FCFC(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for SharedTripCell(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_213F1C538(a1, a2, v6);
}

unint64_t sub_213F1FD7C()
{
  result = qword_27C8FC3C0;
  if (!qword_27C8FC3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC3B0, &qword_213F63BA8);
    sub_213F1FE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC3C0);
  }

  return result;
}

unint64_t sub_213F1FE08()
{
  result = qword_27C8FC3C8;
  if (!qword_27C8FC3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC3A8, &qword_213F63BA0);
    sub_213DE3AE4(&qword_27C8FC3D0, &qword_27C8FC3A0, &qword_213F63B98, MEMORY[0x277CE11A8]);
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC3C8);
  }

  return result;
}

double sub_213F1FEC0()
{
  v1 = *(type metadata accessor for SharedTripCell(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_213F1C9D4(v2);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_213F1FF38()
{
  result = qword_2811823E8;
  if (!qword_2811823E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811823E8);
  }

  return result;
}

uint64_t sub_213F1FF84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213F1FFEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213F2004C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_213F200B4()
{
  result = qword_27C8FC430;
  if (!qword_27C8FC430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC370, &qword_213F63B30);
    sub_213F20140();
    sub_213DD9738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC430);
  }

  return result;
}

unint64_t sub_213F20140()
{
  result = qword_27C8FC438;
  if (!qword_27C8FC438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC368, &qword_213F63AB8);
    sub_213DE3AE4(&qword_27C8FC440, &qword_27C8FC360, &qword_213F63AB0, &unk_213F5E330);
    sub_213DE3AE4(&qword_281182898, &qword_27C8F9B38, &qword_213F60B00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC438);
  }

  return result;
}

void *sub_213F2026C@<X0>(_BYTE *a1@<X8>)
{
  sub_213DE3F00();
  result = sub_213F4D820();
  *a1 = v3;
  return result;
}

__n128 RoutePlanningCellViewModel.init(routeIdentifier:primaryText:secondaryText:tertiaryText:primaryActionStyle:isHighlighted:showPreviewRouteButton:advisories:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a3;
  v15 = a3[1];
  v16 = *a4;
  v17 = a4[1];
  v18 = *a5;
  v19 = sub_213F4CB40();
  v24 = *a2;
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for RoutePlanningCellViewModel(0);
  result = v24;
  *(a9 + v20[5]) = v24;
  v22 = (a9 + v20[6]);
  *v22 = v14;
  v22[1] = v15;
  v23 = (a9 + v20[7]);
  *v23 = v16;
  v23[1] = v17;
  *(a9 + v20[8]) = v18;
  *(a9 + v20[9]) = a6;
  *(a9 + v20[10]) = a7;
  *(a9 + v20[11]) = a8;
  return result;
}

uint64_t RoutePlanningCell.init(viewModel:isCarPlay:useCompactLayout:accessoryView:accessoryViewUnavailableWidth:tapHandler:primaryActionTapHandler:previewRouteButtonTapHandler:advisoryTapHandler:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v25 = type metadata accessor for RoutePlanningCell(0, a18, a19, v24);
  v26 = v25[9];
  *(a9 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v27 = a9 + v25[10];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = a9 + v25[19];
  type metadata accessor for RoutePlanningCell.NestedFocusState(0, a18, a19, v29);
  swift_getWitnessTable();
  sub_213F4CE00();
  *v28 = v44;
  *(v28 + 1) = v45;
  v28[16] = v46;
  sub_213F20704(a1, a9 + v25[11]);
  *(a9 + v25[12]) = a2;
  *(a9 + v25[13]) = a3;
  v30 = swift_allocObject();
  *(v30 + 2) = a18;
  *(v30 + 3) = a19;
  *(v30 + 4) = a4;
  *(v30 + 5) = a5;
  v31 = (a9 + v25[14]);
  *v31 = sub_213F2835C;
  v31[1] = v30;
  if (a7)
  {
    result = sub_213F3C414(a1, type metadata accessor for RoutePlanningCellViewModel);
    v34 = a6;
    v33 = a8;
  }

  else
  {
    sub_213F4EC70();
    result = sub_213F3C414(a1, type metadata accessor for RoutePlanningCellViewModel);
    v34 = v44;
    a7 = v45;
    v33 = v46;
  }

  v35 = (a9 + v25[20]);
  *v35 = v34;
  v35[1] = a7;
  v35[2] = v33;
  v36 = (a9 + v25[15]);
  *v36 = a10;
  v36[1] = a11;
  v37 = (a9 + v25[16]);
  *v37 = a12;
  v37[1] = a13;
  v38 = (a9 + v25[17]);
  *v38 = a14;
  v38[1] = a15;
  v39 = (a9 + v25[18]);
  *v39 = a16;
  v39[1] = a17;
  return result;
}

uint64_t sub_213F20704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutePlanningCellViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213F20768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v37 = a3;
  swift_getWitnessTable();
  sub_213F4DD50();
  v5 = sub_213F4D400();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = *(a2 + 24);
  v30 = *(a2 + 16);
  v31 = v8;
  v32 = sub_213F4DD30();
  v9 = sub_213F4D400();
  v35 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = sub_213F4D400();
  v36 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v28 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v29 = &v26 - v15;
  v26 = v3;
  v27 = *v3;
  WitnessTable = swift_getWitnessTable();
  sub_213F4E7D0();
  v17 = MEMORY[0x277CDF918];
  v42 = WitnessTable;
  v43 = MEMORY[0x277CDF918];
  v18 = swift_getWitnessTable();
  sub_213F4E460();
  (*(v34 + 8))(v7, v5);
  v19 = swift_getWitnessTable();
  v40 = v18;
  v41 = v19;
  v20 = swift_getWitnessTable();
  v21 = v28;
  sub_213F4E7D0();
  (*(v35 + 8))(v11, v9);
  v38 = v20;
  v39 = v17;
  v22 = swift_getWitnessTable();
  v23 = v29;
  sub_213DBFEEC(v21, v12, v22);
  v24 = *(v36 + 8);
  v24(v21, v12);
  sub_213DBFEEC(v23, v12, v22);
  return (v24)(v23, v12);
}