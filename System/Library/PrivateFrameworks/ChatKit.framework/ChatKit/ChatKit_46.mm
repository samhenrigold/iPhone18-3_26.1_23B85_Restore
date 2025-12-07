void sub_190C2DFF8()
{
  swift_beginAccess();
  sub_190C2E104();
  swift_endAccess();
  if (qword_1EAD51F80 != -1)
  {
    swift_once();
  }

  v0 = sub_190D53040();
  __swift_project_value_buffer(v0, qword_1EAD9E510);
  v1 = sub_190D53020();
  v2 = sub_190D57680();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_19020E000, v1, v2, "Directory counts and sizes scrambled for testing", v3, 2u);
    MEMORY[0x193AF7A40](v3, -1, -1);
  }
}

void sub_190C2E104()
{
  v66 = sub_190D515F0();
  v1 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60A70, &qword_190DFD8D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v55 - v7;
  v9 = *v0;
  v10 = *(*v0 + 64);
  v56 = *v0 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v57 = v1 + 16;
  v63 = v0;
  v64 = (v1 + 32);
  v60 = v1;
  v61 = v9;
  v62 = (v1 + 8);
  sub_190D52690();
  v15 = 0;
  v58 = v8;
  v59 = v5;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_12:
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v20 = v19 | (v16 << 6);
      v21 = v60;
      v22 = v61;
      (*(v60 + 16))(v65, *(v61 + 48) + *(v60 + 72) * v20, v66);
      v23 = *(v22 + 56) + 168 * v20;
      v24 = *(v23 + 112);
      v25 = *(v23 + 128);
      v26 = *(v23 + 144);
      v90 = *(v23 + 160);
      v88 = v25;
      v89 = v26;
      v87 = v24;
      v27 = *(v23 + 48);
      v28 = *(v23 + 64);
      v29 = *(v23 + 96);
      v85 = *(v23 + 80);
      v86 = v29;
      v83 = v27;
      v84 = v28;
      v31 = *(v23 + 16);
      v30 = *(v23 + 32);
      v80 = *v23;
      v81 = v31;
      v82 = v30;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60A78, &unk_190DFD8E0);
      v33 = &v59[*(v32 + 48)];
      v34 = *(v21 + 32);
      v5 = v59;
      v34();
      v35 = v89;
      *(v33 + 8) = v88;
      *(v33 + 9) = v35;
      *(v33 + 20) = v90;
      v36 = v85;
      *(v33 + 4) = v84;
      *(v33 + 5) = v36;
      v37 = v87;
      *(v33 + 6) = v86;
      *(v33 + 7) = v37;
      v38 = v81;
      *v33 = v80;
      *(v33 + 1) = v38;
      v39 = v83;
      *(v33 + 2) = v82;
      *(v33 + 3) = v39;
      (*(*(v32 - 8) + 56))(v5, 0, 1, v32);
      sub_190B6A9C4(&v80, &v69);
      v18 = v16;
      v8 = v58;
LABEL_13:
      sub_190C3294C(v5, v8);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60A78, &unk_190DFD8E0);
      if ((*(*(v40 - 8) + 48))(v8, 1, v40) == 1)
      {
        break;
      }

      v41 = &v8[*(v40 + 48)];
      v42 = *(v41 + 9);
      v88 = *(v41 + 8);
      v89 = v42;
      v90 = *(v41 + 20);
      v43 = *(v41 + 5);
      v84 = *(v41 + 4);
      v85 = v43;
      v44 = *(v41 + 7);
      v86 = *(v41 + 6);
      v87 = v44;
      v45 = *(v41 + 1);
      v80 = *v41;
      v81 = v45;
      v46 = *(v41 + 3);
      v82 = *(v41 + 2);
      v83 = v46;
      v47 = *v64;
      v67 = v18;
      v48 = v5;
      v49 = v65;
      v50 = v66;
      v47(v65, v8, v66);
      v77 = v88;
      v78 = v89;
      v79 = v90;
      v73 = v84;
      v74 = v85;
      v75 = v86;
      v76 = v87;
      v69 = v80;
      v70 = v81;
      v71 = v82;
      v72 = v83;
      sub_190BA4CA4();
      v91[8] = v77;
      v91[9] = v78;
      v92 = v79;
      v91[4] = v73;
      v91[5] = v74;
      v91[6] = v75;
      v91[7] = v76;
      v91[0] = v69;
      v91[1] = v70;
      v91[2] = v71;
      v91[3] = v72;
      v51 = v63;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = *v51;
      sub_190C1CE94(v91, v49, isUniquelyReferenced_nonNull_native);
      *v51 = v68;
      v53 = v49;
      v5 = v48;
      (*v62)(v53, v50);
      v15 = v67;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v14 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    else
    {
      v17 = v14;
    }

    v18 = v17 - 1;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60A78, &unk_190DFD8E0);
        (*(*(v54 - 8) + 56))(v5, 1, 1, v54);
        v13 = 0;
        goto LABEL_13;
      }

      v13 = *(v56 + 8 * v16);
      ++v15;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_190C2E618()
{
  v1 = 0x6144646568636163;
  v2 = 0xD000000000000020;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x746144746E756F63;
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

uint64_t sub_190C2E6A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_190C35230(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_190C2E6D0(uint64_t a1)
{
  v2 = sub_190C32F80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_190C2E70C(uint64_t a1)
{
  v2 = sub_190C32F80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_190C2E748()
{
  sub_19022EEA4(v0 + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_cachedDate, &unk_1EAD5E5D0, &unk_190DE0210);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StoragePluginCounts(uint64_t a1)
{
  result = qword_1EAD60A60;
  if (!qword_1EAD60A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190C2E820(uint64_t a1)
{
  sub_1908808B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_190C2E8D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0, &unk_190DE0210);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60AF0, &qword_190DFD918);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_190C32F80();
  sub_190D58900();
  v12 = OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_cachedDate;
  swift_beginAccess();
  sub_19022FD14(v3 + v12, v7, &unk_1EAD5E5D0, &unk_190DE0210);
  LOBYTE(v16) = 0;
  sub_190D51840();
  sub_190C3696C(&qword_1EAD59F90, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_190D586A0();
  sub_19022EEA4(v7, &unk_1EAD5E5D0, &unk_190DE0210);
  if (!v2)
  {
    v13 = (v3 + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_countData);
    swift_beginAccess();
    v14 = v13[3];
    v16 = *v13;
    v17 = *(v13 + 1);
    v18 = v14;
    v19 = 1;
    sub_190C359E0();
    sub_190D586E0();
    LOBYTE(v16) = 2;
    sub_190D586F0();
    LOBYTE(v16) = 3;
    sub_190D586C0();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_190C2EBD8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0, &unk_190DE0210);
  MEMORY[0x1EEE9AC00](v4 - 8);
  *&v31 = &v27 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60A80, &qword_190DFD8F0);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v27 - v6;
  v8 = OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_cachedDate;
  v9 = sub_190D51840();
  v10 = *(*(v9 - 8) + 56);
  v29 = v8;
  v10(v2 + v8, 1, 1, v9);
  v11 = (v2 + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_countData);
  *v11 = sub_190C329BC();
  v11[1] = v12;
  v11[2] = v13;
  v11[3] = v14;
  v15 = OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_spaceSavedByAutoDeletingMessages;
  *(v2 + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_spaceSavedByAutoDeletingMessages) = 0;
  v16 = OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_didCalculateForCloudKit;
  *(v2 + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_didCalculateForCloudKit) = 0;
  v17 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_190C32F80();
  v32 = v7;
  v18 = v34;
  sub_190D588F0();
  if (v18)
  {
  }

  else
  {
    v34 = v15;
    v28 = v16;
    v19 = v29;
    v20 = v30;
    LOBYTE(v36) = 0;
    sub_190C3696C(&qword_1EAD59F80, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v21 = v31;
    v22 = v32;
    v23 = v33;
    sub_190D58620();
    swift_beginAccess();
    sub_190C32FD4(v21, v2 + v19);
    swift_endAccess();
    v35[0] = 1;
    sub_190C33044();
    sub_190D58660();
    v24 = v36;
    v31 = v37;
    v25 = v38;
    swift_beginAccess();
    *v11 = v24;
    *(v11 + 1) = v31;
    v11[3] = v25;

    LOBYTE(v36) = 2;
    *(v2 + v34) = sub_190D58670();
    LOBYTE(v36) = 3;
    LOBYTE(v25) = sub_190D58640();
    (*(v20 + 8))(v22, v23);
    *(v2 + v28) = v25 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v39);
  return v2;
}

uint64_t sub_190C2F004()
{
  v1 = *v0 + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_countData;
  swift_beginAccess();
  return *(v1 + 8);
}

uint64_t sub_190C2F064()
{
  v1 = *v0 + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_countData;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_190C2F0B0()
{
  v1 = *v0 + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_countData;
  swift_beginAccess();
  return *(v1 + 24);
}

uint64_t sub_190C2F0FC()
{
  v1 = *v0 + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_countData;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  result = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190C2F154@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_cachedDate;
  swift_beginAccess();
  return sub_19022FD14(v3 + v4, a1, &unk_1EAD5E5D0, &unk_190DE0210);
}

uint64_t sub_190C2F1C0(char a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_190221DA4;

  return sub_190C2C64C(a1, a2);
}

uint64_t sub_190C2F268(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190221DA0;

  return sub_190C2D8A8(a1);
}

uint64_t sub_190C2F36C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20, &unk_190DD75D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v80 = v71 - v3;
  v81 = sub_190D515F0();
  v78 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v76 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60A70, &qword_190DFD8D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v71 - v9;
  if (qword_1EAD51F80 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v11 = sub_190D53040();
    v12 = __swift_project_value_buffer(v11, qword_1EAD9E510);
    sub_190D50920();
    v13 = sub_190D53020();
    v14 = sub_190D57680();

    v15 = os_log_type_enabled(v13, v14);
    v79 = v1;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v94[0] = v17;
      *v16 = 136315138;
      v18 = sub_190C31A60();
      v20 = sub_19021D9F8(v18, v19, v94);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_19020E000, v13, v14, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x193AF7A40](v17, -1, -1);
      MEMORY[0x193AF7A40](v16, -1, -1);
    }

    v71[1] = v12;
    v21 = sub_190D53020();
    v22 = sub_190D57680();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_19020E000, v21, v22, "Counts per directory:", v23, 2u);
      MEMORY[0x193AF7A40](v23, -1, -1);
    }

    v24 = v79 + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_countData;
    swift_beginAccess();
    v71[0] = v24;
    v25 = *v24;
    v26 = *v24 + 64;
    v27 = 1 << *(*v24 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(*v24 + 64);
    v30 = (v27 + 63) >> 6;
    v73 = v78 + 16;
    v1 = (v78 + 32);
    v79 = (v78 + 56);
    v77 = v25;
    sub_190D52690();
    v31 = 0;
    v74 = v10;
    v75 = v7;
    v72 = v1;
    if (v29)
    {
      break;
    }

LABEL_10:
    if (v30 <= v31 + 1)
    {
      v33 = v31 + 1;
    }

    else
    {
      v33 = v30;
    }

    v34 = v33 - 1;
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v30)
      {
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60A78, &unk_190DFD8E0);
        (*(*(v64 - 8) + 56))(v7, 1, 1, v64);
        v29 = 0;
        goto LABEL_18;
      }

      v29 = *(v26 + 8 * v32);
      ++v31;
      if (v29)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  while (1)
  {
    v32 = v31;
LABEL_17:
    v35 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v36 = v35 | (v32 << 6);
    v37 = v77;
    v38 = v78;
    (*(v78 + 16))(v76, *(v77 + 48) + *(v78 + 72) * v36, v81);
    v39 = *(v37 + 56) + 168 * v36;
    v40 = *(v39 + 112);
    v41 = *(v39 + 128);
    v42 = *(v39 + 144);
    v93 = *(v39 + 160);
    v91 = v41;
    v92 = v42;
    v90 = v40;
    v43 = *(v39 + 48);
    v44 = *(v39 + 64);
    v45 = *(v39 + 96);
    v88 = *(v39 + 80);
    v89 = v45;
    v86 = v43;
    v87 = v44;
    v47 = *(v39 + 16);
    v46 = *(v39 + 32);
    v83 = *v39;
    v84 = v47;
    v85 = v46;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60A78, &unk_190DFD8E0);
    v49 = &v75[*(v48 + 48)];
    v7 = v75;
    v1 = v72;
    (*(v38 + 32))(v75);
    v50 = v92;
    *(v49 + 8) = v91;
    *(v49 + 9) = v50;
    *(v49 + 20) = v93;
    v51 = v88;
    *(v49 + 4) = v87;
    *(v49 + 5) = v51;
    v52 = v90;
    *(v49 + 6) = v89;
    *(v49 + 7) = v52;
    v53 = v84;
    *v49 = v83;
    *(v49 + 1) = v53;
    v54 = v86;
    *(v49 + 2) = v85;
    *(v49 + 3) = v54;
    (*(*(v48 - 8) + 56))(v7, 0, 1, v48);
    sub_190B6A9C4(&v83, &v82);
    v34 = v32;
    v10 = v74;
LABEL_18:
    sub_190C3294C(v7, v10);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60A78, &unk_190DFD8E0);
    if ((*(*(v55 - 8) + 48))(v10, 1, v55) == 1)
    {
      break;
    }

    v56 = &v10[*(v55 + 48)];
    v57 = *(v56 + 9);
    v94[8] = *(v56 + 8);
    v94[9] = v57;
    v95 = *(v56 + 20);
    v58 = *(v56 + 5);
    v94[4] = *(v56 + 4);
    v94[5] = v58;
    v59 = *(v56 + 7);
    v94[6] = *(v56 + 6);
    v94[7] = v59;
    v60 = *(v56 + 1);
    v94[0] = *v56;
    v94[1] = v60;
    v61 = *(v56 + 3);
    v94[2] = *(v56 + 2);
    v94[3] = v61;
    v63 = v80;
    v62 = v81;
    (*v1)(v80, v10, v81);
    (*v79)(v63, 0, 1, v62);
    sub_190BA5EF8(v63);
    sub_190BAACD4(v94);
    sub_19022EEA4(v63, &unk_1EAD55F20, &unk_190DD75D0);
    v31 = v34;
    if (!v29)
    {
      goto LABEL_10;
    }
  }

  v65 = sub_190D53020();
  v66 = sub_190D57680();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_19020E000, v65, v66, "Total of all counts:", v67, 2u);
    MEMORY[0x193AF7A40](v67, -1, -1);
  }

  v68 = sub_190D52690();
  sub_190C2BF6C(v68, &v83);

  v69 = v80;
  (*v79)(v80, 1, 1, v81);
  sub_190BA5EF8(v69);
  sub_190BAACD4(&v83);
  return sub_19022EEA4(v69, &unk_1EAD55F20, &unk_190DD75D0);
}

uint64_t sub_190C2FB0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for StoragePluginCounts(0);
  v5 = swift_allocObject();
  result = sub_190C2EBD8(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_190C2FB8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[1] = a5;
  v13[2] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60AD0, &qword_190DFD910);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_190C3576C();
  sub_190D58900();
  v18 = a2;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60AB0, &qword_190DFD908);
  sub_190C358D0();
  sub_190D586E0();
  if (v5)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v16 = 1;
  sub_190D586F0();
  v15 = 2;
  sub_190D586F0();
  v14 = 3;
  sub_190D586F0();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_190C2FD88()
{
  v1 = 0x756F436F546C7275;
  v2 = 0xD000000000000021;
  if (*v0 == 2)
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000028;
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

uint64_t sub_190C2FE14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_190C353B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_190C2FE3C(uint64_t a1)
{
  v2 = sub_190C3576C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_190C2FE78(uint64_t a1)
{
  v2 = sub_190C3576C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_190C2FEB4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_190C35524(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void (**sub_190C2FF04())(uint64_t, uint64_t)
{
  v1 = sub_190D515F0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D53040();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_190D521F0();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51F80 != -1)
  {
    swift_once();
  }

  v60 = v0;
  v61 = v4;
  v11 = __swift_project_value_buffer(v5, qword_1EAD9E510);
  (*(v6 + 16))(v8, v11, v5);
  sub_190D521A0();
  v55 = v11;
  v12 = sub_190D53020();
  v13 = sub_190D57680();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_19020E000, v12, v13, "Setting counts for CloudKit enabled storage.", v14, 2u);
    MEMORY[0x193AF7A40](v14, -1, -1);
  }

  v62 = v10;

  v15 = sub_190C329BC();
  v54 = v16;
  v53 = v17;
  v52 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60A98, &qword_190DFD8F8);
  v19 = *(v2 + 72);
  v20 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v58 = swift_allocObject();
  v21 = v58 + v20;
  if (qword_1EAD51F60 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v1, qword_1EAD609F0);
  v23 = *(v2 + 16);
  v23(v21, v22, v1);
  if (qword_1EAD51F68 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v1, qword_1EAD60A08);
  v23(v21 + v19, v24, v1);
  if (qword_1EAD51F78 != -1)
  {
    swift_once();
  }

  v66 = v15;
  v25 = __swift_project_value_buffer(v1, qword_1EAD60A38);
  v56 = v21 + 2 * v19;
  v23(v56, v25, v1);
  if (qword_1EAD51F70 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v1, qword_1EAD60A20);
  v23(v21 + 3 * v19, v26, v1);
  v65 = (v2 + 8);
  v27 = v61;
  v23(v61, v21, v1);
  v57 = v23;
  v28 = v59;
  sub_190C30834(v21, v67);
  if (v28)
  {
    v29 = v65;
    v30 = v62;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*v29)(v27, v1);

    sub_190D521D0();
    (*(v63 + 8))(v30, v64);
  }

  else
  {
    v50 = 3 * v19;
    v31 = v66;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v31;
    sub_190C1CE94(v67, v27, isUniquelyReferenced_nonNull_native);
    v51 = *v65;
    v51(v27, v1);
    v66 = v68;
    v57(v27, v21 + v19, v1);
    v59 = v21;
    sub_190C30834(v21 + v19, v67);
    v33 = v66;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v68 = v33;
    sub_190C1CE94(v67, v27, v34);
    v35 = v51;
    v51(v27, v1);
    v36 = v68;
    v37 = v56;
    v57(v27, v56, v1);
    sub_190C30834(v37, v67);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v68 = v36;
    sub_190C1CE94(v67, v27, v39);
    v35(v27, v1);
    v40 = v68;
    v41 = v50;
    v42 = v59;
    v57(v27, v59 + v50, v1);
    sub_190C30834(v42 + v41, v67);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v68 = v40;
    sub_190C1CE94(v67, v27, v43);
    v35(v27, v1);
    v29 = v68;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v44 = sub_190D53020();
    v45 = sub_190D57680();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v62;
    if (v46)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_19020E000, v44, v45, "Finished setting counts for CloudKit enabled storage.", v48, 2u);
      MEMORY[0x193AF7A40](v48, -1, -1);
    }

    sub_190D521D0();
    (*(v63 + 8))(v47, v64);
  }

  return v29;
}

uint64_t sub_190C30834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v67 = *v2;
  v100 = sub_190D515F0();
  v61 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v57 = v4;
  v58 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D53040();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  v11 = sub_190D521F0();
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  if (qword_1EAD51F80 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_1EAD9E510);
  v55 = *(v6 + 16);
  v56 = v16;
  v62 = v6 + 16;
  v63 = v5;
  v55(v10);
  v50 = 271;
  v59 = "ntsExpiredIntervalKey";
  v60 = "iterateAttachmentDirectories()";
  sub_190D521A0();
  v17 = MEMORY[0x1E69E7CC0];
  v18 = sub_190822234(MEMORY[0x1E69E7CC0]);
  v19 = sub_190822BC4(v17);
  v20 = sub_190822BC4(v17);
  LOBYTE(v96[0]) = 0;
  *(v96 + 1) = v99[0];
  DWORD1(v96[0]) = *(v99 + 3);
  *(v96 + 8) = 0u;
  *(&v96[1] + 8) = 0u;
  *(&v96[2] + 1) = v18;
  *&v97[0] = v19;
  *(v97 + 8) = 0u;
  *(&v97[1] + 8) = 0u;
  *(&v97[2] + 8) = 0u;
  *(&v97[3] + 8) = 0u;
  *(&v97[4] + 8) = 0u;
  *(&v97[5] + 8) = 0u;
  *(&v97[6] + 1) = v20;
  v98 = 0;
  if (qword_1EAD51F68 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v100, qword_1EAD60A08);
  v66 = a1;
  v54 = sub_190D515A0();
  v53 = [objc_opt_self() defaultManager];
  if (qword_1EAD51F50 != -1)
  {
    swift_once();
  }

  v70 = v15;
  v21 = off_1EAD609D0;
  v22 = *(off_1EAD609D0 + 2);
  if (v22)
  {
    v23 = sub_190A92B84(*(off_1EAD609D0 + 2), 0);
    v24 = sub_190C8391C(&v85, v23 + 4, v22, v21);
    v25 = v85;
    sub_190D52690();
    sub_190219C78(v25);
    if (v24 != v22)
    {
      __break(1u);
    }
  }

  v26 = v61;
  v27 = v58;
  v28 = v100;
  (*(v61 + 16))(v58, v66, v100);
  v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v30 = (v57 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v26 + 32))(v31 + v29, v27, v28);
  *(v31 + v30) = v67;
  v32 = v53;
  v33 = sub_190D57660();

  if (v33)
  {
    (v55)(v65, v56, v63);
    *&v85 = 0x6E69746172657469;
    *(&v85 + 1) = 0xEB00000000272067;
    v34 = sub_190D515C0();
    MEMORY[0x193AF28B0](v34);

    MEMORY[0x1EEE9AC00](v35);
    v36 = v68;
    *(&v52 - 6) = v33;
    *(&v52 - 5) = v36;
    *(&v52 - 32) = v54 & 1;
    *(&v52 - 3) = v96;
    v50 = sub_190C35DE4;
    v51 = &v52 - 8;
    v37 = v64;
    v38 = v69;
    sub_190D521C0();
    if (v38)
    {

      v93 = v97[5];
      v94 = v97[6];
      v95 = v98;
      v89 = v97[1];
      v90 = v97[2];
      v91 = v97[3];
      v92 = v97[4];
      v85 = v96[0];
      v86 = v96[1];
      v87 = v96[2];
      v88 = v97[0];
      sub_190BAACD4(&v85);
      v39 = v70;
      sub_190D521D0();
      return (*(v71 + 8))(v39, v72);
    }

    else
    {
      v41 = v72;
      v42 = *(v71 + 8);
      v42(v37, v72);

      v82 = v97[5];
      v83 = v97[6];
      v78 = v97[1];
      v79 = v97[2];
      v80 = v97[3];
      v81 = v97[4];
      v74 = v96[0];
      v75 = v96[1];
      v76 = v96[2];
      v77 = v97[0];
      v93 = v97[5];
      v94 = v97[6];
      v89 = v97[1];
      v90 = v97[2];
      v91 = v97[3];
      v92 = v97[4];
      v85 = v96[0];
      v86 = v96[1];
      v84 = v98;
      v95 = v98;
      v87 = v96[2];
      v88 = v97[0];
      sub_190B6A9C4(&v74, &v73);
      sub_190BAACD4(&v85);
      v43 = v70;
      sub_190D521D0();
      result = (v42)(v43, v41);
      v44 = v83;
      v45 = v52;
      *(v52 + 128) = v82;
      *(v45 + 144) = v44;
      *(v45 + 160) = v84;
      v46 = v79;
      *(v45 + 64) = v78;
      *(v45 + 80) = v46;
      v47 = v81;
      *(v45 + 96) = v80;
      *(v45 + 112) = v47;
      v48 = v75;
      *v45 = v74;
      *(v45 + 16) = v48;
      v49 = v77;
      *(v45 + 32) = v76;
      *(v45 + 48) = v49;
    }
  }

  else
  {
    result = sub_190D58510();
    __break(1u);
  }

  return result;
}

