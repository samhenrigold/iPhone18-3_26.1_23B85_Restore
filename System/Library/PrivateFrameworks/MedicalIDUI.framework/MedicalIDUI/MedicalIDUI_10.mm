unint64_t sub_2588A03D0()
{
  result = qword_27F9613B8;
  if (!qword_27F9613B8)
  {
    sub_25889F07C(255, &qword_27F960120, type metadata accessor for MedicalIDPregnancyStatusLabelView, MEMORY[0x277D83D88]);
    sub_2588A0C60(&qword_27F9613C0, type metadata accessor for MedicalIDPregnancyStatusLabelView, &unk_2588C0024);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9613B8);
  }

  return result;
}

double sub_2588A04C0@<D0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  type metadata accessor for SharedPregnancyEditView(0, v4, v5, a1);

  return sub_2588A0018(v4, v5, v6, a2);
}

uint64_t sub_2588A0564(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SharedPregnancyEditView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t objectdestroyTm_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *(v4 + 16);
  v31 = type metadata accessor for SharedPregnancyEditView(0, v30, *(v4 + 24), a4);
  v32 = *(*(v31 - 8) + 80);
  v5 = v4 + ((v32 + 32) & ~v32);

  v6 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v7 = v5 + v6[5];

  v8 = type metadata accessor for MedicalIDData(0);
  v9 = v8[13];
  v10 = sub_2588BB9B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v7 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v13 = v8[14];
  if (!v12(v7 + v13, 1, v10))
  {
    (*(v11 + 8))(v7 + v13, v10);
  }

  v29 = v11;

  v14 = (v7 + v8[18]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_2587C2610(*v14, v15);
  }

  v16 = v8[19];
  v17 = sub_2588BB818();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v7 + v16, 1, v17))
  {
    (*(v18 + 8))(v7 + v16, v17);
  }

  v19 = v8[21];
  if (!v12(v7 + v19, 1, v10))
  {
    (*(v29 + 8))(v7 + v19, v10);
  }

  v20 = v6[6];
  v21 = sub_2588BBB48();
  (*(*(v21 - 8) + 8))(v5 + v20, v21);
  v22 = v6[7];
  v23 = sub_2588BBAC8();
  (*(*(v23 - 8) + 8))(v5 + v22, v23);

  v24 = v6[9];
  if (!v12(v5 + v24, 1, v10))
  {
    (*(v29 + 8))(v5 + v24, v10);
  }

  (*(*(v30 - 8) + 8))(v5 + *(v31 + 36));

  v25 = v5 + *(v31 + 48);

  sub_25889F07C(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  v27 = *(v26 + 32);
  if (!v12(v25 + v27, 1, v10))
  {
    (*(v29 + 8))(v25 + v27, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_2588A0B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2588A0B80()
{
  result = qword_27F9613C8;
  if (!qword_27F9613C8)
  {
    sub_2588A0310(255);
    sub_2588A0C60(&qword_27F9605C0, sub_2588A0378, MEMORY[0x277CDF068]);
    sub_2588A0C60(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9613C8);
  }

  return result;
}

uint64_t sub_2588A0C60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2588A0CA8(uint64_t a1)
{
  sub_2588A0310(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s15SectionGridItemVMa(uint64_t a1)
{
  result = qword_27F9613D0;
  if (!qword_27F9613D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588A0D78(uint64_t a1)
{
  type metadata accessor for MedicalIDDataViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MedicalIDModelProvider();
    if (v2 <= 0x3F)
    {
      sub_25878E130(319, &qword_27F95D3C0, off_2798A65E8);
      if (v3 <= 0x3F)
      {
        sub_2588A3D54(319, &qword_27F9613E0, sub_2588A0E74, MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2588A0E74()
{
  if (!qword_27F95DB08)
  {
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DB08);
    }
  }
}

void sub_2588A0EE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_2588A0F58@<X0>(void *a1@<X8>)
{
  v165 = a1;
  v146 = type metadata accessor for MedicalIDMedicalNotesCellView(0);
  MEMORY[0x28223BE20](v146);
  v132 = &v125 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x277CE0330];
  sub_2588A560C(0, &qword_27F9613E8, type metadata accessor for MedicalIDMedicalConditionsCellView, type metadata accessor for MedicalIDMedicalNotesCellView, MEMORY[0x277CE0330]);
  v140 = v4;
  MEMORY[0x28223BE20](v4);
  v144 = &v125 - v5;
  sub_2588A3618(0);
  v158 = v6;
  MEMORY[0x28223BE20](v6);
  v147 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for MedicalIDMedicalConditionsCellView(0);
  MEMORY[0x28223BE20](v142);
  v130 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for MedicalIDBiometricsCell(0);
  MEMORY[0x28223BE20](v149);
  v131 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A560C(0, &qword_27F9613F8, sub_2588A3660, sub_2588A3618, v3);
  v155 = v10;
  MEMORY[0x28223BE20](v10);
  v157 = &v125 - v11;
  sub_2588A560C(0, &qword_27F961408, type metadata accessor for MedicalIDEmergencyContactsCellView, type metadata accessor for MedicalIDBiometricsCell, v3);
  v143 = v12;
  MEMORY[0x28223BE20](v12);
  v145 = &v125 - v13;
  sub_2588A3660(0);
  v156 = v14;
  MEMORY[0x28223BE20](v14);
  v148 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A36A8(0);
  v164 = v16;
  MEMORY[0x28223BE20](v16);
  v159 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MedicalIDData(0);
  MEMORY[0x28223BE20](v18 - 8);
  v127 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587B63B8(0);
  MEMORY[0x28223BE20](v20 - 8);
  v125 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for MedicalIDEmergencyContactsCellView(0);
  MEMORY[0x28223BE20](v141);
  v129 = (&v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v138 = type metadata accessor for MedicalIDAllergiesCellView(0);
  MEMORY[0x28223BE20](v138);
  v128 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A560C(0, &qword_27F961418, type metadata accessor for MedicalIDMedicationsCellView, type metadata accessor for MedicalIDAllergiesCellView, v3);
  v133 = v24;
  MEMORY[0x28223BE20](v24);
  v136 = &v125 - v25;
  sub_2588A36F0(0);
  v153 = v26;
  MEMORY[0x28223BE20](v26);
  v139 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for MedicalIDMedicationsCellView(0);
  MEMORY[0x28223BE20](v135);
  v126 = &v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for MedicalIDPregnancyCellView(0);
  MEMORY[0x28223BE20](v137);
  v30 = (&v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2588A560C(0, &qword_27F961428, sub_2588A3738, sub_2588A36A8, v3);
  v161 = v31;
  MEMORY[0x28223BE20](v31);
  v163 = &v125 - v32;
  sub_2588A560C(0, &qword_27F961440, sub_2588A3780, sub_2588A36F0, v3);
  v150 = v33;
  MEMORY[0x28223BE20](v33);
  v152 = &v125 - v34;
  sub_2588A560C(0, &qword_27F961448, type metadata accessor for MedicalIDPersonalInformationCellView, type metadata accessor for MedicalIDPregnancyCellView, v3);
  MEMORY[0x28223BE20](v35);
  v37 = &v125 - v36;
  sub_2588A3780(0);
  v151 = v38;
  MEMORY[0x28223BE20](v38);
  v134 = &v125 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A3738(0);
  v162 = v40;
  MEMORY[0x28223BE20](v40);
  v154 = &v125 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = _s15SectionGridItemVMa(0);
  v160 = *(v42 - 8);
  v43 = *(v160 + 64);
  MEMORY[0x28223BE20](v42);
  v44 = &v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for MedicalIDPersonalInformationCellView(0);
  MEMORY[0x28223BE20](v45);
  v47 = &v125 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v1 + *(v42 + 24));
  if (v48 > 3)
  {
    if (*(v1 + *(v42 + 24)) > 5u)
    {
      if (v48 == 6)
      {
        v86 = type metadata accessor for MedicalIDDataViewModel(0);
        v79 = v130;
        sub_2588A4928(v1 + *(v86 + 44), v130, type metadata accessor for MedicalIDMedicalInfoViewModel);
        sub_2588A4928(v1, &v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), _s15SectionGridItemVMa);
        v87 = (*(v160 + 80) + 16) & ~*(v160 + 80);
        v88 = swift_allocObject();
        sub_2587C4DF4(&v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v88 + v87);
        v89 = (v79 + *(v142 + 20));
        *v89 = sub_2588A3C38;
        v89[1] = v88;
        sub_2588A4928(v79, v144, type metadata accessor for MedicalIDMedicalConditionsCellView);
        swift_storeEnumTagMultiPayload();
        sub_2588A37E0(&qword_27F961450, type metadata accessor for MedicalIDMedicalConditionsCellView, &unk_2588C6234);
        sub_2588A37E0(&qword_27F961458, type metadata accessor for MedicalIDMedicalNotesCellView, &unk_2588C7390);
        v90 = v147;
        sub_2588BC778();
        sub_2588A4928(v90, v157, sub_2588A3618);
        swift_storeEnumTagMultiPayload();
        sub_2588A3828();
        sub_2588A3908();
        v91 = v159;
        sub_2588BC778();
        sub_2588A49BC(v90, sub_2588A3618);
        sub_2588A4928(v91, v163, sub_2588A36A8);
        swift_storeEnumTagMultiPayload();
        sub_2588A39E8();
        sub_2588A3BF0();
        sub_2588BC778();
        sub_2588A49BC(v91, sub_2588A36A8);
        v85 = type metadata accessor for MedicalIDMedicalConditionsCellView;
      }

      else
      {
        v115 = type metadata accessor for MedicalIDDataViewModel(0);
        v79 = v132;
        sub_2588A4928(v1 + *(v115 + 44), v132, type metadata accessor for MedicalIDMedicalInfoViewModel);
        sub_2588A4928(v1, &v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), _s15SectionGridItemVMa);
        v116 = (*(v160 + 80) + 16) & ~*(v160 + 80);
        v117 = swift_allocObject();
        sub_2587C4DF4(&v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v117 + v116);
        v118 = v146;
        v119 = (v79 + *(v146 + 20));
        *v119 = sub_2588A37C8;
        v119[1] = v117;
        v120 = (v79 + *(v118 + 24));
        LOBYTE(v169) = 7;
        *v120 = MedicalIDDisplaySection.baseIdentifier.getter();
        v120[1] = v121;
        sub_2588A4928(v79, v144, type metadata accessor for MedicalIDMedicalNotesCellView);
        swift_storeEnumTagMultiPayload();
        sub_2588A37E0(&qword_27F961450, type metadata accessor for MedicalIDMedicalConditionsCellView, &unk_2588C6234);
        sub_2588A37E0(&qword_27F961458, type metadata accessor for MedicalIDMedicalNotesCellView, &unk_2588C7390);
        v122 = v147;
        sub_2588BC778();
        sub_2588A4928(v122, v157, sub_2588A3618);
        swift_storeEnumTagMultiPayload();
        sub_2588A3828();
        sub_2588A3908();
        v123 = v159;
        sub_2588BC778();
        sub_2588A49BC(v122, sub_2588A3618);
        sub_2588A4928(v123, v163, sub_2588A36A8);
        swift_storeEnumTagMultiPayload();
        sub_2588A39E8();
        sub_2588A3BF0();
        sub_2588BC778();
        sub_2588A49BC(v123, sub_2588A36A8);
        v85 = type metadata accessor for MedicalIDMedicalNotesCellView;
      }
    }

    else
    {
      if (v48 == 4)
      {
        v59 = v1;
        v60 = *(*(v1 + *(v42 + 20)) + 56);
        swift_getKeyPath(byte_2588C7F68);
        v169 = v60;
        sub_2588A37E0(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);

        sub_2588BBB98();

        v61 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
        swift_beginAccess();
        v62 = v60 + v61;
        v63 = v125;
        sub_2588A4928(v62, v125, sub_2587B63B8);

        v64 = v127;
        LoadState<>.loadedValue.getter(v127);
        sub_2588A49BC(v63, sub_2587B63B8);
        v65 = *(v64 + 16);

        sub_2588A49BC(v64, type metadata accessor for MedicalIDData);
        sub_2588A4928(v59, &v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), _s15SectionGridItemVMa);
        v66 = (*(v160 + 80) + 16) & ~*(v160 + 80);
        v67 = swift_allocObject();
        sub_2587C4DF4(v44, v67 + v66);
        KeyPath = swift_getKeyPath(byte_2588C7F90);
        v30 = v129;
        *v129 = KeyPath;
        sub_2588A3D54(0, &qword_27F95E6F0, MEMORY[0x277CDE530], MEMORY[0x277CDF458]);
        swift_storeEnumTagMultiPayload();
        v69 = v141;
        *(v30 + *(v141 + 20)) = v65;
        v70 = (v30 + v69[6]);
        v167 = 4;
        *v70 = MedicalIDDisplaySection.baseIdentifier.getter();
        v70[1] = v71;
        v72 = (v30 + v69[7]);
        *v72 = sub_2588A3DB8;
        v72[1] = v67;
        v73 = v30 + v69[8];
        v166 = 1;
        sub_2588BD2B8();
        v74 = v168;
        *v73 = v167;
        *(v73 + 1) = v74;
        sub_2588A4928(v30, v145, type metadata accessor for MedicalIDEmergencyContactsCellView);
        swift_storeEnumTagMultiPayload();
        sub_2588A37E0(&qword_27F961468, type metadata accessor for MedicalIDEmergencyContactsCellView, &unk_2588C1C54);
        sub_2588A37E0(&qword_27F961470, type metadata accessor for MedicalIDBiometricsCell, &unk_2588C8838);
        v75 = v148;
        sub_2588BC778();
        sub_2588A4928(v75, v157, sub_2588A3660);
        swift_storeEnumTagMultiPayload();
        sub_2588A3828();
        sub_2588A3908();
        v76 = v159;
        sub_2588BC778();
        sub_2588A49BC(v75, sub_2588A3660);
        sub_2588A4928(v76, v163, sub_2588A36A8);
        swift_storeEnumTagMultiPayload();
        sub_2588A39E8();
        sub_2588A3BF0();
        sub_2588BC778();
        sub_2588A49BC(v76, sub_2588A36A8);
        v77 = type metadata accessor for MedicalIDEmergencyContactsCellView;
LABEL_13:
        v57 = v77;
        v58 = v30;
        return sub_2588A49BC(v58, v57);
      }

      v101 = type metadata accessor for MedicalIDDataViewModel(0);
      v79 = v131;
      sub_2588A4928(v1 + *(v101 + 36), v131, type metadata accessor for MedicalIDBiometricsViewModel);
      sub_2588A4928(v1, &v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), _s15SectionGridItemVMa);
      v102 = (*(v160 + 80) + 16) & ~*(v160 + 80);
      v103 = swift_allocObject();
      sub_2587C4DF4(&v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v103 + v102);
      v104 = swift_getKeyPath(byte_2588C7F38);
      v105 = v149;
      *(v79 + *(v149 + 24)) = v104;
      sub_2588A3D54(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      v106 = (v79 + *(v105 + 20));
      *v106 = sub_2588A3C50;
      v106[1] = v103;
      sub_2588A4928(v79, v145, type metadata accessor for MedicalIDBiometricsCell);
      swift_storeEnumTagMultiPayload();
      sub_2588A37E0(&qword_27F961468, type metadata accessor for MedicalIDEmergencyContactsCellView, &unk_2588C1C54);
      sub_2588A37E0(&qword_27F961470, type metadata accessor for MedicalIDBiometricsCell, &unk_2588C8838);
      v107 = v148;
      sub_2588BC778();
      sub_2588A4928(v107, v157, sub_2588A3660);
      swift_storeEnumTagMultiPayload();
      sub_2588A3828();
      sub_2588A3908();
      v108 = v159;
      sub_2588BC778();
      sub_2588A49BC(v107, sub_2588A3660);
      sub_2588A4928(v108, v163, sub_2588A36A8);
      swift_storeEnumTagMultiPayload();
      sub_2588A39E8();
      sub_2588A3BF0();
      sub_2588BC778();
      sub_2588A49BC(v108, sub_2588A36A8);
      v85 = type metadata accessor for MedicalIDBiometricsCell;
    }

LABEL_17:
    v57 = v85;
    v58 = v79;
    return sub_2588A49BC(v58, v57);
  }

  if (*(v1 + *(v42 + 24)) > 1u)
  {
    if (v48 == 2)
    {
      v78 = type metadata accessor for MedicalIDDataViewModel(0);
      v79 = v126;
      sub_2588A4928(v1 + *(v78 + 44), v126, type metadata accessor for MedicalIDMedicalInfoViewModel);
      sub_2588A4928(v1, &v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), _s15SectionGridItemVMa);
      v80 = (*(v160 + 80) + 16) & ~*(v160 + 80);
      v81 = swift_allocObject();
      sub_2587C4DF4(&v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v81 + v80);
      v82 = (v79 + *(v135 + 20));
      *v82 = sub_2588A3DE8;
      v82[1] = v81;
      sub_2588A4928(v79, v136, type metadata accessor for MedicalIDMedicationsCellView);
      swift_storeEnumTagMultiPayload();
      sub_2588A37E0(&qword_27F9614A8, type metadata accessor for MedicalIDMedicationsCellView, &unk_2588C4620);
      sub_2588A37E0(&qword_27F9614B0, type metadata accessor for MedicalIDAllergiesCellView, &unk_2588C864C);
      v83 = v139;
      sub_2588BC778();
      sub_2588A4928(v83, v152, sub_2588A36F0);
      swift_storeEnumTagMultiPayload();
      sub_2588A3A30();
      sub_2588A3B10();
      v84 = v154;
      sub_2588BC778();
      sub_2588A49BC(v83, sub_2588A36F0);
      sub_2588A4928(v84, v163, sub_2588A3738);
      swift_storeEnumTagMultiPayload();
      sub_2588A39E8();
      sub_2588A3BF0();
      sub_2588BC778();
      sub_2588A49BC(v84, sub_2588A3738);
      v85 = type metadata accessor for MedicalIDMedicationsCellView;
    }

    else
    {
      v109 = type metadata accessor for MedicalIDDataViewModel(0);
      v79 = v128;
      sub_2588A4928(v1 + *(v109 + 44), v128, type metadata accessor for MedicalIDMedicalInfoViewModel);
      sub_2588A4928(v1, &v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), _s15SectionGridItemVMa);
      v110 = (*(v160 + 80) + 16) & ~*(v160 + 80);
      v111 = swift_allocObject();
      sub_2587C4DF4(&v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v111 + v110);
      v112 = (v79 + *(v138 + 20));
      *v112 = sub_2588A3DD0;
      v112[1] = v111;
      sub_2588A4928(v79, v136, type metadata accessor for MedicalIDAllergiesCellView);
      swift_storeEnumTagMultiPayload();
      sub_2588A37E0(&qword_27F9614A8, type metadata accessor for MedicalIDMedicationsCellView, &unk_2588C4620);
      sub_2588A37E0(&qword_27F9614B0, type metadata accessor for MedicalIDAllergiesCellView, &unk_2588C864C);
      v113 = v139;
      sub_2588BC778();
      sub_2588A4928(v113, v152, sub_2588A36F0);
      swift_storeEnumTagMultiPayload();
      sub_2588A3A30();
      sub_2588A3B10();
      v114 = v154;
      sub_2588BC778();
      sub_2588A49BC(v113, sub_2588A36F0);
      sub_2588A4928(v114, v163, sub_2588A3738);
      swift_storeEnumTagMultiPayload();
      sub_2588A39E8();
      sub_2588A3BF0();
      sub_2588BC778();
      sub_2588A49BC(v114, sub_2588A3738);
      v85 = type metadata accessor for MedicalIDAllergiesCellView;
    }

    goto LABEL_17;
  }

  if (*(v1 + *(v42 + 24)))
  {
    v92 = type metadata accessor for MedicalIDDataViewModel(0);
    sub_2588A4928(v1 + *(v92 + 48), v30, type metadata accessor for MedicalIDPregnancyViewModel);
    sub_2588A4928(v1, &v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), _s15SectionGridItemVMa);
    v93 = (*(v160 + 80) + 16) & ~*(v160 + 80);
    v94 = swift_allocObject();
    sub_2587C4DF4(&v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v94 + v93);
    v95 = v137;
    v96 = (v30 + *(v137 + 20));
    *v96 = sub_2588A3E00;
    v96[1] = v94;
    v97 = (v30 + *(v95 + 24));
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();
    *v97 = sub_2588BC358();
    v97[1] = v98;
    sub_2588A4928(v30, v37, type metadata accessor for MedicalIDPregnancyCellView);
    swift_storeEnumTagMultiPayload();
    sub_2588A37E0(&qword_27F961490, type metadata accessor for MedicalIDPersonalInformationCellView, &unk_2588C1AE8);
    sub_2588A37E0(&qword_27F961498, type metadata accessor for MedicalIDPregnancyCellView, &unk_2588C556C);
    v99 = v134;
    sub_2588BC778();
    sub_2588A4928(v99, v152, sub_2588A3780);
    swift_storeEnumTagMultiPayload();
    sub_2588A3A30();
    sub_2588A3B10();
    v100 = v154;
    sub_2588BC778();
    sub_2588A49BC(v99, sub_2588A3780);
    sub_2588A4928(v100, v163, sub_2588A3738);
    swift_storeEnumTagMultiPayload();
    sub_2588A39E8();
    sub_2588A3BF0();
    sub_2588BC778();
    sub_2588A49BC(v100, sub_2588A3738);
    v77 = type metadata accessor for MedicalIDPregnancyCellView;
    goto LABEL_13;
  }

  v49 = type metadata accessor for MedicalIDDataViewModel(0);
  sub_2588A4928(v1 + *(v49 + 40), v47, type metadata accessor for MedicalIDPersonalInfoViewModel);
  sub_2588A4928(v1, &v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), _s15SectionGridItemVMa);
  v50 = (*(v160 + 80) + 16) & ~*(v160 + 80);
  v51 = swift_allocObject();
  sub_2587C4DF4(v44, v51 + v50);
  v52 = &v47[*(v45 + 24)];
  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  *v52 = sub_2588BC358();
  v52[1] = v53;
  v54 = &v47[*(v45 + 20)];
  *v54 = sub_2588A489C;
  v54[1] = v51;
  sub_2588A4928(v47, v37, type metadata accessor for MedicalIDPersonalInformationCellView);
  swift_storeEnumTagMultiPayload();
  sub_2588A37E0(&qword_27F961490, type metadata accessor for MedicalIDPersonalInformationCellView, &unk_2588C1AE8);
  sub_2588A37E0(&qword_27F961498, type metadata accessor for MedicalIDPregnancyCellView, &unk_2588C556C);
  v55 = v134;
  sub_2588BC778();
  sub_2588A4928(v55, v152, sub_2588A3780);
  swift_storeEnumTagMultiPayload();
  sub_2588A3A30();
  sub_2588A3B10();
  v56 = v154;
  sub_2588BC778();
  sub_2588A49BC(v55, sub_2588A3780);
  sub_2588A4928(v56, v163, sub_2588A3738);
  swift_storeEnumTagMultiPayload();
  sub_2588A39E8();
  sub_2588A3BF0();
  sub_2588BC778();
  sub_2588A49BC(v56, sub_2588A3738);
  v57 = type metadata accessor for MedicalIDPersonalInformationCellView;
  v58 = v47;
  return sub_2588A49BC(v58, v57);
}

uint64_t sub_2588A2FF8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = _s15SectionGridItemVMa(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_2588A4928(a1, &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), _s15SectionGridItemVMa);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_2587C4DF4(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *(v11 + v10 + v9) = a3;
  sub_2588A34CC(a4, v11);
}

void sub_2588A31F4(char a1, id a2, uint64_t a3, char a4)
{
  if (a1)
  {
    v4 = a3 + *(_s15SectionGridItemVMa(0) + 32);
    v5 = *v4;
    v6 = *(v4 + 8);
    LOBYTE(v4) = *(v4 + 16);
    v18[0] = v5;
    v18[1] = v6;
    v19 = v4;
    sub_2588A3D54(0, &qword_27F9613E0, sub_2588A0E74, MEMORY[0x277CE11F8]);

    sub_2588BD438();
  }

  else if (a2)
  {
    v8 = a2;
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v9 = sub_2588BBC98();
    __swift_project_value_buffer(v9, qword_27F969938);
    v10 = a2;
    v11 = sub_2588BBC78();
    v12 = sub_2588BDBF8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18[0] = v15;
      *v13 = 136315650;
      *(v13 + 4) = sub_258790224(0x476E6F6974636553, 0xEF6D657449646972, v18);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_258790224(0xD000000000000014, 0x80000002588CB7D0, v18);
      *(v13 + 22) = 2112;
      v16 = a2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 24) = v17;
      *v14 = v17;
      _os_log_impl(&dword_25878B000, v11, v12, "[%s.%s] Authentication failed: %@", v13, 0x20u);
      sub_2588A49BC(v14, sub_25888E220);
      MEMORY[0x259C8DBE0](v14, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v15, -1, -1);
      MEMORY[0x259C8DBE0](v13, -1, -1);
    }

    else
    {
    }
  }
}

