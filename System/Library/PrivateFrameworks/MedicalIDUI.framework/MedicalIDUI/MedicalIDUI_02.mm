uint64_t sub_2587C3A70(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MedicalIDDataContentView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2588BC248() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2587AE310;

  return sub_2587BF248(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_2587C3BC8()
{
  v1 = *(type metadata accessor for MedicalIDDataContentView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2587BDFD0(v2);
}

uint64_t sub_2587C3C28@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MedicalIDDataContentView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_2587BE054(a1, v6, a2);
}

uint64_t sub_2587C3CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587C3D10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587C3D78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for MedicalIDDataContentView(0);
  v57 = *(*(v1 - 8) + 80);

  v56 = v1;
  v55 = v0 + ((v57 + 16) & ~v57);
  v2 = (v55 + *(v1 + 20));

  v64 = type metadata accessor for MedicalIDDataViewModel(0);
  v3 = (v2 + v64[5]);

  v4 = type metadata accessor for MedicalIDData(0);
  v5 = v4[13];
  v6 = sub_2588BB9B8();
  v65 = *(v6 - 8);
  v7 = *(v65 + 48);
  if (!v7(v3 + v5, 1, v6))
  {
    (*(v65 + 8))(v3 + v5, v6);
  }

  v8 = v4[14];
  if (!v7(v3 + v8, 1, v6))
  {
    (*(v65 + 8))(v3 + v8, v6);
  }

  v9 = (v3 + v4[18]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_2587C2610(*v9, v10);
  }

  v11 = v4[19];
  v12 = sub_2588BB818();
  v58 = *(v12 - 8);
  v62 = *(v58 + 48);
  if (!v62(v3 + v11, 1, v12))
  {
    (*(v58 + 8))(v3 + v11, v12);
  }

  v13 = v4[21];
  if (!v7(v3 + v13, 1, v6))
  {
    (*(v65 + 8))(v3 + v13, v6);
  }

  v14 = v64[6];
  v15 = sub_2588BBB48();
  v60 = *(*(v15 - 8) + 8);
  v61 = v15;
  v60(v2 + v14);

  v16 = v64[8];
  v17 = sub_2588BBAC8();
  v63 = *(*(v17 - 8) + 8);
  v63(v2 + v16, v17);
  v59 = v2;
  v18 = v2 + v64[9];

  v19 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v20 = &v18[v19[5]];

  v21 = v4[13];
  if (!v7(&v20[v21], 1, v6))
  {
    (*(v65 + 8))(&v20[v21], v6);
  }

  v22 = v4[14];
  if (!v7(&v20[v22], 1, v6))
  {
    (*(v65 + 8))(&v20[v22], v6);
  }

  v23 = &v20[v4[18]];
  v24 = v23[1];
  if (v24 >> 60 != 15)
  {
    sub_2587C2610(*v23, v24);
  }

  v25 = v4[19];
  if (!v62(&v20[v25], 1, v12))
  {
    (*(v58 + 8))(&v20[v25], v12);
  }

  v26 = v4[21];
  if (!v7(&v20[v26], 1, v6))
  {
    (*(v65 + 8))(&v20[v26], v6);
  }

  v63(&v18[v19[6]], v17);
  v27 = &v18[v19[7]];
  v63(v27, v17);

  v28 = &v18[v19[8]];
  v63(v28, v17);
  v29 = type metadata accessor for MedicalIDWeightFormatter(0);

  v30 = (v59 + v64[10]);

  v31 = v4[13];
  if (!v7(v30 + v31, 1, v6))
  {
    (*(v65 + 8))(v30 + v31, v6);
  }

  v32 = v4[14];
  if (!v7(v30 + v32, 1, v6))
  {
    (*(v65 + 8))(v30 + v32, v6);
  }

  v33 = (v30 + v4[18]);
  v34 = v33[1];
  if (v34 >> 60 != 15)
  {
    sub_2587C2610(*v33, v34);
  }

  v35 = v4[19];
  if (!v62(v30 + v35, 1, v12))
  {
    (*(v58 + 8))(v30 + v35, v12);
  }

  v36 = v4[21];
  if (!v7(v30 + v36, 1, v6))
  {
    (*(v65 + 8))(v30 + v36, v6);
  }

  v37 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  (v60)(v30 + v37[5], v61);
  v63(v30 + v37[6], v17);

  v38 = (v59 + v64[11]);

  v39 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  (v60)(v38 + *(v39 + 20), v61);
  v63(v38 + *(v39 + 24), v17);
  v40 = v59 + v64[12];

  v41 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v42 = &v40[v41[5]];

  v43 = v4[13];
  if (!v7(&v42[v43], 1, v6))
  {
    (*(v65 + 8))(&v42[v43], v6);
  }

  v44 = v4[14];
  if (!v7(&v42[v44], 1, v6))
  {
    (*(v65 + 8))(&v42[v44], v6);
  }

  v45 = &v42[v4[18]];
  v46 = v45[1];
  if (v46 >> 60 != 15)
  {
    sub_2587C2610(*v45, v46);
  }

  v47 = v4[19];
  if (!v62(&v42[v47], 1, v12))
  {
    (*(v58 + 8))(&v42[v47], v12);
  }

  v48 = v4[21];
  if (!v7(&v42[v48], 1, v6))
  {
    (*(v65 + 8))(&v42[v48], v6);
  }

  (v60)(&v40[v41[6]], v61);
  v63(&v40[v41[7]], v17);

  v49 = v41[9];
  if (!v7(&v40[v49], 1, v6))
  {
    (*(v65 + 8))(&v40[v49], v6);
  }

  v50 = v56[7];
  sub_2587C4E34(0, &qword_27F95DB18, MEMORY[0x28220C230], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v60)(v55 + v50, v61);
  }

  else
  {
  }

  v51 = v56[8];
  sub_2587C4E34(0, &qword_27F95DB20, MEMORY[0x28220C1A0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v63((v55 + v51), v17);
  }

  else
  {
  }

  v52 = v56[9];
  sub_2587C4E34(0, &qword_27F95DB28, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = sub_2588BBF18();
    (*(*(v53 - 8) + 8))(v55 + v52, v53);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2587C4A34(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for MedicalIDDataContentView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_2587C4AB8(uint64_t a1, uint64_t a2)
{
  sub_2587C2C34(0, &qword_27F95D1F0, sub_2587A78BC, sub_2587A79DC, MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587C4B60(uint64_t a1, uint64_t a2)
{
  sub_2587A804C(0, &qword_27F95D2E8, &qword_27F95D2F0, sub_2587A82BC, sub_2587A83D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587C4BFC(uint64_t a1, uint64_t a2)
{
  sub_2587A8454(0, &qword_27F95D318, type metadata accessor for MedicalIDDeleteView, MEMORY[0x277CDF928]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2587C4C84()
{
  result = qword_27F95DB78;
  if (!qword_27F95DB78)
  {
    sub_2587A8384(255, &qword_27F95D308, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DB78);
  }

  return result;
}

unint64_t sub_2587C4D28()
{
  result = qword_27F95DB80;
  if (!qword_27F95DB80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F95DB80);
  }

  return result;
}

unint64_t sub_2587C4D8C()
{
  result = qword_27F9609F0;
  if (!qword_27F9609F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9609F0);
  }

  return result;
}

void sub_2587C4E34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2587C4E98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2587C2610(a1, a2);
  }

  return a1;
}

uint64_t sub_2587C4EAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_2587C4F14()
{
  result = qword_27F95DB98;
  if (!qword_27F95DB98)
  {
    sub_2587A8384(255, &qword_27F95D270, MEMORY[0x277CE0F78], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DB98);
  }

  return result;
}

unint64_t sub_2587C4FB8()
{
  result = qword_27F95DBA0;
  if (!qword_27F95DBA0)
  {
    sub_2587C257C(255);
    sub_2587C5068(&qword_27F95DBA8, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DBA0);
  }

  return result;
}

uint64_t sub_2587C5068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2587C50B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2587C5110(uint64_t a1, uint64_t a2)
{
  sub_2587C4E34(0, &qword_27F95DB28, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587C51BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2587C5224(uint64_t a1)
{
  if (!qword_27F95DBB8)
  {
    sub_2587C533C(255);
    sub_2587C2760(255);
    sub_2587BC38C(255, &qword_27F95DB08, &type metadata for MedicalIDDisplaySection, MEMORY[0x277D83D88]);
    sub_2587A7460(255);
    sub_2587C27E4();
    swift_getOpaqueTypeConformance2();
    sub_2587C2B98();
    swift_getOpaqueTypeConformance2();
    v1 = sub_2588BC2C8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95DBB8);
    }
  }
}

void sub_2587C533C(uint64_t a1)
{
  if (!qword_27F95DBC0)
  {
    sub_2587C2760(255);
    sub_2587BC38C(255, &qword_27F95DB08, &type metadata for MedicalIDDisplaySection, MEMORY[0x277D83D88]);
    sub_2587A7460(255);
    sub_2587C27E4();
    swift_getOpaqueTypeConformance2();
    sub_2587C2B98();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95DBC0);
    }
  }
}

uint64_t sub_2587C544C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v51 = v2;
  v52 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[5];
    v38 = v5[4];
    v39 = v8;
    v9 = v5[7];
    v40 = v5[6];
    v41 = v9;
    v10 = v5[1];
    v35[0] = *v5;
    v35[1] = v10;
    v11 = v5[3];
    v36 = v5[2];
    v37 = v11;
    v27 = v35[0];
    v28 = v10;
    v29 = v36;
    v30 = v11;
    v31 = v38;
    v32 = v8;
    v33 = v40;
    v34 = v9;
    v12 = v6[5];
    v45 = v6[4];
    v46 = v12;
    v13 = v6[7];
    v47 = v6[6];
    v48 = v13;
    v14 = v6[1];
    v42[0] = *v6;
    v42[1] = v14;
    v15 = v6[3];
    v43 = v6[2];
    v44 = v15;
    v19 = v42[0];
    v20 = v14;
    v21 = v43;
    v22 = v15;
    v23 = v45;
    v24 = v12;
    v25 = v47;
    v26 = v13;
    sub_2587914E8(v35, v18);
    sub_2587914E8(v42, v18);
    v16 = _s11MedicalIDUI0A18IDEmergencyContactV2eeoiySbAC_ACtFZ_0(&v27, &v19);
    v49[4] = v23;
    v49[5] = v24;
    v49[6] = v25;
    v49[7] = v26;
    v49[0] = v19;
    v49[1] = v20;
    v49[2] = v21;
    v49[3] = v22;
    sub_2587C66FC(v49);
    v50[4] = v31;
    v50[5] = v32;
    v50[6] = v33;
    v50[7] = v34;
    v50[0] = v27;
    v50[1] = v28;
    v50[2] = v29;
    v50[3] = v30;
    sub_2587C66FC(v50);
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 8;
    v5 += 8;
  }

  return 1;
}

uint64_t sub_2587C55B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2588BBDE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v54 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587C6750(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587B2FC8(0);
  v11 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for BasicAlertModel.Action(0);
  v14 = MEMORY[0x28223BE20](v58);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v19 = &v47 - v18;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  if (!v20 || a1 == a2)
  {
    return 1;
  }

  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v48 = (v5 + 32);
  v49 = v11;
  v50 = (v5 + 8);
  v51 = v9;
  v52 = *(v17 + 72);
  v53 = (v5 + 48);
  v56 = v4;
  v57 = v16;
  v55 = &v47 - v18;
  while (1)
  {
    result = sub_2587C67A8(v22, v19, type metadata accessor for BasicAlertModel.Action);
    if (!v20)
    {
      break;
    }

    sub_2587C67A8(v23, v16, type metadata accessor for BasicAlertModel.Action);
    if ((sub_2588BB9D8() & 1) == 0)
    {
      goto LABEL_24;
    }

    v25 = v58[5];
    v26 = *&v19[v25];
    v27 = *&v19[v25 + 8];
    v28 = &v16[v25];
    v29 = v26 == *v28 && v27 == *(v28 + 1);
    if (!v29 && (sub_2588BDF98() & 1) == 0)
    {
      goto LABEL_24;
    }

    v30 = v58[6];
    v31 = *(v11 + 48);
    sub_2587C67A8(&v19[v30], v13, sub_2587C6750);
    v32 = &v57[v30];
    v16 = v57;
    sub_2587C67A8(v32, &v13[v31], sub_2587C6750);
    v33 = *v53;
    if ((*v53)(v13, 1, v4) == 1)
    {
      if (v33(&v13[v31], 1, v4) != 1)
      {
        goto LABEL_23;
      }

      sub_2587C6810(v13, sub_2587C6750);
      v19 = v55;
    }

    else
    {
      v34 = v13;
      v35 = v13;
      v36 = v51;
      sub_2587C67A8(v34, v51, sub_2587C6750);
      if (v33((v35 + v31), 1, v4) == 1)
      {
        (*v50)(v36, v4);
        v13 = v35;
LABEL_23:
        sub_2587C6810(v13, sub_2587B2FC8);
        v19 = v55;
LABEL_24:
        sub_2587C6810(v16, type metadata accessor for BasicAlertModel.Action);
        sub_2587C6810(v19, type metadata accessor for BasicAlertModel.Action);
        return 0;
      }

      v37 = v54;
      (*v48)(v54, v35 + v31, v4);
      sub_2587C6870(&qword_27F95DA20, MEMORY[0x277CDD650], MEMORY[0x277CDD658]);
      v38 = sub_2588BD7D8();
      v39 = *v50;
      v40 = v37;
      v41 = v56;
      v16 = v57;
      (*v50)(v40, v56);
      v39(v36, v41);
      sub_2587C6810(v35, sub_2587C6750);
      v13 = v35;
      v11 = v49;
      v19 = v55;
      if ((v38 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v42 = v58[7];
    v43 = v16;
    v44 = *&v19[v42] != 0;
    v45 = *(v43 + v42) == 0;
    v46 = v44 ^ v45;
    sub_2587C6810(v43, type metadata accessor for BasicAlertModel.Action);
    sub_2587C6810(v19, type metadata accessor for BasicAlertModel.Action);
    if (v44 != v45)
    {
      v23 += v52;
      v22 += v52;
      v29 = v20-- == 1;
      v4 = v56;
      v16 = v57;
      v19 = v55;
      if (!v29)
      {
        continue;
      }
    }

    return v46;
  }

  __break(1u);
  return result;
}

uint64_t sub_2587C5BA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2588C0830);
  sub_2587C6870(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel, &protocol conformance descriptor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_2587C5C90()
{
  swift_getKeyPath(byte_2588C0830);
  sub_2587C6870(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel, &protocol conformance descriptor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  swift_beginAccess();
}

uint64_t type metadata accessor for MedicalIDEditableEmergencyContactsModel(uint64_t a1)
{
  result = qword_27F95DBD8;
  if (!qword_27F95DBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587C5D94(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_2587C544C(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_2588C0830);
    MEMORY[0x28223BE20](KeyPath);
    sub_2587C6870(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel, &protocol conformance descriptor for MedicalIDEditableEmergencyContactsModel);
    sub_2588BBB88();
  }
}

uint64_t sub_2587C5EDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t (*sub_2587C5F60(uint64_t *a1))()
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
  swift_getKeyPath(byte_2588C0830);
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI39MedicalIDEditableEmergencyContactsModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587C6870(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel, &protocol conformance descriptor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath(byte_2588C0830);
  sub_2588BBBB8();

  v4[7] = sub_2587C5B50(v4);
  return sub_2587C6098;
}

void sub_2587C6098(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath(byte_2588C0830);
  sub_2588BBBA8();

  free(v1);
}

uint64_t MedicalIDEditableEmergencyContactsModel.baseIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *MedicalIDEditableEmergencyContactsModel.__allocating_init(emergencyContacts:suggestedEmergencyContacts:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = sub_2588BD9A8();
  v6 = HKUIJoinStringsForAutomationIdentifier();

  if (v6)
  {
    v7 = sub_2588BD8A8();
    v9 = v8;
  }

  else
  {
    v9 = 0x80000002588C8A90;
    v7 = 0xD000000000000011;
  }

  v4[4] = v7;
  v4[5] = v9;
  sub_2588BBBC8();
  v4[2] = a1;
  v4[3] = a2;
  return v4;
}

void *MedicalIDEditableEmergencyContactsModel.init(emergencyContacts:suggestedEmergencyContacts:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_2588BD9A8();
  v6 = HKUIJoinStringsForAutomationIdentifier();

  if (v6)
  {
    v7 = sub_2588BD8A8();
    v9 = v8;
  }

  else
  {
    v9 = 0x80000002588C8A90;
    v7 = 0xD000000000000011;
  }

  v2[4] = v7;
  v2[5] = v9;
  sub_2588BBBC8();
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t sub_2587C62DC()
{
  swift_getKeyPath(byte_2588C0830);
  sub_2587C6870(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel, &protocol conformance descriptor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  swift_beginAccess();
  v1 = *(*(v0 + 16) + 16);
  result = MEMORY[0x277D84F90];
  if (v1)
  {
    v5 = MEMORY[0x277D84F90];

    sub_2588BDE68();
    v3 = 32;
    do
    {
      v4 = sub_2587D294C();
      sub_2588BDE38();
      sub_2588BDE78();
      sub_2588BDE88();
      sub_2588BDE48();
      v3 += 128;
      --v1;
    }

    while (v1);

    return v5;
  }

  return result;
}

char *MedicalIDEditableEmergencyContactsModel.deinit()
{

  v1 = OBJC_IVAR____TtC11MedicalIDUI39MedicalIDEditableEmergencyContactsModel___observationRegistrar;
  v2 = sub_2588BBBD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MedicalIDEditableEmergencyContactsModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11MedicalIDUI39MedicalIDEditableEmergencyContactsModel___observationRegistrar;
  v2 = sub_2588BBBD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2587C658C(uint64_t a1)
{
  result = sub_2588BBBD8();
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

void sub_2587C6750(uint64_t a1)
{
  if (!qword_27F95D9E0)
  {
    sub_2588BBDE8();
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D9E0);
    }
  }
}

uint64_t sub_2587C67A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587C6810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2587C6870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2587C68B8()
{
  swift_getKeyPath("0/\n'");
  sub_2587C8814();
  sub_2588BBB98();

  return *(v0 + 16);
}

uint64_t sub_2587C6928(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath("0/\n'");
    MEMORY[0x28223BE20](KeyPath);
    sub_2587C8814();
    sub_2588BBB88();
  }

  return result;
}

uint64_t sub_2587C6A08()
{
  swift_getKeyPath("P/\n'");
  sub_2587C8814();
  sub_2588BBB98();

  return *(v0 + 17);
}

uint64_t sub_2587C6A78(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath("P/\n'");
    MEMORY[0x28223BE20](KeyPath);
    sub_2587C8814();
    sub_2588BBB88();
  }

  return result;
}

uint64_t sub_2587C6B58()
{
  v1 = OBJC_IVAR____TtC11MedicalIDUI34MedicalIDEditableSettingsViewModel___observationRegistrar;
  v2 = sub_2588BBBD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id MedicalIDSettingsViewModel.healthStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicalIDSettingsViewModel(0) + 20));

  return v1;
}

uint64_t MedicalIDSettingsViewModel.profileFirstName.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicalIDSettingsViewModel(0) + 24));

  return v1;
}

uint64_t MedicalIDSettingsViewModel.baseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicalIDSettingsViewModel(0) + 44));

  return v1;
}

uint64_t MedicalIDSettingsViewModel.init(medicalIDData:healthStore:profileFirstName:hasPairedWatch:isEEDAvailable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v14 = sub_2588BD9A8();
  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (v15)
  {
    v16 = sub_2588BD8A8();
    v18 = v17;
  }

  else
  {
    v18 = 0x80000002588C90D0;
    v16 = 0xD000000000000011;
  }

  v19 = type metadata accessor for MedicalIDSettingsViewModel(0);
  v20 = (a7 + v19[11]);
  *v20 = v16;
  v20[1] = v18;
  sub_2587B94F8(a1, a7);
  *(a7 + v19[5]) = a2;
  v21 = (a7 + v19[6]);
  *v21 = a3;
  v21[1] = a4;
  v22 = type metadata accessor for MedicalIDData(0);
  *(a7 + v19[9]) = (*(a1 + *(v22 + 64)) & 1) == 0;
  v23 = *(a1 + *(v22 + 68));
  result = sub_2587B955C(a1);
  *(a7 + v19[10]) = v23;
  *(a7 + v19[7]) = a5 & 1;
  *(a7 + v19[8]) = a6 & 1;
  return result;
}

uint64_t MedicalIDSettingsViewModel.showWhenLockedDetail.getter()
{
  type metadata accessor for MedicalIDSettingsViewModel(0);
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
  return sub_2588BD8B8();
}

uint64_t sub_2587C7048(uint64_t a1, uint64_t a2)
{
  v2 = sub_2588BD858();
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v3 = qword_27F95DA88;
  v4 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = v3;
  sub_2588BBAB8();
  return sub_2588BD8B8();
}

uint64_t MedicalIDSettingsViewModel.showWhenLockedFooter.getter()
{
  v1 = type metadata accessor for MedicalIDSettingsViewModel(0);
  v2 = *(v0 + *(v1 + 20));
  v3 = [v2 profileIdentifier];
  v4 = [v3 type];

  if (v4 == 3 && *(v0 + *(v1 + 24) + 8))
  {
    v5 = sub_2588BD838();
    MEMORY[0x28223BE20](v5 - 8);
    sub_2588BD828();
    sub_2588BD818();
    sub_2588BD808();
    sub_2588BD818();
    v6 = sub_2588BD858();
    MEMORY[0x28223BE20](v6 - 8);
    sub_2588BD848();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v7 = qword_27F95DA88;
    v8 = sub_2588BBAC8();
    MEMORY[0x28223BE20](v8 - 8);
    v9 = v7;
    sub_2588BBAB8();
    return sub_2588BD8B8();
  }

  else
  {
    v11 = [v2 profileIdentifier];
    v12 = [v11 type];

    if (v12 == 3)
    {
      if (qword_27F95D170 != -1)
      {
        swift_once();
      }

      v13 = sub_2588BBC98();
      __swift_project_value_buffer(v13, qword_27F969938);
      v14 = sub_2588BBC78();
      v15 = sub_2588BDBD8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v22[0] = v17;
        *v16 = 136315394;
        *(v16 + 4) = sub_258790224(0xD00000000000001ALL, 0x80000002588C08F0, v22);
        *(v16 + 12) = 2080;
        *(v16 + 14) = sub_258790224(0xD000000000000014, 0x80000002588C9340, v22);
        _os_log_impl(&dword_25878B000, v14, v15, "%s %s could not fetch first name", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C8DBE0](v17, -1, -1);
        MEMORY[0x259C8DBE0](v16, -1, -1);
      }
    }

    v18 = sub_2588BD858();
    MEMORY[0x28223BE20](v18 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v19 = qword_27F95DA88;
    v20 = sub_2588BBAC8();
    MEMORY[0x28223BE20](v20 - 8);
    v21 = v19;
    sub_2588BBAB8();
    return sub_2588BD8B8();
  }
}

Swift::Bool __swiftcall MedicalIDSettingsViewModel.isShowWhenLockedEditable(with:)(MIUIDisplayConfiguration *with)
{
  v3 = *(v1 + *(type metadata accessor for MedicalIDSettingsViewModel(0) + 20));
  v4 = [(MIUIDisplayConfiguration *)with isEditingAvailable];
  if (v4)
  {
    v5 = [v3 profileIdentifier];
    v6 = [v5 type];

    LOBYTE(v4) = v6 != 3 || [(MIUIDisplayConfiguration *)with accessPoint]== 8;
  }

  return v4;
}

uint64_t MedicalIDSettingsViewModel.ShareDuringEmergencyCallViewState.hashValue.getter()
{
  v1 = *v0;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v1);
  return sub_2588BE078();
}