uint64_t sub_190C31048(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_190D515F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37[-v11];
  if (qword_1EAD51F80 != -1)
  {
    swift_once();
  }

  v13 = sub_190D53040();
  __swift_project_value_buffer(v13, qword_1EAD9E510);
  v14 = *(v7 + 16);
  v14(v12, a3, v6);
  v14(v9, a1, v6);
  v15 = a2;
  v16 = sub_190D53020();
  v17 = sub_190D576A0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v18 = 136315650;
    sub_190C3696C(&qword_1EAD55F30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v39 = v16;
    v19 = sub_190D58720();
    v21 = v20;
    v38 = v17;
    v22 = *(v7 + 8);
    v22(v12, v6);
    v23 = sub_19021D9F8(v19, v21, &v42);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = sub_190D58720();
    v26 = v25;
    v22(v9, v6);
    v27 = sub_19021D9F8(v24, v26, &v42);

    *(v18 + 14) = v27;
    *(v18 + 22) = 2112;
    v28 = a2;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v29;
    v31 = v39;
    v30 = v40;
    *v40 = v29;
    _os_log_impl(&dword_19020E000, v31, v38, "directoryIterator for '%s' failed at '%s' with error: %@ ", v18, 0x20u);
    sub_19022EEA4(v30, &unk_1EAD54610, &qword_190DD6010);
    MEMORY[0x193AF7A40](v30, -1, -1);
    v32 = v41;
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v32, -1, -1);
    MEMORY[0x193AF7A40](v18, -1, -1);
  }

  else
  {

    v33 = *(v7 + 8);
    v33(v9, v6);
    v33(v12, v6);
  }

  v34 = qword_1EAD60A50;
  qword_1EAD60A50 = a2;

  v35 = a2;
  return 1;
}

uint64_t sub_190C31408(void *a1, uint64_t a2, int a3, void *a4)
{
  v25 = a4;
  v24 = a3;
  v29 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20, &unk_190DD75D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23[-v6];
  v8 = sub_190D515F0();
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = (v12 + 56);
  v14 = (v12 + 48);
  v15 = (v12 + 32);
  v16 = (v12 + 8);
  while (1)
  {
    if ([v29 nextObject])
    {
      sub_190D58140();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v28[0] = v26;
    v28[1] = v27;
    if (!*(&v27 + 1))
    {
      sub_19022EEA4(v28, &unk_1EAD551C0, &unk_190DD9790);
      (*v13)(v7, 1, 1, v8);
      return sub_19022EEA4(v7, &unk_1EAD55F20, &unk_190DD75D0);
    }

    v17 = swift_dynamicCast();
    (*v13)(v7, v17 ^ 1u, 1, v8);
    if ((*v14)(v7, 1, v8) == 1)
    {
      return sub_19022EEA4(v7, &unk_1EAD55F20, &unk_190DD75D0);
    }

    (*v15)(v11, v7, v8);
    v18 = qword_1EAD60A50;
    if (qword_1EAD60A50)
    {
      swift_willThrow();
      goto LABEL_15;
    }

    sub_190C35E08(v11, v24 & 1, v25);
    if (v4)
    {
      break;
    }

    v20 = v19;
    result = (*v16)(v11, v8);
    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  v18 = 0;
LABEL_15:
  v22 = v18;
  return (*v16)(v11, v8);
}

void sub_190C316D8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a1 + 16);
  v5 = (a1 + 32);
  v6 = (a3 & ~(a3 >> 63)) + 1;
  while (v4)
  {
    v7 = *v5;
    sub_190D52690();
    sub_190D58230();
    if (!*(v7 + 16) || (v8 = sub_190875C84(v23), (v9 & 1) == 0))
    {

      sub_19084CFD0(v23);
      goto LABEL_3;
    }

    sub_19021834C(*(v7 + 56) + 32 * v8, v24);
    sub_19084CFD0(v23);
    sub_19021DC70();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_3;
    }

    v22 = [0x657A6973 longLongValue];

    if (qword_1EAD51F80 != -1)
    {
      swift_once();
    }

    v10 = sub_190D53040();
    __swift_project_value_buffer(v10, qword_1EAD9E510);
    sub_190D52690();
    v11 = sub_190D53020();
    v12 = sub_190D57680();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315394;
      sub_190D58230();
      if (*(v7 + 16) && (v15 = sub_190875C84(v23), (v16 & 1) != 0))
      {
        sub_19021834C(*(v7 + 56) + 32 * v15, v24);
        sub_19084CFD0(v23);

        if (swift_dynamicCast())
        {
          v17 = 1684632935;
          v18 = 0xE400000000000000;
LABEL_19:
          v20 = sub_19021D9F8(v17, v18, &v25);

          *(v13 + 4) = v20;
          *(v13 + 12) = 2048;
          v19 = v22;
          *(v13 + 14) = v22;
          _os_log_impl(&dword_19020E000, v11, v12, "  %s: %lld", v13, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v14);
          MEMORY[0x193AF7A40](v14, -1, -1);
          MEMORY[0x193AF7A40](v13, -1, -1);

          v3 = a2;
          goto LABEL_20;
        }
      }

      else
      {

        sub_19084CFD0(v23);
      }

      v18 = 0xE700000000000000;
      v17 = 0x6E776F6E6B6E55;
      goto LABEL_19;
    }

    v19 = v22;
LABEL_20:
    if (__OFADD__(*v3, v19))
    {
      __break(1u);
      return;
    }

    *v3 += v19;
LABEL_3:
    ++v5;
    --v4;
    if (!--v6)
    {
      return;
    }
  }
}

uint64_t sub_190C31A60()
{
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD000000000000041, 0x8000000190E7B4D0);
  v1 = (v0 + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_countData);
  swift_beginAccess();
  v2 = sub_190C3287C(v1[1]);
  MEMORY[0x193AF28B0](v2);

  MEMORY[0x193AF28B0](0xD000000000000024, 0x8000000190E7B520);
  v3 = sub_190C3287C(v1[2]);
  MEMORY[0x193AF28B0](v3);

  MEMORY[0x193AF28B0](0xD000000000000026, 0x8000000190E7B550);
  v4 = sub_190C3287C(v1[3]);
  MEMORY[0x193AF28B0](v4);

  MEMORY[0x193AF28B0](0xD000000000000021, 0x8000000190E7B580);
  v5 = v1[2];
  v6 = v1[3];
  result = v5 + v6;
  if (__OFADD__(v5, v6))
  {
    __break(1u);
  }

  else
  {
    v8 = sub_190C3287C(result);
    MEMORY[0x193AF28B0](v8);

    MEMORY[0x193AF28B0](0xD000000000000025, 0x8000000190E7B5B0);
    v9 = sub_190D58720();
    MEMORY[0x193AF28B0](v9);

    MEMORY[0x193AF28B0](0xD00000000000001CLL, 0x8000000190E7B5E0);
    if (*(v0 + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_didCalculateForCloudKit))
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (*(v0 + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_didCalculateForCloudKit))
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    MEMORY[0x193AF28B0](v10, v11);

    return 0;
  }

  return result;
}

uint64_t sub_190C31CB0()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E510);
  __swift_project_value_buffer(v0, qword_1EAD9E510);
  sub_190D53010();
  return sub_190D53030();
}

void (*sub_190C31D1C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[8] = sub_190C32820(v9);
  v9[9] = sub_190C3200C(v9 + 4, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  return sub_190C31DD8;
}

void sub_190C31DD8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_190C31E38(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_190D515F0();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_190C32848(v6);
  v6[12] = sub_190C32250(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_190C31F74;
}

void sub_190C31F74(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_190C3200C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, char a5))(uint64_t **a1)
{
  v6 = v5;
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x30uLL);
  }

  v13 = v12;
  *a1 = v12;
  *(v12 + 16) = a3;
  *(v12 + 24) = v5;
  *(v12 + 40) = a4;
  *(v12 + 8) = a2;
  v14 = *v5;
  v15 = sub_190876340(a2, a3, a4);
  *(v13 + 41) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      sub_190B69E84();
      v15 = v23;
      goto LABEL_11;
    }

    sub_190B66698(v20, a5 & 1);
    v15 = sub_190876340(a2, a3, a4);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_190D587C0();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v13 + 32) = v15;
  if (v21)
  {
    v25 = *(*(*v6 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v13 = v25;
  return sub_190C3217C;
}

void sub_190C3217C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 41);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      v10 = v1[1];
      v9 = v1[2];
      v11 = *(v1 + 40);
      sub_190BA9A1C(v4, v10, v9, v11, v2, v5);
      sub_190824730(v10, v9, v11);
    }
  }

  else if (*(*a1 + 41))
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_190C369B4(*(v7 + 48) + 24 * v6);
    sub_190C82CB4(v6, v7, v8);
  }

  sub_190D52690();

  free(v1);
}

void (*sub_190C32250(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x818uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 2024) = v4;
  *(v9 + 2016) = a2;
  v11 = sub_190D515F0();
  *(v10 + 2032) = v11;
  v12 = *(v11 - 8);
  *(v10 + 2040) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 2048) = v13;
  v14 = *v4;
  v15 = sub_190876008(a2);
  *(v10 + 2064) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_190B69870();
      v15 = v23;
      goto LABEL_14;
    }

    sub_190B65BE0(v20, a3 & 1);
    v15 = sub_190876008(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_190D587C0();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 2056) = v15;
  if (v21)
  {
    memmove((v10 + 1848), (*(*v4 + 56) + 168 * v15), 0xA8uLL);
    nullsub_10();
    v25 = *(v10 + 1992);
    *(v10 + 464) = *(v10 + 1976);
    *(v10 + 480) = v25;
    *(v10 + 496) = *(v10 + 2008);
    v26 = *(v10 + 1928);
    *(v10 + 400) = *(v10 + 1912);
    *(v10 + 416) = v26;
    v27 = *(v10 + 1960);
    *(v10 + 432) = *(v10 + 1944);
    *(v10 + 448) = v27;
    v28 = *(v10 + 1864);
    *(v10 + 336) = *(v10 + 1848);
    *(v10 + 352) = v28;
    v29 = *(v10 + 1896);
    *(v10 + 368) = *(v10 + 1880);
    *(v10 + 384) = v29;
  }

  else
  {
    sub_190C35D18(v10 + 336);
  }

  return sub_190C32450;
}

void sub_190C32450(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = (v2 + 672);
    v4 = *(v2 + 448);
    v6 = *(v2 + 464);
    v5 = *(v2 + 480);
    *(v2 + 800) = v6;
    *(v2 + 816) = v5;
    v7 = *(v2 + 384);
    v9 = *(v2 + 400);
    v8 = *(v2 + 416);
    *(v2 + 736) = v9;
    *(v2 + 752) = v8;
    v10 = *(v2 + 416);
    v12 = *(v2 + 432);
    v11 = *(v2 + 448);
    *(v2 + 768) = v12;
    *(v2 + 784) = v11;
    v13 = *(v2 + 352);
    *(v2 + 672) = *(v2 + 336);
    *(v2 + 688) = v13;
    v14 = *(v2 + 384);
    v16 = *(v2 + 336);
    v15 = *(v2 + 352);
    v17 = *(v2 + 368);
    *(v2 + 704) = v17;
    *(v2 + 720) = v14;
    v18 = *(v2 + 480);
    *(v2 + 632) = v6;
    *(v2 + 648) = v18;
    *(v2 + 568) = v9;
    *(v2 + 584) = v10;
    *(v2 + 600) = v12;
    *(v2 + 616) = v4;
    *(v2 + 504) = v16;
    *(v2 + 520) = v15;
    v19 = (v2 + 840);
    *(v2 + 832) = *(v2 + 496);
    *(v2 + 664) = *(v2 + 496);
    *(v2 + 536) = v17;
    *(v2 + 552) = v7;
    if (sub_190C35D00(v2 + 504) == 1)
    {
      if (*(v2 + 2064))
      {
        v20 = *(v2 + 2056);
        v21 = **(v2 + 2024);
        (*(*(v2 + 2040) + 8))(*(v21 + 48) + *(*(v2 + 2040) + 72) * v20, *(v2 + 2032));
        sub_190C829BC(v20, v21);
      }
    }

    else
    {
      v39 = *(v2 + 2056);
      if (*(v2 + 2064))
      {
        memmove((*(**(v2 + 2024) + 56) + 168 * v39), (v2 + 672), 0xA8uLL);
      }

      else
      {
        v41 = *(v2 + 2048);
        v42 = **(v2 + 2024);
        (*(*(v2 + 2040) + 16))(v41, *(v2 + 2016), *(v2 + 2032));
        v43 = *(v2 + 816);
        *(v2 + 128) = *(v2 + 800);
        *(v2 + 144) = v43;
        *(v2 + 160) = *(v2 + 832);
        v44 = *(v2 + 752);
        *(v2 + 64) = *(v2 + 736);
        *(v2 + 80) = v44;
        v45 = *(v2 + 784);
        *(v2 + 96) = *(v2 + 768);
        *(v2 + 112) = v45;
        v46 = *(v2 + 688);
        *v2 = *v3;
        *(v2 + 16) = v46;
        v47 = *(v2 + 720);
        *(v2 + 32) = *(v2 + 704);
        *(v2 + 48) = v47;
        sub_190BA9930(v39, v41, v2, v42);
      }
    }

    v48 = *(v2 + 2048);
    v49 = *(v2 + 480);
    *(v2 + 968) = *(v2 + 464);
    *(v2 + 984) = v49;
    *(v2 + 1000) = *(v2 + 496);
    v50 = *(v2 + 416);
    *(v2 + 904) = *(v2 + 400);
    *(v2 + 920) = v50;
    v51 = *(v2 + 448);
    *(v2 + 936) = *(v2 + 432);
    *(v2 + 952) = v51;
    v52 = *(v2 + 352);
    *v19 = *(v2 + 336);
    *(v2 + 856) = v52;
    v53 = *(v2 + 384);
    *(v2 + 872) = *(v2 + 368);
    *(v2 + 888) = v53;
    v54 = v2 + 1008;
  }

  else
  {
    v3 = (v2 + 1344);
    v22 = *(v2 + 448);
    v24 = *(v2 + 464);
    v23 = *(v2 + 480);
    *(v2 + 1472) = v24;
    *(v2 + 1488) = v23;
    v25 = *(v2 + 384);
    v27 = *(v2 + 400);
    v26 = *(v2 + 416);
    *(v2 + 1408) = v27;
    *(v2 + 1424) = v26;
    v28 = *(v2 + 416);
    v30 = *(v2 + 432);
    v29 = *(v2 + 448);
    *(v2 + 1440) = v30;
    *(v2 + 1456) = v29;
    v31 = *(v2 + 352);
    *(v2 + 1344) = *(v2 + 336);
    *(v2 + 1360) = v31;
    v32 = *(v2 + 384);
    v34 = *(v2 + 336);
    v33 = *(v2 + 352);
    v35 = *(v2 + 368);
    *(v2 + 1376) = v35;
    *(v2 + 1392) = v32;
    v36 = *(v2 + 480);
    *(v2 + 1304) = v24;
    *(v2 + 1320) = v36;
    *(v2 + 1240) = v27;
    *(v2 + 1256) = v28;
    *(v2 + 1272) = v30;
    *(v2 + 1288) = v22;
    *(v2 + 1176) = v34;
    *(v2 + 1192) = v33;
    v19 = (v2 + 1512);
    *(v2 + 1504) = *(v2 + 496);
    *(v2 + 1336) = *(v2 + 496);
    *(v2 + 1208) = v35;
    *(v2 + 1224) = v25;
    if (sub_190C35D00(v2 + 1176) == 1)
    {
      if (*(v2 + 2064))
      {
        v37 = *(v2 + 2056);
        v38 = **(v2 + 2024);
        (*(*(v2 + 2040) + 8))(*(v38 + 48) + *(*(v2 + 2040) + 72) * v37, *(v2 + 2032));
        sub_190C829BC(v37, v38);
      }
    }

    else
    {
      v40 = *(v2 + 2056);
      if (*(v2 + 2064))
      {
        memmove((*(**(v2 + 2024) + 56) + 168 * v40), (v2 + 1344), 0xA8uLL);
      }

      else
      {
        v55 = *(v2 + 2048);
        v56 = **(v2 + 2024);
        (*(*(v2 + 2040) + 16))(v55, *(v2 + 2016), *(v2 + 2032));
        v57 = *(v2 + 1488);
        *(v2 + 296) = *(v2 + 1472);
        *(v2 + 312) = v57;
        *(v2 + 328) = *(v2 + 1504);
        v58 = *(v2 + 1424);
        *(v2 + 232) = *(v2 + 1408);
        *(v2 + 248) = v58;
        v59 = *(v2 + 1456);
        *(v2 + 264) = *(v2 + 1440);
        *(v2 + 280) = v59;
        v60 = *(v2 + 1360);
        *(v2 + 168) = *v3;
        *(v2 + 184) = v60;
        v61 = *(v2 + 1392);
        *(v2 + 200) = *(v2 + 1376);
        *(v2 + 216) = v61;
        sub_190BA9930(v40, v55, v2 + 168, v56);
      }
    }

    v48 = *(v2 + 2048);
    v62 = *(v2 + 480);
    *(v2 + 1640) = *(v2 + 464);
    *(v2 + 1656) = v62;
    *(v2 + 1672) = *(v2 + 496);
    v63 = *(v2 + 416);
    *(v2 + 1576) = *(v2 + 400);
    *(v2 + 1592) = v63;
    v64 = *(v2 + 448);
    *(v2 + 1608) = *(v2 + 432);
    *(v2 + 1624) = v64;
    v65 = *(v2 + 352);
    *v19 = *(v2 + 336);
    *(v2 + 1528) = v65;
    v66 = *(v2 + 384);
    *(v2 + 1544) = *(v2 + 368);
    *(v2 + 1560) = v66;
    v54 = v2 + 1680;
  }

  sub_19022FD14(v3, v54, &qword_1EAD60B10, &qword_190DFD968);
  sub_19022EEA4(v19, &qword_1EAD60B10, &qword_190DFD968);
  free(v48);

  free(v2);
}

uint64_t (*sub_190C32820(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_190C36C3C;
}

uint64_t (*sub_190C32848(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_190C32870;
}

uint64_t sub_190C3287C(uint64_t a1)
{
  v1 = [objc_opt_self() stringFromByteCount:a1 countStyle:0];
  v2 = sub_190D56F10();

  MEMORY[0x193AF28B0](10272, 0xE200000000000000);
  v3 = sub_190D58720();
  MEMORY[0x193AF28B0](v3);

  MEMORY[0x193AF28B0](0x29736574796220, 0xE700000000000000);
  return v2;
}

uint64_t sub_190C3294C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60A70, &qword_190DFD8D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_190C329BC()
{
  v0 = sub_190D515F0();
  v1 = *(v0 - 8);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190822DAC(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60A98, &qword_190DFD8F8);
  v6 = *(v1 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v43 = swift_allocObject();
  isUniquelyReferenced_nonNull_native = v43 + v7;
  if (qword_1EAD51F60 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v9 = __swift_project_value_buffer(v0, qword_1EAD609F0);
    v10 = *(v2 + 16);
    v10(isUniquelyReferenced_nonNull_native, v9, v0);
    if (qword_1EAD51F68 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v0, qword_1EAD60A08);
    v10(isUniquelyReferenced_nonNull_native + v6, v11, v0);
    if (qword_1EAD51F78 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v0, qword_1EAD60A38);
    v10(isUniquelyReferenced_nonNull_native + 2 * v6, v12, v0);
    v45 = v6;
    v6 *= 3;
    if (qword_1EAD51F70 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v0, qword_1EAD60A20);
    v10(isUniquelyReferenced_nonNull_native + v6, v13, v0);
    v42[1] = isUniquelyReferenced_nonNull_native;
    v44 = v2 + 16;
    v46 = v10;
    v10(v4, isUniquelyReferenced_nonNull_native, v0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v5;
    v14 = sub_190876008(v4);
    v16 = v5[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (!v18)
    {
      break;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

  v20 = v15;
  v21 = (v2 + 8);
  v22 = v43 + v45 + v7;
  v6 = 4;
  v7 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v5[3] >= v19)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = v14;
        sub_190B69870();
        v14 = v40;
      }
    }

    else
    {
      sub_190B65BE0(v19, isUniquelyReferenced_nonNull_native & 1);
      v14 = sub_190876008(v4);
      if ((v20 & 1) != (v23 & 1))
      {
        result = sub_190D587C0();
        __break(1u);
        return result;
      }
    }

    v2 = v45;
    isUniquelyReferenced_nonNull_native = v44;
    if ((v20 & 1) == 0)
    {
      break;
    }

    v5 = v49;
    v24 = v49[7] + 168 * v14;
    v26 = *(v24 + 16);
    v25 = *(v24 + 32);
    v47[0] = *v24;
    v47[1] = v26;
    v47[2] = v25;
    v27 = *(v24 + 96);
    v29 = *(v24 + 48);
    v28 = *(v24 + 64);
    v47[5] = *(v24 + 80);
    v47[6] = v27;
    v47[3] = v29;
    v47[4] = v28;
    v31 = *(v24 + 128);
    v30 = *(v24 + 144);
    v32 = *(v24 + 112);
    v48 = *(v24 + 160);
    v47[8] = v31;
    v47[9] = v30;
    v47[7] = v32;
    *v24 = 0;
    *(v24 + 1) = v50[0];
    *(v24 + 4) = *(v50 + 3);
    *(v24 + 8) = 0u;
    *(v24 + 24) = 0u;
    *(v24 + 40) = v7;
    *(v24 + 48) = v7;
    *(v24 + 56) = 0u;
    *(v24 + 72) = 0u;
    *(v24 + 88) = 0u;
    *(v24 + 104) = 0u;
    *(v24 + 120) = 0u;
    *(v24 + 136) = 0u;
    *(v24 + 152) = v7;
    *(v24 + 160) = 0;
    sub_190BAACD4(v47);
    (*v21)(v4, v0);
    if (!--v6)
    {
      goto LABEL_23;
    }

LABEL_20:
    v2 += v22;
    v46(v4, v22, v0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v5;
    v14 = sub_190876008(v4);
    v20 = v37;
    v38 = v5[2];
    v39 = (v37 & 1) == 0;
    v22 = v2;
    v18 = __OFADD__(v38, v39);
    v19 = v38 + v39;
    if (v18)
    {
      goto LABEL_24;
    }
  }

  v5 = v49;
  v49[(v14 >> 6) + 8] |= 1 << v14;
  v33 = v14;
  v46(v5[6] + v14 * v2, v4, v0);
  v34 = v5[7] + 168 * v33;
  *v34 = 0;
  *(v34 + 4) = *(v50 + 3);
  *(v34 + 1) = v50[0];
  *(v34 + 24) = 0u;
  *(v34 + 8) = 0u;
  *(v34 + 40) = v7;
  *(v34 + 48) = v7;
  *(v34 + 136) = 0u;
  *(v34 + 120) = 0u;
  *(v34 + 104) = 0u;
  *(v34 + 88) = 0u;
  *(v34 + 72) = 0u;
  *(v34 + 56) = 0u;
  *(v34 + 152) = v7;
  *(v34 + 160) = 0;
  (*v21)(v4, v0);
  v35 = v5[2];
  v18 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v18)
  {
    goto LABEL_25;
  }

  v5[2] = v36;
  if (--v6)
  {
    goto LABEL_20;
  }

LABEL_23:
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v5;
}

unint64_t sub_190C32F80()
{
  result = qword_1EAD60A88;
  if (!qword_1EAD60A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60A88);
  }

  return result;
}

uint64_t sub_190C32FD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0, &unk_190DE0210);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_190C33044()
{
  result = qword_1EAD60A90;
  if (!qword_1EAD60A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60A90);
  }

  return result;
}

