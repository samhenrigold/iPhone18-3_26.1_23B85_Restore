id sub_1B7C65924@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, void *a3@<X8>)
{
  v8[4] = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64((a1 + 48), a2);
  v8[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v8);
  v6 = v8[0];
  swift_endAccess();
  if (v6)
  {
    swift_willThrow();
    return v6;
  }

  else
  {
    result = SqlOperation.uint64s(forColumnName:)(0x656D686361747461uLL, 0xED000064695F746ELL);
    *a3 = result;
  }

  return result;
}

uint64_t sub_1B7C65A2C(uint64_t a1)
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD000000000000069, 0x80000001B7D552D0);
  sub_1B7AF7F10(0x3F, 0xE100000000000000, *(a1 + 16));
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v2 = sub_1B7CFEA10();
  v4 = v3;

  MEMORY[0x1B8CADCA0](v2, v4);

  MEMORY[0x1B8CADCA0](15145, 0xE200000000000000);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;

  v6 = sub_1B7CD7370(0, 0xE000000000000000, sub_1B7C65BE8, v5);

  if (v6)
  {
    return v6;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t type metadata accessor for StorageInspectionAttachmentRecord(uint64_t a1)
{
  result = qword_1EBA529D0;
  if (!qword_1EBA529D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7C65C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1B7C65CF0(uint64_t a1, uint64_t *a2, void *a3)
{
  v46 = a3;
  v54 = a2;
  v4 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_1B7CFDFF0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v46 - v12;
  v13 = type metadata accessor for StorageInspectionAttachmentRecord(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v46 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v46 - v20;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v56 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = *(v19 + 72);
    v59 = a1 + v56;
    v60 = v24;
    v58 = (v8 + 48);
    v52 = (v8 + 32);
    v62 = v8 + 16;
    v25 = v8;
    v26 = MEMORY[0x1E69E7CC0];
    v47 = v25;
    v48 = v22;
    v63 = (v25 + 8);
    v50 = v13;
    v51 = v6;
    v49 = v15;
    v53 = &v46 - v20;
    while (1)
    {
      v61 = v23;
      sub_1B7C607E8(v59 + v60 * v23, v21);
      sub_1B7C2569C(&v21[*(v13 + 32)], v6, &qword_1EBA51FA0, &qword_1B7D0A6D0);
      if ((*v58)(v6, 1, v7) == 1)
      {
        break;
      }

      v57 = v26;
      (*v52)(v64, v6, v7);
      v32 = *v54;
      if (!*(*v54 + 16) || (sub_1B7C67A94(&qword_1EBA529C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]), v33 = sub_1B7CFE9B0(), v34 = -1 << *(v32 + 32), v35 = v33 & ~v34, ((*(v32 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0))
      {
LABEL_16:
        v21 = v53;
        sub_1B7C607E8(v53, v55);
        v41 = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1B7CA2A14(0, v41[2] + 1, 1, v41);
        }

        v43 = v41[2];
        v42 = v41[3];
        v44 = v41;
        v22 = v48;
        v15 = v49;
        if (v43 >= v42 >> 1)
        {
          v44 = sub_1B7CA2A14((v42 > 1), v43 + 1, 1, v41);
        }

        v13 = v50;
        v6 = v51;
        (*v63)(v64, v7);
        sub_1B7C66348(v21, type metadata accessor for StorageInspectionAttachmentRecord);
        v44[2] = v43 + 1;
        v26 = v44;
        v28 = v55;
        v27 = v44 + v56 + v43 * v60;
        goto LABEL_4;
      }

      v36 = ~v34;
      v37 = *(v47 + 72);
      v38 = *(v47 + 16);
      while (1)
      {
        v38(v10, *(v32 + 48) + v37 * v35, v7);
        sub_1B7C67A94(&qword_1EBA529C8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
        v39 = sub_1B7CFEA20();
        v40 = *v63;
        (*v63)(v10, v7);
        if (v39)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v32 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v40(v64, v7);
      v21 = v53;
      result = sub_1B7C66348(v53, type metadata accessor for StorageInspectionAttachmentRecord);
      if (__OFADD__(*v46, 1))
      {
        __break(1u);
        return result;
      }

      ++*v46;
      v13 = v50;
      v6 = v51;
      v22 = v48;
      v15 = v49;
      v26 = v57;
LABEL_5:
      v23 = v61 + 1;
      if (v61 + 1 == v22)
      {
        return v26;
      }
    }

    sub_1B7AEE190(v6, &qword_1EBA51FA0, &qword_1B7D0A6D0);
    sub_1B7C607E8(v21, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1B7CA2A14(0, v26[2] + 1, 1, v26);
    }

    v30 = v26[2];
    v29 = v26[3];
    v31 = v26;
    if (v30 >= v29 >> 1)
    {
      v31 = sub_1B7CA2A14((v29 > 1), v30 + 1, 1, v26);
    }

    sub_1B7C66348(v21, type metadata accessor for StorageInspectionAttachmentRecord);
    v31[2] = v30 + 1;
    v26 = v31;
    v27 = v31 + v56 + v30 * v60;
    v28 = v15;
LABEL_4:
    sub_1B7C65C88(v28, v27, type metadata accessor for StorageInspectionAttachmentRecord);
    goto LABEL_5;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B7C66348(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1B7C663C4(uint64_t a1)
{
  v2 = v1;
  v102[4] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for StorageInspectionAttachmentRecord(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v93 = (&v87 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v87 - v10;
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v87 - v14;
  v97 = *(a1 + 16);
  if (!v97)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v88 = v15;
  v17 = 0;
  v96 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v99 = a1 + v96;
  v18 = *(v13 + 72);
  v92 = "attachment_id ASC;";
  v101 = "here attachment_id == ?;";
  v19 = MEMORY[0x1E69E7CC0];
  v95 = v18;
  v90 = v4;
  v91 = &v87 - v14;
  v89 = v6;
  while (1)
  {
    sub_1B7C607E8(v99 + v18 * v17, v16);
    v20 = v16[8];
    v100 = v17;
    if ((v20 & 1) == 0)
    {
      break;
    }

    v21 = v98;
    sub_1B7C607E8(v16, v98);
    v22 = *(v21 + 8);
    *v6 = *v21;
    v6[8] = v22;
    v23 = *(v21 + 40);
    *(v6 + 4) = *(v21 + 32);
    *(v6 + 5) = v23;
    v24 = v4[9];
    v25 = *(v21 + v24);
    v26 = *(v21 + v24 + 8);
    v27 = &v6[v24];
    *v27 = v25;
    v27[8] = v26;
    v28 = v4[10];
    v29 = *(v21 + v28);
    v30 = *(v21 + v28 + 8);
    v31 = &v6[v28];
    *v31 = v29;
    v31[8] = v30;
    v32 = v4[11];
    v33 = *(v21 + v32);
    v34 = *(v21 + v32 + 8);
    v35 = &v6[v32];
    *v35 = v33;
    v35[8] = v34;
    sub_1B7C2569C(v21 + v4[12], &v6[v4[12]], &qword_1EBA52978, &qword_1B7D0DB38);
    sub_1B7C2569C(v21 + v4[8], &v6[v4[8]], &qword_1EBA51FA0, &qword_1B7D0A6D0);

    sub_1B7C66348(v21, type metadata accessor for StorageInspectionAttachmentRecord);
    *(v6 + 2) = 0;
    v6[24] = 2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1B7CA2A14(0, v19[2] + 1, 1, v19);
    }

    v37 = v19[2];
    v36 = v19[3];
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v19 = sub_1B7CA2A14((v36 > 1), v37 + 1, 1, v19);
    }

    v39 = v6;
LABEL_40:
    v79 = v100 + 1;
    sub_1B7C66348(v16, type metadata accessor for StorageInspectionAttachmentRecord);
    v19[2] = v38;
    v18 = v95;
    v80 = v19 + v96 + v37 * v95;
    v17 = v79;
    sub_1B7C65C88(v39, v80, type metadata accessor for StorageInspectionAttachmentRecord);
    if (v79 == v97)
    {
      return v19;
    }
  }

  v40 = *v16;
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v41 = off_1EBA52D08;
  v42 = objc_autoreleasePoolPush();
  v43 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery(v41 + 2, v43);
  swift_endAccess();

  swift_beginAccess();
  v102[0] = 0;
  IMDSqlOperationGetError((v41 + 2), v102);
  v44 = v102[0];
  swift_endAccess();
  if (v44)
  {
    swift_willThrow();
    v44;
LABEL_52:
    objc_autoreleasePoolPop(v42);
    sub_1B7C66348(v16, type metadata accessor for StorageInspectionAttachmentRecord);
    goto LABEL_47;
  }

  if (v40 < 0)
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64(v41 + 6, v40);
  v102[0] = 0;
  IMDSqlOperationGetError((v41 + 2), v102);
  v45 = v102[0];
  swift_endAccess();
  if (v45 || (v46 = _s14IMDPersistence12SqlOperationC7uint64s14forColumnIndexSays6UInt64VGSi_tF_0(), swift_beginAccess(), IMDSqlOperationFinishQuery((v41 + 2)), v102[0] = 0, IMDSqlOperationGetError((v41 + 2), v102), v45 = v102[0], swift_endAccess(), v45))
  {
    swift_willThrow();
    v85 = v45;
    swift_beginAccess();
    IMDSqlOperationFinishQuery((v41 + 2));
    v102[0] = 0;
    IMDSqlOperationGetError((v41 + 2), v102);
    v86 = v102[0];
    swift_endAccess();
    swift_willThrow();
    if (v86)
    {
      v86;
    }

    goto LABEL_52;
  }

  v94 = v19;
  objc_autoreleasePoolPop(v42);
  v47 = *(v46 + 16);
  if (!v47)
  {

    v16 = v91;
    v59 = v98;
    sub_1B7C607E8(v91, v98);
    v60 = *(v59 + 8);
    v61 = v93;
    *v93 = *v59;
    *(v61 + 8) = v60;
    v62 = *(v59 + 40);
    v61[4] = *(v59 + 32);
    v61[5] = v62;
    v4 = v90;
    v63 = v90[9];
    v64 = *(v59 + v63);
    v65 = *(v59 + v63 + 8);
    v66 = v61 + v63;
    *v66 = v64;
    v66[8] = v65;
    v67 = v4[10];
    v68 = *(v59 + v67);
    v69 = *(v59 + v67 + 8);
    v70 = v61 + v67;
    *v70 = v68;
    v70[8] = v69;
    v71 = v4[11];
    v72 = *(v59 + v71);
    v73 = *(v59 + v71 + 8);
    v74 = v61 + v71;
    *v74 = v72;
    v74[8] = v73;
    sub_1B7C2569C(v59 + v4[12], v61 + v4[12], &qword_1EBA52978, &qword_1B7D0DB38);
    sub_1B7C2569C(v59 + v4[8], v61 + v4[8], &qword_1EBA51FA0, &qword_1B7D0A6D0);

    sub_1B7C66348(v59, type metadata accessor for StorageInspectionAttachmentRecord);
    v61[2] = 0;
    *(v61 + 24) = 2;
    v19 = v94;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1B7CA2A14(0, v19[2] + 1, 1, v19);
    }

    v6 = v89;
    v37 = v19[2];
    v75 = v19[3];
    v38 = v37 + 1;
    if (v37 >= v75 >> 1)
    {
      v19 = sub_1B7CA2A14((v75 > 1), v37 + 1, 1, v19);
    }

    v39 = v93;
    goto LABEL_40;
  }

  v87 = v2;
  v48 = 0;
  v49 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v48 >= *(v46 + 16))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
    }

    v50 = *(v46 + 8 * v48 + 32);
    v51 = objc_autoreleasePoolPush();
    v52 = sub_1B7CFEA30();
    swift_beginAccess();
    IMDSqlOperationStartQuery(v41 + 2, v52);
    swift_endAccess();

    swift_beginAccess();
    v102[0] = 0;
    IMDSqlOperationGetError((v41 + 2), v102);
    v53 = v102[0];
    swift_endAccess();
    if (v53)
    {
      swift_willThrow();
      v53;
      v81 = v91;
      goto LABEL_46;
    }

    if (v50 < 0)
    {
      goto LABEL_54;
    }

    swift_beginAccess();
    IMDSqlStatementBindInt64(v41 + 6, v50);
    v102[0] = 0;
    IMDSqlOperationGetError((v41 + 2), v102);
    v54 = v102[0];
    swift_endAccess();
    if (v54)
    {
      break;
    }

    v55 = _s14IMDPersistence12SqlOperationC7uint64s14forColumnIndexSays6UInt64VGSi_tF_0();
    swift_beginAccess();
    IMDSqlOperationFinishQuery((v41 + 2));
    v102[0] = 0;
    IMDSqlOperationGetError((v41 + 2), v102);
    v54 = v102[0];
    swift_endAccess();
    if (v54)
    {
      break;
    }

    objc_autoreleasePoolPop(v51);
    if (!*(v55 + 16))
    {

      v55 = 0;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_1B7CA2A3C(0, *(v49 + 2) + 1, 1, v49);
    }

    v57 = *(v49 + 2);
    v56 = *(v49 + 3);
    if (v57 >= v56 >> 1)
    {
      v49 = sub_1B7CA2A3C((v56 > 1), v57 + 1, 1, v49);
    }

    ++v48;
    *(v49 + 2) = v57 + 1;
    v58 = &v49[16 * v57];
    *(v58 + 4) = v50;
    *(v58 + 5) = v55;
    if (v47 == v48)
    {

      v16 = v91;
      v76 = v98;
      sub_1B7C607E8(v91, v98);
      sub_1B7C61E90(v76, v49, v88);
      v19 = v94;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_1B7CA2A14(0, v19[2] + 1, 1, v19);
      }

      v2 = v87;
      v6 = v89;
      v4 = v90;
      v37 = v19[2];
      v78 = v19[3];
      v38 = v37 + 1;
      if (v37 >= v78 >> 1)
      {
        v19 = sub_1B7CA2A14((v78 > 1), v37 + 1, 1, v19);
      }

      v39 = v88;
      goto LABEL_40;
    }
  }

  v82 = v54;
  swift_willThrow();
  swift_beginAccess();
  IMDSqlOperationFinishQuery((v41 + 2));
  v102[0] = 0;
  IMDSqlOperationGetError((v41 + 2), v102);
  v83 = v102[0];
  swift_endAccess();
  v81 = v91;
  swift_willThrow();
  if (v83)
  {
    v83;
  }

LABEL_46:

  objc_autoreleasePoolPop(v51);
  sub_1B7C66348(v81, type metadata accessor for StorageInspectionAttachmentRecord);

  v19 = v49;
LABEL_47:

  return v19;
}

uint64_t sub_1B7C66E7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1B7C66ED8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1B7C66F60(uint64_t a1)
{
  sub_1B7C6715C(319, &qword_1EBA529E0, MEMORY[0x1E69E76D8]);
  if (v1 <= 0x3F)
  {
    sub_1B7C670F8(319);
    if (v2 <= 0x3F)
    {
      sub_1B7C6715C(319, &qword_1EBA529F8, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1B7C671A8(319, &qword_1EBA52760, MEMORY[0x1E6968FB0]);
        if (v4 <= 0x3F)
        {
          sub_1B7C671A8(319, &qword_1EBA52A00, type metadata accessor for IMFileTransferCKSyncState);
          if (v5 <= 0x3F)
          {
            sub_1B7C671A8(319, &qword_1EBA52A08, type metadata accessor for IMFileTransferState);
            if (v6 <= 0x3F)
            {
              sub_1B7C671A8(319, &qword_1EBA52A10, type metadata accessor for StorageInspectionAttachmentDirectory);
              if (v7 <= 0x3F)
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

void sub_1B7C670F8(uint64_t a1)
{
  if (!qword_1EBA529E8)
  {
    sub_1B7C1091C(&qword_1EBA529F0, &qword_1B7D0DCC8);
    v1 = sub_1B7CFEFF0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA529E8);
    }
  }
}

void sub_1B7C6715C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1B7CFEFF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B7C671A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B7CFEFF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B7C67210()
{
  result = qword_1EBA52A18;
  if (!qword_1EBA52A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52A18);
  }

  return result;
}

uint64_t sub_1B7C67264(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E65726170 && a2 == 0xE700000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7453746E65726170 && a2 == 0xEB00000000657461 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C525568746170 && a2 == 0xE700000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7453636E79536B63 && a2 == 0xEB00000000657461 || (sub_1B7CFF590() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7D55630 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7479426C61746F74 && a2 == 0xEA00000000007365 || (sub_1B7CFF590() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7D55650 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B7CFF590();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1B7C67558(void *a1)
{
  v3 = sub_1B7C107FC(&qword_1EBA52A20, &qword_1B7D0DE38);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1B7AE9124(a1, v7);
  sub_1B7C67750();
  sub_1B7CFF820();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_1B7CFF460();
    sub_1B7C107FC(&qword_1EBA52A30, &qword_1B7D0DE40);
    v9[15] = 1;
    sub_1B7C677A4(&qword_1EBA52A38, MEMORY[0x1E69E7708], MEMORY[0x1E69E6330]);
    sub_1B7CFF400();
    (*(v4 + 8))(v6, v3);
  }

  sub_1B7AE9168(a1);
  return v7;
}

unint64_t sub_1B7C67750()
{
  result = qword_1EBA52A28;
  if (!qword_1EBA52A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52A28);
  }

  return result;
}

uint64_t sub_1B7C677A4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA52A30, &qword_1B7D0DE40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C67810()
{
  result = qword_1EBA52A58;
  if (!qword_1EBA52A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52A58);
  }

  return result;
}

unint64_t sub_1B7C67864()
{
  result = qword_1EBA52A68;
  if (!qword_1EBA52A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52A68);
  }

  return result;
}

unint64_t sub_1B7C678B8()
{
  result = qword_1EBA52A70;
  if (!qword_1EBA52A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52A70);
  }

  return result;
}

uint64_t sub_1B7C6790C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B7C107FC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B7C67974(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA529F0, &qword_1B7D0DCC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C679EC()
{
  result = qword_1EBA52AA8;
  if (!qword_1EBA52AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52AA8);
  }

  return result;
}

unint64_t sub_1B7C67A40()
{
  result = qword_1EBA52AB0;
  if (!qword_1EBA52AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52AB0);
  }

  return result;
}

uint64_t sub_1B7C67A94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7C67ADC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465746E65726170 && a2 == 0xE800000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656E616870726FLL && a2 == 0xE800000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B7D55670 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B7CFF590();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B7C67C48(void *a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA52AD8, &qword_1B7D0DE60);
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v37 - v4;
  v5 = sub_1B7C107FC(&qword_1EBA52AE0, &qword_1B7D0DE68);
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v37 - v7;
  v8 = sub_1B7C107FC(&qword_1EBA52AE8, &qword_1B7D0DE70);
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  v12 = sub_1B7C107FC(&qword_1EBA52AF0, &qword_1B7D0DE78);
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = sub_1B7C107FC(&qword_1EBA52AF8, &qword_1B7D0DE80);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  v19 = a1[3];
  v50 = a1;
  sub_1B7AE9124(a1, v19);
  sub_1B7C682C0();
  v20 = v49;
  sub_1B7CFF820();
  if (v20)
  {
    goto LABEL_16;
  }

  v38 = v12;
  v39 = v18;
  v22 = v47;
  v21 = v48;
  v49 = v16;
  v23 = sub_1B7CFF470();
  v24 = *(v23 + 16);
  if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 4) : (v26 = 1), v26))
  {
    v27 = sub_1B7CFF270();
    swift_allocError();
    v29 = v28;
    sub_1B7C107FC(&qword_1EBA52B08, &qword_1B7D0DE88);
    *v29 = &type metadata for StorageInspectionAttachmentRecord.ParentState;
    v30 = v39;
    sub_1B7CFF3D0();
    sub_1B7CFF260();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    (*(v49 + 8))(v30, v15);
    swift_unknownObjectRelease();
LABEL_16:
    sub_1B7AE9168(v50);
    return 0;
  }

  v51 = *(v23 + 32);
  if (v25 > 1)
  {
    v32 = v49;
    if (v25 == 2)
    {
      v54 = 2;
      sub_1B7C68368();
      v33 = v22;
      v34 = v39;
      sub_1B7CFF3C0();
      (*(v44 + 8))(v33, v43);
      (*(v32 + 8))(v34, v15);
    }

    else
    {
      v55 = 3;
      sub_1B7C68314();
      v35 = v39;
      sub_1B7CFF3C0();
      (*(v46 + 8))(v21, v45);
      (*(v32 + 8))(v35, v15);
    }
  }

  else
  {
    if (v25)
    {
      v53 = 1;
      sub_1B7C683BC();
      v31 = v39;
      sub_1B7CFF3C0();
      (*(v42 + 8))(v11, v41);
    }

    else
    {
      v52 = 0;
      sub_1B7C68410();
      v31 = v39;
      sub_1B7CFF3C0();
      (*(v40 + 8))(v14, v38);
    }

    (*(v49 + 8))(v31, v15);
  }

  swift_unknownObjectRelease();
  sub_1B7AE9168(v50);
  return v51;
}

unint64_t sub_1B7C682C0()
{
  result = qword_1EBA52B00;
  if (!qword_1EBA52B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B00);
  }

  return result;
}

