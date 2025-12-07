double sub_1BF44E5C0(uint64_t a1)
{
  *(v1 + 96) = a1;

  return result;
}

uint64_t sub_1BF44E5D0()
{
  v1 = *v0;
  if (v0[14])
  {
    v2 = v0[14];
  }

  else
  {
    v3 = v0;
    v7 = v0[13];
    v4 = *(v1 + 104);
    v6[0] = v1[5];
    v6[1] = v4;
    v6[2] = *(v1 + 120);
    type metadata accessor for VariantIdentifier(255, v6);
    sub_1BF4E7C44();
    swift_getWitnessTable();
    v2 = sub_1BF4E7C84();
    v3[14] = v2;
  }

  return v2;
}

double sub_1BF44E6CC(uint64_t a1)
{
  *(v1 + 112) = a1;

  return result;
}

uint64_t sub_1BF44E6DC()
{
  v1 = *v0;
  if (v0[16])
  {
    v2 = v0[16];
  }

  else
  {
    v3 = v0;
    v7 = v0[15];
    v4 = *(v1 + 104);
    v6[0] = v1[5];
    v6[1] = v4;
    v6[2] = *(v1 + 120);
    type metadata accessor for VariantIdentifier(255, v6);
    sub_1BF4E7C44();
    swift_getWitnessTable();
    v2 = sub_1BF4E7C84();
    v3[16] = v2;
  }

  return v2;
}

double sub_1BF44E7D8(uint64_t a1)
{
  *(v1 + 128) = a1;

  return result;
}

uint64_t sub_1BF44E7E8()
{
  os_unfair_lock_assert_owner(*(*(v0 + qword_1EDC9AF58) + 16));
  swift_beginAccess();
  sub_1BF4E8834();
  nullsub_1();
  sub_1BF4E87B4();

  swift_getWitnessTable();
  return sub_1BF4E8CB4();
}

uint64_t sub_1BF44E930()
{
  v1 = type metadata accessor for UnfairLock();
  sub_1BF4E8CA4();
  v2 = sub_1BF4E8834();

  sub_1BF38D774(sub_1BF45DAA4, v0, v1, v2, &off_1F3DEE010);

  return v4;
}

uint64_t sub_1BF44EA2C()
{
  os_unfair_lock_assert_owner(*(*(v0 + qword_1EDC9AF58) + 16));
  swift_beginAccess();
  sub_1BF4E8CA4();

  sub_1BF4E8724();
  sub_1BF4E8834();
  sub_1BF4E8834();
  sub_1BF4E8834();
  swift_getWitnessTable();
  sub_1BF4E8B14();

  return v2;
}

uint64_t sub_1BF44EC50(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 136));
  sub_1BF38E610(a1, v1 + 136);
  return swift_endAccess();
}

double sub_1BF44ECA8()
{
  v1 = type metadata accessor for UnfairLock();

  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  sub_1BF38D774(sub_1BF45DAD4, v0, v1, ExtendedExistentialTypeMetadata, &off_1F3DEE010);

  return result;
}

void (*sub_1BF44EDDC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_1BF44ECA8();
  return sub_1BF44EE54;
}

void sub_1BF44EE54(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1BF38E49C(*a1, (v2 + 5));
    sub_1BF45DB24((v2 + 5));
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 5);
  }

  else
  {
    sub_1BF45DB24(*a1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);

  free(v2);
}

void (*sub_1BF44EF54(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BF44EFB8;
}

void sub_1BF44EFB8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BF395B90();
  }
}

double sub_1BF44F024()
{
  sub_1BF3B78FC();

  return result;
}

double sub_1BF44F0B8()
{
  sub_1BF45DB84();

  return result;
}

uint64_t sub_1BF44F0EC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_1BF44F1A0()
{
  v1 = v0;
  v2 = *v0;
  v10 = *(v1 + qword_1EDC9AF58);
  v3 = type metadata accessor for UnfairLock();

  v4 = v2[6];
  v9[0] = v2[5];
  v5 = v2[8];
  v8 = v2[7];
  v9[1] = v4;
  v9[2] = v8;
  v9[3] = v5;
  type metadata accessor for ReloadTaskPair(255, v9);
  v6 = sub_1BF4E8834();
  sub_1BF38D774(sub_1BF45DBC8, v1, v3, v6, &off_1F3DEE010);

  return *&v9[0];
}

uint64_t sub_1BF44F2A0()
{
  v1 = type metadata accessor for UnfairLock();
  type metadata accessor for ReloadConfiguration(255);
  v2 = sub_1BF4E8834();

  sub_1BF38D774(sub_1BF45DBE8, v0, v1, v2, &off_1F3DEE010);

  return v4;
}

uint64_t sub_1BF44F388(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + qword_1EDC9AF58);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1BF457814(v2, &v5);
  os_unfair_lock_unlock(*(v3 + 16));
  return v5;
}

uint64_t StatefulStore.__allocating_init<A, B>(reloadStrategy:reloadConfigurationPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v30 = a6;
  v35 = a2;
  v9 = sub_1BF4E7B54();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v17 + 16);
  v33 = a1;
  v34 = a3;
  v22(v21, a1, a3, v19);
  (*(v13 + 16))(v16, v35, a4);
  if (qword_1EDC9F998 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v9, qword_1EDCA6AD8);
  (*(v10 + 16))(v12, v23, v9);
  if (qword_1EDC99E10 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDC99E18;
  v36[3] = type metadata accessor for _SystemDataMigrator();
  v36[4] = &protocol witness table for _SystemDataMigrator;
  v36[0] = v24;
  v25 = *(v32 + 1224);

  v26 = v34;
  v27 = v25(v21, v16, MEMORY[0x1E69E7CC0], v12, v36, 1, 1, 0, 0, v34, a4, v31, v30);
  (*(v13 + 8))(v35, a4);
  (*(v17 + 8))(v33, v26);
  return v27;
}

void sub_1BF44F748(uint64_t a1)
{
  v2 = *v1;
  v10 = *(v1 + qword_1EDC9AF58);
  v7 = v1;
  v8 = a1;
  v3 = type metadata accessor for UnfairLock();

  v4 = *(v2 + 104);
  v9[0] = v2[5];
  v9[1] = v4;
  v9[2] = *(v2 + 120);
  type metadata accessor for VariantReloadResult(255, v9);
  v5 = sub_1BF4E7BB4();
  sub_1BF38D774(sub_1BF45DC08, &v6, v3, v5, &off_1F3DEE010);
}

void sub_1BF44F860(uint64_t a1)
{
  v2 = *(v1 + qword_1EDC9AF58);
  os_unfair_lock_lock(*(v2 + 16));
  sub_1BF459A4C();
  v3 = *(v2 + 16);

  os_unfair_lock_unlock(v3);
}

void sub_1BF44F8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + qword_1EDC9AF58);
  os_unfair_lock_lock(*(v11 + 16));
  sub_1BF459B10(v5, a1, a2, a3, a4, a5);
  v12 = *(v11 + 16);

  os_unfair_lock_unlock(v12);
}

void sub_1BF44F9EC(uint64_t a1)
{
  v61 = *v1;
  v2 = v61;
  v3 = v61[10];
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v69 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v59 - v7;
  v8 = v2[12];
  v9 = v2[16];
  v63 = v2[11];
  v60 = v8;
  v62 = v9;
  v10 = sub_1BF4E8834();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v72 = sub_1BF4E90F4();
  v12 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v59 - v15;
  os_unfair_lock_assert_owner(*(*(v1 + qword_1EDC9AF58) + 16));
  swift_beginAccess();
  v16 = v2[14];
  v81 = v3;
  v77 = v16;
  sub_1BF4E8834();
  sub_1BF4E8824();
  swift_endAccess();
  v17 = qword_1EDCA6870;
  swift_beginAccess();
  v73 = v1;
  v18 = *(v1 + v17);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  v76 = TupleTypeMetadata2;
  v74 = TupleTypeMetadata2 - 8;
  v64 = v4 + 16;
  v79 = (v4 + 32);
  v70 = (v12 + 32);
  v66 = v4;
  v68 = (v4 + 8);
  v67 = v18;

  v24 = 0;
  v78 = 0;
  while (v22)
  {
    v25 = v24;
    v26 = v81;
LABEL_14:
    v32 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v33 = v32 | (v25 << 6);
    v34 = v67;
    v35 = v66;
    (*(v66 + 16))(v65, *(v67 + 48) + *(v66 + 72) * v33, v26);
    v36 = *(*(v34 + 56) + 8 * v33);
    v37 = *(v76 + 48);
    v38 = *(v35 + 32);
    v30 = v76;
    v31 = v75;
    v38();
    *&v31[v37] = v36;
    v39 = *(v30 - 8);
    (*(v39 + 56))(v31, 0, 1, v30);

    v28 = v25;
    v29 = v77;
LABEL_15:
    v40 = v71;
    (*v70)(v71, v31, v72);
    if ((*(v39 + 48))(v40, 1, v30) == 1)
    {

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD95D0, &qword_1BF4F1C88);
      v52 = v81;
      sub_1BF4E8834();
      sub_1BF4E8824();
      swift_endAccess();
      swift_beginAccess();
      sub_1BF4E8834();
      sub_1BF4E8824();
      swift_endAccess();
      sub_1BF4C9794();
      sub_1BF452200(0x6465766F6D6572, 0xE700000000000000);
      swift_beginAccess();
      v53 = v61[13];
      v54 = v61[15];
      v55 = v61[17];
      v56 = v29;
      v57 = v63;
      v82 = v52;
      v83 = v63;
      v84 = v60;
      v85 = v53;
      v86 = v56;
      v87 = v54;
      v58 = v62;
      v88 = v62;
      v89 = v55;
      type metadata accessor for ReloadTaskPair(255, &v82);
      sub_1BF4E8834();
      sub_1BF4E8824();
      swift_endAccess();
      swift_beginAccess();
      v82 = v52;
      v83 = v57;
      v84 = v53;
      v85 = v56;
      v86 = v54;
      v87 = v58;
      type metadata accessor for VariantReloadResult(255, &v82);
      sub_1BF4E7C44();
      sub_1BF4E8834();
      sub_1BF4E8834();
      sub_1BF4E8824();
      swift_endAccess();
      swift_beginAccess();
      sub_1BF4E7334();
      sub_1BF4E8834();
      sub_1BF4E8824();
      swift_endAccess();
      return;
    }

    v80 = v28;

    v41 = v69;
    v42 = v10;
    v43 = v81;
    (*v79)(v69, v40, v81);
    swift_beginAccess();

    sub_1BF4E8854();

    v44 = (*v68)(v41, v43);
    if (v82)
    {
      v90 = v82;
      MEMORY[0x1EEE9AC00](v44);
      v45 = v63;
      *(&v59 - 8) = v43;
      *(&v59 - 7) = v45;
      v46 = v61;
      v47 = v61[13];
      *(&v59 - 6) = v60;
      *(&v59 - 5) = v47;
      v48 = v46[15];
      *(&v59 - 4) = v49;
      *(&v59 - 3) = v48;
      v50 = v46[17];
      *(&v59 - 2) = v62;
      *(&v59 - 1) = v50;
      swift_getWitnessTable();
      v51 = v78;
      sub_1BF4E8B44();
      v78 = v51;
    }

    v24 = v80;
    v10 = v42;
  }

  if (v23 <= v24 + 1)
  {
    v27 = v24 + 1;
  }

  else
  {
    v27 = v23;
  }

  v28 = v27 - 1;
  v26 = v81;
  v29 = v77;
  v30 = v76;
  v31 = v75;
  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v23)
    {
      v39 = *(v76 - 8);
      (*(v39 + 56))(v75, 1, 1, v76);
      v22 = 0;
      goto LABEL_15;
    }

    v22 = *(v19 + 8 * v25);
    ++v24;
    if (v22)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

double sub_1BF450388(uint64_t a1, char *a2)
{
  v136 = a2;
  v138 = a1;
  v3 = *v2;
  v4 = *v2;
  v121 = sub_1BF4E7FF4();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v118 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1BF4E8064();
  v117 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v116 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v3[10];
  v125 = *(v7 - 8);
  v114 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v127 = &v103 - v9;
  v10 = v3[11];
  v115 = v4;
  v137 = *(v4 + 13);
  v11 = v3[15];
  v12 = v3[16];
  *&aBlock = v7;
  *(&aBlock + 1) = v10;
  v143 = v137;
  v133 = v11;
  v144 = v11;
  v145 = v12;
  v130 = type metadata accessor for VariantIdentifier(0, &aBlock);
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v112 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  *&v123 = &v103 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v128 = &v103 - v17;
  v132 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v126 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v131 = &v103 - v21;
  v22 = v3[12];
  v23 = sub_1BF4E90F4();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v122 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v103 - v27;
  os_unfair_lock_assert_owner(*(*(v2 + qword_1EDC9AF58) + 16));
  swift_beginAccess();
  v134 = v2;
  v29 = v22;
  v30 = v12;
  v135 = v10;
  v31 = sub_1BF4E8834();

  v32 = v137.i64[1];
  sub_1BF4E8854();

  if (aBlock)
  {
    v124 = v32;
    v141 = aBlock;
    sub_1BF4E8854();
    v34 = *(v29 - 8);
    v35 = v29;
    v36 = (*(v34 + 48))(v28, 1, v29);
    (*(v24 + 8))(v28, v23);
    if (v36 == 1)
    {
LABEL_8:

      return result;
    }

    v37 = v31;
    v39 = v132 + 16;
    v38 = *(v132 + 16);
    v40 = v131;
    v41 = v135;
    v38(v131, v136, v135);
    v42 = *(v34 + 56);
    v111 = v35;
    v42(v122, 1, 1, v35);
    v43 = v30;
    v105 = v37;
    sub_1BF4E8864();
    v44 = *(v125 + 16);
    v45 = v127;
    v108 = v125 + 16;
    v107 = v44;
    v44(v127, v138, v7);
    v46 = v136;
    v38(v40, v136, v41);
    v47 = v128;
    v106 = v7;
    v122 = v43;
    VariantIdentifier.init(storedKey:variantKey:)(v45, v40, v7, v41, v137.i64[0], v124, v133, v43, v128);
    v48 = v129;
    v49 = *(v129 + 16);
    v50 = v123;
    v51 = v47;
    v52 = v130;
    v49(v123, v51, v130);
    v109 = v39;
    v110 = v38;
    v38(v126, v46, v41);
    v53 = sub_1BF4E7B34();
    v54 = sub_1BF4E8E84();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v103 = v53;
      v56 = v55;
      v104 = swift_slowAlloc();
      *&aBlock = v104;
      *v56 = 136446466;
      v57 = v112;
      v49(v112, v50, v52);
      v58 = *(v48 + 8);
      v58(v50, v52);
      v59 = VariantIdentifier.description.getter(v52);
      v60 = v54;
      v62 = v61;
      v58(v57, v52);
      v63 = sub_1BF38D65C(v59, v62, &aBlock);

      *(v56 + 4) = v63;
      *(v56 + 12) = 2082;
      v64 = v131;
      v65 = v126;
      v66 = v135;
      v110(v131, v126, v135);
      v67 = *(v132 + 8);
      v67(v65, v66);
      v68 = sub_1BF4E96A4();
      v70 = v69;
      v67(v64, v66);
      v71 = sub_1BF38D65C(v68, v70, &aBlock);

      *(v56 + 14) = v71;
      v72 = v103;
      _os_log_impl(&dword_1BF389000, v103, v60, "%{public}s:%{public}s Removed variant from store", v56, 0x16u);
      v73 = v104;
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v73, -1, -1);
      MEMORY[0x1BFB5A5D0](v56, -1, -1);
    }

    else
    {
      v66 = v135;
      (*(v132 + 8))(v126, v135);
      v58 = *(v48 + 8);
      v58(v50, v52);

      v64 = v131;
    }

    v74 = v141;
    v75 = v122;
    if (MEMORY[0x1BFB58A40](v141, v66, v111, v122))
    {
      v76 = sub_1BF4513E0(v138);
      (v58)(v128, v130, v76);
      goto LABEL_8;
    }

    v77 = v106;
    v107(v127, v138, v106);
    v146 = v74;
    swift_beginAccess();
    sub_1BF4E8834();
    v126 = v74;

    sub_1BF4E8864();
    swift_endAccess();
    swift_beginAccess();

    *&v78 = v77;
    *(&v78 + 1) = v66;
    v143 = v137;
    v123 = v78;
    aBlock = v78;
    v144 = v133;
    v145 = v75;
    type metadata accessor for VariantReloadResult(255, &aBlock);
    v79 = sub_1BF4E7C44();
    sub_1BF4E8834();
    sub_1BF4E8854();

    if (v139)
    {
      v140 = v139;
      v110(v64, v136, v66);
      *&aBlock = 0;
      sub_1BF4E8864();
      v80 = v140;
      if (MEMORY[0x1BFB58A40](v140, v66, v79, v75))
      {

        v81 = v127;
        v82 = v138;
        v83 = v107;
        v107(v127, v138, v77);
        v139 = 0;
      }

      else
      {
        v81 = v127;
        v82 = v138;
        v83 = v107;
        v107(v127, v138, v77);
        v139 = v80;
      }

      v85 = v134;
      swift_beginAccess();
      v84 = v77;
      sub_1BF4E8834();
      sub_1BF4E8864();
      swift_endAccess();
      v86 = v132;
    }

    else
    {
      v84 = v77;
      v82 = v138;
      v85 = v134;
      v81 = v127;
      v86 = v132;
      v83 = v107;
    }

    v138 = *(v85 + qword_1EDC9AFD0);
    v83(v81, v82, v84);
    v87 = v131;
    v88 = v81;
    v89 = v135;
    v110(v131, v136, v135);
    v90 = v125;
    v91 = (*(v125 + 80) + 80) & ~*(v125 + 80);
    v92 = (v114 + *(v86 + 80) + v91) & ~*(v86 + 80);
    v93 = v86;
    v94 = (v113 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = swift_allocObject();
    v96.i64[0] = v111;
    v97 = vzip1q_s64(v96, v137);
    *(v95 + 16) = v123;
    *(v95 + 32) = v97;
    v98 = v133;
    *(v95 + 48) = v124;
    *(v95 + 56) = v98;
    *(v95 + 64) = v122;
    *(v95 + 72) = v115[17];
    (*(v90 + 32))(v95 + v91, v88, v84);
    (*(v93 + 32))(v95 + v92, v87, v89);
    *(v95 + v94) = v134;
    v144 = sub_1BF45E908;
    v145 = v95;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v143.i64[0] = sub_1BF38E868;
    v143.i64[1] = &block_descriptor_106;
    v99 = _Block_copy(&aBlock);

    v100 = v116;
    sub_1BF4E8014();
    v140 = MEMORY[0x1E69E7CC0];
    sub_1BF3983D4(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890, MEMORY[0x1E69E6328]);
    v101 = v118;
    v102 = v121;
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v100, v101, v99);
    _Block_release(v99);
    (*(v120 + 8))(v101, v102);
    (*(v117 + 8))(v100, v119);
    (*(v129 + 8))(v128, v130);
  }

  return result;
}

double sub_1BF4513E0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v85 = v4;
  v78 = sub_1BF4E7FF4();
  v5 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BF4E8064();
  v80 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v75 = &v70 - v10;
  v11 = *(v4 + 10);
  v89 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v70 - v15);
  os_unfair_lock_assert_owner(*(*(v2 + qword_1EDC9AF58) + 16));
  swift_beginAccess();
  v17 = *(v4 + 12);
  v18 = *(v4 + 16);
  v87 = *(v4 + 11);
  v88 = v18;
  sub_1BF4E8834();
  v19 = *(v4 + 14);

  v91 = a1;
  sub_1BF4E8854();

  if (aBlock)
  {
    v73 = v7;
    v72 = aBlock;
    v74 = v5;
    v21 = v89 + 16;
    v22 = *(v89 + 16);
    v23 = v91;
    v22(v16, v91, v11);
    LOBYTE(v101) = 5;
    swift_beginAccess();
    sub_1BF4E8834();
    v90 = v19;
    sub_1BF4E8864();
    swift_endAccess();
    sub_1BF4C9CF8(v23);
    v84 = v21;
    v83 = v22;
    v22(v16, v23, v11);
    v101 = 0;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD95D0, &qword_1BF4F1C88);
    sub_1BF4E8834();
    sub_1BF4E8864();
    v24 = v90;
    swift_endAccess();
    swift_beginAccess();

    sub_1BF4E8854();

    v86 = v17;
    v26 = v88;
    v27 = v85;
    if (aBlock)
    {
      v82 = v16;
      v101 = aBlock;
      MEMORY[0x1EEE9AC00](v25);
      v28 = v87;
      *(&v70 - 8) = v11;
      *(&v70 - 7) = v28;
      v29 = *(v27 + 13);
      *(&v70 - 6) = v86;
      *(&v70 - 5) = v29;
      v30 = *(v27 + 15);
      *(&v70 - 4) = v24;
      *(&v70 - 3) = v30;
      v31 = *(v27 + 17);
      *(&v70 - 2) = v26;
      *(&v70 - 1) = v31;
      swift_getWitnessTable();
      sub_1BF4E8B44();
      v24 = v90;

      v16 = v82;
    }

    v32 = v91;
    v33 = v83;
    v83(v16, v91, v11);
    v101 = 0;
    swift_beginAccess();
    sub_1BF4E8834();
    v34 = v24;
    sub_1BF4E8864();
    swift_endAccess();
    v33(v16, v32, v11);
    v100 = 0;
    swift_beginAccess();
    v35 = *(v27 + 13);
    v82 = *(v27 + 15);
    v36 = v87;
    aBlock = v11;
    v93 = v87;
    v94 = v35;
    v95 = v24;
    v37 = v88;
    v96 = v82;
    v97 = v88;
    type metadata accessor for VariantReloadResult(255, &aBlock);
    sub_1BF4E7C44();
    sub_1BF4E8834();
    sub_1BF4E8834();
    sub_1BF4E8864();
    swift_endAccess();
    swift_beginAccess();
    sub_1BF4E7334();
    sub_1BF4E8834();
    v38 = v75;
    sub_1BF4E8784();
    sub_1BF38C9B4(v38, &qword_1EBDD9B00, &qword_1BF4F1E50);
    swift_endAccess();
    swift_beginAccess();
    v39 = *(v85 + 17);

    aBlock = v11;
    v93 = v36;
    v94 = v86;
    v95 = v35;
    v85 = v35;
    v96 = v34;
    v97 = v82;
    v98 = v37;
    v99 = v39;
    v75 = v39;
    type metadata accessor for ReloadTaskPair(0, &aBlock);
    sub_1BF4E8854();

    if (v100)
    {
      v40 = sub_1BF4B4014();
      v41 = v83;
      (v83)(v16, v91, v11, v40);
      v100 = 0;
      swift_beginAccess();
      sub_1BF4E8834();
      sub_1BF4E8864();
      swift_endAccess();
    }

    else
    {
      v41 = v83;
    }

    v42 = v76;
    v41(v76, v91, v11);
    v43 = sub_1BF4E7B34();
    v44 = sub_1BF4E8E84();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v42;
      v46 = v16;
      v47 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock = v71;
      *v47 = 136446210;
      v41(v46, v45, v11);
      v48 = *(v89 + 8);
      v48(v45, v11);
      v49 = sub_1BF4E96A4();
      v51 = v50;
      v48(v46, v11);
      v52 = sub_1BF38D65C(v49, v51, &aBlock);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1BF389000, v43, v44, "%{public}s Removed from store", v47, 0xCu);
      v53 = v71;
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      MEMORY[0x1BFB5A5D0](v53, -1, -1);
      v54 = v47;
      v16 = v46;
      MEMORY[0x1BFB5A5D0](v54, -1, -1);

      v55 = v83;
      v56 = v87;
    }

    else
    {
      (*(v89 + 8))(v42, v11);

      v56 = v87;
      v55 = v41;
    }

    v57 = v86;
    v55(v16, v91, v11);
    v58 = v89;
    v59 = (*(v89 + 80) + 88) & ~*(v89 + 80);
    v60 = v16;
    v61 = (v77 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    *(v62 + 2) = v11;
    *(v62 + 3) = v56;
    v63 = v85;
    *(v62 + 4) = v57;
    *(v62 + 5) = v63;
    v64 = v82;
    *(v62 + 6) = v90;
    *(v62 + 7) = v64;
    v65 = v75;
    *(v62 + 8) = v88;
    *(v62 + 9) = v65;
    *(v62 + 10) = v72;
    (*(v58 + 32))(&v62[v59], v60, v11);
    *&v62[v61] = v2;
    v96 = sub_1BF45E9D4;
    v97 = v62;
    aBlock = MEMORY[0x1E69E9820];
    v93 = 1107296256;
    v94 = sub_1BF38E868;
    v95 = &block_descriptor_112;
    v66 = _Block_copy(&aBlock);

    v67 = v79;
    sub_1BF4E8014();
    v100 = MEMORY[0x1E69E7CC0];
    sub_1BF3983D4(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890, MEMORY[0x1E69E6328]);
    v68 = v81;
    v69 = v78;
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v67, v68, v66);
    _Block_release(v66);
    (*(v74 + 8))(v68, v69);
    (*(v80 + 8))(v67, v73);
  }

  return result;
}