void *sub_190C33098(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v122 = a4;
  v123 = a8;
  v124 = a3;
  v125 = a7;
  v126 = a2;
  v127 = a6;
  v10 = sub_190D515F0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v137 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v141 = &v121 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v130 = &v121 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60A70, &qword_190DFD8D8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v136 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v134 = v11;
  v135 = &v121 - v20;
  v21 = *(a5 + 64);
  v133 = a5 + 64;
  v22 = 1 << *(a5 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v128 = (v22 + 63) >> 6;
  v138 = (v11 + 32);
  v139 = (v11 + 16);
  v131 = (v11 + 8);
  v140 = a1;
  sub_190D52690();
  v129 = a5;
  sub_190D52690();
  v25 = 0;
  v26 = &qword_1EAD60A78;
  v132 = v10;
  v27 = v133;
  if (!v24)
  {
LABEL_5:
    if (v128 <= v25 + 1)
    {
      v30 = v25 + 1;
    }

    else
    {
      v30 = v128;
    }

    v31 = v30 - 1;
    v33 = v135;
    v32 = v136;
    while (1)
    {
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v29 >= v128)
      {
        v52 = &qword_1EAD60A78;
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60A78, &unk_190DFD8E0);
        (*(*(v115 - 8) + 56))(v32, 1, 1, v115);
        v24 = 0;
        v25 = v31;
        goto LABEL_14;
      }

      v24 = *(v27 + 8 * v29);
      ++v25;
      if (v24)
      {
        v25 = v29;
        v28 = &qword_1EAD60A78;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  while (1)
  {
    v28 = v26;
    v29 = v25;
LABEL_13:
    v34 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v35 = v34 | (v29 << 6);
    v37 = v129;
    v36 = v130;
    v38 = v134;
    (*(v134 + 16))(v130, *(v129 + 48) + *(v134 + 72) * v35, v10);
    v39 = *(v37 + 56) + 168 * v35;
    v41 = *(v39 + 16);
    v40 = *(v39 + 32);
    v143 = *v39;
    v144 = v41;
    v145 = v40;
    v42 = *(v39 + 96);
    v44 = *(v39 + 48);
    v43 = *(v39 + 64);
    v148 = *(v39 + 80);
    v149 = v42;
    v146 = v44;
    v147 = v43;
    v46 = *(v39 + 128);
    v45 = *(v39 + 144);
    v47 = *(v39 + 112);
    v153 = *(v39 + 160);
    v151 = v46;
    v152 = v45;
    v150 = v47;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, &unk_190DFD8E0);
    v49 = v28;
    v32 = v136;
    v50 = &v136[*(v48 + 48)];
    v51 = v36;
    v52 = v49;
    (*(v38 + 32))(v136, v51, v10);
    v53 = v152;
    *(v50 + 8) = v151;
    *(v50 + 9) = v53;
    *(v50 + 20) = v153;
    v54 = v148;
    *(v50 + 4) = v147;
    *(v50 + 5) = v54;
    v55 = v150;
    *(v50 + 6) = v149;
    *(v50 + 7) = v55;
    v56 = v144;
    *v50 = v143;
    *(v50 + 1) = v56;
    v57 = v146;
    *(v50 + 2) = v145;
    *(v50 + 3) = v57;
    (*(*(v48 - 8) + 56))(v32, 0, 1, v48);
    sub_190B6A9C4(&v143, &v142);
    v33 = v135;
LABEL_14:
    sub_190C3294C(v32, v33);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(v52, &unk_190DFD8E0);
    v59 = (*(*(v58 - 8) + 48))(v33, 1, v58);
    v26 = v52;
    v60 = v140;
    if (v59 == 1)
    {
      break;
    }

    v61 = v33 + *(v58 + 48);
    v62 = *(v61 + 144);
    v165 = *(v61 + 128);
    v166 = v62;
    v167 = *(v61 + 160);
    v63 = *(v61 + 80);
    v161 = *(v61 + 64);
    v162 = v63;
    v64 = *(v61 + 112);
    v163 = *(v61 + 96);
    v164 = v64;
    v65 = *(v61 + 16);
    v157 = *v61;
    v158 = v65;
    v66 = *(v61 + 48);
    v159 = *(v61 + 32);
    v160 = v66;
    (*v138)(v141, v33, v10);
    if (v60[2] && (v67 = sub_190876008(v141), (v68 & 1) != 0))
    {
      v69 = v60[7] + 168 * v67;
      v71 = *(v69 + 16);
      v70 = *(v69 + 32);
      v155[0] = *v69;
      v155[1] = v71;
      v155[2] = v70;
      v72 = *(v69 + 48);
      v73 = *(v69 + 64);
      v74 = *(v69 + 96);
      v155[5] = *(v69 + 80);
      v155[6] = v74;
      v155[3] = v72;
      v155[4] = v73;
      v75 = *(v69 + 112);
      v76 = *(v69 + 128);
      v77 = *(v69 + 144);
      v156 = *(v69 + 160);
      v155[8] = v76;
      v155[9] = v77;
      v155[7] = v75;
      sub_190B6A9C4(v155, &v143);
      sub_190BAAD74(v155, &v157, v154);
      sub_190BAACD4(&v157);
      sub_190BAACD4(v155);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v143 = v60;
      v79 = sub_190876008(v141);
      v81 = v60[2];
      v82 = (v80 & 1) == 0;
      v83 = __OFADD__(v81, v82);
      v84 = v81 + v82;
      if (v83)
      {
        goto LABEL_48;
      }

      v85 = v80;
      if (v60[3] >= v84)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v119 = v79;
          sub_190B69870();
          v79 = v119;
        }
      }

      else
      {
        sub_190B65BE0(v84, isUniquelyReferenced_nonNull_native);
        v79 = sub_190876008(v141);
        if ((v85 & 1) != (v86 & 1))
        {
          goto LABEL_52;
        }
      }

      v116 = v143;
      v140 = v143;
      if (v85)
      {
        sub_190C201E0(v154, *(v143 + 56) + 168 * v79);
        v10 = v132;
      }

      else
      {
        v117 = v79;
        v118 = v130;
        v10 = v132;
        (*v139)(v130, v141, v132);
        v26 = &qword_1EAD60A78;
        sub_190BA9930(v117, v118, v154, v116);
      }

      (*v131)(v141, v10);
    }

    else
    {
      v87 = *v139;
      v88 = v137;
      (*v139)(v137, v141, v10);
      v89 = swift_isUniquelyReferenced_nonNull_native();
      *&v143 = v60;
      v91 = sub_190876008(v88);
      v92 = v60[2];
      v93 = (v90 & 1) == 0;
      v94 = v92 + v93;
      if (__OFADD__(v92, v93))
      {
        goto LABEL_46;
      }

      v95 = v90;
      if (v60[3] >= v94)
      {
        if ((v89 & 1) == 0)
        {
          sub_190B69870();
        }
      }

      else
      {
        sub_190B65BE0(v94, v89);
        v96 = sub_190876008(v137);
        if ((v95 & 1) != (v97 & 1))
        {
          goto LABEL_52;
        }

        v91 = v96;
      }

      v98 = v143;
      v140 = v143;
      if (v95)
      {
        sub_190C201E0(&v157, *(v143 + 56) + 168 * v91);
        v10 = v132;
        v99 = *v131;
        (*v131)(v137, v132);
        v99(v141, v10);
      }

      else
      {
        *(v143 + 8 * (v91 >> 6) + 64) |= 1 << v91;
        v100 = v134;
        v101 = v137;
        v102 = v132;
        v87((v98[6] + *(v134 + 72) * v91), v137, v132);
        v103 = v98[7] + 168 * v91;
        v10 = v102;
        v104 = v167;
        v106 = v165;
        v105 = v166;
        *(v103 + 112) = v164;
        *(v103 + 128) = v106;
        *(v103 + 144) = v105;
        *(v103 + 160) = v104;
        v108 = v162;
        v107 = v163;
        v109 = v161;
        *(v103 + 48) = v160;
        *(v103 + 64) = v109;
        *(v103 + 80) = v108;
        *(v103 + 96) = v107;
        v111 = v158;
        v110 = v159;
        *v103 = v157;
        *(v103 + 16) = v111;
        *(v103 + 32) = v110;
        v112 = *(v100 + 8);
        v112(v101, v10);
        v112(v141, v10);
        v113 = v98[2];
        v83 = __OFADD__(v113, 1);
        v114 = v113 + 1;
        if (v83)
        {
          goto LABEL_47;
        }

        v98[2] = v114;
      }

      v26 = &qword_1EAD60A78;
    }

    v27 = v133;
    if (!v24)
    {
      goto LABEL_5;
    }
  }

  if (__OFADD__(v126, v127))
  {
    goto LABEL_49;
  }

  if (__OFADD__(v124, v125))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (!__OFADD__(v122, v123))
  {
    return v60;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_190D587C0();
  __break(1u);
  return result;
}

uint64_t sub_190C33954@<X0>(_BYTE *a1@<X8>)
{
  v92 = a1;
  v110 = sub_190D51270();
  v113 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v3 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20, &unk_190DD75D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v86 - v5;
  v115 = sub_190D515F0();
  v98 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v86 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v86 - v13;
  v14 = sub_190D53040();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_190D521F0();
  v95 = *(v18 - 8);
  v96 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51F80 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v14, qword_1EAD9E510);
  v22 = *(v15 + 16);
  v106 = v21;
  v22(v17);
  sub_190D521A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD575C0, &unk_190DE0240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1DA0;
  v24 = *MEMORY[0x1E695DC58];
  *(inited + 32) = *MEMORY[0x1E695DC58];
  v25 = *MEMORY[0x1E695DB78];
  *(inited + 40) = *MEMORY[0x1E695DB78];
  v26 = v24;
  v27 = v25;
  sub_1908AFE58(inited);
  v29 = v28;
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  v114 = [objc_opt_self() defaultManager];
  if (qword_1EAD51F60 != -1)
  {
    swift_once();
  }

  v99 = v11;
  v102 = v8;
  v30 = v115;
  v31 = __swift_project_value_buffer(v115, qword_1EAD609F0);
  v32 = *(v29 + 16);
  v101 = v6;
  v97 = v20;
  v107 = v3;
  v103 = v29;
  if (v32)
  {
    v111 = v31;
    v33 = sub_190A92B84(v32, 0);
    v112 = sub_190C8391C(&v116, v33 + 4, v32, v29);
    v34 = v116;
    sub_190D52690();
    result = sub_190219C78(v34);
    if (v112 != v32)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    v6 = v101;
    v3 = v107;
  }

  v36 = v114;
  v37 = sub_190D57660();

  v38 = MEMORY[0x1E69E7CC0];
  v94 = sub_190822234(MEMORY[0x1E69E7CC0]);
  v93 = sub_190822BC4(v38);
  v39 = sub_190822BC4(v38);
  v41 = v39;
  v42 = v104;
  v114 = v37;
  if (v37)
  {
    v87 = v39;
    v88 = 0;
    v89 = 0;
    v111 = (v98 + 48);
    v112 = (v98 + 56);
    v105 = (v98 + 16);
    v43 = (v98 + 8);
    v108 = v113 + 1;
    v109 = (v98 + 32);
    *&v40 = 136315138;
    v100 = v40;
    v44 = v102;
    v113 = (v98 + 8);
    while (1)
    {
      if ([v114 nextObject])
      {
        sub_190D58140();
        swift_unknownObjectRelease();
      }

      else
      {
        v129 = 0u;
        v130 = 0u;
      }

      v30 = v115;
      v116 = v129;
      v117 = v130;
      if (!*(&v130 + 1))
      {

        v41 = v87;
        v37 = v88;
        v81 = v89;
        goto LABEL_33;
      }

      v56 = swift_dynamicCast();
      (*v112)(v6, v56 ^ 1u, 1, v30);
      if ((*v111)(v6, 1, v30) == 1)
      {

        v82 = v97;
        v41 = v87;
        v37 = v88;
        v81 = v89;
        goto LABEL_35;
      }

      (*v109)(v42, v6, v30);
      v57 = v132;
      sub_190D51530();
      v132 = v57;
      if (v57)
      {
        break;
      }

      v58 = sub_190D51220();
      if (v58 == 2)
      {
        (*v105)(v44, v42, v30);
        v59 = v44;
        v60 = sub_190D53020();
        v61 = sub_190D576A0();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *&v116 = v63;
          *v62 = v100;
          v64 = sub_190D515C0();
          v66 = v65;
          v67 = v59;
          v68 = *v113;
          (*v113)(v67, v30);
          v69 = sub_19021D9F8(v64, v66, &v116);

          *(v62 + 4) = v69;
          _os_log_impl(&dword_19020E000, v60, v61, "Failed to get an isDirectory resource value for url: %s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v63);
          v70 = v63;
          v6 = v101;
          MEMORY[0x193AF7A40](v70, -1, -1);
          v43 = v113;
          MEMORY[0x193AF7A40](v62, -1, -1);

          v3 = v107;
          (*v108)(v107, v110);
          v71 = v104;
          v68(v104, v30);
          v44 = v102;
          v42 = v71;
        }

        else
        {

          v72 = *v43;
          (*v43)(v59, v30);
          v3 = v107;
          (*v108)(v107, v110);
          v44 = v59;
          v42 = v104;
          v72(v104, v30);
        }
      }

      else if (v58)
      {
        (*v108)(v3, v110);
        (*v43)(v42, v30);
      }

      else
      {
        v73 = sub_190D51250();
        if (v74)
        {
          v77 = v99;
          (*v105)(v99, v42, v30);
          v78 = sub_190D53020();
          v79 = sub_190D576A0();
          if (os_log_type_enabled(v78, v79))
          {
            v45 = swift_slowAlloc();
            v90 = v45;
            v91 = swift_slowAlloc();
            *&v116 = v91;
            *v45 = v100;
            v46 = sub_190D515C0();
            v48 = v47;
            v49 = *v113;
            (*v113)(v77, v30);
            v50 = v49;
            v51 = sub_19021D9F8(v46, v48, &v116);

            v52 = v90;
            *(v90 + 1) = v51;
            v53 = v52;
            _os_log_impl(&dword_19020E000, v78, v79, "Failed to get an totalFileAllocatedSize resource value for url: %s", v52, 0xCu);
            v54 = v91;
            __swift_destroy_boxed_opaque_existential_0(v91);
            v55 = v54;
            v6 = v101;
            MEMORY[0x193AF7A40](v55, -1, -1);
            v43 = v113;
            MEMORY[0x193AF7A40](v53, -1, -1);

            v3 = v107;
            (*v108)(v107, v110);
            v50(v42, v30);
          }

          else
          {

            v80 = *v43;
            (*v43)(v77, v30);
            v3 = v107;
            (*v108)(v107, v110);
            v80(v42, v30);
          }

          v44 = v102;
        }

        else
        {
          v75 = v73;
          (*v108)(v3, v110);
          result = (*v43)(v42, v30);
          v76 = __OFADD__(v89, v75);
          v89 += v75;
          if (v76)
          {
            goto LABEL_38;
          }

          v76 = __OFADD__(v88++, 1);
          if (v76)
          {
            goto LABEL_39;
          }
        }
      }
    }

    (*v43)(v42, v30);
    LOBYTE(v116) = 0;
    *(&v116 + 1) = *v131;
    DWORD1(v116) = *&v131[3];
    *(&v116 + 1) = 0;
    v117 = v88;
    v118 = v89;
    v119 = v94;
    v120 = v93;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = v87;
    v128 = 0;
    sub_190BAACD4(&v116);
    v85 = v97;
    sub_190D521D0();
    return (*(v95 + 8))(v85, v96);
  }

  else
  {

    v81 = 0;
    v116 = 0u;
    v117 = 0u;
LABEL_33:
    sub_19022EEA4(&v116, &unk_1EAD551C0, &unk_190DD9790);
    (*(v98 + 56))(v6, 1, 1, v30);
    v82 = v97;
LABEL_35:
    sub_19022EEA4(v6, &unk_1EAD55F20, &unk_190DD75D0);
    sub_190D521D0();
    result = (*(v95 + 8))(v82, v96);
    v83 = v92;
    *v92 = 0;
    *(v83 + 1) = *v131;
    *(v83 + 1) = *&v131[3];
    *(v83 + 1) = 0;
    *(v83 + 2) = v37;
    *(v83 + 3) = 0;
    *(v83 + 4) = v81;
    v84 = v93;
    *(v83 + 5) = v94;
    *(v83 + 6) = v84;
    *(v83 + 56) = 0u;
    *(v83 + 72) = 0u;
    *(v83 + 88) = 0u;
    *(v83 + 104) = 0u;
    *(v83 + 120) = 0u;
    *(v83 + 136) = 0u;
    *(v83 + 19) = v41;
    *(v83 + 20) = 0;
  }

  return result;
}

char *sub_190C34604()
{
  v0 = sub_190D53040();
  isUniquelyReferenced_nonNull_native = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D521F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51F80 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v8 = __swift_project_value_buffer(v0, qword_1EAD9E510);
    (*(isUniquelyReferenced_nonNull_native + 16))(v3, v8, v0);
    sub_190D521A0();
    v9 = sub_190822234(MEMORY[0x1E69E7CC0]);
    v10 = IMDAttachmentSpaceTakenByAttachmentClass();
    if (!v10)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = v10;
    v34 = v7;
    v35 = v5;
    v36 = v4;
    sub_19021DC70();
    v3 = sub_190D56D90();

    v11 = 0;
    v13 = v3 + 64;
    v12 = *(v3 + 8);
    v37 = v3 + 64;
    v38 = v3;
    v14 = 1 << v3[32];
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v4 = (v14 + 63) >> 6;
    while (v16)
    {
      v0 = v11;
LABEL_13:
      v17 = __clz(__rbit64(v16)) | (v0 << 6);
      v18 = (*(v38 + 6) + 16 * v17);
      v19 = *v18;
      v5 = v18[1];
      v20 = *(*(v38 + 7) + 8 * v17);
      sub_190D52690();
      v7 = v20;
      v39 = [v7 longLongValue];
      sub_190D52690();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v9;
      v3 = v9;
      v21 = sub_19022DCEC(v19, v5);
      v23 = *(v9 + 2);
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_25;
      }

      v27 = v22;
      if (*(v9 + 3) >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v3 = &v40;
          isUniquelyReferenced_nonNull_native = v21;
          sub_190B6893C();
          v21 = isUniquelyReferenced_nonNull_native;
        }
      }

      else
      {
        sub_190B63ED8(v26, isUniquelyReferenced_nonNull_native);
        v3 = v40;
        v21 = sub_19022DCEC(v19, v5);
        if ((v27 & 1) != (v28 & 1))
        {
          result = sub_190D587C0();
          __break(1u);
          return result;
        }
      }

      v16 &= v16 - 1;
      if (v27)
      {
        isUniquelyReferenced_nonNull_native = v21;

        v9 = v40;
        *(*(v40 + 7) + 8 * isUniquelyReferenced_nonNull_native) = v39;
      }

      else
      {
        v9 = v40;
        *&v40[8 * (v21 >> 6) + 64] |= 1 << v21;
        v29 = (*(v9 + 6) + 16 * v21);
        *v29 = v19;
        v29[1] = v5;
        *(*(v9 + 7) + 8 * v21) = v39;

        v30 = *(v9 + 2);
        v25 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v25)
        {
          goto LABEL_26;
        }

        *(v9 + 2) = v31;
      }

      v11 = v0;
      v13 = v37;
    }

    while (1)
    {
      v0 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v0 >= v4)
      {

        v5 = v35;
        v4 = v36;
        v7 = v34;
        goto LABEL_23;
      }

      v16 = *&v13[8 * v0];
      ++v11;
      if (v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_23:
  sub_190D521D0();
  (*(v5 + 8))(v7, v4);
  return v9;
}

void sub_190C34A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D53040();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D521F0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51F80 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_1EAD9E510);
  (*(v5 + 16))(v7, v12, v4);
  v25[0] = 0x3A736E6F6974706FLL;
  v25[1] = 0xE900000000000020;
  v24[1] = a1;
  v13 = sub_190D58720();
  MEMORY[0x193AF28B0](v13);

  sub_190D521A0();
  v26 = 0;
  if (a1 < 0)
  {
    __break(1u);
    objc_autoreleasePoolPop(v25);
    __break(1u);
  }

  else
  {
    v14 = IMDAttachmentFindLargestConversations();
    if (v14)
    {
      v15 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5C270, &qword_190DFD960);
      v16 = sub_190D57180();

      v17 = sub_190D53020();
      v18 = sub_190D57680();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_19020E000, v17, v18, "Found dbLargestConversations:", v19, 2u);
        MEMORY[0x193AF7A40](v19, -1, -1);
      }

      v20 = objc_autoreleasePoolPush();
      sub_190C316D8(v16, &v26, a2);

      objc_autoreleasePoolPop(v20);
    }

    v21 = sub_190D53020();
    v22 = sub_190D57680();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134218240;
      swift_beginAccess();
      *(v23 + 4) = v26;
      *(v23 + 12) = 2048;
      *(v23 + 14) = a1;
      _os_log_impl(&dword_19020E000, v21, v22, "Fetched cached space used for conversations: %lld with option: %lu", v23, 0x16u);
      MEMORY[0x193AF7A40](v23, -1, -1);
    }

    swift_beginAccess();
    sub_190D521D0();
    (*(v9 + 8))(v11, v8);
  }
}

void *sub_190C34E74(char a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_190D515F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D53040();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_190D521F0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51F80 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v7, qword_1EAD9E510);
  (*(v8 + 16))(v10, v15, v7);
  sub_190D521A0();
  v26 = sub_190C329BC();
  if ((a1 & 1) == 0)
  {
    IMDAttachmentRecordGetNonSyncedAttachmentDiskSpace();
    if (qword_1EAD51F60 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v3, qword_1EAD609F0);
    (*(v4 + 16))(v6, v16, v3);
    v17 = sub_190C2B630(v24);
    v19 = v18;
    memmove(__dst, v18, 0xA8uLL);
    if (sub_190C35D00(__dst) != 1)
    {
      v19[5] = sub_190C34604();
    }

    (v17)(v24, 0);
    (*(v4 + 8))(v6, v3);
  }

  v20 = v23;
  sub_190C34A64(2, v23);
  sub_190C34A64(1, v20);
  v21 = v26;
  sub_190D521D0();
  (*(v12 + 8))(v14, v11);
  return v21;
}