MedicalIDUI::MedicalIDSettingsViewModel::ShareDuringEmergencyCallViewState __swiftcall MedicalIDSettingsViewModel.shareDuringEmergencyCallViewState(with:hasShareDuringEmergencyCallBeenEnabled:)(MIUIDisplayConfiguration *with, Swift::Bool hasShareDuringEmergencyCallBeenEnabled)
{
  v6 = v2;
  v7 = type metadata accessor for MedicalIDSettingsViewModel(0);
  v8 = *(v3 + *(v7 + 20));
  if ([(MIUIDisplayConfiguration *)with isEditingAvailable])
  {
    v9 = [v8 profileIdentifier];
    v10 = [v9 type];

    if (v10 != 3 || [(MIUIDisplayConfiguration *)with accessPoint]== 8)
    {
      if (*(v3 + *(v7 + 32)) == 1)
      {
        if (qword_27F95D170 != -1)
        {
          swift_once();
        }

        v11 = sub_2588BBC98();
        __swift_project_value_buffer(v11, qword_27F969938);
        v12 = sub_2588BBC78();
        v13 = sub_2588BDBB8();
        if (!os_log_type_enabled(v12, v13))
        {
          goto LABEL_21;
        }

        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v30 = v15;
        *v14 = 136315394;
        *(v14 + 4) = sub_258790224(0xD00000000000001ALL, 0x80000002588C08F0, &v30);
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_258790224(0xD00000000000004FLL, 0x80000002588C9390, &v30);
        v16 = "[%s][%s]: EED is available to edit";
LABEL_20:
        _os_log_impl(&dword_25878B000, v12, v13, v16, v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C8DBE0](v15, -1, -1);
        MEMORY[0x259C8DBE0](v14, -1, -1);
LABEL_21:

        v23 = 0;
        goto LABEL_27;
      }

      if (hasShareDuringEmergencyCallBeenEnabled)
      {
        if (qword_27F95D170 != -1)
        {
          swift_once();
        }

        v24 = sub_2588BBC98();
        __swift_project_value_buffer(v24, qword_27F969938);
        v12 = sub_2588BBC78();
        v13 = sub_2588BDBB8();
        if (!os_log_type_enabled(v12, v13))
        {
          goto LABEL_21;
        }

        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v30 = v15;
        *v14 = 136315394;
        *(v14 + 4) = sub_258790224(0xD00000000000001ALL, 0x80000002588C08F0, &v30);
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_258790224(0xD00000000000004FLL, 0x80000002588C9390, &v30);
        v16 = "[%s][%s]: EED is temporarily available because it is on";
        goto LABEL_20;
      }

      goto LABEL_22;
    }
  }

  if (*(v3 + *(v7 + 32)) != 1)
  {
LABEL_22:
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v25 = sub_2588BBC98();
    __swift_project_value_buffer(v25, qword_27F969938);
    v26 = sub_2588BBC78();
    v27 = sub_2588BDBB8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_258790224(0xD00000000000001ALL, 0x80000002588C08F0, &v30);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_258790224(0xD00000000000004FLL, 0x80000002588C9390, &v30);
      _os_log_impl(&dword_25878B000, v26, v27, "[%s][%s]: EED is unavailable", v28, 0x16u);
      v23 = 2;
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v29, -1, -1);
      MEMORY[0x259C8DBE0](v28, -1, -1);
    }

    else
    {

      v23 = 2;
    }

    goto LABEL_27;
  }

  if (qword_27F95D170 != -1)
  {
    swift_once();
  }

  v17 = sub_2588BBC98();
  __swift_project_value_buffer(v17, qword_27F969938);
  v18 = sub_2588BBC78();
  v19 = sub_2588BDBB8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_258790224(0xD00000000000001ALL, 0x80000002588C08F0, &v30);
    _os_log_impl(&dword_25878B000, v18, v19, "[%s]: EED is read only", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x259C8DBE0](v21, -1, -1);
    MEMORY[0x259C8DBE0](v20, -1, -1);
  }

  v23 = 1;
LABEL_27:
  *v6 = v23;
  return result;
}

Swift::Bool __swiftcall MedicalIDSettingsViewModel.showShareDuringEmergencyCall(with:hasShareDuringEmergencyCallBeenEnabled:)(MIUIDisplayConfiguration *with, Swift::Bool hasShareDuringEmergencyCallBeenEnabled)
{
  v4 = [(MIUIDisplayConfiguration *)with isShareDuringEmergencyCallVisible];
  if (v4)
  {
    MedicalIDSettingsViewModel.shareDuringEmergencyCallViewState(with:hasShareDuringEmergencyCallBeenEnabled:)(with, hasShareDuringEmergencyCallBeenEnabled);
    LOBYTE(v4) = v6 < 2u;
  }

  return v4;
}

uint64_t MedicalIDSettingsViewModel.shareDuringEmergencyCallDetail.getter()
{
  type metadata accessor for MedicalIDSettingsViewModel(0);
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
  return sub_2588BD8B8();
}

uint64_t MedicalIDSettingsViewModel.shareDuringEmergencyCallFooter.getter()
{
  v1 = type metadata accessor for MedicalIDSettingsViewModel(0);
  v2 = *(v0 + *(v1 + 20));
  v3 = [v2 profileIdentifier];
  v4 = [v3 type];

  if (v4 == 3 && *(v0 + *(v1 + 24) + 8))
  {
    v5 = sub_2588BD838();
    MEMORY[0x28223BE20](v5 - 8);
    sub_2588BD828();
    sub_2588BD818();
    sub_2588BD808();
    sub_2588BD818();
    v6 = sub_2588BD858();
    MEMORY[0x28223BE20](v6 - 8);
    sub_2588BD848();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v7 = qword_27F95DA88;
    v8 = sub_2588BBAC8();
    MEMORY[0x28223BE20](v8 - 8);
    v9 = v7;
    sub_2588BBAB8();
    return sub_2588BD8B8();
  }

  else
  {
    v11 = [v2 profileIdentifier];
    v12 = [v11 type];

    if (v12 == 3)
    {
      if (qword_27F95D170 != -1)
      {
        swift_once();
      }

      v13 = sub_2588BBC98();
      __swift_project_value_buffer(v13, qword_27F969938);
      v14 = sub_2588BBC78();
      v15 = sub_2588BDBD8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v22[0] = v17;
        *v16 = 136315394;
        *(v16 + 4) = sub_258790224(0xD00000000000001ALL, 0x80000002588C08F0, v22);
        *(v16 + 12) = 2080;
        *(v16 + 14) = sub_258790224(0xD00000000000001ELL, 0x80000002588C94B0, v22);
        _os_log_impl(&dword_25878B000, v14, v15, "%s %s could not fetch first name", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C8DBE0](v17, -1, -1);
        MEMORY[0x259C8DBE0](v16, -1, -1);
      }
    }

    v18 = sub_2588BD858();
    MEMORY[0x28223BE20](v18 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v19 = qword_27F95DA88;
    v20 = sub_2588BBAC8();
    MEMORY[0x28223BE20](v20 - 8);
    v21 = v19;
    sub_2588BBAB8();
    return sub_2588BD8B8();
  }
}

char *sub_2587C8448(char *result, int64_t a2, char a3, char *a4)
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
    sub_25878E1F0(0, &qword_27F95DC20, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2587C8558()
{
  result = qword_27F95DBE8;
  if (!qword_27F95DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DBE8);
  }

  return result;
}

uint64_t sub_2587C85D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587C860C(uint64_t a1)
{
  result = sub_2588BBBD8();
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

void sub_2587C86D0(uint64_t a1)
{
  type metadata accessor for MedicalIDData(319);
  if (v1 <= 0x3F)
  {
    sub_2587C87A8();
    if (v2 <= 0x3F)
    {
      sub_25878E1F0(319, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2587C87A8()
{
  result = qword_27F95D360;
  if (!qword_27F95D360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F95D360);
  }

  return result;
}

unint64_t sub_2587C8814()
{
  result = qword_27F95DC18;
  if (!qword_27F95DC18)
  {
    type metadata accessor for MedicalIDEditableSettingsViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DC18);
  }

  return result;
}

uint64_t sub_2587C887C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, void *))
{
  v6[0] = a2;
  v6[1] = a3;
  v7 = a4 & 1;
  return a5(a1, v6);
}

void sub_2587C88BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2588BC248();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  KeyPath = swift_getKeyPath(byte_2588C0C98);
  (*(v7 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_2587CCD2C(0);
  (*(*(v12 - 8) + 16))(a3, a2, v12);
  sub_2587CD50C(0, &qword_27F95DD48, sub_2587CCD2C, sub_2587AA6D0);
  v14 = (a3 + *(v13 + 36));
  *v14 = KeyPath;
  v14[1] = sub_2587AA84C;
  v14[2] = v11;
}

double sub_2587C8A84@<D0>(_OWORD *a1@<X8>)
{
  sub_2587AA634();
  sub_2588BC5A8();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_2587C8AD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_2587CD89C;
    *(v4 + 24) = v3;
  }

  sub_2587B2344(v1);
  sub_2587AA634();
  return sub_2588BC5B8();
}

uint64_t sub_2587C8B98()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for MedicalIDEditPersonalInfoModalView(0) + 56));
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

uint64_t sub_2587C8CF0()
{
  sub_2588BE038();
  MEMORY[0x259C8D1C0](0);
  return sub_2588BE078();
}

uint64_t sub_2587C8D5C(uint64_t a1)
{
  sub_2588BE038();
  MEMORY[0x259C8D1C0](0);
  return sub_2588BE078();
}