void sub_1BF4520F8(uint64_t a1)
{
  v3 = *(v1 + qword_1EDC9AF58);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1BF45A838(v1, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

void sub_1BF452178(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = *(v2 + qword_1EDC9AF58);
  os_unfair_lock_lock(*(v5 + 16));
  sub_1BF45B630(v2, a1, v3);
  v6 = *(v5 + 16);

  os_unfair_lock_unlock(v6);
}

void sub_1BF452200(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = a2;
  v3 = *(*v2 + 80);
  v51 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v53 = v49 - v4;
  v6 = *(v5 + 136);
  v66 = v3;
  v8 = *(v7 + 104);
  v67 = *(v7 + 88);
  v68 = v8;
  v69 = *(v7 + 120);
  v70 = v6;
  v9 = type metadata accessor for ReloadTaskPair(255, &v66);
  v63 = v3;
  v49[1] = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v61 = sub_1BF4E90F4();
  v11 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v49 - v15;
  v17 = qword_1EDC9AF88;
  swift_beginAccess();
  v18 = *(v2 + v17);
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = sub_1BF4E9414();
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v62 = v19 | 0x8000000000000000;
  }

  else
  {
    v23 = -1 << *(v18 + 32);
    v21 = ~v23;
    v20 = v18 + 64;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(v18 + 64);
    v62 = v18;
  }

  v52 = (v51 + 32);
  v60 = TupleTypeMetadata2 - 8;
  v49[0] = v21;
  v26 = (v21 + 64) >> 6;
  v49[2] = v51 + 16;
  v59 = (v11 + 32);
  v54 = (v51 + 8);

  v27 = 0;
  v55 = v26;
  v50 = v20;
  v28 = v62;
  if ((v62 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  v29 = v22;
  v30 = v27;
  if (v22)
  {
LABEL_17:
    v64 = (v29 - 1) & v29;
    v58 = v27;
    v34 = __clz(__rbit64(v29)) | (v30 << 6);
    v35 = v16;
    v36 = v13;
    v37 = v51;
    v38 = v53;
    v39 = v63;
    (*(v51 + 16))(v53, *(v28 + 48) + *(v51 + 72) * v34, v63);
    v40 = *(*(v28 + 56) + 8 * v34);
    v41 = *(TupleTypeMetadata2 + 48);
    v42 = *(v37 + 32);
    v13 = v36;
    v16 = v35;
    v43 = v38;
    v20 = v50;
    v42(v13, v43, v39);
    *&v13[v41] = v40;
    v44 = *(TupleTypeMetadata2 - 8);
    (*(v44 + 56))(v13, 0, 1, TupleTypeMetadata2);

    v32 = v30;
    goto LABEL_23;
  }

  if (v26 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = v26;
  }

  v32 = v31 - 1;
  v33 = v27;
  while (1)
  {
    v30 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      return;
    }

    if (v30 >= v26)
    {
      break;
    }

    v29 = *(v20 + 8 * v30);
    ++v33;
    if (v29)
    {
      v28 = v62;
      goto LABEL_17;
    }
  }

  v44 = *(TupleTypeMetadata2 - 8);
  (*(v44 + 56))(v13, 1, 1, TupleTypeMetadata2);
  v64 = 0;
LABEL_23:
  while (1)
  {
    (*v59)(v16, v13, v61);
    if ((*(v44 + 48))(v16, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    sub_1BF4B4014();

    (*v54)(v16, v63);
    v27 = v32;
    v22 = v64;
    v26 = v55;
    v28 = v62;
    if ((v62 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    v45 = v27;
    v58 = v22;
    if (sub_1BF4E9444())
    {
      v46 = v53;
      v47 = v63;
      sub_1BF4E9704();
      swift_unknownObjectRelease();
      sub_1BF4E9704();
      swift_unknownObjectRelease();
      v48 = *(TupleTypeMetadata2 + 48);
      (*v52)(v13, v46, v47);
      *&v13[v48] = v65;
      v44 = *(TupleTypeMetadata2 - 8);
      (*(v44 + 56))(v13, 0, 1, TupleTypeMetadata2);
    }

    else
    {
      v44 = *(TupleTypeMetadata2 - 8);
      (*(v44 + 56))(v13, 1, 1, TupleTypeMetadata2);
    }

    v32 = v45;
    v64 = v58;
  }

  sub_1BF39A9CC(v62);
}

double sub_1BF45289C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  swift_beginAccess();

  v5 = v4[6];
  v9[0] = v4[5];
  v6 = v4[8];
  v8 = v4[7];
  v9[1] = v5;
  v9[2] = v8;
  v9[3] = v6;
  type metadata accessor for ReloadTaskPair(0, v9);
  sub_1BF4E8854();

  if (v10)
  {
    sub_1BF4B4014();
  }

  return result;
}

double sub_1BF4529A0(uint64_t a1)
{
  v5[5] = *(v1 + qword_1EDC9AF58);
  v5[3] = a1;
  v2 = type metadata accessor for UnfairLock();
  v3 = sub_1BF4E90F4();

  sub_1BF38D774(sub_1BF45DC40, v5, v2, v3, &off_1F3DEE010);

  return result;
}

void sub_1BF452A64(uint64_t a1)
{
  v80 = *v1;
  v2 = v80[10];
  v78 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v70 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v58 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v58 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v58 - v10;
  os_unfair_lock_assert_owner(*(*(v1 + qword_1EDC9AF58) + 16));
  v83 = v1;
  v67 = qword_1EDC9AF50;
  v11 = sub_1BF4E7B34();
  v12 = sub_1BF4E8E84();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BF389000, v11, v12, "System migration completed", v13, 2u);
    MEMORY[0x1BFB5A5D0](v13, -1, -1);
  }

  swift_beginAccess();
  v82 = v80[14];
  nullsub_1();
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v66 = qword_1EDC9AF88;
  v19 = (v16 + 63) >> 6;
  v20 = v78 + 16;
  v72 = v78 + 32;
  v75 = (v78 + 8);
  v77 = v14;

  v21 = 0;
  *&v22 = 136446210;
  v64 = v22;
  v71 = v19;
  v81 = v2;
  v76 = v8;
  v79 = v20;
  while (v18)
  {
LABEL_13:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = v78;
    v26 = *(v77 + 48) + *(v78 + 72) * (v24 | (v21 << 6));
    v27 = v73;
    v74 = *(v78 + 16);
    v74(v73, v26, v2);
    (*(v25 + 32))(v8, v27, v2);
    swift_beginAccess();
    v2 = v81;
    v29 = v80[11];
    v28 = v80[12];
    v30 = v80[16];
    sub_1BF4E8834();

    sub_1BF4E8854();

    v31 = v85[0];
    if (v85[0])
    {
      if ((MEMORY[0x1BFB58A40](v85[0], v29, v28, v30) & 1) != 0 || (swift_beginAccess(), v2 = v81, , sub_1BF4E8854(), , LOBYTE(v85[0]) == 4))
      {
        v8 = v76;
        (*v75)(v76, v2);
      }

      else
      {
        v69 = v31;
        swift_beginAccess();

        v32 = v80[13];
        v33 = v80[15];
        v34 = v80[17];
        v85[0] = v2;
        v85[1] = v29;
        v85[2] = v28;
        v85[3] = v32;
        v63 = v32;
        v85[4] = v82;
        v85[5] = v33;
        v85[6] = v30;
        v85[7] = v34;
        v35 = type metadata accessor for ReloadTaskPair(0, v85);
        v8 = v76;
        v65 = v35;
        sub_1BF4E8854();

        v36 = v85[0];
        LOBYTE(v85[0]) = 0;
        sub_1BF399684(v85, v8);
        if (v36 && (v37 = sub_1BF39B43C()) != 0)
        {
          v38 = v37;
        }

        else
        {
          v62 = v36;
          v39 = v68;
          v40 = v81;
          v41 = v74;
          v74(v68, v8, v81);
          v42 = sub_1BF4E7B34();
          v43 = sub_1BF4E8E64();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v59 = v44;
            v61 = swift_slowAlloc();
            v85[0] = v61;
            *v44 = v64;
            v60 = v42;
            v45 = v39;
            v46 = v70;
            v41(v70, v45, v40);
            v47 = *v75;
            (*v75)(v45, v40);
            v48 = sub_1BF4E96A4();
            v50 = v49;
            v47(v46, v40);
            v51 = sub_1BF38D65C(v48, v50, v85);

            v52 = v59;
            *(v59 + 1) = v51;
            v53 = v60;
            v54 = v52;
            _os_log_impl(&dword_1BF389000, v60, v43, "%{public}s Unexpectedly found no reload tasks for key", v52, 0xCu);
            v55 = v61;
            __swift_destroy_boxed_opaque_existential_1Tm(v61);
            MEMORY[0x1BFB5A5D0](v55, -1, -1);
            MEMORY[0x1BFB5A5D0](v54, -1, -1);
          }

          else
          {
            (*v75)(v39, v40);
          }

          v56 = v76;
          v57 = sub_1BF455294(v76);
          v38 = sub_1BF39B43C();
          v74(v70, v56, v40);
          v84 = v57;
          swift_beginAccess();
          sub_1BF4E8834();

          sub_1BF4E8864();
          swift_endAccess();

          if (!v38)
          {
            goto LABEL_28;
          }

          v8 = v76;
        }

        sub_1BF397638(v38);

        v2 = v81;
        (*v75)(v8, v81);
      }
    }

    else
    {
      (*v75)(v8, v2);
    }

    v19 = v71;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return;
    }

    v18 = *(v15 + 8 * v23);
    ++v21;
    if (v18)
    {
      v21 = v23;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1BF4533A4(char *a1, uint64_t a2, uint64_t a3)
{
  v201 = a3;
  v242 = a1;
  v216 = *v3;
  v5 = v216;
  v223 = sub_1BF4E7334();
  v207 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v193 = &v188 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_1BF4E7B54();
  v219 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v203 = &v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for ReloadConfiguration(0);
  MEMORY[0x1EEE9AC00](v200);
  v202 = &v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = v5[10];
  v253 = *(v248 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v190 = &v188 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v189 = &v188 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v191 = &v188 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v224 = &v188 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v214 = &v188 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v192 = &v188 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v217 = &v188 - v22;
  v23 = v5[12];
  v241 = v5[17];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v234 = sub_1BF4E90F4();
  v245 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v213 = &v188 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v244 = &v188 - v26;
  v233 = sub_1BF4E90F4();
  v226 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v28 = &v188 - v27;
  v29 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v243 = (&v188 - v31);
  v32 = v5[11];
  v240 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v197 = &v188 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v212 = &v188 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v188 - v38;
  v40 = sub_1BF4E90F4();
  MEMORY[0x1EEE9AC00](v40 - 8);
  v238 = &v188 - v41;
  v220 = v3;
  v42 = v5[16];
  v221 = a2;
  nullsub_1();
  if ((v43 & 0xC000000000000001) != 0)
  {
    v44 = v43;
    v45 = sub_1BF4E9414();
    v46 = 0;
    v47 = 0;
    v251 = v45 | 0x8000000000000000;
    v252 = 0;
    v43 = v44;
  }

  else
  {
    v48 = -1 << *(v43 + 32);
    v46 = ~v48;
    v49 = *(v43 + 64);
    v251 = v43;
    v252 = v43 + 64;
    v50 = -v48;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    else
    {
      v51 = -1;
    }

    v47 = v51 & v49;
  }

  v249 = (v240 + 56);
  v198 = v46;
  v250 = (v46 + 64) >> 6;
  v254 = (v240 + 16);
  v246 = (v29 + 48);
  v247 = (v240 + 32);
  v231 = (v29 + 32);
  v230 = v241 + 2;
  v229 = AssociatedTypeWitness - 8;
  v228 = (v245 + 8);
  v211 = v241 + 3;
  v222 = (v207 + 56);
  v210 = v241 + 6;
  v209 = "no reloaded content";
  v208 = v241 + 9;
  v237 = (v253 + 16);
  v245 = (v240 + 8);
  v218 = (v253 + 8);
  v227 = (v29 + 8);
  ++v226;
  v199 = v43;

  v253 = 0;
  *&v52 = 136446466;
  v196 = v52;
  v53 = v244;
  v54 = v243;
  v55 = v238;
  v215 = v23;
  v235 = v42;
  v232 = v28;
  v236 = v39;
  while ((v251 & 0x8000000000000000) != 0)
  {
    if (!sub_1BF4E9454())
    {
LABEL_28:
      (*v249)(v55, 1, 1, v32);
      sub_1BF39A9CC(v251);
      LOBYTE(v256) = 3;
      sub_1BF399684(&v256, v242);
      v89 = v241;
      v90 = v199;
      v91 = v42;
      if (v201)
      {
        v252 = sub_1BF39B43C();

        sub_1BF4B4014();
      }

      else
      {
        v252 = 0;
      }

      v93 = v216[13];
      v92 = v216[14];
      v94 = v216[15];
      v95 = v248;
      v256 = v248;
      v257 = v32;
      v258 = v23;
      v259 = v93;
      v260 = v92;
      v261 = v94;
      v262 = v91;
      v263 = v89;
      v250 = type metadata accessor for ReloadTaskPair(0, &v256);
      v254 = ReloadTaskPair.__allocating_init()();
      v256 = v90;
      sub_1BF4E87B4();

      swift_getWitnessTable();
      v96 = sub_1BF4E8D94();
      v97 = v89;
      v98 = v96;
      v256 = v95;
      v257 = v32;
      v258 = v23;
      v259 = v93;
      v244 = v93;
      v251 = v92;
      v260 = v92;
      v261 = v94;
      v262 = v91;
      v263 = v97;
      v99 = type metadata accessor for ReloadTask(0, &v256);
      v100 = v220;
      v101 = sub_1BF3B29A4();
      v102 = v224;
      v253 = *v237;
      (v253)(v224, v242, v95);
      v103 = *v222;
      v104 = v202;
      v105 = v223;
      (*v222)(v202, 1, 1, v223);
      v106 = v200;
      v107 = *(v200 + 36);
      *(v104 + *(v200 + 20)) = 1;
      *(v104 + v106[7]) = 1;
      *(v104 + v106[6]) = 0xA000000000000030;
      *(v104 + v106[8]) = 1;
      *(v104 + v107) = 0;
      v108 = *(v219 + 16);
      v247 = qword_1EDC9AF50;
      v109 = v203;
      v219 += 16;
      v245 = v108;
      (v108)(v203, v100 + qword_1EDC9AF50, v225);

      v249 = v98;
      v246 = v99;
      v110 = ReloadTask.__allocating_init(identifier:key:variantKeys:configuration:logger:)(v101, v102, v98, v104, v109);
      sub_1BF3A8AF8(v110);
      v111 = v252;
      if (v252)
      {
        v112 = v252 + *(*v252 + 168);
        v256 = *(v112 + v106[6]);
        v113 = v256;
        v255[0] = 0xA000000000000030;

        sub_1BF39C510(v113);
        LOBYTE(v113) = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v256, v255);
        sub_1BF39C9A4(v256);
        if ((v113 & 1) == 0)
        {
          v124 = v191;
          v125 = v248;
          v126 = v253;
          (v253)(v191, v242, v248);
          v127 = sub_1BF4E7B34();
          v128 = sub_1BF4E8E84();
          if (os_log_type_enabled(v127, v128))
          {
            v129 = swift_slowAlloc();
            v130 = swift_slowAlloc();
            v256 = v130;
            *v129 = 136446210;
            v131 = v224;
            v126(v224, v124, v248);
            v132 = *v218;
            (*v218)(v124, v248);
            v133 = sub_1BF4E96A4();
            v135 = v134;
            v132(v131, v248);
            v126 = v253;
            v136 = sub_1BF38D65C(v133, v135, &v256);

            *(v129 + 4) = v136;
            _os_log_impl(&dword_1BF389000, v127, v128, "%{public}s Has a current task; queueing it for when the store becomes unblocked.", v129, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v130);
            MEMORY[0x1BFB5A5D0](v130, -1, -1);
            v137 = v129;
            v125 = v248;
            MEMORY[0x1BFB5A5D0](v137, -1, -1);

            v123 = v254;
          }

          else
          {
            (*v218)(v124, v125);

            v123 = v254;
            v131 = v224;
          }

          v152 = v220;
          v153 = sub_1BF3B29A4();
          v154 = v242;
          v126(v131, v242, v125);
          v155 = v112;
          v156 = v202;
          sub_1BF39B31C(v155, v202, type metadata accessor for ReloadConfiguration);
          v157 = v203;
          (v245)(v203, v247 + v152, v225);
          v158 = v157;
          v159 = v253;
          v160 = ReloadTask.__allocating_init(identifier:key:variantKeys:configuration:logger:)(v153, v131, v249, v156, v158);
          sub_1BF410244(v160);

          v159(v131, v154, v125);
          goto LABEL_59;
        }

        v114 = v242;
        v115 = v248;
        v116 = v253;
        if (v201)
        {
          v117 = sub_1BF3AB3E8();
          v118 = v224;
          if (v117)
          {
            v119 = v117 + *(*v117 + 168);
            v256 = *(v119 + v106[6]);
            v120 = v256;
            v255[0] = 0xA000000000000030;

            sub_1BF39C510(v120);
            LOBYTE(v120) = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v256, v255);
            sub_1BF39C9A4(v256);
            if (v120)
            {

              goto LABEL_50;
            }

            v252 = v111;
            v163 = v189;
            v116(v189, v114, v115);
            v164 = sub_1BF4E7B34();
            v165 = sub_1BF4E8E84();
            if (os_log_type_enabled(v164, v165))
            {
              v166 = swift_slowAlloc();
              v243 = swift_slowAlloc();
              v256 = v243;
              *v166 = 136446210;
              v118 = v224;
              v116(v224, v163, v115);
              LODWORD(v241) = v165;
              v167 = *v218;
              (*v218)(v163, v115);
              v168 = sub_1BF4E96A4();
              v170 = v169;
              v167(v118, v115);
              v171 = sub_1BF38D65C(v168, v170, &v256);

              *(v166 + 4) = v171;
              _os_log_impl(&dword_1BF389000, v164, v241, "%{public}s Has a queued task; queueing it for when the store becomes unblocked.", v166, 0xCu);
              v172 = v243;
              __swift_destroy_boxed_opaque_existential_1Tm(v243);
              MEMORY[0x1BFB5A5D0](v172, -1, -1);
              v173 = v166;
              v114 = v242;
              MEMORY[0x1BFB5A5D0](v173, -1, -1);

              v123 = v254;
            }

            else
            {
              (*v218)(v163, v115);

              v123 = v254;
              v118 = v224;
            }

            v182 = v220;
            v183 = sub_1BF3B29A4();
            (v253)(v118, v114, v115);
            v184 = v202;
            sub_1BF39B31C(v119, v202, type metadata accessor for ReloadConfiguration);
            v185 = v247 + v182;
            v186 = v203;
            (v245)(v203, v185, v225);
            v187 = ReloadTask.__allocating_init(identifier:key:variantKeys:configuration:logger:)(v183, v118, v249, v184, v186);
            sub_1BF410244(v187);

            v116 = v253;
          }

          else
          {

LABEL_50:
            v123 = v254;
          }

LABEL_58:
          v116(v118, v114, v115);
LABEL_59:
          v255[3] = v123;
          swift_beginAccess();
          sub_1BF4E8834();

          sub_1BF4E8864();
          swift_endAccess();

          return;
        }

        v123 = v254;
      }

      else
      {
        v243 = v103;
        swift_beginAccess();

        v121 = v192;
        v115 = v248;
        sub_1BF4E8854();

        v122 = v207;
        if ((*(v207 + 48))(v121, 1, v105) != 1)
        {
          (*(v122 + 32))(v193, v121, v105);
          sub_1BF4E72A4();
          if (v138 <= -2.0)
          {

            v161 = v242;
            v162 = v105;
            v123 = v254;
          }

          else
          {
            v139 = v190;
            v140 = v253;
            (v253)(v190, v242, v115);
            v141 = sub_1BF4E7B34();
            v142 = sub_1BF4E8E84();
            if (os_log_type_enabled(v141, v142))
            {
              v143 = swift_slowAlloc();
              v241 = swift_slowAlloc();
              v255[0] = v241;
              *v143 = 136446210;
              v144 = v224;
              v140(v224, v139, v115);
              v145 = *v218;
              (*v218)(v139, v115);
              LODWORD(v240) = v142;
              v146 = sub_1BF4E96A4();
              v148 = v147;
              v145(v144, v115);
              v140 = v253;
              v149 = sub_1BF38D65C(v146, v148, v255);

              *(v143 + 4) = v149;
              _os_log_impl(&dword_1BF389000, v141, v240, "%{public}s Granting a reload due to keybag grace period for when the store becomes unblocked.", v143, 0xCu);
              v150 = v241;
              __swift_destroy_boxed_opaque_existential_1Tm(v241);
              MEMORY[0x1BFB5A5D0](v150, -1, -1);
              v151 = v143;
              v100 = v220;
              MEMORY[0x1BFB5A5D0](v151, -1, -1);

              v123 = v254;
            }

            else
            {
              (*v218)(v139, v115);

              v123 = v254;
              v144 = v224;
            }

            v174 = sub_1BF3B29A4();
            v175 = v242;
            v140(v144, v242, v115);
            v161 = v175;
            v176 = v202;
            v162 = v223;
            (v243)(v202, 1, 1, v223);
            v177 = v200;
            v178 = *(v200 + 36);
            *(v176 + *(v200 + 20)) = 1;
            *(v176 + v177[7]) = 1;
            *(v176 + v177[6]) = 0xA000000000000020;
            *(v176 + v177[8]) = 1;
            *(v176 + v178) = 0;
            v179 = v203;
            (v245)(v203, v247 + v100, v225);
            v180 = ReloadTask.__allocating_init(identifier:key:variantKeys:configuration:logger:)(v174, v144, v249, v176, v179);
            sub_1BF410244(v180);
          }

          swift_beginAccess();
          sub_1BF4E8834();
          v181 = v217;
          sub_1BF4E8784();
          sub_1BF38C9B4(v181, &qword_1EBDD9B00, &qword_1BF4F1E50);
          swift_endAccess();
          (*(v207 + 8))(v193, v162);
          (v253)(v224, v161, v115);
          goto LABEL_59;
        }

        sub_1BF38C9B4(v121, &qword_1EBDD9B00, &qword_1BF4F1E50);
        v114 = v242;
        v116 = v253;
        v123 = v254;
      }

      v118 = v224;
      goto LABEL_58;
    }

    sub_1BF4E9704();
    v53 = v244;
    swift_unknownObjectRelease();
    v54 = v243;
LABEL_19:
    (*v249)(v55, 0, 1, v32);
    (*v247)(v39, v55, v32);
    sub_1BF4E8854();
    if ((*v246)(v28, 1, v23) == 1)
    {
      (*v245)(v39, v32);
      (*v226)(v28, v233);
    }

    else
    {
      (*v231)(v54, v28, v23);
      v59 = v23;
      v60 = v241;
      v61 = v54;
      (v241[2])(v59, v241);
      v62 = AssociatedTypeWitness;
      v63 = v53;
      v64 = *(AssociatedTypeWitness - 8);
      if ((*(v64 + 48))(v63, 1, AssociatedTypeWitness) == 1)
      {
        (*v227)(v61, v59);
        v39 = v236;
        (*v245)(v236, v32);
        (*v228)(v63, v234);
        v23 = v59;
        v42 = v235;
        v53 = v63;
        v28 = v232;
        v54 = v61;
        v55 = v238;
      }

      else
      {
        (*v228)(v63, v234);
        v65 = v213;
        (*(v64 + 56))(v213, 1, 1, v62);
        (v60[3])(v65, v59, v60);
        v66 = v217;
        _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
        (*v222)(v66, 0, 1, v223);
        (v60[6])(v66, v59, v60);
        (v60[9])(0xD000000000000025, v209 | 0x8000000000000000, v59, v60);
        if (qword_1EDC9D4C0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v225, qword_1EDCA6940);
        v67 = *v237;
        v68 = v214;
        v69 = v248;
        (*v237)(v214, v242, v248);
        v70 = v212;
        v39 = v236;
        v205 = *v254;
        v205(v212, v236, v32);
        v71 = sub_1BF4E7B34();
        v206 = sub_1BF4E8E84();
        v72 = os_log_type_enabled(v71, v206);
        v55 = v238;
        if (v72)
        {
          v73 = swift_slowAlloc();
          v204 = v73;
          v195 = swift_slowAlloc();
          v256 = v195;
          *v73 = v196;
          v194 = v71;
          v74 = v224;
          (v67)(v224, v68, v69);
          v75 = *v218;
          (*v218)(v68, v248);
          v76 = sub_1BF4E96A4();
          v78 = v77;
          v75(v74, v248);
          v79 = sub_1BF38D65C(v76, v78, &v256);

          v80 = v204;
          *(v204 + 1) = v79;
          *(v80 + 6) = 2082;
          v81 = v197;
          v205(v197, v70, v32);
          v82 = *v245;
          v39 = v236;
          (*v245)(v70, v32);
          v83 = sub_1BF4E96A4();
          v85 = v84;
          v82(v81, v32);
          v86 = sub_1BF38D65C(v83, v85, &v256);

          v87 = v204;
          *(v204 + 14) = v86;
          v71 = v194;
          _os_log_impl(&dword_1BF389000, v194, v206, "%{public}s:%{public}s Content discarded.", v87, 0x16u);
          v88 = v195;
          swift_arrayDestroy();
          MEMORY[0x1BFB5A5D0](v88, -1, -1);
          MEMORY[0x1BFB5A5D0](v87, -1, -1);
        }

        else
        {
          v82 = *v245;
          (*v245)(v70, v32);
          (*v218)(v68, v69);
        }

        v54 = v243;
        v23 = v215;
        (*v227)(v243, v215);
        v82(v39, v32);
        v42 = v235;
        v53 = v244;
        v28 = v232;
      }
    }
  }

  v56 = v253;
  if (v47)
  {
    v57 = v253;
LABEL_16:
    v58 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    (*(v240 + 16))(v55, *(v251 + 48) + *(v240 + 72) * (v58 | (v57 << 6)), v32);
    goto LABEL_19;
  }

  while (1)
  {
    v57 = (v56 + 1);
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v57 >= v250)
    {
      goto LABEL_28;
    }

    v47 = *(v252 + 8 * v57);
    ++v56;
    if (v47)
    {
      v253 = v57;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1BF455294(uint64_t a1)
{
  v43 = a1;
  v2 = *v1;
  v3 = *v1;
  v4 = sub_1BF4E7B54();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v33.i8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v2[10];
  v35 = v6;
  v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v33.i8[-v8];
  v9 = type metadata accessor for ReloadConfiguration(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v41 = v33.i64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33.i8[-v13];
  v15.i64[0] = v6;
  v16 = v2[16];
  v42 = *(v3 + 11);
  v34 = vzip1q_s64(v15, v42);
  v33 = vdupq_laneq_s64(v42, 1);
  nullsub_1();
  v18 = v17;
  v19 = sub_1BF4E7334();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  v20 = v10[11];
  v14[v10[7]] = 1;
  *&v14[v10[9]] = 1;
  *&v14[v10[8]] = 0xA000000000000030;
  v14[v10[10]] = 1;
  v14[v20] = 0;
  v37 = v2[15];
  v36 = v2[17];
  v38 = *(v3 + 13);
  *&v21 = vdupq_laneq_s64(v38, 1).u64[0];
  *(&v21 + 1) = v37;
  *v47 = v34;
  *&v47[16] = vzip1q_s64(v33, v38);
  *&v22 = v16;
  *(&v22 + 1) = v36;
  v48 = v22;
  *&v47[32] = v21;
  v34.i64[0] = type metadata accessor for ReloadTask(0, v47);

  v23 = sub_1BF3B29A4();
  v24 = v39;
  v25 = v35;
  (*(v40 + 16))(v39, v43, v35);
  *v47 = v18;
  sub_1BF4E87B4();

  swift_getWitnessTable();
  v26 = sub_1BF4E8D94();
  v27 = v41;
  sub_1BF39B31C(v14, v41, type metadata accessor for ReloadConfiguration);
  v28 = v1 + qword_1EDC9AF50;
  v29 = v44;
  (*(v45 + 16))(v44, v28, v46);
  ReloadTask.__allocating_init(identifier:key:variantKeys:configuration:logger:)(v23, v24, v26, v27, v29);
  *v47 = v25;
  *&v47[8] = v42;
  *&v47[24] = v38;
  *&v47[40] = v37;
  *&v48 = v16;
  *(&v48 + 1) = v36;
  type metadata accessor for ReloadTaskPair(0, v47);
  v30 = ReloadTaskPair.__allocating_init()();

  sub_1BF3A8AF8(v31);

  sub_1BF45EABC(v14, type metadata accessor for ReloadConfiguration);
  return v30;
}

uint64_t sub_1BF455744(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v22 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v22 - v7;
  v9 = type metadata accessor for ReloadConfiguration(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BF4E7334();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = v10[11];
  v12[v10[7]] = 1;
  *&v12[v10[9]] = 1;
  *&v12[v10[8]] = v14 | 0x2000000000000000;
  v12[v10[10]] = 1;
  v23 = v12;
  v12[v15] = 0;

  v16 = sub_1BF38D3FC();
  if (!sub_1BF4E8C34())
  {
LABEL_11:

    return sub_1BF45EABC(v23, type metadata accessor for ReloadConfiguration);
  }

  v17 = 0;
  while (1)
  {
    v18 = sub_1BF4E8C14();
    sub_1BF4E8BD4();
    if (v18)
    {
      (*(v6 + 16))(v8, v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v5);
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_1BF4E9304();
    if (v22 != 8)
    {
      break;
    }

    v24[0] = result;
    (*(v6 + 16))(v8, v24, v5);
    swift_unknownObjectRelease();
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_5:
    v24[2] = v2;
    v24[3] = v23;
    v24[4] = v8;
    v20 = sub_1BF3B1E44(sub_1BF3C40E0, v24, MEMORY[0x1E69E7CA8] + 8);
    (*(v6 + 8))(v8, v5, v20);
    ++v17;
    if (v19 == sub_1BF4E8C34())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF455A54(uint64_t a1, _BYTE *a2, uint64_t a3, id a4)
{
  v64 = a1;
  v65 = a2;
  v59 = *v4;
  v7 = sub_1BF4E7334();
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReloadConfiguration(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  os_unfair_lock_assert_owner(*(*(v4 + qword_1EDC9AF58) + 16));
  v22 = *(*a3 + 144);
  v61 = *(*a3 + 168);
  v62 = v22;
  sub_1BF484F04();
  v63 = v67;
  v60 = v21;
  sub_1BF3AB308(v21, v18);
  if ((*(v13 + 48))(v18, 1, v12) == 1)
  {
    sub_1BF38C9B4(v18, &qword_1EBDD95C8, &qword_1BF4F1AB0);
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_1BF4E92E4();
    v23 = sub_1BF39B444();
    v25 = v24;

    v67 = v23;
    v68 = v25;
    MEMORY[0x1BFB58C90](0x2064616F6C655220, 0xEE0064656C696166);
    v26 = a4;
    sub_1BF4A8CF8();

    v27 = v60;
  }

  else
  {
    v55 = a4;
    sub_1BF3B4C44(v18, v15, type metadata accessor for ReloadConfiguration);
    sub_1BF39B31C(v15, v11, type metadata accessor for ReloadConfiguration.ReloadType);
    v28 = v57;
    v29 = v58;
    v30 = v15;
    if ((*(v57 + 48))(v11, 1, v58) == 1)
    {
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_1BF4E92E4();
      v31 = sub_1BF39B444();
      v33 = v32;

      v67 = v31;
      v68 = v33;
      MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FBD50);
      v66 = *&v15[*(v12 + 28)];
      v34 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v34);

      MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4FBD70);
      a4 = v55;
      v35 = v55;
      sub_1BF4A8CF8();

      v36 = v15;
    }

    else
    {
      v37 = v28;
      v54 = v30;
      v38 = v56;
      (*(v28 + 32))(v56, v11, v29);
      v53 = qword_1EDC9AF50;
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_1BF4E92E4();
      v39 = sub_1BF39B444();
      v41 = v40;

      v67 = v39;
      v68 = v41;
      MEMORY[0x1BFB58C90](0xD000000000000024, 0x80000001BF4FBD20);
      if (qword_1EDC9F0F0 != -1)
      {
        swift_once();
      }

      v42 = qword_1EDC9F0F8;
      v43 = sub_1BF4E7254();
      v44 = [v42 stringFromDate_];

      v45 = sub_1BF4E8914();
      v47 = v46;

      MEMORY[0x1BFB58C90](v45, v47);

      a4 = v55;
      v48 = v55;
      sub_1BF4A8CF8();

      (*(v37 + 8))(v38, v29);
      v36 = v54;
    }

    sub_1BF45EABC(v36, type metadata accessor for ReloadConfiguration);
    v27 = v60;
  }

  v49 = v63;
  LOBYTE(v67) = v63;
  v50 = v62;
  if (sub_1BF456FD4(a3 + v62, a3 + v61, v27, &v67, a4))
  {
    v67 = *(a3 + *(*a3 + 152));
    sub_1BF4E8D84();

    swift_getWitnessTable();
    v51 = sub_1BF4E8CB4();
    sub_1BF4561CC(a3 + v50, v51, 0xD000000000000017, 0x80000001BF4FBD00);
  }

  result = sub_1BF3AB298(v27, v64);
  *v65 = v49;
  return result;
}

uint64_t sub_1BF4561CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v105 = a4;
  v100 = a3;
  v103 = a2;
  v98 = *v4;
  v6 = v98;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v97 = &v79 - v8;
  v9 = v98[10];
  v129 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v83 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v79 - v13;
  v14 = v6[17];
  v15 = v6[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v116 = sub_1BF4E90F4();
  v121 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v95 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v79 - v18;
  v114 = sub_1BF4E90F4();
  v108 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v125 = &v79 - v19;
  v20 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v118 = &v79 - v22;
  v23 = v6[11];
  v117 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v82 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v104 = &v79 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v119 = &v79 - v29;
  v80 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v130 = &v79 - v32;
  os_unfair_lock_assert_owner(*(*(v4 + qword_1EDC9AF58) + 16));
  swift_beginAccess();
  v33 = v6[16];
  v127 = v15;
  v124 = v33;
  sub_1BF4E8834();
  v101 = v4;

  v99 = a1;
  sub_1BF4E8854();

  v126 = v131;
  if (v131)
  {
    if (sub_1BF4E8C34())
    {
      v94 = v9;
      v36 = 0;
      v92 = qword_1EDC9AF50;
      v37 = v117;
      v38 = (v117 + 16);
      v122 = (v20 + 48);
      v123 = (v117 + 32);
      v113 = (v20 + 32);
      v112 = v14 + 16;
      v111 = AssociatedTypeWitness - 8;
      v110 = v121 + 1;
      v91 = (v129 + 16);
      v121 = (v117 + 8);
      v90 = (v129 + 8);
      v89 = v14 + 24;
      v88 = v14 + 48;
      v87 = 0x80000001BF4FBCE0;
      v86 = v14 + 72;
      v109 = (v20 + 8);
      ++v108;
      *&v35 = 136446722;
      v81 = v35;
      v39 = v103;
      v40 = v119;
      v93 = v14;
      v128 = (v117 + 16);
      while (1)
      {
        v42 = sub_1BF4E8C14();
        sub_1BF4E8BD4();
        if (v42)
        {
          v43 = *(v37 + 16);
          result = (v43)(v130, v39 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v36, v23);
        }

        else
        {
          result = sub_1BF4E9304();
          if (v80 != 8)
          {
            goto LABEL_22;
          }

          v131 = result;
          v43 = *v38;
          (*v38)(v130, &v131, v23);
          result = swift_unknownObjectRelease();
        }

        v44 = v125;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        v129 = v36 + 1;
        (*v123)(v40, v130, v23);
        v45 = v40;
        v46 = v127;
        sub_1BF4E8854();
        if ((*v122)(v44, 1, v46) == 1)
        {
          (*v121)(v45, v23);
          (*v108)(v44, v114);
          v40 = v45;
        }

        else
        {
          v47 = v118;
          (*v113)(v118, v44, v46);
          v48 = v115;
          (*(v14 + 16))(v46, v14);
          v49 = *(AssociatedTypeWitness - 8);
          if ((*(v49 + 48))(v48, 1) == 1)
          {
            (*v109)(v47, v46);
            v40 = v119;
            (*v121)(v119, v23);
            (*v110)(v48, v116);
          }

          else
          {
            v107 = v49;
            (*v110)(v48, v116);
            v50 = v96;
            v51 = v94;
            v106 = *v91;
            (v106)(v96, v99, v94);
            v52 = v104;
            v43(v104, v119, v23);

            v53 = sub_1BF4E7B34();
            v54 = sub_1BF4E8E84();

            v102 = v54;
            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v131 = v85;
              *v55 = v81;
              v84 = v53;
              v56 = v83;
              (v106)(v83, v50, v51);
              v57 = *v90;
              (*v90)(v50, v51);
              v58 = sub_1BF4E96A4();
              v60 = v59;
              v57(v56, v51);
              v61 = sub_1BF38D65C(v58, v60, &v131);

              *(v55 + 4) = v61;
              *(v55 + 12) = 2082;
              v62 = v55;
              v63 = v82;
              v64 = v104;
              v43(v82, v104, v23);
              v65 = *v121;
              (*v121)(v64, v23);
              v66 = sub_1BF4E96A4();
              v68 = v67;
              v106 = v65;
              v65(v63, v23);
              v69 = sub_1BF38D65C(v66, v68, &v131);

              *(v62 + 14) = v69;
              *(v62 + 22) = 2082;
              v70 = v100;
              *(v62 + 24) = sub_1BF38D65C(v100, v105, &v131);
              v71 = v84;
              _os_log_impl(&dword_1BF389000, v84, v102, "%{public}s:%{public}s Purged content: %{public}s", v62, 0x20u);
              v72 = v85;
              swift_arrayDestroy();
              MEMORY[0x1BFB5A5D0](v72, -1, -1);
              v73 = v105;
              MEMORY[0x1BFB5A5D0](v62, -1, -1);

              v74 = v118;
            }

            else
            {
              v106 = *v121;
              v106(v52, v23);
              (*v90)(v50, v51);

              v70 = v100;
              v74 = v118;
              v73 = v105;
            }

            v75 = v95;
            (*(v107 + 56))(v95, 1, 1, AssociatedTypeWitness);
            v14 = v93;
            v76 = v127;
            (*(v93 + 24))(v75, v127, v93);
            v77 = v97;
            _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
            v78 = sub_1BF4E7334();
            (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
            (*(v14 + 48))(v77, v76, v14);
            v131 = 0;
            v132 = 0xE000000000000000;
            sub_1BF4E92E4();

            v131 = 0xD000000000000010;
            v132 = v87;
            MEMORY[0x1BFB58C90](v70, v73);
            (*(v14 + 72))(v131, v132, v76, v14);
            (*v109)(v74, v76);
            v40 = v119;
            v106(v119, v23);
            v39 = v103;
          }

          v37 = v117;
        }

        v41 = sub_1BF4E8C34();
        ++v36;
        v38 = v128;
        if (v129 == v41)
        {
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1BF456FD4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v7 = *a4;
  swift_beginAccess();
  sub_1BF38E49C(v5 + 136, v17);
  v8 = v18;
  v9 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  swift_beginAccess();
  sub_1BF4E8834();

  sub_1BF4E8854();

  v15 = v7;
  v10 = (*(v9 + 72))(a1, v16, a2, a3, &v15, a5, v8, v9);

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v10 & 1;
}

uint64_t sub_1BF457170(uint64_t *a1)
{
  v14 = *a1;
  v2 = v14;
  v3 = *(v14 + 80);
  v13 = *(v14 + 104);
  v12 = *(v14 + 112);
  type metadata accessor for StatefulStoreReloadEvent(255, v3, v13, v12);
  sub_1BF4E7C44();
  swift_getWitnessTable();
  v4 = sub_1BF4E7B94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v15 = a1[3];
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v2[11];
  *(v8 + 32) = v2[12];
  v9 = v12;
  *(v8 + 40) = v13;
  *(v8 + 48) = v9;
  *(v8 + 56) = *(v14 + 120);
  *(v8 + 72) = v2[17];

  sub_1BF4E7CD4();

  swift_getWitnessTable();
  v10 = sub_1BF4E7C84();
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_1BF457400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a8;
  v23 = a6;
  v24 = a7;
  v26 = a1;
  v14 = sub_1BF4E8834();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  (*(v18 + 16))(&v22 - v17, a2, TupleTypeMetadata2, v16);

  v36 = *(a2 + *(TupleTypeMetadata2 + 48));
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = a9;
  v35 = a10;
  WitnessTable = swift_getWitnessTable();
  v36 = sub_1BF3AF390(sub_1BF45E86C, v27, v14, a4, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v20);
  sub_1BF4E8CA4();
  sub_1BF4E8834();
  return sub_1BF4E8864();
}

uint64_t sub_1BF4575EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v16 - v11;
  (*(v13 + 16))(v16 - v11, a1, TupleTypeMetadata2, v10);
  v14 = *(TupleTypeMetadata2 + 48);
  (*(*(a2 - 8) + 32))(a4, v12, a2);
  return (*(*(a3 - 8) + 8))(&v12[v14], a3);
}

uint64_t sub_1BF457748(uint64_t a1)
{
  v2 = sub_1BF4E8424();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1BF395AC4(v5);
}

void sub_1BF457814(uint64_t *a1@<X0>, char *a4@<X8>)
{
  v5 = *a1;
  v6 = *a1;
  swift_beginAccess();
  v7 = *(v5 + 80);
  v8 = *(v5 + 112);

  sub_1BF4E8854();

  if (!v14)
  {
    swift_beginAccess();
    v10 = *(v6 + 104);
    v11 = *(v6 + 120);

    v14 = v7;
    v15 = *(v6 + 88);
    v16 = v10;
    v17 = v8;
    v18 = v11;
    v19 = *(v6 + 128);
    type metadata accessor for ReloadTaskPair(0, &v14);
    sub_1BF4E8854();

    if (v20)
    {
      if (sub_1BF39B43C())
      {

        v12 = sub_1BF4E8D74();

        if (v12)
        {

          v9 = 1;
          goto LABEL_3;
        }
      }

      if (sub_1BF3AB3E8())
      {

        v13 = sub_1BF4E8D74();

        if (v13)
        {
          v9 = 1;
          goto LABEL_3;
        }
      }

      else
      {
      }
    }
  }

  v9 = 0;
LABEL_3:
  *a4 = v9;
}

char *StatefulStore.__allocating_init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:reloadQueue:calloutQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, int a7, void *a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  swift_allocObject();
  v17 = sub_1BF45C7E0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);

  (*(*(a11 - 8) + 8))(a2, a11);
  (*(*(a10 - 8) + 8))(a1, a10);
  return v17;
}

double sub_1BF457BB8(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BF455744(0x725464616F6C6572, 0xED00007265676769);
  }

  return result;
}

double sub_1BF457C30(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + qword_1EDC9AF58);
    v7 = *(v6 + 16);

    os_unfair_lock_lock(v7);
    *(v5 + qword_1EDC9AF78) = v2;
    if (v2 == 2)
    {
      sub_1BF452A64(v8);
    }

    os_unfair_lock_unlock(*(v6 + 16));
  }

  return result;
}

void sub_1BF457CD8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v139 = a2;
  v184 = *a1;
  v3 = v184;
  v138 = sub_1BF4E8424();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v184[12];
  v168 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v170 = &v133 - v7;
  v8 = v3[11];
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v190 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v181 = &v133 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v179 = sub_1BF4E90F4();
  v192 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v176 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v189 = &v133 - v17;
  v18 = v3[10];
  v19 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v164 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v142 = &v133 - v23;
  v24 = v3[16];
  v185 = v8;
  v134 = v24;
  sub_1BF4E8834();
  v25 = swift_getTupleTypeMetadata2();
  v152 = sub_1BF4E90F4();
  v26 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v155 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v151 = &v133 - v29;
  v30 = qword_1EDCA6870;
  swift_beginAccess();
  v154 = a1;
  v31 = *(a1 + v30);
  v32 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v35 = v34 & *(v31 + 64);
  v140 = (v33 + 63) >> 6;
  v156 = v25;
  v153 = v25 - 8;
  v141 = v19 + 16;
  v157 = (v19 + 32);
  v150 = (v26 + 32);
  v188 = (v9 + 32);
  v169 = (v168 + 32);
  v171 = TupleTypeMetadata2;
  v178 = TupleTypeMetadata2 - 8;
  v166 = v9 + 16;
  v165 = v168 + 16;
  v177 = (v192 + 32);
  v174 = ":\n            Counts:\n";
  v167 = v9;
  v173 = (v9 + 8);
  v172 = (v168 + 8);
  v147 = "\n    Protection Level: ";
  v146 = ":\n            State: ";
  v143 = v19;
  v145 = (v19 + 8);
  v144 = v31;

  v36 = 0;
  v37 = MEMORY[0x1E69E7CC0];
  v180 = v5;
  v148 = v32;
  v149 = v18;
  if (!v35)
  {
    goto LABEL_6;
  }

  while (2)
  {
    v161 = v36;
    v38 = v36;
    v39 = v181;
    v40 = v171;
LABEL_14:
    v162 = (v35 - 1) & v35;
    v45 = __clz(__rbit64(v35)) | (v38 << 6);
    v46 = v144;
    v47 = v143;
    (*(v143 + 16))(v142, *(v144 + 48) + *(v143 + 72) * v45, v18);
    v48 = *(*(v46 + 56) + 8 * v45);
    v49 = *(v156 + 48);
    v50 = *(v47 + 32);
    v43 = v156;
    v44 = v155;
    v50();
    *&v44[v49] = v48;
    v51 = *(v43 - 8);
    (*(v51 + 56))(v44, 0, 1, v43);

LABEL_15:
    v52 = v151;
    (*v150)(v151, v44, v152);
    v53 = (*(v51 + 48))(v52, 1, v43);
    v163 = v37;
    if (v53 == 1)
    {
LABEL_65:

      v101 = qword_1EDC9AF88;
      v102 = v154;
      v103 = swift_beginAccess();
      v104 = v180;
      v191 = &v133;
      v193 = *(v102 + v101);
      MEMORY[0x1EEE9AC00](v103);
      *(&v133 - 8) = v18;
      v105 = v18;
      v106 = v185;
      *(&v133 - 7) = v185;
      *(&v133 - 6) = v104;
      v107 = v184;
      v109 = v184[13];
      v108 = v184[14];
      *(&v133 - 5) = v109;
      *(&v133 - 4) = v108;
      v110 = v107[15];
      v111 = v107[17];
      v112 = v134;
      *(&v133 - 3) = v110;
      *(&v133 - 2) = v112;
      *(&v133 - 1) = v111;

      v195 = v105;
      v196 = v106;
      v197 = v104;
      v198 = v109;
      v199 = v108;
      v200 = v110;
      v201 = v112;
      v202 = v111;
      type metadata accessor for ReloadTaskPair(255, &v195);
      v113 = sub_1BF4E8834();
      WitnessTable = swift_getWitnessTable();
      v115 = v135;
      v117 = sub_1BF3AF390(sub_1BF45EB64, (&v133 - 10), v113, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v116);
      v192 = v115;

      v195 = v117;
      v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
      sub_1BF38C8B4(&qword_1EDC9F180, &unk_1EBDD9BB0, &qword_1BF4EC140, MEMORY[0x1E69E6310]);
      v191 = sub_1BF4E8894();
      v119 = v118;

      v195 = 0;
      v196 = 0xE000000000000000;
      sub_1BF4E92E4();
      v193 = v195;
      v194 = v196;
      MEMORY[0x1BFB58C90](0x62616E4520202020, 0xED0000203A64656CLL);
      v120 = v154;
      swift_beginAccess();
      if (*(v120 + 176))
      {
        v121 = 1702195828;
      }

      else
      {
        v121 = 0x65736C6166;
      }

      if (*(v120 + 176))
      {
        v122 = 0xE400000000000000;
      }

      else
      {
        v122 = 0xE500000000000000;
      }

      MEMORY[0x1BFB58C90](v121, v122);

      MEMORY[0x1BFB58C90](0x626544202020200ALL, 0xEF203A65636E756FLL);
      if (*(v120 + qword_1EDC9AFC0))
      {
        v123 = 1702195828;
      }

      else
      {
        v123 = 0x65736C6166;
      }

      if (*(v120 + qword_1EDC9AFC0))
      {
        v124 = 0xE400000000000000;
      }

      else
      {
        v124 = 0xE500000000000000;
      }

      MEMORY[0x1BFB58C90](v123, v124);

      MEMORY[0x1BFB58C90](0xD000000000000017, 0x80000001BF4FBE50);
      v125 = v136;
      sub_1BF395A3C(v136);
      sub_1BF3983D4(&qword_1EDC9D780, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
      v126 = v138;
      v127 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v127);

      (*(v137 + 8))(v125, v126);
      MEMORY[0x1BFB58C90](0x746E45202020200ALL, 0xEE000A3A73656972);
      v204 = v163;
      v128 = sub_1BF4E8894();
      v130 = v129;

      MEMORY[0x1BFB58C90](v128, v130);

      MEMORY[0x1BFB58C90](0x736154202020200ALL, 0xEC0000000A3A736BLL);
      MEMORY[0x1BFB58C90](v191, v119);

      v131 = v194;
      v132 = v139;
      *v139 = v193;
      v132[1] = v131;
      return;
    }

    v54 = *&v52[*(v43 + 48)];
    (*v157)(v164, v52, v18);
    swift_beginAccess();

    sub_1BF4E8854();

    if (v195 > 2u)
    {
      v55 = v185;
      if (v195 != 3)
      {
        v56 = v54;
        if (v195 == 4)
        {
          v160 = 0xE600000000000000;
          v57 = 0x646573756170;
        }

        else
        {
          v160 = 0xE400000000000000;
          v57 = 1701736302;
        }

LABEL_33:
        v159 = v57;
        if ((v56 & 0xC000000000000001) != 0)
        {
          goto LABEL_34;
        }

LABEL_27:
        v59 = -1 << *(v56 + 32);
        v60 = v56 + 64;
        v61 = ~v59;
        v62 = -v59;
        if (v62 < 64)
        {
          v63 = ~(-1 << v62);
        }

        else
        {
          v63 = -1;
        }

        v64 = v63 & *(v56 + 64);
        goto LABEL_35;
      }

      v160 = 0xE700000000000000;
      v58 = 0x64656B636F6C62;
    }

    else
    {
      v55 = v185;
      if (v195)
      {
        v56 = v54;
        if (v195 == 1)
        {
          v160 = 0xE500000000000000;
          v57 = 0x6E61656C63;
        }

        else
        {
          v160 = 0xE600000000000000;
          v57 = 0x64656C696166;
        }

        goto LABEL_33;
      }

      v160 = 0xE600000000000000;
      v58 = 0x64616F6C6572;
    }

    v159 = v58;
    v56 = v54;
    if ((v54 & 0xC000000000000001) == 0)
    {
      goto LABEL_27;
    }

LABEL_34:
    v65 = sub_1BF4E9414();
    v60 = 0;
    v61 = 0;
    v64 = 0;
    v56 = v65 | 0x8000000000000000;
LABEL_35:
    v66 = v180;
    v18 = v189;
    v67 = 0;
    v158 = v61;
    v68 = (v61 + 64) >> 6;
    v69 = MEMORY[0x1E69E7CC0];
    v183 = v56;
    v182 = v60;
    for (i = v68; ; v68 = i)
    {
      v187 = v64;
      v186 = v67;
      if ((v56 & 0x8000000000000000) == 0)
      {
        v70 = v64;
        v71 = v67;
        if (!v64)
        {
          if (v68 <= v67 + 1)
          {
            v72 = v67 + 1;
          }

          else
          {
            v72 = v68;
          }

          v73 = (v72 - 1);
          v74 = v67;
          while (1)
          {
            v71 = v74 + 1;
            if (__OFADD__(v74, 1))
            {
              break;
            }

            if (v71 >= v68)
            {
              v191 = v73;
              v192 = 0;
              v84 = 1;
              goto LABEL_51;
            }

            v70 = *(v60 + 8 * v71);
            v74 = (v74 + 1);
            if (v70)
            {
              goto LABEL_45;
            }
          }

          __break(1u);
          goto LABEL_65;
        }

LABEL_45:
        v192 = (v70 - 1) & v70;
        v75 = v66;
        v76 = __clz(__rbit64(v70)) | (v71 << 6);
        (*(v167 + 16))(v39, *(v56 + 48) + *(v167 + 72) * v76, v55);
        v77 = v39;
        v78 = v170;
        (*(v168 + 16))(v170, *(v56 + 56) + *(v168 + 72) * v76, v75);
        goto LABEL_48;
      }

      if (sub_1BF4E9444())
      {
        v75 = v66;
        v79 = v185;
        sub_1BF4E9704();
        v55 = v79;
        swift_unknownObjectRelease();
        v77 = v39;
        v78 = v170;
        sub_1BF4E9704();
        swift_unknownObjectRelease();
        v71 = v186;
        v192 = v187;
LABEL_48:
        v80 = *(v171 + 48);
        v81 = v176;
        v82 = v77;
        v83 = v171;
        (*v188)(v176, v82, v55);
        (*v169)(&v81[v80], v78, v75);
        v84 = 0;
        v191 = v71;
        v18 = v189;
        goto LABEL_52;
      }

      v84 = 1;
      v191 = v186;
      v192 = v187;
      v55 = v185;
LABEL_51:
      v81 = v176;
      v83 = v40;
LABEL_52:
      v85 = *(v83 - 8);
      (*(v85 + 56))(v81, v84, 1, v83);
      (*v177)(v18, v81, v179);
      v40 = v83;
      if ((*(v85 + 48))(v18, 1, v83) == 1)
      {
        break;
      }

      (*v188)(v190, v18, v55);
      v195 = 0;
      v196 = 0xE000000000000000;
      sub_1BF4E92E4();
      MEMORY[0x1BFB58C90](0xD000000000000010, v174 | 0x8000000000000000);
      sub_1BF4E96F4();
      v86 = v195;
      v87 = v196;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_1BF431F90(0, *(v69 + 2) + 1, 1, v69);
      }

      v89 = *(v69 + 2);
      v88 = *(v69 + 3);
      if (v89 >= v88 >> 1)
      {
        v69 = sub_1BF431F90((v88 > 1), v89 + 1, 1, v69);
      }

      v90 = *(v83 + 48);
      v55 = v185;
      (*v173)(v190, v185);
      *(v69 + 2) = v89 + 1;
      v91 = &v69[16 * v89];
      *(v91 + 4) = v86;
      *(v91 + 5) = v87;
      v18 = v189;
      v92 = &v189[v90];
      v66 = v180;
      (*v172)(v92, v180);
      v67 = v191;
      v64 = v192;
      v39 = v181;
      v56 = v183;
      v60 = v182;
    }

    sub_1BF39A9CC(v183);
    v195 = 0;
    v196 = 0xE000000000000000;
    sub_1BF4E92E4();
    MEMORY[0x1BFB58C90](0x2020202020202020, 0xE800000000000000);
    v18 = v149;
    sub_1BF4E96F4();
    MEMORY[0x1BFB58C90](0xD000000000000015, v147 | 0x8000000000000000);
    MEMORY[0x1BFB58C90](v159, v160);

    MEMORY[0x1BFB58C90](0xD000000000000017, v146 | 0x8000000000000000);
    v203 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    sub_1BF38C8B4(&qword_1EDC9F180, &unk_1EBDD9BB0, &qword_1BF4EC140, MEMORY[0x1E69E6310]);
    v93 = sub_1BF4E8894();
    v95 = v94;

    MEMORY[0x1BFB58C90](v93, v95);

    v96 = v195;
    v97 = v196;
    v37 = v163;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1BF431F90(0, *(v37 + 2) + 1, 1, v37);
    }

    v99 = *(v37 + 2);
    v98 = *(v37 + 3);
    if (v99 >= v98 >> 1)
    {
      v37 = sub_1BF431F90((v98 > 1), v99 + 1, 1, v37);
    }

    (*v145)(v164, v18);
    *(v37 + 2) = v99 + 1;
    v100 = &v37[16 * v99];
    *(v100 + 4) = v96;
    *(v100 + 5) = v97;
    v32 = v148;
    v35 = v162;
    v36 = v161;
    if (v162)
    {
      continue;
    }

    break;
  }

LABEL_6:
  if (v140 <= v36 + 1)
  {
    v41 = v36 + 1;
  }

  else
  {
    v41 = v140;
  }

  v42 = v41 - 1;
  v39 = v181;
  v40 = v171;
  v43 = v156;
  v44 = v155;
  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v140)
    {
      v51 = *(v156 - 8);
      (*(v51 + 56))(v155, 1, 1, v156);
      v162 = 0;
      v161 = v42;
      goto LABEL_15;
    }

    v35 = *(v32 + 8 * v38);
    ++v36;
    if (v35)
    {
      v161 = v38;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1BF45922C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v22 = 0;
  v23 = 0xE000000000000000;
  MEMORY[0x1BFB58C90](0x2020202020202020, 0xE800000000000000);
  sub_1BF4E96F4();
  MEMORY[0x1BFB58C90](8250, 0xE200000000000000);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a8;
  v21[7] = a10;
  type metadata accessor for ReloadTaskPair(255, v21);
  v21[0] = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
  swift_getWitnessTable();
  result = sub_1BF4E96F4();
  v18 = v23;
  *a9 = v22;
  a9[1] = v18;
  return result;
}

uint64_t sub_1BF459360@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a3;
  v33 = *a1;
  v4 = v33;
  v5 = v33[10];
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v26 - v6;
  v7 = v33[11];
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v26 - v9;
  v10 = v4[12];
  v11 = sub_1BF4E90F4();
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = sub_1BF4E8324();
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = v4[16];
  v39 = v7;
  sub_1BF4E8834();
  v17 = v4[14];

  sub_1BF4E8854();

  v18 = v42;
  if (!v42)
  {
    goto LABEL_4;
  }

  v19 = v17;
  v20 = v33[13];
  v21 = v33[15];
  v42 = v5;
  v43 = v39;
  v44 = v20;
  v45 = v19;
  v33 = v19;
  v26 = v21;
  v46 = v21;
  v47 = v16;
  v27 = *(type metadata accessor for VariantIdentifier(0, &v42) + 68);
  sub_1BF4E8854();
  if ((*(*(v10 - 8) + 48))(v13, 1, v10) == 1)
  {

    (*(v34 + 8))(v13, v35);
LABEL_4:
    sub_1BF3901C0(0, &qword_1EDC962E8, 0x1E696ABC0);
    (*(v37 + 104))(v36, *MEMORY[0x1E6985878], v38);
    sub_1BF4E9074();
    return swift_willThrow();
  }

  v38 = v18;
  (*(v34 + 8))(v13, v35);
  swift_beginAccess();

  v42 = v5;
  v43 = v39;
  v44 = v20;
  v45 = v33;
  v46 = v26;
  v47 = v16;
  type metadata accessor for VariantReloadResult(255, &v42);
  sub_1BF4E7C44();
  sub_1BF4E8834();
  sub_1BF4E8854();

  if (!v48)
  {
    v48 = sub_1BF4E8724();
  }

  v23 = v27;
  sub_1BF4E8854();
  v24 = v41;
  if (!v41)
  {
    v24 = sub_1BF4E7C24();
    (*(v28 + 16))(v29, a2 + v23, v39);
    v42 = v24;

    sub_1BF4E8864();
  }

  (*(v30 + 16))(v31, a2, v5);
  v40 = v48;
  swift_beginAccess();
  sub_1BF4E8834();

  sub_1BF4E8864();
  swift_endAccess();

  v42 = v24;
  swift_getWitnessTable();
  v25 = sub_1BF4E7C84();

  *v32 = v25;
  return result;
}

uint64_t sub_1BF459A4C()
{
  swift_beginAccess();

  sub_1BF4E8854();
}

uint64_t sub_1BF459B10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a5;
  v20 = a3;
  v9 = *(*a1 + 80);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v17 - v11;
  swift_beginAccess();

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95D0, &qword_1BF4F1C88);
  v22 = a2;
  v19 = v12;
  sub_1BF4E8854();

  if (!v25)
  {
    v25 = MEMORY[0x1E69E7CC8];
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v18;
  *(v13 + 24) = a6;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v25;
  sub_1BF3D75A4(sub_1BF45EB1C, v13, v20, a4, isUniquelyReferenced_nonNull_native, v15);

  v25 = v23;
  (*(v10 + 16))(v21, v22, v9);
  v24 = v25;
  swift_beginAccess();
  sub_1BF4E8834();

  sub_1BF4E8864();
  swift_endAccess();
}

void sub_1BF459D88(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v2 = *(*a1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v16 - v4;
  swift_beginAccess();
  sub_1BF4E8834();
  nullsub_1();
  v7 = v6;
  v8 = v6 + 64;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;
  v16[1] = v3 + 8;
  v16[2] = v3 + 16;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    (*(v3 + 16))(v5, *(v7 + 48) + *(v3 + 72) * (v15 | (v14 << 6)), v2);
    sub_1BF3BD60C(v17, v5);
    (*(v3 + 8))(v5, v2);
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1BF459FD0(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1BF45A004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a2;
  v3 = *(*a3 + 88);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v22 - v5;
  v8 = *(v7 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v22 = *(v13 + 104);
  v23 = *(v14 + 120);
  *&v15 = v8;
  *(&v15 + 1) = v3;
  v16 = *(v14 + 128);
  v27[0] = v15;
  v27[1] = v22;
  v28 = v23;
  v29 = v16;
  v24 = type metadata accessor for VariantIdentifier(0, v27);
  v17 = *(v24 - 8);
  v18 = MEMORY[0x1EEE9AC00](v24);
  v20 = &v22 - v19;
  (*(v9 + 16))(v12, v25, v8, v18);
  (*(v4 + 16))(v6, v26, v3);
  VariantIdentifier.init(storedKey:variantKey:)(v12, v6, v8, v3, v22, *(&v22 + 1), v23, v16, v20);

  sub_1BF4E7C14();

  return (*(v17 + 8))(v20, v24);
}

void sub_1BF45A2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v4 = *a3;
  v5 = *(*a3 + 88);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = v38 - v6;
  v55 = *(v4[10] - 8);
  MEMORY[0x1EEE9AC00](v7);
  v49 = v38 - v8;
  v10 = *(v9 + 104);
  v11 = v4[15];
  v50 = v12;
  *&v13 = v12;
  *(&v13 + 1) = v5;
  v14 = v4[16];
  v44 = v10;
  v56[1] = v10;
  v56[0] = v13;
  v48 = v11;
  v57 = v11;
  v58 = v14;
  v46 = type metadata accessor for VariantIdentifier(0, v56);
  v15 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v38 - v16;
  v17 = sub_1BF4E90F4();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v38 - v18;
  v53 = a3;
  v47 = v14;
  nullsub_1();
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = sub_1BF4E9414();
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = v21 | 0x8000000000000000;
  }

  else
  {
    v26 = -1 << *(v20 + 32);
    v23 = ~v26;
    v22 = v20 + 64;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v24 = v28 & *(v20 + 64);
    v25 = v20;
  }

  v52 = (v39 + 56);
  v38[1] = v23;
  v29 = (v23 + 64) >> 6;
  v38[2] = v39 + 16;
  v42 = (v39 + 32);
  v43 = (v55 + 16);
  v30 = (v15 + 8);

  v55 = 0;
  v40 = *(&v44 + 1);
  v41 = v44;
  *&v44 = v25;
  v31 = v45;
  while ((v25 & 0x8000000000000000) != 0)
  {
    if (!sub_1BF4E9454())
    {
LABEL_19:
      (*v52)(v19, 1, 1, v5);
      sub_1BF39A9CC(v25);

      sub_1BF4E7C14();

      return;
    }

    sub_1BF4E9704();
    swift_unknownObjectRelease();
LABEL_10:
    (*v52)(v19, 0, 1, v5);
    v34 = v49;
    v35 = v50;
    (*v43)(v49, v54, v50);
    v36 = v51;
    (*v42)(v51, v19, v5);
    VariantIdentifier.init(storedKey:variantKey:)(v34, v36, v35, v5, v41, v40, v48, v47, v31);

    sub_1BF4E7C14();

    (*v30)(v31, v46);
    v25 = v44;
  }

  v37 = v55;
  if (v24)
  {
    v32 = v55;
LABEL_9:
    v33 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    (*(v39 + 16))(v19, *(v25 + 48) + *(v39 + 72) * (v33 | (v32 << 6)), v5);
    goto LABEL_10;
  }

  while (1)
  {
    v32 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v32 >= v29)
    {
      goto LABEL_19;
    }

    v24 = *(v22 + 8 * v32);
    ++v37;
    if (v24)
    {
      v55 = v32;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double sub_1BF45A838(uint64_t *a1, uint64_t a2)
{
  v115 = *a1;
  v3 = v115;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v108 = (&v98 - v5);
  v107 = type metadata accessor for ReloadConfiguration(0);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v110 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v98 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v112 = &v98 - v10;
  v11 = *(v3 + 80);
  v116 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v109 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v98 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v98 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v114 = &v98 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v98 - v23;
  swift_beginAccess();
  v25 = *(v3 + 112);

  v117 = v25;
  sub_1BF4E8854();

  if (v118 == 3)
  {
    v26 = v116;
    isa = v116[2].isa;
    (isa)(v24, a2, v11);
    v28 = sub_1BF4E7B34();
    v29 = sub_1BF4E8E84();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v118 = v117;
      *v30 = 136446210;
      v31 = v114;
      (isa)(v114, v24, v11);
      v32 = v26[1].isa;
      v32(v24, v11);
      v33 = sub_1BF4E96A4();
      v35 = v34;
      v32(v31, v11);
      v36 = sub_1BF38D65C(v33, v35, &v118);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_1BF389000, v28, v29, "%{public}s Disallowing pausing while state is blocked.", v30, 0xCu);
      v37 = v117;
      __swift_destroy_boxed_opaque_existential_1Tm(v117);
      MEMORY[0x1BFB5A5D0](v37, -1, -1);
      MEMORY[0x1BFB5A5D0](v30, -1, -1);
    }

    else
    {
      (v26[1].isa)(v24, v11);
    }
  }

  else
  {
    swift_beginAccess();

    sub_1BF4E8854();

    if (v118 != 4)
    {
      v39 = qword_1EDC9AF50;
      v40 = v116;
      v41 = a2;
      v43 = v116 + 2;
      v42 = v116[2].isa;
      (v42)(v19, v41, v11);
      v111 = v16;
      v113 = v41;
      (v42)(v16, v41, v11);

      v102 = v39;
      v44 = sub_1BF4E7B34();
      v45 = sub_1BF4E8E84();

      v46 = os_log_type_enabled(v44, v45);
      v104 = v42;
      if (v46)
      {
        LODWORD(v100) = v45;
        v101 = v44;
        v47 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v118 = v99;
        *v47 = 136446466;
        v48 = v114;
        v103 = v43;
        (v42)(v114, v19, v11);
        v49 = v40[1].isa;
        v49(v19, v11);
        v50 = sub_1BF4E96A4();
        v52 = v51;
        v49(v48, v11);
        v53 = sub_1BF38D65C(v50, v52, &v118);

        *(v47 + 4) = v53;
        *(v47 + 12) = 2082;
        swift_beginAccess();

        sub_1BF4E8854();

        if (v124 > 2u)
        {
          v58 = v113;
          if (v124 == 3)
          {
            v57 = 0xE700000000000000;
            v56 = 0x64656B636F6C62;
            v43 = v103;
          }

          else
          {
            v43 = v103;
            if (v124 == 4)
            {
              v57 = 0xE600000000000000;
              v56 = 0x646573756170;
            }

            else
            {
              v57 = 0xE400000000000000;
              v56 = 1701736302;
            }
          }
        }

        else
        {
          v54 = 0xE500000000000000;
          v55 = 0x6E61656C63;
          if (v124 != 1)
          {
            v55 = 0x64656C696166;
            v54 = 0xE600000000000000;
          }

          if (v124)
          {
            v56 = v55;
          }

          else
          {
            v56 = 0x64616F6C6572;
          }

          if (v124)
          {
            v57 = v54;
          }

          else
          {
            v57 = 0xE600000000000000;
          }

          v43 = v103;
          v58 = v113;
        }

        v61 = v111;
        v111 = v49;
        v49(v61, v11);
        v62 = sub_1BF38D65C(v56, v57, &v118);

        *(v47 + 14) = v62;
        v63 = v101;
        _os_log_impl(&dword_1BF389000, v101, v100, "%{public}s Pausing reloads. Reload state %{public}s -> paused", v47, 0x16u);
        v64 = v99;
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v64, -1, -1);
        MEMORY[0x1BFB5A5D0](v47, -1, -1);
      }

      else
      {
        v59 = v40[1].isa;
        v59(v19, v11);

        v60 = v111;
        v111 = v59;
        v59(v60, v11);
        v58 = v113;
      }

      v65 = v117;
      LOBYTE(v118) = 4;
      sub_1BF399684(&v118, v58);
      swift_beginAccess();
      v66 = v115;
      v67 = *(v115 + 104);
      v68 = *(v115 + 136);

      v118 = v11;
      v119 = *(v66 + 88);
      v101 = v67;
      v120 = v67;
      v121 = v65;
      v122 = *(v66 + 120);
      v123 = v68;
      v69 = type metadata accessor for ReloadTaskPair(0, &v118);
      sub_1BF4E8854();

      v70 = v104;
      if (v125 && (v71 = sub_1BF3AB3E8(), , , v71))
      {
        v115 = v69;
        v72 = v105;
        sub_1BF39B31C(v71 + *(*v71 + 168), v105, type metadata accessor for ReloadConfiguration);

        v73 = v72;
        v74 = v112;
        v100 = type metadata accessor for ReloadConfiguration;
        sub_1BF3B4C44(v73, v112, type metadata accessor for ReloadConfiguration);
        v75 = v113;
        v70(v114, v113, v11);
        v103 = v43;
        v76 = v108;
        sub_1BF39B31C(v74, v108, type metadata accessor for ReloadConfiguration);
        (*(v106 + 56))(v76, 0, 1, v107);
        swift_beginAccess();
        v77 = v70;
        v78 = v75;
        sub_1BF4E8834();
        sub_1BF4E8864();
        swift_endAccess();
        v79 = v109;
        v77(v109, v75, v11);
        v80 = v74;
        v81 = v110;
        sub_1BF39B31C(v80, v110, v100);
        v82 = sub_1BF4E7B34();
        v83 = sub_1BF4E8E84();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v118 = v108;
          *v84 = 136446466;
          LODWORD(v107) = v83;
          v85 = v114;
          v77(v114, v79, v11);
          v86 = v111;
          v111(v79, v11);
          v116 = v82;
          v87 = sub_1BF4E96A4();
          v89 = v88;
          v86(v85, v11);
          v90 = sub_1BF38D65C(v87, v89, &v118);

          *(v84 + 4) = v90;
          *(v84 + 12) = 2082;
          v91 = v110;
          v92 = ReloadConfiguration.description.getter();
          v94 = v93;
          sub_1BF45EABC(v91, type metadata accessor for ReloadConfiguration);
          v95 = sub_1BF38D65C(v92, v94, &v118);

          *(v84 + 14) = v95;
          v96 = v116;
          _os_log_impl(&dword_1BF389000, v116, v107, "%{public}s Delaying reload with configuration: %{public}s because entry is paused.", v84, 0x16u);
          v97 = v108;
          swift_arrayDestroy();
          MEMORY[0x1BFB5A5D0](v97, -1, -1);
          MEMORY[0x1BFB5A5D0](v84, -1, -1);
        }

        else
        {
          v111(v79, v11);

          sub_1BF45EABC(v81, type metadata accessor for ReloadConfiguration);
        }

        sub_1BF45EABC(v112, type metadata accessor for ReloadConfiguration);
      }

      else
      {
        v78 = v113;
      }

      sub_1BF4C9790(v78);
      swift_beginAccess();

      sub_1BF4E8854();

      if (v125)
      {
        sub_1BF410244(0);
      }
    }
  }

  return result;
}

