uint64_t sub_25B06B070(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + v5);
  v9 = *(v1 + v5);
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_25B05859C;

  return sub_25B064F80(a1, v6, v7, v1 + v4, v9, v10, v11, v12);
}

uint64_t sub_25B06B218(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v15 = *(v1 + 24);
  v16 = *(v1 + 16);
  v7 = v1 + v5;
  v8 = *(v1 + v5);
  v9 = *(v7 + 8);
  v10 = v1 + v6;
  v11 = *(v1 + v6);
  v12 = *(v10 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_25B05859C;

  return sub_25B0643DC(a1, v16, v15, v1 + v4, v8, v9, v11, v12);
}

uint64_t sub_25B06B3D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B05859C;

  return sub_25B065840(a1, v4);
}

uint64_t sub_25B06B48C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25B06B508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA314E8;
  if (!qword_27FA314E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA314E8);
  }

  return result;
}

unint64_t sub_25B06B560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA314F0;
  if (!qword_27FA314F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA314F0);
  }

  return result;
}

unint64_t sub_25B06B5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA314F8;
  if (!qword_27FA314F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA314F8);
  }

  return result;
}

unint64_t sub_25B06B610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31500;
  if (!qword_27FA31500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31500);
  }

  return result;
}

unint64_t sub_25B06B668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31508;
  if (!qword_27FA31508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31508);
  }

  return result;
}

uint64_t sub_25B06B6E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a2;
  v78 = sub_25B0E2310();
  v3 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B0E23C0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v66[1] = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v66[2] = v66 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v69 = v66 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v68 = v66 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v79 = v66 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v75 = v66 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v66 - v19;
  v21 = type metadata accessor for PersistedSnapshotStore.KeyURLs(0);
  MEMORY[0x28223BE20](v21 - 8);
  v74 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v24 = a1[1];
  v25 = a1[3];
  v71 = a1[2];
  v67 = v25;
  v26 = (v6 + 16);
  v73 = *(v6 + 16);
  v73(v20, v76 + OBJC_IVAR____TtC15NanoFaceGallery22PersistedSnapshotStore_baseURL, v5);
  v80 = v23;
  v81 = v24;
  v27 = v5;
  v29 = v77;
  v28 = v78;
  v30 = (*(v3 + 104))(v77, *MEMORY[0x277CC91D8], v78);
  sub_25B04C9BC(v30, v31, v32);

  v33 = v75;
  sub_25B0E23B0();
  v34 = *(v3 + 8);
  v35 = v73;
  v34(v29, v28);

  v36 = v74;
  sub_25B0E2380();
  v38 = (v6 + 8);
  v37 = *(v6 + 8);
  v37(v33, v27);
  v76 = v37;
  v77 = v38;
  v37(v20, v27);
  v78 = v27;
  v75 = v26;
  v35(v79, v36, v27);
  if (qword_27FA30CB0 != -1)
  {
    swift_once();
  }

  v39 = sub_25B0E2970();
  v40 = __swift_project_value_buffer(v39, qword_27FA31510);
  v41 = v68;
  v35(v68, v79, v78);

  v42 = v67;

  v72 = v40;
  v43 = sub_25B0E2950();
  v44 = sub_25B0E3A50();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v80 = v46;
    *v45 = 136315394;
    *(v45 + 4) = sub_25B04BE04(v71, v42, &v80);
    *(v45 + 12) = 2080;
    v47 = sub_25B0E2320();
    v48 = v41;
    v50 = v49;
    v76(v48, v78);
    v51 = sub_25B04BE04(v47, v50, &v80);

    *(v45 + 14) = v51;
    _os_log_impl(&dword_25B03D000, v43, v44, "Looking for %s at %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v46, -1, -1);
    MEMORY[0x25F8613E0](v45, -1, -1);
  }

  else
  {

    v76(v41, v78);
  }

  v52 = sub_25B0E23D0();
  v54 = v53;
  sub_25B0E2270();
  swift_allocObject();
  v55 = sub_25B0E2260();
  sub_25B06DE5C(v55, v56, v57);
  sub_25B0E2250();

  sub_25B06ABAC(v52, v54);
  v58 = v80;
  v59 = v81;
  v60 = v82;
  v61 = v83;
  v62 = v84;
  v63 = v85;
  v76(v79, v78);
  result = sub_25B06DD48(v74);
  v65 = v70;
  *v70 = v58;
  v65[1] = v59;
  v65[2] = v60;
  v65[3] = v61;
  v65[4] = v62;
  v65[5] = v63;
  return result;
}

void sub_25B06C2CC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v111 = a2;
  v131 = *MEMORY[0x277D85DE8];
  v116 = sub_25B0E2310();
  v5 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v7 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_25B0E23C0();
  v8 = *(v115 - 8);
  v9 = MEMORY[0x28223BE20](v115);
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v108 - v12;
  v14 = type metadata accessor for PersistedSnapshotStore.KeyURLs(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v112 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v119 = a1;
  v120 = &v108 - v17;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  (*(v19 + 8))(&v125, v18, v19);
  v20 = v125;
  v21 = v126;
  v114 = v128;
  v22 = *(v8 + 16);
  v117 = OBJC_IVAR____TtC15NanoFaceGallery22PersistedSnapshotStore_baseURL;
  v118 = v3;
  v23 = v3 + OBJC_IVAR____TtC15NanoFaceGallery22PersistedSnapshotStore_baseURL;
  v24 = v115;
  v22(v13, v23, v115);
  v121[0] = v20;
  v121[1] = v21;
  v25 = v116;
  v26 = (*(v5 + 104))(v7, *MEMORY[0x277CC91D8], v116);
  sub_25B04C9BC(v26, v27, v28);

  sub_25B0E23B0();

  v29 = v7;
  v30 = v120;
  (*(v5 + 8))(v29, v25);

  sub_25B0E2380();
  v31 = *(v8 + 8);
  v31(v11, v24);
  v31(v13, v24);
  if (qword_27FA30CB0 != -1)
  {
    swift_once();
  }

  v32 = sub_25B0E2970();
  v33 = __swift_project_value_buffer(v32, qword_27FA31510);
  v34 = v119;
  sub_25B049F48(v119, &v125);

  v116 = v33;
  v35 = sub_25B0E2950();
  v36 = sub_25B0E3A50();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v124 = v38;
    *v37 = 136315394;
    v39 = v128;
    v40 = v129;
    __swift_project_boxed_opaque_existential_1(&v125, v128);
    v40[1](v121, v39, v40);
    v41 = v122;
    v42 = v123;

    __swift_destroy_boxed_opaque_existential_1(&v125);
    v43 = sub_25B04BE04(v41, v42, &v124);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2080;
    v44 = sub_25B0E2320();
    v46 = sub_25B04BE04(v44, v45, &v124);

    *(v37 + 14) = v46;
    _os_log_impl(&dword_25B03D000, v35, v36, "Storing %s inside %s", v37, 0x16u);
    swift_arrayDestroy();
    v47 = v38;
    v34 = v119;
    MEMORY[0x25F8613E0](v47, -1, -1);
    MEMORY[0x25F8613E0](v37, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v125);
  }

  v48 = [objc_opt_self() defaultManager];
  v49 = sub_25B0E2360();
  v125 = 0;
  v50 = [v48 createDirectoryAtURL:v49 withIntermediateDirectories:1 attributes:0 error:&v125];

  v51 = v125;
  if (v50)
  {
    sub_25B049F48(v34, &v125);
    v52 = v112;
    sub_25B06DDA4(v30, v112);
    v53 = v51;
    v54 = sub_25B0E2950();
    v55 = sub_25B0E3A50();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = v34;
      v58 = swift_slowAlloc();
      v124 = v58;
      *v56 = 136315394;
      v59 = v128;
      v60 = v129;
      __swift_project_boxed_opaque_existential_1(&v125, v128);
      v60[1](v121, v59, v60);
      v61 = v122;
      v62 = v123;

      __swift_destroy_boxed_opaque_existential_1(&v125);
      v63 = sub_25B04BE04(v61, v62, &v124);

      *(v56 + 4) = v63;
      *(v56 + 12) = 2080;
      v64 = sub_25B0E2320();
      v66 = v65;
      sub_25B06DD48(v52);
      v67 = sub_25B04BE04(v64, v66, &v124);

      *(v56 + 14) = v67;
      _os_log_impl(&dword_25B03D000, v54, v55, "Writing snapshot %s to %s", v56, 0x16u);
      swift_arrayDestroy();
      v68 = v58;
      v34 = v57;
      MEMORY[0x25F8613E0](v68, -1, -1);
      MEMORY[0x25F8613E0](v56, -1, -1);
    }

    else
    {

      sub_25B06DD48(v52);
      __swift_destroy_boxed_opaque_existential_1(&v125);
    }

    v70 = v34[3];
    v71 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v70);
    (*(v71 + 8))(&v125, v70, v71);
    v72 = v125;
    v119 = v126;
    v74 = v127;
    v73 = v128;
    v75 = v34[3];
    v76 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v75);
    v77 = (*(v76 + 16))(v75, v76);
    v78 = v34[3];
    v79 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v78);
    v80 = (*(v79 + 24))(v78, v79);
    sub_25B0E22A0();
    swift_allocObject();
    v81 = sub_25B0E2290();
    v125 = v72;
    v82 = v81;
    v126 = v119;
    v127 = v74;
    v128 = v73;
    v129 = v77;
    v130 = v80;
    sub_25B06DE08(v81, v83, v84);
    v85 = v113;
    v86 = sub_25B0E2280();
    if (v85)
    {
      sub_25B06DD48(v120);
    }

    else
    {
      v114 = v72;
      v115 = v82;
      v117 = v80;
      v113 = v74;
      v88 = v86;
      v89 = v87;
      sub_25B0E2400();
      v112 = v88;
      v110 = v89;
      v109 = v73;
      sub_25B049F48(v34, &v125);
      v90 = sub_25B0E2950();
      v91 = sub_25B0E3A50();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v124 = v93;
        *v92 = 136315138;
        v94 = v128;
        v95 = v129;
        __swift_project_boxed_opaque_existential_1(&v125, v128);
        v96 = v95[1];
        v97 = v95;
        v98 = v118;
        v96(v121, v94, v97);
        v99 = v122;
        v100 = v123;

        __swift_destroy_boxed_opaque_existential_1(&v125);
        v101 = sub_25B04BE04(v99, v100, &v124);

        *(v92 + 4) = v101;
        _os_log_impl(&dword_25B03D000, v90, v91, "Notifying clients storage of %s…", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v93);
        MEMORY[0x25F8613E0](v93, -1, -1);
        MEMORY[0x25F8613E0](v92, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v125);
        v98 = v118;
      }

      v103 = v113;
      v102 = v114;
      os_unfair_lock_lock((v98 + 112));
      sub_25B06D548((v98 + 120));
      v104 = v109;
      v105 = v117;
      os_unfair_lock_unlock((v98 + 112));
      sub_25B06ABAC(v112, v110);

      sub_25B06DD48(v120);
      v106 = v111;
      v107 = v119;
      *v111 = v102;
      v106[1] = v107;
      v106[2] = v103;
      v106[3] = v104;
      v106[4] = v77;
      v106[5] = v105;
    }
  }

  else
  {
    v69 = v125;
    sub_25B0E22D0();

    swift_willThrow();
    sub_25B06DD48(v30);
  }
}

uint64_t sub_25B06CD8C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31820, &unk_25B0E6910);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v20 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  *v6 = 1;
  (*(v4 + 104))(v6, *MEMORY[0x277D85768], v3);
  sub_25B0E3950();
  (*(v4 + 8))(v6, v3);
  os_unfair_lock_lock((v1 + 112));
  (*(v8 + 16))(v11, v13, v7);
  v14 = *(v1 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 120) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_25B089A40(0, v14[2] + 1, 1, v14);
    *(v1 + 120) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_25B089A40((v16 > 1), v17 + 1, 1, v14);
    *(v1 + 120) = v14;
  }

  v14[2] = v17 + 1;
  (*(v8 + 32))(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, v11, v7);
  os_unfair_lock_unlock((v1 + 112));
  (*(v8 + 8))(v13, v7);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_25B06D094()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31510);
  __swift_project_value_buffer(v0, qword_27FA31510);
  return sub_25B0E2960();
}

uint64_t sub_25B06D114()
{
  sub_25B0E3F10();
  sub_25B0E23C0();
  sub_25B06DF8C(&qword_27FA31410, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_25B0E36D0();
  return sub_25B0E3F50();
}

uint64_t sub_25B06D19C(uint64_t a1)
{
  sub_25B0E23C0();
  sub_25B06DF8C(&qword_27FA31410, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);

  return sub_25B0E36D0();
}

uint64_t sub_25B06D220(uint64_t a1)
{
  sub_25B0E3F10();
  sub_25B0E23C0();
  sub_25B06DF8C(&qword_27FA31410, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_25B0E36D0();
  return sub_25B0E3F50();
}

uint64_t sub_25B06D2A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  os_unfair_lock_lock((v1 + 112));
  v6 = *(v1 + 120);
  v7 = *(v6 + 16);
  if (v7)
  {
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      sub_25B0E3990();
      (*(v8 - 8))(v5, v2);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  os_unfair_lock_unlock((v1 + 112));
  sub_25B058448(v1 + 120, &qword_27FA31840, &qword_25B0E6FC0);
  v13 = OBJC_IVAR____TtC15NanoFaceGallery22PersistedSnapshotStore_baseURL;
  v14 = sub_25B0E23C0();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_25B06D450()
{
  sub_25B06D2A8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25B06D4A4(uint64_t a1)
{
  result = sub_25B0E23C0();
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

uint64_t sub_25B06D548(void *a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v2 = *(v42 - 8);
  v3 = MEMORY[0x28223BE20](v42);
  v41 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v7 = MEMORY[0x28223BE20](v6);
  v44 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v27 = a1;
  result = *a1;
  v39 = *(*a1 + 16);
  if (v39)
  {
    v13 = 0;
    v35 = (v2 + 32);
    v36 = v9 + 16;
    v34 = (v2 + 88);
    v33 = *MEMORY[0x277D85758];
    v32 = *MEMORY[0x277D85750];
    v30 = *MEMORY[0x277D85748];
    v28 = (v9 + 8);
    v29 = (v2 + 8);
    v43 = (v9 + 32);
    v14 = MEMORY[0x277D84F90];
    v31 = v6;
    v37 = result;
    v38 = v9;
    while (1)
    {
      if (v13 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v16 = *(v9 + 72);
      (*(v9 + 16))(v11, result + v15 + v16 * v13, v6);
      v17 = v40;
      sub_25B0E3970();
      v19 = v41;
      v18 = v42;
      (*v35)(v41, v17, v42);
      v20 = (*v34)(v19, v18);
      if (v20 == v33 || v20 == v32)
      {
        goto LABEL_12;
      }

      if (v20 != v30)
      {
        break;
      }

      (*v28)(v11, v6);
LABEL_4:
      ++v13;
      v9 = v38;
      result = v37;
      if (v39 == v13)
      {
        goto LABEL_18;
      }
    }

    (*v29)(v41, v42);
LABEL_12:
    v22 = *v43;
    (*v43)(v44, v11, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25B08C168(0, *(v14 + 16) + 1, 1);
      v14 = v45;
    }

    v25 = *(v14 + 16);
    v24 = *(v14 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_25B08C168((v24 > 1), v25 + 1, 1);
      v14 = v45;
    }

    *(v14 + 16) = v25 + 1;
    v26 = v14 + v15 + v25 * v16;
    v6 = v31;
    v22(v26, v44, v31);
    goto LABEL_4;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:

  *v27 = v14;
  return result;
}

uint64_t sub_25B06D918(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25B0E23C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = MEMORY[0x277D84F90];
  if (qword_27FA30CB0 != -1)
  {
    swift_once();
  }

  v8 = sub_25B0E2970();
  __swift_project_value_buffer(v8, qword_27FA31510);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_25B0E2950();
  v10 = sub_25B0E3A50();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    sub_25B06DF8C(&qword_27FA31400, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v14 = sub_25B0E3E20();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_25B04BE04(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_25B03D000, v9, v10, "Creating storage at %s…", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x25F8613E0](v13, -1, -1);
    v18 = v12;
    a1 = v20;
    MEMORY[0x25F8613E0](v18, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 32))(v2 + OBJC_IVAR____TtC15NanoFaceGallery22PersistedSnapshotStore_baseURL, a1, v4);
  return v2;
}

uint64_t sub_25B06DBD8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_25B06DBFC, v4, 0);
}

uint64_t sub_25B06DBFC()
{
  sub_25B06B6E4(*(v0 + 24), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B06DC60(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_25B06DC84, v4, 0);
}

uint64_t sub_25B06DC84()
{
  sub_25B06C2CC(*(v0 + 24), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B06DD48(uint64_t a1)
{
  v2 = type metadata accessor for PersistedSnapshotStore.KeyURLs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B06DDA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistedSnapshotStore.KeyURLs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25B06DE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31538;
  if (!qword_27FA31538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31538);
  }

  return result;
}

unint64_t sub_25B06DE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31540;
  if (!qword_27FA31540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31540);
  }

  return result;
}

uint64_t sub_25B06DED8(uint64_t a1)
{
  result = sub_25B0E23C0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25B06DF8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25B06DFD4()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31560);
  __swift_project_value_buffer(v0, qword_27FA31560);
  return sub_25B0E2960();
}

uint64_t sub_25B06E058()
{
  sub_25B0E3F10();
  sub_25B0E3780();
  sub_25B0E3780();
  sub_25B0E3780();
  return sub_25B0E3F50();
}

uint64_t sub_25B06E0DC(uint64_t a1)
{
  sub_25B0E3780();
  sub_25B0E3780();

  return sub_25B0E3780();
}

uint64_t sub_25B06E148(uint64_t a1)
{
  sub_25B0E3F10();
  sub_25B0E3780();
  sub_25B0E3780();
  sub_25B0E3780();
  return sub_25B0E3F50();
}

uint64_t sub_25B06E1CC()
{
  type metadata accessor for DaemonListener(0);
  v0 = swift_allocObject();
  result = sub_25B0E2490();
  v2 = v0 + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock;
  *v2 = 0;
  v3 = MEMORY[0x277D84F98];
  *(v2 + 8) = 0;
  *(v2 + 16) = v3;
  *(v2 + 24) = v3;
  *(v2 + 32) = v3;
  *(v2 + 40) = MEMORY[0x277D84F90];
  qword_27FA39978 = v0;
  return result;
}

uint64_t sub_25B06E244()
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v1 = *(v41 - 8);
  v2 = MEMORY[0x28223BE20](v41);
  v40 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v43 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v27 = v0;
  result = *(v0 + 32);
  v38 = *(result + 16);
  if (v38)
  {
    v12 = 0;
    v35 = (v1 + 32);
    v36 = v6 + 16;
    v34 = (v1 + 88);
    v33 = *MEMORY[0x277D85758];
    v32 = *MEMORY[0x277D85750];
    v30 = *MEMORY[0x277D85748];
    v28 = (v6 + 8);
    v29 = (v1 + 8);
    v42 = (v6 + 32);
    v13 = MEMORY[0x277D84F90];
    v31 = v5;
    v37 = result;
    while (1)
    {
      if (v12 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v15 = *(v6 + 72);
      (*(v6 + 16))(v10, result + v14 + v15 * v12, v5);
      v16 = v39;
      sub_25B0E3970();
      v18 = v40;
      v17 = v41;
      (*v35)(v40, v16, v41);
      v19 = (*v34)(v18, v17);
      if (v19 == v33 || v19 == v32)
      {
        goto LABEL_12;
      }

      if (v19 != v30)
      {
        break;
      }

      (*v28)(v10, v5);
LABEL_4:
      ++v12;
      result = v37;
      if (v38 == v12)
      {
        goto LABEL_18;
      }
    }

    (*v29)(v40, v41);
LABEL_12:
    v21 = *v42;
    (*v42)(v43, v10, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25B08C168(0, *(v13 + 16) + 1, 1);
      v13 = v44;
    }

    v24 = *(v13 + 16);
    v23 = *(v13 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_25B08C168((v23 > 1), v24 + 1, 1);
      v13 = v44;
    }

    *(v13 + 16) = v24 + 1;
    v25 = v13 + v14 + v24 * v15;
    v5 = v31;
    v21(v25, v43, v31);
    goto LABEL_4;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_18:

  *(v27 + 32) = v13;
  return result;
}

uint64_t sub_25B06E608()
{
  v1 = OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_instanceIdentifier;
  v2 = v0 + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock));
  sub_25B070518((v2 + 8), (v0 + v1), &v7);
  os_unfair_lock_unlock(v2);
  v3 = sub_25B0E24A0();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  sub_25B070914(v2 + 8);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for DaemonListener(uint64_t a1)
{
  result = qword_27FA31588;
  if (!qword_27FA31588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B06E740(uint64_t a1)
{
  result = sub_25B0E24A0();
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

uint64_t sub_25B06E7D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25B06E820(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25B06E878@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v53 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31820, &unk_25B0E6910);
  v4 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v6 = (&v53 - v5);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v67 = *(v70 - 8);
  v7 = MEMORY[0x28223BE20](v70);
  v66 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - v9;
  v11 = sub_25B0E24A0();
  v65 = *(v11 - 8);
  v12 = *(v65 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - v14;
  v16 = OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_instanceIdentifier;
  v17 = v1 + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock));
  if (!*(v17 + 8))
  {
    v56 = v15;
    v57 = v10;
    v62 = v6;
    v63 = v16;
    v59 = v17;
    v60 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = v1;
    v58 = v4;
    if (qword_27FA30CB8 != -1)
    {
      swift_once();
    }

    v18 = sub_25B0E2970();
    __swift_project_value_buffer(v18, qword_27FA31560);
    v19 = v65;
    v20 = v61;
    v21 = v56;
    v22 = v11;
    v54 = *(v65 + 16);
    v55 = v65 + 16;
    v54(v56, v61 + v63, v11);
    v23 = sub_25B0E2950();
    v24 = sub_25B0E3A50();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v60;
    if (v25)
    {
      v27 = swift_slowAlloc();
      v53 = v12;
      v28 = v26;
      v29 = v27;
      v30 = swift_slowAlloc();
      v71 = v30;
      *v29 = 136315138;
      sub_25B0739F8(&qword_27FA31830, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v31 = sub_25B0E3E20();
      v33 = v32;
      (*(v65 + 8))(v21, v22);
      v34 = sub_25B04BE04(v31, v33, &v71);
      v19 = v65;

      v35 = v29;
      v26 = v28;
      *(v35 + 1) = v34;
      v36 = v35;
      _os_log_impl(&dword_25B03D000, v23, v24, "Starting daemon listener %s…", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x25F8613E0](v30, -1, -1);
      MEMORY[0x25F8613E0](v36, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v21, v22);
    }

    v37 = v64;
    v38 = sub_25B0E3940();
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
    v39 = swift_allocObject();
    swift_weakInit();
    v54(v26, v20 + v63, v22);
    v40 = v19;
    v41 = (*(v19 + 80) + 40) & ~*(v19 + 80);
    v42 = swift_allocObject();
    *(v42 + 2) = 0;
    *(v42 + 3) = 0;
    *(v42 + 4) = v39;
    (*(v40 + 32))(&v42[v41], v26, v22);
    v43 = sub_25B052F48(0, 0, v37, &unk_25B0E70E8, v42);
    v4 = v58;
    v17 = v59;
    *(v59 + 8) = v43;
    v10 = v57;
    v6 = v62;
  }

  os_unfair_lock_unlock(v17);
  *v6 = 1;
  v44 = v68;
  (*(v4 + 104))(v6, *MEMORY[0x277D85768], v68);
  sub_25B0E3950();
  (*(v4 + 8))(v6, v44);
  os_unfair_lock_lock(v17);
  v45 = v66;
  v46 = v67;
  v47 = v70;
  (*(v67 + 16))(v66, v10, v70);
  v48 = *(v17 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v17 + 40) = v48;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v48 = sub_25B089A40(0, v48[2] + 1, 1, v48);
    *(v17 + 40) = v48;
  }

  v51 = v48[2];
  v50 = v48[3];
  if (v51 >= v50 >> 1)
  {
    v48 = sub_25B089A40((v50 > 1), v51 + 1, 1, v48);
    *(v17 + 40) = v48;
  }

  v48[2] = v51 + 1;
  (*(v46 + 32))(v48 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v51, v45, v47);
  os_unfair_lock_unlock(v17);
  return (*(v46 + 8))(v10, v47);
}

uint64_t sub_25B06EF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v48 = a3;
  v5 = sub_25B0E24A0();
  v6 = *(v5 - 8);
  v46 = v5;
  v47 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_25B0E28B0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v50 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v42[-v13];
  v15 = *(a1 + 16);
  v16 = qword_27FA30CB8;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_25B0E2970();
  __swift_project_value_buffer(v17, qword_27FA31560);
  v18 = *(v10 + 16);
  v18(v14, a2, v9);
  v49 = a2;
  v18(v50, a2, v9);

  v19 = sub_25B0E2950();
  v20 = sub_25B0E3A50();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51 = v44;
    *v21 = 136315650;
    v45 = v15;
    v22 = v8;
    v43 = v20;
    sub_25B0E28A0();
    sub_25B0739F8(&qword_27FA31830, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = v46;
    v24 = sub_25B0E3E20();
    v26 = v25;
    (v47[1].isa)(v22, v23);
    v27 = *(v10 + 8);
    v27(v14, v9);
    v28 = sub_25B04BE04(v24, v26, &v51);
    v47 = v19;
    v29 = v28;

    *(v21 + 4) = v29;
    *(v21 + 12) = 2080;
    v30 = v50;
    v31 = sub_25B0E2890();
    v33 = v32;
    v27(v30, v9);
    v15 = v45;
    v34 = sub_25B04BE04(v31, v33, &v51);

    *(v21 + 14) = v34;
    *(v21 + 22) = 2080;
    sub_25B0739F8(&qword_27FA31490, MEMORY[0x277D2BE48], MEMORY[0x277D2BE50]);
    v35 = sub_25B0E36B0();
    v37 = sub_25B04BE04(v35, v36, &v51);

    *(v21 + 24) = v37;
    v38 = v47;
    _os_log_impl(&dword_25B03D000, v47, v43, "Looking for library %s on device %s in %s…", v21, 0x20u);
    v39 = v44;
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v39, -1, -1);
    MEMORY[0x25F8613E0](v21, -1, -1);
  }

  else
  {

    v40 = *(v10 + 8);
    v40(v50, v9);
    v40(v14, v9);
  }

  sub_25B0D478C(v15, v48);
}

uint64_t sub_25B06F3F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_25B0E23C0();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x28223BE20](v9);
  v68 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25B0E25B0();
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x28223BE20](v11);
  v62 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_25B0E25D0();
  v67 = *(v74 - 8);
  v13 = MEMORY[0x28223BE20](v74);
  v66 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v61 = &v57 - v15;
  v16 = sub_25B0E26B0();
  v17 = *(v16 - 8);
  v75 = v16;
  v76 = v17;
  MEMORY[0x28223BE20](v16);
  v73 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315A0, &qword_25B0E70D8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v57 - v23;
  v25 = *a1;
  v26 = a1[1];
  v27 = a1[2];
  v28 = a1[3];
  v60 = a2;
  v78[0] = a2;
  v78[1] = a3;
  v65 = v25;
  v78[2] = v25;
  v78[3] = v26;
  v71 = v27;
  v78[4] = v27;
  v78[5] = v28;
  v29 = v4 + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock;

  os_unfair_lock_lock(v29);
  v30 = *(v29 + 16);
  v59 = *(v30 + 16);
  if (qword_27FA30CB8 != -1)
  {
    swift_once();
  }

  v31 = sub_25B0E2970();
  __swift_project_value_buffer(v31, qword_27FA31560);

  v32 = sub_25B0E2950();
  v33 = sub_25B0E3A50();

  v34 = os_log_type_enabled(v32, v33);
  v72 = v24;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v58 = a4;
    v36 = v35;
    v37 = swift_slowAlloc();
    v77 = v37;
    *v36 = 136315650;
    *(v36 + 4) = sub_25B04BE04(v71, v28, &v77);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_25B04BE04(v60, a3, &v77);
    *(v36 + 22) = 2048;
    *(v36 + 24) = v59;
    _os_log_impl(&dword_25B03D000, v32, v33, "Looking for %s on %s in %ld snapshots…", v36, 0x20u);
    swift_arrayDestroy();
    v38 = v37;
    v24 = v72;
    MEMORY[0x25F8613E0](v38, -1, -1);
    v39 = v36;
    a4 = v58;
    MEMORY[0x25F8613E0](v39, -1, -1);
  }

  v40 = v75;
  if (*(v30 + 16) && (v41 = sub_25B065F78(v78), (v42 & 1) != 0))
  {
    v43 = *(v30 + 56);
    v44 = v76;
    (*(v76 + 16))(v24, v43 + *(v76 + 72) * v41, v40);
    (*(v44 + 56))(v24, 0, 1, v40);
  }

  else
  {
    v44 = v76;
    (*(v76 + 56))(v24, 1, 1, v40);
  }

  sub_25B073A40(v78);
  os_unfair_lock_unlock(v29);
  sub_25B073A70(v24, v22);
  if ((*(v44 + 48))(v22, 1, v40) == 1)
  {
    sub_25B058448(v24, &qword_27FA315A0, &qword_25B0E70D8);
    result = sub_25B058448(v22, &qword_27FA315A0, &qword_25B0E70D8);
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    return result;
  }

  (*(v44 + 32))(v73, v22, v40);
  v46 = v61;
  sub_25B0E25E0();
  v47 = v62;
  sub_25B0E25C0();
  v48 = *(v67 + 8);
  v48(v46, v74);
  v49 = (*(v63 + 88))(v47, v64);
  if (v49 == *MEMORY[0x277D2BDF0])
  {
    v50 = 1;
LABEL_15:
    v67 = v50;
    v51 = v73;
    v75 = sub_25B06FF54();

    v52 = v66;
    sub_25B0E25E0();
    v53 = v68;
    sub_25B0E25A0();
    v48(v52, v74);
    v54 = objc_allocWithZone(MEMORY[0x277D2C040]);
    v55 = sub_25B0E2360();
    v56 = [v54 initWithFileURL:v55 format:v67];

    (*(v69 + 8))(v53, v70);
    (*(v76 + 8))(v51, v40);
    result = sub_25B058448(v72, &qword_27FA315A0, &qword_25B0E70D8);
    *a4 = v65;
    *(a4 + 8) = v26;
    *(a4 + 16) = v71;
    *(a4 + 24) = v28;
    *(a4 + 32) = v75;
    *(a4 + 40) = v56;
    return result;
  }

  if (v49 == *MEMORY[0x277D2BDF8])
  {
    v50 = 2;
    goto LABEL_15;
  }

  result = sub_25B0E3D00();
  __break(1u);
  return result;
}