void sub_2588A34CC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() applicationWithBundleIdentifier_];
  v5 = [objc_opt_self() sharedGuard];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_2588A4994;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2588A0EE0;
  v8[3] = &block_descriptor_8;
  v7 = _Block_copy(v8);

  [v5 authenticateForSubject:v4 completion:v7];
  _Block_release(v7);
}

uint64_t sub_2588A37E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2588A3828()
{
  result = qword_27F961460;
  if (!qword_27F961460)
  {
    sub_2588A3660(255);
    sub_2588A37E0(&qword_27F961468, type metadata accessor for MedicalIDEmergencyContactsCellView, &unk_2588C1C54);
    sub_2588A37E0(&qword_27F961470, type metadata accessor for MedicalIDBiometricsCell, &unk_2588C8838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961460);
  }

  return result;
}

unint64_t sub_2588A3908()
{
  result = qword_27F961478;
  if (!qword_27F961478)
  {
    sub_2588A3618(255);
    sub_2588A37E0(&qword_27F961450, type metadata accessor for MedicalIDMedicalConditionsCellView, &unk_2588C6234);
    sub_2588A37E0(&qword_27F961458, type metadata accessor for MedicalIDMedicalNotesCellView, &unk_2588C7390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961478);
  }

  return result;
}

unint64_t sub_2588A3A30()
{
  result = qword_27F961488;
  if (!qword_27F961488)
  {
    sub_2588A3780(255);
    sub_2588A37E0(&qword_27F961490, type metadata accessor for MedicalIDPersonalInformationCellView, &unk_2588C1AE8);
    sub_2588A37E0(&qword_27F961498, type metadata accessor for MedicalIDPregnancyCellView, &unk_2588C556C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961488);
  }

  return result;
}

unint64_t sub_2588A3B10()
{
  result = qword_27F9614A0;
  if (!qword_27F9614A0)
  {
    sub_2588A36F0(255);
    sub_2588A37E0(&qword_27F9614A8, type metadata accessor for MedicalIDMedicationsCellView, &unk_2588C4620);
    sub_2588A37E0(&qword_27F9614B0, type metadata accessor for MedicalIDAllergiesCellView, &unk_2588C864C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9614A0);
  }

  return result;
}

uint64_t sub_2588A3C8C(uint64_t a1)
{
  v2 = sub_2588BC1C8();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2588BC3D8();
}

void sub_2588A3D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroyTm_32()
{
  v50 = _s15SectionGridItemVMa(0);
  v51 = *(*(v50 - 8) + 80);
  v1 = (v0 + ((v51 + 16) & ~v51));

  v2 = type metadata accessor for MedicalIDDataViewModel(0);
  v3 = (v1 + v2[5]);

  v4 = type metadata accessor for MedicalIDData(0);
  v5 = v4[13];
  v6 = sub_2588BB9B8();
  v60 = *(v6 - 8);
  v7 = *(v60 + 48);
  if (!v7(v3 + v5, 1, v6))
  {
    (*(v60 + 8))(v3 + v5, v6);
  }

  v8 = v4[14];
  if (!v7(v3 + v8, 1, v6))
  {
    (*(v60 + 8))(v3 + v8, v6);
  }

  v9 = (v3 + v4[18]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_2587C2610(*v9, v10);
  }

  v11 = v4[19];
  v12 = sub_2588BB818();
  v52 = *(v12 - 8);
  v58 = *(v52 + 48);
  if (!v58(v3 + v11, 1, v12))
  {
    (*(v52 + 8))(v3 + v11, v12);
  }

  v13 = v4[21];
  if (!v7(v3 + v13, 1, v6))
  {
    (*(v60 + 8))(v3 + v13, v6);
  }

  v14 = v2[6];
  v53 = sub_2588BBB48();
  v54 = (*(v53 - 8) + 8);
  v55 = *v54;
  (*v54)(v1 + v14);

  v15 = v2[8];
  v16 = sub_2588BBAC8();
  v56 = *(*(v16 - 8) + 8);
  v57 = v16;
  v56(v1 + v15);
  v59 = v2;
  v17 = v1 + v2[9];

  v18 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v19 = &v17[v18[5]];

  v20 = v4[13];
  if (!v7(&v19[v20], 1, v6))
  {
    (*(v60 + 8))(&v19[v20], v6);
  }

  v21 = v4[14];
  if (!v7(&v19[v21], 1, v6))
  {
    (*(v60 + 8))(&v19[v21], v6);
  }

  v22 = &v19[v4[18]];
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_2587C2610(*v22, v23);
  }

  v24 = v4[19];
  if (!v58(&v19[v24], 1, v12))
  {
    (*(v52 + 8))(&v19[v24], v12);
  }

  v25 = v4[21];
  if (!v7(&v19[v25], 1, v6))
  {
    (*(v60 + 8))(&v19[v25], v6);
  }

  (v56)(&v17[v18[6]], v57);
  v26 = &v17[v18[7]];
  (v56)(v26, v57);

  v27 = &v17[v18[8]];
  (v56)(v27, v57);
  v28 = type metadata accessor for MedicalIDWeightFormatter(0);

  v29 = (v1 + v59[10]);

  v30 = v4[13];
  if (!v7(v29 + v30, 1, v6))
  {
    (*(v60 + 8))(v29 + v30, v6);
  }

  v31 = v4[14];
  if (!v7(v29 + v31, 1, v6))
  {
    (*(v60 + 8))(v29 + v31, v6);
  }

  v32 = (v29 + v4[18]);
  v33 = v32[1];
  if (v33 >> 60 != 15)
  {
    sub_2587C2610(*v32, v33);
  }

  v34 = v4[19];
  if (!v58(v29 + v34, 1, v12))
  {
    (*(v52 + 8))(v29 + v34, v12);
  }

  v35 = v4[21];
  if (!v7(v29 + v35, 1, v6))
  {
    (*(v60 + 8))(v29 + v35, v6);
  }

  v36 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  (v55)(v29 + v36[5], v53);
  (v56)(v29 + v36[6], v57);

  v37 = (v1 + v59[11]);

  v38 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  (v55)(v37 + *(v38 + 20), v53);
  (v56)(v37 + *(v38 + 24), v57);
  v39 = v1 + v59[12];

  v40 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v41 = &v39[v40[5]];

  v42 = v4[13];
  if (!v7(&v41[v42], 1, v6))
  {
    (*(v60 + 8))(&v41[v42], v6);
  }

  v43 = v4[14];
  if (!v7(&v41[v43], 1, v6))
  {
    (*(v60 + 8))(&v41[v43], v6);
  }

  v44 = &v41[v4[18]];
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_2587C2610(*v44, v45);
  }

  v46 = v4[19];
  if (!v58(&v41[v46], 1, v12))
  {
    (*(v52 + 8))(&v41[v46], v12);
  }

  v47 = v4[21];
  if (!v7(&v41[v47], 1, v6))
  {
    (*(v60 + 8))(&v41[v47], v6);
  }

  (v55)(&v39[v40[6]], v53);
  (v56)(&v39[v40[7]], v57);

  v48 = v40[9];
  if (!v7(&v39[v48], 1, v6))
  {
    (*(v60 + 8))(&v39[v48], v6);
  }

  return swift_deallocObject();
}