uint64_t sub_1BF45B630(uint64_t *a1, uint64_t a2, int a3)
{
  v62 = a3;
  v60 = *a1;
  v4 = v60;
  v5 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  v63 = type metadata accessor for ReloadConfiguration(0);
  v65 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v58 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v50 - v14;
  v15 = *(v4 + 80);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v50 - v21;
  swift_beginAccess();
  v23 = v4;
  v24 = a2;
  v25 = *(v23 + 112);

  sub_1BF4E8854();

  if (LOBYTE(v66[0]) == 4)
  {
    v53 = v11;
    v57 = v25;
    v27 = *(v16 + 16);
    v27(v22, v24, v15);
    v28 = sub_1BF4E7B34();
    v52 = sub_1BF4E8E84();
    v29 = os_log_type_enabled(v28, v52);
    v54 = v27;
    v55 = v16 + 16;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v56 = v19;
      v31 = v30;
      v51 = swift_slowAlloc();
      v66[0] = v51;
      *v31 = 136446210;
      v27(v56, v22, v15);
      v32 = v24;
      v33 = *(v16 + 8);
      v33(v22, v15);
      v34 = v28;
      v35 = sub_1BF4E96A4();
      v37 = v36;
      v33(v56, v15);
      v24 = v32;
      v38 = sub_1BF38D65C(v35, v37, v66);

      v39 = v31;
      v19 = v56;
      *(v39 + 1) = v38;
      v40 = v39;
      _os_log_impl(&dword_1BF389000, v34, v52, "%{public}s Resuming reloads. Reload state paused -> clean", v39, 0xCu);
      v41 = v51;
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x1BFB5A5D0](v41, -1, -1);
      MEMORY[0x1BFB5A5D0](v40, -1, -1);
    }

    else
    {
      (*(v16 + 8))(v22, v15);
    }

    v42 = v63;
    LOBYTE(v66[0]) = 1;
    sub_1BF399684(v66, v24);
    v43 = v53;
    if (v62)
    {
      swift_beginAccess();

      sub_1BF4E8854();

      if ((*(v65 + 48))(v43, 1, v42) == 1)
      {
        sub_1BF38C9B4(v43, &qword_1EBDD95C8, &qword_1BF4F1AB0);
      }

      else
      {
        v44 = v61;
        sub_1BF3B4C44(v43, v61, type metadata accessor for ReloadConfiguration);
        v45 = v44;
        v46 = v58;
        sub_1BF39B31C(v45, v58, type metadata accessor for ReloadConfiguration);
        v47 = sub_1BF4E7334();
        v48 = v59;
        (*(*(v47 - 8) + 56))(v59, 1, 1, v47);
        v49 = sub_1BF3B5EEC(v46, v48);
        sub_1BF45EABC(v48, type metadata accessor for ReloadConfiguration.ReloadType);
        if (v49)
        {
          *(v46 + *(v42 + 36)) = 1;
        }

        sub_1BF3BD60C(v46, v24);
        sub_1BF45EABC(v46, type metadata accessor for ReloadConfiguration);
        sub_1BF45EABC(v61, type metadata accessor for ReloadConfiguration);
      }
    }

    v54(v19, v24, v15);
    (*(v65 + 56))(v64, 1, 1, v42);
    swift_beginAccess();
    sub_1BF4E8834();
    sub_1BF4E8864();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1BF45BD1C@<X0>(void *a1@<X0>, void *a3@<X8>)
{
  v3 = *a1;
  v4 = *a1;
  swift_beginAccess();
  v5 = v3[10];
  v6 = v3[11];
  v7 = v3[12];
  v8 = v3[16];
  sub_1BF4E8834();
  v9 = v3[14];

  sub_1BF4E8854();

  if (!v14[10])
  {
    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }

  v10 = v4[13];
  v11 = v4[15];
  v14[0] = v5;
  v14[1] = v6;
  v14[2] = v10;
  v14[3] = v9;
  v14[4] = v11;
  v14[5] = v8;
  type metadata accessor for VariantIdentifier(0, v14);
  sub_1BF4E8854();
}

