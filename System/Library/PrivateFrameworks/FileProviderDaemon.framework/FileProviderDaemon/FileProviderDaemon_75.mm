unint64_t sub_1CF7D9A78()
{
  result = qword_1EDEA8860[0];
  if (!qword_1EDEA8860[0])
  {
    type metadata accessor for VFSFileTree(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA8860);
  }

  return result;
}

unint64_t sub_1CF7D9AD0()
{
  result = qword_1EDEA8550;
  if (!qword_1EDEA8550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE360, &qword_1CF9FE650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8550);
  }

  return result;
}

uint64_t sub_1CF7D9BAC()
{
  sub_1CF9E7948();
  0xE000000000000000, v0, v1, v2, v3, v4, v5, v6;
  sub_1CF9E5D98();
  sub_1CF7DB13C(&qword_1EDEAECB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v7 = sub_1CF9E7F98();
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0x3A65746164707520, 0xE800000000000000);
  type metadata accessor for ChangeEnumeratorAnchor(0);
  v17 = sub_1CF9E7F98();
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](0x6F6974656C656420, 0xEB000000003A736ELL);
  v27 = sub_1CF9E7F98();
  v29 = v28;
  MEMORY[0x1D3868CC0](v27);
  v29, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1CF7D9D40(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49D8, &qword_1CFA17910);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF7DA758();
  sub_1CF9E82A8();
  v8[15] = 0;
  sub_1CF9E5D98();
  sub_1CF7DB13C(&qword_1EDEAECC8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1CF9E7F08();
  if (!v1)
  {
    type metadata accessor for ChangeEnumeratorAnchor(0);
    v8[14] = 1;
    sub_1CF9E7EE8();
    v8[13] = 2;
    sub_1CF9E7EE8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1CF7D9F28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_1CF9E5D98();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49D0, &qword_1CFA17908);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ChangeEnumeratorAnchor(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF7DA758();
  sub_1CF9E8298();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v21;
  v27 = 0;
  sub_1CF7DB13C(&qword_1EDEAECB8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v14 = v23;
  sub_1CF9E7D88();
  v15 = *(v13 + 32);
  v16 = v24;
  v24 = v4;
  v15(v12, v16, v4);
  v26 = 1;
  *(v12 + *(v9 + 20)) = sub_1CF9E7D78();
  v25 = 2;
  v17 = sub_1CF9E7D78();
  (*(v22 + 8))(v8, v14);
  *(v12 + *(v9 + 24)) = v17;
  sub_1CF7DA7AC(v12, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CF7DA810(v12);
}

unint64_t sub_1CF7DA29C()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x49646574656C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444955556264;
  }
}

uint64_t sub_1CF7DA304@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF7DA86C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF7DA32C(uint64_t a1)
{
  v2 = sub_1CF7DA758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF7DA368(uint64_t a1)
{
  v2 = sub_1CF7DA758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CF7DA440(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  if (v7 == 255)
  {
    goto LABEL_17;
  }

  v8 = *a1;
  if (v7 == 2 && v8 == 0)
  {
    v29 = MEMORY[0x1E6967258];
LABEL_13:
    v21 = *v29;
    goto LABEL_14;
  }

  if (v7 == 2 && v8 == 1)
  {
    v29 = MEMORY[0x1E6967280];
    goto LABEL_13;
  }

  v11 = VFSItemID.description.getter(a1);
  v13 = v12;
  MEMORY[0x1D3868CC0](v11);
  v13, v14, v15, v16, v17, v18, v19, v20;
  v21 = sub_1CF9E6888();
  0xE800000000000000, v22, v23, v24, v25, v26, v27, v28;
LABEL_14:
  [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:a4 itemIdentifier:v21];

  MEMORY[0x1D3868FA0]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CF9E6D88();
  }

  sub_1CF9E6DE8();
LABEL_17:
  if (a2)
  {
    v30 = objc_allocWithZone(MEMORY[0x1E69673A0]);
    v31 = a2;
    [v30 initWithProviderDomainID:a4 itemIdentifier:?];
    MEMORY[0x1D3868FA0]();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CF9E6D88();
    }

    sub_1CF9E6DE8();
  }
}

uint64_t type metadata accessor for ChangeEnumeratorAnchor(uint64_t a1)
{
  result = qword_1EDEA5658;
  if (!qword_1EDEA5658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF7DA6DC(uint64_t a1)
{
  result = sub_1CF9E5D98();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1CF7DA758()
{
  result = qword_1EDEA5688;
  if (!qword_1EDEA5688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5688);
  }

  return result;
}

uint64_t sub_1CF7DA7AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChangeEnumeratorAnchor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF7DA810(uint64_t a1)
{
  v2 = type metadata accessor for ChangeEnumeratorAnchor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF7DA86C(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x444955556264 && a2 == 0xE600000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x80000001CFA5B1B0;
    if (a1 == 0xD000000000000010 && 0x80000001CFA5B1B0 == a2 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x49646574656C6564 && a2 == 0xEE006B6E61527344)
    {
      0xEE006B6E61527344, 0xEE006B6E61527344, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = sub_1CF9E8048();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

id sub_1CF7DA990(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v79 = a5;
  v80 = a7;
  v82 = a6;
  v83 = a4;
  v81 = a3;
  v74 = *a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v75 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v72 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v76 = *(v14 - 8);
  v77 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v72 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v72 - v21;
  sub_1CEFCCBDC(a1, v18, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v23 = (*(v20 + 48))(v18, 1, v19);
  v78 = a2;
  if (v23 == 1)
  {
    v25 = v82;
    v24 = v83;
    sub_1CEFCCC44(v18, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v26 = type metadata accessor for PendingIndexingItemRow(0);
    sub_1CEFCCBDC(a1 + *(v26 + 20), v13, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    if ((*(v76 + 48))(v13, 1, v77) == 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      return 0;
    }

    v77 = a1;
    v45 = v73;
    sub_1CEFE55D0(v13, v73, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v89[0] = sub_1CF65C654();
    v30 = v25;
    v46 = *(v25 + 8);
    v47 = *(v74 + 104);
    v48 = v46(v47, v30);
    v88[0] = sub_1CF65C654();
    v49 = (*(v30 + 16))(v47, v30);
    v50 = v90;
    v51 = sub_1CF2CEBFC(v45, v48, v49, 1);
    v42 = v50;

    v27 = v51;
    sub_1CEFCCC44(v45, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v76 = 0;
    v43 = v79;
    v44 = v24;
  }

  else
  {
    v77 = a1;
    sub_1CEFE55D0(v18, v22, &unk_1EC4BE360, &qword_1CF9FE650);
    v28 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
    v29 = sub_1CF7D9AD0();
    v71 = *(v80 + 1);
    v76 = 1;
    v30 = v82;
    v31 = v19;
    v32 = v83;
    v33 = v79;
    v34 = sub_1CF76BB00(v22, 0, 1, v28, v81, v31, v83, v79, v82, v29, v71);
    v28, v35, v36, v37, v38, v39, v40, v41;
    v27 = v34;
    sub_1CEFCCC44(v22, &unk_1EC4BE360, &qword_1CF9FE650);
    v42 = v90;
    v43 = v33;
    v44 = v32;
  }

  v52 = [v27 isBusy];

  if (v52)
  {
    goto LABEL_7;
  }

  v53 = *(type metadata accessor for PendingIndexingItemRow(0) + 24);
  memcpy(v89, (v77 + v53), 0x378uLL);
  memcpy(v88, (v77 + v53), sizeof(v88));
  v54 = sub_1CF9E5A58();
  v55 = v75;
  (*(*(v54 - 8) + 56))(v75, 1, 1, v54);
  sub_1CEFCCBDC(v89, v87, &unk_1EC4C46E0, &unk_1CFA16860);
  v56 = v42;
  v57 = v30;
  v58 = *(v80 + 1);
  v59 = v81;
  sub_1CF765380(v27, v88, v76, v55, v81, v44, v43, v57, v58);
  v90 = v56;
  if (v56)
  {

    sub_1CEFCCC44(v55, &unk_1EC4BE310, qword_1CF9FCBE0);
    memcpy(v87, v88, sizeof(v87));
    sub_1CEFCCC44(v87, &unk_1EC4C46E0, &unk_1CFA16860);
    return v27;
  }

  v80 = v58;
  sub_1CEFCCC44(v55, &unk_1EC4BE310, qword_1CF9FCBE0);
  memcpy(v87, v88, sizeof(v87));
  sub_1CEFCCC44(v87, &unk_1EC4C46E0, &unk_1CFA16860);
  v60 = [v27 providerID];
  v61 = [v60 fp_isiCloudDriveIdentifier];

  if (!v61)
  {
    return v27;
  }

  v62 = [v27 isContainer];
  v63 = v90;
  if (v62)
  {
LABEL_7:

    return 0;
  }

  else
  {
    v64 = sub_1CF7DB13C(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
    v65 = sub_1CF7DB13C(&qword_1EDEA3460, sub_1CF7DB184, &unk_1CFA018B0);
    v66 = *(v74 + 96);
    v84[0] = *(v74 + 80);
    v84[1] = v66;
    v85 = v64;
    v86 = v65;
    v67 = type metadata accessor for SyncEngine(0, v84);
    sub_1CF7D6604(v27, v77, v78, v59, v67, v83, v43, v82, v80);
    if (v63)
    {
    }

    else if (v68)
    {
      v70 = v68;

      return v70;
    }
  }

  return v27;
}

uint64_t sub_1CF7DB13C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CF7DB184()
{
  result = qword_1EDEAB520;
  if (!qword_1EDEAB520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEAB520);
  }

  return result;
}

unint64_t sub_1CF7DB1E4()
{
  result = qword_1EC4C49E0;
  if (!qword_1EC4C49E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C49E0);
  }

  return result;
}

unint64_t sub_1CF7DB23C()
{
  result = qword_1EDEA5678;
  if (!qword_1EDEA5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5678);
  }

  return result;
}

unint64_t sub_1CF7DB294()
{
  result = qword_1EDEA5680;
  if (!qword_1EDEA5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5680);
  }

  return result;
}

uint64_t sub_1CF7DB34C()
{
  type metadata accessor for FPDNetworkMonitor();
  swift_allocObject();
  result = sub_1CF7DB388();
  qword_1EDEBB8A0 = result;
  return result;
}

uint64_t sub_1CF7DB388()
{
  v0 = sub_1CF9E7388();
  v21 = *(v0 - 8);
  v22 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v20 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1CF9E7318();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = sub_1CF9E6448();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  v19 = sub_1CF701F40();
  sub_1CF9E63F8();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1CF713674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF4F0754();
  sub_1CF9E77B8();
  (*(v10 + 16))(v12, v15, v9);
  (*(v3 + 16))(v5, v8, v2);
  (*(v21 + 104))(v20, *MEMORY[0x1E69E8098], v22);
  v16 = sub_1CF9E73B8();
  (*(v3 + 8))(v8, v2);
  (*(v10 + 8))(v15, v9);
  v17 = v23;
  *(v23 + 16) = v16;
  sub_1CF9E6358();
  swift_allocObject();
  *(v17 + 24) = sub_1CF9E6348();
  sub_1CF03C63C(sub_1CF02C710, 0);
  sub_1CF9E6328();
  sub_1CF9E6338();
  return v17;
}

uint64_t sub_1CF7DB714@<X0>(uint64_t *a1@<X8>)
{
  v19 = a1;
  v1 = sub_1CF9E6308();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E6378();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E6318();
  v9 = *MEMORY[0x1E6977B38];
  v18 = *(v2 + 104);
  v18(v4, v9, v1);
  v10 = sub_1CF9E6368();
  v11 = *(v2 + 8);
  v11(v4, v1);
  if (v10)
  {
    result = (*(v6 + 8))(v8, v5);
    v13 = 0x74656E7265687465;
    v14 = 0xE800000000000000;
  }

  else
  {
    v18(v4, *MEMORY[0x1E6977B40], v1);
    v15 = sub_1CF9E6368();
    v11(v4, v1);
    if (v15)
    {
      result = (*(v6 + 8))(v8, v5);
      v13 = 1768319351;
      v14 = 0xE400000000000000;
    }

    else
    {
      v18(v4, *MEMORY[0x1E6977B50], v1);
      v16 = sub_1CF9E6368();
      v11(v4, v1);
      result = (*(v6 + 8))(v8, v5);
      if (v16)
      {
        v13 = 0x72616C756C6C6563;
        v14 = 0xE800000000000000;
      }

      else
      {
        v13 = 0x726568746FLL;
        v14 = 0xE500000000000000;
      }
    }
  }

  v17 = v19;
  *v19 = v13;
  v17[1] = v14;
  return result;
}

uint64_t sub_1CF7DB9F4()
{

  return swift_deallocClassInstance();
}

id sub_1CF7DBA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v121 = a3;
  v107 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v110 = &v97 - v7;
  v8 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v109 = (&v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v108 = &v97 - v11;
  v113 = sub_1CF9E5A58();
  v111 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v105 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v106 = &v97 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v97 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v114 = &v97 - v18;
  v19 = sub_1CF9E5248();
  v20 = *(v19 - 8);
  v116 = v19;
  v117 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v115 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v97 - v23;
  v25 = sub_1CF9E5268();
  v118 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v97 - v29;
  v31 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v103 = &v97 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v101 = &v97 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v112 = &v97 - v40;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v97 - v43;
  v120 = v31;
  v47 = *(v31 + 16);
  v46 = v31 + 16;
  v45 = v47;
  (v47)(&v97 - v43, v4, a2, v42);
  v119 = v44;
  if (swift_dynamicCast())
  {
    v99 = v46;
    v100 = v45;
    v102 = v4;
    v98 = a2;
    v48 = v118;
    (*(v118 + 32))(v27, v30, v25);
    sub_1CF00E8FC(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v49 = v24;
    sub_1CF9E57A8();
    v50 = v115;
    sub_1CF9E5128();
    sub_1CF00E8FC(&unk_1EC4C1140, MEMORY[0x1E6967E70], MEMORY[0x1E6967E88]);
    v51 = v25;
    v52 = v116;
    sub_1CF9E6C28();
    sub_1CF9E6C28();
    v53 = *(v117 + 1);
    v53(v50, v52);
    v53(v49, v52);
    if (v123 == v122)
    {
      v117 = v27;
      v54 = v51;
      v55 = v112;
      v56 = v102;
      a2 = v98;
      v57 = v100;
      v100(v112, v102, v98);
      v58 = sub_1CF9E7FB8();
      if (v58)
      {
        v59 = v58;
        v60 = v120;
        (*(v120 + 8))(v55, a2);
      }

      else
      {
        v59 = swift_allocError();
        v60 = v120;
        (*(v120 + 32))(v66, v55, a2);
      }

      v67 = sub_1CF9E57E8();

      v68 = [v67 fp_collidingURL];
      v69 = v113;
      if (v68)
      {
        v120 = v54;
        v70 = v104;
        sub_1CF9E59D8();

        v71 = v111;
        v72 = v114;
        (*(v111 + 32))(v114, v70, v69);
        v73 = *(v71 + 16);
        v74 = v106;
        v73(v106, v72, v69);
        v75 = v108;
        sub_1CF004C30(v107, v108);
        v76 = v105;
        v73(v105, v74, v69);
        v77 = v109;
        sub_1CF004C30(v75, v109);
        v78 = type metadata accessor for VFSItem(0);
        v79 = v110;
        (*(*(v78 - 8) + 56))(v110, 1, 1, v78);
        v80 = objc_allocWithZone(type metadata accessor for LocalItem(0));
        v81 = sub_1CF001704(v76, v77, v79);
        sub_1CF56506C(v75);
        v82 = *(v71 + 8);
        v82(v74, v69);
        if (v81)
        {
          v64 = [objc_opt_self() fileProviderErrorForCollisionWithItem_];

          v82(v114, v69);
          (*(v118 + 8))(v117, v120);
        }

        else
        {
          v86 = v69;
          v87 = v101;
          v100(v101, v102, a2);
          v88 = sub_1CF9E7FB8();
          v89 = v120;
          if (v88)
          {
            v90 = v88;
            (*(v60 + 8))(v87, a2);
          }

          else
          {
            v90 = swift_allocError();
            (*(v60 + 32))(v94, v87, a2);
          }

          v95 = v117;
          v96 = v118;
          v64 = sub_1CF9E57E8();

          v82(v114, v86);
          (*(v96 + 8))(v95, v89);
        }
      }

      else
      {
        v83 = v103;
        v57(v103, v56, a2);
        v84 = sub_1CF9E7FB8();
        if (v84)
        {
          v85 = v84;
          (*(v60 + 8))(v83, a2);
        }

        else
        {
          v85 = swift_allocError();
          (*(v60 + 32))(v91, v83, a2);
        }

        v92 = v117;
        v93 = v118;
        v64 = sub_1CF9E57E8();

        (*(v93 + 8))(v92, v54);
      }

      goto LABEL_10;
    }

    (*(v48 + 8))(v27, v51);
    a2 = v98;
    v4 = v102;
    v45 = v100;
  }

  v45(v34, v4, a2);
  v61 = sub_1CF9E7FB8();
  if (v61)
  {
    v62 = v61;
    v60 = v120;
    (*(v120 + 8))(v34, a2);
  }

  else
  {
    v62 = swift_allocError();
    v60 = v120;
    (*(v120 + 32))(v63, v34, a2);
  }

  v64 = sub_1CF9E57E8();

LABEL_10:
  (*(v60 + 8))(v119, a2);
  return v64;
}

uint64_t sub_1CF7DC52C(uint64_t a1, char a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1CF9E81D8();
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](a1);
    }

    else
    {
      if (a1)
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }

      MEMORY[0x1D386A470](v7);
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    sub_1CF9E8208();
  }

  v8 = sub_1CF9E8228();
  v9 = -1 << *(a3 + 32);
  v10 = v8 & ~v9;
  if ((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = a2 == 2;
    v13 = a1 == 1 && a2 == 2;
    if (a1)
    {
      v12 = 0;
    }

    do
    {
      v14 = *(a3 + 48) + 16 * v10;
      v15 = *v14;
      v16 = *(v14 + 8);
      if (v16)
      {
        if (v16 == 1)
        {
          if (a2 == 1 && v15 == a1)
          {
            return 1;
          }
        }

        else if (v15)
        {
          if (v13)
          {
            return 1;
          }
        }

        else if (v12)
        {
          return 1;
        }
      }

      else if (!a2 && v15 == a1)
      {
        return 1;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return 0;
}

uint64_t sub_1CF7DC6AC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (_sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0(), v4 = v3, sub_1CF9E81D8(), sub_1CF9E69C8(), v5 = sub_1CF9E8228(), v4, v6, v7, v8, v9, v10, v11, v12, v13 = -1 << *(a2 + 32), v14 = v5 & ~v13, ((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v18 = v17;
      v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v27 = v20;
      if (v16 == v19 && v18 == v20)
      {
        break;
      }

      v29 = sub_1CF9E8048();
      v18, v30, v31, v32, v33, v34, v35, v36;
      v27, v37, v38, v39, v40, v41, v42, v43;
      if ((v29 & 1) == 0)
      {
        v14 = (v14 + 1) & v15;
        if ((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
        {
          continue;
        }
      }

      return v29 & 1;
    }

    v18, v20, v21, v22, v23, v24, v25, v26;
    v27, v45, v46, v47, v48, v49, v50, v51;
    v29 = 1;
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_1CF7DC800(uint64_t a1, uint64_t a2)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4FB0, &unk_1CFA17180);
  MEMORY[0x1EEE9AC00](v51);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v43 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v16 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v42 - v25;
  if (*(a2 + 16))
  {
    sub_1CF9E81D8();
    sub_1CEFCCBDC(a1, v26, &unk_1EC4BF650, &unk_1CF9FCB40);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = &qword_1CFA12AC0;
      sub_1CEFE55D0(v26, v10, &unk_1EC4BFD70, &qword_1CFA12AC0);
      MEMORY[0x1D386A470](1);
      sub_1CF1CE0C8(v54);
      v28 = v10;
      v29 = &unk_1EC4BFD70;
    }

    else
    {
      v27 = &unk_1CF9FCB50;
      sub_1CEFE55D0(v26, v15, &unk_1EC4BFCC0, &unk_1CF9FCB50);
      MEMORY[0x1D386A470](0);
      sub_1CF1CDC08(v54);
      v28 = v15;
      v29 = &unk_1EC4BFCC0;
    }

    sub_1CEFCCC44(v28, v29, v27);
    v30 = sub_1CF9E8228();
    v31 = -1 << *(a2 + 32);
    v32 = v30 & ~v31;
    v50 = a2 + 56;
    if ((*(a2 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
    {
      v47 = v20;
      v48 = a2;
      v49 = a1;
      v33 = ~v31;
      v34 = *(v16 + 72);
      v45 = v34;
      v46 = ~v31;
      do
      {
        sub_1CEFCCBDC(*(a2 + 48) + v34 * v32, v23, &unk_1EC4BF650, &unk_1CF9FCB40);
        v35 = *(v51 + 48);
        sub_1CEFCCBDC(v23, v5, &unk_1EC4BF650, &unk_1CF9FCB40);
        sub_1CEFCCBDC(v49, &v5[v35], &unk_1EC4BF650, &unk_1CF9FCB40);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1CEFCCBDC(v5, v52, &unk_1EC4BF650, &unk_1CF9FCB40);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v36 = v44;
            sub_1CEFE55D0(&v5[v35], v44, &unk_1EC4BFD70, &qword_1CFA12AC0);
            v37 = sub_1CF469E78(v52, v36);
            sub_1CEFCCC44(v36, &unk_1EC4BFD70, &qword_1CFA12AC0);
            sub_1CEFCCC44(v23, &unk_1EC4BF650, &unk_1CF9FCB40);
            sub_1CEFCCC44(v52, &unk_1EC4BFD70, &qword_1CFA12AC0);
            if (v37)
            {
              goto LABEL_20;
            }

LABEL_16:
            sub_1CEFCCC44(v5, &unk_1EC4BF650, &unk_1CF9FCB40);
            a2 = v48;
            goto LABEL_9;
          }

          sub_1CEFCCC44(v23, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v52, &unk_1EC4BFD70, &qword_1CFA12AC0);
          a2 = v48;
        }

        else
        {
          v38 = v47;
          sub_1CEFCCBDC(v5, v47, &unk_1EC4BF650, &unk_1CF9FCB40);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v39 = v43;
            sub_1CEFE55D0(&v5[v35], v43, &unk_1EC4BFCC0, &unk_1CF9FCB50);
            v40 = sub_1CF4692CC(v38, v39);
            sub_1CEFCCC44(v39, &unk_1EC4BFCC0, &unk_1CF9FCB50);
            sub_1CEFCCC44(v23, &unk_1EC4BF650, &unk_1CF9FCB40);
            sub_1CEFCCC44(v38, &unk_1EC4BFCC0, &unk_1CF9FCB50);
            v34 = v45;
            v33 = v46;
            if (v40)
            {
LABEL_20:
              sub_1CEFCCC44(v5, &unk_1EC4BF650, &unk_1CF9FCB40);
              return 1;
            }

            goto LABEL_16;
          }

          sub_1CEFCCC44(v23, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v38, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          a2 = v48;
          v34 = v45;
          v33 = v46;
        }

        sub_1CEFCCC44(v5, &qword_1EC4C4FB0, &unk_1CFA17180);
LABEL_9:
        v32 = (v32 + 1) & v33;
      }

      while (((*(v50 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_1CF7DCE10(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1CF9E7848();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (sub_1CF9E81D8(), _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0(), v6 = v5, sub_1CF9E69C8(), v6, v7, v8, v9, v10, v11, v12, v13, v14 = sub_1CF9E8228(), v15 = -1 << *(a2 + 32), v16 = v14 & ~v15, ((*(a2 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
    {
      v17 = ~v15;
      while (1)
      {
        v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v20 = v19;
        v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v29 = v22;
        if (v18 == v21 && v20 == v22)
        {
          break;
        }

        v31 = sub_1CF9E8048();
        v20, v32, v33, v34, v35, v36, v37, v38;
        v29, v39, v40, v41, v42, v43, v44, v45;
        if ((v31 & 1) == 0)
        {
          v16 = (v16 + 1) & v17;
          if ((*(a2 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
          {
            continue;
          }
        }

        return v31 & 1;
      }

      v20, v22, v23, v24, v25, v26, v27, v28;
      v29, v46, v47, v48, v49, v50, v51, v52;
      v31 = 1;
    }

    else
    {
      v31 = 0;
    }

    return v31 & 1;
  }
}

uint64_t sub_1CF7DCFA4(id a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1CF9E81D8();
  sub_1CEFF47E0(v63, a1, a2 & 0x1FF);
  v6 = sub_1CF9E8228();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  v10 = a2 == 2;
  v11 = a1 == 1 && a2 == 2;
  if (a1)
  {
    v10 = 0;
  }

  v60 = v10;
  v61 = v11;
  v12 = (a2 >> 8) & 1;
  while (1)
  {
    v16 = *(a3 + 48) + 16 * v8;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 9);
    if ((v19 & 1) == 0)
    {
      break;
    }

    if ((a2 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v22 = v21;
    v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v25 = v20;
    v26 = v23;
    if (v25 == v24 && v22 == v23)
    {
      sub_1CEFD0988(v17, v18, 1);
      sub_1CEFD0988(v17, v18, 1);
      sub_1CEFD0988(a1, a2, 1);
      v22, v43, v44, v45, v46, v47, v48, v49;
      v26, v50, v51, v52, v53, v54, v55, v56;
      sub_1CEFD0994(a1, a2, 1);
LABEL_37:
      sub_1CEFD0994(v17, v18, 1);
      v57 = v17;
      v58 = v18;
      v59 = 1;
      goto LABEL_40;
    }

    v62 = sub_1CF9E8048();
    sub_1CEFD0988(v17, v18, 1);
    sub_1CEFD0988(v17, v18, 1);
    sub_1CEFD0988(a1, a2, 1);
    v22, v28, v29, v30, v31, v32, v33, v34;
    v26, v35, v36, v37, v38, v39, v40, v41;
    sub_1CEFD0994(a1, a2, 1);
    if (v62)
    {
      goto LABEL_37;
    }

    sub_1CEFD0994(v17, v18, 1);
    sub_1CEFD0994(v17, v18, 1);
    v12 = (a2 >> 8) & 1;
LABEL_11:
    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  if ((a2 & 0x100) != 0)
  {
LABEL_9:
    sub_1CEFD0988(*v16, *(v16 + 8), *(v16 + 9));
    sub_1CEFD0988(a1, a2, v12);
    sub_1CEFD0994(v17, v18, v19);
    v13 = a1;
    v14 = a2;
    v15 = v12;
LABEL_10:
    sub_1CEFD0994(v13, v14, v15);
    goto LABEL_11;
  }

  if (!*(v16 + 8))
  {
    if (!a2 && v17 == a1)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (v18 == 1)
  {
    if (a2 == 1 && v17 == a1)
    {
      v17 = a1;
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (v17)
  {
    if (v61)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (!v60)
  {
LABEL_33:
    sub_1CEFD0988(v17, v18, 0);
    sub_1CEFD0988(a1, a2, 0);
    v13 = v17;
    v14 = v18;
    v15 = 0;
    goto LABEL_10;
  }

  v17 = 0;
LABEL_39:
  sub_1CEFD0988(v17, v18, 0);
  sub_1CEFD0988(a1, a2, 0);
  v57 = v17;
  v58 = v18;
  v59 = 0;
LABEL_40:
  sub_1CEFD0994(v57, v58, v59);
  return 1;
}

uint64_t sub_1CF7DD394@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v142 = a5;
  v153 = *MEMORY[0x1E69E9840];
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v135);
  v10 = (v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v123 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v123 - v15);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v137);
  v138 = v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v136 = (v123 - v19);
  v20 = type metadata accessor for VFSItem(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v134 = v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v141 = v123 - v24;
  0, v25, v26, v27, v28, v29, v30, v31;
  v32 = type metadata accessor for VFSFileTree(0);
  a4 |= 1uLL;
  v140 = a1;
  aBlock = a1;
  v33 = a2;
  v150 = 0u;
  v151 = 0u;
  v34 = sub_1CEFDADE0(&aBlock, *(a2 + 16), 2129920);
  v139 = a3;
  v133 = a4;
  v132 = a2;
  v123[0] = v13;
  v124 = v10;
  v131 = 0;
  v125 = v21;
  v126 = v20;
  LODWORD(v21) = v34;
  v130 = v34;
  *(&v151 + 1), v40, v41, v42, v43, v44, v45, v46;
  os_unfair_lock_lock((a2 + 56));
  v47 = *(a2 + 64);
  v48 = *(v33 + 72);
  LODWORD(v129) = *(v33 + 88);
  v128 = *(v33 + 89);
  v127 = *(v33 + 90);

  v49 = *(v33 + 80);
  os_unfair_lock_unlock((v33 + 56));
  v123[1] = v123;
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v123[-12];
  v123[-10] = v32;
  LODWORD(v123[-9]) = v21;
  v123[-7] = 0;
  v123[-6] = 0;
  v123[-8] = v33;
  LOBYTE(v123[-5]) = a3;
  v123[-4] = a4;
  v123[-3] = 0;
  LOBYTE(v123[-2]) = -1;
  v123[-1] = 0;
  *(&v151 + 1) = v47;
  v152 = v48;
  aBlock = MEMORY[0x1E69E9820];
  *&v150 = 1107296256;
  *(&v150 + 1) = sub_1CEFDB088;
  *&v151 = &block_descriptor_46;
  v52 = _Block_copy(&aBlock);
  v123[2] = v48;

  v144 = v52;
  v145 = v49;
  v146 = v129;
  v147 = v128;
  v148 = v127;
  v53 = sub_1CEFDB034();
  v54 = swift_allocError();
  *v55 = 6;
  *(v55 + 8) = 0u;
  *(v55 + 24) = 0u;
  *(v55 + 40) = 19;
  *v16 = v54;
  swift_storeEnumTagMultiPayload();
  v56 = swift_allocObject();
  v56[2] = v16;
  v56[3] = sub_1CEFDB808;
  v56[4] = &v123[-12];
  v57 = swift_allocObject();
  *(v57 + 16) = sub_1CEFDB388;
  *(v57 + 24) = v56;
  *(&v151 + 1) = sub_1CEFDB248;
  v152 = v57;
  aBlock = MEMORY[0x1E69E9820];
  *&v150 = 1107296256;
  *(&v150 + 1) = sub_1CEFDB270;
  *&v151 = &block_descriptor_6;
  v58 = _Block_copy(&aBlock);

  v59 = fpfs_fgetfileattrs_detailed();
  _Block_release(v58);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_24;
  }

  v129 = v52;
  if (v59)
  {
    swift_getErrorValue();
    v61 = v143;
    v62 = swift_allocError();
    *v63 = 6;
    *(v63 + 8) = 0u;
    *(v63 + 24) = 0u;
    *(v63 + 40) = 19;
    v64 = v59;
    v65 = sub_1CF199074(v62, v61);

    v66 = v123[0];
    *v123[0] = v65;
    swift_storeEnumTagMultiPayload();
    sub_1CF1DBC74(v66, v16);
  }

  v67 = v124;
  sub_1CEFCCBDC(v16, v124, &qword_1EC4BE000, &unk_1CFA006A0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v37 = v136;
    sub_1CEFE55D0(v67, v136, &unk_1EC4BE2F0, qword_1CFA04220);
    sub_1CEFCCC44(v16, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v129);

    v51 = v142;
    v53 = v126;
    v59 = v125;
    v39 = v138;
LABEL_11:
    v71 = v141;
    v38 = v139;
    if ((v130 & 0x80000000) == 0)
    {
      close(v130);
    }

    goto LABEL_13;
  }

  aBlock = *v67;
  v68 = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFCCC44(v16, &qword_1EC4BE000, &unk_1CFA006A0);

  _Block_release(v129);

  v69 = v68;
  LODWORD(aBlock) = sub_1CF9E52A8();
  sub_1CF196978();
  v70 = sub_1CF9E5658();

  v51 = v142;
  v59 = v125;
  if (v70)
  {

    v37 = v136;
    *v136 = xmmword_1CF9FD940;
    *(v37 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    v53 = v126;
    v39 = v138;
    goto LABEL_11;
  }

  v53 = v126;
  v71 = v141;
  v122 = v131;
  if ((v130 & 0x80000000) == 0)
  {
    close(v130);
  }

  v35 = v68;
  LODWORD(aBlock) = sub_1CF9E5328();
  sub_1CF196978();
  v36 = sub_1CF9E5658();

  if ((v36 & 1) == 0)
  {
    goto LABEL_18;
  }

  v131 = v122;

  v37 = v136;
  *v136 = xmmword_1CF9FD930;
  *(v37 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  v38 = v139;
  v39 = v138;
LABEL_13:
  sub_1CEFE55D0(v37, v39, &unk_1EC4BE2F0, qword_1CFA04220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v39, &unk_1EC4BE2F0, qword_1CFA04220);
    aBlock = 0;
    *&v150 = 0xE000000000000000;
    sub_1CF9E7948();
    v150, v72, v73, v74, v75, v76, v77, v78;
    aBlock = 0xD000000000000013;
    *&v150 = 0x80000001CFA5B230;
    v144 = v140;
    v79 = sub_1CF9E7F98();
    v81 = v80;
    MEMORY[0x1D3868CC0](v79);
    v81, v82, v83, v84, v85, v86, v87, v88;
    v56 = aBlock;
    v16 = v150;
    if (qword_1EDEA3408 == -1)
    {
LABEL_15:
      v89 = qword_1EDEBB5A0;
      v90 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_1CF9FA450;
      *(v91 + 56) = MEMORY[0x1E69E6158];
      *(v91 + 64) = sub_1CEFD51C4();
      *(v91 + 32) = v56;
      *(v91 + 40) = v16;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v89, v90, v91);
      v99 = v91;
LABEL_19:
      v99, v92, v93, v94, v95, v96, v97, v98;
      return (*(v59 + 7))(v51, 1, 1, v53);
    }

LABEL_24:
    swift_once();
    goto LABEL_15;
  }

  v100 = v39;
  v101 = v134;
  sub_1CF5634F4(v100, v134);
  sub_1CF5634F4(v101, v71);
  v102 = v131;
  sub_1CF7DEC8C(v71, v132, v38, v133, v51);
  if (v102)
  {
    v68 = v102;
    sub_1CF574A68(v71);
LABEL_18:
    aBlock = 0;
    *&v150 = 0xE000000000000000;
    sub_1CF9E7948();
    v150, v103, v104, v105, v106, v107, v108, v109;
    aBlock = 0xD000000000000012;
    *&v150 = 0x80000001CFA5B210;
    v144 = v140;
    v110 = sub_1CF9E7F98();
    v112 = v111;
    MEMORY[0x1D3868CC0](v110);
    v112, v113, v114, v115, v116, v117, v118, v119;
    v120 = v150;
    sub_1CF7E16A8(v68, aBlock, v150);

    v99 = v120;
    goto LABEL_19;
  }

  return sub_1CF574A68(v71);
}

uint64_t sub_1CF7DDF48@<X0>(uint64_t a1@<X0>, os_unfair_lock_s *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v111 = a4;
  LODWORD(v104) = a3;
  v103 = a2;
  v125 = *MEMORY[0x1E69E9840];
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v110);
  v102 = (&v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v101 = (&v92 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v109 = (&v92 - v11);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v105 = (&v92 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v92 - v16;
  v18 = sub_1CF9E5A58();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for VFSItem(0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF574A04(a1, v25);
  sub_1CF25116C(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1CF574A68(v25);
    sub_1CEFCCC44(v17, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF574A04(a1, a5);
    return (*(v23 + 56))(a5, 0, 1, v22);
  }

  v108 = v25;
  v99 = v23;
  v100 = v22;
  (*(v19 + 32))(v21, v17, v18);
  v27 = v112;
  v28 = sub_1CF006550();
  if (v27)
  {
    sub_1CF574A68(v108);
    return (*(v19 + 8))(v21, v18);
  }

  v29 = v28;
  v98 = v21;
  v30 = v100;
  v31 = v108;
  v32 = &v108[*(v100 + 28)];
  v33 = type metadata accessor for ItemMetadata(0);
  if ((v29 & 1) == v32[*(v33 + 112)])
  {
    sub_1CF574A68(v31);
    sub_1CF574A04(a1, a5);
    (*(v99 + 56))(a5, 0, 1, v30);
    return (*(v19 + 8))(v98, v18);
  }

  MEMORY[0x1EEE9AC00](v33);
  v21 = v98;
  *(&v92 - 2) = v98;
  if (v29)
  {
    v34 = sub_1CF7E1EEC;
  }

  else
  {
    v34 = sub_1CF7E1EBC;
  }

  sub_1CEFE1894(v34);
  v112 = 0;
  v35 = type metadata accessor for VFSFileTree(0);
  sub_1CF9E5A18();
  v37 = v36;
  sub_1CF9E6978();
  v38 = openat_s();

  if (v38 < 0)
  {
    v49 = MEMORY[0x1D38683F0](v39);
    v123 = 0;
    aBlock = 0u;
    v122 = 0u;
    LOBYTE(v124) = 19;
    v50 = sub_1CF19BBE4(v49, &aBlock);
    sub_1CF1969CC(&aBlock);
    swift_willThrow();
    v37, v51, v52, v53, v54, v55, v56, v57;
    v112 = 0;
LABEL_25:
    v86 = v50;
    LODWORD(aBlock) = sub_1CF9E5328();
    sub_1CF196978();
    v87 = sub_1CF9E5658();

    sub_1CF574A68(v108);
    if ((v87 & 1) == 0)
    {
      return (*(v19 + 8))(v21, v18);
    }

    v82 = v105;
    *v105 = xmmword_1CF9FD930;
    *(v82 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    goto LABEL_27;
  }

  v97 = v38;
  v37, v40, v41, v42, v43, v44, v45, v46;
  v47 = v35;
  if (v111)
  {
    v96 = 0;
    v48 = v103;
  }

  else
  {
    v48 = v103;
    v96 = *&v103[6]._os_unfair_lock_opaque;
  }

  os_unfair_lock_lock(v48 + 14);
  v58 = *&v48[16]._os_unfair_lock_opaque;
  v59 = *&v48[18]._os_unfair_lock_opaque;
  LODWORD(v95) = LOBYTE(v48[22]._os_unfair_lock_opaque);
  LODWORD(v94) = BYTE1(v48[22]._os_unfair_lock_opaque);
  v93 = BYTE2(v48[22]._os_unfair_lock_opaque);

  v60 = *&v48[20]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v48 + 14);
  v92 = &v92;
  MEMORY[0x1EEE9AC00](v61);
  v103 = (&v92 - 12);
  *(&v92 - 10) = v47;
  *(&v92 - 18) = v97;
  *(&v92 - 7) = 0;
  *(&v92 - 6) = 0;
  *(&v92 - 8) = v48;
  *(&v92 - 40) = v104;
  *(&v92 - 4) = v111;
  *(&v92 - 3) = 0;
  *(&v92 - 16) = -1;
  *(&v92 - 1) = 0;
  v123 = v58;
  v124 = v59;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v122 = sub_1CEFDB088;
  *(&v122 + 1) = &block_descriptor_25_0;
  v62 = _Block_copy(&aBlock);
  v111 = v59;

  v104 = v62;
  v116 = v62;
  v117 = v60;
  v118 = v95;
  v119 = v94;
  v120 = v93;
  v95 = sub_1CEFDB034();
  v63 = swift_allocError();
  *v64 = 6;
  *(v64 + 8) = 0u;
  *(v64 + 24) = 0u;
  *(v64 + 40) = 19;
  v65 = v109;
  *v109 = v63;
  swift_storeEnumTagMultiPayload();
  v66 = swift_allocObject();
  *&v66[4]._os_unfair_lock_opaque = v65;
  *&v66[6]._os_unfair_lock_opaque = sub_1CF2B9F90;
  *&v66[8]._os_unfair_lock_opaque = v103;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_1CF7E1F94;
  *(v67 + 24) = v66;
  v103 = v66;
  v123 = sub_1CF7E1FB4;
  v124 = v67;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v122 = sub_1CEFDB270;
  *(&v122 + 1) = &block_descriptor_36;
  v68 = _Block_copy(&aBlock);

  v69 = fpfs_fgetfileattrs_detailed();
  _Block_release(v68);
  LOBYTE(v68) = swift_isEscapingClosureAtFileLocation();

  if (v68)
  {
    __break(1u);
  }

  if (v69)
  {
    swift_getErrorValue();
    v70 = v114;
    v96 = v113;
    v94 = v115;
    v71 = swift_allocError();
    *v72 = 6;
    *(v72 + 8) = 0u;
    *(v72 + 24) = 0u;
    *(v72 + 40) = 19;
    v73 = v69;
    v74 = v69;
    v75 = sub_1CF199074(v71, v70);

    v69 = v73;
    v65 = v109;

    v76 = v101;
    *v101 = v75;
    swift_storeEnumTagMultiPayload();
    sub_1CF1DBC74(v76, v65);
  }

  v77 = v102;
  sub_1CEFCCBDC(v65, v102, &qword_1EC4BE000, &unk_1CFA006A0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v84 = v77;
    v85 = v65;
    v82 = v105;
    sub_1CEFE55D0(v84, v105, &unk_1EC4BE2F0, qword_1CFA04220);
    sub_1CEFCCC44(v85, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v104);

    v83 = v97;
    goto LABEL_23;
  }

  v78 = v69;
  *&aBlock = *v77;
  v50 = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFCCC44(v65, &qword_1EC4BE000, &unk_1CFA006A0);

  _Block_release(v104);

  v79 = v50;
  LODWORD(aBlock) = sub_1CF9E52A8();
  sub_1CF196978();
  v80 = sub_1CF9E5658();

  if ((v80 & 1) == 0)
  {
    close(v97);
    goto LABEL_25;
  }

  v81 = v97;

  v82 = v105;
  *v105 = xmmword_1CF9FD940;
  *(v82 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  v83 = v81;
LABEL_23:
  close(v83);
  sub_1CF574A68(v108);
LABEL_27:
  v88 = v100;
  v89 = v107;
  v90 = v99;
  sub_1CEFE55D0(v82, v107, &unk_1EC4BE2F0, qword_1CFA04220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v89, &unk_1EC4BE2F0, qword_1CFA04220);
    v91 = 1;
  }

  else
  {
    sub_1CF5634F4(v89, a5);
    v91 = 0;
  }

  (*(v90 + 56))(a5, v91, 1, v88);
  return (*(v19 + 8))(v98, v18);
}

void sub_1CF7DEC14(uint64_t (*a2)(uint64_t, uint64_t)@<X1>, _DWORD *a3@<X8>)
{
  sub_1CF9E5A18();
  v6 = v5;
  v7 = sub_1CF9E6978();
  v6, v8, v9, v10, v11, v12, v13, v14;
  LODWORD(a2) = a2(4294967294, v7 + 32);

  *a3 = a2;
}

void sub_1CF7DEC8C(uint64_t a1@<X0>, os_unfair_lock_s *a2@<X1>, int a3@<W2>, const void *a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v145) = a3;
  v9 = a3;
  v162 = *MEMORY[0x1E69E9840];
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v140);
  v139 = (v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v138 = (v128 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v141 = (v128 - v14);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v142);
  v143 = v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v144 = v128 - v17;
  v18 = sub_1CF9E5A58();
  v149 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v151 = v128 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v128 - v24;
  v147 = type metadata accessor for VFSItem(0);
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v27 = v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF574A04(a1, v27);
  if (v9 == 1)
  {
    sub_1CF7DDF48(a1, a2, 1, a4, a5);
    sub_1CF574A68(v27);
    return;
  }

  v137 = a2;
  v136 = a4;
  v28 = v150;
  sub_1CF25116C(v25);
  if ((*(v149 + 48))(v25, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  v135 = v27;
  v29 = sub_1CF9E5928();
  v30 = *(v149 + 8);
  v134 = v149 + 8;
  v133 = v30;
  v30(v25, v18);
  v31 = v18;
  v32 = OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL;
  v33 = v29;
  v34 = v137;
  v35 = sub_1CF9E5928();
  v36 = [v33 fp:v35 relativePathOf:?];

  if (!v36)
  {

    v27 = v135;
LABEL_8:
    sub_1CF5634F4(v27, a5);
    (*(v146 + 56))(a5, 0, 1, v147);
    return;
  }

  v132 = v33;
  v131 = a5;
  v37 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v38 = v31;
  v40 = v39;

  *&aBlock = v37;
  *(&aBlock + 1) = v40;
  v153 = 47;
  v154 = 0xE100000000000000;
  sub_1CEFE4E68();
  v41 = sub_1CF9E7638();
  v40, v42, v43, v44, v45, v46, v47, v48;
  v49 = *(v149 + 16);
  v50 = v34 + v32;
  v148 = v38;
  v51 = v41;
  v49(v151, v50, v38);
  v52 = *(v41 + 16);
  if (v52 < 2)
  {
LABEL_6:

    swift_unknownObjectRelease();
    v53 = v131;
    sub_1CF5634F4(v135, v131);
    (*(v146 + 56))(v53, 0, 1, v147);
    v133(v151, v148);
    return;
  }

  v54 = v52 - 1;
  v55 = (v149 + 40);
  v56 = *MEMORY[0x1E695DBA0];
  v57 = (v51 + 40);
  while (1)
  {
    if (!v54)
    {
      __break(1u);
      goto LABEL_41;
    }

    v58 = *v57;

    v59 = v151;
    sub_1CF9E5958();
    v58, v60, v61, v62, v63, v64, v65, v66;
    (*v55)(v59, v20, v148);
    v67 = sub_1CF9E5928();
    *&aBlock = 0;
    v153 = 0;
    v68 = [v67 getResourceValue:&aBlock forKey:v56 error:&v153];
    v28 = aBlock;
    v69 = v153;
    if (!v68)
    {
      v73 = v69;
      swift_unknownObjectRetain();
      sub_1CF9E57F8();

      swift_willThrow();
      swift_unknownObjectRelease();

      sub_1CF574A68(v135);
      swift_unknownObjectRelease();

      goto LABEL_20;
    }

    if (!v28)
    {

      goto LABEL_11;
    }

    swift_unknownObjectRetain_n();
    objc_opt_self();
    v70 = swift_dynamicCastObjCClass();
    if (!v70)
    {

      swift_unknownObjectRelease_n();
      goto LABEL_11;
    }

    v71 = [v70 BOOLValue];
    swift_unknownObjectRelease_n();

    if (v71)
    {
      break;
    }

LABEL_11:
    v57 += 2;
    if (!--v54)
    {
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v72);
  v75 = v150;
  v128[-2] = v151;
  sub_1CEFE1894(sub_1CF7E1EA0);
  if (v75)
  {
    sub_1CF574A68(v135);
    swift_unknownObjectRelease();

LABEL_20:
    v74 = v148;
LABEL_21:
    v133(v151, v74);
    return;
  }

  v55 = v132;
  if (v145 == 2)
  {
    sub_1CF574A68(v135);
    swift_unknownObjectRelease();

    (*(v146 + 56))(v131, 1, 1, v147);
    v133(v151, v148);
    return;
  }

  v76 = type metadata accessor for VFSFileTree(0);
  sub_1CF9E5A18();
  v78 = v77;
  sub_1CF9E6978();
  v79 = openat_s();

  v54 = v131;
  LODWORD(v149) = v79;
  v130 = v51;
  if (v79 < 0)
  {
    v89 = MEMORY[0x1D38683F0](v80);
    v160 = 0;
    aBlock = 0u;
    v159 = 0u;
    LOBYTE(v161) = 19;
    v56 = sub_1CF19BBE4(v89, &aBlock);
    sub_1CF1969CC(&aBlock);
    swift_willThrow();
    v78, v90, v91, v92, v93, v94, v95, v96;
    v28 = v144;
    goto LABEL_42;
  }

  v78, v81, v82, v83, v84, v85, v86, v87;
  v150 = 0;
  if (v136)
  {
    v129 = 0;
    v88 = v137;
  }

  else
  {
    v88 = v137;
    v129 = *&v137[6]._os_unfair_lock_opaque;
  }

  os_unfair_lock_lock(v88 + 14);
  v97 = *&v88[16]._os_unfair_lock_opaque;
  v98 = *&v88[18]._os_unfair_lock_opaque;
  os_unfair_lock_opaque = v88[22]._os_unfair_lock_opaque;
  v100 = BYTE1(v88[22]._os_unfair_lock_opaque);
  v101 = BYTE2(v88[22]._os_unfair_lock_opaque);

  v102 = *&v88[20]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v88 + 14);
  v137 = v128;
  MEMORY[0x1EEE9AC00](v103);
  v128[-10] = v76;
  LODWORD(v128[-9]) = v149;
  v128[-7] = 0;
  v128[-6] = 0;
  v128[-8] = v88;
  LOBYTE(v128[-5]) = v145;
  v128[-4] = v136;
  v128[-3] = 0;
  LOBYTE(v128[-2]) = -1;
  v128[-1] = 0;
  v160 = v97;
  v161 = v98;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v159 = sub_1CEFDB088;
  *(&v159 + 1) = &block_descriptor_10;
  v104 = _Block_copy(&aBlock);
  v145 = v98;

  v136 = v104;
  v153 = v104;
  v154 = v102;
  v155 = os_unfair_lock_opaque;
  v156 = v100;
  v157 = v101;
  sub_1CEFDB034();
  v105 = swift_allocError();
  *v106 = 6;
  *(v106 + 8) = 0u;
  *(v106 + 24) = 0u;
  *(v106 + 40) = 19;
  v107 = v141;
  *v141 = v105;
  swift_storeEnumTagMultiPayload();
  v108 = swift_allocObject();
  *(v108 + 16) = v107;
  *(v108 + 24) = sub_1CF2B9F90;
  *(v108 + 32) = &v128[-12];
  v109 = swift_allocObject();
  *(v109 + 16) = sub_1CF7E1F94;
  *(v109 + 24) = v108;
  v128[1] = v108;
  v160 = sub_1CF7E1FB4;
  v161 = v109;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v159 = sub_1CEFDB270;
  *(&v159 + 1) = &block_descriptor_21_1;
  v110 = _Block_copy(&aBlock);

  v111 = fpfs_fgetfileattrs_detailed();
  _Block_release(v110);
  LOBYTE(v108) = swift_isEscapingClosureAtFileLocation();

  if (v108)
  {
    __break(1u);
    return;
  }

  if (v111)
  {
    swift_getErrorValue();
    v112 = v152;
    v113 = swift_allocError();
    *v114 = 6;
    *(v114 + 8) = 0u;
    *(v114 + 24) = 0u;
    *(v114 + 40) = 19;
    v115 = v111;
    v116 = sub_1CF199074(v113, v112);

    v117 = v138;
    *v138 = v116;
    swift_storeEnumTagMultiPayload();
    sub_1CF1DBC74(v117, v107);
  }

  v118 = v139;
  sub_1CEFCCBDC(v107, v139, &qword_1EC4BE000, &unk_1CFA006A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v54 = v131;
  if (EnumCaseMultiPayload != 1)
  {

    v28 = v144;
    sub_1CEFE55D0(v118, v144, &unk_1EC4BE2F0, qword_1CFA04220);
    sub_1CEFCCC44(v107, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v136);

    v55 = v132;
    goto LABEL_39;
  }

  v56 = *v118;
  *&aBlock = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFCCC44(v107, &qword_1EC4BE000, &unk_1CFA006A0);

  _Block_release(v136);

  v120 = v56;
  LODWORD(aBlock) = sub_1CF9E52A8();
  sub_1CF196978();
  v121 = sub_1CF9E5658();

  v28 = v144;
  v55 = v132;
  if (v121)
  {

    *v28 = xmmword_1CF9FD940;
    *(v28 + 16) = 2;
    swift_storeEnumTagMultiPayload();
LABEL_39:
    close(v149);

    swift_unknownObjectRelease();
    sub_1CF574A68(v135);
    goto LABEL_44;
  }

LABEL_41:
  close(v149);
LABEL_42:
  v122 = v56;
  LODWORD(aBlock) = sub_1CF9E5328();
  sub_1CF196978();
  v123 = sub_1CF9E5658();
  swift_unknownObjectRelease();

  sub_1CF574A68(v135);
  if ((v123 & 1) == 0)
  {
    v74 = v148;
    goto LABEL_21;
  }

  *v28 = xmmword_1CF9FD930;
  *(v28 + 16) = 2;
  swift_storeEnumTagMultiPayload();
LABEL_44:
  v124 = v143;
  sub_1CEFE55D0(v28, v143, &unk_1EC4BE2F0, qword_1CFA04220);
  v125 = swift_getEnumCaseMultiPayload();
  v126 = (v146 + 56);
  if (v125 == 1)
  {
    sub_1CEFCCC44(v124, &unk_1EC4BE2F0, qword_1CFA04220);
    v127 = 1;
  }

  else
  {
    sub_1CF5634F4(v124, v54);
    v127 = 0;
  }

  (*v126)(v54, v127, 1, v147);
  v133(v151, v148);
}

void sub_1CF7DFCA4(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  sub_1CF9E5A18();
  v10 = v9;
  (*(v5 + 8))(v8, v4);
  sub_1CF9E6978();
  v10, v11, v12, v13, v14, v15, v16, v17;
  LODWORD(v4) = fpfs_pkg_promote_at();

  *a2 = v4;
}

void sub_1CF7DFDE0(unsigned int a1@<W0>, uint64_t *a2@<X1>, os_unfair_lock_s *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v384 = a5;
  v372 = a4;
  v373 = a3;
  v361 = a6;
  v404 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v369);
  v363 = (&v343 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v356 = (&v343 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v377 = (&v343 - v12);
  v349 = sub_1CF9E53C8();
  v13 = *(v349 - 8);
  MEMORY[0x1EEE9AC00](v349);
  v348 = &v343 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v362);
  v360 = &v343 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v359 = (&v343 - v17);
  v18 = type metadata accessor for VFSItem(0);
  v344 = *(v18 - 8);
  v345 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v357 = &v343 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v358 = &v343 - v21;
  v22 = *a2;
  v23 = a2[1];
  v24 = a2[2];
  v25 = a2[3];
  v26 = a2[4];
  0, v27, v28, v29, v30, v31, v32, v33;
  if (v26 == 1)
  {
    v379 = 0;
    v380 = 0;
    v381 = 0;
    v382 = v7;
    v367 = 0;
    v34 = 0;
    v35 = &unk_1F4BED620;
  }

  else
  {
    v381 = v23;
    v382 = v24;
    v379 = v22;
    v380 = HIDWORD(v24);
    v367 = v25;
    v34 = v26;
    v35 = &unk_1F4BED658;
  }

  v385 = v35;
  v365 = type metadata accessor for VFSFileTree(0);
  v371 = (v384 | 1);
  os_unfair_lock_opaque = v373[4]._os_unfair_lock_opaque;
  sub_1CF7E1F64(v22, v23, v24, v25, v26);
  v383 = 0;
  v366 = 0;
  v378 = 0;
  v38 = *MEMORY[0x1E696AA08];
  v346 = (v13 + 8);
  v347 = v38;
  v364 = &v392;
  v350 = 0x80000001CFA5B2B0;
  v352 = 0x80000001CFA5B2F0;
  v354 = 0x80000001CFA5B330;
  v355 = 0x80000001CFA5B270;
  v370 = xmmword_1CF9FA450;
  v351 = xmmword_1CF9FD940;
  v353 = v7;
  v39 = v34;
  v40 = os_unfair_lock_opaque;
  v42 = v379;
  v41 = v380;
  v44 = v381;
  v43 = v382;
  v368 = os_unfair_lock_opaque;
  while (1)
  {
    MEMORY[0x1EEE9AC00](v37);
    *(&v343 - 4) = v40;
    *(&v343 - 3) = 2129920;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0;
    *&v400 = v42;
    *(&v400 + 1) = v44;
    v401 = __PAIR64__(v41, v43);
    v382 = v43;
    if (!v39)
    {
      *&v396 = v42;
      *(&v396 + 1) = v44;
      v397 = __PAIR64__(v41, v43);
      v398 = 0;
      v399 = 0;
      LODWORD(v388[0]) = -1;
      v52 = fpfs_openfdbyhandle();
      if ((v52 & 0x80000000) == 0)
      {
        LODWORD(v384) = v52;
        v380 = v41;
        v381 = v44;
        v376 = 0;
        goto LABEL_17;
      }

      v109 = v388[0];
      v110 = MEMORY[0x1D38683F0]();
      if (v109 < 0)
      {
        LODWORD(aBlock) = 0;
        BYTE4(aBlock) = 1;
        LOBYTE(v395) = 0;
        if (v110)
        {
          v111 = sub_1CF9E6138();
          if ((v111 & 0x100000000) == 0)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        LODWORD(aBlock) = v388[0];
        BYTE4(aBlock) = 0;
        LOBYTE(v395) = 0;
        if (v110)
        {
          v111 = sub_1CF9E6138();
          if ((v111 & 0x100000000) == 0)
          {
LABEL_43:
            v389 = v111;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
            inited = swift_initStackObject();
            *(inited + 16) = v370;
            *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            *(inited + 40) = v115;
            *(inited + 72) = &type metadata for VFSFileError;
            v116 = swift_allocObject();
            *(inited + 48) = v116;
            sub_1CF19A730(&aBlock, v116 + 16);
            sub_1CF4E04E8(inited);
            swift_setDeallocating();
            sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
            sub_1CF7E1F1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
            v117 = v44;
            v119 = v348;
            v118 = v349;
            sub_1CF9E57D8();
            v78 = sub_1CF9E53A8();
            v120 = v119;
            v44 = v117;
            (*v346)(v120, v118);
LABEL_45:
            sub_1CF1969CC(&aBlock);
            swift_willThrow();
            0, v122, v123, v124, v125, v126, v127, v128;
            v378 = 0;
LABEL_56:
            v69 = v383;
            goto LABEL_57;
          }
        }
      }

      sub_1CEFDB034();
      v78 = swift_allocError();
      sub_1CF19A730(&aBlock, v121);
      goto LABEL_45;
    }

    v381 = v44;
    MEMORY[0x1EEE9AC00](v45);
    *(&v343 - 4) = v47;
    *(&v343 - 3) = sub_1CF19BDC4;
    *(&v343 - 2) = v48;
    if ((v39 & 0x1000000000000000) == 0)
    {
      if ((v39 & 0x2000000000000000) != 0)
      {
        v388[0] = v367;
        v388[1] = v39 & 0xFFFFFFFFFFFFFFLL;
        v402 = v388;
        v396 = v400;
        v397 = v401;
        v398 = v388;
        v399 = v403;
        v387 = -1;

        v49 = fpfs_openfdbyhandle();
        if (v49 < 0)
        {
          v112 = v387;
          v113 = MEMORY[0x1D38683F0]();
          if (v112 < 0)
          {
            LODWORD(aBlock) = 0;
            BYTE4(aBlock) = 1;
            LOBYTE(v395) = 0;
            if (!v113)
            {
              goto LABEL_53;
            }
          }

          else
          {
            LODWORD(aBlock) = v387;
            BYTE4(aBlock) = 0;
            LOBYTE(v395) = 0;
            if (!v113)
            {
              goto LABEL_53;
            }
          }

          v129 = sub_1CF9E6138();
          if ((v129 & 0x100000000) == 0)
          {
            v386 = v129;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
            v130 = swift_allocObject();
            *(v130 + 16) = v370;
            *(v130 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            *(v130 + 40) = v131;
            *(v130 + 72) = &type metadata for VFSFileError;
            v132 = swift_allocObject();
            *(v130 + 48) = v132;
            sub_1CF19A730(&aBlock, v132 + 16);
            sub_1CF4E04E8(v130);
            swift_setDeallocating();
            sub_1CEFCCC44(v130 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
            swift_deallocClassInstance();
            sub_1CF7E1F1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
LABEL_52:
            v137 = v42;
            v138 = v41;
            v140 = v348;
            v139 = v349;
            sub_1CF9E57D8();
            v78 = sub_1CF9E53A8();
            v141 = v140;
            v41 = v138;
            v42 = v137;
            (*v346)(v141, v139);
LABEL_54:
            sub_1CF1969CC(&aBlock);
            swift_willThrow();
            v39, v143, v144, v145, v146, v147, v148, v149;
LABEL_55:
            v378 = 0;
            v44 = v381;
            goto LABEL_56;
          }

LABEL_53:
          sub_1CEFDB034();
          v78 = swift_allocError();
          sub_1CF19A730(&aBlock, v142);
          goto LABEL_54;
        }

        goto LABEL_16;
      }

      if ((v367 & 0x1000000000000000) != 0)
      {
        v402 = ((v39 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v396 = v400;
        v397 = v401;
        v398 = v402;
        v399 = v403;
        LODWORD(v388[0]) = -1;

        v49 = fpfs_openfdbyhandle();
        if (v49 < 0)
        {
          v50 = v388[0];
          v51 = MEMORY[0x1D38683F0]();
          if (v50 < 0)
          {
            LODWORD(aBlock) = 0;
            BYTE4(aBlock) = 1;
            LOBYTE(v395) = 0;
            if (!v51)
            {
              goto LABEL_53;
            }
          }

          else
          {
            LODWORD(aBlock) = v388[0];
            BYTE4(aBlock) = 0;
            LOBYTE(v395) = 0;
            if (!v51)
            {
              goto LABEL_53;
            }
          }

          v133 = sub_1CF9E6138();
          if ((v133 & 0x100000000) == 0)
          {
            v387 = v133;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
            v134 = swift_allocObject();
            *(v134 + 16) = v370;
            *(v134 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            *(v134 + 40) = v135;
            *(v134 + 72) = &type metadata for VFSFileError;
            v136 = swift_allocObject();
            *(v134 + 48) = v136;
            sub_1CF19A730(&aBlock, v136 + 16);
            sub_1CF4E04E8(v134);
            swift_setDeallocating();
            sub_1CEFCCC44(v134 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
            swift_deallocClassInstance();
            sub_1CF7E1F1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
            goto LABEL_52;
          }

          goto LABEL_53;
        }

LABEL_16:
        LODWORD(v384) = v49;
        v380 = v41;
        v376 = v39;
        goto LABEL_17;
      }
    }

    v230 = v378;
    sub_1CF9E7938();
    if (v230)
    {
      v39, v231, v232, v233, v234, v235, v236, v237;
      v78 = v230;
      goto LABEL_55;
    }

    v378 = 0;
    v380 = v41;
    v376 = v39;
    LODWORD(v384) = v389;
LABEL_17:
    v53 = v43 == 0;
    v379 = v42;
    if (!v43)
    {
      v43 = v42;
    }

    v54 = v373;
    os_unfair_lock_lock(v373 + 14);
    v55 = *&v54[16]._os_unfair_lock_opaque;
    v56 = *&v54[18]._os_unfair_lock_opaque;
    v57 = v54[22]._os_unfair_lock_opaque;
    v58 = BYTE1(v54[22]._os_unfair_lock_opaque);
    v59 = BYTE2(v54[22]._os_unfair_lock_opaque);

    v60 = *&v54[20]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v54 + 14);
    v374 = &v343;
    MEMORY[0x1EEE9AC00](v61);
    *(&v343 - 10) = v365;
    *(&v343 - 18) = v384;
    *(&v343 - 7) = 0;
    *(&v343 - 6) = 0;
    *(&v343 - 8) = v54;
    *(&v343 - 40) = v372;
    *(&v343 - 4) = v371;
    *(&v343 - 3) = v43;
    *(&v343 - 16) = v53;
    *(&v343 - 1) = 0;
    v394 = v55;
    v395 = v56;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v392 = sub_1CEFDB088;
    v393 = &block_descriptor_41_0;
    v62 = _Block_copy(&aBlock);
    v375 = v56;
    v63 = v62;

    *&v400 = v63;
    *(&v400 + 1) = v60;
    LOBYTE(v401) = v57;
    BYTE1(v401) = v58;
    BYTE2(v401) = v59;
    sub_1CEFDB034();
    v64 = swift_allocError();
    *v65 = 6;
    *(v65 + 8) = 0u;
    *(v65 + 24) = 0u;
    *(v65 + 40) = 19;
    v66 = v377;
    *v377 = v64;
    swift_storeEnumTagMultiPayload();
    v44 = swift_allocObject();
    v44[2] = v66;
    v44[3] = sub_1CF2B9F90;
    v44[4] = &v343 - 12;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_1CF7E1F94;
    *(v67 + 24) = v44;
    v394 = sub_1CF7E1FB4;
    v395 = v67;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v392 = sub_1CEFDB270;
    v393 = &block_descriptor_52_1;
    v68 = _Block_copy(&aBlock);

    v69 = fpfs_fgetfileattrs_detailed();
    _Block_release(v68);
    LOBYTE(v68) = swift_isEscapingClosureAtFileLocation();

    if (v68)
    {
      goto LABEL_96;
    }

    v70 = v377;
    if (v69)
    {
      swift_getErrorValue();
      v71 = v390;
      v72 = swift_allocError();
      *v73 = 6;
      *(v73 + 8) = 0u;
      *(v73 + 24) = 0u;
      *(v73 + 40) = 19;
      v74 = v69;
      v75 = sub_1CF199074(v72, v71);

      v76 = v356;
      *v356 = v75;
      swift_storeEnumTagMultiPayload();
      sub_1CF1DBC74(v76, v70);
    }

    v77 = v363;
    sub_1CEFCCBDC(v70, v363, &qword_1EC4BE000, &unk_1CFA006A0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *&aBlock = *v77;
      v78 = aBlock;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();

      sub_1CEFCCC44(v70, &qword_1EC4BE000, &unk_1CFA006A0);

      _Block_release(v63);

      v79 = v78;
      LODWORD(aBlock) = sub_1CF9E52A8();
      sub_1CF196978();
      v80 = sub_1CF9E5658();

      v42 = v379;
      v41 = v380;
      if ((v80 & 1) == 0)
      {
        v39 = v376;
        v44 = v381;
        v69 = v383;
        if ((v384 & 0x80000000) == 0)
        {
          close(v384);
        }

        v39, v81, v82, v83, v84, v85, v86, v87;
        goto LABEL_57;
      }

      v88 = v359;
      *v359 = v351;
      *(v88 + 16) = 2;
      swift_storeEnumTagMultiPayload();
      v39 = v376;
      v96 = v358;
    }

    else
    {

      v97 = v77;
      v88 = v359;
      sub_1CEFE55D0(v97, v359, &unk_1EC4BE2F0, qword_1CFA04220);
      sub_1CEFCCC44(v70, &qword_1EC4BE000, &unk_1CFA006A0);

      _Block_release(v63);

      v39 = v376;
      v96 = v358;
      v42 = v379;
      v41 = v380;
    }

    v44 = v381;
    v69 = v383;
    v98 = v360;
    if ((v384 & 0x80000000) == 0)
    {
      close(v384);
    }

    v39, v89, v90, v91, v92, v93, v94, v95;
    sub_1CEFE55D0(v88, v98, &unk_1EC4BE2F0, qword_1CFA04220);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v385, v99, v100, v101, v102, v103, v104, v105;
      0, v238, v239, v240, v241, v242, v243, v244;
      sub_1CEFCCC44(v98, &unk_1EC4BE2F0, qword_1CFA04220);
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      v400 = aBlock;
      MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA5B3B0);
      LODWORD(aBlock) = v353;
      v245 = sub_1CF9E7F98();
      v247 = v246;
      MEMORY[0x1D3868CC0](v245);
      v247, v248, v249, v250, v251, v252, v253, v254;
      MEMORY[0x1D3868CC0](0x6168206874697720, 0xED00003D656C646ELL);
      *&aBlock = v42;
      *(&aBlock + 1) = v44;
      v392 = __PAIR64__(v41, v382);
      v393 = v367;
      v394 = v39;
      sub_1CF9E7B58();
      v39, v255, v256, v257, v258, v259, v260, v261;
      v44 = *(&v400 + 1);
      v69 = v400;
      goto LABEL_92;
    }

    v106 = v98;
    v107 = v357;
    sub_1CF5634F4(v106, v357);
    sub_1CF5634F4(v107, v96);
    v108 = v378;
    sub_1CF7DEC8C(v96, v373, v372, v371, v361);
    if (!v108)
    {
      sub_1CF574A68(v96);
      v385, v262, v263, v264, v265, v266, v267, v268;
      0, v269, v270, v271, v272, v273, v274, v275;
      v39, v276, v277, v278, v279, v280, v281, v282;
      return;
    }

    v78 = v108;
    sub_1CF574A68(v96);
    v378 = 0;
LABEL_57:
    v150 = v78;
    LODWORD(aBlock) = sub_1CF9E5328();
    sub_1CF196978();
    v151 = sub_1CF9E5658();

    if ((v151 & 1) == 0 || v69 >= *v385->tree)
    {
      v177 = v78;
      LODWORD(aBlock) = sub_1CF9E5298();
      v178 = sub_1CF9E5658();

      if ((v178 & 1) != 0 && v69 < *v385->tree)
      {

        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v179 = qword_1EDEBB5A0;
        v180 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v181 = swift_allocObject();
        *(v181 + 16) = v370;
        *(v181 + 56) = MEMORY[0x1E69E6158];
        *(v181 + 64) = sub_1CEFD51C4();
        v182 = v352;
        *(v181 + 32) = 0xD000000000000031;
        *(v181 + 40) = v182;
        sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v179, v180, v181);
        v181, v183, v184, v185, v186, v187, v188, v189;
        v366 = 1;
        goto LABEL_80;
      }

      v190 = v78;
      LODWORD(aBlock) = sub_1CF9E5358();
      v191 = sub_1CF9E5658();

      if ((v191 & 1) != 0 && v69 < *v385->tree)
      {
        v39, v192, v193, v194, v195, v196, v197, v198;

        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v199 = qword_1EDEBB5A0;
        v200 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v201 = swift_allocObject();
        *(v201 + 16) = v370;
        *(v201 + 56) = MEMORY[0x1E69E6158];
        *(v201 + 64) = sub_1CEFD51C4();
        *(v201 + 32) = 0xD000000000000032;
        *(v201 + 40) = v350;
        sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v199, v200, v201);
        v201, v202, v203, v204, v205, v206, v207, v208;
        v42 = 0;
        v44 = 0;
        v41 = 0;
        v367 = 0;
        v39 = 0;
        v43 = v353;
      }

      else
      {
        v209 = v78;
        LODWORD(aBlock) = sub_1CF9E52B8();
        v210 = sub_1CF9E5658();

        if ((v210 & 1) == 0)
        {
          v218 = v385;
LABEL_90:
          v218, v211, v212, v213, v214, v215, v216, v217;
          v39, v283, v284, v285, v286, v287, v288, v289;
          0, v290, v291, v292, v293, v294, v295, v296;
          *&aBlock = 0;
          *(&aBlock + 1) = 0xE000000000000000;
          sub_1CF9E7948();
          *(&aBlock + 1), v297, v298, v299, v300, v301, v302, v303;
          *&aBlock = 0xD000000000000012;
          *(&aBlock + 1) = 0x80000001CFA5B250;
          LODWORD(v400) = v353;
          v304 = sub_1CF9E7F98();
          v306 = v305;
          MEMORY[0x1D3868CC0](v304);
          v306, v307, v308, v309, v310, v311, v312, v313;
          v314 = *(&aBlock + 1);
          sub_1CF7E16A8(v78, aBlock, *(&aBlock + 1));

          v322 = v314;
          goto LABEL_94;
        }

        v218 = v385;
        if (v69 >= *v385->tree)
        {
          goto LABEL_90;
        }

        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v219 = qword_1EDEBB5A0;
        v220 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v221 = swift_allocObject();
        *(v221 + 16) = v370;
        *(v221 + 56) = MEMORY[0x1E69E6158];
        *(v221 + 64) = sub_1CEFD51C4();
        v222 = v355;
        *(v221 + 32) = 0xD000000000000031;
        *(v221 + 40) = v222;
        sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v219, v220, v221);
        v221, v223, v224, v225, v226, v227, v228, v229;
LABEL_80:
        v43 = v382;
      }

      v40 = v368;
      v176 = v385;
      goto LABEL_82;
    }

    v385, v152, v153, v154, v155, v156, v157, v158;

    if (v366)
    {
      break;
    }

    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v166 = qword_1EDEBB5A0;
    v167 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v168 = swift_allocObject();
    *(v168 + 16) = v370;
    *(v168 + 56) = MEMORY[0x1E69E6158];
    *(v168 + 64) = sub_1CEFD51C4();
    *(v168 + 32) = 0xD000000000000032;
    *(v168 + 40) = v354;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v166, v167, v168);
    v168, v169, v170, v171, v172, v173, v174, v175;
    v366 = 0;
    if (v69 >= 3)
    {
      v69 = 3;
    }

    v176 = &unk_1F4BED688;
    v43 = v382;
    v40 = v368;
LABEL_82:
    if (v69 >= *v176->tree)
    {
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v385 = v176;
    v37 = usleep(*(&v176[1].super.isa + v69));
    v383 = v69 + 1;
  }

  0, v159, v160, v161, v162, v163, v164, v165;
  v39, v323, v324, v325, v326, v327, v328, v329;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000032, 0x80000001CFA5B370);
  LODWORD(v400) = v353;
  v330 = sub_1CF9E7F98();
  v332 = v331;
  MEMORY[0x1D3868CC0](v330);
  v332, v333, v334, v335, v336, v337, v338, v339;
  v44 = *(&aBlock + 1);
  v69 = aBlock;
LABEL_92:
  if (qword_1EDEA3408 == -1)
  {
    goto LABEL_93;
  }

LABEL_97:
  swift_once();
LABEL_93:
  v340 = qword_1EDEBB5A0;
  v341 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v342 = swift_allocObject();
  *(v342 + 16) = v370;
  *(v342 + 56) = MEMORY[0x1E69E6158];
  *(v342 + 64) = sub_1CEFD51C4();
  *(v342 + 32) = v69;
  *(v342 + 40) = v44;
  sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v340, v341, v342);
  v322 = v342;
LABEL_94:
  v322, v315, v316, v317, v318, v319, v320, v321;
  (*(v344 + 56))(v361, 1, 1, v345);
}

void sub_1CF7E16A8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD908, &unk_1CF9FA540);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v78 - v7;
  v9 = sub_1CF9E53C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v78 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v78 - v17;
  v80 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v20 = swift_dynamicCast();
  v21 = *(v10 + 56);
  if (v20)
  {
    v21(v8, 0, 1, v9);
    (*(v10 + 32))(v18, v8, v9);
    v22 = sub_1CF008708(&unk_1F4BED5F8);
    sub_1CF7E1F1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57A8();
    v23 = sub_1CF9E6148();
    v24 = sub_1CF008830(v23, v22);
    v22, v25, v26, v27, v28, v29, v30, v31;
    if (v24)
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v32 = qword_1EDEBB5A0;
      v33 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1CF9FA440;
      *(v34 + 56) = MEMORY[0x1E69E6158];
      *(v34 + 64) = sub_1CEFD51C4();
      *(v34 + 32) = a2;
      *(v34 + 40) = a3;

      sub_1CF9E57A8();
      v35 = sub_1CF9E6148();
      v36 = MEMORY[0x1E69E7358];
      *(v34 + 96) = MEMORY[0x1E69E72F0];
      *(v34 + 104) = v36;
      *(v34 + 72) = v35;
      sub_1CF9E6018("[DEBUG] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v32, v33, v34);
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v59 = qword_1EDEBB5A0;
      v60 = sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1CF9FA440;
      *(v34 + 56) = MEMORY[0x1E69E6158];
      *(v34 + 64) = sub_1CEFD51C4();
      *(v34 + 32) = a2;
      *(v34 + 40) = a3;

      sub_1CF9E57A8();
      v61 = sub_1CF9E6148();
      v62 = MEMORY[0x1E69E7358];
      *(v34 + 96) = MEMORY[0x1E69E72F0];
      *(v34 + 104) = v62;
      *(v34 + 72) = v61;
      sub_1CF9E6018("[ERROR] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v59, v60, v34);
    }

    v34, v37, v38, v39, v40, v41, v42, v43;
    (*(v10 + 8))(v18, v9);
  }

  else
  {
    v21(v8, 1, 1, v9);
    sub_1CEFCCC44(v8, &qword_1EC4BD908, &unk_1CF9FA540);
    v80 = a1;
    v44 = a1;
    if (swift_dynamicCast())
    {
      v79 = *(v10 + 8);
      v79(v15, v9);
      v80 = a1;
      v45 = a1;
      swift_dynamicCast();
      sub_1CF7E1F1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      sub_1CF9E57A8();
      v46 = sub_1CF9E6148();
      if (sub_1CF008830(v46, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v47 = qword_1EDEBB5A0;
        v48 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_1CF9FA440;
        *(v49 + 56) = MEMORY[0x1E69E6158];
        *(v49 + 64) = sub_1CEFD51C4();
        *(v49 + 32) = a2;
        *(v49 + 40) = a3;

        sub_1CF9E57A8();
        v50 = sub_1CF9E6148();
        v51 = MEMORY[0x1E69E7358];
        *(v49 + 96) = MEMORY[0x1E69E72F0];
        *(v49 + 104) = v51;
        *(v49 + 72) = v50;
        sub_1CF9E6018("[DEBUG] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v47, v48, v49);
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v74 = qword_1EDEBB5A0;
        v75 = sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_1CF9FA440;
        *(v49 + 56) = MEMORY[0x1E69E6158];
        *(v49 + 64) = sub_1CEFD51C4();
        *(v49 + 32) = a2;
        *(v49 + 40) = a3;

        sub_1CF9E57A8();
        v76 = sub_1CF9E6148();
        v77 = MEMORY[0x1E69E7358];
        *(v49 + 96) = MEMORY[0x1E69E72F0];
        *(v49 + 104) = v77;
        *(v49 + 72) = v76;
        sub_1CF9E6018("[ERROR] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v74, v75, v49);
      }

      v49, v52, v53, v54, v55, v56, v57, v58;
      v79(v12, v9);
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v63 = qword_1EDEBB5A0;
      v64 = sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_1CF9FA440;
      *(v65 + 56) = MEMORY[0x1E69E6158];
      *(v65 + 64) = sub_1CEFD51C4();
      *(v65 + 32) = a2;
      *(v65 + 40) = a3;

      v66 = sub_1CF9E57E8();
      *(v65 + 96) = sub_1CF1B7E64();
      *(v65 + 104) = sub_1CF7E1F1C(&qword_1EC4C11C0, sub_1CF1B7E64, MEMORY[0x1E69E81C8]);
      *(v65 + 72) = v66;
      sub_1CF9E6018("[ERROR] %@ %@", 13, 2, &dword_1CEFC7000, v63, v64, v65);
      v65, v67, v68, v69, v70, v71, v72, v73;
    }
  }
}

uint64_t sub_1CF7E1F1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1CF7E1F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

uint64_t static DispatchTime.notifyUpdateTimeout()()
{
  v0 = sub_1CF9E6498();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E6478();
  sub_1CF9E64C8();
  return (*(v1 + 8))(v3, v0);
}

BOOL sub_1CF7E208C(uint64_t a1)
{
  v2 = sub_1CF9E5A58();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v66 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  if ((sub_1CF9E5848() & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 119);
  }

  sub_1CEFFBA1C(v11);
  v68 = sub_1CF9E5A18();
  v69 = v12;
  v67 = *(v3 + 8);
  v67(v11, v2);
  v20 = 0;
  v70 = *(a1 + 16);
  v71 = v3 + 16;
  do
  {
    v32 = v20;
    if (v70 == v20)
    {
      break;
    }

    v33 = a1;
    v34 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20;
    v35 = *(v3 + 16);
    v35(v8, v34, v2);
    if ((sub_1CF9E5848() & 1) == 0)
    {
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 102);
    }

    sub_1CF9E5A18();
    v37 = v36;
    v38 = sub_1CF9E6AE8();
    v37, v39, v40, v41, v42, v43, v44, v45;
    if (v38)
    {
      v46 = sub_1CF9E5A18();
      v48 = v47;
      v72 = 0x657461766972702FLL;
      v73 = 0xE800000000000000;
      MEMORY[0x1D3868CC0](v46);
      v48, v49, v50, v51, v52, v53, v54, v55;
      v56 = v73;
      sub_1CF9E58C8();
      v56, v57, v58, v59, v60, v61, v62, v63;
    }

    else
    {
      v35(v5, v8, v2);
    }

    a1 = v33;
    sub_1CF9E5A18();
    v22 = v21;
    v23 = v67;
    v67(v5, v2);
    v24 = sub_1CF9E6AE8();
    v22, v25, v26, v27, v28, v29, v30, v31;
    v23(v8, v2);
    v20 = v32 + 1;
  }

  while ((v24 & 1) == 0);
  v64 = v70 != v32;
  v69, v13, v14, v15, v16, v17, v18, v19;
  return v64;
}

void sub_1CF7E2388(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1CF9E5928();
  v2 = sub_1CF9E6EB8();
  v3 = *MEMORY[0x1E695DB80];
  v7[0] = 0;
  v4 = [v1 setResourceValue:v2 forKey:v3 error:v7];

  if (v4)
  {
    v5 = v7[0];
  }

  else
  {
    v6 = v7[0];
    sub_1CF9E57F8();

    swift_willThrow();
  }
}

uint64_t sub_1CF7E2460()
{
  v0 = sub_1CF9E5A58();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1CF9E5848() & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 140);
  }

  sub_1CEFFBA1C(v3);
  v4 = sub_1CF9E5A18();
  v6 = v5;
  v7 = *(v1 + 8);
  v7(v3, v0);
  sub_1CEFFBA1C(v3);
  sub_1CF9E5A18();
  v9 = v8;
  v7(v3, v0);
  if (sub_1CF9E6AE8())
  {
    sub_1CF9E69D8();
    v9, v17, v18, v19, v20, v21, v22, v23;
    v24 = sub_1CF9E6A18();
    v25 = sub_1CF025150(v24, v4, v6);
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v6, v26, v28, v30, v32, v33, v34, v35;
    v36 = MEMORY[0x1D3868C10](v25, v27, v29, v31);
    v31, v37, v38, v39, v40, v41, v42, v43;
    return v36;
  }

  else
  {
    v6, v10, v11, v12, v13, v14, v15, v16;
    v9, v45, v46, v47, v48, v49, v50, v51;
    return 0;
  }
}

void sub_1CF7E2674(uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_1CF50EB9C;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1CF005DF8;
  v9[3] = &block_descriptor_16_0;
  v8 = _Block_copy(v9);

  LODWORD(a2) = fpfs_open();
  _Block_release(v8);
  *a4 = a2;
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }
}

BOOL sub_1CF7E27B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v36 = a4;
  v37 = a3;
  v6 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v34 - v10);
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v19 = &v34 - v18;
  v20 = [a1 documentsURL];
  sub_1CF9E59D8();

  sub_1CEFFBA1C(v19);
  v21 = *(v13 + 8);
  v21(v15, v12);
  sub_1CF9E5A18();
  v23 = v22;
  v24 = sub_1CF9E6AE8();
  v23, v25, v26, v27, v28, v29, v30, v31;
  if (v24)
  {
    sub_1CF004C30(v35, v8);
    sub_1CF00095C(a1, v8, v11);
    v21(v19, v12);
    v32 = type metadata accessor for LocalContainer(0);
    (*(*(v32 - 8) + 56))(v11, 0, 1, v32);
    sub_1CF7E2AA4(v11, v36);
  }

  else
  {
    v21(v19, v12);
  }

  return (v24 & 1) == 0;
}

uint64_t sub_1CF7E2A3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF7E2AA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF7E2B44()
{
  sub_1CF518D90();
  result = sub_1CF9E75B8();
  qword_1EDEBB5A0 = result;
  return result;
}

uint64_t sub_1CF7E2BAC(uint64_t a1)
{
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v2 = v1;
  v3 = sub_1CF9E6AE8();
  v2, v4, v5, v6, v7, v8, v9, v10;
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;
  v13 = sub_1CF9E6A18();
  v12, v14, v15, v16, v17, v18, v19, v20;
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v23 = v22;
  v24 = sub_1CF025150(v13, v21, v22);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v23, v25, v27, v29, v31, v32, v33, v34;
  if (!((v24 ^ v26) >> 14))
  {
    v30, v35, v36, v37, v38, v39, v40, v41;
    return 0;
  }

  v42 = sub_1CF0254A0(v24, v26, v28, v30, 10);
  if ((v43 & 0x100) != 0)
  {
    sub_1CF4C53EC(v24, v26, v28, v30, 10);
  }

  v50 = v42;
  v51 = v43;
  v30, v43, v44, v45, v46, v47, v48, v49;
  if (v51)
  {
    return 0;
  }

  else
  {
    return v50;
  }
}

unint64_t sub_1CF7E2CEC(uint64_t a1)
{
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v2 = v1;
  v3 = sub_1CF9E6AE8();
  v2, v4, v5, v6, v7, v8, v9, v10;
  if ((v3 & 1) == 0)
  {
    goto LABEL_9;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;
  v13 = sub_1CF9E6A18();
  v12, v14, v15, v16, v17, v18, v19, v20;
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v23 = v22;
  v24 = sub_1CF025150(v13, v21, v22);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v23, v25, v27, v29, v31, v32, v33, v34;
  if (!((v24 ^ v26) >> 14))
  {
    v30, v35, v36, v37, v38, v39, v40, v41;
LABEL_9:
    v52 = 0;
    LOBYTE(v51) = 1;
    return v52 | ((v51 & 1) << 32);
  }

  v49 = sub_1CF4C5F04(v24, v26, v28, v30, 10);
  if ((v49 & 0x10000000000) != 0)
  {
    sub_1CF4C597C(v24, v26, v28, v30, 10);
    v49 = v50;
  }

  v30, v42, v43, v44, v45, v46, v47, v48;
  v51 = (v49 & 0x100000000uLL) >> 32;
  v52 = v49;
  if ((v49 & 0x100000000) != 0)
  {
    v52 = 0;
  }

  return v52 | ((v51 & 1) << 32);
}

uint64_t sub_1CF7E2E40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF7E2EF0(uint64_t a1, __int16 a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1CF1F77F0(0, (*v5->tree + 1), 1, v5, v7, v8, v9, v10);
    v5 = result;
  }

  v12 = *v5->tree;
  v11 = *v5->tester;
  if (v12 >= v11 >> 1)
  {
    result = sub_1CF1F77F0((v11 > 1), (v12 + 1), 1, v5, v7, v8, v9, v10);
    v5 = result;
  }

  *v5->tree = v12 + 1;
  v13 = v5 + 16 * v12;
  *(v13 + 4) = a1;
  v13[40] = a2;
  v13[41] = HIBYTE(a2) & 1;
  *v2 = v5;
  return result;
}

uint64_t sub_1CF7E2FC8(uint64_t a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = a2(0, *(v9 + 16) + 1, 1, v9);
  }

  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  if (v11 >= v10 >> 1)
  {
    v9 = a2(v10 > 1, v11 + 1, 1, v9);
  }

  *(v9 + 16) = v11 + 1;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  result = sub_1CEFE55D0(a1, v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11, a3, a4);
  *v4 = v9;
  return result;
}

__n128 sub_1CF7E3104(__int128 *a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = a2(0, *(v5 + 16) + 1, 1, v5);
  }

  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  if (v7 >= v6 >> 1)
  {
    v5 = a2(v6 > 1, v7 + 1, 1, v5);
  }

  *(v5 + 16) = v7 + 1;
  v8 = v5 + 120 * v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[3];
  *(v8 + 64) = a1[2];
  *(v8 + 80) = v11;
  *(v8 + 32) = v9;
  *(v8 + 48) = v10;
  result = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  *(v8 + 144) = *(a1 + 28);
  *(v8 + 112) = v13;
  *(v8 + 128) = v14;
  *(v8 + 96) = result;
  *v2 = v5;
  return result;
}

uint64_t sub_1CF7E3230(uint64_t a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = a2(v7 > 1, v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + 8 * v8 + 32) = a1;
  *v2 = v5;
  return result;
}

double sub_1CF7E32DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  swift_retain_n();
  sub_1CEFD09A0(a2);
  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E7298();
  if (os_log_type_enabled(v15, v16))
  {
    HIDWORD(v48) = v16;
    v49 = v11;
    v50 = v10;
    v51 = a3;
    v52 = a4;
    v53 = v5;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v56 = v18;
    *v17 = 136315394;
    v19 = sub_1CEFD11AC(a2);
    v21 = v20;
    sub_1CEFD0A98(a2);
    v22 = sub_1CEFD0DF0(v19, v21, &v56);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v30 = swift_beginAccess();
    v31 = *(a1 + 32);
    v32 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v33 = NSFileProviderItemIdentifier.description.getter(v31);
      v35 = v34;
      sub_1CEFD0994(v31, v32, 1);
    }

    else
    {
      v54 = *(a1 + 32);
      v55 = v32;
      v33 = VFSItemID.description.getter(v30);
      v35 = v36;
    }

    v37 = sub_1CEFD0DF0(v33, v35, &v56);
    v35, v38, v39, v40, v41, v42, v43, v44;
    *(v17 + 14) = v37;
    _os_log_impl(&dword_1CEFC7000, v15, BYTE4(v48), "🥄 Forcing ingestion for %s with item ID %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v18, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);

    (*(v49 + 8))(v13, v50);
    a4 = v52;
    v5 = v53;
    a3 = v51;
  }

  else
  {

    sub_1CEFD0A98(a2);

    (*(v11 + 8))(v13, v10);
  }

  v45 = swift_allocObject();
  *(v45 + 16) = a3;
  *(v45 + 24) = a4;
  v46 = swift_allocObject();
  v46[2] = a1;
  v46[3] = v5;
  v46[4] = a2;
  v46[5] = a3;
  v46[6] = a4;

  sub_1CEFD09A0(a2);

  sub_1CF7AAF88("propagateToFP(for:userRequest:completionHandler:)", 49, 2, 2, sub_1CF8FE5D4, v45, sub_1CF8FE638, v46);

  return result;
}

uint64_t sub_1CF7E3680(uint64_t a1, void (*a2)(char *, _OWORD *, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  a2(v6, v9, a1);
  sub_1CEFCCC44(v9, &qword_1EC4C0700, &qword_1CFA05B10);
  return sub_1CEFCCC44(v6, &qword_1EC4C1B40, &unk_1CF9FCB70);
}

void sub_1CF7E37A8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), void *a6)
{
  v135 = a5;
  v136 = a6;
  v134 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v126 = v116 - v10;
  v124 = sub_1CF9E63D8();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v122 = v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v133 = v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v138 = v116 - v15;
  v16 = sub_1CF9E6068();
  v131 = *(v16 - 8);
  v132 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v129 = v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v127 = v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v137 = v116 - v21;
  v128 = type metadata accessor for Signpost(0);
  v130 = *(v128 - 8);
  v22 = *(v130 + 8);
  MEMORY[0x1EEE9AC00](v128);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v116 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v116 - v27;
  v30 = a1[3];
  v29 = a1[4];
  v125 = a1;
  v31 = __swift_project_boxed_opaque_existential_1(a1, v30);
  v32 = a3;
  v33 = *(a3 + 16);
  v34 = v139;
  sub_1CF554678(v33, 0, v31, v30, v29, &v145);
  if (!v34)
  {
    v35 = v134;
    v118 = v22;
    v119 = v25;
    v120 = v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = v33;
    v121 = v28;
    v139 = 0;
    v37 = v145;
    v38 = v146;
    if (v147)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      v40 = v126;
      (*(*(v39 - 8) + 56))(v126, 1, 1, v39);
      sub_1CF1A91AC(v125, &aBlock);
      v41 = FPItemNotFoundError();
      (v135)(v40, &aBlock, v41);

      sub_1CEFD0994(v37, v38, 1);
      sub_1CEFCCC44(&aBlock, &qword_1EC4C0700, &qword_1CFA05B10);
      sub_1CEFCCC44(v40, &qword_1EC4C1B40, &unk_1CF9FCB70);
    }

    else
    {
      v42 = swift_allocObject();
      *(v42 + 16) = v35;
      *(v42 + 24) = a2;
      v43 = v136;
      *(v42 + 32) = v135;
      *(v42 + 40) = v43;
      v116[1] = v32;
      *(v42 + 48) = v32;
      *(v42 + 56) = v37;
      *(v42 + 64) = v38;
      v44 = swift_allocObject();
      *(v44 + 16) = v37;
      *(v44 + 24) = v38;
      *(v44 + 32) = v35;
      *(v44 + 40) = v36;
      *(v44 + 48) = sub_1CF8FE664;
      *(v44 + 56) = v42;
      v126 = v44;
      v45 = swift_allocObject();
      *(v45 + 16) = sub_1CF8FE664;
      *(v45 + 24) = v42;
      v135 = v45;
      sub_1CEFD09A0(v35);

      sub_1CEFD09A0(v35);
      v134 = v42;

      v117 = v36;

      v136 = fpfs_adopt_log();
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v46 = qword_1EDEBBE40;
      v47 = v131;
      v48 = v132;
      v49 = v137;
      (v131)[7](v137, 1, 1, v132);
      strcpy(&aBlock, "async batch ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v50 = sub_1CF9E7988();
      v52 = v51;
      MEMORY[0x1D3868CC0](v50);
      v52, v53, v54, v55, v56, v57, v58, v59;
      v60 = *(&aBlock + 1);
      v125 = aBlock;
      v61 = v127;
      sub_1CEFCCBDC(v49, v127, &unk_1EC4BED20, &unk_1CFA00700);
      v62 = v47[6];
      v63 = v62(v61, 1, v48);
      v64 = v121;
      v65 = v129;
      if (v63 == 1)
      {
        v66 = v46;
        sub_1CF9E6048();
        if (v62(v61, 1, v48) != 1)
        {
          sub_1CEFCCC44(v61, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        (v47[4])(v129, v61, v48);
      }

      (v47[2])(v64, v65, v48);
      v67 = v128;
      *(v64 + *(v128 + 20)) = v46;
      v68 = v64 + *(v67 + 24);
      *v68 = "DB queue wait";
      *(v68 + 8) = 13;
      *(v68 + 16) = 2;
      v69 = v46;
      v70 = sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v71 = v64;
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_1CF9FA450;
      *(v72 + 56) = MEMORY[0x1E69E6158];
      *(v72 + 64) = sub_1CEFD51C4();
      *(v72 + 32) = v125;
      *(v72 + 40) = v60;
      sub_1CF9E6028(v70, &dword_1CEFC7000, v69, "DB queue wait", 13, 2, v71, "%s", 2);
      v72, v73, v74, v75, v76, v77, v78, v79;
      (v47[1])(v65, v48);
      sub_1CEFCCC44(v137, &unk_1EC4BED20, &unk_1CFA00700);
      v131 = *(v117 + 168);
      v137 = *(v117 + 64);
      v80 = sub_1CF9E6448();
      v81 = *(v80 - 8);
      v128 = v80;
      v129 = v81;
      (*(v81 + 7))(v138, 1, 1, v80);
      v82 = v71;
      v83 = v119;
      sub_1CEFDA34C(v71, v119, type metadata accessor for Signpost);
      v84 = (*(v130 + 80) + 16) & ~*(v130 + 80);
      v85 = (v118 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
      v86 = swift_allocObject();
      v130 = type metadata accessor for Signpost;
      sub_1CEFDA0C4(v83, v86 + v84, type metadata accessor for Signpost);
      v87 = (v86 + v85);
      v132 = sub_1CF902CD4;
      v88 = v135;
      *v87 = sub_1CF902CD4;
      v87[1] = v88;
      v89 = v82;
      v90 = v120;
      sub_1CEFDA34C(v89, v120, type metadata accessor for Signpost);
      v91 = (v85 + 23) & 0xFFFFFFFFFFFFFFF8;
      v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
      v93 = (v92 + 25) & 0xFFFFFFFFFFFFFFF8;
      v94 = (v93 + 23) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      sub_1CEFDA0C4(v90, v95 + v84, v130);
      v96 = (v95 + v85);
      *v96 = sub_1CF045408;
      v96[1] = 0;
      *(v95 + v91) = v117;
      v97 = v95 + v92;
      v98 = v128;
      *v97 = "propagateToFP(itemID:request:completion:)";
      *(v97 + 8) = 41;
      *(v97 + 16) = 2;
      v99 = (v95 + v93);
      v100 = v135;
      *v99 = v132;
      v99[1] = v100;
      v101 = (v95 + v94);
      v102 = v126;
      *v101 = sub_1CF9033DC;
      v101[1] = v102;
      v103 = swift_allocObject();
      v103[2] = sub_1CF903308;
      v103[3] = v86;
      v104 = v131;
      v103[4] = v131;
      swift_retain_n();

      v132 = v86;
      v105 = v129;

      v106 = fpfs_current_log();
      v131 = v104[2];
      v107 = v133;
      sub_1CEFCCBDC(v138, v133, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v105 + 6))(v107, 1, v98) == 1)
      {
        sub_1CEFCCC44(v107, &unk_1EC4BE370, qword_1CFA01B30);
        v108 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v109 = v122;
        sub_1CF9E6438();
        (*(v105 + 1))(v107, v98);
        v108 = sub_1CF9E63C8();
        (*(v123 + 8))(v109, v124);
      }

      v110 = swift_allocObject();
      v110[2] = v106;
      v110[3] = sub_1CF4858EC;
      v110[4] = v95;
      v143 = sub_1CF2BA17C;
      v144 = v110;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v141 = sub_1CEFCA444;
      v142 = &block_descriptor_4385;
      v111 = _Block_copy(&aBlock);
      v112 = v106;

      v143 = sub_1CF2BA180;
      v144 = v103;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v141 = sub_1CEFCA444;
      v142 = &block_descriptor_4388;
      v113 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v131, v137, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v108, v111, v113);
      _Block_release(v113);
      _Block_release(v111);

      sub_1CEFCCC44(v138, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CEFD5338(v121, type metadata accessor for Signpost);
      v114 = v136;
      v115 = fpfs_adopt_log();
    }
  }
}

uint64_t sub_1CF7E4514(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t, __int128 *, void *), uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v125 = a6;
  v126 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v118 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v122 = &v118 - v22;
  v124 = sub_1CF9E6118();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v118 - v25;
  v136 = a8;
  v137 = a9;
  if (a2)
  {
    v27 = a1;
    v28 = a2;
    v29 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v30 = a2;

    sub_1CEFD09A0(a3);
    v31 = sub_1CF9E6108();
    v32 = sub_1CF9E72A8();

    if (os_log_type_enabled(v31, v32))
    {
      LODWORD(v121) = v32;
      v33 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *&v130 = v120;
      *v33 = 136315650;
      v34 = sub_1CEFD11AC(a3);
      v36 = v35;
      sub_1CEFD0A98(a3);
      v37 = sub_1CEFD0DF0(v34, v36, &v130);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v45 = swift_beginAccess();
      v46 = *(a4 + 32);
      v47 = *(a4 + 40);
      if (*(a4 + 41))
      {
        v48 = NSFileProviderItemIdentifier.description.getter(v46);
        v50 = v49;
        sub_1CEFD0994(v46, v47, 1);
      }

      else
      {
        *&v133 = *(a4 + 32);
        BYTE8(v133) = v47;
        v48 = VFSItemID.description.getter(v45);
        v50 = v56;
      }

      v57 = sub_1CEFD0DF0(v48, v50, &v130);
      v50, v58, v59, v60, v61, v62, v63, v64;
      *(v33 + 14) = v57;
      *(v33 + 22) = 2112;
      swift_getErrorValue();
      v65 = Error.prettyDescription.getter(v127, v128);
      *(v33 + 24) = v65;
      v66 = v119;
      *v119 = v65;
      _os_log_impl(&dword_1CEFC7000, v31, v121, "🥄 ❌ Failed force ingestion for %s with item ID %s. error: %@", v33, 0x20u);
      sub_1CEFCCC44(v66, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v66, -1, -1);
      v67 = v120;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v67, -1, -1);
      MEMORY[0x1D386CDC0](v33, -1, -1);
    }

    else
    {

      sub_1CEFD0A98(a3);
    }

    (*(v123 + 8))(v26, v124);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    v69 = v122;
    (*(*(v68 - 8) + 56))(v122, 1, 1, v68);
    sub_1CEFCCBDC(v27, &v130, &unk_1EC4C1B30, &qword_1CFA05300);
    v70 = v131;
    if (v131)
    {
      v71 = v132;
      v72 = __swift_project_boxed_opaque_existential_1(&v130, v131);
      *(&v134 + 1) = v70;
      v135 = *(v71 + 8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v133);
      (*(*(v70 - 8) + 16))(boxed_opaque_existential_0, v72, v70);
      __swift_destroy_boxed_opaque_existential_1(&v130);
    }

    else
    {
      sub_1CEFCCC44(&v130, &unk_1EC4C1B30, &qword_1CFA05300);
      v133 = 0u;
      v134 = 0u;
      v135 = 0;
    }

    v74 = a2;
    v126(v69, &v133, a2);

    sub_1CEFCCC44(v69, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v75 = &qword_1EC4C0700;
    v76 = &qword_1CFA05B10;
    v77 = &v133;
  }

  else
  {
    v122 = v24;
    sub_1CEFCCBDC(a1, &v130, &unk_1EC4C1B30, &qword_1CFA05300);
    if (v131)
    {
      sub_1CF054EA0(&v130, &v133);
      v51 = *(&v134 + 1);
      v52 = v135;
      v53 = __swift_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
      v54 = *(**(*(a7 + 16) + 32) + 240);
      v55 = *(v52 + 8);

      v54(&v136, 1, v53, v51, v55);

      v100 = *(&v134 + 1);
      v101 = v135;
      v102 = __swift_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
      v131 = v100;
      v132 = *(v101 + 8);
      v103 = __swift_allocate_boxed_opaque_existential_0(&v130);
      (*(*(v100 - 8) + 16))(v103, v102, v100);
      v126(v20, &v130, 0);
      sub_1CEFCCC44(v20, &qword_1EC4C1B40, &unk_1CF9FCB70);
      sub_1CEFCCC44(&v130, &qword_1EC4C0700, &qword_1CFA05B10);
      return __swift_destroy_boxed_opaque_existential_1(&v133);
    }

    sub_1CEFCCC44(&v130, &unk_1EC4C1B30, &qword_1CFA05300);
    v78 = fpfs_current_or_default_log();
    v79 = v122;
    sub_1CF9E6128();
    swift_retain_n();
    sub_1CEFD09A0(a3);
    v80 = sub_1CF9E6108();
    v81 = sub_1CF9E72A8();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v129[0] = v121;
      *v82 = 136315394;
      v83 = sub_1CEFD11AC(a3);
      v85 = v84;
      sub_1CEFD0A98(a3);
      v86 = sub_1CEFD0DF0(v83, v85, v129);
      v85, v87, v88, v89, v90, v91, v92, v93;
      *(v82 + 4) = v86;
      *(v82 + 12) = 2080;
      v94 = swift_beginAccess();
      v95 = *(a4 + 32);
      v96 = *(a4 + 40);
      if (*(a4 + 41))
      {
        v97 = NSFileProviderItemIdentifier.description.getter(v95);
        v99 = v98;
        sub_1CEFD0994(v95, v96, 1);
      }

      else
      {
        *&v133 = *(a4 + 32);
        BYTE8(v133) = v96;
        v97 = VFSItemID.description.getter(v94);
        v99 = v105;
      }

      v106 = sub_1CEFD0DF0(v97, v99, v129);
      v99, v107, v108, v109, v110, v111, v112, v113;
      *(v82 + 14) = v106;
      _os_log_impl(&dword_1CEFC7000, v80, v81, "🥄 ❌ Failed force ingestion for %s with item ID %s. error: no connection", v82, 0x16u);
      v114 = v121;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v114, -1, -1);
      MEMORY[0x1D386CDC0](v82, -1, -1);

      (*(v123 + 8))(v122, v124);
    }

    else
    {

      sub_1CEFD0A98(a3);

      (*(v123 + 8))(v79, v124);
    }

    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    (*(*(v115 - 8) + 56))(v17, 1, 1, v115);
    sub_1CF24CD3C();
    v133 = 0u;
    v134 = 0u;
    v135 = 0;
    v116 = swift_allocError();
    *v117 = 4;
    *(v117 + 8) = 0u;
    *(v117 + 24) = 0u;
    *(v117 + 40) = 0;
    *(v117 + 48) = 9;
    v126(v17, &v133, v116);

    sub_1CEFCCC44(&v133, &qword_1EC4C0700, &qword_1CFA05B10);
    v75 = &qword_1EC4C1B40;
    v76 = &unk_1CF9FCB70;
    v77 = v17;
  }

  return sub_1CEFCCC44(v77, v75, v76);
}

void sub_1CF7E5024(void *a1, uint64_t a2, char *a3, void (*a4)(uint64_t a1), uint64_t a5, unint64_t a6)
{
  v257 = a3;
  v252 = a6;
  v253 = a4;
  v254 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v247 = &v239 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v248 = *(v10 - 8);
  v11 = *(v248 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v244 = &v239 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v249 = (&v239 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v250 = &v239 - v15;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  MEMORY[0x1EEE9AC00](v245);
  v246 = (&v239 - v16);
  v256 = sub_1CF9E6118();
  v251 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v18 = &v239 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v239 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v239 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v255 = a1;
  v27 = __swift_project_boxed_opaque_existential_1(a1, v26);
  v28 = v258;
  v29 = *(v257 + 2);
  sub_1CF554678(v29, 0, v27, v26, v25, &v265);
  if (!v28)
  {
    v242 = v11;
    v243 = v24;
    v30 = v21;
    v257 = v18;
    v258 = a2;
    v31 = v256;
    v32 = v255[3];
    v33 = v255[4];
    v34 = __swift_project_boxed_opaque_existential_1(v255, v32);

    sub_1CF68DB40(&v265, v34, v32, v33, v264);
    v255 = v29;

    memcpy(v263, v264, sizeof(v263));
    if (sub_1CF08B99C(v263) == 1)
    {
      memcpy(v262, v264, sizeof(v262));
      sub_1CEFCCC44(v262, &unk_1EC4BFC20, &unk_1CFA0A290);
      v35 = v258;
LABEL_9:
      (v253)((*(v35 + 25) & 1) != 0, 0);
LABEL_10:
      sub_1CEFD0994(v265, v266, v267);
      return;
    }

    memcpy(v262, v264, sizeof(v262));
    v35 = v258;
    if (LOBYTE(v262[1]) == 255 || !v262[31] || v262[24] >> 60 == 11 || LOBYTE(v262[43]))
    {
      sub_1CEFCCC44(v262, &unk_1EC4BFC20, &unk_1CFA0A290);
      goto LABEL_9;
    }

    v36 = fpfs_current_or_default_log();
    v37 = v243;
    sub_1CF9E6128();
    v38 = v252;
    sub_1CEFD09A0(v252);
    sub_1CEFD09A0(v38);

    v39 = sub_1CF9E6108();
    LODWORD(v241) = sub_1CF9E7298();
    if (os_log_type_enabled(v39, v241))
    {
      v240 = v39;
      v40 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      v259[0] = v239;
      v41 = v40;
      *v40 = 136315394;
      v42 = swift_beginAccess();
      v43 = *(v35 + 32);
      v44 = *(v35 + 40);
      if (*(v35 + 41))
      {
        v45 = NSFileProviderItemIdentifier.description.getter(v43);
        v47 = v46;
        v48 = v43;
        v49 = v45;
        sub_1CEFD0994(v48, v44, 1);
      }

      else
      {
        v260 = *(v35 + 32);
        v261 = v44;
        v49 = VFSItemID.description.getter(v42);
        v47 = v51;
      }

      v50 = v30;
      v52 = sub_1CEFD0DF0(v49, v47, v259);
      v47, v53, v54, v55, v56, v57, v58, v59;
      v60 = v41;
      *(v41 + 1) = v52;
      *(v41 + 6) = 2080;
      v38 = v252;
      v61 = sub_1CEFD11AC(v252);
      v63 = v62;
      sub_1CEFD0A98(v38);
      sub_1CEFD0A98(v38);
      v64 = sub_1CEFD0DF0(v61, v63, v259);
      v63, v65, v66, v67, v68, v69, v70, v71;
      *(v41 + 14) = v64;
      v72 = v240;
      _os_log_impl(&dword_1CEFC7000, v240, v241, "🥄 Materializing datalessWClone item %s for %s", v41, 0x16u);
      v73 = v239;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v73, -1, -1);
      MEMORY[0x1D386CDC0](v60, -1, -1);

      v74 = v243;
      v243 = *(v251 + 8);
      v243(v74, v256);
    }

    else
    {
      sub_1CEFD0A98(v38);
      sub_1CEFD0A98(v38);

      v243 = *(v251 + 8);
      v243(v37, v31);
      v50 = v30;
    }

    v241 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
    v75 = swift_allocObject();
    v76 = v254;
    *(v75 + 16) = v253;
    *(v75 + 24) = v76;
    v253 = v75;

    v77 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFD09A0(v38);
    sub_1CEFD09A0(v38);

    v78 = sub_1CF9E6108();
    v79 = sub_1CF9E7298();
    if (os_log_type_enabled(v78, v79))
    {
      LODWORD(v254) = v79;
      v80 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      v259[0] = v240;
      *v80 = 136315394;
      v81 = swift_beginAccess();
      v82 = *(v35 + 32);
      v83 = *(v35 + 40);
      if (*(v35 + 41))
      {
        v84 = NSFileProviderItemIdentifier.description.getter(v82);
        v86 = v85;
        v87 = v83;
        v88 = v84;
        sub_1CEFD0994(v82, v87, 1);
      }

      else
      {
        v260 = *(v35 + 32);
        v261 = v83;
        v88 = VFSItemID.description.getter(v81);
        v86 = v89;
      }

      v90 = sub_1CEFD0DF0(v88, v86, v259);
      v86, v91, v92, v93, v94, v95, v96, v97;
      *(v80 + 4) = v90;
      *(v80 + 12) = 2080;
      v38 = v252;
      v98 = sub_1CEFD11AC(v252);
      v100 = v99;
      sub_1CEFD0A98(v38);
      sub_1CEFD0A98(v38);
      v101 = sub_1CEFD0DF0(v98, v100, v259);
      v100, v102, v103, v104, v105, v106, v107, v108;
      *(v80 + 14) = v101;
      _os_log_impl(&dword_1CEFC7000, v78, v254, "Request to materialize content of itemID %s reason %s", v80, 0x16u);
      v109 = v240;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v109, -1, -1);
      MEMORY[0x1D386CDC0](v80, -1, -1);
    }

    else
    {
      sub_1CEFD0A98(v38);
      sub_1CEFD0A98(v38);
    }

    v243(v50, v256);
    v111 = v245;
    v110 = v246;
    LODWORD(v240) = (v38 >> 58) & 0x3C | (v38 >> 1) & 3;
    if (v240 == 2)
    {
      v112 = swift_projectBox();
      sub_1CEFCCBDC(v112, v110, &unk_1EC4C4F40, qword_1CFA0F4C0);
      v110[1], v113, v114, v115, v116, v117, v118, v119;
      v120 = v111[12];

      v121 = *(v110 + v111[20]);
      v122 = sub_1CF9E5A58();
      (*(*(v122 - 8) + 8))(v110 + v120, v122);
    }

    else
    {
      v121 = 0;
    }

    v124 = v249;
    v123 = v250;
    v125 = v247;
    v126 = v248;
    sub_1CEFCCBDC(v255 + qword_1EDEBBC18, v247, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v127 = type metadata accessor for TelemetrySignposter(0);
    if ((*(*(v127 - 8) + 48))(v125, 1, v127) == 1)
    {
      sub_1CEFCCC44(v125, &qword_1EC4BFB10, &unk_1CFA12AD0);
      v128 = 1;
    }

    else
    {
      sub_1CF519DE8(v121, v123);
      sub_1CEFD5338(v125, type metadata accessor for TelemetrySignposter);
      v128 = 0;
    }

    v129 = type metadata accessor for TelemetrySignpost(0);
    (*(*(v129 - 8) + 56))(v123, v128, 1, v129);
    sub_1CEFCCBDC(v123, v124, qword_1EC4C1588, &unk_1CFA0A260);
    v130 = v124;
    v131 = *(v126 + 80);
    v132 = (v131 + 16) & ~v131;
    v133 = v242;
    v134 = (v242 + v132 + 7) & 0xFFFFFFFFFFFFFFF8;
    v135 = swift_allocObject();
    v136 = v135 + v132;
    v137 = v135;
    v254 = v135;
    sub_1CEFE55D0(v130, v136, qword_1EC4C1588, &unk_1CFA0A260);
    v138 = (v137 + v134);
    v249 = sub_1CF8FE7A8;
    v139 = v253;
    *v138 = sub_1CF8FE7A8;
    v138[1] = v139;
    v140 = v123;
    v141 = v244;
    sub_1CEFCCBDC(v140, v244, qword_1EC4C1588, &unk_1CFA0A260);
    v142 = (v131 + 24) & ~v131;
    v143 = ((v142 + v133 + 7) & 0xFFFFFFFFFFFFFFF8);
    v144 = (v142 + v133 + 31) & 0xFFFFFFFFFFFFFFF8;
    v246 = v143;
    v247 = (v144 + 15) & 0xFFFFFFFFFFFFFFF8;
    v248 = (v144 + 31) & 0xFFFFFFFFFFFFFFF8;
    v145 = (v248 + 15) & 0xFFFFFFFFFFFFFFF8;
    v146 = swift_allocObject();
    v147 = v252;
    *(v146 + 16) = v252;
    sub_1CEFE55D0(v141, v146 + v142, qword_1EC4C1588, &unk_1CFA0A260);
    v148 = v246 + v146;
    v149 = v248;
    v150 = v147;
    v151 = v253;
    *v148 = v249;
    *(v148 + 1) = v151;
    v148[16] = 1;
    *(v146 + v144) = v255;
    v152 = v146 + v247;
    v153 = v258;
    *v152 = v258;
    *(v152 + 8) = 0;
    *(v146 + v149) = 2;
    v154 = v241;
    *(v146 + v145) = v241;
    v155 = v146 + ((v145 + 15) & 0xFFFFFFFFFFFFFFF8);
    v156 = v254;
    *v155 = sub_1CF903314;
    *(v155 + 8) = v156;
    *(v155 + 16) = 1;
    v157 = objc_allocWithZone(MEMORY[0x1E696AE38]);

    sub_1CEFD09A0(v150);

    v158 = v150;

    v246 = v154;

    v249 = [v157 init];
    v159 = swift_allocObject();
    v159[2] = sub_1CF903318;
    v159[3] = v146;
    v248 = v159;
    v159[4] = v150;
    sub_1CEFD09A0(v150);

    sub_1CEFD09A0(v150);
    v247 = v146;

    v160 = fpfs_current_or_default_log();
    v161 = v257;
    sub_1CF9E6128();
    sub_1CEFD09A0(v150);
    sub_1CEFD09A0(v150);

    v162 = sub_1CF9E6108();
    v163 = sub_1CF9E7298();
    if (os_log_type_enabled(v162, v163))
    {
      LODWORD(v244) = v163;
      v245 = v162;
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v268 = v165;
      *v164 = 136315906;
      v166 = swift_beginAccess();
      v167 = *(v153 + 32);
      v168 = *(v153 + 40);
      if (*(v153 + 41))
      {
        v169 = NSFileProviderItemIdentifier.description.getter(v167);
        v171 = v170;
        sub_1CEFD0994(v167, v168, 1);
      }

      else
      {
        v260 = *(v153 + 32);
        v261 = v168;
        v169 = VFSItemID.description.getter(v166);
        v171 = v172;
      }

      v173 = sub_1CEFD0DF0(v169, v171, &v268);
      v171, v174, v175, v176, v177, v178, v179, v180;
      *(v164 + 4) = v173;
      *(v164 + 12) = 2080;
      *(v164 + 14) = sub_1CEFD0DF0(0xD000000000000010, 0x80000001CFA2C3C0, &v268);
      *(v164 + 22) = 2080;
      v158 = v252;
      v181 = sub_1CEFD11AC(v252);
      v183 = v182;
      sub_1CEFD0A98(v158);
      sub_1CEFD0A98(v158);
      v184 = sub_1CEFD0DF0(v181, v183, &v268);
      v183, v185, v186, v187, v188, v189, v190, v191;
      *(v164 + 24) = v184;
      *(v164 + 32) = 2048;
      *(v164 + 34) = 0;
      v192 = v245;
      _os_log_impl(&dword_1CEFC7000, v245, v244, "Lookup itemID %s with behavior %s request %s iteration %ld", v164, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v165, -1, -1);
      MEMORY[0x1D386CDC0](v164, -1, -1);

      v243(v257, v256);
      v153 = v258;
    }

    else
    {
      sub_1CEFD0A98(v158);
      sub_1CEFD0A98(v158);

      v243(v161, v256);
    }

    swift_beginAccess();
    v193 = *(v153 + 32);
    v194 = *(v153 + 40);
    if (*(v153 + 41))
    {
      v195 = qword_1EDEA34B0;
      v196 = v193;
      if (v195 != -1)
      {
        swift_once();
      }

      v197 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v199 = v198;
      v201 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v207 = v200;
      if (v197 == v201 && v199 == v200)
      {
        v199, v200, v201, v202, v203, v204, v205, v206;
        v207, v208, v209, v210, v211, v212, v213, v214;
        sub_1CEFD0994(v193, v194, 1);
        v158 = v252;
LABEL_44:
        sub_1CF90CAC8(v158, sub_1CF796A0C, v248);
LABEL_50:

        sub_1CEFCCC44(v262, &unk_1EC4BFC20, &unk_1CFA0A290);

        sub_1CEFD0A98(v158);

        sub_1CEFCCC44(v250, qword_1EC4C1588, &unk_1CFA0A260);
        goto LABEL_10;
      }

      v215 = sub_1CF9E8048();
      v199, v216, v217, v218, v219, v220, v221, v222;
      v207, v223, v224, v225, v226, v227, v228, v229;
      sub_1CEFD0994(v193, v194, 1);
      v158 = v252;
      if (v215)
      {
        goto LABEL_44;
      }
    }

    else if (!v193 && v194 == 2)
    {
      goto LABEL_44;
    }

    if (v240 == 30)
    {
      v230 = *((v158 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v231 = v230;
    }

    else
    {
      v232 = swift_allocObject();
      *(v232 + 16) = v158;
      v231 = v232 | 0x7000000000000004;
      v230 = v158;
    }

    v233 = v255;
    sub_1CEFD09A0(v230);
    v234 = swift_allocObject();
    v235 = v248;
    *(v234 + 16) = sub_1CF796A0C;
    *(v234 + 24) = v235;
    *(v234 + 32) = v233;
    *(v234 + 40) = 2;
    *(v234 + 48) = v158;
    *(v234 + 56) = v153;
    *(v234 + 64) = 0;
    *(v234 + 72) = v249;
    *(v234 + 80) = 0;
    v236 = swift_allocObject();
    *(v236 + 16) = v153;
    *(v236 + 24) = v233;
    *(v236 + 32) = 0;
    *(v236 + 40) = sub_1CF796A90;
    *(v236 + 48) = v234;
    *(v236 + 56) = v231;
    v237 = swift_allocObject();
    *(v237 + 16) = sub_1CF796A90;
    *(v237 + 24) = v234;

    sub_1CEFD09A0(v158);

    v238 = v249;
    sub_1CEFD09A0(v231);
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v237, sub_1CF796A9C, v236);

    sub_1CEFD0A98(v231);
    goto LABEL_50;
  }
}

void sub_1CF7E627C(uint64_t a1, void (*a2)(void *, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v9 - v5);
  sub_1CEFCCBDC(a1, &v9 - v5, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v6;
    v8 = v7;
    a2(v7, 1);
  }

  else
  {
    a2(0, 0);
    sub_1CEFCCC44(v6, &unk_1EC4BF300, &unk_1CFA006B0);
  }
}

uint64_t sub_1CF7E639C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void, __n128), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - v9;
  v11 = sub_1CF9E5A58();
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v44 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v44 - v16;
  v18 = type metadata accessor for VFSItem(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v23 = MEMORY[0x1EEE9AC00](v20);
  if ((a2 & 1) == 0)
  {
    return a3(0xFFFFFFFFLL, 0, v23);
  }

  v47 = v22;
  v48 = a3;
  v24 = &v44 - v21;
  v25 = a4;
  sub_1CEFCCBDC(a1, v17, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1CEFCCC44(v17, &unk_1EC4BEC00, &unk_1CF9FCB60);
LABEL_9:
    a3 = v48;
    return a3(0xFFFFFFFFLL, 0, v23);
  }

  sub_1CEFDA0C4(v17, v24, type metadata accessor for VFSItem);
  v26 = &v24[*(v18 + 28)];
  if (*v26 == 1)
  {
    v27 = v24;
LABEL_8:
    sub_1CEFD5338(v27, type metadata accessor for VFSItem);
    goto LABEL_9;
  }

  if (v26[*(type metadata accessor for ItemMetadata(0) + 80)])
  {
    v27 = v24;
    goto LABEL_8;
  }

  v29 = v50;
  v30 = v47;
  sub_1CEFDA34C(v24, v47, type metadata accessor for VFSItem);
  sub_1CF25116C(v10);
  v31 = v52;
  v32 = v53;
  if ((*(v52 + 48))(v10, 1, v53) == 1)
  {
    sub_1CEFCCC44(v10, &unk_1EC4BE310, qword_1CF9FCBE0);
    (v48)(0xFFFFFFFFLL, 0);
    sub_1CEFD5338(v30, type metadata accessor for VFSItem);
    v33 = v24;
  }

  else
  {
    v46 = v24;
    v34 = v31;
    v35 = *(v31 + 32);
    v36 = v51;
    v35(v51, v10, v32);
    v50 = *(*(*(v29 + 16) + 32) + 16);
    type metadata accessor for VFSFileTree(0);
    v45 = *(swift_dynamicCastClassUnconditional() + 216);
    v37 = v25;
    v38 = v49;
    (*(v31 + 16))(v49, v36, v32);
    v39 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v40 = (v12 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    v35((v41 + v39), v38, v32);
    v42 = (v41 + v40);
    *v42 = v48;
    v42[1] = v37;

    v43 = v45;

    sub_1CF01001C(0, "openFD(for:completion:)", 23, 2, sub_1CF8FE800, v41);

    (*(v34 + 8))(v51, v32);
    sub_1CEFD5338(v47, type metadata accessor for VFSItem);
    v33 = v46;
  }

  return sub_1CEFD5338(v33, type metadata accessor for VFSItem);
}

uint64_t sub_1CF7E6910@<X0>(_BYTE *a1@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t sub_1CF7E6950@<X0>(_BYTE *a1@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

double sub_1CF7E69F0(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v58 = a5;
  LODWORD(v9) = a2;
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  swift_retain_n();
  sub_1CEFD09A0(a3);
  v16 = sub_1CF9E6108();
  v17 = sub_1CF9E7298();
  if (os_log_type_enabled(v16, v17))
  {
    v53 = v17;
    v54 = v12;
    v55 = v11;
    v56 = a4;
    v57 = v9;
    v9 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v61 = v52;
    *v9 = 136315394;
    v18 = sub_1CEFD11AC(a3);
    v20 = v19;
    sub_1CEFD0A98(a3);
    v21 = sub_1CEFD0DF0(v18, v20, &v61);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v9 + 4) = v21;
    *(v9 + 12) = 2080;
    v29 = swift_beginAccess();
    v30 = *(a1 + 32);
    v31 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v32 = NSFileProviderItemIdentifier.description.getter(v30);
      v34 = v33;
      sub_1CEFD0994(v30, v31, 1);
    }

    else
    {
      v59 = *(a1 + 32);
      v60 = v31;
      v32 = VFSItemID.description.getter(v29);
      v34 = v35;
    }

    v36 = sub_1CEFD0DF0(v32, v34, &v61);
    v34, v37, v38, v39, v40, v41, v42, v43;
    *(v9 + 14) = v36;
    _os_log_impl(&dword_1CEFC7000, v16, v53, "🥄 Forcing ingestion for %s with item ID %s", v9, 0x16u);
    v44 = v52;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v44, -1, -1);
    MEMORY[0x1D386CDC0](v9, -1, -1);

    (*(v54 + 8))(v14, v55);
    LOBYTE(v9) = v57;
    a4 = v56;
  }

  else
  {

    sub_1CEFD0A98(a3);

    (*(v12 + 8))(v14, v11);
  }

  v45 = swift_allocObject();
  v46 = v58;
  *(v45 + 16) = a4;
  *(v45 + 24) = v46;
  *(v45 + 32) = a1;
  *(v45 + 40) = v6;
  *(v45 + 48) = a3;
  *(v45 + 56) = v9 & 1;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1CF8FE75C;
  *(v47 + 24) = v45;
  v48 = swift_allocObject();
  v48[2] = a1;
  v48[3] = v6;
  v48[4] = sub_1CF8FE75C;
  v48[5] = v45;
  v48[6] = a3;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1CF8FE774;
  *(v49 + 24) = v47;
  sub_1CEFD09A0(a3);
  swift_retain_n();

  sub_1CEFD09A0(a3);

  sub_1CF7AAF88("checkIfDatalessWCloneMaterializationNeeded(itemID:userRequest:completionHandler:)", 81, 2, 2, sub_1CF8FC294, v49, sub_1CF8FE77C, v48);

  return result;
}

double sub_1CF7E6E40(void *a1, char a2, void (*a3)(__int128 *, void *), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, char a8)
{
  v16 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    v21 = a1;
    a3(&v117, a1);
    sub_1CF0BA6EC(a1, 1);
LABEL_9:
    sub_1CEFCCC44(&v117, &unk_1EC4C1B30, &qword_1CFA05300);
    return result;
  }

  if ((a1 & 1) == 0 || *(a5 + 25) != 1)
  {
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    a3(&v117, 0);
    goto LABEL_9;
  }

  v108 = v18;
  v114 = v17;
  v22 = *(a5 + 16);
  v23 = *(a5 + 24);
  v111 = *(a6 + 16);
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  *(v24 + 32) = a6;
  *(v24 + 40) = a8 & 1;
  *(v24 + 48) = a7;
  *(v24 + 56) = a5;
  *(v24 + 64) = v22;
  v25 = objc_allocWithZone(MEMORY[0x1E696AE38]);
  sub_1CEFD0988(v22, v23, 1);
  v112 = v22;
  v113 = v23;
  sub_1CEFD0988(v22, v23, 1);

  sub_1CEFD09A0(a7);

  v115 = [v25 init];
  v26 = swift_allocObject();
  v26[2] = sub_1CF8FE7B0;
  v26[3] = v24;
  v110 = v26;
  v26[4] = a7;
  sub_1CEFD09A0(a7);

  sub_1CEFD09A0(a7);
  v109 = v24;

  v27 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a7);
  sub_1CEFD09A0(a7);

  v28 = sub_1CF9E6108();
  v29 = sub_1CF9E7298();
  if (os_log_type_enabled(v28, v29))
  {
    v107 = v29;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v116 = v31;
    *v30 = 136315906;
    v32 = swift_beginAccess();
    v33 = *(a5 + 32);
    v34 = *(a5 + 40);
    if (*(a5 + 41))
    {
      v35 = NSFileProviderItemIdentifier.description.getter(v33);
      v37 = v36;
      sub_1CEFD0994(v33, v34, 1);
    }

    else
    {
      *&v117 = *(a5 + 32);
      BYTE8(v117) = v34;
      v35 = VFSItemID.description.getter(v32);
      v37 = v39;
    }

    v40 = sub_1CEFD0DF0(v35, v37, &v116);
    v37, v41, v42, v43, v44, v45, v46, v47;
    *(v30 + 4) = v40;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, &v116);
    *(v30 + 22) = 2080;
    v48 = sub_1CEFD11AC(a7);
    v50 = v49;
    sub_1CEFD0A98(a7);
    sub_1CEFD0A98(a7);
    v51 = sub_1CEFD0DF0(v48, v50, &v116);
    v50, v52, v53, v54, v55, v56, v57, v58;
    *(v30 + 24) = v51;
    *(v30 + 32) = 2048;
    *(v30 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v28, v107, "Lookup itemID %s with behavior %s request %s iteration %ld", v30, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v31, -1, -1);
    MEMORY[0x1D386CDC0](v30, -1, -1);
  }

  else
  {
    sub_1CEFD0A98(a7);
    sub_1CEFD0A98(a7);
  }

  (*(v108 + 8))(v20, v114);
  swift_beginAccess();
  v59 = *(a5 + 32);
  v60 = *(a5 + 40);
  if ((*(a5 + 41) & 1) == 0)
  {
    if (!v59 && v60 == 2)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  v61 = qword_1EDEA34B0;
  v62 = v59;
  if (v61 != -1)
  {
    swift_once();
  }

  v63 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v65 = v64;
  v67 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v73 = v66;
  if (v63 != v67 || v65 != v66)
  {
    v81 = sub_1CF9E8048();
    v65, v82, v83, v84, v85, v86, v87, v88;
    v73, v89, v90, v91, v92, v93, v94, v95;
    sub_1CEFD0994(v59, v60, 1);
    if (v81)
    {
      goto LABEL_21;
    }

LABEL_23:
    v96 = v115;
    if (((a7 >> 58) & 0x3C | (a7 >> 1) & 3) == 0x1E)
    {
      v97 = *((a7 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v98 = v97;
    }

    else
    {
      v99 = swift_allocObject();
      *(v99 + 16) = a7;
      v98 = v99 | 0x7000000000000004;
      v97 = a7;
    }

    sub_1CEFD09A0(v97);
    v100 = swift_allocObject();
    v101 = v110;
    v102 = v111;
    *(v100 + 16) = sub_1CF796A0C;
    *(v100 + 24) = v101;
    *(v100 + 32) = v102;
    *(v100 + 40) = 1;
    *(v100 + 48) = a7;
    *(v100 + 56) = a5;
    *(v100 + 64) = 1;
    *(v100 + 72) = v96;
    *(v100 + 80) = 0;
    v103 = swift_allocObject();
    *(v103 + 16) = a5;
    *(v103 + 24) = v102;
    *(v103 + 32) = 1;
    *(v103 + 40) = sub_1CF796A90;
    *(v103 + 48) = v100;
    *(v103 + 56) = v98;
    v104 = swift_allocObject();
    *(v104 + 16) = sub_1CF796A90;
    *(v104 + 24) = v100;

    sub_1CEFD09A0(a7);

    v105 = v96;
    sub_1CEFD09A0(v98);
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v104, sub_1CF796A9C, v103);

    sub_1CEFD0A98(v98);
    goto LABEL_27;
  }

  v65, v66, v67, v68, v69, v70, v71, v72;
  v73, v74, v75, v76, v77, v78, v79, v80;
  sub_1CEFD0994(v59, v60, 1);
LABEL_21:
  sub_1CF90CAC8(a7, sub_1CF796A0C, v110);
LABEL_27:

  sub_1CEFD0A98(a7);

  sub_1CEFD0994(v112, v113, 1);

  return result;
}

double sub_1CF7E75E4(uint64_t a1, void (*a2)(_OWORD *, void *), uint64_t a3, uint64_t a4, int a5, unint64_t a6, uint64_t a7, void *a8)
{
  v30 = a8;
  v31 = a2;
  v29 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28[-v17];
  sub_1CEFCCBDC(a1, v15, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v15;
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    v20 = v19;
    v31(v32, v19);

    sub_1CEFCCC44(v32, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  else
  {
    sub_1CEFDA0C4(v15, v18, type metadata accessor for VFSItem);
    v21 = type metadata accessor for VFSItem(0);
    (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
    v22 = swift_allocObject();
    *(v22 + 16) = a6;
    *(v22 + 24) = a7;
    v23 = v30;
    v24 = v31;
    *(v22 + 32) = a4;
    *(v22 + 40) = v23;
    v25 = v29 & 1;
    *(v22 + 48) = v29 & 1;
    *(v22 + 56) = v24;
    *(v22 + 64) = a3;
    sub_1CEFD09A0(a6);

    v26 = v23;

    sub_1CF7E639C(v18, v25, sub_1CF8FE7C8, v22);
    sub_1CEFCCC44(v18, &unk_1EC4BEC00, &unk_1CF9FCB60);
  }

  return result;
}

void sub_1CF7E78E4(NSObject *a1, char a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7, uint64_t a8, uint64_t a9)
{
  v172 = a8;
  LODWORD(v168) = a7;
  v159 = a6;
  v153 = sub_1CF9E63D8();
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v151 = v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v166 = v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v149 - v18;
  v154 = sub_1CF9E6068();
  v20 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v161 = v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v156 = v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v149 - v25;
  v157 = type metadata accessor for Signpost(0);
  v162 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v165 = v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v164 = v149 - v29;
  v163 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v169 = v149 - v32;
  v33 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v33);
  v37 = v149 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = v19;
  v167 = v26;
  v160 = v20;
  if (a2)
  {
    v158 = v35;
    v171 = v34;
    v38 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    swift_retain_n();
    sub_1CEFD09A0(a3);
    sub_1CF480F78(a1, 1);
    v39 = sub_1CF9E6108();
    v40 = sub_1CF9E72A8();
    sub_1CF0BA6EC(a1, 1);
    LODWORD(v155) = v40;
    if (os_log_type_enabled(v39, v40))
    {
      v149[0] = v39;
      v149[1] = a1;
      v150 = a5;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v175 = v43;
      *v41 = 136315650;
      v44 = sub_1CEFD11AC(a3);
      v46 = v45;
      sub_1CEFD0A98(a3);
      v47 = sub_1CEFD0DF0(v44, v46, &v175);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v41 + 4) = v47;
      *(v41 + 12) = 2080;
      v55 = swift_beginAccess();
      v56 = *(a4 + 32);
      v57 = *(a4 + 40);
      if (*(a4 + 41))
      {
        v58 = NSFileProviderItemIdentifier.description.getter(v56);
        v60 = v59;
        sub_1CEFD0994(v56, v57, 1);
      }

      else
      {
        *&aBlock = *(a4 + 32);
        BYTE8(aBlock) = v57;
        v58 = VFSItemID.description.getter(v55);
        v60 = v61;
      }

      v62 = sub_1CEFD0DF0(v58, v60, &v175);
      v60, v63, v64, v65, v66, v67, v68, v69;
      *(v41 + 14) = v62;
      *(v41 + 22) = 2112;
      swift_getErrorValue();
      v70 = Error.prettyDescription.getter(v173, v174);
      *(v41 + 24) = v70;
      *v42 = v70;
      v71 = v149[0];
      _os_log_impl(&dword_1CEFC7000, v149[0], v155, "🥄 ❌ Failed to open FD for %s with itemID:%s. error: %@", v41, 0x20u);
      sub_1CEFCCC44(v42, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v42, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v43, -1, -1);
      MEMORY[0x1D386CDC0](v41, -1, -1);

      (*(v158 + 8))(v37, v171);
      LODWORD(a1) = -1;
      v26 = v167;
      a5 = v150;
    }

    else
    {

      sub_1CEFD0A98(a3);

      (*(v158 + 8))(v37, v171);
      LODWORD(a1) = -1;
    }
  }

  v171 = *(a5 + 16);
  v72 = v154;
  if (((a3 >> 58) & 0x3C | (a3 >> 1) & 3) == 0x1E)
  {
    v75 = *((a3 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v74 = v75;
  }

  else
  {
    v73 = swift_allocObject();
    *(v73 + 16) = a3;
    v74 = v73 | 0x7000000000000004;
    v75 = a3;
  }

  sub_1CEFD09A0(v75);
  v76 = swift_allocObject();
  *(v76 + 16) = v168 & 1;
  *(v76 + 20) = a1;
  *(v76 + 24) = a3;
  *(v76 + 32) = a4;
  *(v76 + 40) = v172;
  *(v76 + 48) = a9;
  v77 = swift_allocObject();
  v78 = v159;
  v77[2] = v159;
  v77[3] = v74;
  v77[4] = v171;
  v77[5] = sub_1CF8FE890;
  v168 = v77;
  v77[6] = v76;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_1CF8FE890;
  *(v79 + 24) = v76;
  v172 = v79;

  sub_1CEFD09A0(a3);
  v158 = v76;

  v80 = v78;
  sub_1CEFD09A0(v74);

  v155 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v159 = v74;
  v81 = qword_1EDEBBE40;
  v82 = v160;
  (*(v160 + 56))(v26, 1, 1, v72);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v83 = sub_1CF9E7988();
  v85 = v84;
  MEMORY[0x1D3868CC0](v83);
  v85, v86, v87, v88, v89, v90, v91, v92;
  v93 = aBlock;
  v94 = v156;
  sub_1CEFCCBDC(v26, v156, &unk_1EC4BED20, &unk_1CFA00700);
  v95 = *(v82 + 48);
  v96 = v95(v94, 1, v72);
  v97 = v161;
  if (v96 == 1)
  {
    v98 = v81;
    sub_1CF9E6048();
    v99 = v95(v94, 1, v72) == 1;
    v100 = v94;
    v101 = v72;
    if (!v99)
    {
      sub_1CEFCCC44(v100, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v82 + 32))(v161, v94, v72);
    v101 = v72;
  }

  v102 = v169;
  (*(v82 + 16))(v169, v97, v101);
  v103 = v157;
  *(v102 + *(v157 + 20)) = v81;
  v104 = v102 + *(v103 + 24);
  *v104 = "DB queue wait";
  *(v104 + 8) = 13;
  *(v104 + 16) = 2;
  v105 = v81;
  v106 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v107 = v97;
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1CF9FA450;
  *(v108 + 56) = MEMORY[0x1E69E6158];
  *(v108 + 64) = sub_1CEFD51C4();
  *(v108 + 32) = v93;
  sub_1CF9E6028(v106, &dword_1CEFC7000, v105, "DB queue wait", 13, 2, v102, "%s", 2);
  v108, v109, v110, v111, v112, v113, v114, v115;
  (*(v82 + 8))(v107, v101);
  sub_1CEFCCC44(v167, &unk_1EC4BED20, &unk_1CFA00700);
  v161 = *(v171 + 168);
  v167 = *(v171 + 64);
  v160 = sub_1CF9E6448();
  v157 = *(v160 - 8);
  (*(v157 + 56))(v170, 1, 1, v160);
  v116 = v164;
  sub_1CEFDA34C(v102, v164, type metadata accessor for Signpost);
  v117 = (*(v162 + 80) + 16) & ~*(v162 + 80);
  v118 = (v163 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
  v119 = swift_allocObject();
  v163 = type metadata accessor for Signpost;
  sub_1CEFDA0C4(v116, v119 + v117, type metadata accessor for Signpost);
  v120 = (v119 + v118);
  v121 = v172;
  *v120 = sub_1CF902CD4;
  v120[1] = v121;
  v122 = v165;
  sub_1CEFDA34C(v102, v165, type metadata accessor for Signpost);
  v123 = (v118 + 23) & 0xFFFFFFFFFFFFFFF8;
  v124 = (v123 + 15) & 0xFFFFFFFFFFFFFFF8;
  v125 = (v124 + 25) & 0xFFFFFFFFFFFFFFF8;
  v126 = (v125 + 23) & 0xFFFFFFFFFFFFFFF8;
  v127 = swift_allocObject();
  sub_1CEFDA0C4(v122, v127 + v117, v163);
  v128 = (v127 + v118);
  *v128 = sub_1CF045408;
  v128[1] = 0;
  *(v127 + v123) = v171;
  v129 = v127 + v124;
  v130 = v157;
  *v129 = "propagateToFS(itemID:request:completion:)";
  *(v129 + 8) = 41;
  *(v129 + 16) = 2;
  v131 = (v127 + v125);
  v132 = v160;
  v133 = v172;
  *v131 = sub_1CF902CD4;
  v131[1] = v133;
  v134 = (v127 + v126);
  v135 = v168;
  *v134 = sub_1CF8FE8A4;
  v134[1] = v135;
  v136 = swift_allocObject();
  v136[2] = sub_1CF903308;
  v136[3] = v119;
  v137 = v161;
  v136[4] = v161;
  swift_retain_n();

  v171 = v119;
  v138 = v170;

  v139 = fpfs_current_log();
  v165 = *(v137 + 2);
  v140 = v166;
  sub_1CEFCCBDC(v138, v166, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v130 + 48))(v140, 1, v132) == 1)
  {
    sub_1CEFCCC44(v140, &unk_1EC4BE370, qword_1CFA01B30);
    v141 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v142 = v151;
    sub_1CF9E6438();
    (*(v130 + 8))(v140, v132);
    v141 = sub_1CF9E63C8();
    (*(v152 + 8))(v142, v153);
  }

  v143 = swift_allocObject();
  v143[2] = v139;
  v143[3] = sub_1CF4858EC;
  v143[4] = v127;
  v179 = sub_1CF2BA17C;
  v180 = v143;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v177 = sub_1CEFCA444;
  v178 = &block_descriptor_4501;
  v144 = _Block_copy(&aBlock);
  v145 = v139;

  v179 = sub_1CF2BA180;
  v180 = v136;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v177 = sub_1CEFCA444;
  v178 = &block_descriptor_4504;
  v146 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v165, v167, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v141, v144, v146);
  _Block_release(v146);
  _Block_release(v144);

  sub_1CEFCCC44(v138, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v169, type metadata accessor for Signpost);
  v147 = v155;
  v148 = fpfs_adopt_log();

  sub_1CEFD0A98(v159);
}

uint64_t sub_1CF7E88E8(uint64_t a1, void *a2, char a3, int a4, unint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void *), uint64_t a8)
{
  v16 = sub_1CF9E6118();
  v95 = *(v16 - 8);
  v96 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v89 - v20;
  if ((a3 & 1) != 0 && a4 >= 1)
  {
    close(a4);
  }

  if (a2)
  {
    v94 = a1;
    v22 = a2;
    v23 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v24 = a2;

    sub_1CEFD09A0(a5);
    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E72A8();

    if (!os_log_type_enabled(v25, v26))
    {

      sub_1CEFD0A98(a5);

      (*(v95 + 8))(v21, v96);
LABEL_18:
      a1 = v94;
      return a7(a1, a2);
    }

    v92 = a7;
    v93 = a8;
    v27 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v101 = v91;
    *v27 = 136315650;
    v28 = sub_1CEFD11AC(a5);
    v30 = v29;
    sub_1CEFD0A98(a5);
    v31 = sub_1CEFD0DF0(v28, v30, &v101);
    v30, v32, v33, v34, v35, v36, v37, v38;
    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v39 = swift_beginAccess();
    v40 = *(a6 + 32);
    v41 = *(a6 + 40);
    if (*(a6 + 41))
    {
      v42 = NSFileProviderItemIdentifier.description.getter(v40);
      v44 = v43;
      sub_1CEFD0994(v40, v41, 1);
    }

    else
    {
      v99 = *(a6 + 32);
      v100 = v41;
      v42 = VFSItemID.description.getter(v39);
      v44 = v66;
    }

    v67 = sub_1CEFD0DF0(v42, v44, &v101);
    v44, v68, v69, v70, v71, v72, v73, v74;
    *(v27 + 14) = v67;
    *(v27 + 22) = 2112;
    swift_getErrorValue();
    v75 = Error.prettyDescription.getter(v97, v98);
    *(v27 + 24) = v75;
    v76 = v90;
    *v90 = v75;
    _os_log_impl(&dword_1CEFC7000, v25, v26, "🥄 ❌ Failed force ingestion for %s with itemID %s. error: %@", v27, 0x20u);
    sub_1CEFCCC44(v76, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v76, -1, -1);
    v77 = v91;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v77, -1, -1);
    MEMORY[0x1D386CDC0](v27, -1, -1);

    (*(v95 + 8))(v21, v96);
LABEL_17:
    a7 = v92;
    goto LABEL_18;
  }

  v93 = a8;
  v45 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  swift_retain_n();
  sub_1CEFD09A0(a5);
  v46 = sub_1CF9E6108();
  v47 = sub_1CF9E7298();
  if (os_log_type_enabled(v46, v47))
  {
    v94 = a1;
    v92 = a7;
    v48 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v101 = v91;
    *v48 = 136315394;
    v49 = sub_1CEFD11AC(a5);
    v51 = v50;
    sub_1CEFD0A98(a5);
    v52 = sub_1CEFD0DF0(v49, v51, &v101);
    v51, v53, v54, v55, v56, v57, v58, v59;
    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    v60 = swift_beginAccess();
    v61 = *(a6 + 32);
    v62 = *(a6 + 40);
    if (*(a6 + 41))
    {
      v63 = NSFileProviderItemIdentifier.description.getter(v61);
      v65 = v64;
      sub_1CEFD0994(v61, v62, 1);
    }

    else
    {
      v99 = *(a6 + 32);
      v100 = v62;
      v63 = VFSItemID.description.getter(v60);
      v65 = v78;
    }

    v79 = sub_1CEFD0DF0(v63, v65, &v101);
    v65, v80, v81, v82, v83, v84, v85, v86;
    *(v48 + 14) = v79;
    _os_log_impl(&dword_1CEFC7000, v46, v47, "🥄 ✅ Finished force ingestion for %s with itemID %s", v48, 0x16u);
    v87 = v91;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v87, -1, -1);
    MEMORY[0x1D386CDC0](v48, -1, -1);

    (*(v95 + 8))(v18, v96);
    goto LABEL_17;
  }

  sub_1CEFD0A98(a5);

  (*(v95 + 8))(v18, v96);
  return a7(a1, a2);
}

void sub_1CF7E8ED8(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t (*a6)(uint64_t a1, uint64_t a2), uint64_t a7)
{
  v173 = a7;
  v184 = a6;
  v186 = a5;
  v182 = a4;
  v188 = a2;
  v171 = sub_1CF9E63D8();
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v169 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v181 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v187 = &v157 - v13;
  v183 = sub_1CF9E6068();
  v179 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v176 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v174 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v185 = &v157 - v18;
  v175 = type metadata accessor for Signpost(0);
  v177 = *(v175 - 8);
  v19 = *(v177 + 8);
  MEMORY[0x1EEE9AC00](v175);
  v180 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v178 = &v157 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v157 - v23;
  v25 = sub_1CF9E6118();
  v172 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[3];
  v28 = a1[4];
  v30 = __swift_project_boxed_opaque_existential_1(a1, v29);
  v31 = a3;
  v32 = *(a3 + 16);
  v33 = v188;
  v34 = v189;
  sub_1CF554678(v32, 0, v30, v29, v28, &v196);
  if (!v34)
  {
    v166 = v27;
    v163 = v25;
    v164 = v31;
    v35 = v186;
    v36 = v184;
    v165 = v19;
    v37 = v183;
    v168 = v24;
    v189 = 0;
    v38 = v196;
    v39 = v197;
    if (v198)
    {
      v40 = FPItemNotFoundError();
      v35();
      sub_1CEFD0994(v38, v39, 1);
    }

    else
    {
      v41 = v32;
      v161 = v196;
      v162 = v197;
      v42 = fpfs_current_or_default_log();
      v43 = v166;
      sub_1CF9E6128();
      v44 = v33;
      swift_retain_n();
      v45 = v182;
      sub_1CEFD09A0(v182);
      v46 = sub_1CF9E6108();
      v47 = sub_1CF9E7298();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v36;
      v167 = v41;
      if (v48)
      {
        v159 = v47;
        v160 = v46;
        v50 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v190 = v158;
        *v50 = 136315394;
        v51 = sub_1CEFD11AC(v45);
        v53 = v52;
        sub_1CEFD0A98(v45);
        v54 = sub_1CEFD0DF0(v51, v53, &v190);
        v53, v55, v56, v57, v58, v59, v60, v61;
        *(v50 + 4) = v54;
        v62 = v50;
        *(v50 + 12) = 2080;
        v63 = swift_beginAccess();
        v64 = *(v44 + 32);
        v65 = *(v44 + 40);
        v66 = *(v44 + 41);
        v67 = v176;
        v68 = v185;
        if (v66)
        {
          v69 = NSFileProviderItemIdentifier.description.getter(v64);
          v71 = v70;
          v72 = v64;
          v73 = v69;
          sub_1CEFD0994(v72, v65, 1);
        }

        else
        {
          *&aBlock = v64;
          BYTE8(aBlock) = v65;
          v73 = VFSItemID.description.getter(v63);
          v71 = v77;
        }

        v74 = v37;
        v78 = sub_1CEFD0DF0(v73, v71, &v190);
        v71, v79, v80, v81, v82, v83, v84, v85;
        v86 = v62;
        *(v62 + 14) = v78;
        v87 = v160;
        _os_log_impl(&dword_1CEFC7000, v160, v159, "🥄 Forcing upload for %s with item ID %s", v62, 0x16u);
        v88 = v158;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v88, -1, -1);
        MEMORY[0x1D386CDC0](v86, -1, -1);

        (*(v172 + 8))(v166, v163);
        v75 = v179;
        v76 = v164;
        v45 = v182;
      }

      else
      {

        sub_1CEFD0A98(v45);

        (*(v172 + 8))(v43, v163);
        v74 = v37;
        v75 = v179;
        v67 = v176;
        v68 = v185;
        v76 = v164;
      }

      v89 = swift_allocObject();
      v90 = v161;
      *(v89 + 16) = v76;
      *(v89 + 24) = v90;
      *(v89 + 32) = v162;
      v91 = v186;
      *(v89 + 40) = v45;
      *(v89 + 48) = v91;
      v183 = v89;
      v92 = v173;
      *(v89 + 56) = v49;
      *(v89 + 64) = v92;
      v93 = swift_allocObject();
      *(v93 + 16) = v91;
      *(v93 + 24) = v49;
      v188 = v93;

      sub_1CEFD09A0(v45);

      v186 = fpfs_adopt_log();
      v94 = v168;
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v95 = qword_1EDEBBE40;
      (*(v75 + 56))(v68, 1, 1, v74);
      strcpy(&aBlock, "async batch ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v96 = sub_1CF9E7988();
      v98 = v97;
      MEMORY[0x1D3868CC0](v96);
      v98, v99, v100, v101, v102, v103, v104, v105;
      v106 = *(&aBlock + 1);
      v184 = aBlock;
      v107 = v68;
      v108 = v174;
      sub_1CEFCCBDC(v107, v174, &unk_1EC4BED20, &unk_1CFA00700);
      v109 = *(v75 + 48);
      if (v109(v108, 1, v74) == 1)
      {
        v110 = v95;
        sub_1CF9E6048();
        v111 = v109(v108, 1, v74);
        v112 = v175;
        if (v111 != 1)
        {
          sub_1CEFCCC44(v108, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        (*(v75 + 32))(v67, v108, v74);
        v112 = v175;
      }

      (*(v75 + 16))(v94, v67, v74);
      *(v94 + *(v112 + 20)) = v95;
      v113 = v94 + *(v112 + 24);
      *v113 = "DB queue wait";
      *(v113 + 8) = 13;
      *(v113 + 16) = 2;
      v114 = v95;
      v115 = sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v116 = v67;
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_1CF9FA450;
      *(v117 + 56) = MEMORY[0x1E69E6158];
      *(v117 + 64) = sub_1CEFD51C4();
      *(v117 + 32) = v184;
      *(v117 + 40) = v106;
      sub_1CF9E6028(v115, &dword_1CEFC7000, v114, "DB queue wait", 13, 2, v94, "%s", 2);
      v117, v118, v119, v120, v121, v122, v123, v124;
      (*(v75 + 8))(v116, v74);
      sub_1CEFCCC44(v185, &unk_1EC4BED20, &unk_1CFA00700);
      v182 = *(v167 + 168);
      v185 = *(v167 + 64);
      v176 = sub_1CF9E6448();
      v179 = *(v176 - 1);
      (*(v179 + 56))(v187, 1, 1, v176);
      v125 = v178;
      sub_1CEFDA34C(v94, v178, type metadata accessor for Signpost);
      v126 = (*(v177 + 80) + 16) & ~*(v177 + 80);
      v127 = v94;
      v128 = (v165 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
      v129 = swift_allocObject();
      v177 = type metadata accessor for Signpost;
      sub_1CEFDA0C4(v125, v129 + v126, type metadata accessor for Signpost);
      v130 = (v129 + v128);
      v184 = sub_1CF5543A4;
      v131 = v188;
      *v130 = sub_1CF5543A4;
      v130[1] = v131;
      v132 = v180;
      sub_1CEFDA34C(v127, v180, type metadata accessor for Signpost);
      v133 = (v128 + 23) & 0xFFFFFFFFFFFFFFF8;
      v134 = (v133 + 15) & 0xFFFFFFFFFFFFFFF8;
      v135 = (v134 + 25) & 0xFFFFFFFFFFFFFFF8;
      v136 = (v135 + 23) & 0xFFFFFFFFFFFFFFF8;
      v137 = swift_allocObject();
      sub_1CEFDA0C4(v132, v137 + v126, v177);
      v138 = (v137 + v128);
      *v138 = sub_1CF045408;
      v138[1] = 0;
      *(v137 + v133) = v167;
      v139 = v137 + v134;
      v140 = v176;
      *v139 = "forceUpload(for:policy:userRequest:completionHandler:)";
      *(v139 + 8) = 54;
      *(v139 + 16) = 2;
      v141 = (v137 + v135);
      v142 = v183;
      v143 = v188;
      *v141 = v184;
      v141[1] = v143;
      v144 = (v137 + v136);
      v145 = v179;
      *v144 = sub_1CF8F9F08;
      v144[1] = v142;
      v146 = swift_allocObject();
      v146[2] = sub_1CF903308;
      v146[3] = v129;
      v147 = v182;
      v146[4] = v182;
      swift_retain_n();

      v184 = v129;

      v148 = fpfs_current_log();
      v182 = v147[2];
      v149 = v181;
      sub_1CEFCCBDC(v187, v181, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v145 + 48))(v149, 1, v140) == 1)
      {
        sub_1CEFCCC44(v149, &unk_1EC4BE370, qword_1CFA01B30);
        v150 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v151 = v169;
        sub_1CF9E6438();
        (*(v145 + 8))(v149, v140);
        v150 = sub_1CF9E63C8();
        (*(v170 + 8))(v151, v171);
      }

      v152 = swift_allocObject();
      v152[2] = v148;
      v152[3] = sub_1CF4858EC;
      v152[4] = v137;
      v194 = sub_1CF2BA17C;
      v195 = v152;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v192 = sub_1CEFCA444;
      v193 = &block_descriptor_2337;
      v153 = _Block_copy(&aBlock);
      v154 = v148;

      v194 = sub_1CF2BA180;
      v195 = v146;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v192 = sub_1CEFCA444;
      v193 = &block_descriptor_2340;
      v155 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v182, v185, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v150, v153, v155);
      _Block_release(v155);
      _Block_release(v153);

      sub_1CEFCCC44(v187, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CEFD5338(v168, type metadata accessor for Signpost);
      v156 = v186;
      v40 = fpfs_adopt_log();
    }
  }
}

void sub_1CF7E9E6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8)
{
  v38 = sub_1CF9E5CF8();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  sub_1CF9042A4(a5);
  v20 = v19;

  v37 = a3;
  sub_1CF5DA534(a3, a4, a5, v20, v18, a6, a7);

  if (a8)
  {
    if (a8 != 1)
    {
      v33 = FPNotSupportedError();
      a6();

      return;
    }

    v35 = v18;
    v21 = 0x1000000000000;
  }

  else
  {
    v35 = v18;
    v21 = 0x800000000000;
  }

  v23 = a1[3];
  v22 = a1[4];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v23);
  v25 = sub_1CF9042A4(a5);
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
  v28 = swift_allocObject();
  *(v28 + 152) = a4;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 1;
  *(v28 + 56) = 0u;
  *(v28 + 72) = 0u;
  *(v28 + 88) = 0;
  *(v28 + 120) = v25;
  *(v28 + 128) = v27;
  v29 = v37;
  *(v28 + 136) = v21;
  *(v28 + 144) = v29;
  *(v28 + 96) = xmmword_1CFA04E20;
  *(v28 + 112) = 0;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v31 = v30;
  (*(v36 + 8))(v17, v38);
  v32 = v31 * 1000000000.0;
  if (COERCE__INT64(fabs(v31 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v32 > -9.22337204e18)
  {
    if (v32 < 9.22337204e18)
    {
      sub_1CF5215C0(v28, v32, v24, v23, v22);

      return;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_1CF7EA114(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v10 = sub_1CF9E6118();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 112);
  v41 = v15;
  v16 = !v14 || v14 == 4 && *(a1 + 96) == 0;
  v17 = *(v4 + 24);
  v39 = a3;
  v40 = a4;
  v18 = (*(*v17 + 136))(a1, a2, &v39, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938, v11);
  if (!v5)
  {
    if (v18 < 0)
    {

      sub_1CF9E7B68();
      __break(1u);
    }

    else
    {

      if (v16)
      {
        v19 = fpfs_current_or_default_log();
        v20 = sub_1CF9E6128();
        v21 = (*(*a1 + 424))(v20);

        v22 = sub_1CF9E6108();
        if (os_log_type_enabled(v22, v21))
        {
          v23 = swift_slowAlloc();
          v38 = v21;
          v24 = v23;
          v25 = swift_slowAlloc();
          v39 = v25;
          *v24 = 136446210;

          v26 = sub_1CF059424();
          v28 = v27;

          v29 = sub_1CEFD0DF0(v26, v28, &v39);
          v28, v30, v31, v32, v33, v34, v35, v36;
          *(v24 + 4) = v29;
          _os_log_impl(&dword_1CEFC7000, v22, v38, " ✍️  persist job: %{public}s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v25);
          MEMORY[0x1D386CDC0](v25, -1, -1);
          MEMORY[0x1D386CDC0](v24, -1, -1);
        }

        else
        {
        }

        (*(v41 + 8))(v13, v10);
      }
    }
  }
}

uint64_t sub_1CF7EA444(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v4;
  v9 = sub_1CF9E64A8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = a2;
  v27 = a3;
  v14 = *(v3 + 64);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1CF9E64D8();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v17 = (*(**(v3 + 16) + 576))(0, 1, a1, &v26, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (!v4)
    {
      v18 = v17;
      v5 = sub_1CF8E43C8(v17);
      v18, v19, v20, v21, v22, v23, v24, v25;
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF7EA5EC(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v161 = a2;
  v163 = a1;
  v181 = *MEMORY[0x1E69E9840];
  v158 = sub_1CF9E6118();
  v162 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v159 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5CF8();
  v160 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v140 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v140 - v16;
  v168 = a3;
  v169 = a4;
  v18 = v163;
  v19 = v164;
  v165 = a3;
  LODWORD(v163) = a4;
  v20 = sub_1CF7EA444(v18, a3, a4);
  if (v19)
  {
    return;
  }

  v154 = v17;
  v152 = v15;
  v164 = v14;
  v155 = v13;
  v150 = v10;
  v151 = v8;
  v167 = v20;
  v166 = MEMORY[0x1E69E7CD0];
  v21 = *(v4 + 24);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  v23 = swift_dynamicCastClassUnconditional();
  MEMORY[0x1EEE9AC00](v23);
  *(&v140 - 4) = v4;
  *(&v140 - 3) = &v168;
  *(&v140 - 2) = &v166;
  *(&v140 - 1) = &v167;

  sub_1CF8E4B7C(128, v165, v163, sub_1CF8F9108);
  v156 = v22;
  v157 = v21;
  v148 = v4;

  v31 = v166;
  v32 = v166 + 56;
  v33 = 1 << *(v166 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v166 + 56);
  v36 = (v33 + 63) >> 6;

  for (i = 0; ; i = v39)
  {
    v38 = v162;
    if (!v35)
    {
      break;
    }

    v39 = i;
LABEL_10:
    v40 = *v31[1].tree + ((v39 << 10) | (16 * __clz(__rbit64(v35))));
    v41 = *v40;
    v42 = *(v40 + 8);
    swift_dynamicCastClassUnconditional();

    sub_1CF7FEF8C(v41, v42, 128, v165, v163);
    v35 &= v35 - 1;
  }

  while (1)
  {
    v39 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
    }

    if (v39 >= v36)
    {
      break;
    }

    v35 = *(v32 + 8 * v39);
    ++i;
    if (v35)
    {
      goto LABEL_10;
    }
  }

  v146 = v31;

  v43 = v167;
  v44 = v167 + 56;
  v45 = 1 << *(v167 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v167 + 56);
  v48 = (v45 + 63) >> 6;
  v152 += 6;
  v144 = (v160 + 1);
  v143 = (v38 + 8);
  v160 = &v173;

  v162 = 0;
  v56 = 0;
  *&v57 = 136446466;
  v142 = v57;
  v58 = v148;
  v59 = v155;
  v153 = v43;
  v149 = v44;
  while (2)
  {
    if (v47)
    {
      goto LABEL_22;
    }

    do
    {
      v60 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_59;
      }

      if (v60 >= v48)
      {
        v146, v49, v50, v51, v52, v53, v54, v55;

        v43, v126, v127, v128, v129, v130, v131, v132;
        return;
      }

      v47 = *(v44 + 8 * v60);
      ++v56;
    }

    while (!v47);
    v56 = v60;
LABEL_22:
    v61 = *v43[1].tree + ((v56 << 10) | (16 * __clz(__rbit64(v47))));
    v62 = *v61;
    LOBYTE(v61) = *(v61 + 8);
    v179 = v62;
    v180 = v61;
    (*(**(v58 + 32) + 240))(&v179, 1, &v168, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v63 = v164;
    if ((*v152)(v59, 1, v164) == 1)
    {
      sub_1CEFCCC44(v59, &qword_1EC4C1B40, &unk_1CF9FCB70);
LABEL_15:
      v43 = v153;
LABEL_16:
      v47 &= v47 - 1;
      continue;
    }

    break;
  }

  v64 = v59;
  v65 = v154;
  sub_1CEFE55D0(v64, v154, &unk_1EC4BE360, &qword_1CF9FE650);
  v66 = v65 + *(v63 + 48);
  if ((*(v66 + *(type metadata accessor for ItemMetadata(0) + 80)) & 1) == 0)
  {
    sub_1CEFCCC44(v65, &unk_1EC4BE360, &qword_1CF9FE650);
    v59 = v155;
    v43 = v153;
LABEL_33:
    v44 = v149;
    goto LABEL_16;
  }

  if (v161 <= 0)
  {
    sub_1CEFCCC44(v154, &unk_1EC4BE360, &qword_1CF9FE650);
    v106 = __OFADD__(v162++, 1);
    v59 = v155;
    if (v106)
    {
      goto LABEL_64;
    }

    v43 = v153;
    goto LABEL_33;
  }

  v67 = *(swift_dynamicCastClassUnconditional() + 32);

  v68 = v150;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v70 = v69;
  (*v144)(v68, v151);
  v71 = v70 * 1000000000.0;
  if ((*&v71 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_60;
  }

  v72 = v159;
  if (v71 <= -9.22337204e18)
  {
    goto LABEL_61;
  }

  v44 = v149;
  if (v71 >= 9.22337204e18)
  {
    goto LABEL_62;
  }

  v177 = v179;
  v178 = v180;
  v73 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v74 = v177;
  LODWORD(v141) = v178;
  v75 = sub_1CF9E6108();
  LODWORD(v147) = sub_1CF9E7288();
  v76 = os_log_type_enabled(v75, v147);
  v145 = v67;
  if (v76)
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v140 = v78;
    v170 = v78;
    aBlock = v74;
    *v77 = v142;
    LOBYTE(v172) = v141;
    v141 = v75;
    v79 = VFSItemID.description.getter(v78);
    v81 = v80;
    v82 = sub_1CEFD0DF0(v79, v80, &v170);
    v81, v83, v84, v85, v86, v87, v88, v89;
    *(v77 + 4) = v82;
    *(v77 + 12) = 2082;
    v90 = sub_1CF7F5068(128);
    v92 = v91;
    v93 = sub_1CEFD0DF0(v90, v91, &v170);
    v92, v94, v95, v96, v97, v98, v99, v100;
    *(v77 + 14) = v93;
    v101 = v141;
    _os_log_impl(&dword_1CEFC7000, v141, v147, "⏰  scheduling background download <i:%{public}s reason:%{public}s>", v77, 0x16u);
    v102 = v140;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v102, -1, -1);
    v103 = v77;
    v67 = v145;
    v104 = v72;
    v105 = v165;
    MEMORY[0x1D386CDC0](v103, -1, -1);

    (*v143)(v104, v158);
  }

  else
  {

    (*v143)(v72, v158);
    v105 = v165;
  }

  v107 = sub_1CF9E5278();
  v147 = &v140;
  MEMORY[0x1EEE9AC00](v107);
  *(&v140 - 6) = &v177;
  *(&v140 - 5) = v67;
  *(&v140 - 4) = 0;
  *(&v140 - 24) = 1;
  *(&v140 - 2) = 0;
  *(&v140 - 8) = 1;
  v108 = swift_allocObject();
  *(v108 + 16) = sub_1CF8F9134;
  *(v108 + 24) = &v140 - 8;
  v175 = sub_1CEFE75C0;
  v176 = v108;
  aBlock = MEMORY[0x1E69E9820];
  v172 = 1107296256;
  v173 = sub_1CEFE7548;
  v174 = &block_descriptor_1910;
  v109 = _Block_copy(&aBlock);

  aBlock = 0;
  v110 = [v105 fetchSwift:v109 error:&aBlock];
  _Block_release(v109);
  v111 = aBlock;
  LOBYTE(v109) = swift_isEscapingClosureAtFileLocation();

  if (v109)
  {
    goto LABEL_63;
  }

  v112 = v153;
  if (!v110)
  {
    sub_1CF9E57F8();

    swift_willThrow();

    goto LABEL_57;
  }

  --v161;
  v141 = v110;
  v113 = [v110 next];
  v147 = &v140;
  if ((v113 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v113);
    *(&v140 - 8) = &v177;
    *(&v140 - 7) = 0;
    *(&v140 - 48) = 1;
    *(&v140 - 5) = 0;
    *(&v140 - 32) = 1;
    *(&v140 - 3) = v118;
    *(&v140 - 2) = 128;
    v119 = swift_allocObject();
    *(v119 + 16) = sub_1CF8F9138;
    *(v119 + 24) = &v140 - 10;
    v175 = sub_1CF9034B4;
    v176 = v119;
    aBlock = MEMORY[0x1E69E9820];
    v172 = 1107296256;
    v173 = sub_1CEFE7548;
    v174 = &block_descriptor_1917;
    v120 = _Block_copy(&aBlock);

    aBlock = 0;
    v121 = [v165 executeSwift:v120 error:&aBlock];
    _Block_release(v120);
    v117 = aBlock;
    LOBYTE(v120) = swift_isEscapingClosureAtFileLocation();

    if (v120)
    {
      goto LABEL_65;
    }

    if (!v121)
    {
      goto LABEL_56;
    }

    v122 = v145;
    sub_1CF800340(v165, v163);
    if (*(v122 + qword_1EDEBBAE8))
    {
      if (qword_1EDEAD4D8 != -1)
      {
        swift_once();
      }

      v147 = qword_1EDEBBC10;
      LOBYTE(v170) = 1;
      v123 = swift_allocObject();
      v123[2] = &v170;
      v123[3] = sub_1CF480F64;
      v123[4] = v122;
      v124 = swift_allocObject();
      *(v124 + 16) = sub_1CF8F913C;
      *(v124 + 24) = v123;
      v175 = sub_1CF1C0B54;
      v176 = v124;
      aBlock = MEMORY[0x1E69E9820];
      v172 = 1107296256;
      v173 = sub_1CEFFD02C;
      v174 = &block_descriptor_1927;
      v125 = _Block_copy(&aBlock);

      [v147 runIfPossible_];
      _Block_release(v125);
      LOBYTE(v125) = swift_isEscapingClosureAtFileLocation();

      if (v125)
      {
        goto LABEL_67;
      }
    }

    else
    {
      *(v122 + qword_1EDEBBAE8) = 1;
      if (qword_1EDEAD4D8 != -1)
      {
        swift_once();
      }

      [qword_1EDEBBC10 addWatcher_];
LABEL_51:
    }

    sub_1CEFCCC44(v154, &unk_1EC4BE360, &qword_1CF9FE650);
    v58 = v148;
    v59 = v155;
    goto LABEL_15;
  }

  MEMORY[0x1EEE9AC00](v113);
  *(&v140 - 8) = 128;
  *(&v140 - 7) = &v177;
  *(&v140 - 6) = v145;
  *(&v140 - 5) = 0;
  *(&v140 - 32) = 1;
  *(&v140 - 3) = 0;
  *(&v140 - 16) = 1;
  v114 = swift_allocObject();
  *(v114 + 16) = sub_1CF8F9148;
  *(v114 + 24) = &v140 - 10;
  v175 = sub_1CF9034B4;
  v176 = v114;
  aBlock = MEMORY[0x1E69E9820];
  v172 = 1107296256;
  v173 = sub_1CEFE7548;
  v174 = &block_descriptor_1934;
  v115 = _Block_copy(&aBlock);

  aBlock = 0;
  v116 = [v165 executeSwift:v115 error:&aBlock];
  _Block_release(v115);
  v117 = aBlock;
  LOBYTE(v115) = swift_isEscapingClosureAtFileLocation();

  if (v115)
  {
    goto LABEL_66;
  }

  if (v116)
  {
    sub_1CF800340(v165, v163);
    goto LABEL_51;
  }

LABEL_56:
  sub_1CF9E57F8();

  swift_willThrow();

  v112 = v153;

LABEL_57:
  sub_1CEFCCC44(v154, &unk_1EC4BE360, &qword_1CF9FE650);
  v112, v133, v134, v135, v136, v137, v138, v139;
  v146, v24, v25, v26, v27, v28, v29, v30;
}

void sub_1CF7EB7F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  sub_1CF7EB934(a1, a2, a4, a5, __src);
  if (!v7)
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1CF08B99C(__dst) == 1)
    {
      memcpy(v12, __src, sizeof(v12));
      sub_1CEFCCC44(v12, &unk_1EC4BFC20, &unk_1CFA0A290);
      sub_1CF6E9500(v11, a1, a2);
    }

    else
    {
      memcpy(v12, __src, sizeof(v12));
      if (v12[344] != 2)
      {
        if (sub_1CF7DC52C(a1, a2, *a7))
        {
          sub_1CF8DD3D8(a1, a2, v11);
        }

        else
        {
          sub_1CF6E9500(v11, a1, a2);
        }
      }

      sub_1CEFCCC44(v12, &unk_1EC4BFC20, &unk_1CFA0A290);
    }
  }
}

void sub_1CF7EB934(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v15 = a3;
  v16 = a4;
  v11 = a1;
  v12 = a2;
  v13 = 0;
  (*(*v5 + 168))(__src, &v11, a4 == 2, &v15, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v6)
  {
    sub_1CEFD0994(v11, v12, v13);
  }

  else
  {
    sub_1CEFD0994(v11, v12, v13);
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1CF08B99C(__dst) == 1)
    {
      memcpy(v8, __src, sizeof(v8));
      sub_1CEFCCC44(v8, &unk_1EC4BFD20, &unk_1CFA05440);
      sub_1CF095754(v9);
      memcpy(a5, v9, 0x208uLL);
    }

    else
    {
      memcpy(a5, __src, 0x208uLL);
      nullsub_1();
    }
  }
}

void sub_1CF7EBA74(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v16 = a2;
  v17 = a3;
  v7 = a3 == 2;
  v13 = a1;
  v14 = 0;
  v8 = *(*v4 + 168);
  v9 = a1;
  v8(__src, &v13, v7, &v16, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v5)
  {
    sub_1CF1E53F8(v13, v14, SHIBYTE(v14));
  }

  else
  {
    sub_1CF1E53F8(v13, v14, SHIBYTE(v14));
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1CF08B99C(__dst) == 1)
    {
      memcpy(v10, __src, sizeof(v10));
      sub_1CEFCCC44(v10, &qword_1EC4BFDC8, &unk_1CFA054A0);
      sub_1CF095754(v11);
      memcpy(a4, v11, 0x208uLL);
    }

    else
    {
      memcpy(a4, __src, 0x208uLL);
      nullsub_1();
    }
  }
}

void sub_1CF7EBBCC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    while (1)
    {
      v7 = *v6++;
      v8 = v7;

      a1(&v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t sub_1CF7EBC5C(void *a1, void *a2, int a3)
{
  v32 = a2;
  v4 = v3;
  v24 = a3;
  v6 = sub_1CF9E7388();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_1CF9E74C8();
  MEMORY[0x1EEE9AC00](v26);
  v27 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1CF9E6448();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v25 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_defaultActor_initialize();
  *(v4 + 161) = 0;
  v35 = a1;
  sub_1CF1A91AC(a1, v34);
  sub_1CF1A91AC(v34, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C06E0, &unk_1CFA05AF0);
  v11 = swift_allocObject();
  *(v11 + 72) = 0;
  sub_1CF1A91AC(v33, v11 + 16);
  v12 = v11 + *(*v11 + 136);
  v13 = sub_1CF9E5CF8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = type metadata accessor for FPFeedbackManagerState(0);
  v15 = *(v14 + 20);
  v16 = MEMORY[0x1E69E7CC0];
  v17 = sub_1CF4E06FC(MEMORY[0x1E69E7CC0]);
  __swift_destroy_boxed_opaque_existential_1(v33);
  *(v12 + v15) = v17;
  v18 = v12 + *(v14 + 24);
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v11 + 56) = 0xD000000000000016;
  *(v11 + 64) = 0x80000001CFA46EE0;
  v19 = v31;
  sub_1CF1A6E34();
  __swift_destroy_boxed_opaque_existential_1(v34);
  if (v19)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DB0, &qword_1CFA17F98);
    swift_defaultActor_destroy();
    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v35);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + 112) = v11;
    v20 = v32;
    sub_1CF1A91AC(v32, v4 + 120);
    *(v4 + 160) = v24 & 1;
    sub_1CEFD57E0(0, &qword_1EDEA3510, 0x1E69E9620);
    sub_1CF9E63F8();
    v34[0] = v16;
    sub_1CEFCCCA4(&unk_1EDEA3518, MEMORY[0x1E69E8120], MEMORY[0x1E69E8128]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DC0, &qword_1CFA046D0);
    sub_1CEFCCCEC(&qword_1EDEA3770, &unk_1EC4C4DC0, &qword_1CFA046D0, MEMORY[0x1E69E6328]);
    sub_1CF9E77B8();
    (*(v29 + 104))(v28, *MEMORY[0x1E69E8098], v30);
    v21 = sub_1CF9E74D8();
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v35);
    *(v4 + 168) = v21;
  }

  return v4;
}

uint64_t sub_1CF7EC0A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 2240) = v5;
  *(v6 + 2232) = a5;
  *(v6 + 1705) = a4;
  *(v6 + 2224) = a3;
  *(v6 + 2216) = a2;
  *(v6 + 2208) = a1;
  v7 = sub_1CF9E5E28();
  *(v6 + 2248) = v7;
  *(v6 + 2256) = *(v7 - 8);
  *(v6 + 2264) = swift_task_alloc();
  v8 = sub_1CF9E5E38();
  *(v6 + 2272) = v8;
  *(v6 + 2280) = *(v8 - 8);
  *(v6 + 2288) = swift_task_alloc();
  v9 = sub_1CF9E6388();
  *(v6 + 2296) = v9;
  *(v6 + 2304) = *(v9 - 8);
  *(v6 + 2312) = swift_task_alloc();
  *(v6 + 2320) = swift_task_alloc();
  v10 = sub_1CF9E6498();
  *(v6 + 2328) = v10;
  *(v6 + 2336) = *(v10 - 8);
  *(v6 + 2344) = swift_task_alloc();
  *(v6 + 2352) = swift_task_alloc();
  v11 = sub_1CF9E6448();
  *(v6 + 2360) = v11;
  *(v6 + 2368) = *(v11 - 8);
  *(v6 + 2376) = swift_task_alloc();
  v12 = sub_1CF9E73D8();
  *(v6 + 2384) = v12;
  *(v6 + 2392) = *(v12 - 8);
  *(v6 + 2400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  *(v6 + 2408) = swift_task_alloc();
  *(v6 + 2416) = swift_task_alloc();
  *(v6 + 2424) = swift_task_alloc();
  v13 = sub_1CF9E5A58();
  *(v6 + 2432) = v13;
  v14 = *(v13 - 8);
  *(v6 + 2440) = v14;
  *(v6 + 2448) = *(v14 + 64);
  *(v6 + 2456) = swift_task_alloc();
  *(v6 + 2464) = swift_task_alloc();
  *(v6 + 2472) = swift_task_alloc();
  *(v6 + 2480) = swift_task_alloc();
  *(v6 + 2488) = type metadata accessor for FPFeedbackManagerState(0);
  *(v6 + 2496) = swift_task_alloc();
  *(v6 + 2504) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  *(v6 + 2512) = swift_task_alloc();
  *(v6 + 2520) = swift_task_alloc();
  *(v6 + 2528) = swift_task_alloc();
  *(v6 + 2536) = swift_task_alloc();
  v15 = sub_1CF9E5CF8();
  *(v6 + 2544) = v15;
  *(v6 + 2552) = *(v15 - 8);
  *(v6 + 2560) = swift_task_alloc();
  *(v6 + 2568) = swift_task_alloc();
  *(v6 + 2576) = swift_task_alloc();
  *(v6 + 2584) = swift_task_alloc();
  *(v6 + 2592) = swift_task_alloc();
  *(v6 + 2600) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CF7EC59C, v5, 0);
}

uint64_t sub_1CF7EC59C()
{
  if (!fpfs_supports_tap_to_feedback())
  {
    v2 = *(v0 + 2208);
    v3 = *(v2 + 16);
    v4 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      v325 = MEMORY[0x1E69E7CC0];
      sub_1CEFFA19C(0, v3, 0);
      v4 = v325;
      v5 = (v2 + 32);
      do
      {
        v6 = v5[2];
        v7 = v5[3];
        v8 = v5[4];
        *(v0 + 192) = v5[5];
        v9 = v5[1];
        *(v0 + 112) = *v5;
        *(v0 + 128) = v9;
        *(v0 + 160) = v7;
        *(v0 + 176) = v8;
        *(v0 + 144) = v6;
        v10 = *(v0 + 200);
        sub_1CEFCCBDC(v0 + 112, v0 + 208, &qword_1EC4C2298, &qword_1CFA107F0);
        sub_1CF1A8950(v0 + 128);
        v10, v11, v12, v13, v14, v15, v16, v17;
        v19 = *(v325 + 16);
        v18 = *(v325 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1CEFFA19C((v18 > 1), v19 + 1, 1);
        }

        v20 = *(v0 + 112);
        v21 = *(v0 + 120);
        v22 = *(v0 + 121);
        *(v325 + 16) = v19 + 1;
        v23 = v325 + 16 * v19;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        *(v23 + 41) = v22;
        v5 += 6;
        --v3;
      }

      while (v3);
    }

    v24 = 10;
    goto LABEL_9;
  }

  v1 = *(*(v0 + 2240) + 112);
  *(v0 + 2608) = v1;
  sub_1CF1A6E34();
  v27 = v1;
  v28 = *(v0 + 2552);
  v29 = *(v0 + 2544);
  v30 = *(v0 + 2536);
  v291 = v27;
  v31 = v27 + *(*v27 + 136);
  swift_beginAccess();
  sub_1CEFCCBDC(v31, v30, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v32 = *(v28 + 48);
  *(v0 + 2616) = v32;
  *(v0 + 2624) = (v28 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v33 = v32(v30, 1, v29);
  if (v33 == 1)
  {
    sub_1CEFCCC44(*(v0 + 2536), &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  else
  {
    v41 = *(v0 + 2600);
    v42 = *(v0 + 2592);
    v43 = *(v0 + 2552);
    v44 = *(v0 + 2544);
    (*(v43 + 32))(v41, *(v0 + 2536), v44);
    sub_1CF9E5CC8();
    v45 = sub_1CF9E5C58();
    v46 = *(v43 + 8);
    v46(v42, v44);
    v46(v41, v44);
    if ((v45 & 1) == 0)
    {
      v142 = *(v0 + 2208);
      v143 = *(v142 + 16);
      v4 = MEMORY[0x1E69E7CC0];
      if (v143)
      {
        v326 = MEMORY[0x1E69E7CC0];
        sub_1CEFFA19C(0, v143, 0);
        v4 = v326;
        v144 = (v142 + 32);
        do
        {
          v145 = v144[2];
          v146 = v144[3];
          v147 = v144[4];
          *(v0 + 1344) = v144[5];
          v148 = v144[1];
          *(v0 + 1264) = *v144;
          *(v0 + 1280) = v148;
          *(v0 + 1312) = v146;
          *(v0 + 1328) = v147;
          *(v0 + 1296) = v145;
          v149 = *(v0 + 1352);
          sub_1CEFCCBDC(v0 + 1264, v0 + 16, &qword_1EC4C2298, &qword_1CFA107F0);
          sub_1CF1A8950(v0 + 1280);
          v149, v150, v151, v152, v153, v154, v155, v156;
          v158 = *(v326 + 16);
          v157 = *(v326 + 24);
          if (v158 >= v157 >> 1)
          {
            sub_1CEFFA19C((v157 > 1), v158 + 1, 1);
          }

          v159 = *(v0 + 1264);
          v160 = *(v0 + 1272);
          v161 = *(v0 + 1273);
          *(v326 + 16) = v158 + 1;
          v162 = v326 + 16 * v158;
          *(v162 + 32) = v159;
          *(v162 + 40) = v160;
          *(v162 + 41) = v161;
          v144 += 6;
          --v143;
        }

        while (v143);
      }

      v279 = 0;
      goto LABEL_10;
    }
  }

  v47 = *(v0 + 2208);
  v48 = *(v47 + 16);
  v49 = MEMORY[0x1E69E7CC0];
  if (!v48)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_68;
  }

  v50 = 0;
  v289 = (v0 + 1904);
  v277 = (v0 + 1808);
  v294 = (v0 + 1712);
  v296 = *(v0 + 2488);
  v4 = MEMORY[0x1E69E7CC0];
  v287 = v47 + 32;
  v51 = v291;
  v301 = *(v47 + 16);
  v292 = v31;
  do
  {
    while (1)
    {
      if (v50 >= v48)
      {
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
      }

      v52 = (v287 + 96 * v50);
      v53 = v52[1];
      *(v0 + 304) = *v52;
      *(v0 + 320) = v53;
      v54 = v52[2];
      v55 = v52[3];
      v56 = v52[5];
      *(v0 + 368) = v52[4];
      *(v0 + 384) = v56;
      *(v0 + 336) = v54;
      *(v0 + 352) = v55;
      v57 = __OFADD__(v50++, 1);
      if (v57)
      {
        goto LABEL_134;
      }

      v285 = *(v0 + 304);
      v283 = *(v0 + 312);
      v281 = *(v0 + 313);
      v58 = *(v0 + 368);
      v59 = *(v0 + 376);
      if (v59 != 2 && (v59 & 1) != 0)
      {
        break;
      }

      v318 = *(v0 + 360);
      v321 = *(v0 + 352);
      v298 = v50;
      v312 = *(v0 + 328);
      v315 = *(v0 + 320);
      v60 = *(v0 + 336);
      v309 = *(v0 + 344);
      v307 = *(v0 + 345);
      v304 = *(v0 + 346);
      v61 = v51;
      v63 = *(v51 + 40);
      v62 = *(v51 + 48);
      __swift_project_boxed_opaque_existential_1(v61 + 2, v63);
      v64 = v61[7];
      v65 = v61[8];
      v66 = *(v62 + 16);
      sub_1CEFCCBDC(v0 + 304, v0 + 400, &qword_1EC4C2298, &qword_1CFA107F0);
      v67 = v66(v64, v65, v63, v62);
      v69 = v68;
      if (v68 >> 60 == 15)
      {
        v70 = v292;
      }

      else
      {
        v71 = v67;
        sub_1CF9E5688();
        swift_allocObject();
        sub_1CEFE42D4(v71, v69);
        sub_1CF9E5678();
        sub_1CEFCCCA4(&qword_1EC4C4D70, type metadata accessor for FPFeedbackManagerState, &unk_1CF9FA97C);
        sub_1CF9E5668();
        v72 = *(v0 + 2504);

        sub_1CEFE48D8(v71, v69);
        sub_1CEFE48D8(v71, v69);
        v70 = v292;
        swift_beginAccess();
        sub_1CF8F9B10(v72, v292, type metadata accessor for FPFeedbackManagerState);
        swift_endAccess();
        sub_1CEFD5338(v72, type metadata accessor for FPFeedbackManagerState);
      }

      v51 = v291;
      *(v291 + 72) = 0;
      *(v0 + 1904) = v315;
      *(v0 + 1912) = v312;
      *(v0 + 1920) = v60;
      *(v0 + 1928) = v309;
      *(v0 + 1929) = v307;
      *(v0 + 1930) = v304;
      *(v0 + 1936) = v321;
      *(v0 + 1944) = v318;
      v73 = *(v0 + 1920);
      *v294 = *v289;
      *(v0 + 1728) = v73;
      *(v0 + 1744) = *(v0 + 1936);
      v74 = *(v70 + *(v296 + 20));
      if (*(v74 + 16))
      {
        v75 = sub_1CF7BF13C(v294);
        if (v76)
        {
          v77 = *(*(v74 + 56) + 8 * v75);
          goto LABEL_38;
        }
      }

      sub_1CF8DEF70(0.0, 1.0);
      v77 = v78;
      swift_beginAccess();
      v79 = *(v296 + 20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v324 = *(v70 + v79);
      *(v70 + v79) = 0x8000000000000000;
      v88 = sub_1CF7BF13C(v294);
      v89 = *(*v324 + 16);
      v90 = (v81 & 1) == 0;
      v91 = v89 + v90;
      if (__OFADD__(v89, v90))
      {
        goto LABEL_137;
      }

      v92 = v81;
      if (*(*v324 + 24) >= v91)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v93 = *v324;
          if ((v81 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4D60, &qword_1CFA079B0);
          v114 = sub_1CF9E7BC8();
          v93 = v114;
          v122 = *(*v324 + 16);
          if (v122)
          {
            v123 = (v114 + 64);
            v124 = ((1 << *(v93 + 32)) + 63) >> 6;
            if (v93 != *v324 || v123 >= *v324 + 64 + 8 * v124)
            {
              memmove(v123, (*v324 + 64), 8 * v124);
              v122 = *(*v324 + 16);
            }

            v125 = 0;
            *(v93 + 16) = v122;
            v126 = 1 << *(*v324 + 32);
            v127 = *(*v324 + 64);
            if (v126 < 64)
            {
              v128 = ~(-1 << v126);
            }

            else
            {
              v128 = -1;
            }

            v129 = v128 & v127;
            v130 = (v126 + 63) >> 6;
            if ((v128 & v127) == 0)
            {
              goto LABEL_58;
            }

            while (1)
            {
              v131 = __clz(__rbit64(v129));
              for (v129 &= v129 - 1; ; v129 = (v133 - 1) & v133)
              {
                v134 = v131 | (v125 << 6);
                v135 = (*(*v324 + 48) + 48 * v134);
                v136 = *v135;
                v137 = v135[2];
                *(v0 + 1824) = v135[1];
                *(v0 + 1840) = v137;
                *v277 = v136;
                *&v136 = *(*(*v324 + 56) + 8 * v134);
                v138 = (*(v93 + 48) + 48 * v134);
                v139 = *v135;
                v140 = v135[2];
                v138[1] = v135[1];
                v138[2] = v140;
                *v138 = v139;
                *(*(v93 + 56) + 8 * v134) = v136;
                sub_1CF1A8F60(v277, v0 + 1760);
                if (v129)
                {
                  break;
                }

LABEL_58:
                v132 = v125;
                do
                {
                  v125 = v132 + 1;
                  if (__OFADD__(v132, 1))
                  {
                    goto LABEL_139;
                  }

                  if (v125 >= v130)
                  {
                    goto LABEL_65;
                  }

                  v133 = *(*v324 + 64 + 8 * v125);
                  ++v132;
                }

                while (!v133);
                v131 = __clz(__rbit64(v133));
              }
            }
          }

LABEL_65:
          *v324, v115, v116, v117, v118, v119, v120, v121;
          v51 = v291;
          if ((v92 & 1) == 0)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        sub_1CF7C37F4(v91, isUniquelyReferenced_nonNull_native);
        v93 = *v324;
        v94 = sub_1CF7BF13C(v294);
        if ((v92 & 1) != (v81 & 1))
        {

          return sub_1CF9E8108();
        }

        v88 = v94;
        if ((v92 & 1) == 0)
        {
LABEL_32:
          *(v93 + 8 * (v88 >> 6) + 64) |= 1 << v88;
          v95 = (*(v93 + 48) + 48 * v88);
          v96 = *v294;
          v97 = *(v0 + 1744);
          v95[1] = *(v0 + 1728);
          v95[2] = v97;
          *v95 = v96;
          *(*(v93 + 56) + 8 * v88) = v77;
          v98 = *(v93 + 16);
          v57 = __OFADD__(v98, 1);
          v99 = v98 + 1;
          if (v57)
          {
            goto LABEL_138;
          }

          *(v93 + 16) = v99;
          sub_1CF1A8F60(v289, v0 + 1856);
          goto LABEL_37;
        }
      }

      *(*(v93 + 56) + 8 * v88) = v77;
LABEL_37:
      v100 = *(v0 + 2496);
      v101 = *(v292 + v79);
      *(v292 + v79) = v93;
      v101, v81, v82, v83, v84, v85, v86, v87;
      swift_endAccess();
      *(v51 + 72) = 0;
      sub_1CF9E56C8();
      swift_allocObject();
      sub_1CF9E56B8();
      sub_1CF9E5698();
      sub_1CEFDA34C(v292, v100, type metadata accessor for FPFeedbackManagerState);
      sub_1CEFCCCA4(&qword_1EC4C4D68, type metadata accessor for FPFeedbackManagerState, &unk_1CF9FA954);
      v102 = sub_1CF9E56A8();
      v104 = v103;
      sub_1CEFD5338(*(v0 + 2496), type metadata accessor for FPFeedbackManagerState);
      v106 = *(v51 + 40);
      v105 = *(v51 + 48);
      __swift_project_boxed_opaque_existential_1((v51 + 16), v106);
      (*(v105 + 8))(*(v51 + 56), *(v51 + 64), v102, v104, v106, v105);
      sub_1CEFE4714(v102, v104);

LABEL_38:
      v50 = v298;
      v48 = v301;
      if (v77 > v58)
      {
        sub_1CEFD0988(v285, v283, v281);
        sub_1CEFCCC44(v0 + 304, &qword_1EC4C2298, &qword_1CFA107F0);
        goto LABEL_43;
      }

      sub_1CEFCCC44(v0 + 304, &qword_1EC4C2298, &qword_1CFA107F0);
      if (v298 == v301)
      {
        goto LABEL_75;
      }
    }

    sub_1CEFD0988(v285, *(v0 + 312), v281);
LABEL_43:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1CF1F77F0(0, (*v4->tree + 1), 1, v4, v107, v108, v109, v110);
    }

    v112 = *v4->tree;
    v111 = *v4->tester;
    if (v112 >= v111 >> 1)
    {
      v4 = sub_1CF1F77F0((v111 > 1), (v112 + 1), 1, v4, v107, v108, v109, v110);
    }

    *v4->tree = v112 + 1;
    v113 = v4 + 16 * v112;
    *(v113 + 4) = v285;
    v113[40] = v283;
    v113[41] = v281;
  }

  while (v50 != v48);
LABEL_75:
  v163 = 0;
  v49 = MEMORY[0x1E69E7CC0];
  v164 = *(v0 + 2208) + 32;
  v305 = (v0 + 512);
  v299 = v164;
  do
  {
    v165 = (v164 + 96 * v163);
    while (1)
    {
      if (v163 >= v48)
      {
        goto LABEL_135;
      }

      v166 = v165[1];
      *(v0 + 496) = *v165;
      *(v0 + 512) = v166;
      v167 = v165[2];
      v168 = v165[3];
      v169 = v165[5];
      *(v0 + 560) = v165[4];
      *(v0 + 576) = v169;
      *(v0 + 528) = v167;
      *(v0 + 544) = v168;
      if (__OFADD__(v163, 1))
      {
        goto LABEL_136;
      }

      v322 = v163 + 1;
      v310 = *(v0 + 576);
      v316 = *(v0 + 584);
      v170 = *(v0 + 504);
      v171 = *(v0 + 505);
      v172 = *(v0 + 496);
      *(v0 + 2168) = v172;
      v319 = v170;
      *(v0 + 2176) = v170;
      v313 = v171;
      *(v0 + 2177) = v171;
      v173 = swift_task_alloc();
      *(v173 + 16) = v0 + 2168;
      sub_1CEFCCBDC(v0 + 496, v0 + 592, &qword_1EC4C2298, &qword_1CFA107F0);
      v174 = sub_1CF7F74E4(sub_1CF902DE4, v173, v4);

      if ((v174 & 1) == 0)
      {
        break;
      }

      sub_1CEFCCC44(v0 + 496, &qword_1EC4C2298, &qword_1CFA107F0);
      ++v163;
      v165 += 6;
      v48 = v301;
      if (v322 == v301)
      {
        v141 = v291;
        goto LABEL_88;
      }
    }

    sub_1CEFD0988(v172, v319, v313);
    sub_1CF1A8918(v305, v0 + 1648);

    sub_1CEFCCC44(v0 + 496, &qword_1EC4C2298, &qword_1CFA107F0);
    v175 = swift_isUniquelyReferenced_nonNull_native();
    v176 = v316;
    if ((v175 & 1) == 0)
    {
      v182 = sub_1CF1F796C(0, (*v49->tree + 1), 1, v49, v37, v38, v39, v40);
      v176 = v316;
      v49 = v182;
    }

    v177 = v310;
    v179 = *v49->tree;
    v178 = *v49->tester;
    v180 = v179 + 1;
    v48 = v301;
    if (v179 >= v178 >> 1)
    {
      v183 = sub_1CF1F796C((v178 > 1), (v179 + 1), 1, v49, v37, v38, v39, v40);
      v180 = v179 + 1;
      v176 = v316;
      v177 = v310;
      v49 = v183;
    }

    *&v324[6] = *v305;
    *&v324[22] = *(v0 + 528);
    *&v324[38] = *(v0 + 544);
    *&v324[47] = *(v0 + 553);
    *v49->tree = v180;
    v181 = &v49[3 * v179];
    v181[1].super.isa = v172;
    v181[1]._anon_8[0] = v319;
    v181[1]._anon_8[1] = v313;
    *&v181[2]._anon_8[2] = *&v324[32];
    *&v181[1].tester[2] = *&v324[16];
    *&v181[1]._anon_8[2] = *v324;
    *&v181[2].tester[1] = *&v324[47];
    *&v181[3]._anon_8[1] = *v329;
    *&v181[3]._anon_8[4] = *&v329[3];
    *v181[3].tree = v177;
    *v181[3].tester = v176;
    v163 = v322;
    v164 = v299;
  }

  while (v322 != v301);
LABEL_68:
  v141 = v291;
LABEL_88:
  *(v0 + 2640) = v4;
  *(v0 + 2632) = 0;
  if (!*v49->tree)
  {
    v49, v34, v35, v36, v37, v38, v39, v40;
    v24 = 3;
    goto LABEL_9;
  }

  v184 = *(v0 + 2240);
  v185 = *v49[1].tree;
  *(v0 + 688) = *&v49[1].super.isa;
  *(v0 + 704) = v185;
  v186 = *v49[3].tree;
  v188 = *&v49[2].super.isa;
  v187 = *v49[2].tree;
  *(v0 + 752) = *&v49[3].super.isa;
  *(v0 + 768) = v186;
  *(v0 + 720) = v188;
  *(v0 + 736) = v187;
  sub_1CEFCCBDC(v0 + 688, v0 + 784, &qword_1EC4BE6B0, &unk_1CF9FE520);
  v49, v189, v190, v191, v192, v193, v194, v195;
  if ((*(v184 + 160) & 1) == 0 && !fp_shouldObfuscateFilenames())
  {
    v4, v196, v197, v198, v199, v200, v201, v202;
    if (v48)
    {
      v228 = *(v0 + 2208);
      v328 = MEMORY[0x1E69E7CC0];
      sub_1CEFFA19C(0, v48, 0);
      v4 = v328;
      v229 = (v228 + 32);
      for (i = v48 - 1; ; --i)
      {
        v231 = v229[2];
        v232 = v229[3];
        v233 = v229[4];
        *(v0 + 960) = v229[5];
        v234 = v229[1];
        *(v0 + 880) = *v229;
        *(v0 + 896) = v234;
        *(v0 + 928) = v232;
        *(v0 + 944) = v233;
        *(v0 + 912) = v231;
        v235 = *(v0 + 968);
        sub_1CEFCCBDC(v0 + 880, v0 + 976, &qword_1EC4C2298, &qword_1CFA107F0);
        sub_1CF1A8950(v0 + 896);
        v235, v236, v237, v238, v239, v240, v241, v242;
        v244 = *(v328 + 16);
        v243 = *(v328 + 24);
        if (v244 >= v243 >> 1)
        {
          sub_1CEFFA19C((v243 > 1), v244 + 1, 1);
        }

        v245 = *(v0 + 880);
        v246 = *(v0 + 888);
        v247 = *(v0 + 889);
        *(v328 + 16) = v244 + 1;
        v248 = v328 + 16 * v244;
        *(v248 + 32) = v245;
        *(v248 + 40) = v246;
        *(v248 + 41) = v247;
        if (!i)
        {
          break;
        }

        v229 += 6;
      }

      sub_1CEFCCC44(v0 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
    }

    else
    {
      sub_1CEFCCC44(v0 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
      v4 = MEMORY[0x1E69E7CC0];
    }

    v24 = 11;
LABEL_9:
    v279 = v24;
LABEL_10:

    v25 = *(v0 + 8);

    return v25(v279, v4);
  }

  v203 = *(v0 + 2240);
  if (*(v203 + 161) == 1)
  {
    v4, v196, v197, v198, v199, v200, v201, v202;
    if (v48)
    {
      v204 = *(v0 + 2208);
      v327 = MEMORY[0x1E69E7CC0];
      sub_1CEFFA19C(0, v48, 0);
      v4 = v327;
      v205 = (v204 + 32);
      for (j = v48 - 1; ; --j)
      {
        v207 = v205[2];
        v208 = v205[3];
        v209 = v205[4];
        *(v0 + 1536) = v205[5];
        v210 = v205[1];
        *(v0 + 1456) = *v205;
        *(v0 + 1472) = v210;
        *(v0 + 1504) = v208;
        *(v0 + 1520) = v209;
        *(v0 + 1488) = v207;
        v211 = *(v0 + 1544);
        sub_1CEFCCBDC(v0 + 1456, v0 + 1360, &qword_1EC4C2298, &qword_1CFA107F0);
        sub_1CF1A8950(v0 + 1472);
        v211, v212, v213, v214, v215, v216, v217, v218;
        v220 = *(v327 + 16);
        v219 = *(v327 + 24);
        if (v220 >= v219 >> 1)
        {
          sub_1CEFFA19C((v219 > 1), v220 + 1, 1);
        }

        v221 = *(v0 + 1456);
        v222 = *(v0 + 1464);
        v223 = *(v0 + 1465);
        *(v327 + 16) = v220 + 1;
        v224 = v327 + 16 * v220;
        *(v224 + 32) = v221;
        *(v224 + 40) = v222;
        *(v224 + 41) = v223;
        if (!j)
        {
          break;
        }

        v205 += 6;
      }

      sub_1CEFCCC44(v0 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
    }

    else
    {
      sub_1CEFCCC44(v0 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
      v4 = MEMORY[0x1E69E7CC0];
    }

    v24 = 5;
    goto LABEL_9;
  }

  v225 = *(v0 + 2488);
  v226 = *(*v141 + 136);
  *(v0 + 2648) = v226;
  v227 = v141 + v226 + *(v225 + 24);
  v323 = (*(v227 + 8) & 1) == 0 && *v227 > 2uLL;
  if (!fpfs_is_internal_build())
  {
    goto LABEL_126;
  }

  v249 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v250 = sub_1CF9E6888();
  v251 = [v249 initWithSuiteName_];

  if (!v251)
  {
    goto LABEL_126;
  }

  v252 = sub_1CF9E6888();
  v253 = [v251 objectForKey_];

  if (!v253)
  {

    *(v0 + 1992) = 0u;
    *(v0 + 2008) = 0u;
    sub_1CEFCCC44(v0 + 1992, &unk_1EC4BEC50, &qword_1CF9FB4B0);
LABEL_126:
    v257 = 300;
    goto LABEL_127;
  }

  sub_1CF9E7728();
  swift_unknownObjectRelease();
  sub_1CEFCCC44(v0 + 1992, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  v254 = sub_1CF9E6888();
  v255 = [v251 integerForKey_];

  v256 = 5;
  if (v255 > 5)
  {
    v256 = v255;
  }

  if (v256 >= 600)
  {
    v257 = 600;
  }

  else
  {
    v257 = v256;
  }

LABEL_127:
  v258 = *(v0 + 2440);
  v259 = *(v0 + 2432);
  v260 = *(v0 + 2424);
  v261 = *(v0 + 2224);
  *(v203 + 161) = 1;
  v262 = swift_allocObject();
  *(v0 + 2656) = v262;
  *(v262 + 16) = 0;
  sub_1CEFCCBDC(v261, v260, &unk_1EC4BE310, qword_1CF9FCBE0);
  v263 = *(v258 + 48);
  *(v0 + 2664) = v263;
  *(v0 + 2672) = (v258 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v263(v260, 1, v259) == 1)
  {
    sub_1CEFCCC44(*(v0 + 2424), &unk_1EC4BE310, qword_1CF9FCBE0);
    v264 = 0;
  }

  else
  {
    v320 = *(v0 + 2480);
    v280 = *(v0 + 2472);
    v311 = *(v0 + 2432);
    v314 = *(v0 + 2440);
    v265 = *(v0 + 2400);
    v266 = *(v0 + 2392);
    v267 = *(v0 + 2384);
    v284 = *(v0 + 2448);
    v286 = *(v0 + 2376);
    v288 = *(v0 + 2368);
    v290 = *(v0 + 2360);
    v300 = *(v0 + 2352);
    v302 = *(v0 + 2336);
    v293 = *(v0 + 2344);
    v295 = *(v0 + 2320);
    v306 = *(v0 + 2328);
    v308 = *(v0 + 2312);
    v297 = *(v0 + 2304);
    v317 = *(v0 + 2296);
    v278 = *(v0 + 2232);
    v282 = *(v314 + 32);
    v282();
    sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
    *(v0 + 2200) = MEMORY[0x1E69E7CC0];
    sub_1CEFCCCA4(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
    sub_1CF9E77B8();
    v264 = sub_1CF9E73E8();
    (*(v266 + 8))(v265, v267);
    ObjectType = swift_getObjectType();
    v268 = swift_allocObject();
    swift_weakInit();
    sub_1CF1A91AC(v278, v0 + 1952);
    (*(v314 + 16))(v280, v320, v311);
    v269 = (*(v314 + 80) + 64) & ~*(v314 + 80);
    v270 = swift_allocObject();
    *(v270 + 16) = v268;
    sub_1CF054EA0((v0 + 1952), v270 + 24);
    (v282)(v270 + v269, v280, v311);
    *(v270 + ((v284 + v269 + 7) & 0xFFFFFFFFFFFFFFF8)) = v262;

    sub_1CF042F9C();
    sub_1CEFD5828(0, v286, sub_1CF8F8F44, v270, ObjectType);

    (*(v288 + 8))(v286, v290);

    sub_1CF9E6478();
    *v295 = v257;
    (*(v297 + 104))(v295, *MEMORY[0x1E69E7F48], v317);
    MEMORY[0x1D3868740](v293, v295);
    v271 = *(v297 + 8);
    v271(v295, v317);
    v303 = *(v302 + 8);
    v303(v293, v306);
    sub_1CEFD5B64(v295);
    sub_1CEFD5BD8(v308);
    MEMORY[0x1D3869770](v300, v295, v308, ObjectType);
    v271(v308, v317);
    v271(v295, v317);
    v303(v300, v306);
    sub_1CF9E7428();
    sub_1CF9E7448();
    (*(v314 + 8))(v320, v311);
    swift_unknownObjectRetain();
  }

  *(v0 + 2680) = v264;
  v272 = *(v0 + 2232);
  v273 = *(v0 + 768);
  v274 = *(v0 + 776);
  *(v0 + 2688) = v274;
  __swift_project_boxed_opaque_existential_1(v272, v272[3]);
  v275 = swift_task_alloc();
  *(v0 + 2696) = v275;
  *v275 = v0;
  v275[1] = sub_1CF7EE1B4;

  return sub_1CF36E168(v273, v274, v323);
}

uint64_t sub_1CF7EE1B4(char a1)
{
  v2 = *(*v1 + 2240);
  *(*v1 + 1706) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1CF7EE2F8, v2, 0);
}

uint64_t sub_1CF7EE2F8(uint64_t a1)
{
  if (*(v1 + 2680))
  {
    swift_getObjectType();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  v2 = *(v1 + 1706);
  v3 = *(v1 + 2488);
  *(*(v1 + 2240) + 161) = 0;
  v4 = *(v3 + 24);
  v5 = *(v1 + 2648);
  v6 = *(v1 + 2608);
  if (v2 == 1)
  {
    v7 = (v6 + v5 + v4);
    if (v7[1])
    {
      v8 = 1;
    }

    else
    {
      v9 = *v7;
      v10 = __CFADD__(v9, 1);
      v8 = v9 + 1;
      if (v10)
      {
        __break(1u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = *(v1 + 2632);
  v12 = v6 + v5 + v4;
  *v12 = v8;
  *(v12 + 8) = 0;
  *(v6 + 72) = 1;
  sub_1CF7F1D28();
  if (v11)
  {
    *(v1 + 2640), v13, v14, v15, v16, v17, v18, v19;

    swift_unknownObjectRelease();
LABEL_10:
    sub_1CEFCCC44(v1 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);

    v20 = *(v1 + 8);

    return v20();
  }

  if (*(v1 + 1706) > 2u)
  {
    goto LABEL_16;
  }

  if (*(v1 + 1706))
  {
    if (*(v1 + 1706) != 1)
    {
      *(v1 + 2640), v13, v14, v15, v16, v17, v18, v19;
      sub_1CF9E5C18();
      sub_1CF1A6E34();
      v62 = *(v1 + 2648);
      v63 = *(v1 + 2608);
      v64 = *(v1 + 2552);
      v65 = *(v1 + 2544);
      v66 = *(v1 + 2528);
      (*(v64 + 16))(v66, *(v1 + 2584), v65);
      (*(v64 + 56))(v66, 0, 1, v65);
      swift_beginAccess();
      sub_1CEFDA9E0(v66, v63 + v62, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      swift_endAccess();
      *(v63 + 72) = 1;
      sub_1CF7F1D28();
      v92 = *(v1 + 2664);
      v93 = *(v1 + 2432);
      v94 = *(v1 + 2416);
      v95 = *(v1 + 2224);
      (*(*(v1 + 2552) + 8))(*(v1 + 2584), *(v1 + 2544));
      sub_1CEFCCBDC(v95, v94, &unk_1EC4BE310, qword_1CF9FCBE0);
      if (v92(v94, 1, v93) == 1)
      {
        sub_1CEFCCC44(*(v1 + 2416), &unk_1EC4BE310, qword_1CF9FCBE0);
      }

      else
      {
        (*(*(v1 + 2440) + 32))(*(v1 + 2464), *(v1 + 2416), *(v1 + 2432));
        v144 = [objc_opt_self() defaultManager];
        v145 = sub_1CF9E5928();
        *(v1 + 2192) = 0;
        v146 = [v144 removeItemAtURL:v145 error:v1 + 2192];

        v147 = *(v1 + 2192);
        v148 = *(v1 + 2464);
        v149 = *(v1 + 2440);
        v150 = *(v1 + 2432);
        if ((v146 & 1) == 0)
        {
          v153 = v147;
          sub_1CF9E57F8();

          swift_willThrow();
          swift_unknownObjectRelease();
          (*(v149 + 8))(v148, v150);
          goto LABEL_44;
        }

        v151 = *(v149 + 8);
        v152 = v147;
        v151(v148, v150);
      }

      swift_unknownObjectRelease();
      sub_1CEFCCC44(v1 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
      v154 = MEMORY[0x1E69E7CC0];
      v45 = 8;
      goto LABEL_21;
    }

LABEL_16:
    v162 = *(v1 + 2616);
    v22 = *(v1 + 2568);
    v23 = *(v1 + 2552);
    v158 = *(v1 + 2544);
    v24 = *(v1 + 2512);
    v25 = *(v1 + 2288);
    v156 = *(v1 + 2280);
    v160 = *(v1 + 2272);
    v26 = *(v1 + 2264);
    v27 = *(v1 + 2256);
    v28 = *(v1 + 2248);
    v29 = *(v1 + 2608) + *(v1 + 2648) + *(*(v1 + 2488) + 24);
    v30 = *(v29 + 8) | (*v29 != 1);
    v31 = [objc_opt_self() defaultStore];
    v32 = v31;
    v33 = &selRef_spsFeedbackBackoffAfterOtherResponses_MultipleAttempts_InSeconds;
    if ((v30 & 1) == 0)
    {
      v33 = &selRef_spsFeedbackBackoffAfterOtherResponsesInSeconds;
    }

    [v31 *v33];

    sub_1CF9E5E08();
    (*(v27 + 104))(v26, *MEMORY[0x1E6969A98], v28);
    sub_1CF9E5CC8();
    sub_1CF9E5DF8();
    v34 = *(v23 + 8);
    v34(v22, v158);
    (*(v27 + 8))(v26, v28);
    (*(v156 + 8))(v25, v160);
    v35 = v162(v24, 1, v158);
    v43 = *(v1 + 2512);
    if (v35 == 1)
    {
      *(v1 + 2640), v36, v37, v38, v39, v40, v41, v42;
      sub_1CEFCCC44(v43, &unk_1EC4BEDC0, &unk_1CF9FEEA0);

      swift_unknownObjectRelease();
      sub_1CEFCCC44(v1 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
      v44 = MEMORY[0x1E69E7CC0];
LABEL_20:
      v154 = v44;
      v45 = 4;
LABEL_21:
      v155 = v45;

      v46 = *(v1 + 8);

      return v46(v155, v154);
    }

    (*(*(v1 + 2552) + 32))(*(v1 + 2560), *(v1 + 2512), *(v1 + 2544));
    sub_1CF1A6E34();
    v47 = *(v1 + 2648);
    v48 = *(v1 + 2608);
    v49 = *(v1 + 2552);
    v50 = *(v1 + 2544);
    v51 = *(v1 + 2528);
    (*(v49 + 16))(v51, *(v1 + 2560), v50);
    (*(v49 + 56))(v51, 0, 1, v50);
    swift_beginAccess();
    sub_1CEFDA9E0(v51, v48 + v47, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    swift_endAccess();
    *(v48 + 72) = 1;
    sub_1CF7F1D28();
    v72 = *(v1 + 2664);
    v73 = *(v1 + 2432);
    v74 = *(v1 + 2408);
    sub_1CEFCCBDC(*(v1 + 2224), v74, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (v72(v74, 1, v73) == 1)
    {
      v75 = *(v1 + 2408);
      v34(*(v1 + 2560), *(v1 + 2544));
      swift_unknownObjectRelease();
      sub_1CEFCCC44(v75, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_33:

      sub_1CEFCCC44(v1 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
      v154 = *(v1 + 2640);
      v45 = 7;
      goto LABEL_21;
    }

    (*(*(v1 + 2440) + 32))(*(v1 + 2456), *(v1 + 2408), *(v1 + 2432));
    v76 = [objc_opt_self() defaultManager];
    v77 = sub_1CF9E5928();
    *(v1 + 2184) = 0;
    v78 = [v76 removeItemAtURL:v77 error:v1 + 2184];

    v79 = *(v1 + 2184);
    if (v78)
    {
      v87 = *(v1 + 2560);
      v88 = *(v1 + 2544);
      v89 = *(v1 + 2456);
      v90 = *(v1 + 2440);
      v91 = *(v1 + 2432);
      swift_unknownObjectRelease();
      (*(v90 + 8))(v89, v91);
      v34(v87, v88);
      goto LABEL_33;
    }

    v139 = v79;
    v165 = *(v1 + 2560);
    v140 = *(v1 + 2544);
    v141 = *(v1 + 2456);
    v142 = *(v1 + 2440);
    v143 = *(v1 + 2432);
    *(v1 + 2640), v80, v81, v82, v83, v84, v85, v86;
    sub_1CF9E57F8();

    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v142 + 8))(v141, v143);
    v34(v165, v140);
LABEL_44:

    goto LABEL_10;
  }

  v163 = *(v1 + 2616);
  v52 = *(v1 + 2568);
  v157 = *(v1 + 2552);
  v159 = *(v1 + 2544);
  v53 = *(v1 + 2520);
  v54 = *(v1 + 2288);
  v55 = *(v1 + 2280);
  v161 = *(v1 + 2272);
  v56 = *(v1 + 2264);
  v57 = *(v1 + 2256);
  v58 = *(v1 + 2248);
  v59 = [objc_opt_self() defaultStore];
  [v59 spsFeedbackBackoffAfterSayingYesInSeconds];

  sub_1CF9E5E08();
  (*(v57 + 104))(v56, *MEMORY[0x1E6969A98], v58);
  sub_1CF9E5CC8();
  sub_1CF9E5DF8();
  v60 = *(v157 + 8);
  *(v1 + 2704) = v60;
  *(v1 + 2712) = (v157 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v60(v52, v159);
  (*(v57 + 8))(v56, v58);
  (*(v55 + 8))(v54, v161);
  if (v163(v53, 1, v159) == 1)
  {
    v61 = *(v1 + 2520);
    swift_unknownObjectRelease();
    sub_1CEFCCC44(v61, &unk_1EC4BEDC0, &unk_1CF9FEEA0);

    sub_1CEFCCC44(v1 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
    v44 = *(v1 + 2640);
    goto LABEL_20;
  }

  (*(*(v1 + 2552) + 32))(*(v1 + 2576), *(v1 + 2520), *(v1 + 2544));
  sub_1CF1A6E34();
  v67 = *(v1 + 2648);
  v68 = *(v1 + 2608);
  v69 = *(v1 + 2552);
  v70 = *(v1 + 2544);
  v71 = *(v1 + 2528);
  (*(v69 + 16))(v71, *(v1 + 2576), v70);
  (*(v69 + 56))(v71, 0, 1, v70);
  swift_beginAccess();
  sub_1CEFDA9E0(v71, v68 + v67, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  swift_endAccess();
  *(v68 + 72) = 1;
  sub_1CF7F1D28();
  v96 = *(v1 + 2688);
  v97 = *(v1 + 2232);
  v98 = *(v1 + 688);
  v99 = *(v1 + 696);
  v100 = *(v1 + 697);
  v101 = *(v1 + 712);
  v166 = *(v1 + 720);
  v167 = *(v1 + 2656);
  v164 = *(v1 + 1705);
  sub_1CEFCCBDC(v1 + 688, v1 + 1072, &qword_1EC4BE6B0, &unk_1CF9FE520);
  v96, v102, v103, v104, v105, v106, v107, v108;

  sub_1CF1A8950(v1 + 704);
  sub_1CEFCCBDC(v1 + 688, v1 + 1168, &qword_1EC4BE6B0, &unk_1CF9FE520);
  v96, v109, v110, v111, v112, v113, v114, v115;
  sub_1CF1A8950(v1 + 704);
  v116 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v117 = sub_1CF9E6888();
  v101, v118, v119, v120, v121, v122, v123, v124;
  v125 = [v116 initWithDomain:v117 code:v166 userInfo:0];
  *(v1 + 2720) = v125;

  sub_1CEFD0994(v98, v99, v100);
  sub_1CEFD0994(v98, v99, v100);
  __swift_project_boxed_opaque_existential_1(v97, v97[3]);
  sub_1CEFCCBDC(v1 + 688, v1 + 1552, &qword_1EC4BE6B0, &unk_1CF9FE520);
  sub_1CF1A8950(v1 + 704);
  v96, v126, v127, v128, v129, v130, v131, v132;
  v133 = sub_1CF9051CC(v98, v99 | (v100 << 8));
  v135 = v134;
  *(v1 + 2728) = v134;
  sub_1CEFD0994(v98, v99, v100);
  v136 = *(v167 + 16);
  v137 = swift_task_alloc();
  *(v1 + 2736) = v137;
  *v137 = v1;
  v137[1] = sub_1CF7EF3EC;
  v138 = *(v1 + 2216);

  return sub_1CF36F790(v133, v135, v125, v138, v136 & 1, v164 & 1);
}

uint64_t sub_1CF7EF3EC()
{
  v2 = *v1;
  v2[343] = v0;

  v10 = v2[341];
  if (v0)
  {
    v11 = v2[330];
    v12 = v2[280];
    v10, v3, v4, v5, v6, v7, v8, v9;
    v11, v13, v14, v15, v16, v17, v18, v19;
    v20 = sub_1CF7EF7DC;
  }

  else
  {
    v12 = v2[280];
    v10, v3, v4, v5, v6, v7, v8, v9;
    v20 = sub_1CF7EF56C;
  }

  return MEMORY[0x1EEE6DFA0](v20, v12, 0);
}

uint64_t sub_1CF7EF56C()
{
  v1 = *(v0 + 2704);
  v2 = *(v0 + 2576);
  v3 = *(v0 + 2544);

  swift_unknownObjectRelease();
  v1(v2, v3);

  sub_1CEFCCC44(v0 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
  v6 = *(v0 + 2640);

  v4 = *(v0 + 8);

  return v4(6, v6);
}

uint64_t sub_1CF7EF7DC()
{
  v1 = *(v0 + 2704);
  v2 = *(v0 + 2576);
  v3 = *(v0 + 2544);

  swift_unknownObjectRelease();
  v1(v2, v3);

  sub_1CEFCCC44(v0 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);

  v4 = *(v0 + 8);

  return v4();
}

void sub_1CF7EFA44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = a1;
  v88 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, v1, 0);
  v3 = v88;
  v4 = v2 + 64;
  v5 = sub_1CF9E77C8();
  v6 = 0;
  v7 = *(v2 + 36);
  v77 = v2 + 72;
  v78 = v1;
  v80 = v2 + 64;
  v81 = v2;
  v79 = v7;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_36;
    }

    if (v7 != *(v2 + 36))
    {
      goto LABEL_37;
    }

    v82 = v6;
    v83 = v3;
    v11 = *(v2 + 56);
    v12 = *(v2 + 48) + 16 * v5;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 9);
    v16 = (v11 + 16 * v5);
    v17 = *v16;
    v18 = v16[1];
    swift_bridgeObjectRetain_n();
    sub_1CEFD0988(v13, v14, v15);
    sub_1CEFD0988(v13, v14, v15);
    sub_1CEFD0994(v13, v14, v15);
    v18, v19, v20, v21, v22, v23, v24, v25;
    sub_1CEFD0988(v13, v14, v15);
    if (v15)
    {
      v86 = 0x28726568746F2ELL;
      v87 = 0xE700000000000000;
      v26 = NSFileProviderItemIdentifier.description.getter(v13);
      v28 = v27;
      MEMORY[0x1D3868CC0](v26);
      v28, v29, v30, v31, v32, v33, v34, v35;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      sub_1CEFD0994(v13, v14, 1);
      goto LABEL_23;
    }

    v86 = 0x286E69616D2ELL;
    v87 = 0xE600000000000000;
    if (v14)
    {
      if (v14 != 1)
      {
        if (v13)
        {
          v46 = 0x6873617274;
        }

        else
        {
          v46 = 1953460082;
        }

        if (v13)
        {
          v47 = 0xE500000000000000;
        }

        else
        {
          v47 = 0xE400000000000000;
        }

        goto LABEL_22;
      }

      v84 = 0x284449656C6966;
      v85 = 0xE700000000000000;
    }

    else
    {
      v84 = 0x284449636F64;
      v85 = 0xE600000000000000;
    }

    v36 = sub_1CF9E7F98();
    v38 = v37;
    MEMORY[0x1D3868CC0](v36);
    v38, v39, v40, v41, v42, v43, v44, v45;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v46 = v84;
    v47 = v85;
LABEL_22:
    MEMORY[0x1D3868CC0](v46, v47);
    v47, v48, v49, v50, v51, v52, v53, v54;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
LABEL_23:
    MEMORY[0x1D3868CC0](2108704, 0xE300000000000000);
    MEMORY[0x1D3868CC0](v17, v18);
    sub_1CEFD0994(v13, v14, v15);
    v18, v55, v56, v57, v58, v59, v60, v61;
    v3 = v83;
    v68 = *(v83 + 16);
    v67 = *(v83 + 24);
    if (v68 >= v67 >> 1)
    {
      sub_1CEFE95CC((v67 > 1), v68 + 1, 1);
      v3 = v83;
    }

    *(v3 + 16) = v68 + 1;
    v69 = v3 + 16 * v68;
    *(v69 + 32) = v86;
    *(v69 + 40) = v87;
    v2 = v81;
    v8 = 1 << *(v81 + 32);
    if (v5 >= v8)
    {
      goto LABEL_38;
    }

    v4 = v80;
    v70 = *(v80 + 8 * v10);
    if ((v70 & (1 << v5)) == 0)
    {
      goto LABEL_39;
    }

    v7 = v79;
    if (v79 != *(v81 + 36))
    {
      goto LABEL_40;
    }

    v71 = v70 & (-2 << (v5 & 0x3F));
    if (v71)
    {
      v8 = __clz(__rbit64(v71)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v78;
    }

    else
    {
      v72 = v10 << 6;
      v73 = v10 + 1;
      v9 = v78;
      v74 = (v77 + 8 * v10);
      while (v73 < (v8 + 63) >> 6)
      {
        v76 = *v74++;
        v75 = v76;
        v72 += 64;
        ++v73;
        if (v76)
        {
          sub_1CF0663D8(v5, v79, 0, v62, v63, v64, v65, v66);
          v8 = __clz(__rbit64(v75)) + v72;
          goto LABEL_4;
        }
      }

      sub_1CF0663D8(v5, v79, 0, v62, v63, v64, v65, v66);
    }

LABEL_4:
    v6 = v82 + 1;
    v5 = v8;
    if (v82 + 1 == v9)
    {
      return;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_1CF7EFEA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v34 = MEMORY[0x1E69E7CC0];
  v32 = *(a1 + 16);
  sub_1CEFFA19C(0, v1, 0);
  v2 = v34;
  v3 = a1 + 56;
  result = sub_1CF9E77C8();
  v10 = v32;
  v11 = a1;
  v12 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v11 + 32))
  {
    v14 = result >> 6;
    v15 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v16 = *(v11 + 36);
    v17 = *(v11 + 48) + 16 * result;
    v18 = *v17;
    v19 = *(v17 + 8);
    v21 = *(v34 + 16);
    v20 = *(v34 + 24);
    if (v21 >= v20 >> 1)
    {
      v30 = *(v11 + 36);
      v31 = result;
      sub_1CEFFA19C((v20 > 1), v21 + 1, 1);
      v10 = v32;
      v11 = a1;
      v16 = v30;
      result = v31;
    }

    *(v34 + 16) = v21 + 1;
    v22 = v34 + 16 * v21;
    *(v22 + 32) = v18;
    *(v22 + 40) = v19;
    *(v22 + 41) = 0;
    v13 = 1 << *(v11 + 32);
    if (result >= v13)
    {
      goto LABEL_22;
    }

    v23 = *(v3 + 8 * v14);
    if ((v23 & v15) == 0)
    {
      goto LABEL_23;
    }

    if (v16 != *(v11 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (result & 0x3F));
    if (v24)
    {
      v13 = __clz(__rbit64(v24)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v14 << 6;
      v26 = v14 + 1;
      v27 = (a1 + 64 + 8 * v14);
      while (v26 < (v13 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          sub_1CF0663D8(result, v16, 0, v5, v6, v7, v8, v9);
          v10 = v32;
          v11 = a1;
          v13 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      sub_1CF0663D8(result, v16, 0, v5, v6, v7, v8, v9);
      v10 = v32;
      v11 = a1;
    }

LABEL_4:
    ++v12;
    result = v13;
    if (v12 == v10)
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

void sub_1CF7F00D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v59 = MEMORY[0x1E69E7CC0];
    sub_1CEFFA19C(0, v1, 0);
    v3 = v59;
    v4 = v2 + 64;
    v5 = sub_1CF9E77C8();
    if (v5 < 0 || (v6 = v5, v5 >= 1 << *(v2 + 32)))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      v37 = v2 + 72;
      v38 = v1;
      v7 = *(v2 + 36);
      v8 = 1;
      v39 = v7;
      v40 = v2 + 64;
      v41 = v2;
      while ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
      {
        if (v7 != *(v2 + 36))
        {
          goto LABEL_26;
        }

        v60 = v6 >> 6;
        v42 = v8;
        v9 = *(v2 + 56);
        v10 = (*(v2 + 48) + 48 * v6);
        v11 = *(v10 + 27);
        v12 = v10[1];
        v46 = *v10;
        v47[0] = v12;
        *(v47 + 11) = v11;
        v13 = v10[1];
        v44 = *v10;
        *v45 = v13;
        *&v45[11] = *(v10 + 27);
        v14 = (v9 + 24 * v6);
        v15 = *v14;
        v16 = v14[1];
        v17 = v14[2];
        memmove(&__dst, v10, 0x2BuLL);
        v50[0] = v44;
        v50[1] = *v45;
        v50[2] = *&v45[16];
        v51 = v15;
        v52 = v16;
        v53 = v17;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_1CEFCCBDC(&v46, v43, &qword_1EC4BE1A0, &unk_1CFA17130);
        sub_1CEFCCBDC(&__dst, v43, &qword_1EC4BE1A0, &unk_1CFA17130);
        sub_1CEFCCC44(v50, &qword_1EC4C4D88, &qword_1CFA17F78);
        v54 = __dst;
        v55[0] = v49[0];
        *(v55 + 11) = *(v49 + 11);
        v56 = v15;
        v57 = v16;
        v58 = v17;
        v18 = __dst;
        v19 = BYTE8(__dst);
        v20 = BYTE9(__dst);
        sub_1CEFD0988(__dst, BYTE8(__dst), SBYTE9(__dst));
        sub_1CEFCCC44(&v54, &qword_1EC4C4D88, &qword_1CFA17F78);
        v59 = v3;
        v27 = *(v3 + 16);
        v26 = *(v3 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1CEFFA19C((v26 > 1), v27 + 1, 1);
          v3 = v59;
        }

        *(v3 + 16) = v27 + 1;
        v28 = v3 + 16 * v27;
        *(v28 + 32) = v18;
        *(v28 + 40) = v19;
        *(v28 + 41) = v20;
        v2 = v41;
        v29 = 1 << *(v41 + 32);
        if (v6 >= v29)
        {
          goto LABEL_27;
        }

        v4 = v40;
        v30 = *(v40 + 8 * v60);
        if ((v30 & (1 << v6)) == 0)
        {
          goto LABEL_28;
        }

        v7 = v39;
        if (v39 != *(v41 + 36))
        {
          goto LABEL_29;
        }

        v31 = v30 & (-2 << (v6 & 0x3F));
        if (v31)
        {
          v6 = __clz(__rbit64(v31)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v32 = v60 << 6;
          v33 = v60 + 1;
          v34 = (v37 + 8 * v60);
          while (v33 < (v29 + 63) >> 6)
          {
            v36 = *v34++;
            v35 = v36;
            v32 += 64;
            ++v33;
            if (v36)
            {
              sub_1CF0663D8(v6, v39, 0, v21, v22, v23, v24, v25);
              v6 = __clz(__rbit64(v35)) + v32;
              goto LABEL_19;
            }
          }

          sub_1CF0663D8(v6, v39, 0, v21, v22, v23, v24, v25);
          v6 = v29;
        }

LABEL_19:
        if (v42 == v38)
        {
          return;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          v8 = v42 + 1;
          if (v6 < 1 << *(v41 + 32))
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

_TtC18FileProviderDaemon8FSTester *sub_1CF7F0454(void (*a1)(__int128 *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  for (i = (a3 + 41); ; i += 16)
  {
    v8 = *i;
    v9 = *(i - 1);
    v43 = *(i - 9);
    v44 = v9;
    v45 = v8;
    sub_1CEFD0988(v43, v9, v8);
    a1(&v37, &v43);
    if (v3)
    {
      break;
    }

    sub_1CEFD0994(v43, v44, v45);
    if (*(&v38 + 1))
    {
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v36 = v42;
      v31 = v37;
      v32 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1CF1F7AB4(0, (*v6->tree + 1), 1, v6, v10, v11, v12, v13);
      }

      v15 = *v6->tree;
      v14 = *v6->tester;
      if (v15 >= v14 >> 1)
      {
        v6 = sub_1CF1F7AB4((v14 > 1), (v15 + 1), 1, v6, v10, v11, v12, v13);
      }

      v27 = v33;
      v28 = v34;
      v29 = v35;
      v30 = v36;
      v16 = v31;
      v26 = v32;
      *v6->tree = v15 + 1;
      v17 = &v6[3 * v15];
      *v17[1].tree = v26;
      *&v17[3].super.isa = v29;
      *v17[3].tree = v30;
      *&v17[2].super.isa = v27;
      *v17[2].tree = v28;
      *&v17[1].super.isa = v16;
    }

    else
    {
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v36 = v42;
      v31 = v37;
      v32 = v38;
      sub_1CEFCCC44(&v31, &qword_1EC4C4D78, &qword_1CFA17F68);
    }

    if (!--v4)
    {
      return v6;
    }
  }

  sub_1CEFD0994(v43, v44, v45);
  v6, v18, v19, v20, v21, v22, v23, v24;
  return v6;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF7F0654(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2)
{
  v4 = v3;
  v109 = a1;
  v110 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48B8, &unk_1CFA180E0);
  MEMORY[0x1EEE9AC00](v108);
  v107 = (&v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v106 = (&v101 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v101 - v9;
  v11 = *v2;
  v10 = *(v2 + 8);
  v12 = *(v2 + 24);
  v13 = *(v2 + 32);
  v14 = *(v2 + 40);
  v15 = *(v2 + 48);
  v120 = MEMORY[0x1E69E7CC0];
  v121[0] = v12;
  v121[1] = v13;
  v122 = v14;
  v123 = v15;
  v16 = *(v2 + 16);
  sub_1CF0BA900(v11, v10, v16 & 1);
  v112 = v11;
  v113 = v10;
  sub_1CF0BA900(v11, v10, v16 & 1);
  sub_1CEFCCBDC(v121, v119, &qword_1EC4C48A0, &unk_1CFA16E40);
  result = sub_1CEFCCBDC(&v123, v119, &qword_1EC4C48A8, &qword_1CFA180F0);
  if (v16 & 1) != 0 || (v14)
  {
LABEL_38:
    __break(1u);
    return result;
  }

  if (v113 != v13)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v111 = v15 + 64;
  v102 = v15 + 72;
  v101 = MEMORY[0x1E69E7CC0];
  v23 = v112;
  v24 = v113;
  v105 = v12;
  v104 = v15;
  v103 = v13;
  while (1)
  {
    if (v23 == v12)
    {
      sub_1CF0663D8(v112, v113, 0, v18, v19, v20, v21, v22);
      sub_1CF0663D8(v12, v13, 0, v59, v60, v61, v62, v63);
      v15, v64, v65, v66, v67, v68, v69, v70;
      sub_1CF0663D8(v12, v24, 0, v71, v72, v73, v74, v75);
      return v101;
    }

    if (v23 < v112)
    {
      goto LABEL_32;
    }

    if (v13 != v113)
    {
      goto LABEL_33;
    }

    if (v23 >= v12)
    {
      goto LABEL_34;
    }

    if (v23 < 0)
    {
      goto LABEL_35;
    }

    v25 = 1 << *(v15 + 32);
    if (v23 >= v25)
    {
      goto LABEL_35;
    }

    v115 = v24;
    v26 = v23 >> 6;
    v27 = *(v111 + 8 * (v23 >> 6));
    if (((v27 >> v23) & 1) == 0)
    {
      goto LABEL_36;
    }

    if (*(v15 + 36) != v13)
    {
      goto LABEL_37;
    }

    v114 = v25;
    v28 = v107;
    v29 = v108;
    v30 = *(v108 + 48);
    v116 = v23 & 0x3F;
    v117 = v4;
    v31 = *(v15 + 48);
    v32 = *(v15 + 56);
    v33 = (v31 + 16 * v23);
    v34 = *v33;
    LOBYTE(v33) = *(v33 + 8);
    *v107 = v34;
    *(v28 + 8) = v33;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    sub_1CEFCCBDC(v32 + *(*(v35 - 8) + 72) * v23, v28 + v30, &unk_1EC4BE360, &qword_1CF9FE650);
    v36 = *(v28 + 8);
    v37 = v106;
    *v106 = *v28;
    *(v37 + 8) = v36;
    sub_1CEFE55D0(v28 + v30, v37 + *(v29 + 48), &unk_1EC4BE360, &qword_1CF9FE650);
    sub_1CEFE55D0(v37, v118, &qword_1EC4C48B8, &unk_1CFA180E0);
    v38 = v27 & (-2 << v116);
    if (v38)
    {
      v23 = __clz(__rbit64(v38)) | v23 & 0x7FFFFFFFFFFFFFC0;
      v39 = v117;
      v12 = v105;
      v15 = v104;
      v13 = v103;
    }

    else
    {
      v40 = v114;
      v41 = v26 << 6;
      v42 = v26 + 1;
      v43 = (v102 + 8 * v26);
      v12 = v105;
      v15 = v104;
      v13 = v103;
      while (v42 < (v114 + 63) >> 6)
      {
        v45 = *v43++;
        v44 = v45;
        v41 += 64;
        ++v42;
        if (v45)
        {
          v46 = v117;
          sub_1CF0BA900(v105, v103, 0);
          sub_1CF0663D8(v23, v115, 0, v47, v48, v49, v50, v51);
          v39 = v46;
          v23 = __clz(__rbit64(v44)) + v41;
          goto LABEL_20;
        }
      }

      v52 = v117;
      sub_1CF0BA900(v105, v103, 0);
      sub_1CF0663D8(v23, v115, 0, v53, v54, v55, v56, v57);
      v39 = v52;
      v23 = v40;
    }

LABEL_20:
    v24 = *(v15 + 36);
    v58 = v118;
    v109(v119, v118);
    v4 = v39;
    result = sub_1CEFCCC44(v58, &qword_1EC4C48B8, &unk_1CFA180E0);
    if (v39)
    {
      break;
    }

    if (v119[0])
    {
      MEMORY[0x1D3868FA0](result);
      if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CF9E6D88();
      }

      result = sub_1CF9E6DE8();
      v101 = v120;
      if (v24 != v13)
      {
        goto LABEL_31;
      }
    }

    else if (v24 != v13)
    {
      goto LABEL_31;
    }
  }

  sub_1CF0663D8(v112, v113, 0, v18, v19, v20, v21, v22);
  sub_1CF0663D8(v12, v13, 0, v77, v78, v79, v80, v81);
  v15, v82, v83, v84, v85, v86, v87, v88;
  sub_1CF0663D8(v23, v24, 0, v89, v90, v91, v92, v93);
  v76 = v101;
  v101, v94, v95, v96, v97, v98, v99, v100;
  return v76;
}

void sub_1CF7F0B84(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1CF9E7808();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC30, &qword_1CFA17EC0);
    sub_1CEFCCCEC(&qword_1EC4C4CE8, &qword_1EC4BFC30, &qword_1CFA17EC0, &unk_1CF9FEE48);
    sub_1CF9E7038();
    v3 = v26;
    v4 = v27;
    v6 = v28;
    v5 = v29;
    v7 = v30;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v5 = 0;
  }

  v25 = MEMORY[0x1E69E7CC0];
  while (v3 < 0)
  {
    if (!sub_1CF9E7838() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC30, &qword_1CFA17EC0), swift_dynamicCast(), (v13 = v31) == 0))
    {
LABEL_24:
      sub_1CEFCB59C(v3);
      return;
    }

LABEL_17:
    if (*(v13 + 24) < a2)
    {
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v23 = *(v13 + 16);

      v24 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1CF1F7EA8(0, (*v25->tree + 1), 1, v25, v16, v17, v18, v19);
      }

      v21 = *v25->tree;
      v20 = *v25->tester;
      if (v21 >= v20 >> 1)
      {
        v25 = sub_1CF1F7EA8((v20 > 1), (v21 + 1), 1, v25, v16, v17, v18, v19);
      }

      *v25->tree = v21 + 1;
      v22 = v25 + 24 * v21;
      *(v22 + 4) = v23;
      *(v22 + 5) = v14;
      v22[48] = v24;
    }

    else
    {
    }
  }

  v11 = v5;
  v12 = v7;
  if (v7)
  {
LABEL_13:
    v7 = (v12 - 1) & v12;
    v13 = *(*(v3 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v13)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v4 + 8 * v5);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

_TtC18FileProviderDaemon8FSTester *sub_1CF7F0E4C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v22 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CF9E7818())
  {
    v6 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3869C30](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v21 = v7;
      a1(&v20, &v21);
      if (v3)
      {
        v18, v10, v11, v12, v13, v14, v15, v16;

        return v18;
      }

      if (v20)
      {
        MEMORY[0x1D3868FA0]();
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CF9E6D88();
        }

        sub_1CF9E6DE8();
        v18 = v22;
      }

      ++v6;
      if (v9 == i)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1CF7F0FF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = [objc_opt_self() sharedManager];
    v7 = *(*__swift_project_boxed_opaque_existential_1(a2, a2[3]) + 32);
    v8 = sub_1CF9E5928();
    aBlock[4] = sub_1CF1A92F8;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF0892D0;
    aBlock[3] = &block_descriptor_1896;
    v9 = _Block_copy(aBlock);

    [v6 triggerDiagnosticsFor:v7 persistingAt:v8 completionHandler:v9];
    _Block_release(v9);
  }
}

void *sub_1CF7F1160(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    v3 = fpfs_dirsize();
    return (v3 & ~(v3 >> 63));
  }

  else
  {
    result = sub_1CF9E7938();
    if (!v2)
    {
      return v5;
    }
  }

  return result;
}

unint64_t sub_1CF7F1200(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  aBlock[4] = sub_1CF9034B4;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_6193;
  v6 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v7 = [v2 fetchSwift:v6 error:aBlock];
  _Block_release(v6);
  v8 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v7)
  {
    if (([v7 next] & 1) != 0 && (objc_msgSend(v7, sel_isNullAtIndex_, 0) & 1) == 0)
    {
      if ([v7 isNullAtIndex_])
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
      }

      if (swift_dynamicCastMetatype())
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
      }

      v13 = [v7 unsignedIntAtIndex_];

      v11 = 0;
      v10 = v13;
    }

    else
    {

      v10 = 0;
      v11 = 1;
    }

    LOBYTE(aBlock[0]) = v11;
    return v10 | (v11 << 32);
  }

  else
  {
    sub_1CF9E57F8();

    return swift_willThrow();
  }
}

void *sub_1CF7F145C(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  aBlock[4] = sub_1CF9034B4;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_6200;
  v6 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v7 = [v2 fetchSwift:v6 error:aBlock];
  _Block_release(v6);
  v8 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v7)
  {
    if (([v7 next] & 1) != 0 && (objc_msgSend(v7, sel_isNullAtIndex_, 0) & 1) == 0)
    {
      if ([v7 isNullAtIndex_])
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
      }

      if (swift_dynamicCastMetatype())
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
      }

      v5 = [v7 unsignedLongLongAtIndex_];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_1CF9E57F8();

    swift_willThrow();
  }

  return v5;
}

void *sub_1CF7F16AC(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  aBlock[4] = sub_1CF9034B4;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_4867;
  v6 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v7 = [v2 fetchSwift:v6 error:aBlock];
  _Block_release(v6);
  v8 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v7)
  {
    if (([v7 next] & 1) != 0 && (objc_msgSend(v7, sel_isNullAtIndex_, 0) & 1) == 0)
    {
      if ([v7 isNullAtIndex_])
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
      }

      if (swift_dynamicCastMetatype())
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
      }

      v5 = [v7 longLongAtIndex_];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_1CF9E57F8();

    swift_willThrow();
  }

  return v5;
}

void *sub_1CF7F18FC(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  aBlock[4] = sub_1CF9034B4;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_2048;
  v6 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v7 = [v2 fetchSwift:v6 error:aBlock];
  _Block_release(v6);
  v8 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v7)
  {
    if (([v7 next] & 1) != 0 && (objc_msgSend(v7, sel_isNullAtIndex_, 0) & 1) == 0)
    {
      if ([v7 isNullAtIndex_])
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
      }

      if (swift_dynamicCastMetatype())
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
      }

      v5 = [v7 longAtIndex_];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_1CF9E57F8();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1CF7F1B4C(void *a1, void (*a2)(uint64_t *__return_ptr))
{
  if (objc_sync_enter(a1))
  {
    swift_unknownObjectRetain();
    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a1);
  }

  a2(&v7);
  if (v2)
  {
    if (!objc_sync_exit(a1))
    {
      return v5 & 1;
    }

LABEL_9:
    swift_unknownObjectRetain();
    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a1);
  }

  if (objc_sync_exit(a1))
  {
    goto LABEL_9;
  }

  v5 = v7;
  return v5 & 1;
}

void sub_1CF7F1C1C(uint64_t a1, void *a2)
{
  v4 = (a1 + qword_1EDEBB708);
  if (*(a1 + qword_1EDEBB708 + 8))
  {
    goto LABEL_7;
  }

  v5 = *v4;
  v6 = qword_1EDEA4990;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (!*v7->tree)
  {
    goto LABEL_7;
  }

  v8 = sub_1CEFE863C(a2);
  if ((v9 & 1) == 0)
  {
    v7, v9, v10, v11, v12, v13, v14, v15;
    goto LABEL_7;
  }

  v16 = *(*v7[1].tester + 8 * v8);
  v7, v9, v10, v11, v12, v13, v14, v15;
  if (!__OFSUB__(v5, v16))
  {
    *v4 = v5 - v16;
    *(v4 + 8) = 0;
LABEL_7:
    swift_beginAccess();
    sub_1CF1C9DE8(0, 1, a2);
    swift_endAccess();
    return;
  }

  __break(1u);
}

void sub_1CF7F1D28()
{
  v2 = v0;
  v3 = type metadata accessor for FPFeedbackManagerState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[72] == 1)
  {
    v0[72] = 0;
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    v6 = *(*v0 + 136);
    swift_beginAccess();
    sub_1CEFDA34C(v2 + v6, v5, type metadata accessor for FPFeedbackManagerState);
    sub_1CEFCCCA4(&qword_1EC4C4D68, type metadata accessor for FPFeedbackManagerState, &unk_1CF9FA954);
    v7 = sub_1CF9E56A8();
    v9 = v8;
    sub_1CEFD5338(v5, type metadata accessor for FPFeedbackManagerState);
    if (!v1)
    {
      v10 = v2[5];
      v11 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v10);
      (*(v11 + 8))(v2[7], v2[8], v7, v9, v10, v11);
      sub_1CEFE4714(v7, v9);
    }
  }
}

double sub_1CF7F1F10()
{
  if (*(v0 + 72) == 1)
  {
    *(v0 + 72) = 0;
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    swift_beginAccess();
    v2 = *(v0 + 80);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE08, &qword_1CF9FB1C8);
    sub_1CEFCCCEC(&unk_1EC4C4D20, &qword_1EC4BDE08, &qword_1CF9FB1C8, &unk_1CFA00CE8);
    v3 = sub_1CF9E56A8();
    if (v1)
    {

      v2, v11, v12, v13, v14, v15, v16, v17;
    }

    else
    {
      v19 = v3;
      v20 = v2;
      v21 = v4;
      v20, v4, v5, v6, v7, v8, v9, v10;
      v22 = *(v0 + 40);
      v23 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v22);
      (*(v23 + 8))(*(v0 + 56), *(v0 + 64), v19, v21, v22, v23);
      sub_1CEFE4714(v19, v21);
    }
  }

  return result;
}