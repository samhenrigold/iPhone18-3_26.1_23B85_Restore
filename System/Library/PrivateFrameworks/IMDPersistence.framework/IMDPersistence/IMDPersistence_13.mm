char *sub_1B7C3BE80(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1B7AE3F68();
  v7 = objc_opt_self();
  v45 = [v7 reindexSchedulingLastRowID];
  v43 = v7;
  v8 = [v7 reindexSchedulingBatchSize];
  v9 = [a1 laneOverride];
  v46 = v8;
  if (v9)
  {
    v10 = v9;
    v44 = [v9 unsignedIntegerValue];
  }

  else
  {
    v44 = [objc_opt_self() laneForFlag:2 reason:{objc_msgSend(a1, sel_reason)}];
  }

  v11 = *(sub_1B7C40CA8(2) + 16);
  v50 = MEMORY[0x1E69E7CC0];
  v51 = 0xD00000000000007ELL;
  v52 = 0x80000001B7D52C90;
  v12 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v12[2];
  v13 = v12[3];
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1B7AE3A9C((v13 > 1), v14 + 1, 1, v12);
  }

  v16 = MEMORY[0x1E69E6810];
  v48 = MEMORY[0x1E69E6810];
  v49 = &off_1F2FA8A98;
  *&v47 = v11;
  v12[2] = v15;
  sub_1B7AE910C(&v47, &v12[5 * v14 + 4]);
  v50 = v12;
  v51 = 0xD000000000000083;
  v52 = 0x80000001B7D52D10;
  v17 = v12[3];
  v18 = v14 + 2;
  if (v18 > (v17 >> 1))
  {
    v12 = sub_1B7AE3A9C((v17 > 1), v18, 1, v12);
  }

  v48 = v16;
  v49 = &off_1F2FA8A98;
  *&v47 = 2;
  v12[2] = v18;
  sub_1B7AE910C(&v47, &v12[5 * v15 + 4]);
  v50 = v12;
  v51 = 0xD000000000000088;
  v52 = 0x80000001B7D52DA0;
  if (qword_1EBA50DE8 != -1)
  {
    swift_once();
  }

  v19 = qword_1EBA5DA00;
  v20 = *(qword_1EBA5DA00 + 16);
  if (v20)
  {
    v21 = sub_1B7C41954();
    if (v22)
    {
      v6 = *(*(v19 + 56) + 8 * v21);
      v18 = v12[2];
      v20 = v12[3];
      v19 = v18 + 1;
      if (v18 < v20 >> 1)
      {
        goto LABEL_13;
      }

      goto LABEL_31;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_31:
  v12 = sub_1B7AE3A9C((v20 > 1), v19, 1, v12);
LABEL_13:
  v48 = MEMORY[0x1E69E6530];
  v49 = &off_1F2FA89F8;
  *&v47 = v6;
  v12[2] = v19;
  sub_1B7AE910C(&v47, &v12[5 * v18 + 4]);
  v50 = v12;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v24 = v12[2];
  v23 = v12[3];
  if (v24 >= v23 >> 1)
  {
    v12 = sub_1B7AE3A9C((v23 > 1), v24 + 1, 1, v12);
  }

  v48 = v16;
  v49 = &off_1F2FA8A98;
  *&v47 = v44;
  v12[2] = v24 + 1;
  sub_1B7AE910C(&v47, &v12[5 * v24 + 4]);
  v50 = v12;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v25 = [a1 reason];
  v27 = v12[2];
  v26 = v12[3];
  if (v27 >= v26 >> 1)
  {
    v41 = v25;
    v12 = sub_1B7AE3A9C((v26 > 1), v27 + 1, 1, v12);
    v25 = v41;
  }

  v49 = &off_1F2FA89F8;
  v28 = MEMORY[0x1E69E6530];
  v48 = MEMORY[0x1E69E6530];
  *&v47 = v25;
  v12[2] = v27 + 1;
  sub_1B7AE910C(&v47, &v12[5 * v27 + 4]);
  v50 = v12;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v29 = sub_1B7C3DA5C([a1 reason], 2);
  v31 = v12[2];
  v30 = v12[3];
  if (v31 >= v30 >> 1)
  {
    v42 = v29;
    v12 = sub_1B7AE3A9C((v30 > 1), v31 + 1, 1, v12);
    v29 = v42;
    v28 = MEMORY[0x1E69E6530];
  }

  v48 = v28;
  v49 = &off_1F2FA89F8;
  *&v47 = v29;
  v12[2] = v31 + 1;
  sub_1B7AE910C(&v47, &v12[5 * v31 + 4]);
  v50 = v12;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  sub_1B7C3D3CC(a2, a3);
  v33 = v12[2];
  v32 = v12[3];
  if (v33 >= v32 >> 1)
  {
    v12 = sub_1B7AE3A9C((v32 > 1), v33 + 1, 1, v12);
  }

  v48 = sub_1B7C107FC(&qword_1EBA52408, qword_1B7D13650);
  v49 = sub_1B7C3D464();
  *&v47 = a2;
  *(&v47 + 1) = a3;
  v12[2] = v33 + 1;
  sub_1B7AE910C(&v47, &v12[5 * v33 + 4]);
  v50 = v12;
  v34 = sub_1B7C3D3CC(a2, a3);
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000, v34);
  sub_1B7C2049C(a2, a3);
  MEMORY[0x1B8CADCA0](0xD000000000000021, 0x80000001B7D52E30);
  v36 = v12[2];
  v35 = v12[3];
  if (v36 >= v35 >> 1)
  {
    v12 = sub_1B7AE3A9C((v35 > 1), v36 + 1, 1, v12);
  }

  v48 = v28;
  v49 = &off_1F2FA89F8;
  *&v47 = v45;
  v12[2] = v36 + 1;
  sub_1B7AE910C(&v47, &v12[5 * v36 + 4]);
  v50 = v12;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](0xD00000000000001DLL, 0x80000001B7D52E60);
  v38 = v12[2];
  v37 = v12[3];
  if (v38 >= v37 >> 1)
  {
    v12 = sub_1B7AE3A9C((v37 > 1), v38 + 1, 1, v12);
  }

  v48 = v28;
  v49 = &off_1F2FA89F8;
  *&v47 = v46;
  v12[2] = v38 + 1;
  sub_1B7AE910C(&v47, &v12[5 * v38 + 4]);
  v50 = v12;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](10, 0xE100000000000000);
  if (qword_1EBA50C88 != -1)
  {
    swift_once();
  }

  MEMORY[0x1B8CADCA0](qword_1EBA50C90, unk_1EBA50C98);
  sub_1B7AF3098(MEMORY[0x1E69E7CC0]);
  v39 = v50;
  sub_1B7AE3B2C(v51, v52, 0);
  sub_1B7AF3FE4(v39);

  result = [v43 reindexSchedulingLastRowID];
  if (__OFSUB__(result, v46))
  {
    __break(1u);
  }

  else
  {
    [v43 setReindexSchedulingLastRowID_];
    [objc_opt_self() _notifyPTasksUpdated];
  }

  return result;
}

void sub_1B7C3C834(void *a1, unint64_t a2, uint64_t a3, void *a4, void (**a5)(void, void))
{
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  v10 = &selRef_isReindexing;
  if (a1)
  {
    v11 = objc_opt_self();
    v12 = a1;
    _Block_copy(a5);
    v13 = [v11 keyPathsToColumns];
    sub_1B7CFE990();

    v14 = objc_allocWithZone(IMDPredicateToSQLConverter);
    v15 = sub_1B7CFE980();

    v79 = [v14 initWithPredicate:v12 keyPathsToColumns:v15];

    if (!v79)
    {
      if (qword_1EBA50EC0 != -1)
      {
        swift_once();
      }

      v53 = sub_1B7CFE420();
      sub_1B7AD9040(v53, qword_1EBA5DA38);
      v54 = v12;
      v55 = sub_1B7CFE400();
      v56 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        aBlock[0] = v59;
        *v57 = 136446466;
        *(v57 + 4) = sub_1B7AED1B8(0xD000000000000037, 0x80000001B7D524B0, aBlock);
        *(v57 + 12) = 2112;
        *(v57 + 14) = v54;
        *v58 = a1;
        v60 = v54;
        _os_log_impl(&dword_1B7AD5000, v55, v56, "Bad predicate provided to %{public}s (%@)", v57, 0x16u);
        sub_1B7AEE190(v58, &qword_1EBA521E0, &unk_1B7D0CE60);
        MEMORY[0x1B8CB0E70](v58, -1, -1);
        sub_1B7AE9168(v59);
        MEMORY[0x1B8CB0E70](v59, -1, -1);
        MEMORY[0x1B8CB0E70](v57, -1, -1);
      }

      sub_1B7AEE088(0, &qword_1EDBE5A20, off_1E7CB5138);
      v81 = sub_1B7CFECC0();
      (a5)[2](a5, v81);

      v52 = v81;
LABEL_41:

      return;
    }

    v10 = &selRef_isReindexing;
  }

  else
  {
    _Block_copy(a5);
    v79 = 0;
  }

  if (a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v16 >> 62)
  {
LABEL_52:
    v17 = sub_1B7CFF120();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = a1;
  v75 = a4;
  v77 = v9;
  v78 = a2;

  if (v17)
  {
    v73 = a5;
    a2 = 0;
    v80 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1B8CAE380](a2, v16);
      }

      else
      {
        if (a2 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v18 = *(v16 + 8 * a2 + 32);
      }

      v19 = v18;
      a1 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      a5 = v17;
      v20 = objc_opt_self();
      v21 = v19;
      v22 = [v20 v10[30]];
      sub_1B7CFE990();

      v23 = objc_allocWithZone(IMDSortDescriptorToSQLConverter);
      v24 = sub_1B7CFE980();

      v25 = [v23 initWithSortDescriptor:v21 keyPathsToColumns:v24];

      if (!v25)
      {
        break;
      }

      v26 = [v25 expression];
      a4 = sub_1B7CFEA60();
      v9 = v27;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_1B7AF182C(0, *(v80 + 2) + 1, 1, v80);
      }

      v29 = *(v80 + 2);
      v28 = *(v80 + 3);
      if (v29 >= v28 >> 1)
      {
        v80 = sub_1B7AF182C((v28 > 1), v29 + 1, 1, v80);
      }

      *(v80 + 2) = v29 + 1;
      v30 = &v80[16 * v29];
      *(v30 + 4) = a4;
      *(v30 + 5) = v9;
      ++a2;
      v17 = a5;
      v10 = &selRef_isReindexing;
      if (a1 == a5)
      {
        goto LABEL_25;
      }
    }

    if (qword_1EBA50EC0 != -1)
    {
      swift_once();
    }

    v43 = sub_1B7CFE420();
    sub_1B7AD9040(v43, qword_1EBA5DA38);
    v44 = v21;
    v45 = sub_1B7CFE400();
    v46 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock[0] = v49;
      *v47 = 136446466;
      *(v47 + 4) = sub_1B7AED1B8(0xD000000000000037, 0x80000001B7D524B0, aBlock);
      *(v47 + 12) = 2112;
      *(v47 + 14) = v44;
      *v48 = v44;
      v50 = v44;
      _os_log_impl(&dword_1B7AD5000, v45, v46, "Bad sort descriptor provided to %{public}s (%@)", v47, 0x16u);
      sub_1B7AEE190(v48, &qword_1EBA521E0, &unk_1B7D0CE60);
      MEMORY[0x1B8CB0E70](v48, -1, -1);
      sub_1B7AE9168(v49);
      MEMORY[0x1B8CB0E70](v49, -1, -1);
      MEMORY[0x1B8CB0E70](v47, -1, -1);
    }

    sub_1B7AEE088(0, &qword_1EDBE5A20, off_1E7CB5138);
    v51 = sub_1B7CFECC0();
    (v73)[2](v73, v51);

    v52 = v79;
    goto LABEL_41;
  }

  v80 = MEMORY[0x1E69E7CC0];
LABEL_25:

  if (qword_1EBA50EC0 != -1)
  {
    swift_once();
  }

  v31 = sub_1B7CFE420();
  sub_1B7AD9040(v31, qword_1EBA5DA38);
  v32 = v74;

  v33 = sub_1B7CFE400();
  v34 = sub_1B7CFEED0();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = 0x3E6C696E3CLL;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315650;
    if (v74)
    {
      v38 = [v32 description];
      v39 = sub_1B7CFEA60();
      v41 = v40;
    }

    else
    {
      v41 = 0xE500000000000000;
      v39 = 0x3E6C696E3CLL;
    }

    v61 = sub_1B7AED1B8(v39, v41, aBlock);

    *(v36 + 4) = v61;
    *(v36 + 12) = 2080;
    if (v78)
    {
      v62 = sub_1B7AEE088(0, &unk_1EDBE5900, 0x1E696AEB0);
      v35 = MEMORY[0x1B8CADE30](v78, v62);
      v64 = v63;
    }

    else
    {
      v64 = 0xE500000000000000;
    }

    v65 = sub_1B7AED1B8(v35, v64, aBlock);

    *(v36 + 14) = v65;
    *(v36 + 22) = 2048;
    v42 = a3;
    *(v36 + 24) = a3;
    _os_log_impl(&dword_1B7AD5000, v33, v34, "Fetching ptasks filtered by predicate %s sortDescriptors %s limit %ld", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB0E70](v37, -1, -1);
    MEMORY[0x1B8CB0E70](v36, -1, -1);
  }

  else
  {

    v42 = a3;
  }

  v66 = swift_allocObject();
  v66[2] = sub_1B7C3D280;
  v66[3] = v77;
  v66[4] = v75;
  v66[5] = v79;
  v66[6] = v80;
  v66[7] = v42;
  aBlock[4] = sub_1B7C3D2AC;
  aBlock[5] = v66;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7AE14D0;
  aBlock[3] = &unk_1F2F9F870;
  v67 = _Block_copy(aBlock);
  v68 = v79;

  v69 = v75;

  v70 = [v69 isBlocking];
  IMDPersistencePerformBlockWithHandoffIfNeeded(v67, v70, v71, v72);

  _Block_release(v67);
}

double sub_1B7C3D2AC()
{
  v1 = *(v0 + 16);
  sub_1B7C39F8C(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1();

  return result;
}

double sub_1B7C3D3B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1B7C3D3CC(result, a2);
  }

  return v2;
}

double sub_1B7C3D3CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B7C1A208(a1, a2);
  }

  return result;
}

unint64_t sub_1B7C3D3E0()
{
  result = qword_1EBA50FA8;
  if (!qword_1EBA50FA8)
  {
    sub_1B7C1091C(&unk_1EBA525C0, &qword_1B7D0CB80);
    sub_1B7C3D464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50FA8);
  }

  return result;
}

unint64_t sub_1B7C3D464()
{
  result = qword_1EBA50FA0;
  if (!qword_1EBA50FA0)
  {
    sub_1B7C1091C(&qword_1EBA52408, qword_1B7D13650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50FA0);
  }

  return result;
}

uint64_t sub_1B7C3D4E0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1B7C2049C(result, a2);
  }

  return result;
}

uint64_t sub_1B7C3D51C()
{
  v1 = *(sub_1B7CFE180() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + v3;
  v8 = *(v0 + v4);
  v9 = *v7;
  v10 = *(v7 + 8);
  v11 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_1B7C38CD8(v5, v6, v0 + v2, v9, v10, v8, v12, v13);
}

uint64_t sub_1B7C3D5CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA525D8, &qword_1B7D0CB88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7C3D63C()
{
  result = qword_1EBA50E80;
  if (!qword_1EBA50E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50E80);
  }

  return result;
}

char *sub_1B7C3D6F8()
{
  v1 = *(sub_1B7CFE120() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);

  return sub_1B7C343B4(v5, v6, v7, v0 + v2, v8, v9, v10);
}