uint64_t sub_25B06FBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v38 = a3;
  v5 = sub_25B0E2870();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = *(a1 + 24);
  v13 = qword_27FA30CB8;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_25B0E2970();
  __swift_project_value_buffer(v14, qword_27FA31560);
  v15 = *(v6 + 16);
  v15(v11, a2, v5);
  v39 = a2;
  v15(v9, a2, v5);

  v16 = sub_25B0E2950();
  v17 = sub_25B0E3A50();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    *v18 = 136315650;
    v36 = v17;
    v19 = sub_25B0E2840();
    v21 = v20;
    v35 = v16;
    v22 = *(v6 + 8);
    v22(v11, v5);
    v23 = sub_25B04BE04(v19, v21, &v40);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = sub_25B0E2860();
    v26 = v25;
    v22(v9, v5);
    v27 = sub_25B04BE04(v24, v26, &v40);

    *(v18 + 14) = v27;
    *(v18 + 22) = 2080;
    sub_25B0739F8(&qword_27FA314A0, MEMORY[0x277D2BE30], MEMORY[0x277D2BE38]);
    v28 = sub_25B0E36B0();
    v30 = sub_25B04BE04(v28, v29, &v40);

    *(v18 + 24) = v30;
    v31 = v35;
    _os_log_impl(&dword_25B03D000, v35, v36, "Looking for gallery %s on device %s in %s…", v18, 0x20u);
    v32 = v37;
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v32, -1, -1);
    MEMORY[0x25F8613E0](v18, -1, -1);
  }

  else
  {

    v33 = *(v6 + 8);
    v33(v9, v5);
    v33(v11, v5);
  }

  sub_25B0D47A4(v12, v38);
}

id sub_25B06FF54()
{
  v0 = sub_25B0E2440();
  v34 = *(v0 - 8);
  v35 = v0;
  MEMORY[0x28223BE20](v0);
  v33 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_25B0E24F0();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B0E2690();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v36 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  result = [objc_opt_self() currentContext];
  if (result)
  {
    v14 = result;
    sub_25B0E26A0();
    sub_25B0E2610();
    v15 = *(v6 + 8);
    v15(v12, v5);
    v16 = sub_25B0E3730();

    [v14 setBuildVersion_];

    sub_25B0E26A0();
    sub_25B0E2660();
    v15(v12, v5);
    v17 = sub_25B0E24D0();
    (*(v2 + 8))(v4, v32);
    [v14 setCalendar_];

    sub_25B0E26A0();
    v18 = v33;
    sub_25B0E2640();
    v15(v12, v5);
    v19 = sub_25B0E2410();
    (*(v34 + 8))(v18, v35);
    [v14 setDate_];

    sub_25B073AE0();
    sub_25B0E26A0();
    sub_25B0E2630();
    v15(v12, v5);
    v20 = sub_25B0E3AD0();
    [v14 setEnhanceTextLegibilityEnabled_];

    sub_25B0E26A0();
    sub_25B0E2650();
    v15(v12, v5);
    v21 = sub_25B0E3730();

    [v14 setLocale_];

    v22 = v36;
    sub_25B0E26A0();
    sub_25B0E2620();
    v24 = v23;
    v15(v22, v5);
    if (v24)
    {
      v25 = sub_25B0E3730();
    }

    else
    {
      v25 = 0;
    }

    [v14 setLunarCalendarLocaleID_];

    v26 = v37;
    sub_25B0E26A0();
    sub_25B0E2670();
    v28 = v27;
    v15(v26, v5);
    if (v28)
    {
      v29 = sub_25B0E3730();
    }

    else
    {
      v29 = 0;
    }

    [v14 setMonogram_];

    sub_25B0E26A0();
    sub_25B0E2680();
    v15(v12, v5);
    v30 = sub_25B0E3730();

    [v14 setTzVersion_];

    sub_25B0E26A0();
    sub_25B0E2600();
    v15(v12, v5);
    v31 = sub_25B0E3AD0();
    [v14 setUses24hTime_];

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25B070518@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v40 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34[-v8];
  v10 = sub_25B0E24A0();
  v11 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = a1;
  v15 = *a1;
  if (*a1)
  {
    v37 = *a1;
    v39 = v3;
    if (qword_27FA30CB8 != -1)
    {
      swift_once();
    }

    v38 = a3;
    v16 = sub_25B0E2970();
    __swift_project_value_buffer(v16, qword_27FA31560);
    (*(v11 + 16))(v14, v40, v10);
    v17 = sub_25B0E2950();
    v18 = sub_25B0E3A50();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v36 = v19;
      v40 = swift_slowAlloc();
      v42 = v40;
      *v19 = 136315138;
      sub_25B0739F8(&qword_27FA31830, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v35 = v18;
      v20 = sub_25B0E3E20();
      v22 = v21;
      (*(v11 + 8))(v14, v10);
      v23 = sub_25B04BE04(v20, v22, &v42);

      v24 = v36;
      *(v36 + 1) = v23;
      v25 = v24;
      _os_log_impl(&dword_25B03D000, v17, v35, "Stopping daemon listener %s…", v24, 0xCu);
      v26 = v40;
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x25F8613E0](v26, -1, -1);
      MEMORY[0x25F8613E0](v25, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    sub_25B0E39E0();

    v27 = v41;
    *v41 = 0;
    v40 = v27[4];
    v28 = v40[2];
    if (v28)
    {
      v31 = *(v7 + 16);
      v29 = v7 + 16;
      v30 = v31;
      v32 = v40 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
      v33 = *(v29 + 56);
      do
      {
        v30(v9, v32, v6);
        sub_25B0E3990();
        (*(v29 - 8))(v9, v6);
        v32 += v33;
        --v28;
      }

      while (v28);
    }

    v41[4] = MEMORY[0x277D84F90];
    LOBYTE(v15) = 1;
    a3 = v38;
  }

  *a3 = v15;
  return result;
}

uint64_t sub_25B070944(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B0E26B0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v137 = &v111[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v122 = &v111[-v9];
  v10 = MEMORY[0x28223BE20](v8);
  v126 = &v111[-v11];
  MEMORY[0x28223BE20](v10);
  v125 = &v111[-v12];
  v143 = sub_25B0E26D0();
  v13 = *(v143 - 8);
  v14 = MEMORY[0x28223BE20](v143);
  v144 = &v111[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v116 = &v111[-v16];
  v146 = sub_25B0E2870();
  v17 = *(v146 - 8);
  v18 = MEMORY[0x28223BE20](v146);
  v142 = &v111[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v145 = &v111[-v21];
  MEMORY[0x28223BE20](v20);
  v131 = &v111[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315B8, &qword_25B0E7130);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v128 = &v111[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v127 = &v111[-v26];
  v27 = *(a2 + 64);
  v113 = a2 + 64;
  v28 = 1 << *(a2 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v112 = (v28 + 63) >> 6;
  v141 = (v17 + 16);
  v115 = v13 + 16;
  v132 = (v13 + 32);
  v133 = (v17 + 32);
  v124 = (v5 + 8);
  v129 = v17;
  v123 = (v17 + 8);
  v130 = (v5 + 32);
  v117 = v13;
  v120 = (v13 + 8);
  v121 = v5;
  v114 = v5 + 40;
  v118 = a2;

  v31 = 0;
  v140 = a1;
  v138 = v4;
  v139 = MEMORY[0x277D84F98];
  if (!v30)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v91 = v31;
LABEL_36:
    v94 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v95 = v94 | (v91 << 6);
    v96 = v118;
    v97 = v129;
    v98 = v146;
    (*(v129 + 16))(v131, *(v118 + 48) + *(v129 + 72) * v95, v146);
    v99 = v117;
    v100 = v116;
    v101 = v143;
    (*(v117 + 16))(v116, *(v96 + 56) + *(v117 + 72) * v95, v143);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315C0, &unk_25B0E7138);
    v103 = *(v102 + 48);
    v104 = *(v97 + 32);
    v84 = v128;
    v104(v128, v131, v98);
    (*(v99 + 32))(v84 + v103, v100, v101);
    (*(*(v102 - 8) + 56))(v84, 0, 1, v102);
    v93 = v91;
LABEL_37:
    v105 = v127;
    sub_25B0745E4(v84, v127, &qword_27FA315B8, &qword_25B0E7130);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315C0, &unk_25B0E7138);
    if ((*(*(v106 - 8) + 48))(v105, 1, v106) == 1)
    {

      v107 = v139;

      v108 = v140;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v150 = *(v108 + 8);
      sub_25B07464C(v107, sub_25B073B2C, 0, isUniquelyReferenced_nonNull_native, &v150);
      swift_bridgeObjectRelease_n();
      *(v108 + 8) = v150;
      return sub_25B06E244();
    }

    v134 = v93;
    v32 = *(v106 + 48);
    (*v133)(v145, v105, v146);
    (*v132)(v144, &v105[v32], v143);
    v33 = v125;
    sub_25B0E26C0();
    v34 = sub_25B0E25F0();
    v136 = v35;
    v36 = *v124;
    v37 = v138;
    (*v124)(v33, v138);
    v38 = v126;
    sub_25B0E26C0();
    v39 = sub_25B0E2590();
    v41 = v40;
    v36(v38, v37);
    v42 = v136;
    v43 = v145;
    *&v147 = sub_25B0E2860();
    *(&v147 + 1) = v44;
    v135 = v34;
    *&v148 = v34;
    *(&v148 + 1) = v42;
    *&v149 = v39;
    *(&v149 + 1) = v41;
    v45 = v142;
    v46 = *v141;
    (*v141)(v142, v43, v146);

    v47 = v140;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v47 + 24);
    v150 = v49;
    v51 = sub_25B066014(v45);
    v52 = v49[2];
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      break;
    }

    v55 = v50;
    if (v49[3] >= v54)
    {
      if (v48)
      {
        v58 = v150;
        if (v50)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_25B06A59C();
        v58 = v150;
        if (v55)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      sub_25B067660(v54, v48);
      v56 = sub_25B066014(v142);
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_45;
      }

      v51 = v56;
      v58 = v150;
      if (v55)
      {
LABEL_13:
        v68 = (v58[7] + 32 * v51);
        *v68 = v135;
        v68[1] = v42;
        v68[2] = v39;
        v68[3] = v41;

        v64 = *v123;
        (*v123)(v142, v146);
        goto LABEL_14;
      }
    }

    v58[(v51 >> 6) + 8] |= 1 << v51;
    v59 = v129;
    v60 = v58[6] + *(v129 + 72) * v51;
    v119 = v39;
    v61 = v142;
    v62 = v146;
    v46(v60, v142, v146);
    v63 = (v58[7] + 32 * v51);
    *v63 = v135;
    v63[1] = v42;
    v63[2] = v119;
    v63[3] = v41;
    v64 = *(v59 + 8);
    v64(v61, v62);
    v65 = v58[2];
    v66 = __OFADD__(v65, 1);
    v67 = v65 + 1;
    if (v66)
    {
      goto LABEL_42;
    }

    v58[2] = v67;
LABEL_14:
    *(v140 + 24) = v58;
    v69 = v122;
    sub_25B0E26C0();
    v70 = *v130;
    v71 = v138;
    (*v130)(v137, v69, v138);
    v72 = v139;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v150 = v72;
    v74 = sub_25B065F78(&v147);
    v76 = v72[2];
    v77 = (v75 & 1) == 0;
    v66 = __OFADD__(v76, v77);
    v78 = v76 + v77;
    if (v66)
    {
      goto LABEL_41;
    }

    v79 = v75;
    if (v72[3] < v78)
    {
      sub_25B067274(v78, v73);
      v74 = sub_25B065F78(&v147);
      if ((v79 & 1) != (v80 & 1))
      {
        goto LABEL_44;
      }

LABEL_19:
      if ((v79 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }

    if (v73)
    {
      goto LABEL_19;
    }

    v85 = v74;
    sub_25B06A2DC();
    v74 = v85;
    if ((v79 & 1) == 0)
    {
LABEL_25:
      v82 = v150;
      v150[(v74 >> 6) + 8] |= 1 << v74;
      v86 = (v82[6] + 48 * v74);
      v87 = v149;
      v88 = v148;
      *v86 = v147;
      v86[1] = v88;
      v86[2] = v87;
      v70(v82[7] + *(v121 + 72) * v74, v137, v71);
      (*v120)(v144, v143);
      v64(v145, v146);
      v89 = v82[2];
      v66 = __OFADD__(v89, 1);
      v90 = v89 + 1;
      if (v66)
      {
        goto LABEL_43;
      }

      v82[2] = v90;
      goto LABEL_27;
    }

LABEL_20:
    v81 = v74;
    sub_25B073A40(&v147);
    v82 = v150;
    (*(v121 + 40))(v150[7] + *(v121 + 72) * v81, v137, v71);
    (*v120)(v144, v143);
    v64(v145, v146);
LABEL_27:
    v31 = v134;
    v139 = v82;
    if (!v30)
    {
LABEL_29:
      if (v112 <= v31 + 1)
      {
        v92 = v31 + 1;
      }

      else
      {
        v92 = v112;
      }

      v93 = v92 - 1;
      while (1)
      {
        v91 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v91 >= v112)
        {
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315C0, &unk_25B0E7138);
          v84 = v128;
          (*(*(v83 - 8) + 56))(v128, 1, 1, v83);
          v30 = 0;
          goto LABEL_37;
        }

        v30 = *(v113 + 8 * v91);
        ++v31;
        if (v30)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  sub_25B0E3E80();
  __break(1u);
LABEL_45:
  result = sub_25B0E3E80();
  __break(1u);
  return result;
}

uint64_t sub_25B0714F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B0E26B0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v137 = &v111[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v122 = &v111[-v9];
  v10 = MEMORY[0x28223BE20](v8);
  v126 = &v111[-v11];
  MEMORY[0x28223BE20](v10);
  v125 = &v111[-v12];
  v143 = sub_25B0E26F0();
  v13 = *(v143 - 8);
  v14 = MEMORY[0x28223BE20](v143);
  v144 = &v111[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v116 = &v111[-v16];
  v146 = sub_25B0E28B0();
  v17 = *(v146 - 8);
  v18 = MEMORY[0x28223BE20](v146);
  v142 = &v111[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v145 = &v111[-v21];
  MEMORY[0x28223BE20](v20);
  v131 = &v111[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315F8, &qword_25B0E7178);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v128 = &v111[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v127 = &v111[-v26];
  v27 = *(a2 + 64);
  v113 = a2 + 64;
  v28 = 1 << *(a2 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v112 = (v28 + 63) >> 6;
  v141 = (v17 + 16);
  v115 = v13 + 16;
  v132 = (v13 + 32);
  v133 = (v17 + 32);
  v124 = (v5 + 8);
  v129 = v17;
  v123 = (v17 + 8);
  v130 = (v5 + 32);
  v117 = v13;
  v120 = (v13 + 8);
  v121 = v5;
  v114 = v5 + 40;
  v118 = a2;

  v31 = 0;
  v140 = a1;
  v138 = v4;
  v139 = MEMORY[0x277D84F98];
  if (!v30)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v91 = v31;
LABEL_36:
    v94 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v95 = v94 | (v91 << 6);
    v96 = v118;
    v97 = v129;
    v98 = v146;
    (*(v129 + 16))(v131, *(v118 + 48) + *(v129 + 72) * v95, v146);
    v99 = v117;
    v100 = v116;
    v101 = v143;
    (*(v117 + 16))(v116, *(v96 + 56) + *(v117 + 72) * v95, v143);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31600, &qword_25B0E7180);
    v103 = *(v102 + 48);
    v104 = *(v97 + 32);
    v84 = v128;
    v104(v128, v131, v98);
    (*(v99 + 32))(v84 + v103, v100, v101);
    (*(*(v102 - 8) + 56))(v84, 0, 1, v102);
    v93 = v91;
LABEL_37:
    v105 = v127;
    sub_25B0745E4(v84, v127, &qword_27FA315F8, &qword_25B0E7178);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31600, &qword_25B0E7180);
    if ((*(*(v106 - 8) + 48))(v105, 1, v106) == 1)
    {

      v107 = v139;

      v108 = v140;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v150 = *(v108 + 8);
      sub_25B07464C(v107, sub_25B073B2C, 0, isUniquelyReferenced_nonNull_native, &v150);
      swift_bridgeObjectRelease_n();
      *(v108 + 8) = v150;
      return sub_25B06E244();
    }

    v134 = v93;
    v32 = *(v106 + 48);
    (*v133)(v145, v105, v146);
    (*v132)(v144, &v105[v32], v143);
    v33 = v125;
    sub_25B0E26E0();
    v34 = sub_25B0E25F0();
    v136 = v35;
    v36 = *v124;
    v37 = v138;
    (*v124)(v33, v138);
    v38 = v126;
    sub_25B0E26E0();
    v39 = sub_25B0E2590();
    v41 = v40;
    v36(v38, v37);
    v42 = v136;
    v43 = v145;
    *&v147 = sub_25B0E2890();
    *(&v147 + 1) = v44;
    v135 = v34;
    *&v148 = v34;
    *(&v148 + 1) = v42;
    *&v149 = v39;
    *(&v149 + 1) = v41;
    v45 = v142;
    v46 = *v141;
    (*v141)(v142, v43, v146);

    v47 = v140;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v47 + 16);
    v150 = v49;
    v51 = sub_25B065EA4(v45);
    v52 = v49[2];
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      break;
    }

    v55 = v50;
    if (v49[3] >= v54)
    {
      if (v48)
      {
        v58 = v150;
        if (v50)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_25B06A5C4();
        v58 = v150;
        if (v55)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      sub_25B067A68(v54, v48);
      v56 = sub_25B065EA4(v142);
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_45;
      }

      v51 = v56;
      v58 = v150;
      if (v55)
      {
LABEL_13:
        v68 = (v58[7] + 32 * v51);
        *v68 = v135;
        v68[1] = v42;
        v68[2] = v39;
        v68[3] = v41;

        v64 = *v123;
        (*v123)(v142, v146);
        goto LABEL_14;
      }
    }

    v58[(v51 >> 6) + 8] |= 1 << v51;
    v59 = v129;
    v60 = v58[6] + *(v129 + 72) * v51;
    v119 = v39;
    v61 = v142;
    v62 = v146;
    v46(v60, v142, v146);
    v63 = (v58[7] + 32 * v51);
    *v63 = v135;
    v63[1] = v42;
    v63[2] = v119;
    v63[3] = v41;
    v64 = *(v59 + 8);
    v64(v61, v62);
    v65 = v58[2];
    v66 = __OFADD__(v65, 1);
    v67 = v65 + 1;
    if (v66)
    {
      goto LABEL_42;
    }

    v58[2] = v67;
LABEL_14:
    *(v140 + 16) = v58;
    v69 = v122;
    sub_25B0E26E0();
    v70 = *v130;
    v71 = v138;
    (*v130)(v137, v69, v138);
    v72 = v139;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v150 = v72;
    v74 = sub_25B065F78(&v147);
    v76 = v72[2];
    v77 = (v75 & 1) == 0;
    v66 = __OFADD__(v76, v77);
    v78 = v76 + v77;
    if (v66)
    {
      goto LABEL_41;
    }

    v79 = v75;
    if (v72[3] < v78)
    {
      sub_25B067274(v78, v73);
      v74 = sub_25B065F78(&v147);
      if ((v79 & 1) != (v80 & 1))
      {
        goto LABEL_44;
      }

LABEL_19:
      if ((v79 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }

    if (v73)
    {
      goto LABEL_19;
    }

    v85 = v74;
    sub_25B06A2DC();
    v74 = v85;
    if ((v79 & 1) == 0)
    {
LABEL_25:
      v82 = v150;
      v150[(v74 >> 6) + 8] |= 1 << v74;
      v86 = (v82[6] + 48 * v74);
      v87 = v149;
      v88 = v148;
      *v86 = v147;
      v86[1] = v88;
      v86[2] = v87;
      v70(v82[7] + *(v121 + 72) * v74, v137, v71);
      (*v120)(v144, v143);
      v64(v145, v146);
      v89 = v82[2];
      v66 = __OFADD__(v89, 1);
      v90 = v89 + 1;
      if (v66)
      {
        goto LABEL_43;
      }

      v82[2] = v90;
      goto LABEL_27;
    }

LABEL_20:
    v81 = v74;
    sub_25B073A40(&v147);
    v82 = v150;
    (*(v121 + 40))(v150[7] + *(v121 + 72) * v81, v137, v71);
    (*v120)(v144, v143);
    v64(v145, v146);
LABEL_27:
    v31 = v134;
    v139 = v82;
    if (!v30)
    {
LABEL_29:
      if (v112 <= v31 + 1)
      {
        v92 = v31 + 1;
      }

      else
      {
        v92 = v112;
      }

      v93 = v92 - 1;
      while (1)
      {
        v91 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v91 >= v112)
        {
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31600, &qword_25B0E7180);
          v84 = v128;
          (*(*(v83 - 8) + 56))(v128, 1, 1, v83);
          v30 = 0;
          goto LABEL_37;
        }

        v30 = *(v113 + 8 * v91);
        ++v31;
        if (v30)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  sub_25B0E3E80();
  __break(1u);
LABEL_45:
  result = sub_25B0E3E80();
  __break(1u);
  return result;
}

uint64_t sub_25B0720AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25B0720D0, 0, 0);
}

uint64_t sub_25B0720D0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_25B0721BC;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;
  v5 = MEMORY[0x277D84F78] + 8;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v3, v4, v5, 0, 0, &unk_25B0E70F8, v1, v6);
}

uint64_t sub_25B0721BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25B0722CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[8] = a2;
  v5 = sub_25B0E24A0();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B0723D0, 0, 0);
}

uint64_t sub_25B0723D0()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v17 = v1;
  v20 = sub_25B0E3940();
  v19 = *(*(v20 - 8) + 56);
  v19(v1, 1, 1, v20);
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v18 = *(v4 + 16);
  v14 = v6;
  v18(v2, v5, v6);
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = (v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v15 = *(v4 + 32);
  v15(v9 + v16, v2, v6);
  *(v9 + v8) = v7;
  sub_25B064B60(v17, &unk_25B0E7108, v9);
  sub_25B058448(v17, &qword_27FA31990, &qword_25B0E6920);
  v19(v17, 1, 1, v20);
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v18(v2, v5, v14);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v15(v11 + v16, v2, v14);
  *(v11 + v8) = v10;
  sub_25B064B60(v17, &unk_25B0E7118, v11);
  sub_25B058448(v17, &qword_27FA31990, &qword_25B0E6920);

  v12 = v0[1];

  return v12();
}

uint64_t sub_25B0726D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_25B0E24A0();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315E8, &qword_25B0E7168);
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315F0, &qword_25B0E7170);
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B072874, 0, 0);
}