double sub_1BF45BEF0(uint64_t a1, uint64_t a2)
{

  sub_1BF4E7C14();

  return result;
}

uint64_t StatefulStore.__deallocating_deinit()
{
  StatefulStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF45BF90@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 1216))();
  *a1 = result;
  return result;
}

BOOL sub_1BF45C2E4(uint64_t a1)
{
  swift_beginAccess();
  sub_1BF4E8834();

  sub_1BF4E8854();

  if (v2)
  {
  }

  return v2 != 0;
}

uint64_t sub_1BF45C4F0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1BF45C53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v6);
  v10 = sub_1BF4E96A4();
  (*(v5 + 8))(v8, a3);
  return v10;
}

_BYTE **sub_1BF45C628(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1BF45C660(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1BF38D65C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1BF45C6BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AA0, &unk_1BF4F1CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t sub_1BF45C7B0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_1BF45C7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, int a7, void *a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v123 = a8;
  LODWORD(v117) = a7;
  LODWORD(v114) = a6;
  v121 = a5;
  v120 = a4;
  v122 = a3;
  v111 = a2;
  v110 = a1;
  v132 = a13;
  v133 = a11;
  v134 = a10;
  v135 = a12;
  v125 = a9;
  v15 = *v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95E8, &qword_1BF4F1CB0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v136 = &v103 - v17;
  v126 = sub_1BF4E8F14();
  v104 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v137 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95F0, &qword_1BF4F1CB8);
  v103 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v103 - v19;
  v107 = sub_1BF4E8F24();
  v124 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v116 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1BF4E8ED4();
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BF4E8064();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v112 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1BF4E7B54();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v109 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[2] = 0;
  v25 = *(v15 + 80);
  v131 = *(v15 + 104);
  v26 = *(&v131 + 1);
  v108 = v131;
  type metadata accessor for StatefulStoreReloadEvent(255, v25, v131, *(&v131 + 1));
  sub_1BF4E7C44();
  v13[3] = sub_1BF4E7C24();
  v13[4] = 0;
  v27 = *(v15 + 88);
  type metadata accessor for StatefulStoreReloadVariantsEvent(255, v25, v27, v28);
  sub_1BF4E7C44();
  v13[5] = sub_1BF4E7C24();
  v13[6] = 0;
  sub_1BF4E7C44();
  v13[7] = sub_1BF4E7C24();
  v13[8] = 0;
  v13[9] = sub_1BF4E7C24();
  v13[10] = 0;
  v13[11] = sub_1BF4E7C24();
  v13[12] = 0;
  v29 = *(v15 + 120);
  *&v30 = v25;
  *(&v30 + 1) = v27;
  v31 = *(v15 + 128);
  *v140 = v131;
  v139 = v30;
  *&v140[16] = v29;
  v141 = v31;
  type metadata accessor for VariantIdentifier(255, &v139);
  sub_1BF4E7C44();
  v13[13] = sub_1BF4E7C24();
  v13[14] = 0;
  v13[15] = sub_1BF4E7C24();
  v13[16] = 0;
  v32 = qword_1EDC9AF48;
  swift_getTupleTypeMetadata2();
  v33 = sub_1BF4E8BF4();
  v35 = sub_1BF3B0FE8(v33, v25, &type metadata for ReloadState, v26, v34);

  *(v14 + v32) = v35;
  *(v14 + qword_1EDC9AF80) = MEMORY[0x1E69E7CD0];
  *(v14 + qword_1EDC9AF98) = 0;
  v36 = qword_1EDC9AF58;
  type metadata accessor for UnfairLock();
  v37 = swift_allocObject();
  v38 = swift_slowAlloc();
  *v38 = 0;
  *(v37 + 16) = v38;
  *(v14 + v36) = v37;
  *(v14 + qword_1EDC9AFA0) = 0;
  v39 = qword_1EDC9AF68;
  sub_1BF4E7334();
  *(v14 + v39) = sub_1BF4E8724();
  *(v14 + qword_1EDC9AF78) = 0;
  v40 = qword_1EDCA6870;
  v41 = *(v15 + 96);
  sub_1BF4E8834();
  *(v14 + v40) = sub_1BF4E8724();
  v42 = qword_1EDCA6860;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95D0, &qword_1BF4F1C88);
  *(v14 + v42) = sub_1BF4E8724();
  v43 = qword_1EDC9AF88;
  v44 = *(v15 + 136);
  *&v139 = v25;
  *(&v139 + 1) = v27;
  *v140 = v41;
  *&v140[8] = v131;
  v141 = v29;
  v142 = v31;
  v143 = v44;
  type metadata accessor for ReloadTaskPair(0, &v139);
  *(v14 + v43) = sub_1BF4E8724();
  v45 = qword_1EDC9AF90;
  type metadata accessor for ReloadConfiguration(0);
  *(v14 + v45) = sub_1BF4E8724();
  v46 = qword_1EDC9AF60;
  *&v139 = v25;
  *(&v139 + 1) = v27;
  *v140 = v131;
  *&v140[16] = v29;
  v141 = v31;
  type metadata accessor for VariantReloadResult(255, &v139);
  sub_1BF4E7C44();
  sub_1BF4E8834();
  *(v14 + v46) = sub_1BF4E8724();
  *&v139 = v25;
  *(&v139 + 1) = v27;
  *v140 = v41;
  *&v140[8] = v131;
  v130 = v29;
  v141 = v29;
  v142 = v31;
  v143 = v44;
  v47 = type metadata accessor for DefaultStatefulStoreFailurePolicy(0, &v139);
  v48 = DefaultStatefulStoreFailurePolicy.__allocating_init()();
  v14[20] = v47;
  v14[21] = swift_getWitnessTable();
  v14[17] = v48;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v139 = v25;
  *(&v139 + 1) = v27;
  *v140 = AssociatedTypeWitness;
  *&v140[8] = v131;
  v141 = v31;
  type metadata accessor for AnyReloadingStrategy(0, &v139);
  *(v14 + qword_1EDC9AFB0) = sub_1BF487D40(v110, v134);
  *&v139 = v25;
  *(&v139 + 1) = v27;
  *&v131 = v27;
  v129 = v41;
  *v140 = v41;
  *&v140[8] = v31;
  v50 = v14;
  *&v140[16] = v44;
  type metadata accessor for AnyReloadConfigurationPolicy(0, &v139);
  *(v14 + qword_1EDC9AF70) = sub_1BF4857B4(v111, v133);
  *(v14 + qword_1EDC9AFA8) = v122;
  v51 = v25;
  v52 = *(v118 + 16);
  v53 = v120;
  v54 = v119;
  v52(&v50[qword_1EDC9AF50], v120, v119);
  sub_1BF38E49C(v121, &v50[qword_1EDC9AFC8]);
  v55 = qword_1EDCA6868;
  v56 = *MEMORY[0x1E6985988];
  v57 = sub_1BF4E8424();
  (*(*(v57 - 8) + 104))(&v50[v55], v56, v57);
  v50[qword_1EDC9AFC0] = v114;
  v50[176] = v117;
  v127 = v51;
  type metadata accessor for ReloadHistory(0, v51, v108, v26);
  v58 = v109;
  v52(v109, v53, v54);
  v59 = v123;

  *&v50[qword_1EDC9AFB8] = sub_1BF4C9660(v58);
  if (v59)
  {
    v117 = v59;
    v60 = v124;
    v61 = v116;
  }

  else
  {
    v117 = sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
    v114 = "\n            Variants:\n";
    sub_1BF4E8024();
    *&v139 = MEMORY[0x1E69E7CC0];
    sub_1BF3983D4(&qword_1EDC9F148, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
    sub_1BF38C8B4(&qword_1EDC9F178, &qword_1EBDD85C0, &qword_1BF4EC090, MEMORY[0x1E69E6328]);
    sub_1BF4E91A4();
    v60 = v124;
    v62 = v116;
    (*(v124 + 104))(v116, *MEMORY[0x1E69E8090], v107);
    v117 = sub_1BF4E8F64();
    v61 = v62;
  }

  v63 = v125;
  if (v125)
  {
    v64 = v59;
    v65 = v63;
  }

  else
  {
    v124 = sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
    v116 = "StatefulStoreReloadQueue";
    v66 = v59;
    sub_1BF4E8024();
    *&v139 = MEMORY[0x1E69E7CC0];
    sub_1BF3983D4(&qword_1EDC9F148, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
    sub_1BF38C8B4(&qword_1EDC9F178, &qword_1EBDD85C0, &qword_1BF4EC090, MEMORY[0x1E69E6328]);
    sub_1BF4E91A4();
    (*(v60 + 104))(v61, *MEMORY[0x1E69E8090], v107);
    v67 = sub_1BF4E8F64();
    v63 = v125;
    v65 = v67;
  }

  v68 = v117;
  *&v50[qword_1EDC9AFD8] = v117;
  *&v50[qword_1EDC9AFD0] = v65;
  v69 = *(v122 + 16);
  v116 = v65;
  v128 = v50;
  if (v69)
  {
    v125 = &v50[qword_1EDC9AF80];
    v70 = (v122 + 32);
    v124 = v104 + 8;
    v71 = (v103 + 8);
    v72 = v63;
    v123 = v68;
    v73 = v65;
    v74 = v136;
    v75 = v106;
    v76 = v105;
    do
    {
      v77 = *v70++;
      *&v139 = v77;

      sub_1BF4E8F04();
      v138 = v123;
      v78 = sub_1BF4E8EF4();
      (*(*(v78 - 8) + 56))(v74, 1, 1, v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F30, &unk_1BF4EF080);
      sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
      sub_1BF38C8B4(&qword_1EDC9EF90, &qword_1EBDD8F30, &unk_1BF4EF080, MEMORY[0x1E695BED8]);
      sub_1BF45EB9C();
      v74 = v136;
      v79 = v137;
      sub_1BF4E7CF4();
      sub_1BF38C9B4(v74, &qword_1EBDD95E8, &qword_1BF4F1CB0);
      (*v124)(v79, v126);
      v80 = swift_allocObject();
      swift_weakInit();
      v81 = swift_allocObject();
      v82 = v131;
      v81[2] = v127;
      v81[3] = v82;
      v84 = v133;
      v83 = v134;
      v81[4] = v129;
      v81[5] = v83;
      v85 = v130;
      v81[6] = v84;
      v81[7] = v85;
      v86 = v132;
      v81[8] = v135;
      v81[9] = v86;
      v81[10] = v80;
      v87 = swift_allocObject();
      *(v87 + 16) = sub_1BF45EC04;
      *(v87 + 24) = v81;
      sub_1BF38C8B4(&qword_1EDC9D438, &qword_1EBDD95F0, &qword_1BF4F1CB8, MEMORY[0x1E695BE50]);
      sub_1BF4E7D14();

      (*v71)(v76, v75);
      swift_beginAccess();
      sub_1BF4E7BC4();
      swift_endAccess();

      --v69;
    }

    while (v69);
  }

  else
  {
    v88 = v63;
    v89 = v68;
    v90 = v65;
  }

  v91 = v121;
  v92 = v121[3];
  v93 = v121[4];
  __swift_project_boxed_opaque_existential_1(v121, v92);
  *&v139 = (*(v93 + 16))(v92, v93);
  v94 = swift_allocObject();
  v95 = v128;
  swift_weakInit();
  v96 = swift_allocObject();
  v97 = v131;
  v96[2] = v127;
  v96[3] = v97;
  v99 = v133;
  v98 = v134;
  v96[4] = v129;
  v96[5] = v98;
  v100 = v130;
  v96[6] = v99;
  v96[7] = v100;
  v101 = v132;
  v96[8] = v135;
  v96[9] = v101;
  v96[10] = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95F8, &qword_1BF4F1CC0);
  sub_1BF38C8B4(&qword_1EDC9D410, &qword_1EBDD95F8, &qword_1BF4F1CC0, MEMORY[0x1E695BED8]);
  sub_1BF4E7D14();

  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  (*(v118 + 8))(v120, v119);
  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  return v95;
}