unint64_t IMPersistentTaskFlag.groupID.getter(unint64_t result)
{
  if (qword_1EDBE3010 != -1)
  {
    v3 = result;
    swift_once();
    result = v3;
  }

  v1 = qword_1EDBE79C8;
  if (*(qword_1EDBE79C8 + 16))
  {
    result = sub_1B7C40320(result);
    if (v2)
    {
      return *(*(v1 + 56) + 48 * result + 40);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t IMPersistentTaskFlag.flagPriority.getter(unint64_t result)
{
  if (qword_1EBA50DE8 != -1)
  {
    v3 = result;
    swift_once();
    result = v3;
  }

  v1 = qword_1EBA5DA00;
  if (*(qword_1EBA5DA00 + 16))
  {
    result = sub_1B7C40320(result);
    if (v2)
    {
      return *(*(v1 + 56) + 8 * result);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C3DA5C(uint64_t a1, uint64_t a2)
{
  if (qword_1EDBE3010 != -1)
  {
    v11 = a2;
    swift_once();
    a2 = v11;
  }

  v3 = qword_1EDBE79C8;
  if (!*(qword_1EDBE79C8 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = sub_1B7C40320(a2);
  if ((v5 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = *(*(v3 + 56) + 48 * v4 + 40);
  switch(v6)
  {
    case 2:
      if (qword_1EDBE2DF0 != -1)
      {
        swift_once();
      }

      v7 = &qword_1EDBE79B8;
      goto LABEL_16;
    case 1:
      if (qword_1EDBE2DE8 == -1)
      {
LABEL_8:
        v7 = &qword_1EDBE79B0;
LABEL_16:
        v8 = *v7;

        v9 = (*(*v8 + 120))(a1);

        return v9;
      }

LABEL_19:
      swift_once();
      goto LABEL_8;
    case 0:
      if (qword_1EDBE2DE0 != -1)
      {
        swift_once();
      }

      v7 = &qword_1EDBE79A8;
      goto LABEL_16;
  }

  type metadata accessor for IMPersistentTaskFlagGroup(0);
  result = sub_1B7CFF720();
  __break(1u);
  return result;
}

double IMPersistentTaskFlag.group.getter(uint64_t a1)
{
  sub_1B7C40CA8(a1);

  return result;
}

unint64_t IMPersistentTaskFlag.name.getter(unint64_t result)
{
  if (qword_1EDBE3010 != -1)
  {
    v4 = result;
    swift_once();
    result = v4;
  }

  v1 = qword_1EDBE79C8;
  if (*(qword_1EDBE79C8 + 16))
  {
    result = sub_1B7C40320(result);
    if (v2)
    {
      v3 = *(*(v1 + 56) + 48 * result + 8);

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t IMPersistentTaskFlag.Group.name.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void *sub_1B7C3DD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  if (qword_1EDBE3000 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  if (*(qword_1EDBE79C0 + 16) && (sub_1B7C40320(a1), (v7 & 1) != 0))
  {
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v5[5] = v8;
  v5[6] = a4;
  return v5;
}

uint64_t sub_1B7C3DDC4(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  v6 = v2 + 32;
  while (*(v6 + 8 * result) != a1)
  {
    if (v3 == ++result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7C3DDFC()
{
  v0 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v0);

  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  return 0x286E776F6E6B6E55;
}

void *IMPersistentTaskFlag.Group.deinit()
{

  return v0;
}

uint64_t IMPersistentTaskFlag.Group.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C3DF04(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B7C24154(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return v3;
  }

  v5 = 0;
  while (1)
  {
    swift_getAtKeyPath();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = sub_1B7C40320(v34);
    v9 = *(v3 + 16);
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v13 = v8;
    if (*(v3 + 24) < v12)
    {
      sub_1B7CE5414(v12, isUniquelyReferenced_nonNull_native);
      v7 = sub_1B7C40320(v34);
      if ((v13 & 1) != (v14 & 1))
      {
        goto LABEL_35;
      }

LABEL_10:
      if (v13)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v33 = v7;
    sub_1B7C107FC(&qword_1EBA52248, &qword_1B7D0B3A0);
    v17 = sub_1B7CFF360();
    v18 = v17;
    if (*(v3 + 16))
    {
      break;
    }

LABEL_29:

    v3 = v18;
    v7 = v33;
    if (v13)
    {
LABEL_3:
      *(*(v3 + 56) + 8 * v7) = v5;
      goto LABEL_4;
    }

LABEL_11:
    *(v3 + 8 * (v7 >> 6) + 64) |= 1 << v7;
    *(*(v3 + 48) + 8 * v7) = v34;
    *(*(v3 + 56) + 8 * v7) = v5;
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (v11)
    {
      goto LABEL_33;
    }

    *(v3 + 16) = v16;
LABEL_4:
    if (++v5 == v4)
    {
      return v3;
    }
  }

  v19 = (v17 + 64);
  v20 = v3 + 64;
  v21 = ((1 << *(v18 + 32)) + 63) >> 6;
  if (v18 != v3 || v19 >= v20 + 8 * v21)
  {
    memmove(v19, (v3 + 64), 8 * v21);
  }

  v22 = 0;
  *(v18 + 16) = *(v3 + 16);
  v23 = 1 << *(v3 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & *(v3 + 64);
  for (i = (v23 + 63) >> 6; v25; *(*(v18 + 56) + 8 * v28) = v31)
  {
    v27 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v28 = v27 | (v22 << 6);
LABEL_27:
    v31 = *(*(v3 + 56) + 8 * v28);
    *(*(v18 + 48) + 8 * v28) = *(*(v3 + 48) + 8 * v28);
  }

  v29 = v22;
  while (1)
  {
    v22 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v22 >= i)
    {
      goto LABEL_29;
    }

    v30 = *(v20 + 8 * v22);
    ++v29;
    if (v30)
    {
      v25 = (v30 - 1) & v30;
      v28 = __clz(__rbit64(v30)) | (v22 << 6);
      goto LABEL_27;
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  type metadata accessor for IMPersistentTaskFlag(0);
  result = sub_1B7CFF740();
  __break(1u);
  return result;
}

void sub_1B7C3E1A8()
{
  v0 = sub_1B7C23EF0(MEMORY[0x1E69E7CC0]);
  v1 = 0;
LABEL_3:
  while (1)
  {
    v3 = v1 <= 8 ? 8 - v1 : 0;
    v4 = ~v1;
    v5 = (&unk_1F2FA18E0 + 8 * v1 + 32);
    while (1)
    {
      if (v4 == -9)
      {
        qword_1EDBE79C8 = v0;
        return;
      }

      if (!v3)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v6 = v4;
      v7 = *v5;
      type metadata accessor for IMPersistentTaskFlag(0);
      if (v7)
      {
        break;
      }

      v8 = sub_1B7C40320(0);
      --v3;
      v4 = v6 - 1;
      ++v5;
      if (v9)
      {
        v10 = v8;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1B7CE8D60();
        }

        sub_1B7CE7284(v10, v0);
        v1 = -v6;
        goto LABEL_3;
      }
    }

    if (v7 <= 4)
    {
      break;
    }

    if (v7 > 6)
    {
      if (v7 == 7)
      {
        v12 = &unk_1B7D0CD60;
        v14 = 0xE400000000000000;
        v13 = 1953719636;
        v11 = 1;
        goto LABEL_31;
      }

      if (v7 != 8)
      {
        goto LABEL_45;
      }

      v13 = 0xD00000000000001FLL;
      v12 = &unk_1B7D0CD50;
      v14 = 0x80000001B7D53BD0;
      v11 = 2;
    }

    else
    {
      v11 = 0;
      if (v7 == 5)
      {
        v13 = 0xD00000000000001BLL;
        v12 = &unk_1B7D0CD40;
        v14 = 0x80000001B7D53C10;
      }

      else
      {
        v13 = 0xD000000000000015;
        v12 = &unk_1B7D0CD48;
        v14 = 0x80000001B7D53BF0;
      }
    }

LABEL_31:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_1B7C40320(v7);
    v18 = v0[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_43;
    }

    v22 = v17;
    if (v0[3] < v21)
    {
      sub_1B7CE4EC0(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_1B7C40320(v7);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_46;
      }

LABEL_36:
      if (v22)
      {
        goto LABEL_2;
      }

      goto LABEL_37;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_36;
    }

    v27 = v16;
    sub_1B7CE8D60();
    v16 = v27;
    if (v22)
    {
LABEL_2:
      v2 = (v0[7] + 48 * v16);
      *v2 = v7;
      v2[1] = v13;
      v2[2] = v14;
      v2[3] = v12;
      v2[4] = 0;
      v2[5] = v11;

      v1 = -v6;
      continue;
    }

LABEL_37:
    v0[(v16 >> 6) + 8] |= 1 << v16;
    *(v0[6] + 8 * v16) = v7;
    v24 = (v0[7] + 48 * v16);
    *v24 = v7;
    v24[1] = v13;
    v24[2] = v14;
    v24[3] = v12;
    v24[4] = 0;
    v24[5] = v11;
    v25 = v0[2];
    v20 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v20)
    {
      goto LABEL_44;
    }

    v0[2] = v26;
    v1 = -v6;
  }

  if (v7 > 2)
  {
    v11 = 0;
    if (v7 == 3)
    {
      v13 = 0xD000000000000015;
      v12 = &unk_1B7D0CD30;
      v14 = 0x80000001B7D53C50;
    }

    else
    {
      v12 = &unk_1B7D0CD38;
      v13 = 0xD000000000000011;
      v14 = 0x80000001B7D53C30;
    }

    goto LABEL_31;
  }

  if (v7 == 1)
  {
    v11 = 0;
    v12 = &unk_1B7D0CD20;
    v13 = 0xD000000000000011;
    v14 = 0x80000001B7D53C90;
    goto LABEL_31;
  }

  if (v7 == 2)
  {
    v11 = 0;
    v13 = 0xD000000000000013;
    v12 = &unk_1B7D0CD28;
    v14 = 0x80000001B7D53C70;
    goto LABEL_31;
  }

LABEL_45:
  sub_1B7CFF720();
  __break(1u);
LABEL_46:
  sub_1B7CFF740();
  __break(1u);
}

uint64_t sub_1B7C3E650()
{
  v0 = sub_1B7C1F454(&unk_1F2FA18E0);
  KeyPath = swift_getKeyPath();
  v2 = sub_1B7C3DF04(v0, KeyPath);

  qword_1EBA5DA00 = v2;
  return result;
}

void sub_1B7C3E6BC()
{
  if (qword_1EDBE3010 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v0 = qword_1EDBE79C8;
    v1 = sub_1B7C2404C(MEMORY[0x1E69E7CC0]);
    v2 = v0 + 64;
    v3 = 1 << *(v0 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v0 + 64);
    v6 = (v3 + 63) >> 6;
    v30 = v0;
    swift_bridgeObjectRetain_n();
    v7 = 0;
    if (v5)
    {
      break;
    }

LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        qword_1EDBE79C0 = v1;
        return;
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  while (1)
  {
LABEL_9:
    v9 = (*(v30 + 56) + 48 * (__clz(__rbit64(v5)) | (v7 << 6)));
    v10 = *v9;
    v11 = v9[5];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_1B7C40320(v11);
    v15 = v1[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_28;
    }

    v18 = v13;
    if (v1[3] < v17)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v13)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1B7CE8EE0();
      if (v18)
      {
        goto LABEL_18;
      }
    }

LABEL_16:
    v1[(v14 >> 6) + 8] |= 1 << v14;
    *(v1[6] + 8 * v14) = v11;
    *(v1[7] + 8 * v14) = MEMORY[0x1E69E7CC0];
    v21 = v1[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_29;
    }

    v1[2] = v23;
LABEL_18:
    v24 = v1[7];
    v25 = *(v24 + 8 * v14);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *(v24 + 8 * v14) = v25;
    v31 = v10;
    if ((v26 & 1) == 0)
    {
      v25 = sub_1B7CA22F4(0, *(v25 + 2) + 1, 1, v25);
      *(v24 + 8 * v14) = v25;
    }

    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    if (v28 >= v27 >> 1)
    {
      *(v24 + 8 * v14) = sub_1B7CA22F4((v27 > 1), v28 + 1, 1, v25);
    }

    v5 &= v5 - 1;

    v29 = *(v24 + 8 * v14);
    *(v29 + 16) = v28 + 1;
    *(v29 + 8 * v28 + 32) = v31;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  sub_1B7CE5184(v17, isUniquelyReferenced_nonNull_native);
  type metadata accessor for IMPersistentTaskFlagGroup(0);
  v19 = sub_1B7C40320(v11);
  if ((v18 & 1) == (v20 & 1))
  {
    v14 = v19;
    if (v18)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  sub_1B7CFF740();
  __break(1u);
}

uint64_t static IMDPersistentTaskUtilities.runTasks(_:withFlag:reason:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7C3E9C8, 0, 0);
}

uint64_t sub_1B7C3E9C8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = swift_allocObject();
  v0[6] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;

  v6 = swift_task_alloc();
  v0[7] = v6;
  *(v6 + 16) = &unk_1B7D0CBE0;
  *(v6 + 24) = v5;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1B7C3EB0C;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD00000000000001BLL, 0x80000001B7D53A40, sub_1B7C40FD8, v6, v8);
}

uint64_t sub_1B7C3EB0C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B7C3EC48;
  }

  else
  {

    v2 = sub_1B7C3EC30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7C3EC48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7C3ECB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1B7C3ECD8, 0, 0);
}

void sub_1B7C3ECD8()
{
  if (qword_1EDBE3010 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBE79C8;
  if (!*(qword_1EDBE79C8 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = sub_1B7C40320(v0[2]);
  if ((v3 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = *(v1 + 56) + 48 * v2;
  v5 = *(v4 + 24);
  v0[6] = *(v4 + 32);

  v10 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1B7C3EE40;
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  v10(v9, v7, v8);
}

uint64_t sub_1B7C3EE40()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1B7C3EFB8;
  }

  else
  {
    v2 = sub_1B7C3EF54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7C3EF54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7C3EFB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static IMDPersistentTaskUtilities.isWorkloadBacklogged(withGroupID:reports:)(uint64_t a1, uint64_t a2)
{
  switch(a1)
  {
    case 2:
      if (qword_1EDBE2DF0 != -1)
      {
        swift_once();
      }

      v3 = &qword_1EDBE79B8;
      goto LABEL_13;
    case 1:
      if (qword_1EDBE2DE8 != -1)
      {
        swift_once();
      }

      v3 = &qword_1EDBE79B0;
LABEL_13:
      v4 = *v3;

      v5 = (*(*v4 + 152))(a2);

      return v5 & 1;
    case 0:
      if (qword_1EDBE2DE0 != -1)
      {
        swift_once();
      }

      v3 = &qword_1EDBE79A8;
      goto LABEL_13;
  }

  type metadata accessor for IMPersistentTaskFlagGroup(0);
  result = sub_1B7CFF720();
  __break(1u);
  return result;
}

id sub_1B7C3F70C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  a4(a3, a2);
  v4 = sub_1B7CFEA30();

  return v4;
}

IMDPersistentTaskUtilities __swiftcall IMDPersistentTaskUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1B7C3F8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7C107FC(&qword_1EBA52628, &qword_1B7D0CC38);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1B7C107FC(&qword_1EBA52630, &qword_1B7D0CC40);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  (*(v10 + 16))(&v20 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  sub_1B7C107FC(&qword_1EBA52638, &qword_1B7D0CC48);
  swift_allocObject();
  v16 = sub_1B7C416F0(sub_1B7C41674, v15);

  v17 = sub_1B7CFEDD0();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = v16;

  sub_1B7C97AD0(0, 0, v8, &unk_1B7D0CC58, v18);
}

uint64_t sub_1B7C3FB14(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_1B7C3FC00;

  return v9();
}

uint64_t sub_1B7C3FC00()
{
  v2 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1B7C3FE70;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 16);
    v3 = sub_1B7C3FD1C;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1B7C3FD1C()
{
  v11 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 120);
    v9 = 0;
    v10 = 0;

    v2(&v9);
    v4 = [objc_opt_self() defaultCenter];
    if (qword_1EDBE39F0 != -1)
    {
      swift_once();
    }

    [v4 removeObserver:*(v0 + 16) name:qword_1EDBE39F8 object:0];
    sub_1B7AE15D4(v2, v3);

    v5 = *(v1 + 112);
    v6 = *(v1 + 120);
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
    sub_1B7AE15D4(v5, v6);
    v7 = sub_1B7C3FE5C;
  }

  else
  {
    v7 = sub_1B7C41950;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B7C3FE70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1B7C3FEDC, v1, 0);
}

uint64_t sub_1B7C3FEDC()
{
  v14 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  v3 = *(v0 + 32);
  if (v2)
  {
    v4 = *(v1 + 120);
    v12 = *(v0 + 32);
    LOBYTE(v13) = 1;
    v5 = v3;
    sub_1B7AD8F38(v2, v4);
    v2(&v12);

    v6 = [objc_opt_self() defaultCenter];
    if (qword_1EDBE39F0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 32);
    [v6 removeObserver:*(v0 + 16) name:qword_1EDBE39F8 object:0];
    sub_1B7AE15D4(v2, v4);

    v8 = *(v1 + 112);
    v9 = *(v1 + 120);
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
    sub_1B7AE15D4(v8, v9);

    v10 = sub_1B7C40054;
  }

  else
  {

    v10 = sub_1B7C41958;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1B7C40054()
{
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1B7C400B4(uint64_t a1)
{
  v1 = a1;
  sub_1B7CFF7C0();
  sub_1B7CFEB10();

  v2 = sub_1B7CFF800();

  return sub_1B7C40504(v1, v2);
}

unint64_t sub_1B7C40208(uint64_t a1)
{
  sub_1B7CFDD90();
  v2 = MEMORY[0x1E6968B10];
  sub_1B7C41030(&qword_1EBA52618, MEMORY[0x1E6968B10], MEMORY[0x1E6968B18]);
  v3 = sub_1B7CFE9B0();
  return sub_1B7C40A8C(a1, v3, MEMORY[0x1E6968B10], &qword_1EBA52620, v2, MEMORY[0x1E6968B20]);
}

unint64_t sub_1B7C402DC(uint64_t a1)
{
  v2 = sub_1B7CFEFC0();

  return sub_1B7C40758(a1, v2);
}

unint64_t sub_1B7C40320(uint64_t a1)
{
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](a1);
  v2 = sub_1B7CFF800();
  return sub_1B7AE1164(a1, v2);
}

unint64_t sub_1B7C40388(uint64_t a1)
{
  v2 = sub_1B7CFF160();

  return sub_1B7C4082C(a1, v2);
}

unint64_t sub_1B7C403CC(uint64_t a1)
{
  sub_1B7CFF330();
  v2 = sub_1B7CFE9B0();

  return sub_1B7C408F4(a1, v2);
}

unint64_t sub_1B7C40430(uint64_t a1)
{
  sub_1B7CFE7C0();
  v2 = MEMORY[0x1E697BC90];
  sub_1B7C41030(&qword_1EBA52048, MEMORY[0x1E697BC90], MEMORY[0x1E697BCA0]);
  v3 = sub_1B7CFE9B0();
  return sub_1B7C40A8C(a1, v3, MEMORY[0x1E697BC90], &qword_1EBA52610, v2, MEMORY[0x1E697BCA8]);
}

unint64_t sub_1B7C40504(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v7 = 0x64656E616870726FLL;
          v8 = 0xED0000746E756F43;
        }

        else
        {
          if (v6 == 4)
          {
            v7 = 0xD00000000000001CLL;
          }

          else
          {
            v7 = 0xD000000000000012;
          }

          if (v6 == 4)
          {
            v8 = 0x80000001B7D4E310;
          }

          else
          {
            v8 = 0x80000001B7D4E330;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0x746E756F43776F72;
        }

        else
        {
          v7 = 0x6465746E65726170;
        }

        if (v6 == 1)
        {
          v8 = 0xE800000000000000;
        }

        else
        {
          v8 = 0xED0000746E756F43;
        }
      }

      else
      {
        v7 = 0x6D614E656C626174;
        v8 = 0xE900000000000065;
      }

      v9 = 0xD00000000000001CLL;
      if (v5 == 4)
      {
        v10 = 0x80000001B7D4E310;
      }

      else
      {
        v9 = 0xD000000000000012;
        v10 = 0x80000001B7D4E330;
      }

      if (v5 == 3)
      {
        v9 = 0x64656E616870726FLL;
        v10 = 0xED0000746E756F43;
      }

      v11 = 0x746E756F43776F72;
      if (v5 != 1)
      {
        v11 = 0x6465746E65726170;
      }

      v12 = 0xE800000000000000;
      if (v5 != 1)
      {
        v12 = 0xED0000746E756F43;
      }

      if (!v5)
      {
        v11 = 0x6D614E656C626174;
        v12 = 0xE900000000000065;
      }

      v13 = v5 <= 2 ? v11 : v9;
      v14 = v5 <= 2 ? v12 : v10;
      if (v7 == v13 && v8 == v14)
      {
        break;
      }

      v15 = sub_1B7CFF590();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1B7C40758(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1B7AEE088(0, &qword_1EBA521E8, 0x1E696B0B8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B7CFEFD0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B7C4082C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B7C41078(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B8CAE2B0](v9, a1);
      sub_1B7C410D4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B7C408F4(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_1B7CFF330();
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4, v6);
      v18 = sub_1B7CFEA20();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1B7C40A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_1B7C41030(v24, v25, v26);
      v20 = sub_1B7CFEA20();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_1B7C40C2C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = *a1;
    sub_1B7C107FC(&qword_1EBA52630, &qword_1B7D0CC40);
    return sub_1B7CFED90();
  }

  else
  {
    sub_1B7C107FC(&qword_1EBA52630, &qword_1B7D0CC40);
    return sub_1B7CFEDA0();
  }
}

uint64_t sub_1B7C40CA8(uint64_t a1)
{
  if (qword_1EDBE3010 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = qword_1EDBE79C8;
  if (!*(qword_1EDBE79C8 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = sub_1B7C40320(a1);
  if ((v3 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = *(*(v1 + 56) + 48 * v2 + 40);
  switch(v4)
  {
    case 2:
      if (qword_1EDBE2DF0 != -1)
      {
        swift_once();
      }

      v5 = &qword_1EDBE79B8;
      return *v5;
    case 1:
      if (qword_1EDBE2DE8 == -1)
      {
LABEL_8:
        v5 = &qword_1EDBE79B0;
        return *v5;
      }

LABEL_19:
      swift_once();
      goto LABEL_8;
    case 0:
      if (qword_1EDBE2DE0 != -1)
      {
        swift_once();
      }

      v5 = &qword_1EDBE79A8;
      return *v5;
  }

  type metadata accessor for IMPersistentTaskFlagGroup(0);
  result = sub_1B7CFF720();
  __break(1u);
  return result;
}

uint64_t sub_1B7C40E24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B7C40EE4;

  return sub_1B7C3ECB4(a1, v4, v5, v7, v6);
}

uint64_t sub_1B7C40EE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B7C41030(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7C41128(uint64_t a1)
{
  v1 = *(sub_1B7C40CA8(a1) + 16);
  switch(v1)
  {
    case 2:
      if (qword_1EDBE2DF0 != -1)
      {
        swift_once();
      }

      v2 = &qword_1EDBE79B8;
      goto LABEL_13;
    case 1:
      if (qword_1EDBE2DE8 != -1)
      {
        swift_once();
      }

      v2 = &qword_1EDBE79B0;
LABEL_13:
      v3 = *v2;

      v4 = *(v3 + 24);

      return v4;
    case 0:
      if (qword_1EDBE2DE0 != -1)
      {
        swift_once();
      }

      v2 = &qword_1EDBE79A8;
      goto LABEL_13;
  }

  type metadata accessor for IMPersistentTaskFlagGroup(0);
  result = sub_1B7CFF720();
  __break(1u);
  return result;
}

uint64_t sub_1B7C4126C(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (qword_1EDBE3010 != -1)
  {
    result = swift_once();
  }

  v4 = qword_1EDBE79C8;
  if (*(qword_1EDBE79C8 + 16))
  {
    result = sub_1B7C40320(v3);
    if (v5)
    {
      v10 = *(*(v4 + 56) + 48 * result + 8);

      MEMORY[0x1B8CADCA0](91, 0xE100000000000000);
      v6 = *(*sub_1B7C40CA8(v3) + 128);

      v7 = v6(a2);
      v9 = v8;

      MEMORY[0x1B8CADCA0](v7, v9);

      MEMORY[0x1B8CADCA0](93, 0xE100000000000000);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C41390()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v2 = *(&unk_1F2FA19A8 + v0 + 32);
    if (v2 == 2)
    {
      v3 = &qword_1EDBE79B8;
      if (qword_1EDBE2DF0 != -1)
      {
        swift_once();
        v3 = &qword_1EDBE79B8;
      }
    }

    else if (v2 == 1)
    {
      v3 = &qword_1EDBE79B0;
      if (qword_1EDBE2DE8 != -1)
      {
        swift_once();
        v3 = &qword_1EDBE79B0;
      }
    }

    else
    {
      if (v2)
      {
        goto LABEL_35;
      }

      v3 = &qword_1EDBE79A8;
      if (qword_1EDBE2DE0 != -1)
      {
        swift_once();
        v3 = &qword_1EDBE79A8;
      }
    }

    v4 = *v3;

    swift_beginAccess();
    v5 = *(v4 + 40);

    v6 = *(v5 + 16);
    v7 = *(v1 + 2);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      type metadata accessor for IMPersistentTaskFlagGroup(0);
      result = sub_1B7CFF720();
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= *(v1 + 3) >> 1)
    {
      if (!*(v5 + 16))
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v10 = v7 + v6;
      }

      else
      {
        v10 = v7;
      }

      v1 = sub_1B7CA22F4(isUniquelyReferenced_nonNull_native, v10, 1, v1);
      if (!*(v5 + 16))
      {
LABEL_2:

        if (v6)
        {
          goto LABEL_32;
        }

        goto LABEL_3;
      }
    }

    v11 = *(v1 + 2);
    if ((*(v1 + 3) >> 1) - v11 < v6)
    {
      goto LABEL_33;
    }

    memcpy(&v1[8 * v11 + 32], (v5 + 32), 8 * v6);

    if (v6)
    {
      v12 = *(v1 + 2);
      v13 = __OFADD__(v12, v6);
      v14 = v12 + v6;
      if (v13)
      {
        goto LABEL_34;
      }

      *(v1 + 2) = v14;
    }

LABEL_3:
    v0 += 8;
  }

  while (v0 != 24);
  v15 = *(v1 + 2);
  if (v15)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1B7CFF2C0();
    v16 = 32;
    do
    {
      sub_1B7CFF050();
      sub_1B7CFF290();
      sub_1B7CFF2D0();
      sub_1B7CFF2E0();
      sub_1B7CFF2A0();
      v16 += 8;
      --v15;
    }

    while (v15);

    return v18;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1B7C41674(uint64_t a1)
{
  sub_1B7C107FC(&qword_1EBA52630, &qword_1B7D0CC40);

  return sub_1B7C40C2C(a1);
}

uint64_t sub_1B7C416F0(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  v5 = objc_opt_self();

  v6 = [v5 defaultCenter];
  v7 = qword_1EDBE39F0;

  if (v7 != -1)
  {
    swift_once();
  }

  [v6 addObserver:v2 selector:sel_persistenceConnectionInterrupted_ name:qword_1EDBE39F8 object:0];

  return v2;
}

uint64_t sub_1B7C417D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7C40EE4;

  return sub_1B7C3FB14(a1, v4, v5, v6, v7, v8);
}

__n128 sub_1B7C41898(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B7C418AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B7C418F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void IMPersistentTaskFlagGroup.group.getter(uint64_t a1)
{
  if (a1 == 2)
  {
    if (qword_1EDBE2DF0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a1 == 1)
  {
    if (qword_1EDBE2DE8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a1)
  {
    type metadata accessor for IMPersistentTaskFlagGroup(0);
    sub_1B7CFF720();
    __break(1u);
    return;
  }

  if (qword_1EDBE2DE0 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_9:
}

uint64_t IMPersistentTaskFlagGroup.name.getter(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      if (qword_1EDBE2DF0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EDBE79B8;
      goto LABEL_13;
    case 1:
      if (qword_1EDBE2DE8 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EDBE79B0;
LABEL_13:
      v2 = *v1;

      v3 = *(v2 + 24);

      return v3;
    case 0:
      if (qword_1EDBE2DE0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EDBE79A8;
      goto LABEL_13;
  }

  type metadata accessor for IMPersistentTaskFlagGroup(0);
  result = sub_1B7CFF720();
  __break(1u);
  return result;
}

void *sub_1B7C41BCC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_1B7C41C08()
{
  v0 = sub_1B7C2436C(MEMORY[0x1E69E7CC0]);
  type metadata accessor for IMPersistentTaskFlagGroup(0);
  v1 = 0;
  while (1)
  {
    v3 = *(&unk_1F2FA1A08 + v1 + 32);
    if (v3 == 2)
    {
      v4 = &qword_1EDBE79B8;
      if (qword_1EDBE2DF0 != -1)
      {
        swift_once();
        v4 = &qword_1EDBE79B8;
      }
    }

    else if (v3 == 1)
    {
      v4 = &qword_1EDBE79B0;
      if (qword_1EDBE2DE8 != -1)
      {
        swift_once();
        v4 = &qword_1EDBE79B0;
      }
    }

    else
    {
      if (v3)
      {
        goto LABEL_27;
      }

      v4 = &qword_1EDBE79A8;
      if (qword_1EDBE2DE0 != -1)
      {
        swift_once();
        v4 = &qword_1EDBE79A8;
      }
    }

    v5 = *v4;

    v7 = *(v5 + 24);
    v6 = *(v5 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_1B7AE11D0(v7, v6);
    v11 = v0[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      break;
    }

    v15 = v10;
    if (v0[3] < v14)
    {
      sub_1B7CE5694(v14, isUniquelyReferenced_nonNull_native);
      v9 = sub_1B7AE11D0(v7, v6);
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_26;
      }

LABEL_18:
      if (v15)
      {
        goto LABEL_2;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v20 = v9;
    sub_1B7CE903C();
    v9 = v20;
    if (v15)
    {
LABEL_2:
      v2 = v9;

      *(v0[7] + 8 * v2) = v3;
      goto LABEL_3;
    }

LABEL_19:
    v0[(v9 >> 6) + 8] |= 1 << v9;
    v17 = (v0[6] + 16 * v9);
    *v17 = v7;
    v17[1] = v6;
    *(v0[7] + 8 * v9) = v3;
    v18 = v0[2];
    v13 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v13)
    {
      goto LABEL_25;
    }

    v0[2] = v19;
LABEL_3:
    v1 += 8;
    if (v1 == 24)
    {
      qword_1EBA52640 = v0;
      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1B7CFF740();
  __break(1u);
LABEL_27:
  sub_1B7CFF720();
  __break(1u);
}

uint64_t static IMPersistentTaskFlagGroup.groupsByName.getter()
{
  if (qword_1EBA515A8 != -1)
  {
    swift_once();
  }
}

void *sub_1B7C41F10()
{
  sub_1B7C459AC();
  v0 = sub_1B7CFEF90();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    v2 = v0;
    sub_1B7C31320(0, v1, 0);
    v3 = v2;
    v4 = v10;
    v5 = *(v10 + 16);
    v6 = 32;
    do
    {
      v7 = *(v3 + v6);
      v8 = *(v10 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1B7C31320((v8 > 1), v5 + 1, 1);
        v3 = v2;
      }

      *(v10 + 16) = v5 + 1;
      *(v10 + 8 * v5 + 32) = v7;
      v6 += 8;
      ++v5;
      --v1;
    }

    while (v1);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  return sub_1B7C3DD1C(0, 0x6867696C746F7053, 0xE900000000000074, v4);
}

id sub_1B7C4203C(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 priorityForIndexReason_];
}

uint64_t sub_1B7C42084(uint64_t a1)
{
  v1 = NSStringFromIMCoreSpotlightIndexReason();
  v2 = sub_1B7CFEA60();

  return v2;
}

id sub_1B7C420D0(void *a1, uint64_t a2)
{
  v4 = IMSharedHelperMessagesApplicationName();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7CFEA60();
    v8 = v7;

    sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B7D0A7B0;
    *(v9 + 32) = v6;
    *(v9 + 40) = v8;
    v10 = sub_1B7CFECC0();

    [a1 setRelatedApplications_];
  }

  if (a2 != 3)
  {
    [a1 setResourceIntensive_];
    [a1 setResources_];
  }

  sub_1B7C42280();
  v11 = sub_1B7CFECC0();

  [a1 setInvolvedProcesses_];

  [a1 setRequiresBuddyComplete_];
  result = [a1 setRequiresProtectionClass_];
  if (a2 == 1)
  {
    v13 = &selRef_setRequiresUserInactivity_;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    [a1 setRequiresUserInactivity_];
    v13 = &selRef_setRequiresExternalPower_;
  }

  v14 = *v13;

  return [a1 v14];
}

char *sub_1B7C42280()
{
  sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7D0CB60;
  *(inited + 32) = 0x6474736567677573;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 0x64737465737361;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 64) = 0xD000000000000013;
  *(inited + 72) = 0x80000001B7D4E180;
  result = sub_1B7AF182C(1, 4, 1, inited);
  *(result + 2) = 4;
  *(result + 10) = 0x64686372616573;
  *(result + 11) = 0xE700000000000000;
  return result;
}

uint64_t sub_1B7C42374(uint64_t a1, uint64_t a2)
{
  if (a2 <= 5)
  {
    if (a2 <= 2)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          return 2;
        }

        if (a2 == 2)
        {
          return 0;
        }

LABEL_11:
        type metadata accessor for IMCoreSpotlightIndexReason(0);
        sub_1B7CFF720();
        __break(1u);
      }

      return 1;
    }

    return 0;
  }

  switch(a2)
  {
    case 1000:
    case 1002:
    case 1003:
    case 1004:
    case 1009:
    case 1010:
    case 1011:
    case 1012:
    case 1013:
    case 1014:
      result = 3;
      break;
    case 1001:
    case 1005:
    case 1006:
    case 1007:
    case 1008:
    case 1015:
      return 2;
    case 1016:
      return 0;
    default:
      if (a2 != 6 && a2 != 7)
      {
        goto LABEL_11;
      }

      return 0;
  }

  return result;
}

uint64_t sub_1B7C4244C(unint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    sub_1B7C24230(MEMORY[0x1E69E7CC0]);
  }

  v3 = objc_allocWithZone(IMDIndexingContext);

  v4 = sub_1B7CFE980();

  v5 = [v3 initWithDictionary_];

  if (!a2)
  {
    sub_1B7C24230(MEMORY[0x1E69E7CC0]);
  }

  v6 = objc_allocWithZone(IMDIndexingContext);

  v7 = sub_1B7CFE980();

  v8 = [v6 initWithDictionary_];

  if ([v8 fullReindex])
  {
    [v5 setFullReindex_];
  }

  if ([v8 needsPriorityCheck])
  {
    [v5 setNeedsPriorityCheck_];
  }

  v9 = [v5 dictionaryRepresentation];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1B7CFE990();
  }

  else
  {

    return 0;
  }

  return v11;
}

unint64_t sub_1B7C42630(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      v4 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1B8CAE380](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v5 = *(v1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v8 = [v5 count];

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B7AF2DCC(0, *(v4 + 16) + 1, 1, v4);
          v4 = result;
        }

        v10 = *(v4 + 16);
        v9 = *(v4 + 24);
        v11 = v10 + 1;
        if (v10 >= v9 >> 1)
        {
          result = sub_1B7AF2DCC((v9 > 1), v10 + 1, 1, v4);
          v4 = result;
        }

        *(v4 + 16) = v11;
        *(v4 + 8 * v10 + 32) = v8;
        ++v3;
        if (v7 == v2)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      result = sub_1B7CFF120();
      v2 = result;
    }

    while (result);
  }

  v4 = MEMORY[0x1E69E7CC0];
  v11 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v11)
  {
LABEL_19:
    v12 = 0;
    for (i = 32; ; i += 8)
    {
      v14 = *(v4 + i);
      v15 = __OFADD__(v12, v14);
      v12 += v14;
      if (v15)
      {
        break;
      }

      if (!--v11)
      {

        return v12 > 1000;
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

uint64_t sub_1B7C427D8()
{
  sub_1B7C459AC();
  v0 = sub_1B7CFEF90();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = (v0 + 32);
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = *v3++;
      v7 = v8;
      if (IMDSpotlightIndexingUsesPartialIndexersForReason(v8))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B7C31350(0, *(v4 + 16) + 1, 1);
        }

        v6 = *(v4 + 16);
        v5 = *(v4 + 24);
        if (v6 >= v5 >> 1)
        {
          sub_1B7C31350((v5 > 1), v6 + 1, 1);
        }

        *(v4 + 16) = v6 + 1;
        *(v4 + 8 * v6 + 32) = v7;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v4 + 16);
  if (v9)
  {
    sub_1B7C31320(0, v9, 0);
    v10 = v2;
    v11 = *(v2 + 16);
    v12 = 32;
    do
    {
      v13 = *(v4 + v12);
      v14 = *(v10 + 24);
      if (v11 >= v14 >> 1)
      {
        sub_1B7C31320((v14 > 1), v11 + 1, 1);
      }

      *(v10 + 16) = v11 + 1;
      *(v10 + 8 * v11 + 32) = v13;
      v12 += 8;
      ++v11;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v10;
}

BOOL sub_1B7C42984(uint64_t a1, uint64_t a2)
{
  result = IMDSpotlightIndexingUsesPartialIndexersForReason(a1);
  if (result)
  {
    return IMDSpotlightIndexingUsesPartialIndexersForReason(a2);
  }

  return result;
}

void *sub_1B7C429B8()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1B7C31320(0, 2, 0);
  v0 = v7;
  v2 = *(v7 + 16);
  v1 = *(v7 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1B7C31320((v1 > 1), v2 + 1, 1);
    v0 = v7;
    v1 = *(v7 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  *(v0 + 8 * v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    sub_1B7C31320((v1 > 1), v5, 1);
    v0 = v7;
  }

  *(v0 + 16) = v5;
  *(v0 + 8 * v4 + 32) = 1;

  return sub_1B7C3DD1C(1, 1953719636, 0xE400000000000000, v0);
}

void *sub_1B7C42B08()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1B7C31320(0, 2, 0);
  v0 = v7;
  v2 = *(v7 + 16);
  v1 = *(v7 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1B7C31320((v1 > 1), v2 + 1, 1);
    v0 = v7;
    v1 = *(v7 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  *(v0 + 8 * v2 + 32) = 100000;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    sub_1B7C31320((v1 > 1), v5, 1);
    v0 = v7;
  }

  *(v0 + 16) = v5;
  *(v0 + 8 * v4 + 32) = 100001;

  return sub_1B7C3DD1C(2, 0x746E657261706552, 0xEB00000000676E69, v0);
}

id sub_1B7C42C68(void *a1, uint64_t a2)
{
  v4 = IMSharedHelperMessagesApplicationName();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7CFEA60();
    v8 = v7;

    sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B7D0A7B0;
    *(v9 + 32) = v6;
    *(v9 + 40) = v8;
    v10 = sub_1B7CFECC0();

    [a1 setRelatedApplications_];
  }

  [a1 setResources_];
  v11 = sub_1B7CFECC0();
  [a1 setInvolvedProcesses_];

  [a1 setRequiresBuddyComplete_];
  result = [a1 setRequiresProtectionClass_];
  if (a2 == 1)
  {
    v13 = &selRef_setRequiresUserInactivity_;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    [a1 setRequiresUserInactivity_];
    v13 = &selRef_setRequiresExternalPower_;
  }

  v14 = *v13;

  return [a1 v14];
}

uint64_t sub_1B7C42E00()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C42EB0(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(a1);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B7C42FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7C42FC4, 0, 0);
}

uint64_t sub_1B7C42FC4()
{
  v1 = v0[18];
  v2 = [objc_opt_self() queryProvider];
  v0[21] = v2;
  if (v1 >> 62)
  {
    v3 = sub_1B7CFF120();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v28 = MEMORY[0x1E69E7CC0];
    v4 = sub_1B7AECEEC(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v4);
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1B8CAE380](v5, v0[18]);
        v6 = [swift_unknownObjectRetain() guid];
        v7 = sub_1B7CFEA60();
        v9 = v8;

        swift_unknownObjectRelease_n();
        v11 = *(v28 + 16);
        v10 = *(v28 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B7AECEEC((v10 > 1), v11 + 1, 1);
        }

        ++v5;
        *(v28 + 16) = v11 + 1;
        v12 = v28 + 16 * v11;
        *(v12 + 32) = v7;
        *(v12 + 40) = v9;
      }

      while (v3 != v5);
    }

    else
    {
      v13 = (v0[18] + 32);
      do
      {
        v14 = *v13;
        v15 = [v14 guid];
        v16 = sub_1B7CFEA60();
        v18 = v17;

        v20 = *(v28 + 16);
        v19 = *(v28 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1B7AECEEC((v19 > 1), v20 + 1, 1);
        }

        *(v28 + 16) = v20 + 1;
        v21 = v28 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        ++v13;
        --v3;
      }

      while (v3);
    }
  }

  v22 = v0[20];
  v23 = sub_1B7CFECC0();
  v0[22] = v23;

  if (v22)
  {
    v24 = sub_1B7CFE980();
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_allocWithZone(IMDIndexingContext) initForReindexing:0 reason:v0[19] runningViaBGST:1 userInfo:v24];
  v0[23] = v25;

  v0[2] = v0;
  v0[3] = sub_1B7C43344;
  v26 = swift_continuation_init();
  v0[17] = sub_1B7C107FC(&unk_1EBA52450, &qword_1B7D0CA50);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7C310BC;
  v0[13] = &unk_1F2F9F898;
  v0[14] = v26;
  [v2 addMessageGUIDs:v23 context:v25 completionHandler:v0 + 10];
  v4 = (v0 + 2);

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t sub_1B7C43344()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1B7C45C3C;
  }

  else
  {
    v2 = sub_1B7C45C34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7C43454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7C43478, 0, 0);
}

uint64_t sub_1B7C43478()
{
  v1 = MEMORY[0x1E69E7CA0];
  if (v0[20])
  {
    v2 = sub_1B7CFE980();
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[18];
  v4 = [objc_allocWithZone(IMDIndexingContext) initForReindexing:1 reason:v0[19] runningViaBGST:1 userInfo:v2];
  v0[21] = v4;

  v57 = MEMORY[0x1E69E7CC0];
  v50 = v3 >> 62;
  if (v3 >> 62)
  {
LABEL_23:
    v5 = sub_1B7CFF120();
    v51 = v0;
    v52 = v4;
    if (v5)
    {
LABEL_6:
      v6 = v3;
      v3 = 0;
      v49 = v6;
      v54 = v6 & 0xFFFFFFFFFFFFFF8;
      v55 = v6 & 0xC000000000000001;
      v53 = v0[18] + 32;
      do
      {
        if (v55)
        {
          v7 = MEMORY[0x1B8CAE380](v3, v51[18]);
        }

        else
        {
          if (v3 >= *(v54 + 16))
          {
            goto LABEL_22;
          }

          v7 = *(v53 + 8 * v3);
        }

        v8 = v7;
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v10 = [v7 userInfo];
        if (v10)
        {
          v4 = v5;
          v11 = v10;
          v0 = MEMORY[0x1E69E69B8];
          sub_1B7CFE990();

          v12 = objc_allocWithZone(IMDIndexingContext);
          v13 = v1;
          v14 = sub_1B7CFE980();

          v15 = [v12 initWithDictionary_];

          v16 = [v15 fullReindex];
          if (v16)
          {
            sub_1B7CFF290();
            sub_1B7CFF2D0();
            sub_1B7CFF2E0();
            sub_1B7CFF2A0();
          }

          else
          {
          }

          v1 = v13;
          v5 = v4;
        }

        else
        {
        }

        ++v3;
      }

      while (v9 != v5);
      v17 = v57;
      v4 = v52;
      v3 = v49;
      if ((v57 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v51 = v0;
    v52 = v4;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

LABEL_25:
  if ((v17 & 0x4000000000000000) != 0)
  {
LABEL_34:
    [v4 setMessagesContributingToFullReindex_];
    v18 = sub_1B7CFF120();
    v19 = v51;
    if (!v18)
    {
      goto LABEL_35;
    }

    goto LABEL_27;
  }

  [v4 setMessagesContributingToFullReindex_];
  v18 = *(v17 + 16);
  v19 = v51;
  if (!v18)
  {
LABEL_35:

    v24 = 0;
    goto LABEL_36;
  }

LABEL_27:
  v20 = __OFSUB__(v18, 1);
  v21 = v18 - 1;
  if (v20)
  {
    __break(1u);
  }

  else if ((v17 & 0xC000000000000001) == 0)
  {
    if ((v21 & 0x8000000000000000) != 0)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v21 >= *(v17 + 16))
    {
LABEL_59:
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v21);
    }

    v22 = *(v17 + 8 * v21 + 32);
    goto LABEL_32;
  }

  v22 = MEMORY[0x1B8CAE380](v21, v17);
LABEL_32:
  v23 = v22;

  v24 = [v23 guid];

  if (!v24)
  {
    sub_1B7CFEA60();
    v24 = sub_1B7CFEA30();
  }

LABEL_36:
  [v4 setOldestFullReindexMessageGUID_];

  v25 = [objc_opt_self() queryProvider];
  v19[22] = v25;
  v26 = v3;
  if (v50)
  {
    v27 = sub_1B7CFF120();
  }

  else
  {
    v27 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v27)
  {
    v58 = MEMORY[0x1E69E7CC0];
    v21 = sub_1B7AECEEC(0, v27 & ~(v27 >> 63), 0);
    if ((v27 & 0x8000000000000000) == 0)
    {
      v56 = v25;
      if ((v26 & 0xC000000000000001) != 0)
      {
        v28 = v19;
        v29 = 0;
        do
        {
          MEMORY[0x1B8CAE380](v29, v28[18]);
          v30 = [swift_unknownObjectRetain() guid];
          v31 = sub_1B7CFEA60();
          v33 = v32;

          swift_unknownObjectRelease_n();
          v35 = *(v58 + 16);
          v34 = *(v58 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_1B7AECEEC((v34 > 1), v35 + 1, 1);
          }

          ++v29;
          *(v58 + 16) = v35 + 1;
          v36 = v58 + 16 * v35;
          *(v36 + 32) = v31;
          *(v36 + 40) = v33;
        }

        while (v27 != v29);
      }

      else
      {
        v28 = v19;
        v37 = (v19[18] + 32);
        do
        {
          v38 = *v37;
          v39 = [v38 guid];
          v40 = sub_1B7CFEA60();
          v42 = v41;

          v44 = *(v58 + 16);
          v43 = *(v58 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_1B7AECEEC((v43 > 1), v44 + 1, 1);
          }

          *(v58 + 16) = v44 + 1;
          v45 = v58 + 16 * v44;
          *(v45 + 32) = v40;
          *(v45 + 40) = v42;
          ++v37;
          --v27;
        }

        while (v27);
      }

      v19 = v28;
      v25 = v56;
      goto LABEL_52;
    }

    __break(1u);
    goto LABEL_58;
  }

LABEL_52:
  v46 = sub_1B7CFECC0();
  v19[23] = v46;

  v19[2] = v19;
  v19[3] = sub_1B7C43AFC;
  v47 = swift_continuation_init();
  v19[17] = sub_1B7C107FC(&unk_1EBA52450, &qword_1B7D0CA50);
  v19[10] = MEMORY[0x1E69E9820];
  v19[11] = 1107296256;
  v19[12] = sub_1B7C310BC;
  v19[13] = &unk_1F2FA41F8;
  v19[14] = v47;
  [v25 addMessageGUIDs:v46 context:v52 completionHandler:v19 + 10];
  v21 = (v19 + 2);

  return MEMORY[0x1EEE6DEC8](v21);
}

uint64_t sub_1B7C43AFC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1B7C43C80;
  }

  else
  {
    v2 = sub_1B7C43C0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7C43C0C()
{
  v1 = *(v0 + 184);

  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B7C43C80(uint64_t a1)
{
  v2 = v1[23];
  v3 = v1[21];
  swift_willThrow();

  swift_unknownObjectRelease();
  v4 = v1[1];

  return v4();
}

uint64_t sub_1B7C43D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7C43D2C, 0, 0);
}

uint64_t sub_1B7C43D2C()
{
  if (v0[20])
  {
    v1 = sub_1B7CFE980();
  }

  else
  {
    v1 = 0;
  }

  v2 = v0[18];
  v49 = [objc_allocWithZone(IMDIndexingContext) initForReindexing:0 reason:v0[19] runningViaBGST:1 userInfo:v1];
  v0[21] = v49;

  v48 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_60;
  }

  v51 = v2 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7CFF120())
  {
    v50 = v0;
    v4 = v2 & 0xC000000000000001;
    v5 = (v0[18] + 32);
    if (i)
    {
      v0 = 0;
      v2 = MEMORY[0x1E69E7CC0];
      do
      {
        v6 = v0;
        while (1)
        {
          if (v4)
          {
            v7 = MEMORY[0x1B8CAE380](v6, v50[18]);
            v0 = (v6 + 1);
            if (__OFADD__(v6, 1))
            {
              goto LABEL_57;
            }
          }

          else
          {
            if (v6 >= *(v51 + 16))
            {
              goto LABEL_58;
            }

            v7 = v5[v6];
            v0 = (v6 + 1);
            if (__OFADD__(v6, 1))
            {
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }
          }

          v8 = v7;
          v9 = [v8 userInfo];
          if (v9)
          {
            break;
          }

          ++v6;
          if (v0 == i)
          {
            goto LABEL_25;
          }
        }

        v10 = v9;
        v11 = sub_1B7CFE990();

        v12 = v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1B7CA278C(0, *(v2 + 16) + 1, 1, v2);
        }

        v14 = *(v2 + 16);
        v13 = *(v2 + 24);
        if (v14 >= v13 >> 1)
        {
          v2 = sub_1B7CA278C((v13 > 1), v14 + 1, 1, v2);
        }

        *(v2 + 16) = v14 + 1;
        *(v2 + 8 * v14 + 32) = v11;
        v4 = v12;
      }

      while (v0 != i);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

LABEL_25:
    v0 = *(v2 + 16);
    if (!v0)
    {
      break;
    }

    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v17 = v15;
    while (v17 < *(v2 + 16))
    {
      v18 = *(v2 + 32 + 8 * v17);
      v15 = (v17 + 1);
      v19 = objc_allocWithZone(IMDIndexingContext);

      v20 = sub_1B7CFE980();
      v21 = [v19 initWithDictionary_];

      LOBYTE(v20) = [v21 fullReindex];
      if (v20)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B7C313F0(0, *(v16 + 16) + 1, 1);
        }

        v23 = *(v16 + 16);
        v22 = *(v16 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1B7C313F0((v22 > 1), v23 + 1, 1);
        }

        *(v16 + 16) = v23 + 1;
        *(v16 + 8 * v23 + 32) = v18;
        if ((v0 - 1) != v17)
        {
          goto LABEL_27;
        }

        goto LABEL_39;
      }

      ++v17;
      if (v0 == v15)
      {
        goto LABEL_39;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v51 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_39:

  v24 = *(v16 + 16);

  [v49 setChatsContributingToFullReindex_];
  v25 = [objc_opt_self() queryProvider];
  v26 = v50;
  v50[22] = v25;
  if (v48)
  {
    v27 = sub_1B7CFF120();
  }

  else
  {
    v27 = *(v51 + 16);
  }

  if (v27)
  {
    v52 = MEMORY[0x1E69E7CC0];
    v28 = sub_1B7AECEEC(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v28);
    }

    if (v4)
    {
      v29 = 0;
      do
      {
        MEMORY[0x1B8CAE380](v29, v50[18]);
        v30 = [swift_unknownObjectRetain() guid];
        v31 = sub_1B7CFEA60();
        v33 = v32;

        swift_unknownObjectRelease_n();
        v35 = *(v52 + 16);
        v34 = *(v52 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_1B7AECEEC((v34 > 1), v35 + 1, 1);
        }

        ++v29;
        *(v52 + 16) = v35 + 1;
        v36 = v52 + 16 * v35;
        *(v36 + 32) = v31;
        *(v36 + 40) = v33;
      }

      while (v27 != v29);
    }

    else
    {
      do
      {
        v37 = *v5;
        v38 = [v37 guid];
        v39 = sub_1B7CFEA60();
        v41 = v40;

        v43 = *(v52 + 16);
        v42 = *(v52 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1B7AECEEC((v42 > 1), v43 + 1, 1);
        }

        *(v52 + 16) = v43 + 1;
        v44 = v52 + 16 * v43;
        *(v44 + 32) = v39;
        *(v44 + 40) = v41;
        ++v5;
        --v27;
      }

      while (v27);
    }

    v26 = v50;
  }

  v45 = sub_1B7CFECC0();
  v26[23] = v45;

  v26[2] = v26;
  v26[3] = sub_1B7C443C4;
  v46 = swift_continuation_init();
  v26[17] = sub_1B7C107FC(&unk_1EBA52450, &qword_1B7D0CA50);
  v26[10] = MEMORY[0x1E69E9820];
  v26[11] = 1107296256;
  v26[12] = sub_1B7C310BC;
  v26[13] = &unk_1F2FA4220;
  v26[14] = v46;
  [v25 addChatGUIDs:v45 context:v49 completionHandler:v26 + 10];
  v28 = (v26 + 2);

  return MEMORY[0x1EEE6DEC8](v28);
}

uint64_t sub_1B7C443C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1B7C45C38;
  }

  else
  {
    v2 = sub_1B7C45C30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7C444D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7C444F8, 0, 0);
}

uint64_t sub_1B7C444F8()
{
  v1 = v0[18];
  v2 = [objc_opt_self() queryProvider];
  v0[21] = v2;
  if (v1 >> 62)
  {
    v3 = sub_1B7CFF120();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v28 = MEMORY[0x1E69E7CC0];
    v4 = sub_1B7AECEEC(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v4);
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1B8CAE380](v5, v0[18]);
        v6 = [swift_unknownObjectRetain() guid];
        v7 = sub_1B7CFEA60();
        v9 = v8;

        swift_unknownObjectRelease_n();
        v11 = *(v28 + 16);
        v10 = *(v28 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B7AECEEC((v10 > 1), v11 + 1, 1);
        }

        ++v5;
        *(v28 + 16) = v11 + 1;
        v12 = v28 + 16 * v11;
        *(v12 + 32) = v7;
        *(v12 + 40) = v9;
      }

      while (v3 != v5);
    }

    else
    {
      v13 = (v0[18] + 32);
      do
      {
        v14 = *v13;
        v15 = [v14 guid];
        v16 = sub_1B7CFEA60();
        v18 = v17;

        v20 = *(v28 + 16);
        v19 = *(v28 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1B7AECEEC((v19 > 1), v20 + 1, 1);
        }

        *(v28 + 16) = v20 + 1;
        v21 = v28 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        ++v13;
        --v3;
      }

      while (v3);
    }
  }

  v22 = v0[20];
  v23 = sub_1B7CFECC0();
  v0[22] = v23;

  if (v22)
  {
    v24 = sub_1B7CFE980();
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_allocWithZone(IMDIndexingContext) initForReindexing:0 reason:v0[19] runningViaBGST:1 userInfo:v24];
  v0[23] = v25;

  v0[2] = v0;
  v0[3] = sub_1B7C44878;
  v26 = swift_continuation_init();
  v0[17] = sub_1B7C107FC(&unk_1EBA52450, &qword_1B7D0CA50);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7C310BC;
  v0[13] = &unk_1F2FA4248;
  v0[14] = v26;
  [v2 deleteMessageGUIDs:v23 context:v25 completionHandler:v0 + 10];
  v4 = (v0 + 2);

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t sub_1B7C44878()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1B7C449F8;
  }

  else
  {
    v2 = sub_1B7C44988;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7C44988()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B7C449F8(uint64_t a1)
{
  v2 = v1[23];
  v3 = v1[22];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1B7C44A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7C44AA4, 0, 0);
}

uint64_t sub_1B7C44AA4()
{
  v1 = v0[18];
  v2 = [objc_opt_self() queryProvider];
  v0[21] = v2;
  if (v1 >> 62)
  {
    v3 = sub_1B7CFF120();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v28 = MEMORY[0x1E69E7CC0];
    v4 = sub_1B7AECEEC(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v4);
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1B8CAE380](v5, v0[18]);
        v6 = [swift_unknownObjectRetain() guid];
        v7 = sub_1B7CFEA60();
        v9 = v8;

        swift_unknownObjectRelease_n();
        v11 = *(v28 + 16);
        v10 = *(v28 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B7AECEEC((v10 > 1), v11 + 1, 1);
        }

        ++v5;
        *(v28 + 16) = v11 + 1;
        v12 = v28 + 16 * v11;
        *(v12 + 32) = v7;
        *(v12 + 40) = v9;
      }

      while (v3 != v5);
    }

    else
    {
      v13 = (v0[18] + 32);
      do
      {
        v14 = *v13;
        v15 = [v14 guid];
        v16 = sub_1B7CFEA60();
        v18 = v17;

        v20 = *(v28 + 16);
        v19 = *(v28 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1B7AECEEC((v19 > 1), v20 + 1, 1);
        }

        *(v28 + 16) = v20 + 1;
        v21 = v28 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        ++v13;
        --v3;
      }

      while (v3);
    }
  }

  v22 = v0[20];
  v23 = sub_1B7CFECC0();
  v0[22] = v23;

  if (v22)
  {
    v24 = sub_1B7CFE980();
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_allocWithZone(IMDIndexingContext) initForReindexing:0 reason:v0[19] runningViaBGST:1 userInfo:v24];
  v0[23] = v25;

  v0[2] = v0;
  v0[3] = sub_1B7C43344;
  v26 = swift_continuation_init();
  v0[17] = sub_1B7C107FC(&unk_1EBA52450, &qword_1B7D0CA50);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7C310BC;
  v0[13] = &unk_1F2FA4270;
  v0[14] = v26;
  [v2 deleteAttachmentGUIDs:v23 context:v25 completionHandler:v0 + 10];
  v4 = (v0 + 2);

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t sub_1B7C44E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7C44E48, 0, 0);
}

uint64_t sub_1B7C44E48()
{
  v1 = v0[18];
  v2 = [objc_opt_self() queryProvider];
  v0[21] = v2;
  if (v1 >> 62)
  {
    v3 = sub_1B7CFF120();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v28 = MEMORY[0x1E69E7CC0];
    v4 = sub_1B7AECEEC(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v4);
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1B8CAE380](v5, v0[18]);
        v6 = [swift_unknownObjectRetain() guid];
        v7 = sub_1B7CFEA60();
        v9 = v8;

        swift_unknownObjectRelease_n();
        v11 = *(v28 + 16);
        v10 = *(v28 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B7AECEEC((v10 > 1), v11 + 1, 1);
        }

        ++v5;
        *(v28 + 16) = v11 + 1;
        v12 = v28 + 16 * v11;
        *(v12 + 32) = v7;
        *(v12 + 40) = v9;
      }

      while (v3 != v5);
    }

    else
    {
      v13 = (v0[18] + 32);
      do
      {
        v14 = *v13;
        v15 = [v14 guid];
        v16 = sub_1B7CFEA60();
        v18 = v17;

        v20 = *(v28 + 16);
        v19 = *(v28 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1B7AECEEC((v19 > 1), v20 + 1, 1);
        }

        *(v28 + 16) = v20 + 1;
        v21 = v28 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        ++v13;
        --v3;
      }

      while (v3);
    }
  }

  v22 = v0[20];
  v23 = sub_1B7CFECC0();
  v0[22] = v23;

  if (v22)
  {
    v24 = sub_1B7CFE980();
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_allocWithZone(IMDIndexingContext) initForReindexing:0 reason:v0[19] runningViaBGST:1 userInfo:v24];
  v0[23] = v25;

  v0[2] = v0;
  v0[3] = sub_1B7C43344;
  v26 = swift_continuation_init();
  v0[17] = sub_1B7C107FC(&unk_1EBA52450, &qword_1B7D0CA50);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7C310BC;
  v0[13] = &unk_1F2F9F690;
  v0[14] = v26;
  [v2 deleteChatGUIDs:v23 context:v25 completionBlock:v0 + 10];
  v4 = (v0 + 2);

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t sub_1B7C451C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7C451E8, 0, 0);
}

uint64_t sub_1B7C451E8()
{
  v37 = v0;
  v2 = v0 + 10;
  if (qword_1EBA50EC0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B7CFE420();
  v0[21] = sub_1B7AD9040(v3, qword_1EBA5DA38);
  v4 = sub_1B7CFE400();
  v5 = sub_1B7CFEED0();
  if (!os_log_type_enabled(v4, v5))
  {
    goto LABEL_6;
  }

  v6 = swift_slowAlloc();
  v1 = swift_slowAlloc();
  v36 = v1;
  *v6 = 136315394;
  if (qword_1EDBE2DF0 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v7 = v0[20];
    v8 = *(qword_1EDBE79B8 + 24);
    v9 = *(qword_1EDBE79B8 + 32);

    v10 = sub_1B7AED1B8(v8, v9, &v36);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v0[10] = v7;
    sub_1B7C3D63C();
    v11 = sub_1B7CFF090();
    v13 = sub_1B7AED1B8(v11, v12, &v36);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_1B7AD5000, v4, v5, "Running %s for reason %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB0E70](v1, -1, -1);
    MEMORY[0x1B8CB0E70](v6, -1, -1);
LABEL_6:

    v14 = v0[19];
    v4 = [objc_opt_self() synchronousDatabase];
    v0[22] = v4;
    v6 = v14 >> 62 ? sub_1B7CFF120() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      break;
    }

    v36 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v6 & ~(v6 >> 63), 0);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v15 = v36;
      if ((v14 & 0xC000000000000001) != 0)
      {
        v16 = 0;
        do
        {
          MEMORY[0x1B8CAE380](v16, v0[19]);
          v17 = [swift_unknownObjectRetain() guid];
          v18 = sub_1B7CFEA60();
          v20 = v19;

          swift_unknownObjectRelease_n();
          v36 = v15;
          v22 = *(v15 + 16);
          v21 = *(v15 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1B7AECEEC((v21 > 1), v22 + 1, 1);
            v15 = v36;
          }

          ++v16;
          *(v15 + 16) = v22 + 1;
          v23 = v15 + 16 * v22;
          *(v23 + 32) = v18;
          *(v23 + 40) = v20;
        }

        while (v6 != v16);
      }

      else
      {
        v24 = (v0[19] + 32);
        do
        {
          v25 = *v24;
          v26 = [v25 guid];
          v27 = sub_1B7CFEA60();
          v29 = v28;

          v36 = v15;
          v31 = *(v15 + 16);
          v30 = *(v15 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_1B7AECEEC((v30 > 1), v31 + 1, 1);
            v15 = v36;
          }

          *(v15 + 16) = v31 + 1;
          v32 = v15 + 16 * v31;
          *(v32 + 32) = v27;
          *(v32 + 40) = v29;
          ++v24;
          --v6;
        }

        while (v6);
      }

      v2 = v0 + 10;
      break;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  v33 = sub_1B7CFECC0();
  v0[23] = v33;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B7C456A8;
  v34 = swift_continuation_init();
  v0[17] = sub_1B7C107FC(&qword_1EBA52658, &qword_1B7D0CD58);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7C4593C;
  v0[13] = &unk_1F2F9F668;
  v0[14] = v34;
  [v4 reparentMessagesUsingChatIDWithGUIDs:v33 completionHandler:v2];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7C456A8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7C45788, 0, 0);
}

uint64_t sub_1B7C45788()
{
  v1 = v0[23];
  v2 = v0[18];
  swift_unknownObjectRelease();

  if (*(v2 + 16))
  {

    v3 = sub_1B7CFE400();
    v4 = sub_1B7CFEED0();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[19];
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      *(v7 + 4) = *(v2 + 16);

      *(v7 + 12) = 2048;
      if (v6 >> 62)
      {
        v8 = sub_1B7CFF120();
      }

      else
      {
        v8 = *((v0[19] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v7 + 14) = v8;

      _os_log_impl(&dword_1B7AD5000, v3, v4, "Successfully reparented %ld out of %ld messages.", v7, 0x16u);
      MEMORY[0x1B8CB0E70](v7, -1, -1);
    }

    else
    {
    }

    v9 = sub_1B7CFECC0();

    IMDCoreSpotlightReindexMessages(v9, 1016, 0);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B7C4593C(uint64_t a1, uint64_t a2)
{
  v2 = *sub_1B7AE9124((a1 + 32), *(a1 + 56));
  **(*(v2 + 64) + 40) = sub_1B7CFECE0();

  return MEMORY[0x1EEE6DED8](v2);
}

unint64_t sub_1B7C459AC()
{
  result = qword_1EDBE2AB8;
  if (!qword_1EDBE2AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBE2AB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLConnectionMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLConnectionMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7C45B4C()
{
  result = qword_1EBA52660;
  if (!qword_1EBA52660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52660);
  }

  return result;
}

unint64_t sub_1B7C45BA4()
{
  result = qword_1EBA52668;
  if (!qword_1EBA52668)
  {
    sub_1B7C1091C(&unk_1EBA52670, qword_1B7D0CDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52668);
  }

  return result;
}

uint64_t static IMPersistentTaskFlag.spotlightFlags.getter()
{
  if (qword_1EDBE2DE0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B7C45CA4(void *a1, uint64_t (*a2)(void))
{
  if (qword_1EDBE3808 != -1)
  {
    swift_once();
  }

  v4 = sub_1B7CFE420();
  sub_1B7AD9040(v4, qword_1EDBE79D0);
  v5 = a1;
  v6 = sub_1B7CFE400();
  v7 = sub_1B7CFEEF0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7AD5000, v6, v7, "Error in synchronous proxy for ptask queries: %@", v8, 0xCu);
    sub_1B7C20434(v9);
    MEMORY[0x1B8CB0E70](v9, -1, -1);
    MEMORY[0x1B8CB0E70](v8, -1, -1);
  }

  return a2();
}

uint64_t sub_1B7C45DFC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B7C4803C;
  *(v7 + 24) = v6;
  if (a1 && (v51 = &unk_1F2FDF1C0, (v8 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      aBlock[4] = sub_1B7C48050;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B7C4E668;
      aBlock[3] = &unk_1F2FA4530;
      v10 = _Block_copy(aBlock);
      swift_retain_n();

      swift_unknownObjectRetain();

      v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v10);
      sub_1B7CFF0A0();
      swift_unknownObjectRelease();

      sub_1B7C255E0(&v49, v50);
      sub_1B7AED284(v50, aBlock);
      v12 = sub_1B7C107FC(&unk_1EBA52710, &unk_1B7D0CEB0);
      if (swift_dynamicCast())
      {
        sub_1B7AE9168(v50);
        swift_unknownObjectRelease();

        v13 = v49;

        return v13;
      }

      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v38 = v12;
      v39 = qword_1EDBE3808;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_1B7CFE420();
      sub_1B7AD9040(v40, qword_1EDBE79D0);
      v41 = v27;
      v42 = sub_1B7CFE400();
      v43 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v27;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_1B7AD5000, v42, v43, "Error in synchronous proxy for ptask queries: %@", v44, 0xCu);
        sub_1B7C20434(v45);
        MEMORY[0x1B8CB0E70](v45, -1, -1);
        MEMORY[0x1B8CB0E70](v44, -1, -1);
      }

      a2();

      swift_unknownObjectRelease();

      sub_1B7AE9168(v50);
    }

    else
    {
      swift_retain_n();

      swift_unknownObjectRetain();
      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v28 = 1;
      v29 = qword_1EDBE3808;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_1B7CFE420();
      sub_1B7AD9040(v30, qword_1EDBE79D0);
      v31 = v27;
      v32 = sub_1B7CFE400();
      v33 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = v27;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_1B7AD5000, v32, v33, "Error in synchronous proxy for ptask queries: %@", v34, 0xCu);
        sub_1B7C20434(v35);
        MEMORY[0x1B8CB0E70](v35, -1, -1);
        MEMORY[0x1B8CB0E70](v34, -1, -1);
      }

      a2();
      swift_unknownObjectRelease();
    }

    v26 = v27;
  }

  else
  {
    sub_1B7C47EDC();
    v15 = swift_allocError();
    *v16 = 0;
    v17 = qword_1EDBE3808;
    swift_retain_n();

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_1B7CFE420();
    sub_1B7AD9040(v18, qword_1EDBE79D0);
    v19 = v15;
    v20 = sub_1B7CFE400();
    v21 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v15;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B7AD5000, v20, v21, "Error in synchronous proxy for ptask queries: %@", v22, 0xCu);
      sub_1B7C20434(v23);
      MEMORY[0x1B8CB0E70](v23, -1, -1);
      MEMORY[0x1B8CB0E70](v22, -1, -1);
    }

    a2();

    v26 = v15;
  }

  return 0;
}

uint64_t sub_1B7C4648C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B7C4803C;
  *(v7 + 24) = v6;
  if (a1 && (v51 = &unk_1F2FDF1C0, (v8 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      aBlock[4] = sub_1B7C48050;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B7C4E668;
      aBlock[3] = &unk_1F2FA44B8;
      v10 = _Block_copy(aBlock);
      swift_retain_n();

      swift_unknownObjectRetain();

      v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v10);
      sub_1B7CFF0A0();
      swift_unknownObjectRelease();

      sub_1B7C255E0(&v49, v50);
      sub_1B7AED284(v50, aBlock);
      v12 = sub_1B7C107FC(&qword_1EBA52708, &unk_1B7D0CEA0);
      if (swift_dynamicCast())
      {
        sub_1B7AE9168(v50);
        swift_unknownObjectRelease();

        v13 = v49;

        return v13;
      }

      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v38 = v12;
      v39 = qword_1EDBE3808;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_1B7CFE420();
      sub_1B7AD9040(v40, qword_1EDBE79D0);
      v41 = v27;
      v42 = sub_1B7CFE400();
      v43 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v27;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_1B7AD5000, v42, v43, "Error in synchronous proxy for ptask queries: %@", v44, 0xCu);
        sub_1B7C20434(v45);
        MEMORY[0x1B8CB0E70](v45, -1, -1);
        MEMORY[0x1B8CB0E70](v44, -1, -1);
      }

      a2();

      swift_unknownObjectRelease();

      sub_1B7AE9168(v50);
    }

    else
    {
      swift_retain_n();

      swift_unknownObjectRetain();
      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v28 = 1;
      v29 = qword_1EDBE3808;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_1B7CFE420();
      sub_1B7AD9040(v30, qword_1EDBE79D0);
      v31 = v27;
      v32 = sub_1B7CFE400();
      v33 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = v27;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_1B7AD5000, v32, v33, "Error in synchronous proxy for ptask queries: %@", v34, 0xCu);
        sub_1B7C20434(v35);
        MEMORY[0x1B8CB0E70](v35, -1, -1);
        MEMORY[0x1B8CB0E70](v34, -1, -1);
      }

      a2();
      swift_unknownObjectRelease();
    }

    v26 = v27;
  }

  else
  {
    sub_1B7C47EDC();
    v15 = swift_allocError();
    *v16 = 0;
    v17 = qword_1EDBE3808;
    swift_retain_n();

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_1B7CFE420();
    sub_1B7AD9040(v18, qword_1EDBE79D0);
    v19 = v15;
    v20 = sub_1B7CFE400();
    v21 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v15;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B7AD5000, v20, v21, "Error in synchronous proxy for ptask queries: %@", v22, 0xCu);
      sub_1B7C20434(v23);
      MEMORY[0x1B8CB0E70](v23, -1, -1);
      MEMORY[0x1B8CB0E70](v22, -1, -1);
    }

    a2();

    v26 = v15;
  }

  return 0;
}