uint64_t sub_25B072874()
{
  sub_25B0E27C0();
  sub_25B0E27A0();
  sub_25B0E27B0();

  sub_25B0E39A0();
  swift_beginAccess();
  v0[18] = 0;
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_25B072984;
  v2 = v0[12];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v2);
}

uint64_t sub_25B072984()
{

  return MEMORY[0x2822009F8](sub_25B072A80, 0, 0);
}

void sub_25B072A80()
{
  v57 = v0;
  v1 = v0 + 5;
  v2 = v0[5];
  if (v2)
  {
    if (qword_27FA30CB8 != -1)
    {
      swift_once();
    }

    v3 = v0[11];
    v4 = v0[8];
    v5 = v0[9];
    v6 = v0[6];
    v7 = sub_25B0E2970();
    __swift_project_value_buffer(v7, qword_27FA31560);
    v52 = *(v5 + 16);
    v52(v3, v6, v4);
    v8 = sub_25B0E2950();
    v9 = sub_25B0E3A50();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[11];
    v13 = v0[8];
    v12 = v0[9];
    if (v10)
    {
      v50 = v2;
      v14 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v56[0] = v47;
      *v14 = 136315138;
      sub_25B0739F8(&qword_27FA31830, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v15 = sub_25B0E3E20();
      v17 = v16;
      v55 = *(v12 + 8);
      v55(v11, v13);
      v18 = sub_25B04BE04(v15, v17, v56);
      v1 = v0 + 5;

      *(v14 + 4) = v18;
      _os_log_impl(&dword_25B03D000, v8, v9, "Library update for %s…", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x25F8613E0](v47, -1, -1);
      v19 = v14;
      v2 = v50;
      MEMORY[0x25F8613E0](v19, -1, -1);
    }

    else
    {

      v55 = *(v12 + 8);
      v55(v11, v13);
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v24 = v0[18];
      v25 = (Strong + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock);
      os_unfair_lock_lock((Strong + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock));
      sub_25B0714F8(&v25[2], v2);
      if (v24)
      {

        os_unfair_lock_unlock(v25);
      }

      else
      {

        os_unfair_lock_unlock(v25);

        v0[18] = 0;
        v44 = swift_task_alloc();
        v0[19] = v44;
        *v44 = v0;
        v44[1] = sub_25B072984;
        v45 = v0[12];

        MEMORY[0x2822003E8](v1, 0, 0, v45);
      }

      return;
    }

    v26 = v0[10];
    v27 = v0[8];
    v28 = v0[6];

    v52(v26, v28, v27);
    v29 = sub_25B0E2950();
    v53 = sub_25B0E3A30();
    v30 = os_log_type_enabled(v29, v53);
    v32 = v0[16];
    v31 = v0[17];
    v34 = v0[14];
    v33 = v0[15];
    v35 = v0[13];
    v54 = v0[12];
    v36 = v0[10];
    v37 = v0[8];
    if (v30)
    {
      v51 = v0[15];
      v38 = swift_slowAlloc();
      v49 = v34;
      v39 = swift_slowAlloc();
      v56[0] = v39;
      *v38 = 136315138;
      sub_25B0739F8(&qword_27FA31830, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v40 = sub_25B0E3E20();
      v48 = v31;
      v42 = v41;
      v55(v36, v37);
      v43 = sub_25B04BE04(v40, v42, v56);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_25B03D000, v29, v53, "Library - self vanished %s…", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x25F8613E0](v39, -1, -1);
      MEMORY[0x25F8613E0](v38, -1, -1);

      (*(v35 + 8))(v49, v54);
      (*(v32 + 8))(v48, v51);
    }

    else
    {

      v55(v36, v37);
      (*(v35 + 8))(v34, v54);
      (*(v32 + 8))(v31, v33);
    }
  }

  else
  {
    v21 = v0[16];
    v20 = v0[17];
    v22 = v0[15];
    (*(v0[13] + 8))(v0[14], v0[12]);
    (*(v21 + 8))(v20, v22);
  }

  v46 = v0[1];

  v46();
}

uint64_t sub_25B073068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_25B0E24A0();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315A8, &qword_25B0E7120);
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315B0, &qword_25B0E7128);
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B073204, 0, 0);
}

uint64_t sub_25B073204()
{
  sub_25B0E2790();
  sub_25B0E2770();
  sub_25B0E2780();

  sub_25B0E39A0();
  swift_beginAccess();
  v0[18] = 0;
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_25B073314;
  v2 = v0[12];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v2);
}

uint64_t sub_25B073314()
{

  return MEMORY[0x2822009F8](sub_25B073410, 0, 0);
}

void sub_25B073410()
{
  v57 = v0;
  v1 = v0 + 5;
  v2 = v0[5];
  if (v2)
  {
    if (qword_27FA30CB8 != -1)
    {
      swift_once();
    }

    v3 = v0[11];
    v4 = v0[8];
    v5 = v0[9];
    v6 = v0[6];
    v7 = sub_25B0E2970();
    __swift_project_value_buffer(v7, qword_27FA31560);
    v52 = *(v5 + 16);
    v52(v3, v6, v4);
    v8 = sub_25B0E2950();
    v9 = sub_25B0E3A50();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[11];
    v13 = v0[8];
    v12 = v0[9];
    if (v10)
    {
      v50 = v2;
      v14 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v56[0] = v47;
      *v14 = 136315138;
      sub_25B0739F8(&qword_27FA31830, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v15 = sub_25B0E3E20();
      v17 = v16;
      v55 = *(v12 + 8);
      v55(v11, v13);
      v18 = sub_25B04BE04(v15, v17, v56);
      v1 = v0 + 5;

      *(v14 + 4) = v18;
      _os_log_impl(&dword_25B03D000, v8, v9, "Gallery update for %s…", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x25F8613E0](v47, -1, -1);
      v19 = v14;
      v2 = v50;
      MEMORY[0x25F8613E0](v19, -1, -1);
    }

    else
    {

      v55 = *(v12 + 8);
      v55(v11, v13);
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v24 = v0[18];
      v25 = (Strong + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock);
      os_unfair_lock_lock((Strong + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock));
      sub_25B070944(&v25[2], v2);
      if (v24)
      {

        os_unfair_lock_unlock(v25);
      }

      else
      {

        os_unfair_lock_unlock(v25);

        v0[18] = 0;
        v44 = swift_task_alloc();
        v0[19] = v44;
        *v44 = v0;
        v44[1] = sub_25B073314;
        v45 = v0[12];

        MEMORY[0x2822003E8](v1, 0, 0, v45);
      }

      return;
    }

    v26 = v0[10];
    v27 = v0[8];
    v28 = v0[6];

    v52(v26, v28, v27);
    v29 = sub_25B0E2950();
    v53 = sub_25B0E3A30();
    v30 = os_log_type_enabled(v29, v53);
    v32 = v0[16];
    v31 = v0[17];
    v34 = v0[14];
    v33 = v0[15];
    v35 = v0[13];
    v54 = v0[12];
    v36 = v0[10];
    v37 = v0[8];
    if (v30)
    {
      v51 = v0[15];
      v38 = swift_slowAlloc();
      v49 = v34;
      v39 = swift_slowAlloc();
      v56[0] = v39;
      *v38 = 136315138;
      sub_25B0739F8(&qword_27FA31830, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v40 = sub_25B0E3E20();
      v48 = v31;
      v42 = v41;
      v55(v36, v37);
      v43 = sub_25B04BE04(v40, v42, v56);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_25B03D000, v29, v53, "Gallery - self vanished %s…", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x25F8613E0](v39, -1, -1);
      MEMORY[0x25F8613E0](v38, -1, -1);

      (*(v35 + 8))(v49, v54);
      (*(v32 + 8))(v48, v51);
    }

    else
    {

      v55(v36, v37);
      (*(v35 + 8))(v34, v54);
      (*(v32 + 8))(v31, v33);
    }
  }

  else
  {
    v21 = v0[16];
    v20 = v0[17];
    v22 = v0[15];
    (*(v0[13] + 8))(v0[14], v0[12]);
    (*(v21 + 8))(v20, v22);
  }

  v46 = v0[1];

  v46();
}

uint64_t sub_25B0739F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25B073A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315A0, &qword_25B0E70D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25B073AE0()
{
  result = qword_27FA312B0;
  if (!qword_27FA312B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA312B0);
  }

  return result;
}

uint64_t sub_25B073B2C@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315D8, &qword_25B0E7158) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315D0, &qword_25B0E7150) + 48);
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  v10 = *(a1 + 5);
  *a2 = *a1;
  *(a2 + 1) = v6;
  *(a2 + 2) = v7;
  *(a2 + 3) = v8;
  *(a2 + 4) = v9;
  *(a2 + 5) = v10;
  v11 = sub_25B0E26B0();
  (*(*(v11 - 8) + 16))(&a2[v5], &a1[v4], v11);
}

uint64_t sub_25B073C10@<X0>(uint64_t a1@<X8>)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315D8, &qword_25B0E7158);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v4 = &v44 - v3;
  v5 = sub_25B0E26B0();
  v56 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v55 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315E0, &qword_25B0E7160);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v44 - v12;
  v14 = *v1;
  v15 = v1[1];
  v17 = v1[2];
  v16 = v1[3];
  v18 = v1[4];
  v45 = v4;
  v58 = v17;
  if (v18)
  {
    v19 = v5;
    v53 = v10;
    v54 = a1;
    v20 = v16;
LABEL_11:
    v51 = v14;
    v52 = (v18 - 1) & v18;
    v24 = __clz(__rbit64(v18)) | (v20 << 6);
    v25 = *(v14 + 48);
    v26 = *(v14 + 56);
    v27 = (v25 + 48 * v24);
    v28 = v27[1];
    v48 = *v27;
    v49 = v28;
    v29 = v27[3];
    v47 = v27[2];
    v50 = v29;
    v30 = v27[5];
    v46 = v27[4];
    v31 = v55;
    v32 = v56;
    (*(v56 + 16))(v55, v26 + *(v56 + 72) * v24, v19);
    v33 = v59;
    v34 = *(v59 + 48);
    v35 = v47;
    *v13 = v48;
    *(v13 + 1) = v28;
    *(v13 + 2) = v35;
    *(v13 + 3) = v29;
    v36 = v33;
    *(v13 + 4) = v46;
    *(v13 + 5) = v30;
    (*(v32 + 32))(&v13[v34], v31, v19);
    v37 = v57;
    (*(v57 + 56))(v13, 0, 1, v36);

    v23 = v20;
    v39 = v51;
    v38 = v52;
    v10 = v53;
    a1 = v54;
LABEL_12:
    *v1 = v39;
    v1[1] = v15;
    v1[2] = v58;
    v1[3] = v23;
    v1[4] = v38;
    v40 = v1[5];
    sub_25B0745E4(v13, v10, &qword_27FA315E0, &qword_25B0E7160);
    v41 = 1;
    if ((*(v37 + 48))(v10, 1, v59) != 1)
    {
      v42 = v45;
      sub_25B0745E4(v10, v45, &qword_27FA315D8, &qword_25B0E7158);
      v40(v42);
      sub_25B058448(v42, &qword_27FA315D8, &qword_25B0E7158);
      v41 = 0;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315D0, &qword_25B0E7150);
    return (*(*(v43 - 8) + 56))(a1, v41, 1, v43);
  }

  else
  {
    v21 = (v17 + 64) >> 6;
    if (v21 <= v16 + 1)
    {
      v22 = v16 + 1;
    }

    else
    {
      v22 = (v17 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v37 = v57;
        v39 = v14;
        (*(v57 + 56))(v13, 1, 1, v59);
        v38 = 0;
        goto LABEL_12;
      }

      v18 = *(v15 + 8 * v20);
      ++v16;
      if (v18)
      {
        v19 = v5;
        v53 = v10;
        v54 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_25B074040(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return (v2 == v6 && v4 == v7 || (sub_25B0E3E30() & 1) != 0) && (v3 == v8 && v5 == v9 || (sub_25B0E3E30() & 1) != 0);
  }

  v10 = sub_25B0E3E30();
  result = 0;
  if (v10)
  {
    return (v2 == v6 && v4 == v7 || (sub_25B0E3E30() & 1) != 0) && (v3 == v8 && v5 == v9 || (sub_25B0E3E30() & 1) != 0);
  }

  return result;
}

uint64_t sub_25B074120(uint64_t a1)
{
  v4 = *(sub_25B0E24A0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25B0498DC;

  return sub_25B0720AC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_25B074218(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25B05859C;

  return sub_25B0722CC(a1, a2, v7, v6);
}

uint64_t sub_25B0742CC(uint64_t a1)
{
  v4 = *(sub_25B0E24A0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25B05859C;

  return sub_25B0726D8(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_16Tm()
{
  v1 = sub_25B0E24A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25B0744C4(uint64_t a1)
{
  v4 = *(sub_25B0E24A0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25B05859C;

  return sub_25B073068(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_25B0745E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25B07464C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v55 = sub_25B0E26B0();
  v10 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315C8, &qword_25B0E7148);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v43 - v14;
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v45 = a1;
  v46 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v47 = v17;
  v48 = 0;
  v49 = v20 & v18;
  v50 = a2;
  v51 = a3;
  v21 = (v10 + 32);
  v43[3] = v10 + 40;
  v44 = v10;

  v43[1] = a3;

  while (1)
  {
    sub_25B073C10(v15);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA315D0, &qword_25B0E7150);
    if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
    {
      sub_25B043EC8(v45);
    }

    v23 = *(v22 + 48);
    v24 = *(v15 + 1);
    v52 = *v15;
    v53 = v24;
    v54 = *(v15 + 2);
    v25 = *v21;
    (*v21)(v12, &v15[v23], v55);
    v26 = *a5;
    v28 = sub_25B065F78(&v52);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if (a4)
      {
        v35 = *a5;
        if ((v27 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_25B06A2DC();
        v35 = *a5;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      sub_25B073A40(&v52);
      (*(v44 + 40))(v35[7] + *(v44 + 72) * v28, v12, v55);
      a4 = 1;
    }

    else
    {
      sub_25B067274(v31, a4 & 1);
      v33 = sub_25B065F78(&v52);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_21;
      }

      v28 = v33;
      v35 = *a5;
      if (v32)
      {
        goto LABEL_5;
      }

LABEL_14:
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 48 * v28);
      v37 = v52;
      v38 = v54;
      v36[1] = v53;
      v36[2] = v38;
      *v36 = v37;
      v25((v35[7] + *(v44 + 72) * v28), v12, v55);
      v39 = v35[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_20;
      }

      v35[2] = v41;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_25B0E3E80();
  __break(1u);
  return result;
}

unint64_t sub_25B0749DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31608;
  if (!qword_27FA31608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31608);
  }

  return result;
}

uint64_t sub_25B074A30()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31610);
  __swift_project_value_buffer(v0, qword_27FA31610);
  return sub_25B0E2960();
}

BOOL sub_25B074AB0()
{
  result = sub_25B074AD4();
  byte_27FA39980 = result;
  return result;
}

BOOL sub_25B074AD4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_25B0E3730();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 1;
  }

  v3 = sub_25B0E3730();
  v4 = [v2 integerForKey_];

  return v4 != 1;
}

uint64_t sub_25B074B9C()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for ReplicatedSnapshotProvider(0);
  v1[4] = swift_task_alloc();
  v1[5] = sub_25B0E3900();
  v1[6] = sub_25B0E38F0();
  v2 = swift_task_alloc();
  v1[7] = v2;
  *v2 = v1;
  v2[1] = sub_25B074C7C;

  return sub_25B074FA0();
}

uint64_t sub_25B074C7C(uint64_t a1)
{
  *(*v1 + 64) = a1;

  v3 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B074DC0, v3, v2);
}

uint64_t sub_25B074DC0()
{
  v19 = v0;
  v1 = v0[8];

  if (v1)
  {
    if (qword_27FA30CC8 != -1)
    {
      swift_once();
    }

    v2 = v0[4];
    v3 = v0[2];
    v4 = sub_25B0E2970();
    __swift_project_value_buffer(v4, qword_27FA31610);
    sub_25B079F7C(v3, v2);
    v5 = sub_25B0E2950();
    v6 = sub_25B0E3A50();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[4];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315138;
      v11 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v13 = v12;
      sub_25B079F20(v8);
      v14 = sub_25B04BE04(v11, v13, &v18);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_25B03D000, v5, v6, "Has preloaded snapshot for %s…", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x25F8613E0](v10, -1, -1);
      MEMORY[0x25F8613E0](v9, -1, -1);
    }

    else
    {

      sub_25B079F20(v8);
    }
  }

  v15 = v0[1];
  v16 = v0[8];

  return v15(v16);
}

