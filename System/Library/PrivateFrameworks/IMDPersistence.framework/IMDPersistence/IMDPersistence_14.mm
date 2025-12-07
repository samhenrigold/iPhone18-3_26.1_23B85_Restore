void *sub_1B7C52970@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = StorageInspector.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t StorageInspector.SchedulingBehavior.description.getter()
{
  if (*v0)
  {
    return 0x74696E4972657375;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

IMDPersistence::StorageInspector::SchedulingBehavior_optional __swiftcall StorageInspector.SchedulingBehavior.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B7C52B04()
{
  if (*v0)
  {
    return 0x74696E4972657375;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

BOOL sub_1B7C52CA0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1B7C52CD0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1B7C52CFC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void StorageInspector.run(_:)(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v4 = sub_1B7CFE420();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v57 - v8;
  v10 = &unk_1EBA5D000;
  v11 = qword_1EBA5DB00;
  qword_1EBA5DB00 = v2;

  v12 = v2;
  v62 = ", schedulingBehavior: ";
  sub_1B7CFE410();
  v13 = v12;
  v14 = sub_1B7CFE400();
  v15 = sub_1B7CFEED0();

  v16 = os_log_type_enabled(v14, v15);
  v66 = v13;
  v63 = v4;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = a1;
    v19 = swift_slowAlloc();
    v67[0] = v19;
    *v17 = 136315138;
    v20 = StorageInspector.description.getter();
    v22 = v5;
    v23 = sub_1B7AED1B8(v20, v21, v67);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_1B7AD5000, v14, v15, "Beginning to run database verifiers with options: %s", v17, 0xCu);
    sub_1B7AE9168(v19);
    v24 = v19;
    a1 = v18;
    v10 = &unk_1EBA5D000;
    MEMORY[0x1B8CB0E70](v24, -1, -1);
    v25 = v17;
    v4 = v63;
    MEMORY[0x1B8CB0E70](v25, -1, -1);

    v26 = *(v22 + 8);
    v26(v9, v4);
    v27 = v22;
  }

  else
  {

    v26 = *(v5 + 8);
    v26(v9, v4);
    v27 = v5;
  }

  v28 = sub_1B7C533D0();
  v29 = v64;
  sub_1B7CFE410();

  v30 = sub_1B7CFE400();
  v31 = sub_1B7CFEED0();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v65;
  if (v32)
  {
    v60 = v31;
    v61 = v26;
    v62 = v27;
    v34 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v70[0] = v58;
    v59 = v34;
    *v34 = 136315138;
    v35 = v28[2];
    v36 = MEMORY[0x1E69E7CC0];
    if (v35)
    {
      v57 = a1;
      v69 = MEMORY[0x1E69E7CC0];
      sub_1B7AECEEC(0, v35, 0);
      v36 = v69;
      v37 = (v28 + 4);
      do
      {
        sub_1B7AE90A8(v37, v67);
        v38 = v68;
        sub_1B7AE9124(v67, v68);
        v40 = sub_1B7C81520(v38, v39);
        v42 = v41;
        sub_1B7AE9168(v67);
        v69 = v36;
        v44 = *(v36 + 16);
        v43 = *(v36 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_1B7AECEEC((v43 > 1), v44 + 1, 1);
          v36 = v69;
        }

        *(v36 + 16) = v44 + 1;
        v45 = v36 + 16 * v44;
        *(v45 + 32) = v40;
        *(v45 + 40) = v42;
        v37 += 40;
        --v35;
      }

      while (v35);
      v29 = v64;
      v33 = v65;
      a1 = v57;
      v10 = &unk_1EBA5D000;
    }

    v67[0] = v36;
    sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
    sub_1B7AF7FAC();
    v46 = sub_1B7CFEA10();
    v48 = v47;

    v49 = sub_1B7AED1B8(v46, v48, v70);

    v50 = v59;
    *(v59 + 1) = v49;
    _os_log_impl(&dword_1B7AD5000, v30, v60, "Beginning to run database verifiers: %s", v50, 0xCu);
    v51 = v58;
    sub_1B7AE9168(v58);
    MEMORY[0x1B8CB0E70](v51, -1, -1);
    MEMORY[0x1B8CB0E70](v50, -1, -1);

    v61(v29, v63);
  }

  else
  {

    v26(v29, v4);
  }

  v52 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior;
  v53 = v66;
  swift_beginAccess();
  if (v53[v52] == 1)
  {
    type metadata accessor for ForegroundStorageInspectorScheduler();
  }

  else
  {
    type metadata accessor for BackgroundStorageInspectorScheduler();
  }

  v54 = swift_allocObject();
  *(v54 + 24) = MEMORY[0x1E69E7CC0];
  *(v54 + 32) = 0u;
  *(v54 + 48) = 0u;
  *(v54 + 64) = 0u;
  *(v54 + 16) = v28;
  swift_beginAccess();

  sub_1B7AF4604(v55, sub_1B7CA29F0, &qword_1EBA52908, qword_1B7D10580);
  swift_endAccess();
  (*(*v54 + 264))(a1, v33);
  sub_1B7C752AC();

  v56 = v10[352];
  v10[352] = 0;
}

void *sub_1B7C533D0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_options;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 1) == 0)
  {
    v4 = MEMORY[0x1E69E7CC0];
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v5 = type metadata accessor for DatabaseInspector();
  swift_allocObject();
  v6 = sub_1B7C5A32C();
  v4 = sub_1B7CA29F0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = v4[2];
  v7 = v4[3];
  if (v8 >= v7 >> 1)
  {
    v4 = sub_1B7CA29F0((v7 > 1), v8 + 1, 1, v4);
  }

  v24 = v5;
  v25 = &off_1F2FA4BF8;
  *&v23 = v6;
  v4[2] = v8 + 1;
  sub_1B7AE910C(&v23, &v4[5 * v8 + 4]);
  v3 = *(v1 + v2);
  if ((v3 & 2) != 0)
  {
LABEL_7:
    v9 = type metadata accessor for DatabaseExportRecordCounter();
    swift_allocObject();
    v10 = sub_1B7CC1854();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1B7CA29F0(0, v4[2] + 1, 1, v4);
    }

    v12 = v4[2];
    v11 = v4[3];
    if (v12 >= v11 >> 1)
    {
      v4 = sub_1B7CA29F0((v11 > 1), v12 + 1, 1, v4);
    }

    v24 = v9;
    v25 = &off_1F2FA7F90;
    *&v23 = v10;
    v4[2] = v12 + 1;
    sub_1B7AE910C(&v23, &v4[5 * v12 + 4]);
    v3 = *(v1 + v2);
  }

LABEL_12:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 0x10) == 0)
    {
      return v4;
    }

    goto LABEL_20;
  }

  v13 = type metadata accessor for AttachmentStorageInspector(0);
  swift_allocObject();
  v14 = sub_1B7C56078();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1B7CA29F0(0, v4[2] + 1, 1, v4);
  }

  v16 = v4[2];
  v15 = v4[3];
  if (v16 >= v15 >> 1)
  {
    v4 = sub_1B7CA29F0((v15 > 1), v16 + 1, 1, v4);
  }

  v24 = v13;
  v25 = &off_1F2FA7FD8;
  *&v23 = v14;
  v4[2] = v16 + 1;
  sub_1B7AE910C(&v23, &v4[5 * v16 + 4]);
  if ((*(v1 + v2) & 0x10) != 0)
  {
LABEL_20:
    v17 = type metadata accessor for DatabaseInspectorCrossCheckInspector();
    swift_allocObject();

    v19 = sub_1B7CEA9FC(v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1B7CA29F0(0, v4[2] + 1, 1, v4);
    }

    v21 = v4[2];
    v20 = v4[3];
    if (v21 >= v20 >> 1)
    {
      v4 = sub_1B7CA29F0((v20 > 1), v21 + 1, 1, v4);
    }

    v24 = v17;
    v25 = &off_1F2FA8EB0;
    *&v23 = v19;
    v4[2] = v21 + 1;
    sub_1B7AE910C(&v23, &v4[5 * v21 + 4]);
  }

  return v4;
}

void sub_1B7C5378C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B7CFDEB0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t StorageInspector.encodeToData()()
{
  swift_getObjectType();
  sub_1B7CFDC10();
  swift_allocObject();
  sub_1B7CFDC00();
  sub_1B7C53DEC(&qword_1EBA528A8, &protocol conformance descriptor for StorageInspector);
  v0 = sub_1B7CFDBF0();

  return v0;
}

uint64_t static StorageInspector.create(fromData:)(uint64_t a1, uint64_t a2)
{
  sub_1B7CFDBE0();
  swift_allocObject();
  sub_1B7CFDBD0();
  sub_1B7C53DEC(&qword_1EBA528B0, &protocol conformance descriptor for StorageInspector);
  sub_1B7CFDBC0();

  if (!v2)
  {
    return v4;
  }

  return result;
}

unint64_t sub_1B7C53BD0()
{
  result = qword_1EBA52868;
  if (!qword_1EBA52868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52868);
  }

  return result;
}

unint64_t sub_1B7C53C24()
{
  result = qword_1EBA52878;
  if (!qword_1EBA52878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52878);
  }

  return result;
}

unint64_t sub_1B7C53C78()
{
  result = qword_1EBA52880;
  if (!qword_1EBA52880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52880);
  }

  return result;
}

unint64_t sub_1B7C53CCC()
{
  result = qword_1EBA52888;
  if (!qword_1EBA52888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52888);
  }

  return result;
}

unint64_t sub_1B7C53D20()
{
  result = qword_1EBA52898;
  if (!qword_1EBA52898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52898);
  }

  return result;
}

unint64_t sub_1B7C53D74()
{
  result = qword_1EBA528A0;
  if (!qword_1EBA528A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528A0);
  }

  return result;
}

uint64_t sub_1B7C53DEC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StorageInspector();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C53E30()
{
  result = qword_1EBA528B8;
  if (!qword_1EBA528B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528B8);
  }

  return result;
}

unint64_t sub_1B7C53E88()
{
  result = qword_1EBA528C0;
  if (!qword_1EBA528C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528C0);
  }

  return result;
}

unint64_t sub_1B7C53EE0()
{
  result = qword_1EBA528C8;
  if (!qword_1EBA528C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528C8);
  }

  return result;
}

unint64_t sub_1B7C53F38()
{
  result = qword_1EBA528D0;
  if (!qword_1EBA528D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528D0);
  }

  return result;
}

unint64_t sub_1B7C53F90()
{
  result = qword_1EBA528D8;
  if (!qword_1EBA528D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528D8);
  }

  return result;
}

unint64_t sub_1B7C53FE8()
{
  result = qword_1EBA528E0;
  if (!qword_1EBA528E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorageInspector.StorageInspectorError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for StorageInspector.StorageInspectorError(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for StorageInspectionCountReport.ReportContentFlags(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StorageInspectionCountReport.ReportContentFlags(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1B7C541D8()
{
  result = qword_1EBA528E8;
  if (!qword_1EBA528E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528E8);
  }

  return result;
}

unint64_t sub_1B7C54230()
{
  result = qword_1EBA528F0;
  if (!qword_1EBA528F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528F0);
  }

  return result;
}

unint64_t sub_1B7C54288()
{
  result = qword_1EBA528F8;
  if (!qword_1EBA528F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528F8);
  }

  return result;
}

unint64_t sub_1B7C542E4()
{
  result = qword_1EBA52900;
  if (!qword_1EBA52900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52900);
  }

  return result;
}

uint64_t sub_1B7C54338(void *a1, void *a2)
{
  sub_1B7C107FC(&qword_1EBA52910, &unk_1B7D0D940);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  return sub_1B7C521C0(a1, a2, v5, v6);
}

uint64_t sub_1B7C543EC()
{
  v1 = v0;
  v67 = *MEMORY[0x1E69E9840];
  v2 = sub_1B7CFE420();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v57 - v6;
  v8 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v57 - v9;
  v11 = sub_1B7CFDFF0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  v20 = OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_rootDirectory;
  swift_beginAccess();
  v60 = v1;
  sub_1B7C487D8(v1 + v20, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B7AEE190(v10, &qword_1EBA51FA0, &qword_1B7D0A6D0);
    sub_1B7C55FBC();
    v65 = swift_allocError();
    return swift_willThrow();
  }

  v58 = v4;
  (*(v12 + 32))(v19, v10, v11);
  v62 = v19;
  sub_1B7CFDFC0();
  LOBYTE(v66) = 0;
  v59 = objc_opt_self();
  v22 = [v59 defaultManager];
  v23 = sub_1B7CFEA30();

  v24 = [v22 fileExistsAtPath:v23 isDirectory:&v66];

  if (!v24)
  {
    v25 = v7;
LABEL_7:
    sub_1B7CFE410();
    (*(v12 + 16))(v16, v62, v11);
    v26 = sub_1B7CFE400();
    v27 = sub_1B7CFEED0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v66 = v29;
      *v28 = 136315138;
      v30 = sub_1B7CFDFC0();
      v57 = v25;
      v32 = v31;
      (*(v12 + 8))(v16, v11);
      v33 = sub_1B7AED1B8(v30, v32, &v66);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1B7AD5000, v26, v27, "Root directory not found: %s", v28, 0xCu);
      sub_1B7AE9168(v29);
      MEMORY[0x1B8CB0E70](v29, -1, -1);
      MEMORY[0x1B8CB0E70](v28, -1, -1);

      (*(v63 + 8))(v57, v64);
    }

    else
    {

      (*(v12 + 8))(v16, v11);
      (*(v63 + 8))(v25, v64);
    }

    goto LABEL_10;
  }

  v25 = v7;
  if ((v66 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v34 = [v59 defaultManager];
  v35 = v62;
  v36 = sub_1B7CFDF40();
  v66 = 0;
  v37 = [v34 contentsOfDirectoryAtURL:v36 includingPropertiesForKeys:0 options:0 error:&v66];

  v38 = v66;
  if (v37)
  {
    v39 = sub_1B7CFECE0();
    v40 = v38;

    v41 = v60;
    v60[5] = v39;

    *(v41 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_directoryCount) = *(v41[5] + 16);
    v42 = v58;
    sub_1B7CFE410();
    v43 = v61;
    (*(v12 + 16))(v61, v35, v11);
    v44 = sub_1B7CFE400();
    v45 = sub_1B7CFEED0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v43;
      v47 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v66 = v60;
      *v47 = 136315138;
      v48 = sub_1B7CFDFC0();
      v50 = v49;
      v51 = *(v12 + 8);
      v51(v46, v11);
      v52 = sub_1B7AED1B8(v48, v50, &v66);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1B7AD5000, v44, v45, "Inspecting '%s'", v47, 0xCu);
      v53 = v60;
      sub_1B7AE9168(v60);
      MEMORY[0x1B8CB0E70](v53, -1, -1);
      MEMORY[0x1B8CB0E70](v47, -1, -1);

      (*(v63 + 8))(v58, v64);
      return (v51)(v62, v11);
    }

    else
    {

      v56 = *(v12 + 8);
      v56(v43, v11);
      (*(v63 + 8))(v42, v64);
      return (v56)(v35, v11);
    }
  }

  else
  {
    v54 = v66;
    v55 = sub_1B7CFDEC0();

    v65 = v55;
    swift_willThrow();
    return (*(v12 + 8))(v35, v11);
  }
}