uint64_t sub_2588A48B4(uint64_t (*a1)(uint64_t))
{
  v2 = *(_s15SectionGridItemVMa(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2588A4928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2588A49BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_31Tm()
{
  v50 = _s15SectionGridItemVMa(0);
  v51 = *(*(v50 - 8) + 80);
  v1 = (v0 + ((v51 + 16) & ~v51));

  v2 = type metadata accessor for MedicalIDDataViewModel(0);
  v3 = (v1 + v2[5]);

  v4 = type metadata accessor for MedicalIDData(0);
  v5 = v4[13];
  v6 = sub_2588BB9B8();
  v60 = *(v6 - 8);
  v7 = *(v60 + 48);
  if (!v7(v3 + v5, 1, v6))
  {
    (*(v60 + 8))(v3 + v5, v6);
  }

  v8 = v4[14];
  if (!v7(v3 + v8, 1, v6))
  {
    (*(v60 + 8))(v3 + v8, v6);
  }

  v9 = (v3 + v4[18]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_2587C2610(*v9, v10);
  }

  v11 = v4[19];
  v12 = sub_2588BB818();
  v52 = *(v12 - 8);
  v58 = *(v52 + 48);
  if (!v58(v3 + v11, 1, v12))
  {
    (*(v52 + 8))(v3 + v11, v12);
  }

  v13 = v4[21];
  if (!v7(v3 + v13, 1, v6))
  {
    (*(v60 + 8))(v3 + v13, v6);
  }

  v14 = v2[6];
  v53 = sub_2588BBB48();
  v54 = (*(v53 - 8) + 8);
  v55 = *v54;
  (*v54)(v1 + v14);

  v15 = v2[8];
  v16 = sub_2588BBAC8();
  v56 = *(*(v16 - 8) + 8);
  v57 = v16;
  v56(v1 + v15);
  v59 = v2;
  v17 = v1 + v2[9];

  v18 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v19 = &v17[v18[5]];

  v20 = v4[13];
  if (!v7(&v19[v20], 1, v6))
  {
    (*(v60 + 8))(&v19[v20], v6);
  }

  v21 = v4[14];
  if (!v7(&v19[v21], 1, v6))
  {
    (*(v60 + 8))(&v19[v21], v6);
  }

  v22 = &v19[v4[18]];
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_2587C2610(*v22, v23);
  }

  v24 = v4[19];
  if (!v58(&v19[v24], 1, v12))
  {
    (*(v52 + 8))(&v19[v24], v12);
  }

  v25 = v4[21];
  if (!v7(&v19[v25], 1, v6))
  {
    (*(v60 + 8))(&v19[v25], v6);
  }

  (v56)(&v17[v18[6]], v57);
  v26 = &v17[v18[7]];
  (v56)(v26, v57);

  v27 = &v17[v18[8]];
  (v56)(v27, v57);
  v28 = type metadata accessor for MedicalIDWeightFormatter(0);

  v29 = (v1 + v59[10]);

  v30 = v4[13];
  if (!v7(v29 + v30, 1, v6))
  {
    (*(v60 + 8))(v29 + v30, v6);
  }

  v31 = v4[14];
  if (!v7(v29 + v31, 1, v6))
  {
    (*(v60 + 8))(v29 + v31, v6);
  }

  v32 = (v29 + v4[18]);
  v33 = v32[1];
  if (v33 >> 60 != 15)
  {
    sub_2587C2610(*v32, v33);
  }

  v34 = v4[19];
  if (!v58(v29 + v34, 1, v12))
  {
    (*(v52 + 8))(v29 + v34, v12);
  }

  v35 = v4[21];
  if (!v7(v29 + v35, 1, v6))
  {
    (*(v60 + 8))(v29 + v35, v6);
  }

  v36 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  (v55)(v29 + v36[5], v53);
  (v56)(v29 + v36[6], v57);

  v37 = (v1 + v59[11]);

  v38 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  (v55)(v37 + *(v38 + 20), v53);
  (v56)(v37 + *(v38 + 24), v57);
  v39 = v1 + v59[12];

  v40 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v41 = &v39[v40[5]];

  v42 = v4[13];
  if (!v7(&v41[v42], 1, v6))
  {
    (*(v60 + 8))(&v41[v42], v6);
  }

  v43 = v4[14];
  if (!v7(&v41[v43], 1, v6))
  {
    (*(v60 + 8))(&v41[v43], v6);
  }

  v44 = &v41[v4[18]];
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_2587C2610(*v44, v45);
  }

  v46 = v4[19];
  if (!v58(&v41[v46], 1, v12))
  {
    (*(v52 + 8))(&v41[v46], v12);
  }

  v47 = v4[21];
  if (!v7(&v41[v47], 1, v6))
  {
    (*(v60 + 8))(&v41[v47], v6);
  }

  (v55)(&v39[v40[6]], v53);
  (v56)(&v39[v40[7]], v57);

  v48 = v40[9];
  if (!v7(&v39[v48], 1, v6))
  {
    (*(v60 + 8))(&v39[v48], v6);
  }

  return swift_deallocObject();
}

void sub_2588A5498(char a1, void *a2)
{
  v5 = *(_s15SectionGridItemVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  sub_2588A31F4(a1, a2, v6, v7);
}

uint64_t sub_2588A5538(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2588A560C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_2588A5694@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a2;
  v62 = a3;
  v63 = a1;
  v5 = type metadata accessor for MedicalIDEditBiometricsModalView(0);
  v6 = (a4 + v5[5]);
  sub_2587FC7CC(0, &qword_27F95DC40, &type metadata for BasicAlertModel);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0;
  sub_2588BD2B8();
  v7 = v69;
  *v6 = v68;
  v6[1] = v7;
  v8 = v71;
  v6[2] = v70;
  v6[3] = v8;
  v9 = v5[6];
  *(a4 + v9) = swift_getKeyPath(byte_2588C7FC0);
  v10 = MEMORY[0x277CDF458];
  sub_2588A5E40(0, &qword_27F95DB20, MEMORY[0x28220C180], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v11 = v5[7];
  *(a4 + v11) = swift_getKeyPath(aX_8);
  sub_2588A5E40(0, &qword_27F95DB30, MEMORY[0x277CDD848], v10);
  swift_storeEnumTagMultiPayload();
  v12 = a4 + v5[8];
  type metadata accessor for MedicalIDDataManager(0);
  sub_2588A87B0(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  *v12 = sub_2588BBF58();
  *(v12 + 8) = v13 & 1;
  v14 = (a4 + v5[9]);
  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  *v14 = sub_2588BC358();
  v14[1] = v15;
  v16 = a4 + v5[12];
  sub_258821368(0, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_258821310(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v21 = (*(*(v20 - 8) + 56))(v55 - v19, 1, 1, v20);
  v59 = v18;
  MEMORY[0x28223BE20](v21);
  v58 = v19;
  sub_2588A5EA4(v55 - v19, v55 - v19, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v60 = v16;
  sub_2588BD2B8();
  sub_2588213C4(v55 - v19, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v22 = a4 + v5[13];
  sub_258821368(0, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_258821310(0, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  v27 = (*(*(v26 - 8) + 56))(v55 - v25, 1, 1, v26);
  MEMORY[0x28223BE20](v27);
  v56 = v25;
  sub_2588A5EA4(v55 - v25, v55 - v25, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  v57 = v22;
  sub_2588BD2B8();
  sub_2588213C4(v55 - v25, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  v28 = sub_2588BD9A8();
  v29 = HKUIJoinStringsForAutomationIdentifier();

  if (v29)
  {
    v30 = sub_2588BD8A8();
    v32 = v31;
  }

  else
  {
    v32 = 0xEA00000000007363;
    v30 = 0x697274656D6F6942;
  }

  v33 = (a4 + v5[15]);
  *v33 = v30;
  v33[1] = v32;
  v34 = a4 + v5[16];
  sub_2588A5F18();
  sub_2588BBE88();
  v35 = *(&v64 + 1);
  v36 = v65;
  *v34 = v64;
  *(v34 + 8) = v35;
  *(v34 + 16) = v36;
  v37 = v63;
  sub_2588A5F6C(v63, a4, type metadata accessor for MedicalIDBiometricsViewModel);
  v38 = v61;
  v39 = v62;
  *(a4 + v5[10]) = v61;
  *(a4 + v5[11]) = v39;
  v40 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v55[1] = v55;
  v41 = v37 + *(v40 + 20);
  v42 = (a4 + v5[14]);
  *v42 = *(v41 + 88);
  v42[1] = 0;
  MEMORY[0x28223BE20](v40);
  v43 = v55 - v56;
  v44 = *(v41 + 96);
  v45 = v38;

  sub_2587F1E14(v44, v43);
  v46 = MEMORY[0x277CE10B8];
  v47 = v57;
  sub_2588A8A60(v57, &qword_27F961058, MEMORY[0x277CE10B8], sub_2588A8960);
  sub_2588A8960(0, &qword_27F961058, v46);
  *(v47 + *(v48 + 28)) = 0;
  v49 = sub_2588A60B4(v43, v47, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  MEMORY[0x28223BE20](v49);
  v50 = v55 - v58;
  sub_25884D544(*(v41 + 104), v55 - v58);

  sub_2588A5FD4(v37, type metadata accessor for MedicalIDBiometricsViewModel);
  v51 = MEMORY[0x277CE10B8];
  v52 = v60;
  sub_2588A8A60(v60, &qword_27F9614E8, MEMORY[0x277CE10B8], sub_2588A6034);
  sub_2588A6034(0, &qword_27F9614E8, v51);
  *(v52 + *(v53 + 28)) = 0;
  return sub_2588A60B4(v50, v52, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
}

uint64_t type metadata accessor for MedicalIDEditBiometricsModalView(uint64_t a1)
{
  result = qword_27F9614F0;
  if (!qword_27F9614F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588A5E40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2588A5EA4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, void *a6)
{
  sub_258821368(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_2588A5F18()
{
  result = qword_27F9614E0;
  if (!qword_27F9614E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9614E0);
  }

  return result;
}

uint64_t sub_2588A5F6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2588A5FD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2588A6034(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258821368(255, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2588A60B4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, void *a6)
{
  sub_258821368(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void sub_2588A6160(uint64_t a1)
{
  type metadata accessor for MedicalIDBiometricsViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2587D2DD4(319);
    if (v2 <= 0x3F)
    {
      sub_2588A5E40(319, &qword_27F95DAC0, MEMORY[0x28220C180], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2588A5E40(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_2588A5E40(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_2587BC234(319);
            if (v6 <= 0x3F)
            {
              sub_25878E130(319, &qword_27F95D360, 0x277CCD4D8);
              if (v7 <= 0x3F)
              {
                type metadata accessor for HealthDemographicDataProvider(319);
                if (v8 <= 0x3F)
                {
                  sub_2588A6034(319, &qword_27F9614E8, MEMORY[0x277CE10B8]);
                  if (v9 <= 0x3F)
                  {
                    sub_2588A8960(319, &qword_27F961058, MEMORY[0x277CE10B8]);
                    if (v10 <= 0x3F)
                    {
                      sub_2588A5E40(319, &qword_27F961500, type metadata accessor for HKBloodType, MEMORY[0x277CE10B8]);
                      if (v11 <= 0x3F)
                      {
                        sub_2588A63D8(319);
                        if (v12 <= 0x3F)
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
}

void sub_2588A63D8(uint64_t a1)
{
  if (!qword_27F961508)
  {
    sub_2587FC7CC(255, &qword_27F961510, &type metadata for MedicalIDEditBiometricsModalView.TextFieldFocus);
    sub_2588A644C();
    v1 = sub_2588BBE98();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961508);
    }
  }
}

unint64_t sub_2588A644C()
{
  result = qword_27F961518;
  if (!qword_27F961518)
  {
    sub_2587FC7CC(255, &qword_27F961510, &type metadata for MedicalIDEditBiometricsModalView.TextFieldFocus);
    sub_2588A5F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961518);
  }

  return result;
}

unint64_t sub_2588A64D8()
{
  result = qword_27F961520;
  if (!qword_27F961520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961520);
  }

  return result;
}

void *sub_2588A6548@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MedicalIDEditBiometricsModalView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  if (qword_27F95D178 != -1)
  {
    swift_once();
  }

  v7 = *algn_27F9614D8;
  v30 = qword_27F9614D0;
  v31 = type metadata accessor for MedicalIDEditBiometricsModalView;
  sub_2588A5F6C(v2, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDEditBiometricsModalView);
  v29 = v2;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2588A83B4(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = (v2 + *(v4 + 20));
  v11 = v10[1];
  v40 = *v10;
  v41 = v11;
  v12 = v10[3];
  v42 = v10[2];
  v43 = v12;
  sub_2587D2DD4(0);

  sub_2588BD2E8();
  v43 = v38;
  v44 = v39;
  v41 = v36;
  v42 = v37;
  v40 = v35;
  *a1 = swift_getKeyPath(aX_8);
  sub_2588A5E40(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_2588A84E4(0);
  v14 = v13;
  v15 = (a1 + v13[9]);
  *v15 = v30;
  v15[1] = v7;
  v16 = (a1 + v13[10]);
  *v16 = &unk_2588C8128;
  v16[1] = v9;
  v17 = a1 + v13[11];
  v18 = v41;
  v19 = v43;
  *(v17 + 2) = v42;
  *(v17 + 3) = v19;
  *(v17 + 8) = v44;
  *v17 = v40;
  *(v17 + 1) = v18;
  v20 = (a1 + v13[12]);
  v21 = v29;
  v22 = v31;
  sub_2588A5F6C(v29, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
  v23 = swift_allocObject();
  sub_2588A83B4(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v8);
  sub_2588A5F6C(v21, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  v24 = swift_allocObject();
  sub_2588A83B4(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v8);
  *v20 = sub_2588A8880;
  v20[1] = v23;
  v20[2] = sub_2588A88F0;
  v20[3] = v24;
  v20[4] = nullsub_1;
  v20[5] = 0;
  v25 = a1 + v14[13];
  v32 = 0;
  result = sub_2588BD2B8();
  v27 = v34;
  *v25 = v33;
  *(v25 + 1) = v27;
  return result;
}

uint64_t sub_2588A68C8()
{
  v0[2] = sub_2588BDA78();
  v0[3] = sub_2588BDA68();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2587C9A98;

  return sub_2588A6974();
}

uint64_t sub_2588A6974()
{
  v1[19] = v0;
  v2 = sub_2588BC038();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  sub_2587B63B8(0);
  v1[23] = swift_task_alloc();
  v3 = sub_2588BC598();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  type metadata accessor for MedicalIDData(0);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = sub_2588BDA78();
  v1[30] = sub_2588BDA68();
  v5 = sub_2588BDA28();
  v1[31] = v5;
  v1[32] = v4;

  return MEMORY[0x2822009F8](sub_2588A6B2C, v5, v4);
}

uint64_t sub_2588A6B2C()
{
  v40 = v0;
  v1 = *(v0 + 152);
  v2 = type metadata accessor for MedicalIDEditBiometricsModalView(0);
  *(v0 + 264) = v2;
  v3 = (v1 + *(v2 + 32));
  v4 = *v3;
  v5 = *(v3 + 8);

  v31 = v5;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v8 = *(v0 + 200);
    v7 = *(v0 + 208);
    v9 = *(v0 + 192);
    sub_2588BDBE8();
    v10 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v8 + 8))(v7, v9);
    v6 = *(v0 + 104);
    v1 = *(v0 + 152);
  }

  v11 = *(v0 + 224);
  v12 = *(v0 + 184);
  swift_getKeyPath(byte_2588C8138, v31);
  *(v0 + 112) = v6;
  *(v0 + 272) = sub_2588A87B0(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v13 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2588A5F6C(v6 + v13, v12, sub_2587B63B8);

  LoadState<>.loadedValue.getter(v11);
  sub_2588A5FD4(v12, sub_2587B63B8);
  sub_258821368(0, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  v14 = swift_task_alloc();
  sub_2588A8960(0, &qword_27F961058, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_258821368(0, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v15 = swift_task_alloc();
  sub_2588A6034(0, &qword_27F9614E8, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  *(v0 + 88) = *(v1 + *(v2 + 56));
  sub_2588A5E40(0, &qword_27F961500, type metadata accessor for HKBloodType, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  *(v11 + 88) = *(v0 + 120);
  v16 = sub_25888C468(v14);

  *(v11 + 96) = v16;
  v17 = sub_25888C744(v15);
  sub_2588213C4(v15, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  sub_2588213C4(v14, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);

  *(v11 + 104) = v17;

  MedicalIDBiometricsViewModel.validationResult(for:)(v11, &v35);
  v18 = v36;
  if (v36)
  {
    v19 = v39;
    v33 = v37;
    v34 = v38;
    v20 = v35;

    sub_2587B2CD4();
    swift_allocError();
    *v21 = v20;
    *(v21 + 8) = v18;
    *(v21 + 16) = v33;
    *(v21 + 32) = v34;
    *(v21 + 48) = v19;
    swift_willThrow();
    sub_2588A5FD4(*(v0 + 224), type metadata accessor for MedicalIDData);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = v4;

    if ((v32 & 1) == 0)
    {
      v26 = *(v0 + 200);
      v25 = *(v0 + 208);
      v27 = *(v0 + 192);
      sub_2588BDBE8();
      v28 = sub_2588BCB58();
      sub_2588BBC68();

      sub_2588BC588();
      swift_getAtKeyPath();

      (*(v26 + 8))(v25, v27);
      v24 = *(v0 + 128);
    }

    *(v0 + 280) = v24;
    *(v0 + 288) = sub_2588BDA68();
    v30 = sub_2588BDA28();
    *(v0 + 296) = v30;
    *(v0 + 304) = v29;

    return MEMORY[0x2822009F8](sub_2588A710C, v30, v29);
  }
}

uint64_t sub_2588A710C()
{
  v1 = v0[35];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[23];
  swift_getKeyPath(byte_2588C8138);
  v0[17] = v1;
  sub_2588BBB98();

  v5 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2588A5F6C(v1 + v5, v4, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v3);
  sub_2588A5FD4(v4, sub_2587B63B8);
  sub_2588A5FD4(v3, type metadata accessor for MedicalIDData);
  swift_beginAccess();
  sub_2588A5F6C(v2, v3, type metadata accessor for MedicalIDData);
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = sub_2588A72B8;
  v7 = v0[27];

  return sub_258880280(v7, (v0 + 18));
}

uint64_t sub_2588A72B8()
{
  v2 = *v1;

  v3 = *(v2 + 296);
  v4 = *(v2 + 304);
  if (v0)
  {
    v5 = sub_2588A7564;
  }

  else
  {
    v5 = sub_2588A73C8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2588A73C8()
{
  v1 = v0[27];

  sub_2588A5FD4(v1, type metadata accessor for MedicalIDData);
  v2 = v0[31];
  v3 = v0[32];

  return MEMORY[0x2822009F8](sub_2588A7454, v2, v3);
}

uint64_t sub_2588A7454()
{
  v1 = v0[28];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[21];

  sub_25885269C(v2);
  sub_2588BC028();
  (*(v4 + 8))(v2, v3);
  sub_2588A5FD4(v1, type metadata accessor for MedicalIDData);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2588A7564()
{
  v1 = v0[27];

  sub_2588A5FD4(v1, type metadata accessor for MedicalIDData);
  v0[40] = v0[18];
  v2 = v0[31];
  v3 = v0[32];

  return MEMORY[0x2822009F8](sub_2588A75F8, v2, v3);
}

uint64_t sub_2588A75F8()
{
  v1 = v0[40];

  sub_2587CE078();
  swift_allocError();
  *v2 = v1;
  sub_2588A5FD4(v0[28], type metadata accessor for MedicalIDData);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2588A76E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v95 = type metadata accessor for EditBloodTypeCellView(0) - 8;
  v3 = MEMORY[0x28223BE20](v95);
  v96 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v91 = &v78 - v5;
  v86 = type metadata accessor for EditWeightCellView(0);
  MEMORY[0x28223BE20](v86);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A86CC(0);
  v93 = *(v8 - 8);
  v94 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v92 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v100 = &v78 - v11;
  v12 = type metadata accessor for MedicalIDEditBiometricsModalView(0);
  v13 = v12 - 8;
  v89 = *(v12 - 8);
  v99 = *(v89 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for EditHeightCellView(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v102 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = (&v78 - v22);
  v101 = &v78 - v22;
  *&v98 = type metadata accessor for MedicalIDBiometricsViewModel;
  sub_2588A5F6C(a1, v18, type metadata accessor for MedicalIDBiometricsViewModel);
  sub_2588A8960(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v78 - v25;
  sub_2588A8960(0, &qword_27F961058, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v27 = *(v13 + 52);
  v82 = v13;
  v28 = *(a1 + v27);
  v90 = type metadata accessor for MedicalIDEditBiometricsModalView;
  v87 = v15;
  sub_2588A5F6C(a1, v15, type metadata accessor for MedicalIDEditBiometricsModalView);
  v89 = *(v89 + 80);
  v29 = (v89 + 16) & ~v89;
  v88 = v29;
  v30 = swift_allocObject();
  sub_2588A83B4(v15, v30 + v29);
  v83 = v28;
  swift_retain_n();
  sub_25888FD24(v18, v26, v28, sub_2588A91C4, v30, v23);
  v80 = a1;
  v31 = v98;
  sub_2588A5F6C(a1, v18, v98);
  v81 = MEMORY[0x277CE11F8];
  sub_2588A6034(0, &qword_27F95FAF0, MEMORY[0x277CE11F8]);
  v79 = v32;
  MEMORY[0x28223BE20](v32);
  v34 = &v78 - v33;
  sub_2588A6034(0, &qword_27F9614E8, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v35 = v86;
  *&v7[*(v86 + 28)] = 6;
  v36 = v35[9];
  *&v7[v36] = swift_getKeyPath(byte_2588C7FC0);
  sub_2588A5E40(0, &qword_27F95DB20, MEMORY[0x28220C180], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v37 = &v7[v35[10]];
  v85 = sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  v84 = sub_2587BC2A8();
  *v37 = sub_2588BC358();
  v37[1] = v38;
  sub_2588A5F6C(v18, v7, v31);
  sub_2588A89E0(v34, &v7[v35[5]]);
  sub_258821368(0, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v78 - v40;
  MEMORY[0x259C8C5A0](v79);
  v42 = MedicalIDBiometricsViewModel.formattedWeightText(for:)(v41);
  v44 = v43;
  sub_2588213C4(v41, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  sub_2588A8A60(v34, &qword_27F95FAF0, v81, sub_2588A6034);
  sub_2588A5FD4(v18, type metadata accessor for MedicalIDBiometricsViewModel);
  v45 = &v7[v35[8]];
  *v45 = v42;
  *(v45 + 1) = v44;
  *(v45 + 2) = 0;
  v46 = v83;
  *&v7[v35[6]] = v83;
  v47 = v82;
  v48 = v80;
  v49 = v80 + *(v82 + 72);
  v50 = *v49;
  v51 = *(v49 + 8);
  LOBYTE(v49) = *(v49 + 16);
  LOBYTE(v103) = v50;
  *(&v103 + 1) = v51;
  LOBYTE(v104) = v49;
  sub_2588A63D8(0);
  sub_2588BBE68();
  v103 = v105;
  LOBYTE(v104) = v106;
  LOBYTE(v105) = 0;
  sub_2587FC7CC(0, &qword_27F961510, &type metadata for MedicalIDEditBiometricsModalView.TextFieldFocus);
  sub_2588A87B0(&qword_27F961550, type metadata accessor for EditWeightCellView, &unk_2588C4BA4);
  sub_2588A644C();
  v52 = v100;
  sub_2588BD088();

  sub_2588A5FD4(v7, type metadata accessor for EditWeightCellView);
  v53 = v48;
  v54 = v48;
  v55 = v91;
  sub_2588A5F6C(v54, v91, v98);
  v105 = *(v53 + *(v47 + 64));
  sub_2588A5E40(0, &qword_27F961500, type metadata accessor for HKBloodType, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v98 = v103;
  v56 = v104;
  v57 = v87;
  sub_2588A5F6C(v53, v87, v90);
  v58 = v88;
  v59 = swift_allocObject();
  sub_2588A83B4(v57, v59 + v58);
  v60 = sub_2588BC358();
  v61 = v95;
  v62 = v55 + *(v95 + 28);
  *v62 = v98;
  *(v62 + 16) = v56;
  *(v55 + v61[8]) = v46;
  v63 = (v55 + v61[9]);
  *v63 = sub_2588A916C;
  v63[1] = v59;
  v64 = (v55 + v61[10]);
  *v64 = v60;
  v64[1] = v65;
  v66 = v102;
  sub_2588A5F6C(v101, v102, type metadata accessor for EditHeightCellView);
  v67 = v92;
  v68 = v93;
  v69 = *(v93 + 16);
  v70 = v94;
  v69(v92, v52, v94);
  v71 = v96;
  sub_2588A5F6C(v55, v96, type metadata accessor for EditBloodTypeCellView);
  v72 = v66;
  v73 = v97;
  sub_2588A5F6C(v72, v97, type metadata accessor for EditHeightCellView);
  sub_2588A8644(0);
  v75 = v74;
  v69((v73 + *(v74 + 48)), v67, v70);
  sub_2588A5F6C(v71, v73 + *(v75 + 64), type metadata accessor for EditBloodTypeCellView);
  sub_2588A5FD4(v55, type metadata accessor for EditBloodTypeCellView);
  v76 = *(v68 + 8);
  v76(v100, v70);
  sub_2588A5FD4(v101, type metadata accessor for EditHeightCellView);
  sub_2588A5FD4(v71, type metadata accessor for EditBloodTypeCellView);
  v76(v67, v70);
  return sub_2588A5FD4(v102, type metadata accessor for EditHeightCellView);
}

uint64_t sub_2588A814C(uint64_t a1)
{
  type metadata accessor for MedicalIDEditBiometricsModalView(0);
  sub_2588A63D8(0);
  return sub_2588BBE58();
}

uint64_t sub_2588A81BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27F95D108 != -1)
  {
    swift_once();
  }

  v4 = xmmword_27F969868;
  v5 = (a1 + *(type metadata accessor for MedicalIDEditBiometricsModalView(0) + 60));
  v6 = *v5;
  v7 = v5[1];
  *a2 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
}

uint64_t sub_2588A8264()
{
  v0 = sub_2588BD858();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;
  v2 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = v1;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F9614D0 = result;
  *algn_27F9614D8 = v5;
  return result;
}

uint64_t sub_2588A83B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDEditBiometricsModalView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588A8418()
{
  type metadata accessor for MedicalIDEditBiometricsModalView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2587AE310;

  return sub_2588A68C8();
}

void sub_2588A84E4(uint64_t a1)
{
  if (!qword_27F961528)
  {
    sub_2588A8578(255);
    v3 = v2;
    v4 = sub_2588A87B0(&qword_27F961560, sub_2588A8578, &unk_2588C4D30);
    v6 = type metadata accessor for MedicalIDEditModal(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F961528);
    }
  }
}

void sub_2588A8578(uint64_t a1)
{
  if (!qword_27F961530)
  {
    sub_2588A5E40(255, &qword_27F961538, sub_2588A8644, MEMORY[0x277CE14B8]);
    v3 = v2;
    v4 = sub_2588A87F8();
    v5 = sub_2587D68A0();
    v8[0] = v3;
    v8[1] = &type metadata for MedicalIDEditSectionHeaderView;
    v8[2] = MEMORY[0x277CE1428];
    v8[3] = v4;
    v8[4] = v5;
    v8[5] = MEMORY[0x277CE1410];
    v6 = type metadata accessor for EditingScrollView(a1, v8);
    if (!v7)
    {
      atomic_store(v6, &qword_27F961530);
    }
  }
}

void sub_2588A8644(uint64_t a1)
{
  if (!qword_27F961540)
  {
    type metadata accessor for EditHeightCellView(255);
    sub_2588A86CC(255);
    type metadata accessor for EditBloodTypeCellView(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F961540);
    }
  }
}

void sub_2588A86CC(uint64_t a1)
{
  if (!qword_27F961548)
  {
    type metadata accessor for EditWeightCellView(255);
    sub_2587FC7CC(255, &qword_27F961510, &type metadata for MedicalIDEditBiometricsModalView.TextFieldFocus);
    sub_2588A87B0(&qword_27F961550, type metadata accessor for EditWeightCellView, &unk_2588C4BA4);
    sub_2588A644C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961548);
    }
  }
}

uint64_t sub_2588A87B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2588A87F8()
{
  result = qword_27F961558;
  if (!qword_27F961558)
  {
    sub_2588A5E40(255, &qword_27F961538, sub_2588A8644, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961558);
  }

  return result;
}

uint64_t sub_2588A8880@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDEditBiometricsModalView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2588A76E0(v4, a1);
}

uint64_t sub_2588A88F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDEditBiometricsModalView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2588A81BC(v4, a1);
}

void sub_2588A8960(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258821368(255, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2588A89E0(uint64_t a1, uint64_t a2)
{
  sub_2588A6034(0, &qword_27F95FAF0, MEMORY[0x277CE11F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588A8A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t objectdestroyTm_33()
{
  v34 = type metadata accessor for MedicalIDEditBiometricsModalView(0);
  v35 = *(*(v34 - 1) + 80);
  v1 = v0 + ((v35 + 16) & ~v35);

  v33 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v2 = v1 + v33[5];

  v3 = type metadata accessor for MedicalIDData(0);
  v4 = v3[13];
  v5 = sub_2588BB9B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v8 = v3[14];
  if (!v7(v2 + v8, 1, v5))
  {
    (*(v6 + 8))(v2 + v8, v5);
  }

  v9 = (v2 + v3[18]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_2587C2610(*v9, v10);
  }

  v11 = v3[19];
  v12 = sub_2588BB818();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v2 + v11, 1, v12))
  {
    (*(v13 + 8))(v2 + v11, v12);
  }

  v14 = v3[21];
  if (!v7(v2 + v14, 1, v5))
  {
    (*(v6 + 8))(v2 + v14, v5);
  }

  v15 = v33[6];
  v16 = sub_2588BBAC8();
  v17 = *(*(v16 - 8) + 8);
  v17(v1 + v15, v16);
  v18 = v1 + v33[7];
  v17(v18, v16);

  v19 = v1 + v33[8];
  v17(v19, v16);
  v20 = type metadata accessor for MedicalIDWeightFormatter(0);

  if (*(v1 + v34[5] + 8))
  {
  }

  v21 = v34[6];
  sub_2588A5E40(0, &qword_27F95DB20, MEMORY[0x28220C180], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17(v1 + v21, v16);
  }

  else
  {
  }

  v22 = v34[7];
  sub_2588A5E40(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_2588BC038();
    (*(*(v23 - 8) + 8))(v1 + v22, v23);
  }

  else
  {
  }

  v24 = v1 + v34[12];
  sub_258821310(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v26 = v25;
  v27 = *(v25 - 8);
  if (!(*(v27 + 48))(v24, 1, v25))
  {
    (*(v27 + 8))(v24, v26);
  }

  sub_2588A6034(0, &qword_27F9614E8, MEMORY[0x277CE10B8]);

  v28 = v1 + v34[13];
  sub_258821310(0, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  v30 = v29;
  v31 = *(v29 - 8);
  if (!(*(v31 + 48))(v28, 1, v29))
  {
    (*(v31 + 8))(v28, v30);
  }

  sub_2588A8960(0, &qword_27F961058, MEMORY[0x277CE10B8]);

  return swift_deallocObject();
}

uint64_t MedicalIDNavigationBarView.init(healthStore:medicalIDData:showDateUpdated:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v41 = a1;
  v42 = a4;
  v44 = a5;
  sub_2588A9678(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v38 - v11);
  v46 = a3;
  sub_2588A96AC(a2, &v38 - v11, sub_2588A9678);
  v13 = type metadata accessor for MedicalIDData(0);
  v14 = *(*(v13 - 8) + 48);
  v15 = v14(v12, 1, v13);
  v16 = sub_2588A9678;
  if (v15 == 1)
  {
LABEL_2:
    v39 = 0;
    v17 = 0;
    goto LABEL_9;
  }

  v17 = v12[1];
  v16 = type metadata accessor for MedicalIDData;
  if (v17)
  {
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = *v12 & 0xFFFFFFFFFFFFLL;
    }

    v16 = type metadata accessor for MedicalIDData;
    if (!v18)
    {
      goto LABEL_2;
    }

    v39 = *v12;

    v16 = type metadata accessor for MedicalIDData;
  }

  else
  {
    v39 = 0;
  }

LABEL_9:
  sub_2588ACEFC(v12, v16);
  sub_2587AFFC8(0);
  v40 = &v38;
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A96AC(a2, v10, sub_2588A9678);
  v22 = v14(v10, 1, v13);
  v43 = a2;
  if (v22 == 1)
  {
    sub_2588ACEFC(v10, sub_2588A9678);
    v23 = sub_2588BB9B8();
    (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  }

  else
  {
    sub_2588A96AC(&v10[*(v13 + 84)], v21, sub_2587AFFC8);
    sub_2588ACEFC(v10, type metadata accessor for MedicalIDData);
  }

  v24 = sub_2588BBAC8();
  v38 = &v38;
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v25 + 16);
  v29 = v42;
  v28(v27, v42, v24);
  v30 = type metadata accessor for MedicalIDNavigationBarViewModel(0);
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_healthStore] = v41;
  v32 = &v31[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_displayName];
  *v32 = v39;
  *(v32 + 1) = v17;
  sub_2588A96AC(v21, &v31[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_dateSaved], sub_2587AFFC8);
  v28(&v31[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_locale], v27, v24);
  v45.receiver = v31;
  v45.super_class = v30;
  v33 = objc_msgSendSuper2(&v45, sel_init, v38);
  v34 = *(v25 + 8);
  v34(v29, v24);
  sub_2588ACEFC(v43, sub_2588A9678);
  v34(v27, v24);
  result = sub_2588ACEFC(v21, sub_2587AFFC8);
  v36 = v46;
  v37 = v44;
  *v44 = v33;
  *(v37 + 8) = v36;
  return result;
}

uint64_t sub_2588A96AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t MedicalIDNavigationBarView.body.getter@<X0>(uint64_t a8@<X8>)
{
  v10 = *v8;
  v11 = *(v8 + 8);
  *a8 = sub_2588BC6E8();
  *(a8 + 8) = 0;
  *(a8 + 16) = 1;
  sub_2588ACC3C(0, &qword_27F961578, sub_2588A9A7C, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  return sub_2588A979C(v10, v11, a8 + *(v12 + 44));
}

uint64_t sub_2588A979C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  sub_2588A9B50(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v32[-v10];
  *v11 = sub_2588BC608();
  *(v11 + 1) = 0x4010000000000000;
  v11[16] = 0;
  sub_2588ACC3C(0, &qword_27F961678, sub_2588A9BE4, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
  sub_2588A9E8C(a1, &v11[*(v12 + 44)]);
  if ((v3 & 1) != 0 && (v13 = sub_2587BCA74(a1 + OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_dateSaved), v14))
  {
    v35 = v13;
    v36 = v14;
    sub_25878F648();
    v15 = sub_2588BCDF8();
    v17 = v16;
    v19 = v18;
    v34 = a3;
    sub_2588BCCB8();
    v20 = sub_2588BCDD8();
    v22 = v21;
    v33 = v23;
    v25 = v24;

    sub_2587B1CF8(v15, v17, v19 & 1);
    a3 = v34;

    KeyPath = swift_getKeyPath(aH_8);
    v27 = v33 & 1;
    sub_2587A99B0(v20, v22, v33 & 1);

    v28 = 1;
  }

  else
  {
    v20 = 0;
    v22 = 0;
    v27 = 0;
    v25 = 0;
    KeyPath = 0;
    v28 = 0;
  }

  sub_2588A96AC(v11, v9, sub_2588A9B50);
  sub_2588A96AC(v9, a3, sub_2588A9B50);
  sub_2588A9AB0(0);
  v30 = a3 + *(v29 + 48);
  sub_2588ACCA8(v20, v22, v27, v25);
  sub_2588ACCF8(v20, v22, v27, v25);
  *v30 = v20;
  *(v30 + 8) = v22;
  *(v30 + 16) = v27;
  *(v30 + 24) = v25;
  *(v30 + 32) = KeyPath;
  *(v30 + 40) = v28;
  *(v30 + 48) = 0;
  sub_2588ACEFC(v11, sub_2588A9B50);
  sub_2588ACCF8(v20, v22, v27, v25);
  return sub_2588ACEFC(v9, sub_2588A9B50);
}

void sub_2588A9AB0(uint64_t a1)
{
  if (!qword_27F961588)
  {
    sub_2588A9B50(255);
    sub_2588ACDAC(255, &qword_27F9615D0, sub_2588A9DF8, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F961588);
    }
  }
}

void sub_2588A9B50(uint64_t a1)
{
  if (!qword_27F961590)
  {
    sub_2588A9BE4(255);
    sub_2588ACBF4(&qword_27F9615C8, sub_2588A9BE4, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961590);
    }
  }
}

void sub_2588A9C18(uint64_t a1)
{
  if (!qword_27F9615A0)
  {
    sub_2588A9C80(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9615A0);
    }
  }
}

void sub_2588A9C80(uint64_t a1)
{
  if (!qword_27F9615A8)
  {
    sub_2588A9CE8(255);
    sub_25885987C();
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9615A8);
    }
  }
}

void sub_2588A9CE8(uint64_t a1)
{
  if (!qword_27F9615B0)
  {
    sub_2588A9D68(255);
    sub_258814040(255, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9615B0);
    }
  }
}

void sub_2588A9D68(uint64_t a1)
{
  if (!qword_27F9615B8)
  {
    sub_2588ACDAC(255, &qword_27F9615C0, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9615B8);
    }
  }
}

void sub_2588A9DF8(uint64_t a1)
{
  if (!qword_27F9615D8)
  {
    sub_258814040(255, &qword_27F9603C8, &qword_27F9603D0, MEMORY[0x277D83B88]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9615D8);
    }
  }
}

uint64_t sub_2588A9E8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v65 = a2;
  sub_2587E6128(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2588BCCE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A9C80(0);
  v10 = v9;
  v11 = MEMORY[0x28223BE20](v9);
  v64 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (&v56 - v13);
  v15 = sub_2588BD258();
  sub_2588A9D68(0);
  v17 = v14 + *(v16 + 36);
  sub_2588ACDAC(0, &qword_27F9615C0, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
  v19 = *(v18 + 28);
  v20 = *MEMORY[0x277CE1058];
  v21 = sub_2588BD278();
  (*(*(v21 - 8) + 104))(&v17[v19], v20, v21);
  *v17 = swift_getKeyPath(asc_2588C82D0);
  *v14 = v15;
  v22 = *(v6 + 104);
  v61 = *MEMORY[0x277CE0A58];
  v60 = v22;
  v22(v8);
  v23 = sub_2588BCC18();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v58 = v24 + 56;
  v59 = v25;
  v25(v4, 1, 1, v23);
  sub_2588BCC28();
  v26 = sub_2588BCC48();
  sub_2588ACEFC(v4, sub_2587E6128);
  v27 = *(v6 + 8);
  v28 = v5;
  v63 = v6 + 8;
  v57 = v27;
  v27(v8, v5);
  KeyPath = swift_getKeyPath(byte_2588C8300);
  sub_2588A9CE8(0);
  v31 = (v14 + *(v30 + 36));
  *v31 = KeyPath;
  v31[1] = v26;
  if (qword_27F95D160 != -1)
  {
    swift_once();
  }

  v32 = qword_27F969918;
  *(v14 + *(v10 + 36)) = qword_27F969918;

  v66 = sub_25888D148();
  v67 = v33;
  sub_25878F648();
  v34 = sub_2588BCDF8();
  v36 = v35;
  v62 = v14;
  v38 = v37;
  v60(v8, v61, v28);
  v59(v4, 1, 1, v23);
  sub_2588BCC28();
  sub_2588BCC48();
  sub_2588ACEFC(v4, sub_2587E6128);
  v57(v8, v28);
  v39 = sub_2588BCDD8();
  v41 = v40;
  v43 = v42;

  sub_2587B1CF8(v34, v36, v38 & 1);

  v66 = v32;

  v44 = sub_2588BCD98();
  v46 = v45;
  LOBYTE(v34) = v47;
  v49 = v48;
  sub_2587B1CF8(v39, v41, v43 & 1);

  v50 = v62;
  v51 = v64;
  sub_2588A96AC(v62, v64, sub_2588A9C80);
  v52 = v65;
  sub_2588A96AC(v51, v65, sub_2588A9C80);
  sub_2588A9C18(0);
  v54 = v52 + *(v53 + 48);
  *v54 = v44;
  *(v54 + 8) = v46;
  *(v54 + 16) = v34 & 1;
  *(v54 + 24) = v49;
  sub_2587A99B0(v44, v46, v34 & 1);

  sub_2588ACEFC(v50, sub_2588A9C80);
  sub_2587B1CF8(v44, v46, v34 & 1);

  return sub_2588ACEFC(v51, sub_2588A9C80);
}

uint64_t sub_2588AA444@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for MedicalIDNavigationBarViewModifier(0) + 20);
  v8 = MEMORY[0x28220C150];
  sub_2588ACDAC(0, &qword_27F95DB20, MEMORY[0x28220C150], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_2588ACB0C(v1 + v7, &v15 - v10, &qword_27F95DB20, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2588BBAC8();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    sub_2588BDBE8();
    v14 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2588AA664()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for MedicalIDNavigationBarViewModifier(0) + 36));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2588BDBE8();
    v8 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_2588AA7B4@<X0>(uint64_t a8@<X8>)
{
  v10 = *v8;
  v11 = *(v8 + 8);
  *a8 = sub_2588BC6E8();
  *(a8 + 8) = 0;
  *(a8 + 16) = 1;
  sub_2588ACC3C(0, &qword_27F961578, sub_2588A9A7C, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  return sub_2588A979C(v10, v11, a8 + *(v12 + 44));
}

void sub_2588AA84C(uint64_t a1)
{
  if (!qword_27F9615E8)
  {
    sub_2588A9A7C(255);
    sub_2588ACBF4(&qword_27F9615F0, sub_2588A9A7C, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9615E8);
    }
  }
}

uint64_t type metadata accessor for MedicalIDNavigationBarViewModifier(uint64_t a1)
{
  result = qword_27F9615F8;
  if (!qword_27F9615F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588AA954(uint64_t a1)
{
  sub_2588ACDAC(319, &qword_27F95DAC0, MEMORY[0x28220C150], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2587BC234(319);
    if (v2 <= 0x3F)
    {
      sub_25878E130(319, &qword_27F95D360, 0x277CCD4D8);
      if (v3 <= 0x3F)
      {
        sub_2588ACDAC(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_2588ACDAC(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2588AAAE0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_2588AC6A0(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2588BC828();
  MEMORY[0x28223BE20](v8 - 8);
  sub_2588AC6DC(0);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588AC66C(0);
  v13 = v12;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = *&a1[*(type metadata accessor for MedicalIDNavigationBarViewModifier(0) + 24)];
  if (v19)
  {
    if ([v19 isHostingView])
    {
      (*(v5 + 56))(v16, 1, 1, v4);
      v20 = sub_2588ACBF4(&qword_27F961650, sub_2588AC6DC, MEMORY[0x277CDD7A8]);
      v33 = v31;
      v34 = v20;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x259C8BA00](v16, v4, OpaqueTypeConformance2);
      sub_2588ACB94(v16, sub_2588AC66C);
    }

    else
    {
      v22 = sub_2588BC818();
      v29 = v7;
      MEMORY[0x28223BE20](v22);
      *(&v29 - 2) = a1;
      sub_2588AC744();
      sub_2588BBF88();
      v23 = sub_2588ACBF4(&qword_27F961650, sub_2588AC6DC, MEMORY[0x277CDD7A8]);
      v24 = v29;
      v25 = v31;
      MEMORY[0x259C8B9F0](v11, v31, v23);
      (*(v5 + 16))(v16, v24, v4);
      (*(v5 + 56))(v16, 0, 1, v4);
      v33 = v25;
      v34 = v23;
      v26 = swift_getOpaqueTypeConformance2();
      MEMORY[0x259C8BA00](v16, v4, v26);
      sub_2588ACB94(v16, sub_2588AC66C);
      (*(v5 + 8))(v24, v4);
      (*(v30 + 8))(v11, v25);
    }

    v27 = sub_2588AC798();
    MEMORY[0x259C8B9F0](v18, v13, v27);
    return sub_2588ACB94(v18, sub_2588AC66C);
  }

  else
  {
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_2588AAFA4@<X0>(char *a1@<X0>, char **a2@<X8>)
{
  v53 = a2;
  sub_2587B63B8(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A9678(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v49 = (&v47 - v10);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v52 = *&a1[*(type metadata accessor for MedicalIDNavigationBarViewModifier(0) + 28)];
  v13 = sub_2588AA664();
  swift_getKeyPath(aH_9);
  v57 = v13;
  sub_2588ACBF4(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v14 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2588A96AC(v13 + v14, v5, sub_2587B63B8);

  LoadState<>.loadedValue.getter(v12);
  sub_2588ACEFC(v5, sub_2587B63B8);
  v15 = type metadata accessor for MedicalIDData(0);
  v16 = *(v15 - 8);
  (*(v16 + 56))(v12, 0, 1, v15);
  v17 = *a1;
  v18 = sub_2588BBAC8();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588AA444(v21);
  v56 = v17;
  v54 = v12;
  v22 = v12;
  v23 = v49;
  sub_2588A96AC(v22, v49, sub_2588A9678);
  v24 = *(v16 + 48);
  v25 = v24(v23, 1, v15);
  v26 = sub_2588A9678;
  if (v25 == 1)
  {
    v50 = 0;
    v27 = 0;
    v28 = v51;
  }

  else
  {
    v27 = v23[1];
    v26 = type metadata accessor for MedicalIDData;
    v28 = v51;
    if (v27)
    {
      v29 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v29 = *v23 & 0xFFFFFFFFFFFFLL;
      }

      v26 = type metadata accessor for MedicalIDData;
      if (v29)
      {
        v50 = *v23;

        v26 = type metadata accessor for MedicalIDData;
      }

      else
      {
        v50 = 0;
        v27 = 0;
      }
    }

    else
    {
      v50 = 0;
    }
  }

  sub_2588ACEFC(v23, v26);
  sub_2587AFFC8(0);
  v51 = &v47;
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A96AC(v54, v28, sub_2588A9678);
  if (v24(v28, 1, v15) == 1)
  {
    sub_2588ACEFC(v28, sub_2588A9678);
    v33 = sub_2588BB9B8();
    v34 = (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
  }

  else
  {
    sub_2588A96AC(v28 + *(v15 + 84), v32, sub_2587AFFC8);
    v34 = sub_2588ACEFC(v28, type metadata accessor for MedicalIDData);
  }

  v49 = &v47;
  MEMORY[0x28223BE20](v34);
  v35 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v19[2];
  v36(v35, v35, v18);
  v37 = type metadata accessor for MedicalIDNavigationBarViewModel(0);
  v38 = objc_allocWithZone(v37);
  v48 = v21;
  v39 = v52;
  *&v38[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_healthStore] = v52;
  v40 = &v38[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_displayName];
  *v40 = v50;
  *(v40 + 1) = v27;
  sub_2588A96AC(v32, &v38[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_dateSaved], sub_2587AFFC8);
  v36(&v38[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_locale], v35, v18);
  v55.receiver = v38;
  v55.super_class = v37;
  v41 = v39;
  v42 = objc_msgSendSuper2(&v55, sel_init);
  v43 = v19[1];
  v43(v35, v18);
  sub_2588ACEFC(v32, sub_2587AFFC8);
  v43(v48, v18);
  result = sub_2588ACEFC(v54, sub_2588A9678);
  v45 = v56;
  v46 = v53;
  *v53 = v42;
  *(v46 + 8) = v45;
  return result;
}

uint64_t sub_2588AB63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_25885251C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2588BC828();
  MEMORY[0x28223BE20](v8 - 8);
  sub_25883A41C(0);
  v10 = v9;
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588AC880(0);
  v29 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = *(a1 + *(type metadata accessor for MedicalIDNavigationBarViewModifier(0) + 24));
  if (v19)
  {
    if (([v19 isHostingView] & 1) != 0 || !objc_msgSend(v19, sel_shouldShowDoneButton))
    {
      (*(v5 + 56))(v16, 1, 1, v4);
      v23 = sub_2588ACBF4(&qword_27F960048, sub_25883A41C, MEMORY[0x277CDD7A8]);
      v31 = v10;
      v32 = v23;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x259C8BA00](v16, v4, OpaqueTypeConformance2);
      sub_2588ACB94(v16, sub_2588AC880);
    }

    else
    {
      v20 = sub_2588BC808();
      v27 = &v27;
      MEMORY[0x28223BE20](v20);
      *(&v27 - 2) = a1;
      sub_2588BD728();
      sub_2588ACBF4(&qword_27F95FAD0, MEMORY[0x277D12688], MEMORY[0x277D12678]);
      sub_2588BBF88();
      v21 = sub_2588ACBF4(&qword_27F960048, sub_25883A41C, MEMORY[0x277CDD7A8]);
      MEMORY[0x259C8B9F0](v12, v10, v21);
      (*(v5 + 16))(v16, v7, v4);
      (*(v5 + 56))(v16, 0, 1, v4);
      v31 = v10;
      v32 = v21;
      v22 = swift_getOpaqueTypeConformance2();
      MEMORY[0x259C8BA00](v16, v4, v22);
      sub_2588ACB94(v16, sub_2588AC880);
      (*(v5 + 8))(v7, v4);
      (*(v28 + 8))(v12, v10);
    }

    v25 = sub_2588AC968();
    MEMORY[0x259C8B9F0](v18, v29, v25);
    return sub_2588ACB94(v18, sub_2588AC880);
  }

  else
  {
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_2588ABB40(uint64_t a1)
{
  v2 = type metadata accessor for MedicalIDNavigationBarViewModifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588A96AC(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDNavigationBarViewModifier);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2588ACA48(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_2588BD718();
}

uint64_t sub_2588ABC58(uint64_t a1)
{
  v17 = sub_2588BC598();
  v2 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CDD848];
  sub_2588ACDAC(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = sub_2588BC038();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MedicalIDNavigationBarViewModifier(0);
  sub_2588ACB0C(a1 + *(v13 + 32), v8, &qword_27F95DB30, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_2588BDBE8();
    v14 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v17);
  }

  sub_2588BC028();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2588ABF04@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_2588BC5E8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588AC328(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588AC470(0);
  v11 = *(v10 - 8);
  v31 = v10;
  v32 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v4, *MEMORY[0x277CDDDC0], v1);
  sub_2588AC3DC(0);
  v15 = v14;
  v16 = sub_2588ACBF4(&qword_27F961618, sub_2588AC3DC, MEMORY[0x277CE04B0]);
  sub_2588BD008();
  (*(v2 + 8))(v4, v1);
  v17 = v30;
  v35 = v30;
  sub_2588AC5DC(0, &qword_27F961628, sub_2588AC66C, sub_2588AC798);
  v19 = v18;
  v36 = v15;
  v37 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2588AC66C(255);
  v22 = v21;
  v23 = sub_2588AC798();
  v36 = v22;
  v37 = v23;
  v24 = swift_getOpaqueTypeConformance2();
  sub_2588BD0B8();
  (*(v7 + 8))(v9, v6);
  v34 = v17;
  sub_2588AC5DC(0, &qword_27F961660, sub_2588AC880, sub_2588AC968);
  v36 = v6;
  v37 = v19;
  v38 = OpaqueTypeConformance2;
  v39 = v24;
  swift_getOpaqueTypeConformance2();
  sub_2588AC880(255);
  v26 = v25;
  v27 = sub_2588AC968();
  v36 = v26;
  v37 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v31;
  sub_2588BD0B8();
  return (*(v32 + 8))(v13, v28);
}

void sub_2588AC328(uint64_t a1)
{
  if (!qword_27F961608)
  {
    sub_2588AC3DC(255);
    sub_2588ACBF4(&qword_27F961618, sub_2588AC3DC, MEMORY[0x277CE04B0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961608);
    }
  }
}

void sub_2588AC3DC(uint64_t a1)
{
  if (!qword_27F961610)
  {
    type metadata accessor for MedicalIDNavigationBarViewModifier(255);
    sub_2588ACBF4(&qword_27F95DB60, type metadata accessor for MedicalIDNavigationBarViewModifier, &unk_2588C8224);
    v1 = sub_2588BC8B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961610);
    }
  }
}

void sub_2588AC470(uint64_t a1)
{
  if (!qword_27F961620)
  {
    sub_2588AC328(255);
    sub_2588AC5DC(255, &qword_27F961628, sub_2588AC66C, sub_2588AC798);
    sub_2588AC3DC(255);
    sub_2588ACBF4(&qword_27F961618, sub_2588AC3DC, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    sub_2588AC66C(255);
    sub_2588AC798();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961620);
    }
  }
}

void sub_2588AC5DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_2588AC6DC(uint64_t a1)
{
  if (!qword_27F961640)
  {
    sub_2588AC744();
    v1 = sub_2588BBF98();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961640);
    }
  }
}

unint64_t sub_2588AC744()
{
  result = qword_27F961648;
  if (!qword_27F961648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961648);
  }

  return result;
}

unint64_t sub_2588AC798()
{
  result = qword_27F961658;
  if (!qword_27F961658)
  {
    sub_2588AC66C(255);
    sub_2588AC6DC(255);
    sub_2588ACBF4(&qword_27F961650, sub_2588AC6DC, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961658);
  }

  return result;
}

void sub_2588AC8B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2588ACBF4(a4, a5, MEMORY[0x277CDD7A8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_2588AC968()
{
  result = qword_27F961670;
  if (!qword_27F961670)
  {
    sub_2588AC880(255);
    sub_25883A41C(255);
    sub_2588ACBF4(&qword_27F960048, sub_25883A41C, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961670);
  }

  return result;
}

uint64_t sub_2588ACA48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDNavigationBarViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588ACAAC()
{
  v1 = *(type metadata accessor for MedicalIDNavigationBarViewModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2588ABC58(v2);
}

uint64_t sub_2588ACB0C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2588ACDAC(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2588ACB94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2588ACBF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2588ACC3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_2588BC0B8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2588ACCA8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2587A99B0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2588ACCF8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2587B1CF8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2588ACD48@<X0>(uint64_t a1@<X8>)
{
  result = sub_2588BC548();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_2588ACDAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2588ACE34(uint64_t a1)
{
  v2 = sub_2588BD278();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2588BC388();
}

uint64_t sub_2588ACEFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2588ACF5C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for MedicalIDEditableEmergencyContactsModel(0);
  sub_2588B174C(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel, &protocol conformance descriptor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BD548();
  v5 = type metadata accessor for AddEmergencyContactView(0);
  *(a3 + v5[5]) = a2;
  v6 = (a3 + v5[6]);
  type metadata accessor for AddEmergencyContactFlowViewModel(0);
  v7 = swift_allocObject();
  *(v7 + 16) = 2;
  sub_25880088C(v16);
  v8 = v16[5];
  *(v7 + 88) = v16[4];
  *(v7 + 104) = v8;
  v9 = v16[7];
  *(v7 + 120) = v16[6];
  *(v7 + 136) = v9;
  v10 = v16[1];
  *(v7 + 24) = v16[0];
  *(v7 + 40) = v10;
  v11 = v16[3];
  *(v7 + 56) = v16[2];
  *(v7 + 72) = v11;
  *(v7 + 152) = 0;
  *(v7 + 154) = 0;
  *(v7 + 160) = 0;
  *(v7 + 168) = 0;
  sub_2588BBBC8();
  sub_2588BD2B8();
  *v6 = v14;
  v6[1] = v15;
  v12 = a3 + v5[7];
  result = swift_getKeyPath(byte_2588C8350);
  *v12 = result;
  *(v12 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for AddEmergencyContactView(uint64_t a1)
{
  result = qword_27F961680;
  if (!qword_27F961680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588AD108(uint64_t a1@<X8>)
{
  v113 = a1;
  v2 = sub_2588BC598();
  v95 = *(v2 - 8);
  v96 = v2;
  MEMORY[0x28223BE20](v2);
  v94 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for AddEmergencyContactView(0);
  v4 = *(v117 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v117);
  sub_2588B0574(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B091C(0, &qword_27F9616E8, sub_2588B0574, MEMORY[0x277CDE470]);
  *&v98[16] = v11;
  MEMORY[0x28223BE20](v11);
  v119 = &v94 - v12;
  sub_2588B0990(0);
  v99 = *(v13 - 8);
  v100 = v13;
  MEMORY[0x28223BE20](v13);
  v115 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B0BC4(0);
  *&v102 = *(v15 - 8);
  *(&v102 + 1) = v15;
  MEMORY[0x28223BE20](v15);
  v101 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B0D3C(0);
  v103 = *(v17 - 8);
  v104 = v17;
  MEMORY[0x28223BE20](v17);
  v116 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B0FC8();
  v106 = *(v19 - 8);
  v107 = v19;
  MEMORY[0x28223BE20](v19);
  v105 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B1270();
  v109 = *(v21 - 8);
  v110 = v21;
  MEMORY[0x28223BE20](v21);
  v108 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B158C(0, &qword_27F961740, sub_2588B1270, MEMORY[0x277CDF910]);
  v111 = v23;
  MEMORY[0x28223BE20](v23);
  v112 = &v94 - v24;
  sub_2588B15F0(v1, &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v4 + 80);
  v26 = (v25 + 16) & ~v25;
  v124 = v26 + v5;
  v125 = v25;
  v27 = swift_allocObject();
  v126 = v26;
  v118 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B1660(v118, v27 + v26);
  sub_2588B158C(0, &qword_27F9616A0, sub_2588B05FC, MEMORY[0x277CDF928]);
  sub_2588B0848();
  sub_2588BD318();
  sub_2588B185C(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2588BFF50;
  sub_2588B04F0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v29 = v1;
  sub_2588BD528();
  v31 = *(v150 + 32);
  v30 = *(v150 + 40);

  *(v28 + 32) = v31;
  *(v28 + 40) = v30;
  *(v28 + 48) = 6579265;
  *(v28 + 56) = 0xE300000000000000;
  v32 = sub_2588BD9A8();

  v33 = HKUIJoinStringsForAutomationIdentifier();

  if (v33)
  {
    sub_2588BD8A8();

    sub_2588B174C(&qword_27F961700, sub_2588B0574, MEMORY[0x277CDF028]);
    v34 = v119;
    sub_2588BCFB8();

    (*(v8 + 8))(v10, v7);
    v35 = (v29 + *(v117 + 24));
    v120 = v29;
    v36 = *v35;
    v122 = v35[1];
    v123 = v36;
    *&v142 = v36;
    *(&v142 + 1) = v122;
    sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
    v121 = v37;
    sub_2588BD2E8();
    v38 = v150;
    v39 = v151;
    swift_getKeyPath(byte_2588C83E8);
    v150 = v38;
    *&v151 = v39;
    sub_2588B04F0(0, &qword_27F95EAB8, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE11F8]);
    v114 = v40;
    sub_2588BD448();

    v41 = v29;
    v42 = v118;
    sub_2588B15F0(v41, v118);
    v43 = swift_allocObject();
    sub_2588B1660(v42, v43 + v126);
    *v98 = sub_2588B0A60();
    *&v98[8] = sub_2588B0B70();
    v44 = *&v98[16];
    sub_2588BD068();

    sub_2588B1FE8(v34, &qword_27F9616E8, sub_2588B0574, MEMORY[0x277CDE470], sub_2588B091C);
    *&v150 = v123;
    *(&v150 + 1) = v122;
    sub_2588BD2C8();
    v45 = v142;
    swift_getKeyPath(byte_2588C8410);
    *&v150 = v45;
    v119 = sub_2588B174C(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel, &protocol conformance descriptor for AddEmergencyContactFlowViewModel);
    sub_2588BBB98();

    swift_beginAccess();
    v46 = *(v45 + 104);
    v146 = *(v45 + 88);
    v147 = v46;
    v47 = *(v45 + 136);
    v148 = *(v45 + 120);
    v149 = v47;
    v48 = *(v45 + 40);
    v142 = *(v45 + 24);
    v143 = v48;
    v49 = *(v45 + 72);
    v144 = *(v45 + 56);
    v145 = v49;
    v50 = MEMORY[0x277D83D88];
    sub_2588B1F74(&v142, &v150, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83D88], sub_2588B185C);

    v138 = v146;
    v139 = v147;
    v140 = v148;
    v141 = v149;
    v134 = v142;
    v135 = v143;
    v136 = v144;
    v137 = v145;
    sub_2588B15F0(v120, v42);
    v51 = swift_allocObject();
    sub_2588B1660(v42, v51 + v126);
    sub_2588B185C(0, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, v50);
    v97 = v52;
    *&v150 = v44;
    *(&v150 + 1) = &type metadata for EmergencyContactPickerSheetView;
    v151 = *v98;
    *&v98[8] = swift_getOpaqueTypeConformance2();
    *&v98[16] = sub_2588B0F3C(&qword_27F961718, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, sub_2587913CC);
    v53 = v100;
    v54 = v101;
    v55 = v115;
    sub_2588BD118();

    v154 = v138;
    v155 = v139;
    v156 = v140;
    v157 = v141;
    v150 = v134;
    v151 = v135;
    v152 = v136;
    v153 = v137;
    sub_2588B1FE8(&v150, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, v50, sub_2588B185C);
    (*(v99 + 8))(v55, v53);
    v57 = v122;
    v56 = v123;
    *&v134 = v123;
    *(&v134 + 1) = v122;
    sub_2588BD2C8();
    v58 = v133;
    swift_getKeyPath(aH_10);
    *&v134 = v58;
    sub_2588BBB98();

    swift_beginAccess();
    LOBYTE(v55) = *(v58 + 16);

    LOBYTE(v132) = v55;
    sub_2588B15F0(v120, v42);
    v59 = swift_allocObject();
    sub_2588B1660(v42, v59 + v126);
    sub_2588B185C(0, &qword_27F960998, &type metadata for EmergencyContactPickerError, v50);
    v61 = v60;
    *&v134 = v53;
    *(&v134 + 1) = v97;
    v135 = *&v98[8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v63 = sub_2588B0F3C(&qword_27F961728, &qword_27F960998, &type metadata for EmergencyContactPickerError, sub_2587DF370);
    v64 = *(&v102 + 1);
    v115 = v61;
    v99 = v63;
    v100 = OpaqueTypeConformance2;
    sub_2588BD118();

    (*(v102 + 8))(v54, v64);
    *&v134 = v56;
    *(&v134 + 1) = v57;
    sub_2588BD2C8();
    v65 = v132;
    swift_getKeyPath(aH_10);
    *&v134 = v65;
    sub_2588BBB98();

    swift_beginAccess();
    v66 = *(v65 + 16);

    if (v66 == 2)
    {
      v67 = 0;
      v68 = 0xE000000000000000;
    }

    else
    {
      LOBYTE(v128) = v66 & 1;
      sub_258870590(&v134);
      v68 = *(&v134 + 1);
      v67 = v134;
    }

    v130 = v67;
    v131 = v68;
    *&v128 = v123;
    *(&v128 + 1) = v122;
    sub_2588BD2E8();
    v69 = v134;
    v70 = v135;
    swift_getKeyPath(aH_11);
    v128 = v69;
    v129 = v70;
    sub_2588BD448();

    *&v98[16] = v127;

    *&v98[8] = &v94;
    v72 = MEMORY[0x28223BE20](v71);
    v73 = v120;
    MEMORY[0x28223BE20](v72);
    v101 = sub_2588BD748();
    *&v134 = v64;
    *(&v134 + 1) = v115;
    *&v135 = v100;
    *(&v135 + 1) = v99;
    *&v102 = swift_getOpaqueTypeConformance2();
    *(&v102 + 1) = sub_25878F648();
    v115 = sub_2588B174C(&qword_27F95E458, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
    v74 = v104;
    v75 = v105;
    v76 = v116;
    sub_2588BD038();

    (*(v103 + 8))(v76, v74);
    *&v128 = v123;
    *(&v128 + 1) = v122;
    sub_2588BD2E8();
    v77 = v134;
    v78 = v135;
    swift_getKeyPath(asc_2588C8488);
    v128 = v77;
    v129 = v78;
    sub_2588BD448();

    v79 = v118;
    sub_2588B15F0(v73, v118);
    v80 = swift_allocObject();
    sub_2588B1660(v79, v80 + v126);
    type metadata accessor for RelationshipPickerView(0);
    *&v134 = v74;
    *(&v134 + 1) = MEMORY[0x277D837D0];
    *&v135 = v101;
    *(&v135 + 1) = MEMORY[0x277CE0BD8];
    v136 = v102;
    *&v137 = v115;
    *(&v137 + 1) = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_2588B174C(&qword_27F95E9B0, type metadata accessor for RelationshipPickerView, &unk_2588C85C0);
    v81 = v107;
    v82 = v108;
    sub_2588BD068();

    v83 = v73;

    (*(v106 + 8))(v75, v81);
    v84 = v73 + *(v117 + 28);
    v85 = *v84;
    if (*(v84 + 8) != 1)
    {

      sub_2588BDBE8();
      v86 = sub_2588BCB58();
      sub_2588BBC68();

      v87 = v94;
      sub_2588BC588();
      swift_getAtKeyPath();
      sub_2588B1654(v85, 0);
      (*(v95 + 8))(v87, v96);
      LOBYTE(v85) = v134;
    }

    if (v85)
    {
      v88 = 1.0;
    }

    else
    {
      v88 = 0.6;
    }

    v89 = v112;
    (*(v109 + 32))(v112, v82, v110);
    *(v89 + *(v111 + 36)) = v88;
    *&v134 = v123;
    *(&v134 + 1) = v122;
    sub_2588BD2C8();
    v90 = v128;
    swift_getKeyPath(asc_2588C84B0);
    *&v134 = v90;
    sub_2588BBB98();

    swift_beginAccess();
    v91 = *(v90 + 160);
    v92 = *(v90 + 168);

    *&v128 = v91;
    *(&v128 + 1) = v92;
    sub_2588B15F0(v83, v79);
    v93 = swift_allocObject();
    sub_2588B1660(v79, v93 + v126);
    sub_2588B185C(0, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_2588B18AC();
    sub_2588B1C10();
    sub_2588BD118();

    sub_2587A53D0(v89);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2588AE560(uint64_t a1)
{
  sub_2588B04F0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  swift_getKeyPath(byte_2588C84D8);
  sub_2588B174C(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel, &protocol conformance descriptor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  swift_beginAccess();
  v2 = *(*&v19[0] + 16);

  v3 = *(v2 + 16);

  if (HKMedicalIDEmergencyContactsIsUnderLimit(v3))
  {
    type metadata accessor for AddEmergencyContactFlowViewModel(0);
    v4 = swift_allocObject();
    *(v4 + 16) = 2;
    sub_25880088C(v19);
    v5 = v19[5];
    *(v4 + 88) = v19[4];
    *(v4 + 104) = v5;
    v6 = v19[7];
    *(v4 + 120) = v19[6];
    *(v4 + 136) = v6;
    v7 = v19[1];
    *(v4 + 24) = v19[0];
    *(v4 + 40) = v7;
    v8 = v19[3];
    *(v4 + 56) = v19[2];
    *(v4 + 72) = v8;
    *(v4 + 152) = 0;
    *(v4 + 154) = 0;
    *(v4 + 160) = 0;
    *(v4 + 168) = 0;
    sub_2588BBBC8();
    v9 = (a1 + *(type metadata accessor for AddEmergencyContactView(0) + 24));
    v10 = *v9;
    v11 = v9[1];
    sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
    sub_2588BD2D8();
    sub_2588BD2C8();
    swift_beginAccess();
    if (*(v4 + 152) != 1)
    {
      KeyPath = swift_getKeyPath(byte_2588C83E8, v10, v11);
      MEMORY[0x28223BE20](KeyPath);
      sub_2588B174C(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel, &protocol conformance descriptor for AddEmergencyContactFlowViewModel);
      sub_2588BBB88();
    }

    *(v4 + 152) = 1;
  }

  else
  {
    v12 = (a1 + *(type metadata accessor for AddEmergencyContactView(0) + 24));
    v14 = *v12;
    v13 = v12[1];
    *&v19[0] = v14;
    *(&v19[0] + 1) = v13;
    sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
    sub_2588BD2C8();
    swift_beginAccess();
    if (sub_2587DF874(*(v18 + 16), 0))
    {
      v15 = swift_getKeyPath(aH_10);
      MEMORY[0x28223BE20](v15);
      sub_2588B174C(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel, &protocol conformance descriptor for AddEmergencyContactFlowViewModel);
      sub_2588BBB88();
    }

    *(v18 + 16) = 0;
  }
}

void sub_2588AE9DC(uint64_t a2@<X8>)
{
  *a2 = sub_2588BC608();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  sub_2588B1EDC(0);
  sub_2588AEA94(a2 + *(v3 + 44));
  v4 = sub_2588BCBB8();
  sub_2588BBE38();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_2588B158C(0, &qword_27F9616A0, sub_2588B05FC, MEMORY[0x277CDF928]);
  v14 = a2 + *(v13 + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
}

uint64_t sub_2588AEA94@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  sub_2588B091C(0, &qword_27F9616C0, sub_2588B0728, sub_25885987C);
  v2 = v1 - 8;
  v3 = MEMORY[0x28223BE20](v1);
  v43 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v6 = &v40[-v5];
  v7 = sub_2588BD258();
  v8 = sub_2588BCC08();
  KeyPath = swift_getKeyPath(byte_2588C8530);
  sub_2588B0728(0);
  v11 = v6 + *(v10 + 36);
  sub_2588B04F0(0, &qword_27F9615C0, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
  v13 = *(v12 + 28);
  v14 = *MEMORY[0x277CE1048];
  v15 = sub_2588BD278();
  (*(*(v15 - 8) + 104))(&v11[v13], v14, v15);
  *v11 = swift_getKeyPath("x\r\n'");
  *v6 = v7;
  v6[1] = KeyPath;
  v6[2] = v8;
  *(v6 + *(v2 + 44)) = sub_2588BD1A8();
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v16 = qword_27F95DA88;
  v17 = sub_2588BCDE8();
  v19 = v18;
  v21 = v20;
  v44 = sub_2588BD1D8();
  v22 = sub_2588BCD98();
  v24 = v23;
  v26 = v25;
  sub_2587B1CF8(v17, v19, v21 & 1);

  sub_2588BCC08();
  v27 = sub_2588BCDD8();
  v29 = v28;
  v41 = v30;
  v32 = v31;

  sub_2587B1CF8(v22, v24, v26 & 1);

  v33 = v43;
  sub_2588B1F74(v6, v43, &qword_27F9616C0, sub_2588B0728, sub_25885987C, sub_2588B091C);
  v34 = v42;
  sub_2588B1F74(v33, v42, &qword_27F9616C0, sub_2588B0728, sub_25885987C, sub_2588B091C);
  sub_2588B0690(0);
  v36 = v34 + *(v35 + 48);
  *v36 = v27;
  *(v36 + 8) = v29;
  v37 = v41;
  v38 = v41 & 1;
  *(v36 + 16) = v41 & 1;
  *(v36 + 24) = v32;
  sub_2587A99B0(v27, v29, v37 & 1);

  sub_2588B1FE8(v6, &qword_27F9616C0, sub_2588B0728, sub_25885987C, sub_2588B091C);
  sub_2587B1CF8(v27, v29, v38);

  return sub_2588B1FE8(v33, &qword_27F9616C0, sub_2588B0728, sub_25885987C, sub_2588B091C);
}

__n128 sub_2588AEEEC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2588B04F0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  v12 = sub_2587C62DC();

  sub_2588BD528();
  v11 = *(v14 + 24);

  v4 = type metadata accessor for AddEmergencyContactView(0);
  v5 = *(a1 + *(v4 + 20));
  v6 = (a1 + *(v4 + 24));
  v7 = *v6;
  v9 = v6[1];
  sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
  v10 = v5;
  sub_2588BD2E8();
  swift_getKeyPath(byte_2588C8410);
  sub_2588B04F0(0, &qword_27F95EAB8, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  sub_2588BD2E8();
  swift_getKeyPath(aH_10);
  sub_2588BD448();

  *(a2 + 104) = v19;
  *(a2 + 120) = v20;
  *(a2 + 136) = v21;
  *(a2 + 152) = v22;
  *(a2 + 40) = v15;
  result = v16;
  *(a2 + 56) = v16;
  *(a2 + 72) = v17;
  *(a2 + 88) = v18;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v10;
  *(a2 + 24) = v14;
  *(a2 + 168) = v7;
  *(a2 + 176) = v9;
  *(a2 + 184) = v13;
  return result;
}

uint64_t sub_2588AF1B4(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for AddEmergencyContactView(0) + 24) + 8);
  sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v2 = v10;
  *(&v18[0] + 1) = v1;
  sub_2588BD2C8();
  swift_getKeyPath(byte_2588C8410);
  *&v18[0] = v10;
  sub_2588B174C(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel, &protocol conformance descriptor for AddEmergencyContactFlowViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v3 = *(v10 + 104);
  v14 = *(v10 + 88);
  v15 = v3;
  v4 = *(v10 + 136);
  v16 = *(v10 + 120);
  v17 = v4;
  v5 = *(v10 + 40);
  v10 = *(v10 + 24);
  v11 = v5;
  v6 = *(*&v18[0] + 72);
  v12 = *(*&v18[0] + 56);
  v13 = v6;
  sub_2588B1F74(&v10, v18, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83D88], sub_2588B185C);

  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[7] = v17;
  v18[0] = v10;
  v18[1] = v11;
  v18[2] = v12;
  v18[3] = v13;
  v7 = sub_2587DF798(v18);
  if (v7 != 1)
  {
    sub_2588B1FE8(&v10, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83D88], sub_2588B185C);
  }

  swift_beginAccess();
  if (((v7 != 1) ^ *(v2 + 154)))
  {
    KeyPath = swift_getKeyPath(asc_2588C8488);
    MEMORY[0x28223BE20](KeyPath);
    sub_2588BBB88();
  }

  else
  {
    *(v2 + 154) = v7 != 1;
  }
}

uint64_t sub_2588AF4BC(uint64_t a1)
{
  type metadata accessor for AddEmergencyContactView(0);
  sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_2588BD2C8();
  swift_getKeyPath(aH_10);
  sub_2588B174C(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel, &protocol conformance descriptor for AddEmergencyContactFlowViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v1 = *(v4 + 16);

  swift_beginAccess();
  if (((v1 != 2) ^ *(v4 + 153)))
  {
    KeyPath = swift_getKeyPath(aH_11);
    MEMORY[0x28223BE20](KeyPath);
    sub_2588BBB88();
  }

  else
  {
    *(v4 + 153) = v1 != 2;
  }
}

uint64_t sub_2588AF6D0(uint64_t a1)
{
  v2 = type metadata accessor for AddEmergencyContactView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588B15F0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2588B1660(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_2588BD718();
}

uint64_t sub_2588AF7D4(uint64_t a1)
{
  type metadata accessor for AddEmergencyContactView(0);
  sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  swift_beginAccess();
  if (*(v4 + 153))
  {
    KeyPath = swift_getKeyPath(aH_11);
    MEMORY[0x28223BE20](KeyPath);
    sub_2588B174C(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel, &protocol conformance descriptor for AddEmergencyContactFlowViewModel);
    sub_2588BBB88();
  }

  else
  {
    *(v4 + 153) = 0;
  }

  sub_2588BD2C8();
  swift_beginAccess();
  if (sub_2587DF874(*(v5 + 16), 2u))
  {
    v2 = swift_getKeyPath(aH_10);
    MEMORY[0x28223BE20](v2);
    sub_2588B174C(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel, &protocol conformance descriptor for AddEmergencyContactFlowViewModel);
    sub_2588BBB88();
  }

  else
  {
    *(v5 + 16) = 2;
  }
}

uint64_t sub_2588AFA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AddEmergencyContactView(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v13 = v5;
  v14 = v4;
  sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  swift_getKeyPath(aH_10, v13, v14);
  v13 = v18;
  sub_2588B174C(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel, &protocol conformance descriptor for AddEmergencyContactFlowViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v6 = *(v18 + 16);

  if (v6 == 2)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    v17 = v6 & 1;
    sub_258870590(&v13);
    v7 = v15;
    v8 = v16;
  }

  v13 = v7;
  v14 = v8;
  sub_25878F648();
  result = sub_2588BCDF8();
  *a2 = result;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  return result;
}

__n128 sub_2588AFC20@<Q0>(void *a2@<X8>)
{
  v3 = [objc_allocWithZone(MIUIRelationshipPickerDataSource) init];
  type metadata accessor for AddEmergencyContactView(0);
  sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  swift_getKeyPath(asc_2588C84B0);
  sub_2588B04F0(0, &qword_27F95EAB8, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  sub_2588B04F0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  v5 = *(v11 + 32);
  v4 = *(v11 + 40);

  v6 = type metadata accessor for RelationshipPickerView(0);
  v7 = v6[6];
  *(a2 + v7) = swift_getKeyPath(byte_2588C8500);
  sub_2588B04F0(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v8 = a2 + v6[8];
  sub_2588B185C(0, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  sub_2588BD2B8();
  *v8 = v11;
  *(v8 + 2) = v12;
  *a2 = v3;
  v9 = a2 + v6[7];
  result = v13;
  *v9 = v13;
  *(v9 + 2) = v14;
  *(v9 + 3) = v15;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_2588AFEA8(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for AddEmergencyContactView(0) + 24) + 8);
  *(&v56 + 1) = v1;
  sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  swift_getKeyPath(byte_2588C8410);
  *&v56 = v48;
  sub_2588B174C(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel, &protocol conformance descriptor for AddEmergencyContactFlowViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v2 = *(v48 + 104);
  v52 = *(v48 + 88);
  v53 = v2;
  v3 = *(v48 + 136);
  v54 = *(v48 + 120);
  v55 = v3;
  v4 = *(v48 + 40);
  v48 = *(v48 + 24);
  v49 = v4;
  v5 = *(v56 + 72);
  v50 = *(v56 + 56);
  v51 = v5;
  sub_2588B1F74(&v48, &v56, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83D88], sub_2588B185C);

  v60 = v52;
  v61 = v53;
  v62 = v54;
  v63 = v55;
  v56 = v48;
  v57 = v49;
  v58 = v50;
  v59 = v51;
  result = sub_2587DF798(&v56);
  if (result != 1)
  {
    v45 = v58;
    v46 = v59;
    v47 = v60;
    v43 = v56;
    v44 = v57;
    v7 = v61;
    v41 = v62;
    v42 = v63;
    *(&v33 + 1) = v1;
    sub_2588BD2C8();
    swift_getKeyPath(asc_2588C84B0);
    *&v33 = v24;
    sub_2588BBB98();

    swift_beginAccess();
    v9 = *(v24 + 160);
    v8 = *(v24 + 168);

    if (v8)
    {

      sub_2588B04F0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
      sub_2588BD528();
      v10 = v33;
      v26 = v45;
      v27 = v46;
      v28 = v47;
      v24 = v43;
      v25 = v44;
      v31 = v41;
      v32 = v42;
      v11 = sub_2587D294C();
      MedicalIDEmergencyContact.init(hkEmergencyContact:contact:)(v11, 0, &v33);
      swift_getKeyPath(byte_2588C84D8, v24, v25, v26, v27, v28, v9, v8, v31, v32);
      sub_2588B174C(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel, &protocol conformance descriptor for MedicalIDEditableEmergencyContactsModel);
      sub_2588BBB98();

      swift_getKeyPath(byte_2588C84D8, v10);
      sub_2588BBBB8();

      swift_beginAccess();
      v12 = *(v10 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + 16) = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_2587F0300(0, *(v12 + 2) + 1, 1, v12);
        *(v10 + 16) = v12;
      }

      v15 = *(v12 + 2);
      v14 = *(v12 + 3);
      if (v15 >= v14 >> 1)
      {
        v12 = sub_2587F0300((v14 > 1), v15 + 1, 1, v12);
      }

      *(v12 + 2) = v15 + 1;
      v16 = &v12[128 * v15];
      v17 = v33;
      v18 = v34;
      v19 = v36;
      *(v16 + 4) = v35;
      *(v16 + 5) = v19;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
      v20 = v37;
      v21 = v38;
      v22 = v40;
      *(v16 + 8) = v39;
      *(v16 + 9) = v22;
      *(v16 + 6) = v20;
      *(v16 + 7) = v21;
      *(v10 + 16) = v12;
      swift_endAccess();
      swift_getKeyPath(byte_2588C84D8, v10);
      sub_2588BBBA8();

      v26 = v45;
      v27 = v46;
      v28 = v47;
      v24 = v43;
      v25 = v44;
      v29 = v9;
      v30 = v8;
      v31 = v41;
      v32 = v42;
      v23 = &v24;
    }

    else
    {
      v35 = v45;
      v36 = v46;
      v37 = v47;
      v33 = v43;
      v34 = v44;
      v38 = v7;
      v39 = v41;
      v40 = v42;
      v23 = &v33;
    }

    return sub_2587C66FC(v23);
  }

  return result;
}

void sub_2588B03B8(uint64_t a1)
{
  sub_2588B04F0(319, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_2587C87A8();
    if (v2 <= 0x3F)
    {
      sub_2588B04F0(319, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_2588B185C(319, &qword_27F961690, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2588B04F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2588B0574(uint64_t a1)
{
  if (!qword_27F961698)
  {
    sub_2588B158C(255, &qword_27F9616A0, sub_2588B05FC, MEMORY[0x277CDF928]);
    sub_2588B0848();
    v1 = sub_2588BD348();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961698);
    }
  }
}

void sub_2588B05FC(uint64_t a1)
{
  if (!qword_27F9616A8)
  {
    sub_2588B04F0(255, &qword_27F9616B0, sub_2588B0690, MEMORY[0x277CE14B8]);
    sub_2588B07C0();
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9616A8);
    }
  }
}

void sub_2588B0690(uint64_t a1)
{
  if (!qword_27F9616B8)
  {
    sub_2588B091C(255, &qword_27F9616C0, sub_2588B0728, sub_25885987C);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9616B8);
    }
  }
}

void sub_2588B0728(uint64_t a1)
{
  if (!qword_27F9616C8)
  {
    sub_258823ABC(255);
    sub_2588B04F0(255, &qword_27F9615C0, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9616C8);
    }
  }
}

unint64_t sub_2588B07C0()
{
  result = qword_27F9616D0;
  if (!qword_27F9616D0)
  {
    sub_2588B04F0(255, &qword_27F9616B0, sub_2588B0690, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9616D0);
  }

  return result;
}

unint64_t sub_2588B0848()
{
  result = qword_27F9616D8;
  if (!qword_27F9616D8)
  {
    sub_2588B158C(255, &qword_27F9616A0, sub_2588B05FC, MEMORY[0x277CDF928]);
    sub_2588B174C(&qword_27F9616E0, sub_2588B05FC, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9616D8);
  }

  return result;
}

void sub_2588B091C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_2588BC1E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2588B0990(uint64_t a1)
{
  if (!qword_27F9616F0)
  {
    sub_2588B091C(255, &qword_27F9616E8, sub_2588B0574, MEMORY[0x277CDE470]);
    sub_2588B0A60();
    sub_2588B0B70();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9616F0);
    }
  }
}

unint64_t sub_2588B0A60()
{
  result = qword_27F9616F8;
  if (!qword_27F9616F8)
  {
    sub_2588B091C(255, &qword_27F9616E8, sub_2588B0574, MEMORY[0x277CDE470]);
    sub_2588B174C(&qword_27F961700, sub_2588B0574, MEMORY[0x277CDF028]);
    sub_2588B174C(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9616F8);
  }

  return result;
}

unint64_t sub_2588B0B70()
{
  result = qword_27F961708;
  if (!qword_27F961708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961708);
  }

  return result;
}

void sub_2588B0BC4(uint64_t a1)
{
  if (!qword_27F961710)
  {
    sub_2588B0990(255);
    sub_2588B185C(255, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83D88]);
    sub_2588B091C(255, &qword_27F9616E8, sub_2588B0574, MEMORY[0x277CDE470]);
    sub_2588B0A60();
    sub_2588B0B70();
    swift_getOpaqueTypeConformance2();
    sub_2588B0F3C(&qword_27F961718, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, sub_2587913CC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961710);
    }
  }
}

void sub_2588B0D3C(uint64_t a1)
{
  if (!qword_27F961720)
  {
    sub_2588B0BC4(255);
    v1 = MEMORY[0x277D83D88];
    sub_2588B185C(255, &qword_27F960998, &type metadata for EmergencyContactPickerError, MEMORY[0x277D83D88]);
    sub_2588B0990(255);
    sub_2588B185C(255, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, v1);
    sub_2588B091C(255, &qword_27F9616E8, sub_2588B0574, MEMORY[0x277CDE470]);
    sub_2588B0A60();
    sub_2588B0B70();
    swift_getOpaqueTypeConformance2();
    sub_2588B0F3C(&qword_27F961718, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, sub_2587913CC);
    swift_getOpaqueTypeConformance2();
    sub_2588B0F3C(&qword_27F961728, &qword_27F960998, &type metadata for EmergencyContactPickerError, sub_2587DF370);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961720);
    }
  }
}

uint64_t sub_2588B0F3C(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2588B185C(255, a2, a3, MEMORY[0x277D83D88]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2588B0FC8()
{
  if (!qword_27F961730)
  {
    sub_2588B0D3C(255);
    sub_2588BD748();
    sub_2588B0BC4(255);
    v0 = MEMORY[0x277D83D88];
    sub_2588B185C(255, &qword_27F960998, &type metadata for EmergencyContactPickerError, MEMORY[0x277D83D88]);
    sub_2588B0990(255);
    sub_2588B185C(255, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, v0);
    sub_2588B091C(255, &qword_27F9616E8, sub_2588B0574, MEMORY[0x277CDE470]);
    sub_2588B0A60();
    sub_2588B0B70();
    swift_getOpaqueTypeConformance2();
    sub_2588B0F3C(&qword_27F961718, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, sub_2587913CC);
    swift_getOpaqueTypeConformance2();
    sub_2588B0F3C(&qword_27F961728, &qword_27F960998, &type metadata for EmergencyContactPickerError, sub_2587DF370);
    swift_getOpaqueTypeConformance2();
    sub_25878F648();
    sub_2588B174C(&qword_27F95E458, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961730);
    }
  }
}

void sub_2588B1270()
{
  if (!qword_27F961738)
  {
    sub_2588B0FC8();
    type metadata accessor for RelationshipPickerView(255);
    sub_2588B0D3C(255);
    sub_2588BD748();
    sub_2588B0BC4(255);
    v0 = MEMORY[0x277D83D88];
    sub_2588B185C(255, &qword_27F960998, &type metadata for EmergencyContactPickerError, MEMORY[0x277D83D88]);
    sub_2588B0990(255);
    sub_2588B185C(255, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, v0);
    sub_2588B091C(255, &qword_27F9616E8, sub_2588B0574, MEMORY[0x277CDE470]);
    sub_2588B0A60();
    sub_2588B0B70();
    swift_getOpaqueTypeConformance2();
    sub_2588B0F3C(&qword_27F961718, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, sub_2587913CC);
    swift_getOpaqueTypeConformance2();
    sub_2588B0F3C(&qword_27F961728, &qword_27F960998, &type metadata for EmergencyContactPickerError, sub_2587DF370);
    swift_getOpaqueTypeConformance2();
    sub_25878F648();
    sub_2588B174C(&qword_27F95E458, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
    swift_getOpaqueTypeConformance2();
    sub_2588B174C(&qword_27F95E9B0, type metadata accessor for RelationshipPickerView, &unk_2588C85C0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961738);
    }
  }
}

void sub_2588B158C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_2588BC1E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2588B15F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddEmergencyContactView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588B1654(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2588B1660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddEmergencyContactView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2588B16DC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddEmergencyContactView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_2588AEEEC(v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_2588B174C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2588B17D4@<D0>(void *a1@<X8>)
{
  type metadata accessor for AddEmergencyContactView(0);

  *&result = sub_2588AFC20(a1).n128_u64[0];
  return result;
}

void sub_2588B185C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2588B18AC()
{
  result = qword_27F961748;
  if (!qword_27F961748)
  {
    sub_2588B158C(255, &qword_27F961740, sub_2588B1270, MEMORY[0x277CDF910]);
    sub_2588B0FC8();
    type metadata accessor for RelationshipPickerView(255);
    sub_2588B0D3C(255);
    sub_2588BD748();
    sub_2588B0BC4(255);
    v1 = MEMORY[0x277D83D88];
    sub_2588B185C(255, &qword_27F960998, &type metadata for EmergencyContactPickerError, MEMORY[0x277D83D88]);
    sub_2588B0990(255);
    sub_2588B185C(255, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, v1);
    sub_2588B091C(255, &qword_27F9616E8, sub_2588B0574, MEMORY[0x277CDE470]);
    sub_2588B0A60();
    sub_2588B0B70();
    swift_getOpaqueTypeConformance2();
    sub_2588B0F3C(&qword_27F961718, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, sub_2587913CC);
    swift_getOpaqueTypeConformance2();
    sub_2588B0F3C(&qword_27F961728, &qword_27F960998, &type metadata for EmergencyContactPickerError, sub_2587DF370);
    swift_getOpaqueTypeConformance2();
    sub_25878F648();
    sub_2588B174C(&qword_27F95E458, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
    swift_getOpaqueTypeConformance2();
    sub_2588B174C(&qword_27F95E9B0, type metadata accessor for RelationshipPickerView, &unk_2588C85C0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961748);
  }

  return result;
}

unint64_t sub_2588B1C10()
{
  result = qword_27F9608E0;
  if (!qword_27F9608E0)
  {
    sub_2588B185C(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9608E0);
  }

  return result;
}

uint64_t objectdestroyTm_34()
{
  v1 = (type metadata accessor for AddEmergencyContactView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2588B04F0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  (*(*(v3 - 8) + 8))(v2, v3);

  sub_2588B1654(*(v2 + v1[9]), *(v2 + v1[9] + 8));

  return swift_deallocObject();
}

uint64_t sub_2588B1E08(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddEmergencyContactView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_2588B1EDC(uint64_t a1)
{
  if (!qword_27F961750)
  {
    sub_2588B04F0(255, &qword_27F9616B0, sub_2588B0690, MEMORY[0x277CE14B8]);
    v1 = sub_2588BC0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961750);
    }
  }
}

uint64_t sub_2588B1F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_2588B1FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2588B20A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B42E8(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for RelationshipPickerView(0);
  sub_25883AB58(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2588BC038();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2588BDBE8();
    v13 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2588B22B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v72 = sub_2588BC5E8();
  v69 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v68 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RelationshipPickerView(0);
  v5 = v4 - 8;
  v59 = *(v4 - 8);
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  sub_2588B3FCC(0);
  v58 = v7;
  v60 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B3EDC(0);
  v64 = v10;
  v61 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B3DB4(0);
  v66 = v13;
  v63 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v62 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B3C5C(0);
  v71 = v15;
  v67 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v65 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B3A84(0);
  v73 = *(v17 - 8);
  v74 = v17;
  MEMORY[0x28223BE20](v17);
  v70 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (a1 + *(v5 + 40));
  v21 = v19[1];
  v22 = v19[2];
  v82 = *v19;
  v20 = v82;
  v83 = v21;
  v84 = v22;
  sub_2588B37C0(0, &qword_27F95DC78, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v77 = a1;
  sub_2588B404C(0);
  sub_2588B4168();
  sub_2588BCD38();
  v78 = v20;
  v79 = v21;
  v80 = v22;
  sub_2588BD2C8();
  v78 = v82;
  v79 = v83;
  v75 = a1;
  v23 = a1;
  v24 = v12;
  v25 = v58;
  sub_2588B4284(v23, &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v27 = swift_allocObject();
  sub_2588B434C(&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  sub_25878E3D8(0, &qword_27F95D458, MEMORY[0x277D83D88]);
  v29 = v28;
  v30 = sub_2588B4234(&qword_27F9617B8, sub_2588B3FCC, MEMORY[0x277CDE5A0]);
  v31 = sub_2588B1C10();
  sub_2588BD118();

  (*(v60 + 8))(v9, v25);
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v32 = qword_27F95DA88;
  v33 = sub_2588BCDE8();
  v35 = v34;
  v37 = v36;
  v78 = v25;
  v79 = v29;
  v80 = v30;
  v81 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v62;
  v40 = v64;
  sub_2588BCF28();
  sub_2587B1CF8(v33, v35, v37 & 1);

  (*(v61 + 8))(v24, v40);
  v42 = v68;
  v41 = v69;
  v43 = v72;
  (*(v69 + 104))(v68, *MEMORY[0x277CDDDC0], v72);
  v78 = v40;
  v79 = OpaqueTypeConformance2;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v65;
  v46 = v66;
  sub_2588BD008();
  (*(v41 + 8))(v42, v43);
  v47 = (*(v63 + 8))(v39, v46);
  MEMORY[0x28223BE20](v47);
  v48 = sub_2588BD748();
  v78 = v46;
  v79 = v44;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_2588B4234(&qword_27F95E458, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
  v52 = v70;
  v51 = v71;
  sub_2588BD0C8();
  (*(v67 + 8))(v45, v51);
  v82 = sub_2588BD198();
  sub_2588B42E8(0, &qword_27F95F148, MEMORY[0x277CDDB68], MEMORY[0x277D84560]);
  sub_2588BC2F8();
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_2588C00B0;
  sub_2588BC2E8();
  v78 = v51;
  v79 = v48;
  v80 = v49;
  v81 = v50;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v74;
  MEMORY[0x259C8C0D0](&v82, v53, v74, MEMORY[0x277CE0F78], v54, MEMORY[0x277CE0F60]);

  return (*(v73 + 8))(v52, v55);
}

uint64_t sub_2588B2CA4(id *a1)
{
  v2 = type metadata accessor for RelationshipPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = [*a1 relationships];
  v6 = sub_2588BD9B8();

  v10[1] = v6;
  swift_getKeyPath("H\r\n'");
  sub_2588B4284(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_2588B434C(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_25878E3D8(0, &qword_280C0DE60, MEMORY[0x277D83940]);
  sub_2588B40F4();
  sub_2588B41E0();
  return sub_2588BD4B8();
}

uint64_t sub_2588B2E54(uint64_t a1)
{
  v2 = sub_2588BC038();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RelationshipPickerView(0);
  v7 = (a1 + *(v6 + 32));
  v8 = *(v7 + 2);
  v12 = *v7;
  *&v13 = v8;
  sub_2588B37C0(0, &qword_27F95DC78, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v9 = a1 + *(v6 + 28);
  v10 = *(v9 + 8);
  *&v12 = *v9;
  *(&v12 + 1) = v10;
  v13 = *(v9 + 16);
  sub_2588B37C0(0, &qword_27F960F70, MEMORY[0x277CE11F8]);
  sub_2588BD438();
  sub_2588B20A4(v5);
  sub_2588BC028();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2588B2FD0(uint64_t a1)
{
  v2 = type metadata accessor for RelationshipPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588B4284(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2588B434C(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_2588BD718();
}

uint64_t sub_2588B30D4(uint64_t a1)
{
  v2 = sub_2588BC598();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B42E8(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = sub_2588BC038();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RelationshipPickerView(0);
  sub_25883AB58(a1 + *(v13 + 24), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_2588BDBE8();
    v14 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_2588BC028();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2588B336C()
{
  sub_2588B3860(0);
  sub_2588B3A84(255);
  sub_2588B3C5C(255);
  sub_2588BD748();
  sub_2588B3DB4(255);
  sub_2588B3EDC(255);
  sub_2588B3FCC(255);
  sub_25878E3D8(255, &qword_27F95D458, MEMORY[0x277D83D88]);
  sub_2588B4234(&qword_27F9617B8, sub_2588B3FCC, MEMORY[0x277CDE5A0]);
  sub_2588B1C10();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_2588B4234(&qword_27F95E458, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_2588BC1F8();
}

id sub_2588B35A0(void *a1)
{
  v1 = a1;
  v2 = [v1 tokens];
  if (!v2)
  {
    sub_2588BD9B8();
    v2 = sub_2588BD9A8();
  }

  return v2;
}

uint64_t type metadata accessor for RelationshipPickerView(uint64_t a1)
{
  result = qword_27F961758;
  if (!qword_27F961758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588B369C(uint64_t a1)
{
  sub_2587F9A7C();
  if (v1 <= 0x3F)
  {
    sub_2588B42E8(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2588B37C0(319, &qword_27F960F70, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_2588B37C0(319, &qword_27F95DC78, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2588B37C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_25878E3D8(255, &qword_27F95D458, MEMORY[0x277D83D88]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2588B3860(uint64_t a1)
{
  if (!qword_27F961768)
  {
    sub_2588B3A84(255);
    sub_2588B3C5C(255);
    sub_2588BD748();
    sub_2588B3DB4(255);
    sub_2588B3EDC(255);
    sub_2588B3FCC(255);
    sub_25878E3D8(255, &qword_27F95D458, MEMORY[0x277D83D88]);
    sub_2588B4234(&qword_27F9617B8, sub_2588B3FCC, MEMORY[0x277CDE5A0]);
    sub_2588B1C10();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2588B4234(&qword_27F95E458, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961768);
    }
  }
}

void sub_2588B3A84(uint64_t a1)
{
  if (!qword_27F961770)
  {
    sub_2588B3C5C(255);
    sub_2588BD748();
    sub_2588B3DB4(255);
    sub_2588B3EDC(255);
    sub_2588B3FCC(255);
    sub_25878E3D8(255, &qword_27F95D458, MEMORY[0x277D83D88]);
    sub_2588B4234(&qword_27F9617B8, sub_2588B3FCC, MEMORY[0x277CDE5A0]);
    sub_2588B1C10();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2588B4234(&qword_27F95E458, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961770);
    }
  }
}

void sub_2588B3C5C(uint64_t a1)
{
  if (!qword_27F961778)
  {
    sub_2588B3DB4(255);
    sub_2588B3EDC(255);
    sub_2588B3FCC(255);
    sub_25878E3D8(255, &qword_27F95D458, MEMORY[0x277D83D88]);
    sub_2588B4234(&qword_27F9617B8, sub_2588B3FCC, MEMORY[0x277CDE5A0]);
    sub_2588B1C10();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961778);
    }
  }
}

void sub_2588B3DB4(uint64_t a1)
{
  if (!qword_27F961780)
  {
    sub_2588B3EDC(255);
    sub_2588B3FCC(255);
    sub_25878E3D8(255, &qword_27F95D458, MEMORY[0x277D83D88]);
    sub_2588B4234(&qword_27F9617B8, sub_2588B3FCC, MEMORY[0x277CDE5A0]);
    sub_2588B1C10();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961780);
    }
  }
}

void sub_2588B3EDC(uint64_t a1)
{
  if (!qword_27F961788)
  {
    sub_2588B3FCC(255);
    sub_25878E3D8(255, &qword_27F95D458, MEMORY[0x277D83D88]);
    sub_2588B4234(&qword_27F9617B8, sub_2588B3FCC, MEMORY[0x277CDE5A0]);
    sub_2588B1C10();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961788);
    }
  }
}

void sub_2588B3FCC(uint64_t a1)
{
  if (!qword_27F961790)
  {
    sub_2588B404C(255);
    sub_2588B4168();
    v1 = sub_2588BCD58();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961790);
    }
  }
}

void sub_2588B404C(uint64_t a1)
{
  if (!qword_27F961798)
  {
    sub_25878E3D8(255, &qword_280C0DE60, MEMORY[0x277D83940]);
    sub_2588B40F4();
    v1 = sub_2588BD4D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961798);
    }
  }
}

unint64_t sub_2588B40F4()
{
  result = qword_27F9617A0;
  if (!qword_27F9617A0)
  {
    sub_25878E3D8(255, &qword_280C0DE60, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9617A0);
  }

  return result;
}

unint64_t sub_2588B4168()
{
  result = qword_27F9617A8;
  if (!qword_27F9617A8)
  {
    sub_2588B404C(255);
    sub_2588B41E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9617A8);
  }

  return result;
}

unint64_t sub_2588B41E0()
{
  result = qword_27F9617B0;
  if (!qword_27F9617B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9617B0);
  }

  return result;
}

uint64_t sub_2588B4234(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2588B4284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelationshipPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2588B42E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2588B434C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelationshipPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588B43E8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RelationshipPickerView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroyTm_35()
{
  v1 = type metadata accessor for RelationshipPickerView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  swift_unknownObjectRelease();

  v3 = *(v1 + 24);
  sub_2588B42E8(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_2588BC038();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2588B45E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for RelationshipPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v8 = *a1;
  v7 = a1[1];
  v9 = *(v6 + 8);
  v10 = *(v6 + 16);
  *a2 = v8;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v10;
}

void sub_2588B4678()
{
  if (!qword_27F9617C8)
  {
    sub_2588BC138();
    sub_2588B3860(255);
    sub_2588B3A84(255);
    sub_2588B3C5C(255);
    sub_2588BD748();
    sub_2588B3DB4(255);
    sub_2588B3EDC(255);
    sub_2588B3FCC(255);
    sub_25878E3D8(255, &qword_27F95D458, MEMORY[0x277D83D88]);
    sub_2588B4234(&qword_27F9617B8, sub_2588B3FCC, MEMORY[0x277CDE5A0]);
    sub_2588B1C10();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2588B4234(&qword_27F95E458, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_2588BC208();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9617C8);
    }
  }
}

uint64_t type metadata accessor for MedicalIDAllergiesCellView(uint64_t a1)
{
  result = qword_27F9617D0;
  if (!qword_27F9617D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2588B4958@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F95D140 != -1)
  {
    swift_once();
  }

  v3 = qword_27F9698E0;
  v21 = qword_27F9698D8;
  v4 = *v1;

  v5 = [v4 allergyInfo];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2588BD8A8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = sub_2588BD858();
  MEMORY[0x28223BE20](v10 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v11 = qword_27F95DA88;
  v12 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = v11;
  sub_2588BBAB8();
  v14 = sub_2588BD8B8();
  v16 = v15;
  v17 = (v1 + *(type metadata accessor for MedicalIDAllergiesCellView(0) + 20));
  v19 = *v17;
  v18 = v17[1];
  *a1 = v21;
  *(a1 + 8) = v3;
  *(a1 + 16) = 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v14;
  *(a1 + 48) = v16;
  *(a1 + 56) = v19;
  *(a1 + 64) = v18;
}

__n128 sub_2588B4B84@<Q0>(uint64_t a1@<X8>)
{
  sub_2588B4958(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

void *sub_2588B4BD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (qword_27F95D130 != -1)
  {
    swift_once();
  }

  v43 = qword_27F9698B8;
  v44 = qword_27F9698C0;

  v42 = sub_2588BDB88();
  v4 = type metadata accessor for EditBloodTypeCellView(0);
  v5 = v1 + *(v4 + 20);
  v6 = *v5;
  v7 = *(v5 + 2);
  v48 = v6;
  v49 = v7;
  sub_2588B5574(0, &qword_27F961800, type metadata accessor for HKBloodType, MEMORY[0x277CE11F8]);
  sub_2588BD458();
  v8 = v45;
  v9 = v46;
  v37 = v47;
  v41 = sub_2588B4F74();
  v40 = v10;
  sub_258790D88();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2588BFF50;
  v12 = *v1;
  v13 = v2[1];
  *(v11 + 32) = *v2;
  *(v11 + 40) = v13;
  *(v11 + 48) = 0x707954646F6F6C42;
  *(v11 + 56) = 0xE900000000000065;

  v14 = sub_2588BD9A8();

  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (v15)
  {
    v16 = sub_2588BD8A8();
    v38 = v17;
    v39 = v16;
  }

  else
  {
    v38 = v13;

    v39 = v12;
  }

  v18 = (v2 + *(v4 + 28));
  v20 = v18[1];
  v36 = *v18;
  v19 = v36;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v37;
  *(a1 + 96) = swift_getKeyPath(asc_2588C8768);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_2588B54C4(0);
  v22 = v21;
  v23 = sub_2588BB9F8();
  v37 = &v35;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2587B2344(v19);
  v27 = sub_2588BB9E8();
  MEMORY[0x28223BE20](v27);
  (*(v24 + 16))(&v35 - v26, &v35 - v26, v23);
  sub_2588BD2B8();
  (*(v24 + 8))(&v35 - v26, v23);
  v28 = a1 + v22[21];
  LOBYTE(v45) = 0;
  result = sub_2588BD2B8();
  v30 = *(&v48 + 1);
  *v28 = v48;
  *(v28 + 8) = v30;
  v31 = v44;
  *a1 = v43;
  *(a1 + 8) = v31;
  v32 = v42;
  *(a1 + 64) = v41;
  *(a1 + 72) = v40 & 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v33 = v38;
  *(a1 + 16) = v39;
  *(a1 + 24) = v33;
  *(a1 + 32) = v32;
  *(a1 + v22[23]) = 0;
  *(a1 + 120) = v36;
  *(a1 + 128) = v20;
  v34 = (a1 + v22[22]);
  *v34 = sub_2588B5218;
  v34[1] = 0;
  return result;
}

uint64_t sub_2588B4F74()
{
  v1 = type metadata accessor for HealthDemographicData(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B5574(0, &qword_27F95D8C8, type metadata accessor for HealthDemographicData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for EditBloodTypeCellView(0);
  v9 = *(v0 + *(v8 + 32));
  if (v9)
  {
    if ([v9 suggestHealthData])
    {
      v10 = *(v0 + *(v8 + 24));
      swift_getKeyPath(byte_2588C8790);
      v14[1] = v10;
      sub_2588B5724(&qword_27F95D8D0, type metadata accessor for HealthDemographicDataProvider, &unk_2588BFF00);
      sub_2588BBB98();

      v11 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data;
      swift_beginAccess();
      sub_2587AF960(v10 + v11, v7);
      if (!(*(v2 + 48))(v7, 1, v1))
      {
        sub_2588B5664(v7, v4);
        sub_2588B55D8(v7);
        v13 = *&v4[*(v1 + 36)];
        sub_2588B56C8(v4);
        return v13;
      }

      sub_2588B55D8(v7);
    }

    return 0;
  }

  else
  {
    sub_2587CEE98();
    sub_2588B5724(&qword_27F95DAE8, sub_2587CEE98, &protocol conformance descriptor for MIUIDisplayConfiguration);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_2588B5234()
{
  v0 = HKStringForBloodType();
  v1 = sub_2588BD8A8();

  return v1;
}

uint64_t sub_2588B5284(uint64_t a1)
{
  *(a1 + 8) = sub_2588B5724(&qword_27F9617E0, type metadata accessor for HKBloodType, &unk_2588BF5EC);
  result = sub_2588B5724(&qword_27F9617E8, type metadata accessor for HKBloodType, &protocol conformance descriptor for HKBloodType);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for EditBloodTypeCellView(uint64_t a1)
{
  result = qword_27F9617F0;
  if (!qword_27F9617F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588B537C(uint64_t a1)
{
  type metadata accessor for MedicalIDBiometricsViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2588B5574(319, &qword_27F961800, type metadata accessor for HKBloodType, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for HealthDemographicDataProvider(319);
      if (v3 <= 0x3F)
      {
        sub_2588B5574(319, &qword_27F95DA10, sub_2587B2F78, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2587BC234(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2588B54C4(uint64_t a1)
{
  if (!qword_27F961808)
  {
    type metadata accessor for HKBloodType(255);
    v3 = v2;
    v4 = sub_2588B5724(&qword_27F961810, type metadata accessor for HKBloodType, &unk_2588C86D8);
    v7[0] = v3;
    v7[1] = MEMORY[0x277CE11C8];
    v7[2] = v4;
    v7[3] = MEMORY[0x277CE11C0];
    v5 = type metadata accessor for ExpandableWheelPickerView(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_27F961808);
    }
  }
}

void sub_2588B5574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2588B55D8(uint64_t a1)
{
  sub_2588B5574(0, &qword_27F95D8C8, type metadata accessor for HealthDemographicData, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2588B5664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthDemographicData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588B56C8(uint64_t a1)
{
  v2 = type metadata accessor for HealthDemographicData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2588B5724(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2588B576C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
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

MedicalIDUI::NanoEmergencyContactDetailViewModel __swiftcall NanoEmergencyContactDetailViewModel.init()()
{
  v1 = v0;
  result.store.super.isa = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v1->store.super.isa = result.store.super.isa;
  return result;
}

uint64_t sub_2588B5860()
{
  v12[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  sub_2588B5D4C(0, &qword_280C0DDD0, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2588C00B0;
  *(v2 + 32) = sub_2588BD8A8();
  *(v2 + 40) = v3;
  v12[0] = v2;
  sub_2588B5D4C(0, &qword_280C0DE60, MEMORY[0x277D83940]);
  sub_2588B5DA0(0);
  if (swift_dynamicCast())
  {
    sub_25878FA5C();
    v4 = sub_2588BD9A8();

    v12[0] = 0;
    v5 = [v1 _ios_meContactWithKeysToFetch_error_];

    if (v5)
    {
      v6 = v12[0];
      v7 = [v5 identifier];
      v8 = sub_2588BD8A8();

      return v8;
    }

    v10 = v12[0];
    v11 = sub_2588BB878();

    swift_willThrow();
  }

  return 0;
}

Swift::Bool __swiftcall NanoEmergencyContactDetailViewModel.canSelectContact(currentContacts:contact:)(Swift::OpaquePointer currentContacts, CNContact contact)
{
  v5 = *v2;
  v6 = [(objc_class *)contact.super.isa identifier];
  v7 = sub_2588BD8A8();
  v9 = v8;

  v22[0] = v7;
  v22[1] = v9;
  v21[2] = v22;
  LOBYTE(v6) = sub_2588B576C(sub_258863060, v21, currentContacts._rawValue);

  if ((v6 & 1) == 0)
  {
    v10 = [(objc_class *)contact.super.isa phoneNumbers];
    sub_2588B5C6C();
    v11 = sub_2588BD9B8();

    v12 = v11 >> 62 ? sub_2588BDD68() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v12 >= 1)
    {
      v13 = [(objc_class *)contact.super.isa identifier];
      v14 = sub_2588BD8A8();
      v16 = v15;

      v22[0] = v5;
      v17 = sub_2588B5860();
      if (v18)
      {
        if (v14 == v17 && v18 == v16)
        {

          return 0;
        }

        v20 = sub_2588BDF98();

        if (v20)
        {
          return 0;
        }
      }

      else
      {
      }

      return 1;
    }
  }

  return 0;
}

BOOL sub_2588B5BF8(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_2588BDF98() & 1;
    }
  }

  return result;
}

unint64_t sub_2588B5C6C()
{
  result = qword_27F961820;
  if (!qword_27F961820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F961820);
  }

  return result;
}

uint64_t sub_2588B5CB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2588B5D00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2588B5D4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2588B5DA0(uint64_t a1)
{
  if (!qword_27F961828)
  {
    sub_25878FA5C();
    v1 = sub_2588BDA08();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961828);
    }
  }
}

uint64_t type metadata accessor for MedicalIDBiometricsCell(uint64_t a1)
{
  result = qword_27F961830;
  if (!qword_27F961830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588B5E6C(uint64_t a1)
{
  type metadata accessor for MedicalIDBiometricsViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2587B2F78();
    if (v2 <= 0x3F)
    {
      sub_2588B7328(319, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2588B5F54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B7328(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MedicalIDBiometricsCell(0);
  sub_258855944(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2588BC1C8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2588BDBE8();
    v13 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2588B6168@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F95D108 != -1)
  {
    swift_once();
  }

  v3 = xmmword_27F969868;
  v4 = (v1 + *(type metadata accessor for MedicalIDBiometricsViewModel(0) + 20));
  v5 = v4[12] || v4[13] || v4[11] != 0;
  v7 = *v1;
  v6 = v1[1];
  v8 = (v1 + *(type metadata accessor for MedicalIDBiometricsCell(0) + 20));
  v9 = *v8;
  v10 = v8[1];
  *a1 = v3;
  *(a1 + 16) = v5;
  *(a1 + 17) = 2;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v7;
  *(a1 + 48) = v6;
}

void sub_2588B6264(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v120 = a2;
  v3 = sub_2588BC1C8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v119 - v8;
  v138 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v10 = (a1 + *(v138 + 20));
  v11 = MEMORY[0x277CDF988];
  v12 = &off_2588BF000;
  v121 = v10[12];
  v122 = a1;
  v124 = v9;
  v125 = v7;
  v127 = v3;
  v123 = v10;
  if (v121)
  {
    sub_2588B5F54(v9);
    (*(v4 + 104))(v7, *v11, v3);
    v13 = sub_2588BC1B8();
    v14 = *(v4 + 8);
    v14(v7, v3);
    v14(v9, v3);
    if (v13)
    {
      v15 = v4;
      if (qword_27F95D110 != -1)
      {
        swift_once();
      }

      v16 = &qword_27F969878;
    }

    else
    {
      v15 = v4;
      if (qword_27F95D118 != -1)
      {
        swift_once();
      }

      v16 = &qword_27F969888;
    }

    v19 = *v16;
    v135 = v16[1];
    v136 = v19;

    sub_258821310(0, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
    v21 = v20;
    v22 = *(v20 - 8);
    MEMORY[0x28223BE20](v20);
    v24 = &v119 - v23;
    sub_258821368(0, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
    MEMORY[0x28223BE20](v25 - 8);
    v27 = &v119 - v26;
    v28 = v122;
    sub_2587F1E14(v121, &v119 - v26);
    if ((*(v22 + 48))(v27, 1, v21) == 1)
    {
      sub_2588213C4(v27, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
      v133 = 0;
      v134 = 0;
    }

    else
    {
      (*(v22 + 32))(v24, v27, v21);
      v29 = sub_2587F21C4(v24);
      v133 = v30;
      v134 = v29;
      (*(v22 + 8))(v24, v21);
    }

    a1 = v28;
    sub_2588B7448(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v31 = swift_allocObject();
    v12 = &off_2588BF000;
    *(v31 + 16) = xmmword_2588BFF50;
    v32 = a1[1];
    *(v31 + 32) = *a1;
    *(v31 + 40) = v32;
    *(v31 + 48) = 0x746867696548;
    *(v31 + 56) = 0xE600000000000000;

    v33 = sub_2588BD9A8();

    v34 = HKUIJoinStringsForAutomationIdentifier();

    v3 = v127;
    if (!v34)
    {
      __break(1u);
      goto LABEL_47;
    }

    v4 = v15;
    v17 = sub_2588BD8A8();
    v18 = v35;

    v11 = MEMORY[0x277CDF988];
    v10 = v123;
  }

  else
  {
    v135 = 0;
    v136 = 0;
    v133 = 0;
    v134 = 0;
    v17 = 0;
    v18 = 0;
  }

  v36 = v10[13];
  v128 = v17;
  v129 = v18;
  if (!v36)
  {
    v131 = 0;
    v132 = 0;
    v137 = 0;
    v138 = 0;
    v130 = 0;
    v126 = 0;
    v42 = v10[11];
    if (v42)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v137 = v36;
  v37 = v124;
  sub_2588B5F54(v124);
  v38 = v125;
  (*(v4 + 104))(v125, *v11, v3);
  v39 = sub_2588BC1B8();
  v40 = *(v4 + 8);
  v40(v38, v3);
  v40(v37, v3);
  v119 = v4;
  if (v39)
  {
    if (qword_27F95D120 != -1)
    {
      swift_once();
    }

    v41 = &qword_27F969898;
  }

  else
  {
    if (qword_27F95D128 != -1)
    {
      swift_once();
    }

    v41 = &qword_27F9698A8;
  }

  v12 = &off_2588BF000;
  v36 = v137;
  v46 = v41[1];
  v132 = *v41;
  v137 = v46;

  sub_258821310(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v48 = v47;
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v51 = &v119 - v50;
  sub_258821368(0, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  MEMORY[0x28223BE20](v52 - 8);
  v54 = &v119 - v53;
  sub_25884D544(v36, &v119 - v53);
  if ((*(v49 + 48))(v54, 1, v48) == 1)
  {
    sub_2588213C4(v54, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
    v131 = 0;
    v138 = 0;
  }

  else
  {
    (*(v49 + 32))(v51, v54, v48);
    type metadata accessor for MedicalIDWeightFormatter(0);
    sub_25878E130(0, &qword_27F95F430, 0x277CCAE28);
    v131 = sub_2588BDC68();
    v138 = v55;
    (*(v49 + 8))(v51, v48);
  }

  sub_2588B7448(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_2588BFF50;
  a1 = v122;
  v57 = v122[1];
  *(v56 + 32) = *v122;
  *(v56 + 40) = v57;
  *(v56 + 48) = 0x746867696557;
  *(v56 + 56) = 0xE600000000000000;

  v58 = sub_2588BD9A8();

  v59 = HKUIJoinStringsForAutomationIdentifier();

  v3 = v127;
  v4 = v119;
  if (!v59)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v130 = sub_2588BD8A8();
  v126 = v60;

  v11 = MEMORY[0x277CDF988];
  v42 = v123[11];
  if (v42)
  {
LABEL_30:
    v61 = v36;
    v62 = v124;
    sub_2588B5F54(v124);
    v63 = v125;
    (*(v4 + 104))(v125, *v11, v3);
    v64 = sub_2588BC1B8();
    v65 = *(v4 + 8);
    v65(v63, v3);
    v65(v62, v3);
    if (v64)
    {
      if (qword_27F95D130 != -1)
      {
        swift_once();
      }

      v66 = &qword_27F9698B8;
    }

    else
    {
      if (qword_27F95D138 != -1)
      {
        swift_once();
      }

      v66 = &qword_27F9698C8;
    }

    v43 = v66[1];
    v127 = *v66;

    v67 = HKStringForBloodType();
    v44 = sub_2588BD8A8();
    v45 = v68;

    sub_2588B7448(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v69 = swift_allocObject();
    *(v69 + 16) = *(v12 + 245);
    v70 = a1[1];
    *(v69 + 32) = *a1;
    *(v69 + 40) = v70;
    *(v69 + 48) = 0x707954646F6F6C42;
    *(v69 + 56) = 0xE900000000000065;

    v71 = sub_2588BD9A8();

    v72 = HKUIJoinStringsForAutomationIdentifier();

    if (v72)
    {
      v123 = sub_2588BD8A8();
      v119 = v73;

      v36 = v61;
      goto LABEL_39;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_21:
  v127 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v123 = 0;
  v119 = 0;
LABEL_39:
  v124 = v45;
  v125 = v44;
  if (v36 | v121 | v42)
  {
    v74 = v43;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
LABEL_45:
    v91 = v136;
    v92 = v120;
    *v120 = v136;
    v93 = v91;
    v136 = v91;
    v94 = v135;
    v92[1] = v135;
    v95 = v94;
    v135 = v94;
    v96 = v134;
    v92[2] = v134;
    v97 = v96;
    v134 = v96;
    v99 = v132;
    v98 = v133;
    v92[3] = v133;
    v100 = v98;
    v132 = v99;
    v133 = v98;
    v101 = v128;
    v92[4] = v128;
    v102 = v101;
    v103 = v129;
    v104 = v130;
    v92[5] = v129;
    v92[6] = v99;
    v105 = v103;
    v106 = v138;
    v107 = v131;
    v92[7] = v137;
    v92[8] = v107;
    v130 = v104;
    v131 = v107;
    v92[9] = v106;
    v92[10] = v104;
    v108 = v127;
    v92[11] = v126;
    v92[12] = v108;
    v110 = v124;
    v109 = v125;
    v92[13] = v74;
    v92[14] = v109;
    v111 = v123;
    v92[15] = v110;
    v92[16] = v111;
    v112 = v119;
    v92[17] = v119;
    v92[18] = v75;
    v92[19] = v76;
    v92[20] = v77;
    v92[21] = v78;
    sub_2588B7114(v93, v95, v97, v100, v102, v105);
    v113 = v104;
    v114 = v126;
    sub_2588B7114(v99, v137, v107, v138, v113, v126);
    v115 = v127;
    v116 = v125;
    v117 = v110;
    v118 = v123;
    sub_2588B7114(v127, v74, v125, v117, v123, v112);
    sub_2588B7164(v75, v76, v77, v78);
    sub_2588B71A8(v75, v76, v77, v78);
    sub_2588B71EC(v115, v74, v116, v124, v118, v112);
    sub_2588B71EC(v132, v137, v131, v138, v130, v114);
    sub_2588B71EC(v136, v135, v134, v133, v128, v129);
    return;
  }

  v79 = sub_2588BD858();
  MEMORY[0x28223BE20](v79 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v80 = qword_27F95DA88;
  v81 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v81 - 8);
  v82 = v80;
  sub_2588BBAB8();
  v83 = sub_2588BD8B8();
  v85 = v84;
  sub_2588B7448(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v86 = swift_allocObject();
  *(v86 + 16) = *(v12 + 245);
  v87 = v122[1];
  *(v86 + 32) = *v122;
  *(v86 + 40) = v87;
  *(v86 + 48) = 0xD000000000000015;
  *(v86 + 56) = 0x80000002588CB8F0;

  v88 = sub_2588BD9A8();

  v89 = HKUIJoinStringsForAutomationIdentifier();

  if (v89)
  {
    v74 = v43;
    v77 = sub_2588BD8A8();
    v78 = v90;

    v75 = v83;
    v76 = v85;
    goto LABEL_45;
  }

LABEL_49:
  __break(1u);
}

double sub_2588B7058@<D0>(uint64_t a1@<X8>)
{
  sub_2588B6168(v11);
  *(&v13 + 1) = 0x4018000000000000;
  LOBYTE(v14[0]) = 1;
  sub_2588B6264(v1, v14 + 1);
  v3 = v14[9];
  *(a1 + 192) = v14[8];
  *(a1 + 208) = v3;
  *(a1 + 224) = v14[10];
  *(a1 + 240) = v15;
  v4 = v14[5];
  *(a1 + 128) = v14[4];
  *(a1 + 144) = v4;
  v5 = v14[7];
  *(a1 + 160) = v14[6];
  *(a1 + 176) = v5;
  v6 = v14[1];
  *(a1 + 64) = v14[0];
  *(a1 + 80) = v6;
  v7 = v14[3];
  *(a1 + 96) = v14[2];
  *(a1 + 112) = v7;
  v8 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = v10;
  return result;
}

void sub_2588B7114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }
}

void sub_2588B7164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_2588B71A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_2588B71EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }
}

unint64_t sub_2588B723C()
{
  result = qword_27F961840;
  if (!qword_27F961840)
  {
    sub_2588B7294(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961840);
  }

  return result;
}

void sub_2588B7294(uint64_t a1)
{
  if (!qword_27F961848)
  {
    sub_2588B7328(255, &qword_27F961850, sub_2588B738C, MEMORY[0x277CE14B8]);
    v3 = v2;
    v4 = sub_2588B7498();
    v6 = type metadata accessor for MedicalIDCellView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F961848);
    }
  }
}

void sub_2588B7328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2588B738C(uint64_t a1)
{
  if (!qword_27F961858)
  {
    v1 = MEMORY[0x277D83D88];
    sub_2588B7448(255, &qword_27F961860, &type metadata for MedicalIDCellBodyText, MEMORY[0x277D83D88]);
    sub_2588B7448(255, &qword_27F961868, &type metadata for MedicalIDCellPlaceholderText, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27F961858);
    }
  }
}

void sub_2588B7448(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2588B7498()
{
  result = qword_27F961870;
  if (!qword_27F961870)
  {
    sub_2588B7328(255, &qword_27F961850, sub_2588B738C, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961870);
  }

  return result;
}

uint64_t MedicalIDPersonalInfoViewModel.init(data:calendar:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v9 = v8[8];
  *(a4 + v9) = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
  v10 = sub_2588BD9A8();
  v11 = HKUIJoinStringsForAutomationIdentifier();

  if (v11)
  {
    v12 = sub_2588BD8A8();
    v14 = v13;
  }

  else
  {
    v14 = 0xEC0000006F666E49;
    v12 = 0x6C616E6F73726550;
  }

  v15 = (a4 + v8[9]);
  *v15 = v12;
  v15[1] = v14;
  sub_2587B94F8(a1, a4);
  v16 = v8[5];
  v17 = sub_2588BBB48();
  v18 = *(v17 - 8);
  (*(v18 + 16))(a4 + v16, a2, v17);
  v19 = v8[6];
  v20 = sub_2588BBAC8();
  v21 = *(v20 - 8);
  (*(v21 + 16))(a4 + v19, a3, v20);
  v22 = [objc_opt_self() calendarWithIdentifier_];
  (*(v21 + 8))(a3, v20);
  (*(v18 + 8))(a2, v17);
  result = sub_2587B955C(a1);
  *(a4 + v8[7]) = v22;
  return result;
}

uint64_t type metadata accessor for MedicalIDPersonalInfoViewModel(uint64_t a1)
{
  result = qword_27F961878;
  if (!qword_27F961878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL MedicalIDPersonalInfoViewModel.hasPersonalInfoData.getter()
{
  v1 = v0[1];
  if (v1)
  {
    if ((v1 & 0x2000000000000000) != 0 ? HIBYTE(v1) & 0xF : *v0 & 0xFFFFFFFFFFFFLL)
    {
      return 1;
    }
  }

  v3 = type metadata accessor for MedicalIDData(0);
  if (*(v0 + *(v3 + 72) + 8) >> 60 != 15)
  {
    return 1;
  }

  v4 = v3;
  v5 = *(v3 + 76);
  v6 = MEMORY[0x28220B6E0];
  sub_2588B7C90(0, &qword_27F95DA80, MEMORY[0x28220B6E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  sub_2588B9914(v0 + v5, &v12 - v8, &qword_27F95DA80, v6);
  v10 = sub_2588BB818();
  LODWORD(v5) = (*(*(v10 - 8) + 48))(v9, 1, v10);
  sub_2588B9994(v9, &qword_27F95DA80, v6);
  result = 1;
  if (v5 == 1 && !*(v0 + *(v4 + 60) + 8))
  {
    return *(v0 + *(v4 + 80)) != 0;
  }

  return result;
}

uint64_t MedicalIDPersonalInfoViewModel.imageData()()
{
  v1 = v0 + *(type metadata accessor for MedicalIDData(0) + 72);
  v2 = *v1;
  sub_2587CC620(*v1, *(v1 + 8));
  return v2;
}

uint64_t MedicalIDPersonalInfoViewModel.dateOfBirth()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BB818();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for MedicalIDData(0) + 76);
  v8 = MEMORY[0x28220B6E0];
  sub_2588B7C90(0, &qword_27F95DA80, MEMORY[0x28220B6E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  sub_2588B9914(v1 + v7, &v22 - v10, &qword_27F95DA80, v8);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_2588B9994(v11, &qword_27F95DA80, MEMORY[0x28220B6E0]);
LABEL_7:
    v19 = sub_2588BB9B8();
    return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }

  (*(v4 + 32))(v6, v11, v3);
  v12 = *(v1 + *(type metadata accessor for MedicalIDPersonalInfoViewModel(0) + 28));
  if (!v12)
  {
    (*(v4 + 8))(v6, v3);
    goto LABEL_7;
  }

  v13 = sub_2588BB758();
  v14 = [v12 dateFromComponents_];

  sub_2588B7C90(0, &qword_27F95D880, MEMORY[0x28220BF68], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v22 - v16;
  if (v14)
  {
    sub_2588BB988();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  (*(v4 + 8))(v6, v3);
  v21 = sub_2588BB9B8();
  (*(*(v21 - 8) + 56))(v17, v18, 1, v21);
  return sub_2587E8EE8(v17, a1);
}

void sub_2588B7C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

Swift::Bool __swiftcall MedicalIDPersonalInfoViewModel.isOrganDonationEditingAvailable(with:)(HKHealthStore with)
{
  v1 = [(objc_class *)with.super.isa profileIdentifier];
  v2 = [v1 type];

  return v2 != 3;
}

Swift::Bool __swiftcall MedicalIDPersonalInfoViewModel.suggestHealthData(with:)(MIUIDisplayConfiguration *with)
{
  v2 = [(MIUIDisplayConfiguration *)with suggestHealthData];
  if (v2)
  {
    v3 = v1[1];
    LOBYTE(v2) = (!v3 || ((v3 & 0x2000000000000000) != 0 ? (v4 = HIBYTE(v3) & 0xF) : (v4 = *v1 & 0xFFFFFFFFFFFFLL), !v4)) && (v5 = type metadata accessor for MedicalIDData(0), *(v1 + *(v5 + 72) + 8) >> 60 == 15) && (v6 = v5, v7 = *(v5 + 76), v8 = MEMORY[0x28220B6E0], sub_2588B7C90(0, &qword_27F95DA80, MEMORY[0x28220B6E0], MEMORY[0x277D83D88]), MEMORY[0x28223BE20](v9 - 8), v11 = &v14 - v10, sub_2588B9914(v1 + v7, &v14 - v10, &qword_27F95DA80, v8), v12 = sub_2588BB818(), LODWORD(v7) = (*(*(v12 - 8) + 48))(v11, 1, v12), sub_2588B9994(v11, &qword_27F95DA80, v8), v7 == 1) && !*(v1 + *(v6 + 60) + 8) && *(v1 + *(v6 + 80)) == 0;
  }

  return v2;
}

uint64_t MedicalIDPersonalInfoViewModel.update(medicalIDData:withPictureData:personName:birthDate:primaryLanguageCode:organDonationStatus:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9)
{
  v10 = v9;
  v45 = a7;
  v46 = a8;
  v44 = a6;
  v16 = *a9;
  v17 = type metadata accessor for MedicalIDData(0);
  v18 = &a1[v17[18]];
  v19 = *v18;
  v20 = v18[1];
  *v18 = a2;
  v18[1] = a3;
  sub_2587CC620(a2, a3);
  sub_2587C4E98(v19, v20);
  *a1 = a4;
  *(a1 + 1) = a5;

  if (v16)
  {
    sub_25878E130(0, &qword_27F95D898, 0x277CCABB0);
    v16 = sub_2588BDCC8();
  }

  v21 = v17[20];

  *&a1[v21] = v16;
  v22 = *(v10 + *(type metadata accessor for MedicalIDPersonalInfoViewModel(0) + 28));
  if (v22)
  {
    v23 = sub_2588BB9B8();
    v43 = &v43;
    v24 = *(v23 - 8);
    MEMORY[0x28223BE20](v23);
    v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = MEMORY[0x28220BF68];
    sub_2588B7C90(0, &qword_27F95D880, MEMORY[0x28220BF68], MEMORY[0x277D83D88]);
    MEMORY[0x28223BE20](v28 - 8);
    v30 = &v43 - v29;
    sub_2588B9914(v44, &v43 - v29, &qword_27F95D880, v27);
    if ((*(v24 + 48))(v30, 1, v23) != 1)
    {
      (*(v24 + 32))(v26, v30, v23);
      sub_2588B7C90(0, &qword_27F95DA80, MEMORY[0x28220B6E0], MEMORY[0x277D83D88]);
      v44 = &v43;
      MEMORY[0x28223BE20](v33 - 8);
      v35 = &v43 - v34;
      v36 = v22;
      v37 = sub_2588BB958();
      v38 = [v36 hk:v37 dateOfBirthDateComponentsWithDate:v43];

      sub_2588BB778();
      (*(v24 + 8))(v26, v23);
      v39 = sub_2588BB818();
      (*(*(v39 - 8) + 56))(v35, 0, 1, v39);
      sub_2588B9A04(v35, &a1[v17[19]]);
      goto LABEL_8;
    }

    sub_2588B9994(v30, &qword_27F95D880, MEMORY[0x28220BF68]);
  }

  v31 = v17[19];
  sub_2588B9994(&a1[v31], &qword_27F95DA80, MEMORY[0x28220B6E0]);
  v32 = sub_2588BB818();
  (*(*(v32 - 8) + 56))(&a1[v31], 1, 1, v32);
LABEL_8:
  v40 = &a1[v17[15]];
  v41 = v46;

  *v40 = v45;
  *(v40 + 1) = v41;
  return result;
}

Swift::String_optional __swiftcall MedicalIDPersonalInfoViewModel.nameDescription()()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
    v3 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v3 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
    }

    else
    {
      v2 = 0;
      v1 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  v5 = v1;
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::String_optional __swiftcall MedicalIDPersonalInfoViewModel.localizedAgeDescription()()
{
  v1 = v0;
  v2 = sub_2588BB9B8();
  v3 = *(v2 - 8);
  v66 = v2;
  v67 = v3;
  MEMORY[0x28223BE20](v2);
  v64 = v4;
  v65 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_2588B7C90(0, &qword_27F95D880, MEMORY[0x28220BF68], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v59 - v8;
  v10 = sub_2588BB818();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v63 = v12;
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for MedicalIDData(0) + 76);
  v15 = MEMORY[0x28220B6E0];
  sub_2588B7C90(0, &qword_27F95DA80, MEMORY[0x28220B6E0], v5);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v59 - v17;
  v19 = v1 + v14;
  v20 = v1;
  sub_2588B9914(v19, v59 - v17, &qword_27F95DA80, v15);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    sub_2588B9994(v18, &qword_27F95DA80, MEMORY[0x28220B6E0]);
    (*(v67 + 56))(v9, 1, 1, v66);
    v21 = v9;
LABEL_10:
    sub_2588B9994(v21, &qword_27F95D880, MEMORY[0x28220BF68]);
LABEL_11:
    v32 = 0;
    v33 = 0;
    goto LABEL_17;
  }

  v62 = v9;
  (*(v11 + 32))(v13, v18, v10);
  v22 = *(v1 + *(type metadata accessor for MedicalIDPersonalInfoViewModel(0) + 28));
  v23 = v11;
  if (v22)
  {
    v61 = v20;
    v24 = sub_2588BB758();
    v25 = [v22 dateFromComponents_];

    MEMORY[0x28223BE20](v26);
    v27 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = v67;
    if (v25)
    {
      sub_2588BB988();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = *(v11 + 8);
    v30(v13, v10);
    v31 = v66;
    (*(v28 + 56))(v27, v29, 1, v66);
    v21 = v62;
    sub_2587E8EE8(v27, v62);
  }

  else
  {
    v30 = *(v11 + 8);
    v30(v13, v10);
    v31 = v66;
    v28 = v67;
    v21 = v62;
    (*(v67 + 56))(v62, 1, 1, v66);
  }

  if ((*(v28 + 48))(v21, 1, v31) == 1)
  {
    goto LABEL_10;
  }

  v60 = v30;
  v61 = v23;
  v62 = v10;
  v34 = v65;
  v35 = (*(v28 + 32))(v65, v21, v31);
  v59[1] = v59;
  MEMORY[0x28223BE20](v35);
  v37 = v59 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B7C90(0, &qword_27F9606A8, MEMORY[0x28220C200], MEMORY[0x277D84560]);
  v38 = sub_2588BBB38();
  v39 = *(v38 - 8);
  v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2588C00B0;
  (*(v39 + 104))(v41 + v40, *MEMORY[0x277CC9990], v38);
  sub_2588B9D4C(v41);
  swift_setDeallocating();
  (*(v39 + 8))(v41 + v40, v38);
  v42 = v67;
  v43 = swift_deallocClassInstance();
  MEMORY[0x28223BE20](v43);
  v45 = v59 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BB9A8();
  sub_2588BBB08();

  v46 = *(v42 + 8);
  v46(v45, v31);
  v47 = sub_2588BB7B8();
  if (v48)
  {
    v60(v37, v62);
    v46(v34, v31);
    goto LABEL_11;
  }

  v49 = v47;
  v50 = sub_2588BD838();
  MEMORY[0x28223BE20](v50 - 8);
  sub_2588BD828();
  sub_2588BD818();
  v68 = v49;
  sub_2588BD7F8();
  sub_2588BD818();
  v51 = sub_2588BD858();
  MEMORY[0x28223BE20](v51 - 8);
  sub_2588BD848();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v52 = qword_27F95DA88;
  v53 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v53 - 8);
  v54 = v52;
  sub_2588BBAB8();
  v55 = sub_2588BD8B8();
  v57 = v56;
  v60(v37, v62);
  v46(v65, v66);
  v33 = v57;
  v32 = v55;
LABEL_17:
  result.value._object = v33;
  result.value._countAndFlagsBits = v32;
  return result;
}

Swift::String_optional __swiftcall MedicalIDPersonalInfoViewModel.spokenLanguageDescription()()
{
  v1 = (v0 + *(type metadata accessor for MedicalIDData(0) + 60));
  countAndFlagsBits = *v1;
  v3 = v1[1];
  if (v3)
  {

    v4._countAndFlagsBits = countAndFlagsBits;
    v4._object = v3;
    MedicalIDSpokenLanguage.init(id:)(&v15, v4);
    countAndFlagsBits = v15.languageInCurrentLocale._countAndFlagsBits;
    object = v15.languageInCurrentLocale._object;
    v15.id = v15.languageInCurrentLocale;
    sub_25878F648();

    if (sub_2588BDD28())
    {
    }

    else
    {

      v6 = sub_2588BD838();
      MEMORY[0x28223BE20](v6 - 8);
      sub_2588BD828();
      sub_2588BD818();
      sub_2588BD808();

      sub_2588BD818();
      sub_2588BD808();

      sub_2588BD818();
      v7 = sub_2588BD858();
      MEMORY[0x28223BE20](v7 - 8);
      sub_2588BD848();
      if (qword_27F95D000 != -1)
      {
        swift_once();
      }

      v8 = qword_27F95DA88;
      v9 = sub_2588BBAC8();
      MEMORY[0x28223BE20](v9 - 8);
      v10 = v8;
      sub_2588BBAB8();
      countAndFlagsBits = sub_2588BD8B8();
      object = v11;
    }
  }

  else
  {
    object = 0;
  }

  v12 = countAndFlagsBits;
  v13 = object;
  result.value._object = v13;
  result.value._countAndFlagsBits = v12;
  return result;
}

Swift::String_optional __swiftcall MedicalIDPersonalInfoViewModel.localizedOrganDonationDescription()()
{
  v1 = *(v0 + *(type metadata accessor for MedicalIDData(0) + 80));
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = [v1 integerValue];
  if (v2 && v2 != 2 && v2 != 1)
  {
    v1 = 0;
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v3 = sub_2588BD858();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v4 = qword_27F95DA88;
  v5 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = v4;
  sub_2588BBAB8();
  v1 = sub_2588BD8B8();
LABEL_10:
  result.value._object = v7;
  result.value._countAndFlagsBits = v1;
  return result;
}

void MedicalIDPersonalInfoViewModel.updateOrganDonationStatus(medicalIDData:organDonationStatus:)(uint64_t a1, _BYTE *a2)
{
  v3 = *a2;
  if (*a2 > 1u || *a2)
  {
    sub_25878E130(0, &qword_27F95D898, 0x277CCABB0);
    v3 = sub_2588BDCC8();
  }

  v4 = *(type metadata accessor for MedicalIDData(0) + 80);

  *(a1 + v4) = v3;
}

uint64_t MedicalIDPersonalInfoViewModel.updatePrimaryLanguageCode(medicalIDData:primaryLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for MedicalIDData(0) + 60));

  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t MedicalIDPersonalInfoViewModel.defaultDateOfBirth()@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v15 = sub_2588BB9B8();
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BB9A8();
  sub_2588B7C90(0, &qword_27F95D880, MEMORY[0x28220BF68], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v7 = sub_2588BBB38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x277CC9990], v7);
  sub_2588BBB28();
  v11 = (*(v8 + 8))(v10, v7);
  v12 = v15;
  MEMORY[0x28223BE20](v11);
  sub_2587E8EE8(&v15 - v6, &v15 - v6);
  v13 = *(v1 + 48);
  if (v13(&v15 - v6, 1, v12) == 1)
  {
    (*(v1 + 32))(v16, v3, v12);
    result = v13(&v15 - v6, 1, v12);
    if (result != 1)
    {
      return sub_2588B9994(&v15 - v6, &qword_27F95D880, MEMORY[0x28220BF68]);
    }
  }

  else
  {
    (*(v1 + 8))(v3, v12);
    return (*(v1 + 32))(v16, &v15 - v6, v12);
  }

  return result;
}

uint64_t MedicalIDPersonalInfoViewModel.updatePersonName(medicalIDData:personName:)(void *a1, uint64_t a2, uint64_t a3)
{

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t MedicalIDPersonalInfoViewModel.updateBirthDate(medicalIDData:birthDate:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(type metadata accessor for MedicalIDPersonalInfoViewModel(0) + 28));
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_2588BB9B8();
  v25[1] = v25;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28220BF68];
  sub_2588B7C90(0, &qword_27F95D880, MEMORY[0x28220BF68], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v25 - v12;
  sub_2588B9914(a2, v25 - v12, &qword_27F95D880, v10);
  if ((*(v7 + 48))(v13, 1, v6) == 1)
  {
    sub_2588B9994(v13, &qword_27F95D880, MEMORY[0x28220BF68]);
LABEL_4:
    v14 = *(type metadata accessor for MedicalIDData(0) + 76);
    sub_2588B9994(a1 + v14, &qword_27F95DA80, MEMORY[0x28220B6E0]);
    v15 = sub_2588BB818();
    return (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  }

  (*(v7 + 32))(v9, v13, v6);
  sub_2588B7C90(0, &qword_27F95DA80, MEMORY[0x28220B6E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v25 - v18;
  v20 = v5;
  v21 = sub_2588BB958();
  v22 = [v20 hk:v21 dateOfBirthDateComponentsWithDate:?];

  sub_2588BB778();
  (*(v7 + 8))(v9, v6);
  v23 = sub_2588BB818();
  (*(*(v23 - 8) + 56))(v19, 0, 1, v23);
  v24 = type metadata accessor for MedicalIDData(0);
  return sub_2588B9A04(v19, a1 + *(v24 + 76));
}

uint64_t sub_2588B9914(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2588B7C90(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2588B9994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2588B7C90(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2588B9A04(uint64_t a1, uint64_t a2)
{
  sub_2588B7C90(0, &qword_27F95DA80, MEMORY[0x28220B6E0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s11MedicalIDUI0A23IDPersonalInfoViewModelV33localizedOrganDonationPickerValue3forSSAA0hI6StatusO_tFZ_0(_BYTE *a1)
{
  if (*a1 > 2u)
  {
    [objc_opt_self() hasStoredRegistrant];
  }

  v1 = sub_2588BD858();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = v2;
  sub_2588BBAB8();
  return sub_2588BD8B8();
}

uint64_t sub_2588B9D4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2588BA19C(0);
    v3 = sub_2588BDDB8();
    v36 = v3 + 56;
    result = sub_2588BBB38();
    v5 = result;
    v6 = 0;
    v7 = *(result - 8);
    v8 = *(v7 + 16);
    v34 = v7 + 16;
    v35 = v8;
    v29 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = (v7 + 8);
    v27 = v1;
    v28 = (v7 + 32);
    v10 = *(v7 + 64);
    v37 = *(v7 + 72);
    v33 = v10;
    while (1)
    {
      MEMORY[0x28223BE20](result);
      v32 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
      v12 = &v26 - v32;
      v35(&v26 - v32);
      sub_2588BA210(&qword_27F9618A8, MEMORY[0x28220C218]);
      v13 = sub_2588BD788();
      v14 = ~(-1 << *(v3 + 32));
      v15 = v13 & v14;
      v16 = (v13 & v14) >> 6;
      v17 = *(v36 + 8 * v16);
      v18 = 1 << (v13 & v14);
      if ((v18 & v17) != 0)
      {
        v30 = &v26;
        v31 = v6;
        v19 = v3;
        do
        {
          MEMORY[0x28223BE20](v13);
          v20 = &v26 - v32;
          (v35)(&v26 - v32, *(v19 + 48) + v15 * v37, v5);
          sub_2588BA210(&qword_27F9618B0, MEMORY[0x28220C220]);
          v21 = sub_2588BD7D8();
          v22 = *v9;
          v13 = (*v9)(v20, v5);
          if (v21)
          {
            result = v22(v12, v5);
            v1 = v27;
            v3 = v19;
            v6 = v31;
            goto LABEL_4;
          }

          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v36 + 8 * (v15 >> 6));
          v18 = 1 << v15;
        }

        while (((1 << v15) & v17) != 0);
        v1 = v27;
        v3 = v19;
        v6 = v31;
      }

      *(v36 + 8 * v16) = v18 | v17;
      result = (*v28)(*(v3 + 48) + v15 * v37, v12, v5);
      v23 = *(v3 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      *(v3 + 16) = v25;
LABEL_4:
      if (++v6 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_2588BA050(uint64_t a1)
{
  type metadata accessor for MedicalIDData(319);
  if (v1 <= 0x3F)
  {
    sub_2588BBB48();
    if (v2 <= 0x3F)
    {
      sub_2588BBAC8();
      if (v3 <= 0x3F)
      {
        sub_2588BA134(319);
        if (v4 <= 0x3F)
        {
          sub_25878E130(319, &qword_27F961898, 0x277CCAC08);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2588BA134(uint64_t a1)
{
  if (!qword_27F961888)
  {
    sub_25878E130(255, &qword_27F961890, 0x277CBEA80);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961888);
    }
  }
}

void sub_2588BA19C(uint64_t a1)
{
  if (!qword_27F9618A0)
  {
    sub_2588BBB38();
    sub_2588BA210(&qword_27F9618A8, MEMORY[0x28220C218]);
    v1 = sub_2588BDDC8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9618A0);
    }
  }
}

uint64_t sub_2588BA210(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2588BBB38();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2588BA280(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  sub_258828558(0, &qword_27F9618E8, &qword_27F9618F0, &type metadata for EditSectionHeaderViewDescriptionStyle);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v46 - v4;
  sub_2588BAA84(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v56 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = &v46 - v8;
  sub_258828558(0, &qword_27F9618D0, &qword_27F9618D8, &type metadata for EditSectionHeaderViewTitleStyle);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 24);
  v50 = *(a1 + 16);
  v58 = v16;
  v59 = v14;
  v60 = v15;
  v17 = sub_25878F648();

  v51 = v17;
  v18 = sub_2588BCDF8();
  v20 = v19;
  v59 = v18;
  v60 = v19;
  v22 = v21 & 1;
  v61 = v21 & 1;
  v62 = v23;
  sub_258790D88();
  v49 = v24;
  v25 = swift_allocObject();
  v63 = *(a1 + 32);
  v26 = v63;
  v48 = xmmword_2588C17A0;
  *(v25 + 16) = xmmword_2588C17A0;
  *(v25 + 32) = v26;
  *(v25 + 48) = 0x726564616548;
  *(v25 + 56) = 0xE600000000000000;
  *(v25 + 64) = 0x656C746954;
  *(v25 + 72) = 0xE500000000000000;
  swift_bridgeObjectRetain_n();
  v27 = sub_2588BD9A8();

  v28 = HKUIJoinStringsForAutomationIdentifier();

  if (v28)
  {
    sub_2588BD8A8();

    sub_258828338(0, &qword_27F9618D8, &type metadata for EditSectionHeaderViewTitleStyle);
    sub_2588BADD0(&qword_27F961910, &qword_27F9618D8, &type metadata for EditSectionHeaderViewTitleStyle, sub_25885AF90);
    sub_2588BCFB8();

    sub_2587B1CF8(v18, v20, v22);

    if (!v58)
    {
      sub_25882C708(&v63);
      v41 = 1;
      v40 = v53;
      goto LABEL_6;
    }

    v59 = v50;
    v60 = v58;

    v29 = sub_2588BCDF8();
    v31 = v30;
    v59 = v29;
    v60 = v30;
    v33 = v32 & 1;
    v61 = v32 & 1;
    v62 = v34;
    v35 = swift_allocObject();
    v36 = v63;
    *(v35 + 16) = v48;
    *(v35 + 32) = v36;
    *(v35 + 48) = 0x726564616548;
    *(v35 + 56) = 0xE600000000000000;
    *(v35 + 64) = 0x7470697263736544;
    *(v35 + 72) = 0xEB000000006E6F69;
    v37 = sub_2588BD9A8();

    v38 = HKUIJoinStringsForAutomationIdentifier();

    if (v38)
    {
      sub_2588BD8A8();

      sub_258828338(0, &qword_27F9618F0, &type metadata for EditSectionHeaderViewDescriptionStyle);
      sub_2588BADD0(&qword_27F961918, &qword_27F9618F0, &type metadata for EditSectionHeaderViewDescriptionStyle, sub_25885B5E4);
      v39 = v47;
      sub_2588BCFB8();

      sub_2587B1CF8(v29, v31, v33);

      v40 = v53;
      sub_2588BAE50(v39, v53);
      v41 = 0;
LABEL_6:
      (*(v54 + 56))(v40, v41, 1, v55);
      v42 = v52;
      sub_2588BAC20(v13, v52);
      v43 = v56;
      sub_2588BAC9C(v40, v56);
      v44 = v57;
      sub_2588BAC20(v42, v57);
      sub_2588BA9FC(0);
      sub_2588BAC9C(v43, v44 + *(v45 + 48));
      sub_2588BAD00(v40);
      sub_2588BAD5C(v13);
      sub_2588BAD00(v43);
      sub_2588BAD5C(v42);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2588BA7F8(uint64_t a1@<X8>)
{
  sub_2588BA910(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[1];
  v19[0] = *v1;
  v19[1] = v6;
  v19[2] = v1[2];
  *v5 = sub_2588BC6F8();
  *(v5 + 1) = 0x4010000000000000;
  v5[16] = 0;
  sub_2588BAAF4(0);
  sub_2588BA280(v19, &v5[*(v7 + 44)]);
  v8 = sub_2588BCBA8();
  sub_2588BBE38();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_2588BAB5C(v5, a1);
  sub_2588BABC0(0);
  v18 = a1 + *(v17 + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
}

void sub_2588BA910(uint64_t a1)
{
  if (!qword_27F9618B8)
  {
    sub_2588BA9A4(255);
    sub_2588BAF8C(&qword_27F9618F8, sub_2588BA9A4, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9618B8);
    }
  }
}

void sub_2588BA9A4(uint64_t a1)
{
  if (!qword_27F9618C0)
  {
    sub_2588BA9FC(255);
    v1 = sub_2588BD658();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9618C0);
    }
  }
}

void sub_2588BA9FC(uint64_t a1)
{
  if (!qword_27F9618C8)
  {
    sub_258828558(255, &qword_27F9618D0, &qword_27F9618D8, &type metadata for EditSectionHeaderViewTitleStyle);
    sub_2588BAA84(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9618C8);
    }
  }
}

void sub_2588BAA84(uint64_t a1)
{
  if (!qword_27F9618E0)
  {
    sub_258828558(255, &qword_27F9618E8, &qword_27F9618F0, &type metadata for EditSectionHeaderViewDescriptionStyle);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9618E0);
    }
  }
}

void sub_2588BAAF4(uint64_t a1)
{
  if (!qword_27F961900)
  {
    sub_2588BA9A4(255);
    v1 = sub_2588BC0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961900);
    }
  }
}

uint64_t sub_2588BAB5C(uint64_t a1, uint64_t a2)
{
  sub_2588BA910(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2588BABC0(uint64_t a1)
{
  if (!qword_27F961908)
  {
    sub_2588BA910(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961908);
    }
  }
}

uint64_t sub_2588BAC20(uint64_t a1, uint64_t a2)
{
  sub_258828558(0, &qword_27F9618D0, &qword_27F9618D8, &type metadata for EditSectionHeaderViewTitleStyle);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588BAC9C(uint64_t a1, uint64_t a2)
{
  sub_2588BAA84(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588BAD00(uint64_t a1)
{
  sub_2588BAA84(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2588BAD5C(uint64_t a1)
{
  sub_258828558(0, &qword_27F9618D0, &qword_27F9618D8, &type metadata for EditSectionHeaderViewTitleStyle);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2588BADD0(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_258828338(255, a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2588BAE50(uint64_t a1, uint64_t a2)
{
  sub_258828558(0, &qword_27F9618E8, &qword_27F9618F0, &type metadata for EditSectionHeaderViewDescriptionStyle);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2588BAEDC()
{
  result = qword_27F961920;
  if (!qword_27F961920)
  {
    sub_2588BABC0(255);
    sub_2588BAF8C(&qword_27F961928, sub_2588BA910, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961920);
  }

  return result;
}

uint64_t sub_2588BAF8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2588BB010()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F961930 = result;
  return result;
}

uint64_t sub_2588BB09C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_2588BBC58();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  if (qword_27F95D180 != -1)
  {
    swift_once();
  }

  v5 = qword_27F961930;
  return sub_2588BBC48();
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27F969698 == -1)
  {
    if (qword_27F9696A0)
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
    if (qword_27F9696A0)
    {
      return _availability_version_check();
    }
  }

  if (qword_27F969690 != -1)
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
      if (dword_27F969684 > a3)
      {
        return 1;
      }

      if (dword_27F969684 >= a3)
      {
        return dword_27F969688 >= a4;
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
  v1 = qword_27F9696A0;
  if (qword_27F9696A0)
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
      qword_27F9696A0 = MEMORY[0x28223BE68];
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
                          v14 = MEMORY[0x259C8D450](v13);
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
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27F969684, &dword_27F969688);
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