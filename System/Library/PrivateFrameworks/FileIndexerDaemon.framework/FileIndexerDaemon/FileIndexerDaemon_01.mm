uint64_t sub_24AB87FDC()
{
  v1[34] = v0;
  v2 = sub_24ABABB6C();
  v1[35] = v2;
  v1[36] = *(v2 - 8);
  v1[37] = swift_task_alloc();
  v1[38] = *(type metadata accessor for RootInfo(0) - 8);
  v1[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v3 = sub_24ABABC0C();
  v1[42] = v3;
  v1[43] = *(v3 - 8);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v4 = type metadata accessor for FileLocator(0);
  v1[48] = v4;
  v1[49] = *(v4 - 8);
  v1[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B08, &qword_24ABAED78);
  v1[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AB88278, 0, 0);
}

uint64_t sub_24AB88278()
{
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v1 = sub_24ABABD8C();
  *(v0 + 416) = __swift_project_value_buffer(v1, qword_27EF95FD8);
  v2 = sub_24ABABD6C();
  v3 = sub_24ABAC0FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AB6F000, v2, v3, "starting to garbage collect index items missing on disk", v4, 2u);
    MEMORY[0x24C229EC0](v4, -1, -1);
  }

  v5 = *(v0 + 272);

  *(v0 + 240) = MEMORY[0x277D84F90];
  v6 = v5[11];
  v7 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v6);
  (*(v7 + 40))(v6, v7);
  v8 = *(v0 + 224);
  v9 = __swift_project_boxed_opaque_existential_1((v0 + 200), v8);
  v10 = *(v8 - 8);
  v11 = swift_task_alloc();
  (*(v10 + 16))(v11, v9, v8);
  *(v0 + 184) = swift_getAssociatedTypeWitness();
  *(v0 + 192) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 160));
  sub_24ABAC0AC();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 200));
  v12 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state;
  *(v0 + 424) = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexQueue;
  *(v0 + 432) = v12;
  *(v0 + 480) = *MEMORY[0x277CC91D8];
  *(v0 + 440) = 0u;
  *(v0 + 456) = 0u;
  v13 = *(v0 + 184);
  v14 = *(v0 + 192);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 160, v13);
  v15 = swift_task_alloc();
  *(v0 + 472) = v15;
  *v15 = v0;
  v15[1] = sub_24AB88594;
  v16 = *(v0 + 408);

  return MEMORY[0x282200310](v16, 0, 0, v0 + 248, v13, v14);
}

uint64_t sub_24AB88594()
{

  if (v0)
  {
    v1 = sub_24AB894B8;
  }

  else
  {
    v1 = sub_24AB886D0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24AB886D0()
{
  v1 = v0 + 30;
  isEscapingClosureAtFileLocation = v0[51];
  if ((*(v0[49] + 48))(isEscapingClosureAtFileLocation, 1, v0[48]) != 1)
  {
LABEL_5:
    v8 = v0[50];
    sub_24AB91CDC(isEscapingClosureAtFileLocation, v8, type metadata accessor for FileLocator);
    if (*(v8 + 8))
    {
      v9 = sub_24ABABD6C();
      v10 = sub_24ABAC11C();
      v11 = os_log_type_enabled(v9, v10);
      v12 = v0[50];
      if (v11)
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_24AB6F000, v9, v10, "nil fileID for query result", v13, 2u);
        MEMORY[0x24C229EC0](v13, -1, -1);
      }

      sub_24AB91A08(v12, type metadata accessor for FileLocator);
      goto LABEL_40;
    }

    v14 = *v8;
    v16 = v0[42];
    v15 = v0[43];
    v17 = v0[41];
    sub_24AB94828(v0[50] + *(v0[48] + 20), v17, &qword_27EF95B00, &qword_24ABAED70);
    if ((*(v15 + 48))(v17, 1, v16) == 1)
    {
      sub_24AB7C4A4(v0[41], &qword_27EF95B00, &qword_24ABAED70);
      v18 = sub_24ABABD6C();
      v19 = sub_24ABAC11C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134217984;
        *(v20 + 4) = v14;
        _os_log_impl(&dword_24AB6F000, v18, v19, "nil url for %llu, deleting from index", v20, 0xCu);
        MEMORY[0x24C229EC0](v20, -1, -1);
      }

      v21 = v0[57];
      v22 = v0[58];
      v23 = v0[53];
      v106 = v0[50];
      v24 = v0[34];

      v25 = *(v24 + v23);
      v26 = swift_allocObject();
      *(v26 + 16) = v24;
      *(v26 + 24) = v14;

      sub_24AB91BD8(v21, v22);
      v27 = swift_allocObject();
      v28 = sub_24AB91C78;
      *(v27 + 16) = sub_24AB91C78;
      *(v27 + 24) = v26;
      v0[12] = sub_24AB94E34;
      v0[13] = v27;
      v0[8] = MEMORY[0x277D85DD0];
      v0[9] = 1107296256;
      v0[10] = sub_24AB87488;
      v0[11] = &block_descriptor_106;
      v29 = _Block_copy(v0 + 8);

      dispatch_sync(v25, v29);
      _Block_release(v29);
      sub_24AB91A08(v106, type metadata accessor for FileLocator);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if (v21)
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      v102 = v1;
      v39 = (v0[34] + v0[54]);
      v107 = *(v0[43] + 32);
      v107(v0[47], v0[41], v0[42]);
      os_unfair_lock_lock(v39);
      v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28);
      v41 = *&v40[*(type metadata accessor for FIRoot.State(0) + 28)];
      v42 = *(v41 + 16);
      v43 = MEMORY[0x277D84F90];
      v104 = v14;
      if (v42)
      {
        v44 = v0[38];
        v0[32] = MEMORY[0x277D84F90];
        sub_24ABA18DC(0, v42, 0);
        v43 = v0[32];
        v45 = v41 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v46 = *(v44 + 72);
        do
        {
          v47 = v0[46];
          v49 = v0[42];
          v48 = v0[43];
          v50 = v0[39];
          sub_24AB919A0(v45, v50, type metadata accessor for RootInfo);
          (*(v48 + 16))(v47, v50, v49);
          sub_24AB91A08(v50, type metadata accessor for RootInfo);
          v0[32] = v43;
          v52 = *(v43 + 16);
          v51 = *(v43 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_24ABA18DC((v51 > 1), v52 + 1, 1);
            v43 = v0[32];
          }

          v53 = v0[46];
          v54 = v0[42];
          v55 = v0[43];
          *(v43 + 16) = v52 + 1;
          v107(v43 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v52, v53, v54);
          v45 += v46;
          --v42;
        }

        while (v42);
      }

      v56 = v0[34];
      os_unfair_lock_unlock((v56 + v0[54]));
      v57 = v56[7];
      __swift_project_boxed_opaque_existential_1(v56 + 3, v56[6]);
      v58 = sub_24ABABBEC();
      v59 = (*(v57 + 16))(v58);

      if (v59)
      {
        v60 = v0[50];
        v61 = v0[47];
        v62 = v0[42];
        v63 = v0[43];

        (*(v63 + 8))(v61, v62);
LABEL_27:
        sub_24AB91A08(v60, type metadata accessor for FileLocator);
        goto LABEL_40;
      }

      v0[33] = 0;
      v64 = v104;
      if (fpfs_fsgetpath() || (v85 = v0[33]) == 0)
      {

        v65 = v0[33];
        v66 = v102;
        if (v65)
        {
LABEL_30:
          MEMORY[0x24C229EC0](v65, -1, -1);
        }
      }

      else
      {
        v101 = *(v0 + 120);
        v86 = v0[42];
        v87 = v0[43];
        v67 = v0[40];
        v88 = v0[36];
        v64 = v0[37];
        v100 = v0[35];
        v89 = [objc_opt_self() defaultManager];
        v90 = [v89 stringWithFileSystemRepresentation:v85 length:strlen(v85)];

        v66 = sub_24ABABEBC();
        (*(v87 + 56))(v67, 1, 1, v86);
        (*(v88 + 104))(v64, v101, v100);
        sub_24ABABBFC();
        v91 = 0;
        v92 = *(v43 + 16);
        while (v92 != v91)
        {
          if (v91 >= *(v43 + 16))
          {
            __break(1u);
            goto LABEL_54;
          }

          v93 = v0[44];
          v64 = v0[42];
          v94 = v0[43];
          (*(v94 + 16))(v93, v43 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v91, v64);
          v95 = sub_24ABABB9C();
          v96 = *(v94 + 8);
          ++v91;
          v96(v93, v64);
          v66 = sub_24ABABB9C();
          v67 = [v95 fp:v66 relativePathWithRealpath:?];

          if (v67)
          {
            v97 = v0[45];
            v98 = v0[42];

            v96(v97, v98);
            v99 = v0[33];
            if (v99)
            {
              MEMORY[0x24C229EC0](v99, -1, -1);
            }

            v60 = v0[50];
            v96(v0[47], v0[42]);
            goto LABEL_27;
          }
        }

        (*(v0[43] + 8))(v0[45], v0[42]);

        v65 = v0[33];
        v66 = v102;
        v64 = v104;
        if (v65)
        {
          goto LABEL_30;
        }
      }

      v67 = *v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v66 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_54:
        v67 = sub_24ABA1408(0, *(v67 + 2) + 1, 1, v67);
        *v66 = v67;
      }

      v70 = *(v67 + 2);
      v69 = *(v67 + 3);
      if (v70 >= v69 >> 1)
      {
        v67 = sub_24ABA1408((v69 > 1), v70 + 1, 1, v67);
      }

      *(v67 + 2) = v70 + 1;
      *&v67[8 * v70 + 32] = v64;
      *v66 = v67;
      if (v70 >= 0x31)
      {
        v75 = v0[55];
        v74 = v0[56];
        v105 = v0[47];
        v108 = v0[50];
        v76 = v0[43];
        v103 = v0[42];
        v77 = v0[34];
        v78 = *(v77 + v0[53]);
        v73 = swift_allocObject();
        *(v73 + 16) = v77;
        *(v73 + 24) = v66;

        sub_24AB91BD8(v75, v74);
        v79 = swift_allocObject();
        *(v79 + 16) = sub_24AB91C90;
        *(v79 + 24) = v73;
        v0[18] = sub_24AB94E34;
        v0[19] = v79;
        v0[14] = MEMORY[0x277D85DD0];
        v0[15] = 1107296256;
        v0[16] = sub_24AB87488;
        v0[17] = &block_descriptor_116;
        v80 = _Block_copy(v0 + 14);

        dispatch_sync(v78, v80);
        _Block_release(v80);
        (*(v76 + 8))(v105, v103);
        sub_24AB91A08(v108, type metadata accessor for FileLocator);
        LOBYTE(v77) = swift_isEscapingClosureAtFileLocation();

        if (v77)
        {
          __break(1u);
        }

        *v66 = MEMORY[0x277D84F90];

        v72 = sub_24AB91C90;
      }

      else
      {
        v71 = v0[50];
        (*(v0[43] + 8))(v0[47], v0[42]);
        sub_24AB91A08(v71, type metadata accessor for FileLocator);
        v72 = v0[55];
        v73 = v0[56];
      }

      v28 = v0[57];
      v26 = v0[58];
      v0[55] = v72;
      v0[56] = v73;
    }

    v0[57] = v28;
    v0[58] = v26;
LABEL_40:
    v81 = v0[23];
    v82 = v0[24];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 20), v81);
    v83 = swift_task_alloc();
    v0[59] = v83;
    *v83 = v0;
    v83[1] = sub_24AB88594;
    v84 = v0[51];

    return MEMORY[0x282200310](v84, 0, 0, v0 + 31, v81, v82);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 20);
  if (!*(*v1 + 16))
  {
LABEL_14:
    v6 = 0;
    v5 = 0;
    goto LABEL_15;
  }

  v3 = v0[34];
  v4 = *(v3 + v0[53]);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v1 = swift_allocObject();
  v6 = sub_24AB91C20;
  v1[2] = sub_24AB91C20;
  v1[3] = v5;
  v0[6] = sub_24AB91C50;
  v0[7] = v1;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24AB87488;
  v0[5] = &block_descriptor_95;
  v7 = _Block_copy(v0 + 2);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_15:
  v30 = sub_24ABABD6C();
  v31 = sub_24ABAC0FC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_24AB6F000, v30, v31, "finished garbage collecting index items missing on disk", v32, 2u);
    MEMORY[0x24C229EC0](v32, -1, -1);
  }

  v34 = v0[57];
  v33 = v0[58];
  v36 = v0[55];
  v35 = v0[56];

  sub_24AB91BD8(v36, v35);
  sub_24AB91BD8(v34, v33);
  sub_24AB91BD8(v6, v5);

  v37 = v0[1];

  return v37();
}

uint64_t sub_24AB894B8()
{
  v2 = v0[57];
  v1 = v0[58];
  v4 = v0[55];
  v3 = v0[56];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 20);

  sub_24AB91BD8(v4, v3);
  sub_24AB91BD8(v2, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AB8960C(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = sub_24ABABD0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ABABCFC();
  v8 = sub_24ABABCEC();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v20[0] = v8;
  v20[1] = v10;
  v11 = sub_24AB82948(v20, &v21);
  v13 = v12;
  v14 = a1[11];
  v15 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B20, &unk_24ABAED90);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24ABAD4A0;
  *(v16 + 32) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v15 + 8))(MEMORY[0x277D84F90], v16, v11, v13, sub_24AB91CD0, v17, v14, v15);

  return sub_24AB77A9C(v11, v13);
}

void sub_24AB89804(NSObject *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v5 = sub_24ABABD8C();
    __swift_project_value_buffer(v5, qword_27EF95FD8);
    v6 = a1;
    oslog = sub_24ABABD6C();
    v7 = sub_24ABAC11C();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 134218242;
      *(v8 + 4) = a2;
      *(v8 + 12) = 2112;
      v10 = a1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      *v9 = v11;
      _os_log_impl(&dword_24AB6F000, oslog, v7, "error while deleting fileID %llu: %@", v8, 0x16u);
      sub_24AB7C4A4(v9, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v9, -1, -1);
      MEMORY[0x24C229EC0](v8, -1, -1);

      v12 = oslog;
    }

    else
    {

      v12 = a1;
    }
  }
}

void sub_24AB899D4(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B10, &unk_24ABAED80);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24ABAD4A0;
    v3 = a1;
    sub_24ABAC2FC();
    MEMORY[0x24C228EB0](0xD00000000000001CLL, 0x800000024ABAFD10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95C50, &qword_24ABAF140);
    sub_24ABAC3AC();
    *(v2 + 56) = MEMORY[0x277D837D0];
    *(v2 + 32) = 0;
    *(v2 + 40) = 0xE000000000000000;
    sub_24ABAC61C();
  }
}

uint64_t sub_24AB89AF4(void *a1, uint64_t *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = sub_24ABABD0C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ABABCFC();
  v10 = sub_24ABABCEC();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v22[0] = v10;
  v22[1] = v12;
  v13 = sub_24AB82948(v22, &v23);
  v15 = v14;
  v16 = a1[11];
  v17 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v16);
  v18 = *a2;
  v19 = *(v17 + 8);

  v19(MEMORY[0x277D84F90], v18, v13, v15, a3, 0, v16, v17);

  return sub_24AB77A9C(v13, v15);
}

void sub_24AB89C9C(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v3 = sub_24ABABD8C();
    __swift_project_value_buffer(v3, qword_27EF95FD8);
    v4 = a1;
    oslog = sub_24ABABD6C();
    v5 = sub_24ABAC11C();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_24AB6F000, oslog, v5, "error while deleting items: %@", v6, 0xCu);
      sub_24AB7C4A4(v7, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v7, -1, -1);
      MEMORY[0x24C229EC0](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }
}

uint64_t sub_24AB89E4C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v38 = a3;
  v35 = a1;
  v8 = sub_24ABABDFC();
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24ABABE1C();
  v11 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v4;
  v41 = v4;
  sub_24ABABD1C();
  v14 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus;
  v15 = *(v4 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus);
  v40 = v4;
  v39 = v4;
  v16 = sub_24ABABD1C();
  if (v15 == 2)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v17 = sub_24ABABD8C();
    __swift_project_value_buffer(v17, qword_27EF95FD8);
    v18 = sub_24ABABD6C();
    v19 = sub_24ABAC0FC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24AB6F000, v18, v19, "scan is already running, not starting another", v20, 2u);
      MEMORY[0x24C229EC0](v20, -1, -1);
    }

    sub_24AB94484();
    v21 = swift_allocError();
    v38();

    return sub_24AB833A8();
  }

  else
  {
    v23 = MEMORY[0x28223BE20](v16);
    *(&v35 - 2) = v4;
    MEMORY[0x28223BE20](v23);
    *(&v35 - 2) = v4;
    v24 = sub_24ABABD1C();
    v25 = *(v4 + v14);
    v26 = MEMORY[0x28223BE20](v24);
    *(&v35 - 2) = v4;
    MEMORY[0x28223BE20](v26);
    *(&v35 - 2) = v4;
    sub_24ABABD1C();
    if (v25 == 1)
    {
      if (qword_27EF95308 != -1)
      {
        swift_once();
      }

      v27 = sub_24ABABD8C();
      __swift_project_value_buffer(v27, qword_27EF95FD8);
      v28 = sub_24ABABD6C();
      v29 = sub_24ABAC0FC();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_24AB6F000, v28, v29, "starting scans", v30, 2u);
        MEMORY[0x24C229EC0](v30, -1, -1);
      }
    }

    v31 = swift_allocObject();
    v32 = v38;
    v31[2] = v5;
    v31[3] = v32;
    v33 = v35;
    v31[4] = a4;
    v31[5] = v33;
    v31[6] = a2;
    aBlock[4] = sub_24AB94474;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AB9AA08;
    aBlock[3] = &block_descriptor_235;
    v34 = _Block_copy(aBlock);

    sub_24ABABE0C();
    v43 = MEMORY[0x277D84F90];
    sub_24AB90D74(&unk_27EF95DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
    sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
    sub_24ABAC28C();
    MEMORY[0x24C229110](0, v13, v10, v34);
    _Block_release(v34);
    (*(v37 + 8))(v10, v8);
    (*(v11 + 8))(v13, v36);
  }
}

uint64_t sub_24AB8A4F0(char *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v159 = a5;
  v155 = a4;
  v160 = a2;
  v161 = a3;
  v169 = *MEMORY[0x277D85DE8];
  v6 = sub_24ABABDFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v158 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24ABABE1C();
  v157 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v156 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexingState(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24ABABD0C();
  v152 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v136 - v18;
  v20 = &a1[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state];
  os_unfair_lock_lock(&a1[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state]);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28);
  v22 = v20 + *(type metadata accessor for FIRoot.State(0) + 24);
  v154 = v21;
  v23 = *&v22[v21];
  if (!(v23 >> 62))
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_21:
    os_unfair_lock_unlock(v20);
    goto LABEL_22;
  }

  v150 = v22;
  v49 = sub_24ABAC3DC();
  v22 = v150;
  if (!v49)
  {
    goto LABEL_21;
  }