uint64_t sub_1BF45D9CC()
{
  os_unfair_lock_assert_owner(*(*(v0 + qword_1EDC9AF58) + 16));
  swift_beginAccess();
  v1 = *(v0 + 176);
  if ((v1 & 1) == 0)
  {
    v2 = sub_1BF4E7B34();
    v3 = sub_1BF4E8E84();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1BF389000, v2, v3, "StatefulStore is disabled", v4, 2u);
      MEMORY[0x1BFB5A5D0](v4, -1, -1);
    }
  }

  return v1;
}

uint64_t sub_1BF45DAA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF44EA2C();
  *a1 = result;
  return result;
}

void sub_1BF45DB24(uint64_t a1)
{
  v3 = *(v1 + qword_1EDC9AF58);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1BF38E49C(a1, v4);
  sub_1BF44EC50(v4);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_1BF45DB84()
{
  v1 = qword_1EDCA6860;
  swift_beginAccess();
  return *(v0 + v1);
}

double keypath_get_44Tm@<D0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  *a2 = a1();

  return result;
}

uint64_t sub_1BF45DD04(uint64_t a1)
{
  result = sub_1BF4E8424();
  if (v2 <= 0x3F)
  {
    result = sub_1BF4E7B54();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_1BF45E734(void *a1, id a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 == 1)
  {
  }
}

void sub_1BF45E758(void *result, id a2, char a3)
{
  if (a3 != -1)
  {
    sub_1BF45E76C(result, a2, a3);
  }
}

void sub_1BF45E76C(void *a1, id a2, char a3)
{
  if (a3 == 2)
  {
    v3 = a1;
  }

  else if (a3 == 1)
  {
  }
}

void sub_1BF45E7A8(void *a1, id a2, char a3)
{
  if (a3 != -1)
  {
    sub_1BF45E734(a1, a2, a3);
  }
}

uint64_t objectdestroy_66Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF45E8A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReloadConfiguration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF45E908()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 80) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = *(*(v0 + 24) - 8);
  v3 = (v1 + *(*(*(v0 + 16) - 8) + 64) + *(v2 + 80)) & ~*(v2 + 80);
  return sub_1BF45A004(v0 + v1, v0 + v3, *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1BF45EA40(double a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 72);
  swift_getTupleTypeMetadata2();
  return (*(v3 + 96))(v2, v3);
}

uint64_t sub_1BF45EABC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BF45EB9C()
{
  result = qword_1EDC9D718;
  if (!qword_1EDC9D718)
  {
    sub_1BF3901C0(255, &qword_1EDC9F140, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9D718);
  }

  return result;
}

uint64_t sub_1BF45EC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9ChronoKit13StatefulStoreC0cD11ReloadErrorOyxq_q0__G(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1BF45ECD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BF45ED20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF45ED64(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t RemoteActivitySubscription.ActivityOwnership.rescopingToRemote(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BF4E7394();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t RemoteActivitySubscription.ActivityOwnership.rescopingToLocal()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BF4E7394();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1BF45EF28()
{
  if (*v0)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t sub_1BF45EF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1BF4E9734() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BF4E9734();

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

uint64_t sub_1BF45F030(uint64_t a1)
{
  v2 = sub_1BF462BAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF45F06C(uint64_t a1)
{
  v2 = sub_1BF462BAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF45F0A8(uint64_t a1)
{
  v2 = sub_1BF462C54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF45F0E4(uint64_t a1)
{
  v2 = sub_1BF462C54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF45F12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BF4E9734();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BF45F1AC(uint64_t a1)
{
  v2 = sub_1BF462C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF45F1E8(uint64_t a1)
{
  v2 = sub_1BF462C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteActivitySubscription.ActivityOwnership.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9600, &qword_1BF4F1DC0);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v21 - v3;
  v4 = sub_1BF4E7394();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9608, &qword_1BF4F1DC8);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for RemoteActivitySubscription.ActivityOwnership(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9610, &qword_1BF4F1DD0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF462BAC();
  v16 = v28;
  sub_1BF4E9864();
  sub_1BF46350C(v29, v11, type metadata accessor for RemoteActivitySubscription.ActivityOwnership);
  if ((*(v16 + 48))(v11, 1, v4) == 1)
  {
    v30 = 0;
    sub_1BF462C54();
    sub_1BF4E95F4();
    (*(v22 + 8))(v8, v23);
  }

  else
  {
    v18 = v24;
    (*(v16 + 32))(v24, v11, v4);
    v31 = 1;
    sub_1BF462C00();
    v19 = v25;
    sub_1BF4E95F4();
    sub_1BF462CA8(&qword_1EDC9D5E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v20 = v27;
    sub_1BF4E9674();
    (*(v26 + 8))(v19, v20);
    (*(v16 + 8))(v18, v4);
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t RemoteActivitySubscription.ActivityOwnership.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9630, &qword_1BF4F1DD8);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9638, &qword_1BF4F1DE0);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9640, &unk_1BF4F1DE8);
  v50 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for RemoteActivitySubscription.ActivityOwnership(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v19 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1BF462BAC();
  v20 = v51;
  sub_1BF4E9854();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v52);
  }

  v51 = v13;
  v42 = v15;
  v43 = v18;
  v22 = v48;
  v21 = v49;
  v23 = sub_1BF4E95D4();
  v24 = (2 * *(v23 + 16)) | 1;
  v53 = v23;
  v54 = v23 + 32;
  v55 = 0;
  v56 = v24;
  v25 = sub_1BF3DD32C();
  v26 = v10;
  v27 = v12;
  if (v25 == 2 || v55 != v56 >> 1)
  {
    v30 = sub_1BF4E9344();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8928, &qword_1BF4EB830);
    *v32 = v51;
    sub_1BF4E9534();
    sub_1BF4E9334();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v50 + 8))(v12, v26);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v52);
  }

  if (v25)
  {
    v57 = 1;
    sub_1BF462C00();
    v28 = v22;
    sub_1BF4E9524();
    v29 = v50;
    v35 = v21;
    v36 = sub_1BF4E7394();
    sub_1BF462CA8(&qword_1EBDD8958, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v37 = v42;
    v38 = v46;
    sub_1BF4E95B4();
    (*(v47 + 8))(v28, v38);
    (*(v29 + 8))(v27, v26);
    swift_unknownObjectRelease();
    (*(*(v36 - 8) + 56))(v37, 0, 1, v36);
    v39 = v43;
    sub_1BF462CF0(v37, v43);
  }

  else
  {
    v57 = 0;
    sub_1BF462C54();
    sub_1BF4E9524();
    v34 = v50;
    v35 = v21;
    (*(v45 + 8))(v9, v44);
    (*(v34 + 8))(v12, v10);
    swift_unknownObjectRelease();
    v40 = sub_1BF4E7394();
    v39 = v43;
    (*(*(v40 - 8) + 56))(v43, 1, 1, v40);
  }

  sub_1BF462CF0(v39, v35);
  return __swift_destroy_boxed_opaque_existential_1Tm(v52);
}

uint64_t sub_1BF45FD10(uint64_t a1)
{
  v2 = sub_1BF462DFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF45FD4C(uint64_t a1)
{
  v2 = sub_1BF462DFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF45FD88()
{
  v1 = 1701736302;
  v2 = 0x737472656C61;
  if (*v0 != 2)
  {
    v2 = 1819047270;
  }

  if (*v0)
  {
    v1 = 0x6168436574617473;
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

uint64_t sub_1BF45FDF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BF4641D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BF45FE2C(uint64_t a1)
{
  v2 = sub_1BF462D54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF45FE68(uint64_t a1)
{
  v2 = sub_1BF462D54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF45FEA4(uint64_t a1)
{
  v2 = sub_1BF462DA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF45FEE0(uint64_t a1)
{
  v2 = sub_1BF462DA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF45FF1C(uint64_t a1)
{
  v2 = sub_1BF462EA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF45FF58(uint64_t a1)
{
  v2 = sub_1BF462EA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF45FF94(uint64_t a1)
{
  v2 = sub_1BF462E50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF45FFD0(uint64_t a1)
{
  v2 = sub_1BF462E50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteActivitySubscription.ActivitySubscriptionType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9648, &qword_1BF4F1DF8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9650, &qword_1BF4F1E00);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9658, &qword_1BF4F1E08);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9660, &qword_1BF4F1E10);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9668, &qword_1BF4F1E18);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF462D54();
  sub_1BF4E9864();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1BF462DFC();
      v18 = v27;
      sub_1BF4E95F4();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1BF462DA8();
      v18 = v30;
      sub_1BF4E95F4();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1BF462E50();
    v18 = v24;
    sub_1BF4E95F4();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1BF462EA4();
  sub_1BF4E95F4();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t RemoteActivitySubscription.ActivitySubscriptionType.hashValue.getter(double a1)
{
  v2 = *v1;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9844();
}

uint64_t RemoteActivitySubscription.ActivitySubscriptionType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9698, &qword_1BF4F1E20);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD96A0, &qword_1BF4F1E28);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD96A8, &qword_1BF4F1E30);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD96B0, &qword_1BF4F1E38);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD96B8, &unk_1BF4F1E40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BF462D54();
  v15 = v46;
  sub_1BF4E9854();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1BF4E95D4();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1BF3DD360();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1BF4E9344();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8928, &qword_1BF4EB830);
      *v28 = &type metadata for RemoteActivitySubscription.ActivitySubscriptionType;
      sub_1BF4E9534();
      sub_1BF4E9334();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1BF462E50();
        v32 = v35;
        sub_1BF4E9524();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1BF462EA4();
        v25 = v35;
        sub_1BF4E9524();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1Tm(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1BF462DFC();
      v31 = v35;
      sub_1BF4E9524();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1BF462DA8();
      v33 = v35;
      sub_1BF4E9524();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v47);
}

uint64_t RemoteActivitySubscription.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BF4E7394();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoteActivitySubscription.id.setter(uint64_t a1)
{
  v3 = sub_1BF4E7394();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RemoteActivitySubscription.activityID.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemoteActivitySubscription(0) + 20));

  return v1;
}

uint64_t RemoteActivitySubscription.activityID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RemoteActivitySubscription(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RemoteActivitySubscription.hostIdentity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteActivitySubscription(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteActivitySubscription.hostIdentity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoteActivitySubscription(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoteActivitySubscription.activityOwner.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RemoteActivitySubscription(0) + 28);

  return sub_1BF462F18(a1, v3);
}

uint64_t RemoteActivitySubscription.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteActivitySubscription(0) + 32);
  v4 = sub_1BF4E8674();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteActivitySubscription.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoteActivitySubscription(0) + 32);
  v4 = sub_1BF4E8674();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoteActivitySubscription.family.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteActivitySubscription(0) + 36);
  v4 = sub_1BF4E8364();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteActivitySubscription.family.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoteActivitySubscription(0) + 36);
  v4 = sub_1BF4E8364();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoteActivitySubscription.subscriptionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RemoteActivitySubscription(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t RemoteActivitySubscription.subscriptionType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RemoteActivitySubscription(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t RemoteActivitySubscription.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemoteActivitySubscription(0) + 44);

  return sub_1BF3ABF74(v3, a1);
}