uint64_t sub_2587C8D9C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a3;
  v65 = a2;
  v6 = type metadata accessor for MedicalIDEditPersonalInfoModalView(0);
  v7 = (a4 + v6[5]);
  sub_2587CC4B0();
  sub_2588BD2B8();
  v8 = v75;
  *v7 = v74;
  v63 = v7;
  v7[2] = v8;
  v9 = MEMORY[0x277D83D88];
  sub_25878E240(0, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v70 = 0uLL;
  sub_2588BD2B8();
  v64 = *(&v74 + 1);
  v66 = v75;
  v10 = a4 + v6[7];
  sub_2587AFFC8(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2588BB9B8();
  v15 = (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v67 = v12;
  MEMORY[0x28223BE20](v15);
  sub_2587CC5B8(v13, v13, sub_2587AFFC8);
  v68 = v10;
  sub_2588BD2B8();
  sub_2587CC688(v13, sub_2587AFFC8);
  v16 = (a4 + v6[9]);
  sub_25878E240(0, &qword_27F95DC40, &type metadata for BasicAlertModel, v9);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0;
  sub_2588BD2B8();
  v17 = v75;
  *v16 = v74;
  v16[1] = v17;
  v18 = v77;
  v16[2] = v76;
  v16[3] = v18;
  v19 = v6[11];
  *(a4 + v19) = swift_getKeyPath(byte_2588C0AD0);
  v20 = MEMORY[0x277CDF458];
  sub_2587CC500(0, &qword_27F95DB18, MEMORY[0x28220C228], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v21 = v6[12];
  *(a4 + v21) = swift_getKeyPath(byte_2588C0B00);
  sub_2587CC500(0, &qword_27F95DB20, MEMORY[0x28220C148], v20);
  swift_storeEnumTagMultiPayload();
  v22 = v6[13];
  *(a4 + v22) = swift_getKeyPath(byte_2588C0B30);
  sub_2587CC500(0, &qword_27F95DB30, MEMORY[0x277CDD848], v20);
  swift_storeEnumTagMultiPayload();
  v23 = a4 + v6[14];
  type metadata accessor for MedicalIDDataManager(0);
  sub_2587CCFE0(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  *v23 = sub_2588BBF58();
  *(v23 + 8) = v24 & 1;
  v25 = (a4 + v6[15]);
  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  *v25 = sub_2588BC358();
  v25[1] = v26;
  v27 = sub_2588BD9A8();
  v28 = HKUIJoinStringsForAutomationIdentifier();

  if (v28)
  {
    v29 = sub_2588BD8A8();
    v31 = v30;
  }

  else
  {
    v31 = 0xEC0000006F666E49;
    v29 = 0x6C616E6F73726550;
  }

  v32 = (a4 + v6[16]);
  *v32 = v29;
  v32[1] = v31;
  v33 = a4 + v6[17];
  sub_2587CC564();
  sub_2588BBE88();
  v34 = *(&v70 + 1);
  v35 = v71;
  *v33 = v70;
  *(v33 + 8) = v34;
  *(v33 + 16) = v35;
  sub_2587CC5B8(a1, a4, type metadata accessor for MedicalIDPersonalInfoViewModel);
  v36 = v65;
  *(a4 + v6[18]) = v65;
  *(a4 + v6[19]) = v69;
  v62 = type metadata accessor for MedicalIDData(0);
  v37 = (a1 + *(v62 + 72));
  v38 = *v37;
  v39 = v37[1];
  v40 = v63;
  v42 = *v63;
  v41 = v63[1];
  *v63 = v38;
  v40[1] = v39;
  v40[2] = 0;
  v65 = v36;

  sub_2587CC620(v38, v39);
  sub_2587C4E98(v42, v41);

  v43 = a1[1];
  if (v43)
  {
    v44 = *a1;
    v45 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v45 = *a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
    }

    else
    {
      v44 = 0;
      v43 = 0;
    }
  }

  else
  {
    v44 = 0;
  }

  v47 = (a4 + v6[6]);
  *v47 = v44;
  v47[1] = v43;
  v47[2] = 0;
  MEMORY[0x28223BE20](v46);
  v49 = &v62 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MedicalIDPersonalInfoViewModel.dateOfBirth()(v49);
  v50 = v68;
  sub_2587CC688(v68, sub_2587CC6E8);
  sub_2587CC6E8(0);
  *(v50 + *(v51 + 28)) = 0;
  sub_2587CD2B0(v49, v50, sub_2587AFFC8);
  v52 = v62;
  v53 = *(a1 + *(v62 + 80));
  if (v53 && (v54 = [v53 integerValue], v54 <= 2))
  {
    v55 = 0x30102u >> (8 * v54);
  }

  else
  {
    LOBYTE(v55) = 0;
  }

  v56 = a4 + v6[8];
  *v56 = v55;
  *(v56 + 8) = 0;
  v57 = (a1 + *(v52 + 60));
  v58 = *v57;
  v59 = v57[1];
  type metadata accessor for MedicalIDSpokenLanguagePickerViewModel(0);
  swift_allocObject();

  v60 = MedicalIDSpokenLanguagePickerViewModel.init(primaryLanguageCode:)(v58, v59);

  result = sub_2587CC688(a1, type metadata accessor for MedicalIDPersonalInfoViewModel);
  *(a4 + v6[10]) = v60;
  return result;
}

void sub_2587C9478(void *a1@<X8>)
{
  v2 = v1;
  sub_2587CCD2C(0);
  v54 = v4;
  v47 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v52 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v9 = type metadata accessor for MedicalIDEditPersonalInfoModalView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  if (qword_27F95D068 != -1)
  {
    swift_once();
  }

  v12 = qword_27F95DC28;
  v13 = unk_27F95DC30;
  v51 = type metadata accessor for MedicalIDEditPersonalInfoModalView;
  sub_2587CC5B8(v2, &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v45 = v2;
  v50 = *(v10 + 80);
  v14 = (v50 + 16) & ~v50;
  v48 = v14;
  v15 = swift_allocObject();
  v49 = type metadata accessor for MedicalIDEditPersonalInfoModalView;
  sub_2587CD2B0(&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v16 = (v2 + *(v9 + 36));
  v17 = v16[1];
  v63 = *v16;
  v64 = v17;
  v18 = v16[3];
  v65 = v16[2];
  v66 = v18;
  sub_2587CCB28(0, &qword_27F95DC88, &qword_27F95DC40, &type metadata for BasicAlertModel);
  v46 = v11;

  sub_2588BD2E8();
  v66 = v61;
  v67 = v62;
  v64 = v59;
  v65 = v60;
  v63 = v58;
  *a1 = swift_getKeyPath(byte_2588C0B30);
  sub_2587CC500(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_2587CD3E4(0);
  v20 = v19;
  v21 = (a1 + v19[9]);
  *v21 = v12;
  v21[1] = v13;
  v22 = (a1 + v19[10]);
  *v22 = &unk_2588C0C68;
  v22[1] = v15;
  v23 = a1 + v19[11];
  v24 = v64;
  v25 = v66;
  *(v23 + 2) = v65;
  *(v23 + 3) = v25;
  *(v23 + 8) = v67;
  *v23 = v63;
  *(v23 + 1) = v24;
  v26 = (a1 + v19[12]);
  MEMORY[0x28223BE20](v19);
  v44 = a1;
  v27 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v45;
  *(&v43 - 2) = v45;
  sub_2587CCDC0(0);
  sub_2587CCFE0(&qword_27F95DD30, sub_2587CCDC0, MEMORY[0x277CE14C0]);
  sub_2588BCCF8();
  v29 = v47 + 32;
  v30 = *(v47 + 32);
  v31 = v52;
  v32 = v8;
  v33 = v54;
  v30(v52, v32, v54);
  v34 = (*(v29 + 48) + 16) & ~*(v29 + 48);
  v35 = swift_allocObject();
  v30((v35 + v34), v31, v33);
  *v26 = sub_2587CD698;
  v26[1] = v35;
  v36 = v44;
  v37 = v44 + v20[13];
  v55 = 0;
  sub_2588BD2B8();
  v38 = v57;
  *v37 = v56;
  *(v37 + 1) = v38;
  sub_2587CC5B8(v28, v27, v51);
  v39 = v48;
  v40 = swift_allocObject();
  sub_2587CD2B0(v27, v40 + v39, v49);
  sub_2587CD778(0);
  v42 = (v36 + *(v41 + 36));
  *v42 = sub_2587CD718;
  v42[1] = v40;
  v42[2] = 0;
  v42[3] = 0;
}

uint64_t sub_2587C99EC()
{
  v0[2] = sub_2588BDA78();
  v0[3] = sub_2588BDA68();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2587C9A98;

  return sub_2587C9CBC();
}

uint64_t sub_2587C9A98()
{
  *(*v1 + 40) = v0;

  v3 = sub_2588BDA28();
  if (v0)
  {
    v4 = sub_2587C9C58;
  }

  else
  {
    v4 = sub_2587C9BF4;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2587C9BF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2587C9C58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2587C9CBC()
{
  v1[23] = v0;
  v2 = sub_2588BC038();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  sub_2587B63B8(0);
  v1[27] = swift_task_alloc();
  v1[28] = type metadata accessor for MedicalIDData(0);
  v1[29] = swift_task_alloc();
  v1[30] = type metadata accessor for MedicalIDEditPersonalInfoModalView(0);
  v1[31] = swift_task_alloc();
  v1[32] = sub_2588BDA78();
  v1[33] = sub_2588BDA68();
  v4 = sub_2588BDA28();
  v1[34] = v4;
  v1[35] = v3;

  return MEMORY[0x2822009F8](sub_2587C9E40, v4, v3);
}

uint64_t sub_2587C9E40()
{
  v1 = v0[31];
  v2 = v0[23];
  v0[36] = sub_2587C8B98();
  sub_2587CC5B8(v2, v1, type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v0[37] = sub_2588BDA68();
  v4 = sub_2588BDA28();
  v0[38] = v4;
  v0[39] = v3;

  return MEMORY[0x2822009F8](sub_2587C9F00, v4, v3);
}

uint64_t sub_2587C9F00()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  v35 = *(v0 + 224);
  v5 = *(v0 + 216);
  swift_getKeyPath(byte_2588C0CC8);
  *(v0 + 160) = v1;
  sub_2587CCFE0(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v6 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2587CC5B8(v1 + v6, v5, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v4);
  sub_2587CC688(v5, sub_2587B63B8);
  v7 = v3 + v2[5];
  v8 = *(v7 + 16);
  *(v0 + 40) = *v7;
  *(v0 + 56) = v8;
  sub_2587CC500(0, &qword_27F95DC70, sub_2587CC4B0, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v9 = *(v0 + 112);
  v34 = *(v0 + 120);
  v10 = v3 + v2[6];
  v11 = *(v10 + 16);
  *(v0 + 64) = *v10;
  *(v0 + 80) = v11;
  sub_2587CCB28(0, &qword_27F95DC78, &qword_27F95D458, MEMORY[0x277D837D0]);
  sub_2588BD2C8();
  v30 = *(v0 + 136);
  v31 = *(v0 + 128);
  sub_2587AFFC8(0);
  v12 = swift_task_alloc();
  sub_2587CC6E8(0);
  sub_2588BD2C8();
  v13 = *(v3 + v2[10]);
  swift_getKeyPath(byte_2588C0CF0);
  *(v0 + 168) = v13;
  sub_2587CCFE0(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, &protocol conformance descriptor for MedicalIDSpokenLanguagePickerViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v14 = *(v13 + 24);
  v15 = *(v13 + 32);
  v32 = v14;
  v16 = (v3 + v2[8]);
  v17 = *v16;
  v18 = *(v16 + 1);
  *(v0 + 144) = v17;
  *(v0 + 152) = v18;
  sub_25878E240(0, &qword_27F95DC80, &type metadata for OrganDonationStatus, MEMORY[0x277CE10B8]);
  v33 = v15;

  sub_2588BD2C8();
  v19 = *(v0 + 336);
  v20 = (v4 + *(v35 + 72));
  v21 = *v20;
  v22 = v20[1];
  *v20 = v9;
  v20[1] = v34;
  sub_2587CC620(v9, v34);
  sub_2587C4E98(v21, v22);

  *v4 = v31;
  v4[1] = v30;
  if (v19)
  {
    sub_25878E130(0, &qword_27F95D898, 0x277CCABB0);
    v19 = sub_2588BDCC8();
  }

  v24 = *(v0 + 224);
  v23 = *(v0 + 232);
  v25 = *(v24 + 80);

  *(v23 + v25) = v19;
  MedicalIDPersonalInfoViewModel.updateBirthDate(medicalIDData:birthDate:)(v23, v12);
  sub_2587C4E98(v9, v34);
  sub_2587CC688(v12, sub_2587AFFC8);
  v26 = (v23 + *(v24 + 60));

  *v26 = v32;
  v26[1] = v33;

  v27 = swift_task_alloc();
  *(v0 + 320) = v27;
  *v27 = v0;
  v27[1] = sub_2587CA390;
  v28 = *(v0 + 232);

  return sub_258880280(v28, v0 + 176);
}

uint64_t sub_2587CA390()
{
  v2 = *v1;

  v3 = *(v2 + 304);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_2587CA634;
  }

  else
  {
    v5 = sub_2587CA4A0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2587CA4A0()
{
  v1 = v0[31];
  v2 = v0[29];

  sub_2587CC688(v2, type metadata accessor for MedicalIDData);
  sub_2587CC688(v1, type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v3 = v0[34];
  v4 = v0[35];

  return MEMORY[0x2822009F8](sub_2587CA554, v3, v4);
}

uint64_t sub_2587CA554()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[25];

  sub_25885269C(v1);
  sub_2588BC028();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2587CA634()
{
  v1 = v0[31];
  v2 = v0[29];

  sub_2587CC688(v2, type metadata accessor for MedicalIDData);
  v0[41] = v0[22];
  sub_2587CC688(v1, type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v3 = v0[34];
  v4 = v0[35];

  return MEMORY[0x2822009F8](sub_2587CA6F0, v3, v4);
}

uint64_t sub_2587CA6F0()
{
  v1 = *(v0 + 328);

  sub_2587CE078();
  swift_allocError();
  *v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2587CA7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  sub_2587CD230(0);
  v52 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587CD1FC(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - v9;
  sub_2587CD250(0, &qword_27F95DCF8, sub_2587CD028);
  v51 = v11;
  v54 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - v15;
  sub_2587CCE98(0);
  v18 = v17 - 8;
  v19 = MEMORY[0x28223BE20](v17);
  v56 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v47 - v21;
  v58 = a1;
  sub_2587CCEEC(0);
  sub_2587CD8E4();
  sub_2588BD508();
  v59 = sub_2588BD198();
  v23 = v22;
  *&v22[*(v18 + 44)] = sub_2588BD418();
  v57 = a1;
  sub_2587CD028(0);
  sub_2587CCFE0(&qword_27F95DD88, sub_2587CD028, MEMORY[0x277CE14C0]);
  v24 = v16;
  sub_2588BD508();
  v25 = [*(a1 + *(type metadata accessor for MedicalIDEditPersonalInfoModalView(0) + 72)) profileIdentifier];
  v26 = [v25 type];

  if (v26 == 3)
  {
    v28 = 1;
    v29 = v52;
  }

  else
  {
    MEMORY[0x28223BE20](v27);
    *(&v47 - 2) = a1;
    type metadata accessor for EditOrganDonationCellView(0);
    sub_2587CCFE0(&qword_27F95DD90, type metadata accessor for EditOrganDonationCellView, &unk_2588C19EC);
    v30 = v48;
    sub_2588BD508();
    v31 = v52;
    (*(v4 + 32))(v10, v30, v52);
    v28 = 0;
    v29 = v31;
  }

  (*(v4 + 56))(v10, v28, 1, v29);
  v50 = v23;
  v32 = v56;
  sub_2587CC5B8(v23, v56, sub_2587CCE98);
  v33 = v54;
  v34 = v10;
  v35 = *(v54 + 16);
  v36 = v14;
  v37 = v14;
  v49 = v24;
  v38 = v51;
  v35(v37, v24, v51);
  v39 = v53;
  sub_2587CC5B8(v34, v53, sub_2587CD1FC);
  v40 = v32;
  v41 = v39;
  v42 = v55;
  sub_2587CC5B8(v40, v55, sub_2587CCE98);
  sub_2587CCDF4(0);
  v44 = v43;
  v35((v42 + *(v43 + 48)), v36, v38);
  sub_2587CC5B8(v41, v42 + *(v44 + 64), sub_2587CD1FC);
  sub_2587CC688(v34, sub_2587CD1FC);
  v45 = *(v33 + 8);
  v45(v49, v38);
  sub_2587CC688(v50, sub_2587CCE98);
  sub_2587CC688(v41, sub_2587CD1FC);
  v45(v36, v38);
  return sub_2587CC688(v56, sub_2587CCE98);
}

void sub_2587CAD70(uint64_t a1)
{
  v2 = type metadata accessor for MedicalIDEditPersonalInfoModalView(0);
  sub_2587CC500(0, &qword_27F95DC70, sub_2587CC4B0, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  sub_2588285C8(v9[0], v9[1], v9[2], v9[3], v9);
  v8 = v10;
  sub_25878E240(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2588BFF50;
  v4 = (a1 + *(v2 + 64));
  v5 = v4[1];
  *(v3 + 32) = *v4;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0x6369506F746F6850;
  *(v3 + 56) = 0xEB0000000072656BLL;

  v6 = sub_2588BD9A8();

  v7 = HKUIJoinStringsForAutomationIdentifier();

  if (v7)
  {
    sub_2588BD8A8();

    sub_2587CD994();
    sub_2588BCFB8();

    sub_2587C4E98(v8, *(&v8 + 1));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2587CAF70@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v67 = a2;
  v65 = type metadata accessor for EditPrimaryLanguageCellView(0) - 8;
  v3 = MEMORY[0x28223BE20](v65);
  v66 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v62 = &v52 - v5;
  v6 = type metadata accessor for MedicalIDEditPersonalInfoModalView(0);
  v60 = *(v6 - 8);
  v7 = (v6 - 8);
  v59 = *(v60 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for EditDateOfBirthCellView(0) - 8;
  v9 = MEMORY[0x28223BE20](v57);
  v64 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v52 - v11;
  sub_2587CD0E4(0);
  v63 = v12;
  v70 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v61 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v52 - v15;
  v16 = (a1 + v7[8]);
  v17 = *(v16 + 2);
  v78 = *v16;
  v79 = v17;
  sub_2587CCB28(0, &qword_27F95DC78, &qword_27F95D458, MEMORY[0x277D837D0]);
  sub_2588BD2E8();
  v54 = v73;
  v55 = v75;
  v18 = v7[18];
  v19 = v7[19];
  v56 = v7;
  v20 = (a1 + v18);
  v21 = v20[1];
  v76 = *v20;
  v77 = v21;
  v22 = a1 + v19;
  LOBYTE(v20) = *(a1 + v19);
  v23 = *(a1 + v19 + 8);
  LOBYTE(v22) = *(v22 + 16);
  LOBYTE(v78) = v20;
  *(&v78 + 1) = v23;
  LOBYTE(v79) = v22;
  sub_2587CCB94(0);

  sub_2588BBE68();
  v78 = v71;
  LOBYTE(v79) = v72;
  LOBYTE(v71) = 0;
  sub_25878E240(0, &qword_27F95DCA0, &type metadata for MedicalIDEditPersonalInfoModalView.TextFieldFocus, MEMORY[0x277D83D88]);
  sub_2587CD1A8();
  sub_2587CCC1C();
  sub_2588BD088();

  v55 = type metadata accessor for MedicalIDPersonalInfoViewModel;
  v24 = v68;
  sub_2587CC5B8(a1, v68, type metadata accessor for MedicalIDPersonalInfoViewModel);
  v25 = v57;
  sub_2587CC6E8(0);
  v26 = v24;
  v53 = a1;
  sub_2588BD2E8();
  v27 = v58;
  sub_2587CC5B8(a1, v58, type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v28 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v29 = swift_allocObject();
  sub_2587CD2B0(v27, v29 + v28, type metadata accessor for MedicalIDEditPersonalInfoModalView);
  *(v26 + *(v25 + 36)) = swift_getKeyPath(byte_2588C0AD0);
  sub_2587CC500(0, &qword_27F95DB18, MEMORY[0x28220C228], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v30 = (v26 + *(v25 + 32));
  v31 = v26;
  *v30 = sub_2587CE17C;
  v30[1] = v29;
  v32 = v53;
  v33 = v62;
  sub_2587CC5B8(v53, v62, v55);
  sub_2587CC5B8(v32, v27, type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v34 = swift_allocObject();
  sub_2587CD2B0(v27, v34 + v28, type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v35 = *(v32 + v56[12]);
  v36 = v65;
  v37 = v33 + *(v65 + 32);
  LOBYTE(v78) = 0;

  sub_2588BD2B8();
  v38 = v74;
  *v37 = v73;
  *(v37 + 8) = v38;
  v39 = (v33 + *(v36 + 28));
  *v39 = sub_2587CE020;
  v39[1] = v34;
  *(v33 + *(v36 + 36)) = v35;
  v40 = v33;
  v41 = *(v70 + 16);
  v42 = v61;
  v43 = v63;
  v41(v61, v69, v63);
  v44 = v64;
  sub_2587CC5B8(v31, v64, type metadata accessor for EditDateOfBirthCellView);
  v45 = v33;
  v46 = v66;
  sub_2587CC5B8(v45, v66, type metadata accessor for EditPrimaryLanguageCellView);
  v47 = v67;
  v41(v67, v42, v43);
  sub_2587CD05C(0);
  v49 = v48;
  sub_2587CC5B8(v44, &v47[*(v48 + 48)], type metadata accessor for EditDateOfBirthCellView);
  sub_2587CC5B8(v46, &v47[*(v49 + 64)], type metadata accessor for EditPrimaryLanguageCellView);
  sub_2587CC688(v40, type metadata accessor for EditPrimaryLanguageCellView);
  sub_2587CC688(v68, type metadata accessor for EditDateOfBirthCellView);
  v50 = *(v70 + 8);
  v50(v69, v43);
  sub_2587CC688(v46, type metadata accessor for EditPrimaryLanguageCellView);
  sub_2587CC688(v44, type metadata accessor for EditDateOfBirthCellView);
  return (v50)(v42, v43);
}

uint64_t sub_2587CB69C(uint64_t a1)
{
  type metadata accessor for MedicalIDEditPersonalInfoModalView(0);
  sub_2587CCB94(0);
  return sub_2588BBE58();
}

uint64_t sub_2587CB70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MedicalIDEditPersonalInfoModalView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587CC5B8(a1, v10, type metadata accessor for MedicalIDPersonalInfoViewModel);
  v11 = (a1 + *(v5 + 40));
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v33) = v12;
  v34 = v13;
  sub_25878E240(0, &qword_27F95DC80, &type metadata for OrganDonationStatus, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v14 = v36;
  v15 = v37;
  v31 = v38;
  sub_2587CC5B8(a1, &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_2587CD2B0(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v18 = *(a1 + *(v5 + 68));
  if (v18)
  {
    v19 = type metadata accessor for EditOrganDonationCellView(0);
    v20 = a2 + v19[7];
    type metadata accessor for MedicalIDDataManager(0);
    sub_2587CCFE0(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    v21 = v18;
    *v20 = sub_2588BBF58();
    *(v20 + 8) = v22 & 1;
    sub_2587CC5B8(v10, a2, type metadata accessor for MedicalIDPersonalInfoViewModel);
    v23 = (a2 + v19[6]);
    *v23 = sub_2587CE17C;
    v23[1] = v17;
    type metadata accessor for EditOrganDonationCellViewModel(0);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 41) = 0;
    *(v24 + 65) = 3;
    sub_2588BBBC8();
    *(v24 + 24) = v14;
    *(v24 + 32) = v15;
    v25 = v31;
    *(v24 + 40) = v31;
    v33 = v14;
    v34 = v15;
    v35 = v25;
    sub_25878E240(0, &qword_27F95DD98, &type metadata for OrganDonationStatus, MEMORY[0x277CE11F8]);
    v27 = v26;

    MEMORY[0x259C8C5A0](&v32, v27);

    sub_2587CC688(v10, type metadata accessor for MedicalIDPersonalInfoViewModel);

    *(v24 + 64) = v32;
    *(v24 + 72) = sub_2587F4E14;
    *(v24 + 80) = 0;
    *(v24 + 48) = sub_2587F4E40;
    *(v24 + 56) = 0;
    *(v24 + 88) = sub_2587F4E90;
    *(v24 + 96) = 0;
    v29 = (a2 + v19[5]);
    *v29 = v24;
    v29[1] = 0;
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

void sub_2587CBB10(uint64_t a1)
{
  sub_2587AF908(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HealthDemographicData(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for MedicalIDEditPersonalInfoModalView(0);
  v10 = *(a1 + *(v9 + 60));
  if (!v10)
  {
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();
    sub_2588BC348();
    __break(1u);
    return;
  }

  v11 = v9;
  v59 = v10;
  if ([v59 suggestHealthData])
  {
    v12 = MedicalIDPersonalInfoViewModel.hasPersonalInfoData.getter();

    if (v12)
    {
      return;
    }

    v13 = *(a1 + v11[19]);
    swift_getKeyPath(byte_2588C0C70);
    v65 = v13;
    sub_2587CCFE0(&qword_27F95D8D0, type metadata accessor for HealthDemographicDataProvider, &unk_2588BFF00);
    sub_2588BBB98();

    v14 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data;
    swift_beginAccess();
    sub_2587CC5B8(v13 + v14, v4, sub_2587AF908);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      v15 = sub_2587AF908;
      v16 = v4;
LABEL_17:
      sub_2587CC688(v16, v15);
      return;
    }

    sub_2587CD2B0(v4, v8, type metadata accessor for HealthDemographicData);
    v18 = (a1 + v11[6]);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v62 = *v18;
    v63 = v20;
    v64 = v21;
    sub_2587CCB28(0, &qword_27F95DC78, &qword_27F95D458, MEMORY[0x277D837D0]);
    v23 = v22;
    sub_2588BD2C8();
    if (v61)
    {
    }

    else
    {
      v24 = *v8;
      v54 = v23;
      v55 = v24;
      v59 = v20;
      v56 = v8[2];
      v53 = v8[3];
      v25 = sub_2588BB868();
      v57 = v19;
      v58 = v51;
      v51[0] = v25;
      v26 = *(v25 - 8);
      MEMORY[0x28223BE20](v25);
      v28 = v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_2587CC500(0, &qword_27F95DD70, MEMORY[0x28220BA80], MEMORY[0x277D83D88]);
      v51[1] = v51;
      MEMORY[0x28223BE20](v29 - 8);
      v52 = v21;
      (*(v26 + 56))(v51 - v30, 1, 1, v25);

      sub_2588BB848();
      v31 = sub_2588BB858();
      v33 = v32;
      (*(v26 + 8))(v28, v51[0]);
      v62 = v57;
      v63 = v59;
      v64 = v52;
      v60 = v31;
      v61 = v33;
      sub_2588BD2D8();
    }

    sub_2587AFFC8(0);
    v35 = *(*(v34 - 8) + 64);
    MEMORY[0x28223BE20](v34 - 8);
    v36 = v11[7];
    sub_2587CC6E8(0);
    v59 = v36;
    sub_2588BD2C8();
    v37 = sub_2588BB9B8();
    v38 = *(v37 - 8);
    LODWORD(v36) = (*(v38 + 48))(v51 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v37);
    sub_2587CC688(v51 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2587AFFC8);
    if (v36 != 1 || (sub_2588BB788(), (v39 & 1) != 0) || (sub_2588BB7D8(), (v40 & 1) != 0) || (v41 = sub_2588BB7B8(), (v42 & 1) != 0))
    {
      v15 = type metadata accessor for HealthDemographicData;
      v16 = v8;
      goto LABEL_17;
    }

    v58 = v51;
    MEMORY[0x28223BE20](v41);
    v43 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
    v44 = *(a1 + *(type metadata accessor for MedicalIDPersonalInfoViewModel(0) + 28));
    if (v44)
    {
      v57 = v51 - v43;
      v45 = sub_2588BB758();
      v46 = [v44 dateFromComponents_];

      MEMORY[0x28223BE20](v47);
      if (v46)
      {
        sub_2588BB988();

        v48 = 0;
      }

      else
      {
        v48 = 1;
      }

      (*(v38 + 56))(v51 - v43, v48, 1, v37);
      v50 = v57;
      v49 = sub_2587CD2B0(v51 - v43, v57, sub_2587AFFC8);
    }

    else
    {
      v49 = (*(v38 + 56))(v51 - v43, 1, 1, v37);
      v50 = v51 - v43;
    }

    MEMORY[0x28223BE20](v49);
    sub_2587CC5B8(v50, v51 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2587AFFC8);
    sub_2588BD2D8();
    sub_2587CC688(v50, sub_2587AFFC8);
    sub_2587CC688(v8, type metadata accessor for HealthDemographicData);
  }

  else
  {
    v17 = v59;
  }
}

uint64_t sub_2587CC314()
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
  qword_27F95DC28 = result;
  unk_27F95DC30 = v5;
  return result;
}

uint64_t type metadata accessor for MedicalIDEditPersonalInfoModalView(uint64_t a1)
{
  result = qword_27F95DC60;
  if (!qword_27F95DC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587CC4B0()
{
  if (!qword_27F95DC38)
  {
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DC38);
    }
  }
}

void sub_2587CC500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2587CC564()
{
  result = qword_27F95DC48;
  if (!qword_27F95DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DC48);
  }

  return result;
}

uint64_t sub_2587CC5B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587CC620(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2587CC634(a1, a2);
  }

  return a1;
}

uint64_t sub_2587CC634(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2587CC688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for MedicalIDEditPersonalInfoModalView.TextFieldFocus(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MedicalIDEditPersonalInfoModalView.TextFieldFocus(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_2587CC82C(uint64_t a1)
{
  type metadata accessor for MedicalIDPersonalInfoViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2587CC500(319, &qword_27F95DC70, sub_2587CC4B0, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_2587CCB28(319, &qword_27F95DC78, &qword_27F95D458, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_2587CC6E8(319);
        if (v4 <= 0x3F)
        {
          sub_25878E240(319, &qword_27F95DC80, &type metadata for OrganDonationStatus, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_2587CCB28(319, &qword_27F95DC88, &qword_27F95DC40, &type metadata for BasicAlertModel);
            if (v6 <= 0x3F)
            {
              type metadata accessor for MedicalIDSpokenLanguagePickerViewModel(319);
              if (v7 <= 0x3F)
              {
                sub_2587CC500(319, &qword_27F95DAB8, MEMORY[0x28220C228], MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_2587CC500(319, &qword_27F95DAC0, MEMORY[0x28220C148], MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    sub_2587CC500(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
                    if (v10 <= 0x3F)
                    {
                      sub_2587CC500(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
                      if (v11 <= 0x3F)
                      {
                        sub_2587BC234(319);
                        if (v12 <= 0x3F)
                        {
                          sub_2587CCB94(319);
                          if (v13 <= 0x3F)
                          {
                            sub_25878E130(319, &qword_27F95D360, 0x277CCD4D8);
                            if (v14 <= 0x3F)
                            {
                              type metadata accessor for HealthDemographicDataProvider(319);
                              if (v15 <= 0x3F)
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
    }
  }
}

void sub_2587CCB28(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_25878E240(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_2588BD2F8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2587CCB94(uint64_t a1)
{
  if (!qword_27F95DC98)
  {
    sub_25878E240(255, &qword_27F95DCA0, &type metadata for MedicalIDEditPersonalInfoModalView.TextFieldFocus, MEMORY[0x277D83D88]);
    sub_2587CCC1C();
    v1 = sub_2588BBE98();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95DC98);
    }
  }
}

unint64_t sub_2587CCC1C()
{
  result = qword_27F95DCA8;
  if (!qword_27F95DCA8)
  {
    sub_25878E240(255, &qword_27F95DCA0, &type metadata for MedicalIDEditPersonalInfoModalView.TextFieldFocus, MEMORY[0x277D83D88]);
    sub_2587CC564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DCA8);
  }

  return result;
}

unint64_t sub_2587CCCBC()
{
  result = qword_27F95DCB0;
  if (!qword_27F95DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DCB0);
  }

  return result;
}

void sub_2587CCD2C(uint64_t a1)
{
  if (!qword_27F95DCB8)
  {
    sub_2587CCDC0(255);
    sub_2587CCFE0(&qword_27F95DD30, sub_2587CCDC0, MEMORY[0x277CE14C0]);
    v1 = sub_2588BCD08();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95DCB8);
    }
  }
}

void sub_2587CCDF4(uint64_t a1)
{
  if (!qword_27F95DCC8)
  {
    sub_2587CCE98(255);
    sub_2587CD250(255, &qword_27F95DCF8, sub_2587CD028);
    sub_2587CD1FC(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95DCC8);
    }
  }
}

void sub_2587CCEEC(uint64_t a1)
{
  if (!qword_27F95DCE0)
  {
    sub_2588BCA98();
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95DCE0);
    }
  }
}

void sub_2587CCF4C(uint64_t a1)
{
  if (!qword_27F95DCE8)
  {
    sub_2588BC938();
    sub_2587CCFE0(&qword_27F95DCF0, MEMORY[0x277CDE350], MEMORY[0x277CDE348]);
    v1 = sub_2588BC8A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95DCE8);
    }
  }
}

uint64_t sub_2587CCFE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2587CD05C(uint64_t a1)
{
  if (!qword_27F95DD08)
  {
    sub_2587CD0E4(255);
    type metadata accessor for EditDateOfBirthCellView(255);
    type metadata accessor for EditPrimaryLanguageCellView(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95DD08);
    }
  }
}

void sub_2587CD0E4(uint64_t a1)
{
  if (!qword_27F95DD10)
  {
    sub_25878E240(255, &qword_27F95DCA0, &type metadata for MedicalIDEditPersonalInfoModalView.TextFieldFocus, MEMORY[0x277D83D88]);
    sub_2587CD1A8();
    sub_2587CCC1C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95DD10);
    }
  }
}

unint64_t sub_2587CD1A8()
{
  result = qword_27F95DD18;
  if (!qword_27F95DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DD18);
  }

  return result;
}

void sub_2587CD250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BD518();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2587CD2B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587CD318()
{
  type metadata accessor for MedicalIDEditPersonalInfoModalView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2587AE310;

  return sub_2587C99EC();
}

void sub_2587CD3E4(uint64_t a1)
{
  if (!qword_27F95DD38)
  {
    sub_2587CD478(255);
    v3 = v2;
    v4 = sub_2587CCFE0(&qword_27F95DD60, sub_2587CD478, MEMORY[0x277CDDB40]);
    v6 = type metadata accessor for MedicalIDEditModal(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F95DD38);
    }
  }
}

void sub_2587CD478(uint64_t a1)
{
  if (!qword_27F95DD40)
  {
    sub_2587CD50C(255, &qword_27F95DD48, sub_2587CCD2C, sub_2587AA6D0);
    sub_2587CD580();
    v1 = sub_2588BC2C8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95DD40);
    }
  }
}

void sub_2587CD50C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

unint64_t sub_2587CD580()
{
  result = qword_27F95DD50;
  if (!qword_27F95DD50)
  {
    sub_2587CD50C(255, &qword_27F95DD48, sub_2587CCD2C, sub_2587AA6D0);
    sub_2587CCFE0(&qword_27F95DD58, sub_2587CCD2C, MEMORY[0x277CDE580]);
    sub_2587CCFE0(&qword_27F95D620, sub_2587AA6D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DD50);
  }

  return result;
}

void sub_2587CD698(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2587CCD2C(0);
  v6 = v2 + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80));

  sub_2587C88BC(a1, v6, a2);
}

void sub_2587CD718()
{
  v1 = *(type metadata accessor for MedicalIDEditPersonalInfoModalView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_2587CBB10(v2);
}

void sub_2587CD778(uint64_t a1)
{
  if (!qword_27F95DD68)
  {
    sub_2587CD3E4(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95DD68);
    }
  }
}

uint64_t objectdestroy_16Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_2587CD89C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v7[0] = a2;
  v7[1] = a3;
  v8 = a4 & 1;
  return v5(a1, v7);
}

unint64_t sub_2587CD8E4()
{
  result = qword_27F95DD78;
  if (!qword_27F95DD78)
  {
    sub_2587CCEEC(255);
    sub_2587CD994();
    sub_2587CCFE0(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DD78);
  }

  return result;
}

unint64_t sub_2587CD994()
{
  result = qword_27F95DD80;
  if (!qword_27F95DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DD80);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for MedicalIDEditPersonalInfoModalView(0);
  v31 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v31 + 16) & ~v31);

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

  v15 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v16 = v15[5];
  v17 = sub_2588BBB48();
  v30 = *(*(v17 - 8) + 8);
  v30(v2 + v16, v17);
  v18 = v15[6];
  v19 = sub_2588BBAC8();
  v20 = v2 + v18;
  v21 = *(*(v19 - 8) + 8);
  v21(v20, v19);

  v22 = (v2 + v1[5]);
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_2587C2610(*v22, v23);
  }

  v24 = v2 + v1[7];
  if (!v7(v24, 1, v5))
  {
    (*(v6 + 8))(v24, v5);
  }

  sub_2587CC6E8(0);

  if (*(v2 + v1[9] + 8))
  {
  }

  v25 = v1[11];
  sub_2587CC500(0, &qword_27F95DB18, MEMORY[0x28220C228], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30(v2 + v25, v17);
  }

  else
  {
  }

  v26 = v1[12];
  sub_2587CC500(0, &qword_27F95DB20, MEMORY[0x28220C148], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21(v2 + v26, v19);
  }

  else
  {
  }

  v27 = v1[13];
  sub_2587CC500(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = sub_2588BC038();
    (*(*(v28 - 8) + 8))(v2 + v27, v28);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_2587CE078()
{
  result = qword_27F95DDA8;
  if (!qword_27F95DDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DDA8);
  }

  return result;
}

unint64_t sub_2587CE0CC()
{
  result = qword_27F95DDB0;
  if (!qword_27F95DDB0)
  {
    sub_2587CD778(255);
    sub_2587CCFE0(&qword_27F95DDB8, sub_2587CD3E4, &unk_2588C4B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DDB0);
  }

  return result;
}

uint64_t sub_2587CE180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2587CE1C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2587CE240@<X0>(id *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_2587CEE3C(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    if ([*a1 isLockScreen])
    {
      sub_2587CE474(v16);
      nullsub_1();
      memcpy(v17, v16, sizeof(v17));
    }

    else
    {
      sub_2587CEF2C(v17);
    }

    memcpy(v14, v17, sizeof(v14));
    v11 = *(v8 + 16);
    v11(v10, a2, v7);
    memcpy(v15, v14, sizeof(v15));
    memcpy(a3, v14, 0x138uLL);
    sub_2587CEB00(0);
    v11(&a3[*(v12 + 48)], v10, v7);
    sub_2587CEF60(v15, v16, sub_2587CEB70);
    (*(v8 + 8))(v10, v7);
    memcpy(v16, v14, sizeof(v16));
    return sub_2587CEFC8(v16, sub_2587CEB70);
  }

  else
  {
    sub_2587CEE98();
    sub_2587CEEE4(&qword_27F95DAE8, sub_2587CEE98, &protocol conformance descriptor for MIUIDisplayConfiguration);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

double sub_2587CE474@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC6E8();
  v40 = 0;
  sub_2587CE714(v1, &v30);
  v48 = v36;
  v49 = v37;
  v50 = v38;
  v44 = v32;
  v45 = v33;
  v46 = v34;
  v47 = v35;
  v42 = v30;
  v43 = v31;
  v51[6] = v36;
  v51[7] = v37;
  v51[8] = v38;
  v51[2] = v32;
  v51[3] = v33;
  v51[4] = v34;
  v51[5] = v35;
  v51[0] = v30;
  v51[1] = v31;
  sub_2587CEF60(&v42, v29, sub_2587CED20);
  sub_2587CEFC8(v51, sub_2587CED20);
  *&v39[87] = v47;
  *&v39[103] = v48;
  *&v39[119] = v49;
  *&v39[135] = v50;
  *&v39[23] = v43;
  *&v39[39] = v44;
  *&v39[55] = v45;
  *&v39[71] = v46;
  *&v39[7] = v42;
  v4 = v40;
  v5 = sub_2588BCBA8();
  v30 = *(v1 + 16);
  *&v31 = *(v1 + 32);
  sub_2587CF07C(0, &qword_27F95DE28, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0](v29);
  sub_2588BBE38();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  LOBYTE(v30) = 0;
  v14 = sub_2588BCB78();
  sub_2588BBE38();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v29[0]) = 0;
  sub_2588BD5B8();
  sub_2588BC018();
  *&v41[7] = v30;
  *&v41[23] = v31;
  *&v41[39] = v32;
  v23 = *&v39[112];
  *(a1 + 113) = *&v39[96];
  *(a1 + 129) = v23;
  *(a1 + 145) = *&v39[128];
  v24 = *&v39[48];
  *(a1 + 49) = *&v39[32];
  *(a1 + 65) = v24;
  v25 = *&v39[80];
  *(a1 + 81) = *&v39[64];
  *(a1 + 97) = v25;
  v26 = *&v39[16];
  *(a1 + 17) = *v39;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 160) = *&v39[143];
  *(a1 + 33) = v26;
  *(a1 + 168) = v5;
  *(a1 + 176) = v7;
  *(a1 + 184) = v9;
  *(a1 + 192) = v11;
  *(a1 + 200) = v13;
  *(a1 + 208) = 0;
  *(a1 + 216) = v14;
  *(a1 + 224) = v16;
  *(a1 + 232) = v18;
  *(a1 + 240) = v20;
  *(a1 + 248) = v22;
  *(a1 + 256) = 0;
  v27 = *&v41[16];
  *(a1 + 257) = *v41;
  *(a1 + 273) = v27;
  result = *&v41[32];
  *(a1 + 289) = *&v41[32];
  *(a1 + 304) = *&v41[47];
  return result;
}

uint64_t sub_2587CE714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v44 = *(a1 + 40);
  v4 = v44;
  sub_2587CF028();
  swift_retain_n();
  v5 = MEMORY[0x277CE0F78];
  v6 = sub_2588BD218();
  v40 = *(a1 + 16);
  v41 = *(a1 + 32);
  v44 = *(a1 + 16);
  *&v45 = *(a1 + 32);
  sub_2587CF07C(0, &qword_27F95DE28, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
  v8 = v7;
  MEMORY[0x259C8C5A0](v42);
  sub_2588BD5C8();
  sub_2588BC018();
  v9 = v32;
  v22 = v33;
  v23 = v31;
  v10 = v34;
  v20 = v36;
  v21 = v35;
  sub_2587CF07C(0, &qword_27F95DE38, v5, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2588BFF50;
  v12 = *(a1 + 48);
  *(v11 + 32) = v4;
  *(v11 + 40) = v12;

  sub_2588BD678();
  sub_2588BD688();
  MEMORY[0x259C8C6F0](v11);
  sub_2588BC0F8();
  v44 = v40;
  *&v45 = v41;
  MEMORY[0x259C8C5A0](v42, v8);
  sub_2588BD5C8();
  sub_2588BC018();
  *&v27 = v39;
  v25 = v37;
  v26 = v38;
  v24[96] = v9;
  v24[88] = v10;
  v13 = v28;
  v14 = v30;
  v43 = v30;
  v42[0] = v37;
  v42[1] = v38;
  v15 = v27;
  v42[3] = v28;
  v42[4] = v29;
  v42[2] = v27;
  *a2 = v6;
  *(a2 + 8) = v23;
  *(a2 + 16) = v9;
  *(a2 + 24) = v22;
  *(a2 + 32) = v10;
  *(a2 + 40) = v21;
  *(a2 + 48) = v20;
  *(a2 + 88) = v15;
  *(a2 + 104) = v13;
  v16 = v29;
  *(a2 + 120) = v29;
  *(a2 + 136) = v14;
  v17 = v25;
  v18 = v26;
  *(a2 + 56) = v25;
  *(a2 + 72) = v18;
  v49 = v14;
  v46 = v15;
  v47 = v13;
  v48 = v16;
  v44 = v17;
  v45 = v18;

  sub_2587CF0CC(v42, v24);
  sub_2587CF140(&v44);
}

uint64_t sub_2587CE9F0@<X0>(uint64_t a1@<X0>, uint64_t a8@<X8>)
{
  v11 = *(v8 + 16);
  v14[0] = *v8;
  v14[1] = v11;
  v14[2] = *(v8 + 32);
  v15 = *(v8 + 48);
  *a8 = sub_2588BC6E8();
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  sub_2587CEA64(0);
  return sub_2587CE240(v14, a1, (a8 + *(v12 + 44)));
}

void sub_2587CEA64(uint64_t a1)
{
  if (!qword_27F95DDC0)
  {
    sub_2587CEACC(255);
    v1 = sub_2588BC0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95DDC0);
    }
  }
}

void sub_2587CEB00(uint64_t a1)
{
  if (!qword_27F95DDD0)
  {
    sub_2587CEB70(255);
    sub_2587CEE3C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95DDD0);
    }
  }
}

void sub_2587CEBA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2587CEC58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_2587CED54(uint64_t a1)
{
  if (!qword_27F95DE08)
  {
    sub_2587CEDE4(255, &qword_27F95D270, MEMORY[0x277CE0F78]);
    sub_2587CEDE4(255, &qword_27F95DE10, MEMORY[0x277CDF838]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95DE08);
    }
  }
}

void sub_2587CEDE4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2587CEE3C(uint64_t a1)
{
  if (!qword_27F95DE20)
  {
    sub_2587A8EB8();
    v1 = sub_2588BC8B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95DE20);
    }
  }
}

unint64_t sub_2587CEE98()
{
  result = qword_27F95D3C0;
  if (!qword_27F95D3C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F95D3C0);
  }

  return result;
}

uint64_t sub_2587CEEE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2587CEF2C(uint64_t a1)
{
  *(a1 + 304) = 0;
  result = 0.0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
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

uint64_t sub_2587CEF60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587CEFC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2587CF028()
{
  result = qword_27F95DE30;
  if (!qword_27F95DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DE30);
  }

  return result;
}

void sub_2587CF07C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2587CF0CC(uint64_t a1, uint64_t a2)
{
  sub_2587CEDE4(0, &qword_27F95DE10, MEMORY[0x277CDF838]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587CF140(uint64_t a1)
{
  sub_2587CEDE4(0, &qword_27F95DE10, MEMORY[0x277CDF838]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2587CF1E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2587CEEE4(a4, a5, MEMORY[0x277CE14C0]);
    v8 = sub_2588BD408();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t _s12SheetContentVMa(uint64_t a1)
{
  result = qword_27F95DE58;
  if (!qword_27F95DE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587CF2F0(uint64_t a1)
{
  result = type metadata accessor for MedicalIDDataViewModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MedicalIDModelProvider();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2587CF3A0@<X0>(void *a1@<X8>)
{
  v170 = a1;
  v153 = type metadata accessor for MedicalIDEditMedicalNotesModalView(0);
  MEMORY[0x28223BE20](v153);
  v143 = &v140 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x277CE0330];
  sub_2587D1058(0, &qword_27F95DE68, MEMORY[0x277CE0330]);
  v150 = v4;
  MEMORY[0x28223BE20](v4);
  v152 = (&v140 - v5);
  v6 = MEMORY[0x277CE0338];
  sub_2587D1058(0, &qword_27F95DE70, MEMORY[0x277CE0338]);
  v164 = v7;
  MEMORY[0x28223BE20](v7);
  v154 = &v140 - v8;
  sub_2587D1118(0, &qword_27F95DE78, v3);
  v162 = v9;
  MEMORY[0x28223BE20](v9);
  v163 = &v140 - v10;
  sub_2587D1118(0, &qword_27F95DE88, v6);
  v169 = v11;
  MEMORY[0x28223BE20](v11);
  v165 = &v140 - v12;
  v13 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v155 = (&v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v156 = &v140 - v16;
  v149 = type metadata accessor for MedicalIDEditEmergencyContactsModalView(0);
  MEMORY[0x28223BE20](v149);
  v142 = (&v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x277CE0330];
  sub_2587D11EC(0, &qword_27F95DE90, type metadata accessor for MedicalIDEditBiometricsModalView, type metadata accessor for MedicalIDEditEmergencyContactsModalView, MEMORY[0x277CE0330]);
  v146 = v19;
  MEMORY[0x28223BE20](v19);
  v148 = &v140 - v20;
  sub_2587D11A4(0);
  v161 = v21;
  MEMORY[0x28223BE20](v21);
  v151 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for MedicalIDEditBiometricsModalView(0);
  MEMORY[0x28223BE20](v147);
  v141 = &v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for MedicalIDEditPregnancyModalView(0);
  MEMORY[0x28223BE20](v145);
  v140 = &v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587D1270(0, &qword_27F95DEA0, MEMORY[0x277CE0330]);
  v166 = v31;
  MEMORY[0x28223BE20](v31);
  v168 = &v140 - v32;
  sub_2587D11EC(0, &qword_27F95DEB8, sub_2587D1344, sub_2587D11A4, v18);
  v157 = v33;
  MEMORY[0x28223BE20](v33);
  v159 = &v140 - v34;
  sub_2587D11EC(0, &qword_27F95DEC0, type metadata accessor for MedicalIDEditPersonalInfoModalView, type metadata accessor for MedicalIDEditPregnancyModalView, v18);
  MEMORY[0x28223BE20](v35);
  v37 = &v140 - v36;
  sub_2587D1344(0);
  v158 = v38;
  MEMORY[0x28223BE20](v38);
  v144 = &v140 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587D12FC(0);
  v167 = v40;
  MEMORY[0x28223BE20](v40);
  v160 = &v140 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = (&v140 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = type metadata accessor for MedicalIDEditPersonalInfoModalView(0);
  MEMORY[0x28223BE20](v45);
  v47 = &v140 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v1;
  v49 = *v1;
  if (v49 <= 3)
  {
    if (*v1 <= 1u)
    {
      if (*v1)
      {
        v106 = &v1[*(_s12SheetContentVMa(0) + 20)];
        v107 = type metadata accessor for MedicalIDDataViewModel(0);
        sub_2587D1B0C(&v106[*(v107 + 48)], v29, type metadata accessor for MedicalIDPregnancyViewModel);
        v108 = v140;
        sub_2587EB348(v29, v140);
        sub_2587D1B0C(v108, v37, type metadata accessor for MedicalIDEditPregnancyModalView);
        swift_storeEnumTagMultiPayload();
        sub_2587D1868(&qword_27F95DF08, type metadata accessor for MedicalIDEditPersonalInfoModalView, &unk_2588C0C0C);
        sub_2587D1868(&qword_27F95DF10, type metadata accessor for MedicalIDEditPregnancyModalView, &unk_2588C1F70);
        v109 = v144;
        sub_2588BC778();
        sub_2587D1B0C(v109, v159, sub_2587D1344);
        swift_storeEnumTagMultiPayload();
        sub_2587D16A8();
        sub_2587D1788();
        v110 = v160;
        sub_2588BC778();
        sub_2587D1A08(v109, sub_2587D1344);
        sub_2587D1B0C(v110, v168, sub_2587D12FC);
        swift_storeEnumTagMultiPayload();
        sub_2587D15D4();
        sub_2587D18B0();
        sub_2588BC778();
        sub_2587D1A08(v110, sub_2587D12FC);
        v58 = type metadata accessor for MedicalIDEditPregnancyModalView;
        v59 = v108;
      }

      else
      {
        v50 = _s12SheetContentVMa(0);
        v51 = &v1[*(v50 + 20)];
        v52 = type metadata accessor for MedicalIDDataViewModel(0);
        sub_2587D1B0C(&v51[*(v52 + 40)], v44, type metadata accessor for MedicalIDPersonalInfoViewModel);
        v53 = *&v1[*(v50 + 24)];
        v54 = *(v53 + 24);
        v55 = *(*(v53 + 32) + 16);

        sub_2587C8D9C(v44, v55, v54, v47);
        sub_2587D1B0C(v47, v37, type metadata accessor for MedicalIDEditPersonalInfoModalView);
        swift_storeEnumTagMultiPayload();
        sub_2587D1868(&qword_27F95DF08, type metadata accessor for MedicalIDEditPersonalInfoModalView, &unk_2588C0C0C);
        sub_2587D1868(&qword_27F95DF10, type metadata accessor for MedicalIDEditPregnancyModalView, &unk_2588C1F70);
        v56 = v144;
        sub_2588BC778();
        sub_2587D1B0C(v56, v159, sub_2587D1344);
        swift_storeEnumTagMultiPayload();
        sub_2587D16A8();
        sub_2587D1788();
        v57 = v160;
        sub_2588BC778();
        sub_2587D1A08(v56, sub_2587D1344);
        sub_2587D1B0C(v57, v168, sub_2587D12FC);
        swift_storeEnumTagMultiPayload();
        sub_2587D15D4();
        sub_2587D18B0();
        sub_2588BC778();
        sub_2587D1A08(v57, sub_2587D12FC);
        v58 = type metadata accessor for MedicalIDEditPersonalInfoModalView;
        v59 = v47;
      }

      return sub_2587D1A08(v59, v58);
    }

    if (v49 == 2)
    {
      v80 = &v1[*(_s12SheetContentVMa(0) + 20)];
      v81 = type metadata accessor for MedicalIDDataViewModel(0);
      v82 = v156;
      sub_2587D1B0C(&v80[*(v81 + 44)], v156, type metadata accessor for MedicalIDMedicalInfoViewModel);
      v83 = v155;
      sub_2587D1B0C(v82, v155, type metadata accessor for MedicalIDMedicalInfoViewModel);
      v84 = sub_2588BD858();
      MEMORY[0x28223BE20](v84 - 8);
      sub_2588BD7E8();
      if (qword_27F95D000 != -1)
      {
        swift_once();
      }

      v85 = qword_27F95DA88;
      v86 = sub_2588BBAC8();
      MEMORY[0x28223BE20](v86 - 8);
      v87 = v85;
      sub_2588BBAB8();
      v88 = sub_2588BD8B8();
      sub_25887C604(v83, v88, v89, &v178);
      sub_2587D1A08(v82, type metadata accessor for MedicalIDMedicalInfoViewModel);
      v90 = v181;
      v91 = v152;
      v152[2] = v180;
      v91[3] = v90;
      v92 = v183;
      v91[4] = v182;
      v91[5] = v92;
      v93 = v179;
      *v91 = v178;
      v91[1] = v93;
      swift_storeEnumTagMultiPayload();
      sub_2587D138C();
      sub_2587D1868(&qword_27F95DED0, type metadata accessor for MedicalIDEditMedicalNotesModalView, &unk_2588C4F54);
      v94 = v154;
      sub_2588BC778();
      sub_2587D1554(v94, v163, &qword_27F95DE70, sub_2587D1058);
      swift_storeEnumTagMultiPayload();
      sub_2587D10C0();
      sub_2587D161C(&qword_27F95DED8, sub_2587D10C0, sub_2587D13E0, sub_2587D1434);
      sub_2587D1488();
      v95 = v165;
      sub_2588BC778();
      sub_2587D1990(v94, &qword_27F95DE70, sub_2587D1058);
      goto LABEL_23;
    }

    v119 = &v1[*(_s12SheetContentVMa(0) + 20)];
    v120 = type metadata accessor for MedicalIDDataViewModel(0);
    v121 = v156;
    sub_2587D1B0C(&v119[*(v120 + 44)], v156, type metadata accessor for MedicalIDMedicalInfoViewModel);
    v122 = v155;
    sub_2587D1B0C(v121, v155, type metadata accessor for MedicalIDMedicalInfoViewModel);
    v123 = sub_2588BD858();
    MEMORY[0x28223BE20](v123 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v124 = qword_27F95DA88;
    v125 = sub_2588BBAC8();
    MEMORY[0x28223BE20](v125 - 8);
    v126 = v124;
    sub_2588BBAB8();
    v127 = sub_2588BD8B8();
    sub_25887BEA8(v122, v127, v128, &v186);
    sub_2587D1A08(v121, type metadata accessor for MedicalIDMedicalInfoViewModel);
    v185 = 0;
    v173 = v188;
    v174 = v189;
    v175 = v190;
    v176 = v191;
    v171 = v186;
    v172 = v187;
    v177 = 0;
LABEL_22:
    sub_2587D13E0();
    sub_2587D1434();
    sub_2588BC778();
    v129 = v183;
    v130 = v163;
    *(v163 + 64) = v182;
    *(v130 + 80) = v129;
    *(v130 + 96) = v184;
    v131 = v179;
    *v130 = v178;
    *(v130 + 16) = v131;
    v132 = v181;
    *(v130 + 32) = v180;
    *(v130 + 48) = v132;
    swift_storeEnumTagMultiPayload();
    sub_2587D10C0();
    sub_2587D161C(&qword_27F95DED8, sub_2587D10C0, sub_2587D13E0, sub_2587D1434);
    sub_2587D1488();
    v95 = v165;
    sub_2588BC778();
LABEL_23:
    sub_2587D1554(v95, v168, &qword_27F95DE88, sub_2587D1118);
    swift_storeEnumTagMultiPayload();
    sub_2587D15D4();
    sub_2587D18B0();
    sub_2588BC778();
    return sub_2587D1990(v95, &qword_27F95DE88, sub_2587D1118);
  }

  if (*v1 <= 5u)
  {
    if (v49 == 4)
    {
      v60 = *&v1[*(_s12SheetContentVMa(0) + 24)];
      v61 = *(v60 + 16);
      v62 = *(v61 + 32);

      os_unfair_lock_lock((v62 + 24));
      v63 = *(v62 + 16);

      os_unfair_lock_unlock((v62 + 24));
      swift_beginAccess();
      v64 = *(v61 + 40);
      type metadata accessor for MedicalIDEditableEmergencyContactsModel(0);
      v65 = swift_allocObject();
      LOBYTE(v178) = 4;

      v65[4] = MedicalIDDisplaySection.baseIdentifier.getter();
      v65[5] = v66;
      sub_2588BBBC8();
      v65[2] = v64;
      v65[3] = v63;

      v67 = *(*(v60 + 32) + 16);
      type metadata accessor for MedicalIDDataManager(0);
      sub_2587D1868(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
      v68 = v67;
      v69 = sub_2588BBF58();
      v70 = v142;
      *v142 = v69;
      *(v70 + 8) = v71 & 1;
      *(v70 + 16) = v65;
      *(v70 + 24) = v68;
      sub_2587D1A68();
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      *&v174 = 0;
      sub_2588BD2B8();
      v72 = v179;
      *(v70 + 32) = v178;
      *(v70 + 48) = v72;
      v73 = v181;
      *(v70 + 64) = v180;
      *(v70 + 80) = v73;
      v74 = v149;
      v75 = *(v149 + 32);
      *(v70 + v75) = swift_getKeyPath("x.\n'");
      sub_2587D1AB8(0, &qword_27F95DB20, MEMORY[0x28220C140]);
      swift_storeEnumTagMultiPayload();
      v76 = *(v74 + 36);
      *(v70 + v76) = swift_getKeyPath("P.\n'");
      sub_2587D1AB8(0, &qword_27F95DB30, MEMORY[0x277CDD848]);
      swift_storeEnumTagMultiPayload();
      sub_2587D1B0C(v70, v148, type metadata accessor for MedicalIDEditEmergencyContactsModalView);
      swift_storeEnumTagMultiPayload();
      sub_2587D1868(&qword_27F95DF20, type metadata accessor for MedicalIDEditBiometricsModalView, &unk_2588C80CC);
      sub_2587D1868(&qword_27F95DF28, type metadata accessor for MedicalIDEditEmergencyContactsModalView, &unk_2588C10F8);
      v77 = v151;
      sub_2588BC778();
      sub_2587D1B0C(v77, v159, sub_2587D11A4);
      swift_storeEnumTagMultiPayload();
      sub_2587D16A8();
      sub_2587D1788();
      v78 = v160;
      sub_2588BC778();
      sub_2587D1A08(v77, sub_2587D11A4);
      sub_2587D1B0C(v78, v168, sub_2587D12FC);
      swift_storeEnumTagMultiPayload();
      sub_2587D15D4();
      sub_2587D18B0();
      sub_2588BC778();
      sub_2587D1A08(v78, sub_2587D12FC);
      v79 = type metadata accessor for MedicalIDEditEmergencyContactsModalView;
    }

    else
    {
      v111 = _s12SheetContentVMa(0);
      v112 = &v48[*(v111 + 20)];
      v113 = type metadata accessor for MedicalIDDataViewModel(0);
      sub_2587D1B0C(&v112[*(v113 + 36)], v25, type metadata accessor for MedicalIDBiometricsViewModel);
      v114 = *&v48[*(v111 + 24)];
      v115 = *(v114 + 24);
      v116 = *(*(v114 + 32) + 16);

      v70 = v141;
      sub_2588A5694(v25, v116, v115, v141);
      sub_2587D1B0C(v70, v148, type metadata accessor for MedicalIDEditBiometricsModalView);
      swift_storeEnumTagMultiPayload();
      sub_2587D1868(&qword_27F95DF20, type metadata accessor for MedicalIDEditBiometricsModalView, &unk_2588C80CC);
      sub_2587D1868(&qword_27F95DF28, type metadata accessor for MedicalIDEditEmergencyContactsModalView, &unk_2588C10F8);
      v117 = v151;
      sub_2588BC778();
      sub_2587D1B0C(v117, v159, sub_2587D11A4);
      swift_storeEnumTagMultiPayload();
      sub_2587D16A8();
      sub_2587D1788();
      v118 = v160;
      sub_2588BC778();
      sub_2587D1A08(v117, sub_2587D11A4);
      sub_2587D1B0C(v118, v168, sub_2587D12FC);
      swift_storeEnumTagMultiPayload();
      sub_2587D15D4();
      sub_2587D18B0();
      sub_2588BC778();
      sub_2587D1A08(v118, sub_2587D12FC);
      v79 = type metadata accessor for MedicalIDEditBiometricsModalView;
    }

    v58 = v79;
    v59 = v70;
    return sub_2587D1A08(v59, v58);
  }

  if (v49 == 6)
  {
    v96 = &v1[*(_s12SheetContentVMa(0) + 20)];
    v97 = type metadata accessor for MedicalIDDataViewModel(0);
    v98 = v156;
    sub_2587D1B0C(&v96[*(v97 + 44)], v156, type metadata accessor for MedicalIDMedicalInfoViewModel);
    v99 = v155;
    sub_2587D1B0C(v98, v155, type metadata accessor for MedicalIDMedicalInfoViewModel);
    v100 = sub_2588BD858();
    MEMORY[0x28223BE20](v100 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v101 = qword_27F95DA88;
    v102 = sub_2588BBAC8();
    MEMORY[0x28223BE20](v102 - 8);
    v103 = v101;
    sub_2588BBAB8();
    v104 = sub_2588BD8B8();
    sub_25887C284(v99, v104, v105, &v186);
    sub_2587D1A08(v98, type metadata accessor for MedicalIDMedicalInfoViewModel);
    v185 = 1;
    v173 = v188;
    v174 = v189;
    v175 = v190;
    v176 = v191;
    v171 = v186;
    v172 = v187;
    v177 = 1;
    goto LABEL_22;
  }

  v134 = &v1[*(_s12SheetContentVMa(0) + 20)];
  v135 = type metadata accessor for MedicalIDDataViewModel(0);
  v136 = v143;
  sub_2587D1B0C(&v134[*(v135 + 44)], &v143[*(v153 + 20)], type metadata accessor for MedicalIDMedicalInfoViewModel);
  type metadata accessor for MedicalIDDataManager(0);
  sub_2587D1868(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  *v136 = sub_2588BBF58();
  *(v136 + 8) = v137 & 1;
  sub_2587D1B0C(v136, v152, type metadata accessor for MedicalIDEditMedicalNotesModalView);
  swift_storeEnumTagMultiPayload();
  sub_2587D138C();
  sub_2587D1868(&qword_27F95DED0, type metadata accessor for MedicalIDEditMedicalNotesModalView, &unk_2588C4F54);
  v138 = v154;
  sub_2588BC778();
  sub_2587D1554(v138, v163, &qword_27F95DE70, sub_2587D1058);
  swift_storeEnumTagMultiPayload();
  sub_2587D10C0();
  sub_2587D161C(&qword_27F95DED8, sub_2587D10C0, sub_2587D13E0, sub_2587D1434);
  sub_2587D1488();
  v139 = v165;
  sub_2588BC778();
  sub_2587D1990(v138, &qword_27F95DE70, sub_2587D1058);
  sub_2587D1554(v139, v168, &qword_27F95DE88, sub_2587D1118);
  swift_storeEnumTagMultiPayload();
  sub_2587D15D4();
  sub_2587D18B0();
  sub_2588BC778();
  sub_2587D1990(v139, &qword_27F95DE88, sub_2587D1118);
  v58 = type metadata accessor for MedicalIDEditMedicalNotesModalView;
  v59 = v136;
  return sub_2587D1A08(v59, v58);
}

void sub_2587D1058(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MedicalIDEditMedicalNotesModalView(255);
    v7 = a3(a1, &type metadata for MedicalIDEditMedicationsModalView, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2587D10C0()
{
  if (!qword_27F95DE80)
  {
    v0 = sub_2588BC788();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DE80);
    }
  }
}

void sub_2587D1118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2587D10C0();
    v7 = v6;
    sub_2587D1058(255, &qword_27F95DE70, MEMORY[0x277CE0338]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2587D11EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_2587D1270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2587D12FC(255);
    v7 = v6;
    sub_2587D1118(255, &qword_27F95DE88, MEMORY[0x277CE0338]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2587D138C()
{
  result = qword_27F95DEC8;
  if (!qword_27F95DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DEC8);
  }

  return result;
}

unint64_t sub_2587D13E0()
{
  result = qword_27F95DEE0;
  if (!qword_27F95DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DEE0);
  }

  return result;
}

unint64_t sub_2587D1434()
{
  result = qword_27F95DEE8;
  if (!qword_27F95DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DEE8);
  }

  return result;
}

unint64_t sub_2587D1488()
{
  result = qword_27F95DEF0;
  if (!qword_27F95DEF0)
  {
    sub_2587D1058(255, &qword_27F95DE70, MEMORY[0x277CE0338]);
    sub_2587D138C();
    sub_2587D1868(&qword_27F95DED0, type metadata accessor for MedicalIDEditMedicalNotesModalView, &unk_2588C4F54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DEF0);
  }

  return result;
}

uint64_t sub_2587D1554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void))
{
  v6 = a4(0, a3, MEMORY[0x277CE0338]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2587D161C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t sub_2587D16A8()
{
  result = qword_27F95DF00;
  if (!qword_27F95DF00)
  {
    sub_2587D1344(255);
    sub_2587D1868(&qword_27F95DF08, type metadata accessor for MedicalIDEditPersonalInfoModalView, &unk_2588C0C0C);
    sub_2587D1868(&qword_27F95DF10, type metadata accessor for MedicalIDEditPregnancyModalView, &unk_2588C1F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DF00);
  }

  return result;
}

unint64_t sub_2587D1788()
{
  result = qword_27F95DF18;
  if (!qword_27F95DF18)
  {
    sub_2587D11A4(255);
    sub_2587D1868(&qword_27F95DF20, type metadata accessor for MedicalIDEditBiometricsModalView, &unk_2588C80CC);
    sub_2587D1868(&qword_27F95DF28, type metadata accessor for MedicalIDEditEmergencyContactsModalView, &unk_2588C10F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DF18);
  }

  return result;
}

uint64_t sub_2587D1868(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2587D18B0()
{
  result = qword_27F95DF30;
  if (!qword_27F95DF30)
  {
    sub_2587D1118(255, &qword_27F95DE88, MEMORY[0x277CE0338]);
    sub_2587D161C(&qword_27F95DED8, sub_2587D10C0, sub_2587D13E0, sub_2587D1434);
    sub_2587D1488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DF30);
  }

  return result;
}

uint64_t sub_2587D1990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, void))
{
  v4 = a3(0, a2, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2587D1A08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2587D1A68()
{
  if (!qword_27F95DC40)
  {
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DC40);
    }
  }
}

void sub_2587D1AB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BBF38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2587D1B0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2587D1BA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2587D1BF0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2587D1C44()
{
  result = qword_27F95DF48;
  if (!qword_27F95DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DF48);
  }

  return result;
}

id sub_2587D1C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D129C0]) initWithMedicalIDData_];
  if (v6)
  {
    v7 = qword_27F95D0A8;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_2588BD868();
    [v8 setCompletionButtonTitle_];

    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2587D1E1C;
    aBlock[3] = &block_descriptor_1;
    v10 = _Block_copy(aBlock);

    [v8 setRegistrationCompletionHandler_];
    _Block_release(v10);

    return v8;
  }

  else
  {
    result = sub_2588BDED8();
    __break(1u);
  }

  return result;
}

uint64_t sub_2587D1E1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_2587D1ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2587D1FC0();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2587D1F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2587D1FC0();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2587D1F98(uint64_t a1)
{
  sub_2587D1FC0();
  sub_2588BCA58();
  __break(1u);
}

unint64_t sub_2587D1FC0()
{
  result = qword_27F95DF50;
  if (!qword_27F95DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DF50);
  }

  return result;
}

id MedicalIDEmergencyContact.asHKEmergencyContact.getter(uint64_t a1)
{
  v1 = sub_2587D294C();

  return v1;
}

uint64_t MedicalIDEmergencyContact.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MedicalIDEmergencyContact.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MedicalIDEmergencyContact.nameContactIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MedicalIDEmergencyContact.nameContactIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MedicalIDEmergencyContact.phoneNumberLabel.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MedicalIDEmergencyContact.phoneNumberLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MedicalIDEmergencyContact.phoneNumber.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t MedicalIDEmergencyContact.phoneNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t MedicalIDEmergencyContact.phoneNumberContactIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t MedicalIDEmergencyContact.phoneNumberContactIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t MedicalIDEmergencyContact.relationship.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t MedicalIDEmergencyContact.relationship.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

void *MedicalIDEmergencyContact.contact.getter()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

uint64_t MedicalIDEmergencyContact.baseIdentifier.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t MedicalIDEmergencyContact.hashValue.getter()
{
  sub_2588BE038();
  MedicalIDEmergencyContact.hash(into:)(v1);
  return sub_2588BE078();
}

uint64_t sub_2587D240C()
{
  sub_2588BE038();
  MedicalIDEmergencyContact.hash(into:)(v1);
  return sub_2588BE078();
}

uint64_t sub_2587D2450(uint64_t a1)
{
  sub_2588BE038();
  MedicalIDEmergencyContact.hash(into:)(v2);
  return sub_2588BE078();
}

uint64_t _s11MedicalIDUI0A18IDEmergencyContactV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v12 = a1[9];
  v11 = a1[10];
  v13 = a1[11];
  v102 = a1[13];
  v14 = a1[14];
  v100 = a1[15];
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v20 = a2[5];
  v19 = a2[6];
  v22 = a2[7];
  v21 = a2[8];
  v24 = a2[9];
  v23 = a2[10];
  v25 = a2[11];
  v103 = a2[13];
  v101 = a2[14];
  v99 = a2[15];
  if (v3)
  {
    if (!v15)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v15)
    {
      v92 = a2[7];
      v95 = a2[8];
      v81 = a2[4];
      v26 = a1[14];
      v27 = a1[10];
      v85 = a1[4];
      v87 = a1[5];
      v28 = a1[11];
      v75 = a2[2];
      v76 = a1[2];
      v29 = a2[11];
      v83 = a2[5];
      v30 = a2[10];
      v31 = a1[8];
      v77 = a1[9];
      v78 = a1[6];
      v32 = a2[9];
      v89 = a2[6];
      v33 = a1[7];
      v34 = sub_2588BDF98();
      v9 = v33;
      v19 = v89;
      v22 = v92;
      v12 = v77;
      v7 = v78;
      v21 = v95;
      v24 = v32;
      v10 = v31;
      v23 = v30;
      v20 = v83;
      v6 = v85;
      v25 = v29;
      v16 = v75;
      v4 = v76;
      v13 = v28;
      v8 = v87;
      v11 = v27;
      v14 = v26;
      v18 = v81;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v5)
  {
    if (!v17)
    {
      return 0;
    }

    if (v4 != v16 || v5 != v17)
    {
      v93 = v22;
      v96 = v21;
      v79 = v14;
      v82 = v18;
      v35 = v11;
      v84 = v20;
      v86 = v6;
      v36 = v13;
      v37 = v25;
      v38 = v23;
      v39 = v10;
      v40 = v12;
      v88 = v8;
      v90 = v19;
      v41 = v24;
      v42 = v7;
      v43 = v9;
      v44 = sub_2588BDF98();
      v22 = v93;
      v21 = v96;
      v9 = v43;
      v7 = v42;
      v24 = v41;
      v8 = v88;
      v19 = v90;
      v12 = v40;
      v10 = v39;
      v23 = v38;
      v25 = v37;
      v18 = v82;
      v20 = v84;
      v13 = v36;
      v6 = v86;
      v11 = v35;
      v14 = v79;
      if ((v44 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v8)
  {
    if (!v20)
    {
      return 0;
    }

    if (v6 != v18 || v8 != v20)
    {
      v94 = v22;
      v97 = v21;
      v80 = v14;
      v45 = v11;
      v46 = v13;
      v47 = v25;
      v48 = v23;
      v49 = v10;
      v50 = v12;
      v51 = v24;
      v52 = v7;
      v91 = v19;
      v53 = v9;
      v54 = sub_2588BDF98();
      v9 = v53;
      v19 = v91;
      v22 = v94;
      v7 = v52;
      v21 = v97;
      v24 = v51;
      v12 = v50;
      v10 = v49;
      v23 = v48;
      v25 = v47;
      v13 = v46;
      v11 = v45;
      v14 = v80;
      if ((v54 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v9)
  {
    if (!v22)
    {
      return 0;
    }

    if (v7 != v19 || v9 != v22)
    {
      v98 = v21;
      v55 = v14;
      v56 = v11;
      v57 = v13;
      v58 = v25;
      v59 = v23;
      v60 = v10;
      v61 = v12;
      v62 = v24;
      v63 = sub_2588BDF98();
      v21 = v98;
      v24 = v62;
      v12 = v61;
      v10 = v60;
      v23 = v59;
      v25 = v58;
      v13 = v57;
      v11 = v56;
      v14 = v55;
      if ((v63 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v12)
  {
    if (!v24)
    {
      return 0;
    }

    if (v10 != v21 || v12 != v24)
    {
      v64 = v14;
      v65 = v11;
      v66 = v13;
      v67 = v25;
      v68 = v23;
      v69 = sub_2588BDF98();
      v23 = v68;
      v25 = v67;
      v13 = v66;
      v11 = v65;
      v14 = v64;
      if ((v69 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v13)
  {
    if (!v25)
    {
      return 0;
    }

    v70 = v14;
    if ((v11 != v23 || v13 != v25) && (sub_2588BDF98() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v70 = v14;
    if (v25)
    {
      return 0;
    }
  }

  sub_25878E130(0, &qword_27F95D878, 0x277D82BB8);
  if ((sub_2588BDCD8() & 1) == 0)
  {
    return 0;
  }

  if (!v102)
  {
    if (!v103)
    {
      goto LABEL_47;
    }

    return 0;
  }

  if (!v103)
  {
    return 0;
  }

  sub_25878E130(0, &unk_280C0DDF0, 0x277CBDA58);
  v71 = v103;
  v72 = v102;
  v73 = sub_2588BDCD8();

  if ((v73 & 1) == 0)
  {
    return 0;
  }

LABEL_47:
  if (v70 == v101 && v100 == v99)
  {
    return 1;
  }

  return sub_2588BDF98();
}

void *sub_2587D294C()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[9];
  v14 = v0[8];
  v6 = v0[11];
  v5 = v0[12];
  if (v0[1])
  {
    v7 = sub_2588BD868();
  }

  else
  {
    v7 = 0;
  }

  [v5 setName_];

  if (v1)
  {
    v8 = sub_2588BD868();
  }

  else
  {
    v8 = 0;
  }

  [v5 setNameContactIdentifier_];

  if (v2)
  {
    v9 = sub_2588BD868();
  }

  else
  {
    v9 = 0;
  }

  [v5 setPhoneNumberLabel_];

  if (v3)
  {
    v10 = sub_2588BD868();
  }

  else
  {
    v10 = 0;
  }

  [v5 setPhoneNumber_];

  if (v4)
  {
    v11 = sub_2588BD868();
  }

  else
  {
    v11 = 0;
  }

  [v5 setPhoneNumberContactIdentifier_];

  if (v6)
  {
    v12 = sub_2588BD868();
  }

  else
  {
    v12 = 0;
  }

  [v5 setRelationship_];

  return v5;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_2587D2B08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2587D2B50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2587D2BD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2587D2C6C(uint64_t a1)
{
  sub_2587D2BD4(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MedicalIDEditableEmergencyContactsModel(319);
    if (v2 <= 0x3F)
    {
      sub_2587C87A8();
      if (v3 <= 0x3F)
      {
        sub_2587D2DD4(319);
        if (v4 <= 0x3F)
        {
          sub_2587D2BD4(319, &qword_27F95DAC0, MEMORY[0x28220C158], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_2587D2BD4(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
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

void sub_2587D2DD4(uint64_t a1)
{
  if (!qword_27F95DC88)
  {
    sub_2587D72B8(255, &qword_27F95DC40, &type metadata for BasicAlertModel, MEMORY[0x277D83D88]);
    v1 = sub_2588BD2F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95DC88);
    }
  }
}

uint64_t sub_2587D2E6C()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_2588BDBE8();
    v7 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

void *sub_2587D2FAC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2588BD568();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  v10 = type metadata accessor for MedicalIDEditEmergencyContactsModalView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F95D070 != -1)
  {
    swift_once();
  }

  v14 = unk_27F95DF60;
  v39 = qword_27F95DF58;
  sub_2587D73CC(v2, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDEditEmergencyContactsModalView);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  sub_2587D6BFC(v13, v16 + v15, type metadata accessor for MedicalIDEditEmergencyContactsModalView);
  v17 = *(v2 + 48);
  v49 = *(v2 + 32);
  v50 = v17;
  v18 = *(v2 + 80);
  v51 = *(v2 + 64);
  v52 = v18;
  sub_2587D2DD4(0);

  sub_2588BD2E8();
  v52 = v47;
  v53 = v48;
  v50 = v45;
  v51 = v46;
  v49 = v44;
  *a1 = swift_getKeyPath(byte_2588C1158);
  sub_2587D2BD4(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_2587D5978(0);
  v20 = v19;
  v21 = (a1 + v19[9]);
  *v21 = v39;
  v21[1] = v14;
  v22 = (a1 + v19[10]);
  *v22 = &unk_2588C1150;
  v22[1] = v16;
  v23 = a1 + v19[11];
  *(v23 + 8) = v53;
  v24 = v52;
  v25 = v50;
  *(v23 + 2) = v51;
  *(v23 + 3) = v24;
  *v23 = v49;
  *(v23 + 1) = v25;
  v26 = a1 + v19[12];
  v27 = *(v2 + 24);
  (*(v5 + 104))(v9, *MEMORY[0x277CDF0D0], v4);
  type metadata accessor for MedicalIDEditableEmergencyContactsModel(0);
  sub_2587D5A2C(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel, &protocol conformance descriptor for MedicalIDEditableEmergencyContactsModel);

  v28 = v27;
  sub_2588BD548();
  v29 = type metadata accessor for MedicalIDEmergencyContactsEditView(0);
  *&v26[*(v29 + 20)] = v28;
  v30 = sub_2588BD9A8();
  v31 = HKUIJoinStringsForAutomationIdentifier();

  if (v31)
  {
    v32 = sub_2588BD8A8();
    v34 = v33;
  }

  else
  {
    v34 = 0x80000002588C8A90;
    v32 = 0xD000000000000011;
  }

  v35 = &v26[*(v29 + 24)];
  *v35 = v32;
  v35[1] = v34;
  (*(v5 + 16))(v40, v9, v4);
  sub_2588BD2B8();
  (*(v5 + 8))(v9, v4);
  v36 = a1 + v20[13];
  v41 = 0;
  result = sub_2588BD2B8();
  v38 = v43;
  *v36 = v42;
  *(v36 + 1) = v38;
  return result;
}

uint64_t sub_2587D3470()
{
  v0[2] = sub_2588BDA78();
  v0[3] = sub_2588BDA68();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2587C9A98;

  return sub_2587D351C();
}

uint64_t sub_2587D351C()
{
  v1[11] = v0;
  v2 = sub_2588BC038();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  sub_2587B63B8(0);
  v1[15] = swift_task_alloc();
  type metadata accessor for MedicalIDData(0);
  v1[16] = swift_task_alloc();
  v1[17] = type metadata accessor for MedicalIDEditEmergencyContactsModalView(0);
  v1[18] = swift_task_alloc();
  v1[19] = sub_2588BDA78();
  v1[20] = sub_2588BDA68();
  v4 = sub_2588BDA28();
  v1[21] = v4;
  v1[22] = v3;

  return MEMORY[0x2822009F8](sub_2587D369C, v4, v3);
}

uint64_t sub_2587D369C()
{
  v1 = v0[18];
  v2 = v0[11];
  v0[23] = sub_2587D2E6C();
  sub_2587D73CC(v2, v1, type metadata accessor for MedicalIDEditEmergencyContactsModalView);
  v0[24] = sub_2588BDA68();
  v4 = sub_2588BDA28();
  v0[25] = v4;
  v0[26] = v3;

  return MEMORY[0x2822009F8](sub_2587D375C, v4, v3);
}

uint64_t sub_2587D375C()
{
  v1 = v0[23];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  swift_getKeyPath(byte_2588C1190);
  v0[8] = v1;
  sub_2587D5A2C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v5 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2587D73CC(v1 + v5, v4, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v3);
  sub_2587D5A74(v4, sub_2587B63B8);
  v6 = *(v2 + 16);
  swift_getKeyPath(byte_2588C11B8);
  v0[9] = v6;
  sub_2587D5A2C(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel, &protocol conformance descriptor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  swift_beginAccess();
  v7 = *(v6 + 16);

  *(v3 + 16) = v7;
  v8 = swift_task_alloc();
  v0[27] = v8;
  *v8 = v0;
  v8[1] = sub_2587D3994;
  v9 = v0[16];

  return sub_258880280(v9, (v0 + 10));
}

uint64_t sub_2587D3994()
{
  v2 = *v1;

  v3 = *(v2 + 200);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_2587D3C34;
  }

  else
  {
    v5 = sub_2587D3AA4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2587D3AA4()
{
  v1 = v0[18];
  v2 = v0[16];

  sub_2587D5A74(v2, type metadata accessor for MedicalIDData);
  sub_2587D5A74(v1, type metadata accessor for MedicalIDEditEmergencyContactsModalView);
  v3 = v0[21];
  v4 = v0[22];

  return MEMORY[0x2822009F8](sub_2587D3B58, v3, v4);
}

uint64_t sub_2587D3B58()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  sub_25885269C(v1);
  sub_2588BC028();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2587D3C34()
{
  v1 = v0[18];
  v2 = v0[16];

  sub_2587D5A74(v2, type metadata accessor for MedicalIDData);
  v0[28] = v0[10];
  sub_2587D5A74(v1, type metadata accessor for MedicalIDEditEmergencyContactsModalView);
  v3 = v0[21];
  v4 = v0[22];

  return MEMORY[0x2822009F8](sub_2587D3CF0, v3, v4);
}

uint64_t sub_2587D3CF0()
{
  v1 = *(v0 + 224);

  sub_2587CE078();
  swift_allocError();
  *v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2587D3DBC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  sub_2587D65EC(0, &qword_27F95E090, sub_2587D664C);
  v85 = *(v3 - 8);
  v86 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v83 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v82 = &v71 - v6;
  v7 = type metadata accessor for MedicalIDEmergencyContactsEditView(0);
  v78 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v76 = v8;
  v79 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587D2BD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v10 = *(v9 - 8);
  v74 = v9;
  v75 = v10;
  MEMORY[0x28223BE20](v9);
  v73 = &v71 - v11;
  sub_2587D5D94(0, &qword_27F95E010, sub_2587D6028, sub_2587D6558);
  v77 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v81 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v87 = &v71 - v15;
  v16 = sub_2588BC628();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587D5D2C(0);
  v72 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v80 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v71 - v23;
  if (qword_27F95D0F8 != -1)
  {
    swift_once();
  }

  v26 = qword_27F969848;
  v25 = unk_27F969850;

  v27 = sub_2587D5400();
  v28 = &a1[*(v7 + 24)];
  v29 = *v28;
  v30 = *(v28 + 1);
  v88 = v26;
  v89 = v25;
  v90 = v27;
  v91 = v31;
  v92 = v29;
  v93 = v30;
  sub_2587D68A0();

  sub_2588BD4E8();
  sub_2588BC618();
  sub_2587D5E08(0);
  v33 = *(v32 + 36);
  (*(v17 + 16))(&v24[v33], v19, v16);
  v34 = *(v17 + 56);
  v34(&v24[v33], 0, 1, v16);
  KeyPath = swift_getKeyPath("P,\n'");
  sub_2587D5D60(0);
  v37 = &v24[*(v36 + 36)];
  sub_2587D5F2C(0);
  v39 = *(v38 + 28);
  (*(v17 + 32))(v37 + v39, v19, v16);
  v34(v37 + v39, 0, 1, v16);
  *v37 = KeyPath;
  v40 = &v24[*(v72 + 36)];
  v71 = v24;
  __asm { FMOV            V0.2D, #16.0 }

  *v40 = _Q0;
  *(v40 + 1) = _Q0;
  v40[32] = 0;
  v47 = v73;
  v46 = v74;
  sub_2588BD538();
  swift_getKeyPath(byte_2588C11B8);
  sub_2588BD558();

  (*(v75 + 8))(v47, v46);
  v48 = v88;
  v49 = v89;
  v50 = v90;
  v51 = swift_getKeyPath(" ,\n'");
  v52 = v87;
  sub_2587D4BC8(v48, v49, v50, v51, sub_2587D4614, 0);
  v53 = v79;
  sub_2587D73CC(a1, v79, type metadata accessor for MedicalIDEmergencyContactsEditView);
  v54 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v55 = swift_allocObject();
  sub_2587D6BFC(v53, v55 + v54, type metadata accessor for MedicalIDEmergencyContactsEditView);
  v56 = swift_allocObject();
  *(v56 + 16) = sub_2587D6C64;
  *(v56 + 24) = v55;
  v57 = (v52 + *(v77 + 36));
  *v57 = sub_2587D6CD4;
  v57[1] = v56;
  MEMORY[0x28223BE20](v56);
  *(&v71 - 2) = a1;
  sub_2587D664C(0);
  sub_2587D6D38(&qword_27F95E0E8, sub_2587D664C, sub_2587D6D04);
  v58 = v82;
  sub_2588BD508();
  v59 = v24;
  v60 = v80;
  sub_2587D73CC(v59, v80, sub_2587D5D2C);
  v61 = v81;
  sub_258796DAC(v52, v81);
  v63 = v85;
  v62 = v86;
  v64 = *(v85 + 16);
  v65 = v83;
  v64(v83, v58, v86);
  v66 = v84;
  sub_2587D73CC(v60, v84, sub_2587D5D2C);
  sub_2587D5C58(0);
  v68 = v67;
  sub_258796DAC(v61, v66 + *(v67 + 48));
  v64((v66 + *(v68 + 64)), v65, v62);
  v69 = *(v63 + 8);
  v69(v58, v62);
  sub_258796E40(v87);
  sub_2587D5A74(v71, sub_2587D5D2C);
  v69(v65, v62);
  sub_258796E40(v61);
  return sub_2587D5A74(v60, sub_2587D5D2C);
}

uint64_t sub_2587D4614@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2588BC628();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2588BC848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587D65EC(0, &qword_27F95E058, type metadata accessor for ContactLabelEditView);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = a1[7];
  v33[6] = a1[6];
  v33[7] = v16;
  v33[8] = a1[8];
  v17 = a1[3];
  v33[2] = a1[2];
  v33[3] = v17;
  v18 = a1[5];
  v33[4] = a1[4];
  v33[5] = v18;
  v19 = a1[1];
  v33[0] = *a1;
  v33[1] = v19;
  v32 = v33;
  type metadata accessor for ContactLabelEditView(0);
  sub_2587D5A2C(&qword_27F95E068, type metadata accessor for ContactLabelEditView, &unk_2588C25B0);
  sub_2588BD508();
  sub_2588BC838();
  sub_2587D6388();
  sub_2588BD138();
  (*(v8 + 8))(v10, v7);
  (*(v13 + 8))(v15, v12);
  v20 = v31;
  sub_2588BC618();
  sub_2587D6294(0);
  v22 = *(v21 + 36);
  (*(v5 + 16))(a2 + v22, v20, v4);
  v23 = *(v5 + 56);
  v23((a2 + v22), 0, 1, v4);
  KeyPath = swift_getKeyPath("P,\n'");
  sub_2587D5D94(0, &qword_27F95E040, sub_2587D6294, sub_2587D5F2C);
  v26 = (a2 + *(v25 + 36));
  sub_2587D5F2C(0);
  v28 = *(v27 + 28);
  (*(v5 + 32))(v26 + v28, v20, v4);
  result = v23(v26 + v28, 0, 1, v4);
  *v26 = KeyPath;
  return result;
}

uint64_t sub_2587D49DC@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_allocWithZone(MIUIRelationshipPickerDataSource) init];
  v5 = *(type metadata accessor for ContactLabelEditView(0) + 28);
  *(a2 + v5) = swift_getKeyPath(byte_2588C12F8);
  sub_2587D2BD4(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v6 = a1[7];
  v22[6] = a1[6];
  v22[7] = v6;
  v22[8] = a1[8];
  v7 = a1[3];
  v22[2] = a1[2];
  v22[3] = v7;
  v8 = a1[5];
  v22[4] = a1[4];
  v22[5] = v8;
  v9 = a1[1];
  v22[0] = *a1;
  v22[1] = v9;
  sub_2587D72B8(0, &qword_27F95E158, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0](v21);
  v27 = v21[4];
  v28 = v21[5];
  v29 = v21[6];
  v30 = v21[7];
  v23 = v21[0];
  v24 = v21[1];
  v25 = v21[2];
  v26 = v21[3];
  type metadata accessor for ContactLabelEditViewModel(0);
  v10 = swift_allocObject();
  *(v10 + 144) = 0;
  sub_2588BBBC8();
  v11 = v28;
  *(v10 + 80) = v27;
  *(v10 + 96) = v11;
  v12 = v30;
  *(v10 + 112) = v29;
  *(v10 + 128) = v12;
  v13 = v24;
  *(v10 + 16) = v23;
  *(v10 + 32) = v13;
  v14 = v26;
  *(v10 + 48) = v25;
  *(v10 + 64) = v14;
  *a2 = v10;
  a2[1] = 0;
  a2[4] = v4;
  v15 = swift_allocObject();
  v16 = a1[7];
  v15[7] = a1[6];
  v15[8] = v16;
  v15[9] = a1[8];
  v17 = a1[3];
  v15[3] = a1[2];
  v15[4] = v17;
  v18 = a1[5];
  v15[5] = a1[4];
  v15[6] = v18;
  v19 = a1[1];
  v15[1] = *a1;
  v15[2] = v19;
  a2[2] = sub_2587D7324;
  a2[3] = v15;
  return sub_2587D732C(a1, v22);
}

uint64_t sub_2587D4BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a3;
  sub_2587D6F34(0);
  MEMORY[0x259C8C5A0](v20);
  v12 = *(v20[0] + 16);

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v20[0] = 0;
  v20[1] = v12;
  v20[2] = sub_2587D6FB0;
  v20[3] = v13;
  v19[0] = &type metadata for MedicalIDEmergencyContact;
  sub_2587D5D94(0, &qword_27F95E040, sub_2587D6294, sub_2587D5F2C);
  v19[1] = v14;
  sub_2587D72B8(0, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
  v19[2] = v15;
  v19[3] = sub_258791374();
  v19[4] = sub_2587D6FB4();
  v19[5] = sub_2587D6ECC(&qword_27F95E118, MEMORY[0x277D83960]);
  v19[6] = sub_2587D6ECC(&qword_27F95E150, MEMORY[0x277D83980]);
  v19[7] = MEMORY[0x277D83B98];
  swift_getKeyPath(byte_2588C12D8, v19);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a5;
  v16[6] = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2587D71B0;
  *(v17 + 24) = v16;
  sub_2587D60F0(0);
  sub_2587D6458();

  return sub_2588BD4B8();
}

uint64_t sub_2587D4E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a3;
  sub_2587D6F34(0);
  MEMORY[0x259C8C5A0](v20);
  v12 = *(v20[0] + 16);

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v20[0] = 0;
  v20[1] = v12;
  v20[2] = sub_2587D7960;
  v20[3] = v13;
  v19[0] = &type metadata for MedicalIDEmergencyContact;
  sub_2587D65EC(0, &qword_27F95E058, type metadata accessor for ContactLabelEditView);
  v19[1] = v14;
  sub_2587D72B8(0, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
  v19[2] = v15;
  v19[3] = sub_258791374();
  v19[4] = sub_2587D6388();
  v19[5] = sub_2587D6ECC(&qword_27F95E118, MEMORY[0x277D83960]);
  v19[6] = sub_2587D6ECC(&qword_27F95E150, MEMORY[0x277D83980]);
  v19[7] = MEMORY[0x277D83B98];
  swift_getKeyPath(byte_2588C12D8, v19);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a5;
  v16[6] = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2587D7608;
  *(v17 + 24) = v16;
  sub_2587D60F0(0);
  sub_2587D6458();

  return sub_2588BD4B8();
}

uint64_t sub_2587D5084(uint64_t a1)
{
  sub_2587D2BD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  swift_getKeyPath(byte_2588C11B8);
  sub_2587D5A2C(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel, &protocol conformance descriptor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  swift_getKeyPath(byte_2588C11B8);
  sub_2588BBBB8();

  swift_beginAccess();
  sub_2587D72B8(0, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
  sub_2587D6ECC(&qword_27F95E118, MEMORY[0x277D83960]);
  sub_2587D6ECC(&qword_27F95E120, MEMORY[0x277D83990]);
  sub_2588BDB68();
  swift_endAccess();
  swift_getKeyPath(byte_2588C11B8);
  sub_2588BBBA8();
}

void sub_2587D5288(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2587D2BD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  v4 = *(a1 + *(type metadata accessor for MedicalIDEmergencyContactsEditView(0) + 20));
  sub_2588ACF5C(v4, a2);
  sub_2587D5D94(0, &qword_27F95E0A8, type metadata accessor for AddEmergencyContactView, sub_2587D5F94);
  v6 = a2 + *(v5 + 36);
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  LOBYTE(a1) = sub_2588BCB78();
  sub_2588BBE38();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_2587D66AC(0);
  v16 = a2 + *(v15 + 36);
  *v16 = a1;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  LOBYTE(a1) = sub_2588BCBE8();
  sub_2588BBE38();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_2587D664C(0);
  v26 = a2 + *(v25 + 36);
  *v26 = a1;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
}

id sub_2587D5400()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    v2 = sub_2588BD868();
    [v1 applicationIsInstalled_];

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
    return sub_2588BD8B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2587D55CC@<X0>(uint64_t a1@<X8>)
{
  sub_2587D5C24(0);
  sub_2587D5A2C(&qword_27F95E0B0, sub_2587D5C24, MEMORY[0x277CE14C0]);
  sub_2588BCD48();
  KeyPath = swift_getKeyPath("x,\n'");
  sub_2587D5D94(0, &qword_27F95E0B8, sub_2587D673C, sub_2587D67EC);
  v4 = (a1 + *(v3 + 36));
  sub_2587D67EC(0);
  v6 = *(v5 + 28);
  sub_2587D2BD4(0, &qword_27F95DF90, MEMORY[0x277CDF0E0], MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  sub_2587D6854(0);
  result = (*(*(v7 - 8) + 56))(v4 + v6, 0, 1, v7);
  *v4 = KeyPath;
  return result;
}

uint64_t sub_2587D575C()
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
  qword_27F95DF58 = result;
  unk_27F95DF60 = v5;
  return result;
}

uint64_t sub_2587D58AC()
{
  type metadata accessor for MedicalIDEditEmergencyContactsModalView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2587AE310;

  return sub_2587D3470();
}

void sub_2587D5978(uint64_t a1)
{
  if (!qword_27F95DF78)
  {
    v2 = type metadata accessor for MedicalIDEmergencyContactsEditView(255);
    v3 = sub_2587D5A2C(&qword_27F95DF80, type metadata accessor for MedicalIDEmergencyContactsEditView, &unk_2588C1204);
    v5 = type metadata accessor for MedicalIDEditModal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27F95DF78);
    }
  }
}

uint64_t sub_2587D5A2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2587D5A74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2587D5AFC(uint64_t a1)
{
  sub_2587D2BD4(319, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_2587C87A8();
    if (v2 <= 0x3F)
    {
      sub_2587D2BD4(319, &qword_27F95DF90, MEMORY[0x277CDF0E0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2587D5C58(uint64_t a1)
{
  if (!qword_27F95DFB8)
  {
    sub_2587D5D2C(255);
    sub_2587D5D94(255, &qword_27F95E010, sub_2587D6028, sub_2587D6558);
    sub_2587D65EC(255, &qword_27F95E090, sub_2587D664C);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95DFB8);
    }
  }
}

void sub_2587D5D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_2587D5E3C()
{
  if (!qword_27F95DFD8)
  {
    v0 = sub_2588BD518();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DFD8);
    }
  }
}

void sub_2587D5E98(uint64_t a1)
{
  if (!qword_27F95DFE0)
  {
    sub_2588BC988();
    sub_2587D5A2C(&qword_27F95DFE8, MEMORY[0x277CDE3A0], MEMORY[0x277CDE398]);
    v1 = sub_2588BC8A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95DFE0);
    }
  }
}

void sub_2587D5F94(uint64_t a1)
{
  if (!qword_27F95E000)
  {
    sub_2588BC858();
    sub_2587D5A2C(&qword_27F95E008, MEMORY[0x277CDE0E0], MEMORY[0x277CDE0D8]);
    v1 = sub_2588BC8A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E000);
    }
  }
}

void sub_2587D6028(uint64_t a1)
{
  if (!qword_27F95E018)
  {
    sub_2587D60F0(255);
    sub_2587D5D94(255, &qword_27F95E040, sub_2587D6294, sub_2587D5F2C);
    sub_2587D6458();
    sub_258791374();
    v1 = sub_2588BD4D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E018);
    }
  }
}

void sub_2587D60F0(uint64_t a1)
{
  if (!qword_27F95E020)
  {
    sub_2587D6188();
    sub_2587D61E0();
    sub_2587D64EC(&qword_27F95E030, MEMORY[0x277D83D28]);
    v1 = sub_2588BDEC8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E020);
    }
  }
}

void sub_2587D6188()
{
  if (!qword_27F95FB50)
  {
    v0 = sub_2588BDB78();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FB50);
    }
  }
}

void sub_2587D61E0()
{
  if (!qword_27F95E028)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95E028);
    }
  }
}

unint64_t sub_2587D6240()
{
  result = qword_27F95E038;
  if (!qword_27F95E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E038);
  }

  return result;
}

void sub_2587D62C8(uint64_t a1)
{
  if (!qword_27F95E050)
  {
    sub_2587D65EC(255, &qword_27F95E058, type metadata accessor for ContactLabelEditView);
    sub_2588BC848();
    sub_2587D6388();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E050);
    }
  }
}

unint64_t sub_2587D6388()
{
  result = qword_27F95E060;
  if (!qword_27F95E060)
  {
    sub_2587D65EC(255, &qword_27F95E058, type metadata accessor for ContactLabelEditView);
    sub_2587D5A2C(&qword_27F95E068, type metadata accessor for ContactLabelEditView, &unk_2588C25B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E060);
  }

  return result;
}

unint64_t sub_2587D6458()
{
  result = qword_27F95E070;
  if (!qword_27F95E070)
  {
    sub_2587D60F0(255);
    sub_2587D64EC(&qword_27F95E078, MEMORY[0x277D83D40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E070);
  }

  return result;
}

uint64_t sub_2587D64EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2587D6188();
    sub_2587D6240();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2587D6558(uint64_t a1)
{
  if (!qword_27F95E080)
  {
    sub_2588BC258();
    sub_2587D5A2C(&qword_27F95E088, MEMORY[0x277CDDAE8], MEMORY[0x277CDDAE0]);
    v1 = sub_2588BC8A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E080);
    }
  }
}

void sub_2587D65EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BD518();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2587D664C(uint64_t a1)
{
  if (!qword_27F95E098)
  {
    sub_2587D66AC(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E098);
    }
  }
}

void sub_2587D66AC(uint64_t a1)
{
  if (!qword_27F95E0A0)
  {
    sub_2587D5D94(255, &qword_27F95E0A8, type metadata accessor for AddEmergencyContactView, sub_2587D5F94);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E0A0);
    }
  }
}

void sub_2587D673C(uint64_t a1)
{
  if (!qword_27F95E0C0)
  {
    sub_2587D5C24(255);
    sub_2587D5A2C(&qword_27F95E0B0, sub_2587D5C24, MEMORY[0x277CE14C0]);
    v1 = sub_2588BCD58();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E0C0);
    }
  }
}

unint64_t sub_2587D68A0()
{
  result = qword_27F95E0E0;
  if (!qword_27F95E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E0E0);
  }

  return result;
}

void *sub_2587D68F4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a6@<X8>)
{
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
  *a6 = a1;
  sub_2587D6F34(0);
  result = MEMORY[0x259C8C5A0](v23);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v23[0] + 16) > a1)
  {
    v8 = (v23[0] + (a1 << 7));
    v9 = v8[2];
    v10 = v8[3];
    v11 = v8[5];
    v26 = v8[4];
    v27 = v11;
    v24 = v9;
    v25 = v10;
    v12 = v8[6];
    v13 = v8[7];
    v14 = v8[9];
    v30 = v8[8];
    v31 = v14;
    v28 = v12;
    v29 = v13;
    sub_2587914E8(&v24, v32);

    v19 = v28;
    v20 = v29;
    v21 = v30;
    v22 = v31;
    v15 = v24;
    v16 = v25;
    v17 = v26;
    v18 = v27;
    swift_getAtKeyPath();
    v32[4] = v19;
    v32[5] = v20;
    v32[6] = v21;
    v32[7] = v22;
    v32[0] = v15;
    v32[1] = v16;
    v32[2] = v17;
    v32[3] = v18;
    return sub_2587C66FC(v32);
  }

  __break(1u);
  return result;
}

uint64_t sub_2587D6A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(_OWORD *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a1;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v16[7] = a1;
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_2588BD468();
  a6(v19);
  v20[6] = v19[6];
  v20[7] = v19[7];
  v20[8] = v19[8];
  v20[2] = v19[2];
  v20[3] = v19[3];
  v20[4] = v19[4];
  v20[5] = v19[5];
  v20[0] = v19[0];
  v20[1] = v19[1];
  return sub_2587D7238(v20);
}

uint64_t sub_2587D6B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, char *), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - v11;
  a6(a1, &v14 - v11);
  return a7(v12);
}

uint64_t sub_2587D6BFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587D6C64(uint64_t a1)
{
  type metadata accessor for MedicalIDEmergencyContactsEditView(0);

  return sub_2587D5084(a1);
}

uint64_t sub_2587D6D38(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2587D6DBC()
{
  result = qword_27F95E0F8;
  if (!qword_27F95E0F8)
  {
    sub_2587D5D94(255, &qword_27F95E0A8, type metadata accessor for AddEmergencyContactView, sub_2587D5F94);
    sub_2587D5A2C(&qword_27F95E100, type metadata accessor for AddEmergencyContactView, &unk_2588C8398);
    sub_2587D5A2C(&qword_27F95E108, sub_2587D5F94, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E0F8);
  }

  return result;
}

uint64_t sub_2587D6ECC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2587D72B8(255, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2587D6F34(uint64_t a1)
{
  if (!qword_27F95E128)
  {
    sub_2587D72B8(255, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
    v1 = sub_2588BD488();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E128);
    }
  }
}

unint64_t sub_2587D6FB4()
{
  result = qword_27F95E130;
  if (!qword_27F95E130)
  {
    sub_2587D5D94(255, &qword_27F95E040, sub_2587D6294, sub_2587D5F2C);
    sub_2587D7094();
    sub_2587D5A2C(&qword_27F95E148, sub_2587D5F2C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E130);
  }

  return result;
}

unint64_t sub_2587D7094()
{
  result = qword_27F95E138;
  if (!qword_27F95E138)
  {
    sub_2587D6294(255);
    sub_2587D65EC(255, &qword_27F95E058, type metadata accessor for ContactLabelEditView);
    sub_2588BC848();
    sub_2587D6388();
    swift_getOpaqueTypeConformance2();
    sub_2587D5A2C(&qword_27F95E140, sub_2587D5E98, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E138);
  }

  return result;
}

uint64_t sub_2587D7238(uint64_t a1)
{
  sub_2587D72B8(0, &qword_27F95E158, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277CE11F8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2587D72B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2587D732C(uint64_t a1, uint64_t a2)
{
  sub_2587D72B8(0, &qword_27F95E158, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277CE11F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587D73CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2587D7434()
{
  result = qword_27F95E168;
  if (!qword_27F95E168)
  {
    sub_2587D5D94(255, &qword_27F95E0B8, sub_2587D673C, sub_2587D67EC);
    sub_2587D5A2C(&qword_27F95E170, sub_2587D673C, MEMORY[0x277CDE5A0]);
    sub_2587D5A2C(&qword_27F95E178, sub_2587D67EC, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E168);
  }

  return result;
}

uint64_t objectdestroy_42Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_46Tm()
{

  return swift_deallocObject();
}

uint64_t sub_2587D7644(uint64_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6[5];
  v7 = v6[6];
  v9 = *a1;
  v10 = a2[5];
  v15[4] = a2[4];
  v15[5] = v10;
  v11 = a2[7];
  v15[6] = a2[6];
  v15[7] = v11;
  v12 = a2[1];
  v15[0] = *a2;
  v15[1] = v12;
  v13 = a2[3];
  v15[2] = a2[2];
  v15[3] = v13;
  return sub_2587D6A00(v9, v15, v6[2], v6[3], v6[4], v8, v7, a3, a4, a5, a6);
}

uint64_t sub_2587D76B0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v9 = *(a1 + 128);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return v2(v8, v8 + 8);
}

void *sub_2587D7714@<X0>(uint64_t a1@<X2>, unint64_t *a2@<X3>, _OWORD *a3@<X8>)
{
  v4 = *a2;
  v18[1] = *a1;
  v19 = *(a1 + 8);
  sub_2587D6F34(0);
  result = MEMORY[0x259C8C5A0](v18);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(v18[0] + 16))
  {
    v6 = (v18[0] + (v4 << 7));
    v7 = v6[2];
    v8 = v6[3];
    v9 = v6[5];
    v22 = v6[4];
    v23 = v9;
    v20 = v7;
    v21 = v8;
    v10 = v6[6];
    v11 = v6[7];
    v12 = v6[9];
    v26 = v6[8];
    v27 = v12;
    v24 = v10;
    v25 = v11;
    sub_2587914E8(&v20, &v17);

    v13 = v25;
    a3[4] = v24;
    a3[5] = v13;
    v14 = v27;
    a3[6] = v26;
    a3[7] = v14;
    v15 = v21;
    *a3 = v20;
    a3[1] = v15;
    v16 = v23;
    a3[2] = v22;
    a3[3] = v16;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2587D77E0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v5 = a1[5];
  v33 = a1[4];
  v34 = v5;
  v6 = a1[7];
  v35 = a1[6];
  v36 = v6;
  v7 = a1[1];
  v29 = *a1;
  v30 = v7;
  v8 = a1[3];
  v31 = a1[2];
  v32 = v8;
  v9 = *a5;
  v27[1] = *a4;
  v28 = *(a4 + 8);
  sub_2587D6F34(0);
  MEMORY[0x259C8C5A0](v27);
  v10 = v27[0];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_2587D7308(v10);
  v10 = result;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v9 < *(v10 + 16))
  {
    v12 = (v10 + (v9 << 7));
    v13 = v12[2];
    v14 = v12[3];
    v15 = v12[5];
    v26[2] = v12[4];
    v26[3] = v15;
    v26[0] = v13;
    v26[1] = v14;
    v16 = v12[6];
    v17 = v12[7];
    v18 = v12[9];
    v26[6] = v12[8];
    v26[7] = v18;
    v26[4] = v16;
    v26[5] = v17;
    v19 = v29;
    v20 = v30;
    v21 = v32;
    v12[4] = v31;
    v12[5] = v21;
    v12[2] = v19;
    v12[3] = v20;
    v22 = v33;
    v23 = v34;
    v24 = v36;
    v12[8] = v35;
    v12[9] = v24;
    v12[6] = v22;
    v12[7] = v23;
    sub_2587914E8(&v29, &v25);
    sub_2587C66FC(v26);
    v27[0] = v10;
    return sub_2588BD438();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t objectdestroy_52Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void *sub_2587D79A0(uint64_t a1, uint64_t a2)
{
  v8 = sub_2588BC768();
  MEMORY[0x28223BE20](v8);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_2588BC778();
}

void *sub_2587D7A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_2588BC768();
  MEMORY[0x28223BE20](v8);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_2588BC778();
}

uint64_t sub_2587D7B90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v26 = a1;
  sub_2587A8614(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587A8540(0);
  v24 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 32);
  v13 = *(v12 + 16);
  sub_25878E130(0, &qword_27F95D360, 0x277CCD4D8);
  sub_2587DC150(&qword_27F95E2B0, &qword_27F95D360, 0x277CCD4D8, &protocol conformance descriptor for HKHealthStore);
  v14 = v13;
  v15 = sub_2588BBD08();
  sub_2587DCEB4(v23, v7, _s12SheetContentVMa);
  sub_2587A869C(0);
  v17 = &v7[*(v16 + 36)];
  *v17 = v15;
  v17[1] = v14;
  v18 = *(v12 + 24);
  sub_25878E130(0, &qword_27F95D378, 0x277CCD7D0);
  sub_2587DC150(&qword_27F95E2B8, &qword_27F95D378, 0x277CCD7D0, &protocol conformance descriptor for HKProfileStore);
  v19 = v18;
  v20 = sub_2588BBD08();
  v21 = &v7[*(v5 + 36)];
  *v21 = v20;
  v21[1] = v19;
  type metadata accessor for MedicalIDDataManager(0);
  sub_2587DC924(&qword_27F95D380, sub_2587A8614, sub_2587A880C, sub_2587A8934);
  sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BCE58();
  sub_2587DCF1C(v7, sub_2587A8614);
  sub_2587D9E00(v11, v26);
  return (*(v9 + 8))(v11, v24);
}

uint64_t sub_2587D7EB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v26 = a1;
  sub_2587DB66C(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587DB554(0);
  v24 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 32);
  v13 = *(v12 + 16);
  sub_25878E130(0, &qword_27F95D360, 0x277CCD4D8);
  sub_2587DC150(&qword_27F95E2B0, &qword_27F95D360, 0x277CCD4D8, &protocol conformance descriptor for HKHealthStore);
  v14 = v13;
  v15 = sub_2588BBD08();
  sub_2587DCC5C(v23, v7, sub_2587DB034);
  sub_2587DB6F4(0);
  v17 = &v7[*(v16 + 36)];
  *v17 = v15;
  v17[1] = v14;
  v18 = *(v12 + 24);
  sub_25878E130(0, &qword_27F95D378, 0x277CCD7D0);
  sub_2587DC150(&qword_27F95E2B8, &qword_27F95D378, 0x277CCD7D0, &protocol conformance descriptor for HKProfileStore);
  v19 = v18;
  v20 = sub_2588BBD08();
  v21 = &v7[*(v5 + 36)];
  *v21 = v20;
  v21[1] = v19;
  type metadata accessor for MedicalIDDataManager(0);
  sub_2587DC924(&qword_27F95E1F8, sub_2587DB66C, sub_2587DB77C, sub_2587A8934);
  sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BCE58();
  sub_2587DCCC4(v7, sub_2587DB66C);
  sub_2587DA248(v11, v26);
  return (*(v9 + 8))(v11, v24);
}

uint64_t sub_2587D81D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v27 = a1;
  sub_2587DC648(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587DC80C(0);
  v25 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 32);
  v13 = *(v12 + 16);
  sub_25878E130(0, &qword_27F95D360, 0x277CCD4D8);
  sub_2587DC150(&qword_27F95E2B0, &qword_27F95D360, 0x277CCD4D8, &protocol conformance descriptor for HKHealthStore);
  v14 = v13;
  v15 = sub_2588BBD08();
  sub_2587DC758(0);
  (*(*(v16 - 8) + 16))(v7, v24, v16);
  sub_2587DC6D0(0);
  v18 = &v7[*(v17 + 36)];
  *v18 = v15;
  v18[1] = v14;
  v19 = *(v12 + 24);
  sub_25878E130(0, &qword_27F95D378, 0x277CCD7D0);
  sub_2587DC150(&qword_27F95E2B8, &qword_27F95D378, 0x277CCD7D0, &protocol conformance descriptor for HKProfileStore);
  v20 = v19;
  v21 = sub_2588BBD08();
  v22 = &v7[*(v5 + 36)];
  *v22 = v21;
  v22[1] = v20;
  type metadata accessor for MedicalIDDataManager(0);
  sub_2587DC924(&qword_27F95E330, sub_2587DC648, sub_2587DC9B0, sub_2587A8934);
  sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BCE58();
  sub_2587DCCC4(v7, sub_2587DC648);
  sub_2587DA690(v11, v27);
  return (*(v9 + 8))(v11, v25);
}

uint64_t sub_2587D850C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v26 = a1;
  sub_2587DC1A4(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587DC2B4(0);
  v24 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 32);
  v13 = *(v12 + 16);
  sub_25878E130(0, &qword_27F95D360, 0x277CCD4D8);
  sub_2587DC150(&qword_27F95E2B0, &qword_27F95D360, 0x277CCD4D8, &protocol conformance descriptor for HKHealthStore);
  v14 = v13;
  v15 = sub_2588BBD08();
  sub_2587DCEB4(v23, v7, type metadata accessor for NanoMedicalIDEditView);
  sub_2587DC22C(0);
  v17 = &v7[*(v16 + 36)];
  *v17 = v15;
  v17[1] = v14;
  v18 = *(v12 + 24);
  sub_25878E130(0, &qword_27F95D378, 0x277CCD7D0);
  sub_2587DC150(&qword_27F95E2B8, &qword_27F95D378, 0x277CCD7D0, &protocol conformance descriptor for HKProfileStore);
  v19 = v18;
  v20 = sub_2588BBD08();
  v21 = &v7[*(v5 + 36)];
  *v21 = v20;
  v21[1] = v19;
  type metadata accessor for MedicalIDDataManager(0);
  sub_2587DC924(&qword_27F95E2E0, sub_2587DC1A4, sub_2587DC3CC, sub_2587A8934);
  sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BCE58();
  sub_2587DCF1C(v7, sub_2587DC1A4);
  sub_2587DAAD8(v11, v26);
  return (*(v9 + 8))(v11, v24);
}

void *MedicalIDMainView.init(healthStore:medicalIDData:displayConfiguration:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for MedicalIDMainView(0);
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath(byte_2588C1330);
  v10 = MEMORY[0x277CDF458];
  sub_2587DBED8(0, &qword_27F95DB18, MEMORY[0x28220C240], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v11 = v8[6];
  *(a4 + v11) = swift_getKeyPath(byte_2588C1360);
  sub_2587DBED8(0, &qword_27F95DB20, MEMORY[0x28220C198], v10);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MedicalIDModelProvider();
  swift_allocObject();
  v12 = a3;
  result = sub_2587B31A0(a1, a2, v12);
  *a4 = result;
  *(a4 + v8[8]) = v12;
  v14 = a4 + v8[7];
  *v14 = 1;
  *(v14 + 1) = 0;
  return result;
}

uint64_t type metadata accessor for MedicalIDMainView(uint64_t a1)
{
  result = qword_27F95E220;
  if (!qword_27F95E220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MedicalIDMainView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for MedicalIDMainView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_2587DB034(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587DB484(0);
  v26 = v10;
  MEMORY[0x28223BE20](v10);
  v25 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 40);
  v13 = v1;
  v23 = v1;
  v14 = *(v1 + v12);
  v24 = v14;
  sub_2587DCEB4(v13, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDMainView);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_2587DB900(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v28 = v14;
  v29 = sub_2587DB964;
  v30 = v16;
  sub_2587DB148(0);
  sub_2587DCE6C(&qword_27F95E1C8, sub_2587DB148, &unk_2588C1460);
  sub_2588BCF78();

  v17 = v23;
  sub_2587DCEB4(v23, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDMainView);
  v18 = swift_allocObject();
  sub_2587DB900(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v15);
  v19 = &v9[*(v7 + 44)];
  *v19 = sub_2587DBBB8;
  v19[1] = v18;
  v19[2] = 0;
  v19[3] = 0;
  v20 = v24;
  v21 = v25;
  sub_2587D7EB0(v24, *v17, v25);
  sub_2587DCCC4(v9, sub_2587DB034);
  [v20 isHomeIndicatorHidden];
  sub_2587DBC18();
  sub_2588BCFC8();
  return sub_2587DCCC4(v21, sub_2587DB484);
}

uint64_t sub_2587D8CFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v37 = type metadata accessor for MedicalIDDataContentView(0);
  MEMORY[0x28223BE20](v37);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2587DB25C(0);
  v38 = v5;
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587DCDE8(0, &qword_27F95E370, sub_2587DB1F0, sub_2587DB25C, MEMORY[0x277CE0330]);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  sub_2587DB1F0();
  v36 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587B63B8(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v17 = *a1;
  v18 = *(*a1 + 56);
  swift_getKeyPath("P+\n'");
  v45 = v18;
  sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);

  sub_2588BBB98();

  v19 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2587DCEB4(v18 + v19, v16, sub_2587B63B8);

  v20 = type metadata accessor for MedicalIDData(0);
  if ((*(*(v20 - 8) + 48))(v16, 1, v20) == 1)
  {
    sub_2588BBFC8();
    v21 = v36;
    (*(v11 + 16))(v9, v13, v36);
    swift_storeEnumTagMultiPayload();
    sub_2587DCE6C(&qword_27F95E1C0, sub_2587DB1F0, MEMORY[0x277CDD7F8]);
    v22 = sub_2587DCE6C(&qword_27F95E1B0, type metadata accessor for MedicalIDDataContentView, &unk_2588C06AC);
    v40 = v37;
    v41 = v22;
    swift_getOpaqueTypeConformance2();
    sub_2588BC778();
    return (*(v11 + 8))(v13, v21);
  }

  else
  {
    v24 = v32 + *(type metadata accessor for MedicalIDMainView(0) + 28);
    v25 = *v24;
    v26 = *(v24 + 1);
    v43 = v25;
    v44 = v26;
    sub_2587DC074();

    sub_2588BD2E8();
    sub_2587BD098(v17, v40, v41, v42, v4);
    v27 = sub_2587DCE6C(&qword_27F95E1B0, type metadata accessor for MedicalIDDataContentView, &unk_2588C06AC);
    v28 = v33;
    v29 = v37;
    sub_2588BCF78();
    sub_2587DCF1C(v4, type metadata accessor for MedicalIDDataContentView);
    v30 = v34;
    v31 = v38;
    (*(v34 + 16))(v9, v28, v38);
    swift_storeEnumTagMultiPayload();
    sub_2587DCE6C(&qword_27F95E1C0, sub_2587DB1F0, MEMORY[0x277CDD7F8]);
    v40 = v29;
    v41 = v27;
    swift_getOpaqueTypeConformance2();
    sub_2588BC778();
    (*(v30 + 8))(v28, v31);
    return sub_2587DCF1C(v16, sub_2587B63B8);
  }
}

uint64_t sub_2587D9318(uint64_t a1)
{
  sub_2587D9388();
  v2 = *(a1 + *(type metadata accessor for MedicalIDMainView(0) + 32));

  sub_25889BE64([v2 accessPoint]);
}

void sub_2587D9388()
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = [*(v0 + *(type metadata accessor for MedicalIDMainView(0) + 32)) isLockScreen];
  if (MEMORY[0x277CF1BC8])
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = MKBGetDeviceLockState();
    if (v4 <= 6 && ((1 << v4) & 0x46) != 0)
    {
      v5 = [objc_opt_self() availableDevices];
      sub_25878E130(0, &qword_27F95E360, 0x277CF1BB8);
      v6 = sub_2588BD9B8();

      if (v6 >> 62)
      {
        if (sub_2588BDD68())
        {
          goto LABEL_9;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_9:
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x259C8CF80](0, v6);
        }

        else
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_31;
          }

          v7 = *(v6 + 32);
        }

        v8 = v7;

        sub_25878E130(0, &qword_27F95E368, 0x277CF1BA8);
        v6 = v8;
        v1 = sub_2587DCD24(v6);

        if (v1)
        {
          v25[0] = 0;
          if ([v1 forceBioLockoutIfLockedForUser:501 error:v25])
          {
            v9 = qword_27F95D170;
            v10 = v25[0];
            if (v9 == -1)
            {
LABEL_17:
              v11 = sub_2588BBC98();
              __swift_project_value_buffer(v11, qword_27F969938);
              v12 = sub_2588BBC78();
              v13 = sub_2588BDBF8();
              if (os_log_type_enabled(v12, v13))
              {
                v14 = swift_slowAlloc();
                v15 = swift_slowAlloc();
                v25[0] = v15;
                *v14 = 136315394;
                *(v14 + 4) = sub_258790224(0xD000000000000011, 0x80000002588C13D0, v25);
                *(v14 + 12) = 2080;
                v16 = sub_2588BD8C8();
                v18 = sub_258790224(v16, v17, v25);

                *(v14 + 14) = v18;
                _os_log_impl(&dword_25878B000, v12, v13, "[%s] Successfully forced passcode lock: %s", v14, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x259C8DBE0](v15, -1, -1);
                MEMORY[0x259C8DBE0](v14, -1, -1);
              }

LABEL_27:
              return;
            }

LABEL_31:
            swift_once();
            goto LABEL_17;
          }

          v19 = v25[0];
          v20 = sub_2588BB878();

          swift_willThrow();
        }

        else
        {
        }

LABEL_23:
        if (qword_27F95D170 != -1)
        {
          swift_once();
        }

        v21 = sub_2588BBC98();
        __swift_project_value_buffer(v21, qword_27F969938);
        v6 = sub_2588BBC78();
        v22 = sub_2588BDBD8();
        if (os_log_type_enabled(v6, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v25[0] = v24;
          *v23 = 136315138;
          *(v23 + 4) = sub_258790224(0xD000000000000011, 0x80000002588C13D0, v25);
          _os_log_impl(&dword_25878B000, v6, v22, "[%s] Failed to force passcode lock with error", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
          MEMORY[0x259C8DBE0](v24, -1, -1);
          MEMORY[0x259C8DBE0](v23, -1, -1);
        }

        goto LABEL_27;
      }

      goto LABEL_23;
    }
  }
}

uint64_t sub_2587D9818@<X0>(void *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a2;
  WitnessTable = a3;
  v43 = a6;
  sub_2588BC138();
  v44 = a5;
  v9 = sub_2588BC208();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v37 - v15;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  v42 = sub_2588BC788();
  v39 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = &v37 - v23;
  v24 = [a1 isHostingView];
  if (v24)
  {
    v40();
    v25 = *(v17 + 16);
    v25(v22, v20, a4);
    v26 = *(v17 + 8);
    v26(v20, a4);
    v25(v20, v22, a4);
    swift_getWitnessTable();
    v27 = v38;
    sub_2587D79A0(v20, a4);
    v26(v20, a4);
    v26(v22, a4);
  }

  else
  {
    MEMORY[0x28223BE20](v24);
    v28 = v44;
    *(&v37 - 6) = a4;
    *(&v37 - 5) = v28;
    v30 = v40;
    v29 = WitnessTable;
    *(&v37 - 4) = a1;
    *(&v37 - 3) = v30;
    *(&v37 - 2) = v29;
    sub_2588BC1F8();
    WitnessTable = swift_getWitnessTable();
    v31 = *(v10 + 16);
    v31(v16, v13, v9);
    v32 = *(v10 + 8);
    v32(v13, v9);
    v31(v13, v16, v9);
    v27 = v38;
    sub_2587D7A98(v13, a4, v9);
    v32(v13, v9);
    v32(v16, v9);
  }

  v33 = swift_getWitnessTable();
  v45 = v44;
  v46 = v33;
  v34 = v42;
  swift_getWitnessTable();
  v35 = v39;
  (*(v39 + 16))(v43, v27, v34);
  return (*(v35 + 8))(v27, v34);
}

uint64_t sub_2587D9CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v16 - v10;
  v12(v9);
  v13 = *(v5 + 16);
  v13(v11, v8, a2);
  v14 = *(v5 + 8);
  v14(v8, a2);
  v13(a3, v11, a2);
  return (v14)(v11, a2);
}

void *sub_2587D9E00(uint64_t a1, void *a2)
{
  sub_2587DCDE8(0, &qword_27F95E2C0, sub_2587A84B8, sub_2587A8540, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  sub_2587A84B8(0);
  v9 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587DC150(&qword_27F95DAE8, &qword_27F95D3C0, off_2798A65E8, &protocol conformance descriptor for MIUIDisplayConfiguration);
    v12 = a2;
    v13 = sub_2588BBD08();
    sub_2587A8540(0);
    (*(*(v14 - 8) + 16))(v11, a1, v14);
    v15 = &v11[*(v9 + 36)];
    *v15 = v13;
    v15[1] = a2;
    sub_2587DCC5C(v11, v7, sub_2587A84B8);
    swift_storeEnumTagMultiPayload();
    sub_2587A8BBC();
    sub_2587A8614(255);
    v17 = v16;
    v18 = type metadata accessor for MedicalIDDataManager(255);
    v19 = sub_2587DC924(&qword_27F95D380, sub_2587A8614, sub_2587A880C, sub_2587A8934);
    v20 = sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    v28 = v17;
    v29 = v18;
    v30 = v19;
    v31 = v20;
    swift_getOpaqueTypeConformance2();
    sub_2588BC778();
    return sub_2587DCCC4(v11, sub_2587A84B8);
  }

  else
  {
    sub_2587A8540(0);
    (*(*(v22 - 8) + 16))(v7, a1, v22);
    swift_storeEnumTagMultiPayload();
    sub_2587A8BBC();
    sub_2587A8614(255);
    v24 = v23;
    v25 = type metadata accessor for MedicalIDDataManager(255);
    v26 = sub_2587DC924(&qword_27F95D380, sub_2587A8614, sub_2587A880C, sub_2587A8934);
    v27 = sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    v31 = v27;
    swift_getOpaqueTypeConformance2();
    return sub_2588BC778();
  }
}

void *sub_2587DA248(uint64_t a1, void *a2)
{
  sub_2587DCDE8(0, &qword_27F95E358, sub_2587DB4CC, sub_2587DB554, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  sub_2587DB4CC(0);
  v9 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587DC150(&qword_27F95DAE8, &qword_27F95D3C0, off_2798A65E8, &protocol conformance descriptor for MIUIDisplayConfiguration);
    v12 = a2;
    v13 = sub_2588BBD08();
    sub_2587DB554(0);
    (*(*(v14 - 8) + 16))(v11, a1, v14);
    v15 = &v11[*(v9 + 36)];
    *v15 = v13;
    v15[1] = a2;
    sub_2587DCC5C(v11, v7, sub_2587DB4CC);
    swift_storeEnumTagMultiPayload();
    sub_2587DBD64();
    sub_2587DB66C(255);
    v17 = v16;
    v18 = type metadata accessor for MedicalIDDataManager(255);
    v19 = sub_2587DC924(&qword_27F95E1F8, sub_2587DB66C, sub_2587DB77C, sub_2587A8934);
    v20 = sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    v28 = v17;
    v29 = v18;
    v30 = v19;
    v31 = v20;
    swift_getOpaqueTypeConformance2();
    sub_2588BC778();
    return sub_2587DCCC4(v11, sub_2587DB4CC);
  }

  else
  {
    sub_2587DB554(0);
    (*(*(v22 - 8) + 16))(v7, a1, v22);
    swift_storeEnumTagMultiPayload();
    sub_2587DBD64();
    sub_2587DB66C(255);
    v24 = v23;
    v25 = type metadata accessor for MedicalIDDataManager(255);
    v26 = sub_2587DC924(&qword_27F95E1F8, sub_2587DB66C, sub_2587DB77C, sub_2587A8934);
    v27 = sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    v31 = v27;
    swift_getOpaqueTypeConformance2();
    return sub_2588BC778();
  }
}

void *sub_2587DA690(uint64_t a1, void *a2)
{
  sub_2587DCDE8(0, &qword_27F95E340, sub_2587DCA90, sub_2587DC80C, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  sub_2587DCA90(0);
  v9 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587DC150(&qword_27F95DAE8, &qword_27F95D3C0, off_2798A65E8, &protocol conformance descriptor for MIUIDisplayConfiguration);
    v12 = a2;
    v13 = sub_2588BBD08();
    sub_2587DC80C(0);
    (*(*(v14 - 8) + 16))(v11, a1, v14);
    v15 = &v11[*(v9 + 36)];
    *v15 = v13;
    v15[1] = a2;
    sub_2587DCC5C(v11, v7, sub_2587DCA90);
    swift_storeEnumTagMultiPayload();
    sub_2587DCB18();
    sub_2587DC648(255);
    v17 = v16;
    v18 = type metadata accessor for MedicalIDDataManager(255);
    v19 = sub_2587DC924(&qword_27F95E330, sub_2587DC648, sub_2587DC9B0, sub_2587A8934);
    v20 = sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    v28 = v17;
    v29 = v18;
    v30 = v19;
    v31 = v20;
    swift_getOpaqueTypeConformance2();
    sub_2588BC778();
    return sub_2587DCCC4(v11, sub_2587DCA90);
  }

  else
  {
    sub_2587DC80C(0);
    (*(*(v22 - 8) + 16))(v7, a1, v22);
    swift_storeEnumTagMultiPayload();
    sub_2587DCB18();
    sub_2587DC648(255);
    v24 = v23;
    v25 = type metadata accessor for MedicalIDDataManager(255);
    v26 = sub_2587DC924(&qword_27F95E330, sub_2587DC648, sub_2587DC9B0, sub_2587A8934);
    v27 = sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    v31 = v27;
    swift_getOpaqueTypeConformance2();
    return sub_2588BC778();
  }
}

void *sub_2587DAAD8(uint64_t a1, void *a2)
{
  sub_2587DCDE8(0, &qword_27F95E2F8, sub_2587DC47C, sub_2587DC2B4, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  sub_2587DC47C(0);
  v9 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587DC150(&qword_27F95DAE8, &qword_27F95D3C0, off_2798A65E8, &protocol conformance descriptor for MIUIDisplayConfiguration);
    v12 = a2;
    v13 = sub_2588BBD08();
    sub_2587DC2B4(0);
    (*(*(v14 - 8) + 16))(v11, a1, v14);
    v15 = &v11[*(v9 + 36)];
    *v15 = v13;
    v15[1] = a2;
    sub_2587DCC5C(v11, v7, sub_2587DC47C);
    swift_storeEnumTagMultiPayload();
    sub_2587DC504();
    sub_2587DC1A4(255);
    v17 = v16;
    v18 = type metadata accessor for MedicalIDDataManager(255);
    v19 = sub_2587DC924(&qword_27F95E2E0, sub_2587DC1A4, sub_2587DC3CC, sub_2587A8934);
    v20 = sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    v28 = v17;
    v29 = v18;
    v30 = v19;
    v31 = v20;
    swift_getOpaqueTypeConformance2();
    sub_2588BC778();
    return sub_2587DCCC4(v11, sub_2587DC47C);
  }

  else
  {
    sub_2587DC2B4(0);
    (*(*(v22 - 8) + 16))(v7, a1, v22);
    swift_storeEnumTagMultiPayload();
    sub_2587DC504();
    sub_2587DC1A4(255);
    v24 = v23;
    v25 = type metadata accessor for MedicalIDDataManager(255);
    v26 = sub_2587DC924(&qword_27F95E2E0, sub_2587DC1A4, sub_2587DC3CC, sub_2587A8934);
    v27 = sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    v31 = v27;
    swift_getOpaqueTypeConformance2();
    return sub_2588BC778();
  }
}

uint64_t sub_2587DAF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void sub_2587DB034(uint64_t a1)
{
  if (!qword_27F95E180)
  {
    sub_2587DB094(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E180);
    }
  }
}

void sub_2587DB094(uint64_t a1)
{
  if (!qword_27F95E188)
  {
    sub_2587DB148(255);
    sub_2587DCE6C(&qword_27F95E1C8, sub_2587DB148, &unk_2588C1460);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E188);
    }
  }
}