uint64_t sub_190C35230(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144646568636163 && a2 == 0xEA00000000006574;
  if (v4 || (sub_190D58760() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746E756F63 && a2 == 0xE900000000000061 || (sub_190D58760() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000190E67A70 == a2 || (sub_190D58760() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000190E67AA0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_190D58760();

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

uint64_t sub_190C353B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F436F546C7275 && a2 == 0xEE0070614D73746ELL;
  if (v4 || (sub_190D58760() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000028 && 0x8000000190E67980 == a2 || (sub_190D58760() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000190E67A20 == a2 || (sub_190D58760() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000190E67A40 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_190D58760();

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

uint64_t sub_190C35524(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60AA0, &qword_190DFD900);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_190822DAC(MEMORY[0x1E69E7CC0]);

  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_190C3576C();
  sub_190D588F0();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60AB0, &qword_190DFD908);
    v9[15] = 0;
    sub_190C357C0();
    sub_190D58660();
    v7 = v10;
    v9[14] = 1;
    sub_190D58670();
    v9[13] = 2;
    sub_190D58670();
    v9[12] = 3;
    sub_190D58670();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_190C3576C()
{
  result = qword_1EAD60AA8;
  if (!qword_1EAD60AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60AA8);
  }

  return result;
}

unint64_t sub_190C357C0()
{
  result = qword_1EAD60AB8;
  if (!qword_1EAD60AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60AB0, &qword_190DFD908);
    sub_190C3696C(&qword_1EAD60AC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_190C3587C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60AB8);
  }

  return result;
}

unint64_t sub_190C3587C()
{
  result = qword_1EAD60AC8;
  if (!qword_1EAD60AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60AC8);
  }

  return result;
}

unint64_t sub_190C358D0()
{
  result = qword_1EAD60AD8;
  if (!qword_1EAD60AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60AB0, &qword_190DFD908);
    sub_190C3696C(&qword_1EAD60AE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_190C3598C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60AD8);
  }

  return result;
}

unint64_t sub_190C3598C()
{
  result = qword_1EAD60AE8;
  if (!qword_1EAD60AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60AE8);
  }

  return result;
}

unint64_t sub_190C359E0()
{
  result = qword_1EAD60AF8;
  if (!qword_1EAD60AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60AF8);
  }

  return result;
}

uint64_t sub_190C35A34(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v10 = *(v2 + 40);
  v9 = *(v2 + 48);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_190221DA4;

  return sub_190C2CCA8(a1, a2, v6, v7, v8, v10, v9);
}

uint64_t sub_190C35B0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_190221DA0;

  return sub_190C2D08C(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_29Tm_0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_190C35C28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_190221DA0;

  return sub_190C2D7DC(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_190C35D00(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_190C35D18(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_190C35D38(uint64_t a1, void *a2)
{
  v5 = *(sub_190D515F0() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_190C31048(a1, a2, v6);
}

void sub_190C35E08(uint64_t a1, int a2, void *a3)
{
  v111 = a3;
  v110 = a2;
  v5 = sub_190D515F0();
  v6 = *(v5 - 8);
  v115 = v5;
  v116 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v108 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v108 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v108 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55088, &qword_190DE0230);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v108 - v19;
  v21 = sub_190D52E90();
  v113 = *(v21 - 8);
  v114 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v112 = v108 - v25;
  v26 = sub_190D51270();
  v27 = *(v26 - 8);
  v117 = v26;
  v118 = v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51F50 != -1)
  {
    swift_once();
  }

  sub_190D51530();
  if (v3)
  {
    return;
  }

  v108[0] = a1;
  v108[1] = 0;
  v30 = sub_190D51220();
  v109 = v29;
  if (v30 == 2)
  {
    if (qword_1EAD51F80 != -1)
    {
      swift_once();
    }

    v31 = sub_190D53040();
    __swift_project_value_buffer(v31, qword_1EAD9E510);
    v32 = v115;
    v33 = v116;
    (*(v116 + 16))(v8, v108[0], v115);
    v34 = sub_190D53020();
    v35 = sub_190D576A0();
    if (!os_log_type_enabled(v34, v35))
    {

      (*(v33 + 8))(v8, v32);
      goto LABEL_30;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v119 = v37;
    *v36 = 136315138;
    v38 = sub_190D515C0();
    v40 = v39;
    (*(v33 + 8))(v8, v32);
    v41 = sub_19021D9F8(v38, v40, &v119);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_19020E000, v34, v35, "Failed to get an isDirectory resource value for url: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    v42 = v37;
LABEL_14:
    MEMORY[0x193AF7A40](v42, -1, -1);
    MEMORY[0x193AF7A40](v36, -1, -1);

LABEL_30:
    (*(v118 + 8))(v109, v117);
    return;
  }

  v43 = v30;
  sub_190D51240();
  v45 = v113;
  v44 = v114;
  if ((*(v113 + 48))(v20, 1, v114) == 1)
  {
    sub_19022EEA4(v20, &qword_1EAD55088, &qword_190DE0230);
    if (qword_1EAD51F80 != -1)
    {
      swift_once();
    }

    v46 = sub_190D53040();
    __swift_project_value_buffer(v46, qword_1EAD9E510);
    v47 = v115;
    v48 = v116;
    (*(v116 + 16))(v11, v108[0], v115);
    v34 = sub_190D53020();
    v49 = sub_190D576A0();
    if (!os_log_type_enabled(v34, v49))
    {

      (*(v48 + 8))(v11, v47);
      goto LABEL_30;
    }

    v36 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v119 = v50;
    *v36 = 136315138;
    v51 = sub_190D515C0();
    v52 = v47;
    v54 = v53;
    (*(v48 + 8))(v11, v52);
    v55 = sub_19021D9F8(v51, v54, &v119);

    *(v36 + 4) = v55;
    _os_log_impl(&dword_19020E000, v34, v49, "Failed to get an contentType resource value for url: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    v42 = v50;
    goto LABEL_14;
  }

  v56 = v112;
  (*(v45 + 32))(v112, v20, v44);
  if (v43)
  {
LABEL_17:
    (*(v45 + 8))(v56, v44);
    goto LABEL_30;
  }

  v57 = sub_190D51230();
  if (v57 == 2)
  {
    if (qword_1EAD51F80 != -1)
    {
      swift_once();
    }

    v58 = sub_190D53040();
    __swift_project_value_buffer(v58, qword_1EAD9E510);
    v60 = v115;
    v59 = v116;
    (*(v116 + 16))(v14, v108[0], v115);
    v61 = sub_190D53020();
    v62 = sub_190D576A0();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v119 = v64;
      *v63 = 136315138;
      v65 = sub_190D515C0();
      v67 = v66;
      (*(v59 + 8))(v14, v60);
      v68 = sub_19021D9F8(v65, v67, &v119);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_19020E000, v61, v62, "Failed to get an isPurgeable resource value for url: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x193AF7A40](v64, -1, -1);
      MEMORY[0x193AF7A40](v63, -1, -1);

      (*(v113 + 8))(v112, v114);
    }

    else
    {

      (*(v59 + 8))(v14, v60);
      (*(v113 + 8))(v56, v114);
    }

    goto LABEL_30;
  }

  v69 = v57;
  v70 = sub_190D51250();
  if (v71)
  {
    if (qword_1EAD51F80 != -1)
    {
      swift_once();
    }

    v72 = sub_190D53040();
    __swift_project_value_buffer(v72, qword_1EAD9E510);
    v73 = v115;
    v74 = v116;
    (*(v116 + 16))(v17, v108[0], v115);
    v75 = sub_190D53020();
    v76 = sub_190D576A0();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v119 = v78;
      *v77 = 136315138;
      v79 = sub_190D515C0();
      v80 = v73;
      v82 = v81;
      (*(v74 + 8))(v17, v80);
      v83 = sub_19021D9F8(v79, v82, &v119);

      *(v77 + 4) = v83;
      _os_log_impl(&dword_19020E000, v75, v76, "Failed to get an totalFileAllocatedSize resource value for url: %s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x193AF7A40](v78, -1, -1);
      MEMORY[0x193AF7A40](v77, -1, -1);

      (*(v45 + 8))(v112, v114);
    }

    else
    {

      (*(v74 + 8))(v17, v73);
      (*(v45 + 8))(v112, v44);
    }

    goto LABEL_30;
  }

  v84 = v70;
  if ((v69 & 1) == 0)
  {
    sub_190BA3F90(v70, v108[0], v110 & 1, v56);
    goto LABEL_17;
  }

  v85 = v111;
  v86 = v111[19];
  if (*(v86 + 16) && (v87 = sub_190875BAC(v56), (v88 & 1) != 0))
  {
    v89 = *(*(v86 + 56) + 8 * v87);
    v90 = v89 + v84;
    if (__OFADD__(v89, v84))
    {
LABEL_55:
      __break(1u);
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119 = v85[19];
    v92 = v90;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119 = v85[19];
    v92 = v84;
  }

  sub_190C1CA28(v92, v56, isUniquelyReferenced_nonNull_native);
  v85[19] = v119;
  v93 = v85[1];
  v94 = __OFADD__(v93, 1);
  v95 = v93 + 1;
  if (v94)
  {
    __break(1u);
    goto LABEL_51;
  }

  v85[1] = v95;
  v96 = v85[3];
  v94 = __OFADD__(v96, v84);
  v97 = v96 + v84;
  if (v94)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v85[3] = v97;
  v98 = sub_190D514F0();
  if (v98 != 2 && (v98 & 0x100) != 0)
  {
    v99 = v85[20];
    v94 = __OFADD__(v99, v84);
    v100 = v99 + v84;
    if (!v94)
    {
      v85[20] = v100;
      goto LABEL_46;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_46:
  sub_190D52E80();
  v101 = sub_190D52E70();
  v102 = *(v45 + 8);
  v102(v23, v44);
  v102(v56, v44);
  (*(v118 + 8))(v109, v117);
  if (v101)
  {
    v103 = v111;
    v104 = v111[12];
    v94 = __OFADD__(v104, v84);
    v105 = v104 + v84;
    if (!v94)
    {
      v111[12] = v105;
      v106 = v103[9];
      v94 = __OFADD__(v106, 1);
      v107 = v106 + 1;
      if (!v94)
      {
        v103[9] = v107;
        return;
      }

      goto LABEL_54;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }
}

uint64_t sub_190C3696C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_190C36A2C()
{
  result = qword_1EAD60B18;
  if (!qword_1EAD60B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60B18);
  }

  return result;
}

unint64_t sub_190C36A84()
{
  result = qword_1EAD60B20;
  if (!qword_1EAD60B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60B20);
  }

  return result;
}

unint64_t sub_190C36ADC()
{
  result = qword_1EAD60B28;
  if (!qword_1EAD60B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60B28);
  }

  return result;
}

unint64_t sub_190C36B34()
{
  result = qword_1EAD60B30;
  if (!qword_1EAD60B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60B30);
  }

  return result;
}

unint64_t sub_190C36B8C()
{
  result = qword_1EAD60B38;
  if (!qword_1EAD60B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60B38);
  }

  return result;
}

unint64_t sub_190C36BE4()
{
  result = qword_1EAD60B40;
  if (!qword_1EAD60B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60B40);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_190C36C64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_190C36C84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

__n128 __swift_memcpy170_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 154) = *(a2 + 154);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_190C36D10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 170))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_190C36D58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 170) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 170) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_190C36DF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59330, &qword_190DE4858);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60B48, &qword_190DFDD80);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = *(v2 + 73);
  v12 = *(v5 + 56);
  *&v7[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8, &qword_190DDADF0);
  swift_storeEnumTagMultiPayload();
  v13 = *(v5 + 60);
  *&v7[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690, &unk_190DDE260);
  swift_storeEnumTagMultiPayload();
  *v7 = v11;
  v14 = *(v2 + 56);
  v15 = *(v2 + 64);
  *(v7 + 1) = v14;
  *(v7 + 2) = v15;
  v16 = *(v2 + 72);
  v17 = qword_190DFDE90[v11];
  v18 = qword_190DFDEA8[v11];
  v19 = qword_190DFDEC0[v11];
  v20 = qword_190DFDED8[v11];
  v21 = qword_190DFDEF0[v11];
  v22 = qword_190DFDF08[v11];
  v23 = qword_190DFDF20[v11];
  v24 = qword_190DFDF38[v11];
  v25 = qword_190DFDF50[v11];
  v26 = qword_190DFDF68[v11];
  v27 = qword_190DFDF80[v11];
  v28 = qword_190DFDF98[v11];
  v29 = qword_190DFDFB0[v11];
  v30 = qword_190DFDFC8[v11];
  v7[24] = v16;
  v31 = qword_190DFDFE0[v11];
  *(v7 + 2) = xmmword_190DE4690;
  *(v7 + 6) = 0x4018000000000000;
  *(v7 + 7) = v17;
  *(v7 + 8) = v18;
  *(v7 + 9) = v19;
  *(v7 + 10) = v20;
  *(v7 + 11) = v21;
  *(v7 + 12) = v27;
  *(v7 + 13) = v22;
  *(v7 + 14) = v23;
  *(v7 + 15) = v24;
  *(v7 + 16) = v25;
  *(v7 + 17) = v26;
  *(v7 + 18) = v27;
  *(v7 + 19) = v27;
  *(v7 + 20) = v28;
  *(v7 + 21) = v29;
  *(v7 + 22) = v30;
  *(v7 + 23) = v31;
  v7[192] = 0;
  v41[0] = *(v2 + 24);
  *(v41 + 11) = *(v2 + 35);
  sub_190824730(v14, v15, v16);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59328, &qword_190DE4850);
  MEMORY[0x193AF1A80](&v38, v32);
  if (v40 << 8 == 768 || (v39 & 1) != 0 || (v33 = 0.0, v38 != *(v2 + 160)))
  {
    v33 = 1.0;
  }

  sub_19081E40C(v7, v10, &qword_1EAD59330, &qword_190DE4858);
  *&v10[*(v8 + 36)] = v33;
  v34 = *(v2 + 168);
  v35 = *(v2 + 169);
  sub_19081E40C(v10, a1, &qword_1EAD60B48, &qword_190DFDD80);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60B50, &qword_190DFDDF0);
  v37 = (a1 + *(result + 36));
  *v37 = v34;
  v37[1] = v35;
  return result;
}

uint64_t getEnumTagSinglePayload for MaskedHoverEffectModifier(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for MaskedHoverEffectModifier(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_190C3729C()
{
  result = qword_1EAD60B58;
  if (!qword_1EAD60B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60B50, &qword_190DFDDF0);
    sub_190C37328();
    sub_190C373E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60B58);
  }

  return result;
}

unint64_t sub_190C37328()
{
  result = qword_1EAD60B60;
  if (!qword_1EAD60B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60B48, &qword_190DFDD80);
    sub_190233640(&qword_1EAD59350, &qword_1EAD59330, &qword_190DE4858, &unk_190DF67A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60B60);
  }

  return result;
}

unint64_t sub_190C373E0()
{
  result = qword_1EAD60B68;
  if (!qword_1EAD60B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60B68);
  }

  return result;
}

uint64_t sub_190C37450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60B70, &unk_190DFDE80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void sub_190C374C8()
{
  v1 = [v0 balloonEmphasisManager];
  sub_190D58140();
  swift_unknownObjectRelease();
  type metadata accessor for BalloonEmphasisManager();
  if (swift_dynamicCast())
  {
    v2 = *&v60[0];
    v3 = OBJC_IVAR___CKBalloonEmphasisManager_emphasizedChatItemGUIDs;
    swift_beginAccess();
    v4 = MEMORY[0x1E69E7CD0];
    *(*&v60[0] + v3) = MEMORY[0x1E69E7CD0];

    v5 = OBJC_IVAR___CKBalloonEmphasisManager_emphasizedAssociatedChatItemGUIDs;
    swift_beginAccess();
    v46 = v2;
    *&v2[v5] = v4;

    v6 = [v0 collectionView];
    v7 = [v6 visibleCells];

    sub_1902188FC(0, &qword_1EAD44FF0, 0x1E69DC7F8);
    v8 = sub_190D57180();

    if (v8 >> 62)
    {
      goto LABEL_71;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_4:
      if (v9 < 1)
      {
        __break(1u);
        return;
      }

      v10 = 0;
      v11 = 0;
      v12 = v8 & 0xC000000000000001;
      v48 = v8 + 32;
      v51 = v8;
      v52 = *MEMORY[0x1E6979880];
      v49 = v8 & 0xC000000000000001;
      v50 = v9;
      while (1)
      {
        if (v12)
        {
          v15 = MEMORY[0x193AF3B90](v10, v8);
        }

        else
        {
          v15 = *(v48 + 8 * v10);
        }

        v14 = v15;
        objc_opt_self();
        v16 = swift_dynamicCastObjCClass();
        if (!v16)
        {
          goto LABEL_8;
        }

        v17 = v16;
        [v16 setEmphasisState_];
        v18 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
        v56 = v17;
        v19 = [v17 layer];
        v20 = [v19 filters];
        if (v20)
        {
          break;
        }

        [v19 setFilters_];
LABEL_7:

        v13 = [v56 contentView];
        [v13 setAlpha_];

        v14 = v13;
        v8 = v51;
LABEL_8:
        ++v10;

        if (v10 == v9)
        {
          goto LABEL_72;
        }
      }

      v53 = v14;
      v55 = v10;
      v21 = v20;
      v22 = sub_190D57180();

      v61 = v22;
      v23 = v18;
      v24 = sub_190C39128(v22, v23);
      v8 = v25;
      v54 = v11;
      v58 = v23;

      if (v8)
      {
        v26 = *(v22 + 16);
        v24 = v26;
        goto LABEL_20;
      }

      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_70;
      }

      v47 = v19;
      v28 = (v22 + 16);
      v27 = *(v22 + 16);
      if (v26 == v27)
      {
LABEL_18:
        if (v26 < v24)
        {
          goto LABEL_67;
        }

        v19 = v47;
        if (v24 < 0)
        {
          goto LABEL_68;
        }

LABEL_20:
        v8 = v24;
        if (__OFADD__(v26, v24 - v26))
        {
          goto LABEL_69;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v24 <= *(v22 + 24) >> 1)
        {
          sub_190CAAD54(v24, v26, 0);
          v61 = v22;
        }

        else
        {
          if (v26 <= v24)
          {
            v30 = v24;
          }

          else
          {
            v30 = v26;
          }

          v31 = sub_1908355E0(isUniquelyReferenced_nonNull_native, v30, 1, v22);
          v61 = v31;
          sub_190CAAD54(v24, v26, 0);
          v61 = v31;
          if (!v31)
          {
            v32 = 0;
            goto LABEL_29;
          }
        }

        v32 = sub_190D57160();

LABEL_29:
        v11 = v54;
        v10 = v55;
        v12 = v49;
        v14 = v53;
        [v19 setFilters_];

        v18 = v19;
        v19 = v32;
        v9 = v50;
        goto LABEL_7;
      }

      v8 = 32 * v24 + 64;
      while (1)
      {
        if (v26 >= v27)
        {
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
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v9 = sub_190D581C0();
          if (!v9)
          {
            break;
          }

          goto LABEL_4;
        }

        sub_19021834C(v22 + v8, v62);
        sub_19021834C(v62, v60);
        sub_1902188FC(0, &qword_1ED7769D0, 0x1E6979378);
        if (swift_dynamicCast())
        {
          v33 = [v59 type];
          if (v33)
          {
            v34 = v33;
            v35 = sub_190D56F10();
            v37 = v36;
          }

          else
          {
            v35 = 0;
            v37 = 0;
          }

          v38 = [v58 type];
          if (!v38)
          {
            if (!v37)
            {
              goto LABEL_47;
            }

LABEL_46:

LABEL_49:

            __swift_destroy_boxed_opaque_existential_0(v62);
            goto LABEL_50;
          }

          v39 = v38;
          v57 = v35;
          v40 = sub_190D56F10();
          v42 = v41;

          if (!v37)
          {

            if (!v42)
            {
              goto LABEL_58;
            }

            goto LABEL_49;
          }

          if (!v42)
          {
            goto LABEL_46;
          }

          if (v57 == v40 && v37 == v42)
          {

LABEL_47:

LABEL_58:
            __swift_destroy_boxed_opaque_existential_0(v62);
            goto LABEL_32;
          }

          v45 = sub_190D58760();

          __swift_destroy_boxed_opaque_existential_0(v62);
          if (v45)
          {
            goto LABEL_32;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v62);
        }

LABEL_50:
        if (v26 != v24)
        {
          if (v24 < 0)
          {
            goto LABEL_63;
          }

          v43 = *v28;
          if (v24 >= *v28)
          {
            goto LABEL_64;
          }

          sub_19021834C(v22 + 32 + 32 * v24, v62);
          if (v26 >= v43)
          {
            goto LABEL_65;
          }

          sub_19021834C(v22 + v8, v60);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_190A5BC38(v22);
          }

          v44 = v22 + 32 * v24;
          __swift_destroy_boxed_opaque_existential_0((v44 + 32));
          sub_190824530(v60, (v44 + 32));
          if (v26 >= *(v22 + 16))
          {
            goto LABEL_66;
          }

          __swift_destroy_boxed_opaque_existential_0((v22 + v8));
          sub_190824530(v62, (v22 + v8));
        }

        ++v24;
LABEL_32:
        ++v26;
        v28 = (v22 + 16);
        v27 = *(v22 + 16);
        v8 += 32;
        if (v26 == v27)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_72:
  }
}

void sub_190C37BA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_190D51C00();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 balloonEmphasisManager];
  sub_190D58140();
  swift_unknownObjectRelease();
  type metadata accessor for BalloonEmphasisManager();
  if (swift_dynamicCast())
  {
    v10 = v49[2];
    v11 = OBJC_IVAR___CKBalloonEmphasisManager_emphasizedChatItemGUIDs;
    swift_beginAccess();
    v45 = v8;
    v12 = MEMORY[0x1E69E7CD0];
    *&v10[v11] = MEMORY[0x1E69E7CD0];

    v13 = OBJC_IVAR___CKBalloonEmphasisManager_emphasizedAssociatedChatItemGUIDs;
    swift_beginAccess();
    v46 = v13;
    v47 = v10;
    *&v10[v13] = v12;
    v14 = v45;

    v15 = sub_190D56ED0();
    v16 = [v3 indexPathForMessageGUID:v15 messagePartIndex:sub_190D50E40()];

    sub_190D51BC0();
    v17 = sub_190D51BB0();
    v18 = [v3 chatItemAtIndexPath_];

    if (v18)
    {
      v44 = v18;
      v19 = [v18 IMChatItem];
      if (!v19)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v20 = v19;
      v42 = v5;
      v43 = v3;
      v21 = [v19 guid];

      if (!v21)
      {
LABEL_28:
        __break(1u);
        return;
      }

      v22 = sub_190D56F10();
      v24 = v23;

      swift_beginAccess();
      sub_1908AA174(v49, v22, v24);
      swift_endAccess();

      v25 = v44;
      v26 = [v44 visibleAssociatedMessageChatItems];
      if (v26)
      {
        v27 = v26;
        sub_1902188FC(0, &qword_1EAD44F88, off_1E72E47F8);
        v28 = sub_190D57180();

        v41 = v4;
        if (v28 >> 62)
        {
LABEL_22:
          v29 = sub_190D581C0();
          if (v29)
          {
LABEL_8:
            v30 = 0;
            v48 = v28 & 0xC000000000000001;
            while (1)
            {
              if (v48)
              {
                v31 = MEMORY[0x193AF3B90](v30, v28);
              }

              else
              {
                if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_21;
                }

                v31 = *(v28 + 8 * v30 + 32);
              }

              v32 = v31;
              v33 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
                __break(1u);
LABEL_21:
                __break(1u);
                goto LABEL_22;
              }

              v34 = [v31 IMChatItem];
              if (!v34)
              {
                break;
              }

              v35 = v34;
              v36 = [v34 guid];

              if (v36)
              {
                v37 = sub_190D56F10();
                v39 = v38;

                swift_beginAccess();
                sub_1908AA174(v49, v37, v39);
                swift_endAccess();
              }

              else
              {
              }

              ++v30;
              if (v33 == v29)
              {
                goto LABEL_23;
              }
            }

            __break(1u);
            goto LABEL_27;
          }
        }

        else
        {
          v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v29)
          {
            goto LABEL_8;
          }
        }

LABEL_23:

        v4 = v41;
        v5 = v42;
        v3 = v43;
        v14 = v45;
      }

      else
      {

        v5 = v42;
        v3 = v43;
      }
    }

    [v3 updateEmphasis];

    (*(v5 + 8))(v14, v4);
  }
}