LABEL_3:
  v151 = v9;
  v150 = v22;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x24C229290](0, v23);
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_25;
    }

    v24 = *(v23 + 32);
  }

  os_unfair_lock_unlock(v20);
  if (!v24)
  {
LABEL_22:
    v50 = sub_24ABAC09C();
    (*(*(v50 - 8) + 56))(v19, 1, 1, v50);
    v51 = swift_allocObject();
    v51[2] = 0;
    v51[3] = 0;
    v52 = v160;
    v53 = v161;
    v51[4] = a1;
    v51[5] = v52;
    v51[6] = v53;

    sub_24AB8C3CC(0, 0, v19, &unk_24ABAEE00, v51);
  }

  v149 = v7;
  v148 = v6;
  v26 = MEMORY[0x28223BE20](v25);
  *(&v136 - 2) = a1;
  MEMORY[0x28223BE20](v26);
  *(&v136 - 2) = a1;

  v27 = sub_24ABABD1C();
  v7 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__forceScanStop;
  v28 = a1[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__forceScanStop];
  v29 = MEMORY[0x28223BE20](v27);
  *(&v136 - 2) = a1;
  MEMORY[0x28223BE20](v29);
  *(&v136 - 2) = a1;
  sub_24ABABD1C();
  v153 = v24;
  if ((v28 & 1) == 0)
  {
    v39 = sub_24AB82F80();
    v40 = MEMORY[0x28223BE20](v39);
    *(&v136 - 2) = a1;
    MEMORY[0x28223BE20](v40);
    *(&v136 - 2) = a1;
    v41 = 2;
    v42 = sub_24ABABD1C();
    v147 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus;
    *&a1[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus] = 2;
    v43 = MEMORY[0x28223BE20](v42);
    *(&v136 - 2) = a1;
    MEMORY[0x28223BE20](v43);
    *(&v136 - 2) = a1;
    sub_24ABABD1C();
    v44 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_directories;
    swift_beginAccess();
    v45 = *(v24 + v44);
    if (v45 >> 62)
    {
      v46 = sub_24ABAC3DC();
      if (v46)
      {
LABEL_14:
        v47 = v46 - 1;
        if (__OFSUB__(v46, 1))
        {
          __break(1u);
        }

        else if ((v45 & 0xC000000000000001) == 0)
        {
          if ((v47 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v47 < *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v48 = *(v45 + 8 * v47 + 32);

LABEL_19:
            v24 = v153;
            goto LABEL_28;
          }

          __break(1u);
          goto LABEL_51;
        }

        v48 = MEMORY[0x24C229290](v47, v45);

        goto LABEL_19;
      }
    }

    else
    {
      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
        goto LABEL_14;
      }
    }

    v48 = 0;
LABEL_28:

    sub_24AB7997C(v24, a1);
    v41 = 0x24ABAE000;
    v89 = v88;
    v143 = v90;
    v144 = v91;
    v145 = v48;

    v93 = MEMORY[0x28223BE20](v92);
    *(&v136 - 2) = a1;
    MEMORY[0x28223BE20](v93);
    *(&v136 - 2) = a1;
    v94 = sub_24ABABD1C();
    *&a1[v147] = 3;
    v95 = MEMORY[0x28223BE20](v94);
    *(&v136 - 2) = a1;
    MEMORY[0x28223BE20](v95);
    *(&v136 - 2) = a1;
    sub_24ABABD1C();
    if (!v89)
    {
      if (qword_27EF95308 == -1)
      {
LABEL_41:
        v115 = sub_24ABABD8C();
        __swift_project_value_buffer(v115, qword_27EF95FD8);

        v116 = sub_24ABABD6C();
        v117 = sub_24ABAC0FC();

        v118 = os_log_type_enabled(v116, v117);
        v81 = v149;
        if (v118)
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          aBlock = v120;
          *v119 = 136315138;
          v121 = sub_24ABABB9C();
          v122 = v41;
          v123 = [v121 fp_shortDescription];

          v124 = sub_24ABABEBC();
          v126 = v125;

          v41 = v122;
          v127 = sub_24AB760CC(v124, v126, &aBlock);
          v81 = v149;

          *(v119 + 4) = v127;
          _os_log_impl(&dword_24AB6F000, v116, v117, "lister for %s completed", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v120);
          MEMORY[0x24C229EC0](v120, -1, -1);
          MEMORY[0x24C229EC0](v119, -1, -1);
        }

        v70 = v148;
        v78 = v159;
        v128 = *&a1[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanError];
        *&a1[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanError] = 0;

        v79 = v155;
        v155(0);
        os_unfair_lock_lock(v20);
        sub_24AB8C9F4();

        os_unfair_lock_unlock(v20);

        v152 = 0;
        v80 = 0;
        goto LABEL_35;
      }

LABEL_52:
      swift_once();
      goto LABEL_41;
    }

    v136 = 0;
    v96 = swift_allocObject();
    v142 = v96;
    *(v96 + 16) = 0;
    v137 = (v96 + 16);
    sub_24ABABCFC();
    v97 = sub_24ABABCEC();
    v99 = v98;
    (*(v152 + 1))(v16, v14);
    aBlock = v97;
    v164 = v99;
    v139 = &v165;
    v100 = sub_24AB82948(&aBlock, &v165);
    v152 = v100;
    v102 = v101;
    v138 = v101;
    v103 = dispatch_group_create();
    v140 = v103;
    dispatch_group_enter(v103);
    v141 = *&a1[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexQueue];
    v104 = swift_allocObject();
    v104[2] = a1;
    v104[3] = v89;
    v105 = v143;
    v104[4] = v144;
    v104[5] = v105;
    v104[6] = v100;
    v104[7] = v102;
    v106 = v89;
    v107 = v142;
    v104[8] = v145;
    v104[9] = v107;
    v104[10] = v103;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_24AB9479C;
    *(v41 + 24) = v104;
    v146 = v104;
    v167 = sub_24AB94E34;
    v168 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v164 = 1107296256;
    v165 = sub_24AB87488;
    v166 = &block_descriptor_272;
    v108 = _Block_copy(&aBlock);

    v139 = v106;

    v109 = v138;

    v110 = v140;

    sub_24AB7FC5C(v152, v109);

    dispatch_sync(v141, v108);
    _Block_release(v108);
    LOBYTE(v97) = swift_isEscapingClosureAtFileLocation();

    if ((v97 & 1) == 0)
    {
      sub_24ABAC12C();
      v111 = v137;
      swift_beginAccess();
      v112 = *v111;
      if (v112)
      {
        v113 = v112;

        swift_willThrow();

        sub_24AB77A9C(v152, v109);

        v152 = sub_24AB9479C;
        v114 = v112;
        v41 = 0x24ABAE000;
      }

      else
      {
        v141 = v110;
        sub_24AB74A50(v139, v144, v143);

        v129 = *&a1[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexingStateHandler + 24];
        v130 = *&a1[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexingStateHandler + 32];
        __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexingStateHandler], v129);
        v131 = *&a1[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_getIndexingState];

        v131(v132);

        v133 = v152;
        v134 = v136;
        (*(v130 + 16))(0xD000000000000023, 0x800000024ABAF7E0, v13, v152, v109, v129, v130);
        v135 = v109;
        if (!v134)
        {
          sub_24AB91A08(v13, type metadata accessor for IndexingState);
          sub_24AB77A9C(v133, v109);

          v152 = sub_24AB9479C;
          v70 = v148;
          v78 = v159;
          v79 = v155;
          v41 = 0x24ABAE000;
LABEL_34:
          v80 = v146;
          v81 = v149;
LABEL_35:
          v82 = swift_allocObject();
          v82[2] = a1;
          v82[3] = v79;
          v83 = v160;
          v84 = v161;
          v82[4] = v78;
          v82[5] = v83;
          v82[6] = v84;
          v167 = sub_24AB946FC;
          v168 = v82;
          aBlock = MEMORY[0x277D85DD0];
          v164 = *(v41 + 2336);
          v165 = sub_24AB9AA08;
          v166 = &block_descriptor_257;
          v85 = _Block_copy(&aBlock);

          v86 = v156;
          sub_24ABABE0C();
          v162 = MEMORY[0x277D84F90];
          sub_24AB90D74(&unk_27EF95DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
          sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
          v87 = v158;
          sub_24ABAC28C();
          MEMORY[0x24C229110](0, v86, v87, v85);

          _Block_release(v85);

          (*(v81 + 8))(v87, v70);
          (*(v157 + 8))(v86, v151);

          return sub_24AB91BD8(v152, v80);
        }

        v114 = v134;
        sub_24AB91A08(v13, type metadata accessor for IndexingState);
        sub_24AB77A9C(v133, v135);

        v152 = sub_24AB9479C;
        v41 = 0x24ABAE000;
      }

      if (qword_27EF95308 != -1)
      {
        swift_once();
      }

      v54 = sub_24ABABD8C();
      __swift_project_value_buffer(v54, qword_27EF95FD8);

      v55 = v114;
      v56 = sub_24ABABD6C();
      v57 = sub_24ABAC11C();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        aBlock = v145;
        *v58 = 136315394;
        v60 = sub_24ABABB9C();
        v61 = [v60 fp_shortDescription];

        v62 = sub_24ABABEBC();
        v64 = v63;

        v65 = sub_24AB760CC(v62, v64, &aBlock);

        *(v58 + 4) = v65;
        *(v58 + 12) = 2112;
        v66 = v114;
        v67 = _swift_stdlib_bridgeErrorToNSError();
        *(v58 + 14) = v67;
        *v59 = v67;
        _os_log_impl(&dword_24AB6F000, v56, v57, "lister for %s failed: %@", v58, 0x16u);
        sub_24AB7C4A4(v59, &unk_27EF953F0, &unk_24ABAD6A0);
        v68 = v59;
        v41 = &unk_24ABAE000;
        MEMORY[0x24C229EC0](v68, -1, -1);
        v69 = v145;
        __swift_destroy_boxed_opaque_existential_0Tm(v145);
        MEMORY[0x24C229EC0](v69, -1, -1);
        MEMORY[0x24C229EC0](v58, -1, -1);
      }

      v70 = v148;
      v72 = MEMORY[0x28223BE20](v71);
      *(&v136 - 2) = a1;
      MEMORY[0x28223BE20](v72);
      *(&v136 - 2) = a1;
      v73 = sub_24ABABD1C();
      *&a1[v147] = 3;
      v74 = MEMORY[0x28223BE20](v73);
      *(&v136 - 2) = a1;
      MEMORY[0x28223BE20](v74);
      *(&v136 - 2) = a1;
      sub_24ABABD1C();
      v75 = *&a1[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanError];
      *&a1[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanError] = v114;
      v76 = v114;
      v77 = v114;

      v78 = v159;
      v79 = v155;
      v155(v114);

      os_unfair_lock_lock(v20);
      sub_24AB8C9F4();

      os_unfair_lock_unlock(v20);

      goto LABEL_34;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (qword_27EF95308 != -1)
  {
LABEL_25:
    swift_once();
  }

  v30 = sub_24ABABD8C();
  __swift_project_value_buffer(v30, qword_27EF95FD8);
  v31 = sub_24ABABD6C();
  v32 = sub_24ABAC0FC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_24AB6F000, v31, v32, "force stopping current scan", v33, 2u);
    MEMORY[0x24C229EC0](v33, -1, -1);
  }

  v35 = MEMORY[0x28223BE20](v34);
  *(&v136 - 2) = a1;
  MEMORY[0x28223BE20](v35);
  *(&v136 - 2) = a1;
  v36 = sub_24ABABD1C();
  a1[v7] = 0;
  v37 = MEMORY[0x28223BE20](v36);
  *(&v136 - 2) = a1;
  MEMORY[0x28223BE20](v37);
  *(&v136 - 2) = a1;
  sub_24ABABD1C();
  sub_24AB833A8();
}

uint64_t sub_24AB8BC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_24AB8BD20;

  return sub_24AB87FDC();
}

uint64_t sub_24AB8BD20()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24AB8C090;
  }

  else
  {
    v2 = sub_24AB8BE34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AB8BE34()
{
  v1 = v0[2];
  *(swift_task_alloc() + 16) = v1;
  *(swift_task_alloc() + 16) = v1;
  sub_24ABABD1C();

  *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus) = 4;
  *(swift_task_alloc() + 16) = v1;
  *(swift_task_alloc() + 16) = v1;
  sub_24ABABD1C();

  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v2 = sub_24ABABD8C();
  __swift_project_value_buffer(v2, qword_27EF95FD8);
  v3 = sub_24ABABD6C();
  v4 = sub_24ABAC0FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24AB6F000, v3, v4, "finished scans", v5, 2u);
    MEMORY[0x24C229EC0](v5, -1, -1);
  }

  v6 = v0[3];
  v7 = v0[2];

  sub_24AB833A8();
  v8 = *(v7 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanError);
  v9 = v8;
  v6(v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24AB8C090()
{
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v1 = sub_24ABABD8C();
  __swift_project_value_buffer(v1, qword_27EF95FD8);
  v2 = sub_24ABABD6C();
  v3 = sub_24ABAC11C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AB6F000, v2, v3, "error in delete gc", v4, 2u);
    MEMORY[0x24C229EC0](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = v0[6];
  if (*(v5 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanError))
  {
  }

  else
  {
    *(v5 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanError) = v6;
  }

  v7 = v0[2];
  *(swift_task_alloc() + 16) = v7;
  *(swift_task_alloc() + 16) = v7;
  sub_24ABABD1C();

  *(v7 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus) = 4;
  *(swift_task_alloc() + 16) = v7;
  *(swift_task_alloc() + 16) = v7;
  sub_24ABABD1C();

  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_27EF95FD8);
  v8 = sub_24ABABD6C();
  v9 = sub_24ABAC0FC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24AB6F000, v8, v9, "finished scans", v10, 2u);
    MEMORY[0x24C229EC0](v10, -1, -1);
  }

  v11 = v0[3];
  v12 = v0[2];

  sub_24AB833A8();
  v13 = *(v12 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanError);
  v14 = v13;
  v11(v13);

  v15 = v0[1];

  return v15();
}

uint64_t sub_24AB8C3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24AB94828(a3, v25 - v10, &qword_27EF95BC0, &qword_24ABAEDF0);
  v12 = sub_24ABAC09C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AB7C4A4(v11, &qword_27EF95BC0, &qword_24ABAEDF0);
  }

  else
  {
    sub_24ABAC08C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24ABAC04C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24ABABECC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24AB7C4A4(a3, &qword_27EF95BC0, &qword_24ABAEDF0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24AB7C4A4(a3, &qword_27EF95BC0, &qword_24ABAEDF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24AB8C6CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v13 = a1[11];
  v12 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v13);
  v14 = swift_allocObject();
  v14[2] = a7;
  v14[3] = a8;
  v14[4] = a9;
  v15 = *(v12 + 8);

  v16 = a9;
  v15(a2, a3, a5, a6, sub_24AB9481C, v14, v13, v12);
}

void sub_24AB8C7C8(void *a1, uint64_t a2, uint64_t a3, dispatch_group_t group)
{
  if (a1)
  {
    v8 = a1;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v9 = sub_24ABABD8C();
    __swift_project_value_buffer(v9, qword_27EF95FD8);
    v10 = a1;

    v11 = sub_24ABABD6C();
    v12 = sub_24ABAC11C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22[0] = v15;
      *v13 = 136315394;
      if (a2)
      {
        v17 = *(a2 + 16);
        v16 = *(a2 + 24);
      }

      else
      {
        v16 = 0xE800000000000000;
        v17 = 0x68746170206C696ELL;
      }

      v18 = sub_24AB760CC(v17, v16, v22);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2112;
      v19 = a1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v20;
      *v14 = v20;
      _os_log_impl(&dword_24AB6F000, v11, v12, "failed to index while listing %s: %@", v13, 0x16u);
      sub_24AB7C4A4(v14, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x24C229EC0](v15, -1, -1);
      MEMORY[0x24C229EC0](v13, -1, -1);
    }

    swift_beginAccess();
    v21 = *(a3 + 16);
    *(a3 + 16) = a1;
  }

  dispatch_group_leave(group);
}

