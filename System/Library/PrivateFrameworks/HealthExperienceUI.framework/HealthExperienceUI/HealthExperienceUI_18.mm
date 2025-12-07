uint64_t sub_1BA0ECD0C(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_1BA0F91A8(v6, a2, v2, v4, v5);
}

uint64_t sub_1BA0ECD60(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v68 = a3;
  v61 = a1;
  v59 = *v3;
  v64 = sub_1BA4A3EA8();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v6);
  v62 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0FAA3C(0, &qword_1EDC6AE28, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v57 - v10;
  v66 = sub_1BA4A1998();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v12);
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v57 - v18;
  v20 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v21 = *(v16 + 16);
  v67 = v4;
  v21(v19, &v4[v20], v15);
  v22 = a2;
  v23 = v68;
  v71 = a2;
  v72 = v68;
  sub_1BA4A4568();
  v24 = *(v16 + 8);
  v24(v19, v15);
  if (!v74)
  {
    v25 = v22;
    goto LABEL_5;
  }

  v60 = v74;
  v57 = v73;
  v21(v19, &v67[v20], v15);
  v25 = v22;
  sub_1BA0F00FC(v11);
  v24(v19, v15);
  v26 = v65;
  v27 = v66;
  if ((*(v65 + 48))(v11, 1, v66) == 1)
  {

    sub_1BA0FAAA0(v11);
LABEL_5:
    v28 = v62;
    sub_1BA4A3D88();

    v29 = sub_1BA4A3E88();
    v30 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v73 = v32;
      *v31 = 136315650;
      v33 = sub_1BA4A85D8();
      v35 = sub_1B9F0B82C(v33, v34, &v73);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA4EAB30, &v73);
      *(v31 + 22) = 2080;
      *(v31 + 24) = sub_1B9F0B82C(v25, v23, &v73);
      _os_log_impl(&dword_1B9F07000, v29, v30, "[%s] %s Failed to insert item before item with id: %s, because it doesn't exist.", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v32, -1, -1);
      MEMORY[0x1BFAF43A0](v31, -1, -1);
    }

    return (*(v63 + 8))(v28, v64);
  }

  v37 = v58;
  (*(v26 + 32))(v58, v11, v27);
  sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1BA4B5480;
  __swift_project_boxed_opaque_existential_1(v61, v61[3]);
  *(v38 + 32) = sub_1BA4A2D58();
  *(v38 + 40) = v39;
  v71 = v25;
  v72 = v23;
  v40 = v67;
  swift_beginAccess();
  sub_1BA4A4478();
  swift_endAccess();

  v41 = sub_1BA0E7AC0(&v71);
  v43 = sub_1BA0F0994(v69, v57, v60);
  v44 = v42 + 16;
  if (!*(v42 + 16))
  {
    (v43)(v69, 0);

    (v41)(&v71, 0);
    v47 = v61;
    goto LABEL_13;
  }

  v45 = v42;
  result = sub_1BA4A1958();
  if (*(*v44 + 16) < result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v46 = result;
  v47 = v61;
  if (result < 0)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_1B9F0A534(v61, &v73);
  sub_1BA0F1388(v46, v46, &v73, sub_1B9F281E8, sub_1BA170264);
  *(v45 + 24) = Array<A>.identifierToIndexDict()(*(v45 + 16));

  (v43)(v69, 0);

  (v41)(&v71, 0);
LABEL_13:
  sub_1B9F0A534(v47, &v71);
  sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v69, &v73);
    __swift_project_boxed_opaque_existential_1(&v73, v75);
    v48 = sub_1BA4A2D58();
    v50 = v49;
    __swift_project_boxed_opaque_existential_1(&v73, v75);
    v51 = sub_1BA4A2E58();
    v53 = v52;
    v54 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v69[0] = *(v40 + v54);
    *(v40 + v54) = 0x8000000000000000;
    sub_1B9F248E4(v51, v53, v48, v50, isUniquelyReferenced_nonNull_native);

    *(v40 + v54) = *&v69[0];
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&v73);
  }

  else
  {
    v70 = 0;
    memset(v69, 0, sizeof(v69));
    sub_1BA0FA9CC(v69, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  }

  v56 = v65;
  sub_1BA0EF3D0();
  return (*(v56 + 8))(v37, v66);
}

uint64_t sub_1BA0ED648(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v68 = a3;
  v61 = a1;
  v59 = *v3;
  v64 = sub_1BA4A3EA8();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v6);
  v62 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0FAA3C(0, &qword_1EDC6AE28, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v57 - v10;
  v66 = sub_1BA4A1998();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v12);
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v57 - v18;
  v20 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v21 = *(v16 + 16);
  v67 = v4;
  v21(v19, &v4[v20], v15);
  v22 = a2;
  v23 = v68;
  v71 = a2;
  v72 = v68;
  sub_1BA4A4568();
  v24 = *(v16 + 8);
  v24(v19, v15);
  if (!v74)
  {
    v25 = v22;
    goto LABEL_5;
  }

  v60 = v74;
  v57 = v73;
  v21(v19, &v67[v20], v15);
  v25 = v22;
  sub_1BA0F00FC(v11);
  v24(v19, v15);
  v26 = v65;
  v27 = v66;
  if ((*(v65 + 48))(v11, 1, v66) == 1)
  {

    sub_1BA0FAAA0(v11);
LABEL_5:
    v28 = v62;
    sub_1BA4A3D88();

    v29 = sub_1BA4A3E88();
    v30 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v73 = v32;
      *v31 = 136315650;
      v33 = sub_1BA4A85D8();
      v35 = sub_1B9F0B82C(v33, v34, &v73);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_1B9F0B82C(0xD000000000000017, 0x80000001BA4EAB50, &v73);
      *(v31 + 22) = 2080;
      *(v31 + 24) = sub_1B9F0B82C(v25, v23, &v73);
      _os_log_impl(&dword_1B9F07000, v29, v30, "[%s] %s Failed to insert item after item with id: %s, because it doesn't exist.", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v32, -1, -1);
      MEMORY[0x1BFAF43A0](v31, -1, -1);
    }

    return (*(v63 + 8))(v28, v64);
  }

  v37 = v58;
  (*(v26 + 32))(v58, v11, v27);
  sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1BA4B5480;
  __swift_project_boxed_opaque_existential_1(v61, v61[3]);
  *(v38 + 32) = sub_1BA4A2D58();
  *(v38 + 40) = v39;
  v71 = v25;
  v72 = v23;
  v40 = v67;
  swift_beginAccess();
  sub_1BA4A4488();
  swift_endAccess();

  v41 = sub_1BA0E7AC0(&v71);
  v43 = sub_1BA0F0994(v69, v57, v60);
  v44 = v42 + 16;
  if (!*(v42 + 16))
  {
    (v43)(v69, 0);

    (v41)(&v71, 0);
    v47 = v61;
    goto LABEL_14;
  }

  v45 = v42;
  result = sub_1BA4A1958();
  v46 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v47 = v61;
  if (*(*v44 + 16) < v46)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v46 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  sub_1B9F0A534(v61, &v73);
  sub_1BA0F1388(v46, v46, &v73, sub_1B9F281E8, sub_1BA170264);
  *(v45 + 24) = Array<A>.identifierToIndexDict()(*(v45 + 16));

  (v43)(v69, 0);

  (v41)(&v71, 0);
LABEL_14:
  sub_1B9F0A534(v47, &v71);
  sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v69, &v73);
    __swift_project_boxed_opaque_existential_1(&v73, v75);
    v48 = sub_1BA4A2D58();
    v50 = v49;
    __swift_project_boxed_opaque_existential_1(&v73, v75);
    v51 = sub_1BA4A2E58();
    v53 = v52;
    v54 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v69[0] = *(v40 + v54);
    *(v40 + v54) = 0x8000000000000000;
    sub_1B9F248E4(v51, v53, v48, v50, isUniquelyReferenced_nonNull_native);

    *(v40 + v54) = *&v69[0];
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&v73);
  }

  else
  {
    v70 = 0;
    memset(v69, 0, sizeof(v69));
    sub_1BA0FA9CC(v69, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  }

  v56 = v65;
  sub_1BA0EF3D0();
  return (*(v56 + 8))(v37, v66);
}

uint64_t sub_1BA0EDF38(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);

  return sub_1BA0F9EF0(v8, a2, a3, v3, v6, v7);
}

void sub_1BA0EDF9C(void *a1, uint64_t a2)
{
  v3 = v2;
  v51 = *v2;
  v52 = a1;
  v5 = sub_1BA4A3EA8();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v53 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A1798();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v47 - v15;
  v17 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v18 = *(v13 + 16);
  v18(v16, &v3[v17], v12);
  v19 = sub_1BA4A4548();
  v20 = *(v13 + 8);
  v20(v16, v12);
  v21 = v19 < a2;
  v22 = a2;
  if (!v21)
  {
    v18(v16, &v3[v17], v12);
    v31 = sub_1BA4A4548();
    v20(v16, v12);
    if (v31 == v22)
    {
      sub_1BA0F12C8(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1BA4B5480;
      sub_1B9F0A534(v52, v32 + 32);
      v33 = v48;
      sub_1BA4A1788();
      v34 = sub_1BA4A1748();
      v36 = v35;
      (*(v49 + 8))(v33, v50);
      sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

      v38 = v22;
      v39 = Array<A>.identifierToIndexDict()(v37);

      v56 = 0uLL;
      v57 = v32;
      v58 = v39;
      v59 = v34;
      v60 = v36;
      sub_1BA0E8FD4(&v56, v38);

LABEL_11:

      return;
    }

    v18(v16, &v3[v17], v12);
    v40 = sub_1BA4A4578();
    v20(v16, v12);
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v40 + 16) > v22)
    {
      v41 = v40 + 16 * v22;
      v42 = *(v41 + 32);
      v43 = *(v41 + 40);

      v44 = v52[3];
      v45 = v52[4];
      v46 = __swift_project_boxed_opaque_existential_1(v52, v44);
      sub_1BA0F9EF0(v46, v42, v43, v3, v44, v45);
      goto LABEL_11;
    }

    __break(1u);
    return;
  }

  v23 = v53;
  sub_1BA4A3D88();
  v24 = sub_1BA4A3E88();
  v25 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v56 = v27;
    *v26 = 136315650;
    v28 = sub_1BA4A85D8();
    v30 = sub_1B9F0B82C(v28, v29, &v56);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_1B9F0B82C(0xD00000000000001CLL, 0x80000001BA4EAB70, &v56);
    *(v26 + 22) = 2048;
    *(v26 + 24) = v22;
    _os_log_impl(&dword_1B9F07000, v24, v25, "[%s] %s Failed to append item to section with index: %ld, because it doesn't exist.", v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v27, -1, -1);
    MEMORY[0x1BFAF43A0](v26, -1, -1);
  }

  (*(v54 + 8))(v23, v55);
}