uint64_t RemoteActivitySubscription.creationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RemoteActivitySubscription(0) + 44);

  return sub_1BF3AC398(a1, v3);
}

uint64_t RemoteActivitySubscription.description.getter()
{
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](540697705, 0xE400000000000000);
  sub_1BF4E7394();
  sub_1BF462CA8(&unk_1EBDD92C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v1 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v1);

  MEMORY[0x1BFB58C90](0x697669746361203BLL, 0xEE00203A44497974);
  v2 = type metadata accessor for RemoteActivitySubscription(0);
  MEMORY[0x1BFB58C90](*(v0 + *(v2 + 20)), *(v0 + *(v2 + 20) + 8));
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FBEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF38C8B4(&qword_1EBDD96C0, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994160]);
  v3 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x63697274656D203BLL, 0xEB00000000203A73);
  sub_1BF4E8674();
  sub_1BF462CA8(&qword_1EBDD96C8, MEMORY[0x1E6985AA8], MEMORY[0x1E6985AC8]);
  v4 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x796C696D6166203BLL, 0xEA0000000000203ALL);
  sub_1BF4E8364();
  sub_1BF462CA8(&qword_1EBDD96D0, MEMORY[0x1E69858D8], MEMORY[0x1E6985908]);
  v5 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v5);

  return 0;
}

uint64_t RemoteActivitySubscription.init(id:activityID:hostIdentity:activityOwner:metrics:family:subscriptionType:creationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = *a8;
  v18 = type metadata accessor for RemoteActivitySubscription(0);
  v19 = v18[11];
  v20 = sub_1BF4E7334();
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  v21 = sub_1BF4E7394();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = (a9 + v18[5]);
  *v22 = a2;
  v22[1] = a3;
  v23 = v18[6];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  (*(*(v24 - 8) + 32))(a9 + v23, a4, v24);
  sub_1BF462CF0(a5, a9 + v18[7]);
  v25 = v18[8];
  v26 = sub_1BF4E8674();
  (*(*(v26 - 8) + 32))(a9 + v25, a6, v26);
  v27 = v18[9];
  v28 = sub_1BF4E8364();
  (*(*(v28 - 8) + 32))(a9 + v27, a7, v28);
  *(a9 + v18[10]) = v17;

  return sub_1BF3AC398(a10, a9 + v19);
}

unint64_t sub_1BF4617FC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000010;
  if (v1 != 6)
  {
    v3 = 0x6E6F697461657263;
  }

  v4 = 0x7363697274656DLL;
  if (v1 != 4)
  {
    v4 = 0x796C696D6166;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E65644974736F68;
  if (v1 != 2)
  {
    v5 = 0x7974697669746361;
  }

  if (*v0)
  {
    v2 = 0x7974697669746361;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BF4618FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BF464338(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BF461924(uint64_t a1)
{
  v2 = sub_1BF463464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF461960(uint64_t a1)
{
  v2 = sub_1BF463464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteActivitySubscription.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = v39 - v4;
  v47 = sub_1BF4E8364();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v42 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1BF4E8674();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v43 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for RemoteActivitySubscription.ActivityOwnership(0);
  MEMORY[0x1EEE9AC00](v44);
  v53 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v39 - v9;
  v11 = sub_1BF4E7394();
  v51 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v54 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD96D8, &qword_1BF4F1E58);
  v52 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v14 = v39 - v13;
  v15 = type metadata accessor for RemoteActivitySubscription(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 44);
  v20 = sub_1BF4E7334();
  v21 = *(*(v20 - 8) + 56);
  v58 = v19;
  v59 = v17;
  v21(&v17[v19], 1, 1, v20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF463464();
  v55 = v14;
  v22 = v57;
  sub_1BF4E9854();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_1BF38C9B4(&v59[v58], &qword_1EBDD9B00, &qword_1BF4F1E50);
  }

  else
  {
    v24 = v52;
    v23 = v53;
    v57 = v20;
    v68 = 0;
    sub_1BF462CA8(&qword_1EBDD8958, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v25 = v54;
    sub_1BF4E95B4();
    (*(v51 + 32))(v59, v25, v11);
    v67 = 1;
    v27 = sub_1BF4E9564();
    v39[1] = v11;
    v28 = v15;
    v29 = &v59[*(v15 + 20)];
    *v29 = v27;
    v29[1] = v30;
    v66 = 2;
    sub_1BF38C8B4(&qword_1EDC9D548, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994158]);
    v31 = v50;
    v54 = 0;
    sub_1BF4E95B4();
    (*(v49 + 32))(&v59[v28[6]], v10, v31);
    v65 = 3;
    sub_1BF462CA8(&qword_1EBDD96E8, type metadata accessor for RemoteActivitySubscription.ActivityOwnership, &protocol conformance descriptor for RemoteActivitySubscription.ActivityOwnership);
    sub_1BF4E95B4();
    v44 = a1;
    v32 = v59;
    sub_1BF462CF0(v23, &v59[v28[7]]);
    v64 = 4;
    sub_1BF462CA8(&qword_1EDC96440, MEMORY[0x1E6985AA8], MEMORY[0x1E6985AC0]);
    v33 = v43;
    v34 = v48;
    sub_1BF4E95B4();
    (*(v46 + 32))(v32 + v28[8], v33, v34);
    v63 = 5;
    sub_1BF462CA8(&qword_1EDC96470, MEMORY[0x1E69858D8], MEMORY[0x1E6985900]);
    v35 = v42;
    v36 = v47;
    sub_1BF4E95B4();
    (*(v45 + 32))(v32 + v28[9], v35, v36);
    v61 = 6;
    sub_1BF4634B8();
    sub_1BF4E9554();
    v37 = v62;
    if (v62 == 4)
    {
      v37 = 3;
    }

    *(v32 + v28[10]) = v37;
    v60[0] = 7;
    sub_1BF462CA8(&qword_1EDC9D5F0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v38 = v41;
    sub_1BF4E9554();
    (*(v24 + 8))(v55, v56);
    sub_1BF3AC398(v38, v32 + v58);
    sub_1BF46350C(v32, v40, type metadata accessor for RemoteActivitySubscription);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    return sub_1BF463574(v32, type metadata accessor for RemoteActivitySubscription);
  }
}

uint64_t RemoteActivitySubscription.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD96F8, &qword_1BF4F1E60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF463464();
  sub_1BF4E9864();
  v21 = 0;
  sub_1BF4E7394();
  sub_1BF462CA8(&qword_1EDC9D5E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1BF4E9674();
  if (!v2)
  {
    v9 = type metadata accessor for RemoteActivitySubscription(0);
    v20 = 1;
    sub_1BF4E9624();
    v12 = v9;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
    sub_1BF38C8B4(&unk_1EDC9D558, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994138]);
    sub_1BF4E9674();
    v10 = v12;
    v18 = 3;
    type metadata accessor for RemoteActivitySubscription.ActivityOwnership(0);
    sub_1BF462CA8(&qword_1EBDD9700, type metadata accessor for RemoteActivitySubscription.ActivityOwnership, &protocol conformance descriptor for RemoteActivitySubscription.ActivityOwnership);
    sub_1BF4E9674();
    v17 = 4;
    sub_1BF4E8674();
    sub_1BF462CA8(&qword_1EDC96448, MEMORY[0x1E6985AA8], MEMORY[0x1E6985AB0]);
    sub_1BF4E9674();
    v16 = 5;
    sub_1BF4E8364();
    sub_1BF462CA8(&qword_1EDC96478, MEMORY[0x1E69858D8], MEMORY[0x1E69858E0]);
    sub_1BF4E9674();
    v15 = *(v3 + *(v10 + 40));
    v14 = 6;
    sub_1BF4635D4();
    sub_1BF4E9674();
    v13 = 7;
    sub_1BF4E7334();
    sub_1BF462CA8(&qword_1EDC9D5F8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1BF4E9614();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t _s9ChronoKit26RemoteActivitySubscriptionV0D9OwnershipO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7394();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RemoteActivitySubscription.ActivityOwnership(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97D0, &qword_1BF4F2910);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1BF46350C(a1, &v20 - v12, type metadata accessor for RemoteActivitySubscription.ActivityOwnership);
  sub_1BF46350C(a2, &v13[v15], type metadata accessor for RemoteActivitySubscription.ActivityOwnership);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1BF46350C(v13, v10, type metadata accessor for RemoteActivitySubscription.ActivityOwnership);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v17 = sub_1BF4E7364();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1BF463574(v13, type metadata accessor for RemoteActivitySubscription.ActivityOwnership);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1BF38C9B4(v13, &qword_1EBDD97D0, &qword_1BF4F2910);
    v17 = 0;
    return v17 & 1;
  }

  sub_1BF463574(v13, type metadata accessor for RemoteActivitySubscription.ActivityOwnership);
  v17 = 1;
  return v17 & 1;
}

unint64_t sub_1BF462BAC()
{
  result = qword_1EBDD9618;
  if (!qword_1EBDD9618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9618);
  }

  return result;
}

unint64_t sub_1BF462C00()
{
  result = qword_1EBDD9620;
  if (!qword_1EBDD9620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9620);
  }

  return result;
}

unint64_t sub_1BF462C54()
{
  result = qword_1EBDD9628;
  if (!qword_1EBDD9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9628);
  }

  return result;
}

uint64_t sub_1BF462CA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF462CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteActivitySubscription.ActivityOwnership(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BF462D54()
{
  result = qword_1EBDD9670;
  if (!qword_1EBDD9670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9670);
  }

  return result;
}

unint64_t sub_1BF462DA8()
{
  result = qword_1EBDD9678;
  if (!qword_1EBDD9678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9678);
  }

  return result;
}

unint64_t sub_1BF462DFC()
{
  result = qword_1EBDD9680;
  if (!qword_1EBDD9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9680);
  }

  return result;
}

unint64_t sub_1BF462E50()
{
  result = qword_1EBDD9688;
  if (!qword_1EBDD9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9688);
  }

  return result;
}

unint64_t sub_1BF462EA4()
{
  result = qword_1EBDD9690;
  if (!qword_1EBDD9690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9690);
  }

  return result;
}

uint64_t sub_1BF462F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteActivitySubscription.ActivityOwnership(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s9ChronoKit26RemoteActivitySubscriptionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97C8, &qword_1BF4F5FA0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  if ((sub_1BF4E7364() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for RemoteActivitySubscription(0);
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  v31 = v7;
  v32 = v5;
  v33 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF38C8B4(&unk_1EDC9F008, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994150]);
  sub_1BF4E8B54();
  sub_1BF4E8B54();
  if (v36 == v34 && v37 == v35)
  {
  }

  else
  {
    v20 = sub_1BF4E9734();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  if ((_s9ChronoKit26RemoteActivitySubscriptionV0D9OwnershipO2eeoiySbAE_AEtFZ_0(a1 + v14[7], a2 + v14[7]) & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x1BFB588A0](a1 + v14[8], a2 + v14[8]) & 1) == 0)
  {
    return 0;
  }

  sub_1BF4E8364();
  sub_1BF462CA8(&qword_1EDC9D790, MEMORY[0x1E69858D8], MEMORY[0x1E69858F8]);
  sub_1BF4E8B54();
  sub_1BF4E8B54();
  if (v36 != v34 || *(a1 + v14[10]) != *(a2 + v14[10]))
  {
    return 0;
  }

  v21 = v14[11];
  v22 = *(v11 + 48);
  sub_1BF3ABF74(a1 + v21, v13);
  sub_1BF3ABF74(a2 + v21, &v13[v22]);
  v24 = v32;
  v23 = v33;
  v25 = *(v32 + 48);
  if (v25(v13, 1, v33) == 1)
  {
    if (v25(&v13[v22], 1, v23) == 1)
    {
      sub_1BF38C9B4(v13, &qword_1EBDD9B00, &qword_1BF4F1E50);
      return 1;
    }

    goto LABEL_20;
  }

  sub_1BF3ABF74(v13, v10);
  if (v25(&v13[v22], 1, v23) == 1)
  {
    (*(v24 + 8))(v10, v23);
LABEL_20:
    sub_1BF38C9B4(v13, &qword_1EBDD97C8, &qword_1BF4F5FA0);
    return 0;
  }

  v27 = v31;
  (*(v24 + 32))(v31, &v13[v22], v23);
  sub_1BF462CA8(&qword_1EDC9F0C0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v28 = sub_1BF4E88C4();
  v29 = *(v24 + 8);
  v29(v27, v23);
  v29(v10, v23);
  sub_1BF38C9B4(v13, &qword_1EBDD9B00, &qword_1BF4F1E50);
  return (v28 & 1) != 0;
}

unint64_t sub_1BF463464()
{
  result = qword_1EBDD96E0;
  if (!qword_1EBDD96E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD96E0);
  }

  return result;
}

unint64_t sub_1BF4634B8()
{
  result = qword_1EBDD96F0;
  if (!qword_1EBDD96F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD96F0);
  }

  return result;
}

uint64_t sub_1BF46350C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF463574(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BF4635D4()
{
  result = qword_1EBDD9708;
  if (!qword_1EBDD9708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9708);
  }

  return result;
}

unint64_t sub_1BF46362C()
{
  result = qword_1EBDD9710;
  if (!qword_1EBDD9710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9710);
  }

  return result;
}

void sub_1BF4636F0(uint64_t a1)
{
  sub_1BF4E7394();
  if (v1 <= 0x3F)
  {
    sub_1BF3D9314(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for RemoteActivitySubscription.ActivityOwnership(319);
      if (v3 <= 0x3F)
      {
        sub_1BF4E8674();
        if (v4 <= 0x3F)
        {
          sub_1BF4E8364();
          if (v5 <= 0x3F)
          {
            sub_1BF3C363C(319);
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

uint64_t sub_1BF46380C(uint64_t a1)
{
  v1 = sub_1BF4E7394();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for StateReplicatorEnumValues.RelationshipState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StateReplicatorEnumValues.RelationshipState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF463A48()
{
  result = qword_1EBDD9718;
  if (!qword_1EBDD9718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9718);
  }

  return result;
}

unint64_t sub_1BF463AA0()
{
  result = qword_1EBDD9720;
  if (!qword_1EBDD9720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9720);
  }

  return result;
}

unint64_t sub_1BF463AF8()
{
  result = qword_1EBDD9728;
  if (!qword_1EBDD9728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9728);
  }

  return result;
}

unint64_t sub_1BF463B50()
{
  result = qword_1EBDD9730;
  if (!qword_1EBDD9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9730);
  }

  return result;
}

unint64_t sub_1BF463BA8()
{
  result = qword_1EBDD9738;
  if (!qword_1EBDD9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9738);
  }

  return result;
}

unint64_t sub_1BF463C00()
{
  result = qword_1EBDD9740;
  if (!qword_1EBDD9740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9740);
  }

  return result;
}

unint64_t sub_1BF463C58()
{
  result = qword_1EBDD9748;
  if (!qword_1EBDD9748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9748);
  }

  return result;
}

unint64_t sub_1BF463CB0()
{
  result = qword_1EBDD9750;
  if (!qword_1EBDD9750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9750);
  }

  return result;
}

unint64_t sub_1BF463D08()
{
  result = qword_1EBDD9758;
  if (!qword_1EBDD9758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9758);
  }

  return result;
}

unint64_t sub_1BF463D60()
{
  result = qword_1EBDD9760;
  if (!qword_1EBDD9760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9760);
  }

  return result;
}

unint64_t sub_1BF463DB8()
{
  result = qword_1EBDD9768;
  if (!qword_1EBDD9768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9768);
  }

  return result;
}

unint64_t sub_1BF463E10()
{
  result = qword_1EBDD9770;
  if (!qword_1EBDD9770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9770);
  }

  return result;
}

unint64_t sub_1BF463E68()
{
  result = qword_1EBDD9778;
  if (!qword_1EBDD9778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9778);
  }

  return result;
}

unint64_t sub_1BF463EC0()
{
  result = qword_1EBDD9780;
  if (!qword_1EBDD9780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9780);
  }

  return result;
}

unint64_t sub_1BF463F18()
{
  result = qword_1EBDD9788;
  if (!qword_1EBDD9788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9788);
  }

  return result;
}

unint64_t sub_1BF463F70()
{
  result = qword_1EBDD9790;
  if (!qword_1EBDD9790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9790);
  }

  return result;
}

unint64_t sub_1BF463FC8()
{
  result = qword_1EBDD9798;
  if (!qword_1EBDD9798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9798);
  }

  return result;
}

unint64_t sub_1BF464020()
{
  result = qword_1EBDD97A0;
  if (!qword_1EBDD97A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD97A0);
  }

  return result;
}

unint64_t sub_1BF464078()
{
  result = qword_1EBDD97A8;
  if (!qword_1EBDD97A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD97A8);
  }

  return result;
}

unint64_t sub_1BF4640D0()
{
  result = qword_1EBDD97B0;
  if (!qword_1EBDD97B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD97B0);
  }

  return result;
}

unint64_t sub_1BF464128()
{
  result = qword_1EBDD97B8;
  if (!qword_1EBDD97B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD97B8);
  }

  return result;
}

unint64_t sub_1BF464180()
{
  result = qword_1EBDD97C0;
  if (!qword_1EBDD97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD97C0);
  }

  return result;
}

uint64_t sub_1BF4641D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BF4E9734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168436574617473 && a2 == 0xEC0000007365676ELL || (sub_1BF4E9734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737472656C61 && a2 == 0xE600000000000000 || (sub_1BF4E9734() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1819047270 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BF4E9734();

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

uint64_t sub_1BF464338(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BF4E9734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xEA00000000004449 || (sub_1BF4E9734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644974736F68 && a2 == 0xEC00000079746974 || (sub_1BF4E9734() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xED000072656E774FLL || (sub_1BF4E9734() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (sub_1BF4E9734() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x796C696D6166 && a2 == 0xE600000000000000 || (sub_1BF4E9734() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BF4FBF10 == a2 || (sub_1BF4E9734() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    return 7;
  }

  else
  {
    v6 = sub_1BF4E9734();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t ExtensionMetadata.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ExtensionMetadata.id.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ExtensionMetadata.version.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtensionMetadata(0) + 20));

  return v1;
}

uint64_t ExtensionMetadata.version.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ExtensionMetadata(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double ExtensionMetadata.widgetDescriptors.getter()
{
  type metadata accessor for ExtensionMetadata(0);

  return result;
}

uint64_t ExtensionMetadata.widgetDescriptors.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExtensionMetadata(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

double ExtensionMetadata.controlDescriptors.getter()
{
  type metadata accessor for ExtensionMetadata(0);

  return result;
}

uint64_t ExtensionMetadata.controlDescriptors.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExtensionMetadata(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ExtensionMetadata.originOSVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtensionMetadata(0) + 32));

  return v1;
}

uint64_t ExtensionMetadata.originOSVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ExtensionMetadata(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t ExtensionMetadata.allDescriptors.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ExtensionMetadata(0);
  v3 = *(v0 + v2[6]);
  if (v3 >> 62)
  {
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

    v7 = sub_1BF4E9474();

    v3 = v7;
  }

  else
  {

    sub_1BF4E9754();
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
  }

  v4 = *(v1 + v2[7]);
  if (v4 >> 62)
  {
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

    v8 = sub_1BF4E9474();

    v4 = v8;
  }

  else
  {

    sub_1BF4E9754();
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
  }

  sub_1BF44BBA4(v4);
  v5 = *(v1 + v2[9]);
  if (v5 >> 62)
  {
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

    v9 = sub_1BF4E9474();

    v5 = v9;
  }

  else
  {

    sub_1BF4E9754();
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
  }

  sub_1BF44BBA4(v5);
  return v3;
}

double ExtensionMetadata.activityDescriptors.getter()
{
  type metadata accessor for ExtensionMetadata(0);

  return result;
}

uint64_t ExtensionMetadata.activityDescriptors.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExtensionMetadata(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ExtensionMetadata.init(id:version:originOSVersion:widgetDescriptors:controlDescriptors:activityDescriptors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = type metadata accessor for ExtensionMetadata(0);
  v18 = (a9 + v17[8]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  result = (*(*(v19 - 8) + 32))(a9, a1, v19);
  v21 = (a9 + v17[5]);
  *v21 = a2;
  v21[1] = a3;
  *v18 = a4;
  v18[1] = a5;
  *(a9 + v17[6]) = a6;
  *(a9 + v17[9]) = a8;
  *(a9 + v17[7]) = a7;
  return result;
}

uint64_t sub_1BF464DC0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_1BF464E78(uint64_t a1)
{
  sub_1BF464F94(319);
  if (v1 <= 0x3F)
  {
    sub_1BF4650DC(319, &qword_1EDC963D8, &unk_1EDC9D6D8, 0x1E6994388);
    if (v2 <= 0x3F)
    {
      sub_1BF4650DC(319, &qword_1EDC963C8, &qword_1EDC96348, 0x1E6994248);
      if (v3 <= 0x3F)
      {
        sub_1BF3B9B04();
        if (v4 <= 0x3F)
        {
          sub_1BF4650DC(319, &qword_1EDC963C0, &qword_1EDC96310, 0x1E6994358);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BF464F94(uint64_t a1)
{
  if (!qword_1EDC9D520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    sub_1BF38C8B4(&qword_1EDC9D598, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940B0]);
    sub_1BF38C8B4(&qword_1EDC9D570, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940D8]);
    sub_1BF38C8B4(&qword_1EDC9D590, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940B8]);
    sub_1BF38C8B4(&qword_1EDC9D588, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940C0]);
    v1 = sub_1BF4E77D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC9D520);
    }
  }
}

void sub_1BF4650DC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1BF3901C0(255, a3, a4);
    v5 = sub_1BF4E8CA4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BF465134()
{
  v0 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v0, qword_1EBDE1E88);
  __swift_project_value_buffer(v0, qword_1EBDE1E88);
  return sub_1BF4E7B44();
}

uint64_t Preferences.isAnyDiagnosticEnabled.getter()
{
  if (sub_1BF4E7594() & 1) != 0 || (sub_1BF4E75A4())
  {
    return 1;
  }

  return sub_1BF4E75C4();
}

void sub_1BF4651F4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v1 = [v0 processName];

  v2 = sub_1BF4E8914();
  v4 = v3;

  qword_1EBDD97D8 = v2;
  unk_1EBDD97E0 = v4;
}

uint64_t WidgetDiagnosticTriggers.isEnabled.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97E8, &unk_1BF4F29E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v53 - v2;
  v4 = *v0;
  sub_1BF4E75F4();
  sub_1BF4E75E4();
  if (sub_1BF4E7594() & 1) != 0 || (sub_1BF4E75A4())
  {
  }

  else
  {
    v35 = sub_1BF4E75C4();

    if ((v35 & 1) == 0)
    {
      if (qword_1EBDD8538 != -1)
      {
        swift_once();
      }

      v36 = sub_1BF4E7B54();
      __swift_project_value_buffer(v36, qword_1EBDE1E88);
      v8 = sub_1BF4E7B34();
      v9 = sub_1BF4E8E44();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_50;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v54 = v11;
      *v10 = 136446210;
      v37 = "staleIntervalLapsed";
      v38 = 0xD000000000000011;
      if (v4 != 1)
      {
        v38 = 0xD000000000000013;
        v37 = "interactionFailed";
      }

      if (v4)
      {
        v39 = v38;
      }

      else
      {
        v39 = 0xD000000000000013;
      }

      if (v4)
      {
        v40 = v37;
      }

      else
      {
        v40 = "idealizedDateComponents";
      }

      v41 = sub_1BF38D65C(v39, v40 | 0x8000000000000000, &v54);

      *(v10 + 4) = v41;
      v17 = "[%{public}s] All diagnostics are disabled.";
LABEL_48:
      _os_log_impl(&dword_1BF389000, v8, v9, v17, v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1BFB5A5D0](v11, -1, -1);
      v42 = v10;
LABEL_49:
      MEMORY[0x1BFB5A5D0](v42, -1, -1);
LABEL_50:

      return 0;
    }
  }

  static BootSession.UUID.getter(v3);
  v5 = sub_1BF4E7394();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1BF38C9B4(v3, &qword_1EBDD97E8, &unk_1BF4F29E0);
    if (qword_1EBDD8538 != -1)
    {
      swift_once();
    }

    v7 = sub_1BF4E7B54();
    __swift_project_value_buffer(v7, qword_1EBDE1E88);
    v8 = sub_1BF4E7B34();
    v9 = sub_1BF4E8E44();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_50;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v54 = v11;
    *v10 = 136446210;
    v12 = "staleIntervalLapsed";
    v13 = 0xD000000000000011;
    if (v4 != 1)
    {
      v13 = 0xD000000000000013;
      v12 = "interactionFailed";
    }

    if (v4)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0xD000000000000013;
    }

    if (v4)
    {
      v15 = v12;
    }

    else
    {
      v15 = "idealizedDateComponents";
    }

    v16 = sub_1BF38D65C(v14, v15 | 0x8000000000000000, &v54);

    *(v10 + 4) = v16;
    v17 = "[%{public}s] Failed to get boot session.";
    goto LABEL_48;
  }

  v18 = sub_1BF4E7354();
  v20 = v19;
  (*(v6 + 8))(v3, v5);
  v21 = "idealizedDateComponents";
  sub_1BF4E75E4();
  v22 = "staleIntervalLapsed";
  if (v4 == 1)
  {
    v23 = 0xD000000000000011;
  }

  else
  {
    v23 = 0xD000000000000013;
  }

  v53 = "staleIntervalLapsed";
  if (v4 != 1)
  {
    v22 = "interactionFailed";
  }

  if (v4)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0xD000000000000013;
  }

  if (v4)
  {
    v21 = v22;
  }

  v25 = sub_1BF4E7584();

  if (!*(v25 + 16))
  {

    goto LABEL_52;
  }

  v27 = sub_1BF3CD5D0(v24, v21 | 0x8000000000000000, v26);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
LABEL_52:

    return 1;
  }

  v30 = (*(v25 + 56) + 16 * v27);
  v32 = *v30;
  v31 = v30[1];

  if (v32 == v18 && v31 == v20)
  {

LABEL_55:
    if (qword_1EBDD8538 != -1)
    {
      swift_once();
    }

    v44 = sub_1BF4E7B54();
    __swift_project_value_buffer(v44, qword_1EBDE1E88);
    v8 = sub_1BF4E7B34();
    v45 = sub_1BF4E8E44();
    if (!os_log_type_enabled(v8, v45))
    {
      goto LABEL_50;
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v54 = v47;
    *v46 = 136446210;
    if (v4 == 1)
    {
      v48 = 0xD000000000000011;
    }

    else
    {
      v48 = 0xD000000000000013;
    }

    v49 = v53;
    if (v4 != 1)
    {
      v49 = "interactionFailed";
    }

    if (v4)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0xD000000000000013;
    }

    if (v4)
    {
      v51 = v49;
    }

    else
    {
      v51 = "idealizedDateComponents";
    }

    v52 = sub_1BF38D65C(v50, v51 | 0x8000000000000000, &v54);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_1BF389000, v8, v45, "[%{public}s] Already prompted in this boot session.", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x1BFB5A5D0](v47, -1, -1);
    v42 = v46;
    goto LABEL_49;
  }

  v34 = sub_1BF4E9734();

  if (v34)
  {
    goto LABEL_55;
  }

  return 1;
}