void sub_190C380A0()
{
  v1 = v0;
  v56 = sub_190D51C00();
  v2 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v7 = &v52 - v6;
  v8 = [v0 balloonEmphasisManager];
  sub_190D58140();
  swift_unknownObjectRelease();
  type metadata accessor for BalloonEmphasisManager();
  if (swift_dynamicCast())
  {
    v9 = v57;
    v10 = OBJC_IVAR___CKBalloonEmphasisManager_emphasizedChatItemGUIDs;
    swift_beginAccess();
    if (*(*&v9[v10] + 16))
    {
      sub_190C38634();
      v52 = v9;
      v11 = *&v9[v10];
      v12 = v11 + 56;
      v13 = 1 << *(v11 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v11 + 56);
      v16 = (v13 + 63) >> 6;
      v53 = *MEMORY[0x1E6979880];
      v54 = v11;
      v17 = (v2 + 8);
      sub_190D52690();
      v18 = 0;
      while (v15)
      {
LABEL_13:
        sub_190D52690();
        v20 = sub_190D56ED0();

        v21 = [v1 indexPathForChatItemGUID_];

        sub_190D51BC0();
        v22 = [v1 collectionView];
        v23 = sub_190D51BB0();
        v24 = [v22 cellForItemAtIndexPath_];

        if (v24)
        {
          objc_opt_self();
          v25 = swift_dynamicCastObjCClass();
          if (v25)
          {
            v26 = v25;
            [v25 setEmphasisState_];
            v27 = objc_allocWithZone(MEMORY[0x1E6979378]);
            v28 = [v27 initWithType_];
            sub_190A87064(v28);

            v29 = [v26 contentView];
            [v29 setAlpha_];

            v24 = v29;
          }
        }

        v15 &= v15 - 1;
        (*v17)(v7, v56);
      }

      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
          goto LABEL_33;
        }

        if (v19 >= v16)
        {
          break;
        }

        v15 = *(v12 + 8 * v19);
        ++v18;
        if (v15)
        {
          v18 = v19;
          goto LABEL_13;
        }
      }

      v30 = OBJC_IVAR___CKBalloonEmphasisManager_emphasizedAssociatedChatItemGUIDs;
      v31 = v52;
      swift_beginAccess();
      v32 = *&v31[v30];
      v35 = *(v32 + 56);
      v34 = v32 + 56;
      v33 = v35;
      v36 = 1 << *(*&v31[v30] + 32);
      v37 = -1;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      v38 = v37 & v33;
      v39 = (v36 + 63) >> 6;
      sub_190D52690();
      v40 = 0;
      while (v38)
      {
LABEL_26:
        sub_190D52690();
        v42 = sub_190D56ED0();

        v43 = [v1 indexPathForAssociatedChatItemGUID_];

        sub_190D51BC0();
        v44 = [v1 collectionView];
        v45 = sub_190D51BB0();
        v46 = [v44 cellForItemAtIndexPath_];

        if (v46)
        {
          objc_opt_self();
          v47 = swift_dynamicCastObjCClass();
          if (v47)
          {
            v48 = v47;
            [v47 setEmphasisState_];
            v49 = objc_allocWithZone(MEMORY[0x1E6979378]);
            v50 = [v49 initWithType_];
            sub_190A87064(v50);

            v51 = [v48 contentView];
            [v51 setAlpha_];

            v46 = v51;
          }
        }

        v38 &= v38 - 1;
        (*v17)(v55, v56);
      }

      while (1)
      {
        v41 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v41 >= v39)
        {

          return;
        }

        v38 = *(v34 + 8 * v41);
        ++v40;
        if (v38)
        {
          v40 = v41;
          goto LABEL_26;
        }
      }

LABEL_33:
      __break(1u);
    }

    else
    {
    }
  }
}

void sub_190C38634()
{
  v1 = [v0 collectionView];
  v2 = [v1 visibleCells];

  sub_1902188FC(0, &qword_1EAD44FF0, 0x1E69DC7F8);
  v3 = sub_190D57180();

  if (v3 >> 62)
  {
    v4 = sub_190D581C0();
    if (v4)
    {
LABEL_3:
      if (v4 < 1)
      {
        __break(1u);
      }

      else
      {
        v5 = 0;
        v17 = *MEMORY[0x1E6979AC0];
        v18 = *MEMORY[0x1E6979880];
        do
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x193AF3B90](v5, v3);
          }

          else
          {
            v7 = *(v3 + 8 * v5 + 32);
          }

          v8 = v7;
          objc_opt_self();
          v9 = swift_dynamicCastObjCClass();
          if (v9)
          {
            v10 = v9;
            [v9 setEmphasisState_];
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v11 = [v10 traitCollection];
              [v11 userInterfaceStyle];

              CAColorMatrixMakeBrightness();
              CAColorMatrixMakeContrast();
              CAColorMatrixMakeSaturation();
              v12 = *(MEMORY[0x1E6979280] + 48);
              v51 = *(MEMORY[0x1E6979280] + 32);
              v52 = v12;
              v53 = *(MEMORY[0x1E6979280] + 64);
              v13 = *(MEMORY[0x1E6979280] + 16);
              v49 = *MEMORY[0x1E6979280];
              v50 = v13;
              v46 = v26;
              v47 = v27;
              v48 = v28;
              v44 = v24;
              v45 = v25;
              CAColorMatrixConcat();
              v51 = v41;
              v52 = v42;
              v53 = v43;
              v49 = v39;
              v50 = v40;
              v21 = v31;
              v22 = v32;
              v23 = v33;
              v19 = v29;
              v20 = v30;
              CAColorMatrixConcat();
              v51 = v46;
              v52 = v47;
              v53 = v48;
              v49 = v44;
              v50 = v45;
              v21 = v36;
              v22 = v37;
              v23 = v38;
              v19 = v34;
              v20 = v35;
              CAColorMatrixConcat();
              sub_1908F2000();
              v14 = sub_190D52690();
              sub_1908F2164(v14, &v49);
              v6 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
              v15 = objc_opt_self();
              v21 = v51;
              v22 = v52;
              v23 = v53;
              v19 = v49;
              v20 = v50;
              v16 = [v15 valueWithCAColorMatrix_];
              [v6 setValue:v16 forKey:v17];

              sub_190A86CA4(v6);
            }

            else
            {
              v6 = [v10 contentView];
              [v6 setAlpha_];
            }
          }

          ++v5;
        }

        while (v4 != v5);
      }

      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }
}

void sub_190C38B74(void *a1, void *a2)
{
  v3 = v2;
  v6 = [v3 balloonEmphasisManager];
  sub_190D58140();
  swift_unknownObjectRelease();
  type metadata accessor for BalloonEmphasisManager();
  if (swift_dynamicCast())
  {
    v7 = OBJC_IVAR___CKBalloonEmphasisManager_emphasizedChatItemGUIDs;
    swift_beginAccess();
    if (!*(*&v24[v7] + 16))
    {
      goto LABEL_9;
    }

    v8 = [a2 IMChatItem];
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    v10 = [v8 guid];

    if (v10)
    {
      v11 = sub_190D56F10();
      v13 = v12;

      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = v14;
        v16 = *&v24[v7];
        v17 = a1;
        sub_190D52690();
        v18 = sub_190CA994C(v11, v13, v16);

        v19 = OBJC_IVAR___CKBalloonEmphasisManager_emphasizedAssociatedChatItemGUIDs;
        swift_beginAccess();
        v20 = *&v24[v19];
        sub_190D52690();
        v21 = sub_190CA994C(v11, v13, v20);

        if (v18 & 1) != 0 || (v21)
        {
          [v15 setEmphasisState_];
          v22 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
          sub_190A87064(v22);

          v23 = [v15 contentView];
          [v23 setAlpha_];
        }

        else
        {
          sub_190C38DEC();
        }
      }

      else
      {
      }
    }

    else
    {
LABEL_9:
    }
  }
}

void sub_190C38DEC()
{
  [v0 setEmphasisState_];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v1 = [v0 traitCollection];
    [v1 userInterfaceStyle];

    CAColorMatrixMakeBrightness();
    CAColorMatrixMakeContrast();
    CAColorMatrixMakeSaturation();
    v29 = v14;
    v30 = v15;
    v31 = v16;
    v27 = v12;
    v28 = v13;
    CAColorMatrixConcat();
    v34 = v19;
    v35 = v20;
    v36 = v21;
    v32 = v17;
    v33 = v18;
    CAColorMatrixConcat();
    v9 = v24;
    v10 = v25;
    v11 = v26;
    v7 = v22;
    v8 = v23;
    CAColorMatrixConcat();
    sub_1908F2000();
    v2 = sub_190D52690();
    sub_1908F2164(v2, &v27);
    v3 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v4 = objc_opt_self();
    v9 = v29;
    v10 = v30;
    v11 = v31;
    v7 = v27;
    v8 = v28;
    v5 = [v4 valueWithCAColorMatrix_];
    [v3 setValue:v5 forKey:*MEMORY[0x1E6979AC0]];

    sub_190A86CA4(v3);
  }

  else
  {
    v6 = [v0 contentView];
    [v6 setAlpha_];
  }
}

uint64_t sub_190C39128(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = &selRef_transcriptCollectionViewController_balloonView_longPressedForItemWithIndexPath_;
  v19 = *(a1 + 16);
  while (1)
  {
    sub_19021834C(v4, v21);
    sub_1902188FC(0, &qword_1ED7769D0, 0x1E6979378);
    if (!swift_dynamicCast())
    {
      goto LABEL_5;
    }

    v6 = v22;
    v7 = [v22 v5[328]];
    if (v7)
    {
      v8 = v7;
      v9 = sub_190D56F10();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = [a2 v5[328]];
    if (v12)
    {
      break;
    }

    if (!v11)
    {
      goto LABEL_22;
    }

LABEL_4:

    v2 = v19;
    v5 = &selRef_transcriptCollectionViewController_balloonView_longPressedForItemWithIndexPath_;
LABEL_5:
    ++v3;
    v4 += 32;
    if (v2 == v3)
    {
      return 0;
    }
  }

  v13 = v12;
  v14 = sub_190D56F10();
  v16 = v15;

  if (!v11)
  {

    if (!v16)
    {
      return v3;
    }

    v2 = v19;
    v5 = &selRef_transcriptCollectionViewController_balloonView_longPressedForItemWithIndexPath_;
    goto LABEL_5;
  }

  if (!v16)
  {
    goto LABEL_4;
  }

  if (v9 != v14 || v11 != v16)
  {
    v17 = sub_190D58760();

    v2 = v19;
    v5 = &selRef_transcriptCollectionViewController_balloonView_longPressedForItemWithIndexPath_;
    if (v17)
    {
      return v3;
    }

    goto LABEL_5;
  }

LABEL_22:

  return v3;
}

unint64_t sub_190C3936C()
{
  result = qword_1EAD60B80;
  if (!qword_1EAD60B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60B80);
  }

  return result;
}

unint64_t sub_190C393C4()
{
  result = qword_1EAD60B88;
  if (!qword_1EAD60B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60B88);
  }

  return result;
}

unint64_t sub_190C3949C()
{
  result = qword_1EAD60B90;
  if (!qword_1EAD60B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60B90);
  }

  return result;
}

uint64_t sub_190C394F0()
{
  v0 = sub_190D51460();
  __swift_allocate_value_buffer(v0, qword_1EAD9E540);
  __swift_project_value_buffer(v0, qword_1EAD9E540);
  return sub_190D51430();
}

uint64_t sub_190C39554(uint64_t a1, uint64_t a2)
{
  v2[15] = a1;
  v2[16] = a2;
  v3 = sub_190D50630();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53DB0, &unk_190DFE150);
  v2[21] = swift_task_alloc();
  v4 = sub_190D50680();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190C396B4, 0, 0);
}

uint64_t sub_190C396B4()
{
  if (qword_1EAD521B0 != -1)
  {
    swift_once();
  }

  v1 = sub_190D53040();
  *(v0 + 200) = __swift_project_value_buffer(v1, qword_1EAD9E840);
  v2 = sub_190D53020();
  v3 = sub_190D57680();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_19020E000, v2, v3, "Performing FetchConversationIdentifierIntent", v4, 2u);
    MEMORY[0x193AF7A40](v4, -1, -1);
  }

  sub_190D50810();
  v5 = *(v0 + 112);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v0 + 184);
    v9 = *(v7 + 16);
    v7 += 16;
    v8 = v9;
    v10 = *(v0 + 144);
    v41 = *(v0 + 152);
    v11 = v5 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v49 = *(v7 + 56);
    v45 = (v10 + 88);
    v46 = (v10 + 32);
    v43 = *MEMORY[0x1E695A028];
    v44 = *MEMORY[0x1E695A020];
    v42 = *MEMORY[0x1E695A030];
    v12 = (v7 - 8);
    v39 = (v10 + 96);
    v40 = (v10 + 8);
    v48 = MEMORY[0x1E69E7CC0];
    v47 = v9;
    do
    {
      v14 = *(v0 + 168);
      v8(*(v0 + 192), v11, *(v0 + 176));
      sub_190D50670();
      v15 = sub_190D50650();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v14, 1, v15) == 1)
      {
        v13 = *(v0 + 168);
        (*v12)(*(v0 + 192), *(v0 + 176));
        sub_190C3A670(v13);
      }

      else
      {
        v18 = *(v0 + 160);
        v17 = *(v0 + 168);
        v19 = *(v0 + 152);
        v20 = *(v0 + 136);
        sub_190D50640();
        (*(v16 + 8))(v17, v15);
        (*v46)(v19, v18, v20);
        v21 = (*v45)(v19, v20);
        v22 = *(v0 + 192);
        v23 = *(v0 + 176);
        v24 = *(v0 + 152);
        v25 = *(v0 + 136);
        if (v21 == v44 || v21 == v43 || v21 == v42)
        {
          (*v39)(*(v0 + 152), *(v0 + 136));
          v26 = *(v41 + 8);
          v27 = *v24;
          *(v0 + 72) = MEMORY[0x1E69E6158];
          *(v0 + 48) = v27;
          *(v0 + 56) = v26;
          (*v12)(v22, v23);
          sub_190824530((v0 + 48), (v0 + 16));
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v8 = v47;
            v28 = v48;
          }

          else
          {
            v28 = sub_1908355E0(0, *(v48 + 2) + 1, 1, v48);
            v8 = v47;
          }

          v30 = *(v28 + 2);
          v29 = *(v28 + 3);
          if (v30 >= v29 >> 1)
          {
            v28 = sub_1908355E0((v29 > 1), v30 + 1, 1, v28);
          }

          *(v28 + 2) = v30 + 1;
          v48 = v28;
          sub_190824530((v0 + 16), &v28[32 * v30 + 32]);
        }

        else
        {
          (*v12)(*(v0 + 192), *(v0 + 176));
          (*v40)(v24, v25);
          v8 = v47;
        }
      }

      v11 += v49;
      --v6;
    }

    while (v6);
  }

  v31 = sub_190D57160();

  v32 = CKMakeHandlesFromRecipients(v31);

  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v34 = sub_190D57180();

    v35 = sub_190880BF8(v34);

    if (v35)
    {
      v33 = v35;
    }
  }

  *(v0 + 208) = v33;
  *(v0 + 216) = objc_opt_self();
  *(v0 + 224) = sub_190D572A0();
  *(v0 + 232) = sub_190D57290();
  v37 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190C39BD0, v37, v36);
}

uint64_t sub_190C39BD0()
{
  v1 = *(v0 + 216);

  *(v0 + 240) = [v1 sharedConversationList];

  return MEMORY[0x1EEE6DFA0](sub_190C39C58, 0, 0);
}

uint64_t sub_190C39C58()
{
  sub_19086E9EC();
  *(v0 + 248) = sub_190D57160();

  *(v0 + 256) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190C39D08, v2, v1);
}

uint64_t sub_190C39D08()
{
  v1 = v0[31];
  v2 = v0[30];

  v0[33] = [v2 conversationForHandles:v1 displayName:0 joinedChatsOnly:1 create:0];

  return MEMORY[0x1EEE6DFA0](sub_190C39DA8, 0, 0);
}

uint64_t sub_190C39DA8(uint64_t a1)
{
  if (v1[33])
  {
    v1[34] = sub_190D57290();
    v3 = sub_190D57240();

    return MEMORY[0x1EEE6DFA0](sub_190C39F54, v3, v2);
  }

  else
  {
    v4 = sub_190D53020();
    v5 = sub_190D576A0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v4, v5, "Failed to find a conversation matching provided contacts", v6, 2u);
      MEMORY[0x193AF7A40](v6, -1, -1);
    }

    v1[11] = 0;
    v1[10] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C50, &unk_190DE54D0);
    sub_190B9F938();
    sub_190D506A0();

    v7 = v1[1];

    return v7();
  }
}

uint64_t sub_190C39F54()
{
  v1 = *(v0 + 264);

  *(v0 + 280) = [v1 uniqueIdentifier];

  return MEMORY[0x1EEE6DFA0](sub_190C39FD8, 0, 0);
}

uint64_t sub_190C39FD8()
{
  v13 = v0;
  v1 = v0[35];
  v2 = sub_190D56F10();
  v4 = v3;

  sub_190D52690();
  v5 = sub_190D53020();
  v6 = sub_190D57680();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_19021D9F8(v2, v4, &v12);
    _os_log_impl(&dword_19020E000, v5, v6, "FetchConversationIdentifierIntent returning conversation identifier '%s'", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x193AF7A40](v8, -1, -1);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  v9 = v0[33];
  v0[12] = v2;
  v0[13] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C50, &unk_190DE54D0);
  sub_190B9F938();
  sub_190D506A0();

  v10 = v0[1];

  return v10();
}

uint64_t sub_190C3A1A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51F88 != -1)
  {
    swift_once();
  }

  v2 = sub_190D51460();
  v3 = __swift_project_value_buffer(v2, qword_1EAD9E540);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_190C3A24C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_190221DA4;

  return sub_190C39554(a1, v4);
}

uint64_t sub_190C3A2EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_190D50C80();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D505D0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E8, &unk_190DDF120);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8, &qword_190DD5AE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v19 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60BA8, &qword_190DFE140);
  v16 = sub_190D51460();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v19[1] = 0;
  v17 = sub_190D50590();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  (*(v7 + 104))(v9, *MEMORY[0x1E6959F98], v6);
  (*(v3 + 104))(v5, *MEMORY[0x1E695A500], v2);
  result = sub_190D508A0();
  *a1 = result;
  return result;
}

uint64_t sub_190C3A5C0(uint64_t a1)
{
  v2 = sub_190C3949C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_190C3A60C()
{
  result = qword_1EAD60B98;
  if (!qword_1EAD60B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60BA0, &qword_190DFE138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60B98);
  }

  return result;
}

uint64_t sub_190C3A670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53DB0, &unk_190DFE150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_190C3A6E0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v21.receiver = v4;
  v21.super_class = type metadata accessor for TapbackVibrancyView();
  v10 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 layer];
  [v11 setAllowsEdgeAntialiasing_];

  v12 = objc_opt_self();
  v13 = v10;
  v14 = [v12 blackColor];
  [v13 setBackgroundColor_];

  sub_190C3A948();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50, &unk_190DD5F90);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_190DD1D90;
  v16 = sub_190D53270();
  v17 = MEMORY[0x1E69DC0F8];
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = ObjectType;
  sub_190D57CE0();

  swift_unknownObjectRelease();

  return v13;
}

void sub_190C3A948()
{
  v1 = [objc_opt_self() sharedBehaviors];
  if (!v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = v1;
  v11 = [v1 theme];

  if (!v11)
  {
    return;
  }

  v3 = [v0 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
  {
LABEL_6:
    v5 = [v11 darkBalloonOutlineVibrancyFilter];
    if (!v5)
    {
      __break(1u);
      return;
    }

    goto LABEL_10;
  }

  if (v4 != 1)
  {
    if (v4)
    {
      v10 = v11;
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v5 = [v11 lightBalloonOutlineVibrancyFilter];
  if (!v5)
  {
LABEL_16:
    __break(1u);
    return;
  }

LABEL_10:
  v6 = v5;
  v7 = [v0 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90, &qword_190DD63C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_190DD1D90;
  *(v8 + 56) = sub_1902188FC(0, &qword_1ED7769D0, 0x1E6979378);
  *(v8 + 32) = v6;
  v9 = sub_190D57160();

  [v7 setFilters_];

  v10 = v6;
LABEL_12:
}

id sub_190C3ABA8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v17.receiver = v5;
  v17.super_class = type metadata accessor for TapbackBackdropView();
  v10 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a2, a3, a4, a5);
  v11 = [v10 traitCollection];
  v12 = [v11 tapbackBackdropGroupName];

  v13 = [v10 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setGroupName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50, &unk_190DD5F90);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_190DD1D90;
  v15 = sub_1908B1EA8();
  *(v14 + 32) = &type metadata for CKBalloonBackdropGroupTrait;
  *(v14 + 40) = v15;
  sub_190D57CE0();

  swift_unknownObjectRelease();

  return v10;
}

void sub_190C3AD38(void *a1)
{
  v2 = [a1 traitCollection];
  v4 = [v2 tapbackBackdropGroupName];

  v3 = [a1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setGroupName_];
}

id sub_190C3AF24(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_colorType] = -1;
  *&v4[OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_backgroundLuminance] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TapbackMaterialView();
  v10 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  sub_190C3B124();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50, &unk_190DD5F90);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_190DD1D90;
  v12 = sub_190D53270();
  v13 = MEMORY[0x1E69DC0F8];
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = ObjectType;
  sub_190D57CE0();

  swift_unknownObjectRelease();

  return v10;
}

void sub_190C3B0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    a5();
  }
}

uint64_t sub_190C3B124()
{
  v1 = v0;
  v2 = sub_190D56B90();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D56BB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_colorType];
  v20 = v2;
  if (v10)
  {
    if (v10 == 1)
    {
      sub_190D56B00();
    }

    else
    {
      if (v10 != 255)
      {
        result = sub_190D58510();
        __break(1u);
        return result;
      }

      sub_190D56B10();
    }
  }

  else
  {
    sub_190D56B30();
  }

  v11 = [v0 traitCollection];
  sub_190D56BA0();

  v12 = sub_190D56B80();
  v13 = [v1 layer];
  sub_1908A1E3C(v12);

  v14 = sub_190D57160();

  [v13 setFilters_];

  v15 = [v1 layer];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    sub_190D56B40();
    [v17 setScale_];
  }

  (*(v3 + 8))(v5, v20);
  return (*(v7 + 8))(v9, v6);
}

void sub_190C3B4E8(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v6.receiver = a1;
  v6.super_class = a3(a1, a2);
  v3 = v6.receiver;
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v4 = [v3 layer];
  [v3 bounds];
  [v4 setCornerRadius_];
}

id sub_190C3B59C(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t))
{
  v12.receiver = a1;
  v12.super_class = a7(a1, a6);
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

void sub_190C3B6A8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v17.receiver = v5;
  v17.super_class = type metadata accessor for TapbackSolidStrokeView();
  v10 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a2, a3, a4, a5);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 sharedBehaviors];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 theme];

    if (v15)
    {
      v16 = [v15 transcriptBackgroundColor];

      [v12 setBackgroundColor_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_190C3B7FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_190C3B8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_190C1C11C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v11 = sub_19022DCEC(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v18 = *v5;
      if (!v14)
      {
        sub_190B68144();
        v15 = v18;
      }

      sub_190C822A8(v11, v15, v16);
      *v5 = v15;
    }
  }
}

void sub_190C3BA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54F40, &qword_190DFB990);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ConversationEntity(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_19022EEA4(a1, &unk_1EAD54F40, &qword_190DFB990);
    sub_190C8173C(a2, a3, v9);

    sub_19022EEA4(v9, &unk_1EAD54F40, &qword_190DFB990);
  }

  else
  {
    sub_19082FC20(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_190C1C2AC(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }
}

void sub_190C3BC40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v20;
  }

  else
  {
    v15 = sub_19022DCEC(a2, a3);
    v17 = v16;

    if (v17)
    {
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v7;
      v21 = *v7;
      if (!v18)
      {
        a6();
        v19 = v21;
      }

      a5(v15, v19);
      *v7 = v19;
    }
  }
}