void sub_24AB8C9F4()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_24ABAC3DC())
  {
    if (sub_24ABAC3DC())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x24C229290](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_24ABAC3DC();
LABEL_13:
      if (v3)
      {
        sub_24ABA2614(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_24AB8CACC()
{
  v1 = sub_24ABABDFC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24ABABE1C();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueue);
  aBlock[4] = sub_24AB91B04;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB9AA08;
  aBlock[3] = &block_descriptor;
  v8 = _Block_copy(aBlock);

  sub_24ABABE0C();
  v12 = MEMORY[0x277D84F90];
  sub_24AB90D74(&unk_27EF95DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABAC28C();
  MEMORY[0x24C229110](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_24AB8CD74(uint64_t a1)
{
  v2 = sub_24ABABE2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_24ABABE3C();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v9 = (a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
    os_unfair_lock_lock((a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state));
    v10 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28);
    *&v10[*(type metadata accessor for FIRoot.State(0) + 24)] = MEMORY[0x277D84F90];

    os_unfair_lock_unlock(v9);
    return sub_24AB874B0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AB8CEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void (*a4)(uint64_t, void)@<X3>, uint64_t a5@<X4>, __darwin_ino64_t *a6@<X8>)
{
  v129 = a5;
  v130 = a4;
  v128 = a3;
  v136 = a6;
  v140[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  MEMORY[0x28223BE20](v8 - 8);
  v131 = &v118[-v9];
  v132 = sub_24ABABC0C();
  v133 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v126 = &v118[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B60, "\b.");
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v118[-v12];
  v134 = type metadata accessor for FileMetadata(0);
  v127 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v125 = &v118[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = type metadata accessor for RootInfo(0);
  v15 = MEMORY[0x28223BE20](v123);
  v124 = &v118[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v118[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v118[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = *a1;
  v24 = *(a1 + 8);
  st_ino = *(a1 + 16);
  v137 = a2;
  v25 = sub_24ABABBEC();
  v138 = v23;
  v27 = sub_24AB82D58(v23, v24, v25, v26);
  v29 = v28;

  if (v29)
  {
    memset(&v139, 0, sizeof(v139));

    sub_24ABA4D88(v27, v29, &v139);
    st_ino = v139.st_ino;
    v30 = v27;
    v24 = v29;
  }

  else
  {

    v30 = v138;
  }

  v31 = objc_opt_self();
  v32 = *(a1 + 32);
  v33 = [v31 fpfs:v32 initWithFSEventsFlags:?];
  v122 = sub_24ABABEBC();
  v35 = v34;

  v36 = v137;
  sub_24AB821B8(v30, v24);
  v138 = v30;
  if (v37)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v38 = sub_24ABABD8C();
    __swift_project_value_buffer(v38, qword_27EF95FD8);
    sub_24AB919A0(v36, v22, type metadata accessor for RootInfo);

    v39 = sub_24ABABD6C();
    v40 = sub_24ABAC10C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v139.st_dev = v42;
      *v41 = 136315906;
      v43 = sub_24ABABB9C();
      v44 = [v43 fp_shortDescription];

      v45 = sub_24ABABEBC();
      v47 = v46;

      sub_24AB91A08(v22, type metadata accessor for RootInfo);
      v48 = sub_24AB760CC(v45, v47, &v139.st_dev);

      *(v41 + 4) = v48;
      *(v41 + 12) = 2080;
      v49 = sub_24AB760CC(v138, v24, &v139.st_dev);

      *(v41 + 14) = v49;
      *(v41 + 22) = 2048;
      *(v41 + 24) = st_ino;
      *(v41 + 32) = 2080;
      v50 = sub_24AB760CC(v122, v35, &v139.st_dev);

      *(v41 + 34) = v50;
      _os_log_impl(&dword_24AB6F000, v39, v40, "%s | E: ignored event path %s fileID %llu flags %s", v41, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C229EC0](v42, -1, -1);
      MEMORY[0x24C229EC0](v41, -1, -1);
    }

    else
    {

      sub_24AB91A08(v22, type metadata accessor for RootInfo);
    }

    type metadata accessor for FIRoot.IndexAction(0);
    return swift_storeEnumTagMultiPayload();
  }

  v121 = v32;
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v51 = sub_24ABABD8C();
  __swift_project_value_buffer(v51, qword_27EF95FD8);
  sub_24AB919A0(v36, v19, type metadata accessor for RootInfo);

  v52 = sub_24ABABD6C();
  v53 = sub_24ABAC10C();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    *&v139.st_dev = v120;
    *v54 = 136315906;
    v55 = sub_24ABABB9C();
    v119 = v53;
    v56 = v55;
    v57 = [v55 fp_shortDescription];

    v58 = sub_24ABABEBC();
    v60 = v59;

    sub_24AB91A08(v19, type metadata accessor for RootInfo);
    v61 = sub_24AB760CC(v58, v60, &v139.st_dev);

    *(v54 + 4) = v61;
    *(v54 + 12) = 2080;
    v62 = sub_24AB760CC(v138, v24, &v139.st_dev);

    *(v54 + 14) = v62;
    *(v54 + 22) = 2048;
    v63 = st_ino;
    *(v54 + 24) = st_ino;
    *(v54 + 32) = 2080;
    v64 = sub_24AB760CC(v122, v35, &v139.st_dev);

    *(v54 + 34) = v64;
    _os_log_impl(&dword_24AB6F000, v52, v119, "%s | E: event path %s fileID %llu flags %s", v54, 0x2Au);
    v65 = v120;
    swift_arrayDestroy();
    MEMORY[0x24C229EC0](v65, -1, -1);
    v66 = v54;
    v36 = v137;
    MEMORY[0x24C229EC0](v66, -1, -1);
  }

  else
  {

    sub_24AB91A08(v19, type metadata accessor for RootInfo);
    v63 = st_ino;
  }

  v68 = v132;
  v69 = v131;
  v130(v63, v128);
  v70 = v134;
  v71 = (*(v127 + 48))(v13, 1, v134);
  v72 = v133;
  if (v71 == 1)
  {
    sub_24AB7C4A4(v13, &qword_27EF95B60, "\b.");
    *v136 = v63;
    type metadata accessor for FIRoot.IndexAction(0);
    return swift_storeEnumTagMultiPayload();
  }

  v73 = v13;
  v74 = v125;
  sub_24AB91CDC(v73, v125, type metadata accessor for FileMetadata);
  sub_24AB94828(&v74[v70[21]], v69, &qword_27EF95B00, &qword_24ABAED70);
  if ((*(v72 + 48))(v69, 1, v68) == 1)
  {
    sub_24AB7C4A4(v69, &qword_27EF95B00, &qword_24ABAED70);
    v75 = v124;
    sub_24AB919A0(v36, v124, type metadata accessor for RootInfo);
    v76 = sub_24ABABD6C();
    v77 = sub_24ABAC10C();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v140[0] = v79;
      *v78 = 136315394;
      v80 = sub_24ABABB9C();
      v81 = [v80 fp_shortDescription];

      v82 = sub_24ABABEBC();
      v84 = v83;

      sub_24AB91A08(v75, type metadata accessor for RootInfo);
      v85 = sub_24AB760CC(v82, v84, v140);

      *(v78 + 4) = v85;
      *(v78 + 12) = 2048;
      swift_beginAccess();
      *(v78 + 14) = *v74;
      _os_log_impl(&dword_24AB6F000, v76, v77, "%s | item %llu has nil contentURL", v78, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      MEMORY[0x24C229EC0](v79, -1, -1);
      MEMORY[0x24C229EC0](v78, -1, -1);
    }

    else
    {

      sub_24AB91A08(v75, type metadata accessor for RootInfo);
    }

    goto LABEL_44;
  }

  v138 = *(v72 + 32);
  v138(v126, v69, v68);
  v86 = sub_24ABABBEC();
  v88 = v87;
  if (v86 == sub_24ABABBEC() && v88 == v89)
  {

    v90 = v123;
  }

  else
  {
    v91 = sub_24ABAC58C();

    v90 = v123;
    if ((v91 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (*(v36 + *(v90 + 20) + 8))
  {
    v74[v70[17]] = 1;
  }

LABEL_28:
  v92 = (v36 + *(v90 + 20));
  v94 = *v92;
  v93 = v92[1];
  v95 = &v74[v70[19]];
  *v95 = v94;
  v95[1] = v93;

  v96 = sub_24ABABB9C();
  v97 = v126;
  v98 = sub_24ABABB9C();
  v99 = [v96 fp:v98 relativePathWithRealpath:?];

  if (v99)
  {
    v100 = sub_24ABABEBC();
    v102 = v101;

    if (v100 || v102 != 0xE000000000000000)
    {
      v103 = sub_24ABAC58C();
    }

    else
    {

      v103 = 1;
    }

    v104 = v134;
    v105 = v126;
    v74[*(v104 + 64)] = sub_24AB82004() & 1;
    if (v74[*(v104 + 60)])
    {
      (*(v72 + 8))(v105, v68);
      goto LABEL_37;
    }

    if (v74[48] == 2 && (v121 & 0x800) != 0)
    {
      v106 = sub_24ABABBEC();
      v108 = v107;
      v109 = sub_24ABABBEC();
      sub_24AB82D58(v106, v108, v109, v110);
      v112 = v111;

      if (v112)
      {

        v72 = v133;
        v105 = v126;
      }

      else
      {
        v72 = v133;
        v105 = v126;
        if ((v103 & 1) == 0)
        {
          v115 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B58, &unk_24ABAEDC0) + 48);
          v116 = v105;
          v117 = v136;
          sub_24AB919A0(v74, v136, type metadata accessor for FileMetadata);
          v138(&v117[v115], v116, v68);
          (*(v72 + 56))(&v117[v115], 0, 1, v68);
          goto LABEL_44;
        }
      }
    }

    (*(v72 + 8))(v105, v68);
    v113 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B58, &unk_24ABAEDC0) + 48);
    v114 = v136;
    sub_24AB919A0(v74, v136, type metadata accessor for FileMetadata);
    (*(v72 + 56))(&v114[v113], 1, 1, v68);
LABEL_44:
    type metadata accessor for FIRoot.IndexAction(0);
    goto LABEL_45;
  }

  (*(v72 + 8))(v97, v68);
LABEL_37:
  *v136 = v63;
  type metadata accessor for FIRoot.IndexAction(0);
LABEL_45:
  swift_storeEnumTagMultiPayload();
  return sub_24AB91A08(v74, type metadata accessor for FileMetadata);
}

uint64_t sub_24AB8E26C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(v5);
}

void sub_24AB8E2C4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B68, &unk_24ABAEDD0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v19 - v7);
  sub_24AB94828(a1, &v19 - v7, &qword_27EF95B68, &unk_24ABAEDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v10 = sub_24ABABD8C();
    __swift_project_value_buffer(v10, qword_27EF95FD8);
    v11 = v9;
    v12 = sub_24ABABD6C();
    v13 = sub_24ABAC11C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v9;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_24AB6F000, v12, v13, "failed to retrieve persisted indexing state: %@", v14, 0xCu);
      sub_24AB7C4A4(v15, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v15, -1, -1);
      MEMORY[0x24C229EC0](v14, -1, -1);
    }

    else
    {
    }

    v18 = 0;
  }

  else
  {
    sub_24AB7C4A4(v8, &qword_27EF95B68, &unk_24ABAEDD0);
    v18 = 1;
  }

  swift_beginAccess();
  *(a2 + 16) = v18;
  dispatch_group_leave(a3);
}

uint64_t sub_24AB8E50C(uint64_t a1, char *a2, uint64_t a3)
{
  v110 = a3;
  v5 = type metadata accessor for IndexingState(0);
  v108 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v109 = v6;
  v111 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_24ABABDFC();
  v7 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_24ABABE1C();
  v9 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v132 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A18, &qword_24ABAEB98);
  v11 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v117 = &v102 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B30, &unk_24ABAEDA0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v128 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v127 = &v102 - v16;
  v131 = sub_24ABABC0C();
  v17 = *(v131 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v131);
  v130 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v145 = &v102 - v20;
  v152 = MEMORY[0x277D84F90];
  v21 = (a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0);
  type metadata accessor for FIRoot.State(0);

  sub_24AB950BC(v22);
  os_unfair_lock_unlock(v21);
  v23 = v152;
  v24 = *(a1 + 16);
  sub_24AB93DD0(a1 + 24, &aBlock);
  v25 = swift_allocObject();
  sub_24AB93E6C(&aBlock, v25 + 16);
  v107 = v23;
  v112 = sub_24AB923B4(a2, v23, v24, sub_24AB93E84, v25);
  v113 = v26;
  v28 = v27;

  v29 = *(v28 + 16);
  v114 = v28;
  if (v29)
  {
    v142 = v29;
    v103 = a2;
    v30 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueuedContinuation;
    v144 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueue);
    v31 = *(v17 + 80);

    v141 = v30;
    swift_beginAccess();
    v32 = v28 + ((v31 + 32) & ~v31);
    v34 = *(v17 + 16);
    v33 = v17 + 16;
    v126 = v34;
    v35 = v7;
    v36 = (v33 + 16);
    v123 = *(v33 + 56);
    v143 = &v148;
    v122 = (v11 + 48);
    v116 = (v11 + 16);
    v115 = (v11 + 8);
    v37 = (v11 + 56);
    v38 = v31;
    v121 = v37;
    v105 = v35;
    v120 = (v35 + 8);
    v104 = v9;
    v39 = (v9 + 1);
    v40 = (v31 + 24) & ~v31;
    v119 = v39;
    v118 = (v33 - 8);
    v41 = v33;
    v42 = v18;
    v43 = v131;
    v44 = a1;
    v45 = v145;
    v140 = v38;
    v138 = v40;
    v124 = v36;
    v125 = v42;
    v139 = v41;
    while (1)
    {
      v137 = v32;
      v56 = v126;
      (v126)(v45);
      v57 = v130;
      v58 = v45;
      v59 = v56;
      v56(v130, v58, v43);
      v60 = swift_allocObject();
      *(v60 + 16) = v44;
      v61 = *v36;
      a2 = v57;
      (*v36)(v60 + v40, v57, v43);
      v62 = swift_allocObject();
      *(v62 + 16) = sub_24AB93EFC;
      *(v62 + 24) = v60;
      v150 = sub_24AB94E34;
      v151 = v62;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v148 = sub_24AB87488;
      v149 = &block_descriptor_178;
      v63 = _Block_copy(&aBlock);
      v9 = v151;

      dispatch_sync(v144, v63);
      _Block_release(v63);
      LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

      if (v63)
      {
        break;
      }

      v136 = v61;
      v64 = v44;
      v65 = v44 + v141;
      v66 = v127;
      sub_24AB94828(v65, v127, &unk_27EF95B30, &unk_24ABAEDA0);
      v67 = v129;
      if ((*v122)(v66, 1, v129))
      {
        sub_24AB7C4A4(v66, &unk_27EF95B30, &unk_24ABAEDA0);
      }

      else
      {
        v68 = v117;
        (*v116)(v117, v66, v67);
        sub_24AB7C4A4(v66, &unk_27EF95B30, &unk_24ABAEDA0);
        LOBYTE(aBlock) = 1;
        sub_24ABAC06C();
        (*v115)(v68, v67);
      }

      v46 = v128;
      (*v121)(v128, 1, 1, v67);
      v44 = v64;
      v47 = v141;
      swift_beginAccess();
      sub_24AB779B0(v46, v64 + v47, &unk_27EF95B30, &unk_24ABAEDA0);
      swift_endAccess();

      v43 = v131;
      v59(a2, v145, v131);
      v48 = v138;
      v49 = swift_allocObject();
      *(v49 + 16) = v44;
      v36 = v124;
      v136(v49 + v48, a2, v43);
      v150 = sub_24AB93F00;
      v151 = v49;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v148 = sub_24AB9AA08;
      v149 = &block_descriptor_184;
      v50 = _Block_copy(&aBlock);

      v51 = v132;
      sub_24ABABE0C();
      v146 = MEMORY[0x277D84F90];
      sub_24AB90D74(&unk_27EF95DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
      sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
      v52 = v134;
      v53 = v135;
      sub_24ABAC28C();
      MEMORY[0x24C229110](0, v51, v52, v50);
      _Block_release(v50);
      v54 = v52;
      v40 = v138;
      v55 = v53;
      v45 = v145;
      (*v120)(v54, v55);
      (*v119)(v51, v133);
      (*v118)(v45, v43);

      v32 = v137 + v123;
      if (!--v142)
      {

        v7 = v105;
        v9 = v104;
        a2 = v103;
        a1 = v44;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v44 = v7;
    v106 = a1;
    if (qword_27EF95308 == -1)
    {
      goto LABEL_10;
    }
  }

  swift_once();
LABEL_10:
  v69 = sub_24ABABD8C();
  __swift_project_value_buffer(v69, qword_27EF95FD8);

  v70 = v112;

  v71 = v113;

  v72 = sub_24ABABD6C();
  v73 = sub_24ABAC10C();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&aBlock = v75;
    *v74 = 136315138;
    v76 = type metadata accessor for FileMetadata(0);

    v78 = MEMORY[0x24C228F90](v77, v76);
    v80 = v79;

    v81 = sub_24AB760CC(v78, v80, &aBlock);
    v70 = v112;

    *(v74 + 4) = v81;
    v71 = v113;
    _os_log_impl(&dword_24AB6F000, v72, v73, "Changed items %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    MEMORY[0x24C229EC0](v75, -1, -1);
    MEMORY[0x24C229EC0](v74, -1, -1);
  }

  v82 = sub_24ABABD6C();
  v83 = sub_24ABAC10C();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *&aBlock = v85;
    *v84 = 136315138;

    v87 = MEMORY[0x24C228F90](v86, MEMORY[0x277D84D38]);
    v89 = v88;

    v90 = sub_24AB760CC(v87, v89, &aBlock);
    v71 = v113;

    *(v84 + 4) = v90;
    _os_log_impl(&dword_24AB6F000, v82, v83, "Deleted item IDs %s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v85);
    MEMORY[0x24C229EC0](v85, -1, -1);
    MEMORY[0x24C229EC0](v84, -1, -1);
  }

  v91 = v106;
  v92 = v111;
  v93 = v108;
  sub_24AB919A0(v110, v111, type metadata accessor for IndexingState);
  v94 = (*(v93 + 80) + 56) & ~*(v93 + 80);
  v95 = swift_allocObject();
  v95[2] = v91;
  v95[3] = v70;
  v96 = v114;
  v95[4] = v71;
  v95[5] = v96;
  v95[6] = a2;
  sub_24AB91CDC(v92, v95 + v94, type metadata accessor for IndexingState);
  v150 = sub_24AB940D4;
  v151 = v95;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v148 = sub_24AB9AA08;
  v149 = &block_descriptor_190;
  v97 = _Block_copy(&aBlock);

  v98 = v132;
  sub_24ABABE0C();
  v146 = MEMORY[0x277D84F90];
  sub_24AB90D74(&unk_27EF95DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
  v99 = v134;
  v100 = v135;
  sub_24ABAC28C();
  MEMORY[0x24C229110](0, v98, v99, v97);
  _Block_release(v97);
  (*(v44 + 8))(v99, v100);
  (v9[1])(v98, v133);
}

uint64_t sub_24AB8F524(uint64_t a1, uint64_t a2)
{
  v4 = sub_24ABABC0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v15 = a1;
  v14 = a1;
  sub_24ABABD1C();
  v7 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus);
  v13 = a1;
  v12 = a1;
  result = sub_24ABABD1C();
  if (v7 != 2)
  {
    (*(v5 + 16))(&v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
    v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v10 = swift_allocObject();
    (*(v5 + 32))(v10 + v9, &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
    sub_24AB89E4C(nullsub_1, 0, sub_24AB94248, v10);
  }

  return result;
}

void sub_24AB8F730(void *a1, uint64_t a2)
{
  v4 = sub_24ABABC0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v9 = sub_24ABABD8C();
    __swift_project_value_buffer(v9, qword_27EF95FD8);
    (*(v5 + 16))(v7, a2, v4);
    v10 = a1;
    v11 = sub_24ABABD6C();
    v12 = sub_24ABAC11C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v13 = 136315394;
      v15 = sub_24ABABBEC();
      v17 = v16;
      (*(v5 + 8))(v7, v4);
      v18 = sub_24AB760CC(v15, v17, &v23);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2112;
      v19 = a1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v20;
      *v14 = v20;
      _os_log_impl(&dword_24AB6F000, v11, v12, "failed to scan of %s: %@", v13, 0x16u);
      sub_24AB7C4A4(v14, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v14, -1, -1);
      v21 = v22;
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x24C229EC0](v21, -1, -1);
      MEMORY[0x24C229EC0](v13, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_24AB8F9EC(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a6;
  v50 = a5;
  v63 = a3;
  v57 = a2;
  v66[1] = *MEMORY[0x277D85DE8];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A00, &qword_24ABAEB60);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v49 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B50, &qword_24ABAEDB8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v55 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v48 - v11;
  v12 = sub_24ABABD0C();
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = (v15 + 16);
  sub_24ABABCFC();
  v60 = v14;
  v65[0] = sub_24ABABCEC();
  v65[1] = v17;
  v18 = sub_24AB82948(v65, v66);
  v20 = v19;
  v21 = dispatch_group_create();
  dispatch_group_enter(v21);
  v23 = a1[11];
  v22 = a1[12];
  v58 = a1;
  v56 = __swift_project_boxed_opaque_existential_1(a1 + 8, v23);
  v24 = swift_allocObject();
  *(v24 + 16) = v15;
  *(v24 + 24) = v21;
  v25 = *(v22 + 8);
  v59 = v15;

  v26 = v21;
  v27 = v57;
  v28 = v63;
  v57 = v18;
  v63 = v20;
  v25(v27, v28, v18, v20, sub_24AB941B8, v24, v23, v22);

  sub_24ABAC12C();
  v29 = swift_beginAccess();
  v30 = *v16;
  if (*v16)
  {
    v32 = v57;
    v31 = v58;
    v33 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_batchContinuation;
    swift_beginAccess();
    v34 = v52;
    sub_24AB94828(v31 + v33, v52, &qword_27EF95B50, &qword_24ABAEDB8);
    v35 = v53;
    v36 = v54;
    if ((*(v53 + 48))(v34, 1, v54))
    {
      v37 = v30;
      sub_24AB7C4A4(v34, &qword_27EF95B50, &qword_24ABAEDB8);
    }

    else
    {
      v43 = v49;
      (*(v35 + 16))(v49, v34, v36);
      v44 = v30;
      sub_24AB7C4A4(v34, &qword_27EF95B50, &qword_24ABAEDB8);
      v64 = v30;
      v45 = v30;
      sub_24ABAC05C();
      (*(v35 + 8))(v43, v36);
    }

    v46 = v55;
    (*(v35 + 56))(v55, 1, 1, v36);
    swift_beginAccess();
    sub_24AB779B0(v46, v31 + v33, &qword_27EF95B50, &qword_24ABAEDB8);
    swift_endAccess();
    sub_24AB833A8();
    sub_24AB77A9C(v32, v63);
  }

  else
  {
    v38 = MEMORY[0x28223BE20](v29);
    v39 = v58;
    *(&v48 - 2) = v58;
    MEMORY[0x28223BE20](v38);
    *(&v48 - 2) = v39;
    sub_24ABABD1C();
    v40 = v57;
    v41 = sub_24AB90250(v50, v39, v51, v57, v63);
    v42 = MEMORY[0x28223BE20](v41);
    *(&v48 - 2) = v39;
    MEMORY[0x28223BE20](v42);
    *(&v48 - 2) = v39;
    sub_24ABABD1C();
    sub_24AB77A9C(v40, v63);
  }

  (*(v61 + 8))(v60, v62);
}

void sub_24AB900BC(void *a1, uint64_t a2, dispatch_group_t group)
{
  if (a1)
  {
    v6 = a1;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v7 = sub_24ABABD8C();
    __swift_project_value_buffer(v7, qword_27EF95FD8);
    v8 = a1;
    v9 = sub_24ABABD6C();
    v10 = sub_24ABAC11C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_24AB6F000, v9, v10, "Event handling failed to index: %@", v11, 0xCu);
      sub_24AB7C4A4(v12, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v12, -1, -1);
      MEMORY[0x24C229EC0](v11, -1, -1);
    }

    swift_beginAccess();
    v15 = *(a2 + 16);
    *(a2 + 16) = a1;
  }

  dispatch_group_leave(group);
}

uint64_t sub_24AB90250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A00, &qword_24ABAEB60);
  v56 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v53 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B50, &qword_24ABAEDB8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v54 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v55 = &v51 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - v18;
  v20 = *(a1 + 16);
  if (v20)
  {
    v52 = a3;
    v21 = *(a1 + 40 * v20 + 16);
    v22 = (a2 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);

    os_unfair_lock_lock(v22);
    *(&v22->_os_unfair_lock_opaque + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28)) = v21;
    v6 = v5;
    a3 = v52;

    os_unfair_lock_unlock(v22);
  }

  v52 = a1;
  v23 = *(a2 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexingStateHandler + 24);
  v24 = *(a2 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexingStateHandler + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexingStateHandler), v23);
  v25 = a3;
  v26 = a4;
  v27 = a4;
  v28 = a5;
  (*(v24 + 16))(0xD000000000000023, 0x800000024ABAF7E0, v25, v27, a5, v23, v24);
  if (v6)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v29 = sub_24ABABD8C();
    __swift_project_value_buffer(v29, qword_27EF95FD8);
    sub_24AB7FC5C(v26, a5);
    v30 = v6;
    v31 = sub_24ABABD6C();
    v32 = sub_24ABAC11C();
    sub_24AB77A9C(v26, v28);

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v58[0] = v35;
      *v33 = 136315394;
      v36 = sub_24ABABC1C();
      v38 = sub_24AB760CC(v36, v37, v58);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2112;
      v39 = v6;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v40;
      *v34 = v40;
      _os_log_impl(&dword_24AB6F000, v31, v32, "failed to store indexing state with cookie %s: %@", v33, 0x16u);
      sub_24AB7C4A4(v34, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x24C229EC0](v35, -1, -1);
      MEMORY[0x24C229EC0](v33, -1, -1);
    }

    v41 = v59;
    v42 = v56;
    v43 = v54;
    v44 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_batchContinuation;
    swift_beginAccess();
    sub_24AB94828(a2 + v44, v43, &qword_27EF95B50, &qword_24ABAEDB8);
    if ((*(v42 + 48))(v43, 1, v41))
    {

      sub_24AB7C4A4(v43, &qword_27EF95B50, &qword_24ABAEDB8);
    }

    else
    {
      v46 = v53;
      (*(v42 + 16))(v53, v43, v41);
      sub_24AB7C4A4(v43, &qword_27EF95B50, &qword_24ABAEDB8);
      v57 = v6;
      sub_24ABAC05C();
      (*(v42 + 8))(v46, v41);
    }
  }

  else
  {
    v45 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_batchContinuation;
    swift_beginAccess();
    sub_24AB94828(a2 + v45, v19, &qword_27EF95B50, &qword_24ABAEDB8);
    v42 = v56;
    v41 = v59;
    if ((*(v56 + 48))(v19, 1, v59))
    {
      sub_24AB7C4A4(v19, &qword_27EF95B50, &qword_24ABAEDB8);
    }

    else
    {
      v47 = v53;
      (*(v42 + 16))(v53, v19, v41);
      sub_24AB7C4A4(v19, &qword_27EF95B50, &qword_24ABAEDB8);
      v57 = v52;

      sub_24ABAC06C();
      (*(v42 + 8))(v47, v41);
    }
  }

  v48 = v55;
  (*(v42 + 56))(v55, 1, 1, v41);
  v49 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_batchContinuation;
  swift_beginAccess();
  sub_24AB779B0(v48, a2 + v49, &qword_27EF95B50, &qword_24ABAEDB8);
  swift_endAccess();
  return sub_24AB833A8();
}

uint64_t sub_24AB908F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AB909EC;

  return v6(a1);
}

uint64_t sub_24AB909EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_24AB90AE4(_BYTE *a1, _BYTE *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_24ABAAF2C(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_24AB90BA4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_24ABABADC();
  swift_allocObject();
  result = sub_24ABABA9C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_24AB90C28(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_24ABABADC();
  swift_allocObject();
  result = sub_24ABABA9C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24ABABC2C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

unint64_t sub_24AB90CA4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_24ABABFCC();
  }

  __break(1u);
  return result;
}

unint64_t sub_24AB90CF0(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_24AB90D20()
{
  result = qword_27EF95928;
  if (!qword_27EF95928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95928);
  }

  return result;
}

uint64_t sub_24AB90D74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24AB90DC0()
{
  result = qword_27EF95948;
  if (!qword_27EF95948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95948);
  }

  return result;
}

uint64_t sub_24AB90E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24ABABC0C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24AB90F3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24ABABC0C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_24AB90FF8(uint64_t a1)
{
  sub_24ABABC0C();
  if (v1 <= 0x3F)
  {
    sub_24AB9107C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24AB9107C()
{
  if (!qword_27EF95960)
  {
    v0 = sub_24ABAC20C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF95960);
    }
  }
}