void WidgetDiagnosticTriggers.errorStateTriggered(widget:succinctTitle:succinctDescription:fullDescription:timeOfIssue:remoteDeviceIDs:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *v9;
  v24 = [a1 extensionIdentity];
  v16 = [a1 kind];
  v17 = sub_1BF4E8914();
  v19 = v18;

  v20 = [a1 intentReference];
  v26 = v15;
  v25[0] = v24;
  v25[1] = v17;
  v25[2] = v19;
  v25[3] = v20;
  WidgetDiagnosticTriggers.errorStateTriggered(timelineKey:succinctTitle:succinctDescription:fullDescription:timeOfIssue:remoteDeviceIDs:)(v25, a2, a3, a4, a5, a6, a7, a8, a9);
}

void WidgetDiagnosticTriggers.errorStateTriggered(timelineKey:succinctTitle:succinctDescription:fullDescription:timeOfIssue:remoteDeviceIDs:)(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v141 = a7;
  v142 = a8;
  v140 = a6;
  v147 = a5;
  v135 = a4;
  v137 = a2;
  v138 = a3;
  v11 = sub_1BF4E7334();
  v145 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v133 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v134 = &v125 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v132 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v143 = &v125 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v125 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v139 = &v125 - v23;
  v144 = type metadata accessor for TapToRadarDraft(0);
  MEMORY[0x1EEE9AC00](v144);
  v131 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v125 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97E8, &unk_1BF4F29E0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v125 - v29;
  v31 = *a1;
  v32 = a1[1];
  v136 = a1[2];
  v33 = *v9;
  LOBYTE(aBlock) = *v9;
  if (WidgetDiagnosticTriggers.isEnabled.getter())
  {
    v34 = sub_1BF4E75F4();
    sub_1BF4E75E4();
    if (sub_1BF4E7594() & 1) != 0 || (sub_1BF4E75A4())
    {
    }

    else
    {
      v83 = sub_1BF4E75C4();

      if ((v83 & 1) == 0)
      {
        return;
      }
    }

    v128 = v11;
    v146 = v34;
    v127 = v21;
    v35 = 0xD000000000000013;
    v130 = [v31 isRemote];
    static BootSession.UUID.getter(v30);
    v36 = sub_1BF4E7394();
    v37 = *(v36 - 8);
    v38 = (*(v37 + 48))(v30, 1, v36);
    v129 = v31;
    if (v38 == 1)
    {
      sub_1BF38C9B4(v30, &qword_1EBDD97E8, &unk_1BF4F29E0);
    }

    else
    {
      v126 = v32;
      v39 = v33;
      v40 = sub_1BF4E7354();
      v42 = v41;
      (*(v37 + 8))(v30, v36);
      sub_1BF4E75E4();
      v43 = "staleIntervalLapsed";
      v44 = 0xD000000000000011;
      if (v39 != 1)
      {
        v44 = 0xD000000000000013;
        v43 = "interactionFailed";
      }

      v45 = v39;
      if (v39)
      {
        v46 = v44;
      }

      else
      {
        v46 = 0xD000000000000013;
      }

      if (v39)
      {
        v47 = v43;
      }

      else
      {
        v47 = "idealizedDateComponents";
      }

      v48 = sub_1BF4E7574();
      v50 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v148 = *v50;
      *v50 = 0x8000000000000000;
      sub_1BF3D76F4(v40, v42, v46, v47 | 0x8000000000000000, isUniquelyReferenced_nonNull_native, v52);

      *v50 = v148;
      v48(&aBlock, 0);

      v32 = v126;
      v33 = v45;
      v35 = 0xD000000000000013;
    }

    sub_1BF4E75E4();
    v53 = sub_1BF4E7594();

    v54 = v147;
    if (v53)
    {
      if (qword_1EBDD8538 != -1)
      {
        swift_once();
      }

      v55 = sub_1BF4E7B54();
      __swift_project_value_buffer(v55, qword_1EBDE1E88);

      v56 = sub_1BF4E7B34();
      v57 = sub_1BF4E8E74();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = v32;
        v59 = v54;
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        aBlock = v61;
        *v60 = 136446210;
        v62 = v59;
        v32 = v58;
        v35 = 0xD000000000000013;
        *(v60 + 4) = sub_1BF38D65C(v135, v62, &aBlock);
        _os_log_impl(&dword_1BF389000, v56, v57, "%{public}s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        MEMORY[0x1BFB5A5D0](v61, -1, -1);
        MEMORY[0x1BFB5A5D0](v60, -1, -1);
      }
    }

    sub_1BF4E75E4();
    v63 = sub_1BF4E75A4();

    if ((v63 & 1) == 0)
    {
LABEL_44:
      sub_1BF4E75E4();
      v115 = sub_1BF4E75C4();

      if ((v115 & 1) == 0)
      {
        return;
      }

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
      v116 = sub_1BF4E76B4();
      v118 = v117;
      swift_endAccess();
      aBlock = 0;
      v150 = 0xE000000000000000;
      sub_1BF4E92E4();

      aBlock = 0xD00000000000001ELL;
      v150 = 0x80000001BF4F9960;
      if (v33)
      {
        if (v33 == 1)
        {
          v119 = "staleIntervalLapsed";
          v35 = 0xD000000000000011;
          goto LABEL_51;
        }

        v120 = "interactionTimedOut";
      }

      else
      {
        v120 = "staleIntervalLapsed";
      }

      v119 = v120 - 32;
LABEL_51:
      MEMORY[0x1BFB58C90](v35, v119 | 0x8000000000000000);

      v121 = swift_allocObject();
      *(v121 + 16) = v130;
      *(v121 + 24) = v116;
      *(v121 + 32) = v118;
      *(v121 + 40) = v32;
      *(v121 + 48) = v136;

      if (sub_1BF3F34B4())
      {
      }

      else
      {
        v122 = sub_1BF4E88E4();

        v123 = swift_allocObject();
        *(v123 + 16) = sub_1BF3F377C;
        *(v123 + 24) = v121;
        v153 = sub_1BF4671D4;
        v154 = v123;
        aBlock = MEMORY[0x1E69E9820];
        v150 = 1107296256;
        v151 = sub_1BF3F3410;
        v152 = &block_descriptor_8;
        v124 = _Block_copy(&aBlock);

        AnalyticsSendEventLazy();

        _Block_release(v124);
      }

      return;
    }

    if (qword_1EBDD8538 != -1)
    {
      swift_once();
    }

    v64 = sub_1BF4E7B54();
    v147 = __swift_project_value_buffer(v64, qword_1EBDE1E88);
    v65 = sub_1BF4E7B34();
    v66 = sub_1BF4E8E84();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1BF389000, v65, v66, "Prompting for TTR.", v67, 2u);
      MEMORY[0x1BFB5A5D0](v67, -1, -1);
    }

    v68 = v33;
    v69 = v32;

    sub_1BF443FBC(v27);
    if (qword_1EBDD8530 != -1)
    {
      swift_once();
    }

    v70 = qword_1EBDE1E70;
    v71 = unk_1EBDE1E78;
    v72 = qword_1EBDE1E80;
    v73 = *(v27 + 4);
    v74 = *(v27 + 5);
    v75 = *(v27 + 6);
    v76 = *(v27 + 7);
    v77 = *(v27 + 8);
    *(v27 + 2) = xmmword_1EBDE1E60;
    *(v27 + 6) = v70;
    *(v27 + 7) = v71;
    *(v27 + 8) = v72;

    sub_1BF4671DC(v73, v74, v75, v76, v77);
    v27[88] = 5;
    v27[112] = 5;
    v78 = v138;
    *(v27 + 17) = v137;
    *(v27 + 18) = v78;

    v79 = v141;
    *(v27 + 21) = v140;
    *(v27 + 22) = v79;

    if (v130)
    {
      v32 = v69;
      v33 = v68;
      v80 = v144;
      v81 = v145;
      v82 = v143;
      if (!a9)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v32 = v69;
      v33 = v68;
      v80 = v144;
      v81 = v145;
      v82 = v143;
      if (!a9 || !*(a9 + 16))
      {
        goto LABEL_38;
      }
    }

    *&v27[v80[16] + 16] = a9;

LABEL_37:
    v84 = &v27[v80[17]];

    *(v84 + 2) = &unk_1F3DED390;
LABEL_38:
    v27[v80[20] + 16] = 1;
    v85 = v139;
    v86 = v128;
    (*(v81 + 16))(v139, v142, v128);
    (*(v81 + 56))(v85, 0, 1, v86);
    v87 = v80[11];
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80);
    sub_1BF3AC398(v85, &v27[v87 + *(v88 + 36)]);
    TapToRadarDraft.url.getter(v82);
    v89 = sub_1BF4E7194();
    v90 = v82;
    v91 = *(v89 - 8);
    (*(v91 + 56))(v90, 0, 1, v89);
    v92 = v127;
    sub_1BF39D6DC(v90, v127);
    v93 = [objc_allocWithZone(MEMORY[0x1E6983220]) init];
    v94 = sub_1BF4E88E4();
    [v93 setTitle_];

    v95 = sub_1BF4E88E4();
    [v93 setBody_];

    if (qword_1EBDD8540 != -1)
    {
      swift_once();
    }

    v96 = sub_1BF4E88E4();
    [v93 setThreadIdentifier_];

    [v93 setInterruptionLevel_];
    v97 = v92;
    v98 = v132;
    sub_1BF3E90C8(v97, v132);
    if ((*(v91 + 48))(v98, 1, v89) == 1)
    {
      v99 = 0;
    }

    else
    {
      v99 = sub_1BF4E7094();
      (*(v91 + 8))(v98, v89);
    }

    [v93 setDefaultActionURL_];

    [v93 setShouldSuppressScreenLightUp_];
    v100 = v133;
    _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
    v101 = v134;
    sub_1BF4E7284();
    v102 = *(v81 + 8);
    v103 = v100;
    v104 = v128;
    v102(v103, v128);
    v105 = sub_1BF4E7254();
    v102(v101, v104);
    [v93 setExpirationDate_];

    v35 = 0xD000000000000013;
    v106 = sub_1BF4E88E4();
    v107 = [objc_opt_self() iconForApplicationIdentifier_];

    [v93 setIcon_];
    v108 = v93;
    v109 = sub_1BF4E88E4();

    v110 = [objc_opt_self() requestWithIdentifier:v109 content:v108 trigger:0];

    v111 = objc_allocWithZone(MEMORY[0x1E6983308]);
    v112 = sub_1BF4E88E4();
    v113 = [v111 initWithBundleIdentifier_];

    v153 = sub_1BF466B1C;
    v154 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v150 = 1107296256;
    v151 = sub_1BF466D6C;
    v152 = &block_descriptor_6;
    v114 = _Block_copy(&aBlock);
    [v113 addNotificationRequest:v110 withCompletionHandler:v114];
    _Block_release(v114);

    sub_1BF38C9B4(v127, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    sub_1BF467220(v27);
    goto LABEL_44;
  }
}

void sub_1BF466B1C(NSObject *a1)
{
  if (!a1)
  {
    if (qword_1EBDD8538 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF4E7B54();
    __swift_project_value_buffer(v10, qword_1EBDE1E88);
    oslog = sub_1BF4E7B34();
    v11 = sub_1BF4E8E84();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BF389000, oslog, v11, "TTR request notification posted.", v12, 2u);
      MEMORY[0x1BFB5A5D0](v12, -1, -1);
    }

    goto LABEL_10;
  }

  v2 = a1;
  if (qword_1EBDD8538 != -1)
  {
    swift_once();
  }

  v3 = sub_1BF4E7B54();
  __swift_project_value_buffer(v3, qword_1EBDE1E88);
  v4 = a1;
  oslog = sub_1BF4E7B34();
  v5 = sub_1BF4E8E64();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BF389000, oslog, v5, "Error posting TTR request notification: %{public}@", v6, 0xCu);
    sub_1BF38C9B4(v7, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v7, -1, -1);
    MEMORY[0x1BFB5A5D0](v6, -1, -1);

LABEL_10:
    v13 = oslog;

    goto LABEL_12;
  }

  v13 = a1;

LABEL_12:
}

void sub_1BF466D6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

unint64_t WidgetDiagnosticTriggers.Identifier.description.getter()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

ChronoKit::WidgetDiagnosticTriggers::Identifier_optional __swiftcall WidgetDiagnosticTriggers.Identifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF4E9514();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BF466E98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "staleIntervalLapsed";
  v4 = 0xD000000000000011;
  if (v2 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v2 == 1)
  {
    v6 = "staleIntervalLapsed";
  }

  else
  {
    v6 = "interactionFailed";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "idealizedDateComponents";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000013;
    v3 = "interactionFailed";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000013;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "idealizedDateComponents";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BF4E9734();
  }

  return v11 & 1;
}

uint64_t sub_1BF466F6C(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF467004(uint64_t a1)
{
  sub_1BF4E89F4();
}

uint64_t sub_1BF467088(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

void sub_1BF467128(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = "staleIntervalLapsed";
  v4 = 0xD000000000000011;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000013;
    v3 = "interactionFailed";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "idealizedDateComponents";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_1BF467180()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

void sub_1BF4671DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

uint64_t sub_1BF467220(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF46727C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BF4672E4()
{
  result = qword_1EBDD97F0;
  if (!qword_1EBDD97F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD97F0);
  }

  return result;
}

uint64_t sub_1BF467364()
{
  v0 = swift_allocObject();
  sub_1BF467770();
  return v0;
}

uint64_t sub_1BF4673F0(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  swift_allocObject();
  result = sub_1BF4E7C34();
  *a2 = result;
  return result;
}

_OWORD *sub_1BF46743C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9820, &qword_1BF4F2E08);
  result = swift_initStackObject();
  result[1] = xmmword_1BF4F2B20;
  v1 = *MEMORY[0x1E69E4CF0];
  if (!*MEMORY[0x1E69E4CF0])
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v2 = result;
  *(result + 4) = v1;
  v3 = qword_1EDC979B8;
  result = v1;
  if (v3 != -1)
  {
    result = swift_once();
  }

  v2[5] = qword_1EDC979C0;
  v4 = *MEMORY[0x1E69E4DD8];
  if (!*MEMORY[0x1E69E4DD8])
  {
    goto LABEL_23;
  }

  v2[6] = v4;
  v5 = qword_1EDC97A40;
  v6 = v4;

  if (v5 != -1)
  {
    result = swift_once();
  }

  v2[7] = qword_1EDC97A48;
  v7 = *MEMORY[0x1E69E4EB8];
  if (!*MEMORY[0x1E69E4EB8])
  {
    goto LABEL_24;
  }

  v2[8] = v7;
  v8 = qword_1EDC97A28;
  v9 = v7;

  if (v8 != -1)
  {
    result = swift_once();
  }

  v2[9] = qword_1EDC97A30;
  v10 = *MEMORY[0x1E69E4D00];
  if (!*MEMORY[0x1E69E4D00])
  {
    goto LABEL_25;
  }

  v2[10] = v10;
  v11 = qword_1EDC979F0;
  v12 = v10;

  if (v11 != -1)
  {
    result = swift_once();
  }

  v2[11] = qword_1EDC979F8;
  v13 = *MEMORY[0x1E69E4CE0];
  if (!*MEMORY[0x1E69E4CE0])
  {
    goto LABEL_26;
  }

  v2[12] = v13;
  v14 = qword_1EDC979D8;
  v15 = v13;

  if (v14 != -1)
  {
    result = swift_once();
  }

  v2[13] = qword_1EDC979E0;
  v16 = *MEMORY[0x1E69E4D10];
  if (!*MEMORY[0x1E69E4D10])
  {
    goto LABEL_27;
  }

  v2[14] = v16;
  v17 = qword_1EDC97A00;
  v18 = v16;

  if (v17 != -1)
  {
    swift_once();
  }

  v2[15] = qword_1EDC97A08;

  v2[16] = sub_1BF4E88E4();
  if (qword_1EDC979C8 != -1)
  {
    swift_once();
  }

  v2[17] = qword_1EDC979D0;

  v19 = sub_1BF3DAAD4(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9828, &unk_1BF4F2E10);
  result = swift_arrayDestroy();
  off_1EDC97A18 = v19;
  return result;
}

uint64_t sub_1BF467770()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97F8, &unk_1BF4F2B88);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v153 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95E8, &qword_1BF4F1CB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v168 = &v153 - v7;
  v169 = sub_1BF4E8F14();
  v171 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v166 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9800, &unk_1BF4F2B98);
  v172 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v167 = &v153 - v9;
  *(v0 + OBJC_IVAR____TtC9ChronoKit28IOSSystemEnvironmentProvider_subscriptions) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC9ChronoKit28IOSSystemEnvironmentProvider_colorSchemeObserver) = 0;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  swift_allocObject();
  *(v0 + 16) = sub_1BF4E7C34();
  type metadata accessor for UnfairLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = v11;
  *(v1 + 24) = v10;
  sub_1BF4E7F54();
  v12 = objc_opt_self();

  v13 = [v12 mainScreen];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    v16 = [v15 displayConfiguration];
    if (v16)
    {
      v17 = v16;
      KeyPath = swift_getKeyPath();
      v19 = v17;
      sub_1BF46C044(0xD000000000000018, 0x80000001BF4FC110, KeyPath, v1, v19);

      goto LABEL_13;
    }
  }

  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v20 = sub_1BF4E7B54();
  __swift_project_value_buffer(v20, qword_1EDCA6AA8);
  v21 = sub_1BF4E7B34();
  v22 = sub_1BF4E8E64();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1BF389000, v21, v22, "UIScreen.main or its displayConfiguration was nil", v23, 2u);
    MEMORY[0x1BFB5A5D0](v23, -1, -1);
  }

  v24 = [objc_opt_self() displays];
  v25 = sub_1BF4E8BA4();

  if (!*(v25 + 16))
  {
    v150 = sub_1BF4E7B34();
    v151 = sub_1BF4E8E64();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      *v152 = 0;
      _os_log_impl(&dword_1BF389000, v150, v151, "CA reports no displays; exiting cleanly", v152, 2u);
      MEMORY[0x1BFB5A5D0](v152, -1, -1);
    }

    exit(0);
  }

  v26 = sub_1BF4E7B34();
  v27 = sub_1BF4E8E64();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1BF389000, v26, v27, "Falling back to FBSDisplayMonitor mainConfiguration", v28, 2u);
    MEMORY[0x1BFB5A5D0](v28, -1, -1);
  }

  v29 = [objc_allocWithZone(MEMORY[0x1E699FB10]) init];
  v30 = [v29 mainConfiguration];
  v31 = swift_getKeyPath();
  v19 = v30;
  sub_1BF46C044(0xD000000000000018, 0x80000001BF4FC110, v31, v1, v19);