void sub_190C3BD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_190C1CBC4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v9 = sub_19022DCEC(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v16 = *v4;
      if (!v12)
      {
        sub_190B69198();
        v13 = v16;
      }

      sub_190C8280C(v9, v13, v14);
      *v4 = v13;
    }
  }
}

double sub_190C3BE50()
{
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  sub_190D52690();
  return result;
}

double sub_190C3BEF4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  *a2 = *(v3 + 16);
  sub_190D52690();
  return result;
}

double sub_190C3BFCC(uint64_t a1)
{
  v3 = sub_190D52690();
  v4 = sub_1909A88F8(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
    sub_190D51C10();
  }

  return result;
}

double sub_190C3C120()
{
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  sub_190D52690();
  return result;
}

double sub_190C3C1C4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  *a2 = *(v3 + 24);
  sub_190D52690();
  return result;
}

double sub_190C3C29C(uint64_t a1)
{
  v3 = sub_190D52690();
  v4 = sub_1909A88F8(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
    sub_190D51C10();
  }

  return result;
}

double sub_190C3C3F0()
{
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  sub_190D52690();
  return result;
}

double sub_190C3C494@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  *a2 = *(v3 + 32);
  sub_190D52690();
  return result;
}

double sub_190C3C56C(uint64_t a1)
{
  v3 = sub_190D52690();
  v4 = sub_1909A88F8(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
    sub_190D51C10();
  }

  return result;
}

double sub_190C3C6C0()
{
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  sub_190D52690();
  return result;
}

double sub_190C3C764@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  *a2 = *(v3 + 40);
  sub_190D52690();
  return result;
}

double sub_190C3C83C(uint64_t a1)
{
  v3 = sub_190D52690();
  v4 = sub_1909A88F8(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
    sub_190D51C10();
  }

  return result;
}

double sub_190C3C990()
{
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  sub_190D50920();
  return result;
}

double sub_190C3CA34@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  *a2 = *(v3 + 48);
  sub_190D50920();
  return result;
}

double sub_190C3CAE0(uint64_t a1)
{
  if (!*(v1 + 48))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
    sub_190D51C10();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020, &qword_190DD6530);
  v3 = sub_190D57310();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 48) = a1;

  return result;
}

void *sub_190C3CC7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v60 - v3;
  v5 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = v5;
  v0[4] = v5;
  v0[5] = v5;
  v0[6] = 0;
  v6 = [objc_allocWithZone(CKRecipientAvailabilities) init];
  v7 = MEMORY[0x1E69E7CC8];
  v0[7] = v6;
  v0[8] = v7;
  v0[9] = MEMORY[0x1E69E7CD0];
  v0[10] = [objc_opt_self() sharedConversationList];
  v0[12] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 100000000;
  v62 = OBJC_IVAR____TtC7ChatKit25ClarityUIConversationList___observationRegistrar;
  sub_190D51C50();
  sub_1902188FC(0, &qword_1EAD60BE0, 0x1E6994630);
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  v0[11] = [v8 incomingCommunicationLimit];
  v9 = [v8 outgoingCommunicationLimit];

  v1[13] = v9;
  v61 = v8;
  if ([v8 conversationDetailsEnabled])
  {
    v10 = &unk_1EAD60BF8;
    v11 = 0x1E69A5B08;
  }

  else
  {
    v10 = &unk_1EAD60BE8;
    v11 = 0x1E69A5B10;
  }

  sub_1902188FC(0, v10, v11);
  v12 = objc_opt_self();
  [v12 setChatItemRulesClass_];
  sub_190C3EF90();
  v13 = sub_190D572E0();
  v14 = *(*(v13 - 8) + 56);
  v14(v4, 1, 1, v13);
  sub_190D572A0();
  v15 = @"CKConversationListConversationLeftNotification";
  sub_190D50920();
  v16 = sub_190D57290();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v16;
  v17[3] = v18;
  v19 = v18;
  v17[4] = v15;
  v17[5] = v1;
  sub_190857E08(0, 0, v4, &unk_190DFE348, v17);

  v14(v4, 1, 1, v13);
  sub_190D50920();
  v20 = @"CKConversationListFinishedLoadingNotification";
  v21 = sub_190D57290();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v19;
  v22[4] = v20;
  v22[5] = v1;
  sub_190857E08(0, 0, v4, &unk_190DFE350, v22);

  v14(v4, 1, 1, v13);
  sub_190D50920();
  v23 = @"CKConversationListChangedNotification";
  v24 = sub_190D57290();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = v19;
  v25[4] = v23;
  v25[5] = v1;
  sub_190857E08(0, 0, v4, &unk_190DFE358, v25);

  v26 = *MEMORY[0x1E69A5700];
  v14(v4, 1, 1, v13);
  sub_190D50920();
  v27 = v26;
  v28 = sub_190D57290();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = v19;
  v29[4] = v27;
  v29[5] = v1;
  sub_190857E08(0, 0, v4, &unk_190DFE360, v29);

  v30 = *MEMORY[0x1E69A5748];
  v14(v4, 1, 1, v13);
  sub_190D50920();
  v31 = v30;
  v32 = sub_190D57290();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = v19;
  v33[4] = v31;
  v33[5] = v1;
  sub_190857E08(0, 0, v4, &unk_190DFE368, v33);

  v34 = [objc_opt_self() sharedFeatureFlags];
  LODWORD(v32) = [v34 isUnreadCountRefactorEnabled];

  v35 = v32 == 0;
  if (v32)
  {
    v36 = &unk_190DFE3D0;
  }

  else
  {
    v36 = &unk_190DFE370;
  }

  if (v35)
  {
    v37 = *MEMORY[0x1E69A5920];
  }

  else
  {
    v37 = *MEMORY[0x1E69A7DD0];
  }

  v14(v4, 1, 1, v13);
  sub_190D50920();
  v38 = v37;
  v39 = sub_190D57290();
  v40 = swift_allocObject();
  v40[2] = v39;
  v41 = MEMORY[0x1E69E85E0];
  v40[3] = MEMORY[0x1E69E85E0];
  v40[4] = v38;
  v40[5] = v1;
  sub_190857E08(0, 0, v4, v36, v40);

  v42 = *MEMORY[0x1E695C3D8];
  v14(v4, 1, 1, v13);
  sub_190D50920();
  v43 = v42;
  v44 = sub_190D57290();
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = v41;
  v45[4] = v43;
  v45[5] = v1;
  sub_190857E08(0, 0, v4, &unk_190DFE378, v45);

  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  v48 = v61;
  *(v47 + 16) = v46;
  *(v47 + 24) = v48;
  v67 = sub_190C435D0;
  v68 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v64 = 1107296256;
  v65 = sub_190840E6C;
  v66 = &block_descriptor_112;
  v49 = _Block_copy(&aBlock);
  v50 = v48;
  sub_190D50920();

  v51 = [v50 observeUpdatesForSelector:sel_incomingCommunicationLimit handler:v49];
  _Block_release(v49);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v60 - 2) = v1;
  *(&v60 - 1) = v51;
  aBlock = v1;
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C10();

  swift_unknownObjectRelease();
  v53 = swift_allocObject();
  swift_weakInit();

  v54 = swift_allocObject();
  *(v54 + 16) = v53;
  *(v54 + 24) = v50;
  v67 = sub_190C435F0;
  v68 = v54;
  aBlock = MEMORY[0x1E69E9820];
  v64 = 1107296256;
  v65 = sub_190840E6C;
  v66 = &block_descriptor_103_0;
  v55 = _Block_copy(&aBlock);
  v56 = v50;

  v57 = [v56 observeUpdatesForSelector:sel_outgoingCommunicationLimit handler:v55];
  _Block_release(v55);
  v58 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v58);
  *(&v60 - 2) = v1;
  *(&v60 - 1) = v57;
  aBlock = v1;
  sub_190D51C10();

  swift_unknownObjectRelease();

  return v1;
}

void sub_190C3D640(void *a1)
{
  v3 = sub_190D56F10();
  v5 = v4;
  if (v3 == sub_190D56F10() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_190D58760();

    if ((v8 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
      sub_190D51C10();

      return;
    }
  }

  v10 = *(v1 + 88);
  *(v1 + 88) = a1;
}

void sub_190C3D7D4(void *a1)
{
  v3 = sub_190D56F10();
  v5 = v4;
  if (v3 == sub_190D56F10() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_190D58760();

    if ((v8 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
      sub_190D51C10();

      return;
    }
  }

  v10 = *(v1 + 104);
  *(v1 + 104) = a1;
}

double sub_190C3D968(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
    sub_190D51C20();

    v6 = *(v5 + 88);
    v7 = [a2 incomingCommunicationLimit];
    v8 = sub_190D56F10();
    v10 = v9;
    if (v8 == sub_190D56F10() && v10 == v11)
    {
    }

    else
    {
      v13 = sub_190D58760();

      if ((v13 & 1) == 0)
      {
        sub_190C3D640([a2 incomingCommunicationLimit]);
        sub_190C3EF90();
      }
    }
  }

  return result;
}

double sub_190C3DB08(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
    sub_190D51C20();

    v6 = *(v5 + 104);
    v7 = [a2 outgoingCommunicationLimit];
    v8 = sub_190D56F10();
    v10 = v9;
    if (v8 == sub_190D56F10() && v10 == v11)
    {
    }

    else
    {
      v13 = sub_190D58760();

      if ((v13 & 1) == 0)
      {
        sub_190C3D7D4([a2 outgoingCommunicationLimit]);
        sub_190C3EF90();
      }
    }
  }

  return result;
}

uint64_t sub_190C3DCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60C00, qword_190DDFDA0);
  v5[20] = swift_task_alloc();
  v6 = sub_190D50FB0();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = sub_190D57980();
  v5[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60C08, &qword_190DFE430);
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60C10, &qword_190DFE438);
  v5[29] = v8;
  v5[30] = *(v8 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = sub_190D572A0();
  v5[33] = sub_190D57290();
  v10 = sub_190D57240();
  v5[34] = v10;
  v5[35] = v9;

  return MEMORY[0x1EEE6DFA0](sub_190C3DF1C, v10, v9);
}

uint64_t sub_190C3DF1C()
{
  v1 = v0[29];
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_190D579A0();

  v0[12] = v3;
  sub_190D57990();
  sub_190C436D0(&qword_1EAD60C18, MEMORY[0x1E6969F08], MEMORY[0x1E6969F10]);
  sub_190D584B0();
  MEMORY[0x193AF3CF0](v1);
  sub_190D57380();
  sub_190D58480();
  sub_190D58490();
  v0[36] = OBJC_IVAR____TtC7ChatKit25ClarityUIConversationList___observationRegistrar;
  v4 = sub_190D57290();
  v0[37] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_190D57240();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[38] = v5;
  v0[39] = v7;

  return MEMORY[0x1EEE6DFA0](sub_190C3E108, v5, v7);
}

uint64_t sub_190C3E108()
{
  v1 = v0[37];
  v0[40] = sub_190D58470();
  sub_190C436D0(&qword_1EAD60C20, MEMORY[0x1E6969EF8], MEMORY[0x1E6969F00]);
  v2 = swift_task_alloc();
  v0[41] = v2;
  *v2 = v0;
  v2[1] = sub_190C3E210;
  v3 = v0[20];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

uint64_t sub_190C3E210()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = *(v2 + 304);
    v4 = *(v2 + 312);
    v5 = sub_190C3E4FC;
  }

  else
  {
    (*(v2 + 320))();
    v3 = *(v2 + 304);
    v4 = *(v2 + 312);
    v5 = sub_190C3E33C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_190C3E33C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_19022EEA4(v3, &qword_1EAD60C00, qword_190DDFDA0);
    v4 = v0[34];
    v5 = v0[35];

    return MEMORY[0x1EEE6DFA0](sub_190C3E514, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[23], v3, v1);
    v6 = sub_190D58480();
    v0[43] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[44] = v8;
    *v8 = v0;
    v8[1] = sub_190C3E61C;
    v9 = v0[23];

    return (v11)(v0 + 10, v9);
  }
}

uint64_t sub_190C3E514()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[26];
  v6 = v0[27];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_190C3E61C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 168);

  (*(v3 + 8))(v2, v4);

  v5 = *(v1 + 312);
  v6 = *(v1 + 304);

  return MEMORY[0x1EEE6DFA0](sub_190C3E7D4, v6, v5);
}

uint64_t sub_190C3E7D4()
{

  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return MEMORY[0x1EEE6DFA0](sub_190C3E838, v1, v2);
}

uint64_t sub_190C3E838()
{
  v1 = v0[17];
  swift_getKeyPath();
  v0[14] = v1;
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  if (*(v1 + 120))
  {
    sub_190D50920();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020, &qword_190DD6530);
    sub_190D57330();
  }

  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v5 = sub_190D572E0();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v3, 1, 1, v5);
  sub_190D50920();
  v7 = sub_190D57290();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v4;
  sub_19022FD14(v3, v2, &qword_1EAD5BAF0, &qword_190DD7B00);
  LODWORD(v2) = (*(v6 + 48))(v2, 1, v5);
  sub_190D50920();
  v10 = v0[18];
  if (v2 == 1)
  {
    sub_19022EEA4(v0[18], &qword_1EAD5BAF0, &qword_190DD7B00);
  }

  else
  {
    sub_190D572D0();
    (*(v6 + 8))(v10, v5);
  }

  v11 = v8[2];
  swift_unknownObjectRetain();

  if (v11)
  {
    swift_getObjectType();
    v12 = sub_190D57240();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  sub_19022EEA4(v0[19], &qword_1EAD5BAF0, &qword_190DD7B00);
  if (v14 | v12)
  {
    v0[6] = 0;
    v0[7] = 0;
    v0[8] = v12;
    v0[9] = v14;
  }

  v15 = v0[17];
  v16 = swift_task_create();
  if (*(v15 + 120) && (sub_190D50920(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020, &qword_190DD6530), v17 = sub_190D57310(), , v15 = v0[17], (v17 & 1) != 0))
  {
    *(v15 + 120) = v16;
  }

  else
  {
    swift_getKeyPath();
    v18 = swift_task_alloc();
    *(v18 + 16) = v15;
    *(v18 + 24) = v16;
    v0[15] = v15;
    sub_190D51C10();
  }

  v19 = sub_190D57290();
  v0[37] = v19;
  if (v19)
  {
    swift_getObjectType();
    v20 = sub_190D57240();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v0[38] = v20;
  v0[39] = v22;

  return MEMORY[0x1EEE6DFA0](sub_190C3E108, v20, v22);
}

uint64_t sub_190C3EC90()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  return (*(v0 + 8))();
}

uint64_t sub_190C3ECB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_190D572A0();
  v4[4] = sub_190D57290();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_190C3ED64;

  return MEMORY[0x1EEE6DA60](100000000);
}