void sub_2587DB148(uint64_t a1)
{
  if (!qword_27F95E190)
  {
    sub_2587DCDE8(255, &qword_27F95E198, sub_2587DB1F0, sub_2587DB25C, MEMORY[0x277CE0338]);
    v3 = v2;
    v4 = sub_2587DB310();
    v6 = type metadata accessor for UINavStack(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F95E190);
    }
  }
}

void sub_2587DB1F0()
{
  if (!qword_27F95E1A0)
  {
    v0 = sub_2588BBFD8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E1A0);
    }
  }
}

void sub_2587DB25C(uint64_t a1)
{
  if (!qword_27F95E1A8)
  {
    type metadata accessor for MedicalIDDataContentView(255);
    sub_2587DCE6C(&qword_27F95E1B0, type metadata accessor for MedicalIDDataContentView, &unk_2588C06AC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E1A8);
    }
  }
}

unint64_t sub_2587DB310()
{
  result = qword_27F95E1B8;
  if (!qword_27F95E1B8)
  {
    sub_2587DCDE8(255, &qword_27F95E198, sub_2587DB1F0, sub_2587DB25C, MEMORY[0x277CE0338]);
    sub_2587DCE6C(&qword_27F95E1C0, sub_2587DB1F0, MEMORY[0x277CDD7F8]);
    type metadata accessor for MedicalIDDataContentView(255);
    sub_2587DCE6C(&qword_27F95E1B0, type metadata accessor for MedicalIDDataContentView, &unk_2588C06AC);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E1B8);
  }

  return result;
}