unint64_t sub_1B7C68314()
{
  result = qword_1EBA52B10;
  if (!qword_1EBA52B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B10);
  }

  return result;
}

unint64_t sub_1B7C68368()
{
  result = qword_1EBA52B18;
  if (!qword_1EBA52B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B18);
  }

  return result;
}

unint64_t sub_1B7C683BC()
{
  result = qword_1EBA52B20;
  if (!qword_1EBA52B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B20);
  }

  return result;
}

unint64_t sub_1B7C68410()
{
  result = qword_1EBA52B28;
  if (!qword_1EBA52B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorageInspectionDatabaseTable.TableType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorageInspectionDatabaseTable.TableType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorageInspectionAttachmentRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorageInspectionAttachmentRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7C68758()
{
  result = qword_1EBA52B58;
  if (!qword_1EBA52B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B58);
  }

  return result;
}

unint64_t sub_1B7C687B0()
{
  result = qword_1EBA52B60;
  if (!qword_1EBA52B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B60);
  }

  return result;
}

unint64_t sub_1B7C68808()
{
  result = qword_1EBA52B68;
  if (!qword_1EBA52B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B68);
  }

  return result;
}

unint64_t sub_1B7C68860()
{
  result = qword_1EBA52B70;
  if (!qword_1EBA52B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B70);
  }

  return result;
}

unint64_t sub_1B7C688B8()
{
  result = qword_1EBA52B78;
  if (!qword_1EBA52B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B78);
  }

  return result;
}

unint64_t sub_1B7C68910()
{
  result = qword_1EBA52B80;
  if (!qword_1EBA52B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B80);
  }

  return result;
}

unint64_t sub_1B7C68968()
{
  result = qword_1EBA52B88;
  if (!qword_1EBA52B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B88);
  }

  return result;
}

unint64_t sub_1B7C689C0()
{
  result = qword_1EBA52B90;
  if (!qword_1EBA52B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B90);
  }

  return result;
}

unint64_t sub_1B7C68A18()
{
  result = qword_1EBA52B98;
  if (!qword_1EBA52B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B98);
  }

  return result;
}

unint64_t sub_1B7C68A70()
{
  result = qword_1EBA52BA0;
  if (!qword_1EBA52BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52BA0);
  }

  return result;
}

unint64_t sub_1B7C68AC8()
{
  result = qword_1EBA52BA8;
  if (!qword_1EBA52BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52BA8);
  }

  return result;
}

unint64_t sub_1B7C68B20()
{
  result = qword_1EBA52BB0;
  if (!qword_1EBA52BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52BB0);
  }

  return result;
}

unint64_t sub_1B7C68B78()
{
  result = qword_1EBA52BB8;
  if (!qword_1EBA52BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52BB8);
  }

  return result;
}

unint64_t sub_1B7C68BD0()
{
  result = qword_1EBA52BC0;
  if (!qword_1EBA52BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52BC0);
  }

  return result;
}

unint64_t sub_1B7C68C28()
{
  result = qword_1EBA52BC8;
  if (!qword_1EBA52BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52BC8);
  }

  return result;
}

unint64_t sub_1B7C68C80()
{
  result = qword_1EBA52BD0;
  if (!qword_1EBA52BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52BD0);
  }

  return result;
}

unint64_t sub_1B7C68CD8()
{
  result = qword_1EBA52BD8;
  if (!qword_1EBA52BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52BD8);
  }

  return result;
}