unint64_t sub_1BA0EE51C(uint64_t a1)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v34 - v7;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v36 = v1;
  v10(v8, v1 + v9, v4);
  v11 = sub_1BA4A4578();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v37 = a1;
  result = sub_1BA4A1968();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result >= *(v11 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v11 + 16 * result;
  v15 = *(v14 + 32);
  v16 = *(v14 + 40);

  v17 = v15;

  v18 = v36;
  v10(v8, v36 + v9, v4);
  v19 = v16;
  *&v40[0] = v17;
  *(&v40[0] + 1) = v16;
  v20 = sub_1BA4A4528();
  v12(v8, v4);
  result = sub_1BA4A1958();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= *(v20 + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v21 = v20 + 16 * result;
  v22 = *(v21 + 32);
  v23 = *(v21 + 40);

  sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BA4B5480;
  v35 = v22;
  *(v24 + 32) = v22;
  *(v24 + 40) = v23;
  swift_beginAccess();

  sub_1BA4A4458();
  swift_endAccess();

  v25 = sub_1BA0E7AC0(v39);
  v27 = sub_1BA0F0994(v38, v17, v19);
  if (*(v26 + 16))
  {
    v28 = v26;
    v29 = sub_1BA4A1958();
    sub_1BA0F0A48(v29, sub_1BA2F67D4, sub_1B9F25598, v40);
    *(v28 + 24) = Array<A>.identifierToIndexDict()(*(v28 + 16));

    (v27)(v38, 0);

    (v25)(v39, 0);
  }

  else
  {
    (v27)(v38, 0);

    (v25)(v39, 0);
    memset(v40, 0, sizeof(v40));
    v41 = 0;
  }

  sub_1BA0FA9CC(v40, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  v30 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
  swift_beginAccess();
  v31 = v35;
  if (*(*(v18 + v30) + 16) && (, sub_1B9F24A34(v31, v23), v33 = v32, , (v33 & 1) != 0))
  {
    swift_beginAccess();
    sub_1B9FEF28C(0, 0, v31, v23);
    swift_endAccess();
  }

  else
  {
  }

  return sub_1BA0EF3D0();
}

uint64_t sub_1BA0EE97C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v39 = a2;
  v34 = *v2;
  v5 = sub_1BA4A3EA8();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v34 - v12;
  sub_1BA0FAA3C(0, &qword_1EDC6AE28, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v34 - v16;
  v18 = sub_1BA4A1998();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v10 + 16))(v13, v3 + v23, v9);
  v35 = a1;
  v24 = v39;
  sub_1BA0F00FC(v17);
  (*(v10 + 8))(v13, v9);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1BA0FAAA0(v17);
    v25 = v36;
    sub_1BA4A3D88();

    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v29;
      *v28 = 136315650;
      v30 = sub_1BA4A85D8();
      v32 = sub_1B9F0B82C(v30, v31, &v40);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1B9F0B82C(0xD000000000000017, 0x80000001BA4EAB90, &v40);
      *(v28 + 22) = 2080;
      *(v28 + 24) = sub_1B9F0B82C(v35, v24, &v40);
      _os_log_impl(&dword_1B9F07000, v26, v27, "[%s] %s Failed to remove item with identifier: %s, because it doesn't exist.", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
    }

    return (*(v37 + 8))(v25, v38);
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    sub_1BA0EE51C(v22);
    return (*(v19 + 8))(v22, v18);
  }
}

uint64_t sub_1BA0EEE24(void (*a1)(void *a1), void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v6 = __swift_project_boxed_opaque_existential_1(a2, v4);

  return sub_1BA0F8740(a1, v6, v2, v4, v5);
}

uint64_t sub_1BA0EEE80(void *a1)
{
  v2 = v1;
  v41[1] = *v2;
  v4 = sub_1BA4A3EA8();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v43 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v41 - v11;
  sub_1BA0FAA3C(0, &qword_1EDC6AE28, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v41 - v15;
  v17 = sub_1BA4A1998();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = (v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v23 = *(v9 + 16);
  v42 = v2;
  v23(v12, v2 + v22, v8);
  v24 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1BA4A2D58();
  sub_1BA0F00FC(v16);

  (*(v9 + 8))(v12, v8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1BA0FAAA0(v16);
    v25 = v43;
    sub_1BA4A3D88();
    sub_1B9F0A534(v46, v48);
    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47 = v29;
      *v28 = 136315650;
      v30 = sub_1BA4A85D8();
      v32 = sub_1B9F0B82C(v30, v31, &v47);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1B9F0B82C(0x692864616F6C6572, 0xED0000293A6D6574, &v47);
      *(v28 + 22) = 2080;
      __swift_project_boxed_opaque_existential_1(v48, v48[3]);
      v33 = sub_1BA4A2D58();
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_1(v48);
      v36 = sub_1B9F0B82C(v33, v35, &v47);

      *(v28 + 24) = v36;
      _os_log_impl(&dword_1B9F07000, v26, v27, "[%s] %s Failed to reload item with id: %s, because it doesn't exist.", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);

      return (*(v44 + 8))(v25, v45);
    }

    else
    {

      (*(v44 + 8))(v25, v45);
      return __swift_destroy_boxed_opaque_existential_1(v48);
    }
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v38 = v46[3];
    v39 = v46[4];
    v40 = __swift_project_boxed_opaque_existential_1(v46, v38);
    sub_1BA0F8740(v21, v40, v42, v38, v39);
    return (*(v18 + 8))(v21, v17);
  }
}

uint64_t sub_1BA0EF3D0()
{
  v1 = v0;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = aBlock - v10 + 16;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_animateChanges;
  swift_beginAccess();
  LOBYTE(v12) = *(v1 + v12);
  swift_beginAccess();
  v13 = *(v1 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v12;
  aBlock[4] = sub_1BA0FAB2C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_23;
  v15 = _Block_copy(aBlock);
  v16 = v13;

  [v16 notifyObservers_];
  _Block_release(v15);

  v17 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v17, v3);
  sub_1B9F177C4(v11);
  (*(v4 + 8))(v7, v3);
  swift_beginAccess();
  (*(v4 + 40))(v1 + v17, v11, v3);
  return swift_endAccess();
}

void sub_1BA0EF66C(void *a1, uint64_t a2, char a3)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  v11 = sub_1BA4A6758();
  sub_1BA0F0EB0(v10);
  v12 = sub_1BA4A4588();
  (*(v7 + 8))(v10, v6);
  [a1 snapshotDidChangeWithDataSourceID:v11 snapshot:v12 animated:a3 & 1];
}

void sub_1BA0EF810(void *a1, uint64_t a2, int a3, uint64_t (*a4)(void, __n128), uint64_t a5, uint64_t *a6)
{
  v22 = a6;
  v23 = a3;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v22 - v14;
  swift_beginAccess();

  v16 = sub_1BA4A6758();

  v17 = (a4)(0);
  v26 = v17;
  v27 = a5;
  swift_getKeyPath();
  v24 = v17;
  v25 = a5;
  swift_getKeyPath();
  sub_1BA4A4F28();

  if (v28)
  {
    v18 = *(*a2 + 112);
    swift_beginAccess();
    v19 = *(a2 + v18);
    v20 = *v22;
    swift_beginAccess();
    (*(v12 + 16))(v15, v19 + v20, v11);
  }

  else
  {
    sub_1BA4A45D8();
  }

  v21 = sub_1BA4A4588();
  (*(v12 + 8))(v15, v11);
  [a1 snapshotDidChangeWithDataSourceID:v16 snapshot:v21 animated:v23 & 1];
}

void sub_1BA0EFA98(void *a1, void *a2, int a3)
{
  v17 = a3;
  v16 = a1;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  v10 = sub_1BA4A6758();
  swift_beginAccess();
  v11 = a2[13];
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 16);
  swift_unknownObjectRetain();
  v13(ObjectType, v11);
  swift_unknownObjectRelease();
  v14 = sub_1BA4A4588();
  (*(v6 + 8))(v9, v5);
  [v16 snapshotDidChangeWithDataSourceID:v10 snapshot:v14 animated:v17 & 1];
}

void sub_1BA0EFC4C(void *a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  swift_beginAccess();

  v11 = sub_1BA4A6758();

  sub_1BA043BB8(0);
  v13 = v12;
  v26 = v12;
  v27 = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  swift_getKeyPath();
  v24 = v13;
  v25 = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  swift_getKeyPath();
  sub_1BA4A4F28();

  if (v28)
  {
    swift_beginAccess();

    sub_1BA0FB330();
    v23 = v3;
    v3 = v14;
    ObjectType = swift_getObjectType();
    v22 = v11;
    v16 = v7;
    v17 = v6;
    v18 = a1;
    v19 = *(v3 + 16);
    swift_unknownObjectRetain();
    v20 = v3;
    LOBYTE(v3) = v23;
    v19(ObjectType, v20);
    a1 = v18;
    v6 = v17;
    v7 = v16;
    v11 = v22;

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BA4A45D8();
  }

  v21 = sub_1BA4A4588();
  (*(v7 + 8))(v10, v6);
  [a1 snapshotDidChangeWithDataSourceID:v11 snapshot:v21 animated:v3 & 1];
}

void sub_1BA0EFF60(void *a1, uint64_t a2, int a3)
{
  v17 = a3;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - v8;
  v10 = sub_1BA4A6758();
  sub_1BA0FB788();
  v12 = v11;
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 16);
  swift_unknownObjectRetain();
  v14(ObjectType, v12);
  swift_unknownObjectRelease();
  v15 = sub_1BA4A4588();
  (*(v6 + 8))(v9, v5);
  [a1 snapshotDidChangeWithDataSourceID:v10 snapshot:v15 animated:v17 & 1];
}

uint64_t sub_1BA0F00FC@<X0>(uint64_t a3@<X8>)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  sub_1BA4A4568();
  if (!v21)
  {
    goto LABEL_8;
  }

  v4 = sub_1BA4A44E8();
  if (v5)
  {
LABEL_7:

LABEL_8:
    v12 = sub_1BA4A1998();
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }

  v6 = v4;
  if (!*(sub_1BA4A4528() + 16) || (, , v7 = sub_1BA4A4468(), (v8 & 1) != 0) || (v9 = v7, result = sub_1BA4A4468(), (v11 & 1) != 0))
  {

    goto LABEL_7;
  }

  v13 = result - v9;
  if (__OFSUB__(result, v9))
  {
    __break(1u);
  }

  else
  {
    sub_1B9F2176C(0, &qword_1EDC5DBD8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BA4B5460;
    *(v14 + 32) = v6;
    *(v14 + 40) = v13;
    MEMORY[0x1BFAEC320](v14, v15, v16, v17, v18, v19);

    v20 = sub_1BA4A1998();
    return (*(*(v20 - 8) + 56))(a3, 0, 1, v20);
  }

  return result;
}

uint64_t MutableArrayDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

void sub_1BA0F03C4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

uint64_t sub_1BA0F041C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BA0F04CC(uint64_t a1, uint64_t *a2)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v14 - v9;
  (*(v6 + 16))(&v14 - v9, a1, v5, v8);
  v11 = *a2;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v6 + 40))(v11 + v12, v10, v5);
  return swift_endAccess();
}

double sub_1BA0F0604(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

uint64_t MutableArrayDataSource.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);

  return v1;
}

uint64_t MutableArrayDataSource.__allocating_init(arrangedSections:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  MutableArrayDataSource.init(arrangedSections:identifier:)(a1, a2, a3);
  return v6;
}

uint64_t MutableArrayDataSource.__allocating_init(_:)(uint64_t a1)
{
  v2 = v1;
  v30 = sub_1BA4A1798();
  v4 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v26 = v1;
    v31[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F277B0(0, v7, 0);
    v8 = v31[0];
    v25 = v4;
    v27 = (v4 + 8);
    v28 = a1;
    v9 = 32;
    do
    {
      v10 = *(a1 + v9);

      v11 = v29;
      sub_1BA4A1788();
      v12 = sub_1BA4A1748();
      v14 = v13;
      (*v27)(v11, v30);

      v16 = Array<A>.identifierToIndexDict()(v15);

      v31[0] = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B9F277B0((v17 > 1), v18 + 1, 1);
        v8 = v31[0];
      }

      *(v8 + 16) = v18 + 1;
      v19 = (v8 + 48 * v18);
      v19[4] = 0;
      v19[5] = 0;
      v19[6] = v10;
      v19[7] = v16;
      v19[8] = v12;
      v19[9] = v14;
      v9 += 8;
      --v7;
      a1 = v28;
    }

    while (v7);

    v4 = v25;
    v2 = v26;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(v31, "MutableArray<");
  HIWORD(v31[1]) = -4864;
  v20 = v29;
  sub_1BA4A1788();
  v21 = sub_1BA4A1748();
  v23 = v22;
  (*(v4 + 8))(v20, v30);
  MEMORY[0x1BFAF1350](v21, v23);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return (*(v2 + 256))(v8, v31[0], v31[1]);
}