uint64_t sub_190C3ED64()
{
  *(*v1 + 48) = v0;

  v3 = sub_190D57240();
  if (v0)
  {
    v4 = sub_190C3EF2C;
  }

  else
  {
    v4 = sub_190C3EEC0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_190C3EEC0()
{

  sub_190C3EF90();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190C3EF2C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_190C3EF90()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  *&v4 = MEMORY[0x1EEE9AC00](v3 - 8).n128_u64[0];
  v162 = &v161 - v5;
  v167 = v0;
  v6 = *(v0 + 80);
  [v6 resort];
  v165 = v6;
  [v6 updateConversationListsAndSortIfEnabled];
  v7 = MEMORY[0x1E69E7CC0];
  v179 = MEMORY[0x1E69E7CC0];
  v174 = [objc_opt_self() sharedManager];
  v8 = [v174 favoriteHandleStrings];
  i = MEMORY[0x1E69E6158];
  v10 = sub_190D57180();

  v11 = *(v10 + 16);
  v170 = v10;
  if (v11)
  {
    v12 = (v10 + 40);
    v173 = MEMORY[0x1E69E7CC0];
    *(&v13 + 1) = 2;
    v172 = xmmword_190DD1D90;
    v2 = MEMORY[0x1E69E7CA0];
    *&v13 = 136315138;
    v171 = v13;
    while (1)
    {
      v19 = *(v12 - 1);
      v18 = *v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90, &qword_190DD63C0);
      v20 = swift_allocObject();
      *(v20 + 16) = v172;
      *(v20 + 56) = i;
      *(v20 + 32) = v19;
      *(v20 + 40) = v18;
      swift_bridgeObjectRetain_n();
      v21 = sub_190D57160();

      v22 = CKMakeHandlesFromRecipients(v21);

      if (v22 && (v1 = sub_190D57180(), v22, v23 = sub_190880BF8(v1), , v23))
      {

        v24 = sub_1902188FC(0, &qword_1EAD44E70, 0x1E69A5B90);
        v25 = sub_190D57160();
        v26 = [v165 conversationForHandles:v25 displayName:0 joinedChatsOnly:1 create:1];

        if (v26)
        {

          v27 = v26;
          MEMORY[0x193AF29E0]();
          if (*((v179 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }

          sub_190D571E0();

          v173 = v179;
          goto LABEL_6;
        }

        if (qword_1EAD51CB8 != -1)
        {
          swift_once();
        }

        v30 = sub_190D53040();
        __swift_project_value_buffer(v30, qword_1EAD9E058);
        sub_190D52690();
        v29 = sub_190D53020();
        v31 = sub_190D576A0();

        if (!os_log_type_enabled(v29, v31))
        {
LABEL_16:

          goto LABEL_5;
        }

        v1 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v175[0] = v32;
        *v1 = v171;
        v33 = MEMORY[0x193AF2A20](v23, v24);
        v35 = v34;

        v36 = sub_19021D9F8(v33, v35, v175);
        i = MEMORY[0x1E69E6158];

        *(v1 + 4) = v36;
        _os_log_impl(&dword_19020E000, v29, v31, "Unable to find or create conversation for handles: %s", v1, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x193AF7A40](v32, -1, -1);
        v17 = v1;
      }

      else
      {
        if (qword_1EAD51CB8 != -1)
        {
          swift_once();
        }

        v28 = sub_190D53040();
        __swift_project_value_buffer(v28, qword_1EAD9E058);
        sub_190D52690();
        v29 = sub_190D53020();
        v1 = sub_190D576A0();

        if (!os_log_type_enabled(v29, v1))
        {
          goto LABEL_16;
        }

        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v175[0] = v15;
        *v14 = v171;
        v16 = sub_19021D9F8(v19, v18, v175);

        *(v14 + 4) = v16;
        _os_log_impl(&dword_19020E000, v29, v1, "Unable to make handles from favorites entry with handle string: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x193AF7A40](v15, -1, -1);
        v17 = v14;
        i = MEMORY[0x1E69E6158];
      }

      MEMORY[0x193AF7A40](v17, -1, -1);
LABEL_5:

LABEL_6:
      v12 += 2;
      if (!--v11)
      {
        goto LABEL_23;
      }
    }
  }

  v173 = v7;
LABEL_23:

  if (v173 >> 62)
  {
    goto LABEL_65;
  }

  v37 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_25:
  v38 = MEMORY[0x1E69E7CC0];
  if (v37)
  {
    v178 = MEMORY[0x1E69E7CC0];
    v39 = &v178;
    sub_19082E1D8(0, v37 & ~(v37 >> 63), 0);
    if (v37 < 0)
    {
      __break(1u);
      goto LABEL_148;
    }

    v40 = 0;
    v41 = v178;
    v42 = v173;
    *&v171 = v173 & 0xC000000000000001;
    *&v172 = v37;
    do
    {
      if (v171)
      {
        v43 = MEMORY[0x193AF3B90](v40);
      }

      else
      {
        v43 = *(v42 + 8 * v40 + 32);
      }

      v44 = v43;
      v176 = 0;
      v45 = v43;
      v46 = [v45 uniqueIdentifier];
      v47 = sub_190D56F10();
      v49 = v48;

      strcpy(v175, "Conversation:");
      HIWORD(v175[1]) = -4864;
      MEMORY[0x193AF28B0](v47, v49);

      v2 = v175[0];
      v50 = v175[1];
      v1 = [v45 unreadCount];

      LODWORD(v175[0]) = v177[0];
      *(v175 + 3) = *(v177 + 3);
      v51 = v176;
      v178 = v41;
      v53 = *(v41 + 16);
      v52 = *(v41 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_19082E1D8((v52 > 1), v53 + 1, 1);
        v41 = v178;
      }

      ++v40;
      *(v41 + 16) = v53 + 1;
      v54 = v41 + 80 * v53;
      *(v54 + 32) = v2;
      *(v54 + 40) = v50;
      *(v54 + 48) = v1;
      *(v54 + 56) = 0;
      v55 = *(v175 + 3);
      *(v54 + 57) = v175[0];
      *(v54 + 60) = v55;
      *(v54 + 64) = v44;
      *(v54 + 72) = 0u;
      *(v54 + 88) = 0u;
      *(v54 + 104) = v51;
      v42 = v173;
    }

    while (v172 != v40);
    v38 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  sub_190C3BFCC(v41);
  v56 = [v165 conversationsForFilterMode_];
  v161 = sub_1902188FC(0, &qword_1EAD466B0, off_1E72E4B40);
  v57 = sub_190D57180();

  v175[0] = v38;
  if (v57 >> 62)
  {
    i = sub_190D581C0();
    if (i)
    {
      goto LABEL_38;
    }
  }

  else
  {
    i = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (i)
    {
LABEL_38:
      v58 = 0;
      v1 = (v57 & 0xC000000000000001);
      v59 = v57 & 0xFFFFFFFFFFFFFF8;
      v166 = v57;
      v2 = v57 + 32;
      v169 = v57 & 0xC000000000000001;
      v170 = i;
      v168 = v57 & 0xFFFFFFFFFFFFFF8;
      *&v171 = v57 + 32;
      while (1)
      {
        while (1)
        {
          if (v1)
          {
            v60 = MEMORY[0x193AF3B90](v58, v166);
          }

          else
          {
            if (v58 >= *(v59 + 16))
            {
              goto LABEL_63;
            }

            v60 = *(v2 + 8 * v58);
          }

          v61 = v60;
          if (__OFADD__(v58++, 1))
          {
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            v37 = sub_190D581C0();
            goto LABEL_25;
          }

          if ([v174 shouldFilterIncomingMessages])
          {
            break;
          }

LABEL_39:
          sub_190D58360();
          sub_190D583B0();
          sub_190D583C0();
          sub_190D58370();
          if (v58 == i)
          {
            goto LABEL_61;
          }
        }

        *&v172 = v61;
        v63 = [v61 handles];
        sub_1902188FC(0, &qword_1EAD44E70, 0x1E69A5B90);
        v64 = sub_190D57180();

        if (v64 >> 62)
        {
          v2 = sub_190D581C0();
          if (!v2)
          {
LABEL_58:

            goto LABEL_59;
          }
        }

        else
        {
          v2 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v2)
          {
            goto LABEL_58;
          }
        }

        v178 = v38;
        sub_19082DBB4(0, v2 & ~(v2 >> 63), 0);
        if (v2 < 0)
        {
          goto LABEL_64;
        }

        v65 = 0;
        v66 = v178;
        do
        {
          if ((v64 & 0xC000000000000001) != 0)
          {
            v67 = MEMORY[0x193AF3B90](v65, v64);
          }

          else
          {
            v67 = *(v64 + 8 * v65 + 32);
          }

          v68 = v67;
          v69 = [v67 ID];
          v70 = sub_190D56F10();
          v72 = v71;

          v178 = v66;
          v74 = v66[2];
          v73 = v66[3];
          if (v74 >= v73 >> 1)
          {
            sub_19082DBB4((v73 > 1), v74 + 1, 1);
            v66 = v178;
          }

          ++v65;
          v66[2] = v74 + 1;
          v75 = &v66[2 * v74];
          v75[4] = v70;
          v75[5] = v72;
        }

        while (v2 != v65);

        v38 = MEMORY[0x1E69E7CC0];
        v1 = v169;
        i = v170;
        v59 = v168;
LABEL_59:
        v76 = sub_190D57160();

        v77 = [v174 allowsConversationWithHandleIDs_];

        v2 = v171;
        if (v77)
        {
          goto LABEL_39;
        }

        if (v58 == i)
        {
LABEL_61:
          v78 = v175[0];
          goto LABEL_68;
        }
      }
    }
  }

  v78 = v38;
LABEL_68:

  v175[0] = v38;
  if (v78 < 0 || (v78 & 0x4000000000000000) != 0)
  {
    goto LABEL_121;
  }

  for (i = *(v78 + 16); ; i = sub_190D581C0())
  {
    v79 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v80 = 0;
    *&v172 = 0;
    v2 = v173;
    while (1)
    {
      if ((v78 & 0xC000000000000001) != 0)
      {
        v81 = MEMORY[0x193AF3B90](v80, v78);
      }

      else
      {
        if (v80 >= *(v78 + 16))
        {
          goto LABEL_117;
        }

        v81 = *(v78 + 8 * v80 + 32);
      }

      v1 = v81;
      v82 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      v178 = v81;
      MEMORY[0x1EEE9AC00](v81);
      *(&v161 - 2) = &v178;
      sub_190D52690();
      v83 = v172;
      v84 = sub_190CACFA0(sub_190C48770, (&v161 - 4), v2);
      *&v172 = v83;

      if (v84)
      {
      }

      else
      {
        sub_190D58360();
        sub_190D583B0();
        sub_190D583C0();
        sub_190D58370();
      }

      v79 = MEMORY[0x1E69E7CC0];
      ++v80;
      if (v82 == i)
      {
        v85 = v175[0];
        goto LABEL_84;
      }
    }

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
    ;
  }

  *&v172 = 0;
  v85 = MEMORY[0x1E69E7CC0];
LABEL_84:

  if (v85 < 0 || (v85 & 0x4000000000000000) != 0)
  {
    v78 = sub_190D581C0();
    if (!v78)
    {
      goto LABEL_123;
    }
  }

  else
  {
    v78 = *(v85 + 16);
    if (!v78)
    {
      goto LABEL_123;
    }
  }

  v178 = v79;
  v39 = &v178;
  sub_19082E1D8(0, v78 & ~(v78 >> 63), 0);
  if (v78 < 0)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v86 = 0;
  v79 = v178;
  v168 = v78;
  v169 = v85 & 0xC000000000000001;
  v163 = v85 + 32;
  j = v85;
  v87 = 1;
  while (1)
  {
    v88 = v87;
    if (v169)
    {
      v89 = MEMORY[0x193AF3B90](v86, v85);
    }

    else
    {
      if (v86 >= *(v85 + 16))
      {
        goto LABEL_119;
      }

      v89 = *(v163 + 8 * v86);
    }

    v1 = v89;
    v170 = v79;
    v90 = [v174 shouldFilterOutgoingMessages];
    *&v171 = v88;
    if (v90)
    {
      v91 = [v1 handles];
      sub_1902188FC(0, &qword_1EAD44E70, 0x1E69A5B90);
      v78 = sub_190D57180();

      v92 = v78 >> 62 ? sub_190D581C0() : *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v92)
      {
        v175[0] = MEMORY[0x1E69E7CC0];
        sub_19082DBB4(0, v92 & ~(v92 >> 63), 0);
        if (v92 < 0)
        {
          goto LABEL_120;
        }

        v166 = v1;
        v93 = 0;
        v94 = v175[0];
        do
        {
          if ((v78 & 0xC000000000000001) != 0)
          {
            v95 = MEMORY[0x193AF3B90](v93, v78);
          }

          else
          {
            v95 = *(v78 + 8 * v93 + 32);
          }

          v96 = v95;
          v97 = [v95 ID];
          v98 = sub_190D56F10();
          v100 = v99;

          v175[0] = v94;
          v102 = *(v94 + 16);
          v101 = *(v94 + 24);
          if (v102 >= v101 >> 1)
          {
            sub_19082DBB4((v101 > 1), v102 + 1, 1);
            v94 = v175[0];
          }

          ++v93;
          *(v94 + 16) = v102 + 1;
          v103 = v94 + 16 * v102;
          *(v103 + 32) = v98;
          *(v103 + 40) = v100;
        }

        while (v92 != v93);

        v1 = v166;
      }

      else
      {
      }

      v105 = sub_190D57160();

      v106 = [v174 allowsSendingToHandleIDs_];

      v104 = v106 ^ 1;
      v85 = j;
    }

    else
    {
      v104 = 0;
    }

    v176 = 0;
    v107 = v1;
    v108 = [v107 uniqueIdentifier];
    v109 = sub_190D56F10();
    v110 = v1;
    v112 = v111;

    strcpy(v175, "Conversation:");
    HIWORD(v175[1]) = -4864;
    MEMORY[0x193AF28B0](v109, v112);

    v113 = v175[0];
    v1 = v175[1];
    v78 = [v107 unreadCount];

    v177[0] = v175[0];
    *(v177 + 3) = *(v175 + 3);
    v114 = v176;
    v79 = v170;
    v178 = v170;
    v2 = *(v170 + 16);
    v115 = *(v170 + 24);
    if (v2 >= v115 >> 1)
    {
      sub_19082E1D8((v115 > 1), v2 + 1, 1);
      v79 = v178;
    }

    *(v79 + 16) = v2 + 1;
    v116 = v79 + 80 * v2;
    *(v116 + 32) = v113;
    *(v116 + 40) = v1;
    *(v116 + 48) = v78;
    *(v116 + 56) = v104;
    v117 = *(v177 + 3);
    *(v116 + 57) = v177[0];
    *(v116 + 60) = v117;
    *(v116 + 64) = v110;
    *(v116 + 72) = 0u;
    *(v116 + 88) = 0u;
    *(v116 + 104) = v114;
    if (v171 == v168)
    {
      break;
    }

    v86 = v171;
    v87 = v171 + 1;
    if (__OFADD__(v171, 1))
    {
      goto LABEL_118;
    }
  }

LABEL_123:

  v118 = v167;
  sub_190C3C29C(v79);
  swift_getKeyPath();
  i = OBJC_IVAR____TtC7ChatKit25ClarityUIConversationList___observationRegistrar;
  v175[0] = v118;
  v1 = sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  v119 = *MEMORY[0x1E6994608];
  v120 = sub_190D56F10();
  v122 = v121;
  v170 = v119;
  if (v120 == sub_190D56F10() && v122 == v123)
  {
  }

  else
  {
    v126 = sub_190D58760();

    if ((v126 & 1) == 0)
    {
      v2 = MEMORY[0x1E69E7CC0];
      goto LABEL_151;
    }
  }

  v127 = CKMessageUnknownFilteringEnabled(v124, v125);
  v2 = MEMORY[0x1E69E7CC0];
  if (v127)
  {
    v128 = [v165 conversationsForFilterMode_];
    v39 = sub_190D57180();

    if (!(v39 >> 62))
    {
      v129 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v129)
      {
LABEL_130:
        v178 = v2;
        sub_19082E1D8(0, v129 & ~(v129 >> 63), 0);
        if (v129 < 0)
        {
          __break(1u);
          return;
        }

        v130 = 0;
        v2 = v178;
        v131 = v39;
        v168 = v129 - 1;
        v169 = v39 & 0xC000000000000001;
        v165 = v1;
        v166 = i;
        for (j = v39; ; v131 = j)
        {
          *&v171 = v130;
          if (v169)
          {
            v132 = MEMORY[0x193AF3B90]();
          }

          else
          {
            v132 = *(v131 + 8 * v130 + 32);
          }

          v133 = v132;
          swift_getKeyPath();
          v175[0] = v167;
          sub_190D51C20();

          v134 = sub_190D56F10();
          v136 = v135;
          if (v134 == sub_190D56F10() && v136 == v137)
          {
            v139 = 0;
          }

          else
          {
            v139 = sub_190D58760() ^ 1;
          }

          v176 = 0;
          v140 = v133;
          v141 = [v140 uniqueIdentifier];
          v142 = sub_190D56F10();
          v144 = v143;

          strcpy(v175, "Conversation:");
          HIWORD(v175[1]) = -4864;
          MEMORY[0x193AF28B0](v142, v144);

          v146 = v175[0];
          v145 = v175[1];
          v147 = [v140 unreadCount];

          v177[0] = v175[0];
          *(v177 + 3) = *(v175 + 3);
          v148 = v176;
          v178 = v2;
          v150 = *(v2 + 16);
          v149 = *(v2 + 24);
          if (v150 >= v149 >> 1)
          {
            sub_19082E1D8((v149 > 1), v150 + 1, 1);
            v2 = v178;
          }

          *(v2 + 16) = v150 + 1;
          v151 = v2 + 80 * v150;
          *(v151 + 32) = v146;
          *(v151 + 40) = v145;
          *(v151 + 48) = v147;
          *(v151 + 56) = v139 & 1;
          v152 = *(v177 + 3);
          *(v151 + 57) = v177[0];
          *(v151 + 60) = v152;
          *(v151 + 64) = v133;
          *(v151 + 72) = 0u;
          *(v151 + 88) = 0u;
          *(v151 + 104) = v148;
          if (v168 == v171)
          {
            break;
          }

          v130 = v171 + 1;
        }
      }

LABEL_150:

      goto LABEL_151;
    }

LABEL_149:
    v129 = sub_190D581C0();
    if (v129)
    {
      goto LABEL_130;
    }

    goto LABEL_150;
  }

LABEL_151:
  v153 = v167;
  sub_190C3C83C(v2);
  swift_getKeyPath();
  v175[0] = v153;
  sub_190D51C20();

  if ([*(v153 + 104) isLessRestrictiveThanCommunicationLimit_])
  {
    swift_getKeyPath();
    v175[0] = v153;
    sub_190D51C20();

    if (*(v153 + 48))
    {
      sub_190D50920();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020, &qword_190DD6530);
      sub_190D57330();
    }

    v154 = sub_190D572E0();
    v155 = v162;
    (*(*(v154 - 8) + 56))(v162, 1, 1, v154);
    sub_190D572A0();
    v156 = v167;
    sub_190D50920();
    v157 = sub_190D57290();
    v158 = swift_allocObject();
    v159 = MEMORY[0x1E69E85E0];
    v158[2] = v157;
    v158[3] = v159;
    v158[4] = v156;
    v160 = sub_1908590EC(0, 0, v155, &unk_190DFE4D0, v158);
    sub_190C3CAE0(v160);
  }

  else
  {
    sub_190C3C56C(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_190C40444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  v4[3] = swift_task_alloc();
  v4[4] = sub_190D572A0();
  v4[5] = sub_190D57290();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_190C40524;

  return sub_190C48DC8();
}

uint64_t sub_190C40524(uint64_t a1)
{
  *(*v1 + 56) = a1;

  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190C40668, v3, v2);
}

uint64_t sub_190C40668()
{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];

  v4 = sub_190D572E0();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_190D50920();
  v5 = sub_190D57290();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  v6[5] = v1;
  sub_1908590EC(0, 0, v2, &unk_190DFE4E8, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_190C40784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_190D572A0();
  v5[4] = sub_190D57290();
  v7 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190C4081C, v7, v6);
}

uint64_t sub_190C4081C()
{

  sub_190D57360();
  v1 = sub_190D52690();
  v2.n128_f64[0] = sub_190C3C56C(v1);
  v3 = *(v0 + 8);

  return v3(v2);
}

void sub_190C408B0(void *a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  v53 = a4;
  v56 = a3;
  v6 = a1;
  v7 = [a1 emailAddresses];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A3F0, &qword_190E06D90);
  v9 = sub_190D57180();

  if (v9 >> 62)
  {
    v10 = sub_190D581C0();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = &selRef_performReveal_;
  if (v10 || ((v12 = [v6 phoneNumbers], v13 = sub_190D57180(), v12, v13 >> 62) ? (v14 = sub_190D581C0()) : (v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v14))
  {
    v15 = [v6 phoneNumbers];
    v54 = v8;
    v16 = sub_190D57180();

    if (v16 >> 62)
    {
      v17 = sub_190D581C0();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = MEMORY[0x1E69E7CC0];
    v19 = &selRef_updateCommSafety_forChatItems_;
    if (v17)
    {
      v57[0] = MEMORY[0x1E69E7CC0];
      v20 = v57;
      sub_190D58390();
      if (v17 < 0)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v21 = 0;
      v11 = v16 & 0xC000000000000001;
      do
      {
        if (v11)
        {
          v22 = MEMORY[0x193AF3B90](v21, v16);
        }

        else
        {
          v22 = *(v16 + 8 * v21 + 32);
        }

        v23 = v22;
        ++v21;
        v8 = [v22 value];

        sub_190D58360();
        sub_190D583B0();
        sub_190D583C0();
        sub_190D58370();
      }

      while (v17 != v21);

      v16 = v57[0];
      v18 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v16 = MEMORY[0x1E69E7CC0];
    }

    v55 = v6;
    v52 = a5;
    if (v16 >> 62)
    {
      v24 = sub_190D581C0();
      if (v24)
      {
LABEL_20:
        v57[0] = v18;
        v20 = v57;
        sub_19082DBB4(0, v24 & ~(v24 >> 63), 0);
        if ((v24 & 0x8000000000000000) == 0)
        {
          v25 = 0;
          a5 = v57[0];
          do
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v26 = MEMORY[0x193AF3B90](v25, v16);
            }

            else
            {
              v26 = *(v16 + 8 * v25 + 32);
            }

            v27 = v26;
            v28 = [v26 stringValue];
            v29 = sub_190D56F10();
            v8 = v30;

            v57[0] = a5;
            v6 = *(a5 + 2);
            v31 = *(a5 + 3);
            if (v6 >= v31 >> 1)
            {
              sub_19082DBB4((v31 > 1), v6 + 1, 1);
              a5 = v57[0];
            }

            ++v25;
            *(a5 + 2) = v6 + 1;
            v32 = &a5[16 * v6];
            *(v32 + 4) = v29;
            *(v32 + 5) = v8;
            v19 = &selRef_updateCommSafety_forChatItems_;
          }

          while (v24 != v25);

          v18 = MEMORY[0x1E69E7CC0];
LABEL_33:
          v33 = [v55 emailAddresses];
          v11 = sub_190D57180();

          if (v11 >> 62)
          {
            v16 = sub_190D581C0();
            if (v16)
            {
LABEL_35:
              v57[0] = v18;
              v20 = v57;
              sub_190D58390();
              if ((v16 & 0x8000000000000000) == 0)
              {
                v34 = 0;
                do
                {
                  if ((v11 & 0xC000000000000001) != 0)
                  {
                    v35 = MEMORY[0x193AF3B90](v34, v11);
                  }

                  else
                  {
                    v35 = *(v11 + 8 * v34 + 32);
                  }

                  v36 = v35;
                  ++v34;
                  v8 = [v35 v19[364]];

                  sub_190D58360();
                  sub_190D583B0();
                  sub_190D583C0();
                  sub_190D58370();
                }

                while (v16 != v34);

                v37 = v57[0];
                goto LABEL_44;
              }

LABEL_63:
              __break(1u);
LABEL_64:
              a5 = sub_190837224(0, *(a5 + 2) + 1, 1, a5);
              *v53 = a5;
LABEL_56:
              v49 = *(a5 + 2);
              v48 = *(a5 + 3);
              if (v49 >= v48 >> 1)
              {
                a5 = sub_190837224((v48 > 1), v49 + 1, 1, a5);
                *v53 = a5;
              }

              *(a5 + 2) = v49 + 1;
              v50 = &a5[40 * v49];
              *(v50 + 4) = v6;
              *(v50 + 5) = v11;
              *(v50 + 6) = v8;
              *(v50 + 7) = v16;
              *(v50 + 8) = v20;
              return;
            }
          }

          else
          {
            v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v16)
            {
              goto LABEL_35;
            }
          }

          v37 = MEMORY[0x1E69E7CC0];
LABEL_44:
          v38 = sub_1908A25BC(v37);

          v57[0] = a5;
          v6 = v57;
          sub_190CA9D08(v38);
          v11 = 0;
          v20 = v57[0];
          v40 = (v57[0] + 40);
          a5 = -*(v57[0] + 16);
          v16 = -1;
          while (&a5[v16] != -1)
          {
            if (++v16 >= v20[2])
            {
              __break(1u);
              goto LABEL_61;
            }

            v41 = v40 + 2;
            v42 = *v40;
            v57[0] = *(v40 - 1);
            v57[1] = v42;
            MEMORY[0x1EEE9AC00](v39);
            v51[2] = v57;
            sub_190D52690();
            v8 = sub_190CA8558(sub_1909F5BC8, v51, v56);

            v40 = v41;
            if (v8)
            {

              return;
            }
          }

          v43 = v55;
          v44 = sub_19091E3F0(v55);
          if (v45)
          {
            v8 = v44;
          }

          else
          {
            v8 = 0;
          }

          if (v45)
          {
            v16 = v45;
          }

          else
          {
            v16 = 0xE000000000000000;
          }

          v46 = v53;
          a5 = *v53;
          v11 = v52;
          v6 = v43;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v46 = a5;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_56;
          }

          goto LABEL_64;
        }

LABEL_62:
        __break(1u);
        goto LABEL_63;
      }
    }

    else
    {
      v24 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        goto LABEL_20;
      }
    }

    a5 = MEMORY[0x1E69E7CC0];
    goto LABEL_33;
  }
}

void sub_190C40ECC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_190C40F28(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(a1 + 72))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v20[0] = v3;
    v20[1] = v7;
    v20[2] = v6;
    v20[3] = v4;
    v20[4] = v5;
    v8 = v3;
    v9 = v7;
    sub_190D52690();
    sub_190D52690();
    sub_190C4115C(v20);
    if (!v10 || (v11 = v10, v12 = [*(v1 + 80) conversationForExistingChat_], v11, !v12))
    {
      if (qword_1EAD51CB8 != -1)
      {
        swift_once();
      }

      v13 = sub_190D53040();
      __swift_project_value_buffer(v13, qword_1EAD9E058);
      sub_1909B8804(a1, v19);
      v14 = sub_190D53020();
      v15 = sub_190D576A0();
      sub_1909B8860(a1);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v19[0] = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_19021D9F8(*a1, *(a1 + 8), v19);
        _os_log_impl(&dword_19020E000, v14, v15, "Unable to resolve conversation for conversation: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x193AF7A40](v17, -1, -1);
        MEMORY[0x193AF7A40](v16, -1, -1);
      }

      v12 = [objc_opt_self() newPendingConversation];
    }

    return v12;
  }

  else
  {

    return v3;
  }
}

void sub_190C4115C(id *a1)
{
  v2 = [objc_opt_self() sharedRegistry];
  v3 = [*a1 identifier];
  if (!v3)
  {
    sub_190D56F10();
    v3 = sub_190D56ED0();
  }

  v4 = [v2 existingChatWithPersonID_];

  if (v4)
  {
    if ([v4 messageCount] > 0)
    {
      return;
    }
  }

  sub_190C4125C(a1);
}

void sub_190C4125C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = *(a1 + 32);
  v96 = v4;
  v5 = *(v4 + 16);
  v87 = &v87 - v6;
  v88 = v4;
  v89 = a1;
  if (!v5)
  {
    v92 = MEMORY[0x1E69E7CC8];
LABEL_24:
    v38 = swift_allocObject();
    v7 = v90;
    *(v38 + 16) = v92;
    *(v38 + 24) = v7;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_190C476D8;
    *(v39 + 24) = v38;
    *&v95 = v88;
    sub_190D50920();
    sub_190D50920();
    sub_190D52690();
    sub_190D50920();
    sub_19022FD14(&v96, &v94, &unk_1EAD57920, &unk_190DE8FC0);
    sub_190C485A0(&v95, sub_190C476E0, v39);

    if (*(v95 + 16))
    {
      v5 = *(v95 + 40);
      v91.n128_u64[0] = *(v95 + 32);
      v40 = qword_1EAD51CB8;
      sub_190D52690();
      if (v40 != -1)
      {
        goto LABEL_50;
      }

      goto LABEL_26;
    }

    if (qword_1EAD51CB8 != -1)
    {
      swift_once();
    }

    v48 = sub_190D53040();
    __swift_project_value_buffer(v48, qword_1EAD9E058);
    v49 = *v89;
    v50 = *(v89 + 8);
    v95 = *(v89 + 16);
    sub_19022FD14(&v96, &v94, &unk_1EAD57920, &unk_190DE8FC0);
    v51 = v49;
    v52 = v50;
    sub_190869370(&v95, &v94);
    v53 = sub_190D53020();
    v54 = sub_190D576A0();

    sub_190C4871C(&v95);
    sub_19022EEA4(&v96, &unk_1EAD57920, &unk_190DE8FC0);
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v94 = v56;
      *v55 = 136315138;
      v57 = [v51 identifier];
      v58 = sub_190D56F10();
      v60 = v59;

      v61 = sub_19021D9F8(v58, v60, &v94);

      *(v55 + 4) = v61;
      _os_log_impl(&dword_19020E000, v53, v54, "Unable to get best handle for contact: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x193AF7A40](v56, -1, -1);
      MEMORY[0x193AF7A40](v55, -1, -1);
    }

    v7 = v90;
LABEL_46:
    v75 = sub_190D572E0();
    v76 = v87;
    (*(*(v75 - 8) + 56))(v87, 1, 1, v75);
    v77 = v89;
    v78 = *v89;
    v79 = *(v89 + 8);
    v94 = *(v89 + 16);
    sub_190D572A0();
    sub_190D50920();
    sub_19022FD14(&v96, v93, &unk_1EAD57920, &unk_190DE8FC0);
    v80 = v78;
    v81 = v79;
    sub_190869370(&v94, v93);
    v82 = sub_190D57290();
    v83 = swift_allocObject();
    v84 = MEMORY[0x1E69E85E0];
    *(v83 + 16) = v82;
    *(v83 + 24) = v84;
    *(v83 + 32) = v7;
    v85 = *(v77 + 16);
    *(v83 + 40) = *v77;
    *(v83 + 56) = v85;
    v86 = v92;
    *(v83 + 72) = *(v77 + 32);
    *(v83 + 80) = v86;
    sub_190857E08(0, 0, v76, &unk_190DFE490, v83);

    return;
  }

  v92 = MEMORY[0x1E69E7CC8];
  v7 = (v4 + 40);
  v3.n128_u64[0] = 136315138;
  v91 = v3;
  while (1)
  {
    v10 = *(v7 - 1);
    v9 = *v7;
    sub_190D52690();
    v11 = sub_190D56ED0();
    v12 = IMChatCanonicalIDSIDsForAddress();

    if (!v12)
    {
      if (qword_1EAD51CB8 != -1)
      {
        swift_once();
      }

      v26 = sub_190D53040();
      __swift_project_value_buffer(v26, qword_1EAD9E058);
      sub_190D52690();
      v27 = sub_190D53020();
      v28 = sub_190D576A0();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *&v95 = v30;
        *v29 = v91.n128_u32[0];
        v31 = sub_19021D9F8(v10, v9, &v95);

        *(v29 + 4) = v31;
        _os_log_impl(&dword_19020E000, v27, v28, "Unexpected missing canonical handle for handle: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x193AF7A40](v30, -1, -1);
        MEMORY[0x193AF7A40](v29, -1, -1);
      }

      else
      {
      }

      goto LABEL_4;
    }

    v13 = sub_190D56F10();
    v15 = v14;

    v16 = v92;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v95 = v16;
    v19 = sub_19022DCEC(v10, v9);
    v20 = *(v16 + 16);
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (*(v16 + 24) >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v18)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_190B68144();
        if (v23)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_190B63054(v22, isUniquelyReferenced_nonNull_native);
      v24 = sub_19022DCEC(v10, v9);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_52;
      }

      v19 = v24;
      if (v23)
      {
LABEL_3:

        v92 = v95;
        v8 = (*(v95 + 56) + 16 * v19);
        *v8 = v13;
        v8[1] = v15;

        goto LABEL_4;
      }
    }

    v32 = v95;
    *(v95 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v33 = (v32[6] + 16 * v19);
    *v33 = v10;
    v33[1] = v9;
    v34 = (v32[7] + 16 * v19);
    *v34 = v13;
    v34[1] = v15;
    v35 = v32[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_49;
    }

    v92 = v32;
    v32[2] = v37;
LABEL_4:
    v7 += 2;
    if (!--v5)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  swift_once();
LABEL_26:
  v41 = sub_190D53040();
  v42 = __swift_project_value_buffer(v41, qword_1EAD9E058);
  sub_190D52690();
  v88 = v42;
  v43 = sub_190D53020();
  v44 = sub_190D576C0();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v95 = v46;
    *v45 = 136315138;
    v47 = v91.n128_u64[0];
    *(v45 + 4) = sub_19021D9F8(v91.n128_i64[0], v5, &v95);
    _os_log_impl(&dword_19020E000, v43, v44, "Best handle for contact: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x193AF7A40](v46, -1, -1);
    MEMORY[0x193AF7A40](v45, -1, -1);
  }

  else
  {

    v47 = v91.n128_u64[0];
  }

  v62 = sub_190C41CBC(v47, v5, v92, v7);
  if (v62)
  {
    v63 = v62;
    goto LABEL_38;
  }

  v64 = [objc_opt_self() iMessageService];
  if (v64)
  {
    v63 = v64;
    v62 = 0;
LABEL_38:
    v65 = v62;
  }

  else
  {
    v63 = 0;
  }

  v66 = IMPreferredAccountForService();

  if (v66)
  {

    v67 = sub_190D56ED0();
    v68 = [v66 imHandleWithID_];

    if (v68)
    {

      v69 = [objc_opt_self() sharedRegistry];
      [v69 chatWithHandle_];
    }

    else
    {
      sub_190D52690();
      v70 = sub_190D53020();
      v71 = sub_190D576A0();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *&v95 = v73;
        *v72 = 136315138;
        v74 = sub_19021D9F8(v91.n128_i64[0], v5, &v95);

        *(v72 + 4) = v74;
        _os_log_impl(&dword_19020E000, v70, v71, "Unable to create IMHandle for best handle: %s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x193AF7A40](v73, -1, -1);
        MEMORY[0x193AF7A40](v72, -1, -1);
      }

      else
      {
      }
    }

    goto LABEL_46;
  }

  __break(1u);
LABEL_52:
  sub_190D587C0();
  __break(1u);

  __break(1u);
}