void sub_25B074FC0()
{
  type metadata accessor for ReplicatedSnapshotProvider(0);
  v1 = sub_25B0E2730();
  v2 = [v1 device];

  if (v2)
  {
    v3 = sub_25B0E2760();
    v5 = v4;

    v0[15] = v5;
    if (v5)
    {
      v6 = swift_task_alloc();
      v0[16] = v6;
      *v6 = v0;
      v6[1] = sub_25B0750FC;
      v7 = v0[14];

      sub_25B077594((v0 + 2), v7, v3, v5);
    }

    else
    {
      v8 = v0[1];

      v8(0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25B0750FC()
{

  return MEMORY[0x2822009F8](sub_25B075214, 0, 0);
}

uint64_t sub_25B075214()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 152) = v3;
  *(v0 + 160) = v4;
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  *(v0 + 168) = v6;
  *(v0 + 176) = v5;
  if (v2)
  {
    *(v0 + 64) = v1;
    *(v0 + 72) = v2;
    *(v0 + 80) = v3;
    *(v0 + 88) = v4;
    *(v0 + 96) = v6;
    *(v0 + 104) = v5;
    type metadata accessor for PreloadedSnapshot();
    swift_allocObject();

    v7 = v6;
    v8 = v5;
    v9 = swift_task_alloc();
    *(v0 + 184) = v9;
    *v9 = v0;
    v9[1] = sub_25B075364;

    return sub_25B060778((v0 + 64));
  }

  else
  {
    v11 = *(v0 + 8);

    return v11(0);
  }
}

uint64_t sub_25B075364(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_25B0754FC;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_25B07548C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25B07548C()
{
  v1 = *(v0 + 200);
  sub_25B04C538(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25B0754FC()
{
  v1 = *(v0 + 192);
  sub_25B04C538(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_25B075574@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31820, &unk_25B0E6910);
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = &v32 - v4;
  v5 = type metadata accessor for ReplicatedSnapshotProvider(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v8 = *(v35 - 8);
  v9 = MEMORY[0x28223BE20](v35);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  sub_25B084E20();
  __swift_project_boxed_opaque_existential_1((v1 + *(v5 + 28)), *(v1 + *(v5 + 28) + 24));
  sub_25B06E878(v11);
  if (qword_27FA30CC8 != -1)
  {
    swift_once();
  }

  v14 = sub_25B0E2970();
  __swift_project_value_buffer(v14, qword_27FA31610);
  v37 = v1;
  sub_25B079F7C(v1, v7);
  v15 = sub_25B0E2950();
  v16 = sub_25B0E3A50();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33 = v3;
    v20 = v19;
    v39 = v19;
    *v18 = 136315138;
    v21 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
    v23 = v22;
    sub_25B079F20(v7);
    v24 = sub_25B04BE04(v21, v23, &v39);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_25B03D000, v15, v16, "Starting updates for %s…", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v25 = v20;
    v3 = v33;
    MEMORY[0x25F8613E0](v25, -1, -1);
    v26 = v18;
    a1 = v34;
    MEMORY[0x25F8613E0](v26, -1, -1);
  }

  else
  {

    v27 = sub_25B079F20(v7);
  }

  MEMORY[0x28223BE20](v27);
  v28 = v36;
  *(&v32 - 4) = v37;
  *(&v32 - 3) = v13;
  *(&v32 - 2) = v11;
  (*(v28 + 104))(v38, *MEMORY[0x277D85778], v3);
  sub_25B0E39C0();
  v29 = v35;
  (*(v8 + 56))(a1, 0, 1, v35);
  v30 = *(v8 + 8);
  v30(v11, v29);
  return (v30)(v13, v29);
}

uint64_t sub_25B075998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v45 = a2;
  v41 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v50 = *(v6 - 8);
  v51 = v6;
  v52 = *(v50 + 64);
  v7 = MEMORY[0x28223BE20](v6);
  v58 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v40 = v12;
  v13 = *(v12 - 8);
  v44 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = type metadata accessor for ReplicatedSnapshotProvider(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v19;
  sub_25B079F7C(a2, v19);
  v43 = *(v13 + 16);
  v43(v15, a1, v12);
  v20 = *(v17 + 80);
  v21 = (v20 + 16) & ~v20;
  v22 = *(v13 + 80);
  v46 = v18 + v22;
  v23 = (v18 + v22 + v21) & ~v22;
  v47 = v20 | v22 | 7;
  v24 = swift_allocObject();
  sub_25B049E94(v19, v24 + v21);
  v25 = *(v13 + 32);
  v48 = v13 + 32;
  v49 = v25;
  v42 = v15;
  v26 = v40;
  v25(v24 + v23, v15, v40);
  v27 = v41;
  sub_25B0E3960();
  v28 = sub_25B0E3940();
  (*(*(v28 - 8) + 56))(v56, 1, 1, v28);
  v30 = v50;
  v29 = v51;
  v31 = *(v50 + 16);
  v31(v57, v53, v51);
  sub_25B079F7C(v45, v55);
  v43(v15, v27, v26);
  v31(v58, v54, v29);
  v32 = *(v30 + 80);
  v33 = (v32 + 32) & ~v32;
  v34 = (v52 + v20 + v33) & ~v20;
  v35 = (v46 + v34) & ~v22;
  v36 = (v44 + v32 + v35) & ~v32;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  v38 = *(v30 + 32);
  v38(v37 + v33, v57, v29);
  sub_25B049E94(v55, v37 + v34);
  v49(v37 + v35, v42, v26);
  v38(v37 + v36, v58, v29);
  sub_25B052F48(0, 0, v56, &unk_25B0E7300, v37);
}

uint64_t sub_25B075E44(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ReplicatedSnapshotProvider(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FA30CC8 != -1)
  {
    swift_once();
  }

  v6 = sub_25B0E2970();
  __swift_project_value_buffer(v6, qword_27FA31610);
  sub_25B079F7C(a2, v5);
  v7 = sub_25B0E2950();
  v8 = sub_25B0E3A50();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
    v13 = v12;
    sub_25B079F20(v5);
    v14 = sub_25B04BE04(v11, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_25B03D000, v7, v8, "Terminating updates for %s…", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x25F8613E0](v10, -1, -1);
    MEMORY[0x25F8613E0](v9, -1, -1);
  }

  else
  {

    sub_25B079F20(v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  return sub_25B0E3990();
}

uint64_t sub_25B076034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_25B07605C, 0, 0);
}

uint64_t sub_25B07605C()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_25B07614C;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D84F78] + 8;
  v6 = MEMORY[0x277D84F78] + 8;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v4, v5, v6, 0, 0, &unk_25B0E7310, v1, v7);
}

uint64_t sub_25B07614C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25B07625C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v6[9] = *(v8 + 64);
  v6[10] = swift_task_alloc();
  v9 = *(type metadata accessor for ReplicatedSnapshotProvider(0) - 8);
  v6[11] = v9;
  v6[12] = *(v9 + 64);
  v6[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v6[14] = v10;
  v11 = *(v10 - 8);
  v6[15] = v11;
  v6[16] = *(v11 + 64);
  v6[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B076440, 0, 0);
}

uint64_t sub_25B076440()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v23 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v16 = v4;
  v6 = v0[12];
  v21 = v0[11];
  v30 = v0[10];
  v7 = v0[7];
  v17 = v0[8];
  v8 = v0[5];
  v29 = v0[6];
  v9 = v0[4];
  v24 = v0[3];
  v28 = sub_25B0E3940();
  v27 = *(*(v28 - 8) + 56);
  v27(v1, 1, 1, v28);
  v26 = *(v3 + 16);
  v26(v2, v24, v4);
  v10 = v5;
  sub_25B079F7C(v9, v5);
  v25 = *(v17 + 16);
  v25(v30, v8, v7);
  v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v20 = (v23 + *(v21 + 80) + v19) & ~*(v21 + 80);
  v11 = (v6 + *(v17 + 80) + v20) & ~*(v17 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v22 = *(v3 + 32);
  v22(v12 + v19, v2, v16);
  sub_25B049E94(v10, v12 + v20);
  v18 = *(v17 + 32);
  v18(v12 + v11, v30, v7);
  sub_25B064B60(v1, &unk_25B0E7320, v12);
  sub_25B058448(v1, &qword_27FA31990, &qword_25B0E6920);
  v27(v1, 1, 1, v28);
  v26(v2, v29, v16);
  sub_25B079F7C(v9, v10);
  v25(v30, v8, v7);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v22(v13 + v19, v2, v16);
  sub_25B049E94(v10, v13 + v20);
  v18(v13 + v11, v30, v7);
  sub_25B064B60(v1, &unk_25B0E7330, v13);
  sub_25B058448(v1, &qword_27FA31990, &qword_25B0E6920);

  v14 = v0[1];

  return v14();
}

uint64_t sub_25B07680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = type metadata accessor for ReplicatedSnapshotProvider(0);
  v6[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B076974, 0, 0);
}

uint64_t sub_25B076974()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  sub_25B0E39A0();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_25B076A40;
  v2 = *(v0 + 80);

  return MEMORY[0x2822003E8](v0 + 112, 0, 0, v2);
}

uint64_t sub_25B076A40()
{

  return MEMORY[0x2822009F8](sub_25B076B3C, 0, 0);
}

uint64_t sub_25B076B3C()
{
  v22 = v0;
  if (*(v0 + 112) & 1) != 0 || (sub_25B0E39F0())
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_27FA30CC8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 72);
    v4 = *(v0 + 24);
    v5 = sub_25B0E2970();
    __swift_project_value_buffer(v5, qword_27FA31610);
    sub_25B079F7C(v4, v3);
    v6 = sub_25B0E2950();
    v7 = sub_25B0E3A50();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 72);
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      v12 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v14 = v13;
      sub_25B079F20(v9);
      v15 = sub_25B04BE04(v12, v14, &v21);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_25B03D000, v6, v7, "Face updates for %s…", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x25F8613E0](v11, -1, -1);
      MEMORY[0x25F8613E0](v10, -1, -1);
    }

    else
    {

      sub_25B079F20(v9);
    }

    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v18 = *(v0 + 40);
    sub_25B0E3970();
    (*(v17 + 8))(v16, v18);
    v19 = swift_task_alloc();
    *(v0 + 104) = v19;
    *v19 = v0;
    v19[1] = sub_25B076A40;
    v20 = *(v0 + 80);

    return MEMORY[0x2822003E8](v0 + 112, 0, 0, v20);
  }
}

uint64_t sub_25B076DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = type metadata accessor for ReplicatedSnapshotProvider(0);
  v6[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B076F64, 0, 0);
}

uint64_t sub_25B076F64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  sub_25B0E39A0();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_25B077030;
  v2 = *(v0 + 80);

  return MEMORY[0x2822003E8](v0 + 112, 0, 0, v2);
}

uint64_t sub_25B077030()
{

  return MEMORY[0x2822009F8](sub_25B07712C, 0, 0);
}

uint64_t sub_25B07712C()
{
  v22 = v0;
  if (*(v0 + 112) & 1) != 0 || (sub_25B0E39F0())
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_27FA30CC8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 72);
    v4 = *(v0 + 24);
    v5 = sub_25B0E2970();
    __swift_project_value_buffer(v5, qword_27FA31610);
    sub_25B079F7C(v4, v3);
    v6 = sub_25B0E2950();
    v7 = sub_25B0E3A50();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 72);
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      v12 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v14 = v13;
      sub_25B079F20(v9);
      v15 = sub_25B04BE04(v12, v14, &v21);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_25B03D000, v6, v7, "Listener update for %s…", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x25F8613E0](v11, -1, -1);
      MEMORY[0x25F8613E0](v10, -1, -1);
    }

    else
    {

      sub_25B079F20(v9);
    }

    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v18 = *(v0 + 40);
    sub_25B0E3970();
    (*(v17 + 8))(v16, v18);
    v19 = swift_task_alloc();
    *(v0 + 104) = v19;
    *v19 = v0;
    v19[1] = sub_25B077030;
    v20 = *(v0 + 80);

    return MEMORY[0x2822003E8](v0 + 112, 0, 0, v20);
  }
}

uint64_t sub_25B0773EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_25B07747C;

  return sub_25B074B9C();
}

uint64_t sub_25B07747C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_25B077594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for ReplicatedSnapshotProvider(0);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v5 = sub_25B0E2870();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_25B0E28B0();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31B50, &qword_25B0E72F0);
  v4[15] = swift_task_alloc();
  v7 = sub_25B0E24A0();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B077790, 0, 0);
}

uint64_t sub_25B077790(uint64_t a1)
{
  v103 = v1;
  if (**(v1 + 24))
  {
    *(v1 + 160) = sub_25B0E2730();
    sub_25B0E3900();
    *(v1 + 168) = sub_25B0E38F0();
    v2 = sub_25B0E3850();
    v4 = v3;
    v5 = sub_25B078038;
    v6 = v2;
    v7 = v4;

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  v8 = *(v1 + 128);
  v9 = *(v1 + 136);
  v10 = *(v1 + 120);
  _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
  sub_25B0E2450();

  v11 = &qword_27FA31000;
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_25B058448(*(v1 + 120), &qword_27FA31B50, &qword_25B0E72F0);
    goto LABEL_7;
  }

  v37 = *(v1 + 144);
  v38 = *(v1 + 152);
  v39 = *(v1 + 128);
  v40 = *(v1 + 136);
  v41 = *(v1 + 112);
  v42 = *(v1 + 48);
  v43 = *(v1 + 24);
  (*(v40 + 32))(v38, *(v1 + 120), v39);
  v44 = __swift_project_boxed_opaque_existential_1((v43 + *(v42 + 28)), *(v43 + *(v42 + 28) + 24));
  (*(v40 + 16))(v37, v38, v39);

  sub_25B0E2880();
  v45 = (*v44 + OBJC_IVAR____TtC15NanoFaceGallery14DaemonListener_lock);
  os_unfair_lock_lock(v45);
  sub_25B06EF64(&v45[2], v41, &v99);
  os_unfair_lock_unlock(v45);
  v46 = v100;
  v47 = *(v1 + 152);
  v48 = *(v1 + 136);
  v92 = *(v1 + 128);
  v50 = *(v1 + 104);
  v49 = *(v1 + 112);
  v51 = *(v1 + 96);
  if (!v100)
  {
    (*(v50 + 8))(*(v1 + 112), *(v1 + 96));
    (*(v48 + 8))(v47, v92);
    goto LABEL_18;
  }

  v88 = v101;
  v89 = v99;
  loga = v102;
  v52 = sub_25B0E2890();
  sub_25B06F3F4(&v99, v52, v53, &v95);

  (*(v50 + 8))(v49, v51);
  (*(v48 + 8))(v47, v92);
  sub_25B079FE0(v89, v46, v88, loga);
  v23 = v96;
  if (!v96)
  {
LABEL_18:
    v11 = &qword_27FA31000;
LABEL_7:
    v12 = *(v1 + 88);
    v13 = (*(v1 + 24) + *(*(v1 + 48) + 28));
    v14 = __swift_project_boxed_opaque_existential_1(v13, v13[3]);

    _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
    sub_25B0E2850();
    v15 = (*v14 + v11[176]);
    os_unfair_lock_lock(v15);
    sub_25B06FBB8(&v15[2], v12, &v99);
    os_unfair_lock_unlock(v15);
    v16 = v100;
    v18 = *(v1 + 80);
    v17 = *(v1 + 88);
    if (v100)
    {
      v93 = v99;
      v19 = v101;
      v20 = v102;
      v90 = *(v1 + 72);
      v21 = sub_25B0E2860();
      sub_25B06F3F4(&v99, v21, v22, &v95);

      (*(v18 + 8))(v17, v90);
      sub_25B079FE0(v93, v16, v19, v20);
      v16 = v95;
      v23 = v96;
      v24 = v97;
      v25 = v98;
      if (v96)
      {
        v26 = *(&v97 + 1);
        v91 = v98;
        v94 = v97;

        sub_25B04C4D8(v16, v23, v94, v26, v91, *(&v91 + 1));
        v27 = sub_25B0E2730();
        v28 = [v27 unsafeDailySnapshotKey];

        if (v28)
        {
          v29 = sub_25B0E3740();
          v31 = v30;

          if (v94 == v29 && v26 == v31)
          {

            v32 = v16;
            v33 = v23;
            v34 = v94;
            v35 = v26;
            v36 = v91;
LABEL_22:
            sub_25B04C538(v32, v33, v34, v35, v36, *(&v91 + 1));
LABEL_29:
            v25 = v91;
            v24 = v94;
            goto LABEL_30;
          }

          v56 = sub_25B0E3E30();

          v55 = v91;
          if (v56)
          {
            v32 = v16;
            v33 = v23;
            v34 = v94;
            v35 = v26;
            v36 = v91;
            goto LABEL_22;
          }
        }

        else
        {

          v55 = v91;
        }

        if (qword_27FA30CC8 != -1)
        {
          swift_once();
        }

        v58 = *(v1 + 56);
        v57 = *(v1 + 64);
        v59 = *(v1 + 24);
        v60 = sub_25B0E2970();
        __swift_project_value_buffer(v60, qword_27FA31610);
        sub_25B079F7C(v59, v57);
        sub_25B079F7C(v59, v58);

        v61 = v55;
        v62 = *(&v91 + 1);
        v63 = sub_25B0E2950();
        v64 = sub_25B0E3A50();
        sub_25B04C538(v16, v23, v94, v26, v55, *(&v91 + 1));
        v65 = os_log_type_enabled(v63, v64);
        v66 = *(v1 + 64);
        if (v65)
        {
          v85 = v64;
          log = v63;
          v67 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v95 = v84;
          *v67 = 136315650;

          v68 = sub_25B04BE04(v94, v26, &v95);

          *(v67 + 4) = v68;
          *(v67 + 12) = 2080;
          v69 = sub_25B0E2730();
          v70 = [v69 unsafeDailySnapshotKey];

          if (!v70)
          {
            __break(1u);
            return MEMORY[0x2822009F8](v5, v6, v7);
          }

          v72 = *(v1 + 56);
          v71 = *(v1 + 64);
          v73 = sub_25B0E3740();
          v75 = v74;

          sub_25B079F20(v71);
          v76 = sub_25B04BE04(v73, v75, &v95);

          *(v67 + 14) = v76;
          *(v67 + 22) = 2080;
          v77 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
          v79 = v78;
          sub_25B079F20(v72);
          v80 = sub_25B04BE04(v77, v79, &v95);

          *(v67 + 24) = v80;
          _os_log_impl(&dword_25B03D000, log, v85, "%s Key does not match %s for %s…", v67, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x25F8613E0](v84, -1, -1);
          MEMORY[0x25F8613E0](v67, -1, -1);

          sub_25B04C538(v16, v23, v94, v26, v91, *(&v91 + 1));
        }

        else
        {
          v81 = *(v1 + 56);

          sub_25B04C538(v16, v23, v94, v26, v55, *(&v91 + 1));
          sub_25B079F20(v81);
          sub_25B079F20(v66);
        }

        goto LABEL_29;
      }
    }

    else
    {
      (*(v18 + 8))(*(v1 + 88), *(v1 + 72));
      v23 = 0;
      v24 = 0uLL;
      v25 = 0uLL;
    }

LABEL_30:
    v54 = *(v1 + 16);
    *v54 = v16;
    goto LABEL_31;
  }

  v54 = *(v1 + 16);
  v24 = v97;
  v25 = v98;
  *v54 = v95;
LABEL_31:
  *(v54 + 8) = v23;
  *(v54 + 16) = v24;
  *(v54 + 32) = v25;

  v82 = *(v1 + 8);

  return v82();
}

uint64_t sub_25B078038()
{
  v1 = v0[20];

  v2 = [v1 dailySnapshotKey];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v2;
  v6 = v0[20];
  v7 = sub_25B0E3740();
  v9 = v8;

  v2 = [v6 unsafeDailySnapshotKey];
  if (!v2)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  v10 = v2;
  v11 = v0[20];
  v0[22] = v9;
  v0[23] = v7;
  v12 = sub_25B0E3740();
  v14 = v13;

  v0[24] = v12;
  v0[25] = v14;
  v2 = sub_25B078124;
  v3 = 0;
  v4 = 0;

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_25B078124()
{
  v12 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[5];
  v6 = v0[4];
  v7 = v0[2];
  v8 = (v0[3] + *(v0[6] + 28));
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v11[0] = v4;
  v11[1] = v3;
  v11[2] = v2;
  v11[3] = v1;
  sub_25B06F3F4(v11, v6, v5, v7);

  v9 = v0[1];

  return v9();
}

uint64_t IdentifiableFace.replicatedKeyStream.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31628, "vs");
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-v3];
  v7 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31630, &qword_25B0EA100);
  (*(v2 + 104))(v4, *MEMORY[0x277D85778], v1);
  return sub_25B0E39C0();
}

uint64_t sub_25B078350(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v25 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31638, "rs");
  v2 = *(v23 - 8);
  v26 = *(v2 + 64);
  MEMORY[0x28223BE20](v23);
  v4 = v22 - v3;
  v5 = sub_25B0E2750();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_25B0E3900();
  v22[1] = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_25B0E3940();
  v13 = *(*(v12 - 8) + 56);
  v22[0] = v11;
  v13(v11, 1, 1, v12);
  (*(v6 + 16))(v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v5);
  v14 = v2;
  v15 = *(v2 + 16);
  v16 = v23;
  v15(v4, v25, v23);
  v17 = sub_25B0E38F0();
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v19 = (v7 + *(v14 + 80) + v18) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = MEMORY[0x277D85700];
  (*(v6 + 32))(v20 + v18, v8, v5);
  (*(v14 + 32))(v20 + v19, v4, v16);
  sub_25B052F48(0, 0, v22[0], &unk_25B0E7290, v20);
}

uint64_t sub_25B0786A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0);
  v5[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31640, &qword_25B0E72B0);
  v5[29] = v8;
  v5[30] = *(v8 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v9 = sub_25B0E24A0();
  v5[33] = v9;
  v5[34] = *(v9 - 8);
  v5[35] = swift_task_alloc();
  v10 = sub_25B0E2750();
  v5[36] = v10;
  v5[37] = *(v10 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = type metadata accessor for ReplicatedSnapshotProvider(0);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = sub_25B0E3900();
  v5[43] = sub_25B0E38F0();
  v12 = sub_25B0E3850();
  v5[44] = v12;
  v5[45] = v11;

  return MEMORY[0x2822009F8](sub_25B0789B4, v12, v11);
}

uint64_t sub_25B0789B4()
{
  v1 = *(*(v0 + 296) + 16);
  v1(*(v0 + 304), *(v0 + 160), *(v0 + 288));
  if (qword_27FA30CC0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 328);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 288);
  v6 = *(v0 + 272);
  v22 = *(v0 + 296);
  v23 = *(v0 + 280);
  v20 = *(v0 + 264);
  v7 = qword_27FA39978;
  v8 = &v2[v3[7]];
  v8[3] = type metadata accessor for DaemonListener(0);
  v8[4] = &off_286C5A660;
  *v8 = v7;
  v9 = v3[5];

  sub_25B0E2490();
  v21 = v4;
  v10 = sub_25B0E2730();
  *v2 = 0;
  v11 = v3[6];
  *(v0 + 520) = v11;
  v1(&v2[v11], v4, v5);
  v12 = *(v6 + 16);
  v12(v23, &v2[v9], v20);
  v13 = type metadata accessor for FaceObserver(0);
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_continuations];
  *v15 = 0;
  *(v15 + 1) = MEMORY[0x277D84F90];
  *&v14[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_face] = v10;
  v12(&v14[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_instanceIdentifier], v23, v20);
  *(v0 + 112) = v14;
  *(v0 + 120) = v13;
  v16 = v10;
  v17 = objc_msgSendSuper2((v0 + 112), sel_init);
  [v16 addObserver_];
  (*(v6 + 8))(v23, v20);

  (*(v22 + 8))(v21, v5);
  *&v2[v3[8]] = v17;
  v18 = swift_task_alloc();
  *(v0 + 368) = v18;
  *v18 = v0;
  v18[1] = sub_25B078C48;

  return sub_25B074B9C();
}

uint64_t sub_25B078C48(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 376) = a1;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);

  return MEMORY[0x2822009F8](sub_25B078D70, v4, v3);
}

uint64_t sub_25B078D70()
{
  v1 = v0[47];
  if (v1)
  {
    v2 = *(v1 + 40);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[30];
  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[25];
  v0[16] = v2;
  v0[17] = v3;
  v0[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31638, "rs");
  sub_25B0E3980();
  v10 = *(v6 + 8);
  v0[49] = v10;
  v0[50] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v5);
  sub_25B075574(v9);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    v11 = v0[25];

    sub_25B058448(v11, &qword_27FA313B8, &unk_25B0E72A0);
    sub_25B0E3990();

    sub_25B079F20(v0[41]);

    v12 = v0[1];

    return v12();
  }

  else
  {
    (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
    sub_25B0E39A0();
    v14 = sub_25B0E38F0();
    v0[51] = v14;
    v15 = swift_task_alloc();
    v0[52] = v15;
    *v15 = v0;
    v15[1] = sub_25B079018;
    v16 = v0[22];
    v17 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 524, v14, v17, v16);
  }
}

uint64_t sub_25B079018()
{
  v1 = *v0;

  v2 = *(v1 + 360);
  v3 = *(v1 + 352);

  return MEMORY[0x2822009F8](sub_25B07915C, v3, v2);
}

uint64_t sub_25B07915C(uint64_t a1)
{
  if (*(v1 + 524) == 1)
  {
    v3 = *(v1 + 216);
    v2 = *(v1 + 224);
    v4 = *(v1 + 208);
    (*(*(v1 + 184) + 8))(*(v1 + 192), *(v1 + 176));

    sub_25B0E3990();

    (*(v3 + 8))(v2, v4);
    sub_25B079F20(*(v1 + 328));

    v5 = *(v1 + 8);

    return v5();
  }

  else
  {
    *(v1 + 424) = sub_25B0E38F0();

    return MEMORY[0x2822009F8](sub_25B0792F4, 0, 0);
  }
}