uint64_t type metadata accessor for StorageInspectionAttachmentDirectory(uint64_t a1)
{
  result = qword_1EBA52BE8;
  if (!qword_1EBA52BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7C68DD8(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v18 = MEMORY[0x1E69E7CC0];
  sub_1B7AECEEC(0, v4, 0);
  v5 = v18;
  v7 = *(sub_1B7CFDFF0() - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    a1(v17, v8);
    if (v3)
    {
      break;
    }

    v11 = v17[0];
    v10 = v17[1];
    v18 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1B7AECEEC((v12 > 1), v13 + 1, 1);
      v5 = v18;
    }

    *(v5 + 16) = v13 + 1;
    v14 = v5 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    v8 += v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_1B7C68F34()
{
  v5[1] = *MEMORY[0x1E69E9840];
  sub_1B7CFDFC0();
  LOBYTE(v5[0]) = 0;
  v1 = [objc_opt_self() defaultManager];
  v2 = sub_1B7CFEA30();

  v3 = [v1 fileExistsAtPath:v2 isDirectory:v5];

  if (v3)
  {
    if (v5[0])
    {
      v4 = objc_autoreleasePoolPush();
      sub_1B7C691B4(v0, v5);
      objc_autoreleasePoolPop(v4);
    }
  }
}

uint64_t sub_1B7C69044()
{
  v1 = sub_1B7CFDFF0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for StorageInspectionAttachmentDirectory(0) + 20));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v9 = *(v2 + 16);
    v8 = v2 + 16;
    v21 = v9;
    v10 = v5 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v11 = *(v8 + 56);
    v12 = (v8 - 8);
    while (1)
    {
      v13 = v8;
      v21(v4, v10, v1);
      v14 = URL.fileAllocationSize.getter();
      v16 = v15;
      result = (*v12)(v4, v1);
      v18 = (v16 & 1) != 0 ? 0 : v14;
      v19 = __CFADD__(v7, v18);
      v7 += v18;
      if (v19)
      {
        break;
      }

      v10 += v11;
      --v6;
      v8 = v13;
      if (!v6)
      {
        return v7;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B7C691B4(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v44 - v8;
  v9 = sub_1B7CFDFF0();
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v16;
  v48 = v18;
  v19 = *(v18 + 16);
  v51 = a1;
  v46 = v19;
  v47 = v18 + 16;
  (v19)(&v44 - v16, a1, v9, v15);
  if (qword_1EBA51660 != -1)
  {
    swift_once();
  }

  v20 = qword_1EBA5DB50;
  type metadata accessor for AttachmentDirectoryEnumerator(0);
  swift_allocObject();

  result = sub_1B7CD6A6C(v17, v20, 4);
  if (v2)
  {
LABEL_25:
    *a2 = v2;
    return result;
  }

  v22 = result;
  v44 = 0;
  v45 = a2;
  v23 = v49;
  v54 = (v48 + 56);
  v55 = OBJC_IVAR____TtC14IMDPersistence29AttachmentDirectoryEnumerator_error;
  v57 = (v48 + 32);
  v52 = (v48 + 8);
  v53 = (v48 + 48);
  while (1)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(v22 + 16);
    if (v25)
    {
      if ([v25 nextObject])
      {
        sub_1B7CFF0A0();
        swift_unknownObjectRelease();
      }

      else
      {
        v58 = 0u;
        v59 = 0u;
      }

      v60 = v58;
      v61 = v59;
      if (*(&v59 + 1))
      {
        v26 = swift_dynamicCast();
        (*v54)(v23, v26 ^ 1u, 1, v9);
        goto LABEL_15;
      }
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    sub_1B7AEE190(&v60, &qword_1EBA51FA8, qword_1B7D0B230);
    (*v54)(v23, 1, 1, v9);
LABEL_15:
    v27 = *(v22 + v55);
    if (v27)
    {
      swift_willThrow();
      v43 = v27;
      sub_1B7AEE190(v23, &qword_1EBA51FA0, &qword_1B7D0A6D0);
      objc_autoreleasePoolPop(v24);

      v2 = v27;
      a2 = v45;
      goto LABEL_25;
    }

    v28 = v56;
    sub_1B7C124A0(v23, v56);
    if ((*v53)(v28, 1, v9) == 1)
    {
      break;
    }

    v29 = *v57;
    (*v57)(v13, v28, v9);
    sub_1B7CFDFC0();
    LOBYTE(v60) = 0;
    v30 = [objc_opt_self() defaultManager];
    v31 = sub_1B7CFEA30();

    v32 = [v30 fileExistsAtPath:v31 isDirectory:&v60];

    if (!v32 || (v60 & 1) != 0)
    {
      (*v52)(v13, v9);
    }

    else
    {
      v46(v50, v13, v9);
      v33 = *(type metadata accessor for StorageInspectionAttachmentDirectory(0) + 20);
      v34 = v51;
      v35 = *(v51 + v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v34 + v33) = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = sub_1B7CA1D44(0, v35[2] + 1, 1, v35);
        *(v51 + v33) = v35;
      }

      v38 = v35[2];
      v37 = v35[3];
      if (v38 >= v37 >> 1)
      {
        v42 = sub_1B7CA1D44((v37 > 1), v38 + 1, 1, v35);
        *(v51 + v33) = v42;
      }

      v39 = v48;
      (*(v48 + 8))(v13, v9);
      v40 = v50;
      v41 = *(v51 + v33);
      *(v41 + 16) = v38 + 1;
      v29((v41 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v38), v40, v9);
      v23 = v49;
    }

    objc_autoreleasePoolPop(v24);
  }

  sub_1B7AEE190(v28, &qword_1EBA51FA0, &qword_1B7D0A6D0);
  objc_autoreleasePoolPop(v24);
}

uint64_t sub_1B7C697A0(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA52C20, &qword_1B7D0E608);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C6A3F4();
  sub_1B7CFF830();
  v12 = 0;
  sub_1B7CFDFF0();
  sub_1B7C6A448(&qword_1EBA52AB8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1B7CFF500();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for StorageInspectionAttachmentDirectory(0) + 20));
    v10[15] = 1;
    sub_1B7C107FC(&qword_1EBA52C10, &qword_1B7D0E600);
    sub_1B7C6A490(&qword_1EBA52C28, &qword_1EBA52AB8, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
    sub_1B7CFF500();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B7C699BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_1B7CFDFF0();
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7C107FC(&qword_1EBA52C00, &qword_1B7D0E5F8);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = type metadata accessor for StorageInspectionAttachmentDirectory(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C6A3F4();
  sub_1B7CFF820();
  if (v2)
  {
    return sub_1B7AE9168(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  v30 = 0;
  sub_1B7C6A448(&qword_1EBA52A78, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v15 = v27;
  v16 = v25;
  sub_1B7CFF440();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  sub_1B7C107FC(&qword_1EBA52C10, &qword_1B7D0E600);
  v29 = 1;
  sub_1B7C6A490(&qword_1EBA52C18, &qword_1EBA52A78, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
  sub_1B7CFF440();
  v18 = *(v22 + 20);
  (*(v26 + 8))(v9, v16);
  v19 = v21;
  *(v21 + v18) = v28;
  sub_1B7C5A108(v19, v23);
  sub_1B7AE9168(a1);
  return sub_1B7C55F44(v19);
}

uint64_t sub_1B7C69D6C()
{
  if (*v0)
  {
    return 0x73746E65746E6F63;
  }

  else
  {
    return 0x726F746365726964;
  }
}

void sub_1B7C69DB0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F746365726964 && a2 == 0xEC0000004C525579;
  if (v6 || (sub_1B7CFF590() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B7CFF590();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7C69E90(uint64_t a1)
{
  v2 = sub_1B7C6A3F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C69ECC(uint64_t a1)
{
  v2 = sub_1B7C6A3F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7C69F38()
{
  sub_1B7CFF210();

  v11 = 0x203A68746150;
  v12 = 0xE600000000000000;
  sub_1B7CFDFF0();
  sub_1B7C6A448(&qword_1EBA52088, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v1 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v1);

  MEMORY[0x1B8CADCA0](0x6E65746E6F63202CLL, 0xEC000000203A7374);
  v2 = *(v0 + *(type metadata accessor for StorageInspectionAttachmentDirectory(0) + 20));
  v9 = v0;
  sub_1B7C68DD8(sub_1B7C6A2D0, &v8, v2);
  v3 = MEMORY[0x1B8CADE30]();
  v5 = v4;

  MEMORY[0x1B8CADCA0](v3, v5);

  MEMORY[0x1B8CADCA0](0x536C61746F74202CLL, 0xED0000203A657A69);
  v10 = sub_1B7C69044();
  v6 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v6);

  return v11;
}

void sub_1B7C6A0F0(uint64_t *a1@<X8>)
{
  sub_1B7CFDFC0();
  sub_1B7CFDFC0();
  sub_1B7C4BFF0();
  v2 = sub_1B7CFF070();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
}

uint64_t sub_1B7C6A1C0()
{
  sub_1B7CFF7C0();
  sub_1B7CFDFC0();
  sub_1B7CFEB10();

  return sub_1B7CFF800();
}

double sub_1B7C6A220(uint64_t a1)
{
  sub_1B7CFDFC0();
  sub_1B7CFEB10();

  return result;
}

uint64_t sub_1B7C6A274(uint64_t a1)
{
  sub_1B7CFF7C0();
  sub_1B7CFDFC0();
  sub_1B7CFEB10();

  return sub_1B7CFF800();
}

void sub_1B7C6A318(uint64_t a1)
{
  sub_1B7CFDFF0();
  if (v1 <= 0x3F)
  {
    sub_1B7C6A39C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B7C6A39C(uint64_t a1)
{
  if (!qword_1EBA52BF8)
  {
    sub_1B7CFDFF0();
    v1 = sub_1B7CFED70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA52BF8);
    }
  }
}

unint64_t sub_1B7C6A3F4()
{
  result = qword_1EBA52C08;
  if (!qword_1EBA52C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52C08);
  }

  return result;
}

uint64_t sub_1B7C6A448(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7C6A490(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA52C10, &qword_1B7D0E600);
    sub_1B7C6A448(a2, MEMORY[0x1E6968FB0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C6A540()
{
  result = qword_1EBA52C30;
  if (!qword_1EBA52C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52C30);
  }

  return result;
}

unint64_t sub_1B7C6A598()
{
  result = qword_1EBA52C38;
  if (!qword_1EBA52C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52C38);
  }

  return result;
}

unint64_t sub_1B7C6A5F0()
{
  result = qword_1EBA52C40;
  if (!qword_1EBA52C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52C40);
  }

  return result;
}

BOOL sub_1B7C6A644(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void sub_1B7C6A674(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1B7C6A6CC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    *&v96 = MEMORY[0x1E69E7CC0];

    sub_1B7AECEEC(0, v4, 0);
    v5 = 32;
    v6 = v96;
    do
    {
      v110[0] = *(v3 + v5);
      StorageInspectionCountReport.ReportContentFlags.description.getter();
      *&v96 = v6;
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_1B7AECEEC((v9 > 1), v10 + 1, 1);
        v8 = v13;
        v7 = v12;
        v6 = v96;
      }

      *(v6 + 16) = v10 + 1;
      v11 = v6 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v5 += 8;
      --v4;
    }

    while (v4);
  }

  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v14 = sub_1B7CFEA10();
  v16 = v15;

  strcpy(&v96, "Counts: (");
  WORD5(v96) = 0;
  HIDWORD(v96) = -385875968;
  MEMORY[0x1B8CADCA0](v14, v16);

  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  sub_1B7C219E4(v96, *(&v96 + 1));

  v17 = *(a1 + 24);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v20 = 0;
    *(a1 + 24) = v19;
    v21 = *(v1 + 16);
    v22 = *(v21 + 16);
    while (v22 != v20)
    {
      v23 = v21 + 8 * v20++;
      if (*(v23 + 32) == 1)
      {
        swift_beginAccess();
        v24 = sub_1B7CFF570();
        v26 = v25;
        strcpy(&v96, "Chat count:");
        v108 = 32;
        v109 = 0xE100000000000000;
        sub_1B7C4BFF0();
        *&v96 = sub_1B7CFF080();
        *(&v96 + 1) = v27;
        MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
        MEMORY[0x1B8CADCA0](v24, v26);
        sub_1B7C219E4(v96, *(&v96 + 1));

        v21 = *(v1 + 16);
        v22 = *(v21 + 16);
        break;
      }
    }

    v28 = 0;
    while (v22 != v28)
    {
      v29 = v21 + 8 * v28++;
      if (*(v29 + 32) == 2)
      {
        swift_beginAccess();
        v30 = sub_1B7CFF570();
        v32 = v31;
        v106 = 32;
        v107 = 0xE100000000000000;
        sub_1B7C4BFF0();
        *&v96 = sub_1B7CFF080();
        *(&v96 + 1) = v33;
        MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
        MEMORY[0x1B8CADCA0](v30, v32);
        sub_1B7C219E4(v96, *(&v96 + 1));

        v21 = *(v1 + 16);
        v22 = *(v21 + 16);
        break;
      }
    }

    v34 = 0;
    while (v22 != v34)
    {
      v35 = v21 + 8 * v34++;
      if (*(v35 + 32) == 4)
      {
        swift_beginAccess();
        v36 = sub_1B7CFF570();
        v38 = v37;
        strcpy(&v96, "Message count:");
        v104 = 32;
        v105 = 0xE100000000000000;
        sub_1B7C4BFF0();
        *&v96 = sub_1B7CFF080();
        *(&v96 + 1) = v39;
        MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
        MEMORY[0x1B8CADCA0](v36, v38);
        sub_1B7C219E4(v96, *(&v96 + 1));

        v21 = *(v1 + 16);
        v22 = *(v21 + 16);
        break;
      }
    }

    v40 = 0;
    while (v22 != v40)
    {
      v41 = v21 + 8 * v40++;
      if (*(v41 + 32) == 8)
      {
        swift_beginAccess();
        v42 = sub_1B7CFF570();
        v44 = v43;
        v102 = 32;
        v103 = 0xE100000000000000;
        sub_1B7C4BFF0();
        *&v96 = sub_1B7CFF080();
        *(&v96 + 1) = v45;
        MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
        MEMORY[0x1B8CADCA0](v42, v44);
        sub_1B7C219E4(v96, *(&v96 + 1));

        v21 = *(v1 + 16);
        v22 = *(v21 + 16);
        break;
      }
    }

    v46 = 0;
    while (v22 != v46)
    {
      v47 = v21 + 8 * v46++;
      if (*(v47 + 32) == 16)
      {
        swift_beginAccess();
        v48 = sub_1B7CFF570();
        v50 = v49;
        v100 = 32;
        v101 = 0xE100000000000000;
        sub_1B7C4BFF0();
        *&v96 = sub_1B7CFF080();
        *(&v96 + 1) = v51;
        MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
        MEMORY[0x1B8CADCA0](v48, v50);
        sub_1B7C219E4(v96, *(&v96 + 1));

        v21 = *(v1 + 16);
        v22 = *(v21 + 16);
        break;
      }
    }

    v52 = 0;
    while (v22 != v52)
    {
      v53 = v21 + 8 * v52++;
      if (*(v53 + 32) == 32)
      {
        swift_beginAccess();
        v54 = sub_1B7CFF570();
        v56 = v55;
        v98 = 32;
        v99 = 0xE100000000000000;
        sub_1B7C4BFF0();
        *&v96 = sub_1B7CFF080();
        *(&v96 + 1) = v57;
        MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
        MEMORY[0x1B8CADCA0](v54, v56);
        sub_1B7C219E4(v96, *(&v96 + 1));

        v21 = *(v1 + 16);
        v22 = *(v21 + 16);
        break;
      }
    }

    v58 = 0;
    while (v22 != v58)
    {
      v59 = v21 + 8 * v58++;
      if (*(v59 + 32) == 2048)
      {
        sub_1B7C219E4(0x4320656C646E6148, 0xEE003A73746E756FLL);
        swift_beginAccess();
        v60 = *(v1 + 328);
        v96 = *(v1 + 312);
        v97 = v60;
        sub_1B7C6E9D0(&v96, a1);
        v21 = *(v1 + 16);
        v22 = *(v21 + 16);
        break;
      }
    }

    v61 = 0;
    while (v22 != v61)
    {
      v62 = v21 + 8 * v61++;
      if (*(v62 + 32) == 64)
      {
        sub_1B7C219E4(0xD000000000000017, 0x80000001B7D55710);
        swift_beginAccess();
        v63 = *(v1 + 88);
        v96 = *(v1 + 72);
        v97 = v63;
        sub_1B7C6E9D0(&v96, a1);
        v21 = *(v1 + 16);
        v22 = *(v21 + 16);
        break;
      }
    }

    v64 = 0;
    while (v22 != v64)
    {
      v65 = v21 + 8 * v64++;
      if (*(v65 + 32) == 128)
      {
        sub_1B7C219E4(0xD000000000000019, 0x80000001B7D55730);
        swift_beginAccess();
        v66 = *(v1 + 120);
        v96 = *(v1 + 104);
        v97 = v66;
        sub_1B7C6E9D0(&v96, a1);
        v21 = *(v1 + 16);
        v22 = *(v21 + 16);
        break;
      }
    }

    v67 = 0;
    while (v22 != v67)
    {
      v68 = v21 + 8 * v67++;
      if (*(v68 + 32) == 256)
      {
        sub_1B7C219E4(0xD000000000000016, 0x80000001B7D55750);
        swift_beginAccess();
        v69 = *(v1 + 152);
        v96 = *(v1 + 136);
        v97 = v69;
        sub_1B7C6ED20(&v96, a1);
        v21 = *(v1 + 16);
        v22 = *(v21 + 16);
        break;
      }
    }

    v70 = 0;
    while (v22 != v70)
    {
      v71 = v21 + 8 * v70++;
      if (*(v71 + 32) == 512)
      {
        swift_beginAccess();
        *&v96 = *(v1 + 296);
        v72 = sub_1B7CFF570();
        v74 = v73;
        *&v96 = 0xD00000000000001BLL;
        *(&v96 + 1) = 0x80000001B7D55770;
        sub_1B7C4BFF0();
        *&v96 = sub_1B7CFF080();
        *(&v96 + 1) = v75;
        MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
        MEMORY[0x1B8CADCA0](v72, v74);
        sub_1B7C219E4(v96, *(&v96 + 1));

        v21 = *(v1 + 16);
        v22 = *(v21 + 16);
        break;
      }
    }

    v76 = 0;
    while (v22 != v76)
    {
      v77 = v21 + 8 * v76++;
      if (*(v77 + 32) == 1024)
      {
        swift_beginAccess();
        *&v96 = *(v1 + 304);
        v78 = sub_1B7CFF570();
        v80 = v79;
        *&v96 = 0xD000000000000021;
        *(&v96 + 1) = 0x80000001B7D55790;
        sub_1B7C4BFF0();
        *&v96 = sub_1B7CFF080();
        *(&v96 + 1) = v81;
        MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
        MEMORY[0x1B8CADCA0](v78, v80);
        sub_1B7C219E4(v96, *(&v96 + 1));

        v21 = *(v1 + 16);
        v22 = *(v21 + 16);
        break;
      }
    }

    v82 = 0;
    while (v22 != v82)
    {
      v83 = v21 + 8 * v82++;
      if (*(v83 + 32) == 4096)
      {
        sub_1B7C219E4(0xD000000000000016, 0x80000001B7D557C0);
        swift_beginAccess();
        v84 = *(v1 + 184);
        v96 = *(v1 + 168);
        v97 = v84;
        sub_1B7C6E9D0(&v96, a1);
        v21 = *(v1 + 16);
        v22 = *(v21 + 16);
        break;
      }
    }

    v85 = 0;
    while (v22 != v85)
    {
      v86 = v21 + 8 * v85++;
      if (*(v86 + 32) == 0x2000)
      {
        sub_1B7C219E4(0xD000000000000016, 0x80000001B7D557E0);
        swift_beginAccess();
        v87 = *(v1 + 248);
        v96 = *(v1 + 232);
        v97 = v87;
        sub_1B7C6ED20(&v96, a1);
        v21 = *(v1 + 16);
        v22 = *(v21 + 16);
        break;
      }
    }

    v88 = 0;
    while (v22 != v88)
    {
      v89 = v21 + 8 * v88++;
      if (*(v89 + 32) == 0x4000)
      {
        sub_1B7C219E4(0xD000000000000016, 0x80000001B7D557E0);
        swift_beginAccess();
        v90 = *(v1 + 216);
        v96 = *(v1 + 200);
        v97 = v90;
        sub_1B7C6ED20(&v96, a1);
        v21 = *(v1 + 16);
        v22 = *(v21 + 16);
        break;
      }
    }

    v91 = (v21 + 32);
    while (v22)
    {
      v92 = *v91++;
      --v22;
      if (v92 == 0x8000)
      {
        sub_1B7C219E4(0xD000000000000016, 0x80000001B7D557E0);
        swift_beginAccess();
        v93 = *(v1 + 216);
        v96 = *(v1 + 200);
        v97 = v93;
        sub_1B7C6ED20(&v96, a1);
        break;
      }
    }

    v94 = *(a1 + 24);
    v18 = __OFSUB__(v94, 1);
    v95 = v94 - 1;
    if (!v18)
    {
      *(a1 + 24) = v95;
      return;
    }
  }

  __break(1u);
}

double StorageInspectionCountReport.init()()
{
  *(v0 + 16) = &unk_1F2FA1D48;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0u;
  return result;
}

uint64_t StorageInspectionCountReport.init(from:)(void *a1)
{
  v2 = v1;
  v55 = sub_1B7C107FC(&qword_1EBA52C50, &qword_1B7D0E728);
  MEMORY[0x1EEE9AC00](v55);
  v5 = &v46 - v4;
  v59 = v2;
  *(v2 + 16) = &unk_1F2FA1D48;
  v6 = v2 + 16;
  v54 = v7;
  *(v6 + 8) = 0u;
  v8 = (v6 + 8);
  *(v6 + 24) = 0u;
  *&v53 = v6 + 24;
  *(v6 + 40) = 0u;
  *&v52 = v6 + 40;
  *(v6 + 56) = 0u;
  v51 = (v6 + 56);
  *(v6 + 88) = 0u;
  v50 = (v6 + 88);
  *(v6 + 120) = 0u;
  v49 = (v6 + 120);
  *(v6 + 152) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  v9 = a1[3];
  *&v57 = a1[4];
  v71 = a1;
  sub_1B7AE9124(a1, v9);
  sub_1B7C6F148();
  v56 = v5;
  v10 = v58;
  sub_1B7CFF820();
  if (v10)
  {
    v11 = v59;

    sub_1B7AE9168(v71);
  }

  else
  {
    *&v57 = v6 + 152;
    *&v58 = v6;
    v47 = (v6 + 216);
    v48 = (v6 + 184);
    v12 = v54;
    v13 = v59;
    sub_1B7C107FC(&qword_1EBA52C60, &qword_1B7D0E730);
    v70 = 0;
    sub_1B7C6F244(&qword_1EBA52C68, sub_1B7C6F19C, MEMORY[0x1E69E6330]);
    sub_1B7CFF440();
    v14 = v68;
    v15 = v58;
    swift_beginAccess();
    *v15 = v14;

    LOBYTE(v68) = 1;
    v17 = sub_1B7CFF460();
    swift_beginAccess();
    *v8 = v17;
    LOBYTE(v68) = 2;
    v18 = sub_1B7CFF460();
    v19 = v58;
    swift_beginAccess();
    v19[2] = v18;
    LOBYTE(v68) = 3;
    v20 = sub_1B7CFF460();
    v21 = v53;
    swift_beginAccess();
    *v21 = v20;
    LOBYTE(v68) = 4;
    v22 = sub_1B7CFF460();
    swift_beginAccess();
    v19[4] = v22;
    LOBYTE(v68) = 5;
    v23 = sub_1B7CFF460();
    v24 = v52;
    swift_beginAccess();
    *v24 = v23;
    LOBYTE(v68) = 6;
    v25 = sub_1B7CFF460();
    swift_beginAccess();
    v19[6] = v25;
    v67 = 7;
    sub_1B7C6F1F0();
    sub_1B7CFF440();
    v52 = v69;
    v53 = v68;
    v26 = v51;
    swift_beginAccess();
    v27 = v52;
    *v26 = v53;
    v26[1] = v27;
    v66 = 8;
    sub_1B7CFF440();
    v52 = v69;
    v53 = v68;
    v28 = v50;
    swift_beginAccess();
    v29 = v52;
    *v28 = v53;
    v28[1] = v29;
    v65 = 9;
    sub_1B7CFF440();
    v52 = v69;
    v53 = v68;
    v30 = v49;
    swift_beginAccess();
    v31 = v52;
    *v30 = v53;
    v30[1] = v31;
    v64 = 10;
    sub_1B7CFF440();
    v52 = v69;
    v53 = v68;
    v32 = v57;
    swift_beginAccess();
    v33 = v52;
    *v32 = v53;
    v32[1] = v33;
    v63 = 11;
    sub_1B7CFF440();
    v57 = v68;
    v53 = v69;
    v34 = v48;
    swift_beginAccess();
    v35 = v53;
    *v34 = v57;
    v34[1] = v35;
    v62 = 12;
    sub_1B7CFF440();
    v57 = v68;
    v53 = v69;
    v36 = v47;
    swift_beginAccess();
    v37 = v53;
    *v36 = v57;
    v36[1] = v37;
    v61 = 13;
    sub_1B7CFF440();
    v38 = (v58 + 248);
    v57 = v68;
    v53 = v69;
    swift_beginAccess();
    v39 = v53;
    *v38 = v57;
    v38[1] = v39;
    LOBYTE(v68) = 14;
    v40 = sub_1B7CFF460();
    v41 = v58;
    swift_beginAccess();
    *(v41 + 280) = v40;
    LOBYTE(v68) = 15;
    v42 = sub_1B7CFF460();
    v43 = v58;
    swift_beginAccess();
    *(v43 + 288) = v42;
    v60 = 16;
    sub_1B7CFF440();
    v44 = (v58 + 296);
    (*(v12 + 8))(v56, v55);
    v57 = v69;
    v58 = v68;
    swift_beginAccess();
    v45 = v57;
    *v44 = v58;
    v44[1] = v45;
    sub_1B7AE9168(v71);
    return v13;
  }

  return v11;
}

double sub_1B7C6BD28(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

uint64_t sub_1B7C6BDF4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1B7C6BE68(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1B7C6BEDC(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_1B7C6BFA0(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1B7C6C064(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_1B7C6C128(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

__n128 sub_1B7C6C1B8@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 72);
  v4 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_1B7C6C200(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  *(v1 + 88) = *(a1 + 16);
  *(v1 + 72) = result;
  return result;
}

__n128 sub_1B7C6C298@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 104);
  v4 = *(v1 + 120);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_1B7C6C2E0(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  *(v1 + 120) = *(a1 + 16);
  *(v1 + 104) = result;
  return result;
}

__n128 sub_1B7C6C378@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 136);
  v4 = *(v1 + 152);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_1B7C6C3C0(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  *(v1 + 152) = *(a1 + 16);
  *(v1 + 136) = result;
  return result;
}

__n128 sub_1B7C6C458@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 168);
  v4 = *(v1 + 184);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_1B7C6C4A0(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  *(v1 + 184) = *(a1 + 16);
  *(v1 + 168) = result;
  return result;
}

__n128 sub_1B7C6C538@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 200);
  v4 = *(v1 + 216);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_1B7C6C580(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  *(v1 + 216) = *(a1 + 16);
  *(v1 + 200) = result;
  return result;
}

__n128 sub_1B7C6C618@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 232);
  v4 = *(v1 + 248);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_1B7C6C660(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  *(v1 + 248) = *(a1 + 16);
  *(v1 + 232) = result;
  return result;
}

__n128 sub_1B7C6C6F8@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + 264;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

__n128 sub_1B7C6C740(uint64_t a1)
{
  v3 = (v1 + 264);
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t sub_1B7C6C80C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 296) = a1;
  return result;
}

uint64_t sub_1B7C6C8D0(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 304) = a1;
  return result;
}

__n128 sub_1B7C6C960@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + 312;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

__n128 sub_1B7C6C9A8(uint64_t a1)
{
  v3 = (v1 + 312);
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t sub_1B7C6CA40(__n128 a1)
{
  v7 = sub_1B7CFF8D0();
  MEMORY[0x1B8CADCA0](663610, 0xE300000000000000);
  type metadata accessor for StorageInspectorReportStringBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  *(inited + 24) = 0;
  (*(*v1 + 632))();
  swift_beginAccess();
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v3 = sub_1B7CFEA10();
  v5 = v4;

  MEMORY[0x1B8CADCA0](v3, v5);

  return v7;
}

uint64_t sub_1B7C6CB94(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA52C80, &qword_1B7D0E738);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-v7];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C6F148();
  sub_1B7CFF830();
  swift_beginAccess();
  *&v19 = *(v3 + 16);
  v21 = 0;
  sub_1B7C107FC(&qword_1EBA52C60, &qword_1B7D0E730);
  sub_1B7C6F244(&qword_1EBA52C88, sub_1B7C6F2BC, MEMORY[0x1E69E6300]);
  sub_1B7CFF500();
  if (!v2)
  {
    swift_beginAccess();
    LOBYTE(v19) = 1;
    sub_1B7CFF520();
    swift_beginAccess();
    LOBYTE(v19) = 2;
    sub_1B7CFF520();
    swift_beginAccess();
    LOBYTE(v19) = 3;
    sub_1B7CFF520();
    swift_beginAccess();
    LOBYTE(v19) = 4;
    sub_1B7CFF520();
    swift_beginAccess();
    LOBYTE(v19) = 5;
    sub_1B7CFF520();
    swift_beginAccess();
    LOBYTE(v19) = 6;
    sub_1B7CFF520();
    swift_beginAccess();
    v9 = *(v3 + 88);
    v19 = *(v3 + 72);
    v20 = v9;
    v18[200] = 7;
    sub_1B7C6F310();
    sub_1B7CFF500();
    swift_beginAccess();
    v10 = *(v3 + 120);
    v19 = *(v3 + 104);
    v20 = v10;
    v18[176] = 8;
    sub_1B7CFF500();
    swift_beginAccess();
    v11 = *(v3 + 152);
    v19 = *(v3 + 136);
    v20 = v11;
    v18[152] = 9;
    sub_1B7CFF500();
    swift_beginAccess();
    v12 = *(v3 + 184);
    v19 = *(v3 + 168);
    v20 = v12;
    v18[128] = 10;
    sub_1B7CFF500();
    swift_beginAccess();
    v13 = *(v3 + 216);
    v19 = *(v3 + 200);
    v20 = v13;
    v18[104] = 11;
    sub_1B7CFF500();
    swift_beginAccess();
    v14 = *(v3 + 248);
    v19 = *(v3 + 232);
    v20 = v14;
    v18[80] = 12;
    sub_1B7CFF500();
    swift_beginAccess();
    v15 = *(v3 + 280);
    v19 = *(v3 + 264);
    v20 = v15;
    v18[56] = 13;
    sub_1B7CFF500();
    swift_beginAccess();
    LOBYTE(v19) = 14;
    sub_1B7CFF520();
    swift_beginAccess();
    LOBYTE(v19) = 15;
    sub_1B7CFF520();
    swift_beginAccess();
    v16 = *(v3 + 328);
    v19 = *(v3 + 312);
    v20 = v16;
    v18[7] = 16;
    sub_1B7CFF500();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t StorageInspectionCountReport.OrphanableItemCounts.parented.setter(unint64_t result)
{
  v2 = v1[3];
  v1[3] = result;
  v3 = result >= v2;
  v4 = result - v2;
  if (v3)
  {
    v3 = __CFADD__(*v1, v4);
    v5 = *v1 + v4;
    if (!v3)
    {
      *v1 = v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t StorageInspectionCountReport.OrphanableItemCounts.orphaned.setter(unint64_t result)
{
  v2 = v1[1];
  v1[1] = result;
  v3 = result >= v2;
  v4 = result - v2;
  if (v3)
  {
    v3 = __CFADD__(*v1, v4);
    v5 = *v1 + v4;
    if (!v3)
    {
      *v1 = v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t StorageInspectionCountReport.OrphanableItemCounts.childOfOrphanedMessage.setter(unint64_t result)
{
  v2 = v1[2];
  v1[2] = result;
  v3 = result >= v2;
  v4 = result - v2;
  if (v3)
  {
    v3 = __CFADD__(*v1, v4);
    v5 = *v1 + v4;
    if (!v3)
    {
      *v1 = v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1B7C6D268(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;

  return result;
}

double StorageInspectionCountReport.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = &unk_1F2FA1D48;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0u;
  return result;
}

void StorageInspectionCountReport.ReportContentFlags.description.getter()
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *v0;
LABEL_2:
  if (v1 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4 + 1;
  v6 = (&unk_1F2FA16F0 + 24 * v1 + 32);
  while (v1 != 16)
  {
    if (v5 == ++v1)
    {
      __break(1u);
      return;
    }

    v7 = v6 + 3;
    v8 = *v6;
    v6 += 3;
    if ((v8 & ~v3) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B7C311E8(0, v2[2] + 1, 1);
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_1B7C311E8((v11 > 1), v12 + 1, 1);
      }

      v2[2] = v12 + 1;
      v13 = &v2[3 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v13[6] = v9;
      goto LABEL_2;
    }
  }

  v14 = v2[2];
  if (v14)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v14, 0);
    v15 = v2 + 6;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v21 + 16);
      v18 = *(v21 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_1B7AECEEC((v18 > 1), v19 + 1, 1);
      }

      *(v21 + 16) = v19 + 1;
      v20 = v21 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  sub_1B7CFEA10();
}

unint64_t sub_1B7C6D56C(char a1)
{
  result = 0x6E756F4374616863;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6168437974706D65;
      break;
    case 3:
      result = 0x436567617373656DLL;
      break;
    case 4:
    case 7:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000027;
      break;
    case 13:
      result = 0xD000000000000026;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    case 16:
      result = 0x6F43656C646E6168;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1B7C6D774@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7C702AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7C6D7A8(uint64_t a1)
{
  v2 = sub_1B7C6F148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C6D7E4(uint64_t a1)
{
  v2 = sub_1B7C6F148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StorageInspectionCountReport.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t StorageInspectionCountReport.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  StorageInspectionCountReport.init(from:)(a1);
  return v2;
}

uint64_t sub_1B7C6D8A8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 656))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_1B7C6DA48()
{
  v0 = unk_1F2FA1D70;
  if ((unk_1F2FA1D70 & ~qword_1F2FA1D68) == 0)
  {
    v0 = 0;
  }

  v1 = v0 | qword_1F2FA1D68;
  v2 = qword_1F2FA1D78;
  if ((qword_1F2FA1D78 & ~v1) == 0)
  {
    v2 = 0;
  }

  v3 = v2 | v1;
  if ((unk_1F2FA1D80 & ~v3) != 0)
  {
    v4 = unk_1F2FA1D80;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 | v3;
  v6 = qword_1F2FA1D88;
  if ((qword_1F2FA1D88 & ~v5) == 0)
  {
    v6 = 0;
  }

  v7 = v6 | v5;
  if ((unk_1F2FA1D90 & ~v7) != 0)
  {
    v8 = unk_1F2FA1D90;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | v7;
  v10 = qword_1F2FA1D98;
  if ((qword_1F2FA1D98 & ~v9) == 0)
  {
    v10 = 0;
  }

  v11 = v10 | v9;
  if ((unk_1F2FA1DA0 & ~v11) != 0)
  {
    v12 = unk_1F2FA1DA0;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 | v11;
  v14 = qword_1F2FA1DA8;
  if ((qword_1F2FA1DA8 & ~v13) == 0)
  {
    v14 = 0;
  }

  v15 = v14 | v13;
  if ((unk_1F2FA1DB0 & ~v15) != 0)
  {
    v16 = unk_1F2FA1DB0;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 | v15;
  v18 = qword_1F2FA1DB8;
  if ((qword_1F2FA1DB8 & ~v17) == 0)
  {
    v18 = 0;
  }

  v19 = v18 | v17;
  if ((unk_1F2FA1DC0 & ~v19) != 0)
  {
    v20 = unk_1F2FA1DC0;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 | v19;
  v22 = qword_1F2FA1DC8;
  if ((qword_1F2FA1DC8 & ~v21) == 0)
  {
    v22 = 0;
  }

  v23 = v22 | v21;
  if ((unk_1F2FA1DD0 & ~v23) != 0)
  {
    v24 = unk_1F2FA1DD0;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24 | v23;
  v27 = qword_1F2FA1DD8;
  v26 = unk_1F2FA1DE0;
  if ((qword_1F2FA1DD8 & ~v25) == 0)
  {
    v27 = 0;
  }

  v28 = v27 | v25;
  if ((unk_1F2FA1DE0 & ~v28) == 0)
  {
    v26 = 0;
  }

  qword_1EBA52C48 = v26 | v28;
}

uint64_t static StorageInspectionCountReport.ReportContentFlags.allFlags.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBA515E8 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EBA52C48;
  return result;
}

char *StorageInspectionCountReport.ReportContentFlags.counts.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = *(&unk_1F2FA1D48 + v1 + 32);
    if ((v4 & ~v2) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1B7CA2C54(0, *(v3 + 2) + 1, 1, v3);
      }

      v6 = *(v3 + 2);
      v5 = *(v3 + 3);
      if (v6 >= v5 >> 1)
      {
        v3 = sub_1B7CA2C54((v5 > 1), v6 + 1, 1, v3);
      }

      *(v3 + 2) = v6 + 1;
      *&v3[8 * v6 + 32] = v4;
    }

    v1 += 8;
  }

  while (v1 != 128);
  return v3;
}

unint64_t *(*StorageInspectionCountReport.OrphanableItemCounts.orphaned.modify(void *a1))(unint64_t *result, char a2)
{
  v2 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  return sub_1B7C6DD80;
}

unint64_t *sub_1B7C6DD80(unint64_t *result, char a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = *result;
  v2[1] = *result;
  v5 = v4 >= v3;
  v6 = v4 - v3;
  LOBYTE(v7) = !v5;
  if (a2)
  {
    if (v7)
    {
      __break(1u);
      goto LABEL_13;
    }

    v7 = *v2;
    v5 = __CFADD__(*v2, v6);
    v6 += *v2;
    if (!v5)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = __CFADD__(*v2, v6);
  v6 += *v2;
  if (!v5)
  {
LABEL_11:
    *v2 = v6;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t *(*StorageInspectionCountReport.OrphanableItemCounts.childOfOrphanedMessage.modify(void *a1))(unint64_t *result, char a2)
{
  v2 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  return sub_1B7C6DE04;
}

unint64_t *sub_1B7C6DE04(unint64_t *result, char a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = *result;
  v2[2] = *result;
  v5 = v4 >= v3;
  v6 = v4 - v3;
  LOBYTE(v7) = !v5;
  if (a2)
  {
    if (v7)
    {
      __break(1u);
      goto LABEL_13;
    }

    v7 = *v2;
    v5 = __CFADD__(*v2, v6);
    v6 += *v2;
    if (!v5)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = __CFADD__(*v2, v6);
  v6 += *v2;
  if (!v5)
  {
LABEL_11:
    *v2 = v6;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t *(*StorageInspectionCountReport.OrphanableItemCounts.parented.modify(void *a1))(unint64_t *result, char a2)
{
  v2 = *(v1 + 24);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  return sub_1B7C6DE88;
}

unint64_t *sub_1B7C6DE88(unint64_t *result, char a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = *result;
  v2[3] = *result;
  v5 = v4 >= v3;
  v6 = v4 - v3;
  LOBYTE(v7) = !v5;
  if (a2)
  {
    if (v7)
    {
      __break(1u);
      goto LABEL_13;
    }

    v7 = *v2;
    v5 = __CFADD__(*v2, v6);
    v6 += *v2;
    if (!v5)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = __CFADD__(*v2, v6);
  v6 += *v2;
  if (!v5)
  {
LABEL_11:
    *v2 = v6;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_1B7C6DED8()
{
  v1 = 0x6C61746F74;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0x6465746E65726170;
  }

  if (*v0)
  {
    v1 = 0x64656E616870726FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B7C6DF50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7C707FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7C6DF78(uint64_t a1)
{
  v2 = sub_1B7C6F364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C6DFB4(uint64_t a1)
{
  v2 = sub_1B7C6F364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StorageInspectionCountReport.OrphanableItemCounts.encode(to:)(void *a1)
{
  v4 = sub_1B7C107FC(&qword_1EBA52CA0, &qword_1B7D0E740);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[2] = v1[2];
  v11[3] = v8;
  v11[1] = v9;
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C6F364();
  sub_1B7CFF830();
  v15 = 0;
  sub_1B7CFF520();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v14 = 1;
  sub_1B7CFF520();
  v13 = 2;
  sub_1B7CFF520();
  v12 = 3;
  sub_1B7CFF520();
  return (*(v5 + 8))(v7, v4);
}

uint64_t StorageInspectionCountReport.OrphanableItemCounts.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1B7C107FC(&qword_1EBA52CB0, &qword_1B7D0E748);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C6F364();
  sub_1B7CFF820();
  if (!v2)
  {
    v18 = 0;
    v9 = sub_1B7CFF460();
    v17 = 1;
    v10 = sub_1B7CFF460();
    v16 = 2;
    v14 = sub_1B7CFF460();
    v15 = 3;
    v13 = sub_1B7CFF460();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    v12 = v13;
    a2[2] = v14;
    a2[3] = v12;
  }

  return sub_1B7AE9168(a1);
}

uint64_t StorageInspectionCountReport.OrphanableItemCounts.description.getter()
{
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD000000000000014, 0x80000001B7D0E730);
  MEMORY[0x1B8CADCA0](0x3A6C61746F74203ALL, 0xE900000000000020);
  v0 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v0);

  MEMORY[0x1B8CADCA0](0x6E616870726F202CLL, 0xEC000000203A6465);
  v1 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v1);

  MEMORY[0x1B8CADCA0](0xD00000000000001ALL, 0x80000001B7D55800);
  v2 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v2);

  return 0;
}

BOOL _s14IMDPersistence28StorageInspectionCountReportC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[9];
  v5 = a1[10];
  v6 = a1[11];
  swift_beginAccess();
  if (v4 != a2[9] || v5 != a2[10] || v6 != a2[11])
  {
    return 0;
  }

  swift_beginAccess();
  v11 = a1[13];
  v10 = a1[14];
  v12 = a1[15];
  swift_beginAccess();
  result = 0;
  if (v11 == a2[13] && v10 == a2[14] && v12 == a2[15])
  {
    swift_beginAccess();
    v13 = a1[5];
    swift_beginAccess();
    if (v13 != a2[5])
    {
      return 0;
    }

    swift_beginAccess();
    v14 = a1[6];
    swift_beginAccess();
    if (v14 != a2[6])
    {
      return 0;
    }

    swift_beginAccess();
    v15 = a1[3];
    swift_beginAccess();
    if (v15 != a2[3])
    {
      return 0;
    }

    swift_beginAccess();
    v16 = a1[4];
    swift_beginAccess();
    if (v16 != a2[4])
    {
      return 0;
    }

    swift_beginAccess();
    v18 = a1[39];
    v17 = a1[40];
    v19 = a1[41];
    swift_beginAccess();
    result = 0;
    if (v18 != a2[39] || v17 != a2[40] || v19 != a2[41])
    {
      return result;
    }

    swift_beginAccess();
    v20 = a1[37];
    swift_beginAccess();
    if (v20 != a2[37])
    {
      return 0;
    }

    swift_beginAccess();
    v21 = a1[38];
    swift_beginAccess();
    if (v21 != a2[38])
    {
      return 0;
    }

    swift_beginAccess();
    v22 = a1[7];
    swift_beginAccess();
    if (v22 != a2[7])
    {
      return 0;
    }

    swift_beginAccess();
    v23 = a1[8];
    swift_beginAccess();
    if (v23 != a2[8])
    {
      return 0;
    }

    swift_beginAccess();
    v25 = a1[29];
    v24 = a1[30];
    v26 = a1[31];
    swift_beginAccess();
    result = 0;
    if (v25 == a2[29] && v24 == a2[30] && v26 == a2[31])
    {
      swift_beginAccess();
      v28 = a1[21];
      v27 = a1[22];
      v29 = a1[23];
      swift_beginAccess();
      result = 0;
      if (v28 == a2[21] && v27 == a2[22] && v29 == a2[23])
      {
        swift_beginAccess();
        v31 = a1[25];
        v30 = a1[26];
        v32 = a1[27];
        swift_beginAccess();
        result = 0;
        if (v31 == a2[25] && v30 == a2[26])
        {
          return v32 == a2[27];
        }
      }
    }
  }

  return result;
}

void sub_1B7C6E9D0(void *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 24) = v4;
    v6 = sub_1B7CFF570();
    v8 = v7;
    sub_1B7C4BFF0();
    v24 = sub_1B7CFF080();
    v28 = v9;
    MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
    MEMORY[0x1B8CADCA0](v6, v8);
    sub_1B7C219E4(v24, v28);

    v10 = sub_1B7CFF570();
    v12 = v11;
    v25 = sub_1B7CFF080();
    v29 = v13;
    MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
    MEMORY[0x1B8CADCA0](v10, v12);
    sub_1B7C219E4(v25, v29);

    v14 = sub_1B7CFF570();
    v16 = v15;
    v26 = sub_1B7CFF080();
    v30 = v17;
    MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
    MEMORY[0x1B8CADCA0](v14, v16);
    sub_1B7C219E4(v26, v30);

    v18 = sub_1B7CFF570();
    v20 = v19;
    v27 = sub_1B7CFF080();
    v31 = v21;
    MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
    MEMORY[0x1B8CADCA0](v18, v20);
    sub_1B7C219E4(v27, v31);

    v22 = *(a2 + 24);
    v3 = __OFSUB__(v22, 1);
    v23 = v22 - 1;
    if (!v3)
    {
      *(a2 + 24) = v23;
      return;
    }
  }

  __break(1u);
}

void sub_1B7C6ED20(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v6 = a1[3];
    v7 = *a1;
    v35 = a1[1];
    v36 = a1[2];
    *(a2 + 24) = v4;
    v8 = objc_opt_self();
    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v10 = [v8 stringFromHugeNumber_];

    v11 = sub_1B7CFEA60();
    v13 = v12;

    sub_1B7C4BFF0();
    v37 = sub_1B7CFF080();
    v41 = v14;
    MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
    MEMORY[0x1B8CADCA0](v11, v13);
    sub_1B7C219E4(v37, v41);

    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v16 = [v8 stringFromHugeNumber_];

    v17 = sub_1B7CFEA60();
    v19 = v18;

    v38 = sub_1B7CFF080();
    v42 = v20;
    MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
    MEMORY[0x1B8CADCA0](v17, v19);
    sub_1B7C219E4(v38, v42);

    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v22 = [v8 stringFromHugeNumber_];

    v23 = sub_1B7CFEA60();
    v25 = v24;

    v39 = sub_1B7CFF080();
    v43 = v26;
    MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
    MEMORY[0x1B8CADCA0](v23, v25);
    sub_1B7C219E4(v39, v43);

    v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v28 = [v8 stringFromHugeNumber_];

    v29 = sub_1B7CFEA60();
    v31 = v30;

    v40 = sub_1B7CFF080();
    v44 = v32;
    MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
    MEMORY[0x1B8CADCA0](v29, v31);
    sub_1B7C219E4(v40, v44);

    v33 = *(a2 + 24);
    v3 = __OFSUB__(v33, 1);
    v34 = v33 - 1;
    if (!v3)
    {
      *(a2 + 24) = v34;
      return;
    }
  }

  __break(1u);
}

unint64_t sub_1B7C6F148()
{
  result = qword_1EBA52C58;
  if (!qword_1EBA52C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52C58);
  }

  return result;
}

unint64_t sub_1B7C6F19C()
{
  result = qword_1EBA52C70;
  if (!qword_1EBA52C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52C70);
  }

  return result;
}

unint64_t sub_1B7C6F1F0()
{
  result = qword_1EBA52C78;
  if (!qword_1EBA52C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52C78);
  }

  return result;
}

uint64_t sub_1B7C6F244(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA52C60, &qword_1B7D0E730);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C6F2BC()
{
  result = qword_1EBA52C90;
  if (!qword_1EBA52C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52C90);
  }

  return result;
}

unint64_t sub_1B7C6F310()
{
  result = qword_1EBA52C98;
  if (!qword_1EBA52C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52C98);
  }

  return result;
}

unint64_t sub_1B7C6F364()
{
  result = qword_1EBA52CA8;
  if (!qword_1EBA52CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CA8);
  }

  return result;
}

unint64_t sub_1B7C6F3BC()
{
  result = qword_1EBA52CB8;
  if (!qword_1EBA52CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CB8);
  }

  return result;
}

unint64_t sub_1B7C6F414()
{
  result = qword_1EBA52CC0;
  if (!qword_1EBA52CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CC0);
  }

  return result;
}

unint64_t sub_1B7C6F46C()
{
  result = qword_1EBA52CC8;
  if (!qword_1EBA52CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CC8);
  }

  return result;
}

unint64_t sub_1B7C6F4C4()
{
  result = qword_1EBA52CD0;
  if (!qword_1EBA52CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CD0);
  }

  return result;
}

__n128 sub_1B7C6FED4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B7C6FEE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7C6FF00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for StorageInspectionCountReport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorageInspectionCountReport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7C700A0()
{
  result = qword_1EBA52CD8;
  if (!qword_1EBA52CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CD8);
  }

  return result;
}

unint64_t sub_1B7C700F8()
{
  result = qword_1EBA52CE0;
  if (!qword_1EBA52CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CE0);
  }

  return result;
}

unint64_t sub_1B7C70150()
{
  result = qword_1EBA52CE8;
  if (!qword_1EBA52CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CE8);
  }

  return result;
}

unint64_t sub_1B7C701A8()
{
  result = qword_1EBA52CF0;
  if (!qword_1EBA52CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CF0);
  }

  return result;
}

unint64_t sub_1B7C70200()
{
  result = qword_1EBA52CF8;
  if (!qword_1EBA52CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CF8);
  }

  return result;
}

unint64_t sub_1B7C70258()
{
  result = qword_1EBA52D00;
  if (!qword_1EBA52D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52D00);
  }

  return result;
}

uint64_t sub_1B7C702AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001B7D55860 == a2;
  if (v3 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E756F4374616863 && a2 == 0xE900000000000074 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6168437974706D65 && a2 == 0xEE00746E756F4374 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x436567617373656DLL && a2 == 0xEC000000746E756FLL || (sub_1B7CFF590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7D4E010 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7D4E030 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B7D4E050 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7D4E070 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7D4E090 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7D4E0B0 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7D4E110 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001B7D4E150 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7D4E130 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001B7D558A0 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B7D4E0D0 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B7D4E0F0 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6F43656C646E6168 && a2 == 0xEC00000073746E75)
  {

    return 16;
  }

  else
  {
    v6 = sub_1B7CFF590();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_1B7C707FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61746F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656E616870726FLL && a2 == 0xE800000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7D558E0 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465746E65726170 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B7CFF590();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double sub_1B7C70964()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D513A0);
  MEMORY[0x1B8CADCA0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1B8CADCA0](0xD0000000000000B8, 0x80000001B7D55960);
  SqlOperation.execute(_:_:)(0, 0xE000000000000000, 0, 0);

  return result;
}

void sub_1B7C70A70(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for StorageInspectionAttachmentRecord(0);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = *(v12 + 80);
    v18 = a1 + ((v17 + 32) & ~v17);
    v36 = "rphaned_parent INTEGER);";
    v37 = v17;
    v35 = (v17 + 16) & ~v17;
    v34 = (v13 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = a2 & 1;
    v19 = *(v12 + 72);
    v38 = v9;
    v32 = v19;
    do
    {
      sub_1B7C607E8(v18, v15);
      sub_1B7C487D8(&v15[*(v9 + 32)], v8);
      v20 = sub_1B7CFDFF0();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v8, 1, v20) == 1)
      {
        sub_1B7C4FB10(v8);
        sub_1B7C71074(v15);
      }

      else
      {
        v46 = v3;
        v22 = sub_1B7CFDFC0();
        v42 = v23;
        v43 = v22;
        (*(v21 + 8))(v8, v20);
        if (qword_1EBA515F0 != -1)
        {
          swift_once();
        }

        v41 = off_1EBA52D08;
        v44 = 0;
        v45 = 0xE000000000000000;
        sub_1B7CFF210();
        MEMORY[0x1B8CADCA0](0x4920545245534E49, 0xEC000000204F544ELL);
        MEMORY[0x1B8CADCA0](*(v40 + 16), *(v40 + 24));
        MEMORY[0x1B8CADCA0](0xD00000000000007CLL, v36 | 0x8000000000000000);
        v24 = v44;
        v25 = v45;
        v26 = v39;
        sub_1B7C607E8(v15, v39);
        v27 = v34;
        v28 = swift_allocObject();
        sub_1B7C710D0(v26, v28 + v35);
        v29 = v28 + v27;
        v30 = v42;
        *v29 = v43;
        *(v29 + 8) = v30;
        *(v29 + 16) = v33;
        v31 = v46;
        SqlOperation.execute(_:_:)(v24, v25, sub_1B7C71134, v28);
        v3 = v31;
        sub_1B7C71074(v15);

        v9 = v38;
        v19 = v32;
        if (v31)
        {
          return;
        }
      }

      v18 += v19;
      --v16;
    }

    while (v16);
  }
}