void sub_24AB910F4(uint64_t a1)
{
  sub_24AB91308(319, &qword_27EF959F8, &qword_27EF95A00, &qword_24ABAEB60);
  if (v1 <= 0x3F)
  {
    sub_24AB91684(319, &qword_27EF95A08, type metadata accessor for FIRoot.State, MEMORY[0x277D85458]);
    if (v2 <= 0x3F)
    {
      sub_24AB91308(319, &qword_27EF95A10, &qword_27EF95A18, &qword_24ABAEB98);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24AB91308(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24ABAC20C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_24AB9135C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24AB913A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95A20, &unk_24ABAF3F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24AB91480(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95A20, &unk_24ABAF3F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_24AB91548(uint64_t a1)
{
  sub_24AB91684(319, &qword_27EF95A40, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24AB91684(319, &qword_27EF95A48, type metadata accessor for TreeLister, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_24AB91684(319, &qword_27EF95A50, type metadata accessor for RootInfo, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24AB91684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24AB916FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_24AB91744(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24AB917AC()
{
  result = qword_27EF95A58;
  if (!qword_27EF95A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95A58);
  }

  return result;
}

unint64_t sub_24AB91804()
{
  result = qword_27EF95A60;
  if (!qword_27EF95A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95A60);
  }

  return result;
}

unint64_t sub_24AB9185C()
{
  result = qword_27EF95A68;
  if (!qword_27EF95A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95A68);
  }

  return result;
}

unint64_t sub_24AB918B0()
{
  result = qword_27EF95A78;
  if (!qword_27EF95A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95A78);
  }

  return result;
}

uint64_t sub_24AB91904(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF95AA0, &qword_24ABAED58);
    sub_24AB90D74(a2, type metadata accessor for RootInfo, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AB919A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AB91A08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24AB91A68(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF95A88, &qword_24ABAED50);
    sub_24AB90D74(a2, type metadata accessor for TreeLister, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_24AB91BD8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24AB91BE8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AB91CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AB91D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6576457473616CLL && a2 == 0xEB00000000444974;
  if (v4 || (sub_24ABAC58C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x55556D6165727473 && a2 == 0xEA00000000004449 || (sub_24ABAC58C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E616373 && a2 == 0xE500000000000000 || (sub_24ABAC58C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73746F6F72 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24ABAC58C();

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

id sub_24AB91EE0()
{
  v12 = sub_24ABAC14C();
  MEMORY[0x28223BE20](v12);
  v0 = sub_24ABABE1C();
  MEMORY[0x28223BE20](v0 - 8);
  v11 = sub_24ABAC15C();
  v1 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24ABAC1CC();
  MEMORY[0x28223BE20](v4);
  v10 = sub_24AB943C0(0, &qword_27EF95B78, 0x277D85CA8);
  v13 = MEMORY[0x277D84F90];
  sub_24AB90D74(&qword_27EF95B80, MEMORY[0x277D852C0], MEMORY[0x277D852C8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B88, &qword_24ABAEDE0);
  sub_24AB94408(&unk_27EF95B90, &qword_27EF95B88, &qword_24ABAEDE0);
  sub_24ABAC28C();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v11);
  v5 = sub_24ABAC1DC();
  v11 = v5;
  v6 = objc_allocWithZone(MEMORY[0x277D086A0]);
  v7 = sub_24ABABE8C();
  v10 = [v6 initWithLabel:v7 workloop:v5 shouldWatchRoot:0];

  sub_24AB943C0(0, &unk_27EF95E00, 0x277D85C78);
  sub_24ABABE0C();
  v13 = MEMORY[0x277D84F90];
  sub_24AB90D74(&unk_27EF95BA0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95E10, &qword_24ABAEDE8);
  sub_24AB94408(&qword_27EF95BB0, &unk_27EF95E10, &qword_24ABAEDE8);
  sub_24ABAC28C();
  v9[1] = sub_24ABAC13C();
  sub_24ABABE0C();
  v13 = MEMORY[0x277D84F90];
  sub_24ABAC28C();
  sub_24ABAC13C();
  sub_24ABABE0C();
  v13 = MEMORY[0x277D84F90];
  sub_24ABAC28C();
  sub_24ABAC13C();

  return v10;
}

void *sub_24AB923B4(uint64_t a1, uint64_t a2, unsigned int a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v106 = a5;
  v105 = a4;
  v104 = a3;
  v7 = type metadata accessor for FileMetadata(0);
  v97 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v100 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v99 = &v89 - v10;
  v103 = type metadata accessor for FIRoot.IndexAction(0);
  v11 = MEMORY[0x28223BE20](v103);
  v110 = (&v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v114 = (&v89 - v13);
  v14 = type metadata accessor for RootInfo(0);
  v112 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v102 = &v89 - v19;
  MEMORY[0x28223BE20](v18);
  v113 = &v89 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v96 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v101 = &v89 - v25;
  MEMORY[0x28223BE20](v24);
  v127 = &v89 - v26;
  v126 = sub_24ABABB6C();
  v27 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v125 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_24ABABC0C();
  v30 = MEMORY[0x28223BE20](v29);
  v95 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v94 = &v89 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v89 - v35;
  v124 = *(a1 + 16);
  if (v124)
  {
    v37 = v34;
    v121 = objc_opt_self();
    type metadata accessor for FIRoot(0);
    v38 = 0;
    v120 = a1 + 32;
    v119 = *(v27 + 104);
    v118 = (v37 + 56);
    v117 = (v37 + 8);
    v93 = (v37 + 48);
    v130 = *(a2 + 16);
    v92 = (v37 + 32);
    v91 = v37;
    v90 = (v37 + 16);
    v116 = *MEMORY[0x277CC91C0];
    v115 = *MEMORY[0x277CC91D0];
    *&v39 = 136315650;
    v107 = v39;
    v109 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v108 = MEMORY[0x277D84F90];
    v111 = a2;
    v122 = v29;
    v123 = v27 + 104;
    do
    {
      v131 = v38;
      v41 = (v120 + 40 * v38);
      v42 = v41[1];
      v133 = *v41;
      v134 = v42;
      v43 = *(v41 + 8);
      v135 = v43;
      if ((v43 & 0x20000) != 0)
      {
        v44 = v116;
      }

      else
      {
        v44 = v115;
      }

      v119(v125, v44, v126);
      v45 = v133;
      (*v118)(v127, 1, 1, v29);
      swift_bridgeObjectRetain_n();
      v129 = v45;
      sub_24ABABBFC();
      v46 = [v121 fpfs:v43 initWithFSEventsFlags:?];
      v128 = sub_24ABABEBC();
      v48 = v47;

      if (v130)
      {
        v49 = v111 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
        v50 = *(v112 + 72);
        v51 = v130;
        while (1)
        {
          sub_24AB919A0(v49, v17, type metadata accessor for RootInfo);
          v52 = sub_24ABABB9C();
          v53 = sub_24ABABB9C();
          v54 = [v52 fp:v53 relativePathWithRealpath:?];

          if (v54)
          {
            break;
          }

          sub_24AB91A08(v17, type metadata accessor for RootInfo);
          v49 += v50;
          if (!--v51)
          {
            goto LABEL_13;
          }
        }

        v62 = v102;
        sub_24AB91CDC(v17, v102, type metadata accessor for RootInfo);

        v63 = v62;
        v64 = v113;
        sub_24AB91CDC(v63, v113, type metadata accessor for RootInfo);
        v65 = v114;
        sub_24AB8CEE4(&v133, v64, v104, v105, v106, v114);
        sub_24AB94310(&v133);
        sub_24AB919A0(v65, v110, type metadata accessor for FIRoot.IndexAction);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          v29 = v122;
          v40 = v131;
          if (EnumCaseMultiPayload == 1)
          {
            v67 = *v110;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v109 = sub_24ABA1408(0, *(v109 + 2) + 1, 1, v109);
            }

            v69 = *(v109 + 2);
            v68 = *(v109 + 3);
            if (v69 >= v68 >> 1)
            {
              v109 = sub_24ABA1408((v68 > 1), v69 + 1, 1, v109);
            }

            sub_24AB91A08(v114, type metadata accessor for FIRoot.IndexAction);
            sub_24AB91A08(v113, type metadata accessor for RootInfo);
            (*v117)(v36, v29);
            v70 = v109;
            *(v109 + 2) = v69 + 1;
            *&v70[8 * v69 + 32] = v67;
          }

          else
          {
            sub_24AB91A08(v114, type metadata accessor for FIRoot.IndexAction);
            sub_24AB91A08(v113, type metadata accessor for RootInfo);
            (*v117)(v36, v29);
          }
        }

        else
        {
          v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B58, &unk_24ABAEDC0) + 48);
          v72 = v110;
          v73 = v99;
          sub_24AB91CDC(v110, v99, type metadata accessor for FileMetadata);
          sub_24AB94340(v72 + v71, v101);
          sub_24AB919A0(v73, v100, type metadata accessor for FileMetadata);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29 = v122;
          v40 = v131;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v108 = sub_24ABA13B8(0, v108[2] + 1, 1, v108);
          }

          v76 = v108[2];
          v75 = v108[3];
          if (v76 >= v75 >> 1)
          {
            v108 = sub_24ABA13B8((v75 > 1), v76 + 1, 1, v108);
          }

          v77 = v108;
          v108[2] = v76 + 1;
          sub_24AB91CDC(v100, v77 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v76, type metadata accessor for FileMetadata);
          v78 = v101;
          v79 = v96;
          sub_24AB94828(v101, v96, &qword_27EF95B00, &qword_24ABAED70);
          if ((*v93)(v79, 1, v29) == 1)
          {
            sub_24AB7C4A4(v78, &qword_27EF95B00, &qword_24ABAED70);
            sub_24AB91A08(v99, type metadata accessor for FileMetadata);
            sub_24AB91A08(v114, type metadata accessor for FIRoot.IndexAction);
            sub_24AB91A08(v113, type metadata accessor for RootInfo);
            (*v117)(v36, v29);
            sub_24AB7C4A4(v79, &qword_27EF95B00, &qword_24ABAED70);
          }

          else
          {
            v80 = v94;
            v129 = *v92;
            v129(v94, v79, v29);
            (*v90)(v95, v80, v29);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v98 = sub_24ABA13E0(0, *(v98 + 2) + 1, 1, v98);
            }

            v82 = *(v98 + 2);
            v81 = *(v98 + 3);
            v83 = v91;
            if (v82 >= v81 >> 1)
            {
              v87 = sub_24ABA13E0((v81 > 1), v82 + 1, 1, v98);
              v83 = v91;
              v98 = v87;
            }

            v84 = *(v83 + 8);
            v85 = v83;
            v84(v94, v29);
            sub_24AB7C4A4(v101, &qword_27EF95B00, &qword_24ABAED70);
            sub_24AB91A08(v99, type metadata accessor for FileMetadata);
            sub_24AB91A08(v114, type metadata accessor for FIRoot.IndexAction);
            sub_24AB91A08(v113, type metadata accessor for RootInfo);
            v84(v36, v29);
            v86 = v98;
            *(v98 + 2) = v82 + 1;
            v129(&v86[((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v82], v95, v29);
          }
        }
      }

      else
      {
LABEL_13:
        if (qword_27EF95308 != -1)
        {
          swift_once();
        }

        v55 = sub_24ABABD8C();
        __swift_project_value_buffer(v55, qword_27EF95FD8);
        sub_24AB942D8(&v133, &v132);

        v56 = sub_24ABABD6C();
        v57 = sub_24ABAC11C();

        v58 = os_log_type_enabled(v56, v57);
        v29 = v122;
        if (v58)
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v132 = v60;
          *v59 = v107;
          *(v59 + 4) = sub_24AB760CC(v129, *(&v45 + 1), &v132);
          *(v59 + 12) = 2048;
          sub_24AB94310(&v133);
          *(v59 + 14) = v134;
          sub_24AB94310(&v133);
          *(v59 + 22) = 2080;
          v61 = sub_24AB760CC(v128, v48, &v132);

          *(v59 + 24) = v61;
          _os_log_impl(&dword_24AB6F000, v56, v57, "event not in any registered roots: path %s fileID %llu flags %s", v59, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C229EC0](v60, -1, -1);
          MEMORY[0x24C229EC0](v59, -1, -1);
        }

        else
        {

          sub_24AB94310(&v133);
          sub_24AB94310(&v133);
        }

        (*v117)(v36, v29);
        v40 = v131;
      }

      v38 = v40 + 1;
    }

    while (v38 != v124);
  }

  else
  {
    v109 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    return MEMORY[0x277D84F90];
  }

  return v108;
}

void sub_24AB932E0(uint64_t a1)
{
  v2 = v1;
  if (a1 == 6)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v12 = sub_24ABABD8C();
    __swift_project_value_buffer(v12, qword_27EF95FD8);
    v8 = sub_24ABABD6C();
    v9 = sub_24ABAC0FC();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_23;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "reset due to needing deep scan, queueing scan";
LABEL_17:
    v13 = v9;
    v14 = v8;
    v15 = v10;
    v16 = 2;
    goto LABEL_22;
  }

  if (a1 == 9)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v7 = sub_24ABABD8C();
    __swift_project_value_buffer(v7, qword_27EF95FD8);
    v8 = sub_24ABABD6C();
    v9 = sub_24ABAC0FC();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_23;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "reset due to drop in live stream";
    goto LABEL_17;
  }

  if (a1 != 8)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v18 = sub_24ABABD8C();
    __swift_project_value_buffer(v18, qword_27EF95FD8);
    v8 = sub_24ABABD6C();
    v19 = sub_24ABAC0FC();
    if (!os_log_type_enabled(v8, v19))
    {
      goto LABEL_23;
    }

    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    v11 = "reset with reason %ld";
    v13 = v19;
    v14 = v8;
    v15 = v10;
    v16 = 12;
LABEL_22:
    _os_log_impl(&dword_24AB6F000, v14, v13, v11, v15, v16);
    MEMORY[0x24C229EC0](v10, -1, -1);
LABEL_23:

    goto LABEL_24;
  }

  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v3 = sub_24ABABD8C();
  __swift_project_value_buffer(v3, qword_27EF95FD8);
  v4 = sub_24ABABD6C();
  v5 = sub_24ABAC0FC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24AB6F000, v4, v5, "reset due to drop in historical stream, queueing scan", v6, 2u);
    MEMORY[0x24C229EC0](v6, -1, -1);
  }

  sub_24AB87704();
LABEL_24:
  if (*(*(v2 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_eventProcessingOSTransaction) + 16))
  {
    sub_24AB833A8();
  }
}

void sub_24AB935DC()
{
  v1 = v0;
  v2 = sub_24ABABDFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24ABABE1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexingState(0);
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  swift_beginAccess();
  if (*(v1[14] + 16))
  {
    v41 = v1[14];
    v42 = v11;
    v46 = v7;
    v47 = v5;
    v48 = v6;
    v49 = v3;
    v50 = v2;
    v1[14] = MEMORY[0x277D84F90];
    v15 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_getIndexingState);

    v45 = v14;
    v15(v16);

    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v18 = dispatch_group_create();
    dispatch_group_enter(v18);
    v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = v1[11];
    v20 = v1[12];
    v40 = __swift_project_boxed_opaque_existential_1(v1 + 8, v19);
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    *(v21 + 24) = v18;
    v22 = v9;
    v23 = *(v20 + 32);

    v24 = v18;
    v44 = v1;
    v25 = v24;
    v26 = v20;
    v27 = v43;
    v23(sub_24AB93C0C, v21, v19, v26);

    sub_24ABAC12C();

    v28 = v44;
    swift_beginAccess();
    LOBYTE(v19) = *(v17 + 16);

    if ((v19 & 1) == 0)
    {
      if (qword_27EF95308 != -1)
      {
        swift_once();
      }

      v29 = sub_24ABABD8C();
      __swift_project_value_buffer(v29, qword_27EF95FD8);
      v30 = sub_24ABABD6C();
      v31 = sub_24ABAC0FC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_24AB6F000, v30, v31, "FileIndexer and Spotlight out of sync in persisted state, queueing scan", v32, 2u);
        MEMORY[0x24C229EC0](v32, -1, -1);
      }

      sub_24AB87704();
    }

    v33 = v45;
    sub_24AB919A0(v45, v27, type metadata accessor for IndexingState);
    v34 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v35 = swift_allocObject();
    v36 = v41;
    *(v35 + 16) = v28;
    *(v35 + 24) = v36;
    sub_24AB91CDC(v27, v35 + v34, type metadata accessor for IndexingState);
    aBlock[4] = sub_24AB93D6C;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AB9AA08;
    aBlock[3] = &block_descriptor_165;
    v37 = _Block_copy(aBlock);

    sub_24ABABE0C();
    v52 = MEMORY[0x277D84F90];
    sub_24AB90D74(&unk_27EF95DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
    sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
    v38 = v47;
    v39 = v50;
    sub_24ABAC28C();
    MEMORY[0x24C229110](0, v22, v38, v37);
    _Block_release(v37);
    (*(v49 + 8))(v38, v39);
    (*(v46 + 8))(v22, v48);
    sub_24AB91A08(v33, type metadata accessor for IndexingState);
  }
}

uint64_t sub_24AB93C14()
{
  v1 = *(type metadata accessor for IndexingState(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(type metadata accessor for FIRoot.State(0) + 20);
  v6 = sub_24ABABD0C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AB93D6C()
{
  v1 = *(type metadata accessor for IndexingState(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_24AB8E50C(v2, v3, v4);
}

uint64_t sub_24AB93DD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24AB93E34()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AB93E6C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24AB93E84(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t sub_24AB93F00()
{
  v1 = *(sub_24ABABC0C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_24AB8F524(v2, v3);
}

uint64_t sub_24AB93F64()
{
  v1 = *(type metadata accessor for IndexingState(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(type metadata accessor for FIRoot.State(0) + 20);
  v6 = sub_24ABABD0C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AB940D4()
{
  v1 = *(type metadata accessor for IndexingState(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_24AB8F9EC(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_24AB94140()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_158Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AB941C0()
{
  v1 = sub_24ABABC0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_24AB94248(void *a1)
{
  v3 = *(sub_24ABABC0C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_24AB8F730(a1, v4);
}

uint64_t sub_24AB94340(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AB943C0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_24AB94408(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24AB94484()
{
  result = qword_27EF95BB8;
  if (!qword_27EF95BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95BB8);
  }

  return result;
}

uint64_t sub_24AB944F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AB945B8;

  return sub_24AB8BC88(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24AB945B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_231Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t sub_24AB9472C()
{

  sub_24AB77A9C(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24AB947D4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AB94828(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AB94890()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AB948C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AB94E38;

  return sub_24AB908F4(a1, v4);
}

uint64_t sub_24AB94980(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AB945B8;

  return sub_24AB908F4(a1, v4);
}

uint64_t objectdestroy_170Tm()
{
  v1 = sub_24ABABC0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_24AB94B70(uint64_t a1)
{
  sub_24AB94BD8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_24AB94BD8(uint64_t a1)
{
  if (!qword_27EF95BD8)
  {
    type metadata accessor for FileMetadata(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF95B00, &qword_24ABAED70);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF95BD8);
    }
  }
}

unint64_t sub_24AB94C6C()
{
  result = qword_27EF95BE8;
  if (!qword_27EF95BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95BE8);
  }

  return result;
}

unint64_t sub_24AB94CC4()
{
  result = qword_27EF95BF0;
  if (!qword_27EF95BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95BF0);
  }

  return result;
}

unint64_t sub_24AB94D1C()
{
  result = qword_27EF95BF8;
  if (!qword_27EF95BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95BF8);
  }

  return result;
}

unint64_t sub_24AB94D74()
{
  result = qword_27EF95C00;
  if (!qword_27EF95C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95C00);
  }

  return result;
}

unint64_t sub_24AB94E84()
{
  result = qword_27EF95C10;
  if (!qword_27EF95C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95C10);
  }

  return result;
}

uint64_t sub_24AB94ED8(void *(*a1)(uint64_t *__return_ptr, uint64_t))
{
  v3 = sub_24ABABA2C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a1(&v12, v5);
  if (!v1)
  {
    result = v12;
    if ((v12 & 0x80000000) != 0)
    {
      result = MEMORY[0x24C228D50]();
      if (result)
      {
        MEMORY[0x24C228D50]();
        v9 = sub_24ABABDAC();
        v10 = (v4 + 8);
        if ((v9 & 0x100000000) != 0)
        {
          v11[2] = sub_24ABABD9C();
        }

        else
        {
          v11[1] = v9;
        }

        sub_24ABA5504(MEMORY[0x277D84F90]);
        sub_24ABA3E40(&qword_27EF95E30, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
        sub_24ABABB3C();
        sub_24ABABA1C();
        (*v10)(v7, v3);
        return swift_willThrow();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_24AB950BC(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
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

  v3 = sub_24ABA1534(isUniquelyReferenced_nonNull_native, v12, 1, v3, &unk_27EF95D90, &unk_24ABAF2A0, type metadata accessor for RootInfo);
  if (!*(v6 + 16))
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
  result = type metadata accessor for RootInfo(0);
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
    return result;
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
  return result;
}

uint64_t sub_24AB9520C()
{
  v0 = sub_24ABABD8C();
  __swift_allocate_value_buffer(v0, qword_27EF95FD8);
  __swift_project_value_buffer(v0, qword_27EF95FD8);
  return sub_24ABABD7C();
}

char *FIService.init(daemon:)(void *a1)
{
  v3 = OBJC_IVAR____TtC17FileIndexerDaemon9FIService_listener;
  v4 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v5 = sub_24ABABE8C();
  v6 = [v4 initWithMachServiceName_];

  *&v1[v3] = v6;
  *&v1[OBJC_IVAR____TtC17FileIndexerDaemon9FIService_daemon] = a1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for FIService();
  v7 = a1;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = OBJC_IVAR____TtC17FileIndexerDaemon9FIService_listener;
  v10 = *&v8[OBJC_IVAR____TtC17FileIndexerDaemon9FIService_listener];
  v11 = v8;
  [v10 setDelegate_];
  [*&v8[v9] resume];

  return v11;
}

uint64_t sub_24AB95460()
{
  v1[7] = v0;
  v2 = type metadata accessor for RootInfo(0);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AB95520, 0, 0);
}

uint64_t sub_24AB95520()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC17FileIndexerDaemon9FIService_daemon);
  *(swift_task_alloc() + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95AA0, &qword_24ABAED58);
  sub_24ABAC17C();

  v2 = *(v0 + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 72);
    v32 = MEMORY[0x277D84F90];
    sub_24ABA18BC(0, v3, 0);
    v5 = v32;
    v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v31 = *(v4 + 72);
    v7 = v6;
    v8 = v3;
    do
    {
      v9 = *(v0 + 80);
      sub_24ABA3CE0(v7, v9, type metadata accessor for RootInfo);
      v10 = sub_24ABABBEC();
      v12 = v11;
      sub_24ABA4900(v9, type metadata accessor for RootInfo);
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      v15 = v5;
      if (v14 >= v13 >> 1)
      {
        sub_24ABA18BC((v13 > 1), v14 + 1, 1);
        v15 = v5;
      }

      *(v15 + 16) = v14 + 1;
      v16 = v15 + 16 * v14;
      *(v16 + 32) = v10;
      *(v16 + 40) = v12;
      v7 += v31;
      --v8;
      v5 = v15;
    }

    while (v8);
    v17 = v15;
    v18 = *(v0 + 64);
    v33 = MEMORY[0x277D84F90];
    sub_24ABA1920(0, v3, 0);
    do
    {
      v19 = *(v0 + 80);
      sub_24ABA3CE0(v6, v19, type metadata accessor for RootInfo);
      v20 = (v19 + *(v18 + 20));
      v21 = *v20;
      v22 = v20[1];
      *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95C38, &qword_24ABAF100);
      *(v0 + 16) = v21;
      *(v0 + 24) = v22;

      sub_24ABA4900(v19, type metadata accessor for RootInfo);
      v24 = *(v33 + 16);
      v23 = *(v33 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_24ABA1920((v23 > 1), v24 + 1, 1);
      }

      *(v33 + 16) = v24 + 1;
      sub_24ABA28B4((v0 + 16), (v33 + 32 * v24 + 32));
      v6 += v31;
      --v3;
    }

    while (v3);

    v25 = v17;
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v26 = objc_allocWithZone(MEMORY[0x277CBEA60]);
  v27 = sub_24ABABFEC();

  v28 = [v26 initWithArray_];

  v29 = *(v0 + 8);

  return v29(v25, v28);
}

uint64_t sub_24AB959F8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24AB95AA0;

  return sub_24AB95460();
}

uint64_t sub_24AB95AA0(uint64_t a1, void *a2)
{
  v4 = *(*v2 + 24);
  v5 = *(*v2 + 16);
  v9 = *v2;

  v6 = sub_24ABABFEC();
  (v4)[2](v4, v6, a2, 0);

  _Block_release(v4);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_24AB95C18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95C40, &qword_24ABAF110);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for RootInfo(0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AB95D14, 0, 0);
}

uint64_t sub_24AB95D14(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[5];
  v5 = *(v1[3] + OBJC_IVAR____TtC17FileIndexerDaemon9FIService_daemon);
  v6 = sub_24ABABBEC();
  v8 = v7;
  v9 = swift_task_alloc();
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v8;
  sub_24ABAC17C();

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_24AB7C4A4(v1[5], &qword_27EF95C40, &qword_24ABAF110);
    type metadata accessor for FIError(0);
    sub_24ABA3E40(&qword_27EF95C48, type metadata accessor for FIError, &unk_24ABAF260);
    swift_allocError();
    v11 = v10;
    *v10 = sub_24ABABBEC();
    v11[1] = v12;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v13 = v1[1];
  }

  else
  {
    sub_24ABA3D48(v1[5], v1[8], type metadata accessor for RootInfo);
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v14 = sub_24ABABD8C();
    __swift_project_value_buffer(v14, qword_27EF95FD8);
    v15 = sub_24ABABD6C();
    v16 = sub_24ABAC0FC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24AB6F000, v15, v16, "queueing scan", v17, 2u);
      MEMORY[0x24C229EC0](v17, -1, -1);
    }

    v18 = v1[8];

    sub_24AB8701C(v18);

    sub_24ABA4900(v18, type metadata accessor for RootInfo);

    v13 = v1[1];
  }

  return v13();
}

uint64_t sub_24AB961A4(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_24ABABC0C();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  sub_24ABABBCC();
  a3;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_24AB962D0;

  return sub_24AB95C18(v7);
}

uint64_t sub_24AB962D0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  (*(v6 + 8))(v5, v7);

  v10 = *(v3 + 48);
  if (v2)
  {
    v11 = sub_24ABABB4C();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_24AB964D8()
{
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v1 = sub_24ABABD8C();
  __swift_project_value_buffer(v1, qword_27EF95FD8);
  v2 = sub_24ABABD6C();
  v3 = sub_24ABAC0FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AB6F000, v2, v3, "starting scan", v4, 2u);
    MEMORY[0x24C229EC0](v4, -1, -1);
  }

  sub_24AB89E4C(nullsub_1, 0, sub_24AB96650, 0);

  v5 = *(v0 + 8);

  return v5();
}

void sub_24AB96650(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B10, &unk_24ABAED80);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24ABAD4A0;
    v3 = a1;
    MEMORY[0x24C228EB0](0x727265206E616373, 0xEC000000203A726FLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95C50, &qword_24ABAF140);
    sub_24ABAC3AC();
    *(v2 + 56) = MEMORY[0x277D837D0];
    *(v2 + 32) = 0;
    *(v2 + 40) = 0xE000000000000000;
    sub_24ABAC61C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B10, &unk_24ABAED80);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 16) = xmmword_24ABAD4A0;
    *(v4 + 56) = v5;
    strcpy((v4 + 32), "scan finished");
    *(v4 + 46) = -4864;
    sub_24ABAC61C();
  }
}

uint64_t sub_24AB9696C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24ABA4AA0;

  return sub_24AB964B8();
}

uint64_t sub_24AB96A34()
{
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v1 = sub_24ABABD8C();
  __swift_project_value_buffer(v1, qword_27EF95FD8);
  v2 = sub_24ABABD6C();
  v3 = sub_24ABAC0FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AB6F000, v2, v3, "stopping scan", v4, 2u);
    MEMORY[0x24C229EC0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(*(v5 + OBJC_IVAR____TtC17FileIndexerDaemon9FIService_daemon) + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher);
  *(swift_task_alloc() + 16) = v6;
  *(swift_task_alloc() + 16) = v6;

  sub_24ABABD1C();

  *(v6 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__forceScanStop) = 1;
  *(swift_task_alloc() + 16) = v6;
  *(swift_task_alloc() + 16) = v6;
  sub_24ABABD1C();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24AB96DF0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24ABA4AA0;

  return sub_24AB96A14();
}

uint64_t sub_24AB96EB8()
{
  v1 = *(*(*(v0 + 16) + OBJC_IVAR____TtC17FileIndexerDaemon9FIService_daemon) + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher);
  *(swift_task_alloc() + 16) = v1;
  *(swift_task_alloc() + 16) = v1;

  sub_24ABABD1C();

  v2 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus);
  *(swift_task_alloc() + 16) = v1;
  *(swift_task_alloc() + 16) = v1;
  sub_24ABABD1C();

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24AB971C8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24AB97270;

  return sub_24AB96E98();
}

uint64_t sub_24AB97270(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_24ABABB4C();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_24AB97420()
{
  v1 = *(*(*(v0 + 16) + OBJC_IVAR____TtC17FileIndexerDaemon9FIService_daemon) + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher);
  *(swift_task_alloc() + 16) = v1;
  *(swift_task_alloc() + 16) = v1;

  sub_24ABABD1C();

  v2 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__itemDelayInScan);
  *(swift_task_alloc() + 16) = v1;
  *(swift_task_alloc() + 16) = v1;
  sub_24ABABD1C();

  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v3 = sub_24ABABD8C();
  __swift_project_value_buffer(v3, qword_27EF95FD8);
  v4 = sub_24ABABD6C();
  v5 = sub_24ABAC0FC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v2;
    _os_log_impl(&dword_24AB6F000, v4, v5, "got item delay in scan, %ld seconds", v6, 0xCu);
    MEMORY[0x24C229EC0](v6, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7(v2);
}

uint64_t sub_24AB977F0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24ABA4A00;

  return sub_24AB97400();
}

uint64_t sub_24AB97898(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AB978B8, 0, 0);
}

uint64_t sub_24AB978B8()
{
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v1 = sub_24ABABD8C();
  __swift_project_value_buffer(v1, qword_27EF95FD8);
  v2 = sub_24ABABD6C();
  v3 = sub_24ABAC0FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_24AB6F000, v2, v3, "setting item delay in scan to %ld seconds", v5, 0xCu);
    MEMORY[0x24C229EC0](v5, -1, -1);
  }

  v7 = v0[2];
  v6 = v0[3];

  v8 = *(*(v6 + OBJC_IVAR____TtC17FileIndexerDaemon9FIService_daemon) + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher);
  *(swift_task_alloc() + 16) = v8;
  *(swift_task_alloc() + 16) = v8;

  sub_24ABABD1C();

  if ((v7 & 0x8000000000000000) == 0)
  {
    *(v8 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__itemDelayInScan) = v0[2];
  }

  *(swift_task_alloc() + 16) = v8;
  *(swift_task_alloc() + 16) = v8;
  sub_24ABABD1C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AB97C98(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_24AB97D54;

  return sub_24AB97898(a1);
}

uint64_t sub_24AB97D54()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_24ABABB4C();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_24AB97F9C(void *a1, void *a2, void *a3)
{
  v351 = a1;
  v354 = a3;
  v348 = a2;
  v374 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for IndexingState(0);
  v5 = *(v4 - 8);
  v356 = v4;
  v357 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v352 = v303 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v323 = v303 - v8;
  v343 = type metadata accessor for RootInfo(0);
  v318 = *(v343 - 8);
  v9 = MEMORY[0x28223BE20](v343);
  v358 = v303 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v319 = v303 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v314 = v303 - v14;
  MEMORY[0x28223BE20](v13);
  v312 = v303 - v15;
  v317 = sub_24ABABD0C();
  v321 = *(v317 - 8);
  MEMORY[0x28223BE20](v317);
  v313 = v303 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0);
  v334 = *(*(v332 - 8) + 64);
  MEMORY[0x28223BE20](v332);
  v333 = v303 - v17;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95DE8, &qword_24ABAF3E8);
  MEMORY[0x28223BE20](v316);
  v320 = v303 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95A20, &unk_24ABAF3F0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v315 = v303 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v335 = v303 - v22;
  v345 = type metadata accessor for FIRoot.State(0);
  v329 = *(v345 - 1);
  v23 = MEMORY[0x28223BE20](v345);
  v331 = (v303 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v336 = (v303 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B70, &qword_24ABAF540);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  *&v330 = v303 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v337 = (v303 - v29);
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95DA0, &unk_24ABAF2B0);
  v30 = MEMORY[0x28223BE20](v339);
  v353 = v303 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v322 = v303 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v328 = v303 - v35;
  MEMORY[0x28223BE20](v34);
  v347 = v303 - v36;
  v327 = sub_24ABAC14C();
  MEMORY[0x28223BE20](v327);
  v326 = v303 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v355 = sub_24ABABC0C();
  v338 = *(v355 - 8);
  v38 = MEMORY[0x28223BE20](v355);
  v349 = v303 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v346 = v303 - v40;
  v344 = sub_24ABABDFC();
  v41 = *(v344 - 1);
  MEMORY[0x28223BE20](v344);
  v43 = v303 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_24ABABE1C();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = v303 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = (v3 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexingTaskIdentifier);
  *v48 = 0xD000000000000024;
  v48[1] = 0x800000024ABB01F0;
  v342 = v48;
  v49 = sub_24ABABDEC();
  signal(15, v49);
  sub_24AB943C0(0, &qword_27EF95DF8, 0x277D85CA0);
  v324 = sub_24AB943C0(0, &unk_27EF95E00, 0x277D85C78);
  v50 = sub_24ABAC16C();
  v51 = sub_24ABAC19C();

  swift_getObjectType();
  *&v364 = sub_24AB9A938;
  *(&v364 + 1) = 0;
  *&v362 = MEMORY[0x277D85DD0];
  *(&v362 + 1) = 1107296256;
  *&v363 = sub_24AB9AA08;
  *(&v363 + 1) = &block_descriptor_233;
  v52 = _Block_copy(&v362);
  sub_24ABABE0C();
  sub_24AB9AA4C();
  sub_24ABAC1AC();
  v53 = v52;
  v54 = v346;
  _Block_release(v53);
  v55 = v43;
  v56 = v51;
  (*(v41 + 8))(v55, v344);
  v57 = *(v45 + 8);
  v325 = v47;
  v58 = v47;
  v60 = v350;
  v59 = v351;
  v57(v58, v44);
  v61 = v348;
  sub_24ABAC1BC();
  v62 = v354;
  v341 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_sigtermSource;
  *&v60[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_sigtermSource] = v56;
  v63 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_metadataHandler;
  sub_24AB93DD0(v59, &v60[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_metadataHandler]);
  v344 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexHandler;
  sub_24AB93DD0(v61, &v60[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexHandler]);
  v340 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexingStateHandler;
  sub_24AB93DD0(v62, &v60[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexingStateHandler]);
  swift_unknownObjectRetain();
  v64 = v359;
  v65 = sub_24AB9AB24(v54);
  if (v64)
  {
    v359 = v64;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    __swift_destroy_boxed_opaque_existential_0Tm(v61);

    v66 = 0;
    goto LABEL_4;
  }

  v311 = v63;
  v369 = 0u;
  v370 = 0u;
  v367 = 0u;
  v368 = 0u;
  v365 = 0u;
  v366 = 0u;
  v363 = 0u;
  v364 = 0u;
  v362 = 0u;
  MEMORY[0x28223BE20](v65);
  v303[-2] = v54;
  v303[-1] = &v362;
  sub_24AB94ED8(sub_24ABA47E0);
  v359 = 0;
  v308 = v56;
  v68 = v338;
  v69 = v355;
  v303[0] = *(v338 + 16);
  v303[1] = v338 + 16;
  (v303[0])(&v60[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_localRoot], v54, v355);
  v310 = v362;
  v70 = v349;
  sub_24ABABB8C();
  (*(v68 + 32))(&v60[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_appLibrariesRoot], v70, v69);
  v71 = v61;
  sub_24ABABE0C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24ABA3E40(&unk_27EF95BA0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95E10, &qword_24ABAEDE8);
  sub_24AB94408(&qword_27EF95BB0, &unk_27EF95E10, &qword_24ABAEDE8);
  sub_24ABAC28C();
  *&v60[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue] = sub_24ABAC13C();
  v72 = sub_24AB91EE0();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v327 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_monitor;
  *&v60[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_monitor] = v72;
  v326 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_fetchQueue;
  *&v60[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_fetchQueue] = v73;
  v325 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexQueue;
  *&v60[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexQueue] = v75;
  v324 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_scanQueue;
  *&v60[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_scanQueue] = v77;
  v79 = swift_allocBox();
  v339 = v80;
  (*(v357 + 56))(v80, 1, 1, v356);
  v307 = v72;
  v306 = v74;
  v305 = v76;
  v304 = v78;
  v81 = dispatch_group_create();
  dispatch_group_enter(v81);
  v83 = v71[3];
  v82 = v71[4];
  __swift_project_boxed_opaque_existential_1(v71, v83);
  v84 = swift_allocObject();
  v309 = v79;
  *(v84 + 16) = v79;
  *(v84 + 24) = v81;
  v85 = *(v82 + 32);

  v86 = v81;
  v85(sub_24ABA4AD4, v84, v83, v82);

  sub_24ABAC12C();

  v87 = v339;
  swift_beginAccess();
  v88 = v87;
  v89 = v347;
  sub_24AB94828(v88, v347, &unk_27EF95DA0, &unk_24ABAF2B0);

  v90 = v89;
  v91 = v328;
  sub_24AB94828(v90, v328, &unk_27EF95DA0, &unk_24ABAF2B0);
  v92 = *(v357 + 48);
  v357 += 48;
  v339 = v92;
  if (v92(v91, 1, v356) == 1)
  {
    sub_24AB7C4A4(v91, &unk_27EF95DA0, &unk_24ABAF2B0);
    v93 = 1;
    v94 = v354;
    v95 = v345;
    v96 = v337;
  }

  else
  {
    v96 = v337;
    sub_24ABA3CE0(v91, v337, type metadata accessor for FIRoot.State);
    sub_24ABA4900(v91, type metadata accessor for IndexingState);
    v93 = 0;
    v94 = v354;
    v95 = v345;
  }

  v97 = v329;
  (v329[7])(v96, v93, 1, v95);
  v98 = v350;
  v99 = *&v327[v350];
  v100 = *&v326[v350];
  v101 = *&v350[v325];
  v102 = *&v350[v324];
  sub_24AB93DD0(&v350[v311], aBlock);
  sub_24AB93DD0(&v344[v98], v373);
  sub_24AB93DD0(v94, v372);
  type metadata accessor for FIRoot(0);
  v103 = swift_allocObject();
  *(v103 + 14) = MEMORY[0x277D84F90];
  v104 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_batchContinuation;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A00, &qword_24ABAEB60);
  (*(*(v105 - 8) + 56))(&v103[v104], 1, 1, v105);
  *&v103[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanError] = 0;
  *&v103[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus] = 0;
  v103[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__forceScanStop] = 0;
  *&v103[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__itemDelayInScan] = 0;
  v106 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueuedContinuation;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A18, &qword_24ABAEB98);
  (*(*(v107 - 8) + 56))(&v103[v106], 1, 1, v107);
  v108 = &v103[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_getIndexingState];
  *v108 = sub_24AB84F5C;
  v108[1] = 0;
  v109 = &v103[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_requestStartScanning];
  *v109 = nullsub_1;
  v109[1] = 0;
  *(v103 + 4) = v310;
  v326 = v99;
  *(v103 + 13) = v99;
  v327 = v100;
  *&v103[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_fetchQueue] = v100;
  v328 = v101;
  *&v103[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexQueue] = v101;
  v329 = v102;
  *&v103[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueue] = v102;
  sub_24AB93DD0(aBlock, (v103 + 24));
  sub_24AB93DD0(v373, (v103 + 64));
  sub_24AB93DD0(v372, &v103[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexingStateHandler]);
  type metadata accessor for OSTransaction();
  v110 = swift_allocObject();
  v110[2] = 0;
  v110[3] = 0;
  v110[4] = 0xD000000000000010;
  v110[5] = 0x800000024ABB0270;
  *&v103[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_eventProcessingOSTransaction] = v110;
  v111 = swift_allocObject();
  v111[2] = 0;
  v111[3] = 0;
  v111[4] = 0x676E696E6E616373;
  v111[5] = 0xE800000000000000;
  *&v103[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanOSTransaction] = v111;
  v112 = v330;
  sub_24AB94828(v337, v330, &qword_27EF95B70, &qword_24ABAF540);
  v113 = v345;
  if (v97[6](v112, 1, v345) == 1)
  {
    v114 = v326;
    v115 = v327;
    v116 = v328;
    v117 = v329;
    v344 = v114;
    v118 = v115;
    v119 = v116;
    v120 = v117;
    sub_24AB7C4A4(v112, &qword_27EF95B70, &qword_24ABAF540);
    CurrentEventId = FSEventsGetCurrentEventId();
    v122 = v331;
    sub_24AB82A04(v310, v331 + v113[5]);
    *v122 = CurrentEventId;
    v123 = MEMORY[0x277D84F90];
    *(v122 + v113[6]) = MEMORY[0x277D84F90];
    *(v122 + v113[7]) = v123;
    v124 = v333;
    *v333 = 0;
    v125 = *(v332 + 28);
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95E20, &qword_24ABAF400);
    bzero(&v124[v125], *(*(v126 - 8) + 64));
    sub_24ABA3D48(v122, &v124[v125], type metadata accessor for FIRoot.State);

    __swift_destroy_boxed_opaque_existential_0Tm(v372);
    __swift_destroy_boxed_opaque_existential_0Tm(v373);
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
    sub_24AB7C4A4(v337, &qword_27EF95B70, &qword_24ABAF540);
    memcpy(&v103[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state], v124, v334);
    goto LABEL_32;
  }

  v127 = v112;
  v128 = v336;
  sub_24ABA3D48(v127, v336, type metadata accessor for FIRoot.State);
  v129 = v326;
  v130 = v327;
  v131 = v328;
  v132 = v329;
  v327 = v129;
  v328 = v130;
  v329 = v131;
  *&v330 = v132;
  v133 = v335;
  sub_24AB82A04(v310, v335);
  v134 = v113[5];
  v135 = *(v316 + 48);
  v136 = v320;
  sub_24AB94828(v134 + v128, v320, &unk_27EF95A20, &unk_24ABAF3F0);
  v137 = v133;
  v138 = v136;
  sub_24AB94828(v137, v136 + v135, &unk_27EF95A20, &unk_24ABAF3F0);
  v139 = *(v321 + 48);
  v140 = v136;
  v141 = v317;
  if (v139(v140, 1, v317) == 1)
  {
    v142 = v139(v138 + v135, 1, v141);
    v143 = v318;
    v144 = v331;
    if (v142 == 1)
    {
      sub_24AB7C4A4(v138, &unk_27EF95A20, &unk_24ABAF3F0);
      v145 = MEMORY[0x277D84F90];
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  v326 = v134;
  v146 = v315;
  sub_24AB94828(v138, v315, &unk_27EF95A20, &unk_24ABAF3F0);
  v147 = v139(v138 + v135, 1, v141);
  v143 = v318;
  if (v147 == 1)
  {
    (*(v321 + 8))(v146, v141);
    v144 = v331;
LABEL_18:
    sub_24AB7C4A4(v138, &unk_27EF95DE8, &qword_24ABAF3E8);
    v148 = v335;
    v145 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v161 = v138;
  v162 = v321;
  v163 = v161 + v135;
  v164 = v313;
  (*(v321 + 32))(v313, v163, v141);
  sub_24ABA3E40(&qword_27EF95E28, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v165 = sub_24ABABE7C();
  v166 = *(v162 + 8);
  v166(v164, v141);
  v166(v146, v141);
  sub_24AB7C4A4(v320, &unk_27EF95A20, &unk_24ABAF3F0);
  v148 = v335;
  v144 = v331;
  v145 = MEMORY[0x277D84F90];
  v134 = v326;
  if (v165)
  {
LABEL_26:
    v167 = v345;
    v168 = v345[5];
    v169 = *(v336 + v345[6]);
    *v144 = *v336;
    sub_24AB94828(v134 + v336, v144 + v168, &unk_27EF95A20, &unk_24ABAF3F0);
    *(v144 + v167[6]) = v169;
    *(v144 + v167[7]) = v145;
    v170 = v333;
    *v333 = 0;
    v171 = v144;
    v172 = *(v332 + 28);

    v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95E20, &qword_24ABAF400);
    bzero(&v170[v172], *(*(v173 - 8) + 64));
    sub_24ABA3D48(v171, &v170[v172], type metadata accessor for FIRoot.State);
    memcpy(&v103[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state], v170, v334);
    v174 = v167[7];
    v154 = v336;
    v175 = *(v336 + v174);
    v176 = *(v175 + 16);
    if (v176)
    {
      v177 = 0;
      v158 = v312;
      while (v177 < *(v175 + 16))
      {
        sub_24ABA3CE0(v175 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v177, v158, type metadata accessor for RootInfo);
        v178 = v359;
        v179 = sub_24AB85700(v158);
        v359 = v178;
        if (v178)
        {
          goto LABEL_69;
        }

        ++v177;
        sub_24ABA4900(v158, type metadata accessor for RootInfo);
        if (v176 == v177)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_71;
    }

LABEL_31:

    sub_24AB7C4A4(v335, &unk_27EF95A20, &unk_24ABAF3F0);
    __swift_destroy_boxed_opaque_existential_0Tm(v372);
    __swift_destroy_boxed_opaque_existential_0Tm(v373);
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
    sub_24AB7C4A4(v337, &qword_27EF95B70, &qword_24ABAF540);
    sub_24ABA4900(v154, type metadata accessor for FIRoot.State);
LABEL_32:
    v180 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher;
    v181 = v350;
    *&v350[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher] = v103;
    v182 = [objc_allocWithZone(MEMORY[0x277CC6390]) init];
    *&v181[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_appRegistry] = v182;
    sub_24AB93DD0(v348, aBlock);
    sub_24AB93DD0(v351, v373);
    sub_24AB93DD0(v354, v372);
    v183 = *&v181[v180];
    v184 = type metadata accessor for FileIndexerSpotlightDaemonClient();
    v185 = objc_allocWithZone(v184);
    sub_24AB93DD0(aBlock, &v185[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_indexHandler]);
    sub_24AB93DD0(v373, &v185[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_metadataHandler]);
    sub_24AB93DD0(v372, &v185[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_indexingStateHandler]);
    *&v185[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_eventWatcher] = v183;
    v186 = &v185[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_resetScanningState];
    *v186 = sub_24ABA485C;
    v186[1] = v183;
    v361.receiver = v185;
    v361.super_class = v184;
    swift_retain_n();
    v187 = objc_msgSendSuper2(&v361, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(v372);
    __swift_destroy_boxed_opaque_existential_0Tm(v373);
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
    *&v181[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_spotlightDaemonClient] = v187;
    v188 = type metadata accessor for FIDaemon(0);
    v360.receiver = v181;
    v360.super_class = v188;
    v189 = objc_msgSendSuper2(&v360, sel_init);
    v190 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher;
    v191 = *(v189 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher);
    v192 = swift_allocObject();
    *(v192 + 16) = v189;
    v193 = (v191 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_requestStartScanning);
    *v193 = sub_24ABA4898;
    v193[1] = v192;
    v194 = v189;

    v335 = v190;
    v336 = v189;
    v195 = *(v189 + v190);
    v196 = swift_allocObject();
    *(v196 + 16) = v194;
    v197 = (v195 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_getIndexingState);
    *v197 = sub_24ABA48BC;
    v197[1] = v196;
    v198 = v194;

    v331 = v198;
    sub_24AB9BF78();
    v143 = v347;
    v199 = v322;
    sub_24AB94828(v347, v322, &unk_27EF95DA0, &unk_24ABAF2B0);
    v200 = v339(v199, 1, v356);
    v201 = v323;
    if (v200 == 1)
    {
      sub_24AB7C4A4(v199, &unk_27EF95DA0, &unk_24ABAF2B0);
      v103 = v359;
      v154 = v353;
    }

    else
    {
      v202 = sub_24ABA3D48(v199, v323, type metadata accessor for IndexingState);
      v203 = *(v201 + v345[7]);
      MEMORY[0x28223BE20](v202);
      v303[-2] = v346;

      v204 = v203;
      v205 = v359;
      v206 = sub_24AB9FAD0(sub_24ABA4A78, &v303[-4], v204);
      v103 = v205;
      sub_24ABA4900(v201, type metadata accessor for IndexingState);
      v207 = *(v206 + 16);

      v154 = v353;
      if (v207)
      {
LABEL_42:
        if (qword_27EF95308 != -1)
        {
          swift_once();
        }

        v229 = sub_24ABABD8C();
        v344 = __swift_project_value_buffer(v229, qword_27EF95FD8);
        v230 = sub_24ABABD6C();
        v231 = sub_24ABAC0FC();
        if (os_log_type_enabled(v230, v231))
        {
          v232 = swift_slowAlloc();
          *v232 = 0;
          _os_log_impl(&dword_24AB6F000, v230, v231, "Adding existing app roots", v232, 2u);
          MEMORY[0x24C229EC0](v232, -1, -1);
        }

        v329 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_appRegistry;
        v233 = [*(v331 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_appRegistry) listOfMonitoredApps];
        sub_24AB943C0(0, &unk_27EF95DC8, 0x277CC6388);
        v234 = sub_24ABABFFC();

        if (v234 >> 62)
        {
          v236 = sub_24ABAC3DC();
        }

        else
        {
          v236 = *((v234 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v237 = v352;
        if (!v236)
        {
LABEL_68:

          v295 = *(v329 + v331);
          v66 = v331;
          [v295 setDelegate_];
          v296 = *(v66 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue);
          aBlock[4] = nullsub_1;
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_24AB9B72C;
          aBlock[3] = &block_descriptor_246;
          v297 = _Block_copy(aBlock);
          v298 = v296;
          xpc_set_event_stream_handler("com.apple.fsevents.matching", v298, v297);
          _Block_release(v297);

          v299 = sub_24ABABE8C();
          SpotlightDaemonClientRegister();
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_0Tm(v354);
          __swift_destroy_boxed_opaque_existential_0Tm(v351);
          sub_24AB7C4A4(v143, &unk_27EF95DA0, &unk_24ABAF2B0);
          __swift_destroy_boxed_opaque_existential_0Tm(v348);
          (*(v338 + 8))(v346, v355);

          return v66;
        }

        if (v236 < 1)
        {
          __break(1u);
        }

        v238 = 0;
        v340 = v234 & 0xC000000000000001;
        v337 = (v338 + 8);
        *&v235 = 136315650;
        v332 = v235;
        *&v235 = 138412546;
        v330 = v235;
        v341 = v236;
        v342 = v234;
        while (1)
        {
          v240 = v340 ? MEMORY[0x24C229290](v238, v234) : *(v234 + 8 * v238 + 32);
          v241 = v240;
          sub_24AB94828(v143, v154, &unk_27EF95DA0, &unk_24ABAF2B0);
          if (v339(v154, 1, v356) == 1)
          {
            break;
          }

          v242 = v143;
          sub_24ABA3D48(v154, v237, type metadata accessor for IndexingState);
          v243 = v103;
          v244 = v237;
          v245 = [v241 documentsURL];
          v246 = v349;
          sub_24ABABBCC();

          v247 = *(v244 + v345[7]);
          MEMORY[0x28223BE20](v248);
          v303[-2] = v246;

          v249 = sub_24AB9FAD0(sub_24ABA48E0, &v303[-4], v247);
          sub_24ABA4900(v244, type metadata accessor for IndexingState);
          v250 = *(v249 + 16);

          (*v337)(v246, v355);
          if (!v250)
          {
            v103 = v243;
            goto LABEL_61;
          }

          v237 = v352;
          v154 = v353;
          v103 = v243;
          v143 = v242;
LABEL_52:
          ++v238;
          v234 = v342;
          if (v341 == v238)
          {
            goto LABEL_68;
          }
        }

        sub_24AB7C4A4(v154, &unk_27EF95DA0, &unk_24ABAF2B0);
LABEL_61:
        v350 = v238;
        v251 = v241;
        v252 = sub_24ABABD6C();
        v253 = sub_24ABAC0FC();

        v254 = &selRef_contentsAtPath_;
        if (os_log_type_enabled(v252, v253))
        {
          v255 = swift_slowAlloc();
          v334 = swift_slowAlloc();
          aBlock[0] = v334;
          *v255 = v332;
          v256 = [v251 displayName];
          LODWORD(v333) = v253;
          v257 = v256;
          v258 = sub_24ABABEBC();
          v359 = v103;
          v260 = v259;

          v261 = sub_24AB760CC(v258, v260, aBlock);

          *(v255 + 4) = v261;
          *(v255 + 12) = 2080;
          v262 = [v251 bundleID];
          v263 = sub_24ABABEBC();
          v265 = v264;

          v266 = sub_24AB760CC(v263, v265, aBlock);
          v267 = v359;

          *(v255 + 14) = v266;
          *(v255 + 22) = 2080;
          v268 = [v251 documentsURL];
          v269 = v349;
          sub_24ABABBCC();

          v270 = sub_24ABABBEC();
          v272 = v271;
          (*v337)(v269, v355);
          v273 = v270;
          v103 = v267;
          v254 = &selRef_contentsAtPath_;
          v274 = sub_24AB760CC(v273, v272, aBlock);

          *(v255 + 24) = v274;
          _os_log_impl(&dword_24AB6F000, v252, v333, "Start monitoring app %s (%s) at %s", v255, 0x20u);
          v275 = v334;
          swift_arrayDestroy();
          MEMORY[0x24C229EC0](v275, -1, -1);
          MEMORY[0x24C229EC0](v255, -1, -1);
        }

        v276 = v343;
        v277 = [v251 documentsURL];
        sub_24ABABBCC();

        v278 = [v251 v254[29]];
        v279 = sub_24ABABEBC();
        v281 = v280;

        v282 = &v358[*(v276 + 20)];
        *v282 = v279;
        v282[1] = v281;
        v283 = v358;

        v284 = sub_24AB85700(v283);
        v143 = v347;
        if (v103)
        {

          sub_24ABA4900(v283, type metadata accessor for RootInfo);
          v285 = v251;
          v286 = v103;
          v287 = sub_24ABABD6C();
          v288 = sub_24ABAC11C();

          v289 = os_log_type_enabled(v287, v288);
          v238 = v350;
          if (v289)
          {
            v290 = swift_slowAlloc();
            v291 = swift_slowAlloc();
            *v290 = v330;
            *(v290 + 4) = v285;
            *v291 = v285;
            *(v290 + 12) = 2112;
            v292 = v285;
            v293 = v103;
            v294 = _swift_stdlib_bridgeErrorToNSError();
            *(v290 + 14) = v294;
            v291[1] = v294;
            _os_log_impl(&dword_24AB6F000, v287, v288, "Failed to create listener for app %@: %@", v290, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF953F0, &unk_24ABAD6A0);
            swift_arrayDestroy();
            MEMORY[0x24C229EC0](v291, -1, -1);
            MEMORY[0x24C229EC0](v290, -1, -1);
          }

          else
          {
          }

          v103 = 0;
          v237 = v352;
          v154 = v353;
        }

        else
        {
          v239 = v284;
          sub_24AB8701C(v283);

          sub_24ABA4900(v283, type metadata accessor for RootInfo);
          v237 = v352;
          v154 = v353;
          v238 = v350;
        }

        goto LABEL_52;
      }
    }

    if (qword_27EF95308 == -1)
    {
LABEL_36:
      v208 = sub_24ABABD8C();
      __swift_project_value_buffer(v208, qword_27EF95FD8);
      v209 = v331;
      v210 = sub_24ABABD6C();
      v211 = sub_24ABAC0FC();

      v212 = os_log_type_enabled(v210, v211);
      v359 = v209;
      if (v212)
      {
        v213 = swift_slowAlloc();
        v214 = v103;
        v215 = swift_slowAlloc();
        aBlock[0] = v215;
        *v213 = 136315138;
        v216 = sub_24ABABBEC();
        v218 = sub_24AB760CC(v216, v217, aBlock);

        *(v213 + 4) = v218;
        v143 = v347;
        _os_log_impl(&dword_24AB6F000, v210, v211, "Adding local root at %s", v213, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v215);
        v219 = v215;
        v103 = v214;
        v154 = v353;
        MEMORY[0x24C229EC0](v219, -1, -1);
        v220 = v355;
        MEMORY[0x24C229EC0](v213, -1, -1);

        v221 = v319;
        v223 = v335;
        v222 = v336;
      }

      else
      {

        v221 = v319;
        v223 = v335;
        v222 = v336;
        v220 = v355;
      }

      v66 = *(v222 + v223);
      v224 = v346;
      (v303[0])(v221, v346, v220);
      v225 = (v221 + *(v343 + 20));
      *v225 = 0;
      v225[1] = 0;

      v226 = sub_24AB85700(v221);
      v227 = v351;
      if (v103)
      {
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_0Tm(v354);
        __swift_destroy_boxed_opaque_existential_0Tm(v227);
        sub_24ABA4900(v221, type metadata accessor for RootInfo);
        sub_24AB7C4A4(v143, &unk_27EF95DA0, &unk_24ABAF2B0);
        __swift_destroy_boxed_opaque_existential_0Tm(v348);
        (*(v338 + 8))(v224, v220);

        return v66;
      }

      v228 = v226;
      sub_24AB8701C(v221);

      sub_24ABA4900(v221, type metadata accessor for RootInfo);
      goto LABEL_42;
    }

LABEL_72:
    swift_once();
    goto LABEL_36;
  }

LABEL_19:
  *v144 = FSEventsGetCurrentEventId();
  v149 = v144;
  v150 = v345;
  sub_24AB94828(v148, v149 + v345[5], &unk_27EF95A20, &unk_24ABAF3F0);
  *(v149 + v150[6]) = v145;
  *(v149 + v150[7]) = v145;
  v151 = v333;
  *v333 = 0;
  v152 = *(v332 + 28);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95E20, &qword_24ABAF400);
  bzero(&v151[v152], *(*(v153 - 8) + 64));
  sub_24ABA3D48(v149, &v151[v152], type metadata accessor for FIRoot.State);
  memcpy(&v103[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state], v151, v334);
  v154 = v336;
  v155 = *(v336 + v150[7]);
  v156 = *(v155 + 16);
  if (!v156)
  {
    goto LABEL_31;
  }

  v157 = 0;
  v158 = v314;
  while (1)
  {
    if (v157 >= *(v155 + 16))
    {
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    sub_24ABA3CE0(v155 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v157, v158, type metadata accessor for RootInfo);
    v159 = v359;
    v160 = sub_24AB85700(v158);
    v359 = v159;
    if (v159)
    {
      break;
    }

    ++v157;
    sub_24AB8701C(v158);
    sub_24ABA4900(v158, type metadata accessor for RootInfo);
    if (v156 == v157)
    {
      goto LABEL_31;
    }
  }

LABEL_69:
  v300 = v354;
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(v300);
  __swift_destroy_boxed_opaque_existential_0Tm(v351);
  sub_24ABA4900(v158, type metadata accessor for RootInfo);
  sub_24AB7C4A4(v335, &unk_27EF95A20, &unk_24ABAF3F0);
  __swift_destroy_boxed_opaque_existential_0Tm(v372);
  __swift_destroy_boxed_opaque_existential_0Tm(v373);
  __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
  sub_24AB7C4A4(v337, &qword_27EF95B70, &qword_24ABAF540);
  sub_24AB7C4A4(v347, &unk_27EF95DA0, &unk_24ABAF2B0);
  sub_24ABA4900(v154, type metadata accessor for FIRoot.State);

  __swift_destroy_boxed_opaque_existential_0Tm(v348);
  v301 = *(v338 + 8);
  v302 = v355;
  v301(v346, v355);

  v60 = v350;
  v301(&v350[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_localRoot], v302);
  v301(&v60[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_appLibrariesRoot], v302);

  v66 = 1;
  v63 = v311;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(&v60[v63]);
  __swift_destroy_boxed_opaque_existential_0Tm(&v344[v60]);
  __swift_destroy_boxed_opaque_existential_0Tm(&v60[v340]);
  swift_unknownObjectRelease();
  if (v66)
  {
  }

  type metadata accessor for FIDaemon(0);
  swift_deallocPartialClassInstance();
  return v66;
}

void sub_24AB9A938()
{
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v0 = sub_24ABABD8C();
  __swift_project_value_buffer(v0, qword_27EF95FD8);
  v1 = sub_24ABABD6C();
  v2 = sub_24ABAC0FC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24AB6F000, v1, v2, "Caught SIGTERM, exiting", v3, 2u);
    MEMORY[0x24C229EC0](v3, -1, -1);
  }

  exit(0);
}

uint64_t sub_24AB9AA08(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_24AB9AA4C()
{
  sub_24ABABDFC();
  sub_24ABA3E40(&unk_27EF95DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
  return sub_24ABAC28C();
}

void *sub_24AB9AB24@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v108 = *MEMORY[0x277D85DE8];
  v2 = sub_24ABABA2C();
  v105 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24ABABC0C();
  v91 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v90 - v10);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v90 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v90 - v15;
  result = sub_24AB9E08C();
  v97 = v1;
  if (!v1)
  {
    v19 = result;
    v20 = v18;
    v98 = v4;
    v99 = v2;
    v100 = v14;
    v101 = v8;
    v103 = v11;
    v104 = v5;
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_24ABAC2FC();

    v106 = v19;
    v107 = v20;
    MEMORY[0x24C228EB0](0xD000000000000016, 0x800000024ABB0300);
    sub_24ABABB8C();

    v102 = objc_opt_self();
    v21 = [v102 defaultManager];
    v94 = v16;
    sub_24ABABBEC();
    v22 = sub_24ABABE8C();

    v23 = [v21 fileExistsAtPath_];

    if (v23)
    {
      v24 = v91;
      if (qword_27EF95308 != -1)
      {
        swift_once();
      }

      v25 = sub_24ABABD8C();
      __swift_project_value_buffer(v25, qword_27EF95FD8);
      v26 = v100;
      v27 = v94;
      v28 = v104;
      (*(v24 + 16))(v100, v94, v104);
      v29 = sub_24ABABD6C();
      v30 = sub_24ABAC0FC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v106 = v32;
        *v31 = 136315138;
        v33 = sub_24ABABB9C();
        v34 = [v33 fp_shortDescription];

        v35 = sub_24ABABEBC();
        v37 = v36;

        v27 = v94;
        (*(v91 + 8))(v26, v28);
        v38 = sub_24AB760CC(v35, v37, &v106);

        *(v31 + 4) = v38;
        _os_log_impl(&dword_24AB6F000, v29, v30, "Local root at %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        MEMORY[0x24C229EC0](v32, -1, -1);
        v39 = v31;
        v24 = v91;
        MEMORY[0x24C229EC0](v39, -1, -1);
      }

      else
      {

        (*(v24 + 8))(v26, v28);
      }

      return (*(v24 + 32))(v90, v27, v28);
    }

    else
    {
      LODWORD(v106) = 104;
      sub_24ABA5504(MEMORY[0x277D84F90]);
      sub_24ABA3E40(&qword_27EF95E30, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
      v40 = v98;
      v41 = v99;
      sub_24ABABB3C();
      v42 = sub_24ABABA1C();
      (*(v105 + 8))(v40, v41);
      if (qword_27EF95308 != -1)
      {
        swift_once();
      }

      v98 = sub_24ABABD8C();
      v99 = (v91 + 16);
      v100 = (v91 + 8);
      v105 = 1;
      *&v43 = 134218240;
      v93 = v43;
      *&v43 = 134218754;
      v92 = v43;
      v44 = v103;
      v45 = v104;
      for (i = v94; ; i = v74)
      {
        __swift_project_value_buffer(v98, qword_27EF95FD8);
        v47 = sub_24ABABD6C();
        v48 = sub_24ABAC0FC();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = v93;
          *(v49 + 4) = v105;
          *(v49 + 12) = 2048;
          *(v49 + 14) = 3;
          _os_log_impl(&dword_24AB6F000, v47, v48, "Trying to create local root [%ld/%ld]", v49, 0x16u);
          MEMORY[0x24C229EC0](v49, -1, -1);
        }

        v50 = [v102 defaultManager];
        v51 = sub_24ABABB9C();
        v106 = 0;
        v52 = [v50 createDirectoryAtURL:v51 withIntermediateDirectories:0 attributes:0 error:&v106];

        v53 = v106;
        if (v52)
        {
          break;
        }

        v54 = v106;
        v55 = sub_24ABABB5C();

        swift_willThrow();
        v56 = v101;
        v97 = *v99;
        v97(v101, i, v45);
        v57 = v55;
        v58 = v55;
        v59 = sub_24ABABD6C();
        v60 = sub_24ABAC11C();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v106 = v96;
          *v61 = v92;
          v62 = v105;
          *(v61 + 4) = v105;
          *(v61 + 12) = 2048;
          *(v61 + 14) = 3;
          *(v61 + 22) = 2080;
          v63 = sub_24ABABB9C();
          v64 = [v63 fp_shortDescription];

          v65 = sub_24ABABEBC();
          v67 = v66;

          v68 = *v100;
          (*v100)(v56, v104);
          v69 = sub_24AB760CC(v65, v67, &v106);
          v70 = v104;

          *(v61 + 24) = v69;
          *(v61 + 32) = 2112;
          v71 = _swift_stdlib_bridgeErrorToNSError();
          *(v61 + 34) = v71;
          v72 = v95;
          *v95 = v71;
          _os_log_impl(&dword_24AB6F000, v59, v60, "[%ld/%ld] Failed to create local root at %s: %@", v61, 0x2Au);
          sub_24AB7C4A4(v72, &unk_27EF953F0, &unk_24ABAD6A0);
          MEMORY[0x24C229EC0](v72, -1, -1);
          v73 = v96;
          __swift_destroy_boxed_opaque_existential_0Tm(v96);
          v74 = v94;
          MEMORY[0x24C229EC0](v73, -1, -1);
          MEMORY[0x24C229EC0](v61, -1, -1);
        }

        else
        {
          v74 = i;

          v68 = *v100;
          v70 = v45;
          (*v100)(v56, v45);
          v62 = v105;
        }

        v44 = v103;
        if (v62 == 3)
        {
          type metadata accessor for FIError(0);
          sub_24ABA3E40(&qword_27EF95C48, type metadata accessor for FIError, &unk_24ABAF260);
          v86 = swift_allocError();
          v88 = v87;
          v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95E38, &qword_24ABAF408) + 48);
          v97(v88, v74, v70);
          *&v88[v89] = v55;
          swift_storeEnumTagMultiPayload();
          v97 = v86;
          swift_willThrow();
          return v68(v74, v70);
        }

        v105 = v62 + 1;
        v42 = v55;
        v45 = v70;
      }

      (*v99)(v44, i, v45);
      v75 = v53;
      v76 = sub_24ABABD6C();
      v77 = sub_24ABAC0FC();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v106 = v103;
        *v78 = 134218498;
        *(v78 + 4) = v105;
        *(v78 + 12) = 2048;
        *(v78 + 14) = 3;
        *(v78 + 22) = 2080;
        v79 = sub_24ABABB9C();
        v80 = [v79 fp_shortDescription];

        v81 = sub_24ABABEBC();
        LODWORD(v105) = v77;
        v83 = v82;

        i = v94;
        (*v100)(v44, v104);
        v84 = sub_24AB760CC(v81, v83, &v106);

        *(v78 + 24) = v84;
        _os_log_impl(&dword_24AB6F000, v76, v105, "[%ld/%ld] Created local root at %s", v78, 0x20u);
        v85 = v103;
        __swift_destroy_boxed_opaque_existential_0Tm(v103);
        MEMORY[0x24C229EC0](v85, -1, -1);
        v45 = v104;
        MEMORY[0x24C229EC0](v78, -1, -1);
      }

      else
      {

        (*v100)(v44, v45);
      }

      return (*(v91 + 32))(v90, i, v45);
    }
  }

  return result;
}

uint64_t sub_24AB9B6B8@<X0>(stat *a2@<X1>, int *a3@<X8>)
{
  sub_24ABABBEC();
  v5 = sub_24ABABECC();

  v6 = lstat((v5 + 32), a2);

  *a3 = v6;
  return result;
}

uint64_t sub_24AB9B72C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_24AB9B78C()
{
  v1 = sub_24ABABDFC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24ABABE1C();
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24ABABE2C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v0[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue];
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_24ABABE3C();
  v14 = (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_6;
  }

  v36 = v2;
  v15 = *&v0[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher];
  v16 = MEMORY[0x28223BE20](v14);
  *(&v35 - 2) = v15;
  MEMORY[0x28223BE20](v16);
  *(&v35 - 2) = v15;
  v17 = sub_24ABABD1C();
  v18 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus;
  v19 = *(v15 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus);
  v20 = MEMORY[0x28223BE20](v17);
  *(&v35 - 2) = v15;
  MEMORY[0x28223BE20](v20);
  *(&v35 - 2) = v15;
  v21 = sub_24ABABD1C();
  if (v19 == 2)
  {
    return 0;
  }

  v22 = MEMORY[0x28223BE20](v21);
  *(&v35 - 2) = v15;
  MEMORY[0x28223BE20](v22);
  *(&v35 - 2) = v15;
  v23 = sub_24ABABD1C();
  v24 = *(v15 + v18);
  v25 = MEMORY[0x28223BE20](v23);
  *(&v35 - 2) = v15;
  MEMORY[0x28223BE20](v25);
  *(&v35 - 2) = v15;
  sub_24ABABD1C();
  if (v24 == 3)
  {
    return 0;
  }

  v27 = [*&v0[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_monitor] delegationQueue];
  v28 = swift_allocObject();
  *(v28 + 16) = v0;
  aBlock[4] = sub_24ABA3F70;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB9AA08;
  aBlock[3] = &block_descriptor_102;
  v29 = _Block_copy(aBlock);
  v30 = v0;
  sub_24ABABE0C();
  v38 = MEMORY[0x277D84F90];
  sub_24ABA3E40(&unk_27EF95DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABAC28C();
  MEMORY[0x24C229110](0, v7, v4, v29);
  _Block_release(v29);

  (*(v36 + 8))(v4, v1);
  (*(v37 + 8))(v7, v5);

  if (qword_27EF95308 != -1)
  {
    goto LABEL_10;
  }

LABEL_6:
  v31 = sub_24ABABD8C();
  __swift_project_value_buffer(v31, qword_27EF95FD8);
  v32 = sub_24ABABD6C();
  v33 = sub_24ABAC0FC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_24AB6F000, v32, v33, "All scans completed", v34, 2u);
    MEMORY[0x24C229EC0](v34, -1, -1);
  }

  return 1;
}