uint64_t sub_25B0792F4(uint64_t a1)
{
  v2 = sub_25B0E2730();
  v3 = [v2 device];

  if (!v3)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v7 = sub_25B0E2760();
  v9 = v8;

  v1[54] = v9;
  if (!v9)
  {
    v13 = sub_25B0E3850();
    v15 = v14;
    v4 = sub_25B07AB8C;
    v5 = v13;
    v6 = v15;

    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v10 = swift_task_alloc();
  v1[55] = v10;
  *v10 = v1;
  v10[1] = sub_25B079448;
  v11 = v1[41];

  return sub_25B077594((v1 + 2), v11, v7, v9);
}

uint64_t sub_25B079448()
{

  return MEMORY[0x2822009F8](sub_25B079560, 0, 0);
}

uint64_t sub_25B079560()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 448) = v1;
  *(v0 + 456) = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 464) = v3;
  *(v0 + 472) = v4;
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  *(v0 + 480) = v6;
  *(v0 + 488) = v5;
  if (v2)
  {
    *(v0 + 64) = v1;
    *(v0 + 72) = v2;
    *(v0 + 80) = v3;
    *(v0 + 88) = v4;
    *(v0 + 96) = v6;
    *(v0 + 104) = v5;
    type metadata accessor for PreloadedSnapshot();
    swift_allocObject();

    v7 = v6;
    v8 = v5;
    v9 = swift_task_alloc();
    *(v0 + 496) = v9;
    *v9 = v0;
    v9[1] = sub_25B0796D0;

    return sub_25B060778((v0 + 64));
  }

  else
  {
    v12 = sub_25B0E3850();

    return MEMORY[0x2822009F8](sub_25B07AB8C, v12, v11);
  }
}

uint64_t sub_25B0796D0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 504) = a1;
  *(v3 + 512) = v1;

  if (v1)
  {
    v4 = sub_25B0797E4;
  }

  else
  {
    v4 = sub_25B0798EC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25B0797E4()
{
  v1 = *(v0 + 512);
  sub_25B04C538(*(v0 + 448), *(v0 + 456), *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));

  v3 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B079888, v3, v2);
}

uint64_t sub_25B079888()
{

  v1 = *(v0 + 352);
  v2 = *(v0 + 360);

  return MEMORY[0x2822009F8](sub_25B079B48, v1, v2);
}

uint64_t sub_25B0798EC()
{
  sub_25B04C538(*(v0 + 448), *(v0 + 456), *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));
  v2 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B07997C, v2, v1);
}

uint64_t sub_25B07997C()
{
  v18 = v0;

  if (qword_27FA30CC8 != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v2 = v0[41];
  v3 = sub_25B0E2970();
  __swift_project_value_buffer(v3, qword_27FA31610);
  sub_25B079F7C(v2, v1);
  v4 = sub_25B0E2950();
  v5 = sub_25B0E3A50();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[40];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
    v12 = v11;
    sub_25B079F20(v7);
    v13 = sub_25B04BE04(v10, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_25B03D000, v4, v5, "Has preloaded snapshot for %s…", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x25F8613E0](v9, -1, -1);
    MEMORY[0x25F8613E0](v8, -1, -1);
  }

  else
  {

    sub_25B079F20(v7);
  }

  v14 = v0[44];
  v15 = v0[45];

  return MEMORY[0x2822009F8](sub_25B079C48, v14, v15);
}

uint64_t sub_25B079B48()
{
  v1 = v0[49];
  v2 = v0[31];
  v3 = v0[29];
  v0[19] = 0;
  v0[18] = 0;
  sub_25B0E3980();
  v1(v2, v3);
  v4 = sub_25B0E38F0();
  v0[51] = v4;
  v5 = swift_task_alloc();
  v0[52] = v5;
  *v5 = v0;
  v5[1] = sub_25B079018;
  v6 = v0[22];
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 524, v4, v7, v6);
}

uint64_t sub_25B079C48()
{
  v1 = v0[63];
  if (v1)
  {
    v2 = *(v1 + 40);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = v0[49];
  v5 = v0[31];
  v6 = v0[29];
  v0[18] = v2;
  v0[19] = v3;
  sub_25B0E3980();

  v4(v5, v6);
  v7 = sub_25B0E38F0();
  v0[51] = v7;
  v8 = swift_task_alloc();
  v0[52] = v8;
  *v8 = v0;
  v8[1] = sub_25B079018;
  v9 = v0[22];
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 524, v7, v10, v9);
}

uint64_t sub_25B079D78(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_25B0E2750() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31638, "rs") - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25B0498DC;

  return sub_25B0786A8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t type metadata accessor for ReplicatedSnapshotProvider(uint64_t a1)
{
  result = qword_27FA31648;
  if (!qword_27FA31648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B079F20(uint64_t a1)
{
  v2 = type metadata accessor for ReplicatedSnapshotProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B079F7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatedSnapshotProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25B079FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_25B07A030(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicatedSnapshotProvider(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);

  return sub_25B075E44(a1, v1 + v4);
}

uint64_t sub_25B07A110(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(type metadata accessor for ReplicatedSnapshotProvider(0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v6 + v13) & ~v6;
  v15 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_25B05859C;

  return sub_25B076034(a1, v15, v16, v1 + v7, v1 + v10, v1 + v13, v1 + v14);
}

uint64_t sub_25B07A308(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25B05859C;

  return sub_25B07625C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_25B07A3D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ReplicatedSnapshotProvider(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25B05859C;

  return sub_25B07680C(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t objectdestroy_16Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for ReplicatedSnapshotProvider(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v10 = *(v21 - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v20 = *(v10 + 64);
  v13 = v3 | v7 | v11;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v14 = v0 + v8;
  v15 = v6[7];
  v16 = sub_25B0E24A0();
  (*(*(v16 - 8) + 8))(v14 + v15, v16);
  v17 = v6[8];
  v18 = sub_25B0E2750();
  (*(*(v18 - 8) + 8))(v14 + v17, v18);
  __swift_destroy_boxed_opaque_existential_1((v14 + v6[9]));

  (*(v10 + 8))(v0 + v12, v21);

  return MEMORY[0x2821FE8E8](v0, v12 + v20, v13 | 7);
}

uint64_t sub_25B07A808(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ReplicatedSnapshotProvider(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25B05859C;

  return sub_25B076DFC(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_25B07A9FC(uint64_t a1)
{
  result = sub_25B0E24A0();
  if (v2 <= 0x3F)
  {
    result = sub_25B0E2750();
    if (v3 <= 0x3F)
    {
      result = sub_25B07AAC0();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for FaceObserver(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_25B07AAC0()
{
  result = qword_27FA31658;
  if (!qword_27FA31658)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FA31658);
  }

  return result;
}

unint64_t sub_25B07AB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31660;
  if (!qword_27FA31660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31660);
  }

  return result;
}

uint64_t sub_25B07AB90(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25B07AC70()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31668);
  __swift_project_value_buffer(v0, qword_27FA31668);
  return sub_25B0E2960();
}

uint64_t sub_25B07ACF0(uint64_t a1, uint64_t *a2)
{
  v3[12] = a1;
  v3[13] = v2;
  v4 = *v2;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v3[14] = v6;
  v3[15] = v7;
  v3[16] = v8;
  v3[8] = v5;
  v3[9] = v6;
  v3[10] = v7;
  v3[11] = v8;
  v9 = *(v4 + 96);
  v10 = *(v4 + 80);
  v13 = (*(v9 + 8) + **(v9 + 8));
  v11 = swift_task_alloc();
  v3[17] = v11;
  *v11 = v3;
  v11[1] = sub_25B07AE7C;

  return v13(v3 + 2, v3 + 8, v10, v9);
}

uint64_t sub_25B07AE7C()
{

  return MEMORY[0x2822009F8](sub_25B07AF78, 0, 0);
}

uint64_t sub_25B07AF78()
{
  v26 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v24 = v0[7];
  if (qword_27FA30CD8 != -1)
  {
    swift_once();
  }

  v6 = sub_25B0E2970();
  __swift_project_value_buffer(v6, qword_27FA31668);
  sub_25B04C4D8(v2, v1, v3, v4, v5, v24);

  v7 = sub_25B0E2950();
  v23 = v5;
  v8 = sub_25B0E3A50();

  log = v7;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[16];
    v21 = v0[15];
    v10 = v0[13];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_25B04BE04(*(v10 + 16), *(v10 + 24), &v25);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_25B04BE04(v21, v9, &v25);
    *(v11 + 22) = 1024;
    *(v11 + 24) = v1 != 0;
    v13 = v1;
    v14 = v1;
    v15 = v23;
    v16 = v24;
    sub_25B04C538(v2, v13, v3, v4, v23, v24);
    _os_log_impl(&dword_25B03D000, log, v8, "Fetching snapshot with ID: %s for %s: %{BOOL}d…", v11, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v12, -1, -1);
    MEMORY[0x25F8613E0](v11, -1, -1);
  }

  else
  {
    v17 = v1;
    v14 = v1;
    v15 = v23;
    v16 = v24;
    sub_25B04C538(v2, v17, v3, v4, v23, v24);
  }

  v18 = v0[12];
  *v18 = v2;
  v18[1] = v14;
  v18[2] = v3;
  v18[3] = v4;
  v18[4] = v15;
  v18[5] = v16;
  v19 = v0[1];

  return v19();
}

uint64_t sub_25B07B208(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v3[33] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B07B2D0, 0, 0);
}

uint64_t sub_25B07B2D0()
{
  v22 = v0;
  if (qword_27FA30CD8 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31668);
  sub_25B049F48(v1, (v0 + 20));

  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[32];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_25B04BE04(*(v5 + 16), *(v5 + 24), &v20);
    *(v6 + 12) = 2080;
    v8 = v0[23];
    v9 = v0[24];
    __swift_project_boxed_opaque_existential_1(v0 + 20, v8);
    (*(v9 + 8))(v21, v8, v9);
    v10 = v21[2];
    v11 = v21[3];

    __swift_destroy_boxed_opaque_existential_1(v0 + 20);
    v12 = sub_25B04BE04(v10, v11, &v20);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_25B03D000, v3, v4, "Storing snapshot for ID: %s using %s…", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v7, -1, -1);
    MEMORY[0x25F8613E0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  }

  v13 = v0[33];
  v14 = *(v13 + 96);
  v15 = *(v13 + 80);
  v19 = (*(v14 + 16) + **(v14 + 16));
  v16 = swift_task_alloc();
  v0[35] = v16;
  *v16 = v0;
  v16[1] = sub_25B07B5D0;
  v17 = v0[31];

  return v19(v0 + 8, v17, v15, v14);
}

uint64_t sub_25B07B5D0()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_25B07B848;
  }

  else
  {
    v2 = sub_25B07B6E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B07B6E4()
{
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v5;
  *(v0 + 48) = *(v0 + 96);
  v6 = sub_25B0E3940();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  sub_25B049F48(v3, v0 + 200);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v2;
  v8 = *(v0 + 32);
  *(v7 + 40) = *(v0 + 16);
  *(v7 + 56) = v8;
  *(v7 + 72) = *(v0 + 48);
  sub_25B04A114((v0 + 200), v7 + 88);

  sub_25B065BE8(v0 + 16, v0 + 112);
  sub_25B052F48(0, 0, v1, &unk_25B0E74A8, v7);

  v9 = *(v0 + 16);
  v10 = *(v0 + 48);
  v4[1] = *(v0 + 32);
  v4[2] = v10;
  *v4 = v9;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_25B07B848()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B07B8AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v6[21] = *a4;
  return MEMORY[0x2822009F8](sub_25B07B8F8, 0, 0);
}

uint64_t sub_25B07B8F8()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v5 = v2[1];
  v4 = v2[2];
  *(v0 + 16) = *v2;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v1 + 104);
  v9 = *(v1 + 88);
  v12 = (*(v8 + 8) + **(v8 + 8));
  v10 = swift_task_alloc();
  *(v0 + 176) = v10;
  *v10 = v0;
  v10[1] = sub_25B07BA64;

  return v12(v0 + 16, v6, v7, v9, v8);
}

uint64_t sub_25B07BA64()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_25B07BD5C;
  }

  else
  {
    v2 = sub_25B07BB78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B07BB78()
{
  v16 = v0;
  if (qword_27FA30CD8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31668);
  sub_25B049F48(v1, (v0 + 13));
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = v0[16];
    v8 = v0[17];
    __swift_project_boxed_opaque_existential_1(v0 + 13, v7);
    (*(v8 + 8))(v15, v7, v8);
    v9 = v15[2];
    v10 = v15[3];

    __swift_destroy_boxed_opaque_existential_1(v0 + 13);
    v11 = sub_25B04BE04(v9, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_25B03D000, v3, v4, "Replicated snapshot %s…", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25F8613E0](v6, -1, -1);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_25B07BD5C()
{
  v23 = v0;
  if (qword_27FA30CD8 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[20];
  v3 = sub_25B0E2970();
  __swift_project_value_buffer(v3, qword_27FA31668);
  sub_25B049F48(v2, (v0 + 8));
  v4 = v1;
  v5 = sub_25B0E2950();
  v6 = sub_25B0E3A30();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[23];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = v0[11];
    v13 = v0[12];
    __swift_project_boxed_opaque_existential_1(v0 + 8, v12);
    (*(v13 + 8))(v22, v12, v13);
    v14 = v22[2];
    v15 = v22[3];

    __swift_destroy_boxed_opaque_existential_1(v0 + 8);
    v16 = sub_25B04BE04(v14, v15, &v21);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    v17 = v8;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_25B03D000, v5, v6, "Failed to replicate snapshot %s - %@…", v9, 0x16u);
    sub_25B04C3AC(v10);
    MEMORY[0x25F8613E0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x25F8613E0](v11, -1, -1);
    MEMORY[0x25F8613E0](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  }

  v19 = v0[1];

  return v19();
}

char *sub_25B07C02C()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 128));
  return v0;
}

uint64_t sub_25B07C100()
{
  sub_25B07C02C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25B07C170(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B0498DC;

  return sub_25B07ACF0(a1, a2);
}

uint64_t sub_25B07C21C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B0498DC;

  return sub_25B07B208(a1, a2);
}

uint64_t sub_25B07C2EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B0498DC;

  return sub_25B07B8AC(a1, v4, v5, v6, (v1 + 5), (v1 + 11));
}

uint64_t sub_25B07C3B0()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31700);
  __swift_project_value_buffer(v0, qword_27FA31700);
  return sub_25B0E2960();
}

id sub_25B07C430(void *a1)
{
  v1 = a1;
  v2 = sub_25B0E3730();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id sub_25B07C4A0(void *a1)
{
  v1 = a1;
  v2 = sub_25B0E3730();
  v3 = [v1 BOOLForKey_];

  return v3;
}

uint64_t sub_25B07C510()
{
  result = sub_25B07C530();
  qword_27FA39988 = result;
  return result;
}

uint64_t sub_25B07C530()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_25B0E3730();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    if ([v2 snapshotKeyIdentity])
    {
      if (qword_27FA30CE0 != -1)
      {
        swift_once();
      }

      v3 = sub_25B0E2970();
      __swift_project_value_buffer(v3, qword_27FA31700);
      v4 = sub_25B0E2950();
      v5 = sub_25B0E3A50();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_25B03D000, v4, v5, "Using snapshot key identity", v6, 2u);
        MEMORY[0x25F8613E0](v6, -1, -1);
      }

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    if ([v2 ignoreReplicatedContent])
    {
      if (qword_27FA30CE0 != -1)
      {
        swift_once();
      }

      v12 = sub_25B0E2970();
      __swift_project_value_buffer(v12, qword_27FA31700);
      v13 = sub_25B0E2950();
      v14 = sub_25B0E3A50();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_25B03D000, v13, v14, "Ignoring replicated content", v15, 2u);
        MEMORY[0x25F8613E0](v15, -1, -1);
      }

      return v7 | 2;
    }

    else
    {
    }
  }

  else
  {
    if (qword_27FA30CE0 != -1)
    {
      swift_once();
    }

    v8 = sub_25B0E2970();
    __swift_project_value_buffer(v8, qword_27FA31700);
    v9 = sub_25B0E2950();
    v10 = sub_25B0E3A30();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_25B03D000, v9, v10, "Cannot read overrides for 'com.apple.NanoTimeKit.face'", v11, 2u);
      MEMORY[0x25F8613E0](v11, -1, -1);
    }

    return 0;
  }

  return v7;
}

uint64_t sub_25B07C814()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31718);
  __swift_project_value_buffer(v0, qword_27FA31718);
  return sub_25B0E2960();
}

uint64_t sub_25B07C894@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_25B07C8E8(uint64_t a1, uint64_t a2)
{
  v3[19] = a1;
  v3[20] = v2;
  v3[21] = sub_25B0E3900();
  v3[22] = sub_25B0E38F0();
  v5 = sub_25B0E3850();
  v3[23] = v5;
  v3[24] = v4;

  return MEMORY[0x2822009F8](sub_25B07C984, v5, v4);
}

uint64_t sub_25B07C984()
{
  v1 = v0[20];
  sub_25B049F48(v1 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_primary, (v0 + 9));
  sub_25B049F48(v1 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_fallback, (v0 + 14));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31470, &qword_25B0E6BD0);
  v3 = sub_25B0E38F0();
  v0[25] = v3;
  v4 = swift_task_alloc();
  v0[26] = v4;
  v4[2] = v1;
  v4[3] = v0 + 9;
  v4[4] = v0 + 14;
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_25B07CAD4;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200600](v0 + 2, v2, v2, v3, v6, &unk_25B0E7580, v4, v2);
}

uint64_t sub_25B07CAD4()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_25B07CC34, v3, v2);
}

uint64_t sub_25B07CC34()
{
  v17 = v0;

  v14 = *(v0 + 32);
  v15 = *(v0 + 16);
  v13 = *(v0 + 48);
  v1 = *(v0 + 64);
  if (qword_27FA30CF0 != -1)
  {
    swift_once();
  }

  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31718);

  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    sub_25B0E24A0();
    sub_25B08405C();
    v7 = sub_25B0E3E20();
    v9 = sub_25B04BE04(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25B03D000, v3, v4, "FBSP %s: Returning a snapshot…", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25F8613E0](v6, -1, -1);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  v10 = *(v0 + 152);
  *v10 = v15;
  *(v10 + 16) = v14;
  *(v10 + 32) = v13;
  *(v10 + 48) = v1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_25B07CE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v5[34] = swift_task_alloc();
  v5[35] = sub_25B0E3900();
  v5[36] = sub_25B0E38F0();
  v7 = sub_25B0E3850();
  v5[37] = v7;
  v5[38] = v6;

  return MEMORY[0x2822009F8](sub_25B07CF10, v7, v6);
}

uint64_t sub_25B07CF10()
{
  v19 = v0;
  if (qword_27FA30CF0 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  v0[39] = __swift_project_value_buffer(v1, qword_27FA31718);

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    sub_25B0E24A0();
    sub_25B08405C();
    v6 = sub_25B0E3E20();
    v8 = sub_25B04BE04(v6, v7, &v18);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25B03D000, v2, v3, "Fallback provider %s fetching snapshot…", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x25F8613E0](v5, -1, -1);
    MEMORY[0x25F8613E0](v4, -1, -1);
  }

  v9 = v0[32];
  v10 = v9[3];
  v0[40] = v10;
  v11 = v9[4];
  v0[41] = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v12 = *(v11 + 24);
  v0[42] = swift_getAssociatedTypeWitness();
  v13 = sub_25B0E3B10();
  v0[43] = v13;
  v0[44] = *(v13 - 8);
  v14 = swift_task_alloc();
  v0[45] = v14;
  v17 = (v12 + *v12);
  v15 = swift_task_alloc();
  v0[46] = v15;
  *v15 = v0;
  v15[1] = sub_25B07D22C;

  return v17(v14, v10, v11);
}

uint64_t sub_25B07D22C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_25B07E09C;
  }

  else
  {
    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_25B07D350;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25B07D350()
{
  v49 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {

    *(v0 + 136) = v2;
    *(v0 + 144) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);

    sub_25B03F164((v0 + 112), v0 + 72);

    v20 = sub_25B0E2950();
    v21 = sub_25B0E3A50();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v46 = v23;
      *v22 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v24 = sub_25B0E3E20();
      v26 = sub_25B04BE04(v24, v25, &v46);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_25B03D000, v20, v21, "Fallback provider %s found primary snapshot quickly…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x25F8613E0](v23, -1, -1);
      MEMORY[0x25F8613E0](v22, -1, -1);
    }

    v27 = *(v0 + 232);
    v28 = *(v0 + 96);
    v29 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v28);
    v30 = (*(v29 + 16))(v28, v29);
    v31 = *(v0 + 96);
    v32 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v31);
    (*(v32 + 8))(&v46, v31, v32);
    v45 = v46;
    v33 = v47;
    v34 = v48;
    v35 = *(v0 + 96);
    v36 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v35);
    v37 = (*(v36 + 24))(v35, v36);
    __swift_destroy_boxed_opaque_existential_1((v0 + 72));
    *v27 = 0;
    *(v27 + 8) = v30;
    *(v27 + 16) = v45;
    *(v27 + 32) = v33;
    *(v27 + 40) = v34;
    *(v27 + 48) = v37;
    goto LABEL_9;
  }

  (*(*(v0 + 352) + 8))(v1, *(v0 + 344));
  v4 = *(v0 + 272);
  v44 = *(v0 + 264);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);

  v7 = sub_25B0E3940();
  v8 = *(*(v7 - 8) + 56);
  v8(v4, 1, 1, v7);
  sub_25B049F48(v6, v0 + 152);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  sub_25B03F164((v0 + 152), (v9 + 4));
  v9[9] = v5;
  v9[10] = sub_25B07E4AC;
  v9[11] = 0;

  sub_25B064D68(v4, &unk_25B0E7590, v9);
  sub_25B058448(v4, &qword_27FA31990, &qword_25B0E6920);
  v8(v4, 1, 1, v7);
  sub_25B049F48(v44, v0 + 192);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v5;
  sub_25B03F164((v0 + 192), (v10 + 5));
  v10[10] = sub_25B07E4AC;
  v10[11] = 0;

  sub_25B064D68(v4, &unk_25B0E75A0, v10);
  sub_25B058448(v4, &qword_27FA31990, &qword_25B0E6920);
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31470, &qword_25B0E6BD0);
  if (sub_25B0E38B0())
  {

    v11 = sub_25B0E2950();
    v12 = sub_25B0E3A50();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v46 = v14;
      *v13 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v15 = sub_25B0E3E20();
      v17 = sub_25B04BE04(v15, v16, &v46);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_25B03D000, v11, v12, "FBSP %s: Did not find a snapshot…", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x25F8613E0](v14, -1, -1);
      MEMORY[0x25F8613E0](v13, -1, -1);
    }

    v18 = *(v0 + 232);
    *(v18 + 48) = 0;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0u;
    *v18 = 0u;
LABEL_9:

    v38 = *(v0 + 8);

    return v38();
  }

  *(v0 + 384) = OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_instanceIdentifier;
  v40 = sub_25B0E38F0();
  *(v0 + 392) = v40;
  v41 = swift_task_alloc();
  *(v0 + 400) = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31740, &qword_25B0E75A8);
  *v41 = v0;
  v41[1] = sub_25B07DA1C;
  v43 = MEMORY[0x277D85700];

  return MEMORY[0x2822002D0](v0 + 16, v40, v43, v42);
}

uint64_t sub_25B07DA1C()
{
  v1 = *v0;

  v2 = *(v1 + 304);
  v3 = *(v1 + 296);

  return MEMORY[0x2822009F8](sub_25B07DB60, v3, v2);
}