uint64_t sub_1B7C46B1C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B7C4803C;
  *(v7 + 24) = v6;
  if (a1 && (v51 = &unk_1F2FDF1C0, (v8 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      aBlock[4] = sub_1B7C48050;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B7C4E668;
      aBlock[3] = &unk_1F2FA4440;
      v10 = _Block_copy(aBlock);
      swift_retain_n();

      swift_unknownObjectRetain();

      v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v10);
      sub_1B7CFF0A0();
      swift_unknownObjectRelease();

      sub_1B7C255E0(&v49, v50);
      sub_1B7AED284(v50, aBlock);
      v12 = sub_1B7C107FC(&qword_1EBA52700, &unk_1B7D0CE90);
      if (swift_dynamicCast())
      {
        sub_1B7AE9168(v50);
        swift_unknownObjectRelease();

        v13 = v49;

        return v13;
      }

      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v38 = v12;
      v39 = qword_1EDBE3808;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_1B7CFE420();
      sub_1B7AD9040(v40, qword_1EDBE79D0);
      v41 = v27;
      v42 = sub_1B7CFE400();
      v43 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v27;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_1B7AD5000, v42, v43, "Error in synchronous proxy for ptask queries: %@", v44, 0xCu);
        sub_1B7C20434(v45);
        MEMORY[0x1B8CB0E70](v45, -1, -1);
        MEMORY[0x1B8CB0E70](v44, -1, -1);
      }

      a2();

      swift_unknownObjectRelease();

      sub_1B7AE9168(v50);
    }

    else
    {
      swift_retain_n();

      swift_unknownObjectRetain();
      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v28 = 1;
      v29 = qword_1EDBE3808;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_1B7CFE420();
      sub_1B7AD9040(v30, qword_1EDBE79D0);
      v31 = v27;
      v32 = sub_1B7CFE400();
      v33 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = v27;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_1B7AD5000, v32, v33, "Error in synchronous proxy for ptask queries: %@", v34, 0xCu);
        sub_1B7C20434(v35);
        MEMORY[0x1B8CB0E70](v35, -1, -1);
        MEMORY[0x1B8CB0E70](v34, -1, -1);
      }

      a2();
      swift_unknownObjectRelease();
    }

    v26 = v27;
  }

  else
  {
    sub_1B7C47EDC();
    v15 = swift_allocError();
    *v16 = 0;
    v17 = qword_1EDBE3808;
    swift_retain_n();

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_1B7CFE420();
    sub_1B7AD9040(v18, qword_1EDBE79D0);
    v19 = v15;
    v20 = sub_1B7CFE400();
    v21 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v15;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B7AD5000, v20, v21, "Error in synchronous proxy for ptask queries: %@", v22, 0xCu);
      sub_1B7C20434(v23);
      MEMORY[0x1B8CB0E70](v23, -1, -1);
      MEMORY[0x1B8CB0E70](v22, -1, -1);
    }

    a2();

    v26 = v15;
  }

  return 0;
}