void sub_1B7C70E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v17[4] = *MEMORY[0x1E69E9840];
  SqlOperation.bind(_:)(*a2);
  if (v8)
  {
    return;
  }

  SqlOperation.bind(_:)(*(a2 + 32));
  if (v9)
  {
    return;
  }

  v10 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlStatementBindTextFromCFString(a1 + 48, v10);
  swift_endAccess();

  swift_beginAccess();
  v17[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v17);
  v11 = v17[0];
  swift_endAccess();
  if (v11)
  {
LABEL_13:
    swift_willThrow();
    v11;
    return;
  }

  v12 = type metadata accessor for StorageInspectionAttachmentRecord(0);
  v13 = a2 + v12[9];
  if ((*(v13 + 8) & 1) == 0)
  {
    v11 = *v13;
    if (*v13 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v11 <= 0x7FFFFFFF)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_7:
  swift_beginAccess();
  IMDSqlStatementBindInt((a1 + 48), v11);
  v17[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v17);
  v11 = v17[0];
  swift_endAccess();
  if (v11)
  {
    goto LABEL_13;
  }

  v14 = a2 + v12[10];
  if ((*(v14 + 8) & 1) == 0)
  {
    v15 = *v14;
    if (*v14 >= 0xFFFFFFFF80000000)
    {
      if (v15 <= 0x7FFFFFFF)
      {
        goto LABEL_12;
      }

LABEL_20:
      __break(1u);
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  LODWORD(v15) = 0;
LABEL_12:
  swift_beginAccess();
  IMDSqlStatementBindInt((a1 + 48), v15);
  v17[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v17);
  v11 = v17[0];
  swift_endAccess();
  if (v11)
  {
    goto LABEL_13;
  }

  SqlOperation.bind(_:)(*(a2 + v12[11]));
  if (!v16)
  {
    v18.value = a5 & 1;
    v18.is_nil = 0;
    SqlOperation.bind(_:)(v18);
  }
}

uint64_t sub_1B7C71074(uint64_t a1)
{
  v2 = type metadata accessor for StorageInspectionAttachmentRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7C710D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageInspectionAttachmentRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B7C71134(uint64_t a1)
{
  v3 = *(type metadata accessor for StorageInspectionAttachmentRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_1B7C70E14(a1, v1 + v4, *v5, *(v5 + 8), *(v5 + 16));
}

double sub_1B7C711D4()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D513A0);
  MEMORY[0x1B8CADCA0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1B8CADCA0](0xD000000000000054, 0x80000001B7D55B40);
  SqlOperation.execute(_:_:)(0, 0xE000000000000000, 0, 0);

  return result;
}

double sub_1B7C712E0()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x1B8CADCA0](v0[2], v0[3]);
  MEMORY[0x1B8CADCA0](0xD000000000000059, 0x80000001B7D55AE0);
  MEMORY[0x1B8CADCA0](v0[4], v0[5]);
  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  SqlOperation.execute(_:_:)(0, 0xE000000000000000, 0, 0);

  return result;
}