void sub_24AB9BE74(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_monitor) setPlannedRescan_];
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v1 = sub_24ABABD8C();
  __swift_project_value_buffer(v1, qword_27EF95FD8);
  oslog = sub_24ABABD6C();
  v2 = sub_24ABAC10C();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24AB6F000, oslog, v2, "no planned rescans", v3, 2u);
    MEMORY[0x24C229EC0](v3, -1, -1);
  }
}

void sub_24AB9BF78()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = [objc_opt_self() sharedScheduler];
  v4 = sub_24ABABE8C();
  v5 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue);
  v7[4] = sub_24ABA3EC0;
  v7[5] = v2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_24AB9D48C;
  v7[3] = &block_descriptor_50;
  v6 = _Block_copy(v7);

  [v3 registerForTaskWithIdentifier:v4 usingQueue:v5 launchHandler:v6];
  _Block_release(v6);
}

char *sub_24AB9C0C8(void *a1, uint64_t a2)
{
  v4 = sub_24ABABDFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24ABABE1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = v14;
    v26 = v7;
    v34 = sub_24ABA3F08;
    v35 = v15;
    v28 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v25 = v4;
    v27 = v5;
    v32 = sub_24AB9AA08;
    v33 = &block_descriptor_59;
    v16 = v9;
    v17 = _Block_copy(&aBlock);

    [a1 setExpirationHandler_];
    _Block_release(v17);
    v24[1] = *&v13[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue];
    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    *(v18 + 24) = a1;
    v34 = sub_24ABA3F50;
    v35 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_24AB9AA08;
    v33 = &block_descriptor_65;
    v19 = _Block_copy(&aBlock);
    v20 = v13;
    v21 = a1;
    sub_24ABABE0C();
    v29 = MEMORY[0x277D84F90];
    sub_24ABA3E40(&unk_27EF95DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
    sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
    v23 = v25;
    v22 = v26;
    sub_24ABAC28C();
    MEMORY[0x24C229110](0, v11, v22, v19);
    _Block_release(v19);
    (*(v27 + 8))(v22, v23);
    (*(v16 + 8))(v11, v28);
  }

  return result;
}