uint64_t sub_1B7C471AC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B7C4803C;
  *(v7 + 24) = v6;
  if (a1 && (v51 = &unk_1F2FDF1C0, (v8 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      aBlock[4] = sub_1B7C48050;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B7C4E668;
      aBlock[3] = &unk_1F2FA43C8;
      v10 = _Block_copy(aBlock);
      swift_retain_n();

      swift_unknownObjectRetain();

      v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v10);
      sub_1B7CFF0A0();
      swift_unknownObjectRelease();

      sub_1B7C255E0(&v49, v50);
      sub_1B7AED284(v50, aBlock);
      v12 = sub_1B7C107FC(&qword_1EBA526F8, &unk_1B7D0CE80);
      if (swift_dynamicCast())
      {
        sub_1B7AE9168(v50);
        swift_unknownObjectRelease();

        v13 = v49;

        return v13;
      }

      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v38 = v12;
      v39 = qword_1EDBE3808;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_1B7CFE420();
      sub_1B7AD9040(v40, qword_1EDBE79D0);
      v41 = v27;
      v42 = sub_1B7CFE400();
      v43 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v27;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_1B7AD5000, v42, v43, "Error in synchronous proxy for ptask queries: %@", v44, 0xCu);
        sub_1B7C20434(v45);
        MEMORY[0x1B8CB0E70](v45, -1, -1);
        MEMORY[0x1B8CB0E70](v44, -1, -1);
      }

      a2();

      swift_unknownObjectRelease();

      sub_1B7AE9168(v50);
    }

    else
    {
      swift_retain_n();

      swift_unknownObjectRetain();
      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v28 = 1;
      v29 = qword_1EDBE3808;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_1B7CFE420();
      sub_1B7AD9040(v30, qword_1EDBE79D0);
      v31 = v27;
      v32 = sub_1B7CFE400();
      v33 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = v27;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_1B7AD5000, v32, v33, "Error in synchronous proxy for ptask queries: %@", v34, 0xCu);
        sub_1B7C20434(v35);
        MEMORY[0x1B8CB0E70](v35, -1, -1);
        MEMORY[0x1B8CB0E70](v34, -1, -1);
      }

      a2();
      swift_unknownObjectRelease();
    }

    v26 = v27;
  }

  else
  {
    sub_1B7C47EDC();
    v15 = swift_allocError();
    *v16 = 0;
    v17 = qword_1EDBE3808;
    swift_retain_n();

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_1B7CFE420();
    sub_1B7AD9040(v18, qword_1EDBE79D0);
    v19 = v15;
    v20 = sub_1B7CFE400();
    v21 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v15;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B7AD5000, v20, v21, "Error in synchronous proxy for ptask queries: %@", v22, 0xCu);
      sub_1B7C20434(v23);
      MEMORY[0x1B8CB0E70](v23, -1, -1);
      MEMORY[0x1B8CB0E70](v22, -1, -1);
    }

    a2();

    v26 = v15;
  }

  return 0;
}