void sub_2587DB4CC(uint64_t a1)
{
  if (!qword_27F95E1D8)
  {
    sub_2587DB554(255);
    sub_2587DB8A4(255, &qword_27F95D3B0, &qword_27F95D3B8, &qword_27F95D3C0, off_2798A65E8);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E1D8);
    }
  }
}

void sub_2587DB554(uint64_t a1)
{
  if (!qword_27F95E1E0)
  {
    sub_2587DB66C(255);
    type metadata accessor for MedicalIDDataManager(255);
    sub_2587DC924(&qword_27F95E1F8, sub_2587DB66C, sub_2587DB77C, sub_2587A8934);
    sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E1E0);
    }
  }
}

void sub_2587DB66C(uint64_t a1)
{
  if (!qword_27F95E1E8)
  {
    sub_2587DB6F4(255);
    sub_2587DB8A4(255, &qword_27F95D368, &qword_27F95D370, &qword_27F95D378, 0x277CCD7D0);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E1E8);
    }
  }
}

void sub_2587DB6F4(uint64_t a1)
{
  if (!qword_27F95E1F0)
  {
    sub_2587DB034(255);
    sub_2587DB8A4(255, &qword_27F95D350, &qword_27F95D358, &qword_27F95D360, 0x277CCD4D8);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E1F0);
    }
  }
}