uint64_t sub_25B07DB60()
{
  v45 = v0;
  v1 = v0[3];
  v41 = v0[4];
  v42 = v0[2];
  v2 = v0[5];
  v40 = v0[6];
  v3 = v0[7];
  v43 = v0[8];

  v4 = sub_25B0E2950();
  v5 = sub_25B0E3A50();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v44 = v7;
    *v6 = 136315138;
    sub_25B0E24A0();
    v39 = v3;
    v8 = v1;
    v9 = v2;
    sub_25B08405C();
    v10 = sub_25B0E3E20();
    v12 = sub_25B04BE04(v10, v11, &v44);

    *(v6 + 4) = v12;
    v2 = v9;
    v1 = v8;
    v3 = v39;
    _os_log_impl(&dword_25B03D000, v4, v5, "FBSP %s: Group returned a value…", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25F8613E0](v7, -1, -1);
    MEMORY[0x25F8613E0](v6, -1, -1);
  }

  if (v1 > 1)
  {
    v21 = v1;

    v22 = v43;

    v23 = sub_25B0E2950();
    v24 = sub_25B0E3A50();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44 = v26;
      *v25 = 136315138;
      sub_25B0E24A0();
      v27 = v1;
      v28 = v2;
      sub_25B08405C();
      v29 = sub_25B0E3E20();
      v31 = sub_25B04BE04(v29, v30, &v44);

      *(v25 + 4) = v31;
      v2 = v28;
      v1 = v27;
      _os_log_impl(&dword_25B03D000, v23, v24, "FBSP %s: Group has a snapshot…", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x25F8613E0](v26, -1, -1);
      MEMORY[0x25F8613E0](v25, -1, -1);
    }

    v32 = v0[29];
    sub_25B0E38D0();
    sub_25B084D38(v42, v1, v41, v2, v40, v3, v43);
    *v32 = v42 & 1;
    v32[1] = v1;
    v32[2] = v41;
    v32[3] = v2;
    v32[4] = v40;
    v32[5] = v3;
    v32[6] = v43;
    goto LABEL_11;
  }

  if (sub_25B0E38B0())
  {

    v13 = sub_25B0E2950();
    v14 = sub_25B0E3A50();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v44 = v16;
      *v15 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v17 = sub_25B0E3E20();
      v19 = sub_25B04BE04(v17, v18, &v44);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_25B03D000, v13, v14, "FBSP %s: Did not find a snapshot…", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x25F8613E0](v16, -1, -1);
      MEMORY[0x25F8613E0](v15, -1, -1);
    }

    v20 = v0[29];
    *(v20 + 48) = 0;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    *v20 = 0u;
LABEL_11:

    v33 = v0[1];

    return v33();
  }

  v35 = sub_25B0E38F0();
  v0[49] = v35;
  v36 = swift_task_alloc();
  v0[50] = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31740, &qword_25B0E75A8);
  *v36 = v0;
  v36[1] = sub_25B07DA1C;
  v38 = MEMORY[0x277D85700];

  return MEMORY[0x2822002D0](v0 + 2, v35, v38, v37);
}

uint64_t sub_25B07E09C()
{
  v24 = v0;
  v1 = *(v0 + 272);
  v22 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);

  v4 = sub_25B0E3940();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  sub_25B049F48(v3, v0 + 152);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  sub_25B03F164((v0 + 152), (v6 + 4));
  v6[9] = v2;
  v6[10] = sub_25B07E4AC;
  v6[11] = 0;

  sub_25B064D68(v1, &unk_25B0E7590, v6);
  sub_25B058448(v1, &qword_27FA31990, &qword_25B0E6920);
  v5(v1, 1, 1, v4);
  sub_25B049F48(v22, v0 + 192);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  sub_25B03F164((v0 + 192), (v7 + 5));
  v7[10] = sub_25B07E4AC;
  v7[11] = 0;

  sub_25B064D68(v1, &unk_25B0E75A0, v7);
  sub_25B058448(v1, &qword_27FA31990, &qword_25B0E6920);
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31470, &qword_25B0E6BD0);
  if (sub_25B0E38B0())
  {

    v8 = sub_25B0E2950();
    v9 = sub_25B0E3A50();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v12 = sub_25B0E3E20();
      v14 = sub_25B04BE04(v12, v13, &v23);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_25B03D000, v8, v9, "FBSP %s: Did not find a snapshot…", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x25F8613E0](v11, -1, -1);
      MEMORY[0x25F8613E0](v10, -1, -1);
    }

    v15 = *(v0 + 232);
    *(v15 + 48) = 0;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *v15 = 0u;

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    *(v0 + 384) = OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_instanceIdentifier;
    v18 = sub_25B0E38F0();
    *(v0 + 392) = v18;
    v19 = swift_task_alloc();
    *(v0 + 400) = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31740, &qword_25B0E75A8);
    *v19 = v0;
    v19[1] = sub_25B07DA1C;
    v21 = MEMORY[0x277D85700];

    return MEMORY[0x2822002D0](v0 + 16, v18, v21, v20);
  }
}

__n128 sub_25B07E4AC@<Q0>(char a1@<W0>, void *a2@<X1>, __n128 *a3@<X8>)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = (*(v7 + 16))(v6, v7);
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v10 + 8))(&v18, v9, v10);
  v17 = v18;
  v11 = v19;
  v12 = v20;
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v15 = (*(v14 + 24))(v13, v14);
  a3->n128_u8[0] = a1 & 1;
  a3->n128_u64[1] = v8;
  result = v17;
  a3[1] = v17;
  a3[2].n128_u64[0] = v11;
  a3[2].n128_u64[1] = v12;
  a3[3].n128_u64[0] = v15;
  return result;
}

uint64_t sub_25B07E5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[12] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0);
  v7[20] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v7[21] = v9;
  v7[22] = *(v9 - 8);
  v7[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B07E730, 0, 0);
}

uint64_t sub_25B07E730()
{
  v29 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[13];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 32))(v5, v6);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_25B058448(v0[20], &qword_27FA313B8, &unk_25B0E72A0);
    if (qword_27FA30CF0 != -1)
    {
      swift_once();
    }

    v7 = sub_25B0E2970();
    __swift_project_value_buffer(v7, qword_27FA31718);

    v8 = sub_25B0E2950();
    v9 = sub_25B0E3A50();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v10 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v12 = sub_25B0E3E20();
      v14 = sub_25B04BE04(v12, v13, &v28);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_25B03D000, v8, v9, "FBSP %s: No primary snapshot updates to look for…", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x25F8613E0](v11, -1, -1);
      MEMORY[0x25F8613E0](v10, -1, -1);
    }

    v15 = v0[12];
    *(v15 + 48) = 0;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *v15 = 0u;

    v16 = v0[1];

    return v16();
  }

  else
  {
    (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
    if (qword_27FA30CF0 != -1)
    {
      swift_once();
    }

    v18 = sub_25B0E2970();
    v0[24] = __swift_project_value_buffer(v18, qword_27FA31718);

    v19 = sub_25B0E2950();
    v20 = sub_25B0E3A50();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v23 = sub_25B0E3E20();
      v25 = sub_25B04BE04(v23, v24, &v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_25B03D000, v19, v20, "FBSP %s: Snapshot staring primary snapshot updates…", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x25F8613E0](v22, -1, -1);
      MEMORY[0x25F8613E0](v21, -1, -1);
    }

    sub_25B0E39A0();
    v0[25] = OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_instanceIdentifier;
    v26 = swift_task_alloc();
    v0[26] = v26;
    *v26 = v0;
    v26[1] = sub_25B07EB9C;
    v27 = v0[17];

    return MEMORY[0x2822003E8](v0 + 34, 0, 0, v27);
  }
}

uint64_t sub_25B07EB9C()
{

  return MEMORY[0x2822009F8](sub_25B07EC98, 0, 0);
}

uint64_t sub_25B07EC98()
{
  v33 = v0;
  if (*(v0 + 272) == 1)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    v1 = sub_25B0E2950();
    v2 = sub_25B0E3A50();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 176);
      v31 = *(v0 + 184);
      v4 = *(v0 + 168);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v32 = v6;
      *v5 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v7 = sub_25B0E3E20();
      v9 = sub_25B04BE04(v7, v8, &v32);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_25B03D000, v1, v2, "FBSP %s: Primary update stream finished…", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x25F8613E0](v6, -1, -1);
      MEMORY[0x25F8613E0](v5, -1, -1);

      (*(v3 + 8))(v31, v4);
    }

    else
    {
      v26 = *(v0 + 176);
      v25 = *(v0 + 184);
      v27 = *(v0 + 168);

      (*(v26 + 8))(v25, v27);
    }

    v28 = *(v0 + 96);
    *(v28 + 48) = 0;
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0u;
    *v28 = 0u;

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {

    v10 = sub_25B0E2950();
    v11 = sub_25B0E3A50();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v32 = v13;
      *v12 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v14 = sub_25B0E3E20();
      v16 = sub_25B04BE04(v14, v15, &v32);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_25B03D000, v10, v11, "FBSP %s: Primary snapshot update…", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x25F8613E0](v13, -1, -1);
      MEMORY[0x25F8613E0](v12, -1, -1);
    }

    v17 = *(v0 + 104);
    v18 = v17[3];
    *(v0 + 216) = v18;
    v19 = v17[4];
    *(v0 + 224) = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v20 = *(v19 + 24);
    *(v0 + 232) = swift_getAssociatedTypeWitness();
    v21 = sub_25B0E3B10();
    *(v0 + 240) = v21;
    *(v0 + 248) = *(v21 - 8);
    v22 = swift_task_alloc();
    *(v0 + 256) = v22;
    v30 = (v20 + *v20);
    v23 = swift_task_alloc();
    *(v0 + 264) = v23;
    *v23 = v0;
    v23[1] = sub_25B07F148;

    return v30(v22, v18, v19);
  }
}

uint64_t sub_25B07F148()
{

  if (v0)
  {

    v1 = sub_25B07F614;
  }

  else
  {
    v1 = sub_25B07F260;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_25B07F260()
{
  v31 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 248) + 8))(v1, *(v0 + 240));

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_25B058448(v0 + 56, &qword_27FA31748, &qword_25B0E75B0);
    v4 = swift_task_alloc();
    *(v0 + 208) = v4;
    *v4 = v0;
    v4[1] = sub_25B07EB9C;
    v5 = *(v0 + 136);

    return MEMORY[0x2822003E8](v0 + 272, 0, 0, v5);
  }

  else
  {
    *(v0 + 80) = v2;
    *(v0 + 88) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);

    sub_25B03F164((v0 + 56), v0 + 16);

    v7 = sub_25B0E2950();
    v8 = sub_25B0E3A50();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26 = v10;
      *v9 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v11 = sub_25B0E3E20();
      v13 = sub_25B04BE04(v11, v12, &v26);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_25B03D000, v7, v8, "FBSP %s: Returning primary snapshot…", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x25F8613E0](v10, -1, -1);
      MEMORY[0x25F8613E0](v9, -1, -1);
    }

    v15 = *(v0 + 176);
    v14 = *(v0 + 184);
    v16 = *(v0 + 168);
    v18 = *(v0 + 144);
    v17 = *(v0 + 152);
    v19 = *(v0 + 136);
    v20 = *(v0 + 96);
    (*(v0 + 120))(&v26, 0, v0 + 16);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
    v21 = v27;
    v22 = v28;
    v23 = v29;
    *v20 = v26;
    *(v20 + 8) = v21;
    *(v20 + 24) = v22;
    *(v20 + 32) = v23;
    *(v20 + 40) = v30;

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_25B07F614()
{

  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  sub_25B058448(v0 + 56, &qword_27FA31748, &qword_25B0E75B0);
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_25B07EB9C;
  v2 = *(v0 + 136);

  return MEMORY[0x2822003E8](v0 + 272, 0, 0, v2);
}

uint64_t sub_25B07F6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  v7[22] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v7[27] = v8;
  v7[28] = *(v8 - 8);
  v7[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0);
  v7[30] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v7[31] = v9;
  v7[32] = *(v9 - 8);
  v7[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B07F860, 0, 0);
}

uint64_t sub_25B07F860()
{
  v19 = v0;
  if (qword_27FA30CF0 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  v0[34] = __swift_project_value_buffer(v1, qword_27FA31718);

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    sub_25B0E24A0();
    sub_25B08405C();
    v6 = sub_25B0E3E20();
    v8 = sub_25B04BE04(v6, v7, &v18);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25B03D000, v2, v3, "FBSP %s: Snapshot starting secondary snapshot updates…", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x25F8613E0](v5, -1, -1);
    MEMORY[0x25F8613E0](v4, -1, -1);
  }

  v9 = v0[24];
  v10 = v9[3];
  v0[35] = v10;
  v11 = v9[4];
  v0[36] = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v12 = *(v11 + 24);
  v0[37] = swift_getAssociatedTypeWitness();
  v13 = sub_25B0E3B10();
  v0[38] = v13;
  v0[39] = *(v13 - 8);
  v14 = swift_task_alloc();
  v0[40] = v14;
  v17 = (v12 + *v12);
  v15 = swift_task_alloc();
  v0[41] = v15;
  *v15 = v0;
  v15[1] = sub_25B07FB7C;

  return v17(v14, v10, v11);
}

uint64_t sub_25B07FB7C()
{

  if (v0)
  {

    v1 = sub_25B080D14;
  }

  else
  {
    v1 = sub_25B07FC94;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_25B07FC94()
{
  v46 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    *(v0 + 80) = v2;
    *(v0 + 88) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);

    sub_25B03F164((v0 + 56), v0 + 16);

    v19 = sub_25B0E2950();
    v20 = sub_25B0E3A50();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41 = v22;
      *v21 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v23 = sub_25B0E3E20();
      v25 = sub_25B04BE04(v23, v24, &v41);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_25B03D000, v19, v20, "FBSP %s: Secondary snapshot update…", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x25F8613E0](v22, -1, -1);
      MEMORY[0x25F8613E0](v21, -1, -1);
    }

    v26 = *(v0 + 176);
    (*(v0 + 200))(&v41, 1, v0 + 16);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v27 = v42;
    v28 = v43;
    v29 = v44;
    *v26 = v41;
    *(v26 + 8) = v27;
    *(v26 + 24) = v28;
    *(v26 + 32) = v29;
    *(v26 + 40) = v45;
    goto LABEL_9;
  }

  (*(*(v0 + 312) + 8))(v1, *(v0 + 304));
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v6 = *(v0 + 240);
  v7 = *(v0 + 192);

  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v9 + 32))(v8, v9);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_25B058448(*(v0 + 240), &qword_27FA313B8, &unk_25B0E72A0);

    v10 = sub_25B0E2950();
    v11 = sub_25B0E3A50();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v41 = v13;
      *v12 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v14 = sub_25B0E3E20();
      v16 = sub_25B04BE04(v14, v15, &v41);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_25B03D000, v10, v11, "FBSP %s: No secondary snapshot updates to look for…", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x25F8613E0](v13, -1, -1);
      MEMORY[0x25F8613E0](v12, -1, -1);
    }

    v17 = *(v0 + 176);
    *(v17 + 48) = 0;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    *v17 = 0u;
LABEL_9:

    v30 = *(v0 + 8);

    return v30();
  }

  (*(*(v0 + 256) + 32))(*(v0 + 264), *(v0 + 240), *(v0 + 248));

  v32 = sub_25B0E2950();
  v33 = sub_25B0E3A50();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v41 = v35;
    *v34 = 136315138;
    sub_25B0E24A0();
    sub_25B08405C();
    v36 = sub_25B0E3E20();
    v38 = sub_25B04BE04(v36, v37, &v41);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_25B03D000, v32, v33, "FBSP %s: Snapshot staring secondary snapshot updates…", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x25F8613E0](v35, -1, -1);
    MEMORY[0x25F8613E0](v34, -1, -1);
  }

  sub_25B0E39A0();
  *(v0 + 336) = OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_instanceIdentifier;
  v39 = swift_task_alloc();
  *(v0 + 344) = v39;
  *v39 = v0;
  v39[1] = sub_25B08029C;
  v40 = *(v0 + 216);

  return MEMORY[0x2822003E8](v0 + 408, 0, 0, v40);
}

uint64_t sub_25B08029C()
{

  return MEMORY[0x2822009F8](sub_25B080398, 0, 0);
}

uint64_t sub_25B080398()
{
  v33 = v0;
  if (*(v0 + 408) == 1)
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

    v1 = sub_25B0E2950();
    v2 = sub_25B0E3A50();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 256);
      v31 = *(v0 + 264);
      v4 = *(v0 + 248);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v32 = v6;
      *v5 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v7 = sub_25B0E3E20();
      v9 = sub_25B04BE04(v7, v8, &v32);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_25B03D000, v1, v2, "FBSP %s: Secondary update stream finished…", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x25F8613E0](v6, -1, -1);
      MEMORY[0x25F8613E0](v5, -1, -1);

      (*(v3 + 8))(v31, v4);
    }

    else
    {
      v26 = *(v0 + 256);
      v25 = *(v0 + 264);
      v27 = *(v0 + 248);

      (*(v26 + 8))(v25, v27);
    }

    v28 = *(v0 + 176);
    *(v28 + 48) = 0;
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0u;
    *v28 = 0u;

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {

    v10 = sub_25B0E2950();
    v11 = sub_25B0E3A50();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v32 = v13;
      *v12 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v14 = sub_25B0E3E20();
      v16 = sub_25B04BE04(v14, v15, &v32);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_25B03D000, v10, v11, "FBSP %s: Secondary snapshot update…", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x25F8613E0](v13, -1, -1);
      MEMORY[0x25F8613E0](v12, -1, -1);
    }

    v17 = *(v0 + 192);
    v18 = v17[3];
    *(v0 + 352) = v18;
    v19 = v17[4];
    *(v0 + 360) = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v20 = *(v19 + 24);
    *(v0 + 368) = swift_getAssociatedTypeWitness();
    v21 = sub_25B0E3B10();
    *(v0 + 376) = v21;
    *(v0 + 384) = *(v21 - 8);
    v22 = swift_task_alloc();
    *(v0 + 392) = v22;
    v30 = (v20 + *v20);
    v23 = swift_task_alloc();
    *(v0 + 400) = v23;
    *v23 = v0;
    v23[1] = sub_25B080848;

    return v30(v22, v18, v19);
  }
}

uint64_t sub_25B080848()
{

  if (v0)
  {

    v1 = sub_25B0810FC;
  }

  else
  {
    v1 = sub_25B080960;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_25B080960()
{
  v31 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 384) + 8))(v1, *(v0 + 376));

    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_25B058448(v0 + 136, &qword_27FA31748, &qword_25B0E75B0);
    v4 = swift_task_alloc();
    *(v0 + 344) = v4;
    *v4 = v0;
    v4[1] = sub_25B08029C;
    v5 = *(v0 + 216);

    return MEMORY[0x2822003E8](v0 + 408, 0, 0, v5);
  }

  else
  {
    *(v0 + 160) = v2;
    *(v0 + 168) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);

    sub_25B03F164((v0 + 136), v0 + 96);

    v7 = sub_25B0E2950();
    v8 = sub_25B0E3A50();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26 = v10;
      *v9 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v11 = sub_25B0E3E20();
      v13 = sub_25B04BE04(v11, v12, &v26);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_25B03D000, v7, v8, "FBSP %s: Returning secondary snapshot…", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x25F8613E0](v10, -1, -1);
      MEMORY[0x25F8613E0](v9, -1, -1);
    }

    v15 = *(v0 + 256);
    v14 = *(v0 + 264);
    v16 = *(v0 + 248);
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    v19 = *(v0 + 216);
    v20 = *(v0 + 176);
    (*(v0 + 200))(&v26, 1, v0 + 96);
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
    v21 = v27;
    v22 = v28;
    v23 = v29;
    *v20 = v26;
    *(v20 + 8) = v21;
    *(v20 + 24) = v22;
    *(v20 + 32) = v23;
    *(v20 + 40) = v30;

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_25B080D14()
{
  v27 = v0;
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[24];

  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 32))(v5, v6);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_25B058448(v0[30], &qword_27FA313B8, &unk_25B0E72A0);

    v7 = sub_25B0E2950();
    v8 = sub_25B0E3A50();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26 = v10;
      *v9 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v11 = sub_25B0E3E20();
      v13 = sub_25B04BE04(v11, v12, &v26);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_25B03D000, v7, v8, "FBSP %s: No secondary snapshot updates to look for…", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x25F8613E0](v10, -1, -1);
      MEMORY[0x25F8613E0](v9, -1, -1);
    }

    v14 = v0[22];
    *(v14 + 48) = 0;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *v14 = 0u;

    v15 = v0[1];

    return v15();
  }

  else
  {
    (*(v0[32] + 32))(v0[33], v0[30], v0[31]);

    v17 = sub_25B0E2950();
    v18 = sub_25B0E3A50();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      sub_25B0E24A0();
      sub_25B08405C();
      v21 = sub_25B0E3E20();
      v23 = sub_25B04BE04(v21, v22, &v26);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_25B03D000, v17, v18, "FBSP %s: Snapshot staring secondary snapshot updates…", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x25F8613E0](v20, -1, -1);
      MEMORY[0x25F8613E0](v19, -1, -1);
    }

    sub_25B0E39A0();
    v0[42] = OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_instanceIdentifier;
    v24 = swift_task_alloc();
    v0[43] = v24;
    *v24 = v0;
    v24[1] = sub_25B08029C;
    v25 = v0[27];

    return MEMORY[0x2822003E8](v0 + 51, 0, 0, v25);
  }
}

uint64_t sub_25B0810FC()
{

  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  sub_25B058448(v0 + 136, &qword_27FA31748, &qword_25B0E75B0);
  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  v1[1] = sub_25B08029C;
  v2 = *(v0 + 216);

  return MEMORY[0x2822003E8](v0 + 408, 0, 0, v2);
}

uint64_t sub_25B0811D4@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31820, &unk_25B0E6910);
  v48 = *(v2 - 1);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = (&v45 - v3);
  v5 = sub_25B0E24A0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  v17 = *(v1 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_primary + 24);
  v18 = *(v1 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_primary + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_primary), v17);
  (*(v18 + 32))(v17, v18);
  v19 = *(v1 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_fallback + 24);
  v20 = *(v1 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_fallback + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_fallback), v19);
  (*(v20 + 32))(v19, v20);
  v50 = v6;
  v51 = v5;
  v21 = *(v6 + 16);
  v53 = v10;
  v21(v10, v1 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_instanceIdentifier, v5);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v16, 1, v22) == 1 && v24(v14, 1, v22) == 1)
  {
    if (qword_27FA30CF0 != -1)
    {
      swift_once();
    }

    v25 = sub_25B0E2970();
    __swift_project_value_buffer(v25, qword_27FA31718);
    v26 = v47;
    v27 = v51;
    v21(v47, v53, v51);
    v28 = sub_25B0E2950();
    v29 = sub_25B0E3A30();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v46 = v30;
      v49 = swift_slowAlloc();
      v54 = v49;
      *v30 = 136315138;
      sub_25B08405C();
      LODWORD(v48) = v29;
      v31 = sub_25B0E3E20();
      v33 = v32;
      v34 = v26;
      v35 = *(v50 + 8);
      v35(v34, v27);
      v36 = sub_25B04BE04(v31, v33, &v54);

      v37 = v46;
      *(v46 + 1) = v36;
      v38 = v37;
      _os_log_impl(&dword_25B03D000, v28, v48, "Fallback provider %s has no updates to listen for…", v37, 0xCu);
      v39 = v49;
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x25F8613E0](v39, -1, -1);
      MEMORY[0x25F8613E0](v38, -1, -1);
    }

    else
    {

      v43 = v26;
      v35 = *(v50 + 8);
      v35(v43, v27);
    }

    (*(v23 + 56))(v52, 1, 1, v22);
    v35(v53, v27);
  }

  else
  {
    *v4 = 1;
    v40 = (*(v48 + 104))(v4, *MEMORY[0x277D85768], v49);
    MEMORY[0x28223BE20](v40);
    v41 = v52;
    v42 = v53;
    *(&v45 - 4) = v53;
    *(&v45 - 3) = v16;
    *(&v45 - 2) = v14;
    sub_25B0E39C0();
    (*(v23 + 56))(v41, 0, 1, v22);
    (*(v50 + 8))(v42, v51);
  }

  sub_25B058448(v14, &qword_27FA313B8, &unk_25B0E72A0);
  return sub_25B058448(v16, &qword_27FA313B8, &unk_25B0E72A0);
}