uint64_t sub_1B7C4783C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B7C47ECC;
  *(v7 + 24) = v6;
  if (a1 && (v51 = &unk_1F2FDF1C0, (v8 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      aBlock[4] = sub_1B7C47ED4;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B7C4E668;
      aBlock[3] = &unk_1F2F9F8C0;
      v10 = _Block_copy(aBlock);
      swift_retain_n();

      swift_unknownObjectRetain();

      v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v10);
      sub_1B7CFF0A0();
      swift_unknownObjectRelease();

      sub_1B7C255E0(&v49, v50);
      sub_1B7AED284(v50, aBlock);
      v12 = sub_1B7C107FC(&qword_1EBA526F0, &unk_1B7D0CE70);
      if (swift_dynamicCast())
      {
        sub_1B7AE9168(v50);
        swift_unknownObjectRelease();

        v13 = v49;

        return v13;
      }

      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v38 = v12;
      v39 = qword_1EDBE3808;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_1B7CFE420();
      sub_1B7AD9040(v40, qword_1EDBE79D0);
      v41 = v27;
      v42 = sub_1B7CFE400();
      v43 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v27;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_1B7AD5000, v42, v43, "Error in synchronous proxy for ptask queries: %@", v44, 0xCu);
        sub_1B7C20434(v45);
        MEMORY[0x1B8CB0E70](v45, -1, -1);
        MEMORY[0x1B8CB0E70](v44, -1, -1);
      }

      a2();

      swift_unknownObjectRelease();

      sub_1B7AE9168(v50);
    }

    else
    {
      swift_retain_n();

      swift_unknownObjectRetain();
      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v28 = 1;
      v29 = qword_1EDBE3808;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_1B7CFE420();
      sub_1B7AD9040(v30, qword_1EDBE79D0);
      v31 = v27;
      v32 = sub_1B7CFE400();
      v33 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = v27;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_1B7AD5000, v32, v33, "Error in synchronous proxy for ptask queries: %@", v34, 0xCu);
        sub_1B7C20434(v35);
        MEMORY[0x1B8CB0E70](v35, -1, -1);
        MEMORY[0x1B8CB0E70](v34, -1, -1);
      }

      a2();
      swift_unknownObjectRelease();
    }

    v26 = v27;
  }

  else
  {
    sub_1B7C47EDC();
    v15 = swift_allocError();
    *v16 = 0;
    v17 = qword_1EDBE3808;
    swift_retain_n();

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_1B7CFE420();
    sub_1B7AD9040(v18, qword_1EDBE79D0);
    v19 = v15;
    v20 = sub_1B7CFE400();
    v21 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v15;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B7AD5000, v20, v21, "Error in synchronous proxy for ptask queries: %@", v22, 0xCu);
      sub_1B7C20434(v23);
      MEMORY[0x1B8CB0E70](v23, -1, -1);
      MEMORY[0x1B8CB0E70](v22, -1, -1);
    }

    a2();

    v26 = v15;
  }

  return 0;
}

unint64_t sub_1B7C47EDC()
{
  result = qword_1EBA52680;
  if (!qword_1EBA52680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52680);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SynchronousProxyError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SynchronousProxyError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B7C47FE0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B7C47FF8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1B7C48054()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EBA52720);
  sub_1B7AD9040(v0, qword_1EBA52720);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

id AskToParser.init(url:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1B7CFE500();
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_1B7CFDFF0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  sub_1B7CFE4F0();
  sub_1B7C487D8(a1, &v2[OBJC_IVAR___IMDAskToParser_url]);
  sub_1B7C487D8(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B7AEE190(v10, &qword_1EBA51FA0, &qword_1B7D0A6D0);
    if (qword_1EBA515B8 != -1)
    {
      swift_once();
    }

    v16 = sub_1B7CFE420();
    sub_1B7AD9040(v16, qword_1EBA52720);
    v17 = sub_1B7CFE400();
    v18 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = ObjectType;
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1B7AD5000, v17, v18, "Provided payload URL was nil", v20, 2u);
      v21 = v20;
      ObjectType = v19;
      MEMORY[0x1B8CB0E70](v21, -1, -1);
    }

    *&v2[OBJC_IVAR___IMDAskToParser_payload] = 0;
  }

  else
  {
    v26 = v5;
    v27 = ObjectType;
    (*(v12 + 32))(v15, v10, v11);
    sub_1B7CFE4F0();
    sub_1B7CFE520();
    v22 = MEMORY[0x1E698CFD0];
    sub_1B7C493B0(&qword_1EBA52740, MEMORY[0x1E698CFD0], MEMORY[0x1E698CFE0]);
    sub_1B7C493B0(&qword_1EBA52748, v22, MEMORY[0x1E698CFD8]);
    sub_1B7CFE4D0();
    (*(v28 + 8))(v7, v26);
    (*(v12 + 8))(v15, v11);
    *&v2[OBJC_IVAR___IMDAskToParser_payload] = v29;
    ObjectType = v27;
  }

  v30.receiver = v2;
  v30.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v30, sel_init);
  sub_1B7AEE190(a1, &qword_1EBA51FA0, &qword_1B7D0A6D0);
  return v23;
}

uint64_t sub_1B7C487D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AskToParser.isValid.getter()
{
  v1 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_1B7CFDFF0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C487D8(v0 + OBJC_IVAR___IMDAskToParser_url, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1B7AEE190(v3, &qword_1EBA51FA0, &qword_1B7D0A6D0);
    v8 = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v8 = sub_1B7CFE4E0();
    (*(v5 + 8))(v7, v4);
  }

  return v8 & 1;
}

uint64_t AskToParser.notificationText.getter()
{
  if (!*(v0 + OBJC_IVAR___IMDAskToParser_payload))
  {
    return 0;
  }

  v1 = sub_1B7CFE510();
  v2 = sub_1B7CFE430();

  return v2;
}