uint64_t URL.directoryExistsOnDisk.getter()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1B7CFDFC0();
  v4 = 0;
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1B7CFEA30();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v4];

  return (v2 & v4);
}

uint64_t URL.fileAllocationSize.getter()
{
  v0 = MEMORY[0x1E69688A8];
  v1 = MEMORY[0x1E695DC58];

  return sub_1B7C723A8(v1, v0, sub_1B7C73244, "Failed to get diskAllocationSize from URL not on disk '%s'");
}

uint64_t URL.purgeableState.getter()
{
  v0 = sub_1B7C107FC(&qword_1EBA52970, &qword_1B7D0DB30);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_1B7CFDD50();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C107FC(&qword_1EBA52980, &unk_1B7D0DB40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7D0A7B0;
  v8 = *MEMORY[0x1E695DBA8];
  *(inited + 32) = *MEMORY[0x1E695DBA8];
  v9 = v8;
  sub_1B7C72F40(inited);
  swift_setDeallocating();
  sub_1B7C73134(inited + 32);
  sub_1B7CFDF00();

  (*(v4 + 56))(v2, 0, 1, v3);
  (*(v4 + 32))(v6, v2, v3);
  v10 = sub_1B7CFDD40();
  (*(v4 + 8))(v6, v3);
  if (v10 != 2 && (v10 & 1) == 0)
  {
    return 0;
  }

  v11 = sub_1B7CFDFC0();
  v13 = sub_1B7C73368(v11, v12);
  v15 = v14;

  if (v15)
  {
    return 2;
  }

  if (v13)
  {
    v17 = (IM_APFS_PURGEABLE_IGNORE_ME() & v13) == 0;
  }

  else
  {
    v17 = 0;
  }

  if ([objc_opt_self() purgeableFlagsAttributedToMessages_])
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  return v18 | v17;
}

uint64_t IMFileTransferState.description.getter(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 0)
    {
      if (a1 == -1)
      {
        return 0x6E69766968637261;
      }

      if (!a1)
      {
        return 0xD000000000000015;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x6E69726170657270;
      }

      else
      {
        return 0xD000000000000011;
      }
    }

    v2 = 0x747065636361;
    return v2 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
  }

  if (a1 > 6)
  {
    if (a1 == 7)
    {
      return 0xD000000000000015;
    }

    if (a1 != 8)
    {
      if (a1 == 9)
      {
        return 0x69616E626D756874;
      }

      return 0x6E776F6E6B6E75;
    }

    v2 = 0x7463656A6572;
    return v2 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
  }

  if (a1 != 4)
  {
    if (a1 != 5)
    {
      return 0x617453726F727265;
    }

    v2 = 0x6873696E6966;
    return v2 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
  }

  return 0x697A696C616E6966;
}

uint64_t IMFileTransferCKSyncState.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0xD00000000000001ELL;
      case 1:
        return 0xD00000000000001BLL;
      case 2:
        return 0xD00000000000001DLL;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0xD00000000000001FLL;
    }

    if (a1 == 64)
    {
      return 0x6261636E79736E75;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 == 3)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000029;
  }
}

uint64_t sub_1B7C71B34(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_1B7CFEA30();
  v5 = [v4 *a3];

  v6 = sub_1B7CFEA60();
  return v6;
}

id URL.itemExistsOnDisk.getter()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1B7CFDFC0();
  v4 = 0;
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1B7CFEA30();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v4];

  return v2;
}

uint64_t URL.fileExistsOnDisk.getter()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1B7CFDFC0();
  v4 = 0;
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1B7CFEA30();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v4];

  return v2 & (v4 ^ 1);
}

uint64_t IMChatStyle.styleCharacter.getter(unsigned __int8 a1)
{
  v1 = a1;
  v2 = 43;
  if (a1 != 43)
  {
    v2 = 0;
  }

  if (a1 != 45)
  {
    v1 = v2;
  }

  if (a1 == 35)
  {
    return 35;
  }

  else
  {
    return v1;
  }
}

uint64_t IMChatStyle.description.getter(char a1)
{
  switch(a1)
  {
    case '#':
      MEMORY[0x1B8CADCA0](0x746168436D6F6F72, 0xED0000656C797453);
      v1 = 0xE100000000000000;
      v2 = 35;
      break;
    case '+':
      MEMORY[0x1B8CADCA0](0x61684370756F7267, 0xEE00656C79745374);
      v1 = 0xE100000000000000;
      v2 = 43;
      break;
    case '-':
      MEMORY[0x1B8CADCA0](0xD000000000000017, 0x80000001B7D55C00);
      v1 = 0xE100000000000000;
      v2 = 45;
      break;
    default:
      MEMORY[0x1B8CADCA0](0, 0xE000000000000000);
      v2 = 0;
      v1 = 0xE000000000000000;
      break;
  }

  MEMORY[0x1B8CADCA0](10272, 0xE200000000000000);
  MEMORY[0x1B8CADCA0](v2, v1);

  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  return 0;
}

uint64_t IMChatStyle.name.getter(char a1)
{
  v1 = 0x61684370756F7267;
  v2 = 0xD000000000000017;
  if (a1 != 45)
  {
    v2 = 0;
  }

  if (a1 != 43)
  {
    v1 = v2;
  }

  if (a1 == 35)
  {
    return 0x746168436D6F6F72;
  }

  else
  {
    return v1;
  }
}

uint64_t static NSFileManager.fileExistsOnDisk(atPath:)(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_1B7CFEA30();
  v4 = [v2 fileExistsAtPath:v3 isDirectory:&v6];

  return v4 & (v6 ^ 1);
}

uint64_t static NSFileManager.directoryExistsOnDisk(atPath:)(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_1B7CFEA30();
  v4 = [v2 fileExistsAtPath:v3 isDirectory:&v6];

  return (v4 & v6);
}

id static NSFileManager.itemExistsOnDisk(atPath:)(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_1B7CFEA30();
  v4 = [v2 fileExistsAtPath:v3 isDirectory:&v6];

  return v4;
}

BOOL static NSFileManager.apfsflags(arePurgeable:)(_BOOL8 result, __n128 a2)
{
  if (result)
  {
    return (IM_APFS_PURGEABLE_IGNORE_ME() & result) == 0;
  }

  return result;
}

uint64_t static NSFileManager.fileIsPurgeable(atPath:)(uint64_t a1, unint64_t a2)
{
  result = sub_1B7C73368(a1, a2);
  if (v3)
  {
    return 2;
  }

  if (result)
  {
    return (IM_APFS_PURGEABLE_IGNORE_ME() & result) == 0;
  }

  return result;
}

uint64_t static NSFileManager.string(forPurgeableFlags:)(uint64_t a1)
{
  v1 = [objc_opt_self() stringForPurgableFlags_];
  v2 = sub_1B7CFEA60();

  return v2;
}

uint64_t URL.fileSize.getter()
{
  v0 = MEMORY[0x1E69688C0];
  v1 = MEMORY[0x1E695DB50];

  return sub_1B7C723A8(v1, v0, sub_1B7C736D8, "Failed to get fileSize from URL not on disk '%s'");
}