id sub_190C41CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = sub_19022DCEC(a1, a2);
  if (v7)
  {
    v8 = (*(a3 + 56) + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    swift_beginAccess();
    if (*(*(a4 + 64) + 16))
    {
      sub_190D52690();
      sub_190D52690();
      sub_19022DCEC(v10, v9);
      v12 = v11;

      if (v12)
      {
        sub_190D52690();

        v13 = objc_opt_self();
        v14 = sub_190D56ED0();

        v15 = [v13 serviceWithInternalName_];

        return v15;
      }
    }
  }

  return 0;
}

uint64_t sub_190C41DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_190D572A0();
  v6[5] = sub_190D57290();
  v8 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190C41E80, v8, v7);
}

uint64_t sub_190C41E80()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_190C41EF8(v2, v1);
  v3 = v0[1];

  return v3();
}

void sub_190C41EF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v51 = v3;
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v2;
    v7 = v3 + 32;
    swift_beginAccess();
    swift_beginAccess();
    v8 = 0;
    v46 = v7;
    v47 = v2;
    v43 = v4;
    v44 = a2;
    do
    {
      if (*(a2 + 16))
      {
        v9 = (v7 + 16 * v8);
        v11 = *v9;
        v10 = v9[1];
        sub_190D52690();
        v12 = sub_19022DCEC(v11, v10);
        if (v13)
        {
          v14 = (*(a2 + 56) + 16 * v12);
          v15 = *v14;
          v16 = v14[1];
          v17 = *(v5[8] + 16);
          sub_190D52690();
          if (v17)
          {
            sub_190D52690();
            sub_19022DCEC(v15, v16);
            if (v18)
            {

LABEL_28:
              v7 = v46;
              goto LABEL_4;
            }
          }

          v19 = v5[9];
          if (*(v19 + 16))
          {
            sub_190D58870();
            sub_190D52690();
            sub_190D56FC0();
            v20 = sub_190D588C0();
            v21 = -1 << *(v19 + 32);
            v22 = v20 & ~v21;
            if ((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
            {
              v23 = ~v21;
              while (1)
              {
                v24 = (*(v19 + 48) + 16 * v22);
                v25 = *v24 == v15 && v24[1] == v16;
                if (v25 || (sub_190D58760() & 1) != 0)
                {
                  break;
                }

                v22 = (v22 + 1) & v23;
                if (((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
                {
                  goto LABEL_20;
                }
              }

              goto LABEL_27;
            }

LABEL_20:
          }

          if (qword_1EAD51CB8 != -1)
          {
            swift_once();
          }

          v26 = sub_190D53040();
          __swift_project_value_buffer(v26, qword_1EAD9E058);
          sub_190D52690();
          v27 = sub_190D53020();
          v28 = sub_190D576C0();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            aBlock[0] = v30;
            *v29 = 136315138;
            *(v29 + 4) = sub_19021D9F8(v11, v10, aBlock);
            _os_log_impl(&dword_19020E000, v27, v28, "Refreshing availability for handle: %s", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v30);
            MEMORY[0x193AF7A40](v30, -1, -1);
            v31 = v29;
            v5 = v47;
            MEMORY[0x193AF7A40](v31, -1, -1);
          }

          swift_beginAccess();
          sub_190D52690();
          sub_1908AA174(&v48, v15, v16);
          swift_endAccess();

          v45 = v5[7];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80, &unk_190DD64E0);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_190DD1D90;
          *(v32 + 32) = v15;
          *(v32 + 40) = v16;
          sub_190D52690();
          v33 = sub_190D57160();

          v34 = [objc_allocWithZone(MEMORY[0x1E69A8240]) init];
          v36 = *a1;
          v35 = *(a1 + 8);
          v50 = *(a1 + 16);
          v37 = swift_allocObject();
          v38 = *(a1 + 16);
          *(v37 + 56) = *a1;
          *(v37 + 16) = v11;
          *(v37 + 24) = v10;
          *(v37 + 32) = v47;
          *(v37 + 40) = v15;
          *(v37 + 48) = v16;
          *(v37 + 72) = v38;
          *(v37 + 88) = *(a1 + 32);
          aBlock[4] = sub_190C476A0;
          aBlock[5] = v37;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_190C428BC;
          aBlock[3] = &block_descriptor_141;
          v39 = _Block_copy(aBlock);
          sub_190D50920();
          v40 = v36;
          v41 = v35;
          sub_190869370(&v50, &v48);
          sub_19022FD14(&v51, &v48, &unk_1EAD57920, &unk_190DE8FC0);

          [v45 refreshAvailabilityForRecipients:v33 context:v34 resultHandler:v39];
          _Block_release(v39);

          v5 = v47;
LABEL_27:
          v4 = v43;
          a2 = v44;
          goto LABEL_28;
        }
      }

LABEL_4:
      ++v8;
    }

    while (v8 != v4);
  }
}

void sub_190C4241C(uint64_t a1, unint64_t a2, id a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id *a11)
{
  if ([a3 isFinal])
  {
    v42 = a6;
    v16 = a9;
    v17 = a10;
    if (a5)
    {
      if (qword_1EAD51CB8 != -1)
      {
        swift_once();
      }

      v18 = sub_190D53040();
      __swift_project_value_buffer(v18, qword_1EAD9E058);
      sub_190D52690();
      v19 = sub_190D53020();
      v20 = sub_190D576A0();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = a1;
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v43[0] = v23;
        *v22 = 136315394;
        *(v22 + 4) = sub_19021D9F8(v42, a7, v43);
        *(v22 + 12) = 2048;
        *(v22 + 14) = a5;
        _os_log_impl(&dword_19020E000, v19, v20, "Error refreshing availability for handle %s: %ld", v22, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v23);
        v24 = v23;
        v16 = a9;
        MEMORY[0x193AF7A40](v24, -1, -1);
        v25 = v22;
        a1 = v21;
        v17 = a10;
        MEMORY[0x193AF7A40](v25, -1, -1);
      }
    }

    if (a2)
    {
      if (qword_1EAD51CB8 != -1)
      {
        swift_once();
      }

      v26 = sub_190D53040();
      __swift_project_value_buffer(v26, qword_1EAD9E058);
      sub_190D52690();
      sub_190D52690();
      v27 = sub_190D53020();
      v28 = sub_190D576C0();

      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_18;
      }

      v29 = swift_slowAlloc();
      v30 = v16;
      v31 = swift_slowAlloc();
      v43[0] = v31;
      *v29 = 136315394;
      *(v29 + 4) = sub_19021D9F8(v42, a7, v43);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_19021D9F8(a1, a2, v43);
      _os_log_impl(&dword_19020E000, v27, v28, "Best service for handle %s: %s", v29, 0x16u);
      swift_arrayDestroy();
      v32 = v31;
      v16 = v30;
      MEMORY[0x193AF7A40](v32, -1, -1);
      v33 = v29;
    }

    else
    {
      if (qword_1EAD51CB8 != -1)
      {
        swift_once();
      }

      v34 = sub_190D53040();
      __swift_project_value_buffer(v34, qword_1EAD9E058);
      sub_190D52690();
      v27 = sub_190D53020();
      v35 = sub_190D576A0();

      if (!os_log_type_enabled(v27, v35))
      {
        goto LABEL_18;
      }

      v41 = v16;
      v36 = swift_slowAlloc();
      v37 = a1;
      v38 = swift_slowAlloc();
      v43[0] = v38;
      *v36 = 136315138;
      *(v36 + 4) = sub_19021D9F8(v42, a7, v43);
      _os_log_impl(&dword_19020E000, v27, v35, "No best service found for handle %s.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      v39 = v38;
      a1 = v37;
      MEMORY[0x193AF7A40](v39, -1, -1);
      v33 = v36;
      v16 = v41;
    }

    MEMORY[0x193AF7A40](v33, -1, -1);
LABEL_18:

    swift_beginAccess();
    sub_1908AE240(v16, v17);
    swift_endAccess();

    swift_beginAccess();
    sub_190D52690();
    sub_190D52690();
    sub_190C3B8F8(a1, a2, v16, v17);
    swift_endAccess();
    sub_190C4115C(a11);
  }
}

double sub_190C428BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  if (a2)
  {
    v9 = sub_190D56F10();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_190D50920();
  v12 = a3;
  v8(v9, v11, v12, a4, a5);

  return result;
}

id sub_190C42970()
{
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  v1 = *(v0 + 88);

  return v1;
}

id sub_190C42A20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  v4 = *(v3 + 88);
  *a2 = v4;

  return v4;
}

uint64_t sub_190C42AD8()
{
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  return swift_unknownObjectRetain();
}

uint64_t sub_190C42B7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  *a2 = *(v3 + 96);
  return swift_unknownObjectRetain();
}

id sub_190C42C28()
{
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  v1 = *(v0 + 104);

  return v1;
}

id sub_190C42CD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  v4 = *(v3 + 104);
  *a2 = v4;

  return v4;
}

uint64_t sub_190C42DBC()
{
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  return swift_unknownObjectRetain();
}

uint64_t sub_190C42E60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  *a2 = *(v3 + 112);
  return swift_unknownObjectRetain();
}

double sub_190C42F0C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C10();

  return result;
}

double sub_190C42FC8()
{
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  sub_190D50920();
  return result;
}

double sub_190C4306C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
  sub_190D51C20();

  *a2 = *(v3 + 120);
  sub_190D50920();
  return result;
}

double sub_190C43118(uint64_t a1)
{
  if (!*(v1 + 120))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C436D0(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList, &unk_190DFE318);
    sub_190D51C10();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020, &qword_190DD6530);
  v3 = sub_190D57310();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 120) = a1;

  return result;
}

id *sub_190C432B4()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC7ChatKit25ClarityUIConversationList___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_190C43384()
{
  sub_190C432B4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClarityUIConversationList(uint64_t a1)
{
  result = qword_1EAD60BD0;
  if (!qword_1EAD60BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190C43430(uint64_t a1, __n128 a2)
{
  result = sub_190D51C60();
  if (v3 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_190C43510(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA0;

  return sub_190C3DCA8(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_44()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_190C43658()
{
  *(*(v0 + 16) + 112) = *(v0 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

void sub_190C43694()
{
  *(*(v0 + 16) + 96) = *(v0 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

uint64_t sub_190C436D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_190C43718(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA0;

  return sub_190C3ECB0(a1, v4, v5, v6);
}

void sub_190C437E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 104);
  *(v1 + 104) = v2;
  v4 = v2;
}

void sub_190C4381C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
  v4 = v2;
}

void sub_190C43854(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1909E3A5C(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_190C438C0(v4);
  *a1 = v2;
}

void sub_190C438C0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_190D58710();
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
        v5 = sub_190D571D0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_190C44508(v7, v8, a1, v4);
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
    sub_190C439B8(0, v2, 1, a1);
  }
}

void sub_190C439B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v121 = sub_190D50EF0();
  MEMORY[0x1EEE9AC00](v121);
  v120 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a2;
  if (a3 == a2)
  {
    return;
  }

  v119 = (v8 + 8);
  v126 = *a4;
  v10 = (v126 + 80 * a3);
  v11 = a1 - a3 + 1;
  v124 = *MEMORY[0x1E695C410];
  v125 = xmmword_190DDA780;
LABEL_5:
  v116 = v10;
  v117 = a3;
  v12 = v11;
  v115 = v11;
  while (1)
  {
    v137[0] = *v10;
    v13 = v10[1];
    v14 = v10[2];
    v15 = v10[3];
    *&v138[9] = *(v10 + 57);
    v137[2] = v14;
    *v138 = v15;
    v137[1] = v13;
    v17 = *(v10 - 3);
    v16 = *(v10 - 2);
    v18 = *(v10 - 4);
    *&v141[9] = *(v10 - 23);
    v140 = v17;
    *v141 = v16;
    v139[1] = v18;
    v139[0] = *(v10 - 5);
    v20 = *(&v14 + 1);
    v19 = v14;
    v21 = *&v138[8];
    v22 = *v138;
    v23 = *&v138[16];
    v142 = v12;
    if (v138[24])
    {
      sub_1909B8804(v137, &v133);
      sub_1909B8804(v139, &v133);
      sub_19091E678(v19, v20, v22, v21, v23, 1);

      v24 = v21;
      goto LABEL_32;
    }

    sub_1909B8804(v137, &v133);
    sub_1909B8804(v139, &v133);
    v129 = v21;
    sub_19091E678(v19, v20, v22, v21, v23, 0);
    v25 = [v19 recipient];
    if (v25)
    {
      v26 = v25;
      v127 = v19;
      v128 = v23;
      v27 = v22;
      v28 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
      v29 = swift_allocObject();
      *(v29 + 16) = v125;
      v30 = objc_opt_self();
      v31 = [v30 descriptorForUsedKeys];
      if (!v31)
      {
        goto LABEL_66;
      }

      v32 = v124;
      *(v29 + 32) = v31;
      *(v29 + 40) = v32;
      v33 = objc_opt_self();
      v34 = v32;
      v123 = v33;
      *(v29 + 48) = [v33 descriptorForRequiredKeysForStyle_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20, &unk_190DDBB80);
      v35 = sub_190D57160();

      v36 = [v26 cnContactWithKeys_];

      v20 = v28;
      v22 = v27;
      v19 = v127;
      v23 = v128;
      if (v36)
      {
        if (![v36 contactType])
        {
          v47 = [v30 componentsForContact_];
          if (!v47)
          {
            goto LABEL_69;
          }

          v48 = v47;
          v49 = [objc_opt_self() localizedStringFromPersonNameComponents:v47 style:1 options:0];

          v50 = sub_190D56F10();
          v52 = v51;

          v122 = v50;
          *&v133 = v50;
          *(&v133 + 1) = v52;
          v130 = v52;
          v53 = v120;
          sub_190D50ED0();
          sub_19081E484();
          v54 = sub_190D580B0();
          v56 = v55;
          (*v119)(v53, v121);

          v57 = HIBYTE(v56) & 0xF;
          if ((v56 & 0x2000000000000000) == 0)
          {
            v57 = v54 & 0xFFFFFFFFFFFFLL;
          }

          if (v57)
          {

            sub_19091E6E0(v19, v20, v22, v129, v128, 0);
            v22 = v122;
            goto LABEL_23;
          }

          v23 = v128;
        }

        v37 = [v123 stringFromContact:v36 style:0];
        if (v37)
        {
          v38 = v37;
          v39 = sub_190D56F10();
          v41 = v40;

          v123 = v39;
          *&v133 = v39;
          *(&v133 + 1) = v41;
          v130 = v41;
          v42 = v120;
          sub_190D50ED0();
          sub_19081E484();
          v43 = sub_190D580B0();
          v45 = v44;
          (*v119)(v42, v121);

          if ((v45 & 0x2000000000000000) != 0)
          {
            v46 = HIBYTE(v45) & 0xF;
          }

          else
          {
            v46 = v43 & 0xFFFFFFFFFFFFLL;
          }

          if (v46)
          {
            sub_19091E6E0(v19, v20, v22, v129, v128, 0);
            v22 = v123;
LABEL_23:
            v12 = v142;
            v24 = v130;
            goto LABEL_32;
          }

          v23 = v128;
        }

        else
        {
        }
      }
    }

    if ([v19 hasDisplayName])
    {
      v58 = [v19 displayName];
      if (!v58)
      {
        goto LABEL_30;
      }
    }

    else
    {
      [v19 fetchSuggestedNameIfNecessary];
      v58 = [v19 name];
      if (!v58)
      {
LABEL_30:
        sub_19091E6E0(v19, v20, v22, v129, v23, 0);
        v22 = 0;
        v24 = 0xE000000000000000;
        goto LABEL_31;
      }
    }

    v59 = v58;
    v60 = v23;
    v61 = sub_190D56F10();
    v63 = v62;

    v64 = v19;
    v24 = v63;
    sub_19091E6E0(v64, v20, v22, v129, v60, 0);
    v22 = v61;
LABEL_31:
    v12 = v142;
LABEL_32:
    *&v133 = v22;
    *(&v133 + 1) = v24;
    v66 = *(&v140 + 1);
    v65 = v140;
    v67 = *&v141[8];
    v68 = *v141;
    if (v141[24])
    {
      sub_19091E678(v140, *(&v140 + 1), *v141, *&v141[8], *&v141[16], 1);

      goto LABEL_59;
    }

    v127 = *(&v140 + 1);
    v128 = *&v141[16];
    v129 = *&v141[8];
    v69 = v140;
    v70 = [v69 recipient];
    v130 = v24;
    if (v70)
    {
      v71 = v70;
      v123 = v68;
      v72 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
      v73 = swift_allocObject();
      *(v73 + 16) = v125;
      v74 = objc_opt_self();
      v75 = [v74 descriptorForUsedKeys];
      if (!v75)
      {
        goto LABEL_67;
      }

      v76 = v124;
      *(v73 + 32) = v75;
      *(v73 + 40) = v76;
      v77 = objc_opt_self();
      v78 = v76;
      v122 = v77;
      *(v73 + 48) = [v77 descriptorForRequiredKeysForStyle_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20, &unk_190DDBB80);
      v79 = sub_190D57160();

      v80 = [v71 cnContactWithKeys_];

      v65 = v72;
      v68 = v123;
      if (v80)
      {
        if (![v80 contactType])
        {
          v118 = v69;
          v90 = [v74 componentsForContact_];
          if (!v90)
          {
            goto LABEL_68;
          }

          v91 = v90;
          v92 = [objc_opt_self() localizedStringFromPersonNameComponents:v90 style:1 options:0];

          v93 = sub_190D56F10();
          v67 = v94;

          v114 = v93;
          v131 = v93;
          v132 = v67;
          v95 = v120;
          sub_190D50ED0();
          sub_19081E484();
          v96 = sub_190D580B0();
          v98 = v97;
          (*v119)(v95, v121);

          v99 = HIBYTE(v98) & 0xF;
          if ((v98 & 0x2000000000000000) == 0)
          {
            v99 = v96 & 0xFFFFFFFFFFFFLL;
          }

          if (v99)
          {

            sub_19091E6E0(v65, v127, v68, v129, v128, 0);
            v68 = v114;
            goto LABEL_49;
          }

          v69 = v118;
        }

        v81 = [v122 stringFromContact:v80 style:0];
        if (v81)
        {
          v118 = v69;
          v82 = v81;
          v83 = sub_190D56F10();
          v67 = v84;

          v122 = v83;
          v131 = v83;
          v132 = v67;
          v85 = v120;
          sub_190D50ED0();
          sub_19081E484();
          v86 = sub_190D580B0();
          v88 = v87;
          (*v119)(v85, v121);

          if ((v88 & 0x2000000000000000) != 0)
          {
            v89 = HIBYTE(v88) & 0xF;
          }

          else
          {
            v89 = v86 & 0xFFFFFFFFFFFFLL;
          }

          if (v89)
          {
            sub_19091E6E0(v65, v127, v68, v129, v128, 0);
            v68 = v122;
LABEL_49:
            v12 = v142;
            goto LABEL_59;
          }

          v69 = v118;
        }

        else
        {
        }
      }
    }

    if ([v69 hasDisplayName])
    {
      v100 = [v69 displayName];
    }

    else
    {
      [v69 fetchSuggestedNameIfNecessary];
      v100 = [v69 name];
    }

    v101 = v100;
    v12 = v142;
    if (v101)
    {
      v102 = v101;
      v103 = sub_190D56F10();
      v67 = v104;

      sub_19091E6E0(v65, v127, v68, v129, v128, 0);
      v68 = v103;
    }

    else
    {
      sub_19091E6E0(v65, v127, v68, v129, v128, 0);
      v68 = 0;
      v67 = 0xE000000000000000;
    }

LABEL_59:
    v131 = v68;
    v132 = v67;
    sub_19081E484();
    v105 = sub_190D580D0();

    sub_1909B8860(v139);
    sub_1909B8860(v137);
    if (v105 != -1)
    {
      goto LABEL_4;
    }

    if (!v126)
    {
      break;
    }

    v106 = v10 - 5;
    v134 = v10[1];
    v135 = v10[2];
    v136[0] = v10[3];
    *(v136 + 9) = *(v10 + 57);
    v133 = *v10;
    v107 = *(v10 - 2);
    v10[2] = *(v10 - 3);
    v10[3] = v107;
    v10[4] = *(v10 - 1);
    v108 = *(v10 - 4);
    *v10 = *(v10 - 5);
    v10[1] = v108;
    *v106 = v133;
    v109 = v134;
    v110 = v135;
    v111 = v136[0];
    *(v106 + 57) = *(v136 + 9);
    v106[2] = v110;
    v106[3] = v111;
    v106[1] = v109;
    if (!v12)
    {
LABEL_4:
      a3 = v117 + 1;
      v10 = v116 + 5;
      v11 = v115 - 1;
      if (v117 + 1 == v113)
      {
        return;
      }

      goto LABEL_5;
    }

    ++v12;
    v10 -= 5;
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}