id sub_1B7C48DE4(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*&a1[OBJC_IVAR___IMDAskToParser_payload])
  {
    v4 = a1;
    v5 = sub_1B7CFE510();
    a3();

    v6 = sub_1B7CFEA30();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1B7C48E90(uint64_t (*a1)(void))
{
  if (!*(v1 + OBJC_IVAR___IMDAskToParser_payload))
  {
    return 0;
  }

  v3 = sub_1B7CFE510();
  v4 = a1();

  return v4;
}

id AskToParser.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AskToParser.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1B7C49054(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B7C490A0(a1, a2);
  sub_1B7C491D0(&unk_1F2FA1600);
  return v3;
}

void *sub_1B7C490A0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B7CD95C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B7CFF280();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B7CFEBA0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B7CD95C0(v10, 0);
        result = sub_1B7CFF1D0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_1B7C491D0(uint64_t a1)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1B7C492BC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *sub_1B7C492BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA52768, &qword_1B7D0CFA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B7C493B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AskToParser(uint64_t a1)
{
  result = qword_1EBA52750;
  if (!qword_1EBA52750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7C4944C(uint64_t a1)
{
  sub_1B7CFE500();
  if (v1 <= 0x3F)
  {
    sub_1B7C4954C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B7C4954C(uint64_t a1)
{
  if (!qword_1EBA52760)
  {
    sub_1B7CFDFF0();
    v1 = sub_1B7CFEFF0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA52760);
    }
  }
}

void *sub_1B7C495A4()
{
  sub_1B7C107FC(&qword_1EBA52770, &qword_1B7D0CFA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7D0CB70;
  v1 = type metadata accessor for MessageRecord(0);
  v2 = sub_1B7C49770(&qword_1EDBE5658, type metadata accessor for MessageRecord, &unk_1B7D0BB40);
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v3 = type metadata accessor for ChatRecord(0);
  v4 = sub_1B7C49770(&qword_1EDBE5708, type metadata accessor for ChatRecord, &unk_1B7D0F570);
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = type metadata accessor for ChatLookupRecord(0);
  v6 = sub_1B7C49770(&qword_1EDBE3F90, type metadata accessor for ChatLookupRecord, &unk_1B7D12950);
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = type metadata accessor for SyncChatSliceRecord(0);
  v8 = sub_1B7C49770(&qword_1EDBE3CA0, type metadata accessor for SyncChatSliceRecord, &unk_1B7D10260);
  *(inited + 80) = v7;
  *(inited + 88) = v8;
  v9 = type metadata accessor for ChatServiceRecord(0);
  v10 = sub_1B7C49770(&qword_1EDBE3F10, type metadata accessor for ChatServiceRecord, &unk_1B7D0AF20);
  *(inited + 96) = v9;
  *(inited + 104) = v10;
  type metadata accessor for SQLDatabaseSchema();
  swift_allocObject();
  result = sub_1B7AE70D4(inited);
  qword_1EDBE79E8 = result;
  return result;
}

uint64_t sub_1B7C49770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id static IMDLegacyRecordBridge.prewarm()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [ObjCClassFromMetadata messageRecordDescriptor];

  return [ObjCClassFromMetadata chatRecordDescriptor];
}

void sub_1B7C49AEC(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  IMDDropAllTriggers(v8, 1);
  v3 = v8[0];
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  sub_1B7C1542C(a1, v4);
  v6 = *(v5 + 16);
  v7 = v3;
  v6(v4, v5);
  if (!v1)
  {
    v8[0] = v7;
    IMDCreateTriggers(v8, 1);
  }
}

IMDLegacyRecordBridge __swiftcall IMDLegacyRecordBridge.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t _sSo21IMDLegacyRecordBridgeC14IMDPersistenceE7migrate11fromVersion5usingS2i_SpySo20CSDBSqliteConnectionVGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = v36 - v8;
  v11 = *(v10 + 36);
  v12 = sub_1B7CFE420();
  v13 = *(*(v12 - 8) + 56);
  v42 = v12;
  result = v13(&v9[v11], 1, 1);
  *v9 = 1;
  *(v9 + 1) = 0;
  *(v9 + 8) = 1;
  v15 = *(a2 + 8);
  if (!v15)
  {
    goto LABEL_30;
  }

  sub_1B7AE3EA4(v9, v6);
  type metadata accessor for SQLConnection(0);
  v16 = swift_allocObject();
  v17 = (v16 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
  v18 = MEMORY[0x1E69E7CC8];
  *v17 = MEMORY[0x1E69E7CC8];
  v17[1] = v18;
  v17[2] = 32;
  *(v16 + 16) = v15;
  *(v16 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
  v43 = v16;
  result = sub_1B7AE3EA4(v6, v16 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
  if ((v6[2] & 1) == 0)
  {
    v19 = v6[1] * 1000.0;
    if (COERCE__INT64(fabs(v19)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v19 > -2147483650.0)
    {
      if (v19 < 2147483650.0)
      {
        sqlite3_busy_timeout(v15, v19);
        goto LABEL_7;
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

LABEL_7:
  sub_1B7C4BDE4(v6, type metadata accessor for SQLConnectionConfiguration);
  if (qword_1EBA50F70 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v20 = qword_1EBA5DA88;
    v21 = qword_1EBA5DA90;
    v22 = *(qword_1EBA5DA90 + 16);
    if (!v22)
    {
      break;
    }

    v36[1] = qword_1EBA5DA80;
    v37 = v9;

    v23 = 0;
    v24 = v21 + 40;
    *&v25 = 134217984;
    v39 = v25;
    v26 = a1;
    v38 = a1;
    v40 = v21;
    v41 = v20;
    while (v23 < *(v20 + 16))
    {
      if (v23 >= v22)
      {
        goto LABEL_25;
      }

      v27 = *(v20 + 8 * v23 + 32);
      if (v27 > a1)
      {
        v28 = *(v24 - 8);
        v29 = qword_1EBA50EB8;
        swift_retain_n();
        if (v29 != -1)
        {
          swift_once();
        }

        sub_1B7AD9040(v42, qword_1EBA5DA20);
        v30 = sub_1B7CFE400();
        v31 = sub_1B7CFEF00();
        if (os_log_type_enabled(v30, v31))
        {
          v9 = swift_slowAlloc();
          *v9 = v39;
          *(v9 + 4) = v27;
          _os_log_impl(&dword_1B7AD5000, v30, v31, "Starting migration step %ld", v9, 0xCu);
          MEMORY[0x1B8CB0E70](v9, -1, -1);
        }

        v44 = v43;
        v28(&v44);
        v32 = sub_1B7CFE400();
        v33 = sub_1B7CFEF00();
        v34 = os_log_type_enabled(v32, v33);
        v35 = v40;
        if (v34)
        {
          v9 = swift_slowAlloc();
          *v9 = v39;
          *(v9 + 4) = v27;
          _os_log_impl(&dword_1B7AD5000, v32, v33, "Completed migration step %ld", v9, 0xCu);
          MEMORY[0x1B8CB0E70](v9, -1, -1);
        }

        v22 = *(v35 + 16);
        v26 = v27;
        a1 = v38;
        v20 = v41;
      }

      ++v23;
      v24 += 16;
      if (v23 >= v22)
      {

        a1 = v26;
        v9 = v37;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_23:

  sub_1B7C4BDE4(v9, type metadata accessor for SQLConnectionConfiguration);

  return a1;
}

void _sSo21IMDLegacyRecordBridgeC14IMDPersistenceE12createTables5usingSbSpySo20CSDBSqliteConnectionVG_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for SQLConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v60 - v6;
  v9 = *(v8 + 36);
  v10 = sub_1B7CFE420();
  v11 = *(*(v10 - 8) + 56);
  v65 = v10;
  v11(&v7[v9], 1, 1);
  *v7 = 1;
  *(v7 + 1) = 0;
  *(v7 + 8) = 1;
  v12 = *(a1 + 8);
  if (!v12)
  {
LABEL_43:
    __break(1u);
    return;
  }

  sub_1B7AE3EA4(v7, v4);
  type metadata accessor for SQLConnection(0);
  v13 = swift_allocObject();
  v14 = (v13 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
  v15 = MEMORY[0x1E69E7CC8];
  *v14 = MEMORY[0x1E69E7CC8];
  v14[1] = v15;
  v14[2] = 32;
  *(v13 + 16) = v12;
  *(v13 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
  v16 = &OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration;
  sub_1B7AE3EA4(v4, v13 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
  if (v4[2])
  {
    goto LABEL_7;
  }

  v17 = v4[1] * 1000.0;
  if (COERCE__INT64(fabs(v17)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v17 <= -2147483650.0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:

LABEL_42:

    __break(1u);
    goto LABEL_43;
  }

  if (v17 >= 2147483650.0)
  {
    goto LABEL_40;
  }

  sqlite3_busy_timeout(v12, v17);
LABEL_7:
  v60 = v7;
  sub_1B7C4BDE4(v4, type metadata accessor for SQLConnectionConfiguration);
  if (qword_1EBA515E0 != -1)
  {
LABEL_37:
    swift_once();
  }

  v19 = qword_1EBA5DB28;
  v63 = *(qword_1EBA5DB28 + 16);
  if (v63)
  {
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v20 = 0;
    v16 = 0;
    v64 = v19 + 32;
    *&v18 = 136315138;
    v62 = v18;
    while (1)
    {
      if (v20 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v66 = *(v64 + 16 * v20);
      sub_1B7AD9040(v65, qword_1EBA5DA20);
      v21 = sub_1B7CFE400();
      v22 = sub_1B7CFEF00();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v61 = 0;
        v25 = v24;
        *&v67 = v24;
        *v23 = v62;
        v26 = (*(*(&v66 + 1) + 16))();
        v28 = v19;
        v29 = v13;
        v30 = sub_1B7AED1B8(v26, v27, &v67);

        *(v23 + 4) = v30;
        v13 = v29;
        v19 = v28;
        _os_log_impl(&dword_1B7AD5000, v21, v22, "Starting create table step for %s", v23, 0xCu);
        sub_1B7AE9168(v25);
        v31 = v25;
        v16 = v61;
        MEMORY[0x1B8CB0E70](v31, -1, -1);
        MEMORY[0x1B8CB0E70](v23, -1, -1);
      }

      if (qword_1EDBE3F50 != -1)
      {
        swift_once();
      }

      v32 = *(qword_1EDBE79E8 + 32);
      v67 = v66;

      sub_1B7C107FC(&qword_1EBA524C0, &qword_1B7D0CAA8);
      v33 = sub_1B7CFEAB0();
      if (!*(v32 + 16))
      {
        goto LABEL_41;
      }

      v35 = sub_1B7AE11D0(v33, v34);
      v37 = v36;

      if ((v37 & 1) == 0)
      {
        goto LABEL_42;
      }

      v38 = *(*(v32 + 56) + 8 * v35);

      v39 = sub_1B7C21090(v38);
      sub_1B7AE3B2C(v39, v40, 1);
      if (v16)
      {
        break;
      }

      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

      v41 = sub_1B7CFE400();
      v42 = sub_1B7CFEF00();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&v67 = v44;
        *v43 = v62;
        v45 = (*(*(&v66 + 1) + 16))();
        v47 = sub_1B7AED1B8(v45, v46, &v67);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_1B7AD5000, v41, v42, "Completed create table step for %s", v43, 0xCu);
        sub_1B7AE9168(v44);
        MEMORY[0x1B8CB0E70](v44, -1, -1);
        MEMORY[0x1B8CB0E70](v43, -1, -1);
      }

      if (v63 == ++v20)
      {
        swift_setDeallocating();
        if (*(v13 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) == 1)
        {
          sqlite3_close_v2(*(v13 + 16));
        }

        sub_1B7C4BDE4(v13 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration, type metadata accessor for SQLConnectionConfiguration);

        goto LABEL_35;
      }
    }

    v48 = v16;
    v49 = sub_1B7CFE400();
    v50 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v67 = v53;
      *v51 = 136315394;
      v54 = (*(*(&v66 + 1) + 16))();
      v56 = sub_1B7AED1B8(v54, v55, &v67);

      *(v51 + 4) = v56;
      *(v51 + 12) = 2112;
      v57 = v16;
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 14) = v58;
      *v52 = v58;
      _os_log_impl(&dword_1B7AD5000, v49, v50, "Error during create table step for %s: %@", v51, 0x16u);
      sub_1B7C20434(v52);
      MEMORY[0x1B8CB0E70](v52, -1, -1);
      sub_1B7AE9168(v53);
      MEMORY[0x1B8CB0E70](v53, -1, -1);
      MEMORY[0x1B8CB0E70](v51, -1, -1);
      swift_setDeallocating();
      if (*(v13 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) == 1)
      {
        sqlite3_close_v2(*(v13 + 16));
      }

      sub_1B7C4BDE4(v13 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration, type metadata accessor for SQLConnectionConfiguration);

      swift_deallocClassInstance();
    }

    else
    {

      swift_setDeallocating();
      if (*(v13 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) == 1)
      {
        sqlite3_close_v2(*(v13 + 16));
      }

      sub_1B7C4BDE4(v13 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration, type metadata accessor for SQLConnectionConfiguration);

      swift_deallocClassInstance();
    }

    sub_1B7C4BDE4(v60, type metadata accessor for SQLConnectionConfiguration);
  }

  else
  {
    swift_setDeallocating();
    sub_1B7C4BDE4(v13 + *v16, type metadata accessor for SQLConnectionConfiguration);
LABEL_35:
    v59 = v60;
    swift_deallocClassInstance();
    sub_1B7C4BDE4(v59, type metadata accessor for SQLConnectionConfiguration);
  }
}

uint64_t _sSo21IMDLegacyRecordBridgeC14IMDPersistenceE20configureNewDatabase5usingSbSpySo20CSDBSqliteConnectionVG_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for SQLConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20[-v6];
  v9 = *(v8 + 36);
  v10 = sub_1B7CFE420();
  result = (*(*(v10 - 8) + 56))(&v7[v9], 1, 1, v10);
  *v7 = 1;
  *(v7 + 1) = 0;
  *(v7 + 8) = 1;
  v12 = *(a1 + 8);
  if (!v12)
  {
    goto LABEL_15;
  }

  sub_1B7AE3EA4(v7, v4);
  type metadata accessor for SQLConnection(0);
  v13 = swift_allocObject();
  v14 = (v13 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
  v15 = MEMORY[0x1E69E7CC8];
  *v14 = MEMORY[0x1E69E7CC8];
  v14[1] = v15;
  v14[2] = 32;
  *(v13 + 16) = v12;
  *(v13 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
  result = sub_1B7AE3EA4(v4, v13 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
  if ((v4[2] & 1) == 0)
  {
    v16 = v4[1] * 1000.0;
    if (COERCE__INT64(fabs(v16)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v16 > -2147483650.0)
    {
      if (v16 < 2147483650.0)
      {
        sqlite3_busy_timeout(v12, v16);
        goto LABEL_7;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

LABEL_7:
  sub_1B7C4BDE4(v4, type metadata accessor for SQLConnectionConfiguration);
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  sub_1B7AD9040(v10, qword_1EBA5DA20);
  v17 = sub_1B7CFE400();
  v18 = sub_1B7CFEF00();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1B7AD5000, v17, v18, "Configuring new database", v19, 2u);
    MEMORY[0x1B8CB0E70](v19, -1, -1);
  }

  sub_1B7CD2F6C(1, 0x7372655674616863, 0xEB000000006E6F69);
  sub_1B7CD2F6C(1, 0xD000000000000011, 0x80000001B7D53FD0);
  sub_1B7C4BDE4(v7, type metadata accessor for SQLConnectionConfiguration);

  return 1;
}

void sub_1B7C4B0A8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[3];
  v9 = a1[4];
  sub_1B7AE9124(a1, v8);
  if (sub_1B7C49970(v8, v9))
  {
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v10 = sub_1B7CFE420();
    sub_1B7AD9040(v10, qword_1EBA5DA20);

    v11 = sub_1B7CFE400();
    v12 = sub_1B7CFEF00();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1B7AED1B8(a3, a4, &v22);
      _os_log_impl(&dword_1B7AD5000, v11, v12, "Performing out of band migration for %s", v13, 0xCu);
      sub_1B7AE9168(v14);
      MEMORY[0x1B8CB0E70](v14, -1, -1);
      MEMORY[0x1B8CB0E70](v13, -1, -1);
    }

    sub_1B7CA47E0(0, a2, a1);

    oslog = sub_1B7CFE400();
    v19 = sub_1B7CFEF00();

    if (os_log_type_enabled(oslog, v19))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1B7AED1B8(a3, a4, &v22);
      v18 = "Completed out of band migration for %s";
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v15 = sub_1B7CFE420();
    sub_1B7AD9040(v15, qword_1EBA5DA20);

    oslog = sub_1B7CFE400();
    v19 = sub_1B7CFEF00();

    if (os_log_type_enabled(oslog, v19))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1B7AED1B8(a3, a4, &v22);
      v18 = "Out of band migration %s already completed or could not determine state.";
LABEL_13:
      _os_log_impl(&dword_1B7AD5000, oslog, v19, v18, v16, 0xCu);
      sub_1B7AE9168(v17);
      MEMORY[0x1B8CB0E70](v17, -1, -1);
      MEMORY[0x1B8CB0E70](v16, -1, -1);

      return;
    }
  }
}

uint64_t _sSo21IMDLegacyRecordBridgeC14IMDPersistenceE24registerChatTableVersion5usingySpySo20CSDBSqliteConnectionVG_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for SQLConnectionError(0);
  MEMORY[0x1EEE9AC00](v2);
  v3 = type metadata accessor for SQLConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v10 = *(v9 + 36);
  v11 = sub_1B7CFE420();
  result = (*(*(v11 - 8) + 56))(&v8[v10], 1, 1, v11);
  *v8 = 1;
  *(v8 + 1) = 0;
  *(v8 + 8) = 1;
  v13 = *(a1 + 8);
  if (v13)
  {
    sub_1B7AE3EA4(v8, v5);
    type metadata accessor for SQLConnection(0);
    v14 = swift_allocObject();
    v15 = (v14 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
    v16 = MEMORY[0x1E69E7CC8];
    *v15 = MEMORY[0x1E69E7CC8];
    v15[1] = v16;
    v15[2] = 32;
    *(v14 + 16) = v13;
    *(v14 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
    sub_1B7AE3EA4(v5, v14 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
    if (v5[2])
    {
LABEL_7:
      sub_1B7C4BDE4(v5, type metadata accessor for SQLConnectionConfiguration);
      v37 = &v38;

      v18 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v20 = v18[2];
      v19 = v18[3];
      if (v20 >= v19 >> 1)
      {
        v18 = sub_1B7AE3A9C((v19 > 1), v20 + 1, 1, v18);
      }

      v35 = MEMORY[0x1E69E6158];
      v36 = &off_1F2FA8B58;
      *&v34 = 0x7372655674616863;
      *(&v34 + 1) = 0xEB000000006E6F69;
      v18[2] = v20 + 1;
      sub_1B7AE910C(&v34, &v18[5 * v20 + 4]);
      sub_1B7AF45D8(0xD000000000000029, 0x80000001B7D51060, v18, 0, &v37);

      v21 = v38 < 1;
      if (qword_1EBA50EB8 != -1)
      {
        swift_once();
      }

      sub_1B7AD9040(v11, qword_1EBA5DA20);
      v22 = sub_1B7CFE400();
      v23 = sub_1B7CFEF00();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 67109120;
        *(v24 + 4) = !v21;
        _os_log_impl(&dword_1B7AD5000, v22, v23, "Chat table was migrated successfully: %{BOOL}d", v24, 8u);
        MEMORY[0x1B8CB0E70](v24, -1, -1);
      }

      v25 = [objc_opt_self() sharedFeatureFlags];
      [v25 _setOneChatForceDisabled_persist_];

      swift_setDeallocating();
      if (*(v14 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) == 1)
      {
        sqlite3_close_v2(*(v14 + 16));
      }

      sub_1B7C4BDE4(v14 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration, type metadata accessor for SQLConnectionConfiguration);

      swift_deallocClassInstance();
      return sub_1B7C4BDE4(v8, type metadata accessor for SQLConnectionConfiguration);
    }

    v17 = v5[1] * 1000.0;
    if (COERCE__INT64(fabs(v17)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v17 > -2147483650.0)
    {
      if (v17 < 2147483650.0)
      {
        sqlite3_busy_timeout(v13, v17);
        goto LABEL_7;
      }

LABEL_26:
      __break(1u);
      swift_once();
      sub_1B7AD9040(v11, qword_1EBA5DA20);
      v26 = v13;
      v27 = sub_1B7CFE400();
      v28 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        v31 = v13;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v32;
        *v30 = v32;
        _os_log_impl(&dword_1B7AD5000, v27, v28, "Could not determine if chat migration completed successfully: %@", v29, 0xCu);
        sub_1B7C20434(v30);
        MEMORY[0x1B8CB0E70](v30, -1, -1);
        MEMORY[0x1B8CB0E70](v29, -1, -1);

        swift_setDeallocating();
        if (*(v14 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) == 1)
        {
          sqlite3_close_v2(*(v14 + 16));
        }

        sub_1B7C4BDE4(v14 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration, type metadata accessor for SQLConnectionConfiguration);

        swift_deallocClassInstance();
      }

      else
      {

        swift_setDeallocating();
        if (*(v14 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) == 1)
        {
          sqlite3_close_v2(*(v14 + 16));
        }

        sub_1B7C4BDE4(v14 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration, type metadata accessor for SQLConnectionConfiguration);

        swift_deallocClassInstance();
      }

      return sub_1B7C4BDE4(v8, type metadata accessor for SQLConnectionConfiguration);
    }

    __break(1u);
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for IMDLegacyRecordBridge()
{
  result = qword_1EBA52778;
  if (!qword_1EBA52778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA52778);
  }

  return result;
}

uint64_t sub_1B7C4BDE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7C4BE44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B7C4BE8C()
{
  sub_1B7CFF0B0();

  v0 = sub_1B7CFEAB0();
  v2 = v1;
  sub_1B7C4BFF0();
  v3 = (sub_1B7CFF060() + 16);
  v4 = *v3;
  if (*v3)
  {

    if (v4 <= *v3)
    {
      v5 = v3[2 * v4];

      return v5;
    }

    __break(1u);
  }

  sub_1B7CFF210();

  MEMORY[0x1B8CADCA0](v0, v2);
  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

unint64_t sub_1B7C4BFF0()
{
  result = qword_1EDBE3028[0];
  if (!qword_1EDBE3028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBE3028);
  }

  return result;
}

uint64_t sub_1B7C4C044()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EBA52780);
  sub_1B7AD9040(v0, qword_1EBA52780);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

uint64_t sub_1B7C4C0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v13 = swift_task_alloc();
  *(v8 + 24) = v13;
  *v13 = v8;
  v13[1] = sub_1B7C4C1C4;

  return MEMORY[0x1EEE10AE8](0xD000000000000022, 0x80000001B7D54320, 0xD000000000000013, 0x80000001B7D54350, a5, a6, a7, a8);
}

uint64_t sub_1B7C4C1C4()
{
  *(*v1 + 32) = v0;

  if (v0)
  {

    v2 = sub_1B7C4D0B0;
  }

  else
  {
    v2 = sub_1B7C4C2E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1B7C4C33C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v95 = a3;
  v94 = a2;
  v6 = sub_1B7C107FC(&qword_1EBA52628, &qword_1B7D0CC38);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v83 - v7;
  v9 = sub_1B7CFE290();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v102 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1B7CFE2D0();
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v100 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1B7CFE2A0();
  v98 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v96 = v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B7CFE280();
  v105 = *(v14 - 8);
  v106 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v104 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B7CFE2E0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v99 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v108 = v83 - v20;
  v21 = [objc_opt_self() sharedInstance];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 isInternalInstall];

    if (v23)
    {
      v24 = [objc_opt_self() messagesDomain];
      if (!v24 || (v25 = v24, v26 = sub_1B7CFEA30(), v27 = [v25 BOOLForKey_], v25, v26, (v27 & 1) == 0))
      {
        if (qword_1EBA515C8 != -1)
        {
          swift_once();
        }

        v89 = v10;
        v91 = v17;
        v92 = v16;
        v28 = sub_1B7CFE420();
        sub_1B7AD9040(v28, qword_1EBA52780);
        v29 = a1;
        v30 = sub_1B7CFE400();
        v31 = sub_1B7CFEF00();

        v32 = os_log_type_enabled(v30, v31);
        v93 = v8;
        v90 = v9;
        LODWORD(v88) = a4;
        if (v32)
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v110 = v34;
          *v33 = 136315138;
          swift_getErrorValue();
          v35 = sub_1B7CFF750();
          v37 = sub_1B7AED1B8(v35, v36, &v110);

          *(v33 + 4) = v37;
          _os_log_impl(&dword_1B7AD5000, v30, v31, "Presenting migration error: %s", v33, 0xCu);
          sub_1B7AE9168(v34);
          MEMORY[0x1B8CB0E70](v34, -1, -1);
          MEMORY[0x1B8CB0E70](v33, -1, -1);
        }

        v38 = sub_1B7CFDEB0();
        v110 = 0;
        v111 = 0xE000000000000000;
        sub_1B7CFF210();

        v39 = (v88 & 1) == 0;
        if (v88)
        {
          v40 = 0xD00000000000009CLL;
        }

        else
        {
          v40 = 0xD000000000000062;
        }

        v88 = v40;
        if (v39)
        {
          v41 = "ase Migration Failed";
        }

        else
        {
          v41 = " Migration Failed";
        }

        v42 = 0xD000000000000021;
        if (v39)
        {
          v42 = 0xD000000000000024;
        }

        v86 = v42;
        if (v39)
        {
          v43 = "ence23MigrationAlertPresenter";
        }

        else
        {
          v43 = " data has been affected.";
        }

        v85 = v43 | 0x8000000000000000;
        v87 = v41 | 0x8000000000000000;
        v110 = 0x5D5254545BLL;
        v111 = 0xE500000000000000;
        if (v39)
        {
          v44 = 0;
        }

        else
        {
          v44 = 0x5D6C616972545BLL;
        }

        if (v39)
        {
          v45 = 0xE000000000000000;
        }

        else
        {
          v45 = 0xE700000000000000;
        }

        if (v39)
        {
          v46 = 0;
        }

        else
        {
          v46 = 0xD000000000000038;
        }

        if (v39)
        {
          v47 = 0xE000000000000000;
        }

        else
        {
          v47 = 0x80000001B7D541F0;
        }

        MEMORY[0x1B8CADCA0](v44, v45);

        MEMORY[0x1B8CADCA0](0xD00000000000001DLL, 0x80000001B7D54180);
        v84 = v38;
        v48 = [v38 domain];
        v49 = sub_1B7CFEA60();
        v51 = v50;

        MEMORY[0x1B8CADCA0](v49, v51);

        MEMORY[0x1B8CADCA0](45, 0xE100000000000000);
        v109 = [v38 code];
        v52 = sub_1B7CFF570();
        MEMORY[0x1B8CADCA0](v52);

        MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
        v83[2] = v110;
        v83[1] = v111;
        v110 = 0;
        v111 = 0xE000000000000000;
        sub_1B7CFF210();
        MEMORY[0x1B8CADCA0](0xD00000000000002BLL, 0x80000001B7D541A0);
        MEMORY[0x1B8CADCA0](v46, v47);

        MEMORY[0x1B8CADCA0](0x3A746E6576450A0ALL, 0xE900000000000020);
        MEMORY[0x1B8CADCA0](v94, v95);
        MEMORY[0x1B8CADCA0](0xD000000000000010, 0x80000001B7D541D0);
        swift_getErrorValue();
        v53 = sub_1B7CFF750();
        MEMORY[0x1B8CADCA0](v53);

        MEMORY[0x1B8CADCA0](0x726F7272450A0A22, 0xEA00000000000A3ALL);
        v109 = a1;
        v54 = a1;
        sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
        v55 = sub_1B7CFEAB0();
        MEMORY[0x1B8CADCA0](v55);

        v95 = v110;
        (*(v105 + 104))(v104, *MEMORY[0x1E69A6730], v106);
        v56 = v98;
        v57 = v96;
        (*(v98 + 104))(v96, *MEMORY[0x1E69A6740], v107);
        sub_1B7C107FC(&qword_1EBA52798, &qword_1B7D0CFC8);
        v58 = sub_1B7CFE270();
        v59 = *(v58 - 8);
        v60 = *(v59 + 72);
        v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1B7D0A6F0;
        v63 = v62 + v61;
        v64 = *(v59 + 104);
        v64(v63, *MEMORY[0x1E69A6728], v58);
        v64(v63 + v60, *MEMORY[0x1E69A6720], v58);
        v65 = v100;
        sub_1B7CFE2C0();
        v66 = v89;
        v67 = v102;
        v68 = v90;
        (*(v89 + 104))(v102, *MEMORY[0x1E69A6738], v90);
        v69 = v104;
        sub_1B7CFE260();

        (*(v66 + 8))(v67, v68);
        (*(v101 + 8))(v65, v103);
        (*(v56 + 8))(v57, v107);
        (*(v105 + 8))(v69, v106);
        v70 = sub_1B7CFEDD0();
        v71 = v93;
        (*(*(v70 - 8) + 56))(v93, 1, 1, v70);
        v72 = v91;
        v73 = v99;
        v74 = v108;
        v75 = v92;
        (*(v91 + 16))(v99, v108, v92);
        v76 = (*(v72 + 80) + 32) & ~*(v72 + 80);
        v77 = (v97 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
        v78 = swift_allocObject();
        *(v78 + 16) = 0;
        *(v78 + 24) = 0;
        (*(v72 + 32))(v78 + v76, v73, v75);
        v79 = (v78 + v77);
        v80 = v85;
        *v79 = v86;
        v79[1] = v80;
        v81 = (v78 + ((v77 + 23) & 0xFFFFFFFFFFFFFFF8));
        v82 = v87;
        *v81 = v88;
        v81[1] = v82;
        sub_1B7C977FC(0, 0, v71, &unk_1B7D0CFD8, v78);

        (*(v72 + 8))(v74, v75);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B7C4CF5C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B7CFE2E0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1B7C40EE4;

  return sub_1B7C4C0B8(a1, v9, v10, v1 + v6, v12, v13, v14, v15);
}

uint64_t sub_1B7C4D0B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

double sub_1B7C4D114()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1B7C4D14C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_1B7C4D1E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

double sub_1B7C4D244()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1B7C4D27C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_1B7C4D314(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

double sub_1B7C4D374()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1B7C4D3AC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

void *StorageInspectorCrossCheckReport.__allocating_init()()
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *StorageInspectorCrossCheckReport.init()()
{
  result = v0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  return result;
}

unint64_t sub_1B7C4D480()
{
  v1 = 0xD000000000000037;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000003BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002ELL;
  }
}

uint64_t sub_1B7C4D4D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7C4E540(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7C4D50C(uint64_t a1)
{
  v2 = sub_1B7C4D8B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C4D548(uint64_t a1)
{
  v2 = sub_1B7C4D8B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *StorageInspectorCrossCheckReport.deinit()
{

  return v0;
}

uint64_t StorageInspectorCrossCheckReport.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C4D5FC(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA527A0, &qword_1B7D0CFE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C4D8B4();
  sub_1B7CFF830();
  swift_beginAccess();
  v13 = v3[2];
  LOBYTE(v12) = 0;
  type metadata accessor for RecordCounterDatabaseInspectorCrossCheckReport();
  sub_1B7C4DCCC(&qword_1EBA527B0, type metadata accessor for RecordCounterDatabaseInspectorCrossCheckReport, &protocol conformance descriptor for StorageInspectionCrossCheckReport);
  sub_1B7CFF4C0();
  if (!v2)
  {
    swift_beginAccess();
    v12 = v3[3];
    LOBYTE(v11) = 1;
    type metadata accessor for RecordCounterAttachmentStorageInspectorCrossCheckReport();
    sub_1B7C4DCCC(&qword_1EBA527B8, type metadata accessor for RecordCounterAttachmentStorageInspectorCrossCheckReport, &protocol conformance descriptor for StorageInspectionCrossCheckReport);
    sub_1B7CFF4C0();
    swift_beginAccess();
    v11 = v3[4];
    v10[15] = 2;
    type metadata accessor for DatabaseInspectorAttachmentStorageInspectorCrossCheckReport();
    sub_1B7C4DCCC(&qword_1EBA527C0, type metadata accessor for DatabaseInspectorAttachmentStorageInspectorCrossCheckReport, &protocol conformance descriptor for StorageInspectionCrossCheckReport);
    sub_1B7CFF4C0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B7C4D8B4()
{
  result = qword_1EBA527A8;
  if (!qword_1EBA527A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA527A8);
  }

  return result;
}

uint64_t StorageInspectorCrossCheckReport.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  StorageInspectorCrossCheckReport.init(from:)(a1);
  return v2;
}

uint64_t *StorageInspectorCrossCheckReport.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA527C8, &unk_1B7D0CFE8);
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v3[4] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v8 = a1[3];
  v19 = a1;
  sub_1B7AE9124(a1, v8);
  sub_1B7C4D8B4();
  v16 = v7;
  sub_1B7CFF820();
  if (!v2)
  {
    type metadata accessor for RecordCounterDatabaseInspectorCrossCheckReport();
    v22 = 0;
    sub_1B7C4DCCC(&qword_1EBA527D0, type metadata accessor for RecordCounterDatabaseInspectorCrossCheckReport, &protocol conformance descriptor for StorageInspectionCrossCheckReport);
    v9 = v18;
    v10 = v16;
    sub_1B7CFF400();
    v11 = v21;
    swift_beginAccess();
    v3[2] = v11;

    type metadata accessor for RecordCounterAttachmentStorageInspectorCrossCheckReport();
    LOBYTE(v21) = 1;
    sub_1B7C4DCCC(&qword_1EBA527D8, type metadata accessor for RecordCounterAttachmentStorageInspectorCrossCheckReport, &protocol conformance descriptor for StorageInspectionCrossCheckReport);
    sub_1B7CFF400();
    v13 = v20;
    swift_beginAccess();
    v3[3] = v13;

    type metadata accessor for DatabaseInspectorAttachmentStorageInspectorCrossCheckReport();
    LOBYTE(v20) = 2;
    sub_1B7C4DCCC(&qword_1EBA527E0, type metadata accessor for DatabaseInspectorAttachmentStorageInspectorCrossCheckReport, &protocol conformance descriptor for StorageInspectionCrossCheckReport);
    sub_1B7CFF400();
    (*(v17 + 8))(v10, v9);
    v14 = v23;
    swift_beginAccess();
    v3[4] = v14;
  }

  sub_1B7AE9168(v19);
  return v3;
}

uint64_t sub_1B7C4DCCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_1B7C4DD14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for StorageInspectorCrossCheckReport();
  v5 = swift_allocObject();
  result = StorageInspectorCrossCheckReport.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t StorageInspectorCrossCheckReport.formatReport(with:)(uint64_t a1)
{
  v2 = v1;
  result = sub_1B7C219E4(0xD000000000000014, 0x80000001B7D54370);
  v5 = *(a1 + 24);
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(a1 + 24) = v6;
  swift_beginAccess();
  if (v2[2])
  {

    result = sub_1B7C219E4(0xD000000000000025, 0x80000001B7D54400);
    v7 = *(a1 + 24);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (v8)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    *(a1 + 24) = v9;
    sub_1B7C9F5D4(a1);

    v10 = *(a1 + 24);
    v6 = v10 - 1;
    if (__OFSUB__(v10, 1))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    *(a1 + 24) = v6;
  }

  swift_beginAccess();
  if (v2[3])
  {

    result = sub_1B7C219E4(0xD00000000000002FLL, 0x80000001B7D543D0);
    v11 = *(a1 + 24);
    v8 = __OFADD__(v11, 1);
    v12 = v11 + 1;
    if (v8)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    *(a1 + 24) = v12;
    sub_1B7C9F5D4(a1);

    v13 = *(a1 + 24);
    v6 = v13 - 1;
    if (__OFSUB__(v13, 1))
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    *(a1 + 24) = v6;
  }

  result = swift_beginAccess();
  if (!v2[4])
  {
LABEL_14:
    if (!__OFSUB__(v6, 1))
    {
      *(a1 + 24) = v6 - 1;
      return result;
    }

    goto LABEL_17;
  }

  result = sub_1B7C219E4(0xD000000000000034, 0x80000001B7D54390);
  v14 = *(a1 + 24);
  v8 = __OFADD__(v14, 1);
  v15 = v14 + 1;
  if (v8)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(a1 + 24) = v15;
  sub_1B7C9F5D4(a1);

  v16 = *(a1 + 24);
  v6 = v16 - 1;
  if (!__OFSUB__(v16, 1))
  {
    *(a1 + 24) = v6;
    goto LABEL_14;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t StorageInspectorCrossCheckReport.description.getter(__n128 a1)
{
  v6 = sub_1B7CFF8D0();
  MEMORY[0x1B8CADCA0](663610, 0xE300000000000000);
  type metadata accessor for StorageInspectorReportStringBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  *(inited + 24) = 0;
  StorageInspectorCrossCheckReport.formatReport(with:)(inited);
  swift_beginAccess();
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v2 = sub_1B7CFEA10();
  v4 = v3;

  MEMORY[0x1B8CADCA0](v2, v4);

  return v6;
}

uint64_t getEnumTagSinglePayload for StorageInspectorCrossCheckReport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StorageInspectorCrossCheckReport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B7C4E43C()
{
  result = qword_1EBA527E8;
  if (!qword_1EBA527E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA527E8);
  }

  return result;
}

unint64_t sub_1B7C4E494()
{
  result = qword_1EBA527F0;
  if (!qword_1EBA527F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA527F0);
  }

  return result;
}

unint64_t sub_1B7C4E4EC()
{
  result = qword_1EBA527F8;
  if (!qword_1EBA527F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA527F8);
  }

  return result;
}

uint64_t sub_1B7C4E540(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000002ELL && 0x80000001B7D54470 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000037 && 0x80000001B7D544A0 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000003BLL && 0x80000001B7D544E0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B7CFF590();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_1B7C4E668(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1B7C4E6D0()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EDBE5950);
  sub_1B7AD9040(v0, qword_1EDBE5950);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

id sub_1B7C4E73C()
{
  result = [objc_allocWithZone(type metadata accessor for PersistenceServiceClient()) init];
  qword_1EDBE79F0 = result;
  return result;
}

id sub_1B7C4E7E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersistenceServiceClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B7C4E824()
{
  result = sub_1B7CFEA30();
  qword_1EDBE39F8 = result;
  return result;
}

id static NSNotificationName.persistenceConnectionInterrupted.getter()
{
  if (qword_1EDBE39F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBE39F8;

  return v1;
}

void sub_1B7C4E8DC(uint64_t a1)
{
  if (qword_1EDBE5940 != -1)
  {
    swift_once();
  }

  v2 = sub_1B7CFE420();
  sub_1B7AD9040(v2, qword_1EDBE5950);
  v3 = sub_1B7CFE400();
  v4 = sub_1B7CFEF00();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, v4, "Persistence XPC connection invalidated", v5, 2u);
    MEMORY[0x1B8CB0E70](v5, -1, -1);
  }

  v6 = *(a1 + OBJC_IVAR____TtC14IMDPersistence24PersistenceServiceClient_lock);
  MEMORY[0x1EEE9AC00](v7);
  os_unfair_lock_lock((v6 + 24));
  sub_1B7C4EFC0((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));
}

void sub_1B7C4EA0C(id *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_1EDBE39F0 != -1)
  {
    swift_once();
  }

  [v2 postNotificationName:qword_1EDBE39F8 object:0];

  *a1 = 0;
}

void sub_1B7C4EABC()
{
  if (qword_1EDBE5940 != -1)
  {
    swift_once();
  }

  v0 = sub_1B7CFE420();
  sub_1B7AD9040(v0, qword_1EDBE5950);
  v1 = sub_1B7CFE400();
  v2 = sub_1B7CFEF00();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B7AD5000, v1, v2, "Persistence XPC connection interrupted", v3, 2u);
    MEMORY[0x1B8CB0E70](v3, -1, -1);
  }

  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (qword_1EDBE39F0 != -1)
  {
    swift_once();
    v4 = v5;
  }

  [v4 postNotificationName:qword_1EDBE39F8 object:0];
}

void sub_1B7C4EC20(void *a1)
{
  if (qword_1EDBE5940 != -1)
  {
    swift_once();
  }

  v2 = sub_1B7CFE420();
  sub_1B7AD9040(v2, qword_1EDBE5950);
  v3 = a1;
  oslog = sub_1B7CFE400();
  v4 = sub_1B7CFEEF0();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1B7CFF750();
    v9 = sub_1B7AED1B8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1B7AD5000, oslog, v4, "Received error for synchronous proxy to persistence agent: %s", v5, 0xCu);
    sub_1B7AE9168(v6);
    MEMORY[0x1B8CB0E70](v6, -1, -1);
    MEMORY[0x1B8CB0E70](v5, -1, -1);
  }

  else
  {
  }
}

void sub_1B7C4EDB8(id *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_1EDBE39F0 != -1)
  {
    swift_once();
  }

  [v2 postNotificationName:qword_1EDBE39F8 object:0];

  v3 = *a1;
  [*a1 invalidate];

  *a1 = 0;
}

uint64_t sub_1B7C4EEE0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B7C4EF3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_1B7C4EFE4()
{
  type metadata accessor for StorageInspectorReportManager(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC14IMDPersistence29StorageInspectorReportManager____lazy_storage___reportDirectoryURL;
  v2 = sub_1B7CFDFF0();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC14IMDPersistence29StorageInspectorReportManager_report;
  result = [objc_allocWithZone(type metadata accessor for StorageInspectorReport(0)) init];
  *(v0 + v3) = result;
  qword_1EBA5DAF0 = v0;
  return result;
}

uint64_t sub_1B7C4F08C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_1B7CFDFF0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7CFE120();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v17 = OBJC_IVAR____TtC14IMDPersistence29StorageInspectorReportManager____lazy_storage___reportDirectoryURL;
  swift_beginAccess();
  sub_1B7C487D8(v2 + v17, v16);
  if ((*(v4 + 48))(v16, 1, v3) != 1)
  {
    return (*(v4 + 32))(v33, v16, v3);
  }

  sub_1B7C4FB10(v16);
  v18 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1B7CFE110();
  v19 = sub_1B7CFE0A0();
  v32 = v2;
  v20 = v19;
  (*(v8 + 8))(v10, v7);
  v21 = [v18 stringFromDate_];

  v22 = sub_1B7CFEA60();
  v24 = v23;

  v34 = v22;
  v35 = v24;
  v38 = 58;
  v39 = 0xE100000000000000;
  v36 = 45;
  v37 = 0xE100000000000000;
  sub_1B7C4BFF0();
  v25 = sub_1B7CFF070();
  v27 = v26;

  v28 = NSTemporaryDirectory();
  sub_1B7CFEA60();

  sub_1B7CFDF20();

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1B7CFF210();

  v34 = 0xD000000000000020;
  v35 = 0x80000001B7D54730;
  MEMORY[0x1B8CADCA0](v25, v27);

  v29 = v33;
  sub_1B7CFDF60();

  (*(v4 + 8))(v6, v3);
  (*(v4 + 16))(v13, v29, v3);
  (*(v4 + 56))(v13, 0, 1, v3);
  v30 = v32;
  swift_beginAccess();
  sub_1B7C4FB78(v13, v30 + v17);
  return swift_endAccess();
}

uint64_t sub_1B7C4F4C8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = sub_1B7CFE420();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v42 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7CFDFF0();
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v39 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v39 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v39[0] = v39 - v17;
  v18 = a2[3];
  sub_1B7AE9124(a2, v18);
  sub_1B7C81520(v18, v19);
  v39[1] = v20;
  v41 = a1;
  sub_1B7AE9124(a1, a1[3]);
  swift_getDynamicType();
  sub_1B7CFF8D0();
  sub_1B7C4F08C(v9);
  sub_1B7CFDF60();
  v21 = v40;
  v22 = *(v40 + 8);
  v22(v9, v7);
  sub_1B7CFDF60();
  v22(v12, v7);
  v23 = v39[0];
  sub_1B7CFDF70();
  v22(v15, v7);
  v24 = v21;
  type metadata accessor for StorageInspectorReportFile(0);
  v25 = swift_allocObject();
  v26 = (v25 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile____lazy_storage___path);
  *v26 = 0;
  v26[1] = 0;
  *(v25 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle) = 0;
  (*(v21 + 32))(v25 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v23, v7);

  v27 = v41[3];
  v28 = v41[4];
  sub_1B7AE9124(v41, v27);
  v29 = StorageInspectionReport.reportLines.getter(v27, v28);
  sub_1B7C96998(v29);

  v30 = v42;
  sub_1B7CFE410();

  v31 = sub_1B7CFE400();
  v32 = sub_1B7CFEED0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v46 = v34;
    *v33 = 136315138;
    v35 = sub_1B7C95CE0();
    v37 = sub_1B7AED1B8(v35, v36, &v46);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_1B7AD5000, v31, v32, "Wrote report to: %s", v33, 0xCu);
    sub_1B7AE9168(v34);
    MEMORY[0x1B8CB0E70](v34, -1, -1);
    MEMORY[0x1B8CB0E70](v33, -1, -1);
  }

  (*(v43 + 8))(v30, v44);
  (*(v24 + 16))(v45, v25 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v7);
  swift_setDeallocating();
  sub_1B7C95D64();
  return swift_deallocClassInstance();
}

uint64_t sub_1B7C4F9AC()
{
  sub_1B7C4FB10(v0 + OBJC_IVAR____TtC14IMDPersistence29StorageInspectorReportManager____lazy_storage___reportDirectoryURL);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StorageInspectorReportManager(uint64_t a1)
{
  result = qword_1EBA52828;
  if (!qword_1EBA52828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7C4FA74(uint64_t a1)
{
  sub_1B7C4954C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1B7C4FB10(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7C4FB78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1B7C4FBE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 344) = v2;

  return result;
}

void sub_1B7C4FC80(uint64_t a1)
{
  v3 = sub_1B7CFDFF0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C219E4(0xD000000000000024, 0x80000001B7D54760);
  v7 = *(a1 + 24);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(a1 + 24) = v9;
  sub_1B7C6A6CC(a1);
  sub_1B7C219E4(0, 0xE000000000000000);
  sub_1B7C219E4(0xD000000000000021, 0x80000001B7D54790);
  v10 = *(a1 + 24);
  v8 = __OFADD__(v10, 1);
  v11 = v10 + 1;
  if (v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(a1 + 24) = v11;
  swift_beginAccess();
  v12 = *(v1 + 344);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v4 + 16;
    v36 = *(v4 + 16);
    v37 = v4 + 16;
    v15 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v14 + 56);
    v33[1] = v12;
    v34 = v16;
    v17 = (v14 - 8);

    v35 = v3;
    while (1)
    {
      v36(v6, v15, v3);
      v18 = sub_1B7CFDFC0();
      if (*(a1 + 24) + 0x4000000000000000 < 0)
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      v38 = sub_1B7CFEC10();
      v39 = v22;
      MEMORY[0x1B8CADCA0](v20, v21);

      v23 = v38;
      v24 = v39;
      swift_beginAccess();
      v25 = *(a1 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 16) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_1B7AF182C(0, *(v25 + 2) + 1, 1, v25);
        *(a1 + 16) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_1B7AF182C((v27 > 1), v28 + 1, 1, v25);
      }

      *(v25 + 2) = v28 + 1;
      v29 = &v25[16 * v28];
      *(v29 + 4) = v23;
      *(v29 + 5) = v24;
      *(a1 + 16) = v25;
      swift_endAccess();
      v3 = v35;
      (*v17)(v6, v35);
      v15 += v34;
      if (!--v13)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_12:
  v30 = *(a1 + 24);
  v8 = __OFSUB__(v30, 1);
  v31 = v30 - 1;
  if (v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = __OFSUB__(v31, 1);
  v32 = v31 - 1;
  if (!v8)
  {
    *(a1 + 24) = v32;
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t ExportableDatabaseRecordCountReport.__allocating_init(from:)(void *a1)
{
  *(swift_allocObject() + 344) = MEMORY[0x1E69E7CC0];
  sub_1B7AE90A8(a1, v4);
  v2 = StorageInspectionCountReport.init(from:)(v4);
  sub_1B7AE9168(a1);
  return v2;
}

uint64_t ExportableDatabaseRecordCountReport.init(from:)(void *a1)
{
  *(v1 + 344) = MEMORY[0x1E69E7CC0];
  sub_1B7AE90A8(a1, v5);
  v3 = StorageInspectionCountReport.init(from:)(v5);
  sub_1B7AE9168(a1);
  return v3;
}

uint64_t ExportableDatabaseRecordCountReport.deinit()
{

  return v0;
}

uint64_t ExportableDatabaseRecordCountReport.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1B7C501BC(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_1B7CFEA30();

  return v3;
}

double sub_1B7C50224(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1B7CFEA60();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;

  return result;
}

id IMDAttachmentMetadata.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = v1;
  sub_1B7AEE088(0, &unk_1EDBE59A0, 0x1E696AEC0);
  v4 = sub_1B7CFEFB0();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7CFEFB0();
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B7CFEA30();
      v9 = [a1 decodeBoolForKey_];

      v10 = sub_1B7CFEFB0();
      v11 = [v2 initWithPermanentAttachmentGUID:v5 messageGUID:v7 fromMe:v9 handleID:v10];

      return v11;
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1B7C505E8(void *a1)
{
  v3 = [v1 permanentAttachmentGUID];
  if (!v3)
  {
    sub_1B7CFEA60();
    v3 = sub_1B7CFEA30();
  }

  v4 = sub_1B7CFEA30();
  [a1 encodeObject:v3 forKey:v4];

  v5 = [v1 messageGUID];
  if (!v5)
  {
    sub_1B7CFEA60();
    v5 = sub_1B7CFEA30();
  }

  v6 = sub_1B7CFEA30();
  [a1 encodeObject:v5 forKey:v6];

  v7 = [v1 fromMe];
  v8 = sub_1B7CFEA30();
  [a1 encodeBool:v7 forKey:v8];

  v9 = [v1 handleID];
  v10 = sub_1B7CFEA30();
  [a1 encodeObject:v9 forKey:v10];
}

id IMDAttachmentMetadata.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void *IMDMessageRecord.makeIMItem(inputHandleString:useAttachmentCache:shouldLoadAttachments:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a2)
  {
    v7 = sub_1B7CFEA30();
  }

  else
  {
    v7 = 0;
  }

  v8 = IMDCreateIMItemFromIMDMessageRecord(v4, v7, a3 & 1, a4 & 1);

  return v8;
}

void sub_1B7C50960()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D513A0);
  MEMORY[0x1B8CADCA0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1B8CADCA0](0xD000000000000096, 0x80000001B7D549D0);
  SqlOperation.execute(_:_:)(0, 0xE000000000000000, 0, 0);

  if (!v1)
  {
    sub_1B7C741A8(&unk_1F2FA1DE8);

    sub_1B7C741A8(&unk_1F2FA1E18);
  }
}

double sub_1B7C50AB8()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x1B8CADCA0](v0[2], v0[3]);
  MEMORY[0x1B8CADCA0](0xD000000000000093, 0x80000001B7D54930);
  MEMORY[0x1B8CADCA0](v0[4], v0[5]);
  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  SqlOperation.execute(_:_:)(0, 0xE000000000000000, 0, 0);

  return result;
}

void sub_1B7C50BFC(uint64_t a1)
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

  v3 = sub_1B7AF182C(isUniquelyReferenced_nonNull_native, v11, 1, v3);
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

void sub_1B7C50CF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1B7CA2198(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  sub_1B7CFE850();
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1B7C50E44(uint64_t a1)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1B7CA21C0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v8 + 32], (a1 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1B7C50F30(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_1B7CA1D90(isUniquelyReferenced_nonNull_native, v11, 1, v3);
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
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1B7C107FC(&qword_1EBA52478, &unk_1B7D0D930);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t StorageInspector.StorageInspectorError.hashValue.getter()
{
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](0);
  return sub_1B7CFF800();
}

uint64_t sub_1B7C510AC()
{
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](0);
  return sub_1B7CFF800();
}

uint64_t sub_1B7C510F0(uint64_t a1)
{
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](0);
  return sub_1B7CFF800();
}

uint64_t StorageInspector.options.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_options;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t StorageInspector.schedulingBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t StorageInspector.schedulingBehavior.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

id StorageInspector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StorageInspector.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC14IMDPersistence16StorageInspector_options] = 31;
  v0[OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior] = 1;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t StorageInspector.description.getter()
{
  v1 = v0;
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D54A70);
  swift_beginAccess();
  StorageInspector.Options.description.getter();
  MEMORY[0x1B8CADCA0](v2);

  MEMORY[0x1B8CADCA0](0xD000000000000016, 0x80000001B7D54A90);
  v3 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    v4 = 0x74696E4972657375;
  }

  else
  {
    v4 = 0x756F72676B636162;
  }

  if (*(v1 + v3))
  {
    v5 = 0xED00006465746169;
  }

  else
  {
    v5 = 0xEA0000000000646ELL;
  }

  MEMORY[0x1B8CADCA0](v4, v5);

  MEMORY[0x1B8CADCA0](93, 0xE100000000000000);
  return 0;
}

void StorageInspector.Options.description.getter()
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *v0;
LABEL_2:
  if (v1 <= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4 + 1;
  v6 = (&unk_1F2FA1658 + 24 * v1 + 32);
  while (v1 != 5)
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
        sub_1B7C311A8(0, v2[2] + 1, 1);
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_1B7C311A8((v11 > 1), v12 + 1, 1);
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

uint64_t StorageInspector.run(withOptions:)(uint64_t *a1)
{
  v2[11] = v1;
  v4 = sub_1B7CFE420();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a1;
  v2[16] = v5;
  v2[17] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B7C51848, 0, 0);
}

uint64_t sub_1B7C51848()
{
  v1 = v0[17];
  v2 = v0[11];
  v3 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_options;
  swift_beginAccess();
  *(v2 + v3) = v1;
  sub_1B7CFE070();
  v0[18] = v4;
  sub_1B7CFE410();
  v5 = sub_1B7CFE400();
  v6 = sub_1B7CFEED0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B7AD5000, v5, v6, "Storage Inspection starting...", v7, 2u);
    MEMORY[0x1B8CB0E70](v7, -1, -1);
  }

  v8 = v0[16];
  v9 = v0[12];
  v10 = v0[13];

  v11 = *(v10 + 8);
  v0[19] = v11;
  v11(v8, v9);
  v12 = swift_allocObject();
  v0[20] = v12;
  *(v12 + 16) = 0;
  v13 = swift_allocObject();
  v0[21] = v13;
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  v0[22] = v14;
  swift_unknownObjectWeakInit();
  v15 = swift_task_alloc();
  v0[23] = v15;
  v15[2] = v14;
  v15[3] = v13;
  v15[4] = v12;
  v16 = swift_task_alloc();
  v0[24] = v16;
  *v16 = v0;
  v16[1] = sub_1B7C51AA8;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B7C51AA8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7C51BDC, 0, 0);
}