void (*sub_1BA0F0994(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1BA0F8260(v6, a2, a3);
  return sub_1BA07E90C;
}

uint64_t sub_1BA0F0A48@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v9);
    v9 = result;
  }

  v11 = *(v9 + 16);
  if (v11 <= a1)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 - 1;
    v13 = v9 + 40 * a1;
    a3(v13 + 32, a4);
    result = memmove((v13 + 32), (v13 + 72), 40 * (v12 - a1));
    *(v9 + 16) = v12;
    *v4 = v9;
  }

  return result;
}

uint64_t sub_1BA0F0AFC@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BA2F6824(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = (v5 + 80 * a1);
    v10 = v9[5];
    a2[2] = v9[4];
    a2[3] = v10;
    a2[4] = v9[6];
    v11 = v9[3];
    *a2 = v9[2];
    a2[1] = v11;
    result = memmove(v9 + 2, v9 + 7, 80 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t MutableArrayDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t MutableArrayDataSource.debugDescription.getter()
{
  v1 = v0;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v14 - v6;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1BA4A7DF8();
  v17 = v15;
  v18 = v16;
  MEMORY[0x1BFAF1350](0xD000000000000025, 0x80000001BA4EABD0);
  MEMORY[0x1BFAF1350](*(v1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier), *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8));
  MEMORY[0x1BFAF1350](0x6F6974636553202CLL, 0xEC000000203A736ELL);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v3);
  v9 = sub_1BA4A4578();
  (*(v4 + 8))(v7, v3);
  v10 = MEMORY[0x1BFAF1560](v9, MEMORY[0x1E69E6158]);
  v12 = v11;

  MEMORY[0x1BFAF1350](v10, v12);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return v17;
}

uint64_t sub_1BA0F0EB0@<X0>(uint64_t a1@<X8>)
{
  sub_1BA0FC67C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F32D84(0);
  v7 = v6;
  v26[2] = v6;
  v26[3] = &protocol witness table for HideableDataSource<A>;
  swift_getKeyPath();
  v26[0] = v7;
  v26[1] = &protocol witness table for HideableDataSource<A>;
  swift_getKeyPath();
  sub_1BA4A4F28();

  v10 = v27;
  v11 = v28;
  if (v29 == 1)
  {
    MEMORY[0x1EEE9AC00](v8, v9);
    v12 = type metadata accessor for SignificantTrendsDataSource(0);
    v26[-2] = v12;
    v26[-1] = &protocol witness table for FetchedResultsControllerDataSource<A>;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v14);
    v26[-2] = v12;
    v26[-1] = &protocol witness table for FetchedResultsControllerDataSource<A>;
    swift_getKeyPath();
    sub_1BA4A4F28();

    if (v30)
    {
      v15 = *(*v10 + 112);
      swift_beginAccess();
      v16 = *(v10 + v15);
      v17 = qword_1EDC84AC8;
      swift_beginAccess();
      sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
      (*(*(v18 - 8) + 16))(v5, v16 + v17, v18);
    }

    else
    {
      sub_1BA4A45D8();
    }

    sub_1BA0FC6F8(v10, v11, 1);
    sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
    v24 = v23;
    v25 = *(v23 - 8);
    (*(v25 + 56))(v5, 0, 1, v23);
    return (*(v25 + 32))(a1, v5, v24);
  }

  else
  {
    sub_1BA0FC6F8(v27, v28, 0);
    sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
    v20 = v19;
    v21 = *(v19 - 8);
    (*(v21 + 56))(v5, 1, 1, v19);
    sub_1BA4A45D8();
    result = (*(v21 + 48))(v5, 1, v20);
    if (result != 1)
    {
      return sub_1BA0FC704(v5);
    }
  }

  return result;
}

void sub_1BA0F12C8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BA0F1388(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 24) >> 1)
  {
    v7 = a4();
    *v5 = v7;
  }

  result = a5(v9, a2, 1, a3);
  *v5 = v7;
  return result;
}