uint64_t sub_25B0817A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a3;
  v44 = a2;
  v59 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0);
  v55 = *(v4 - 8);
  v53 = *(v55 + 64);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v11 = *(v10 - 8);
  v42 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v58 = &v41 - v12;
  v14 = sub_25B0E24A0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v57 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v15 + 16);
  v43();
  v61 = v11;
  v41 = *(v11 + 16);
  v17 = v13;
  v18 = v10;
  v41(v17, v59, v10);
  v19 = *(v15 + 80);
  v20 = (v19 + 16) & ~v19;
  v45 = *(v11 + 80);
  v46 = v16 + v45;
  v21 = (v16 + v45 + v20) & ~v45;
  v47 = v19 | v45 | 7;
  v22 = swift_allocObject();
  v23 = *(v15 + 32);
  v49 = v15 + 32;
  v50 = v23;
  v24 = v57;
  v23(v22 + v20, v57, v14);
  v25 = *(v61 + 32);
  v61 += 32;
  v48 = v25;
  v26 = v22 + v21;
  v27 = v58;
  v25(v26, v58, v18);
  v28 = v18;
  v29 = v59;
  sub_25B0E3960();
  v30 = sub_25B0E3940();
  (*(*(v30 - 8) + 56))(v60, 1, 1, v30);
  v31 = v51;
  sub_25B0841A0(v54, v51);
  (v43)(v24, v44, v14);
  v32 = v28;
  v41(v27, v29, v28);
  v33 = v52;
  sub_25B0841A0(v56, v52);
  v34 = *(v55 + 80);
  v35 = (v34 + 32) & ~v34;
  v36 = (v53 + v19 + v35) & ~v19;
  v37 = (v46 + v36) & ~v45;
  v38 = (v42 + v34 + v37) & ~v34;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  sub_25B084210(v31, v39 + v35);
  v50(v39 + v36, v57, v14);
  v48(v39 + v37, v58, v32);
  sub_25B084210(v33, v39 + v38);
  sub_25B052F48(0, 0, v60, &unk_25B0E7530, v39);
}

uint64_t sub_25B081C70(uint64_t a1, uint64_t a2)
{
  v3 = sub_25B0E24A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FA30CF0 != -1)
  {
    swift_once();
  }

  v7 = sub_25B0E2970();
  __swift_project_value_buffer(v7, qword_27FA31718);
  (*(v4 + 16))(v6, a2, v3);
  v8 = sub_25B0E2950();
  v9 = sub_25B0E3A50();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    sub_25B08405C();
    v12 = sub_25B0E3E20();
    v14 = v13;
    (*(v4 + 8))(v6, v3);
    v15 = sub_25B04BE04(v12, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_25B03D000, v8, v9, "Fallback provider %s terminated…", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x25F8613E0](v11, -1, -1);
    MEMORY[0x25F8613E0](v10, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  return sub_25B0E3990();
}

uint64_t sub_25B081ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_25B0E24A0();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B081F94, 0, 0);
}

uint64_t sub_25B081F94()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_25B082078;
  v4 = MEMORY[0x277D84F78] + 8;
  v5 = MEMORY[0x277D84F78] + 8;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v3, v4, v5, 0, 0, &unk_25B0E7540, v1, v6);
}

uint64_t sub_25B082078()
{

  return MEMORY[0x2822009F8](sub_25B082190, 0, 0);
}

uint64_t sub_25B082190()
{
  v21 = v0;
  if (qword_27FA30CF0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = sub_25B0E2970();
  __swift_project_value_buffer(v5, qword_27FA31718);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_25B0E2950();
  v7 = sub_25B0E3A50();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    sub_25B08405C();
    v14 = sub_25B0E3E20();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_25B04BE04(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_25B03D000, v6, v7, "Fallback provider %s group finished…", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x25F8613E0](v13, -1, -1);
    MEMORY[0x25F8613E0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_25B08239C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v6[9] = *(v8 + 64);
  v6[10] = swift_task_alloc();
  v9 = sub_25B0E24A0();
  v6[11] = v9;
  v10 = *(v9 - 8);
  v6[12] = v10;
  v6[13] = *(v10 + 64);
  v6[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v6[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v6[18] = v11;
  v12 = *(v11 - 8);
  v6[19] = v12;
  v6[20] = *(v12 + 64);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B0825E0, 0, 0);
}

uint64_t sub_25B0825E0()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  sub_25B0841A0(v0[3], v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    sub_25B058448(v0[17], &qword_27FA313B8, &unk_25B0E72A0);
  }

  else
  {
    v5 = v0[23];
    v57 = v0[22];
    v49 = v0[20];
    v52 = v0[19];
    v38 = v0[18];
    v6 = v0[15];
    v44 = v6;
    v54 = v0[14];
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    v59 = v0[10];
    v10 = v0[8];
    v56 = v0[7];
    v11 = v0[4];
    v39 = v0[5];
    v46 = *(v52 + 32);
    v42 = v5;
    (v46)(v5, v0[17]);
    v12 = sub_25B0E3940();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    (*(v8 + 16))(v54, v11, v9);
    (*(v52 + 16))(v57, v5, v38);
    (*(v10 + 16))(v59, v39, v56);
    v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v14 = (v7 + *(v52 + 80) + v13) & ~*(v52 + 80);
    v15 = *(v10 + 80);
    v16 = v49 + v15 + v14;
    v50 = v4;
    v17 = v16 & ~v15;
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    (*(v8 + 32))(v18 + v13, v54, v9);
    v46(v18 + v14, v57, v38);
    v19 = v18 + v17;
    v4 = v50;
    (*(v10 + 32))(v19, v59, v56);
    sub_25B064B60(v44, &unk_25B0E7560, v18);
    sub_25B058448(v44, &qword_27FA31990, &qword_25B0E6920);
    (*(v52 + 8))(v42, v38);
  }

  v20 = v0[18];
  v21 = v0[16];
  sub_25B0841A0(v0[6], v21);
  if (v4(v21, 1, v20) == 1)
  {
    sub_25B058448(v0[16], &qword_27FA313B8, &unk_25B0E72A0);
  }

  else
  {
    v22 = v0[21];
    v60 = v0[22];
    v23 = v0[19];
    v48 = v0[20];
    v24 = v0[18];
    v25 = v0[15];
    v53 = v25;
    v26 = v0[14];
    v47 = v0[13];
    v28 = v0[11];
    v27 = v0[12];
    v41 = v28;
    v43 = v26;
    v58 = v0[10];
    v29 = v0[8];
    v45 = v0[7];
    v40 = v0[5];
    v37 = v0[4];
    v55 = *(v23 + 32);
    v51 = v22;
    v55(v22, v0[16], v24);
    v30 = sub_25B0E3940();
    (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
    (*(v27 + 16))(v26, v37, v28);
    (*(v23 + 16))(v60, v22, v24);
    (*(v29 + 16))(v58, v40, v45);
    v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v32 = (v47 + *(v23 + 80) + v31) & ~*(v23 + 80);
    v33 = (v48 + *(v29 + 80) + v32) & ~*(v29 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    (*(v27 + 32))(v34 + v31, v43, v41);
    v55(v34 + v32, v60, v24);
    (*(v29 + 32))(v34 + v33, v58, v45);
    sub_25B064B60(v53, &unk_25B0E7550, v34);
    sub_25B058448(v53, &qword_27FA31990, &qword_25B0E6920);
    (*(v23 + 8))(v51, v24);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_25B082B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = sub_25B0E24A0();
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B082D40, 0, 0);
}

uint64_t sub_25B082D40()
{
  v27 = v0;
  if (qword_27FA30CF0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[2];
  v5 = sub_25B0E2970();
  v0[16] = __swift_project_value_buffer(v5, qword_27FA31718);
  v6 = *(v3 + 16);
  v0[17] = v6;
  v0[18] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_25B0E2950();
  v8 = sub_25B0E3A50();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v11 = v0[11];
  v12 = v0[12];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v13 = 136315138;
    sub_25B08405C();
    v14 = sub_25B0E3E20();
    v16 = v15;
    v19 = *(v12 + 8);
    v18 = v12 + 8;
    v17 = v19;
    v19(v10, v11);
    v20 = sub_25B04BE04(v14, v16, &v26);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_25B03D000, v7, v8, "Fallback provider %s listening for primary updates…", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x25F8613E0](v25, -1, -1);
    MEMORY[0x25F8613E0](v13, -1, -1);
  }

  else
  {

    v21 = *(v12 + 8);
    v18 = v12 + 8;
    v17 = v21;
    v21(v10, v11);
  }

  v0[19] = v18;
  v0[20] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  sub_25B0E39A0();
  v22 = swift_task_alloc();
  v0[21] = v22;
  *v22 = v0;
  v22[1] = sub_25B082FCC;
  v23 = v0[8];

  return MEMORY[0x2822003E8](v0 + 22, 0, 0, v23);
}

uint64_t sub_25B082FCC()
{

  return MEMORY[0x2822009F8](sub_25B0830C8, 0, 0);
}

uint64_t sub_25B0830C8()
{
  v39 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  if (*(v0 + 176) == 1)
  {
    v3 = *(v0 + 112);
    v4 = *(v0 + 16);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v1(v3, v4, v2);
    v5 = sub_25B0E2950();
    v6 = sub_25B0E3A50();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 160);
    v9 = *(v0 + 112);
    v10 = *(v0 + 88);
    if (v7)
    {
      v36 = v6;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v38 = v12;
      *v11 = 136315138;
      sub_25B08405C();
      v13 = sub_25B0E3E20();
      v15 = v14;
      v8(v9, v10);
      v16 = sub_25B04BE04(v13, v15, &v38);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_25B03D000, v5, v36, "Fallback provider %s primary updates stopped…", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x25F8613E0](v12, -1, -1);
      MEMORY[0x25F8613E0](v11, -1, -1);
    }

    else
    {

      v8(v9, v10);
    }

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v1(*(v0 + 104), *(v0 + 16), *(v0 + 88));
    v17 = sub_25B0E2950();
    v18 = sub_25B0E3A50();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 160);
    v21 = *(v0 + 104);
    v22 = *(v0 + 88);
    if (v19)
    {
      v37 = v18;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38 = v24;
      *v23 = 136315138;
      sub_25B08405C();
      v25 = sub_25B0E3E20();
      v27 = v26;
      v20(v21, v22);
      v28 = sub_25B04BE04(v25, v27, &v38);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_25B03D000, v17, v37, "Fallback provider %s primary update found…", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x25F8613E0](v24, -1, -1);
      MEMORY[0x25F8613E0](v23, -1, -1);
    }

    else
    {

      v20(v21, v22);
    }

    v32 = *(v0 + 48);
    v31 = *(v0 + 56);
    v33 = *(v0 + 40);
    sub_25B0E3970();
    (*(v32 + 8))(v31, v33);
    v34 = swift_task_alloc();
    *(v0 + 168) = v34;
    *v34 = v0;
    v34[1] = sub_25B082FCC;
    v35 = *(v0 + 64);

    return MEMORY[0x2822003E8](v0 + 176, 0, 0, v35);
  }
}

uint64_t sub_25B0834BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = sub_25B0E24A0();
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B083668, 0, 0);
}

uint64_t sub_25B083668()
{
  v27 = v0;
  if (qword_27FA30CF0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[2];
  v5 = sub_25B0E2970();
  v0[16] = __swift_project_value_buffer(v5, qword_27FA31718);
  v6 = *(v3 + 16);
  v0[17] = v6;
  v0[18] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_25B0E2950();
  v8 = sub_25B0E3A50();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v11 = v0[11];
  v12 = v0[12];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v13 = 136315138;
    sub_25B08405C();
    v14 = sub_25B0E3E20();
    v16 = v15;
    v19 = *(v12 + 8);
    v18 = v12 + 8;
    v17 = v19;
    v19(v10, v11);
    v20 = sub_25B04BE04(v14, v16, &v26);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_25B03D000, v7, v8, "Fallback provider %s listening for secondary updates…", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x25F8613E0](v25, -1, -1);
    MEMORY[0x25F8613E0](v13, -1, -1);
  }

  else
  {

    v21 = *(v12 + 8);
    v18 = v12 + 8;
    v17 = v21;
    v21(v10, v11);
  }

  v0[19] = v18;
  v0[20] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  sub_25B0E39A0();
  v22 = swift_task_alloc();
  v0[21] = v22;
  *v22 = v0;
  v22[1] = sub_25B0838F4;
  v23 = v0[8];

  return MEMORY[0x2822003E8](v0 + 22, 0, 0, v23);
}

uint64_t sub_25B0838F4()
{

  return MEMORY[0x2822009F8](sub_25B0839F0, 0, 0);
}

uint64_t sub_25B0839F0()
{
  v39 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  if (*(v0 + 176) == 1)
  {
    v3 = *(v0 + 112);
    v4 = *(v0 + 16);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v1(v3, v4, v2);
    v5 = sub_25B0E2950();
    v6 = sub_25B0E3A50();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 160);
    v9 = *(v0 + 112);
    v10 = *(v0 + 88);
    if (v7)
    {
      v36 = v6;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v38 = v12;
      *v11 = 136315138;
      sub_25B08405C();
      v13 = sub_25B0E3E20();
      v15 = v14;
      v8(v9, v10);
      v16 = sub_25B04BE04(v13, v15, &v38);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_25B03D000, v5, v36, "Fallback provider %s fallback updates stopped…", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x25F8613E0](v12, -1, -1);
      MEMORY[0x25F8613E0](v11, -1, -1);
    }

    else
    {

      v8(v9, v10);
    }

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v1(*(v0 + 104), *(v0 + 16), *(v0 + 88));
    v17 = sub_25B0E2950();
    v18 = sub_25B0E3A50();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 160);
    v21 = *(v0 + 104);
    v22 = *(v0 + 88);
    if (v19)
    {
      v37 = v18;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38 = v24;
      *v23 = 136315138;
      sub_25B08405C();
      v25 = sub_25B0E3E20();
      v27 = v26;
      v20(v21, v22);
      v28 = sub_25B04BE04(v25, v27, &v38);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_25B03D000, v17, v37, "Fallback provider %s fallback update found…", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x25F8613E0](v24, -1, -1);
      MEMORY[0x25F8613E0](v23, -1, -1);
    }

    else
    {

      v20(v21, v22);
    }

    v32 = *(v0 + 48);
    v31 = *(v0 + 56);
    v33 = *(v0 + 40);
    sub_25B0E3970();
    (*(v32 + 8))(v31, v33);
    v34 = swift_task_alloc();
    *(v0 + 168) = v34;
    *v34 = v0;
    v34[1] = sub_25B0838F4;
    v35 = *(v0 + 64);

    return MEMORY[0x2822003E8](v0 + 176, 0, 0, v35);
  }
}

uint64_t sub_25B083DE4()
{
  v1 = OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_instanceIdentifier;
  v2 = sub_25B0E24A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_primary));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_fallback));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for FallbackSnapshotProvider(uint64_t a1)
{
  result = qword_27FA31730;
  if (!qword_27FA31730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B083EF4(uint64_t a1)
{
  result = sub_25B0E24A0();
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

uint64_t sub_25B083F9C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25B065A30;

  return sub_25B07C8E8(a1, v3);
}

unint64_t sub_25B08405C()
{
  result = qword_27FA31830;
  if (!qword_27FA31830)
  {
    sub_25B0E24A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31830);
  }

  return result;
}

uint64_t sub_25B0840C0(uint64_t a1)
{
  v3 = *(sub_25B0E24A0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);

  return sub_25B081C70(a1, v1 + v4);
}

uint64_t sub_25B0841A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B084210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B084280(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(sub_25B0E24A0() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v6 + v13) & ~v6;
  v15 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_25B0498DC;

  return sub_25B081ED0(a1, v15, v16, v1 + v7, v1 + v10, v1 + v13, v1 + v14);
}

uint64_t sub_25B084478(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25B05859C;

  return sub_25B08239C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_25B084540(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_25B0E24A0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25B05859C;

  return sub_25B0834BC(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t objectdestroy_10Tm()
{
  v1 = sub_25B0E24A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v17 = (v3 + 32) & ~v3;
  v18 = v1;
  v4 = v17 + *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v16 = *(v11 + 64);
  v14 = v3 | v7 | v12;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v17, v18);
  (*(v6 + 8))(v0 + v8, v5);
  (*(v11 + 8))(v0 + v13, v10);

  return MEMORY[0x2821FE8E8](v0, v13 + v16, v14 | 7);
}

uint64_t sub_25B084900(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_25B0E24A0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25B05859C;

  return sub_25B082B94(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_25B084ACC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25B05859C;

  return sub_25B07CE34(a1, a2, v6, v7, v8);
}

uint64_t sub_25B084B90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25B05859C;

  return sub_25B07E5BC(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_25B084C64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25B05859C;

  return sub_25B07F6EC(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

void sub_25B084D38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2 != 1)
  {
    sub_25B084D48(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_25B084D48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2)
  {
  }
}

unint64_t sub_25B084DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31750;
  if (!qword_27FA31750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31750);
  }

  return result;
}

uint64_t sub_25B084E20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31820, &unk_25B0E6910);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v23 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  *v4 = 1;
  (*(v2 + 104))(v4, *MEMORY[0x277D85768], v1);
  sub_25B0E3950();
  (*(v2 + 8))(v4, v1);
  v14 = *(v6 + 16);
  v14(v11, v13, v5);
  v15 = *(v6 + 80);
  v16 = swift_allocObject();
  v24 = *(v6 + 32);
  v24(v16 + ((v15 + 16) & ~v15), v11, v5);
  sub_25B0E3960();
  v17 = v25 + OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_continuations;
  os_unfair_lock_lock((v25 + OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_continuations));
  v14(v26, v13, v5);
  v18 = *(v17 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v17 + 8) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_25B089A40(0, v18[2] + 1, 1, v18);
    *(v17 + 8) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_25B089A40((v20 > 1), v21 + 1, 1, v18);
    *(v17 + 8) = v18;
  }

  v18[2] = v21 + 1;
  v24(v18 + ((v15 + 32) & ~v15) + *(v6 + 72) * v21, v26, v5);
  os_unfair_lock_unlock(v17);
  return (*(v6 + 8))(v13, v5);
}

uint64_t sub_25B085194()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31760);
  __swift_project_value_buffer(v0, qword_27FA31760);
  return sub_25B0E2960();
}

uint64_t sub_25B085214(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for FacePlacement(0);
  v2[4] = swift_task_alloc();
  v2[5] = sub_25B0E3900();
  v2[6] = sub_25B0E38F0();
  v4 = sub_25B0E3850();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_25B0852DC, v4, v3);
}

uint64_t sub_25B0852DC()
{
  v17 = v0;
  if (qword_27FA30CF8 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA31760);

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315394;
    sub_25B0E24A0();
    sub_25B08405C();
    v6 = sub_25B0E3E20();
    v8 = sub_25B04BE04(v6, v7, &v16);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    v9 = sub_25B0E2730();
    swift_getObjectType();

    v10 = sub_25B0E3FB0();
    v12 = sub_25B04BE04(v10, v11, &v16);

    *(v4 + 14) = v12;
    _os_log_impl(&dword_25B03D000, v2, v3, "Provider %s asked for snapshot for %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v5, -1, -1);
    MEMORY[0x25F8613E0](v4, -1, -1);
  }

  v13 = v0[3];
  v14 = v0[4];
  sub_25B0596E0(v13 + OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_placement, v14);
  type metadata accessor for FaceRequest(0);
  swift_allocObject();
  v0[9] = FaceRequest.init(placement:visible:)(v14, 1);
  v0[10] = *(v13 + OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_faceQueue);

  return MEMORY[0x2822009F8](sub_25B085550, 0, 0);
}

uint64_t sub_25B085550()
{
  v1 = *(*(v0 + 80) + 16);
  *(v0 + 88) = v1;
  return MEMORY[0x2822009F8](sub_25B085574, v1, 0);
}

uint64_t sub_25B085574()
{
  sub_25B053238(v0[9]);
  v1 = v0[7];
  v2 = v0[8];

  return MEMORY[0x2822009F8](sub_25B0855DC, v1, v2);
}

uint64_t sub_25B0855DC()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = sub_25B0E38F0();
  v0[13] = v4;
  v5 = swift_task_alloc();
  v0[14] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31848, &qword_25B0E7718);
  *v5 = v0;
  v5[1] = sub_25B0856FC;
  v7 = v0[9];
  v8 = v0[2];
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x282200830](v8, &unk_25B0E7710, v3, sub_25B087A58, v7, v4, v9, v6);
}

uint64_t sub_25B0856FC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_25B08589C;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_25B085820;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25B085820()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B08589C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B085934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a1;
  v3[10] = a3;
  v3[11] = sub_25B0E3900();
  v3[12] = sub_25B0E38F0();
  v4 = swift_task_alloc();
  v3[13] = v4;
  *v4 = v3;
  v4[1] = sub_25B0859F0;

  return FaceRequest.result.getter((v3 + 2));
}

uint64_t sub_25B0859F0()
{
  *(*v1 + 112) = v0;

  v3 = sub_25B0E3850();
  if (v0)
  {
    v4 = sub_25B085DA4;
  }

  else
  {
    v4 = sub_25B085B48;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_25B085B48()
{
  v24 = v0;

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v21 = *(v0 + 56);
  v22 = *(v0 + 40);
  if (qword_27FA30CF8 != -1)
  {
    swift_once();
  }

  v4 = sub_25B0E2970();
  __swift_project_value_buffer(v4, qword_27FA31760);

  v5 = sub_25B0E2950();
  v6 = sub_25B0E3A50();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v20 = v1;
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315394;
    sub_25B0E24A0();
    sub_25B08405C();
    v9 = sub_25B0E3E20();
    v11 = sub_25B04BE04(v9, v10, &v23);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_25B0E2730();
    swift_getObjectType();

    v13 = sub_25B0E3FB0();
    v15 = sub_25B04BE04(v13, v14, &v23);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_25B03D000, v5, v6, "Provider %s got snapshot for %s", v7, 0x16u);
    swift_arrayDestroy();
    v16 = v8;
    v1 = v20;
    MEMORY[0x25F8613E0](v16, -1, -1);
    MEMORY[0x25F8613E0](v7, -1, -1);
  }

  v17 = *(v0 + 72);
  *v17 = v1;
  *(v17 + 8) = v2;
  *(v17 + 16) = v3;
  *(v17 + 24) = v22;
  *(v17 + 40) = v21;
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_25B085DA4()
{
  v22 = v0;

  if (qword_27FA30CF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31760);

  v3 = v1;
  v4 = sub_25B0E2950();
  v5 = sub_25B0E3A50();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v7 = 136315650;
    sub_25B0E24A0();
    sub_25B08405C();
    v10 = sub_25B0E3E20();
    v12 = sub_25B04BE04(v10, v11, v21);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v13 = sub_25B0E2730();
    swift_getObjectType();

    v14 = sub_25B0E3FB0();
    v16 = sub_25B04BE04(v14, v15, v21);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2112;
    v17 = v6;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v18;
    *v8 = v18;
    _os_log_impl(&dword_25B03D000, v4, v5, "Provider %s fail snapshot for %s - %@", v7, 0x20u);
    sub_25B058448(v8, &unk_27FA31850, &qword_25B0E74B0);
    MEMORY[0x25F8613E0](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v9, -1, -1);
    MEMORY[0x25F8613E0](v7, -1, -1);
  }

  swift_willThrow();
  v19 = *(v0 + 8);

  return v19();
}

void sub_25B086044(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState));
  sub_25B058D54(&v1[2]);

  os_unfair_lock_unlock(v1);
}

uint64_t sub_25B0860A4()
{
  sub_25B0597A8(v0 + OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_placement);
  v1 = OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_instanceIdentifier;
  v2 = sub_25B0E24A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_25B086168(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B0498DC;

  return sub_25B085214(a1);
}

uint64_t sub_25B086204@<X0>(uint64_t a1@<X8>)
{
  sub_25B084E20();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

id sub_25B08628C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  [*&v1[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_face] removeObserver_];
  v6 = &v1[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_continuations];
  os_unfair_lock_lock(&v1[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_continuations]);
  v7 = *(v6 + 1);
  v8 = *(v7 + 16);
  if (v8)
  {
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v5, v12, v2);
      sub_25B0E3990();
      (*(v9 - 8))(v5, v2);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  os_unfair_lock_unlock(v6);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_dealloc);
}