uint64_t sub_1B7C51BDC(uint64_t a1)
{
  sub_1B7CFE070();
  v3 = v2;
  sub_1B7CFE410();
  v4 = sub_1B7CFE400();
  v5 = sub_1B7CFEED0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 144);
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3 - v6;
    _os_log_impl(&dword_1B7AD5000, v4, v5, "Storage Inspection completed in %f seconds", v7, 0xCu);
    MEMORY[0x1B8CB0E70](v7, -1, -1);
  }

  v8 = *(v1 + 168);
  v9 = *(v1 + 152);
  v10 = *(v1 + 120);
  v11 = *(v1 + 96);

  v9(v10, v11);
  swift_beginAccess();
  v12 = *(v8 + 16);
  if (v12)
  {
    v13 = v12;
    sub_1B7CFE410();
    v14 = v12;
    v15 = sub_1B7CFE400();
    v16 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v12;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_1B7AD5000, v15, v16, "Storage Inspection failed with error: %@", v17, 0xCu);
      sub_1B7C20434(v18);
      MEMORY[0x1B8CB0E70](v18, -1, -1);
      MEMORY[0x1B8CB0E70](v17, -1, -1);
    }

    v21 = *(v1 + 152);
    v22 = *(v1 + 112);
    v23 = *(v1 + 96);

    v21(v22, v23);
    goto LABEL_7;
  }

  v26 = *(v1 + 160);
  swift_beginAccess();
  v27 = *(v26 + 16);
  if (!v27)
  {
    sub_1B7C53BD0();
    swift_allocError();
LABEL_7:
    swift_willThrow();

    v24 = *(v1 + 8);

    return v24();
  }

  v28 = v27;

  v29 = *(v1 + 8);

  return v29(v28);
}