char *sub_24AB9C4BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_24ABABDFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24ABABE1C();
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v10 = sub_24ABABD8C();
  __swift_project_value_buffer(v10, qword_27EF95FD8);
  v11 = sub_24ABABD6C();
  v12 = sub_24ABAC0FC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24AB6F000, v11, v12, "running DAS task expiration handler", v13, 2u);
    MEMORY[0x24C229EC0](v13, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = *&result[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue];
    v15 = result;
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = v15;
    aBlock[4] = sub_24ABA3F68;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AB9AA08;
    aBlock[3] = &block_descriptor_80;
    v17 = _Block_copy(aBlock);

    v19 = v15;
    sub_24ABABE0C();
    v22 = MEMORY[0x277D84F90];
    sub_24ABA3E40(&unk_27EF95DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
    sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
    sub_24ABAC28C();
    MEMORY[0x24C229110](0, v9, v6, v17);
    _Block_release(v17);
    (*(v4 + 8))(v6, v3);
    (*(v21 + 8))(v9, v7);
  }

  return result;
}

void sub_24AB9C878(uint64_t a1, uint64_t a2)
{
  v30[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_24AB9B78C();
    if (v5)
    {
      if (qword_27EF95308 != -1)
      {
        swift_once();
      }

      v6 = sub_24ABABD8C();
      __swift_project_value_buffer(v6, qword_27EF95FD8);
      v7 = sub_24ABABD6C();
      v8 = sub_24ABAC0FC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_24AB6F000, v7, v8, "DAS task expiration handler, all roots completed", v9, 2u);
        MEMORY[0x24C229EC0](v9, -1, -1);
      }

      [v4 setTaskCompleted];
      goto LABEL_20;
    }

    v10 = *(a2 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher);
    v11 = MEMORY[0x28223BE20](v5);
    MEMORY[0x28223BE20](v11);
    v12 = sub_24ABABD1C();
    v13 = *(v10 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus);
    v14 = MEMORY[0x28223BE20](v12);
    MEMORY[0x28223BE20](v14);
    sub_24ABABD1C();
    if (v13 == 2)
    {
      if (qword_27EF95308 != -1)
      {
        swift_once();
      }

      v15 = sub_24ABABD8C();
      __swift_project_value_buffer(v15, qword_27EF95FD8);
      v16 = sub_24ABABD6C();
      v17 = sub_24ABAC0FC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_24AB6F000, v16, v17, "DAS task expiration handler, stopping scans", v18, 2u);
        MEMORY[0x24C229EC0](v18, -1, -1);
      }

      v20 = MEMORY[0x28223BE20](v19);
      MEMORY[0x28223BE20](v20);
      v21 = sub_24ABABD1C();
      *(v10 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__forceScanStop) = 1;
      v22 = MEMORY[0x28223BE20](v21);
      MEMORY[0x28223BE20](v22);
      sub_24ABABD1C();
    }

    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v23 = sub_24ABABD8C();
    __swift_project_value_buffer(v23, qword_27EF95FD8);
    v24 = sub_24ABABD6C();
    v25 = sub_24ABAC0FC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_24AB6F000, v24, v25, "DAS task expiration handler, setting retry", v26, 2u);
      MEMORY[0x24C229EC0](v26, -1, -1);
    }

    v30[0] = 0;
    if ([v4 setTaskExpiredWithRetryAfter:v30 error:0.0])
    {
      v27 = v30[0];
LABEL_20:

      return;
    }

    v28 = v30[0];
    v29 = sub_24ABABB5C();

    swift_willThrow();
  }
}