void sub_1BA0F1474()
{
  v1 = v0;
  sub_1B9F24D7C(0, &qword_1EDC5E000, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1BA0F15FC()
{
  v1 = v0;
  sub_1B9F24D7C(0, &qword_1EDC5DFE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6530], MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1BA0F1778()
{
  sub_1B9F24D7C(0, &unk_1EDC5DFF0, MEMORY[0x1E69E6158], &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6168]);
  v30 = v0;
  v1 = *v0;
  v2 = sub_1BA4A8068();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || v4 >= v1 + 64 + 8 * v5)
    {
      memmove(v4, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v19 = *v18;
        v20 = v18[1];
        v16 *= 48;
        v21 = (*(v1 + 56) + v16);
        v23 = *v21;
        v22 = v21[1];
        v24 = v21[2];
        v25 = v21[3];
        v26 = v21[4];
        v27 = v21[5];
        v28 = (*(v3 + 48) + v17);
        *v28 = v19;
        v28[1] = v20;
        v29 = (*(v3 + 56) + v16);
        *v29 = v23;
        v29[1] = v22;
        v29[2] = v24;
        v29[3] = v25;
        v29[4] = v26;
        v29[5] = v27;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v3;
  }
}

void sub_1BA0F194C()
{
  v1 = v0;
  sub_1B9F24D7C(0, &unk_1EDC6E910, MEMORY[0x1E69E6158], &type metadata for HKTypeGroup, MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 32);
        v26 = *(v22 + 40);
        v27 = (*(v4 + 48) + v18);
        v28 = *(v22 + 16);
        *v27 = v21;
        v27[1] = v20;
        v29 = *(v4 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v28;
        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1BA0F1B08()
{
  v1 = v0;
  sub_1B9F24D7C(0, &unk_1EBBEE690, MEMORY[0x1E69E6158], MEMORY[0x1E69E6370], MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1BA0F1C84()
{
  v1 = v0;
  sub_1B9F28B1C(0, &qword_1EBBE98B8, &qword_1EBBE98C0, &type metadata for ConfirmDetailsSection.Row.CorrelatedItem);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1BA0F1E48(unint64_t *a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v5 = v4;
  sub_1BA0FBC38(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_1BA4A8068();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 64 + 8 * v10)
    {
      memmove(v9, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(*(v6 + 56) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        *(*(v8 + 56) + 8 * v21) = v23;
        v24 = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }
}

void sub_1BA0F1FB0()
{
  v1 = v0;
  sub_1B9F24D7C(0, &qword_1EDC6E348, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1B9F0AD9C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B9F46920(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_1BA0F216C()
{
  v1 = v0;
  sub_1B9F24D7C(0, &qword_1EDC6B470, MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E69C0]);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 40 * v17;
        sub_1B9FDC70C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1B9F0AD9C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_1B9F46920(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1BA0F2328()
{
  v1 = v0;
  sub_1B9FDC2DC(0);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        v21 = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1BA0F247C()
{
  v1 = v0;
  sub_1B9FDC7BC(0);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        sub_1B9F0AD9C(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1B9F46920(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1BA0F25F0()
{
  v1 = v0;
  sub_1BA0FBBD4(0, &qword_1EBBE98C8, sub_1B9FDCAA4);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1BA0F2770()
{
  v1 = v0;
  sub_1BA0FBBD4(0, &qword_1EBBEE5D0, type metadata accessor for HKSharingReachabilityStatus);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1BA0F28E8()
{
  v1 = v0;
  sub_1B9F3EEB4(0);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1BA0F2A3C()
{
  v1 = v0;
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0FBBD4(0, &qword_1EBBEBE90, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v5 = *v0;
  v6 = sub_1BA4A8068();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1BA0FB13C(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1B9FF3588(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_1BA0F2C7C()
{
  v1 = v0;
  v32 = sub_1BA4A1728();
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v2);
  v31 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0FB1A0(0);
  v4 = *v0;
  v5 = sub_1BA4A8068();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29[0] = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v12;
    v13 = 1 << *(v4 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v4 + 64);
    v16 = (v13 + 63) >> 6;
    v29[1] = v34 + 32;
    v29[2] = v34 + 16;
    for (i = v4; v15; v4 = i)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = v17 | (v11 << 6);
      v21 = *(v4 + 56);
      v22 = *(*(v4 + 48) + 8 * v20);
      v23 = v34;
      v24 = *(v34 + 72) * v20;
      v26 = v31;
      v25 = v32;
      (*(v34 + 16))(v31, v21 + v24, v32);
      v27 = v33;
      *(*(v33 + 48) + 8 * v20) = v22;
      (*(v23 + 32))(*(v27 + 56) + v24, v26, v25);
      v28 = v22;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29[0];
        v6 = v33;
        goto LABEL_21;
      }

      v19 = *(v8 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }
}

void sub_1BA0F2ED8()
{
  v1 = v0;
  sub_1BA0FB24C(0);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1BA0F3028()
{
  v1 = v0;
  sub_1B9F36484(0);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1BA0F3188()
{
  v1 = v0;
  sub_1BA0FC760(0);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1BA0F32D8()
{
  v1 = v0;
  sub_1B9FDC20C(0);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1BA0F3430()
{
  v1 = v0;
  sub_1BA0FCA58(0);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1BA0F3580()
{
  v1 = v0;
  sub_1B9FDC85C(0);
  v2 = *v0;
  v3 = sub_1BA4A8068();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1BA0F36C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B9F24D7C(0, &qword_1EDC5DFE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6530], MEMORY[0x1E69E6168]);
  v35 = v4;
  v6 = sub_1BA4A8078();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      v25 = sub_1BA4A84D8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1BA0F3974(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B9F24D7C(0, &unk_1EDC6E910, MEMORY[0x1E69E6158], &type metadata for HKTypeGroup, MEMORY[0x1E69E6168]);
  v39 = v4;
  v6 = sub_1BA4A8078();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v43 = *v22;
      v24 = *(v5 + 56) + 48 * v21;
      v25 = *(v24 + 8);
      v41 = *v24;
      v42 = *(v24 + 16);
      v27 = *(v24 + 32);
      v26 = *(v24 + 40);
      if ((v39 & 1) == 0)
      {
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      v28 = sub_1BA4A84D8();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v43;
      v16[1] = v23;
      v17 = *(v7 + 56) + 48 * v15;
      v12 = v40;
      *v17 = v41;
      *(v17 + 8) = v25;
      *(v17 + 16) = v42;
      *(v17 + 32) = v27;
      *(v17 + 40) = v26;
      ++*(v7 + 16);
      v5 = v38;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1BA0F3C84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B9F24D7C(0, &unk_1EBBEE690, MEMORY[0x1E69E6158], MEMORY[0x1E69E6370], MEMORY[0x1E69E6168]);
  v35 = v4;
  v6 = sub_1BA4A8078();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      v25 = sub_1BA4A84D8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1BA0F3F9C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  v7 = v6;
  v8 = a2;
  v9 = *v6;
  sub_1BA0FBC38(0, a3, a4, a5, a6);
  v10 = sub_1BA4A8078();
  v11 = v10;
  if (*(v9 + 16))
  {
    v36 = v6;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v9 + 48) + 8 * v23);
      v25 = *(*(v9 + 56) + 8 * v23);
      if ((v8 & 1) == 0)
      {
        v26 = v24;
      }

      v27 = sub_1BA4A7788();
      v28 = -1 << *(v11 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 8 * v19) = v24;
      *(*(v11 + 56) + 8 * v19) = v25;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v8 & 1) == 0)
    {

      v7 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v9 + 32);
    v7 = v36;
    if (v35 >= 64)
    {
      bzero((v9 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_33:
  *v7 = v11;
}

void sub_1BA0F4210(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B9F24D7C(0, &qword_1EDC6E348, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
  v34 = v4;
  v6 = sub_1BA4A8078();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_1B9F46920(v24, v35);
      }

      else
      {
        sub_1B9F0AD9C(v24, v35);
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      v25 = sub_1BA4A84D8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_1B9F46920(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1BA0F44E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B9F24D7C(0, &qword_1EDC6B470, MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E69C0]);
  v6 = sub_1BA4A8078();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_1B9F46920((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_1B9FDC70C(v23, &v37);
        sub_1B9F0AD9C(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = sub_1BA4A7D38();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_1B9F46920(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1BA0F47B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B9FDC2DC(0);
  v6 = sub_1BA4A8078();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      v24 = sub_1BA4A7788();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1BA0F4A0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B9FDC7BC(0);
  v35 = v4;
  v6 = sub_1BA4A8078();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1B9F46920(v22, v36);
      }

      else
      {
        sub_1B9F0AD9C(v22, v36);
        v23 = v21;
      }

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1BA4A8488();
      sub_1BA4A68C8();
      v24 = sub_1BA4A84D8();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_1B9F46920(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1BA0F4CD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1BA0FBBD4(0, &qword_1EBBE98C8, sub_1B9FDCAA4);
  v35 = v4;
  v6 = sub_1BA4A8078();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      v25 = sub_1BA4A84D8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1BA0F4F88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1BA0FBBD4(0, &qword_1EBBEE5D0, type metadata accessor for HKSharingReachabilityStatus);
  v35 = v4;
  v6 = sub_1BA4A8078();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      v25 = sub_1BA4A84D8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1BA0F5238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1BA0FBBD4(0, &qword_1EBBEBE90, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v42 = v4;
  v9 = sub_1BA4A8078();
  v10 = v9;
  if (*(v8 + 16))
  {
    v39 = v2;
    v40 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v41 + 72);
      v29 = v24 + v28 * v23;
      if (v42)
      {
        sub_1B9FF3588(v29, v43);
      }

      else
      {
        sub_1BA0FB13C(v29, v43);
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      v30 = sub_1BA4A84D8();
      v31 = -1 << *(v10 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      sub_1B9FF3588(v43, *(v10 + 56) + v28 * v18);
      ++*(v10 + 16);
      v8 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1BA0F5584(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v42 = sub_1BA4A1728();
  v5 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1BA0FB1A0(0);
  v40 = v4;
  v9 = sub_1BA4A8078();
  v10 = v9;
  if (*(v8 + 16))
  {
    v37 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v38 = (v5 + 16);
    v39 = v5;
    v17 = (v5 + 32);
    v18 = v9 + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(*(v8 + 48) + 8 * v23);
      v25 = *(v5 + 72);
      v26 = *(v8 + 56) + v25 * v23;
      if (v40)
      {
        (*v17)(v41, v26, v42);
      }

      else
      {
        (*v38)(v41, v26, v42);
        v27 = v24;
      }

      v28 = sub_1BA4A7788();
      v29 = -1 << *(v10 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v10 + 48) + 8 * v19) = v24;
      (*v17)((*(v10 + 56) + v25 * v19), v41, v42);
      ++*(v10 + 16);
      v5 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v8 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v8 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1BA0F58C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1BA0FB24C(0);
  v6 = sub_1BA4A8078();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      v23 = sub_1BA4A7788();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1BA0F5B20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1BA0FC760(0);
  v6 = sub_1BA4A8078();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v21;
      }

      v23 = sub_1BA4A8478();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1BA0F5D7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B9FDC20C(0);
  v35 = v4;
  v6 = sub_1BA4A8078();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
      }

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1BA4A8488();
      sub_1BA4A68C8();
      v24 = sub_1BA4A84D8();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
      v12 = v36;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1BA0F6038(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1BA0FCA58(0);
  v6 = sub_1BA4A8078();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      v23 = sub_1BA4A7788();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1BA0F6290(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B9FDC85C(0);
  v6 = sub_1BA4A8078();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      sub_1BA4A8488();
      sub_1BA4A68C8();

      v22 = sub_1BA4A84D8();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

double sub_1BA0F6560@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B9F24A34(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BA0F1778();
      v10 = v17;
    }

    v11 = *(v10 + 56) + 48 * v8;
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);
    v14 = *v11;
    v15 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v15;
    *(a3 + 32) = v12;
    *(a3 + 40) = v13;
    sub_1BA0F6BCC(v8, v10, v14);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

double sub_1BA0F6614@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1B9FDA8E4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BA0F216C();
      v9 = v12;
    }

    sub_1B9FDC768(*(v9 + 48) + 40 * v7);
    sub_1B9F46920((*(v9 + 56) + 32 * v7), a2);
    sub_1BA0F70E8(v7, v9, v10);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1BA0F66B8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1B9F4E588(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BA0F247C();
      v9 = v12;
    }

    sub_1B9F46920((*(v9 + 56) + 32 * v7), a2);
    sub_1BA0F728C(v7, v9, v10);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1BA0F6758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B9F24A34(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BA0F2A3C();
      v10 = v21;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
    v20 = *(v12 - 8);
    sub_1B9FF3588(v11 + *(v20 + 72) * v8, a3);
    sub_1BA0F7454(v8, v10, v13);
    *v4 = v10;
    v14 = *(v20 + 56);
    v15 = a3;
    v16 = 0;
    v17 = v12;
  }

  else
  {
    v18 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a3;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1BA0F68B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1B9FDAB44(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v20 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BA0F2C7C();
      v9 = v20;
    }

    v10 = *(v9 + 56);
    v11 = sub_1BA4A1728();
    v19 = *(v11 - 8);
    v12.n128_f64[0] = (*(v19 + 32))(a2, v10 + *(v19 + 72) * v7, v11);
    sub_1BA0F7640(v7, v9, v12);
    *v3 = v9;
    v13 = *(v19 + 56);
    v14 = a2;
    v15 = 0;
    v16 = v11;
  }

  else
  {
    v17 = sub_1BA4A1728();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

void sub_1BA0F6A1C(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1BA4A7C58() + 1) & ~v6;
    do
    {
      sub_1BA4A8488();

      sub_1BA4A68C8();
      v10 = sub_1BA4A84D8();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v4);
        v17 = (v15 + 16 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_1BA0F6BCC(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1BA4A7C58() + 1) & ~v6;
    do
    {
      sub_1BA4A8488();

      sub_1BA4A68C8();
      v12 = sub_1BA4A84D8();

      v13 = v12 & v8;
      if (v4 >= v9)
      {
        if (v13 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v4);
        v16 = (v14 + 16 * v7);
        if (v4 != v7 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 48 * v4);
        v19 = (v17 + 48 * v7);
        if (v4 != v7 || v18 >= v19 + 3)
        {
          v10 = *v19;
          v11 = v19[2];
          v18[1] = v19[1];
          v18[2] = v11;
          *v18 = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_1BA0F6D88(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1BA4A7C58() + 1) & ~v6;
    do
    {
      sub_1BA4A8488();

      sub_1BA4A68C8();
      v10 = sub_1BA4A84D8();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + v4);
        v17 = (v15 + v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_1BA0F6F38(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1BA4A7C58() + 1) & ~v6;
    do
    {
      sub_1BA4A8488();

      sub_1BA4A68C8();
      v11 = sub_1BA4A84D8();

      v12 = v11 & v8;
      if (v4 >= v9)
      {
        if (v12 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v4);
        v15 = (v13 + 16 * v7);
        if (v4 != v7 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v4);
        v18 = (v16 + 32 * v7);
        if (v4 != v7 || v17 >= v18 + 2)
        {
          v10 = v18[1];
          *v17 = *v18;
          v17[1] = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

uint64_t sub_1BA0F70E8(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1BA4A7C58() + 1) & ~v6;
    do
    {
      sub_1B9FDC70C(*(a2 + 48) + 40 * v7, v26);
      v11 = sub_1BA4A7D38();
      result = sub_1B9FDC768(v26);
      v12 = v11 & v8;
      if (v4 >= v9)
      {
        if (v12 >= v9 && v4 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v4;
          v17 = (v15 + 40 * v7);
          if (v4 != v7 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v4);
          v22 = (v20 + 32 * v7);
          if (v4 != v7 || v21 >= v22 + 2)
          {
            v10 = v22[1];
            *v21 = *v22;
            v21[1] = v10;
            v4 = v7;
          }
        }
      }

      else if (v12 >= v9 || v4 >= v12)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1BA0F728C(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1BA4A7C58() + 1) & ~v6;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v7);
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1BA4A8488();
      v12 = v11;
      sub_1BA4A68C8();
      v13 = sub_1BA4A84D8();

      v14 = v13 & v8;
      if (v4 >= v9)
      {
        if (v14 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v4);
        v17 = (v15 + 8 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v4);
        v20 = (v18 + 32 * v7);
        if (v4 != v7 || v19 >= v20 + 2)
        {
          v10 = v20[1];
          *v19 = *v20;
          v19[1] = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_1BA0F7454(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1BA4A7C58() + 1) & ~v6;
    while (1)
    {
      sub_1BA4A8488();

      sub_1BA4A68C8();
      v10 = sub_1BA4A84D8();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        break;
      }

      if (v11 < v9)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 16 * v4);
      v14 = (v12 + 16 * v7);
      if (v4 != v7 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0) - 8) + 72);
      v17 = v16 * v4;
      v18 = v15 + v16 * v4;
      v19 = v16 * v7;
      v20 = v15 + v16 * v7 + v16;
      if (v17 < v19 || v18 >= v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v17 == v19)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

void sub_1BA0F7640(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1BA4A7C58() + 1) & ~v6;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v7);
      v11 = sub_1BA4A7788();

      v12 = v11 & v8;
      if (v4 >= v9)
      {
        if (v12 < v9 || v4 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v9 && v4 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v4);
      v17 = (v15 + 8 * v7);
      if (v4 != v7 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_1BA4A1728() - 8) + 72);
      v20 = v19 * v4;
      v21 = v18 + v19 * v4;
      v22 = v19 * v7;
      v23 = v18 + v19 * v7 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_1BA0F7808(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1BA4A7C58() + 1) & ~v6;
    do
    {
      sub_1BA4A8488();

      sub_1BA4A68C8();
      v10 = sub_1BA4A84D8();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v4);
        v17 = (v15 + 8 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

uint64_t sub_1BA0F79B8(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1BA4A7C58() + 1) & ~v6;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v7);
      result = sub_1BA4A8478();
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 >= v9 && v4 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v4);
          if (v4 != v7 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 8 * v4);
          v18 = (v16 + 8 * v7);
          if (v4 != v7 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v4 = v7;
          }
        }
      }

      else if (v12 >= v9 || v4 >= v12)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BA0F7B28(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1BA4A7C58() + 1) & ~v6;
    do
    {
      sub_1BA4A8488();
      sub_1BA4A68C8();

      result = sub_1BA4A84D8();
      v10 = result & v8;
      if (v4 >= v9)
      {
        if (v10 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v4);
        v13 = (v11 + v7);
        if (v4 != v7 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + v4);
        v16 = (v14 + v7);
        if (v4 != v7 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

double sub_1BA0F7D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1BA0F7DE4(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = a4[2];
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1BA0F7E40(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1BA0F7E88(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_1BA0F7ECC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B9F46920(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1BA0F7F38(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1B9F46920(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_1BA0F7FB4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1B9F46920(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1BA0F801C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  result = sub_1B9FF3588(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1BA0F80B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_1BA4A1728();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1BA0F8160(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

unint64_t sub_1BA0F81A4(unint64_t result, char a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t *sub_1BA0F81E8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1B9F1A0D8(result, a2, a3);

    return v6;
  }

  return result;
}

void (*sub_1BA0F8260(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1BA0F870C(v7);
  v7[9] = sub_1BA0F836C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1BA0F830C;
}

void sub_1BA0F830C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1BA0F836C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x58uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[7] = a3;
  v10[8] = v4;
  v10[6] = a2;
  v12 = *v4;
  v13 = sub_1B9F24A34(a2, a3);
  *(v11 + 80) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1BA0F1778();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1B9F1CB18(v18, a4 & 1);
    v13 = sub_1B9F24A34(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1BA4A83B8();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[9] = v13;
  if (v19)
  {
    v23 = *(*v5 + 56) + 48 * v13;
    v24 = *v23;
    v25 = *(v23 + 16);
    v26 = *(v23 + 32);
    v27 = *(v23 + 40);
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v24 = 0uLL;
    v25 = 0uLL;
  }

  *v11 = v24;
  *(v11 + 1) = v25;
  v11[4] = v26;
  v11[5] = v27;
  return sub_1BA0F84E0;
}

void sub_1BA0F84E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  LOBYTE(v9) = *(v2 + 80);
  if (a2)
  {
    if (!v6)
    {
      if (v2[10])
      {
        v20 = v2[9];
        v21 = *v2[8];
        v22 = v3;
        v23 = v2[1];
        v24 = v2[3];
        sub_1BA000898(*(v21 + 48) + 16 * v20);
        sub_1BA0F6BCC(v20, v21, v25);
        v5 = v24;
        v4 = v23;
        v3 = v22;
      }

      goto LABEL_16;
    }

    v10 = v2[9];
    v11 = *v2[8];
    if (v2[10])
    {
      goto LABEL_9;
    }

    v13 = v2[6];
    v12 = v2[7];
    v11[(v10 >> 6) + 8] |= 1 << v10;
    v14 = (v11[6] + 16 * v10);
    *v14 = v13;
    v14[1] = v12;
    v9 = v11[7];
    v15 = (v9 + 48 * v10);
    *v15 = v3;
    v15[1] = v4;
    v15[2] = v6;
    v15[3] = v5;
    v15[4] = v7;
    v15[5] = v8;
    v16 = v11[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
LABEL_15:
      v37 = v3;
      v38 = v4;
      v39 = v5;
      v11[2] = v18;

      v3 = v37;
      v4 = v38;
      v5 = v39;
      goto LABEL_16;
    }

    __break(1u);
  }

  if (!v6)
  {
    if (v9)
    {
      v26 = v2[9];
      v27 = *v2[8];
      v28 = v3;
      v29 = v4;
      v30 = v5;
      sub_1BA000898(*(v27 + 48) + 16 * v26);
      sub_1BA0F6BCC(v26, v27, v31);
      v5 = v30;
      v4 = v29;
      v3 = v28;
    }

    goto LABEL_16;
  }

  v10 = v2[9];
  v11 = *v2[8];
  if ((v9 & 1) == 0)
  {
    v33 = v2[6];
    v32 = v2[7];
    v11[(v10 >> 6) + 8] |= 1 << v10;
    v34 = (v11[6] + 16 * v10);
    *v34 = v33;
    v34[1] = v32;
    v35 = (v11[7] + 48 * v10);
    *v35 = v3;
    v35[1] = v4;
    v35[2] = v6;
    v35[3] = v5;
    v35[4] = v7;
    v35[5] = v8;
    v36 = v11[2];
    v17 = __OFADD__(v36, 1);
    v18 = v36 + 1;
    if (v17)
    {
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

LABEL_9:
  v19 = (v11[7] + 48 * v10);
  *v19 = v3;
  v19[1] = v4;
  v19[2] = v6;
  v19[3] = v5;
  v19[4] = v7;
  v19[5] = v8;
LABEL_16:
  v40 = *v2;
  v41 = v2[1];
  v43 = v2[2];
  v42 = v2[3];
  v44 = v2[4];
  v45 = v2[5];
  sub_1BA0FC9F4(v3, v4, v6, v5, v7, v8);
  sub_1BA0F7D80(v40, v41, v43, v42, v44, v45);

  free(v2);
}

uint64_t (*sub_1BA0F870C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1BA0F8734;
}

uint64_t sub_1BA0F8740(void (*a1)(void *a1), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v11 = v10;
  v12 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v71 - v14;
  v85[3] = a4;
  v85[4] = a5;
  v74 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v85);
  v17 = *(*(a4 - 8) + 16);
  v73 = boxed_opaque_existential_1;
  v17(boxed_opaque_existential_1, a2, a4);
  v18 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v20 = (v12 + 16);
  v19 = *(v12 + 16);
  v76 = a3;
  v77 = v18;
  v19(v15, a3 + v18, v11);
  v21 = sub_1BA4A4578();
  v22 = *(v12 + 8);
  v78 = v11;
  v22(v15, v11);
  v75 = a1;
  v23 = a1;
  v24 = sub_1BA4A1968();
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v24 >= *(v21 + 16))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v25 = v21 + 16 * v24;
  a1 = *(v25 + 32);
  v26 = *(v25 + 40);

  v11 = v78;
  v19(v15, v76 + v77, v78);
  v83[0] = a1;
  v83[1] = v26;
  v72 = v26;
  v20 = sub_1BA4A4528();
  v22(v15, v11);
  v23 = v75;
  v27 = sub_1BA4A1958();
  if ((v27 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v27 >= v20[2])
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v28 = &v20[2 * v27];
  v30 = v28[4];
  v29 = v28[5];

  if (v30 == sub_1BA4A2D58() && v29 == v31)
  {
  }

  else
  {
    v33 = sub_1BA4A8338();

    if ((v33 & 1) == 0)
    {
      sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v34 = swift_allocObject();
      v71 = xmmword_1BA4B5480;
      *(v34 + 16) = xmmword_1BA4B5480;
      *(v34 + 32) = sub_1BA4A2D58();
      *(v34 + 40) = v35;
      v82[0] = v30;
      v82[1] = v29;
      v36 = v76;
      swift_beginAccess();
      sub_1BA4A4478();
      swift_endAccess();

      v37 = swift_allocObject();
      *(v37 + 16) = v71;
      *(v37 + 32) = v30;
      *(v37 + 40) = v29;
      swift_beginAccess();

      sub_1BA4A4458();
      swift_endAccess();

      v38 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
      swift_beginAccess();
      if (*(*(v36 + v38) + 16))
      {

        sub_1B9F24A34(v30, v29);
        v40 = v39;

        if (v40)
        {
          swift_beginAccess();
          sub_1B9FEF28C(0, 0, v30, v29);
          swift_endAccess();
          goto LABEL_31;
        }
      }

      goto LABEL_29;
    }
  }

  sub_1B9F0A534(v85, v82);
  sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v81 = 0;
    v80 = 0u;
    v79 = 0u;
    sub_1BA0FA9CC(&v79, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v36 = v76;
LABEL_28:
    sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1BA4B5480;
    *(v55 + 32) = v30;
    *(v55 + 40) = v29;
    swift_beginAccess();
    sub_1BA4A4558();
    swift_endAccess();
LABEL_29:

    goto LABEL_31;
  }

  sub_1B9F1134C(&v79, v83);
  __swift_project_boxed_opaque_existential_1(v83, v84);
  v41 = sub_1BA4A2D58();
  v43 = v42;
  v44 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
  v36 = v76;
  swift_beginAccess();
  v45 = *(v36 + v44);
  if (*(v45 + 16) && (, v46 = sub_1B9F24A34(v41, v43), v48 = v47, , (v48 & 1) != 0))
  {
    v49 = (*(v45 + 56) + 16 * v46);
    v51 = *v49;
    v50 = v49[1];
  }

  else
  {

    v51 = 0;
    v50 = 0;
  }

  __swift_project_boxed_opaque_existential_1(v83, v84);
  v52 = sub_1BA4A2E58();
  if (v50)
  {
    if (v51 == v52 && v50 == v53)
    {

LABEL_27:
      __swift_destroy_boxed_opaque_existential_1(v83);
      goto LABEL_28;
    }

    v54 = sub_1BA4A8338();

    if (v54)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1BA4B5480;
  *(v56 + 32) = v30;
  *(v56 + 40) = v29;
  swift_beginAccess();
  sub_1BA4A4498();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v83);
LABEL_31:
  sub_1B9F0A534(v85, v82);
  sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(&v79, v83);
    __swift_project_boxed_opaque_existential_1(v83, v84);
    v57 = sub_1BA4A2D58();
    v59 = v58;
    v60 = a1;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    v61 = sub_1BA4A2E58();
    v63 = v62;
    v64 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v79 = *(v36 + v64);
    *(v36 + v64) = 0x8000000000000000;
    v66 = v63;
    a1 = v60;
    sub_1B9F248E4(v61, v66, v57, v59, isUniquelyReferenced_nonNull_native);

    *(v36 + v64) = v79;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v83);
  }

  else
  {
    v81 = 0;
    v80 = 0u;
    v79 = 0u;
    sub_1BA0FA9CC(&v79, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  }

  v67 = v72;
  v11 = sub_1BA0E7AC0(v83);
  a1 = sub_1BA0F0994(v82, a1, v67);
  if (!*(v68 + 2))
  {
    (a1)(v82, 0);

    (v11)(v83, 0);
    goto LABEL_40;
  }

  v15 = v68;
  v23 = sub_1BA4A1958();
  v20 = *(v15 + 2);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v15 + 2) = v20;
  if (result)
  {
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_45:
  result = sub_1BA2F67D4(v20);
  v20 = result;
  *(v15 + 2) = result;
  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

LABEL_37:
  if (v23 < v20[2])
  {
    __swift_assign_boxed_opaque_existential_1(&v20[5 * v23 + 4], v85, v70);
    *(v15 + 3) = Array<A>.identifierToIndexDict()(*(v15 + 2));

    (a1)(v82, 0);

    (v11)(v83, 0);
LABEL_40:
    sub_1BA0EF3D0();
    return __swift_destroy_boxed_opaque_existential_1(v85);
  }

LABEL_47:
  __break(1u);
  return result;
}

int64_t sub_1BA0F91A8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v90 = *a3;
  v92 = sub_1BA4A1798();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v10);
  v89 = v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1BA4A1998();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v12);
  v99 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1BA4A3EA8();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v14);
  v16 = v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = v88 - v21;
  v109[3] = a4;
  v109[4] = a5;
  v88[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v109);
  v24 = *(*(a4 - 8) + 16);
  v88[2] = boxed_opaque_existential_1;
  v88[3] = a4;
  v24(boxed_opaque_existential_1, a1, a4);
  v25 = sub_1BA4A1968();
  v26 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v98 = *(v19 + 16);
  v98(v22, &a3[v26], v18);
  v27 = sub_1BA4A4548();
  v97 = *(v19 + 8);
  v97(v22, v18);
  if (v27 < v25)
  {
    v28 = v16;
    sub_1BA4A3D88();
    v29 = v93;
    v30 = v94;
    (*(v93 + 16))(v99, a2, v94);
    v31 = sub_1BA4A3E88();
    v32 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v100 = v34;
      *v33 = 136315650;
      v35 = sub_1BA4A85D8();
      v37 = sub_1B9F0B82C(v35, v36, &v100);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4EAC70, &v100);
      *(v33 + 22) = 2080;
      sub_1BA0FB2E8(&unk_1EBBED850, MEMORY[0x1E6969C28], MEMORY[0x1E6969C70]);
      v38 = v99;
      v39 = sub_1BA4A82D8();
      v41 = v40;
      (*(v29 + 8))(v38, v30);
      v42 = sub_1B9F0B82C(v39, v41, &v100);

      *(v33 + 24) = v42;
      _os_log_impl(&dword_1B9F07000, v31, v32, "[%s] %s Failed to insert item at indexPath: %s, because it doesn't exist.", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      MEMORY[0x1BFAF43A0](v33, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v99, v30);
    }

    (*(v95 + 8))(v28, v96);
    return __swift_destroy_boxed_opaque_existential_1(v109);
  }

  v43 = sub_1BA4A1968();
  v98(v22, &a3[v26], v18);
  v44 = sub_1BA4A4548();
  v97(v22, v18);
  if (v43 == v44)
  {
    sub_1BA0F12C8(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1BA4B5480;
    sub_1B9F0A534(v109, v45 + 32);
    v46 = v89;
    sub_1BA4A1788();
    v47 = sub_1BA4A1748();
    v99 = v48;
    (*(v91 + 8))(v46, v92);
    sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

    v50 = Array<A>.identifierToIndexDict()(v49);

    v100 = 0uLL;
    v101 = v45;
    v102 = v50;
    v103 = v47;
    v104 = v99;
    v98(v22, &a3[v26], v18);
    v51 = sub_1BA4A4548();
    v97(v22, v18);
    sub_1BA0E8FD4(&v100, v51);

    return __swift_destroy_boxed_opaque_existential_1(v109);
  }

  v52 = a2;
  v99 = a3;
  v53 = &a3[v26];
  v54 = v98;
  v98(v22, v53, v18);
  v55 = sub_1BA4A4578();
  v56 = v97;
  v97(v22, v18);
  result = sub_1BA4A1968();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (result >= *(v55 + 16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v58 = v56;
  v59 = v54;
  v60 = v55 + 16 * result;
  v61 = *(v60 + 40);
  v95 = *(v60 + 32);

  v96 = v26;
  v59(v22, &v99[v26], v18);
  v62 = v95;
  *&v100 = v95;
  *(&v100 + 1) = v61;
  v63 = sub_1BA4A4528();
  v58(v22, v18);
  v64 = *(v63 + 16);
  v65 = sub_1BA4A1958();
  v88[1] = v52;
  if (v64 == v65)
  {

    sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1BA4B5480;
    *(v66 + 32) = sub_1BA4A2D58();
    *(v66 + 40) = v67;
    v107 = v62;
    v108 = v61;
    v68 = v99;
    swift_beginAccess();

    sub_1BA4A4448();
    swift_endAccess();

    goto LABEL_15;
  }

  result = sub_1BA4A1958();
  if (result < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v68 = v99;
  if (result < *(v63 + 16))
  {
    v69 = v63 + 16 * result;
    v70 = *(v69 + 32);
    v71 = *(v69 + 40);

    sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1BA4B5480;
    *(v72 + 32) = sub_1BA4A2D58();
    *(v72 + 40) = v73;
    v107 = v70;
    v108 = v71;
    swift_beginAccess();
    sub_1BA4A4478();
    swift_endAccess();

LABEL_15:

    v74 = sub_1BA0E7AC0(&v107);
    v76 = sub_1BA0F0994(v105, v62, v61);
    v77 = v75 + 16;
    if (!*(v75 + 16))
    {
      (v76)(v105, 0);

      (v74)(&v107, 0);
      goto LABEL_20;
    }

    v78 = v75;
    result = sub_1BA4A1958();
    if (*(*v77 + 16) >= result)
    {
      v79 = result;
      if ((result & 0x8000000000000000) == 0)
      {
        sub_1B9F0A534(v109, &v100);
        sub_1BA0F1388(v79, v79, &v100, sub_1B9F281E8, sub_1BA170264);
        *(v78 + 24) = Array<A>.identifierToIndexDict()(*(v78 + 16));

        (v76)(v105, 0);

        (v74)(&v107, 0);
LABEL_20:
        sub_1B9F0A534(v109, &v107);
        sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
        sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
        if (swift_dynamicCast())
        {
          sub_1B9F1134C(v105, &v100);
          __swift_project_boxed_opaque_existential_1(&v100, v102);
          v80 = sub_1BA4A2D58();
          v82 = v81;
          __swift_project_boxed_opaque_existential_1(&v100, v102);
          v83 = sub_1BA4A2E58();
          v85 = v84;
          v86 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v105[0] = *&v68[v86];
          *&v68[v86] = 0x8000000000000000;
          sub_1B9F248E4(v83, v85, v80, v82, isUniquelyReferenced_nonNull_native);

          *&v68[v86] = *&v105[0];
          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_1(&v100);
        }

        else
        {
          v106 = 0;
          memset(v105, 0, sizeof(v105));
          sub_1BA0FA9CC(v105, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
        }

        sub_1BA0EF3D0();
        return __swift_destroy_boxed_opaque_existential_1(v109);
      }

      goto LABEL_28;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1BA0F9EF0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v89 = a2;
  v91 = a1;
  v84 = *a4;
  v10 = sub_1BA4A1798();
  v83 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1BA4A3EA8();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v14);
  v86 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v82 - v24;
  v100[3] = a5;
  v100[4] = a6;
  v90 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v100);
  v27 = *(*(a5 - 8) + 16);
  v85 = boxed_opaque_existential_1;
  v28 = v91;
  v91 = a5;
  v27(boxed_opaque_existential_1, v28, a5);
  if (a3)
  {
    v29 = a4;
    v30 = a3;
    v31 = v89;
  }

  else
  {
    v32 = v13;
    v33 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
    swift_beginAccess();
    (*(v18 + 16))(v25, a4 + v33, v17);
    v34 = sub_1BA4A4578();
    (*(v18 + 8))(v25, v17);
    v35 = *(v34 + 16);
    if (!v35)
    {

      sub_1BA0F12C8(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1BA4B5480;
      sub_1B9F0A534(v100, v75 + 32);
      sub_1BA4A1788();
      v76 = sub_1BA4A1748();
      v78 = v77;
      (*(v83 + 8))(v32, v10);
      sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

      v80 = Array<A>.identifierToIndexDict()(v79);

      v92 = 0uLL;
      v93 = v75;
      v94 = v80;
      v95 = v76;
      v96 = v78;
      sub_1BA0E8FD4(&v92, 0);

      return __swift_destroy_boxed_opaque_existential_1(v100);
    }

    v29 = a4;
    v36 = (v34 + 16 + 16 * v35);
    v31 = *v36;
    v30 = v36[1];
  }

  v37 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  v38 = v29;
  swift_beginAccess();
  (*(v18 + 16))(v21, v29 + v37, v17);
  *&v92 = v31;
  *(&v92 + 1) = v30;

  sub_1BA4A44E8();
  v40 = v39;
  (*(v18 + 8))(v21, v17);
  if (v40)
  {
    v41 = v86;
    sub_1BA4A3D88();

    v42 = sub_1BA4A3E88();
    v43 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v92 = v45;
      *v44 = 136315650;
      v46 = sub_1BA4A85D8();
      v48 = sub_1B9F0B82C(v46, v47, &v92);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4EAC50, &v92);
      *(v44 + 22) = 2080;
      v49 = sub_1B9F0B82C(v31, v30, &v92);

      *(v44 + 24) = v49;
      _os_log_impl(&dword_1B9F07000, v42, v43, "[%s] %s Failed to append item to given section with id: %s, because it doesn't exist.", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v45, -1, -1);
      MEMORY[0x1BFAF43A0](v44, -1, -1);
    }

    else
    {
    }

    (*(v87 + 8))(v41, v88);
  }

  else
  {
    sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1BA4B5480;
    *(v50 + 32) = sub_1BA4A2D58();
    *(v50 + 40) = v51;
    v99[0] = v31;
    v99[1] = v30;
    swift_beginAccess();

    sub_1BA4A4448();
    swift_endAccess();

    v89 = v38;
    v52 = sub_1BA0E7AC0(v99);
    v54 = sub_1BA0F0994(v97, v31, v30);
    v55 = (v53 + 16);
    if (*(v53 + 16))
    {
      v56 = v53;
      sub_1B9F0A534(v100, &v92);
      v57 = *v55;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v55 = v57;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v57 = sub_1B9F281E8(0, v57[2] + 1, 1, v57);
        *v55 = v57;
      }

      v60 = v57[2];
      v59 = v57[3];
      if (v60 >= v59 >> 1)
      {
        *v55 = sub_1B9F281E8((v59 > 1), v60 + 1, 1, v57);
      }

      v61 = __swift_mutable_project_boxed_opaque_existential_1(&v92, v94);
      v62 = MEMORY[0x1EEE9AC00](v61, v61);
      v64 = &v82 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v65 + 16))(v64, v62);
      sub_1B9F1C4F4(v60, v64, v55, v91, v90);
      __swift_destroy_boxed_opaque_existential_1(&v92);
      *(v56 + 24) = Array<A>.identifierToIndexDict()(*(v56 + 16));

      (v54)(v97, 0);

      (v52)(v99, 0);
    }

    else
    {
      (v54)(v97, 0);

      (v52)(v99, 0);
    }

    sub_1B9F0A534(v100, v99);
    sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    if (swift_dynamicCast())
    {
      sub_1B9F1134C(v97, &v92);
      __swift_project_boxed_opaque_existential_1(&v92, v94);
      v66 = sub_1BA4A2D58();
      v68 = v67;
      __swift_project_boxed_opaque_existential_1(&v92, v94);
      v69 = sub_1BA4A2E58();
      v71 = v70;
      v72 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
      v73 = v89;
      swift_beginAccess();
      v74 = swift_isUniquelyReferenced_nonNull_native();
      *&v97[0] = *(v73 + v72);
      *(v73 + v72) = 0x8000000000000000;
      sub_1B9F248E4(v69, v71, v66, v68, v74);

      *(v73 + v72) = *&v97[0];
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(&v92);
    }

    else
    {
      v98 = 0;
      memset(v97, 0, sizeof(v97));
      sub_1BA0FA9CC(v97, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    }

    sub_1BA0EF3D0();
  }

  return __swift_destroy_boxed_opaque_existential_1(v100);
}

uint64_t sub_1BA0FA9CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1BA0F12C8(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1BA0FAA3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA0FAAA0(uint64_t a1)
{
  sub_1BA0FAA3C(0, &qword_1EDC6AE28, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA0FB13C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA0FB1A0(uint64_t a1)
{
  if (!qword_1EDC5E028)
  {
    sub_1BA4A27B8();
    sub_1BA4A1728();
    sub_1BA0FB2E8(&qword_1EDC6AD90, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E81B8]);
    v1 = sub_1BA4A80A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E028);
    }
  }
}

void sub_1BA0FB24C(uint64_t a1)
{
  if (!qword_1EDC5E020)
  {
    sub_1BA4A27B8();
    sub_1BA0FB2E8(&qword_1EDC6AD90, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E81B8]);
    v1 = sub_1BA4A80A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E020);
    }
  }
}

uint64_t sub_1BA0FB2E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA0FB330()
{
  v1 = *v0;
  v2 = sub_1BA4A3EA8();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v39 - v9;
  v11 = (*(v1 + 176))(v8);
  v12 = v0 + 7;
  swift_beginAccess();
  v13 = v0[7];
  v14 = v0 + 8;
  swift_beginAccess();
  v15 = v0[8];

  LOBYTE(v11) = (v11)(v13, v15);

  if (v11)
  {
    sub_1BA4A3D88();

    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6F88();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v42 = v19;
      *v18 = 136315394;
      v20 = sub_1BA4A85D8();
      v22 = sub_1B9F0B82C(v20, v21, &v42);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = (*v12 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier);
      v24 = *v23;
      v25 = v23[1];

      v26 = sub_1B9F0B82C(v24, v25, &v42);

      *(v18 + 14) = v26;
      _os_log_impl(&dword_1B9F07000, v16, v17, "%s using primary data source: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    (*(v40 + 8))(v10, v41);
  }

  else
  {
    sub_1BA4A3D88();

    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6F88();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42 = v30;
      *v29 = 136315394;
      v31 = sub_1BA4A85D8();
      v33 = sub_1B9F0B82C(v31, v32, &v42);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v34 = (*v14 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
      v35 = *v34;
      v36 = v34[1];

      v37 = sub_1B9F0B82C(v35, v36, &v42);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_1B9F07000, v27, v28, "%s using secondary data source: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    (*(v40 + 8))(v5, v41);
    v12 = v14;
  }

  return *v12;
}

uint64_t sub_1BA0FB788()
{
  v1 = *v0;
  v2 = sub_1BA4A3EA8();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v38 - v9;
  v11 = (*(v1 + 176))(v8);
  v12 = v0 + 7;
  swift_beginAccess();
  v13 = v0[7];
  v14 = v0 + 8;
  swift_beginAccess();
  v15 = v0[8];

  LOBYTE(v11) = (v11)(v13, v15);

  if (v11)
  {
    sub_1BA4A3D88();

    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6F88();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v41 = v19;
      *v18 = 136315394;
      v20 = sub_1BA4A85D8();
      v22 = sub_1B9F0B82C(v20, v21, &v41);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = *(*v12 + 24);
      v24 = *(*v12 + 32);

      v25 = sub_1B9F0B82C(v23, v24, &v41);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_1B9F07000, v16, v17, "%s using primary data source: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    (*(v39 + 8))(v10, v40);
  }

  else
  {
    sub_1BA4A3D88();

    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6F88();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136315394;
      v30 = sub_1BA4A85D8();
      v32 = sub_1B9F0B82C(v30, v31, &v41);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = (*v14 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier);
      v34 = *v33;
      v35 = v33[1];

      v36 = sub_1B9F0B82C(v34, v35, &v41);

      *(v28 + 14) = v36;
      _os_log_impl(&dword_1B9F07000, v26, v27, "%s using secondary data source: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
    }

    (*(v39 + 8))(v5, v40);
    v12 = v14;
  }

  return *v12;
}

void sub_1BA0FBBD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A80A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA0FBC38(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_1B9F0ADF8(255, a3, a4);
    sub_1BA0FAA3C(255, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E62F8]);
    sub_1B9F15C34(a5, a3, a4);
    v9 = sub_1BA4A80A8();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA0FBD0C(unint64_t result, _BYTE *a2, const void *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = &v6[v10];
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1BA27F490(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1BA1726C8(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_1BA0FBDE0()
{
  v1 = *v0;
  v2 = sub_1BA4A3EA8();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v40 - v9;
  v11 = (*(v1 + 176))(v8);
  v12 = v0 + 7;
  swift_beginAccess();
  v13 = v0[7];
  v14 = v0 + 8;
  swift_beginAccess();
  v15 = v0[8];

  v16 = v15;
  LOBYTE(v11) = (v11)(v13, v16);

  if (v11)
  {
    sub_1BA4A3D88();

    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6F88();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v43 = v20;
      *v19 = 136315394;
      v21 = sub_1BA4A85D8();
      v23 = sub_1B9F0B82C(v21, v22, &v43);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = (*v12 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
      v25 = *v24;
      v26 = v24[1];

      v27 = sub_1B9F0B82C(v25, v26, &v43);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_1B9F07000, v17, v18, "%s using primary data source: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    (*(v41 + 8))(v10, v42);
  }

  else
  {
    sub_1BA4A3D88();

    v28 = sub_1BA4A3E88();
    v29 = sub_1BA4A6F88();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v43 = v31;
      *v30 = 136315394;
      v32 = sub_1BA4A85D8();
      v34 = sub_1B9F0B82C(v32, v33, &v43);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v35 = (*v14 + qword_1EDC84AD0);
      v36 = *v35;
      v37 = v35[1];

      v38 = sub_1B9F0B82C(v36, v37, &v43);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_1B9F07000, v28, v29, "%s using secondary data source: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
    }

    (*(v41 + 8))(v5, v42);
    v12 = v14;
  }

  return *v12;
}

uint64_t sub_1BA0FC234()
{
  v1 = *v0;
  v2 = sub_1BA4A3EA8();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v38 - v9;
  v11 = (*(v1 + 176))(v8);
  v12 = v0 + 7;
  swift_beginAccess();
  v13 = v0[7];
  v14 = v0 + 8;
  swift_beginAccess();
  v15 = v0[8];

  LOBYTE(v11) = (v11)(v13, v15);

  if (v11)
  {
    sub_1BA4A3D88();

    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6F88();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v41 = v19;
      *v18 = 136315394;
      v20 = sub_1BA4A85D8();
      v22 = sub_1B9F0B82C(v20, v21, &v41);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = *(*v12 + 24);
      v24 = *(*v12 + 32);

      v25 = sub_1B9F0B82C(v23, v24, &v41);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_1B9F07000, v16, v17, "%s using primary data source: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    (*(v39 + 8))(v10, v40);
  }

  else
  {
    sub_1BA4A3D88();

    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6F88();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136315394;
      v30 = sub_1BA4A85D8();
      v32 = sub_1B9F0B82C(v30, v31, &v41);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = (*v14 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
      v34 = *v33;
      v35 = v33[1];

      v36 = sub_1B9F0B82C(v34, v35, &v41);

      *(v28 + 14) = v36;
      _os_log_impl(&dword_1B9F07000, v26, v27, "%s using secondary data source: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
    }

    (*(v39 + 8))(v5, v40);
    v12 = v14;
  }

  return *v12;
}

void sub_1BA0FC67C(uint64_t a1)
{
  if (!qword_1EDC5F898)
  {
    sub_1B9F117BC(255, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F898);
    }
  }
}

uint64_t sub_1BA0FC704(uint64_t a1)
{
  sub_1BA0FC67C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA0FC760(uint64_t a1)
{
  if (!qword_1EBBEBEB0)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6E370, 0x1E69DCAB8);
    v1 = sub_1BA4A80A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEBEB0);
    }
  }
}

double __swift_assign_boxed_opaque_existential_1(uint64_t *a1, uint64_t *a2, __n128 result)
{
  if (a1 != a2)
  {
    v3 = a1[3];
    v4 = a2[3];
    if (v3 == v4)
    {
      v11 = *(v3 - 8);
      if ((*(v11 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v12 = *(v11 + 24);

        v12(result);
      }
    }

    else
    {
      a1[3] = v4;
      a1[4] = a2[4];
      v5 = *(v3 - 8);
      v6 = *(v4 - 8);
      v7 = v6;
      v8 = *(v6 + 80);
      if ((*(v5 + 82) & 2) != 0)
      {
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(result);
        }
      }

      else
      {
        (*(v5 + 32))(v16, result);
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v7 + 16))(a1, a2, v4);
        }

        (*(v5 + 8))(v16, v3);
      }
    }
  }

  return result.n128_f64[0];
}

double sub_1BA0FC9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
  }

  return result;
}

void sub_1BA0FCA58(uint64_t a1)
{
  if (!qword_1EBBEBEB8)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6B5C0, 0x1E69A4368);
    sub_1B9F15C34(&qword_1EBBEBEA8, &qword_1EDC6B5C0, 0x1E69A4368);
    v1 = sub_1BA4A80A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEBEB8);
    }
  }
}

uint64_t ButtonCollectionViewItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void ButtonCollectionViewItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t ButtonCollectionViewItem.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void ButtonCollectionViewItem.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void *ButtonCollectionViewItem.image.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t sub_1BA0FCCFC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA0FFEB8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1B9F0F1B8(v3, v4);
}

uint64_t sub_1BA0FCD7C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA0C68C8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  sub_1B9F0F1B8(v3, v4);
  result = sub_1B9F0E310(v7, v8);
  *(a2 + 64) = v6;
  *(a2 + 72) = v5;
  return result;
}

uint64_t ButtonCollectionViewItem.buttonTapAction.getter()
{
  v1 = *(v0 + 64);
  sub_1B9F0F1B8(v1, *(v0 + 72));
  return v1;
}

uint64_t ButtonCollectionViewItem.buttonTapAction.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_1BA0FCF04@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA0FFE84;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1B9F0F1B8(v3, v4);
}

uint64_t sub_1BA0FCF84(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA0FFE44;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  sub_1B9F0F1B8(v3, v4);
  result = sub_1B9F0E310(v7, v8);
  *(a2 + 88) = v6;
  *(a2 + 96) = v5;
  return result;
}

uint64_t ButtonCollectionViewItem.makeContextMenu.getter()
{
  v1 = *(v0 + 88);
  sub_1B9F0F1B8(v1, *(v0 + 96));
  return v1;
}

uint64_t ButtonCollectionViewItem.makeContextMenu.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t ButtonCollectionViewItem.init(identifier:title:image:isEnabled:buttonTapAction:isContextMenuPrimaryAction:makeContextMenu:isFullWidthButton:reuseIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  *(a9 + 16) = result;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  *(a9 + 96) = a12;
  *(a9 + 81) = a13;
  *a9 = a14;
  *(a9 + 8) = a15;
  return result;
}

uint64_t sub_1BA0FD134(uint64_t a1)
{
  v2 = sub_1BA0FFEC0();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void sub_1BA0FD1C8(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA0FD224(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

uint64_t sub_1BA0FD2BC(uint64_t a1, void **a2)
{
  sub_1BA0FF914(a1, v7, &qword_1EDC6E1A0, sub_1B9FCD918);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v7, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x160))(v5);
  return sub_1B9F43D84(v7, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA0FD3A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
  swift_beginAccess();
  return sub_1BA0FF914(v1 + v3, a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA0FD418(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x160))(v4);
  return sub_1B9F43D84(a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t (*sub_1BA0FD4E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA0FD548;
}

uint64_t sub_1BA0FD548(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x160))(result);
  }

  return result;
}

id sub_1BA0FD5B4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = v0;
    v6 = (*(ObjectType + 384))();
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1BA0FD634()
{
  v0 = [objc_opt_self() systemWhiteColor];

  return v0;
}

uint64_t sub_1BA0FD674()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_isFullWidthButton;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1BA0FD6B8(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_isFullWidthButton;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1BA0FE74C();
}

void (*sub_1BA0FD70C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA0FD770;
}

void sub_1BA0FD770(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA0FE74C();
  }
}

void *sub_1BA0FD7A4(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = &v4[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button] = 0;
  v4[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_isFullWidthButton] = 1;
  v11 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_fullWidthButtonConstraints] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_compactWidthButtonConstraints] = v11;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for ButtonCollectionViewCell();
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x150);
  v14 = v12;
  v13();

  return v14;
}

id ButtonCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_1BA0FD988()
{
  v1 = [v0 contentView];
  v2 = sub_1BA0FD5B4();
  [v1 addSubview_];

  [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button) addTarget:v0 action:sel_didTapButton_ forControlEvents:64];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);

  return v3();
}

void sub_1BA0FDA68()
{
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B7510;
  v2 = sub_1BA0FD5B4();
  v3 = [v2 leadingAnchor];

  v4 = [v0 contentView];
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = [v0 &selRef_fetchSources];
  v8 = [v7 trailingAnchor];

  v9 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button;
  v10 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button] trailingAnchor];
  v11 = [v8 constraintEqualToAnchor_];

  *(v1 + 40) = v11;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_fullWidthButtonConstraints] = v1;

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B7510;
  v13 = [*&v0[v9] leadingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintGreaterThanOrEqualToAnchor_];
  *(v12 + 32) = v16;
  v17 = [v0 contentView];
  v18 = [v17 trailingAnchor];

  v19 = [*&v0[v9] trailingAnchor];
  v20 = [v18 constraintGreaterThanOrEqualToAnchor_];

  *(v12 + 40) = v20;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_compactWidthButtonConstraints] = v12;

  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4B5890;
  v23 = [*&v0[v9] topAnchor];
  v24 = [v0 contentView];
  v25 = [v24 topAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v22 + 32) = v26;
  v27 = [v0 contentView];
  v28 = [v27 bottomAnchor];

  v29 = [*&v0[v9] bottomAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v22 + 40) = v30;
  v31 = [*&v0[v9] centerYAnchor];
  v32 = [v0 contentView];
  v33 = [v32 centerYAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v22 + 48) = v34;
  v35 = [*&v0[v9] centerXAnchor];
  v36 = [v0 contentView];
  v37 = [v36 centerXAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v22 + 56) = v38;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v39 = sub_1BA4A6AE8();

  [v21 activateConstraints_];
}

void sub_1BA0FDF64()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0D0F0(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v55 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v55 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v55 - v21;
  v23 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA0FF914(v1 + v23, v75, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v76)
  {
    sub_1B9F43D84(v75, &qword_1EDC6E1A0, sub_1B9FCD918);
LABEL_6:
    sub_1BA4A3DD8();
    v31 = sub_1BA4A3E88();
    v32 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v67[0] = v34;
      *v33 = 136315138;
      v35 = sub_1BA4A85D8();
      v37 = v2;
      v38 = sub_1B9F0B82C(v35, v36, v67);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1B9F07000, v31, v32, "[%s] Item is not ButtonCollectionViewItem", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      MEMORY[0x1BFAF43A0](v33, -1, -1);

      (*(v3 + 8))(v6, v37);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    return;
  }

  sub_1B9FCD918();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v60 = v67[1];
  v59 = v67[3];
  v55[1] = v67[4];
  v24 = v67[5];
  v62 = v67[6];
  v57 = v68;
  v63 = v69;
  v64 = v70;
  v56 = v71;
  v25 = v72;
  v61 = v73;
  v65 = v74;
  v26 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_isFullWidthButton;
  swift_beginAccess();
  *(v1 + v26) = v25;
  sub_1BA0FE74C();
  v27 = sub_1BA0FD5B4();
  sub_1BA4A79C8();
  v28 = sub_1BA4A79A8();
  v66 = *(*(v28 - 8) + 48);
  v29 = v66(v22, 1, v28);
  v58 = v24;
  if (v29)
  {
    v30 = MEMORY[0x1E69DC598];
    sub_1BA0FF914(v22, v10, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
    sub_1BA4A79D8();

    sub_1B9F43D84(v22, &qword_1EDC5E0A8, v30);
  }

  else
  {

    sub_1BA4A7978();
    sub_1BA4A79D8();
  }

  v39 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button;
  v40 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button);
  sub_1BA4A79C8();
  if (v66(v18, 1, v28))
  {
    v41 = v39;
    v42 = MEMORY[0x1E69DC598];
    sub_1BA0FF914(v18, v10, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
    sub_1BA4A79D8();

    v43 = v42;
    v39 = v41;
    sub_1B9F43D84(v18, &qword_1EDC5E0A8, v43);
    v44 = v62;
  }

  else
  {
    v44 = v62;
    v45 = v62;
    sub_1BA4A7958();
    sub_1BA4A79D8();
  }

  v46 = *(v1 + v39);
  sub_1BA4A79C8();
  if (v66(v14, 1, v28))
  {
    v47 = MEMORY[0x1E69DC598];
    sub_1BA0FF914(v14, v10, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
    sub_1BA4A79D8();

    sub_1B9F43D84(v14, &qword_1EDC5E0A8, v47);
  }

  else
  {
    v48 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
    sub_1BA4A77F8();
    sub_1BA4A79D8();
  }

  [*(v1 + v39) setEnabled_];
  v49 = v65;
  v50 = v61;
  if (v61)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    v52 = v50(Strong);

    sub_1B9F0E310(v50, v49);
    if (v52)
    {
      [*(v1 + v39) setMenu_];
      v53 = *(v1 + v39);
      [v53 setShowsMenuAsPrimaryAction_];

      sub_1B9F0E310(v63, v64);
      sub_1B9F0E310(v50, v49);

      return;
    }

    sub_1B9F0E310(v63, v64);
    v54 = v50;
  }

  else
  {

    sub_1B9F0E310(v63, v64);
    v54 = 0;
  }

  sub_1B9F0E310(v54, v49);
}

void sub_1BA0FE74C()
{
  swift_beginAccess();
  v0 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);

  v1 = sub_1BA4A6AE8();

  [v0 activateConstraints_];

  v2 = sub_1BA4A6AE8();

  [v0 deactivateConstraints_];
}

uint64_t sub_1BA0FE864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  sub_1B9F0D0F0(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v25 - v16;
  v18 = sub_1BA0FD5B4();
  sub_1BA4A79C8();
  v19 = sub_1BA4A79A8();
  if ((*(*(v19 - 8) + 48))(v17, 1, v19))
  {
    v20 = MEMORY[0x1E69DC598];
    sub_1BA0FF914(v17, v13, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
    sub_1BA4A79D8();

    sub_1B9F43D84(v17, &qword_1EDC5E0A8, v20);
  }

  else
  {

    sub_1BA4A7978();
    sub_1BA4A79D8();
  }

  [*(v5 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button) setEnabled_];
  v21 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction);
  v22 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction);
  v23 = *(v6 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction + 8);
  *v21 = a3;
  v21[1] = a4;

  return sub_1B9F0E310(v22, v23);
}

id sub_1BA0FEA50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v45 = a6;
  v42[1] = a1;
  v43 = a3;
  sub_1B9F0D0F0(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v44 = v42 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v42 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v42 - v22;
  v24 = (v6 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction);
  v25 = *(v6 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction);
  v26 = *(v6 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction + 8);
  *v24 = a4;
  v24[1] = a5;

  sub_1B9F0E310(v25, v26);
  v46 = v6;
  v27 = sub_1BA0FD5B4();
  sub_1BA4A79C8();
  v28 = sub_1BA4A79A8();
  v29 = *(*(v28 - 8) + 48);
  if (v29(v23, 1, v28))
  {
    v30 = MEMORY[0x1E69DC598];
    sub_1BA0FF914(v23, v12, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
    sub_1BA4A79D8();

    sub_1B9F43D84(v23, &qword_1EDC5E0A8, v30);
  }

  else
  {

    sub_1BA4A7978();
    sub_1BA4A79D8();
  }

  v31 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button;
  v32 = v46;
  v33 = *(v46 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button);
  sub_1BA4A79C8();
  if (v29(v19, 1, v28))
  {
    v34 = MEMORY[0x1E69DC598];
    sub_1BA0FF914(v19, v12, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
    sub_1BA4A79D8();

    v35 = v34;
    v32 = v46;
    sub_1B9F43D84(v19, &qword_1EDC5E0A8, v35);
  }

  else
  {
    v36 = v43;
    sub_1BA4A7958();
    sub_1BA4A79D8();
  }

  v37 = *(v32 + v31);
  v38 = v44;
  sub_1BA4A79C8();
  if (v29(v38, 1, v28))
  {
    v39 = MEMORY[0x1E69DC598];
    sub_1BA0FF914(v38, v12, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
    sub_1BA4A79D8();

    sub_1B9F43D84(v38, &qword_1EDC5E0A8, v39);
  }

  else
  {
    v40 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
    sub_1BA4A77F8();
    sub_1BA4A79D8();
  }

  return [*(v32 + v31) setEnabled_];
}

void sub_1BA0FEE1C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 viewController];
  if (v8)
  {
    v9 = v8;
    v10 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
    swift_beginAccess();
    sub_1BA0FF914(&v1[v10], v33, &qword_1EDC6E1A0, sub_1B9FCD918);
    if (v34)
    {
      sub_1B9FCD918();
      if (swift_dynamicCast())
      {
        v11 = v28[6];
        v13 = v29;
        v12 = v30;
        v14 = v31;
        v15 = v32;
        if (v29)
        {
          v16 = v9;
          v13(v9);

          sub_1B9F0E310(v13, v12);
          sub_1B9F0E310(v14, v15);

          return;
        }

        sub_1B9F0E310(0, v12);
        v26 = v14;
        v27 = v15;
LABEL_14:
        sub_1B9F0E310(v26, v27);
        return;
      }
    }

    else
    {
      sub_1B9F43D84(v33, &qword_1EDC6E1A0, sub_1B9FCD918);
    }

    v24 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction];
    if (!v24)
    {

      return;
    }

    v25 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction + 8];

    v24(v9);

    v26 = v24;
    v27 = v25;
    goto LABEL_14;
  }

  sub_1BA4A3DD8();
  v17 = sub_1BA4A3E88();
  v18 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28[0] = v20;
    *v19 = 136315138;
    v21 = sub_1BA4A85D8();
    v23 = sub_1B9F0B82C(v21, v22, v28);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1B9F07000, v17, v18, "[%s] Could not get presenting view controller", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1BFAF43A0](v20, -1, -1);
    MEMORY[0x1BFAF43A0](v19, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
}

double sub_1BA0FF1D4()
{
  MEMORY[0x1BFAF44B0](v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_parentViewController);
  sub_1B9F43D84(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item, &qword_1EDC6E1A0, sub_1B9FCD918);
  sub_1B9F0E310(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction), *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction + 8));

  return result;
}

id ButtonCollectionViewCell.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ButtonCollectionViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void (*sub_1BA0FF354(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

uint64_t ButtonCollectionViewCell.deselectionBehavior(in:)@<X0>(char *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA0FF914(v1 + v3, v12, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v13)
  {
    result = sub_1B9F43D84(v12, &qword_1EDC6E1A0, sub_1B9FCD918);
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  sub_1B9FCD918();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1B9F0E310(v8, v9);
  result = sub_1B9F0E310(v10, v11);
  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = 1;
LABEL_7:
  *a1 = v5;
  return result;
}

void *sub_1BA0FF550()
{
  v0 = sub_1BA4A7838();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A7938();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A79A8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v24 - v17;
  sub_1BA4A7988();
  (*(v6 + 104))(v9, *MEMORY[0x1E69DC560], v5);
  sub_1BA4A7828();
  (*(v1 + 104))(v4, *MEMORY[0x1E69DC508], v0);
  sub_1BA4A7848();
  v19 = objc_opt_self();
  v20 = [v19 systemBlueColor];
  sub_1BA4A78E8();
  v21 = [v19 systemWhiteColor];
  sub_1BA4A78F8();
  sub_1BA4A7858();
  sub_1B9F0ADF8(0, &qword_1EDC5E0A0, 0x1E69DC738);
  (*(v11 + 16))(v14, v18, v10);
  v22 = sub_1BA4A79B8();
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  (*(v11 + 8))(v18, v10);
  return v22;
}

void _s18HealthExperienceUI24ButtonCollectionViewCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  swift_unknownObjectWeakInit();
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_isFullWidthButton) = 1;
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_fullWidthButtonConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_compactWidthButtonConstraints) = v3;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA0FF914(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F0D0F0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1BA0FF9A8()
{
  result = qword_1EBBEBEF8;
  if (!qword_1EBBEBEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBEF8);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1BA0FFA28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1BA0FFA70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA0FFE44(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_1BA0FFE84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1BA0FFEC0()
{
  result = qword_1EDC664B8[0];
  if (!qword_1EDC664B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC664B8);
  }

  return result;
}

uint64_t type metadata accessor for SummarySharingContactPickerSectionedDataSource(uint64_t a1)
{
  result = qword_1EBBEBF00;
  if (!qword_1EBBEBF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SnidgetCurrentValueView.ViewModel.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, v3);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  if ((*(v11 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v9, a1);
    v12 = 1;
  }

  else
  {
    (*(v11 + 32))(a2, v9, AssociatedTypeWitness);
    v12 = 0;
  }

  return (*(v11 + 56))(a2, v12, 1, AssociatedTypeWitness);
}

uint64_t SnidgetCurrentValueView.ViewModel.debugDescription.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1BA4A7AA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v9 - v6;
  SnidgetCurrentValueView.ViewModel.value.getter(a1, &v9 - v6);
  LODWORD(a1) = (*(*(AssociatedTypeWitness - 8) + 48))(v7, 1, AssociatedTypeWitness);
  (*(v4 + 8))(v7, v3);
  if (a1 == 1)
  {
    return 0x617461446F6ELL;
  }

  else
  {
    return 0x65756C6156736168;
  }
}

uint64_t sub_1BA10028C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BA4A8338();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BA1002FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}