unint64_t sub_2587DB7C4()
{
  result = qword_27F95E208;
  if (!qword_27F95E208)
  {
    sub_2587DB034(255);
    sub_2587DB148(255);
    sub_2587DCE6C(&qword_27F95E1C8, sub_2587DB148, &unk_2588C1460);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E208);
  }

  return result;
}

void sub_2587DB8A4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_2587AE90C(255, a3, a4, a5);
    v6 = sub_2588BCA88();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2587DB900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMainView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587DB964@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDMainView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_2587D8CFC(v4, a1);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for MedicalIDMainView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  sub_2587DBED8(0, &qword_27F95DB18, MEMORY[0x28220C240], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_2588BBB48();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  sub_2587DBED8(0, &qword_27F95DB20, MEMORY[0x28220C198], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2588BBAC8();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2587DBBB8()
{
  v1 = *(type metadata accessor for MedicalIDMainView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2587D9318(v2);
}

unint64_t sub_2587DBC18()
{
  result = qword_27F95E210;
  if (!qword_27F95E210)
  {
    sub_2587DB484(255);
    sub_2587DBD64();
    sub_2587DB66C(255);
    type metadata accessor for MedicalIDDataManager(255);
    sub_2587DC924(&qword_27F95E1F8, sub_2587DB66C, sub_2587DB77C, sub_2587A8934);
    sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E210);
  }

  return result;
}

unint64_t sub_2587DBD64()
{
  result = qword_27F95E218;
  if (!qword_27F95E218)
  {
    sub_2587DB4CC(255);
    sub_2587DB66C(255);
    type metadata accessor for MedicalIDDataManager(255);
    sub_2587DC924(&qword_27F95E1F8, sub_2587DB66C, sub_2587DB77C, sub_2587A8934);
    sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    swift_getOpaqueTypeConformance2();
    sub_2587A8CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E218);
  }

  return result;
}

void sub_2587DBED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2587DBF50(uint64_t a1)
{
  type metadata accessor for MedicalIDModelProvider();
  if (v1 <= 0x3F)
  {
    sub_2587DBED8(319, &qword_27F95DAB8, MEMORY[0x28220C240], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2587DBED8(319, &qword_27F95DAC0, MEMORY[0x28220C198], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2587DC074();
        if (v4 <= 0x3F)
        {
          sub_25878E130(319, &qword_27F95D3C0, off_2798A65E8);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2587DC074()
{
  if (!qword_27F95DAF8)
  {
    v0 = sub_2588BD2F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DAF8);
    }
  }
}

uint64_t sub_2587DC0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2587DC150(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_25878E130(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2587DC1A4(uint64_t a1)
{
  if (!qword_27F95E2C8)
  {
    sub_2587DC22C(255);
    sub_2587DB8A4(255, &qword_27F95D368, &qword_27F95D370, &qword_27F95D378, 0x277CCD7D0);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E2C8);
    }
  }
}

void sub_2587DC22C(uint64_t a1)
{
  if (!qword_27F95E2D0)
  {
    type metadata accessor for NanoMedicalIDEditView(255);
    sub_2587DB8A4(255, &qword_27F95D350, &qword_27F95D358, &qword_27F95D360, 0x277CCD4D8);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E2D0);
    }
  }
}

void sub_2587DC2B4(uint64_t a1)
{
  if (!qword_27F95E2D8)
  {
    sub_2587DC1A4(255);
    type metadata accessor for MedicalIDDataManager(255);
    sub_2587DC924(&qword_27F95E2E0, sub_2587DC1A4, sub_2587DC3CC, sub_2587A8934);
    sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E2D8);
    }
  }
}