uint64_t sub_24AB9CE0C(void *a1, void *a2)
{
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v4 = sub_24ABABD8C();
  __swift_project_value_buffer(v4, qword_27EF95FD8);
  v5 = sub_24ABABD6C();
  v6 = sub_24ABAC0FC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24AB6F000, v5, v6, "DAS handler starting scan", v7, 2u);
    MEMORY[0x24C229EC0](v7, -1, -1);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = a1;
  v10 = a2;
  sub_24AB89E4C(nullsub_1, 0, sub_24ABA3F58, v8);
}

uint64_t sub_24AB9CF6C(void *a1, void *a2, void *a3)
{
  v6 = sub_24ABABDFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24ABABE1C();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = a1;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v14 = sub_24ABABD8C();
    __swift_project_value_buffer(v14, qword_27EF95FD8);
    v15 = a1;
    v16 = sub_24ABABD6C();
    v17 = sub_24ABAC11C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29 = v7;
      v19 = v18;
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_24AB6F000, v16, v17, "DAS handler failed to scan: %@", v19, 0xCu);
      sub_24AB7C4A4(v20, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v20, -1, -1);
      v23 = v19;
      v7 = v29;
      MEMORY[0x24C229EC0](v23, -1, -1);
    }

    else
    {
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  aBlock[4] = sub_24ABA3F60;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB9AA08;
  aBlock[3] = &block_descriptor_74;
  v25 = _Block_copy(aBlock);
  v26 = a2;
  v27 = a3;
  sub_24ABABE0C();
  v32 = MEMORY[0x277D84F90];
  sub_24ABA3E40(&unk_27EF95DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABAC28C();
  MEMORY[0x24C229110](0, v12, v9, v25);
  _Block_release(v25);
  (*(v7 + 8))(v9, v6);
  (*(v30 + 8))(v12, v31);
}

uint64_t sub_24AB9D378(uint64_t a1, void *a2)
{
  result = sub_24AB9B78C();
  if (result)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v4 = sub_24ABABD8C();
    __swift_project_value_buffer(v4, qword_27EF95FD8);
    v5 = sub_24ABABD6C();
    v6 = sub_24ABAC0FC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24AB6F000, v5, v6, "DAS handler: all roots completed", v7, 2u);
      MEMORY[0x24C229EC0](v7, -1, -1);
    }

    return [a2 setTaskCompleted];
  }

  return result;
}

void sub_24AB9D48C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_24AB9D4F4()
{
  v1 = sub_24ABABDFC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24ABABE1C();
  v5 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_24ABA3E20;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB9AA08;
  aBlock[3] = &block_descriptor_0;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_24ABABE0C();
  v14 = MEMORY[0x277D84F90];
  sub_24ABA3E40(&unk_27EF95DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABAC28C();
  MEMORY[0x24C229110](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

void sub_24AB9D7B0(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = [v1 sharedScheduler];
  v3 = sub_24ABABE8C();
  v4 = [v2 taskRequestForIdentifier_];

  if (v4)
  {

    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v5 = sub_24ABABD8C();
    __swift_project_value_buffer(v5, qword_27EF95FD8);
    oslog = sub_24ABABD6C();
    v6 = sub_24ABAC11C();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24AB6F000, oslog, v6, "Found outstanding request to run scanning task, bailing", v7, 2u);
      MEMORY[0x24C229EC0](v7, -1, -1);
    }
  }

  else
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v8 = sub_24ABABD8C();
    __swift_project_value_buffer(v8, qword_27EF95FD8);
    v9 = sub_24ABABD6C();
    v10 = sub_24ABAC0FC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24AB6F000, v9, v10, "submitted DAS task request", v11, 2u);
      MEMORY[0x24C229EC0](v11, -1, -1);
    }

    v12 = objc_allocWithZone(MEMORY[0x277CF07C8]);
    v13 = sub_24ABABE8C();
    v14 = [v12 initWithIdentifier_];

    v15 = v14;
    [v15 setPriority_];
    [v15 setScheduleAfter_];
    [v15 setTrySchedulingBefore_];
    [v15 setRequiresProtectionClass_];

    v16 = [v1 sharedScheduler];
    v27[0] = 0;
    LODWORD(v13) = [v16 submitTaskRequest:v15 error:v27];

    if (v13)
    {
      v17 = v27[0];
    }

    else
    {
      v18 = v27[0];
      v19 = sub_24ABABB5C();

      swift_willThrow();
      v20 = v19;
      v21 = sub_24ABABD6C();
      v22 = sub_24ABAC11C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        swift_getErrorValue();
        v25 = sub_24ABAC5CC();
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&dword_24AB6F000, v21, v22, "Failed to submit task request: %@", v23, 0xCu);
        sub_24AB7C4A4(v24, &unk_27EF953F0, &unk_24ABAD6A0);
        MEMORY[0x24C229EC0](v24, -1, -1);
        MEMORY[0x24C229EC0](v23, -1, -1);
      }

      else
      {
      }
    }
  }
}

id FIDaemon.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FIDaemon.init()()
{
  v0 = sub_24ABABC0C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - v5;
  sub_24AB9E08C();
  sub_24ABABB8C();

  (*(v1 + 16))(v4, v6, v0);
  v7 = type metadata accessor for DiskIndexingStateHandler(0);
  swift_allocObject();
  v8 = sub_24AB7C7D4(v4);
  v9 = type metadata accessor for CoreSpotlightIndexHandler();
  v10 = swift_allocObject();

  v11 = sub_24ABA294C(0xD000000000000023, 0x800000024ABAF7E0, 0, v8, v10);
  v20[3] = &type metadata for FileHandler;
  v20[4] = &off_285E1BE28;
  v19[3] = v9;
  v19[4] = &off_285E1D688;
  v19[0] = v11;
  v18[3] = v7;
  v18[4] = &off_285E1C278;
  v18[0] = v8;
  v12 = objc_allocWithZone(type metadata accessor for FIDaemon(0));

  v13 = sub_24AB97F9C(v20, v19, v18);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  sub_24AB943C0(0, &unk_27EF95C58, 0x277CCA9A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = v13;
  v16 = [ObjCClassFromMetadata defaultCenter];
  if (qword_27EF95310 != -1)
  {
    swift_once();
  }

  [v16 postNotificationName:qword_27EF96060 object:0];

  (*(v1 + 8))(v6, v0);
  return v15;
}

uint64_t sub_24AB9E08C()
{
  if (container_query_create())
  {
    container_query_set_class();
    xpc_string_create("group.com.apple.FileProvider.LocalStorage");
    container_query_set_group_identifiers();
    swift_unknownObjectRelease();
    container_query_set_transient();
    container_query_operation_set_flags();
    container_query_set_persona_unique_string();
    if (container_query_get_single_result() && container_get_path())
    {
      v1 = container_copy_sandbox_token();
      v2 = sandbox_extension_consume();
      if (v1 && (v0 = v2, v2 < 0))
      {
        type metadata accessor for FIError(0);
        sub_24ABA3E40(&qword_27EF95C48, type metadata accessor for FIError, &unk_24ABAF260);
        swift_allocError();
        v4 = v3;
        *v3 = MEMORY[0x24C228D50]();
        *(v4 + 1) = v0;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        MEMORY[0x24C229EC0](v1, -1, -1);
      }

      else
      {
        v0 = sub_24ABABF3C();
        if (v1)
        {
          MEMORY[0x24C229EC0](v1, -1, -1);
        }
      }
    }

    else
    {
      container_query_get_last_error();
      v5 = container_error_copy_unlocalized_description();
      if (v5)
      {
        v6 = v5;
        v0 = sub_24ABABF3C();
        v8 = v7;
        free(v6);
      }

      else
      {
        v8 = 0xEF3E726F72726520;
        v0 = 0x6E776F6E6B6E753CLL;
      }

      type metadata accessor for FIError(0);
      sub_24ABA3E40(&qword_27EF95C48, type metadata accessor for FIError, &unk_24ABAF260);
      swift_allocError();
      *v9 = v0;
      v9[1] = v8;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    container_query_free();
  }

  else
  {
    type metadata accessor for FIError(0);
    sub_24ABA3E40(&qword_27EF95C48, type metadata accessor for FIError, &unk_24ABAF260);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v0;
}

void sub_24AB9E388(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(a1 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher) + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
  os_unfair_lock_lock(v3);
  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28);
  v5 = *&v4[*(type metadata accessor for FIRoot.State(0) + 28)];

  os_unfair_lock_unlock(v3);
  *a2 = v5;
}

void sub_24AB9E41C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (*(a1 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher) + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
  os_unfair_lock_lock(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0);
  sub_24AB9E4CC(v8 + *(v9 + 28), a2, a3, a4);
  os_unfair_lock_unlock(v8);
  if (v4)
  {
    __break(1u);
  }
}

uint64_t sub_24AB9E4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = type metadata accessor for RootInfo(0);
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for FIRoot.State(0);
  v13 = *(a1 + *(result + 28));
  v14 = *(v13 + 16);
  if (v14)
  {
    v19[0] = a4;
    v19[1] = v4;
    v15 = 0;
    while (v15 < *(v13 + 16))
    {
      sub_24ABA3CE0(v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v11, type metadata accessor for RootInfo);
      if (sub_24ABABBEC() == a2 && v16 == a3)
      {

LABEL_11:
        a4 = v19[0];
        sub_24ABA3D48(v11, v19[0], type metadata accessor for RootInfo);
        v18 = 0;
        return (*(v9 + 56))(a4, v18, 1, v20);
      }

      v17 = sub_24ABAC58C();

      if (v17)
      {
        goto LABEL_11;
      }

      ++v15;
      result = sub_24ABA4900(v11, type metadata accessor for RootInfo);
      if (v14 == v15)
      {
        v18 = 1;
        a4 = v19[0];
        return (*(v9 + 56))(a4, v18, 1, v20);
      }
    }

    __break(1u);
  }

  else
  {
    v18 = 1;
    return (*(v9 + 56))(a4, v18, 1, v20);
  }

  return result;
}

void sub_24AB9E6CC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95DA0, &unk_24ABAF2B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B68, &unk_24ABAEDD0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v22 - v9);
  v11 = swift_projectBox();
  sub_24AB94828(a1, v10, &qword_27EF95B68, &unk_24ABAEDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v10;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v13 = sub_24ABABD8C();
    __swift_project_value_buffer(v13, qword_27EF95FD8);
    v14 = v12;
    v15 = sub_24ABABD6C();
    v16 = sub_24ABAC11C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v12;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_24AB6F000, v15, v16, "failed to retrieve persisted indexing state: %@", v17, 0xCu);
      sub_24AB7C4A4(v18, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v18, -1, -1);
      MEMORY[0x24C229EC0](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_24ABA3D48(v10, v7, type metadata accessor for IndexingState);
    v21 = type metadata accessor for IndexingState(0);
    (*(*(v21 - 8) + 56))(v7, 0, 1, v21);
    swift_beginAccess();
    sub_24ABA3DB0(v7, v11);
  }

  dispatch_group_leave(a3);
}

uint64_t sub_24AB9E9B4@<X0>(char *a1@<X8>)
{
  v45 = a1;
  v42 = type metadata accessor for FIRoot.State(0);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v37 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B70, &qword_24ABAF540);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v41 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95DA0, &unk_24ABAF2B0);
  MEMORY[0x28223BE20](v7);
  v44 = &v37 - v8;
  v38 = v1;
  v9 = (v1 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexHandler);
  v10 = swift_allocBox();
  v12 = v11;
  v13 = type metadata accessor for IndexingState(0);
  v43 = *(v13 - 8);
  (*(v43 + 56))(v12, 1, 1, v13);
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  v16 = v9[3];
  v15 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 24) = v14;
  v18 = *(v15 + 32);

  v19 = v14;
  v20 = v16;
  v21 = v13;
  v18(sub_24ABA3CD8, v17, v20, v15);
  v22 = v44;

  sub_24ABAC12C();

  v23 = v43;
  swift_beginAccess();
  sub_24AB94828(v12, v22, &unk_27EF95DA0, &unk_24ABAF2B0);

  v24 = *(v23 + 48);
  if (v24(v22, 1, v13) != 1)
  {
    return sub_24ABA3D48(v22, v45, type metadata accessor for IndexingState);
  }

  v25 = v45;
  v26 = (*(v38 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher) + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
  os_unfair_lock_lock(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0);
  v28 = v41;
  sub_24ABA3CE0(v26 + *(v27 + 28), v41, type metadata accessor for FIRoot.State);
  os_unfair_lock_unlock(v26);
  v29 = v40;
  v30 = v42;
  (*(v40 + 56))(v28, 0, 1, v42);
  v31 = v39;
  sub_24AB94828(v28, v39, &qword_27EF95B70, &qword_24ABAF540);
  if ((*(v29 + 48))(v31, 1, v30) == 1)
  {
    sub_24AB7C4A4(v31, &qword_27EF95B70, &qword_24ABAF540);
    v32 = v30[5];
    v33 = sub_24ABABD0C();
    (*(*(v33 - 8) + 56))(&v25[v32], 1, 1, v33);
    sub_24AB7C4A4(v28, &qword_27EF95B70, &qword_24ABAF540);
    *v25 = -1;
    v34 = MEMORY[0x277D84F90];
    *&v25[v30[6]] = MEMORY[0x277D84F90];
    *&v25[v30[7]] = v34;
  }

  else
  {
    sub_24AB7C4A4(v28, &qword_27EF95B70, &qword_24ABAF540);
    v36 = v37;
    sub_24ABA3D48(v31, v37, type metadata accessor for FIRoot.State);
    sub_24ABA3D48(v36, v25, type metadata accessor for FIRoot.State);
  }

  result = (v24)(v22, 1, v21);
  if (result != 1)
  {
    return sub_24AB7C4A4(v22, &unk_27EF95DA0, &unk_24ABAF2B0);
  }

  return result;
}