void sub_1B7C54BB0()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1B7CFE420();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v3 + 40) + 16))
  {
    v8 = *(v3 + 32);
    if (v8 < 0)
    {
      __break(1u);
    }

    else if (v8)
    {
      while (*(*(v3 + 40) + 16))
      {
        v9 = objc_autoreleasePoolPush();
        sub_1B7C54E00(v3, &v14);
        if (v2)
        {
          objc_autoreleasePoolPop(v9);
          return;
        }

        v2 = 0;
        objc_autoreleasePoolPop(v9);
        if (!--v8)
        {
          if (*(*(v3 + 40) + 16))
          {
            return;
          }

          break;
        }
      }

      sub_1B7CFE410();

      v10 = sub_1B7CFE400();
      v11 = sub_1B7CFEED0();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        *(v12 + 4) = *(v3 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_directoryCount);

        _os_log_impl(&dword_1B7AD5000, v10, v11, "Finished inspecting %ld root directories.", v12, 0xCu);
        MEMORY[0x1B8CB0E70](v12, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_1B7C54E00(uint64_t a1, void *a2)
{
  v4 = sub_1B7CFE420();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StorageInspectionAttachmentDirectory(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7CFDFF0();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 40);
  if (!*(v16 + 16))
  {
    __break(1u);
    goto LABEL_22;
  }

  v38 = a2;
  v35 = v5;
  v36 = v4;
  v17 = *(v11 + 16);
  v18 = v12;
  v17(v15, v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v12, v13);
  sub_1B7C909D8(0, 1);
  v19 = *(a1 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_attachmentDepth);
  if (!v19)
  {
    v33 = objc_autoreleasePoolPush();
    v34 = v18;
    (v17)(v9, v15, v18);
    *&v9[*(v7 + 20)] = MEMORY[0x1E69E7CC0];
    v23 = v39;
    sub_1B7C68F34();
    a2 = v23;
    if (!v23)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_13;
      }

      v7 = Strong;
      if (qword_1EBA515F0 != -1)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

LABEL_6:
    sub_1B7C55F44(v9);
    objc_autoreleasePoolPop(v33);
    v22 = v34;
    goto LABEL_7;
  }

  v20 = v18;
  v21 = v39;
  sub_1B7C552C8(v15, v19);
  a2 = v21;
  v22 = v20;
  if (v21)
  {
LABEL_7:
    result = (*(v11 + 8))(v15, v22);
    *v38 = a2;
    return result;
  }

  while (1)
  {
    v9 = OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_directoryCount;
    v26 = *(a1 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_directoryCount);
    v27 = *(*(a1 + 40) + 16);
    v7 = v26 - v27;
    if (!__OFSUB__(v26, v27))
    {
      break;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    Strong = swift_once();
LABEL_10:
    MEMORY[0x1EEE9AC00](Strong);
    *(&v33 - 2) = v7;
    *(&v33 - 1) = v9;
    SqlOperation.transact(_:)(sub_1B7C55FA0);
    if (a2)
    {
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
LABEL_13:
    sub_1B7C55F44(v9);
    objc_autoreleasePoolPop(v33);
    v22 = v34;
  }

  if (__ROR8__(0x8F5C28F5C28F5C29 * v7 + 0x51EB851EB851EB8, 1) <= 0x51EB851EB851EB8uLL)
  {
    v34 = v22;
    sub_1B7CFE410();

    v28 = sub_1B7CFE400();
    v29 = sub_1B7CFEED0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134218240;
      *(v30 + 4) = v7;
      *(v30 + 12) = 2048;
      *(v30 + 14) = *&v9[a1];

      _os_log_impl(&dword_1B7AD5000, v28, v29, "Inspected %ld of %ld root directories...", v30, 0x16u);
      MEMORY[0x1B8CB0E70](v30, -1, -1);
    }

    else
    {
    }

    v32 = v35;
    v31 = v36;

    (*(v32 + 8))(v37, v31);
    v22 = v34;
  }

  return (*(v11 + 8))(v15, v22);
}

void sub_1B7C552C8(char *a1, void *a2)
{
  v61 = a2;
  v66 = *MEMORY[0x1E69E9840];
  v51 = type metadata accessor for StorageInspectionAttachmentDirectory(0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v11 = sub_1B7CFDFF0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = objc_autoreleasePoolPush();
  v18 = *(v12 + 16);
  v50 = v12 + 16;
  v49 = v18;
  v18(v16, a1, v11);
  if (qword_1EBA51660 != -1)
  {
    swift_once();
  }

  v19 = qword_1EBA5DB50;
  type metadata accessor for AttachmentDirectoryEnumerator(0);
  swift_allocObject();

  v20 = sub_1B7CD6A6C(v16, v19, 4);
  if (v2)
  {
    goto LABEL_44;
  }

  v21 = v20;
  v55 = 0;
  v48 = v17;
  v22 = (v12 + 56);
  v58 = (v12 + 48);
  v59 = OBJC_IVAR____TtC14IMDPersistence29AttachmentDirectoryEnumerator_error;
  v56 = (v12 + 32);
  v57 = (v12 + 8);
  v23 = v52;
  v24 = v53;
  while (1)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = *(v21 + 16);
    if (v26)
    {
      if ([v26 nextObject])
      {
        sub_1B7CFF0A0();
        swift_unknownObjectRelease();
      }

      else
      {
        v62 = 0u;
        v63 = 0u;
      }

      v64 = v62;
      v65 = v63;
      if (*(&v63 + 1))
      {
        v27 = swift_dynamicCast();
        (*v22)(v7, v27 ^ 1u, 1, v11);
        goto LABEL_15;
      }
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
    }

    sub_1B7AEE190(&v64, &qword_1EBA51FA8, qword_1B7D0B230);
    (*v22)(v7, 1, 1, v11);
LABEL_15:
    v28 = *(v21 + v59);
    if (v28)
    {
      swift_willThrow();
      v43 = v28;
      sub_1B7AEE190(v7, &qword_1EBA51FA0, &qword_1B7D0A6D0);
      v17 = v48;
      goto LABEL_43;
    }

    sub_1B7C124A0(v7, v10);
    if ((*v58)(v10, 1, v11) == 1)
    {
      sub_1B7AEE190(v10, &qword_1EBA51FA0, &qword_1B7D0A6D0);
      objc_autoreleasePoolPop(v25);

      objc_autoreleasePoolPop(v48);
      return;
    }

    (*v56)(v23, v10, v11);
    v29 = *(v21 + 16);
    if (v29)
    {
      v30 = [v29 level];
      if (v30 != v61)
      {
        goto LABEL_6;
      }
    }

    else if (v61)
    {
      goto LABEL_6;
    }

    v60 = v25;
    v54 = objc_autoreleasePoolPush();
    v49(v24, v23, v11);
    *(v24 + *(v51 + 20)) = MEMORY[0x1E69E7CC0];
    sub_1B7CFDFC0();
    LOBYTE(v64) = 0;
    v31 = [objc_opt_self() defaultManager];
    v32 = sub_1B7CFEA30();

    v33 = [v31 fileExistsAtPath:v32 isDirectory:&v64];

    if (!v33 || (v64 & 1) == 0)
    {
      v25 = v60;
      goto LABEL_26;
    }

    v34 = objc_autoreleasePoolPush();
    v35 = v55;
    sub_1B7C691B4(v24, &v64);
    v25 = v60;
    if (v35)
    {
      break;
    }

    v55 = 0;
    objc_autoreleasePoolPop(v34);
LABEL_26:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v37 = Strong;
      if (qword_1EBA515F0 != -1)
      {
        swift_once();
      }

      v38 = off_1EBA52D08;
      v39 = objc_autoreleasePoolPush();
      swift_beginAccess();
      IMDSqlOperationBeginTransaction(v38 + 2);
      *&v62 = 0;
      IMDSqlOperationGetError((v38 + 2), &v62);
      v40 = v62;
      swift_endAccess();
      if (v40)
      {
        swift_willThrow();
        v55 = v40;
        v17 = v48;
        v44 = v54;
        goto LABEL_41;
      }

      v41 = v55;
      sub_1B7C597B8(v37, v53);
      v55 = v41;
      if (v41)
      {
        goto LABEL_37;
      }

      swift_beginAccess();
      IMDSqlOperationCommitTransaction(v38 + 2);
      *&v62 = 0;
      IMDSqlOperationGetError((v38 + 2), &v62);
      v42 = v62;
      swift_endAccess();
      if (v42)
      {
        swift_willThrow();
        v55 = v42;
LABEL_37:
        v17 = v48;
        v44 = v54;
        if (v38[4] && (swift_beginAccess(), IMDSqlOperationRevertTransaction(v38 + 2), *&v62 = 0, IMDSqlOperationGetError((v38 + 2), &v62), v45 = v62, swift_endAccess(), v45))
        {
          swift_willThrow();
          v46 = v45;

          v55 = v46;
        }

        else
        {
          swift_willThrow();
        }

LABEL_41:
        objc_autoreleasePoolPop(v39);
        swift_unknownObjectRelease();
        v24 = v53;
        v25 = v60;
        goto LABEL_42;
      }

      objc_autoreleasePoolPop(v39);
      swift_unknownObjectRelease();
      v24 = v53;
      v25 = v60;
    }

    sub_1B7C55F44(v24);
    objc_autoreleasePoolPop(v54);
    [*(v21 + 16) skipDescendants];
    v23 = v52;
LABEL_6:
    (*v57)(v23, v11);
    objc_autoreleasePoolPop(v25);
  }

  objc_autoreleasePoolPop(v34);
  v17 = v48;
  v44 = v54;
LABEL_42:
  sub_1B7C55F44(v24);
  objc_autoreleasePoolPop(v44);
  (*v57)(v52, v11);
LABEL_43:
  objc_autoreleasePoolPop(v25);

LABEL_44:
  objc_autoreleasePoolPop(v17);
}

uint64_t sub_1B7C55ACC()
{
  sub_1B7C12510(v0 + 16);

  sub_1B7AEE190(v0 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_rootDirectory, &qword_1EBA51FA0, &qword_1B7D0A6D0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AttachmentStorageDirectoryInspector(uint64_t a1)
{
  result = qword_1EBA52930;
  if (!qword_1EBA52930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7C55BA4(uint64_t a1)
{
  sub_1B7C4954C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1B7C55CAC()
{
  v1 = v0;
  v2 = sub_1B7CFDFF0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  v18[1] = 0;
  v18[2] = 0xE000000000000000;
  sub_1B7CFF210();
  v9 = sub_1B7CFF8D0();
  v11 = v10;

  v19 = v9;
  v20 = v11;
  MEMORY[0x1B8CADCA0](0xD000000000000011, 0x80000001B7D54C70);
  v12 = OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_rootDirectory;
  swift_beginAccess();
  sub_1B7C487D8(v1 + v12, v8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1B7AEE190(v8, &qword_1EBA51FA0, &qword_1B7D0A6D0);
    v13 = 0xE300000000000000;
    v14 = 7104878;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_1B7AEE190(v8, &qword_1EBA51FA0, &qword_1B7D0A6D0);
    v15 = sub_1B7CFDFC0();
    v13 = v16;
    (*(v3 + 8))(v5, v2);
    v14 = v15;
  }

  MEMORY[0x1B8CADCA0](v14, v13);

  return v19;
}

uint64_t sub_1B7C55F44(uint64_t a1)
{
  v2 = type metadata accessor for StorageInspectionAttachmentDirectory(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B7C55FBC()
{
  result = qword_1EBA52940;
  if (!qword_1EBA52940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52940);
  }

  return result;
}

unint64_t sub_1B7C56024()
{
  result = qword_1EBA52948;
  if (!qword_1EBA52948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52948);
  }

  return result;
}

uint64_t sub_1B7C56078()
{
  v1 = v0;
  v2 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v42 - v3;
  v4 = sub_1B7CFDFF0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7CFEA60();
  sub_1B7CFDF10();

  v8 = IMStickerCacheDirectoryURL();
  sub_1B7CFDFB0();

  sub_1B7CFDFC0();
  v48 = v5;
  v9 = *(v5 + 8);
  v45 = v4;
  v9(v7, v4);
  sub_1B7CFDF10();

  v10 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport;
  type metadata accessor for AttachmentStorageInspectorReport();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 344) = MEMORY[0x1E69E7CC0];
  StorageInspectionCountReport.init()();
  *(v1 + v10) = v13;
  v14 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_databaseContext;
  type metadata accessor for StorageInspectionVerificationDatabaseContext();
  swift_allocObject();
  *(v1 + v14) = sub_1B7CC27D0(0xD00000000000001ALL, 0x80000001B7D0DAD0);
  v15 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_attachmentPathsTable;
  type metadata accessor for StorageInspectionFileRecordTable();
  swift_allocObject();
  *(v1 + v15) = sub_1B7C74D3C(0xD000000000000015, 0x80000001B7D54E80, 2);
  v16 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_orphanedAttachmentPathsTable;
  swift_allocObject();
  *(v1 + v16) = sub_1B7C74D3C(0xD00000000000001ELL, 0x80000001B7D54EA0, 2);
  *(v1 + 24) = v12;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = v12;
  swift_beginAccess();
  sub_1B7C50E1C(v12);
  swift_endAccess();
  v17 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_databaseContext;
  v18 = *(v1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_databaseContext);
  swift_beginAccess();
  swift_retain_n();
  swift_retain_n();

  MEMORY[0x1B8CADDF0](v19);
  if (*((*(v18 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v18 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B7CFED00();
  }

  sub_1B7CFED40();
  swift_endAccess();

  v20 = *(v1 + v17);
  swift_beginAccess();
  swift_retain_n();

  MEMORY[0x1B8CADDF0](v21);
  if (*((*(v20 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v20 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B7CFED00();
  }

  sub_1B7CFED40();
  swift_endAccess();

  v43 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_attachmentURL;
  v22 = v48;
  v23 = *(v48 + 16);
  v47 = v48 + 16;
  v24 = v45;
  v23(v7, v1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_attachmentURL, v45);
  v25 = v7;
  v26 = v23;
  type metadata accessor for AttachmentStorageDirectoryLogger(0);
  v27 = swift_allocObject();
  v28 = v27 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_delegate;
  *(v27 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v27 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_directoryBatchSize) = 100;
  v29 = *(v22 + 32);
  v29(v27 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_rootDirectory, v25, v24);
  *(v28 + 8) = &off_1F2FA4B80;
  swift_unknownObjectWeakAssign();
  *(v27 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_minDepth) = 4;
  sub_1B7C5904C(v27, v1, type metadata accessor for AttachmentStorageDirectoryLogger, &off_1F2FA2E58);

  v44 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_stickerCacheURL;
  v23(v25, v1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_stickerCacheURL, v24);
  v30 = swift_allocObject();
  v31 = v30 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_delegate;
  *(v30 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v30 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_directoryBatchSize) = 100;
  v29(v30 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_rootDirectory, v25, v24);
  *(v31 + 8) = &off_1F2FA4B80;
  swift_unknownObjectWeakAssign();
  *(v30 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_minDepth) = 2;
  sub_1B7C5904C(v30, v1, type metadata accessor for AttachmentStorageDirectoryLogger, &off_1F2FA2E58);

  v32 = v46;
  v23(v46, v1 + v43, v24);
  v33 = *(v48 + 56);
  v33(v32, 0, 1, v24);
  type metadata accessor for AttachmentStorageDirectoryInspector(0);
  v34 = swift_allocObject();
  v34[3] = 0;
  swift_unknownObjectWeakInit();
  v34[4] = 100;
  v34[5] = MEMORY[0x1E69E7CC0];
  v35 = OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_rootDirectory;
  v33(v34 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_rootDirectory, 1, 1, v24);
  *(v34 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_directoryCount) = 0;
  swift_beginAccess();

  sub_1B7C4FB78(v32, v34 + v35);
  swift_endAccess();
  *(v34 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_attachmentDepth) = 2;
  v34[3] = &off_1F2FA4B90;
  swift_unknownObjectWeakAssign();

  sub_1B7C5904C(v34, v1, type metadata accessor for AttachmentStorageDirectoryInspector, &off_1F2FA4AB8);

  v26(v32, v1 + v44, v24);
  v33(v32, 0, 1, v24);
  v36 = swift_allocObject();
  v36[3] = 0;
  swift_unknownObjectWeakInit();
  v36[4] = 100;
  v36[5] = MEMORY[0x1E69E7CC0];
  v37 = OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_rootDirectory;
  v33(v36 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_rootDirectory, 1, 1, v24);
  *(v36 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_directoryCount) = 0;
  swift_beginAccess();
  sub_1B7C4FB78(v32, v36 + v37);
  swift_endAccess();
  *(v36 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_attachmentDepth) = 0;
  v36[3] = &off_1F2FA4B90;
  swift_unknownObjectWeakAssign();

  sub_1B7C5904C(v36, v1, type metadata accessor for AttachmentStorageDirectoryInspector, &off_1F2FA4AB8);

  if (qword_1EBA515D8 != -1)
  {
    swift_once();
  }

  v38 = *(v1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport);
  v39 = *(qword_1EBA5DAF0 + OBJC_IVAR____TtC14IMDPersistence29StorageInspectorReportManager_report);

  v40 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_attachmentStorageInspectorReport;
  swift_beginAccess();
  *&v39[v40] = v38;

  return v1;
}

void sub_1B7C569A8()
{
  v2 = v1;
  v9[7] = *MEMORY[0x1E69E9840];
  v3 = *(v0 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport);
  swift_beginAccess();
  *(v3 + 16) = &unk_1F2FA2000;

  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v4 = off_1EBA52D08;
  v5 = objc_autoreleasePoolPush();
  swift_beginAccess();
  IMDSqlOperationBeginTransaction(v4 + 2);
  v9[0] = 0;
  IMDSqlOperationGetError((v4 + 2), v9);
  v6 = v9[0];
  swift_endAccess();
  if (v6)
  {
    swift_willThrow();
    v6;
LABEL_13:
    objc_autoreleasePoolPop(v5);
    return;
  }

  sub_1B7C59208(v0);
  if (v1)
  {
    if (!v4[4])
    {
      goto LABEL_12;
    }

LABEL_10:
    swift_beginAccess();
    IMDSqlOperationRevertTransaction(v4 + 2);
    v9[0] = 0;
    IMDSqlOperationGetError((v4 + 2), v9);
    v8 = v9[0];
    swift_endAccess();
    if (v8)
    {
      swift_willThrow();
      v8;

      goto LABEL_13;
    }

LABEL_12:
    swift_willThrow();
    goto LABEL_13;
  }

  swift_beginAccess();
  IMDSqlOperationCommitTransaction(v4 + 2);
  v9[0] = 0;
  IMDSqlOperationGetError((v4 + 2), v9);
  v7 = v9[0];
  swift_endAccess();
  if (v7)
  {
    swift_willThrow();
    v2 = v7;
    if (!v4[4])
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  objc_autoreleasePoolPop(v5);
  sub_1B7CC3168();
}

void sub_1B7C56BCC(void *a1@<X8>)
{
  v3 = v2;
  v11[4] = *MEMORY[0x1E69E9840];
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v5 = off_1EBA52D08;
  v6 = objc_autoreleasePoolPush();
  swift_beginAccess();
  IMDSqlOperationBeginTransaction(v5 + 2);
  v11[0] = 0;
  IMDSqlOperationGetError((v5 + 2), v11);
  v7 = v11[0];
  swift_endAccess();
  if (v7)
  {
    swift_willThrow();
    v7;
LABEL_13:
    objc_autoreleasePoolPop(v6);
    return;
  }

  sub_1B7C56E4C();
  if (v2)
  {
    if (!v5[4])
    {
      goto LABEL_12;
    }

LABEL_10:
    swift_beginAccess();
    IMDSqlOperationRevertTransaction(v5 + 2);
    v11[0] = 0;
    IMDSqlOperationGetError((v5 + 2), v11);
    v9 = v11[0];
    swift_endAccess();
    if (v9)
    {
      swift_willThrow();
      v9;

      goto LABEL_13;
    }

LABEL_12:
    swift_willThrow();
    goto LABEL_13;
  }

  swift_beginAccess();
  IMDSqlOperationCommitTransaction(v5 + 2);
  v11[0] = 0;
  IMDSqlOperationGetError((v5 + 2), v11);
  v8 = v11[0];
  swift_endAccess();
  if (v8)
  {
    swift_willThrow();
    v3 = v8;
    if (!v5[4])
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  objc_autoreleasePoolPop(v6);
  sub_1B7C571DC(*(v1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_attachmentPathsTable), 0x656D686361747441, 0xEF7368746150746ELL);
  sub_1B7C571DC(*(v1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_orphanedAttachmentPathsTable), 0xD000000000000017, 0x80000001B7D54DA0);
  v10 = *(v1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport);
  a1[3] = type metadata accessor for AttachmentStorageInspectorReport();
  a1[4] = &protocol witness table for StorageInspectionCountReport;
  *a1 = v10;
}

void sub_1B7C56E4C()
{
  v23 = sub_1B7CFE420();
  v2 = MEMORY[0x1EEE9AC00](v23);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0;
  v25 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_databaseContext;
  v24 = "OrphanedAttachmentPaths";
  v21 = "BY ROWID ASC LIMIT ?;";
  v22 = "directoryBatchSize";
  v20 = (v6 + 8);
  v2.n128_u64[0] = 134217984;
  v19 = v2;
  while (1)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v0;
    v9 = *(v0 + v25);
    v10 = swift_allocObject();
    *(v10 + 16) = v5;
    if (qword_1EBA515F0 != -1)
    {
      swift_once();
    }

    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v9;

    v12 = sub_1B7CD7370(0xD000000000000085, v24 | 0x8000000000000000, sub_1B7C59668, v11);
    if (v1)
    {

      goto LABEL_15;
    }

    v13 = v12;

    swift_beginAccess();
    v14 = *(v10 + 16);
    v5 = v14 + 1;
    if (v14 == -1)
    {
      break;
    }

    if (!v13)
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v15 = sub_1B7C663C4(v13);

    if (!v15[2])
    {

LABEL_15:
      objc_autoreleasePoolPop(v7);
      return;
    }

    sub_1B7CFE410();

    v16 = sub_1B7CFE400();
    v17 = sub_1B7CFEEE0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = v19.n128_u32[0];
      *(v18 + 4) = v15[2];

      _os_log_impl(&dword_1B7AD5000, v16, v17, "found %ld remaining attachment records", v18, 0xCu);
      MEMORY[0x1B8CB0E70](v18, -1, -1);
    }

    else
    {
    }

    v0 = v8;
    (*v20)(v4, v23);
    sub_1B7C57BA8(v15);

    objc_autoreleasePoolPop(v7);
  }

  __break(1u);
}

void sub_1B7C571DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v47 = a2;
  v8 = *v3;
  v49 = sub_1B7CFDFF0();
  MEMORY[0x1EEE9AC00](v49);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  if (a1)
  {
    v42 = v20;
    v43 = a3;
    v41 = v5;
    v44 = v4;
    v45 = v19;
    v23 = qword_1EBA515D8;

    v46 = a1;
    if (v23 != -1)
    {
      swift_once();
    }

    sub_1B7C81520(v8, v24);
    sub_1B7C4F08C(v11);
    sub_1B7CFDF60();
    v25 = v45;
    v26 = *(v45 + 8);
    v27 = v11;
    v28 = v49;
    v26(v27, v49);
    sub_1B7CFDF60();
    v26(v14, v28);
    sub_1B7CFDF70();
    v26(v17, v28);
    type metadata accessor for StorageInspectorReportFile(0);
    v29 = swift_allocObject();
    v30 = (v29 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile____lazy_storage___path);
    *v30 = 0;
    v30[1] = 0;
    *(v29 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle) = 0;
    v31 = *(v25 + 32);
    v31(v29 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v22, v28);

    v48[0] = 0;
    v32 = v46;

    v33 = v44;
    sub_1B7C96F08(v29, v32, v48, 50);
    if (v33)
    {
      swift_setDeallocating();
      sub_1B7C95D64();
      swift_deallocClassInstance();
    }

    else
    {
      v34 = *(v41 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport);
      v35 = *(v25 + 16);
      v36 = v42;
      v35(v42, v29 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v28);
      swift_beginAccess();
      v37 = *(v34 + 344);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v34 + 344) = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = sub_1B7CA1D44(0, v37[2] + 1, 1, v37);
        *(v34 + 344) = v37;
      }

      v40 = v37[2];
      v39 = v37[3];
      if (v40 >= v39 >> 1)
      {
        v37 = sub_1B7CA1D44((v39 > 1), v40 + 1, 1, v37);
      }

      v37[2] = v40 + 1;
      v31(v37 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v40, v36, v49);
      *(v34 + 344) = v37;

      swift_setDeallocating();
      sub_1B7C95D64();
      swift_deallocClassInstance();
    }
  }
}

void sub_1B7C57674()
{
  v8[4] = *MEMORY[0x1E69E9840];
  sub_1B7CC33C4();
  if (!v1)
  {
    if (qword_1EBA515F0 != -1)
    {
      swift_once();
    }

    v2 = off_1EBA52D08;
    v3 = objc_autoreleasePoolPush();
    swift_beginAccess();
    IMDSqlOperationBeginTransaction(v2 + 2);
    v8[0] = 0;
    IMDSqlOperationGetError((v2 + 2), v8);
    v4 = v8[0];
    swift_endAccess();
    if (v4)
    {
      swift_willThrow();
      v4;
    }

    else
    {
      sub_1B7C59464(v0);
      swift_beginAccess();
      IMDSqlOperationCommitTransaction(v2 + 2);
      v8[0] = 0;
      IMDSqlOperationGetError((v2 + 2), v8);
      v5 = v8[0];
      swift_endAccess();
      if (!v5)
      {
        objc_autoreleasePoolPop(v3);
        return;
      }

      swift_willThrow();
      v6 = v5;
      if (v2[4] && (swift_beginAccess(), IMDSqlOperationRevertTransaction(v2 + 2), v8[0] = 0, IMDSqlOperationGetError((v2 + 2), v8), v7 = v8[0], swift_endAccess(), v7))
      {
        swift_willThrow();
        v7;
      }

      else
      {
        swift_willThrow();
      }
    }

    objc_autoreleasePoolPop(v3);
  }
}

uint64_t sub_1B7C57868()
{
  v1 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_attachmentURL;
  v2 = sub_1B7CFDFF0();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_stickerCacheURL, v2);
}

uint64_t sub_1B7C57940()
{

  sub_1B7AEE190(v0 + 32, &qword_1EBA52988, &unk_1B7D132D0);
  v1 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_attachmentURL;
  v2 = sub_1B7CFDFF0();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_stickerCacheURL, v2);

  return v0;
}

uint64_t sub_1B7C57A38()
{
  sub_1B7C57940();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AttachmentStorageInspector(uint64_t a1)
{
  result = qword_1EBA52960;
  if (!qword_1EBA52960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7C57AE4(uint64_t a1)
{
  result = sub_1B7CFDFF0();
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

void sub_1B7C57BA8(uint64_t a1)
{
  v3 = v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *(type metadata accessor for StorageInspectionAttachmentRecord(0) - 8);
    v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    while (1)
    {
      v9 = objc_autoreleasePoolPush();
      sub_1B7C57C88(v7, v1, &v10);
      if (v3)
      {
        break;
      }

      v3 = 0;
      objc_autoreleasePoolPop(v9);
      v7 += v8;
      if (!--v4)
      {
        return;
      }
    }

    objc_autoreleasePoolPop(v9);
  }
}

uint64_t sub_1B7C57C88(uint64_t a1, uint64_t a2, void *a3)
{
  v197 = a3;
  v190 = a2;
  v188 = sub_1B7CFE420();
  v195 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v193 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7C107FC(&qword_1EBA52970, &qword_1B7D0DB30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v183 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v182 = &v164 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v181 = &v164 - v11;
  v185 = sub_1B7CFDD50();
  v12 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v176 = &v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v175 = &v164 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v174 = &v164 - v17;
  v194 = sub_1B7CFDFF0();
  v18 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v187 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v196 = &v164 - v21;
  v22 = sub_1B7C107FC(&qword_1EBA52978, &qword_1B7D0DB38);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v164 - v23;
  v25 = type metadata accessor for StorageInspectionAttachmentDirectory(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(type metadata accessor for StorageInspectionAttachmentRecord(0) + 48);
  v189 = a1;
  sub_1B7C59684(a1 + v29, v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    return sub_1B7AEE190(v24, &qword_1EBA52978, &qword_1B7D0DB38);
  }

  sub_1B7C596F4(v24, v28);
  if (!*(*&v28[*(v25 + 20)] + 16))
  {
    return sub_1B7C59758(v28, type metadata accessor for StorageInspectionAttachmentDirectory);
  }

  v31 = sub_1B7CDE180(v28);
  if (v3)
  {
    result = sub_1B7C59758(v28, type metadata accessor for StorageInspectionAttachmentDirectory);
    *v197 = v3;
    return result;
  }

  v33 = v31[2];
  v186 = 0;
  if (!v33)
  {

    return sub_1B7C59758(v28, type metadata accessor for StorageInspectionAttachmentDirectory);
  }

  v164 = v31;
  v165 = v28;
  v34 = *(v18 + 16);
  v35 = v31 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v172 = (v12 + 56);
  v173 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport;
  v167 = (v12 + 32);
  v166 = (v12 + 8);
  v36 = v35;
  v37 = *(v18 + 72);
  v171 = *MEMORY[0x1E695DBA8];
  v191 = v37;
  v192 = (v18 + 8);
  v179 = "BY ROWID ASC LIMIT ?;";
  v180 = "directoryBatchSize";
  v38 = v194;
  v178 = (v195 + 8);
  *&v32 = 136315138;
  v168 = v32;
  v170 = xmmword_1B7D0A7B0;
  v184 = v18 + 16;
  v39 = v196;
  v40 = v33;
  v169 = v34;
  v34(v196, v36, v194);
  while (1)
  {
    v42 = URL.fileAllocationSize.getter();
    if (v43)
    {
      v197 = v36;
      v195 = v40;
      v44 = v193;
      sub_1B7CFE410();
      v45 = v187;
      v34(v187, v39, v38);
      v46 = sub_1B7CFE400();
      v47 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = v45;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v198 = v50;
        *v49 = v168;
        v177 = sub_1B7CFDFC0();
        v52 = v51;
        v53 = *v192;
        (*v192)(v48, v194);
        v54 = sub_1B7AED1B8(v177, v52, &v198);
        v34 = v169;

        *(v49 + 4) = v54;
        _os_log_impl(&dword_1B7AD5000, v46, v47, "File allocations size for url is nil: %s", v49, 0xCu);
        sub_1B7AE9168(v50);
        MEMORY[0x1B8CB0E70](v50, -1, -1);
        MEMORY[0x1B8CB0E70](v49, -1, -1);

        (*v178)(v193, v188);
        v39 = v196;
        v53(v196, v194);
        v38 = v194;
      }

      else
      {

        v41 = *v192;
        (*v192)(v45, v38);
        (*v178)(v44, v188);
        v39 = v196;
        v41(v196, v38);
      }

      goto LABEL_10;
    }

    v55 = v42;
    v56 = *(v189 + 24);
    if (v56 <= 1)
    {
      if (!*(v189 + 24))
      {
        (*v192)(v39, v38);
        goto LABEL_12;
      }

      v57 = *(v190 + v173);
      result = swift_beginAccess();
      v69 = v57[20];
      v70 = v69 + v55;
      if (__CFADD__(v69, v55))
      {
        goto LABEL_127;
      }

      v57[20] = v70;
      if (v70 < v69)
      {
        goto LABEL_130;
      }

      v71 = v57[17];
      if (__CFADD__(v71, v55))
      {
        goto LABEL_134;
      }

      v57[17] = v71 + v55;
      result = swift_beginAccess();
      v72 = v57[12];
      v73 = v72 + 1;
      if (v72 == -1)
      {
        goto LABEL_135;
      }

      v57[12] = v73;
      if (v73 < v72)
      {
        goto LABEL_138;
      }

      v74 = v57[9];
      if (v74 == -1)
      {
        goto LABEL_142;
      }

      v197 = v36;
      v195 = v40;
      v57[9] = v74 + 1;
      sub_1B7C107FC(&qword_1EBA52980, &unk_1B7D0DB40);
      inited = swift_initStackObject();
      *(inited + 16) = v170;
      v76 = v171;
      *(inited + 32) = v171;
      v77 = v76;
      sub_1B7C72F40(inited);
      swift_setDeallocating();
      v78 = v181;
      sub_1B7C59758(inited + 32, type metadata accessor for URLResourceKey);
      v79 = v186;
      sub_1B7CFDF00();
      if (v79)
      {

        (*v172)(v78, 1, 1, v185);
        sub_1B7AEE190(v78, &qword_1EBA52970, &qword_1B7D0DB30);
        v186 = 0;
      }

      else
      {
        v186 = 0;

        v97 = v185;
        (*v172)(v78, 0, 1, v185);
        v98 = v174;
        (*v167)(v174, v78, v97);
        v99 = sub_1B7CFDD40();
        (*v166)(v98, v97);
        if (v99 == 2)
        {
          v38 = v194;
        }

        else
        {
          v38 = v194;
          if ((v99 & 1) == 0)
          {
            v117 = 0;
            v138 = 0;
            v39 = v196;
            goto LABEL_86;
          }
        }
      }

      v105 = v196;
      v112 = sub_1B7CFDFC0();
      v114 = sub_1B7C73368(v112, v113);
      v116 = v115;

      if (v116)
      {
LABEL_57:
        (*v192)(v105, v38);
        v39 = v105;
LABEL_10:
        v40 = v195;
LABEL_11:
        v36 = v197;
        goto LABEL_12;
      }

      if (v114)
      {
        v117 = (IM_APFS_PURGEABLE_IGNORE_ME() & v114) == 0;
      }

      else
      {
        v117 = 0;
      }

      v39 = v196;
      v138 = [objc_opt_self() purgeableFlagsAttributedToMessages_];
LABEL_86:
      v40 = v195;
      (*v192)(v39, v38);
      if (!v117)
      {
        goto LABEL_11;
      }

      result = swift_beginAccess();
      v139 = v57[32];
      v140 = v139 + v55;
      if (__CFADD__(v139, v55))
      {
        goto LABEL_144;
      }

      v57[32] = v140;
      if (v140 < v139)
      {
        goto LABEL_149;
      }

      v141 = v57[29];
      if (__CFADD__(v141, v55))
      {
        goto LABEL_152;
      }

      v57[29] = v141 + v55;
      result = swift_beginAccess();
      v142 = v57[24];
      v143 = v142 + 1;
      v36 = v197;
      if (v142 == -1)
      {
        goto LABEL_153;
      }

      v57[24] = v143;
      if (v143 < v142)
      {
        goto LABEL_156;
      }

      v144 = v57[21];
      if (v144 == -1)
      {
        goto LABEL_160;
      }

      v57[21] = v144 + 1;
      if (v138)
      {
        result = swift_beginAccess();
        v145 = v57[36];
        v146 = v145 + v55;
        if (__CFADD__(v145, v55))
        {
          goto LABEL_164;
        }

        v57[36] = v146;
        if (v146 < v145)
        {
          goto LABEL_167;
        }

        v147 = v57[33];
        if (__CFADD__(v147, v55))
        {
          goto LABEL_168;
        }

        v57[33] = v147 + v55;
        result = swift_beginAccess();
        v148 = v57[28];
        v149 = v148 + 1;
        if (v148 == -1)
        {
          goto LABEL_172;
        }

        v57[28] = v149;
        if (v149 < v148)
        {
          goto LABEL_175;
        }

        v150 = v57[25];
        v137 = v150 + 1;
        if (v150 == -1)
        {
          goto LABEL_177;
        }

LABEL_117:
        v57[25] = v137;
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v197 = v36;
    if (v56 != 2)
    {
      break;
    }

    v57 = *(v190 + v173);
    result = swift_beginAccess();
    v58 = v57[10];
    v59 = v58 + 1;
    if (v58 == -1)
    {
      goto LABEL_128;
    }

    v57[10] = v59;
    if (v59 < v58)
    {
      goto LABEL_129;
    }

    v60 = v57[9];
    if (v60 == -1)
    {
      goto LABEL_132;
    }

    v57[9] = v60 + 1;
    result = swift_beginAccess();
    v61 = v57[18];
    v62 = v61 + v55;
    if (__CFADD__(v61, v55))
    {
      goto LABEL_137;
    }

    v57[18] = v62;
    if (v62 < v61)
    {
      goto LABEL_140;
    }

    v63 = v57[17];
    if (__CFADD__(v63, v55))
    {
      goto LABEL_143;
    }

    v195 = v40;
    v57[17] = v63 + v55;
    sub_1B7C107FC(&qword_1EBA52980, &unk_1B7D0DB40);
    v64 = swift_initStackObject();
    *(v64 + 16) = v170;
    v65 = v171;
    *(v64 + 32) = v171;
    v66 = v65;
    sub_1B7C72F40(v64);
    swift_setDeallocating();
    v67 = v182;
    sub_1B7C59758(v64 + 32, type metadata accessor for URLResourceKey);
    v68 = v186;
    sub_1B7CFDF00();
    if (v68)
    {

      (*v172)(v67, 1, 1, v185);
      sub_1B7AEE190(v67, &qword_1EBA52970, &qword_1B7D0DB30);
      v186 = 0;
    }

    else
    {
      v186 = 0;

      v94 = v185;
      (*v172)(v67, 0, 1, v185);
      v95 = v175;
      (*v167)(v175, v67, v94);
      v96 = sub_1B7CFDD40();
      (*v166)(v95, v94);
      if (v96 == 2)
      {
        v38 = v194;
      }

      else
      {
        v38 = v194;
        if ((v96 & 1) == 0)
        {
          v111 = 0;
          v124 = 0;
          v39 = v196;
          goto LABEL_69;
        }
      }
    }

    v105 = v196;
    v106 = sub_1B7CFDFC0();
    v108 = sub_1B7C73368(v106, v107);
    v110 = v109;

    if (v110)
    {
      goto LABEL_57;
    }

    if (v108)
    {
      v111 = (IM_APFS_PURGEABLE_IGNORE_ME() & v108) == 0;
    }

    else
    {
      v111 = 0;
    }

    v39 = v196;
    v124 = [objc_opt_self() purgeableFlagsAttributedToMessages_];
LABEL_69:
    v40 = v195;
    (*v192)(v39, v38);
    if (!v111)
    {
      goto LABEL_11;
    }

    result = swift_beginAccess();
    v125 = v57[30];
    v126 = v125 + v55;
    if (__CFADD__(v125, v55))
    {
      goto LABEL_145;
    }

    v57[30] = v126;
    if (v126 < v125)
    {
      goto LABEL_148;
    }

    v127 = v57[29];
    if (__CFADD__(v127, v55))
    {
      goto LABEL_151;
    }

    v57[29] = v127 + v55;
    result = swift_beginAccess();
    v128 = v57[22];
    v129 = v128 + 1;
    v36 = v197;
    if (v128 == -1)
    {
      goto LABEL_154;
    }

    v57[22] = v129;
    if (v129 < v128)
    {
      goto LABEL_158;
    }

    v130 = v57[21];
    if (v130 == -1)
    {
      goto LABEL_159;
    }

    v57[21] = v130 + 1;
    if (v124)
    {
      result = swift_beginAccess();
      v131 = v57[34];
      v132 = v131 + v55;
      if (__CFADD__(v131, v55))
      {
        goto LABEL_163;
      }

      v57[34] = v132;
      if (v132 < v131)
      {
        goto LABEL_166;
      }

      v133 = v57[33];
      if (__CFADD__(v133, v55))
      {
        goto LABEL_170;
      }

      v57[33] = v133 + v55;
      result = swift_beginAccess();
      v134 = v57[26];
      v135 = v134 + 1;
      if (v134 == -1)
      {
        goto LABEL_173;
      }

      v57[26] = v135;
      if (v135 < v134)
      {
        goto LABEL_174;
      }

      v136 = v57[25];
      v137 = v136 + 1;
      if (v136 == -1)
      {
        goto LABEL_179;
      }

      goto LABEL_117;
    }

LABEL_12:
    v36 = (v36 + v191);
    if (!--v40)
    {

      v28 = v165;
      return sub_1B7C59758(v28, type metadata accessor for StorageInspectionAttachmentDirectory);
    }

    v34(v39, v36, v38);
  }

  v57 = *(v190 + v173);
  result = swift_beginAccess();
  v80 = v57[11];
  v81 = v80 + 1;
  if (v80 != -1)
  {
    v57[11] = v81;
    if (v81 < v80)
    {
      goto LABEL_131;
    }

    v82 = v57[9];
    if (v82 == -1)
    {
      goto LABEL_133;
    }

    v57[9] = v82 + 1;
    result = swift_beginAccess();
    v83 = v57[19];
    v84 = v83 + v55;
    if (__CFADD__(v83, v55))
    {
      goto LABEL_136;
    }

    v57[19] = v84;
    if (v84 < v83)
    {
      goto LABEL_139;
    }

    v85 = v57[17];
    if (__CFADD__(v85, v55))
    {
      goto LABEL_141;
    }

    v57[17] = v85 + v55;
    sub_1B7C107FC(&qword_1EBA52980, &unk_1B7D0DB40);
    v86 = swift_initStackObject();
    *(v86 + 16) = v170;
    v87 = v171;
    *(v86 + 32) = v171;
    v88 = v86 + 32;
    v89 = v87;
    sub_1B7C72F40(v86);
    swift_setDeallocating();
    v90 = v196;
    sub_1B7C59758(v88, type metadata accessor for URLResourceKey);
    v91 = v183;
    v92 = v186;
    sub_1B7CFDF00();
    if (v92)
    {
      v93 = v40;

      (*v172)(v91, 1, 1, v185);
      sub_1B7AEE190(v91, &qword_1EBA52970, &qword_1B7D0DB30);
      v186 = 0;
      goto LABEL_63;
    }

    v186 = 0;

    v100 = v91;
    v101 = v91;
    v102 = v185;
    (*v172)(v100, 0, 1, v185);
    v103 = v176;
    (*v167)(v176, v101, v102);
    v104 = sub_1B7CFDD40();
    (*v166)(v103, v102);
    if (v104 == 2)
    {
      v93 = v40;
      v38 = v194;
LABEL_62:
      v90 = v196;
LABEL_63:
      v118 = sub_1B7CFDFC0();
      v120 = sub_1B7C73368(v118, v119);
      v122 = v121;

      if (v122)
      {
        (*v192)(v90, v38);
        v39 = v90;
        v40 = v93;
        v34 = v169;
        goto LABEL_11;
      }

      if (v120)
      {
        v123 = (IM_APFS_PURGEABLE_IGNORE_ME() & v120) == 0;
      }

      else
      {
        v123 = 0;
      }

      v39 = v196;
      v151 = [objc_opt_self() purgeableFlagsAttributedToMessages_];
      v40 = v93;
      v34 = v169;
    }

    else
    {
      v38 = v194;
      if (v104)
      {
        v93 = v40;
        goto LABEL_62;
      }

      v123 = 0;
      v151 = 0;
      v39 = v196;
    }

    (*v192)(v39, v38);
    if (!v123)
    {
      goto LABEL_11;
    }

    result = swift_beginAccess();
    v152 = v57[31];
    v153 = v152 + v55;
    if (__CFADD__(v152, v55))
    {
      goto LABEL_146;
    }

    v57[31] = v153;
    if (v153 < v152)
    {
      goto LABEL_147;
    }

    v154 = v57[29];
    if (__CFADD__(v154, v55))
    {
      goto LABEL_150;
    }

    v57[29] = v154 + v55;
    result = swift_beginAccess();
    v155 = v57[23];
    v156 = v155 + 1;
    v36 = v197;
    if (v155 == -1)
    {
      goto LABEL_155;
    }

    v57[23] = v156;
    if (v156 < v155)
    {
      goto LABEL_157;
    }

    v157 = v57[21];
    if (v157 == -1)
    {
      goto LABEL_161;
    }

    v57[21] = v157 + 1;
    if (v151)
    {
      result = swift_beginAccess();
      v158 = v57[35];
      v159 = v158 + v55;
      if (__CFADD__(v158, v55))
      {
        goto LABEL_162;
      }

      v57[35] = v159;
      if (v159 < v158)
      {
        goto LABEL_165;
      }

      v160 = v57[33];
      if (__CFADD__(v160, v55))
      {
        goto LABEL_169;
      }

      v57[33] = v160 + v55;
      result = swift_beginAccess();
      v161 = v57[27];
      v162 = v161 + 1;
      if (v161 == -1)
      {
        goto LABEL_171;
      }

      v57[27] = v162;
      if (v162 < v161)
      {
        goto LABEL_176;
      }

      v163 = v57[25];
      v137 = v163 + 1;
      if (v163 == -1)
      {
        goto LABEL_178;
      }

      goto LABEL_117;
    }

    goto LABEL_12;
  }

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
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
  return result;
}

uint64_t sub_1B7C5904C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1B7CA29F0(0, v8[2] + 1, 1, v8);
    *(a2 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1B7CA29F0((v10 > 1), v11 + 1, 1, v8);
  }

  v12 = a3(0);
  v19 = v12;
  v20 = a4;
  *&v18 = a1;
  v8[2] = v11 + 1;
  sub_1B7AE910C(&v18, &v8[5 * v11 + 4]);
  *(a2 + 16) = v8;
  swift_endAccess();
  swift_beginAccess();
  v13 = *(a2 + 24);

  v14 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v13;
  if ((v14 & 1) == 0)
  {
    v13 = sub_1B7CA29F0(0, v13[2] + 1, 1, v13);
    *(a2 + 24) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1B7CA29F0((v15 > 1), v16 + 1, 1, v13);
  }

  v19 = v12;
  v20 = a4;
  *&v18 = a1;
  v13[2] = v16 + 1;
  sub_1B7AE910C(&v18, &v13[5 * v16 + 4]);
  *(a2 + 24) = v13;
  return swift_endAccess();
}

void sub_1B7C59208(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_databaseContext);
  sub_1B7CC2DDC();
  if (!v1)
  {
    sub_1B7C60A6C();
    swift_beginAccess();
    v3 = *(v2 + 32);
    if (v3 >> 62)
    {
      goto LABEL_20;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v4)
    {
      v5 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1B8CAE380](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v6 = *(v3 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            v4 = sub_1B7CFF120();
            goto LABEL_4;
          }
        }

        if (qword_1EBA515F0 != -1)
        {
          swift_once();
        }

        sub_1B7CFF210();

        MEMORY[0x1B8CADCA0](v6[2], v6[3]);
        MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
        SqlOperation.execute(_:_:)(0xD000000000000015, 0x80000001B7D54D80, 0, 0);

        (*(*v6 + 152))(v8);

        ++v5;
      }

      while (v7 != v4);
    }
  }
}

void sub_1B7C59464(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_databaseContext);
  sub_1B7CC2C18();
  if (!v1)
  {
    swift_beginAccess();
    v3 = *(v2 + 32);
    if (v3 >> 62)
    {
      goto LABEL_20;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v4)
    {
      v5 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1B8CAE380](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v6 = *(v3 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            v4 = sub_1B7CFF120();
            goto LABEL_4;
          }
        }

        if (qword_1EBA515F0 != -1)
        {
          swift_once();
        }

        sub_1B7CFF210();

        MEMORY[0x1B8CADCA0](*(v6 + 16), *(v6 + 24));
        MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
        SqlOperation.execute(_:_:)(0xD000000000000015, 0x80000001B7D54D80, 0, 0);

        ++v5;
      }

      while (v7 != v4);
    }
  }
}

uint64_t sub_1B7C59684(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA52978, &qword_1B7D0DB38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7C596F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageInspectionAttachmentDirectory(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7C59758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B7C597B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7CFDFF0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v106 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v87 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v100 = (&v87 - v10);
  v11 = type metadata accessor for StorageInspectionAttachmentDirectory(0);
  MEMORY[0x1EEE9AC00](v11);
  v97 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v87 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v87 - v16;
  v104 = sub_1B7CFE420();
  v96 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v94 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v87 - v20;
  v22 = *(a1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport);
  swift_beginAccess();
  v23 = *(v22 + 296);
  v24 = __CFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v22 + 296) = v25;
  v26 = *(a2 + *(v11 + 20));
  v27 = *(v26 + 16);
  v98 = v11;
  if (v27)
  {
    v28 = v92;
    sub_1B7C60B88(a2);
    if (v28)
    {
      return;
    }

    v105 = sub_1B7C65A2C(v29);

    v102 = sub_1B7C663C4(v105);

    sub_1B7C57BA8(v102);

    v92 = 0;
  }

  else
  {
    swift_beginAccess();
    v30 = *(v22 + 304);
    v24 = __CFADD__(v30, 1);
    v31 = v30 + 1;
    if (v24)
    {
LABEL_26:
      __break(1u);
      return;
    }

    *(v22 + 304) = v31;
  }

  v101 = "BY ROWID ASC LIMIT ?;";
  v102 = "directoryBatchSize";
  sub_1B7CFE410();
  sub_1B7C5A108(a2, v17);
  v32 = v99;
  sub_1B7C5A108(a2, v99);
  v33 = a2;
  v34 = v97;
  sub_1B7C5A108(v33, v97);
  v35 = sub_1B7CFE400();
  v36 = sub_1B7CFEEE0();
  v37 = os_log_type_enabled(v35, v36);
  v105 = v4;
  if (!v37)
  {
    sub_1B7C59758(v32, type metadata accessor for StorageInspectionAttachmentDirectory);

    sub_1B7C59758(v34, type metadata accessor for StorageInspectionAttachmentDirectory);
    sub_1B7C59758(v17, type metadata accessor for StorageInspectionAttachmentDirectory);
    v67 = v96;
    v100 = v96[1];
    v100(v21, v104);
    v69 = v106;
    v70 = v94;
    v71 = *(v26 + 16);
    if (!v71)
    {
      return;
    }

    goto LABEL_18;
  }

  v88 = v36;
  v90 = v35;
  v91 = v21;
  *&v93 = v26;
  v38 = swift_slowAlloc();
  v87 = swift_slowAlloc();
  v107 = v87;
  *v38 = 136315650;
  sub_1B7C5A16C();
  v39 = sub_1B7CFF570();
  v41 = v40;
  sub_1B7C59758(v17, type metadata accessor for StorageInspectionAttachmentDirectory);
  v42 = sub_1B7AED1B8(v39, v41, &v107);

  *(v38 + 4) = v42;
  *(v38 + 12) = 2048;
  v43 = v98;
  v44 = *(*&v32[*(v98 + 20)] + 16);
  sub_1B7C59758(v32, type metadata accessor for StorageInspectionAttachmentDirectory);
  *(v38 + 14) = v44;
  v89 = v38;
  *(v38 + 22) = 2080;
  v45 = *(v34 + *(v43 + 20));
  v46 = *(v45 + 16);
  v95 = v5;
  v47 = 0;
  if (v46)
  {
    v49 = v5[2];
    v48 = v5 + 2;
    v50 = v45 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v98 = v48[7];
    v99 = v49;
    while (1)
    {
      v51 = v100;
      v52 = v105;
      (v99)(v100, v50, v105);
      v53 = URL.fileAllocationSize.getter();
      v55 = v54;
      (*(v48 - 1))(v51, v52);
      v56 = (v55 & 1) != 0 ? 0 : v53;
      v24 = __CFADD__(v47, v56);
      v47 += v56;
      if (v24)
      {
        break;
      }

      v50 += v98;
      if (!--v46)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_15:
  v57 = objc_opt_self();
  v58 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  v59 = [v57 stringFromHugeNumber_];

  v60 = sub_1B7CFEA60();
  v62 = v61;

  sub_1B7C59758(v97, type metadata accessor for StorageInspectionAttachmentDirectory);
  v63 = sub_1B7AED1B8(v60, v62, &v107);

  v64 = v89;
  *(v89 + 24) = v63;
  v65 = v90;
  _os_log_impl(&dword_1B7AD5000, v90, v88, "Found attachment: %s, found %ld attachments, for %s on disk", v64, 0x20u);
  v66 = v87;
  swift_arrayDestroy();
  MEMORY[0x1B8CB0E70](v66, -1, -1);
  MEMORY[0x1B8CB0E70](v64, -1, -1);

  v67 = v96;
  v100 = v96[1];
  v100(v91, v104);
  v4 = v105;
  v69 = v106;
  v70 = v94;
  v5 = v95;
  v26 = v93;
  v71 = *(v93 + 16);
  if (v71)
  {
LABEL_18:
    v73 = v5[2];
    v72 = v5 + 2;
    v74 = v26 + ((*(v72 + 64) + 32) & ~*(v72 + 64));
    v98 = v72[7];
    v99 = v73;
    v96 = v72 - 1;
    v97 = (v72 + 2);
    v95 = v67 + 1;
    *&v68 = 136315138;
    v93 = v68;
    do
    {
      v84 = v103;
      (v99)(v103, v74, v4);
      sub_1B7CFE410();
      (*v97)(v69, v84, v4);
      v85 = sub_1B7CFE400();
      v86 = sub_1B7CFEEE0();
      if (os_log_type_enabled(v85, v86))
      {
        v75 = swift_slowAlloc();
        v76 = v72;
        v77 = swift_slowAlloc();
        v107 = v77;
        *v75 = v93;
        sub_1B7C5A16C();
        v78 = sub_1B7CFF570();
        v80 = v79;
        (*v96)(v106, v105);
        v81 = sub_1B7AED1B8(v78, v80, &v107);
        v4 = v105;

        *(v75 + 4) = v81;
        _os_log_impl(&dword_1B7AD5000, v85, v86, "%s", v75, 0xCu);
        sub_1B7AE9168(v77);
        v82 = v77;
        v72 = v76;
        v69 = v106;
        MEMORY[0x1B8CB0E70](v82, -1, -1);
        v83 = v75;
        v70 = v94;
        MEMORY[0x1B8CB0E70](v83, -1, -1);
      }

      else
      {

        (*v96)(v69, v4);
      }

      v100(v70, v104);
      v74 += v98;
      --v71;
    }

    while (v71);
  }
}

uint64_t sub_1B7C5A108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageInspectionAttachmentDirectory(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7C5A16C()
{
  result = qword_1EBA52088;
  if (!qword_1EBA52088)
  {
    sub_1B7CFDFF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52088);
  }

  return result;
}

uint64_t sub_1B7C5A1C4()
{
  sub_1B7C107FC(&qword_1EBA52770, &qword_1B7D0CFA8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7D0CB60;
  v1 = type metadata accessor for ChatLookupRecord(0);
  v2 = sub_1B7C5A2E4(&qword_1EDBE3F90, type metadata accessor for ChatLookupRecord, &unk_1B7D12950);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for SyncChatSliceRecord(0);
  v4 = sub_1B7C5A2E4(&qword_1EDBE3CA0, type metadata accessor for SyncChatSliceRecord, &unk_1B7D10260);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for ChatServiceRecord(0);
  result = sub_1B7C5A2E4(&qword_1EDBE3F10, type metadata accessor for ChatServiceRecord, &unk_1B7D0AF20);
  *(v0 + 64) = v5;
  *(v0 + 72) = result;
  qword_1EBA5DB28 = v0;
  return result;
}

uint64_t sub_1B7C5A2E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1B7C5A32C()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CD0];
  v0[2] = MEMORY[0x1E69E7CD0];
  v0[3] = 0;
  type metadata accessor for StorageInspectionVerificationDatabaseContext();
  swift_allocObject();
  v0[4] = sub_1B7CC27D0(0xD000000000000011, 0x80000001B7D0DBD0);
  type metadata accessor for StorageInspectionOrphanedAttachmentTable();
  swift_allocObject();
  v0[5] = sub_1B7C74D3C(0xD000000000000014, 0x80000001B7D552B0, 1);
  v0[6] = 0;
  v0[7] = v2;
  v0[8] = v2;
  v0[9] = v2;
  type metadata accessor for DatabaseInspectionReport();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 344) = MEMORY[0x1E69E7CC0];
  StorageInspectionCountReport.init()();
  v0[10] = v5;
  type metadata accessor for DatabaseTableInspectionReport();
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = v4;
  v0[11] = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = 4;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = v4;
  v0[12] = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = 8;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = v4;
  v0[13] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = 2;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = v4;
  v0[14] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = 3;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = v4;
  v0[15] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = 7;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = v4;
  v0[16] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = 6;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = v4;
  v0[17] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = 5;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = v4;
  v0[18] = v13;
  v14 = v0[4];
  swift_beginAccess();
  swift_retain_n();

  MEMORY[0x1B8CADDF0](v15);
  if (*((*(v14 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v14 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B7CFED00();
  }

  sub_1B7CFED40();
  swift_endAccess();

  v16 = qword_1EBA5DB00;
  if (qword_1EBA5DB00)
  {
    v17 = v1[4];
    v18 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior;
    swift_beginAccess();
    v19 = 100;
    if (*(v16 + v18))
    {
      v20 = 1000;
    }

    else
    {
      v20 = 100;
    }

    *(v17 + 16) = v20;
    if (*(v16 + v18))
    {
      v19 = 1000;
    }

    *(v17 + 24) = v19;
  }

  if (qword_1EBA515D8 != -1)
  {
    swift_once();
  }

  v21 = *(qword_1EBA5DAF0 + OBJC_IVAR____TtC14IMDPersistence29StorageInspectorReportManager_report);
  v22 = v1[10];
  v23 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_databaseInspectionReport;
  swift_beginAccess();
  *&v21[v23] = v22;
  v24 = v21;

  sub_1B7C107FC(&qword_1EBA52060, &qword_1B7D0AFD0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B7D0DB50;
  v26 = v1[12];
  *(v25 + 32) = v1[11];
  *(v25 + 40) = v26;
  v27 = v1[14];
  *(v25 + 48) = v1[13];
  *(v25 + 56) = v27;
  v28 = v1[16];
  *(v25 + 64) = v1[15];
  *(v25 + 72) = v28;
  v29 = v1[18];
  *(v25 + 80) = v1[17];
  *(v25 + 88) = v29;
  v1[19] = v25;

  return v1;
}

void sub_1B7C5A75C()
{
  v8[4] = *MEMORY[0x1E69E9840];
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v2 = off_1EBA52D08;
  v3 = objc_autoreleasePoolPush();
  swift_beginAccess();
  IMDSqlOperationBeginTransaction(v2 + 2);
  v8[0] = 0;
  IMDSqlOperationGetError((v2 + 2), v8);
  v4 = v8[0];
  swift_endAccess();
  if (!v4)
  {
    sub_1B7C603B8(v0);
    v5 = v1;
    if (v1)
    {
      if (!v2[4])
      {
        goto LABEL_12;
      }
    }

    else
    {
      swift_beginAccess();
      IMDSqlOperationCommitTransaction(v2 + 2);
      v8[0] = 0;
      IMDSqlOperationGetError((v2 + 2), v8);
      v6 = v8[0];
      swift_endAccess();
      if (!v6)
      {
        goto LABEL_13;
      }

      swift_willThrow();
      v5 = v6;
      if (!v2[4])
      {
LABEL_12:
        swift_willThrow();
        goto LABEL_13;
      }
    }

    swift_beginAccess();
    IMDSqlOperationRevertTransaction(v2 + 2);
    v8[0] = 0;
    IMDSqlOperationGetError((v2 + 2), v8);
    v7 = v8[0];
    swift_endAccess();
    if (v7)
    {
      swift_willThrow();
      v7;

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  swift_willThrow();
  v4;
LABEL_13:
  objc_autoreleasePoolPop(v3);
}

void sub_1B7C5A934()
{
  v1 = *(v0 + 152);
  if (v1 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7CFF120())
  {
    v3 = 0;
    while ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1B8CAE380](v3, v1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_53;
      }

LABEL_7:
      v6 = *(v25 + 80);
      swift_beginAccess();

      MEMORY[0x1B8CADDF0](v7);
      if (*((*(v6 + 344) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 344) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7CFED00();
      }

      sub_1B7CFED40();
      swift_endAccess();
      if (qword_1EBA515F0 != -1)
      {
        swift_once();
      }

      v8 = *(v4 + 16);
      v9 = 0xD000000000000017;
      v10 = 0xD00000000000001DLL;
      if (v8 == 8)
      {
        v10 = 0xD000000000000010;
      }

      v11 = 0x80000001B7D4E2C0;
      if (v8 == 8)
      {
        v11 = 0x80000001B7D4E2A0;
      }

      if (v8 != 7)
      {
        v9 = v10;
      }

      v13 = 0x80000001B7D4E260;
      v12 = 0x80000001B7D4E280;
      if (v8 != 7)
      {
        v12 = v11;
      }

      if (v8 == 5)
      {
        v14 = 0xD000000000000011;
      }

      else
      {
        v14 = 0xD000000000000010;
      }

      if (v8 == 5)
      {
        v13 = 0x80000001B7D4E240;
      }

      if (*(v4 + 16) <= 6u)
      {
        v9 = v14;
        v12 = v13;
      }

      v15 = 0x656D686361747461;
      if (v8 != 3)
      {
        v15 = 0x656C646E6168;
      }

      v16 = 0xEA0000000000746ELL;
      if (v8 != 3)
      {
        v16 = 0xE600000000000000;
      }

      if (v8 == 2)
      {
        v15 = 0x6567617373656DLL;
      }

      v17 = 0xE700000000000000;
      if (v8 == 2)
      {
        v16 = 0xE700000000000000;
      }

      v18 = 0x6E776F6E6B6E75;
      if (*(v4 + 16))
      {
        v18 = 1952540771;
        v17 = 0xE400000000000000;
      }

      if (*(v4 + 16) <= 1u)
      {
        v15 = v18;
        v16 = v17;
      }

      if (*(v4 + 16) <= 4u)
      {
        v19 = v15;
      }

      else
      {
        v19 = v9;
      }

      if (*(v4 + 16) <= 4u)
      {
        v20 = v16;
      }

      else
      {
        v20 = v12;
      }

      v21 = v20;
      v22 = SqlOperation.rowCount(forTable:)(*&v19);
      if (v23)
      {

        return;
      }

      v24 = v22;

      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_55;
      }

      swift_beginAccess();
      *(v4 + 24) = v24;

      ++v3;
      if (v5 == i)
      {
        return;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_54;
    }

    v4 = *(v1 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }
}

void sub_1B7C5AC78()
{
  v2 = *(*(v0 + 32) + 16);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v1;
    if (v2)
    {
      v4 = v2 - 1;
      while (1)
      {
        v5 = v4;
        v8 = 0;
        v6 = objc_autoreleasePoolPush();
        sub_1B7C5AD1C(v0, &v8, &v7);
        if (v3)
        {
          break;
        }

        v3 = 0;
        objc_autoreleasePoolPop(v6);
        if ((v8 & 1) == 0)
        {
          v4 = v5 - 1;
          if (v5)
          {
            continue;
          }
        }

        return;
      }

      objc_autoreleasePoolPop(v6);
    }
  }
}

void sub_1B7C5AD1C(uint64_t a1, char *a2, void *a3)
{
  v41 = a3;
  v40 = sub_1B7CFE420();
  v6 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v35 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v35 - v13;
  v15 = sub_1B7C5B1BC();
  if (v3)
  {
LABEL_2:
    *v41 = v3;
    return;
  }

  v36 = v11;
  v37 = a2;
  v38 = v6;
  v39 = 0;
  if (v16)
  {
    sub_1B7CFE410();

    v17 = sub_1B7CFE400();
    v18 = sub_1B7CFEED0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134218240;
      *(v19 + 4) = *(a1 + 48);
      *(v19 + 12) = 2048;
      v20 = *(a1 + 88);
      swift_beginAccess();
      *(v19 + 14) = *(v20 + 24);

      _os_log_impl(&dword_1B7AD5000, v17, v18, "Finished Inspecting %ld of %ld chats...", v19, 0x16u);
      MEMORY[0x1B8CB0E70](v19, -1, -1);
    }

    else
    {
    }

    v34 = v37;
    (*(v38 + 8))(v8, v40);
    *v34 = 1;
  }

  else
  {
    v21 = v15;
    v35[1] = "directoryBatchSize";
    v37 = "nspectionReport";
    sub_1B7CFE410();
    v22 = sub_1B7CFE400();
    v23 = sub_1B7CFEEE0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v21;
      _os_log_impl(&dword_1B7AD5000, v22, v23, "- Verifying chat with rowID %llu", v24, 0xCu);
      MEMORY[0x1B8CB0E70](v24, -1, -1);
    }

    v25 = *(v38 + 8);
    v25(v14, v40);
    v3 = v39;
    sub_1B7C5B46C(v21, a1);
    if (v3)
    {
      goto LABEL_2;
    }

    v26 = *(a1 + 48);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      __break(1u);
    }

    else
    {
      *(a1 + 48) = v28;
      v29 = v36;
      if (__ROR8__(0x8F5C28F5C28F5C29 * v28 + 0x51EB851EB851EB8, 1) <= 0x51EB851EB851EB8uLL)
      {
        v39 = 0;
        sub_1B7CFE410();

        v30 = sub_1B7CFE400();
        v31 = sub_1B7CFEED0();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 134218240;
          *(v32 + 4) = *(a1 + 48);
          *(v32 + 12) = 2048;
          v33 = *(a1 + 88);
          swift_beginAccess();
          *(v32 + 14) = *(v33 + 24);

          _os_log_impl(&dword_1B7AD5000, v30, v31, "Inspecting %ld of %ld chats...", v32, 0x16u);
          MEMORY[0x1B8CB0E70](v32, -1, -1);
        }

        else
        {
        }

        v25(v29, v40);
      }
    }
  }
}

id sub_1B7C5B1BC()
{
  v12[4] = *MEMORY[0x1E69E9840];
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v1 = off_1EBA52D08;
  sub_1B7CFF210();

  v12[1] = 0xD000000000000012;
  v12[2] = 0x80000001B7D51810;
  v2 = *(v0 + 56);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  MEMORY[0x1B8CADCA0](v3, v4);

  MEMORY[0x1B8CADCA0](0xD00000000000001CLL, 0x80000001B7D55290);
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery(v1 + 16, v6);
  swift_endAccess();

  swift_beginAccess();
  v12[0] = 0;
  IMDSqlOperationGetError((v1 + 16), v12);
  v7 = v12[0];
  swift_endAccess();
  if (v7)
  {
    swift_willThrow();
    v7;
  }

  else
  {
    v9._countAndFlagsBits = 0x4449574F52;
    v9._object = 0xE500000000000000;
    v7 = SqlOperation.firstUInt64(forColumnName:)(v9);
    swift_beginAccess();
    IMDSqlOperationFinishQuery((v1 + 16));
    v12[0] = 0;
    IMDSqlOperationGetError((v1 + 16), v12);
    v10 = v12[0];
    swift_endAccess();
    if (v10)
    {
      swift_willThrow();
      swift_beginAccess();
      v11 = v10;
      IMDSqlOperationFinishQuery((v1 + 16));
      v12[0] = 0;
      IMDSqlOperationGetError((v1 + 16), v12);
      v7 = v12[0];
      swift_endAccess();
      swift_willThrow();
      if (v7)
      {
        v7 = v7;
      }
    }
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

void sub_1B7C5B46C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v58 = *MEMORY[0x1E69E9840];
  v7 = sub_1B7CFE420();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7C5C1C0(a1, a2);
  if (v3)
  {
    return;
  }

  sub_1B7C90218(a1, v11, v39);

  v35 = 0;
  v46 = v39[6];
  v47 = v39[7];
  v48 = v39[8];
  v42 = v39[2];
  v43 = v39[3];
  v44 = v39[4];
  v45 = v39[5];
  v40 = v39[0];
  v41 = v39[1];
  if (sub_1B7C608C8(&v40) == 1)
  {
    sub_1B7CFE410();
    v12 = sub_1B7CFE400();
    v13 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = a1;
      _os_log_impl(&dword_1B7AD5000, v12, v13, "Could not find chat record for row ID %llu", v14, 0xCu);
      MEMORY[0x1B8CB0E70](v14, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    return;
  }

  v55 = v46;
  v56 = v47;
  v57 = v48;
  v51 = v42;
  v52 = v43;
  v53 = v44;
  v54 = v45;
  v49 = v40;
  v50 = v41;
  sub_1B7C8CD2C(&v37);
  sub_1B7AEE190(v39, &qword_1EBA529A0, &qword_1B7D0DC48);
  v15 = v38;
  if (v38)
  {
    if (*(v38 + 16))
    {
      v34 = v37;
      v16 = *(a2 + 88);
      swift_beginAccess();
      v17 = *(v16 + 48);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 48) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_1B7CA2B48(0, *(v17 + 2) + 1, 1, v17);
        *(v16 + 48) = v17;
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      if (v20 >= v19 >> 1)
      {
        v17 = sub_1B7CA2B48((v19 > 1), v20 + 1, 1, v17);
      }

      *(v17 + 2) = v20 + 1;
      v21 = &v17[16 * v20];
      *(v21 + 4) = v34;
      *(v21 + 5) = v15;
      *(v16 + 48) = v17;
      swift_endAccess();
    }
  }

  v22 = *(a2 + 80);
  swift_beginAccess();
  v23 = *(v22 + 24);
  v24 = __CFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_30;
  }

  *(v22 + 24) = v25;
  if (qword_1EBA515F0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v26 = off_1EBA52D08;
  v27 = objc_autoreleasePoolPush();
  swift_beginAccess();
  IMDSqlOperationBeginTransaction(v26 + 2);
  v36[0] = 0;
  IMDSqlOperationGetError((v26 + 2), v36);
  v28 = v36[0];
  swift_endAccess();
  if (v28)
  {
    swift_willThrow();
    v28;
  }

  else
  {
    v29 = v35;
    sub_1B7C608E0(v4, a1, a2);
    if (v29)
    {
      v30 = v29;
    }

    else
    {
      swift_beginAccess();
      IMDSqlOperationCommitTransaction(v26 + 2);
      v36[0] = 0;
      IMDSqlOperationGetError((v26 + 2), v36);
      v31 = v36[0];
      swift_endAccess();
      if (!v31)
      {
        objc_autoreleasePoolPop(v27);
        return;
      }

      swift_willThrow();
      v30 = v31;
    }

    if (v26[4] && (swift_beginAccess(), IMDSqlOperationRevertTransaction(v26 + 2), v36[0] = 0, IMDSqlOperationGetError((v26 + 2), v36), v32 = v36[0], swift_endAccess(), v32))
    {
      swift_willThrow();
      v32;
    }

    else
    {
      swift_willThrow();
    }
  }

  objc_autoreleasePoolPop(v27);
}

void sub_1B7C5B984(Swift::String *a1)
{
  v3 = v2;
  v4 = v1;
  v16[6] = *MEMORY[0x1E69E9840];
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v6 = off_1EBA52D08;
  v7 = objc_autoreleasePoolPush();
  swift_beginAccess();
  IMDSqlOperationBeginTransaction(v6 + 2);
  v16[0] = 0;
  IMDSqlOperationGetError((v6 + 2), v16);
  v8 = v16[0];
  swift_endAccess();
  if (v8)
  {
    swift_willThrow();
    v8;
  }

  else
  {
    sub_1B7C5CD84(a1);
    if (!v2)
    {
      countAndFlagsBits = a1[5]._countAndFlagsBits;
      v10 = SqlOperation.rowCount(forTable:)(*(*(v4 + 64) + 16));
      v3 = v11;
      if (!v11)
      {
        v12 = v10;
        swift_beginAccess();
        *(countAndFlagsBits + 48) = v12;
        sub_1B7C5DF34(a1);
        sub_1B7C5E2B0(a1);
        sub_1B7C5CA4C(a1);
        sub_1B7C5CC38(a1);
        sub_1B7C5E568(a1);
        swift_beginAccess();
        IMDSqlOperationCommitTransaction(v6 + 2);
        v15 = 0;
        IMDSqlOperationGetError((v6 + 2), &v15);
        v13 = v15;
        swift_endAccess();
        if (!v13)
        {
          goto LABEL_13;
        }

        swift_willThrow();
        v3 = v13;
      }
    }

    if (v6[4] && (swift_beginAccess(), IMDSqlOperationRevertTransaction(v6 + 2), v15 = 0, IMDSqlOperationGetError((v6 + 2), &v15), v14 = v15, swift_endAccess(), v14))
    {
      swift_willThrow();
      v14;
    }

    else
    {
      swift_willThrow();
    }
  }

LABEL_13:
  objc_autoreleasePoolPop(v7);
}

void sub_1B7C5BC18()
{
  v21[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1B7CFE420();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v6 = off_1EBA52D08;
  v7 = objc_autoreleasePoolPush();
  swift_beginAccess();
  IMDSqlOperationBeginTransaction(v6 + 2);
  v21[0] = 0;
  IMDSqlOperationGetError((v6 + 2), v21);
  v8 = v21[0];
  swift_endAccess();
  if (!v8)
  {
    sub_1B7C605EC(v0);
    if (v1)
    {
      v9 = v1;
      if (!v6[4])
      {
        goto LABEL_12;
      }
    }

    else
    {
      swift_beginAccess();
      IMDSqlOperationCommitTransaction(v6 + 2);
      v21[0] = 0;
      IMDSqlOperationGetError((v6 + 2), v21);
      v10 = v21[0];
      swift_endAccess();
      if (!v10)
      {
        objc_autoreleasePoolPop(v7);
        return;
      }

      swift_willThrow();
      v9 = v10;
      if (!v6[4])
      {
        goto LABEL_12;
      }
    }

    swift_beginAccess();
    IMDSqlOperationRevertTransaction(v6 + 2);
    v21[0] = 0;
    IMDSqlOperationGetError((v6 + 2), v21);
    v11 = v21[0];
    swift_endAccess();
    if (v11)
    {
      swift_willThrow();
      v12 = v11;

      v9 = v12;
      goto LABEL_13;
    }

LABEL_12:
    swift_willThrow();
    goto LABEL_13;
  }

  swift_willThrow();
  v9 = v8;
LABEL_13:
  objc_autoreleasePoolPop(v7);
  sub_1B7CFE410();
  v13 = v9;
  v14 = sub_1B7CFE400();
  v15 = sub_1B7CFEEF0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v9;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_1B7AD5000, v14, v15, "failed to drop verification tables: %@", v16, 0xCu);
    sub_1B7AEE190(v17, &qword_1EBA521E0, &unk_1B7D0CE60);
    MEMORY[0x1B8CB0E70](v17, -1, -1);
    MEMORY[0x1B8CB0E70](v16, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
}

void *sub_1B7C5BFD4()
{

  return v0;
}

uint64_t sub_1B7C5C06C()
{
  sub_1B7C5BFD4();

  return swift_deallocClassInstance();
}

void sub_1B7C5C134(uint64_t *a1@<X8>)
{
  v4 = *v1;
  sub_1B7C5B984(*v1);
  if (!v2)
  {
    countAndFlagsBits = v4[5]._countAndFlagsBits;
    a1[3] = type metadata accessor for DatabaseInspectionReport();
    a1[4] = &protocol witness table for StorageInspectionCountReport;
    *a1 = countAndFlagsBits;
  }
}

uint64_t sub_1B7C5C1C0(uint64_t a1, uint64_t a2)
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = sub_1B7CD7370(0xD000000000000051, 0x80000001B7D55230, sub_1B7C60A04, v4);

  if (!v2)
  {
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v7 = *(v6 + 16);
    if (v7)
    {
      v13 = v6;
      v8 = (v6 + 32);
      swift_beginAccess();
      v9 = MEMORY[0x1E69E76D8];
      do
      {
        v10 = *v8++;
        sub_1B7C5E81C(v14, v10, &qword_1EBA52990, &unk_1B7D0DC30, v9);
        --v7;
      }

      while (v7);
      swift_endAccess();
      v6 = v13;
    }

    sub_1B7C74460(v6);

    sub_1B7C107FC(&qword_1EBA52998, &qword_1B7D0DC40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7D0A7B0;
    *(inited + 32) = a1;
    sub_1B7C74894(inited, 0x64695F74616863, 0xE700000000000000);

    swift_setDeallocating();
    v5 = sub_1B7CDAC54(v6);
  }

  return v5;
}

uint64_t sub_1B7C5C3F8(sqlite3_int64 a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v40 = a3;
  v49 = a1;
  v51[3] = *MEMORY[0x1E69E9840];
  v39 = sub_1B7CFE420();
  v8 = MEMORY[0x1EEE9AC00](v39);
  v47 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = 0;
  v44 = "ionVerificationDatabaseContext";
  v45 = 0;
  v42 = "directoryBatchSize";
  v43 = "SELECT message_id FROM ";
  v41 = "ROM message WHERE ROWID == ?;";
  v38 = (v10 + 8);
  v8.n128_u64[0] = 134218496;
  v36 = v8;
  v37 = xmmword_1B7D0A7B0;
  for (i = v3; ; v6 = i)
  {
    v11 = objc_autoreleasePoolPush();
    if (qword_1EBA515F0 != -1)
    {
      swift_once();
    }

    v12 = off_1EBA52D08;
    v51[0] = 0;
    v51[1] = 0xE000000000000000;
    sub_1B7CFF210();
    MEMORY[0x1B8CADCA0](0xD000000000000017, v44 | 0x8000000000000000);
    v13 = a2;
    MEMORY[0x1B8CADCA0](*(a2 + 32), *(a2 + 40));
    MEMORY[0x1B8CADCA0](0xD000000000000048, v43 | 0x8000000000000000);

    v14 = objc_autoreleasePoolPush();
    v15 = sub_1B7CFEA30();
    swift_beginAccess();
    IMDSqlOperationStartQuery(v12 + 16, v15);
    swift_endAccess();

    swift_beginAccess();
    v50 = 0;
    IMDSqlOperationGetError((v12 + 16), &v50);
    v16 = v50;
    swift_endAccess();
    if (v16)
    {
      swift_willThrow();
      v16;
      goto LABEL_28;
    }

    sub_1B7C261D0(v12, v49, v45, v6, v51);
    if (v4)
    {
      goto LABEL_25;
    }

    v17 = v51[0];
    swift_beginAccess();
    IMDSqlOperationFinishQuery((v12 + 16));
    v50 = 0;
    IMDSqlOperationGetError((v12 + 16), &v50);
    v18 = v50;
    swift_endAccess();
    if (v18)
    {
      break;
    }

    objc_autoreleasePoolPop(v14);

    if (!v17)
    {
      v21 = v11;
LABEL_13:
      v17 = MEMORY[0x1E69E7CC0];
      goto LABEL_14;
    }

    v19 = *(v17 + 16);
    if (!v19)
    {
      v21 = v11;

      goto LABEL_13;
    }

    v20 = *(v17 + 8 * v19 + 24);
    v45 = v20 + 1;
    if (v20 == -1)
    {
      goto LABEL_33;
    }

    v21 = v11;
LABEL_14:
    v22 = *(v17 + 16);
    v23 = v48 + v22;
    if (__CFADD__(v48, v22))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    if (!v22)
    {

      objc_autoreleasePoolPop(v21);
      return v23;
    }

    sub_1B7CFE410();

    v24 = sub_1B7CFE400();
    v25 = sub_1B7CFEEE0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = v36.n128_u32[0];
      *(v26 + 4) = *(v17 + 16);
      *(v26 + 12) = 2048;
      *(v26 + 14) = v49;
      *(v26 + 22) = 2048;
      if (!*(v17 + 16))
      {
        goto LABEL_32;
      }

      *(v26 + 24) = *(v17 + 32);
      v27 = v26;

      _os_log_impl(&dword_1B7AD5000, v24, v25, "Verifying %ld messages in chat %llu for table: chat_message_join, starting at row: %llu", v27, 0x20u);
      MEMORY[0x1B8CB0E70](v27, -1, -1);
    }

    else
    {
    }

    (*v38)(v47, v39);
    v28 = v40;
    v29 = *(v40 + 80);
    swift_beginAccess();
    v30 = *(v29 + 40);
    v31 = __CFADD__(v30, v22);
    v32 = v30 + v22;
    if (v31)
    {
      goto LABEL_31;
    }

    *(v29 + 40) = v32;
    sub_1B7C5CFAC(v17, v28);

    sub_1B7C107FC(&qword_1EBA52998, &qword_1B7D0DC40);
    inited = swift_initStackObject();
    *(inited + 16) = v37;
    *(inited + 32) = v49;
    a2 = v13;
    sub_1B7C74894(inited, 0x64695F74616863, 0xE700000000000000);

    swift_setDeallocating();
    objc_autoreleasePoolPop(v21);
    v48 = v23;
  }

  swift_willThrow();
  v5 = v18;
LABEL_25:
  swift_beginAccess();
  IMDSqlOperationFinishQuery((v12 + 16));
  v50 = 0;
  IMDSqlOperationGetError((v12 + 16), &v50);
  v34 = v50;
  swift_endAccess();
  swift_willThrow();
  if (v34)
  {
    v34;
  }

LABEL_28:
  objc_autoreleasePoolPop(v14);

  objc_autoreleasePoolPop(v11);
  return v48;
}

void sub_1B7C5CA4C(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  v4 = sub_1B7CD7640(&v18);
  if (!v1)
  {
    while (1)
    {
      v5 = *(v4 + 16);
      if (!v5)
      {
        break;
      }

      v16 = v3;
      v15 = v4;
      v6 = v4 + 32;
      swift_beginAccess();
      v7 = 0;
      do
      {
        v9 = *(v6 + 8 * v7++);
        v10 = *(a1 + 72);
        v11 = sub_1B7CFF7B0();
        v12 = -1 << *(v10 + 32);
        v13 = v11 & ~v12;
        if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          v14 = ~v12;
          while (*(*(v10 + 48) + 8 * v13) != v9)
          {
            v13 = (v13 + 1) & v14;
            if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
LABEL_5:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v17 = *(a1 + 72);
          sub_1B7C5F58C(v9, v13, isUniquelyReferenced_nonNull_native, &qword_1EBA52990, &unk_1B7D0DC30, MEMORY[0x1E69E76D8]);
          *(a1 + 72) = v17;
        }
      }

      while (v7 != v5);
      swift_endAccess();
      sub_1B7C74460(v15);

      objc_autoreleasePoolPop(v16);
      v3 = objc_autoreleasePoolPush();
      v4 = sub_1B7CD7640(&v18);
    }
  }

  objc_autoreleasePoolPop(v3);
}

Swift::UInt64 sub_1B7C5CC38(Swift::String *a1)
{
  v2 = a1;
  countAndFlagsBits = a1[5]._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v2[3]._object + 2);
  swift_beginAccess();
  v5 = countAndFlagsBits[42];
  countAndFlagsBits[42] = v4;
  v6 = v4 >= v5;
  v7 = v4 - v5;
  if (!v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = countAndFlagsBits[39];
  v9 = v8 + v7;
  if (__CFADD__(v8, v7))
  {
    goto LABEL_14;
  }

  countAndFlagsBits[39] = v9;
  swift_beginAccess();
  v10 = *(v2[4]._object + 2);
  v11 = countAndFlagsBits[41];
  countAndFlagsBits[41] = v10;
  v6 = v10 >= v11;
  v12 = v10 - v11;
  if (!v6)
  {
    goto LABEL_15;
  }

  v6 = __CFADD__(v9, v12);
  v13 = v9 + v12;
  if (!v6)
  {
    countAndFlagsBits[39] = v13;
    v2 = *(v1 + 72);
    if (qword_1EBA515F0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  swift_once();
LABEL_8:
  result = SqlOperation.rowCount(forTable:)(v2[1]);
  if (!v15)
  {
    v16 = countAndFlagsBits[40];
    countAndFlagsBits[40] = result;
    v6 = result >= v16;
    v17 = result - v16;
    if (!v6)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    v18 = countAndFlagsBits[39];
    v6 = __CFADD__(v18, v17);
    v19 = v18 + v17;
    if (v6)
    {
      goto LABEL_18;
    }

    countAndFlagsBits[39] = v19;
  }

  return result;
}

void sub_1B7C5CD84(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  v4 = sub_1B7C26374(&v21);
  if (v1)
  {
LABEL_14:
    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v5 = v4;
    v18 = a1;
    while (1)
    {
      v6 = *(v5 + 16);
      if (!v6)
      {

        goto LABEL_14;
      }

      v7 = *(a1 + 80);
      swift_beginAccess();
      v8 = *(v7 + 56);
      v9 = __CFADD__(v8, v6);
      v10 = v8 + v6;
      if (v9)
      {
        break;
      }

      v19 = v3;
      *(v7 + 56) = v10;
      v20 = MEMORY[0x1E69E7CC0];
      sub_1B7AECEEC(0, v6, 0);
      v11 = (v5 + 48);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v15 = *(v20 + 16);
        v14 = *(v20 + 24);

        if (v15 >= v14 >> 1)
        {
          sub_1B7AECEEC((v14 > 1), v15 + 1, 1);
        }

        *(v20 + 16) = v15 + 1;
        v16 = v20 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v13;
        v11 += 3;
        --v6;
      }

      while (v6);

      v17 = sub_1B7C26978(v20);

      if (*(v17 + 16))
      {
        a1 = v18;
        sub_1B7C5CFAC(v17, v18);
        sub_1B7C74460(v17);
      }

      else
      {

        a1 = v18;
      }

      objc_autoreleasePoolPop(v19);
      v3 = objc_autoreleasePoolPush();
      v5 = sub_1B7C26374(&v21);
    }

    __break(1u);
  }
}

void sub_1B7C5CFAC(uint64_t a1, uint64_t a2)
{
  v22 = *(a1 + 16);
  if (v22)
  {
    v4 = 0;
    v23 = a1 + 32;
    while (1)
    {
      v6 = *(v23 + 8 * v4);
      v7 = objc_autoreleasePoolPush();
      sub_1B7C5D298(v6, a2);
      if (v2)
      {
        break;
      }

      if (qword_1EBA515F0 != -1)
      {
        swift_once();
      }

      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      v9 = sub_1B7CD7370(0xD00000000000003DLL, 0x80000001B7D55140, sub_1B7C6084C, v8);
      v26 = v7;

      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      v11 = *(v10 + 16);
      if (v11)
      {
        v24 = v4;
        v25 = v10;
        v12 = v10 + 32;
        swift_beginAccess();
        v13 = 0;
        do
        {
          v15 = *(v12 + 8 * v13++);
          v16 = *(a2 + 56);
          v17 = sub_1B7CFF7B0();
          v18 = -1 << *(v16 + 32);
          v19 = v17 & ~v18;
          if ((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
          {
            v20 = ~v18;
            while (*(*(v16 + 48) + 8 * v19) != v15)
            {
              v19 = (v19 + 1) & v20;
              if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
LABEL_13:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v27 = *(a2 + 56);
            sub_1B7C5F58C(v15, v19, isUniquelyReferenced_nonNull_native, &qword_1EBA52990, &unk_1B7D0DC30, MEMORY[0x1E69E76D8]);
            *(a2 + 56) = v27;
          }
        }

        while (v13 != v11);
        swift_endAccess();
        sub_1B7C74460(v25);
        v5 = v26;

        v4 = v24;
      }

      else
      {

        v5 = v26;
      }

      ++v4;
      objc_autoreleasePoolPop(v5);
      if (v4 == v22)
      {
        goto LABEL_21;
      }
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
LABEL_21:
    sub_1B7C74460(a1);
    if (!v2)
    {
    }
  }
}

void sub_1B7C5D298(uint64_t a1, uint64_t a2)
{
  v125 = a2;
  v134 = *MEMORY[0x1E69E9840];
  v122 = type metadata accessor for StorageInspectionAttachmentDirectory(0);
  v129 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v118 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1B7CFDFF0();
  v119 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v126 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v127 = &v97 - v7;
  v8 = sub_1B7C107FC(&qword_1EBA52978, &qword_1B7D0DB38);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v97 - v12;
  v14 = type metadata accessor for StorageInspectionAttachmentRecord(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v97 - v19;
  v21 = v130;
  v22 = sub_1B7C60E9C(a1);
  if (v21)
  {
    return;
  }

  v102 = a1;
  v121 = v17;
  v123 = v20;
  v120 = v14;
  v115 = v15;
  v111 = v13;
  v23 = v125;
  v109 = v10;
  v104 = v2;
  if (!*(v22 + 16))
  {

    return;
  }

  v105 = v22;
  v24 = sub_1B7C65A2C(v22);
  v98 = 0;
  v25 = *(v24 + 16);
  if (!v25)
  {
    goto LABEL_63;
  }

  v99 = v24;
  v26 = *(v23 + 80);
  swift_beginAccess();
  v27 = v26[16];
  v28 = v27 + v25;
  if (__CFADD__(v27, v25))
  {
    goto LABEL_74;
  }

  v26[16] = v28;
  v29 = v111;
  v30 = v115;
  v31 = v120;
  v32 = v123;
  v33 = v122;
  if (v28 < v27)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v34 = v26[13];
  if (__CFADD__(v34, v25))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v26[13] = v34 + v25;
  v35 = v125;
  swift_beginAccess();
  swift_beginAccess();
  v36 = sub_1B7C65CF0(v99, (v35 + 16), (v35 + 24));
  swift_endAccess();
  swift_endAccess();
  v116 = v36[2];
  if (!v116)
  {

    v82 = *(v30 + 72);
    v83 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    goto LABEL_54;
  }

  swift_beginAccess();
  v37 = v26[37];
  v38 = __CFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
LABEL_77:
    __break(1u);
  }

  v26[37] = v39;
  v97 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v114 = v36 + v97;
  v110 = v26 + 38;
  swift_beginAccess();
  swift_beginAccess();
  v100 = v26 + 17;
  swift_beginAccess();
  v40 = 0;
  v117 = (v129 + 48);
  v128 = v119 + 16;
  v41 = (v119 + 8);
  v113 = v36;
  v103 = v25;
  v108 = v26;
  while (1)
  {
    if (v40 >= v36[2])
    {
      goto LABEL_66;
    }

    v112 = *(v30 + 72);
    v124 = v40;
    sub_1B7C607E8(&v114[v112 * v40], v32);
    v42 = *(v31 + 48);
    sub_1B7C59684(v32 + v42, v29);
    v43 = *v117;
    if ((*v117)(v29, 1, v33) != 1)
    {
      break;
    }

    sub_1B7AEE190(v29, &qword_1EBA52978, &qword_1B7D0DB38);
LABEL_34:
    v32 = v123;
    sub_1B7C60868(v123, type metadata accessor for StorageInspectionAttachmentRecord);
    v66 = v110;
    v67 = *v110 + 1;
    if (*v110 == -1)
    {
      goto LABEL_68;
    }

    v31 = v120;
    v36 = v113;
LABEL_13:
    v40 = v124 + 1;
    *v66 = v67;
    if (v40 == v116)
    {
      goto LABEL_52;
    }
  }

  v44 = *(v29 + *(v33 + 20));
  v45 = *(v44 + 16);
  if (!v45)
  {
    sub_1B7C60868(v29, type metadata accessor for StorageInspectionAttachmentDirectory);
    v30 = v115;
    goto LABEL_34;
  }

  v106 = v42;
  v107 = v43;
  v46 = objc_opt_self();
  v47 = 0;
  v101 = (*(v119 + 80) + 32) & ~*(v119 + 80);
  v48 = v44 + v101;
  v129 = *(v119 + 72);
  v130 = *(v119 + 16);
  v49 = v131;
  v50 = v127;
  v130(v127, v44 + v101, v131);
  while (1)
  {
    sub_1B7CFDFC0();
    v51 = *v41;
    (*v41)(v50, v49);
    LOBYTE(v132) = 0;
    v52 = [v46 defaultManager];
    v53 = sub_1B7CFEA30();

    v54 = [v52 fileExistsAtPath:v53 isDirectory:&v132];

    if (v54)
    {
      if (__OFADD__(v47++, 1))
      {
        __break(1u);
        goto LABEL_65;
      }
    }

    v48 += v129;
    --v45;
    v49 = v131;
    v50 = v127;
    if (!v45)
    {
      break;
    }

    v130(v127, v48, v131);
  }

  v29 = v111;
  sub_1B7C60868(v111, type metadata accessor for StorageInspectionAttachmentDirectory);
  v56 = v126;
  v57 = v108;
  if (v47 < 0)
  {
    goto LABEL_67;
  }

  v25 = v103;
  v33 = v122;
  v30 = v115;
  if (!v47)
  {
    goto LABEL_34;
  }

  v58 = v108[12];
  v59 = v58 + v47;
  if (__CFADD__(v58, v47))
  {
    goto LABEL_69;
  }

  v108[12] = v59;
  v38 = v59 >= v58;
  v60 = v47;
  v61 = v109;
  if (!v38)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v62 = v57[9];
  v38 = __CFADD__(v62, v60);
  v63 = v62 + v60;
  if (v38)
  {
    goto LABEL_71;
  }

  v57[9] = v63;
  v64 = v123;
  sub_1B7C59684(&v123[v106], v61);
  if (v107(v61, 1, v33) == 1)
  {
    sub_1B7C60868(v64, type metadata accessor for StorageInspectionAttachmentRecord);
    sub_1B7AEE190(v61, &qword_1EBA52978, &qword_1B7D0DB38);
    v65 = 0;
    v32 = v64;
    goto LABEL_46;
  }

  v68 = v61;
  v69 = v118;
  sub_1B7C596F4(v68, v118);
  v70 = *(v69 + *(v33 + 20));
  v71 = *(v70 + 16);
  if (v71)
  {
    v65 = 0;
    v72 = v70 + v101;
    while (1)
    {
      v73 = v131;
      v130(v56, v72, v131);
      v74 = URL.fileAllocationSize.getter();
      v76 = v75;
      v51(v56, v73);
      v77 = (v76 & 1) != 0 ? 0 : v74;
      v38 = __CFADD__(v65, v77);
      v65 += v77;
      if (v38)
      {
        break;
      }

      v72 += v129;
      --v71;
      v56 = v126;
      if (!v71)
      {
        goto LABEL_45;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v65 = 0;
LABEL_45:
  v32 = v123;
  sub_1B7C60868(v123, type metadata accessor for StorageInspectionAttachmentRecord);
  sub_1B7C60868(v118, type metadata accessor for StorageInspectionAttachmentDirectory);
  v25 = v103;
  v29 = v111;
  v30 = v115;
  v33 = v122;
LABEL_46:
  v78 = v108[20];
  v79 = v78 + v65;
  v80 = v100;
  if (__CFADD__(v78, v65))
  {
    goto LABEL_72;
  }

  v108[20] = v79;
  v38 = v79 >= v78;
  v81 = v65;
  v31 = v120;
  v36 = v113;
  if (!v38)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v38 = __CFADD__(*v80, v81);
  v67 = *v80 + v81;
  if (!v38)
  {
    v66 = v80;
    goto LABEL_13;
  }

  __break(1u);
LABEL_52:

  v82 = v112;
  v83 = v97;
LABEL_54:
  v84 = v99 + v83;
  v85 = v121;
  do
  {
    sub_1B7C607E8(v84, v85);
    sub_1B7C61014(&v132);
    v86 = v133;
    if (v133)
    {
      v87 = v132;
      v88 = *(v125 + 120);
      swift_beginAccess();
      v89 = *(v88 + 48);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v88 + 48) = v89;
      v91 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v89 = sub_1B7CA2B48(0, *(v89 + 2) + 1, 1, v89);
        *(v88 + 48) = v89;
      }

      v93 = *(v89 + 2);
      v92 = *(v89 + 3);
      if (v93 >= v92 >> 1)
      {
        v89 = sub_1B7CA2B48((v92 > 1), v93 + 1, 1, v89);
      }

      *(v89 + 2) = v93 + 1;
      v94 = &v89[16 * v93];
      *(v94 + 4) = v87;
      *(v94 + 5) = v86;
      *(v88 + 48) = v89;
      swift_endAccess();

      v85 = v121;
      sub_1B7C60868(v121, type metadata accessor for StorageInspectionAttachmentRecord);
      v25 = v91;
    }

    else
    {
      sub_1B7C60868(v85, type metadata accessor for StorageInspectionAttachmentRecord);
    }

    v84 += v82;
    --v25;
  }

  while (v25);
LABEL_63:

  v95 = v98;
  sub_1B7C74460(v105);

  if (!v95)
  {

    sub_1B7C107FC(&qword_1EBA52998, &qword_1B7D0DC40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7D0A7B0;
    *(inited + 32) = v102;
    sub_1B7C74894(inited, 0x5F6567617373656DLL, 0xEA00000000006469);

    swift_setDeallocating();
  }
}

void sub_1B7C5DF34(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for StorageInspectionAttachmentRecord(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0;
  v9 = objc_autoreleasePoolPush();
  v10 = sub_1B7C61B18(&v45);
  if (v2)
  {
LABEL_2:
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v11 = v10;
    v37 = v5;
    v38 = v3;
    v39 = a1;
    v36 = v6;
    while (1)
    {
      if (!*(v11 + 16))
      {

        goto LABEL_2;
      }

      v44 = sub_1B7C65A2C(v11);
      v12 = *(a1 + 80);
      v43 = v11;
      v13 = *(v11 + 16);
      swift_beginAccess();
      v14 = v12[11];
      v15 = v14 + v13;
      if (__CFADD__(v14, v13))
      {
        break;
      }

      v12[11] = v15;
      if (v15 < v14)
      {
        goto LABEL_27;
      }

      v16 = v12[9];
      if (__CFADD__(v16, v13))
      {
        goto LABEL_28;
      }

      v40 = v13;
      v41 = 0;
      v42 = v9;
      v12[9] = v16 + v13;
      v17 = *(v44 + 16);
      if (v17)
      {
        v18 = 0;
        v19 = &v8[*(v5 + 44)];
        v20 = v44 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
        v21 = *(v36 + 72);
        while (1)
        {
          sub_1B7C607E8(v20, v8);
          v22 = *v19;
          v23 = v19[8];
          sub_1B7C60868(v8, type metadata accessor for StorageInspectionAttachmentRecord);
          v24 = v23 ? 0 : v22;
          v25 = __CFADD__(v18, v24);
          v18 += v24;
          if (v25)
          {
            break;
          }

          v20 += v21;
          if (!--v17)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v18 = 0;
LABEL_17:
      swift_beginAccess();
      v26 = v12[19];
      v27 = v26 + v18;
      if (__CFADD__(v26, v18))
      {
        goto LABEL_29;
      }

      v12[19] = v27;
      if (v27 < v26)
      {
        goto LABEL_30;
      }

      v28 = v12[17];
      if (__CFADD__(v28, v18))
      {
        goto LABEL_31;
      }

      v12[17] = v28 + v18;
      a1 = v39;
      v29 = v41;
      sub_1B7C70A70(v44, 1);
      if (v29)
      {

        v9 = v42;
        goto LABEL_2;
      }

      v30 = v43;
      sub_1B7C74894(v43, 0x656D686361747461, 0xED000064695F746ELL);
      v31 = v42;

      sub_1B7C74460(v30);

      v32 = *(a1 + 120);
      swift_beginAccess();
      v33 = *(v32 + 40);
      v34 = __OFADD__(v33, v40);
      v35 = v33 + v40;
      if (v34)
      {
        goto LABEL_32;
      }

      *(v32 + 40) = v35;
      objc_autoreleasePoolPop(v31);
      v9 = objc_autoreleasePoolPush();
      v11 = sub_1B7C61B18(&v45);
      v5 = v37;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }
}

void sub_1B7C5E2B0(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for StorageInspectionAttachmentRecord(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v9 = objc_autoreleasePoolPush();
  v10 = sub_1B7C61CD4(&v39);
  if (v2)
  {
LABEL_2:
    v38 = v2;
LABEL_25:
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v11 = v10;
    v32 = a1;
    v33 = v3;
    v34 = v6;
    v35 = v5;
    while (1)
    {
      if (!*(v11 + 16))
      {
        v38 = v2;
LABEL_24:

        goto LABEL_25;
      }

      v12 = sub_1B7C65A2C(v11);
      v38 = v2;
      v13 = v12;

      v14 = v38;
      sub_1B7C70A70(v13, 0);
      v38 = v14;
      if (v14)
      {
        goto LABEL_24;
      }

      v15 = *(a1 + 80);
      v16 = *(v13 + 16);
      swift_beginAccess();
      v17 = v15[10];
      v18 = v17 + v16;
      if (__CFADD__(v17, v16))
      {
        break;
      }

      v15[10] = v18;
      if (v18 < v17)
      {
        goto LABEL_28;
      }

      v19 = v15[9];
      if (__CFADD__(v19, v16))
      {
        goto LABEL_29;
      }

      v15[9] = v19 + v16;
      if (v16)
      {
        v36 = v13;
        v37 = v9;
        v20 = 0;
        v21 = &v8[*(v35 + 44)];
        v22 = v13 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
        v23 = *(v34 + 72);
        while (1)
        {
          sub_1B7C607E8(v22, v8);
          v24 = *v21;
          v25 = v21[8];
          sub_1B7C60868(v8, type metadata accessor for StorageInspectionAttachmentRecord);
          v26 = v25 ? 0 : v24;
          v27 = __CFADD__(v20, v26);
          v20 += v26;
          if (v27)
          {
            break;
          }

          v22 += v23;
          if (!--v16)
          {

            v9 = v37;
            a1 = v32;
            goto LABEL_18;
          }
        }

        __break(1u);
        break;
      }

      v20 = 0;
LABEL_18:
      swift_beginAccess();
      v28 = v15[18];
      v29 = v28 + v20;
      if (__CFADD__(v28, v20))
      {
        goto LABEL_30;
      }

      v15[18] = v29;
      if (v29 < v28)
      {
        goto LABEL_31;
      }

      v30 = v15[17];
      if (__CFADD__(v30, v20))
      {
        goto LABEL_32;
      }

      v15[17] = v30 + v20;
      objc_autoreleasePoolPop(v9);
      v9 = objc_autoreleasePoolPush();
      v2 = v38;
      v11 = sub_1B7C61CD4(&v39);
      if (v2)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }
}

Swift::UInt64 sub_1B7C5E568(void *a1)
{
  v3 = a1[11];
  v4 = v1[7];
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  result = SqlOperation.rowCount(forTable:)(v4[1]);
  if (!v6)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v7 = result;
      swift_beginAccess();
      *(v3 + 32) = v7;
      v8 = a1[12];
      result = SqlOperation.rowCount(forTable:)(*(v1[9] + 16));
      if (v9)
      {
        return result;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        v10 = result;
        swift_beginAccess();
        *(v8 + 32) = v10;
        v11 = a1[13];
        result = SqlOperation.rowCount(forTable:)(*(v1[14] + 16));
        if (v12)
        {
          return result;
        }

        if ((result & 0x8000000000000000) == 0)
        {
          v13 = result;
          swift_beginAccess();
          *(v11 + 32) = v13;
          v14 = a1[14];
          result = SqlOperation.rowCount(forTable:)(*(v1[8] + 16));
          if (v15)
          {
            return result;
          }

          if ((result & 0x8000000000000000) == 0)
          {
            v16 = result;
            swift_beginAccess();
            *(v14 + 32) = v16;
            v17 = a1[15];
            result = SqlOperation.rowCount(forTable:)(*(v1[10] + 16));
            if (v18)
            {
              return result;
            }

            if ((result & 0x8000000000000000) == 0)
            {
              v19 = result;
              swift_beginAccess();
              *(v17 + 32) = v19;
              v20 = a1[16];
              result = SqlOperation.rowCount(forTable:)(*(v1[13] + 16));
              if (v21)
              {
                return result;
              }

              if ((result & 0x8000000000000000) == 0)
              {
                v22 = result;
                swift_beginAccess();
                *(v20 + 32) = v22;
                v23 = a1[17];
                result = SqlOperation.rowCount(forTable:)(*(v1[12] + 16));
                if (v24)
                {
                  return result;
                }

                if ((result & 0x8000000000000000) == 0)
                {
                  v25 = result;
                  swift_beginAccess();
                  *(v23 + 32) = v25;
                  v26 = a1[18];
                  result = SqlOperation.rowCount(forTable:)(*(v1[11] + 16));
                  if (v27)
                  {
                    return result;
                  }

                  if ((result & 0x8000000000000000) == 0)
                  {
                    v28 = result;
                    result = swift_beginAccess();
                    *(v26 + 32) = v28;
                    return result;
                  }

LABEL_28:
                  __break(1u);
                  return result;
                }

LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1B7C5E81C(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  v12 = sub_1B7CFF7B0();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 8 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_1B7C5F58C(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B7C5E91C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B7CFF7C0();
  sub_1B7CFEB10();
  v8 = sub_1B7CFF800();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1B7CFF590() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1B7C5F6C8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B7C5EA6C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7CFF130();

    if (v9)
    {

      sub_1B7C60A20();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7CFF120();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B7C5EC84(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B7C5F2E0(v20 + 1);
    }

    v18 = v8;
    sub_1B7C5F508(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1B7C60A20();
  v11 = sub_1B7CFEFC0();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B7C5F848(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7CFEFD0();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B7C5EC84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B7C107FC(&qword_1EBA529B0, &qword_1B7D0DC58);
    v2 = sub_1B7CFF1B0();
    v15 = v2;
    sub_1B7CFF110();
    if (sub_1B7CFF140())
    {
      sub_1B7C60A20();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1B7C5F2E0(v9 + 1);
        }

        v2 = v15;
        result = sub_1B7CFEFC0();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1B7CFF140());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1B7C5EE64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1B7C107FC(a2, a3);
  result = sub_1B7CFF1A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    v27 = v4;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_1B7CFF7B0();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
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

    if (v10 >= 64)
    {
      bzero((v5 + 56), 8 * v13);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v4 = v27;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1B7C5F080(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1B7C107FC(&qword_1EBA529A8, &qword_1B7D0DC50);
  result = sub_1B7CFF1A0();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B7C5F2E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1B7C107FC(&qword_1EBA529B0, &qword_1B7D0DC58);
  result = sub_1B7CFF1A0();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_1B7CFEFC0();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1B7C5F508(uint64_t a1, uint64_t a2)
{
  sub_1B7CFEFC0();
  result = sub_1B7CFF100();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1B7C5F58C(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B7C5EE64(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = sub_1B7C5F9A8(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_1B7C5FD84(v8 + 1, a4, a5);
  }

  v11 = *v6;
  result = sub_1B7CFF7B0();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + 8 * a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B7CFF730();
  __break(1u);
  return result;
}

uint64_t sub_1B7C5F6C8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B7C5F080(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B7C5FAD8();
      goto LABEL_16;
    }

    sub_1B7C5FF6C(v8 + 1);
  }

  v10 = *v4;
  sub_1B7CFF7C0();
  sub_1B7CFEB10();
  result = sub_1B7CFF800();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1B7CFF590();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1B7CFF730();
  __break(1u);
  return result;
}

void sub_1B7C5F848(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B7C5F2E0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1B7C5FC34();
      goto LABEL_12;
    }

    sub_1B7C601A4(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1B7CFEFC0();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1B7C60A20();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1B7CFEFD0();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1B7CFF730();
  __break(1u);
}

void *sub_1B7C5F9A8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1B7C107FC(a1, a2);
  v4 = *v2;
  v5 = sub_1B7CFF190();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1B7C5FAD8()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA529A8, &qword_1B7D0DC50);
  v2 = *v0;
  v3 = sub_1B7CFF190();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

id sub_1B7C5FC34()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA529B0, &qword_1B7D0DC58);
  v2 = *v0;
  v3 = sub_1B7CFF190();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

  return result;
}

uint64_t sub_1B7C5FD84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1B7C107FC(a2, a3);
  result = sub_1B7CFF1A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_1B7CFF7B0();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_24;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

    *v4 = v7;
  }

  return result;
}

uint64_t sub_1B7C5FF6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1B7C107FC(&qword_1EBA529A8, &qword_1B7D0DC50);
  result = sub_1B7CFF1A0();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1B7CFF7C0();

      sub_1B7CFEB10();
      result = sub_1B7CFF800();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_1B7C601A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1B7C107FC(&qword_1EBA529B0, &qword_1B7D0DC58);
  result = sub_1B7CFF1A0();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_1B7CFEFC0();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
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

        v2 = v24;
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

  return result;
}

void sub_1B7C603B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_1B7CC2DDC();
  if (!v1)
  {
    swift_beginAccess();
    v3 = *(v2 + 32);
    if (v3 >> 62)
    {
      goto LABEL_20;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v4)
    {
      v5 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1B8CAE380](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v6 = *(v3 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            v4 = sub_1B7CFF120();
            goto LABEL_4;
          }
        }

        if (qword_1EBA515F0 != -1)
        {
          swift_once();
        }

        sub_1B7CFF210();

        MEMORY[0x1B8CADCA0](v6[2], v6[3]);
        MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
        SqlOperation.execute(_:_:)(0xD000000000000015, 0x80000001B7D54D80, 0, 0);

        (*(*v6 + 152))(v8);

        ++v5;
      }

      while (v7 != v4);
    }
  }
}

void sub_1B7C605EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_1B7CC2C18();
  if (!v1)
  {
    swift_beginAccess();
    v3 = *(v2 + 32);
    if (v3 >> 62)
    {
      goto LABEL_20;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v4)
    {
      v5 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1B8CAE380](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v6 = *(v3 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            v4 = sub_1B7CFF120();
            goto LABEL_4;
          }
        }

        if (qword_1EBA515F0 != -1)
        {
          swift_once();
        }

        sub_1B7CFF210();

        MEMORY[0x1B8CADCA0](*(v6 + 16), *(v6 + 24));
        MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
        SqlOperation.execute(_:_:)(0xD000000000000015, 0x80000001B7D54D80, 0, 0);

        ++v5;
      }

      while (v7 != v4);
    }
  }
}

uint64_t sub_1B7C607E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageInspectionAttachmentRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7C60868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7C608C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7C608E0(uint64_t a1, sqlite3_int64 a2, uint64_t a3)
{
  result = sub_1B7C5C3F8(a2, *(a1 + 88), a3);
  if (!v3)
  {
    if (!result)
    {
      v8 = *(a3 + 80);
      result = swift_beginAccess();
      v9 = *(v8 + 32);
      v10 = __CFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        __break(1u);
        goto LABEL_12;
      }

      *(v8 + 32) = v11;
    }

    v12 = *(a3 + 80);
    v13 = sub_1B7C5C3F8(a2, *(a1 + 120), a3);
    result = swift_beginAccess();
    v14 = *(v12 + 64);
    v10 = __CFADD__(v14, v13);
    v15 = v14 + v13;
    if (!v10)
    {
      *(v12 + 64) = v15;
      sub_1B7C107FC(&qword_1EBA52998, &qword_1B7D0DC40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B7D0A7B0;
      *(inited + 32) = a2;
      sub_1B7C74460(inited);

      return swift_setDeallocating();
    }

LABEL_12:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B7C60A20()
{
  result = qword_1EDBE5920;
  if (!qword_1EDBE5920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBE5920);
  }

  return result;
}

double sub_1B7C60A6C()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();

  strcpy(v5, "DELETE FROM ");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  MEMORY[0x1B8CADCA0](v2, v3);

  MEMORY[0x1B8CADCA0](0xD000000000000018, 0x80000001B7D555C0);
  SqlOperation.execute(_:_:)(v5[0], v5[1], 0, 0);

  return result;
}

void sub_1B7C60B88(uint64_t a1)
{
  v2 = v1;
  v30 = sub_1B7CFDFF0();
  v4 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  v6 = *(a1 + *(type metadata accessor for StorageInspectionAttachmentDirectory(0) + 20));
  v28 = *(v6 + 16);
  if (v28)
  {
    v7 = 0;
    v26 = v4 + 8;
    v27 = v4 + 16;
    v24 = " WHERE filename IS NULL;";
    v25 = 0x80000001B7D51810;
    v23 = v6;
    while (v7 < *(v6 + 16))
    {
      v8 = v29;
      v9 = v30;
      (*(v4 + 16))(v29, v6 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v7, v30);
      v10 = sub_1B7CFDFD0();
      v12 = v11;
      (*(v4 + 8))(v8, v9);
      if (qword_1EBA515F0 != -1)
      {
        swift_once();
      }

      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1B7CFF210();

      v32 = 0xD000000000000012;
      v33 = v25;
      v13 = *(v31 + 80);
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);

      MEMORY[0x1B8CADCA0](v14, v15);

      MEMORY[0x1B8CADCA0](0xD000000000000014, v24 | 0x8000000000000000);
      v16 = v32;
      v17 = v33;
      v18 = swift_allocObject();
      *(v18 + 16) = v10;
      *(v18 + 24) = v12;

      v19 = sub_1B7CD7370(v16, v17, sub_1B7C66E60, v18);
      if (v2)
      {

        return;
      }

      v20 = v19;
      ++v7;

      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = MEMORY[0x1E69E7CC0];
      }

      sub_1B7C50E44(v21);
      v6 = v23;
      if (v28 == v7)
      {
        v22 = v34;
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B7C60E9C(uint64_t a1)
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000001ALL, 0x80000001B7D55370);
  v3 = *(v1 + 104);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);

  MEMORY[0x1B8CADCA0](v4, v5);

  MEMORY[0x1B8CADCA0](0xD000000000000032, 0x80000001B7D554F0);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = sub_1B7CD7370(0, 0xE000000000000000, sub_1B7C663A8, v6);

  if (v7)
  {
    return v7;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

void sub_1B7C61014(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B7CFDFF0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v106 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v91 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v108 = &v91 - v10;
  v11 = sub_1B7C107FC(&qword_1EBA52978, &qword_1B7D0DB38);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v91 - v15;
  v104 = type metadata accessor for StorageInspectionAttachmentDirectory(0);
  v17 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v19 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v91 - v21);
  v23 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v91 - v24;
  if (v2[1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    return;
  }

  v103 = v17;
  v100 = v13;
  v26 = *v2;
  v27 = type metadata accessor for StorageInspectionAttachmentRecord(0);
  sub_1B7C2569C(v2 + v27[8], v25, &qword_1EBA51FA0, &qword_1B7D0A6D0);
  v28 = (*(v5 + 48))(v25, 1, v4);
  v101 = v2;
  v102 = v5;
  v109 = v4;
  v99 = v19;
  if (v28 != 1)
  {
    sub_1B7CFDFC0();
    (*(v5 + 8))(v25, v4);

LABEL_12:
    v37 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  sub_1B7AEE190(v25, &qword_1EBA51FA0, &qword_1B7D0A6D0);
  v29 = v2 + v27[10];
  if ((*(v29 + 8) & 1) != 0 || *v29 != 5)
  {
    goto LABEL_12;
  }

  v30 = 0xD000000000000015;
  v110 = 0;
  v111 = 0xE000000000000000;
  sub_1B7CFF210();

  v110 = 0xD000000000000020;
  v111 = 0x80000001B7D553F0;
  v31 = IMFileTransferState.description.getter(5);
  MEMORY[0x1B8CADCA0](v31);

  MEMORY[0x1B8CADCA0](0x636E79536B63202CLL, 0xEE00206574617453);
  v32 = v2 + v27[9];
  if ((*(v32 + 8) & 1) == 0)
  {
    v90 = *v32;
    v33 = v27;
    if (v90 <= 2)
    {
      switch(v90)
      {
        case 0:
          v34 = 0x80000001B7D554D0;
          v30 = 0xD00000000000001ELL;
          goto LABEL_8;
        case 1:
          v34 = 0x80000001B7D554B0;
          v30 = 0xD00000000000001BLL;
          goto LABEL_8;
        case 2:
          v34 = 0x80000001B7D55490;
          v30 = 0xD00000000000001DLL;
          goto LABEL_8;
      }
    }

    else
    {
      if (v90 <= 4)
      {
        if (v90 == 3)
        {
          v34 = 0x80000001B7D55470;
        }

        else
        {
          v34 = 0x80000001B7D55440;
          v30 = 0xD000000000000029;
        }

        goto LABEL_8;
      }

      if (v90 == 5)
      {
        v34 = 0x80000001B7D55420;
        v30 = 0xD00000000000001FLL;
        goto LABEL_8;
      }

      if (v90 == 64)
      {
        v34 = 0xEA0000000000656CLL;
        v30 = 0x6261636E79736E75;
        goto LABEL_8;
      }
    }

    v34 = 0xE700000000000000;
    v30 = 0x6E776F6E6B6E75;
    goto LABEL_8;
  }

  v33 = v27;
  v30 = 7104878;
  v34 = 0xE300000000000000;
LABEL_8:
  MEMORY[0x1B8CADCA0](v30, v34);

  v35 = v110;
  v36 = v111;
  v37 = sub_1B7AF182C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v39 = *(v37 + 2);
  v38 = *(v37 + 3);
  if (v39 >= v38 >> 1)
  {
    v37 = sub_1B7AF182C((v38 > 1), v39 + 1, 1, v37);
  }

  *(v37 + 2) = v39 + 1;
  v40 = &v37[16 * v39];
  *(v40 + 4) = v35;
  *(v40 + 5) = v36;
  v2 = v101;
  v27 = v33;
LABEL_13:
  v41 = v104;
  v42 = v27[12];
  sub_1B7C2569C(v2 + v42, v16, &qword_1EBA52978, &qword_1B7D0DB38);
  v43 = *(v103 + 48);
  v103 += 48;
  if (v43(v16, 1, v41) != 1)
  {
    v97 = v43;
    v98 = v42;
    v93 = v37;
    v91 = v27;
    v95 = v26;
    v96 = a1;
    sub_1B7C65C88(v16, v22, type metadata accessor for StorageInspectionAttachmentDirectory);
    v44 = *(v41 + 20);
    v94 = v22;
    v45 = *(v22 + v44);
    v46 = *(v45 + 16);
    v92 = v45;
    v26 = 0;
    if (v46)
    {
      v107 = *(v102 + 16);
      v47 = v45 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
      v48 = *(v102 + 72);
      v49 = (v102 + 8);
      while (1)
      {
        v50 = v108;
        v51 = v109;
        v107(v108, v47, v109);
        a1 = URL.fileAllocationSize.getter();
        v37 = v52;
        (*v49)(v50, v51);
        v53 = (v37 & 1) != 0 ? 0 : a1;
        v54 = __CFADD__(v26, v53);
        v26 += v53;
        if (v54)
        {
          break;
        }

        v47 += v48;
        if (!--v46)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_24:
    v55 = v100;
    sub_1B7C2569C(v101 + v98, v100, &qword_1EBA52978, &qword_1B7D0DB38);
    v56 = v104;
    if (v97(v55, 1, v104) == 1)
    {
      sub_1B7AEE190(v55, &qword_1EBA52978, &qword_1B7D0DB38);
      v37 = v109;
      v57 = v102;
      if (v26)
      {
LABEL_26:
        v110 = 0;
        v111 = 0xE000000000000000;
        sub_1B7CFF210();

        v110 = 0xD000000000000018;
        v111 = 0x80000001B7D553D0;
        v58 = *(v92 + 16);
        if (!v58)
        {
          v51 = 0;
LABEL_45:
          v74 = objc_opt_self();
          v75 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
          v76 = [v74 stringFromHugeNumber_];

          v77 = sub_1B7CFEA60();
          v79 = v78;

          MEMORY[0x1B8CADCA0](v77, v79);

          MEMORY[0x1B8CADCA0](0x746164206E69202CLL, 0xEF203A6573616261);
          v80 = v101 + v91[11];
          if (*(v80 + 8))
          {
            v81 = 7104878;
            v82 = 0xE300000000000000;
          }

          else
          {
            v83 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
            v84 = [v74 stringFromHugeNumber_];

            v85 = sub_1B7CFEA60();
            v82 = v86;

            v81 = v85;
          }

          v26 = v95;
          a1 = v96;
          v37 = v93;
          v49 = v94;
          MEMORY[0x1B8CADCA0](v81, v82);

          v50 = v110;
          v51 = v111;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_49:
            v88 = *(v37 + 2);
            v87 = *(v37 + 3);
            if (v88 >= v87 >> 1)
            {
              v37 = sub_1B7AF182C((v87 > 1), v88 + 1, 1, v37);
            }

            sub_1B7C66348(v49, type metadata accessor for StorageInspectionAttachmentDirectory);
            *(v37 + 2) = v88 + 1;
            v89 = &v37[16 * v88];
            *(v89 + 4) = v50;
            *(v89 + 5) = v51;
            if (*(v37 + 2))
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }

LABEL_72:
          v37 = sub_1B7AF182C(0, *(v37 + 2) + 1, 1, v37);
          goto LABEL_49;
        }

        v51 = 0;
        v59 = v57 + 16;
        v109 = *(v57 + 16);
        v60 = v92 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
        v61 = *(v59 + 56);
        a1 = v59;
        v49 = (v59 - 8);
        while (1)
        {
          v50 = v106;
          (v109)(v106, v60, v37);
          v62 = URL.fileAllocationSize.getter();
          v26 = v63;
          (*v49)(v50, v37);
          v64 = (v26 & 1) != 0 ? 0 : v62;
          v54 = __CFADD__(v51, v64);
          v51 += v64;
          if (v54)
          {
            goto LABEL_70;
          }

          v60 += v61;
          if (!--v58)
          {
            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      v65 = v55;
      v66 = v99;
      sub_1B7C65C88(v65, v99, type metadata accessor for StorageInspectionAttachmentDirectory);
      v67 = *(v66 + *(v56 + 20));
      v37 = *(v67 + 16);
      v68 = 0;
      if (v37)
      {
        v69 = *(v102 + 16);
        v70 = v67 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
        v107 = *(v102 + 72);
        v108 = v69;
        v49 = (v102 + 8);
        do
        {
          v50 = v105;
          a1 = v109;
          (v108)(v105, v70, v109);
          v71 = URL.fileAllocationSize.getter();
          v51 = v72;
          (*v49)(v50, a1);
          v73 = (v51 & 1) != 0 ? 0 : v71;
          v54 = __CFADD__(v68, v73);
          v68 += v73;
          if (v54)
          {
            goto LABEL_71;
          }

          v70 += v107;
        }

        while (--v37);
      }

      sub_1B7C66348(v99, type metadata accessor for StorageInspectionAttachmentDirectory);
      v37 = v109;
      v57 = v102;
      if (v26 != v68)
      {
        goto LABEL_26;
      }
    }

    sub_1B7C66348(v94, type metadata accessor for StorageInspectionAttachmentDirectory);
    v26 = v95;
    a1 = v96;
    v37 = v93;
    if (*(v93 + 2))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  sub_1B7AEE190(v16, &qword_1EBA52978, &qword_1B7D0DB38);
  if (!*(v37 + 2))
  {
LABEL_15:

    v26 = 0;
    v37 = 0;
  }

LABEL_16:
  *a1 = v26;
  *(a1 + 1) = v37;
}

uint64_t sub_1B7C61B18(uint64_t *a1)
{
  v3 = v2;
  v5 = *a1;
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000001ALL, 0x80000001B7D55370);
  v6 = *(v1 + 104);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);

  MEMORY[0x1B8CADCA0](v7, v8);

  MEMORY[0x1B8CADCA0](0xD00000000000003DLL, 0x80000001B7D55390);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v1;

  v10 = sub_1B7CD7370(0, 0xE000000000000000, sub_1B7C65C6C, v9);

  if (v3)
  {
    return v10;
  }

  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = *(v10 + 16);
  if (!v12)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v13 = *(v10 + 8 * v12 + 24);
  v14 = __CFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *a1 = v15;
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C61CD4(uint64_t *a1)
{
  v3 = v2;
  v5 = *a1;
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD000000000000012, 0x80000001B7D51810);
  v6 = *(v1 + 80);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);

  MEMORY[0x1B8CADCA0](v7, v8);

  MEMORY[0x1B8CADCA0](0xD00000000000002DLL, 0x80000001B7D55340);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v1;

  v10 = sub_1B7CD7370(0, 0xE000000000000000, sub_1B7C65C50, v9);

  if (v3)
  {
    return v10;
  }

  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = *(v10 + 16);
  if (!v12)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v13 = *(v10 + 8 * v12 + 24);
  v14 = __CFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *a1 = v15;
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C61E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v6;
  v7 = *(a1 + 40);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 40) = v7;
  v8 = type metadata accessor for StorageInspectionAttachmentRecord(0);
  v9 = v8[9];
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = a3 + v9;
  *v12 = v10;
  *(v12 + 8) = v11;
  v13 = v8[10];
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = a3 + v13;
  *v16 = v14;
  *(v16 + 8) = v15;
  v17 = v8[11];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = a3 + v17;
  *v20 = v18;
  *(v20 + 8) = v19;
  sub_1B7C2569C(a1 + v8[12], a3 + v8[12], &qword_1EBA52978, &qword_1B7D0DB38);
  sub_1B7C2569C(a1 + v8[8], a3 + v8[8], &qword_1EBA51FA0, &qword_1B7D0A6D0);
  *(a3 + 16) = a2;
  if (a2 && (v21 = *(a2 + 16)) != 0)
  {
    v22 = (a2 + 40);
    do
    {
      v24 = *v22;
      v22 += 2;
      v23 = v24;
      if (v24 && *(v23 + 16))
      {
        v25 = 1;
        goto LABEL_10;
      }

      --v21;
    }

    while (v21);
    v25 = 3;
  }

  else
  {
    v25 = 2;
  }

LABEL_10:

  result = sub_1B7C66348(a1, type metadata accessor for StorageInspectionAttachmentRecord);
  *(a3 + 24) = v25;
  return result;
}

unint64_t sub_1B7C61FEC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4449776F72;
    v6 = 0x7453746E65726170;
    if (a1 != 2)
    {
      v6 = 1684632935;
    }

    if (a1)
    {
      v5 = 0x73746E65726170;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x7479426C61746F74;
    if (a1 != 7)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x4C525568746170;
    if (a1 != 4)
    {
      v3 = 0x7453636E79536B63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B7C62114(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA52A98, &qword_1B7D0DE58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C67810();
  sub_1B7CFF830();
  LOBYTE(v15) = 0;
  sub_1B7CFF4D0();
  if (!v2)
  {
    v15 = *(v3 + 16);
    v17 = 1;
    sub_1B7C107FC(&qword_1EBA529F0, &qword_1B7D0DCC8);
    sub_1B7C67974(&qword_1EBA52AA0, sub_1B7C679EC, MEMORY[0x1E69E6300]);
    sub_1B7CFF4C0();
    LOBYTE(v15) = *(v3 + 24);
    v17 = 2;
    sub_1B7C67A40();
    sub_1B7CFF500();
    LOBYTE(v15) = 3;
    sub_1B7CFF4A0();
    v9 = type metadata accessor for StorageInspectionAttachmentRecord(0);
    LOBYTE(v15) = 4;
    sub_1B7CFDFF0();
    sub_1B7C67A94(&qword_1EBA52AB8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1B7CFF4C0();
    v10 = (v3 + *(v9 + 36));
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    v15 = v11;
    v16 = v10;
    v17 = 5;
    type metadata accessor for IMFileTransferCKSyncState(0);
    sub_1B7C67A94(&qword_1EBA52AC0, type metadata accessor for IMFileTransferCKSyncState, &protocol conformance descriptor for IMFileTransferCKSyncState);
    sub_1B7CFF4C0();
    v12 = (v3 + *(v9 + 40));
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 8);
    v15 = v13;
    v16 = v12;
    v17 = 6;
    type metadata accessor for IMFileTransferState(0);
    sub_1B7C67A94(&qword_1EBA52AC8, type metadata accessor for IMFileTransferState, &protocol conformance descriptor for IMFileTransferState);
    sub_1B7CFF4C0();
    LOBYTE(v15) = 7;
    sub_1B7CFF4D0();
    LOBYTE(v15) = 8;
    type metadata accessor for StorageInspectionAttachmentDirectory(0);
    sub_1B7C67A94(&qword_1EBA52AD0, type metadata accessor for StorageInspectionAttachmentDirectory, &unk_1B7D0E5A8);
    sub_1B7CFF4C0();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1B7C62578(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1B7C107FC(&qword_1EBA52978, &qword_1B7D0DB38);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_1B7C107FC(&qword_1EBA52A50, &qword_1B7D0DE50);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for StorageInspectionAttachmentRecord(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v36 = a1;
  sub_1B7AE9124(a1, v15);
  sub_1B7C67810();
  v16 = v35;
  sub_1B7CFF820();
  if (v16)
  {
    sub_1B7AE9168(v36);
  }

  else
  {
    v17 = v8;
    v35 = v5;
    v19 = v33;
    v18 = v34;
    LOBYTE(v37) = 0;
    *v14 = sub_1B7CFF410();
    v14[8] = v20 & 1;
    sub_1B7C107FC(&qword_1EBA529F0, &qword_1B7D0DCC8);
    v39 = 1;
    sub_1B7C67974(&qword_1EBA52A60, sub_1B7C67864, MEMORY[0x1E69E6330]);
    sub_1B7CFF400();
    v21 = v19;
    *(v14 + 2) = v37;
    v39 = 2;
    sub_1B7C678B8();
    sub_1B7CFF440();
    v14[24] = v37;
    LOBYTE(v37) = 3;
    *(v14 + 4) = sub_1B7CFF3E0();
    *(v14 + 5) = v22;
    sub_1B7CFDFF0();
    LOBYTE(v37) = 4;
    sub_1B7C67A94(&qword_1EBA52A78, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1B7CFF400();
    sub_1B7C6790C(v17, &v14[v12[8]], &qword_1EBA51FA0, &qword_1B7D0A6D0);
    type metadata accessor for IMFileTransferCKSyncState(0);
    v39 = 5;
    sub_1B7C67A94(&qword_1EBA52A80, type metadata accessor for IMFileTransferCKSyncState, &protocol conformance descriptor for IMFileTransferCKSyncState);
    sub_1B7CFF400();
    v23 = v38;
    v24 = &v14[v12[9]];
    *v24 = v37;
    v24[8] = v23;
    type metadata accessor for IMFileTransferState(0);
    v39 = 6;
    sub_1B7C67A94(&qword_1EBA52A88, type metadata accessor for IMFileTransferState, &protocol conformance descriptor for IMFileTransferState);
    sub_1B7CFF400();
    v25 = v38;
    v26 = &v14[v12[10]];
    *v26 = v37;
    v26[8] = v25;
    LOBYTE(v37) = 7;
    v27 = sub_1B7CFF410();
    v28 = &v14[v12[11]];
    *v28 = v27;
    v28[8] = v29 & 1;
    type metadata accessor for StorageInspectionAttachmentDirectory(0);
    LOBYTE(v37) = 8;
    sub_1B7C67A94(&qword_1EBA52A90, type metadata accessor for StorageInspectionAttachmentDirectory, &unk_1B7D0E5D0);
    v30 = v35;
    sub_1B7CFF400();
    (*(v21 + 8))(v11, v18);
    sub_1B7C6790C(v30, &v14[v12[12]], &qword_1EBA52978, &qword_1B7D0DB38);
    sub_1B7C607E8(v14, v32);
    sub_1B7AE9168(v36);
    sub_1B7C66348(v14, type metadata accessor for StorageInspectionAttachmentRecord);
  }
}

uint64_t sub_1B7C62C78(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7C107FC(&qword_1EBA52A40, &qword_1B7D0DE48);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C67750();
  sub_1B7CFF830();
  v13 = 0;
  sub_1B7CFF520();
  if (!v3)
  {
    v11[1] = a3;
    v12 = 1;
    sub_1B7C107FC(&qword_1EBA52A30, &qword_1B7D0DE40);
    sub_1B7C677A4(&qword_1EBA52A48, MEMORY[0x1E69E76E0], MEMORY[0x1E69E6300]);
    sub_1B7CFF4C0();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B7C62E34(void *a1, int a2)
{
  v29 = a2;
  v3 = sub_1B7C107FC(&qword_1EBA52B30, &qword_1B7D0DE90);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v20 - v4;
  v5 = sub_1B7C107FC(&qword_1EBA52B38, &qword_1B7D0DE98);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v23 = &v20 - v6;
  v7 = sub_1B7C107FC(&qword_1EBA52B40, &qword_1B7D0DEA0);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = sub_1B7C107FC(&qword_1EBA52B48, &qword_1B7D0DEA8);
  v20 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = sub_1B7C107FC(&qword_1EBA52B50, &qword_1B7D0DEB0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C682C0();
  sub_1B7CFF830();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_1B7C68368();
      v9 = v23;
      sub_1B7CFF490();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_1B7C68314();
      v9 = v26;
      sub_1B7CFF490();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_1B7C683BC();
    sub_1B7CFF490();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_1B7C68410();
  sub_1B7CFF490();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1B7C63278@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7C67264(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7C632AC(uint64_t a1)
{
  v2 = sub_1B7C67810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C632E8(uint64_t a1)
{
  v2 = sub_1B7C67810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7C63354()
{
  if (*v0)
  {
    return 0x49776F5274616863;
  }

  else
  {
    return 0x526567617373656DLL;
  }
}

void sub_1B7C6339C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x526567617373656DLL && a2 == 0xEC0000004449776FLL;
  if (v6 || (sub_1B7CFF590() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x49776F5274616863 && a2 == 0xEA00000000007344)
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

uint64_t sub_1B7C63484(uint64_t a1)
{
  v2 = sub_1B7C67750();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C634C0(uint64_t a1)
{
  v2 = sub_1B7C67750();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7C634FC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B7C67558(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1B7C63550(uint64_t a1)
{
  v2 = sub_1B7C68314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C6358C(uint64_t a1)
{
  v2 = sub_1B7C68314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B7C635C8()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x64656E616870726FLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x6465746E65726170;
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

uint64_t sub_1B7C63648@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7C67ADC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7C6367C(uint64_t a1)
{
  v2 = sub_1B7C682C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C636B8(uint64_t a1)
{
  v2 = sub_1B7C682C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7C636F4(uint64_t a1)
{
  v2 = sub_1B7C68368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C63730(uint64_t a1)
{
  v2 = sub_1B7C68368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7C6376C(uint64_t a1)
{
  v2 = sub_1B7C683BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C637A8(uint64_t a1)
{
  v2 = sub_1B7C683BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7C637E4(uint64_t a1)
{
  v2 = sub_1B7C68410();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C63820(uint64_t a1)
{
  v2 = sub_1B7C68410();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7C6385C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B7C67C48(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_1B7C638A4@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, void *a3@<X8>)
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
    result = _s14IMDPersistence12SqlOperationC7uint64s14forColumnIndexSays6UInt64VGSi_tF_0();
    *a3 = result;
  }

  return result;
}

double sub_1B7C6398C@<D0>(uint64_t a1@<X0>, Swift::OpaquePointer a2@<X1>, uint64_t *a3@<X8>)
{
  v105 = a3;
  v107 = sub_1B7CFDFF0();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v104 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v103 = v77 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v77 - v9;
  v11 = sub_1B7C107FC(&qword_1EBA52978, &qword_1B7D0DB38);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v77 - v12;
  v14 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v77 - v18;
  v20 = type metadata accessor for StorageInspectionAttachmentRecord(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  SqlOperation.bind(_:)(a2);
  if (!v25)
  {
    v26 = v106;
    v99 = v23;
    v98 = v21;
    v100 = v20;
    v97 = v16;
    v102 = v19;
    v101 = v13;
    v116 = 0;

    swift_beginAccess();

    HasRows = IMDSqlOperationHasRows(a1 + 16);
    swift_endAccess();
    v28 = MEMORY[0x1E69E7CC0];
    if (HasRows)
    {
      v84 = v10;
      type metadata accessor for SqlOperation.Row();
      v29 = (v26 + 7);
      v96 = (v26 + 6);
      v95 = (v26 + 2);
      v82 = (v26 + 4);
      v30 = v28;
      v31 = v107;
      v83 = (v26 + 1);
      while (1)
      {
        while (1)
        {
          inited = swift_initStackObject();
          v34 = sub_1B7C23650(v28);
          *(inited + 16) = a1;
          *(inited + 24) = v34;
          SqlOperation.Row.column(forColumnName:)(0x4449574F52uLL, 0xE500000000000000, &v108);
          if (*(&v108 + 1))
          {
            break;
          }

          swift_setDeallocating();

          sub_1B7AEE190(&v108, &qword_1EBA52298, &unk_1B7D10570);
LABEL_5:
          swift_beginAccess();

          v32 = IMDSqlOperationHasRows(a1 + 16);
          swift_endAccess();
          if (!v32)
          {
            goto LABEL_40;
          }
        }

        v112 = v108;
        v113 = v109;
        v114 = v110;
        v115 = v111;
        v35 = v109;
        sub_1B7C26C78(&v112);
        v117 = SqlOperation.Row.uint64(forColumnIndex:)(v35);
        if (v117.is_nil)
        {
          swift_setDeallocating();

          goto LABEL_5;
        }

        value = v117.value;
        SqlOperation.Row.column(forColumnName:)(0x64697567uLL, 0xE400000000000000, &v108);
        if (*(&v108 + 1))
        {
          v112 = v108;
          v113 = v109;
          v114 = v110;
          v115 = v111;
          v37 = v109;
          sub_1B7C26C78(&v112);
          v38 = SqlOperation.Row.string(forColumnIndex:)(v37);
          countAndFlagsBits = v38.value._countAndFlagsBits;
          object = v38.value._object;
        }

        else
        {
          sub_1B7AEE190(&v108, &qword_1EBA52298, &unk_1B7D10570);
          countAndFlagsBits = 0;
          object = 0;
        }

        SqlOperation.Row.column(forColumnName:)(0x656D616E656C6966uLL, 0xE800000000000000, &v108);
        if (*(&v108 + 1))
        {
          v112 = v108;
          v113 = v109;
          v114 = v110;
          v115 = v111;
          v39 = v109;
          sub_1B7C26C78(&v112);
          v40 = SqlOperation.Row.string(forColumnIndex:)(v39);
          v81 = v40.value._countAndFlagsBits;
          v93 = v40.value._object;
        }

        else
        {
          sub_1B7AEE190(&v108, &qword_1EBA52298, &unk_1B7D10570);
          v81 = 0;
          v93 = 0;
        }

        SqlOperation.Row.column(forColumnName:)(0x5F636E79735F6B63uLL, 0xED00006574617473, &v108);
        if (*(&v108 + 1))
        {
          v112 = v108;
          v113 = v109;
          v114 = v110;
          v115 = v111;
          v41 = v109;
          sub_1B7C26C78(&v112);
          *&v42 = SqlOperation.Row.int64(forColumnIndex:)(v41);
          v90 = v42;
          v89 = DWORD2(v42);
        }

        else
        {
          sub_1B7AEE190(&v108, &qword_1EBA52298, &unk_1B7D10570);
          v90 = 0;
          v89 = 1;
        }

        SqlOperation.Row.column(forColumnName:)(0x726566736E617274uLL, 0xEE0065746174735FLL, &v108);
        if (*(&v108 + 1))
        {
          v112 = v108;
          v113 = v109;
          v114 = v110;
          v115 = v111;
          v43 = v109;
          sub_1B7C26C78(&v112);
          *&v44 = SqlOperation.Row.int64(forColumnIndex:)(v43);
          v88 = v44;
          v87 = DWORD2(v44);
        }

        else
        {
          sub_1B7AEE190(&v108, &qword_1EBA52298, &unk_1B7D10570);
          v88 = 0;
          v87 = 1;
        }

        SqlOperation.Row.column(forColumnName:)(0x79625F6C61746F74uLL, 0xEB00000000736574, &v108);
        if (*(&v108 + 1))
        {
          v112 = v108;
          v113 = v109;
          v114 = v110;
          v115 = v111;
          v45 = v109;
          sub_1B7C26C78(&v112);
          *&v46 = SqlOperation.Row.uint64(forColumnIndex:)(v45);
          v86 = v46;
          v85 = DWORD2(v46);
        }

        else
        {
          sub_1B7AEE190(&v108, &qword_1EBA52298, &unk_1B7D10570);
          v86 = 0;
          v85 = 1;
        }

        v106 = v30;
        v80 = *v29;
        v80(v102, 1, 1, v31);
        v47 = type metadata accessor for StorageInspectionAttachmentDirectory(0);
        v48 = *(v47 - 8);
        v49 = *(v48 + 56);
        v79 = v47;
        v78 = v49;
        v77[1] = v48 + 56;
        v49(v101, 1, 1);
        v92 = v29;
        if (v93)
        {
          v50 = sub_1B7CFEA30();

          v51 = [v50 stringByExpandingTildeInPath];

          sub_1B7CFEA60();
          v52 = v97;
          sub_1B7CFDF20();

          v53 = v107;
          v80(v52, 0, 1, v107);
          v54 = v102;
          sub_1B7C4FB78(v52, v102);
          if (!(*v96)(v54, 1, v53))
          {
            v55 = v54;
            v81 = *v95;
            v56 = v104;
            v81(v104, v55, v53);
            sub_1B7CFDF80();
            v93 = *v83;
            v93(v56, v53);
            v57 = v84;
            (*v82)();
            v58 = v101;
            sub_1B7AEE190(v101, &qword_1EBA52978, &qword_1B7D0DB38);
            v81(v58, v57, v53);
            *(v58 + *(v79 + 20)) = v28;
            v78(v58, 0, 1);
            v59 = v116;
            sub_1B7C68F34();
            v116 = v59;
            if (v59)
            {

              swift_setDeallocating();

              v93(v57, v53);
              sub_1B7AEE190(v101, &qword_1EBA52978, &qword_1B7D0DB38);
              sub_1B7AEE190(v102, &qword_1EBA51FA0, &qword_1B7D0A6D0);

              return result;
            }

            v93(v57, v53);
          }
        }

        v89 &= 1u;
        if (v89)
        {
          v60 = 0;
        }

        else
        {
          v60 = v90;
        }

        LODWORD(v93) = v87 & 1;
        v61 = v88;
        if (v87)
        {
          v61 = 0;
        }

        v90 = v61;
        v62 = v100;
        v63 = v99;
        v64 = v102;
        sub_1B7C2569C(v102, &v99[v100[8]], &qword_1EBA51FA0, &qword_1B7D0A6D0);
        v65 = v101;
        sub_1B7C2569C(v101, v63 + v62[12], &qword_1EBA52978, &qword_1B7D0DB38);
        *v63 = value;
        *(v63 + 8) = 0;
        v66 = object;
        *(v63 + 32) = countAndFlagsBits;
        *(v63 + 40) = v66;
        v67 = v63 + v62[9];
        *v67 = v60;
        *(v67 + 8) = v89;
        v68 = v63 + v62[10];
        *v68 = v90;
        *(v68 + 8) = v93;
        v69 = v63 + v62[11];
        *v69 = v86;
        *(v69 + 8) = v85 & 1;
        *(v63 + 16) = 0;
        *(v63 + 24) = 0;
        sub_1B7AEE190(v65, &qword_1EBA52978, &qword_1B7D0DB38);
        sub_1B7AEE190(v64, &qword_1EBA51FA0, &qword_1B7D0A6D0);
        v70 = v106;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_1B7CA2A14(0, v70[2] + 1, 1, v70);
        }

        v71 = v98;
        v73 = v70[2];
        v72 = v70[3];
        v74 = v70;
        v28 = MEMORY[0x1E69E7CC0];
        if (v73 >= v72 >> 1)
        {
          v74 = sub_1B7CA2A14((v72 > 1), v73 + 1, 1, v70);
        }

        v74[2] = v73 + 1;
        v75 = v74 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v73;
        v30 = v74;
        sub_1B7C65C88(v63, v75, type metadata accessor for StorageInspectionAttachmentRecord);
        swift_beginAccess();

        v76 = IMDSqlOperationHasRows(a1 + 16);
        swift_endAccess();
        v31 = v107;
        v29 = v92;
        if (!v76)
        {
          goto LABEL_40;
        }
      }
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_40:

    *v105 = v30;
  }

  return result;
}

double sub_1B7C64674@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v102 = a4;
  v114 = *MEMORY[0x1E69E9840];
  v7 = sub_1B7CFDFF0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v75 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v75 - v13;
  v14 = sub_1B7C107FC(&qword_1EBA52978, &qword_1B7D0DB38);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v103 = &v75 - v15;
  v16 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v99 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v105 = &v75 - v19;
  v100 = type metadata accessor for StorageInspectionAttachmentRecord(0);
  v101 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v22 = *(a2 + 16);
  if ((v22 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    IMDSqlStatementBindInt64((a1 + 48), v22);
    *&v106 = 0;
    IMDSqlOperationGetError(a1 + 16, &v106);
    v23 = v106;
    swift_endAccess();
    if (v23)
    {
      swift_willThrow();
      v24 = v23;
      return result;
    }

    v26 = *(a3 + 24);
    if (v26 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v26 <= 0x7FFFFFFF)
    {
      swift_beginAccess();
      IMDSqlStatementBindInt((a1 + 48), v26);
      *&v106 = 0;
      IMDSqlOperationGetError(a1 + 16, &v106);
      v27 = v106;
      swift_endAccess();
      if (v27)
      {
        swift_willThrow();
        v28 = v27;
        return result;
      }

      swift_beginAccess();
      swift_beginAccess();

      HasRows = IMDSqlOperationHasRows(a1 + 16);
      swift_endAccess();
      v30 = MEMORY[0x1E69E7CC0];
      if (!HasRows)
      {
        v33 = MEMORY[0x1E69E7CC0];
        goto LABEL_47;
      }

      v93 = v21;
      v94 = v7;
      type metadata accessor for SqlOperation.Row();
      v31 = (v8 + 56);
      v91 = (v8 + 48);
      v90 = (v8 + 16);
      v32 = (v8 + 8);
      v81 = (v8 + 32);
      v33 = v30;
      while (1)
      {
        v95 = v33;
        while (1)
        {
          inited = swift_initStackObject();
          v36 = sub_1B7C23650(v30);
          *(inited + 16) = a1;
          *(inited + 24) = v36;
          SqlOperation.Row.column(forColumnName:)(0x4449574F52uLL, 0xE500000000000000, &v106);
          if (*(&v106 + 1))
          {
            break;
          }

          swift_setDeallocating();

          sub_1B7AEE190(&v106, &qword_1EBA52298, &unk_1B7D10570);
LABEL_12:
          swift_beginAccess();

          v34 = IMDSqlOperationHasRows(a1 + 16);
          swift_endAccess();
          if (!v34)
          {
            v33 = v95;
            goto LABEL_47;
          }
        }

        v110 = v106;
        v111 = v107;
        v112 = v108;
        v113 = v109;
        v37 = v107;
        sub_1B7C26C78(&v110);
        v115 = SqlOperation.Row.uint64(forColumnIndex:)(v37);
        if (v115.is_nil)
        {
          break;
        }

        value = v115.value;
        *(a2 + 16) = v115.value;
        SqlOperation.Row.column(forColumnName:)(0x64697567uLL, 0xE400000000000000, &v106);
        if (*(&v106 + 1))
        {
          v110 = v106;
          v111 = v107;
          v112 = v108;
          v113 = v109;
          v39 = v107;
          sub_1B7C26C78(&v110);
          v89 = SqlOperation.Row.string(forColumnIndex:)(v39);
        }

        else
        {
          sub_1B7AEE190(&v106, &qword_1EBA52298, &unk_1B7D10570);
          v89 = 0;
        }

        v92 = v32;
        SqlOperation.Row.column(forColumnName:)(0x656D616E656C6966uLL, 0xE800000000000000, &v106);
        if (*(&v106 + 1))
        {
          v110 = v106;
          v111 = v107;
          v112 = v108;
          v113 = v109;
          v40 = v107;
          sub_1B7C26C78(&v110);
          v41 = SqlOperation.Row.string(forColumnIndex:)(v40);
          countAndFlagsBits = v41.value._countAndFlagsBits;
          object = v41.value._object;
        }

        else
        {
          sub_1B7AEE190(&v106, &qword_1EBA52298, &unk_1B7D10570);
          countAndFlagsBits = 0;
          object = 0;
        }

        SqlOperation.Row.column(forColumnName:)(0x5F636E79735F6B63uLL, 0xED00006574617473, &v106);
        if (*(&v106 + 1))
        {
          v110 = v106;
          v111 = v107;
          v112 = v108;
          v113 = v109;
          v43 = v107;
          sub_1B7C26C78(&v110);
          *&v44 = SqlOperation.Row.int64(forColumnIndex:)(v43);
          v88 = v44;
          v87 = DWORD2(v44);
        }

        else
        {
          sub_1B7AEE190(&v106, &qword_1EBA52298, &unk_1B7D10570);
          v88 = 0;
          v87 = 1;
        }

        SqlOperation.Row.column(forColumnName:)(0x726566736E617274uLL, 0xEE0065746174735FLL, &v106);
        if (*(&v106 + 1))
        {
          v110 = v106;
          v111 = v107;
          v112 = v108;
          v113 = v109;
          v45 = v107;
          sub_1B7C26C78(&v110);
          *&v46 = SqlOperation.Row.int64(forColumnIndex:)(v45);
          v86 = v46;
          v85 = DWORD2(v46);
        }

        else
        {
          sub_1B7AEE190(&v106, &qword_1EBA52298, &unk_1B7D10570);
          v86 = 0;
          v85 = 1;
        }

        SqlOperation.Row.column(forColumnName:)(0x79625F6C61746F74uLL, 0xEB00000000736574, &v106);
        if (*(&v106 + 1))
        {
          v110 = v106;
          v111 = v107;
          v112 = v108;
          v113 = v109;
          v47 = v107;
          sub_1B7C26C78(&v110);
          *&v48 = SqlOperation.Row.uint64(forColumnIndex:)(v47);
          v84 = v48;
          v83 = DWORD2(v48);
        }

        else
        {
          sub_1B7AEE190(&v106, &qword_1EBA52298, &unk_1B7D10570);
          v84 = 0;
          v83 = 1;
        }

        v49 = *v31;
        v80 = v31;
        v79 = v49;
        v49(v105, 1, 1, v94);
        v50 = type metadata accessor for StorageInspectionAttachmentDirectory(0);
        v51 = *(v50 - 8);
        v78 = *(v51 + 56);
        v77 = v51 + 56;
        v78(v103, 1, 1, v50);
        if (object)
        {
          v76 = v50;
          v52 = sub_1B7CFEA30();

          v53 = [v52 stringByExpandingTildeInPath];

          countAndFlagsBits = sub_1B7CFEA60();
          v54 = v99;
          sub_1B7CFDF20();

          v79(v54, 0, 1, v94);
          v55 = v105;
          sub_1B7C4FB78(v54, v105);
          if (!(*v91)(v55, 1, v94))
          {
            countAndFlagsBits = *v90;
            v56 = v96;
            v57 = v94;
            countAndFlagsBits(v96, v105, v94);
            sub_1B7CFDF80();
            v58 = v56;
            v59 = v57;
            v80 = *v92;
            v80(v58, v57);
            v60 = v98;
            (*v81)(v98, v97, v59);
            v61 = v103;
            sub_1B7AEE190(v103, &qword_1EBA52978, &qword_1B7D0DB38);
            countAndFlagsBits(v61, v60, v94);
            *(v61 + *(v76 + 20)) = v30;
            (v78)(v61, 0, 1);
            v62 = v104;
            sub_1B7C68F34();
            v104 = v62;
            if (v62)
            {
              goto LABEL_49;
            }

            v80(v98, v94);
          }
        }

        v63 = (v87 & 1) == 0;
        v87 &= 1u;
        v64 = v88;
        if (!v63)
        {
          v64 = 0;
        }

        countAndFlagsBits = v64;
        LODWORD(v88) = v85 & 1;
        v65 = v86;
        if (v85)
        {
          v65 = 0;
        }

        v86 = v65;
        v66 = v100;
        v67 = v93;
        sub_1B7C2569C(v105, &v93[*(v100 + 32)], &qword_1EBA51FA0, &qword_1B7D0A6D0);
        sub_1B7C2569C(v103, v67 + v66[12], &qword_1EBA52978, &qword_1B7D0DB38);
        *v67 = value;
        *(v67 + 8) = 0;
        v68 = v89.value._object;
        *(v67 + 32) = v89.value._countAndFlagsBits;
        *(v67 + 40) = v68;
        v69 = v67 + v66[9];
        *v69 = countAndFlagsBits;
        *(v69 + 8) = v87;
        v70 = v67 + v66[10];
        *v70 = v86;
        *(v70 + 8) = v88;
        v71 = v67 + v66[11];
        *v71 = v84;
        *(v71 + 8) = v83 & 1;
        *(v67 + 16) = 0;
        *(v67 + 24) = 0;
        sub_1B7AEE190(v103, &qword_1EBA52978, &qword_1B7D0DB38);
        sub_1B7AEE190(v105, &qword_1EBA51FA0, &qword_1B7D0A6D0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_1B7CA2A14(0, v95[2] + 1, 1, v95);
        }

        v73 = v95[2];
        v72 = v95[3];
        v32 = v92;
        if (v73 >= v72 >> 1)
        {
          v95 = sub_1B7CA2A14((v72 > 1), v73 + 1, 1, v95);
        }

        v33 = v95;
        v95[2] = v73 + 1;
        sub_1B7C65C88(v93, v33 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v73, type metadata accessor for StorageInspectionAttachmentRecord);
        swift_beginAccess();

        v74 = IMDSqlOperationHasRows(a1 + 16);
        swift_endAccess();
        if (!v74)
        {
LABEL_47:

          *v102 = v33;
          return result;
        }
      }

      swift_setDeallocating();

      goto LABEL_12;
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:

  swift_setDeallocating();

  v80(v98, v94);
  sub_1B7AEE190(v103, &qword_1EBA52978, &qword_1B7D0DB38);
  sub_1B7AEE190(v105, &qword_1EBA51FA0, &qword_1B7D0A6D0);

  return result;
}

void sub_1B7C65528(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v6 = sub_1B7CFEA30();
  v7 = [v6 stringByAbbreviatingWithTildeInPath];

  sub_1B7CFEA60();
  v8 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlStatementBindTextFromCFString(a1 + 48, v8);
  swift_endAccess();

  swift_beginAccess();
  v10[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v10);
  v9 = v10[0];
  swift_endAccess();
  if (v9)
  {
    swift_willThrow();
    v9;
  }

  else
  {

    *a4 = SqlOperation.uint64s(forColumnName:)(0x4449574F52uLL, 0xE500000000000000);
  }
}

uint64_t sub_1B7C65684@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v11[4] = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64((a1 + 48), a2);
  v11[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v11);
  v8 = v11[0];
  swift_endAccess();
  if (v8)
  {
LABEL_6:
    v8;
    return swift_willThrow();
  }

  v9 = *(a3 + 24);
  if (v9 < 0xFFFFFFFF80000000)
  {
    goto LABEL_9;
  }

  if (v9 > 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt((a1 + 48), v9);
  v11[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v11);
  v8 = v11[0];
  swift_endAccess();
  if (v8)
  {
    goto LABEL_6;
  }

  result = SqlOperation.uint64s(forColumnName:)(0x656D686361747461uLL, 0xED000064695F746ELL);
  *a4 = result;
  return result;
}

sqlite3_int64 sub_1B7C657E4@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v11[4] = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64((a1 + 48), a2);
  v11[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v11);
  v8 = v11[0];
  swift_endAccess();
  if (v8)
  {
LABEL_6:
    v8;
    return swift_willThrow();
  }

  v9 = *(a3 + 24);
  if (v9 < 0xFFFFFFFF80000000)
  {
    goto LABEL_9;
  }

  if (v9 > 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt((a1 + 48), v9);
  v11[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v11);
  v8 = v11[0];
  swift_endAccess();
  if (v8)
  {
    goto LABEL_6;
  }

  result = _s14IMDPersistence12SqlOperationC7uint64s14forColumnIndexSays6UInt64VGSi_tF_0();
  *a4 = result;
  return result;
}