uint64_t sub_1B7C51F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B7C107FC(&qword_1EBA52910, &unk_1B7D0D940);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &aBlock[-1] - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_1B7CFEDA0();
  }

  v12 = Strong;
  v13 = [objc_opt_self() database];
  (*(v8 + 16))(v10, a1, v7);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  (*(v8 + 32))(v15 + v14, v10, v7);
  aBlock[4] = sub_1B7C54338;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7C52274;
  aBlock[3] = &unk_1F2F9F910;
  v16 = _Block_copy(aBlock);

  [v13 inspectStorageWithStorageInspector:v12 completionHandler:v16];
  _Block_release(v16);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B7C521C0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a2;
  v9 = a2;

  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a1;
  v11 = a1;

  sub_1B7C107FC(&qword_1EBA52910, &unk_1B7D0D940);
  return sub_1B7CFEDA0();
}

void sub_1B7C52274(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1B7C52300()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x736E6F6974706FLL;
  }
}

void sub_1B7C52340(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1B7CFF590() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7D54B30 == a2)
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

uint64_t sub_1B7C52430(uint64_t a1)
{
  v2 = sub_1B7C53C24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C5246C(uint64_t a1)
{
  v2 = sub_1B7C53C24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id StorageInspector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t StorageInspector.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA52870, &qword_1B7D0D328);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C53C24();
  sub_1B7CFF830();
  v9 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_options;
  swift_beginAccess();
  v13 = *(v3 + v9);
  v14 = 0;
  sub_1B7C53C78();
  sub_1B7CFF500();
  if (!v2)
  {
    v10 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior;
    swift_beginAccess();
    v14 = *(v3 + v10);
    v12[7] = 1;
    sub_1B7C53CCC();
    sub_1B7CFF500();
  }

  return (*(v6 + 8))(v8, v5);
}

void *StorageInspector.init(from:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v23 = sub_1B7C107FC(&qword_1EBA52890, &qword_1B7D0D330);
  v21 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v19 - v5;
  v7 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_options;
  *&v1[OBJC_IVAR____TtC14IMDPersistence16StorageInspector_options] = 31;
  v8 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior;
  v1[OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior] = 1;
  v9 = sub_1B7AE9124(a1, a1[3]);
  sub_1B7C53C24();
  v22 = v6;
  v10 = v24;
  sub_1B7CFF820();
  if (v10)
  {
    sub_1B7AE9168(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = a1;
    v20 = v8;
    v11 = v21;
    v27 = 0;
    sub_1B7C53D20();
    v12 = v22;
    v13 = v23;
    sub_1B7CFF440();
    v14 = v26;
    swift_beginAccess();
    *&v2[v7] = v14;
    LOBYTE(v26) = 1;
    sub_1B7C53D74();
    sub_1B7CFF440();
    v16 = v28;
    v17 = v12;
    v18 = v20;
    swift_beginAccess();
    v2[v18] = v16;
    v25.receiver = v2;
    v25.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v25, sel_init);
    (*(v11 + 8))(v17, v13);
    sub_1B7AE9168(v24);
  }

  return v9;
}