unint64_t sub_2587DC3CC()
{
  result = qword_27F95E2E8;
  if (!qword_27F95E2E8)
  {
    sub_2587DC22C(255);
    sub_2587DCE6C(&qword_27F95E2F0, type metadata accessor for NanoMedicalIDEditView, &unk_2588C3B48);
    sub_2587A88BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E2E8);
  }

  return result;
}

void sub_2587DC47C(uint64_t a1)
{
  if (!qword_27F95E300)
  {
    sub_2587DC2B4(255);
    sub_2587DB8A4(255, &qword_27F95D3B0, &qword_27F95D3B8, &qword_27F95D3C0, off_2798A65E8);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E300);
    }
  }
}

unint64_t sub_2587DC504()
{
  result = qword_27F95E308;
  if (!qword_27F95E308)
  {
    sub_2587DC47C(255);
    sub_2587DC1A4(255);
    type metadata accessor for MedicalIDDataManager(255);
    sub_2587DC924(&qword_27F95E2E0, sub_2587DC1A4, sub_2587DC3CC, sub_2587A8934);
    sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    swift_getOpaqueTypeConformance2();
    sub_2587A8CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E308);
  }

  return result;
}

void sub_2587DC648(uint64_t a1)
{
  if (!qword_27F95E310)
  {
    sub_2587DC6D0(255);
    sub_2587DB8A4(255, &qword_27F95D368, &qword_27F95D370, &qword_27F95D378, 0x277CCD7D0);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E310);
    }
  }
}