uint64_t sub_1B7C723A8(void **a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t), const char *a4)
{
  v37 = a3;
  v38 = a4;
  v43 = *MEMORY[0x1E69E9840];
  v6 = sub_1B7CFE420();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7C107FC(&qword_1EBA52970, &qword_1B7D0DB30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_1B7CFDD50();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C107FC(&qword_1EBA52980, &unk_1B7D0DB40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7D0A7B0;
  v17 = *a1;
  *(inited + 32) = *a1;
  v18 = v17;
  sub_1B7C72F40(inited);
  swift_setDeallocating();
  sub_1B7C73134(inited + 32);
  sub_1B7CFDF00();

  (*(v13 + 56))(v11, 0, 1, v12);
  v19 = (*(v13 + 32))(v15, v11, v12);
  v20 = a2(v19);
  LOBYTE(a1) = v21;
  (*(v13 + 8))(v15, v12);
  if (a1)
  {
    v22 = sub_1B7CFDFC0();
    v24 = v23;
    sub_1B7CFDFC0();
    LOBYTE(v41) = 0;
    v25 = [objc_opt_self() defaultManager];
    v26 = sub_1B7CFEA30();

    v27 = [v25 fileExistsAtPath:v26 isDirectory:&v41];

    if (v27 && (v41 & 1) == 0)
    {
      v35 = v37(v22, v24);

      return v35;
    }

    else
    {
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_1B7CFF210();

      v41 = 0xD000000000000012;
      v42 = 0x80000001B7D51090;
      sub_1B7C731F8();
      v28 = sub_1B7CFF8D0();
      MEMORY[0x1B8CADCA0](v28);

      sub_1B7CFE410();

      v29 = sub_1B7CFE400();
      v30 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v41 = v32;
        *v31 = 136315138;
        v33 = sub_1B7AED1B8(v22, v24, &v41);

        *(v31 + 4) = v33;
        _os_log_impl(&dword_1B7AD5000, v29, v30, v38, v31, 0xCu);
        sub_1B7AE9168(v32);
        MEMORY[0x1B8CB0E70](v32, -1, -1);
        MEMORY[0x1B8CB0E70](v31, -1, -1);
      }

      else
      {
      }

      (*(v39 + 8))(v8, v40);
      return 0;
    }
  }

  else
  {
    if (v20 < 0)
    {
      __break(1u);
    }

    return v20;
  }
}

uint64_t URL.isPurgeable.getter()
{
  v0 = sub_1B7C107FC(&qword_1EBA52970, &qword_1B7D0DB30);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_1B7CFDD50();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C107FC(&qword_1EBA52980, &unk_1B7D0DB40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7D0A7B0;
  v8 = *MEMORY[0x1E695DBA8];
  *(inited + 32) = *MEMORY[0x1E695DBA8];
  v9 = v8;
  sub_1B7C72F40(inited);
  swift_setDeallocating();
  sub_1B7C73134(inited + 32);
  sub_1B7CFDF00();

  (*(v4 + 56))(v2, 0, 1, v3);
  (*(v4 + 32))(v6, v2, v3);
  v10 = sub_1B7CFDD40();
  (*(v4 + 8))(v6, v3);
  result = v10;
  if (v10 == 2)
  {
    v12 = sub_1B7CFDFC0();
    v14 = sub_1B7C73368(v12, v13);
    v16 = v15;

    if (v16)
    {
      return 2;
    }

    else
    {
      return v14 && (IM_APFS_PURGEABLE_IGNORE_ME() & v14) == 0;
    }
  }

  return result;
}

char *URL.apfsFlags.getter()
{
  v0 = sub_1B7CFDFC0();
  v2 = sub_1B7C73368(v0, v1);

  return v2;
}

uint64_t URL.apfsFlagsDescription.getter()
{
  v0 = sub_1B7CFDFC0();
  v2 = sub_1B7C73368(v0, v1);
  v4 = v3;

  if (v4)
  {
    return 0x6E776F6E6B6E55;
  }

  v6 = [objc_opt_self() stringForPurgableFlags_];
  v7 = sub_1B7CFEA60();

  return v7;
}

__n128 sub_1B7C72E68()
{
  type metadata accessor for SqlOperation();
  v0 = swift_allocObject();
  IMDSqlOperationInitWithSharedCSDBDatabase(v6);
  v1 = v6[9];
  *(v0 + 144) = v6[8];
  *(v0 + 160) = v1;
  *(v0 + 176) = v6[10];
  v2 = v6[5];
  *(v0 + 80) = v6[4];
  *(v0 + 96) = v2;
  v3 = v6[7];
  *(v0 + 112) = v6[6];
  *(v0 + 128) = v3;
  v4 = v6[1];
  *(v0 + 16) = v6[0];
  *(v0 + 32) = v4;
  result = v6[3];
  *(v0 + 48) = v6[2];
  *(v0 + 64) = result;
  off_1EBA52D08 = v0;
  return result;
}

double static SqlOperation.shared.getter()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_1B7C72F40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(qword_1EBA52D28, &qword_1B7D0EF38);
    v3 = sub_1B7CFF1C0();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    v6 = v1;
    do
    {
      v7 = *(v25 + 8 * v4);
      sub_1B7CFEA60();
      sub_1B7CFF7C0();
      v26 = v7;
      sub_1B7CFEB10();
      v8 = sub_1B7CFF800();

      v9 = -1 << *(v3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_15;
      }

      v14 = ~v9;
      do
      {
        v15 = sub_1B7CFEA60();
        v17 = v16;
        if (v15 == sub_1B7CFEA60() && v17 == v18)
        {

LABEL_4:
          v6 = v24;
          goto LABEL_5;
        }

        v20 = sub_1B7CFF590();

        if (v20)
        {

          goto LABEL_4;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v5 + 8 * (v10 >> 6));
        v13 = 1 << v10;
      }

      while (((1 << v10) & v12) != 0);
      v6 = v24;
LABEL_15:
      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v23;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

uint64_t sub_1B7C73134(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7C73190(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA52970, &qword_1B7D0DB30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B7C731F8()
{
  result = qword_1EBA52D10;
  if (!qword_1EBA52D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA52D10);
  }

  return result;
}

uint64_t sub_1B7C73244(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  LOBYTE(v8) = 0;
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_1B7CFEA30();
  v4 = [v2 fileExistsAtPath:v3 isDirectory:&v8];

  if (v4 && (v8 = *MEMORY[0x1E69A6F48], v5 = sub_1B7CFEA30(), v6 = IMFileSizeForItemAtPath(), v5, v6))
  {
    return *(&v8 + 1);
  }

  else
  {
    return 0;
  }
}

char *sub_1B7C73368(uint64_t a1, unint64_t a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B7CFE420();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v24) = 0;
  v8 = [objc_opt_self() defaultManager];
  v9 = sub_1B7CFEA30();
  v10 = [v8 fileExistsAtPath:v9 isDirectory:&v24];

  if (v10 && (v24 & 1) == 0)
  {
    HIDWORD(v23) = 0;
    v11 = objc_opt_self();
    v12 = sub_1B7CFEA30();
    v13 = [v11 purgableFlagsForPath:v12 error:&v23 + 4];

    if (!HIDWORD(v23))
    {
      return v13;
    }

    v24 = 0;
    v25 = 0xE000000000000000;
    sub_1B7CFF210();

    v24 = 0xD000000000000012;
    v25 = 0x80000001B7D51090;
    sub_1B7C731F8();
    v14 = sub_1B7CFF8D0();
    MEMORY[0x1B8CADCA0](v14);

    sub_1B7CFE410();

    v15 = sub_1B7CFE400();
    v16 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26[0] = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_1B7AED1B8(a1, a2, v26);
      *(v17 + 12) = 2080;
      swift_beginAccess();
      result = strerror(SHIDWORD(v23));
      if (!result)
      {
        __break(1u);
        return result;
      }

      v20 = sub_1B7CFEB70();
      v22 = sub_1B7AED1B8(v20, v21, v26);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_1B7AD5000, v15, v16, "Unable to get purgeable flags for %s: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB0E70](v18, -1, -1);
      MEMORY[0x1B8CB0E70](v17, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  return 0;
}

uint64_t sub_1B7C736D8(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  LOBYTE(v8) = 0;
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_1B7CFEA30();
  v4 = [v2 fileExistsAtPath:v3 isDirectory:&v8];

  if (v4 && (v8 = *MEMORY[0x1E69A6F48], v5 = sub_1B7CFEA30(), v6 = IMFileSizeForItemAtPath(), v5, v6))
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7C737FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1B7C73844()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D513A0);
  MEMORY[0x1B8CADCA0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1B8CADCA0](0xD000000000000026, 0x80000001B7D55C80);
  SqlOperation.execute(_:_:)(0, 0xE000000000000000, 0, 0);

  return result;
}

double sub_1B7C73950()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();

  strcpy(v2, "INSERT INTO ");
  BYTE5(v2[1]) = 0;
  HIWORD(v2[1]) = -5120;
  MEMORY[0x1B8CADCA0](v0[2], v0[3]);
  MEMORY[0x1B8CADCA0](0xD00000000000001DLL, 0x80000001B7D55C60);
  MEMORY[0x1B8CADCA0](v0[4], v0[5]);
  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  SqlOperation.execute(_:_:)(v2[0], v2[1], 0, 0);

  return result;
}

uint64_t sub_1B7C73A90(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 a5)
{
  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {

    MEMORY[0x1B8CADCA0](95, 0xE100000000000000);
    v9 = a3;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0xEC0000006E6F6974;
  v11 = 0x6163696669726576;
  if (a5 > 2u)
  {

    goto LABEL_17;
  }

  v12 = sub_1B7CFF590();

  if (v12)
  {
LABEL_17:

    v14 = a1;
    v13 = a2;
    goto LABEL_18;
  }

  if (a5)
  {
    if (a5 == 1)
    {
      v11 = 0x64656E616870726FLL;
    }

    else
    {
      v11 = 0x7974696C697475;
    }

    if (a5 == 1)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xE700000000000000;
    }
  }

  MEMORY[0x1B8CADCA0](v11, v10);

  v14 = 95;
  v13 = 0xE100000000000000;
LABEL_18:
  if (sub_1B7CFEBF0())
  {
  }

  else
  {
    MEMORY[0x1B8CADCA0](a1, a2);
    MEMORY[0x1B8CADCA0](v14, v13);

    return v9;
  }

  return a1;
}

uint64_t sub_1B7C73C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7C73CE4(uint64_t *a1, int a2)
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

uint64_t sub_1B7C73D2C(uint64_t result, int a2, int a3)
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

uint64_t sub_1B7C73D84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006E6F6974;
  v3 = 0x6163696669726576;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7974696C697475;
    }

    else
    {
      v5 = 1919251317;
    }

    if (v4 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x64656E616870726FLL;
    }

    else
    {
      v5 = 0x6163696669726576;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEC0000006E6F6974;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x7974696C697475;
  if (a2 != 2)
  {
    v8 = 1919251317;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v3 = 0x64656E616870726FLL;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B7CFF590();
  }

  return v11 & 1;
}

uint64_t sub_1B7C73EBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D614E656C626174;
  v4 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v7 = 0x64656E616870726FLL;
      v8 = 0xED0000746E756F43;
    }

    else
    {
      if (a1 == 4)
      {
        v7 = 0xD00000000000001CLL;
      }

      else
      {
        v7 = 0xD000000000000012;
      }

      if (v4 == 4)
      {
        v8 = 0x80000001B7D4E310;
      }

      else
      {
        v8 = 0x80000001B7D4E330;
      }
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x746E756F43776F72;
    if (a1 != 1)
    {
      v6 = 0x6465746E65726170;
      v5 = 0xED0000746E756F43;
    }

    if (a1)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x6D614E656C626174;
    }

    if (v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0xE900000000000065;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v9 = 0x6E616870726FLL;
      goto LABEL_34;
    }

    if (a2 == 4)
    {
      v3 = 0xD00000000000001CLL;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (a2 == 4)
    {
      v2 = 0x80000001B7D4E310;
    }

    else
    {
      v2 = 0x80000001B7D4E330;
    }

LABEL_30:
    if (v7 != v3)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  if (a2 == 1)
  {
    v2 = 0xE800000000000000;
    if (v7 != 0x746E756F43776F72)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v9 = 0x746E65726170;
LABEL_34:
  v2 = 0xED0000746E756F43;
  if (v7 != (v9 & 0xFFFFFFFFFFFFLL | 0x6465000000000000))
  {
LABEL_37:
    v10 = sub_1B7CFF590();
    goto LABEL_38;
  }

LABEL_35:
  if (v8 != v2)
  {
    goto LABEL_37;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

double sub_1B7C740BC()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();

  MEMORY[0x1B8CADCA0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  SqlOperation.execute(_:_:)(0xD000000000000015, 0x80000001B7D54D80, 0, 0);

  return result;
}

uint64_t sub_1B7C741A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  MEMORY[0x1B8CADCA0](95, 0xE100000000000000);
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v4 = sub_1B7CFEA10();
  MEMORY[0x1B8CADCA0](v4);

  MEMORY[0x1B8CADCA0](0x7865646E695FLL, 0xE600000000000000);
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();

  MEMORY[0x1B8CADCA0](v2, v3);
  MEMORY[0x1B8CADCA0](542002976, 0xE400000000000000);
  MEMORY[0x1B8CADCA0](v2, v3);
  MEMORY[0x1B8CADCA0](40, 0xE100000000000000);
  v5 = sub_1B7CFEA10();
  MEMORY[0x1B8CADCA0](v5);

  MEMORY[0x1B8CADCA0](15145, 0xE200000000000000);
  SqlOperation.execute(_:_:)(0xD00000000000001BLL, 0x80000001B7D55D40, 0, 0);
  if (v13)
  {
  }

  else
  {

    swift_beginAccess();
    v6 = *(v12 + 56);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + 56) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1B7AF182C(0, *(v6 + 2) + 1, 1, v6);
      *(v12 + 56) = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_1B7AF182C((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v10 = &v6[16 * v9];
    *(v10 + 4) = v2;
    *(v10 + 5) = v3;
    *(v12 + 56) = v6;
    swift_endAccess();
  }

  return v2;
}

uint64_t sub_1B7C74460(uint64_t a1)
{
  result = sub_1B7C74690(a1);
  if (!v2)
  {
    if (*(result + 16))
    {
      v4 = result;
      if (qword_1EBA515F0 != -1)
      {
        swift_once();
      }

      sub_1B7CFF210();

      strcpy(v11, "DELETE FROM ");
      BYTE5(v11[1]) = 0;
      HIWORD(v11[1]) = -5120;
      MEMORY[0x1B8CADCA0](*(v1 + 16), *(v1 + 24));
      MEMORY[0x1B8CADCA0](0xD000000000000011, 0x80000001B7D55D20);
      sub_1B7AF7F10(0x3F, 0xE100000000000000, *(v4 + 16));
      sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
      sub_1B7AF7FAC();
      v5 = sub_1B7CFEA10();
      v7 = v6;

      MEMORY[0x1B8CADCA0](v5, v7);

      MEMORY[0x1B8CADCA0](2112297, 0xE300000000000000);
      v8 = v11[0];
      v9 = v11[1];
      v10 = swift_allocObject();
      *(v10 + 16) = v4;

      SqlOperation.execute(_:_:)(v8, v9, sub_1B7C755B0, v10);

      return v4;
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1B7C74690(uint64_t a1)
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();

  MEMORY[0x1B8CADCA0](*(v1 + 16), *(v1 + 24));
  MEMORY[0x1B8CADCA0](0xD000000000000011, 0x80000001B7D55D20);
  sub_1B7AF7F10(0x3F, 0xE100000000000000, *(a1 + 16));
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v4 = sub_1B7CFEA10();
  v6 = v5;

  MEMORY[0x1B8CADCA0](v4, v6);

  MEMORY[0x1B8CADCA0](2112297, 0xE300000000000000);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;

  v8 = sub_1B7CD7370(0xD000000000000012, 0x80000001B7D51810, sub_1B7C75598, v7);

  if (!v2)
  {
    if (!v8)
    {
      return MEMORY[0x1E69E7CC0];
    }

    if (!*(v8 + 16))
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v8;
}

uint64_t sub_1B7C74894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B7C74AEC(a1, a2, a3);
  if (!v4)
  {
    if (*(result + 16))
    {
      v8 = result;
      if (qword_1EBA515F0 != -1)
      {
        swift_once();
      }

      sub_1B7CFF210();

      strcpy(v15, "DELETE FROM ");
      BYTE5(v15[1]) = 0;
      HIWORD(v15[1]) = -5120;
      MEMORY[0x1B8CADCA0](*(v3 + 16), *(v3 + 24));
      MEMORY[0x1B8CADCA0](0x20455245485720, 0xE700000000000000);
      MEMORY[0x1B8CADCA0](a2, a3);
      MEMORY[0x1B8CADCA0](0x28204E4920, 0xE500000000000000);
      sub_1B7AF7F10(0x3F, 0xE100000000000000, *(v8 + 16));
      sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
      sub_1B7AF7FAC();
      v9 = sub_1B7CFEA10();
      v11 = v10;

      MEMORY[0x1B8CADCA0](v9, v11);

      MEMORY[0x1B8CADCA0](15145, 0xE200000000000000);
      v12 = v15[0];
      v13 = v15[1];
      v14 = swift_allocObject();
      *(v14 + 16) = v8;

      SqlOperation.execute(_:_:)(v12, v13, sub_1B7C75520, v14);

      return v8;
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1B7C74AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();

  MEMORY[0x1B8CADCA0](a2, a3);
  MEMORY[0x1B8CADCA0](0x204D4F524620, 0xE600000000000000);
  MEMORY[0x1B8CADCA0](*(v3 + 16), *(v3 + 24));
  MEMORY[0x1B8CADCA0](0x20455245485720, 0xE700000000000000);
  MEMORY[0x1B8CADCA0](a2, a3);
  MEMORY[0x1B8CADCA0](0x28204E4920, 0xE500000000000000);
  sub_1B7AF7F10(0x3F, 0xE100000000000000, *(a1 + 16));
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v8 = sub_1B7CFEA10();
  v10 = v9;

  MEMORY[0x1B8CADCA0](v8, v10);

  MEMORY[0x1B8CADCA0](2112297, 0xE300000000000000);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;

  v12 = sub_1B7CD7370(0x205443454C4553, 0xE700000000000000, sub_1B7C75508, v11);

  if (!v4)
  {
    if (!v12)
    {
      return MEMORY[0x1E69E7CC0];
    }

    if (!*(v12 + 16))
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v12;
}

uint64_t sub_1B7C74D3C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(v3 + 56) = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  v5 = qword_1EBA515F8;

  if (v5 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  MEMORY[0x1B8CADDF0](v6);
  if (*((qword_1EBA52DB0 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_1EBA52DB0 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B7CFED00();
  }

  sub_1B7CFED40();
  swift_endAccess();
  return v4;
}

uint64_t sub_1B7C74E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  if (qword_1EBA515F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  MEMORY[0x1B8CADDF0](v6);
  if (*((qword_1EBA52DB0 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_1EBA52DB0 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B7CFED00();
  }

  sub_1B7CFED40();
  swift_endAccess();
  return v5;
}

uint64_t sub_1B7C74F70()
{
  sub_1B7CFF7C0();
  sub_1B7CFEB10();

  return sub_1B7CFF800();
}

double sub_1B7C75034(uint64_t a1)
{
  sub_1B7CFEB10();

  return result;
}

uint64_t sub_1B7C750E4(uint64_t a1)
{
  sub_1B7CFF7C0();
  sub_1B7CFEB10();

  return sub_1B7CFF800();
}

unint64_t sub_1B7C751A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B7C754BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B7C751D4(uint64_t *a1@<X8>)
{
  v2 = 0xEC0000006E6F6974;
  v3 = 0x6163696669726576;
  v4 = 0xE700000000000000;
  v5 = 0x7974696C697475;
  if (*v1 != 2)
  {
    v5 = 1919251317;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x64656E616870726FLL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1B7C75258()
{
  result = qword_1EBA52DB8;
  if (!qword_1EBA52DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52DB8);
  }

  return result;
}

double sub_1B7C752AC()
{
  if (qword_1EBA515F8 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    swift_beginAccess();
    v0 = qword_1EBA52DB0;
    v1 = qword_1EBA52DB0 >> 62 ? sub_1B7CFF120() : *((qword_1EBA52DB0 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v1)
    {
      break;
    }

    v2 = 0;
    while ((v0 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1B8CAE380](v2, v0);
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_17;
      }

LABEL_10:
      if (qword_1EBA515F0 != -1)
      {
        swift_once();
      }

      sub_1B7CFF210();

      MEMORY[0x1B8CADCA0](*(v3 + 16), *(v3 + 24));
      MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
      SqlOperation.execute(_:_:)(0xD000000000000015, 0x80000001B7D54D80, 0, 0);

      ++v2;
      if (v4 == v1)
      {
        goto LABEL_16;
      }
    }

    if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v3 = *(v0 + 8 * v2 + 32);

    v4 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

LABEL_16:

  return result;
}

unint64_t sub_1B7C754BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B7CFF3B0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void sub_1B7C7554C(sqlite3_int64 *a1@<X8>)
{
  SqlOperation.bind(_:)(v1[2]);
  if (!v3)
  {
    *a1 = _s14IMDPersistence12SqlOperationC7uint64s14forColumnIndexSays6UInt64VGSi_tF_0();
  }
}

id StorageInspectorReport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B7C75764(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

double sub_1B7C757D4(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1B7C75824(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_1B7C758D8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1B7C487D8(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_reportDirectoryURL;
  swift_beginAccess();
  sub_1B7C4FB78(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1B7C75998@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_reportDirectoryURL;
  swift_beginAccess();
  return sub_1B7C487D8(v1 + v3, a1);
}

uint64_t sub_1B7C759F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_reportDirectoryURL;
  swift_beginAccess();
  sub_1B7C4FB78(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1B7C75B18()
{
  swift_getObjectType();
  v5 = sub_1B7CFF8D0();
  MEMORY[0x1B8CADCA0](663610, 0xE300000000000000);
  type metadata accessor for StorageInspectorReportStringBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  *(inited + 24) = 0;
  StorageInspectorReport.formatReport(with:)(inited);
  swift_beginAccess();
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v1 = sub_1B7CFEA10();
  v3 = v2;

  MEMORY[0x1B8CADCA0](v1, v3);

  return v5;
}

uint64_t sub_1B7C75C18()
{
  type metadata accessor for StorageInspectorReportStringBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v1 = inited + 16;
  *(inited + 24) = 0;
  StorageInspectorReport.formatReport(with:)(inited);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1B7C75C7C()
{
  type metadata accessor for StorageInspectorReportStringBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  *(inited + 24) = 0;
  StorageInspectorReport.formatReport(with:)(inited);
  swift_beginAccess();
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v1 = sub_1B7CFEA10();

  return v1;
}

id StorageInspectorReport.init()()
{
  *&v0[OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_databaseInspectionReport] = 0;
  *&v0[OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_attachmentStorageInspectorReport] = 0;
  *&v0[OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_exportableDatabaseRecordCountReport] = 0;
  *&v0[OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_crossCheckReport] = 0;
  v1 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_reportDirectoryURL;
  v2 = sub_1B7CFDFF0();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for StorageInspectorReport(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

unint64_t sub_1B7C75EAC()
{
  v1 = *v0;
  v2 = 0xD000000000000023;
  v3 = 0xD000000000000012;
  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000020;
  if (!*v0)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B7C75F3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7C77998(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7C75F70(uint64_t a1)
{
  v2 = sub_1B7C76EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C75FAC(uint64_t a1)
{
  v2 = sub_1B7C76EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id StorageInspectorReport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StorageInspectorReport(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B7C7609C(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_1B7C107FC(&qword_1EBA52DE0, &qword_1B7D0F0D0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C76EB8();
  sub_1B7CFF830();
  v12 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_databaseInspectionReport;
  swift_beginAccess();
  v22 = *(v3 + v12);
  LOBYTE(v21) = 0;
  type metadata accessor for DatabaseInspectionReport();
  sub_1B7C77334(&qword_1EBA52DF0, type metadata accessor for DatabaseInspectionReport, &protocol conformance descriptor for StorageInspectionCountReport);
  sub_1B7CFF4C0();
  if (!v2)
  {
    v13 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_attachmentStorageInspectorReport;
    swift_beginAccess();
    v21 = *(v3 + v13);
    LOBYTE(v20) = 1;
    type metadata accessor for AttachmentStorageInspectorReport();
    sub_1B7C77334(&qword_1EBA52DF8, type metadata accessor for AttachmentStorageInspectorReport, &protocol conformance descriptor for StorageInspectionCountReport);
    sub_1B7CFF4C0();
    v14 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_exportableDatabaseRecordCountReport;
    swift_beginAccess();
    v20 = *(v3 + v14);
    LOBYTE(v19) = 2;
    type metadata accessor for ExportableDatabaseRecordCountReport();
    sub_1B7C77334(&qword_1EBA52E00, type metadata accessor for ExportableDatabaseRecordCountReport, &protocol conformance descriptor for StorageInspectionCountReport);
    sub_1B7CFF4C0();
    v15 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_crossCheckReport;
    swift_beginAccess();
    v19 = *(v3 + v15);
    v23 = 3;
    type metadata accessor for StorageInspectorCrossCheckReport();
    sub_1B7C77334(&qword_1EBA52E08, type metadata accessor for StorageInspectorCrossCheckReport, &protocol conformance descriptor for StorageInspectorCrossCheckReport);
    sub_1B7CFF4C0();
    v16 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_reportDirectoryURL;
    swift_beginAccess();
    sub_1B7C487D8(v3 + v16, v7);
    v23 = 4;
    sub_1B7CFDFF0();
    sub_1B7C77334(&qword_1EBA52AB8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1B7CFF4C0();
    sub_1B7C4FB10(v7);
  }

  return (*(v9 + 8))(v11, v8);
}

char *StorageInspectorReport.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v32 = sub_1B7C107FC(&qword_1EBA52E10, &qword_1B7D0F0D8);
  v31 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v29 - v8;
  v45 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_databaseInspectionReport;
  *&v1[OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_databaseInspectionReport] = 0;
  v35 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_attachmentStorageInspectorReport;
  *&v1[OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_attachmentStorageInspectorReport] = 0;
  v34 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_exportableDatabaseRecordCountReport;
  *&v1[OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_exportableDatabaseRecordCountReport] = 0;
  v37 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_crossCheckReport;
  *&v1[OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_crossCheckReport] = 0;
  v10 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_reportDirectoryURL;
  v11 = sub_1B7CFDFF0();
  v12 = *(*(v11 - 8) + 56);
  v38 = v10;
  v12(&v3[v10], 1, 1, v11);
  v13 = a1[3];
  v36 = a1;
  sub_1B7AE9124(a1, v13);
  sub_1B7C76EB8();
  v33 = v9;
  sub_1B7CFF820();
  if (v2)
  {
    sub_1B7AE9168(v36);

    sub_1B7C4FB10(&v3[v38]);
    type metadata accessor for StorageInspectorReport(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = v11;
    v30 = v7;
    v14 = v31;
    type metadata accessor for DatabaseInspectionReport();
    v44 = 0;
    sub_1B7C77334(&qword_1EBA52E18, type metadata accessor for DatabaseInspectionReport, &protocol conformance descriptor for StorageInspectionCountReport);
    v15 = v32;
    sub_1B7CFF400();
    v17 = v43;
    v18 = v45;
    swift_beginAccess();
    *&v3[v18] = v17;

    type metadata accessor for AttachmentStorageInspectorReport();
    LOBYTE(v43) = 1;
    sub_1B7C77334(&qword_1EBA52E20, type metadata accessor for AttachmentStorageInspectorReport, &protocol conformance descriptor for StorageInspectionCountReport);
    sub_1B7CFF400();
    v19 = v14;
    v20 = v34;
    v21 = v42;
    v22 = v35;
    swift_beginAccess();
    *&v3[v22] = v21;

    type metadata accessor for ExportableDatabaseRecordCountReport();
    LOBYTE(v42) = 2;
    sub_1B7C77334(&qword_1EBA52E28, type metadata accessor for ExportableDatabaseRecordCountReport, &protocol conformance descriptor for StorageInspectionCountReport);
    sub_1B7CFF400();
    v23 = v37;
    v24 = v41;
    swift_beginAccess();
    *&v3[v20] = v24;

    type metadata accessor for StorageInspectorCrossCheckReport();
    LOBYTE(v41) = 3;
    sub_1B7C77334(&qword_1EBA52E30, type metadata accessor for StorageInspectorCrossCheckReport, &protocol conformance descriptor for StorageInspectorCrossCheckReport);
    sub_1B7CFF400();
    v25 = v40;
    swift_beginAccess();
    *&v3[v23] = v25;

    LOBYTE(v40) = 4;
    sub_1B7C77334(&qword_1EBA52A78, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v26 = v30;
    sub_1B7CFF400();
    v27 = v38;
    swift_beginAccess();
    sub_1B7C4FB78(v26, &v3[v27]);
    swift_endAccess();
    v28 = type metadata accessor for StorageInspectorReport(0);
    v39.receiver = v3;
    v39.super_class = v28;
    v3 = objc_msgSendSuper2(&v39, sel_init);
    (*(v19 + 8))(v33, v15);
    sub_1B7AE9168(v36);
  }

  return v3;
}

char *sub_1B7C76BC4@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for StorageInspectorReport(0));
  result = StorageInspectorReport.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t StorageInspectorReport.formatReport(with:)(uint64_t a1)
{
  v2 = v1;
  result = sub_1B7C219E4(0xD00000000000001DLL, 0x80000001B7D55D60);
  v5 = *(a1 + 24);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 24) = v7;
    v8 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_databaseInspectionReport;
    swift_beginAccess();
    if (*(v2 + v8))
    {

      sub_1B7C8B7B8(a1);
    }

    v9 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_attachmentStorageInspectorReport;
    swift_beginAccess();
    if (*(v2 + v9))
    {
      swift_beginAccess();
      v10 = *(*(a1 + 16) + 16);

      if (v10)
      {
        sub_1B7C219E4(0, 0xE000000000000000);
      }

      sub_1B7CA78C8(a1);
    }

    v11 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_exportableDatabaseRecordCountReport;
    swift_beginAccess();
    if (*(v2 + v11))
    {
      swift_beginAccess();
      v12 = *(*(a1 + 16) + 16);

      if (v12)
      {
        sub_1B7C219E4(0, 0xE000000000000000);
      }

      sub_1B7C4FC80(a1);
    }

    v13 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_crossCheckReport;
    result = swift_beginAccess();
    if (*(v2 + v13))
    {
      swift_beginAccess();
      v14 = *(*(a1 + 16) + 16);

      if (v14)
      {
        sub_1B7C219E4(0, 0xE000000000000000);
      }

      StorageInspectorCrossCheckReport.formatReport(with:)(a1);
    }

    v15 = *(a1 + 24);
    v6 = __OFSUB__(v15, 1);
    v16 = v15 - 1;
    if (!v6)
    {
      *(a1 + 24) = v16;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for StorageInspectorReport(uint64_t a1)
{
  result = qword_1EBA52E48;
  if (!qword_1EBA52E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B7C76EB8()
{
  result = qword_1EBA52DE8;
  if (!qword_1EBA52DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52DE8);
  }

  return result;
}

uint64_t StorageInspectorReport.encodeToData()()
{
  sub_1B7CFDC10();
  swift_allocObject();
  sub_1B7CFDC00();
  type metadata accessor for StorageInspectorReport(0);
  sub_1B7C77334(&qword_1EBA52E38, type metadata accessor for StorageInspectorReport, &protocol conformance descriptor for StorageInspectorReport);
  v0 = sub_1B7CFDBF0();

  return v0;
}

uint64_t static StorageInspectorReport.create(fromData:)(uint64_t a1, uint64_t a2)
{
  sub_1B7CFDBE0();
  swift_allocObject();
  sub_1B7CFDBD0();
  type metadata accessor for StorageInspectorReport(0);
  sub_1B7C77334(&qword_1EBA52E40, type metadata accessor for StorageInspectorReport, &protocol conformance descriptor for StorageInspectorReport);
  sub_1B7CFDBC0();

  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1B7C77334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1B7C7737C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);

  return result;
}

void sub_1B7C773DC(uint64_t a1)
{
  sub_1B7C4954C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B7C77894()
{
  result = qword_1EBA52E58;
  if (!qword_1EBA52E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52E58);
  }

  return result;
}

unint64_t sub_1B7C778EC()
{
  result = qword_1EBA52E60;
  if (!qword_1EBA52E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52E60);
  }

  return result;
}

unint64_t sub_1B7C77944()
{
  result = qword_1EBA52E68;
  if (!qword_1EBA52E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52E68);
  }

  return result;
}

uint64_t sub_1B7C77998(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x80000001B7D55DB0 == a2;
  if (v3 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001B7D55DD0 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001B7D55E00 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7D55E30 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7D55E50 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B7CFF590();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_1B7C77B4C()
{
  v2 = v1;
  v3 = v0;
  v4 = 0xD000000000000011;
  v5 = *(v0 + 64);
  v6 = *(v5 + 16);
  v21 = v5;
  if (v6)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v6, 0);
    v7 = (v5 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      sub_1B7CFF210();

      MEMORY[0x1B8CADCA0](0xD000000000000011, 0x80000001B7D55EC0);

      v11 = *(v22 + 16);
      v10 = *(v22 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1B7AECEEC((v10 > 1), v11 + 1, 1);
      }

      *(v22 + 16) = v11 + 1;
      v12 = v22 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v7 += 2;
      --v6;
    }

    while (v6);
    v2 = v1;
    v3 = v0;
    v4 = 0xD000000000000011;
  }

  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v13 = sub_1B7CFEA10();
  v15 = v14;

  if (qword_1EBA515F0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    sub_1B7CFF210();

    MEMORY[0x1B8CADCA0](*(v3 + 16), *(v3 + 24));
    MEMORY[0x1B8CADCA0](10272, 0xE200000000000000);
    MEMORY[0x1B8CADCA0](v13, v15);

    MEMORY[0x1B8CADCA0](15145, 0xE200000000000000);
    SqlOperation.execute(_:_:)(v4 + 10, 0x80000001B7D513A0, 0, 0);

    if (v2)
    {
      break;
    }

    v16 = v21;
    v4 = *(v21 + 16);
    if (!v4)
    {
      break;
    }

    v17 = 0;
    v2 = (v21 + 40);
    v15 = qword_1B7D0A720;
    while (v17 < *(v16 + 16))
    {
      v18 = v3;
      v19 = *(v2 - 1);
      v20 = *v2;
      sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1B7D0A7B0;
      *(v13 + 32) = v19;
      *(v13 + 40) = v20;
      v3 = v18;

      sub_1B7C741A8(v13);

      ++v17;

      v2 += 2;
      v16 = v21;
      if (v4 == v17)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }
}

double sub_1B7C77E80()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();

  strcpy(v9, "INSERT INTO ");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  MEMORY[0x1B8CADCA0](v0[2], v0[3]);
  MEMORY[0x1B8CADCA0](10272, 0xE200000000000000);
  v1 = v0[8];

  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v2 = sub_1B7CFEA10();
  v4 = v3;

  MEMORY[0x1B8CADCA0](v2, v4);

  MEMORY[0x1B8CADCA0](0x5443454C45532029, 0xE900000000000020);
  v9[3] = v1;

  v5 = sub_1B7CFEA10();
  v7 = v6;

  MEMORY[0x1B8CADCA0](v5, v7);

  MEMORY[0x1B8CADCA0](0x204D4F524620, 0xE600000000000000);
  MEMORY[0x1B8CADCA0](v0[4], v0[5]);
  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  SqlOperation.execute(_:_:)(v9[0], v9[1], 0, 0);

  return result;
}

uint64_t sub_1B7C780A0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C78114@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7CFE770();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B7C78220()
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7C78324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7CFE790();
}

uint64_t sub_1B7C783E4@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7C7B724();
  sub_1B7CFE770();

  *a3 = v5;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_1B7C784F8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C785D0(uint64_t a1)
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7C7B724();
  sub_1B7CFE770();

  return v1;
}

uint64_t sub_1B7C786D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7C7B6A8();
  sub_1B7CFE790();
}

uint64_t sub_1B7C78790(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1D0();
}

double sub_1B7C78864@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7C2DD10(&qword_1EBA52418, sub_1B7C2DD88, MEMORY[0x1E69E7C88]);
  sub_1B7CFE770();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1B7C789A4()
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7C2DD10(&qword_1EBA52418, sub_1B7C2DD88, MEMORY[0x1E69E7C88]);
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7C78ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7C2DD10(&qword_1EBA52400, sub_1B7C2DCBC, MEMORY[0x1E69E7C70]);
  sub_1B7CFE790();
}

double sub_1B7C78BC4@<D0>(void *a1@<X0>, _OWORD *a3@<X8>)
{
  *&v5 = *a1;
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7C7B3F4();
  sub_1B7CFE770();

  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t sub_1B7C78CDC(uint64_t a1)
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7C7B3F4();
  sub_1B7CFE770();

  return v1;
}

uint64_t sub_1B7C78DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7C7B378();
  sub_1B7CFE790();
}

uint64_t sub_1B7C78EF0@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7C7B604();
  sub_1B7CFE770();

  *a2 = v4;
  return result;
}

uint64_t sub_1B7C79000(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C790D0()
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7C7B604();
  sub_1B7CFE770();

  return v1;
}

uint64_t sub_1B7C791D8(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7C7B588();
  sub_1B7CFE790();
}

uint64_t sub_1B7C792BC@<X0>(uint64_t *a1@<X0>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7CFE770();

  *a4 = v6;
  return result;
}

uint64_t sub_1B7C793CC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C794A4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7CFE770();

  return v2;
}

uint64_t sub_1B7C795A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7CFE790();
}

uint64_t sub_1B7C7965C@<X0>(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7CFE770();

  *a3 = v5;
  return result;
}

uint64_t sub_1B7C79764(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C79838(uint64_t a1)
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord, &unk_1B7D0F444);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7CFE770();

  return v2;
}

uint64_t sub_1B7C79934(uint64_t a1, char a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7CFE790();
}

uint64_t sub_1B7C79A24(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for ChatRecord(0);
  *(v1 + 64) = sub_1B7C107FC(&qword_1EBA52EA0, &unk_1B7D0FA20);
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  *(v1 + 72) = swift_getOpaqueTypeConformance2();
  sub_1B7C1A14C((v1 + 40));
  sub_1B7CFE720();
  *(v1 + 16) = 0x101010101010101;
  sub_1B7AE9124((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 24) = 16843009;
  *(v1 + 28) = 257;
  *(v1 + 30) = 1;
  sub_1B7AE9124((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 31) = 1;
  sub_1B7AE9124((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 32) = 257;
  sub_1B7AE9124((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7CFE1F0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  swift_beginAccess();
  sub_1B7AE9168((v1 + 40));
  sub_1B7AE910C(a1, v1 + 40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B7C79E44()
{
  sub_1B7AE9168((v0 + 40));
  v1 = OBJC_IVAR____TtC14IMDPersistence10ChatRecord___observationRegistrar;
  v2 = sub_1B7CFE200();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C79EF0(uint64_t a1)
{
  result = sub_1B7CFE200();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1B7C79FF8(__int128 *a1)
{
  type metadata accessor for ChatRecord(0);
  v2 = swift_allocObject();
  sub_1B7C79A24(a1);
  return v2;
}

uint64_t sub_1B7C7A084(__int128 *a1)
{
  swift_beginAccess();
  sub_1B7AE9168((v1 + 40));
  sub_1B7AE910C(a1, v1 + 40);
  return swift_endAccess();
}

void (*sub_1B7C7A0DC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1B7AE90A8(v1 + 40, v4);
  return sub_1B7C7A16C;
}

void sub_1B7C7A16C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1B7AE90A8(*a1, v2 + 40);
    swift_beginAccess();
    sub_1B7AE9168((v3 + 40));
    sub_1B7AE910C((v2 + 40), v3 + 40);
    swift_endAccess();
    sub_1B7AE9168(v2);
  }

  else
  {
    swift_beginAccess();
    sub_1B7AE9168((v3 + 40));
    sub_1B7AE910C(v2, v3 + 40);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1B7C7A228()
{
  sub_1B7CFF7C0();
  type metadata accessor for ChatRecord(0);
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7C7A30C(uint64_t a1, uint64_t a2)
{
  sub_1B7CFF7C0();
  swift_getWitnessTable();
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7C7A374()
{
  type metadata accessor for ChatRecord(0);
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  return sub_1B7CFE740();
}

uint64_t sub_1B7C7A3F0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1B7C7A60C(uint64_t a1)
{
  result = sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7C7A664()
{
  sub_1B7C107FC(&qword_1EBA52050, &qword_1B7D0AF40);
  sub_1B7CFE850();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B7D0F300;
  swift_getKeyPath();
  sub_1B7C107FC(&qword_1EBA523D0, &qword_1B7D0BB90);
  sub_1B7CFE910();
  *(swift_allocObject() + 16) = xmmword_1B7D0A7B0;
  sub_1B7CFE900();
  sub_1B7CFE940();
  swift_allocObject();
  sub_1B7CFE950();
  sub_1B7C7B210(&qword_1EDBE3A00, MEMORY[0x1E697BD30], MEMORY[0x1E697BD28]);
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  swift_allocObject();
  sub_1B7CFE950();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  swift_allocObject();
  sub_1B7CFE950();
  sub_1B7CFE840();
  swift_getKeyPath();
  swift_allocObject();
  sub_1B7CFE950();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  return v1;
}

uint64_t sub_1B7C7B210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B7C7B378()
{
  result = qword_1EBA523D8;
  if (!qword_1EBA523D8)
  {
    sub_1B7C1091C(&qword_1EBA51FB0, &unk_1B7D0FA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA523D8);
  }

  return result;
}

unint64_t sub_1B7C7B3F4()
{
  result = qword_1EBA523E0;
  if (!qword_1EBA523E0)
  {
    sub_1B7C1091C(&qword_1EBA51FB0, &unk_1B7D0FA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA523E0);
  }

  return result;
}

unint64_t sub_1B7C7B588()
{
  result = qword_1EBA52E70;
  if (!qword_1EBA52E70)
  {
    sub_1B7C1091C(&qword_1EBA52E78, "̌\a");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52E70);
  }

  return result;
}

unint64_t sub_1B7C7B604()
{
  result = qword_1EBA52E80;
  if (!qword_1EBA52E80)
  {
    sub_1B7C1091C(&qword_1EBA52E78, "̌\a");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52E80);
  }

  return result;
}

unint64_t sub_1B7C7B6A8()
{
  result = qword_1EBA52E88;
  if (!qword_1EBA52E88)
  {
    sub_1B7C1091C(&qword_1EBA52E90, &unk_1B7D0FA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52E88);
  }

  return result;
}

unint64_t sub_1B7C7B724()
{
  result = qword_1EBA52E98;
  if (!qword_1EBA52E98)
  {
    sub_1B7C1091C(&qword_1EBA52E90, &unk_1B7D0FA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52E98);
  }

  return result;
}

uint64_t sub_1B7C7B998(unsigned __int8 a1)
{
  sub_1B7CFF7C0();
  sub_1B7CFEB10();

  return sub_1B7CFF800();
}

unint64_t sub_1B7C7BAE8()
{
  v1 = *(v0 + 16);
  if (v1 > 4)
  {
    v6 = 0xD000000000000017;
    v7 = 0xD00000000000001DLL;
    if (v1 == 8)
    {
      v7 = 0xD000000000000010;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    if (v1 != 5)
    {
      v8 = 0xD000000000000010;
    }

    if (*(v0 + 16) <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0x6567617373656DLL;
    v4 = 0x656D686361747461;
    if (v1 != 3)
    {
      v4 = 0x656C646E6168;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*(v0 + 16))
    {
      v2 = 1952540771;
    }

    if (*(v0 + 16) <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1B7C7BC30()
{
  swift_beginAccess();
  v1 = v0[3];
  result = swift_beginAccess();
  v3 = v0[4];
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  swift_beginAccess();
  v6 = v0[5];
  result = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

double sub_1B7C7BD04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;

  return result;
}

uint64_t sub_1B7C7BD9C()
{
  result = swift_beginAccess();
  v2 = v0[3];
  if (v2 >= 1)
  {
    result = swift_beginAccess();
    v3 = v0[4];
    v4 = v2 - v3;
    if (__OFSUB__(v2, v3))
    {
      __break(1u);
    }

    else
    {
      result = swift_beginAccess();
      if (!__OFSUB__(v4, v0[5]))
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7C7BE54()
{
  v1 = *v0;
  v2 = 0x79654B656C626174;
  v3 = 0x64656E616870726FLL;
  v4 = 0xD00000000000001CLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E756F43776F72;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B7C7BF08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7C80E54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7C7BF30(uint64_t a1)
{
  v2 = sub_1B7C7C2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C7BF6C(uint64_t a1)
{
  v2 = sub_1B7C7C2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DatabaseTableInspectionReport.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C7C000(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA52EB0, &qword_1B7D0FA40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C7C2A0();
  sub_1B7CFF830();
  v15 = *(v3 + 16);
  v14 = 0;
  sub_1B7C7C2F4();
  sub_1B7CFF500();
  if (!v2)
  {
    swift_beginAccess();
    v14 = 1;
    sub_1B7CFF4F0();
    swift_beginAccess();
    v13 = 2;
    sub_1B7CFF4F0();
    swift_beginAccess();
    v12 = 3;
    sub_1B7CFF4F0();
    swift_beginAccess();
    v11 = *(v3 + 48);
    v10[7] = 4;
    sub_1B7C107FC(&qword_1EBA52EC8, &qword_1B7D0FA48);
    sub_1B7C7C714(&qword_1EBA52ED0, sub_1B7C7C348, MEMORY[0x1E69E6300]);
    sub_1B7CFF500();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B7C7C2A0()
{
  result = qword_1EBA52EB8;
  if (!qword_1EBA52EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52EB8);
  }

  return result;
}

unint64_t sub_1B7C7C2F4()
{
  result = qword_1EBA52EC0;
  if (!qword_1EBA52EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52EC0);
  }

  return result;
}

unint64_t sub_1B7C7C348()
{
  result = qword_1EBA52ED8;
  if (!qword_1EBA52ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52ED8);
  }

  return result;
}

uint64_t DatabaseTableInspectionReport.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DatabaseTableInspectionReport.init(from:)(a1);
  return v2;
}

uint64_t DatabaseTableInspectionReport.init(from:)(void *a1)
{
  v4 = sub_1B7C107FC(&qword_1EBA52EE0, &qword_1B7D0FA50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C7C2A0();
  sub_1B7CFF820();
  if (v2)
  {
    type metadata accessor for DatabaseTableInspectionReport();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    sub_1B7C7C6C0();
    sub_1B7CFF440();
    *(v1 + 16) = v15;
    v13 = 1;
    *(v1 + 24) = sub_1B7CFF430();
    v12 = 2;
    *(v1 + 32) = sub_1B7CFF430();
    v11 = 3;
    *(v1 + 40) = sub_1B7CFF430();
    sub_1B7C107FC(&qword_1EBA52EC8, &qword_1B7D0FA48);
    v10 = 4;
    sub_1B7C7C714(&qword_1EBA52EF0, sub_1B7C7C78C, MEMORY[0x1E69E6330]);
    sub_1B7CFF440();
    (*(v5 + 8))(v7, v4);
    *(v1 + 48) = v9[1];
  }

  sub_1B7AE9168(a1);
  return v1;
}

unint64_t sub_1B7C7C6C0()
{
  result = qword_1EBA52EE8;
  if (!qword_1EBA52EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52EE8);
  }

  return result;
}

uint64_t sub_1B7C7C714(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA52EC8, &qword_1B7D0FA48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C7C78C()
{
  result = qword_1EBA52EF8;
  if (!qword_1EBA52EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52EF8);
  }

  return result;
}

uint64_t sub_1B7C7C7E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DatabaseTableInspectionReport();
  v5 = swift_allocObject();
  result = DatabaseTableInspectionReport.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t DatabaseTableInspectionReport.description.getter()
{
  v1 = v0;
  sub_1B7CFF210();
  v2 = sub_1B7CFF8D0();
  MEMORY[0x1B8CADCA0](v2);

  MEMORY[0x1B8CADCA0](0x3A656C626174203ALL, 0xE900000000000020);
  v3 = sub_1B7C7BAE8();
  MEMORY[0x1B8CADCA0](v3);

  MEMORY[0x1B8CADCA0](0x756F43776F72202CLL, 0xEC000000203A746ELL);
  swift_beginAccess();
  v4 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v4);

  MEMORY[0x1B8CADCA0](0xD000000000000011, 0x80000001B7D561E0);
  v5 = v0[3];
  result = swift_beginAccess();
  v7 = v1[4];
  v8 = __OFSUB__(v5, v7);
  v9 = v5 - v7;
  if (v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = swift_beginAccess();
  if (__OFSUB__(v9, v1[5]))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v10);

  MEMORY[0x1B8CADCA0](0xD000000000000011, 0x80000001B7D56200);
  v11 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v11);

  MEMORY[0x1B8CADCA0](0xD000000000000020, 0x80000001B7D56220);
  v12 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v12);

  result = MEMORY[0x1B8CADCA0](0xD000000000000016, 0x80000001B7D56250);
  v13 = v1[3];
  if (v13 < 1)
  {
LABEL_6:
    v16 = sub_1B7CFEDE0();
    MEMORY[0x1B8CADCA0](v16);

    MEMORY[0x1B8CADCA0](0xD000000000000015, 0x80000001B7D56270);
    swift_beginAccess();

    v18 = MEMORY[0x1B8CADE30](v17, &type metadata for DatabaseTableInspectionReport.DetectedProblem);
    v20 = v19;

    MEMORY[0x1B8CADCA0](v18, v20);

    return 0;
  }

  v14 = v1[4];
  v8 = __OFSUB__(v13, v14);
  v15 = v13 - v14;
  if (v8)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(v15, v1[5]))
  {
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B7C7CBE8()
{
  if (*v0)
  {
    return 0x736D656C626F7270;
  }

  else
  {
    return 0x4449776F72;
  }
}

void sub_1B7C7CC20(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B7CFF590() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x736D656C626F7270 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B7CFF590();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7C7CCF8(uint64_t a1)
{
  v2 = sub_1B7C7CF30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C7CD34(uint64_t a1)
{
  v2 = sub_1B7C7CF30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DatabaseTableInspectionReport.DetectedProblem.encode(to:)(void *a1)
{
  v4 = sub_1B7C107FC(&qword_1EBA52F00, &unk_1B7D0FA58);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[0] = *(v1 + 8);
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C7CF30();
  sub_1B7CFF830();
  v11 = 0;
  sub_1B7CFF520();
  if (!v2)
  {
    v9[1] = v9[0];
    v10 = 1;
    sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
    sub_1B7C7D178(&qword_1EBA52F10, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1B7CFF500();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B7C7CF30()
{
  result = qword_1EBA52F08;
  if (!qword_1EBA52F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F08);
  }

  return result;
}

uint64_t DatabaseTableInspectionReport.DetectedProblem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1B7C107FC(&qword_1EBA52F18, &qword_1B7D0FA68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C7CF30();
  sub_1B7CFF820();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_1B7CFF460();
    sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
    v13 = 1;
    sub_1B7C7D178(&qword_1EBA52F20, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1B7CFF440();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9;
    a2[1] = v10;
  }

  return sub_1B7AE9168(a1);
}

uint64_t sub_1B7C7D178(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&unk_1EBA525A0, "D\r\b");
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

IMDPersistence::DatabaseTableInspectionReport::TableKey_optional __swiftcall DatabaseTableInspectionReport.TableKey.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B7C7D238()
{
  v0 = sub_1B7C245B8(&unk_1F2FA20E0);
  sub_1B7C107FC(&qword_1EBA52FA0, &qword_1B7D0FFB8);
  result = swift_arrayDestroy();
  off_1EBA52EA8 = v0;
  return result;
}

uint64_t static DatabaseTableInspectionReport.TableKey.nameMap.getter()
{
  if (qword_1EBA51600 != -1)
  {
    swift_once();
  }
}

IMDPersistence::DatabaseTableInspectionReport::TableKey_optional __swiftcall DatabaseTableInspectionReport.TableKey.init(withName:)(Swift::String withName)
{
  v2 = v1;
  if (qword_1EBA51600 != -1)
  {
    countAndFlagsBits = withName._countAndFlagsBits;
    object = withName._object;
    swift_once();
    withName._countAndFlagsBits = countAndFlagsBits;
    withName._object = object;
  }

  v3 = off_1EBA52EA8;
  if (!*(off_1EBA52EA8 + 2))
  {

    goto LABEL_7;
  }

  v4 = sub_1B7AE11D0(withName._countAndFlagsBits, withName._object);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_7:
    v8 = 10;
    goto LABEL_8;
  }

  result.value = DatabaseTableInspectionReport.TableKey.init(rawValue:)(*(v3[7] + v4)).value;
  v8 = v11;
LABEL_8:
  *v2 = v8;
  return result;
}

unint64_t sub_1B7C7D474()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000017;
    v7 = 0xD00000000000001DLL;
    if (v1 == 8)
    {
      v7 = 0xD000000000000010;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    if (v1 != 5)
    {
      v8 = 0xD000000000000010;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0x6567617373656DLL;
    v4 = 0x656D686361747461;
    if (v1 != 3)
    {
      v4 = 0x656C646E6168;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 1952540771;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

double sub_1B7C7D5F0(uint64_t a1)
{
  sub_1B7CFEB10();

  return result;
}

unint64_t sub_1B7C7D710@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B7C812B4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B7C7D740(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6D614E656C626174;
  v5 = 0x64656E616870726FLL;
  v6 = 0xED0000746E756F43;
  v7 = 0x80000001B7D4E310;
  v8 = 0xD00000000000001CLL;
  if (v2 != 4)
  {
    v8 = 0xD000000000000012;
    v7 = 0x80000001B7D4E330;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x746E756F43776F72;
  if (v2 != 1)
  {
    v10 = 0x6465746E65726170;
    v9 = 0xED0000746E756F43;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1B7C7D828()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA52F80, &qword_1B7D0FFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7D0FA30;
  *(inited + 32) = 0;
  *(inited + 40) = sub_1B7C7BAE8();
  *(inited + 48) = v3;
  *(inited + 56) = 1;
  swift_beginAccess();
  *(inited + 64) = sub_1B7CFF570();
  *(inited + 72) = v4;
  *(inited + 80) = 2;
  v5 = v0[3];
  result = swift_beginAccess();
  v7 = v1[4];
  v8 = __OFSUB__(v5, v7);
  v9 = v5 - v7;
  if (v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = swift_beginAccess();
  if (__OFSUB__(v9, v1[5]))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(inited + 88) = sub_1B7CFF570();
  *(inited + 96) = v10;
  *(inited + 104) = 3;
  *(inited + 112) = sub_1B7CFF570();
  *(inited + 120) = v11;
  *(inited + 128) = 4;
  *(inited + 136) = sub_1B7CFF570();
  *(inited + 144) = v12;
  *(inited + 152) = 5;
  sub_1B7C107FC(&qword_1EBA52F88, &qword_1B7D0FFA8);
  result = swift_allocObject();
  v13 = result;
  *(result + 16) = xmmword_1B7D0A7B0;
  v14 = v1[3];
  if (v14 < 1)
  {
    v19 = 0.0;
    goto LABEL_8;
  }

  v15 = v1[4];
  v8 = __OFSUB__(v14, v15);
  v16 = v14 - v15;
  if (v8)
  {
    goto LABEL_11;
  }

  v17 = v1[5];
  v8 = __OFSUB__(v16, v17);
  v18 = v16 - v17;
  if (!v8)
  {
    v19 = 100.0 - v18 / v14 * 100.0;
LABEL_8:
    *(result + 56) = MEMORY[0x1E69E7DE0];
    *(result + 64) = sub_1B7C810B8();
    *(v13 + 32) = v19;
    v20 = sub_1B7CFEA80();
    MEMORY[0x1B8CADCA0](v20);

    MEMORY[0x1B8CADCA0](37, 0xE100000000000000);
    *(inited + 160) = 0;
    *(inited + 168) = 0xE000000000000000;
    v21 = sub_1B7C246B4(inited);
    swift_setDeallocating();
    sub_1B7C107FC(&qword_1EBA52F98, &qword_1B7D0FFB0);
    swift_arrayDestroy();
    return v21;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1B7C7DAD4(unint64_t result, uint64_t *a2)
{
  v2 = *result;
  if (!*(*result + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = *a2;
  result = sub_1B7C400B4(0);
  if ((v4 & 1) == 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!*(v3 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = (*(v2 + 56) + 16 * result);
  v7 = *v5;
  v6 = v5[1];

  result = sub_1B7C400B4(0);
  if ((v8 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v9 = (*(v3 + 56) + 16 * result);
  if (v7 == *v9 && v6 == v9[1])
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1B7CFF590();
  }

  return v11 & 1;
}

unint64_t sub_1B7C7DBA4()
{
  result = qword_1EBA52F28;
  if (!qword_1EBA52F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseTableInspectionReport.TableKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseTableInspectionReport.TableKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7C7E014()
{
  result = qword_1EBA52F40;
  if (!qword_1EBA52F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F40);
  }

  return result;
}

unint64_t sub_1B7C7E06C()
{
  result = qword_1EBA52F48;
  if (!qword_1EBA52F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F48);
  }

  return result;
}

unint64_t sub_1B7C7E0C4()
{
  result = qword_1EBA52F50;
  if (!qword_1EBA52F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F50);
  }

  return result;
}

unint64_t sub_1B7C7E11C()
{
  result = qword_1EBA52F58;
  if (!qword_1EBA52F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F58);
  }

  return result;
}

unint64_t sub_1B7C7E174()
{
  result = qword_1EBA52F60;
  if (!qword_1EBA52F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F60);
  }

  return result;
}

unint64_t sub_1B7C7E1CC()
{
  result = qword_1EBA52F68;
  if (!qword_1EBA52F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F68);
  }

  return result;
}

void sub_1B7C7E220(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B7CC9FEC(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_1B7C7E28C(v4);
  *a1 = v2;
}

void sub_1B7C7E28C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B7CFF550();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B7C107FC(&qword_1EBA52538, &qword_1B7D0FF90);
        v5 = sub_1B7CFED20();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1B7C7E50C(v7, v8, a1, v4);
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
    sub_1B7C7E394(0, v2, 1, a1);
  }
}

void sub_1B7C7E394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = a1 - a3;
LABEL_6:
    v8 = *(v5 + 8 * v4);
    v23 = v7;
    v24 = v6;
    while (*(v8 + 16))
    {
      v9 = *v6;

      v10 = sub_1B7C400B4(0);
      if ((v11 & 1) == 0)
      {
        goto LABEL_21;
      }

      if (!*(v9 + 16))
      {
        goto LABEL_22;
      }

      v12 = (*(v8 + 56) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];

      v15 = sub_1B7C400B4(0);
      if ((v16 & 1) == 0)
      {
        goto LABEL_23;
      }

      v17 = (*(v9 + 56) + 16 * v15);
      if (v14 == *v17 && v13 == v17[1])
      {

LABEL_5:
        ++v4;
        v6 = v24 + 1;
        v7 = v23 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v19 = sub_1B7CFF590();

      if (v19)
      {
        if (!v5)
        {
          goto LABEL_24;
        }

        v20 = *v6;
        v8 = v6[1];
        *v6 = v8;
        v6[1] = v20;
        --v6;
        if (!__CFADD__(v7++, 1))
        {
          continue;
        }
      }

      goto LABEL_5;
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
  }
}

void sub_1B7C7E50C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_109:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_156;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_111;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v9 = v7 + 1;
  if (v7 + 1 < v6)
  {
    v10 = *a3;
    v11 = *(*a3 + 8 * v9);
    v109 = *(*a3 + 8 * v7);
    v110 = v11;

    v12 = v5;
    v106 = sub_1B7C7DAD4(&v110, &v109);
    if (v5)
    {

      goto LABEL_119;
    }

    v9 = v7 + 2;
    v100 = v7;
    if (v7 + 2 < v6)
    {
      v13 = v10 + 8 * v7 + 16;
      do
      {
        v5 = *v13;
        if (!*(*v13 + 16))
        {
          goto LABEL_128;
        }

        v15 = *(v13 - 8);

        v16 = sub_1B7C400B4(0);
        if ((v17 & 1) == 0)
        {
          goto LABEL_129;
        }

        if (!*(v15 + 16))
        {
          goto LABEL_130;
        }

        v18 = *(v5 + 56) + 16 * v16;
        v7 = *v18;
        v19 = *(v18 + 8);

        v20 = sub_1B7C400B4(0);
        if ((v21 & 1) == 0)
        {
          goto LABEL_131;
        }

        v22 = (*(v15 + 56) + 16 * v20);
        if (v7 == *v22 && v19 == v22[1])
        {

          if (v106)
          {
            v5 = v12;
            v7 = v100;
            goto LABEL_24;
          }
        }

        else
        {
          v14 = sub_1B7CFF590();

          if ((v106 ^ v14))
          {
            goto LABEL_22;
          }
        }

        v13 += 8;
        ++v9;
      }

      while (v6 != v9);
      v9 = v6;
LABEL_22:
      v5 = v12;
    }

    v7 = v100;
    if (v106)
    {
LABEL_24:
      if (v9 < v7)
      {
        goto LABEL_147;
      }

      if (v7 < v9)
      {
        v24 = 8 * v9 - 8;
        v25 = 8 * v7;
        v26 = v9;
        v27 = v7;
        do
        {
          if (v27 != --v26)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_153;
            }

            v28 = *(v29 + v25);
            *(v29 + v25) = *(v29 + v24);
            *(v29 + v24) = v28;
          }

          ++v27;
          v24 -= 8;
          v25 += 8;
        }

        while (v27 < v26);
      }
    }
  }

  v30 = a3[1];
  if (v9 >= v30)
  {
    goto LABEL_58;
  }

  if (__OFSUB__(v9, v7))
  {
    goto LABEL_146;
  }

  if (v9 - v7 >= a4)
  {
    goto LABEL_58;
  }

  v31 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_148;
  }

  if (v31 >= v30)
  {
    v31 = a3[1];
  }

  if (v31 < v7)
  {
    goto LABEL_149;
  }

  if (v9 == v31)
  {
    goto LABEL_58;
  }

  v98 = v5;
  v5 = *a3;
  v32 = (*a3 + 8 * v9 - 8);
  v101 = v7;
  v33 = (v7 - v9);
  v103 = v31;
LABEL_43:
  v105 = v32;
  v107 = v9;
  v34 = *(v5 + 8 * v9);
  v104 = v33;
  while (*(v34 + 16))
  {
    v35 = *v32;

    v36 = sub_1B7C400B4(0);
    if ((v37 & 1) == 0)
    {
      goto LABEL_122;
    }

    if (!*(v35 + 16))
    {
      goto LABEL_123;
    }

    v38 = *(v34 + 56) + 16 * v36;
    v7 = *v38;
    v39 = *(v38 + 8);

    v40 = sub_1B7C400B4(0);
    if ((v41 & 1) == 0)
    {
      goto LABEL_124;
    }

    v42 = (*(v35 + 56) + 16 * v40);
    if (v7 == *v42 && v39 == v42[1])
    {

LABEL_42:
      v9 = v107 + 1;
      v32 = v105 + 1;
      v33 = v104 - 1;
      if (v107 + 1 != v103)
      {
        goto LABEL_43;
      }

      v9 = v103;
      v5 = v98;
      v7 = v101;
LABEL_58:
      if (v9 < v7)
      {
        goto LABEL_145;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1B7CA1D30(0, *(v8 + 2) + 1, 1, v8);
      }

      v48 = *(v8 + 2);
      v47 = *(v8 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v8 = sub_1B7CA1D30((v47 > 1), v48 + 1, 1, v8);
      }

      *(v8 + 2) = v49;
      v50 = &v8[16 * v48];
      *(v50 + 4) = v7;
      *(v50 + 5) = v9;
      v7 = v9;
      v51 = *a1;
      if (!*a1)
      {
        goto LABEL_155;
      }

      if (v48)
      {
        while (2)
        {
          v52 = v49 - 1;
          if (v49 >= 4)
          {
            v57 = &v8[16 * v49 + 32];
            v58 = *(v57 - 64);
            v59 = *(v57 - 56);
            v63 = __OFSUB__(v59, v58);
            v60 = v59 - v58;
            if (v63)
            {
              goto LABEL_132;
            }

            v62 = *(v57 - 48);
            v61 = *(v57 - 40);
            v63 = __OFSUB__(v61, v62);
            v55 = v61 - v62;
            v56 = v63;
            if (v63)
            {
              goto LABEL_133;
            }

            v64 = &v8[16 * v49];
            v66 = *v64;
            v65 = *(v64 + 1);
            v63 = __OFSUB__(v65, v66);
            v67 = v65 - v66;
            if (v63)
            {
              goto LABEL_135;
            }

            v63 = __OFADD__(v55, v67);
            v68 = v55 + v67;
            if (v63)
            {
              goto LABEL_138;
            }

            if (v68 >= v60)
            {
              v86 = &v8[16 * v52 + 32];
              v88 = *v86;
              v87 = *(v86 + 1);
              v63 = __OFSUB__(v87, v88);
              v89 = v87 - v88;
              if (v63)
              {
                goto LABEL_142;
              }

              if (v55 < v89)
              {
                v52 = v49 - 2;
              }
            }

            else
            {
LABEL_78:
              if (v56)
              {
                goto LABEL_134;
              }

              v69 = &v8[16 * v49];
              v71 = *v69;
              v70 = *(v69 + 1);
              v72 = __OFSUB__(v70, v71);
              v73 = v70 - v71;
              v74 = v72;
              if (v72)
              {
                goto LABEL_137;
              }

              v75 = &v8[16 * v52 + 32];
              v77 = *v75;
              v76 = *(v75 + 1);
              v63 = __OFSUB__(v76, v77);
              v78 = v76 - v77;
              if (v63)
              {
                goto LABEL_140;
              }

              if (__OFADD__(v73, v78))
              {
                goto LABEL_141;
              }

              if (v73 + v78 < v55)
              {
                goto LABEL_92;
              }

              if (v55 < v78)
              {
                v52 = v49 - 2;
              }
            }
          }

          else
          {
            if (v49 == 3)
            {
              v53 = *(v8 + 4);
              v54 = *(v8 + 5);
              v63 = __OFSUB__(v54, v53);
              v55 = v54 - v53;
              v56 = v63;
              goto LABEL_78;
            }

            v79 = &v8[16 * v49];
            v81 = *v79;
            v80 = *(v79 + 1);
            v63 = __OFSUB__(v80, v81);
            v73 = v80 - v81;
            v74 = v63;
LABEL_92:
            if (v74)
            {
              goto LABEL_136;
            }

            v82 = &v8[16 * v52];
            v84 = *(v82 + 4);
            v83 = *(v82 + 5);
            v63 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v63)
            {
              goto LABEL_139;
            }

            if (v85 < v73)
            {
              break;
            }
          }

          v90 = v52 - 1;
          if (v52 - 1 >= v49)
          {
            goto LABEL_125;
          }

          if (!*a3)
          {
            goto LABEL_152;
          }

          v91 = *&v8[16 * v90 + 32];
          v92 = *&v8[16 * v52 + 40];
          sub_1B7C7EC9C((*a3 + 8 * v91), (*a3 + 8 * *&v8[16 * v52 + 32]), (*a3 + 8 * v92), v51);
          if (v5)
          {
            goto LABEL_119;
          }

          if (v92 < v91)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1B7C7F0FC(v8);
          }

          if (v90 >= *(v8 + 2))
          {
            goto LABEL_127;
          }

          v93 = &v8[16 * v90];
          *(v93 + 4) = v91;
          *(v93 + 5) = v92;
          v111 = v8;
          sub_1B7C7F070(v52);
          v8 = v111;
          v49 = *(v111 + 2);
          if (v49 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_109;
      }

      goto LABEL_4;
    }

    v44 = sub_1B7CFF590();

    if ((v44 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v5)
    {
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    v45 = *v32;
    v34 = v32[1];
    *v32 = v34;
    v32[1] = v45;
    --v32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_42;
    }
  }

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
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
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
  v8 = sub_1B7C7F0FC(v8);
LABEL_111:
  v111 = v8;
  v94 = *(v8 + 2);
  if (v94 < 2)
  {
LABEL_119:

    return;
  }

  while (*a3)
  {
    v95 = *&v8[16 * v94];
    v96 = *&v8[16 * v94 + 24];
    sub_1B7C7EC9C((*a3 + 8 * v95), (*a3 + 8 * *&v8[16 * v94 + 16]), (*a3 + 8 * v96), v7);
    if (v5)
    {
      goto LABEL_119;
    }

    if (v96 < v95)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1B7C7F0FC(v8);
    }

    if (v94 - 2 >= *(v8 + 2))
    {
      goto LABEL_144;
    }

    v97 = &v8[16 * v94];
    *v97 = v95;
    *(v97 + 1) = v96;
    v111 = v8;
    sub_1B7C7F070(v94 - 1);
    v8 = v111;
    v94 = *(v111 + 2);
    if (v94 <= 1)
    {
      goto LABEL_119;
    }
  }

LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}