LABEL_13:

  if (qword_1EDC97A10 == -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    swift_once();
LABEL_14:
    v154 = v5;
    v155 = v3;
    v156 = v2;
    v157 = v14;
    swift_beginAccess();
    if ((off_1EDC97A18 & 0xC000000000000001) != 0)
    {
      v32 = 0;
      v33 = 0;
      v5 = 0;
      v34 = sub_1BF4E9414() | 0x8000000000000000;
    }

    else
    {
      v35 = -1 << *(off_1EDC97A18 + 32);
      v33 = ~v35;
      v32 = off_1EDC97A18 + 64;
      v36 = -v35;
      v37 = v36 < 64 ? ~(-1 << v36) : -1;
      v5 = (v37 & *(off_1EDC97A18 + 8));
      v34 = off_1EDC97A18;
    }

    v38 = 0;
    v165 = v33;
    v39 = (v33 + 64) >> 6;
    if ((v34 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_21:
    v40 = v38;
    v41 = v5;
    v14 = v38;
    if (v5)
    {
LABEL_25:
      v2 = (v41 - 1) & v41;
      v42 = (v14 << 9) | (8 * __clz(__rbit64(v41)));
      v3 = *(*(v34 + 56) + v42);
      v43 = *(*(v34 + 48) + v42);

      if (v43)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    while (1)
    {
      v14 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v14 >= v39)
      {
        goto LABEL_31;
      }

      v41 = *&v32[8 * v14];
      ++v40;
      if (v41)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v44 = sub_1BF4E9444();
    if (!v44)
    {
      break;
    }

    v46 = v45;
    v175 = v44;
    type metadata accessor for CFString(0);
    swift_dynamicCast();
    v43 = aBlock[0];
    v175 = v46;
    swift_dynamicCast();
    v3 = aBlock[0];
    v14 = v38;
    v2 = v5;
    if (!v43)
    {
      break;
    }

LABEL_29:

    v47 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v47, 0, sub_1BF4698DC, v43, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v38 = v14;
    v5 = v2;
    if ((v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_31:
  sub_1BF39A9CC(v34);
  if (qword_1EDC979B8 != -1)
  {
    swift_once();
  }

  v48 = qword_1EDC979C0;
  v49 = swift_allocObject();
  swift_weakInit();
  aBlock[0] = v48;

  v50 = v166;
  sub_1BF4E8F04();
  sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
  v51 = sub_1BF4E8F34();
  v175 = v51;
  v52 = sub_1BF4E8EF4();
  v53 = *(v52 - 8);
  v54 = *(v53 + 56);
  v55 = v168;
  v165 = v52;
  v164 = v54;
  v163 = v53 + 56;
  (v54)(v168, 1, 1);
  v56 = sub_1BF38C8B4(&unk_1EDC9FD80, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF88]);
  v57 = sub_1BF45EB9C();
  v58 = v167;
  v162 = v56;
  v161 = v57;
  sub_1BF4E7CF4();
  sub_1BF38C9B4(v55, &qword_1EBDD95E8, &qword_1BF4F1CB0);

  v59 = *(v171 + 8);
  v171 += 8;
  v160 = v59;
  v59(v50, v169);
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1BF46C3D4;
  *(v60 + 24) = v49;
  v61 = sub_1BF38C8B4(&qword_1EDC9D428, &qword_1EBDD9800, &unk_1BF4F2B98, MEMORY[0x1E695BE50]);

  v62 = v170;
  v159 = v61;
  sub_1BF4E7D14();

  v63 = *(v172 + 8);
  v172 += 8;
  v158 = v63;
  v63(v58, v62);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v65 = Strong;
    v66 = swift_getKeyPath();
    sub_1BF46AA50(0xD000000000000027, 0x80000001BF4FC130, v66, v65, MEMORY[0x1E69E4B58]);
  }

  if (qword_1EDC97A40 != -1)
  {
    swift_once();
  }

  v67 = qword_1EDC97A48;
  v68 = swift_allocObject();
  swift_weakInit();
  aBlock[0] = v67;

  v69 = v166;
  sub_1BF4E8F04();
  v70 = sub_1BF4E8F34();
  aBlock[19] = v70;
  v71 = v168;
  v164(v168, 1, 1, v165);
  v72 = v167;
  sub_1BF4E7CF4();
  sub_1BF38C9B4(v71, &qword_1EBDD95E8, &qword_1BF4F1CB0);

  v160(v69, v169);
  v73 = swift_allocObject();
  *(v73 + 16) = sub_1BF46C3DC;
  *(v73 + 24) = v68;

  v74 = v170;
  sub_1BF4E7D14();

  v158(v72, v74);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  swift_beginAccess();
  v75 = swift_weakLoadStrong();
  if (v75)
  {
    v76 = v75;
    v77 = swift_getKeyPath();
    sub_1BF46AA50(0xD00000000000001ALL, 0x80000001BF4FC160, v77, v76, MEMORY[0x1E69E4B68]);
  }

  if (qword_1EDC97A28 != -1)
  {
    swift_once();
  }

  v78 = qword_1EDC97A30;
  v79 = swift_allocObject();
  swift_weakInit();
  aBlock[0] = v78;

  v80 = v166;
  sub_1BF4E8F04();
  v81 = sub_1BF4E8F34();
  aBlock[16] = v81;
  v82 = v168;
  v164(v168, 1, 1, v165);
  v83 = v167;
  sub_1BF4E7CF4();
  sub_1BF38C9B4(v82, &qword_1EBDD95E8, &qword_1BF4F1CB0);

  v160(v80, v169);
  v84 = swift_allocObject();
  *(v84 + 16) = sub_1BF46C3E4;
  *(v84 + 24) = v79;

  v85 = v170;
  sub_1BF4E7D14();

  v158(v83, v85);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  swift_beginAccess();
  v86 = swift_weakLoadStrong();
  if (v86)
  {
    v87 = v86;
    v88 = swift_getKeyPath();
    sub_1BF46AA50(0xD00000000000001ALL, 0x80000001BF4FC180, v88, v87, MEMORY[0x1E69E4B70]);
  }

  if (qword_1EDC979F0 != -1)
  {
    swift_once();
  }

  v89 = qword_1EDC979F8;
  v90 = swift_allocObject();
  swift_weakInit();
  aBlock[0] = v89;

  v91 = v166;
  sub_1BF4E8F04();
  v92 = sub_1BF4E8F34();
  aBlock[13] = v92;
  v93 = v168;
  v164(v168, 1, 1, v165);
  v94 = v167;
  sub_1BF4E7CF4();
  sub_1BF38C9B4(v93, &qword_1EBDD95E8, &qword_1BF4F1CB0);

  v160(v91, v169);
  v95 = swift_allocObject();
  *(v95 + 16) = sub_1BF46C3EC;
  *(v95 + 24) = v90;

  v96 = v170;
  sub_1BF4E7D14();

  v158(v94, v96);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  swift_beginAccess();
  v97 = swift_weakLoadStrong();
  if (v97)
  {
    v98 = v97;
    v99 = swift_getKeyPath();
    sub_1BF46AA50(0xD000000000000020, 0x80000001BF4FC1A0, v99, v98, MEMORY[0x1E69E4B60]);
  }

  if (qword_1EDC979D8 != -1)
  {
    swift_once();
  }

  v100 = qword_1EDC979E0;
  v101 = swift_allocObject();
  swift_weakInit();
  aBlock[0] = v100;

  v102 = v166;
  sub_1BF4E8F04();
  v103 = sub_1BF4E8F34();
  aBlock[10] = v103;
  v104 = v168;
  v164(v168, 1, 1, v165);
  v105 = v167;
  sub_1BF4E7CF4();
  sub_1BF38C9B4(v104, &qword_1EBDD95E8, &qword_1BF4F1CB0);

  v160(v102, v169);
  v106 = swift_allocObject();
  *(v106 + 16) = sub_1BF46C3F4;
  *(v106 + 24) = v101;

  v107 = v170;
  sub_1BF4E7D14();

  v158(v105, v107);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  swift_beginAccess();
  v108 = swift_weakLoadStrong();
  if (v108)
  {
    v109 = v108;
    v110 = swift_getKeyPath();
    sub_1BF46B43C(0xD000000000000014, 0x80000001BF4FC1D0, v110, v109);
  }

  if (qword_1EDC97A00 != -1)
  {
    swift_once();
  }

  v111 = qword_1EDC97A08;
  v112 = swift_allocObject();
  swift_weakInit();
  aBlock[0] = v111;

  v113 = v166;
  sub_1BF4E8F04();
  v114 = sub_1BF4E8F34();
  aBlock[7] = v114;
  v115 = v168;
  v164(v168, 1, 1, v165);
  v116 = v167;
  sub_1BF4E7CF4();
  sub_1BF38C9B4(v115, &qword_1EBDD95E8, &qword_1BF4F1CB0);

  v160(v113, v169);
  v117 = swift_allocObject();
  *(v117 + 16) = sub_1BF46C3FC;
  *(v117 + 24) = v112;

  v118 = v170;
  sub_1BF4E7D14();

  v158(v116, v118);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  swift_beginAccess();
  v119 = swift_weakLoadStrong();
  if (v119)
  {
    v120 = v119;
    v121 = swift_getKeyPath();
    sub_1BF46B93C(0xD000000000000010, 0x80000001BF4FC1F0, v121, v120);
  }

  if (qword_1EDC979C8 != -1)
  {
    swift_once();
  }

  v122 = qword_1EDC979D0;
  v123 = swift_allocObject();
  swift_weakInit();
  aBlock[0] = v122;

  v124 = v166;
  sub_1BF4E8F04();
  v125 = sub_1BF4E8F34();
  aBlock[6] = v125;
  v126 = v168;
  v164(v168, 1, 1, v165);
  v127 = v167;
  sub_1BF4E7CF4();
  sub_1BF38C9B4(v126, &qword_1EBDD95E8, &qword_1BF4F1CB0);

  v160(v124, v169);
  v128 = swift_allocObject();
  *(v128 + 16) = sub_1BF46C404;
  *(v128 + 24) = v123;

  v129 = v170;
  sub_1BF4E7D14();

  v158(v127, v129);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  sub_1BF469DBC(v123);

  v130 = swift_allocObject();
  swift_weakInit();
  v131 = qword_1EDC99408;

  if (v131 != -1)
  {
    swift_once();
  }

  aBlock[0] = qword_1EDC99410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9808, &qword_1BF4F7200);
  sub_1BF38C8B4(&qword_1EDC9D3B8, &qword_1EBDD9808, &qword_1BF4F7200, MEMORY[0x1E695BF88]);
  aBlock[0] = sub_1BF4E7C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9810, &qword_1BF4F2D00);
  v132 = MEMORY[0x1E695BED8];
  sub_1BF38C8B4(&qword_1EDC9D3E8, &qword_1EBDD9810, &qword_1BF4F2D00, MEMORY[0x1E695BED8]);
  v133 = v154;
  sub_1BF4E7CD4();

  v134 = swift_allocObject();
  *(v134 + 16) = sub_1BF46C40C;
  *(v134 + 24) = v130;
  sub_1BF38C8B4(&qword_1EDC9D440, &qword_1EBDD97F8, &unk_1BF4F2B88, MEMORY[0x1E695BDE0]);

  v135 = v156;
  sub_1BF4E7D14();

  (*(v155 + 8))(v133, v135);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  sub_1BF46A614(v130);

  v136 = sub_1BF4E8F34();
  v137 = swift_allocObject();
  swift_weakInit();

  v138 = objc_allocWithZone(MEMORY[0x1E69DEBD8]);
  aBlock[4] = sub_1BF46C414;
  aBlock[5] = v137;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF3CAF50;
  aBlock[3] = &block_descriptor_9;
  v139 = _Block_copy(aBlock);

  v140 = [v138 initWithChangesDeliveredOnQueue:v136 toBlock:v139];
  _Block_release(v139);

  v141 = *(v1 + OBJC_IVAR____TtC9ChronoKit28IOSSystemEnvironmentProvider_colorSchemeObserver);
  *(v1 + OBJC_IVAR____TtC9ChronoKit28IOSSystemEnvironmentProvider_colorSchemeObserver) = v140;
  v142 = v140;

  v143 = swift_getKeyPath();
  v144 = v142;
  sub_1BF46CDC0(0x686353726F6C6F63, 0xEB00000000656D65, v143, v1, v144);

  sub_1BF4E75F4();
  sub_1BF4E75E4();
  v145 = sub_1BF4E75B4();

  aBlock[0] = v145;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D48, &qword_1BF4EDB38);
  sub_1BF38C8B4(&qword_1EDC9FF78, &qword_1EBDD8D48, &qword_1BF4EDB38, v132);
  sub_1BF4E7D14();

  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  v146 = swift_getKeyPath();
  sub_1BF46AD94(0xD000000000000025, 0x80000001BF4FC240, v146, v1, MEMORY[0x1E6993F70]);

  sub_1BF4E75E4();
  v147 = sub_1BF4E75D4();

  aBlock[0] = v147;
  sub_1BF4E7D14();

  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  v148 = swift_getKeyPath();
  sub_1BF46AD94(0xD00000000000002BLL, 0x80000001BF4FC270, v148, v1, MEMORY[0x1E6993F78]);

  return v1;
}

void sub_1BF4698DC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v8 = a3;
  v9 = a5;
  sub_1BF46CCA0(a3);
}

double sub_1BF46994C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    KeyPath = swift_getKeyPath();
    sub_1BF46AA50(0xD000000000000027, 0x80000001BF4FC130, KeyPath, v3, MEMORY[0x1E69E4B58]);
  }

  return result;
}

double sub_1BF4699F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    KeyPath = swift_getKeyPath();
    sub_1BF46AA50(0xD00000000000001ALL, 0x80000001BF4FC160, KeyPath, v3, MEMORY[0x1E69E4B68]);
  }

  return result;
}

double sub_1BF469AA4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    KeyPath = swift_getKeyPath();
    sub_1BF46AA50(0xD00000000000001ALL, 0x80000001BF4FC180, KeyPath, v3, MEMORY[0x1E69E4B70]);
  }

  return result;
}

double sub_1BF469B50(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    KeyPath = swift_getKeyPath();
    sub_1BF46AA50(0xD000000000000020, 0x80000001BF4FC1A0, KeyPath, v3, MEMORY[0x1E69E4B60]);
  }

  return result;
}

double sub_1BF469BFC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    KeyPath = swift_getKeyPath();
    sub_1BF46B43C(0xD000000000000014, 0x80000001BF4FC1D0, KeyPath, v3);
  }

  return result;
}

double sub_1BF469C94(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    KeyPath = swift_getKeyPath();
    sub_1BF46B93C(0xD000000000000010, 0x80000001BF4FC1F0, KeyPath, v3);
  }

  return result;
}

uint64_t sub_1BF469D2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9818, &qword_1BF4F2E00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BF46D2D0(a1, &v5 - v3);
  return sub_1BF4E7D84();
}

void sub_1BF469DBC(uint64_t a1)
{
  v1 = _AXSCopyPreferredContentSizeCategoryName();
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1BF4E8904();
    }

    else
    {
    }
  }
}

uint64_t sub_1BF469EFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BF4E8914();
  v6 = v5;
  if (v4 == sub_1BF4E8914() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_1BF4E9734();

  if (v9)
  {

LABEL_8:
    v10 = MEMORY[0x1E697F658];
    goto LABEL_9;
  }

  v15 = sub_1BF4E8914();
  v17 = v16;
  if (v15 == sub_1BF4E8914() && v17 == v18)
  {

    goto LABEL_19;
  }

  v20 = sub_1BF4E9734();

  if (v20)
  {

LABEL_19:
    v10 = MEMORY[0x1E697F690];
    goto LABEL_9;
  }

  v21 = sub_1BF4E8914();
  v23 = v22;
  if (v21 == sub_1BF4E8914() && v23 == v24)
  {

LABEL_25:
    v10 = MEMORY[0x1E697F698];
    goto LABEL_9;
  }

  v25 = sub_1BF4E9734();

  if (v25)
  {

    goto LABEL_25;
  }

  v26 = sub_1BF4E8914();
  v28 = v27;
  if (v26 == sub_1BF4E8914() && v28 == v29)
  {

LABEL_31:
    v10 = MEMORY[0x1E697F680];
    goto LABEL_9;
  }

  v30 = sub_1BF4E9734();

  if (v30)
  {

    goto LABEL_31;
  }

  v31 = sub_1BF4E8914();
  v33 = v32;
  if (v31 == sub_1BF4E8914() && v33 == v34)
  {

LABEL_37:
    v10 = MEMORY[0x1E697F650];
    goto LABEL_9;
  }

  v35 = sub_1BF4E9734();

  if (v35)
  {

    goto LABEL_37;
  }

  v36 = sub_1BF4E8914();
  v38 = v37;
  if (v36 == sub_1BF4E8914() && v38 == v39)
  {

LABEL_43:
    v10 = MEMORY[0x1E697F660];
    goto LABEL_9;
  }

  v40 = sub_1BF4E9734();

  if (v40)
  {

    goto LABEL_43;
  }

  v41 = sub_1BF4E8914();
  v43 = v42;
  if (v41 == sub_1BF4E8914() && v43 == v44)
  {

LABEL_49:
    v10 = MEMORY[0x1E697F630];
    goto LABEL_9;
  }

  v45 = sub_1BF4E9734();

  if (v45)
  {

    goto LABEL_49;
  }

  v46 = sub_1BF4E8914();
  v48 = v47;
  if (v46 == sub_1BF4E8914() && v48 == v49)
  {

LABEL_55:
    v10 = MEMORY[0x1E697F670];
    goto LABEL_9;
  }

  v50 = sub_1BF4E9734();

  if (v50)
  {

    goto LABEL_55;
  }

  v51 = sub_1BF4E8914();
  v53 = v52;
  if (v51 == sub_1BF4E8914() && v53 == v54)
  {

LABEL_61:
    v10 = MEMORY[0x1E697F668];
    goto LABEL_9;
  }

  v55 = sub_1BF4E9734();

  if (v55)
  {

    goto LABEL_61;
  }

  v56 = sub_1BF4E8914();
  v58 = v57;
  if (v56 == sub_1BF4E8914() && v58 == v59)
  {

LABEL_67:
    v10 = MEMORY[0x1E697F678];
    goto LABEL_9;
  }

  v60 = sub_1BF4E9734();

  if (v60)
  {

    goto LABEL_67;
  }

  v61 = sub_1BF4E8914();
  v63 = v62;
  if (v61 == sub_1BF4E8914() && v63 == v64)
  {

LABEL_73:
    v10 = MEMORY[0x1E697F640];
    goto LABEL_9;
  }

  v65 = sub_1BF4E9734();

  if (v65)
  {

    goto LABEL_73;
  }

  v66 = sub_1BF4E8914();
  v68 = v67;
  if (v66 == sub_1BF4E8914() && v68 == v69)
  {

    v10 = MEMORY[0x1E697F648];
  }

  else
  {
    v70 = sub_1BF4E9734();

    v10 = MEMORY[0x1E697F680];
    if (v70)
    {
      v10 = MEMORY[0x1E697F648];
    }
  }

LABEL_9:
  v11 = *v10;
  v12 = sub_1BF4E7F84();
  v13 = *(*(v12 - 8) + 104);

  return v13(a2, v11, v12);
}

uint64_t sub_1BF46A614(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  v12[0] = v1;
  v2 = [objc_opt_self() archivedPreferencesWithHash_];
  v3 = v12[0];

  v4 = sub_1BF4E8764();
  v5 = sub_1BF4E71C4();
  v7 = v6;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    KeyPath = swift_getKeyPath();
    sub_1BF3D8864(v5, v7);

    sub_1BF46C8E8(0xD000000000000011, 0x80000001BF4FC2A0, KeyPath, v9, v5, v7, v4);
    sub_1BF3B03C0(v5, v7);

    sub_1BF3B03C0(v5, v7);
  }

  else
  {
    sub_1BF3B03C0(v5, v7);
  }
}

void sub_1BF46A7E0(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    KeyPath = swift_getKeyPath();
    v6 = a1;
    sub_1BF46CDC0(0x686353726F6C6F63, 0xEB00000000656D65, KeyPath, v4, v6);
  }
}

uint64_t sub_1BF46A890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

double sub_1BF46A960(char *a1, uint64_t a2)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BF46B0FC(0xD000000000000025, 0x80000001BF4FC240, KeyPath, a2, v3);

  return result;
}

double sub_1BF46A9D8(char *a1, uint64_t a2)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BF46B0FC(0xD00000000000002BLL, 0x80000001BF4FC270, KeyPath, a2, v3);

  return result;
}

double sub_1BF46AA50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(double))
{
  v29[1] = a3;
  v9 = sub_1BF4E7F64();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a5(v11);
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v15 = sub_1BF4E7B54();
  __swift_project_value_buffer(v15, qword_1EDCA6AA8);

  v16 = sub_1BF4E7B34();
  v17 = sub_1BF4E8E84();

  v18 = v14 != 0;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29[0] = v9;
    v21 = v20;
    v31[0] = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_1BF38D65C(a1, a2, v31);
    *(v19 + 12) = 2082;
    v30 = v18;
    v22 = sub_1BF4E8994();
    v24 = sub_1BF38D65C(v22, v23, v31);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_1BF389000, v16, v17, "Environment value changed [%{public}s]: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    v25 = v21;
    v9 = v29[0];
    MEMORY[0x1BFB5A5D0](v25, -1, -1);
    MEMORY[0x1BFB5A5D0](v19, -1, -1);
  }

  v26 = *(a4 + 24);
  os_unfair_lock_lock(*(v26 + 16));
  v27 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  (*(v10 + 16))(v13, a4 + v27, v9);
  v30 = v18;
  swift_setAtWritableKeyPath();
  swift_beginAccess();
  (*(v10 + 40))(a4 + v27, v13, v9);
  swift_endAccess();
  os_unfair_lock_unlock(*(v26 + 16));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();

  return result;
}

double sub_1BF46AD94(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v28[1] = a3;
  v9 = sub_1BF4E7F64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E75F4();
  sub_1BF4E75E4();
  v13 = a5();

  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v14 = sub_1BF4E7B54();
  __swift_project_value_buffer(v14, qword_1EDCA6AA8);

  v15 = sub_1BF4E7B34();
  v16 = sub_1BF4E8E84();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28[0] = v9;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30[0] = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_1BF38D65C(a1, a2, v30);
    *(v18 + 12) = 2082;
    v20 = v13 & 1;
    v29 = v20;
    v21 = sub_1BF4E8994();
    v23 = sub_1BF38D65C(v21, v22, v30);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_1BF389000, v15, v16, "Environment value changed [%{public}s]: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v19, -1, -1);
    v24 = v18;
    v9 = v28[0];
    MEMORY[0x1BFB5A5D0](v24, -1, -1);
  }

  else
  {

    v20 = v13 & 1;
  }

  v25 = *(a4 + 24);
  os_unfair_lock_lock(*(v25 + 16));
  v26 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  (*(v10 + 16))(v12, a4 + v26, v9);
  v29 = v20;
  swift_setAtWritableKeyPath();
  swift_beginAccess();
  (*(v10 + 40))(a4 + v26, v12, v9);
  swift_endAccess();
  os_unfair_lock_unlock(*(v25 + 16));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();

  return result;
}

double sub_1BF46B0FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v27[1] = a3;
  v9 = sub_1BF4E7F64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v13 = sub_1BF4E7B54();
  __swift_project_value_buffer(v13, qword_1EDCA6AA8);

  v14 = sub_1BF4E7B34();
  v15 = sub_1BF4E8E84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27[0] = v9;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29[0] = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_1BF38D65C(a1, a2, v29);
    *(v17 + 12) = 2082;
    v19 = a5 & 1;
    v28 = a5 & 1;
    v20 = sub_1BF4E8994();
    v22 = sub_1BF38D65C(v20, v21, v29);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_1BF389000, v14, v15, "Environment value changed [%{public}s]: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v18, -1, -1);
    v23 = v17;
    v9 = v27[0];
    MEMORY[0x1BFB5A5D0](v23, -1, -1);
  }

  else
  {

    v19 = a5 & 1;
  }

  v24 = *(a4 + 24);
  os_unfair_lock_lock(*(v24 + 16));
  v25 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  (*(v10 + 16))(v12, a4 + v25, v9);
  v28 = v19;
  swift_setAtWritableKeyPath();
  swift_beginAccess();
  (*(v10 + 40))(a4 + v25, v12, v9);
  swift_endAccess();
  os_unfair_lock_unlock(*(v24 + 16));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();

  return result;
}

uint64_t sub_1BF46B43C(uint64_t (*a1)(char *, uint64_t, __n128), unint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v44 = a1;
  v48 = sub_1BF4E7F64();
  v6 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BF4E7F74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v18 = _AXDarkenSystemColors();
  v19 = MEMORY[0x1E697F600];
  if (v18)
  {
    v19 = MEMORY[0x1E697F608];
  }

  (*(v9 + 104))(v17, *v19, v8);
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v20 = sub_1BF4E7B54();
  __swift_project_value_buffer(v20, qword_1EDCA6AA8);
  v21 = *(v9 + 16);
  v47 = v17;
  v49 = v21;
  v21(v14, v17, v8);

  v22 = sub_1BF4E7B34();
  v23 = sub_1BF4E8E84();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = v6;
    v25 = v24;
    v40 = swift_slowAlloc();
    v50[0] = v40;
    *v25 = 136446466;
    *(v25 + 4) = sub_1BF38D65C(v44, a2, v50);
    *(v25 + 12) = 2082;
    v49(v11, v14, v8);
    v26 = sub_1BF4E8994();
    v41 = a4;
    v28 = v27;
    v29 = *(v9 + 8);
    v43 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44 = v29;
    (v29)(v14, v8);
    v30 = sub_1BF38D65C(v26, v28, v50);
    a4 = v41;

    *(v25 + 14) = v30;
    _os_log_impl(&dword_1BF389000, v22, v23, "Environment value changed [%{public}s]: %{public}s", v25, 0x16u);
    v31 = v40;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v31, -1, -1);
    v32 = v25;
    v6 = v42;
    MEMORY[0x1BFB5A5D0](v32, -1, -1);
  }

  else
  {

    v33 = *(v9 + 8);
    v43 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44 = v33;
    (v33)(v14, v8);
  }

  v34 = *(a4 + 24);
  os_unfair_lock_lock(*(v34 + 16));
  v35 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v36 = v45;
  v37 = v48;
  (*(v6 + 16))(v45, a4 + v35, v48);
  v38 = v47;
  v49(v11, v47, v8);
  swift_setAtWritableKeyPath();
  swift_beginAccess();
  (*(v6 + 40))(a4 + v35, v36, v37);
  swift_endAccess();
  os_unfair_lock_unlock(*(v34 + 16));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();

  return (v44)(v38, v8);
}