void sub_2587DC6D0(uint64_t a1)
{
  if (!qword_27F95E318)
  {
    sub_2587DC758(255);
    sub_2587DB8A4(255, &qword_27F95D350, &qword_27F95D358, &qword_27F95D360, 0x277CCD4D8);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E318);
    }
  }
}

void sub_2587DC758(uint64_t a1)
{
  if (!qword_27F95E320)
  {
    type metadata accessor for NanoMedicalIDEditView(255);
    sub_2587DCE6C(&qword_27F95E2F0, type metadata accessor for NanoMedicalIDEditView, &unk_2588C3B48);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E320);
    }
  }
}

void sub_2587DC80C(uint64_t a1)
{
  if (!qword_27F95E328)
  {
    sub_2587DC648(255);
    type metadata accessor for MedicalIDDataManager(255);
    sub_2587DC924(&qword_27F95E330, sub_2587DC648, sub_2587DC9B0, sub_2587A8934);
    sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E328);
    }
  }
}

uint64_t sub_2587DC924(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t sub_2587DC9B0()
{
  result = qword_27F95E338;
  if (!qword_27F95E338)
  {
    sub_2587DC6D0(255);
    type metadata accessor for NanoMedicalIDEditView(255);
    sub_2587DCE6C(&qword_27F95E2F0, type metadata accessor for NanoMedicalIDEditView, &unk_2588C3B48);
    swift_getOpaqueTypeConformance2();
    sub_2587A88BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E338);
  }

  return result;
}

void sub_2587DCA90(uint64_t a1)
{
  if (!qword_27F95E348)
  {
    sub_2587DC80C(255);
    sub_2587DB8A4(255, &qword_27F95D3B0, &qword_27F95D3B8, &qword_27F95D3C0, off_2798A65E8);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E348);
    }
  }
}

unint64_t sub_2587DCB18()
{
  result = qword_27F95E350;
  if (!qword_27F95E350)
  {
    sub_2587DCA90(255);
    sub_2587DC648(255);
    type metadata accessor for MedicalIDDataManager(255);
    sub_2587DC924(&qword_27F95E330, sub_2587DC648, sub_2587DC9B0, sub_2587A8934);
    sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    swift_getOpaqueTypeConformance2();
    sub_2587A8CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E350);
  }

  return result;
}

uint64_t sub_2587DCC5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587DCCC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_2587DCD24(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() deviceWithDescriptor:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_2588BB878();

    swift_willThrow();
  }

  return v1;
}

void sub_2587DCDE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_2587DCE6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2587DCEB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587DCF1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2587DCFD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath("0+\n'");
  sub_2587DD120();
  sub_2588BBB98();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_2587DD094@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath("0+\n'");
  sub_2587DD120();
  sub_2588BBB98();

  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

unint64_t sub_2587DD120()
{
  result = qword_27F95E380;
  if (!qword_27F95E380)
  {
    type metadata accessor for AddEmergencyContactFlowViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E380);
  }

  return result;
}

uint64_t type metadata accessor for AddEmergencyContactFlowViewModel(uint64_t a1)
{
  result = qword_27F95E390;
  if (!qword_27F95E390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587DD1C4(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  if (v4 != 2)
  {
    if (v2 == 2 || ((v4 ^ v2) & 1) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 16) = v2;
    return result;
  }

  if (v2 == 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath("0+\n'");
  MEMORY[0x28223BE20](KeyPath);
  sub_2587DD120();
  sub_2588BBB88();
}

uint64_t sub_2587DD2D4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

uint64_t sub_2587DD328()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t (*sub_2587DD37C(uint64_t *a1))()
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
  swift_getKeyPath("0+\n'");
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI32AddEmergencyContactFlowViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587DD120();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath("0+\n'");
  sub_2588BBBB8();

  v4[7] = sub_2587DCF80(v4);
  return sub_2587DD484;
}

uint64_t sub_2587DD4E0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2588C1508);
  *&v17[0] = v3;
  sub_2587DD120();
  sub_2588BBB98();

  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 40);
  v6 = *(v3 + 72);
  v17[2] = *(v3 + 56);
  v17[3] = v6;
  v7 = *(v3 + 88);
  v8 = *(v3 + 104);
  v9 = *(v3 + 136);
  v17[6] = *(v3 + 120);
  v17[7] = v9;
  v17[4] = v7;
  v17[5] = v8;
  v17[0] = v4;
  v17[1] = v5;
  v10 = *(v3 + 24);
  v11 = *(v3 + 40);
  v12 = *(v3 + 72);
  a2[2] = *(v3 + 56);
  a2[3] = v12;
  *a2 = v10;
  a2[1] = v11;
  v13 = *(v3 + 88);
  v14 = *(v3 + 104);
  a2[6] = *(v3 + 120);
  a2[7] = v9;
  a2[4] = v13;
  a2[5] = v14;
  return sub_2587DEE04(v17, v16);
}

uint64_t sub_2587DD5D8(__int128 *a1)
{
  v2 = a1[5];
  v8[4] = a1[4];
  v8[5] = v2;
  v3 = a1[7];
  v8[6] = a1[6];
  v8[7] = v3;
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  sub_2587DEE04(v8, &v7);
  return sub_2587DD71C(a1);
}

uint64_t sub_2587DD640@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath(byte_2588C1508);
  *&v12[0] = v1;
  sub_2587DD120();
  sub_2588BBB98();

  swift_beginAccess();
  v4 = *(v1 + 104);
  v15 = *(v1 + 88);
  v3 = v15;
  v16 = v4;
  v6 = *(v1 + 136);
  v17 = *(v1 + 120);
  v5 = v17;
  v18 = v6;
  v7 = *(v1 + 40);
  v12[0] = *(v1 + 24);
  v12[1] = v7;
  v9 = *(v1 + 72);
  v13 = *(v1 + 56);
  v8 = v13;
  v14 = v9;
  *a1 = v12[0];
  a1[1] = v7;
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v3;
  a1[5] = v4;
  a1[6] = v5;
  a1[7] = v6;
  return sub_2587DEE04(v12, v11);
}

uint64_t sub_2587DD71C(__int128 *a1)
{
  v2 = a1[5];
  v28 = a1[4];
  v29 = v2;
  v3 = a1[7];
  v30 = a1[6];
  v31 = v3;
  v4 = a1[1];
  v24 = *a1;
  v25 = v4;
  v5 = a1[3];
  v26 = a1[2];
  v27 = v5;
  swift_beginAccess();
  v6 = *(v1 + 104);
  v32[4] = *(v1 + 88);
  v32[5] = v6;
  v7 = *(v1 + 136);
  v32[6] = *(v1 + 120);
  v32[7] = v7;
  v8 = *(v1 + 40);
  v32[0] = *(v1 + 24);
  v32[1] = v8;
  v9 = *(v1 + 72);
  v32[2] = *(v1 + 56);
  v32[3] = v9;
  sub_2587DEE04(v32, v23);
  v10 = sub_2587DEEB8(v32, &v24);
  sub_2587DF7B0(v32, sub_2587DEE68);
  if (v10)
  {
    KeyPath = swift_getKeyPath(byte_2588C1508);
    MEMORY[0x28223BE20](KeyPath);
    *&v23[0] = v1;
    sub_2587DD120();
    sub_2588BBB88();
    sub_2587DF7B0(&v24, sub_2587DEE68);
  }

  else
  {
    v13 = *(v1 + 104);
    v23[4] = *(v1 + 88);
    v23[5] = v13;
    v14 = *(v1 + 136);
    v23[6] = *(v1 + 120);
    v23[7] = v14;
    v15 = *(v1 + 40);
    v23[0] = *(v1 + 24);
    v23[1] = v15;
    v16 = *(v1 + 72);
    v23[2] = *(v1 + 56);
    v23[3] = v16;
    v17 = v24;
    v18 = v25;
    v19 = v26;
    *(v1 + 72) = v27;
    *(v1 + 56) = v19;
    *(v1 + 40) = v18;
    *(v1 + 24) = v17;
    v20 = v28;
    v21 = v29;
    v22 = v30;
    *(v1 + 136) = v31;
    *(v1 + 120) = v22;
    *(v1 + 104) = v21;
    *(v1 + 88) = v20;
    return sub_2587DF7B0(v23, sub_2587DEE68);
  }
}

uint64_t sub_2587DD930(uint64_t a1, __int128 *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 104);
  v16[4] = *(a1 + 88);
  v16[5] = v4;
  v5 = *(a1 + 136);
  v16[6] = *(a1 + 120);
  v16[7] = v5;
  v6 = *(a1 + 40);
  v16[0] = *(a1 + 24);
  v16[1] = v6;
  v7 = *(a1 + 72);
  v16[2] = *(a1 + 56);
  v16[3] = v7;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  *(a1 + 72) = a2[3];
  *(a1 + 56) = v10;
  *(a1 + 40) = v9;
  *(a1 + 24) = v8;
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[6];
  *(a1 + 136) = a2[7];
  *(a1 + 120) = v13;
  *(a1 + 104) = v12;
  *(a1 + 88) = v11;
  sub_2587DEE04(a2, v15);
  return sub_2587DF7B0(v16, sub_2587DEE68);
}

uint64_t (*sub_2587DDA14(uint64_t *a1))()
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
  swift_getKeyPath(byte_2588C1508);
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI32AddEmergencyContactFlowViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587DD120();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath(byte_2588C1508);
  sub_2588BBBB8();

  v4[7] = sub_2587DD490(v4);
  return sub_2587DDB1C;
}

uint64_t sub_2587DDB78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2588C1530);
  sub_2587DD120();
  sub_2588BBB98();

  result = swift_beginAccess();
  *a2 = *(v3 + 152);
  return result;
}

uint64_t sub_2587DDC2C()
{
  swift_getKeyPath(byte_2588C1530);
  sub_2587DD120();
  sub_2588BBB98();

  swift_beginAccess();
  return *(v0 + 152);
}

uint64_t sub_2587DDCB0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 152) == v2)
  {
    *(v1 + 152) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_2588C1530);
    MEMORY[0x28223BE20](KeyPath);
    sub_2587DD120();
    sub_2588BBB88();
  }

  return result;
}

uint64_t sub_2587DDDA4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 152) = a2;
  return result;
}

uint64_t (*sub_2587DDDF8(uint64_t *a1))()
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
  swift_getKeyPath(byte_2588C1530);
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI32AddEmergencyContactFlowViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587DD120();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath(byte_2588C1530);
  sub_2588BBBB8();

  v4[7] = sub_2587DDB28(v4);
  return sub_2587DDF00;
}

uint64_t sub_2587DDF5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2588C1558);
  sub_2587DD120();
  sub_2588BBB98();

  result = swift_beginAccess();
  *a2 = *(v3 + 153);
  return result;
}

uint64_t sub_2587DE010()
{
  swift_getKeyPath(byte_2588C1558);
  sub_2587DD120();
  sub_2588BBB98();

  swift_beginAccess();
  return *(v0 + 153);
}

uint64_t sub_2587DE094(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 153) == v2)
  {
    *(v1 + 153) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_2588C1558);
    MEMORY[0x28223BE20](KeyPath);
    sub_2587DD120();
    sub_2588BBB88();
  }

  return result;
}

uint64_t sub_2587DE188(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 153) = a2;
  return result;
}

uint64_t (*sub_2587DE1DC(uint64_t *a1))()
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
  swift_getKeyPath(byte_2588C1558);
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI32AddEmergencyContactFlowViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587DD120();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath(byte_2588C1558);
  sub_2588BBBB8();

  v4[7] = sub_2587DDF0C(v4);
  return sub_2587DE2E4;
}

uint64_t sub_2587DE340@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2588C1580);
  sub_2587DD120();
  sub_2588BBB98();

  result = swift_beginAccess();
  *a2 = *(v3 + 154);
  return result;
}

uint64_t sub_2587DE3F4()
{
  swift_getKeyPath(byte_2588C1580);
  sub_2587DD120();
  sub_2588BBB98();

  swift_beginAccess();
  return *(v0 + 154);
}

uint64_t sub_2587DE478(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 154) == v2)
  {
    *(v1 + 154) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_2588C1580);
    MEMORY[0x28223BE20](KeyPath);
    sub_2587DD120();
    sub_2588BBB88();
  }

  return result;
}

uint64_t sub_2587DE56C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 154) = a2;
  return result;
}

uint64_t (*sub_2587DE5C0(uint64_t *a1))()
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
  swift_getKeyPath(byte_2588C1580);
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI32AddEmergencyContactFlowViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587DD120();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath(byte_2588C1580);
  sub_2588BBBB8();

  v4[7] = sub_2587DE2F0(v4);
  return sub_2587DE6C8;
}

uint64_t sub_2587DE724@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2588C15A8);
  sub_2587DD120();
  sub_2588BBB98();

  swift_beginAccess();
  v4 = *(v3 + 168);
  *a2 = *(v3 + 160);
  a2[1] = v4;
}

uint64_t sub_2587DE7B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2587DE888(v1, v2);
}

uint64_t sub_2587DE7F4()
{
  swift_getKeyPath(byte_2588C15A8);
  sub_2587DD120();
  sub_2588BBB98();

  swift_beginAccess();
  v1 = *(v0 + 160);

  return v1;
}

uint64_t sub_2587DE888(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 168);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 160) == a1 && v5 == a2;
      if (v6 || (sub_2588BDF98() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 160) = a1;
    *(v2 + 168) = a2;
  }

  KeyPath = swift_getKeyPath(byte_2588C15A8);
  MEMORY[0x28223BE20](KeyPath);
  sub_2587DD120();
  sub_2588BBB88();
}

uint64_t sub_2587DE9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 160) = a2;
  *(a1 + 168) = a3;
}

uint64_t (*sub_2587DEA28(uint64_t *a1))()
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
  swift_getKeyPath(byte_2588C15A8);
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI32AddEmergencyContactFlowViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587DD120();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath(byte_2588C15A8);
  sub_2588BBBB8();

  v4[7] = sub_2587DE6D4(v4);
  return sub_2587DEB30;
}

void sub_2587DEB3C(void *a1, uint64_t a2, const char *a3)
{
  v4 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v4 = v4[4];
  swift_getKeyPath(a3);
  sub_2588BBBA8();

  free(v4);
}

uint64_t AddEmergencyContactFlowViewModel.deinit()
{
  v1 = *(v0 + 104);
  v8[4] = *(v0 + 88);
  v8[5] = v1;
  v2 = *(v0 + 136);
  v8[6] = *(v0 + 120);
  v8[7] = v2;
  v3 = *(v0 + 40);
  v8[0] = *(v0 + 24);
  v8[1] = v3;
  v4 = *(v0 + 72);
  v8[2] = *(v0 + 56);
  v8[3] = v4;
  sub_2587DF7B0(v8, sub_2587DEE68);

  v5 = OBJC_IVAR____TtC11MedicalIDUI32AddEmergencyContactFlowViewModel___observationRegistrar;
  v6 = sub_2588BBBD8();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t AddEmergencyContactFlowViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 104);
  v8[4] = *(v0 + 88);
  v8[5] = v1;
  v2 = *(v0 + 136);
  v8[6] = *(v0 + 120);
  v8[7] = v2;
  v3 = *(v0 + 40);
  v8[0] = *(v0 + 24);
  v8[1] = v3;
  v4 = *(v0 + 72);
  v8[2] = *(v0 + 56);
  v8[3] = v4;
  sub_2587DF7B0(v8, sub_2587DEE68);

  v5 = OBJC_IVAR____TtC11MedicalIDUI32AddEmergencyContactFlowViewModel___observationRegistrar;
  v6 = sub_2588BBBD8();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return swift_deallocClassInstance();
}

uint64_t EmergencyContactPickerError.hashValue.getter()
{
  v1 = *v0;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v1);
  return sub_2588BE078();
}

uint64_t sub_2587DEE04(uint64_t a1, uint64_t a2)
{
  sub_2587DEE68();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2587DEE68()
{
  if (!qword_27F95FB40)
  {
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FB40);
    }
  }
}

uint64_t sub_2587DEEB8(__int128 *a1, __int128 *a2)
{
  v4 = a1[3];
  v5 = a1[5];
  v66 = a1[4];
  v67 = v5;
  v6 = a1[5];
  v7 = a1[7];
  v68 = a1[6];
  v69 = v7;
  v8 = a1[1];
  v62 = *a1;
  v63 = v8;
  v9 = a1[3];
  v11 = *a1;
  v10 = a1[1];
  v64 = a1[2];
  v65 = v9;
  v12 = a2[2];
  v73 = a2[3];
  v72 = v12;
  v13 = *a2;
  v71 = a2[1];
  v70 = v13;
  v14 = a2[6];
  v77 = a2[7];
  v76 = v14;
  v15 = a2[4];
  v75 = a2[5];
  v74 = v15;
  v78[2] = v64;
  v78[3] = v4;
  v78[0] = v11;
  v78[1] = v10;
  v16 = a1[7];
  v78[6] = v68;
  v78[7] = v16;
  v78[4] = v66;
  v78[5] = v6;
  if (sub_2587DF798(v78) != 1)
  {
    v58 = v66;
    v59 = v67;
    v60 = v68;
    v61 = v69;
    v54 = v62;
    v55 = v63;
    v56 = v64;
    v57 = v65;
    v32 = v64;
    v33 = v65;
    v30 = v62;
    v31 = v63;
    v36 = v68;
    v37 = v69;
    v34 = v66;
    v35 = v67;
    v40 = v72;
    v41 = v73;
    v38 = v70;
    v39 = v71;
    v44 = v76;
    v45 = v77;
    v42 = v74;
    v43 = v75;
    if (sub_2587DF798(&v38) != 1)
    {
      v26 = v74;
      v27 = v75;
      v28 = v76;
      v29 = v77;
      v22 = v70;
      v23 = v71;
      v24 = v72;
      v25 = v73;
      sub_2587DEE04(a1, v21);
      sub_2587DEE04(a2, v21);
      sub_2587DEE04(&v54, v21);
      v18 = _s11MedicalIDUI0A18IDEmergencyContactV2eeoiySbAC_ACtFZ_0(&v30, &v22);
      v20[4] = v26;
      v20[5] = v27;
      v20[6] = v28;
      v20[7] = v29;
      v20[0] = v22;
      v20[1] = v23;
      v20[2] = v24;
      v20[3] = v25;
      sub_2587C66FC(v20);
      v21[4] = v34;
      v21[5] = v35;
      v21[6] = v36;
      v21[7] = v37;
      v21[0] = v30;
      v21[1] = v31;
      v21[2] = v32;
      v21[3] = v33;
      sub_2587C66FC(v21);
      v26 = v66;
      v27 = v67;
      v28 = v68;
      v29 = v69;
      v22 = v62;
      v23 = v63;
      v24 = v64;
      v25 = v65;
      sub_2587DF7B0(&v22, sub_2587DEE68);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    v26 = v66;
    v27 = v67;
    v28 = v68;
    v29 = v69;
    v22 = v62;
    v23 = v63;
    v24 = v64;
    v25 = v65;
    sub_2587DEE04(a1, v21);
    sub_2587DEE04(a2, v21);
    sub_2587DEE04(&v54, v21);
    sub_2587C66FC(&v22);
    goto LABEL_7;
  }

  v42 = v74;
  v43 = v75;
  v44 = v76;
  v45 = v77;
  v38 = v70;
  v39 = v71;
  v40 = v72;
  v41 = v73;
  if (sub_2587DF798(&v38) != 1)
  {
    sub_2587DEE04(a1, &v54);
    sub_2587DEE04(a2, &v54);
LABEL_7:
    v50 = v74;
    v51 = v75;
    v52 = v76;
    v53 = v77;
    v46 = v70;
    v47 = v71;
    v48 = v72;
    v49 = v73;
    v42 = v66;
    v43 = v67;
    v44 = v68;
    v45 = v69;
    v38 = v62;
    v39 = v63;
    v40 = v64;
    v41 = v65;
    sub_2587DF7B0(&v38, sub_2587DF810);
    v17 = 1;
    return v17 & 1;
  }

  v58 = v66;
  v59 = v67;
  v60 = v68;
  v61 = v69;
  v54 = v62;
  v55 = v63;
  v56 = v64;
  v57 = v65;
  sub_2587DEE04(a1, &v30);
  sub_2587DEE04(a2, &v30);
  sub_2587DF7B0(&v54, sub_2587DEE68);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_2587DF250()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 152) = v2;
  return result;
}

uint64_t sub_2587DF2A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 153) = v2;
  return result;
}

uint64_t sub_2587DF2F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 154) = v2;
  return result;
}

unint64_t sub_2587DF370()
{
  result = qword_27F95E388;
  if (!qword_27F95E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E388);
  }

  return result;
}

uint64_t sub_2587DF3CC(uint64_t a1)
{
  result = sub_2588BBBD8();
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

uint64_t sub_2587DF798(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2587DF7B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2587DF810(uint64_t a1)
{
  if (!qword_27F95E3A0)
  {
    sub_2587DEE68();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95E3A0);
    }
  }
}

BOOL sub_2587DF874(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1 == 2;
  if (a2 != 2)
  {
    v2 = 0;
  }

  if (a1 != 2 && a2 != 2)
  {
    v2 = ((a2 ^ a1) & 1) == 0;
  }

  return !v2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2587DF8C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2587DF908(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2587DF974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();

  v9 = sub_2588BD868();
  v10 = [v8 localizedStringForLabel_];

  sub_2588BD8A8();
  sub_25878F648();
  v11 = sub_2588BCDF8();
  v13 = v12;
  v15 = v14 & 1;
  sub_258790D88();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2588C17A0;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = 0x6E6F6974616C6552;
  *(v16 + 56) = 0xE800000000000000;
  *(v16 + 64) = a1;
  *(v16 + 72) = a2;

  v17 = sub_2588BD9A8();

  v18 = HKUIJoinStringsForAutomationIdentifier();

  if (v18)
  {
    sub_2588BD8A8();

    sub_2588BCFB8();

    sub_2587B1CF8(v11, v13, v15);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2587DFB50()
{
  result = qword_27F95E3A8;
  if (!qword_27F95E3A8)
  {
    sub_2587DFBD0(255);
    sub_2587DFC30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E3A8);
  }

  return result;
}