void sub_24AB9EF18(unint64_t a1, unint64_t a2)
{
  v99 = sub_24ABABC0C();
  v4 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RootInfo(0);
  v109 = *(v6 - 8);
  v110 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v108 = &v90 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v90 - v13);
  MEMORY[0x28223BE20](v12);
  v113 = &v90 - v15;
  if (a1 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24ABAC3DC())
  {
    v96 = *(a2 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher);
    v17 = (v96 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
    v100 = i;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28);
    v19 = type metadata accessor for FIRoot.State(0);
    a2 = 0;
    v107 = 0;
    v105 = v18 + *(v19 + 28);
    v103 = a1 & 0xC000000000000001;
    v93 = a1 & 0xFFFFFFFFFFFFFF8;
    v92 = a1 + 32;
    v20 = MEMORY[0x277D84F90];
    v97 = v4 + 1;
    *&v21 = 136315650;
    v91 = v21;
    v22 = &selRef_contentsAtPath_;
    *&v21 = 138412546;
    v90 = v21;
    v101 = a1;
    v102 = v9;
    v94 = v14;
    v104 = v17;
    while (!v103)
    {
      if (a2 >= *(v93 + 16))
      {
        goto LABEL_51;
      }

      v112 = *(v92 + 8 * a2);
      v23 = __OFADD__(a2++, 1);
      if (v23)
      {
        goto LABEL_50;
      }

LABEL_10:
      v106 = a2;
      v115 = v20;
      os_unfair_lock_lock(v17);

      sub_24AB950BC(v24);
      os_unfair_lock_unlock(v17);
      v25 = v115;
      isa = v115[2].isa;
      v4 = v20;
      if (isa)
      {
        for (j = 0; isa != j; ++j)
        {
          if (j >= v25[2])
          {
            __break(1u);
            goto LABEL_50;
          }

          v9 = ((*(v109 + 80) + 32) & ~*(v109 + 80));
          v27 = *(v109 + 72);
          v14 = v25;
          v28 = v113;
          sub_24ABA3CE0(&v9[v25 + v27 * j], v113, type metadata accessor for RootInfo);
          v29 = (v28 + *(v110 + 20));
          a2 = *v29;
          a1 = v29[1];
          v30 = [v112 v22[29]];
          v31 = sub_24ABABEBC();
          v33 = v32;

          if (a1)
          {
            if (a2 == v31 && a1 == v33)
            {

              v22 = &selRef_contentsAtPath_;
LABEL_24:
              sub_24ABA3D48(v113, v108, type metadata accessor for RootInfo);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v114 = v4;
              v25 = v14;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_24ABA1940(0, v4[2].isa + 1, 1);
                v4 = v114;
              }

              a1 = v4[2].isa;
              v36 = v4[3].isa;
              a2 = a1 + 1;
              if (a1 >= v36 >> 1)
              {
                sub_24ABA1940((v36 > 1), a1 + 1, 1);
                v4 = v114;
              }

              v4[2].isa = a2;
              sub_24ABA3D48(v108, &v9[v4 + a1 * v27], type metadata accessor for RootInfo);
              continue;
            }

            a2 = sub_24ABAC58C();

            v22 = &selRef_contentsAtPath_;
            if (a2)
            {
              goto LABEL_24;
            }
          }

          else
          {

            v22 = &selRef_contentsAtPath_;
          }

          sub_24ABA4900(v113, type metadata accessor for RootInfo);
          v25 = v14;
        }
      }

      if (!v4[2].isa)
      {

        v9 = v102;
        v39 = v112;
LABEL_35:
        if (qword_27EF95308 != -1)
        {
          swift_once();
        }

        v47 = sub_24ABABD8C();
        v48 = __swift_project_value_buffer(v47, qword_27EF95FD8);
        v49 = v39;
        v50 = sub_24ABABD6C();
        v51 = sub_24ABAC0FC();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v112 = v25;
          v53 = v52;
          v95 = swift_slowAlloc();
          v114 = v95;
          *v53 = v91;
          v54 = [v49 displayName];
          v55 = sub_24ABABEBC();
          isa = v48;
          v56 = v55;
          v58 = v57;

          v59 = sub_24AB760CC(v56, v58, &v114);

          *(v53 + 4) = v59;
          *(v53 + 12) = 2080;
          v60 = [v49 bundleID];
          v61 = sub_24ABABEBC();
          v63 = v62;

          v64 = sub_24AB760CC(v61, v63, &v114);
          v22 = &selRef_contentsAtPath_;

          *(v53 + 14) = v64;
          *(v53 + 22) = 2080;
          v14 = &selRef_contentsAtPath_;
          v65 = [v49 documentsURL];
          v66 = v98;
          sub_24ABABBCC();

          v67 = sub_24ABABBEC();
          v69 = v68;
          (v97->isa)(v66, v99);
          v70 = sub_24AB760CC(v67, v69, &v114);

          *(v53 + 24) = v70;
          _os_log_impl(&dword_24AB6F000, v50, v51, "Start monitoring app %s (%s) at %s", v53, 0x20u);
          v71 = v95;
          swift_arrayDestroy();
          MEMORY[0x24C229EC0](v71, -1, -1);
          MEMORY[0x24C229EC0](v53, -1, -1);
        }

        else
        {

          v14 = &selRef_contentsAtPath_;
        }

        v72 = v107;
        v73 = [v49 documentsURL];
        sub_24ABABBCC();

        v74 = [v49 v22[29]];
        v75 = sub_24ABABEBC();
        v77 = v76;

        v78 = &v9[*(v110 + 20)];
        *v78 = v75;
        v78[1] = v77;
        v4 = v96;
        v79 = sub_24AB85700(v9);
        v80 = v72;
        if (v72)
        {
          sub_24ABA4900(v9, type metadata accessor for RootInfo);
          v81 = v49;
          v82 = v80;
          v4 = sub_24ABABD6C();
          v83 = sub_24ABAC11C();

          if (os_log_type_enabled(v4, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            *v84 = v90;
            *(v84 + 4) = v81;
            *v85 = v81;
            *(v84 + 12) = 2112;
            v86 = v81;
            v87 = v80;
            v88 = _swift_stdlib_bridgeErrorToNSError();
            *(v84 + 14) = v88;
            v85[1] = v88;
            _os_log_impl(&dword_24AB6F000, v4, v83, "Failed to create listener for app %@: %@", v84, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF953F0, &unk_24ABAD6A0);
            swift_arrayDestroy();
            MEMORY[0x24C229EC0](v85, -1, -1);
            MEMORY[0x24C229EC0](v84, -1, -1);
          }

          else
          {
          }

          v107 = 0;
        }

        else
        {
          v107 = 0;
          v89 = v79;
          sub_24AB8701C(v9);

          sub_24ABA4900(v9, type metadata accessor for RootInfo);
        }

        a1 = v101;
        v17 = v104;
        goto LABEL_47;
      }

      v14 = v94;
      v37 = sub_24ABA3CE0(v4 + ((*(v109 + 80) + 32) & ~*(v109 + 80)), v94, type metadata accessor for RootInfo);
      v38 = MEMORY[0x28223BE20](v37);
      *(&v90 - 2) = v4;
      MEMORY[0x28223BE20](v38);
      v39 = v112;
      *(&v90 - 2) = v112;
      sub_24ABABD1C();

      v40 = sub_24ABABB9C();
      v41 = [v39 documentsURL];
      v42 = v98;
      sub_24ABABBCC();

      v4 = sub_24ABABB9C();
      (v97->isa)(v42, v99);
      v43 = [v40 fp:v4 relationshipToItemAtURL:?];

      v9 = v102;
      v17 = v104;
      if (v43 != 1)
      {
        os_unfair_lock_lock(v104);
        MEMORY[0x28223BE20](v44);
        *(&v90 - 2) = v14;
        a1 = v105;
        v4 = (v17 + v105);
        a2 = v107;
        v45 = sub_24ABA1D7C(sub_24ABA4A5C, (&v90 - 2));
        v107 = a2;
        v46 = *(*(&v17->_os_unfair_lock_opaque + a1) + 16);
        if (v46 < v45)
        {
          goto LABEL_52;
        }

        sub_24ABA2430(v45, v46);
        os_unfair_lock_unlock(v17);
        sub_24ABA4900(v14, type metadata accessor for RootInfo);
        goto LABEL_35;
      }

      sub_24ABA4900(v14, type metadata accessor for RootInfo);
      a1 = v101;
LABEL_47:
      a2 = v106;
      v20 = MEMORY[0x277D84F90];
      if (v106 == v100)
      {
        return;
      }
    }

    v112 = MEMORY[0x24C229290](a2, a1);
    v23 = __OFADD__(a2++, 1);
    if (!v23)
    {
      goto LABEL_10;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }
}

uint64_t sub_24AB9FAD0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for RootInfo(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_24ABA3CE0(a3 + v15 + v16 * v13, v12, type metadata accessor for RootInfo);
      v17 = a1(v12);
      if (v3)
      {
        sub_24ABA4900(v12, type metadata accessor for RootInfo);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_24ABA3D48(v12, v24, type metadata accessor for RootInfo);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24ABA1940(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_24ABA1940((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_24ABA3D48(v24, v14 + v15 + v20 * v16, type metadata accessor for RootInfo);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_24ABA4900(v12, type metadata accessor for RootInfo);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

unint64_t sub_24AB9FD5C(void *a1)
{
  sub_24ABAC2FC();

  v2 = [a1 bundleID];
  v3 = sub_24ABABEBC();
  v5 = v4;

  MEMORY[0x24C228EB0](v3, v5);

  return 0xD000000000000043;
}

uint64_t sub_24AB9FEBC(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v67 = a2;
  v64 = type metadata accessor for RootInfo(0);
  v5 = *(v64 - 8);
  v6 = MEMORY[0x28223BE20](v64);
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v65 = &v58 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v62 = &v58 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - v12;
  v14 = sub_24ABABE2C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v19 = v18;
  v20 = sub_24ABABE3C();
  (*(v15 + 8))(v17, v14);
  if ((v20 & 1) == 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_22;
  }

  v21 = MEMORY[0x277D84F90];
  v70 = MEMORY[0x277D84F90];
  v58 = v2;
  v22 = (*(v2 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher) + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
  os_unfair_lock_lock(v22);
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28);
  v59 = v23 + *(type metadata accessor for FIRoot.State(0) + 28);

  sub_24AB950BC(v24);
  v60 = v22;
  os_unfair_lock_unlock(v22);
  v25 = v70;
  v4 = *(v70 + 16);
  v63 = v70;
  if (v4)
  {
    v26 = 0;
    v27 = v64;
    while (v26 < *(v25 + 16))
    {
      v3 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v28 = *(v5 + 72);
      sub_24ABA3CE0(v25 + v3 + v28 * v26, v13, type metadata accessor for RootInfo);
      v29 = &v13[*(v27 + 20)];
      v30 = *(v29 + 1);
      if (v30 && (*v29 == v66 ? (v31 = v30 == v67) : (v31 = 0), v31 || (sub_24ABAC58C() & 1) != 0))
      {
        sub_24ABA3D48(v13, v65, type metadata accessor for RootInfo);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24ABA1940(0, *(v21 + 16) + 1, 1);
          v25 = v63;
          v21 = v68;
        }

        v20 = *(v21 + 16);
        v33 = *(v21 + 24);
        if (v20 >= v33 >> 1)
        {
          sub_24ABA1940((v33 > 1), v20 + 1, 1);
          v25 = v63;
          v21 = v68;
        }

        *(v21 + 16) = v20 + 1;
        sub_24ABA3D48(v65, v21 + v3 + v20 * v28, type metadata accessor for RootInfo);
        v27 = v64;
      }

      else
      {
        sub_24ABA4900(v13, type metadata accessor for RootInfo);
      }

      if (v4 == ++v26)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v27 = v64;
LABEL_19:
  if (!*(v21 + 16))
  {
  }

  v20 = v62;
  v34 = sub_24ABA3CE0(v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v62, type metadata accessor for RootInfo);
  v35 = (v20 + *(v27 + 20));
  v3 = v35[1];
  if (!v3)
  {

LABEL_29:

    return sub_24ABA4900(v20, type metadata accessor for RootInfo);
  }

  v4 = *v35;
  v36 = MEMORY[0x28223BE20](v34);
  *(&v58 - 2) = v21;
  MEMORY[0x28223BE20](v36);
  *(&v58 - 2) = v4;
  *(&v58 - 1) = v3;

  sub_24ABABD1C();

  if (qword_27EF95308 != -1)
  {
    goto LABEL_32;
  }

LABEL_22:
  v37 = sub_24ABABD8C();
  __swift_project_value_buffer(v37, qword_27EF95FD8);
  v38 = v61;
  sub_24ABA3CE0(v20, v61, type metadata accessor for RootInfo);

  v39 = sub_24ABABD6C();
  v40 = sub_24ABAC0FC();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v68 = v42;
    *v41 = 136315394;
    *(v41 + 4) = sub_24AB760CC(v4, v3, &v68);
    *(v41 + 12) = 2080;
    v43 = sub_24ABABBEC();
    v45 = v44;
    sub_24ABA4900(v38, type metadata accessor for RootInfo);
    v46 = sub_24AB760CC(v43, v45, &v68);

    *(v41 + 14) = v46;
    _os_log_impl(&dword_24AB6F000, v39, v40, "Stopped monitoring app %s at %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C229EC0](v42, -1, -1);
    MEMORY[0x24C229EC0](v41, -1, -1);
  }

  else
  {

    sub_24ABA4900(v38, type metadata accessor for RootInfo);
  }

  v49 = v59;
  v48 = v60;
  os_unfair_lock_lock(v60);
  MEMORY[0x28223BE20](v50);
  *(&v58 - 2) = v20;
  result = sub_24ABA1D7C(sub_24ABA3C14, (&v58 - 4));
  v51 = *(*(&v48->_os_unfair_lock_opaque + v49) + 16);
  if (v51 >= result)
  {
    sub_24ABA2430(result, v51);
    os_unfair_lock_unlock(v48);
    v68 = sub_24ABABEBC();
    v69 = v52;
    MEMORY[0x24C228EB0](46, 0xE100000000000000);
    MEMORY[0x24C228EB0](v4, v3);
    v53 = v68;
    v54 = v69;
    v55 = *(v58 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexHandler + 24);
    v56 = *(v58 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexHandler + 32);
    __swift_project_boxed_opaque_existential_1((v58 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexHandler), v55);
    v57 = swift_allocObject();
    *(v57 + 16) = v4;
    *(v57 + 24) = v3;
    (*(v56 + 24))(v53, v54, sub_24ABA3C6C, v57, v55, v56);

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

unint64_t sub_24ABA06E4(uint64_t a1, uint64_t a2)
{
  sub_24ABAC2FC();

  MEMORY[0x24C228EB0](a1, a2);
  return 0xD00000000000003ALL;
}

void sub_24ABA0764(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v6 = a1;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v7 = sub_24ABABD8C();
    __swift_project_value_buffer(v7, qword_27EF95FD8);
    v8 = a1;

    v9 = sub_24ABABD6C();
    v10 = sub_24ABAC11C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_24AB760CC(a2, a3, &v16);
      *(v11 + 12) = 2112;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v15;
      *v12 = v15;
      _os_log_impl(&dword_24AB6F000, v9, v10, "%s | failed to remove items from index: %@", v11, 0x16u);
      sub_24AB7C4A4(v12, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x24C229EC0](v13, -1, -1);
      MEMORY[0x24C229EC0](v11, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_24ABA09A4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      sub_24AB9FEBC(v3, v4);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

id sub_24ABA0AC0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void ignoreVFSPermissions(logger:)()
{
  if (setiopolicy_np(7, 0, 1) < 0)
  {
    oslog = sub_24ABABD6C();
    v0 = sub_24ABAC11C();
    if (os_log_type_enabled(oslog, v0))
    {
      v1 = swift_slowAlloc();
      *v1 = 67109120;
      *(v1 + 4) = MEMORY[0x24C228D50]();
      _os_log_impl(&dword_24AB6F000, oslog, v0, "failed to set VFS ignore permissions i/o policy: %{darwin.errno}d", v1, 8u);
      MEMORY[0x24C229EC0](v1, -1, -1);
    }
  }
}

uint64_t sub_24ABA0D60(uint64_t a1)
{
  sub_24ABAC2FC();
  MEMORY[0x24C228EB0](0xD000000000000019, 0x800000024ABB03B0);
  sub_24ABAC3AC();
  return 0;
}

uint64_t sub_24ABA0E10(uint64_t a1)
{
  sub_24ABAC2FC();
  MEMORY[0x24C228EB0](0xD000000000000019, 0x800000024ABB0390);
  sub_24ABAC3AC();
  return 0;
}

uint64_t sub_24ABA0EA0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_24ABA0EEC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_24AB94E38;

  return v6();
}

uint64_t sub_24ABA0FD4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_24AB945B8;

  return v7();
}

uint64_t sub_24ABA10BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_24AB94828(a3, v23 - v10, &qword_27EF95BC0, &qword_24ABAEDF0);
  v12 = sub_24ABAC09C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24AB7C4A4(v11, &qword_27EF95BC0, &qword_24ABAEDF0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_24ABAC08C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_24ABAC04C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_24ABABECC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_24AB7C4A4(a3, &qword_27EF95BC0, &qword_24ABAEDF0);

    return v21;
  }

LABEL_8:
  sub_24AB7C4A4(a3, &qword_27EF95BC0, &qword_24ABAEDF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

char *sub_24ABA1408(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B20, &unk_24ABAED90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_24ABA1534(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_24ABA1710(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95DE0, &qword_24ABAF3E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24ABA182C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_24ABA184C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_24ABA185C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24ABA188C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_24ABA18BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ABA1984(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24ABA18DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ABA1BA0(a1, a2, a3, *v3, &qword_27EF95540, &qword_24ABAD750, MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

char *sub_24ABA1920(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ABA1A90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24ABA1940(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ABA1BA0(a1, a2, a3, *v3, &unk_27EF95D90, &unk_24ABAF2A0, type metadata accessor for RootInfo);
  *v3 = result;
  return result;
}

char *sub_24ABA1984(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95E48, &qword_24ABAF4B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24ABA1A90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B10, &unk_24ABAED80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24ABA1BA0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_24ABA1D7C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for RootInfo(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = *v2;
  result = sub_24ABA20AC(a1, a2, *v2);
  if (!v3)
  {
    v44 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v36 = v13;
    v37 = v10;
    v35 = v2;
    v43 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v43;
      }

      v38 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v42 = v24 * v19;
        v25 = v39;
        sub_24ABA3CE0(v23 + v24 * v19, v39, type metadata accessor for RootInfo);
        v26 = a2;
        v27 = v44;
        v28 = v40(v25);
        result = sub_24ABA4900(v25, type metadata accessor for RootInfo);
        v44 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          a2 = v26;
          v7 = v38;
          v16 = v22;
        }

        else
        {
          v29 = v43;
          if (v19 == v43)
          {
            a2 = v26;
            v7 = v38;
            v16 = v22;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v43 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v43;
            result = sub_24ABA3CE0(v23 + v24 * v43, v36, type metadata accessor for RootInfo);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            v32 = v42;
            sub_24ABA3CE0(v23 + v42, v37, type metadata accessor for RootInfo);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_24ABA229C(v22);
            }

            a2 = v26;
            v33 = v16 + v41;
            result = sub_24ABA3C74(v37, v16 + v41 + v31);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = sub_24ABA3C74(v36, v33 + v32);
            *v35 = v16;
            v7 = v38;
            v29 = v43;
          }

          v43 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v43;
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

    __break(1u);
  }

  return result;
}

uint64_t sub_24ABA20AC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for RootInfo(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_24ABA2198(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_24ABAC3DC();
LABEL_9:
  result = sub_24ABAC31C();
  *v2 = result;
  return result;
}

uint64_t sub_24ABA2238(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_24ABAC3DC();
  }

  return sub_24ABAC31C();
}

unint64_t sub_24ABA22E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for RootInfo(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_24ABA2430(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_24ABA1534(isUniquelyReferenced_nonNull_native, v10, 1, v4, &unk_27EF95D90, &unk_24ABAF2A0, type metadata accessor for RootInfo);
    *v2 = v4;
  }

  result = sub_24ABA22E8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_24ABA2514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for TreeLister(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_24ABAC3DC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_24ABAC3DC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_24ABA2614(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_24ABAC3DC();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_24ABAC3DC();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_24ABA2198(result, 1);

  return sub_24ABA2514(v5, v3, 0);
}

uint64_t sub_24ABA26EC(void *a1)
{
  v3 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  [a1 resume];
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v4 = sub_24ABABD8C();
  __swift_project_value_buffer(v4, qword_27EF95FD8);
  v5 = a1;
  v6 = sub_24ABABD6C();
  v7 = sub_24ABAC0FC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_24AB6F000, v6, v7, "Accepted %@", v8, 0xCu);
    sub_24AB7C4A4(v9, &unk_27EF953F0, &unk_24ABAD6A0);
    MEMORY[0x24C229EC0](v9, -1, -1);
    MEMORY[0x24C229EC0](v8, -1, -1);
  }

  return 1;
}

_OWORD *sub_24ABA28B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_24ABA294C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = sub_24ABAC14C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_24ABABE1C();
  MEMORY[0x28223BE20](v10 - 8);
  v16 = type metadata accessor for DiskIndexingStateHandler(0);
  v17 = &off_285E1C278;
  *&v15 = a4;
  a5[4] = a1;
  a5[5] = a2;
  sub_24AB943C0(0, &unk_27EF95E00, 0x277D85C78);

  sub_24ABABE0C();
  sub_24ABA3E40(&unk_27EF95BA0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95E10, &qword_24ABAEDE8);
  sub_24AB94408(&qword_27EF95BB0, &unk_27EF95E10, &qword_24ABAEDE8);
  sub_24ABAC28C();
  v11 = sub_24ABAC13C();
  v12 = a3;
  a5[2] = v11;
  if (!a3)
  {
    v12 = sub_24ABA9E7C(a1, a2);
  }

  a5[3] = v12;
  sub_24AB93E6C(&v15, (a5 + 6));
  return a5;
}

uint64_t sub_24ABA2B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24ABABDFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24ABABE1C();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v4[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v4;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB9AA08;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  v17 = v4;
  sub_24ABABE0C();
  v21 = MEMORY[0x277D84F90];
  sub_24ABA3E40(&unk_27EF95DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABAC28C();
  MEMORY[0x24C229110](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

uint64_t dispatch thunk of FIService.getRoots()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24ABA2FDC;

  return v5();
}

uint64_t sub_24ABA2FDC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of FIService.queueScan(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AB94E38;

  return v7(a1);
}

uint64_t dispatch thunk of FIService.startScan()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x80);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AB94E38;

  return v5();
}

uint64_t dispatch thunk of FIService.stopScan()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AB94E38;

  return v5();
}

uint64_t dispatch thunk of FIService.scanStatus()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x90);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24ABA3570;

  return v5();
}

uint64_t sub_24ABA3570(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of FIService.getItemDelayInScan()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x98);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24ABA4A98;

  return v5();
}

uint64_t dispatch thunk of FIService.setItemDelayInScan(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AB945B8;

  return v7(a1);
}

uint64_t sub_24ABA38C4(uint64_t a1)
{
  result = sub_24ABABC0C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_24ABA3A2C(uint64_t a1)
{
  sub_24ABA3AC8();
  if (v1 <= 0x3F)
  {
    sub_24ABA3AF8();
    if (v2 <= 0x3F)
    {
      sub_24ABA3B5C(319);
      if (v3 <= 0x3F)
      {
        sub_24ABA3BDC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24ABA3AC8()
{
  result = qword_27EF95D58;
  if (!qword_27EF95D58)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27EF95D58);
  }

  return result;
}

void sub_24ABA3AF8()
{
  if (!qword_27EF95D60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF95D60);
    }
  }
}

void sub_24ABA3B5C(uint64_t a1)
{
  if (!qword_27EF95D68)
  {
    sub_24ABABC0C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF95C50, &qword_24ABAF140);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF95D68);
    }
  }
}

uint64_t sub_24ABA3BDC()
{
  result = qword_27EF95D70;
  if (!qword_27EF95D70)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27EF95D70);
  }

  return result;
}

uint64_t sub_24ABA3C34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24ABA3C74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ABA3CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ABA3D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ABA3DB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95DA0, &unk_24ABAF2B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24ABA3E40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ABA3E88()
{
  MEMORY[0x24C229F70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24ABA3EC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24ABA3F10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24ABA3F78()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24ABA3FB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AB94E38;

  return sub_24AB97C98(v2, v3, v4);
}

uint64_t sub_24ABA4070()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AB94E38;

  return sub_24ABA0EEC(v2, v3, v4);
}

uint64_t sub_24ABA4130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AB94E38;

  return sub_24ABA0FD4(a1, v4, v5, v6);
}

uint64_t sub_24ABA41FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24ABA4234(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AB94E38;

  return sub_24AB908F4(a1, v4);
}

uint64_t sub_24ABA4304()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AB94E38;

  return sub_24AB977F0(v2, v3);
}

uint64_t sub_24ABA43B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AB945B8;

  return sub_24AB971C8(v2, v3);
}

uint64_t sub_24ABA445C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AB94E38;

  return sub_24AB96DF0(v2, v3);
}

uint64_t sub_24ABA4508()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AB94E38;

  return sub_24AB9696C(v2, v3);
}

uint64_t sub_24ABA45B4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24ABA45FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AB94E38;

  return sub_24AB961A4(v2, v3, v4);
}

uint64_t sub_24ABA46B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AB94E38;

  return sub_24AB959F8(v2, v3);
}