void sub_25B0864D8()
{
  if (qword_27FA30CF8 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA31760);
  v2 = v0;
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136315394;
    sub_25B0E24A0();
    sub_25B08405C();
    v7 = sub_25B0E3E20();
    v9 = sub_25B04BE04(v7, v8, v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    swift_getObjectType();
    v10 = sub_25B0E3FB0();
    v12 = sub_25B04BE04(v10, v11, v14);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_25B03D000, v3, v4, "Observer using %s got face update for %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v6, -1, -1);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  v13 = &v2[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_continuations];
  os_unfair_lock_lock(v13);
  sub_25B0866D0(&v13[2]._os_unfair_lock_opaque);

  os_unfair_lock_unlock(v13);
}

uint64_t sub_25B0866D0(void *a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v2 = *(v42 - 8);
  v3 = MEMORY[0x28223BE20](v42);
  v41 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v7 = MEMORY[0x28223BE20](v6);
  v44 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v27 = a1;
  result = *a1;
  v39 = *(*a1 + 16);
  if (v39)
  {
    v13 = 0;
    v35 = (v2 + 32);
    v36 = v9 + 16;
    v34 = (v2 + 88);
    v33 = *MEMORY[0x277D85758];
    v32 = *MEMORY[0x277D85750];
    v30 = *MEMORY[0x277D85748];
    v28 = (v9 + 8);
    v29 = (v2 + 8);
    v43 = (v9 + 32);
    v14 = MEMORY[0x277D84F90];
    v31 = v6;
    v37 = result;
    v38 = v9;
    while (1)
    {
      if (v13 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v16 = *(v9 + 72);
      (*(v9 + 16))(v11, result + v15 + v16 * v13, v6);
      v17 = v40;
      sub_25B0E3970();
      v19 = v41;
      v18 = v42;
      (*v35)(v41, v17, v42);
      v20 = (*v34)(v19, v18);
      if (v20 == v33 || v20 == v32)
      {
        goto LABEL_12;
      }

      if (v20 != v30)
      {
        break;
      }

      (*v28)(v11, v6);
LABEL_4:
      ++v13;
      v9 = v38;
      result = v37;
      if (v39 == v13)
      {
        goto LABEL_18;
      }
    }

    (*v29)(v41, v42);
LABEL_12:
    v22 = *v43;
    (*v43)(v44, v11, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25B08C168(0, *(v14 + 16) + 1, 1);
      v14 = v45;
    }

    v25 = *(v14 + 16);
    v24 = *(v14 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_25B08C168((v24 > 1), v25 + 1, 1);
      v14 = v45;
    }

    *(v14 + 16) = v25 + 1;
    v26 = v14 + v15 + v25 * v16;
    v6 = v31;
    v22(v26, v44, v31);
    goto LABEL_4;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:

  *v27 = v14;
  return result;
}

uint64_t IdentifiableFace.placement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B0E2750();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = (a1 + *(type metadata accessor for FacePlacement(0) + 20));
  type metadata accessor for FacePlacement.Location(0);
  result = sub_25B0E2530();
  *v4 = 0;
  return result;
}

uint64_t IdentifiableFace.roundTripSnapshotKey.getter()
{
  v1[11] = v0;
  v2 = sub_25B0E24A0();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = type metadata accessor for FacePlacement(0);
  v1[16] = swift_task_alloc();
  sub_25B0E3900();
  v1[17] = sub_25B0E38F0();
  v4 = sub_25B0E3850();
  v1[18] = v4;
  v1[19] = v3;

  return MEMORY[0x2822009F8](sub_25B086C7C, v4, v3);
}

uint64_t sub_25B086C7C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 88);
  v4 = sub_25B0E2750();
  (*(*(v4 - 8) + 16))(v1, v3, v4);
  v5 = (v1 + *(v2 + 20));
  type metadata accessor for FacePlacement.Location(0);
  sub_25B0E2530();
  *v5 = 0;
  type metadata accessor for OnDemandSnapshotProvider(0);
  v6 = swift_allocObject();
  *(v0 + 160) = v6;
  v7 = OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_instanceIdentifier;
  sub_25B0E2490();
  v8 = OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_faceQueue;
  if (qword_27FA30C90 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 128);
  v22 = v9;
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v12 = *(v0 + 96);
  *(v6 + v8) = qword_27FA31318;

  v13 = sub_25B0E2730();
  sub_25B0596E0(v9, v6 + OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_placement);
  v14 = *(v11 + 16);
  v14(v10, v6 + v7, v12);
  v15 = type metadata accessor for FaceObserver(0);
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_continuations];
  *v17 = 0;
  *(v17 + 1) = MEMORY[0x277D84F90];
  *&v16[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_face] = v13;
  v14(&v16[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_instanceIdentifier], v10, v12);
  *(v0 + 72) = v16;
  *(v0 + 80) = v15;
  v18 = v13;
  v19 = objc_msgSendSuper2((v0 + 72), sel_init);
  [v18 addObserver_];
  (*(v11 + 8))(v10, v12);

  sub_25B0597A8(v22);
  *(v6 + 16) = v19;
  v20 = swift_task_alloc();
  *(v0 + 168) = v20;
  *v20 = v0;
  v20[1] = sub_25B086F20;

  return sub_25B085214(v0 + 16);
}

uint64_t sub_25B086F20()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_25B08714C;
  }

  else
  {
    v5 = sub_25B08705C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25B08705C()
{

  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v4 = v0[4];
    v3 = v0[5];
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[8];

    sub_25B0505A8(v2, v1, v4, v3, v5, v6, v7);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v8 = v0[1];

  return v8(v4, v3);
}

uint64_t sub_25B08714C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t IdentifiableFace.localSnapshot.getter()
{
  v1[11] = v0;
  v2 = sub_25B0E24A0();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = type metadata accessor for FacePlacement(0);
  v1[16] = swift_task_alloc();
  sub_25B0E3900();
  v1[17] = sub_25B0E38F0();
  v4 = sub_25B0E3850();
  v1[18] = v4;
  v1[19] = v3;

  return MEMORY[0x2822009F8](sub_25B08733C, v4, v3);
}

uint64_t sub_25B08733C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 88);
  v4 = sub_25B0E2750();
  (*(*(v4 - 8) + 16))(v1, v3, v4);
  v5 = (v1 + *(v2 + 20));
  type metadata accessor for FacePlacement.Location(0);
  sub_25B0E2530();
  *v5 = 0;
  type metadata accessor for OnDemandSnapshotProvider(0);
  v6 = swift_allocObject();
  *(v0 + 160) = v6;
  v7 = OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_instanceIdentifier;
  sub_25B0E2490();
  v8 = OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_faceQueue;
  if (qword_27FA30C90 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 128);
  v22 = v9;
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v12 = *(v0 + 96);
  *(v6 + v8) = qword_27FA31318;

  v13 = sub_25B0E2730();
  sub_25B0596E0(v9, v6 + OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_placement);
  v14 = *(v11 + 16);
  v14(v10, v6 + v7, v12);
  v15 = type metadata accessor for FaceObserver(0);
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_continuations];
  *v17 = 0;
  *(v17 + 1) = MEMORY[0x277D84F90];
  *&v16[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_face] = v13;
  v14(&v16[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_instanceIdentifier], v10, v12);
  *(v0 + 72) = v16;
  *(v0 + 80) = v15;
  v18 = v13;
  v19 = objc_msgSendSuper2((v0 + 72), sel_init);
  [v18 addObserver_];
  (*(v11 + 8))(v10, v12);

  sub_25B0597A8(v22);
  *(v6 + 16) = v19;
  v20 = swift_task_alloc();
  *(v0 + 168) = v20;
  *v20 = v0;
  v20[1] = sub_25B0875E0;

  return sub_25B085214(v0 + 16);
}

uint64_t sub_25B0875E0()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_25B08714C;
  }

  else
  {
    v5 = sub_25B08771C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25B08771C()
{

  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[8];
    v8 = v7;
    sub_25B0505A8(v2, v1, v3, v4, v5, v6, v7);
  }

  else
  {
    v7 = 0;
  }

  v9 = v0[1];

  return v9(v7);
}

uint64_t sub_25B087808(uint64_t a1)
{
  result = type metadata accessor for FacePlacement(319);
  if (v2 <= 0x3F)
  {
    result = sub_25B0E24A0();
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

uint64_t sub_25B0878F8(uint64_t a1)
{
  result = sub_25B0E24A0();
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

uint64_t sub_25B0879AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25B0498DC;

  return sub_25B085934(a1, v5, v4);
}

uint64_t sub_25B087A78()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31860);
  __swift_project_value_buffer(v0, qword_27FA31860);
  return sub_25B0E2960();
}

uint64_t GalleryLoader.__allocating_init(device:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t GalleryLoader.faces.getter()
{
  v1[118] = v0;
  v1[119] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31878, &unk_25B0E8B00);
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  v2 = type metadata accessor for FacePlacement(0);
  v1[122] = v2;
  v1[123] = *(v2 - 8);
  v1[124] = swift_task_alloc();
  v3 = sub_25B0E2750();
  v1[125] = v3;
  v1[126] = *(v3 - 8);
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v4 = sub_25B0E24A0();
  v1[129] = v4;
  v1[130] = *(v4 - 8);
  v1[131] = swift_task_alloc();
  v1[132] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31880, &qword_25B0E7758);
  v1[133] = swift_task_alloc();
  v1[134] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B087D50, 0, 0);
}

uint64_t sub_25B087D50()
{
  if (qword_27FA30D00 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  v0[135] = __swift_project_value_buffer(v1, qword_27FA31860);
  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25B03D000, v2, v3, "Faces requested…", v4, 2u);
    MEMORY[0x25F8613E0](v4, -1, -1);
  }

  v5 = v0[118];

  v6 = *(v5 + 16);
  type metadata accessor for WatchGallery();
  v7 = swift_allocObject();
  v0[136] = v7;
  *(v7 + 16) = v6;
  v8 = v6;
  v9 = swift_task_alloc();
  v0[137] = v9;
  *v9 = v0;
  v9[1] = sub_25B087ED0;

  return WatchGallery.groups.getter(v9, v10);
}

uint64_t sub_25B087ED0(uint64_t a1)
{
  *(*v1 + 1104) = a1;

  return MEMORY[0x2822009F8](sub_25B087FD0, 0, 0);
}

void sub_25B087FD0()
{
  v164 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v148 = *(v0 + 1056);
    v4 = *(v0 + 1040);
    v162 = MEMORY[0x277D84F90];

    sub_25B08C230(0, v2, 0);
    v3 = v162;
    v155 = *(v1 + 16);
    v5 = sub_25B0E2830();
    v6 = 0;
    v141 = v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
    v143 = *(v5 - 8);
    v145 = v5;
    v137 = (v4 + 8);
    v150 = v2;
    v153 = v1;
    while (v155 != v6)
    {
      if (v6 >= *(v1 + 16))
      {
        goto LABEL_93;
      }

      v160 = v3;
      v7 = *(v0 + 1072);
      v8 = *(v148 + 48);
      v9 = *(v0 + 1064);
      (*(v143 + 16))(v7 + v8, v141 + *(v143 + 72) * v6, v145);
      *v9 = v6;
      (*(v143 + 32))(&v9[*(v148 + 48)], v7 + v8, v145);
      v10 = sub_25B0E2800();
      if (v11)
      {
        v12 = v11;
        v158 = v10;
      }

      else
      {
        v13 = *(v0 + 1048);
        v14 = *(v0 + 1032);
        sub_25B0E2490();
        v158 = sub_25B0E2460();
        v12 = v15;
        (*v137)(v13, v14);
      }

      v16 = *(v0 + 1064);
      v17 = sub_25B0E2820();
      v19 = v18;
      v20 = sub_25B0E27D0();
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = MEMORY[0x277D84F98];
      }

      v22 = sub_25B0E2810();
      sub_25B058448(v16, &qword_27FA31880, &qword_25B0E7758);
      v3 = v160;
      v162 = v160;
      v24 = *(v160 + 16);
      v23 = *(v160 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_25B08C230((v23 > 1), v24 + 1, 1);
        v3 = v162;
      }

      *(v3 + 16) = v24 + 1;
      v25 = (v3 + 72 * v24);
      v25[11] = v22;
      v25[12] = v6;
      v25[4] = v158;
      v25[5] = v12;
      v25[6] = v17;
      v25[7] = v19;
      v25[8] = 0;
      v25[9] = 0;
      v25[10] = v21;
      ++v6;
      v1 = v153;
      if (v150 == v6)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

LABEL_15:

  v161 = v3;
  v27 = sub_25B0DBB48(v26);
  v28 = *(v27 + 16);

  if (v28)
  {
    v29 = 0;
    v30 = (v27 + 32);
    v31 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v29 >= *(v27 + 16))
      {
        goto LABEL_94;
      }

      v32 = v30[1];
      *(v0 + 416) = *v30;
      *(v0 + 432) = v32;
      v33 = v30[2];
      v34 = v30[3];
      v35 = v30[5];
      *(v0 + 480) = v30[4];
      *(v0 + 496) = v35;
      *(v0 + 448) = v33;
      *(v0 + 464) = v34;
      v37 = *v30;
      v36 = v30[1];
      v39 = v30[4];
      v38 = v30[5];
      v41 = v30[2];
      v40 = v30[3];
      *(v0 + 16) = v29;
      *(v0 + 56) = v41;
      *(v0 + 72) = v40;
      *(v0 + 88) = v39;
      *(v0 + 104) = v38;
      *(v0 + 24) = v37;
      *(v0 + 40) = v36;
      v42 = *(v0 + 72);
      *(v0 + 256) = *(v0 + 56);
      *(v0 + 272) = v42;
      v43 = *(v0 + 104);
      *(v0 + 288) = *(v0 + 88);
      *(v0 + 304) = v43;
      v44 = *(v0 + 40);
      *(v0 + 224) = *(v0 + 24);
      *(v0 + 240) = v44;
      sub_25B08CE58(v0 + 416, v0 + 512);
      v45 = sub_25B088F18(v29, v0 + 224);
      sub_25B058448(v0 + 16, &qword_27FA31888, &qword_25B0E7760);
      v46 = *(v45 + 16);
      v47 = v31[2];
      v48 = v47 + v46;
      if (__OFADD__(v47, v46))
      {
        goto LABEL_95;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && (v50 = v31[3] >> 1, v50 >= v48))
      {
        if (!*(v45 + 16))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v47 <= v48)
        {
          v51 = v47 + v46;
        }

        else
        {
          v51 = v47;
        }

        v31 = sub_25B08A26C(isUniquelyReferenced_nonNull_native, v51, 1, v31, &qword_27FA318E8, &qword_25B0E77F8, type metadata accessor for FacePlacement);
        v50 = v31[3] >> 1;
        if (!*(v45 + 16))
        {
LABEL_17:

          v27 = v159;
          if (v46)
          {
            goto LABEL_96;
          }

          goto LABEL_18;
        }
      }

      if (v50 - v31[2] < v46)
      {
        goto LABEL_101;
      }

      swift_arrayInitWithCopy();

      v27 = v159;
      if (v46)
      {
        v52 = v31[2];
        v53 = __OFADD__(v52, v46);
        v54 = v52 + v46;
        if (v53)
        {
          goto LABEL_103;
        }

        v31[2] = v54;
      }

LABEL_18:
      ++v29;
      v30 += 6;
      if (v28 == v29)
      {
        goto LABEL_34;
      }
    }
  }

  v31 = MEMORY[0x277D84F90];
LABEL_34:

  v55 = sub_25B0E2950();
  v56 = sub_25B0E3A50();
  v149 = v31;
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 134217984;
    *(v57 + 4) = v31[2];

    _os_log_impl(&dword_25B03D000, v55, v56, "Curated gallery has %ld face(s) to load!", v57, 0xCu);
    MEMORY[0x25F8613E0](v57, -1, -1);
  }

  else
  {
  }

  v58 = *(v27 + 16);

  if (v58)
  {
    v59 = 0;
    v60 = (v27 + 32);
    v61 = MEMORY[0x277D84F90];
    while (v59 < *(v27 + 16))
    {
      v62 = v60[1];
      *(v0 + 608) = *v60;
      *(v0 + 624) = v62;
      v63 = v60[2];
      v64 = v60[3];
      v65 = v60[5];
      *(v0 + 672) = v60[4];
      *(v0 + 688) = v65;
      *(v0 + 640) = v63;
      *(v0 + 656) = v64;
      v67 = *v60;
      v66 = v60[1];
      v69 = v60[4];
      v68 = v60[5];
      v71 = v60[2];
      v70 = v60[3];
      *(v0 + 120) = v59;
      *(v0 + 160) = v71;
      *(v0 + 176) = v70;
      *(v0 + 192) = v69;
      *(v0 + 208) = v68;
      *(v0 + 128) = v67;
      *(v0 + 144) = v66;
      v72 = *(v0 + 176);
      *(v0 + 352) = *(v0 + 160);
      *(v0 + 368) = v72;
      v73 = *(v0 + 208);
      *(v0 + 384) = *(v0 + 192);
      *(v0 + 400) = v73;
      v74 = *(v0 + 144);
      *(v0 + 320) = *(v0 + 128);
      *(v0 + 336) = v74;
      sub_25B08CE58(v0 + 608, v0 + 704);
      v75 = sub_25B08924C(v59, v0 + 320);
      sub_25B058448(v0 + 120, &qword_27FA31888, &qword_25B0E7760);
      v76 = v75[2];
      v77 = v61[2];
      v78 = v77 + v76;
      if (__OFADD__(v77, v76))
      {
        goto LABEL_99;
      }

      v79 = swift_isUniquelyReferenced_nonNull_native();
      if ((v79 & 1) == 0 || (v80 = v61[3] >> 1, v80 < v78))
      {
        if (v77 <= v78)
        {
          v81 = v77 + v76;
        }

        else
        {
          v81 = v77;
        }

        v61 = sub_25B08A26C(v79, v81, 1, v61, &qword_27FA318E8, &qword_25B0E77F8, type metadata accessor for FacePlacement);
        v80 = v61[3] >> 1;
      }

      v27 = v159;
      if (v75[2])
      {
        if (v80 - v61[2] < v76)
        {
          goto LABEL_102;
        }

        swift_arrayInitWithCopy();

        if (v76)
        {
          v82 = v61[2];
          v53 = __OFADD__(v82, v76);
          v83 = v82 + v76;
          if (v53)
          {
            goto LABEL_104;
          }

          v61[2] = v83;
        }
      }

      else
      {

        if (v76)
        {
          goto LABEL_100;
        }
      }

      ++v59;
      v60 += 6;
      if (v58 == v59)
      {
        goto LABEL_55;
      }
    }

LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v61 = MEMORY[0x277D84F90];
LABEL_55:

  v84 = sub_25B0E2950();
  v85 = sub_25B0E3A50();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 134217984;
    *(v86 + 4) = v61[2];

    _os_log_impl(&dword_25B03D000, v84, v85, "Gallery details has %ld face(s) to load!", v86, 0xCu);
    MEMORY[0x25F8613E0](v86, -1, -1);
  }

  else
  {
  }

  v156 = *(v161 + 16);
  if (v156)
  {
    v87 = 0;
    v88 = v161 + 32;
    v146 = *(v0 + 1008);
    v151 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v87 >= *(v161 + 16))
      {
        goto LABEL_97;
      }

      *(v0 + 800) = *v88;
      v89 = *(v88 + 16);
      v90 = *(v88 + 32);
      v91 = *(v88 + 48);
      *(v0 + 864) = *(v88 + 64);
      *(v0 + 832) = v90;
      *(v0 + 848) = v91;
      *(v0 + 816) = v89;
      v92 = *(v0 + 800);
      v93 = *(v0 + 808);
      sub_25B08CEB4(v0 + 800, v0 + 872);
      v94 = sub_25B0E3730();
      v95 = sub_25B0E3730();
      v96 = NTKCompanionClockFaceLocalizedString();

      v97 = sub_25B0E3740();
      v99 = v98;

      if (v92 == v97 && v93 == v99)
      {
      }

      else
      {
        v100 = sub_25B0E3E30();

        if ((v100 & 1) == 0)
        {
          v101 = *(v0 + 856);
          if (*(v101 + 16))
          {
            v102 = *(v0 + 1024);
            v103 = *(v0 + 1016);
            v104 = *(v0 + 1000);
            v105 = (*(v146 + 80) + 32) & ~*(v146 + 80);
            (*(v146 + 16))(v103, v101 + v105, v104);
            sub_25B08CF10(v0 + 800);
            v106 = *(v146 + 32);
            v106(v102, v103, v104);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v151 = sub_25B08A26C(0, v151[2] + 1, 1, v151, &qword_27FA318B8, &qword_25B0E77C8, MEMORY[0x277D2BE00]);
            }

            v108 = v151[2];
            v107 = v151[3];
            if (v108 >= v107 >> 1)
            {
              v151 = sub_25B08A26C((v107 > 1), v108 + 1, 1, v151, &qword_27FA318B8, &qword_25B0E77C8, MEMORY[0x277D2BE00]);
            }

            v109 = *(v0 + 1024);
            v110 = *(v0 + 1000);
            v151[2] = v108 + 1;
            v106(v151 + v105 + *(v146 + 72) * v108, v109, v110);
            goto LABEL_62;
          }
        }
      }

      sub_25B08CF10(v0 + 800);
LABEL_62:
      ++v87;
      v88 += 72;
      if (v156 == v87)
      {
        goto LABEL_74;
      }
    }
  }

  v151 = MEMORY[0x277D84F90];
LABEL_74:
  v162 = v151;

  sub_25B08A448(&v162);

  v111 = v162;
  v112 = v162[2];
  if (v112)
  {
    v113 = *(v0 + 1008);
    v138 = *(v0 + 976);
    v139 = *(v0 + 984);
    v136 = *(v0 + 952);
    v162 = MEMORY[0x277D84F90];
    sub_25B08C1EC(0, v112, 0);
    v114 = 0;
    v157 = v162;
    v152 = *(v111 + 16);
    v135 = v111 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
    v142 = v113;
    v144 = v112;
    v147 = v111;
    v140 = v61;
    while (v152 != v114)
    {
      if (v114 >= *(v111 + 16))
      {
        goto LABEL_106;
      }

      v115 = *(v0 + 968);
      v116 = *(v136 + 48);
      v117 = *(v0 + 1000);
      v154 = *(v0 + 992);
      v118 = *(v0 + 960);
      v119 = *(v142 + 16);
      v119(v115 + v116, v135 + *(v142 + 72) * v114, v117);
      *v118 = v114;
      v120 = *(v136 + 48);
      (*(v142 + 32))(&v118[v120], v115 + v116, v117);
      v119(v154, &v118[v120], v117);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31890, &qword_25B0E7768);
      v121 = swift_allocObject();
      *(v121 + 16) = xmmword_25B0E7720;
      *(v121 + 32) = v114;
      v122 = (v154 + *(v138 + 20));
      type metadata accessor for FacePlacement.Location(0);
      MEMORY[0x25F85F060](v121);
      *v122 = 4;
      sub_25B058448(v118, &qword_27FA31878, &unk_25B0E8B00);
      v162 = v157;
      v124 = *(v157 + 16);
      v123 = *(v157 + 24);
      if (v124 >= v123 >> 1)
      {
        sub_25B08C1EC((v123 > 1), v124 + 1, 1);
        v157 = v162;
      }

      v125 = *(v0 + 992);
      ++v114;
      *(v157 + 16) = v124 + 1;
      sub_25B059744(v125, v157 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v124);
      v111 = v147;
      v126 = v149;
      v61 = v140;
      if (v144 == v114)
      {

        goto LABEL_83;
      }
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    return;
  }

  v157 = MEMORY[0x277D84F90];
  v126 = v149;
LABEL_83:

  v127 = sub_25B0E2950();
  v128 = sub_25B0E3A50();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    *v129 = 134217984;
    *(v129 + 4) = *(v157 + 16);

    _os_log_impl(&dword_25B03D000, v127, v128, "All Faces has %ld face(s) to load!", v129, 0xCu);
    MEMORY[0x25F8613E0](v129, -1, -1);
  }

  else
  {
  }

  v163 = v126;
  sub_25B08BE30(v61);
  sub_25B08BE30(v157);
  v130 = v163;

  v131 = sub_25B0E2950();
  v132 = sub_25B0E3A50();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    *v133 = 134217984;
    *(v133 + 4) = v130[2];

    _os_log_impl(&dword_25B03D000, v131, v132, "Identified %ld face(s) to load!", v133, 0xCu);
    MEMORY[0x25F8613E0](v133, -1, -1);
  }

  else
  {
  }

  v134 = *(v0 + 8);

  v134(v130);
}