uint64_t sub_24B1F557C()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = sub_24B2D56D4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_24B0C43AC(v0 + 16, v0 + 56);
  v5 = sub_24B1FC530(&qword_27EFCE438, type metadata accessor for PeopleLocationsProvider, &protocol conformance descriptor for PeopleLocationsProvider);
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  sub_24B07F7D0((v0 + 56), (v6 + 4));
  v6[9] = v3;
  swift_retain_n();
  v7 = sub_24B00A9A4(0, 0, v2, &unk_24B2F0E50, v6);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v3 + v1) = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24B1F56FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v7 = sub_24B2D3184();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  v5[19] = swift_task_alloc();
  v8 = sub_24B2D1944();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE480, &qword_24B2F0E58);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE488, &qword_24B2F0E60);
  v5[26] = swift_task_alloc();
  v9 = sub_24B2D1574();
  v5[27] = v9;
  v5[28] = *(v9 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v10 = sub_24B2D24A4();
  v5[33] = v10;
  v5[34] = *(v10 - 8);
  v5[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1F59B8, a5, 0);
}

uint64_t sub_24B1F59B8()
{
  v1 = v0[14];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_24B2D57B4();

  v6 = sub_24B1FC530(&qword_27EFCE438, type metadata accessor for PeopleLocationsProvider, &protocol conformance descriptor for PeopleLocationsProvider);
  v7 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  v0[36] = v6;
  v0[37] = v7;
  swift_beginAccess();
  v8 = v0[36];
  v9 = v0[15];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v10 = swift_task_alloc();
  v0[38] = v10;
  *v10 = v0;
  v10[1] = sub_24B1F5BD0;

  return MEMORY[0x282200310](v0 + 10, v9, v8);
}

uint64_t sub_24B1F5BD0()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 120);

    return MEMORY[0x2822009F8](sub_24B1F5CE0, v4, 0);
  }

  return result;
}

uint64_t sub_24B1F5CE0()
{
  v136 = v0;
  v2 = v0 + 10;
  v1 = v0[10];
  if (v1)
  {
    v117 = (v0 + 2);
    sub_24B2D2494();
    v3 = MEMORY[0x277D84FA0];
    v0[11] = MEMORY[0x277D84FA0];
    v0[12] = v3;
    v4 = sub_24B195218(MEMORY[0x277D84F90]);
    v7 = v4;
    v134 = v0;
    v123 = v0 + 10;
    v119 = *(v1 + 16);
    if (!v119)
    {

      v86 = MEMORY[0x277D84FA0];
      if (!*(MEMORY[0x277D84FA0] + 16))
      {
        goto LABEL_58;
      }

      goto LABEL_56;
    }

    v8 = 0;
    v120 = v1 + 32;
    v118 = v1;
    while (1)
    {
      if (v8 >= *(v1 + 16))
      {
LABEL_68:
        __break(1u);
        return MEMORY[0x282200310](v4, v5, v6);
      }

      v9 = v120 + 16 * v8;
      v124 = *v9;
      v10 = *(v9 + 8);
      if (v10)
      {
        break;
      }

      v133 = v7;
      v4 = v124;
      v67 = *(v124 + 16);
      if (v67)
      {
        v121 = v8;
        v68 = v0[28];
        v69 = v124 + ((*(v68 + 80) + 32) & ~*(v68 + 80));

        v131 = *(v68 + 72);
        v70 = *(v68 + 16);
        v71 = v123;
        do
        {
          v73 = v0[31];
          v72 = v0[32];
          v75 = v0[27];
          v74 = v0[28];
          v70(v72, v69, v75);
          sub_24B1AF4EC(v73, v72);
          (*(v74 + 8))(v73, v75);
          v69 += v131;
          --v67;
        }

        while (v67);
LABEL_4:

        v2 = v71;
LABEL_5:
        v7 = v133;
        v1 = v118;
        v8 = v121;
        goto LABEL_6;
      }

      v2 = v123;
      v7 = v133;
LABEL_6:
      if (++v8 == v119)
      {

        v86 = v2[1];
        if (!*(v86 + 16))
        {
LABEL_58:

          goto LABEL_59;
        }

LABEL_56:
        v87 = v0[36];
        v88 = v0[19];
        v89 = v0[15];
        v90 = sub_24B2D56D4();
        (*(*(v90 - 8) + 56))(v88, 1, 1, v90);
        v91 = swift_allocObject();
        *(v91 + 16) = v89;
        *(v91 + 24) = v87;
        *(v91 + 32) = v89;
        *(v91 + 40) = v86;
        *(v91 + 48) = 0;
        swift_retain_n();
        sub_24B00A9A4(0, 0, v88, &unk_24B2F0E68, v91);

LABEL_59:
        v92 = v0[37];
        v93 = v0[17];
        v94 = v0[18];
        v95 = v0[15];
        v96 = v0[16];
        swift_bridgeObjectRetain_n();
        v97 = sub_24B1D27E8();
        sub_24B25A824(v0[12], v97);
        v99 = v98;
        (*(v93 + 16))(v94, v95 + v92, v96);
        v100 = sub_24B2D3164();
        v101 = v0;
        v102 = v7;
        v103 = sub_24B2D5904();
        v104 = os_log_type_enabled(v100, v103);
        v107 = v0 + 17;
        v105 = v0[17];
        v106 = v107[1];
        v108 = v101[16];
        if (v104)
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v135 = v110;
          *v109 = 136315138;
          *(v109 + 4) = sub_24AFF321C(0xD000000000000018, 0x800000024B2DC550, &v135);

          _os_log_impl(&dword_24AFD2000, v100, v103, "PeopleLocationsProvider: %s - Will call ingest", v109, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v110);
          MEMORY[0x24C23D530](v110, -1, -1);
          MEMORY[0x24C23D530](v109, -1, -1);

          (*(v105 + 8))(v106, v108);
        }

        else
        {

          (*(v105 + 8))(v106, v108);
        }

        v111 = v134[34];
        v112 = v134[35];
        v113 = v134[33];
        sub_24B1F8654(v99, v102, v112, 0);

        (*(v111 + 8))(v112, v113);
        v114 = v134[36];
        v115 = v134[15];
        __swift_mutable_project_boxed_opaque_existential_1(v117, v134[5]);
        v116 = swift_task_alloc();
        v134[38] = v116;
        *v116 = v134;
        v116[1] = sub_24B1F5BD0;
        v4 = v123;
        v5 = v115;
        v6 = v114;

        return MEMORY[0x282200310](v4, v5, v6);
      }
    }

    if (v10 == 1)
    {
      v121 = v8;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2[3] = v7;
      v12 = -1 << *(v124 + 32);
      if (-v12 < 64)
      {
        v13 = ~(-1 << -v12);
      }

      else
      {
        v13 = -1;
      }

      v14 = v13 & *(v124 + 64);
      v122 = (63 - v12) >> 6;

      for (i = 0; ; i = v129)
      {
        v133 = v7;
        v130 = isUniquelyReferenced_nonNull_native;
        if (!v14)
        {
          if (v122 <= i + 1)
          {
            v17 = i + 1;
          }

          else
          {
            v17 = v122;
          }

          while (1)
          {
            v16 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v16 >= v122)
            {
              v129 = v17 - 1;
              v65 = v0[25];
              v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE490, &unk_24B2F0E70);
              (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
              v14 = 0;
              goto LABEL_25;
            }

            v14 = *(v124 + 64 + 8 * v16);
            ++i;
            if (v14)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v16 = i;
LABEL_24:
        v19 = v0[27];
        v18 = v0[28];
        v20 = v0[25];
        v126 = v0[23];
        v128 = v0[31];
        v21 = v0[21];
        v22 = v134[20];
        v23 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v24 = v23 | (v16 << 6);
        (*(v18 + 16))();
        (*(v21 + 16))(v126, *(v124 + 56) + *(v21 + 72) * v24, v22);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE490, &unk_24B2F0E70);
        v26 = *(v25 + 48);
        (*(v18 + 32))(v20, v128, v19);
        v0 = v134;
        (*(v21 + 32))(v20 + v26, v126, v22);
        (*(*(v25 - 8) + 56))(v20, 0, 1, v25);
        v129 = v16;
LABEL_25:
        v27 = v0[24];
        sub_24B1FC778(v0[25], v27);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE490, &unk_24B2F0E70);
        if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
        {
          v29 = v0[26];
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE98, &qword_24B2EF878);
          (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
        }

        else
        {
          v31 = v0[27];
          v32 = v0[28];
          v33 = v0[26];
          v34 = v134[24];
          v35 = v134[21];
          v36 = v134[20];
          v37 = *(v28 + 48);
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE98, &qword_24B2EF878);
          v39 = *(v38 + 48);
          (*(v32 + 16))(v33, v34, v31);
          (*(v35 + 16))(v33 + v39, v34 + v37, v36);
          v0 = v134;
          sub_24AFF8258(v34, &qword_27EFCE490, &unk_24B2F0E70);
          (*(*(v38 - 8) + 56))(v33, 0, 1, v38);
        }

        v40 = v0[26];
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE98, &qword_24B2EF878);
        if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
        {
          swift_bridgeObjectRelease_n();

          v2 = v123;
          goto LABEL_5;
        }

        v42 = v0[30];
        v43 = v0[21];
        v44 = v0[22];
        v45 = v0[20];
        v46 = *(v41 + 48);
        v127 = *(v0[28] + 32);
        v127(v42, v40, v0[27]);
        v47 = *(v43 + 32);
        v47(v44, v40 + v46, v45);
        v48 = sub_24B18146C(v42);
        v49 = v133[2];
        v50 = (v5 & 1) == 0;
        v4 = v49 + v50;
        if (__OFADD__(v49, v50))
        {
          goto LABEL_66;
        }

        v51 = v5;
        v125 = v47;
        if (v133[3] >= v4)
        {
          v0 = v134;
          v53 = v123;
          if ((v130 & 1) == 0)
          {
            sub_24B1CF020();
          }
        }

        else
        {
          v0 = v134;
          v52 = v134[30];
          v53 = v123;
          sub_24B1C75F4(v4, v130 & 1);
          v54 = sub_24B18146C(v52);
          if ((v51 & 1) != (v55 & 1))
          {

            return sub_24B2D6054();
          }

          v48 = v54;
        }

        v56 = v0[30];
        v57 = v0[27];
        v58 = v0[28];
        v60 = v0[21];
        v59 = v0[22];
        v61 = v0[20];
        if (v51)
        {
          (*(v58 + 8))(v0[30], v0[27]);
          v7 = v53[3];
          v4 = (*(v60 + 40))(v7[7] + *(v60 + 72) * v48, v59, v61);
        }

        else
        {
          v7 = v53[3];
          v7[(v48 >> 6) + 8] |= 1 << v48;
          v127(v7[6] + *(v58 + 72) * v48, v56, v57);
          v4 = v125(v7[7] + *(v60 + 72) * v48, v59, v61);
          v62 = v7[2];
          v63 = __OFADD__(v62, 1);
          v64 = v62 + 1;
          if (v63)
          {
            goto LABEL_67;
          }

          v7[2] = v64;
        }

        isUniquelyReferenced_nonNull_native = 1;
      }
    }

    v4 = v124;
    v76 = *(v124 + 16);
    if (!v76)
    {
      goto LABEL_6;
    }

    v121 = v8;
    v133 = v7;
    v77 = v0[28];
    v78 = v124 + ((*(v77 + 80) + 32) & ~*(v77 + 80));

    v132 = *(v77 + 72);
    v79 = *(v77 + 16);
    v71 = v2;
    do
    {
      v80 = v0[31];
      v82 = v0[28];
      v81 = v0[29];
      v83 = v134[27];
      v79(v81, v78, v83);
      sub_24B1AF4EC(v80, v81);
      v0 = v134;
      (*(v82 + 8))(v80, v83);
      v78 += v132;
      --v76;
    }

    while (v76);
    goto LABEL_4;
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v84 = v0[1];

  return v84();
}

uint64_t sub_24B1F6958()
{
  v1 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_valuePublisher;
  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_valuePublisher))
  {

    sub_24B2D5764();
  }

  *(v0 + v1) = 0;

  v2 = v0 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
  sub_24B1F42A4(v3, &unk_285E54538, &unk_285E54560, &unk_24B2EF960, &unk_24B2F0DC0);
  return swift_endAccess();
}

uint64_t sub_24B1F6A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 192) = a6;
  *(v6 + 96) = a4;
  *(v6 + 104) = a5;
  v8 = sub_24B2D3184();
  *(v6 + 112) = v8;
  *(v6 + 120) = *(v8 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  v9 = sub_24B2D24A4();
  *(v6 + 144) = v9;
  *(v6 + 152) = *(v9 - 8);
  *(v6 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1F6B74, a4, 0);
}

uint64_t sub_24B1F6B74(uint64_t a1)
{
  v2 = v1[12];
  sub_24B2D2494();
  v6 = (*(v2 + 112) + **(v2 + 112));
  v3 = swift_task_alloc();
  v1[21] = v3;
  *v3 = v1;
  v3[1] = sub_24B1F6C70;
  v4 = v1[13];

  return v6(v4);
}

uint64_t sub_24B1F6C70(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v5 = *(v3 + 96);
  if (v1)
  {
    v6 = sub_24B1F6F98;
  }

  else
  {
    v6 = sub_24B1F6DA4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24B1F6DA4()
{
  v20 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v3 + 16))(v1, v4 + v5, v2);
  v6 = sub_24B2D3164();
  v7 = sub_24B2D5904();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_24AFF321C(0xD000000000000027, 0x800000024B2DC980, &v19);
    _os_log_impl(&dword_24AFD2000, v6, v7, "PeopleLocationsProvider: %s - Will call ingest", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C23D530](v13, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);
  }

  (*(v11 + 8))(v9, v10);
  v15 = *(v0 + 152);
  v14 = *(v0 + 160);
  v16 = *(v0 + 144);
  sub_24B1F8654(*(v0 + 104), *(v0 + 176), v14, *(v0 + 192));

  (*(v15 + 8))(v14, v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24B1F6F98()
{
  v27 = v0;
  v1 = *(v0 + 184);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  v6 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v3 + 16))(v2, v5 + v6, v4);
  v7 = v1;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5914();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 120);
    v25 = *(v0 + 128);
    v23 = *(v0 + 184);
    v24 = *(v0 + 112);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_24AFF321C(0xD000000000000027, 0x800000024B2DC980, &v26);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v13 = *(*(v0 + 48) - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = sub_24B2D53C4();
    v16 = v15;

    v17 = sub_24AFF321C(v14, v16, &v26);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_24AFD2000, v8, v9, "PeopleLocationsProvider: %s - fetchError - %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v10 + 8))(v25, v24);
  }

  else
  {
    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    v20 = *(v0 + 112);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24B1F7294(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v128 = a4;
  v135 = a3;
  v130 = a1;
  v133 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
  v6 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v125 = &v106[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v124 = &v106[-v9];
  v117 = sub_24B2D13C4();
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v106[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v127 = sub_24B2D1944();
  v122 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v123 = &v106[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v113);
  v120 = &v106[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v112 = &v106[-v14];
  MEMORY[0x28223BE20](v15);
  v17 = &v106[-v16];
  v131 = sub_24B2D3184();
  v126 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v106[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v21 = &v106[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCCA8, &unk_24B2F03C0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v106[-v23];
  v136 = sub_24B2D24A4();
  v132 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v114 = &v106[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v28 = &v106[-v27];
  MEMORY[0x28223BE20](v29);
  v31 = &v106[-v30];
  MEMORY[0x28223BE20](v32);
  v34 = &v106[-v33];
  v134 = v4;
  v35 = v4 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  swift_beginAccess();
  v121 = v35;
  v36 = *(v35 + 24);
  if (*(v36 + 16))
  {

    v37 = a2;
    v38 = sub_24B18146C(a2);
    if (v39)
    {
      sub_24B1FBCE0(*(v36 + 56) + *(v6 + 72) * v38, v24, type metadata accessor for PeopleLocationsProvider.LocationState);
      v40 = 0;
    }

    else
    {
      v40 = 1;
    }
  }

  else
  {
    v37 = a2;
    v40 = 1;
  }

  v41 = v133;
  (*(v6 + 56))(v24, v40, 1, v133);
  if ((*(v6 + 48))(v24, 1, v41))
  {
    v42 = v28;
    v43 = v17;
    sub_24AFF8258(v24, &qword_27EFCCCA8, &unk_24B2F03C0);
    v44 = v37;
    v45 = v136;
    v46 = v132;
LABEL_13:
    v59 = v131;
    v60 = v134;
    sub_24B1F8D00(v44);
    v61 = v60 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
    swift_beginAccess();
    v62 = v126;
    v63 = *(v126 + 16);
    v111 = v61;
    v63(v129, v61, v59);
    v64 = *(v46 + 16);
    v119 = v46 + 16;
    v118 = v64;
    v64(v42, v135, v45);
    v65 = v130;
    sub_24B008890(v130, v43, &qword_27EFCB288, &unk_24B2EBD20);
    v66 = sub_24B2D3164();
    v67 = sub_24B2D5904();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v109 = v44;
      v108 = v69;
      v138 = v69;
      *v68 = 136315906;
      *(v68 + 4) = sub_24AFF321C(0xD000000000000025, 0x800000024B2DC950, &v138);
      *(v68 + 12) = 1024;
      *(v68 + 14) = v128 & 1;
      *(v68 + 18) = 2080;
      sub_24B1FC530(&qword_27EFC8688, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v107 = v67;
      v70 = sub_24B2D5FA4();
      v72 = v71;
      v110 = *(v132 + 8);
      v110(v42, v136);
      v73 = sub_24AFF321C(v70, v72, &v138);

      *(v68 + 20) = v73;
      *(v68 + 28) = 2080;
      sub_24B008890(v43, v112, &qword_27EFCB288, &unk_24B2EBD20);
      v74 = sub_24B2D53C4();
      v76 = v75;
      sub_24AFF8258(v43, &qword_27EFCB288, &unk_24B2EBD20);
      v77 = sub_24AFF321C(v74, v76, &v138);

      *(v68 + 30) = v77;
      _os_log_impl(&dword_24AFD2000, v66, v107, "PeopleLocationsProvider: %s - Will set - isLoading: %{BOOL}d, request: %s, location: %s", v68, 0x26u);
      v78 = v108;
      swift_arrayDestroy();
      v44 = v109;
      MEMORY[0x24C23D530](v78, -1, -1);
      v65 = v130;
      MEMORY[0x24C23D530](v68, -1, -1);
    }

    else
    {

      sub_24AFF8258(v43, &qword_27EFCB288, &unk_24B2EBD20);
      v110 = *(v46 + 8);
      v110(v42, v45);
    }

    (*(v62 + 8))(v129, v131);
    v79 = v123;
    v80 = v122;
    v81 = v120;
    sub_24B008890(v65, v120, &qword_27EFCB288, &unk_24B2EBD20);
    v82 = v127;
    if ((*(v80 + 48))(v81, 1, v127) == 1)
    {
      sub_24AFF8258(v81, &qword_27EFCB288, &unk_24B2EBD20);
      v83 = v128;
      v84 = v44;
      v85 = v136;
    }

    else
    {
      (*(v80 + 32))(v79, v81, v82);
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7D0, &qword_24B2EC040);
      v87 = *(v111 + *(v86 + 40));
      MEMORY[0x28223BE20](v86);
      v88 = v80 + 32;
      v84 = v44;
      *&v106[-16] = v44;

      sub_24B1F4070(sub_24B1FC510, &v106[-32], v87);
      v90 = v89;

      v91 = v116;
      sub_24B2D1934();
      v92 = v114;
      sub_24B2D2494();
      v93 = (v115 + 8);
      if (v90)
      {
        v94 = v92;
        v95 = v91;
        v96 = sub_24B2D13B4();
      }

      else
      {
        v94 = v92;
        v95 = v91;
        v96 = sub_24B2D1394();
      }

      v97 = v96;
      v85 = v136;
      v110(v94, v136);
      (*v93)(v95, v117);
      (*(v88 - 24))(v79, v127);
      v83 = v128 | v97 ^ 1;
      v65 = v130;
    }

    v98 = v124;
    v118(v124, v135, v85);
    v99 = (v98 + *(v133 + 20));
    v100 = type metadata accessor for PeopleLocationsProvider.LocationState.Result(0);
    sub_24B008890(v65, &v99[*(v100 + 20)], &qword_27EFCB288, &unk_24B2EBD20);
    *v99 = v83 & 1;
    v101 = v121;
    swift_beginAccess();
    v102 = *(v101 + 24);
    v103 = v125;
    sub_24B1FC4AC(v98, v125);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v137 = v102;
    sub_24B1CAE38(v103, v84, isUniquelyReferenced_nonNull_native);
    *(v101 + 24) = v137;
    sub_24B1D5E44(v102);
    swift_endAccess();

    if (v83)
    {
      return sub_24B1F9AB8(v84);
    }

    else
    {
      return sub_24B1F8F68(v84, v65);
    }
  }

  v47 = v132;
  v48 = v136;
  (*(v132 + 16))(v31, v24, v136);
  v49 = v24;
  v46 = v47;
  sub_24AFF8258(v49, &qword_27EFCCCA8, &unk_24B2F03C0);
  (*(v47 + 32))(v34, v31, v48);
  if ((sub_24B2D23C4() & 1) == 0)
  {
    v44 = v37;
    v42 = v28;
    v43 = v17;
    (*(v46 + 8))(v34, v48);
    v45 = v48;
    goto LABEL_13;
  }

  v50 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  v51 = v134;
  swift_beginAccess();
  v52 = v126;
  v53 = v131;
  (*(v126 + 16))(v21, v51 + v50, v131);
  v54 = sub_24B2D3164();
  v55 = sub_24B2D5934();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = v21;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v138 = v58;
    *v57 = 136315138;
    *(v57 + 4) = sub_24AFF321C(0xD000000000000025, 0x800000024B2DC950, &v138);
    _os_log_impl(&dword_24AFD2000, v54, v55, "PeopleLocationsProvider: %s - Skipping due to older timestamp", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x24C23D530](v58, -1, -1);
    MEMORY[0x24C23D530](v57, -1, -1);

    (*(v52 + 8))(v56, v53);
  }

  else
  {

    (*(v52 + 8))(v21, v53);
  }

  return (*(v47 + 8))(v34, v136);
}

uint64_t sub_24B1F8060(uint64_t a1)
{
  sub_24B2D1574();
  sub_24B1FC530(&qword_27EFCC6D8, MEMORY[0x277D08B50], MEMORY[0x277D08B68]);
  sub_24B2D54E4();
  sub_24B2D54E4();
  if (v8 == v6 && v9 == v7)
  {
  }

  else
  {
    v3 = sub_24B2D6004();

    v4 = 0;
    if ((v3 & 1) == 0)
    {
      return v4 & 1;
    }
  }

  if (*(a1 + *(type metadata accessor for PeopleLocationsProvider.Subscription(0) + 20)) == 1)
  {
    v4 = sub_24B2D6004();
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_24B1F81C4(int a1, uint64_t a2)
{
  v43 = a1;
  v4 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = sub_24B2D1574();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCCA8, &unk_24B2F03C0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v40 - v15;
  sub_24B1F8D00(a2);
  v17 = v2 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  swift_beginAccess();
  v18 = *(v17 + 24);
  v19 = *(v18 + 16);
  v42 = a2;
  if (v19)
  {

    v20 = sub_24B18146C(a2);
    if (v21)
    {
      sub_24B1FBCE0(*(v18 + 56) + *(v5 + 72) * v20, v16, type metadata accessor for PeopleLocationsProvider.LocationState);
      v22 = 0;
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 1;
  }

  (*(v5 + 56))(v16, v22, 1, v4);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4))
  {
    result = sub_24AFF8258(v16, &qword_27EFCCCA8, &unk_24B2F03C0);
    if (v43)
    {
      sub_24B2D2324();
      v25 = &v10[*(v4 + 20)];
      v26 = *(type metadata accessor for PeopleLocationsProvider.LocationState.Result(0) + 20);
      v27 = sub_24B2D1944();
      (*(*(v27 - 8) + 56))(&v25[v26], 1, 1, v27);
      *v25 = 1;
      swift_beginAccess();
      v28 = *(v17 + 24);
      sub_24B1FC4AC(v10, v7);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44[0] = v28;
      sub_24B1CAE38(v7, v42, isUniquelyReferenced_nonNull_native);
      *(v17 + 24) = v44[0];
      sub_24B1D5E44(v28);
      swift_endAccess();
    }
  }

  else
  {
    v30 = v16[*(v4 + 20)];
    result = sub_24AFF8258(v16, &qword_27EFCCCA8, &unk_24B2F03C0);
    if (v30 != (v43 & 1))
    {
      v32 = v40;
      v31 = v41;
      (*(v40 + 16))(v13, v42, v41);
      v33 = sub_24B1F4C84(v46);
      v35 = v34;
      v45 = *(v34 + 24);

      v36 = sub_24B1D6E88(v44);
      v38 = v37;
      if (!v23(v37, 1, v4))
      {
        *(v38 + *(v4 + 20)) = v43 & 1;
      }

      (v36)(v44, 0);
      (*(v32 + 8))(v13, v31);
      v39 = *(v35 + 24);
      *(v35 + 24) = v45;
      sub_24B1D5E44(v39);

      return (v33)(v46, 0);
    }
  }

  return result;
}

void sub_24B1F8654(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v59 = a4;
  v58 = a3;
  v64 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v53 - v7;
  v8 = sub_24B2D1574();
  v63 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = &v53 - v12;
  v13 = sub_24B2D3184();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  v18 = *(v14 + 16);
  v62 = v4;
  v18(v16, v4 + v17, v13);

  v19 = sub_24B2D3164();
  v20 = sub_24B2D5934();

  v21 = os_log_type_enabled(v19, v20);
  v60 = v8;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v56 = v10;
    v23 = v22;
    v24 = swift_slowAlloc();
    v65[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_24AFF321C(0xD000000000000049, 0x800000024B2DC900, v65);
    *(v23 + 12) = 2080;
    sub_24B2D1944();
    sub_24B1FC530(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
    v25 = a2;
    v26 = sub_24B2D51F4();
    v28 = sub_24AFF321C(v26, v27, v65);
    v8 = v60;

    *(v23 + 14) = v28;
    _os_log_impl(&dword_24AFD2000, v19, v20, "PeopleLocationsProvider: %s - updated: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v24, -1, -1);
    v29 = v23;
    v10 = v56;
    MEMORY[0x24C23D530](v29, -1, -1);
  }

  else
  {
    v25 = a2;
  }

  (*(v14 + 8))(v16, v13);
  if (*(v64 + 16))
  {
    v30 = v10;
    v31 = v64 + 56;
    v32 = 1 << *(v64 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v64 + 56);
    v35 = (v32 + 63) >> 6;
    v55 = v63 + 32;
    v56 = (v63 + 16);
    v54 = (v63 + 8);

    v36 = 0;
    v37 = v25;
    v38 = v61;
    while (v34)
    {
LABEL_15:
      v41 = v63;
      v42 = v57;
      (*(v63 + 16))(v57, *(v64 + 48) + *(v63 + 72) * (__clz(__rbit64(v34)) | (v36 << 6)), v8);
      (*(v41 + 32))(v30, v42, v8);
      if (*(v37 + 16))
      {
        v43 = sub_24B18146C(v30);
        v44 = v37;
        if (v45)
        {
          v46 = v43;
          v47 = *(v44 + 56);
          v48 = sub_24B2D1944();
          v49 = *(v48 - 8);
          (*(v49 + 16))(v61, v47 + *(v49 + 72) * v46, v48);
          (*(v49 + 56))(v61, 0, 1, v48);
          v38 = v61;
        }

        else
        {
          v50 = sub_24B2D1944();
          (*(*(v50 - 8) + 56))(v38, 1, 1, v50);
        }

        v37 = v44;
        v8 = v60;
      }

      else
      {
        v39 = sub_24B2D1944();
        (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
      }

      v34 &= v34 - 1;
      sub_24B1F7294(v38, v30, v58, v59 & 1);
      sub_24AFF8258(v38, &qword_27EFCB288, &unk_24B2EBD20);
      (*v54)(v30, v8);
    }

    while (1)
    {
      v40 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v40 >= v35)
      {

        v51 = v62 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
        swift_beginAccess();
        v52 = *(v51 + 16);
        *(v51 + 16) = 1;
        sub_24B1F42A4(v52, &unk_285E54538, &unk_285E54560, &unk_24B2EF960, &unk_24B2F0DC0);
        swift_endAccess();
        return;
      }

      v34 = *(v31 + 8 * v40);
      ++v36;
      if (v34)
      {
        v36 = v40;
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24B1F8D00(uint64_t a1)
{
  v3 = sub_24B2D1574();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_loadingStateResetTaskBySubscription;
  swift_beginAccess();
  if (*(*(v1 + v7) + 16))
  {

    sub_24B18146C(a1);
    if (v8)
    {

      sub_24B2D5764();
    }

    else
    {
    }
  }

  v9 = *(v4 + 16);
  v9(v6, a1, v3);
  swift_beginAccess();
  sub_24B18CA24(0, v6);
  swift_endAccess();
  v10 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_loadingStateFallbackTaskBySubscription;
  swift_beginAccess();
  if (*(*(v1 + v10) + 16))
  {

    sub_24B18146C(a1);
    if (v11)
    {

      sub_24B2D5764();
    }

    else
    {
    }
  }

  v9(v6, a1, v3);
  swift_beginAccess();
  sub_24B18CA24(0, v6);
  return swift_endAccess();
}

uint64_t sub_24B1F8F68(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v4 = sub_24B2D1574();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = v5;
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v37 - v7;
  v8 = sub_24B2D18D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_24B2D1944();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v46 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  v18 = a1;
  v19 = v2;
  sub_24B1F8D00(v18);
  sub_24B008890(v45, v14, &qword_27EFCB288, &unk_24B2EBD20);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_24AFF8258(v14, &qword_27EFCB288, &unk_24B2EBD20);
  }

  (*(v16 + 32))(v46, v14, v15);
  v21 = *(v2 + 192);
  sub_24B2D18E4();
  v45 = v21(v11);
  v38 = v22;
  v24 = v23;
  (*(v9 + 8))(v11, v8);
  if ((v24 & 1) == 0)
  {
    v25 = sub_24B2D56D4();
    v26 = v40;
    (*(*(v25 - 8) + 56))(v40, 1, 1, v25);
    v27 = v41;
    v28 = v42;
    v29 = v43;
    (*(v42 + 16))(v41, v44, v43);
    v30 = sub_24B1FC530(&qword_27EFCE438, type metadata accessor for PeopleLocationsProvider, &protocol conformance descriptor for PeopleLocationsProvider);
    v31 = (*(v28 + 80) + 56) & ~*(v28 + 80);
    v32 = swift_allocObject();
    *(v32 + 2) = v19;
    *(v32 + 3) = v30;
    v33 = v38;
    *(v32 + 4) = v45;
    *(v32 + 5) = v33;
    *(v32 + 6) = v19;
    (*(v28 + 32))(&v32[v31], v27, v29);
    swift_retain_n();
    v34 = sub_24B00A9A4(0, 0, v26, &unk_24B2F0DB8, v32);
    v35 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_loadingStateFallbackTaskBySubscription;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v19 + v35);
    *(v19 + v35) = 0x8000000000000000;
    sub_24B1CA814(v34, v44, isUniquelyReferenced_nonNull_native);
    *(v19 + v35) = v47;
    swift_endAccess();
  }

  return (*(v16 + 8))(v46, v15);
}

uint64_t sub_24B1F9438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v9 = sub_24B2D3184();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  v10 = sub_24B2D5D64();
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1F955C, a6, 0);
}

uint64_t sub_24B1F955C(uint64_t a1)
{
  sub_24B2D6084();
  v2 = swift_task_alloc();
  v1[19] = v2;
  *v2 = v1;
  v2[1] = sub_24B1F961C;
  v4 = v1[9];
  v3 = v1[10];

  return sub_24B09A030(v4, v3, 0, 0, 1);
}

uint64_t sub_24B1F961C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_24B1F9818;
  }

  else
  {
    v7 = sub_24B1F97A4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24B1F97A4()
{
  sub_24B1F9AB8(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1F9818()
{
  v27 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v3 + 16))(v2, v5 + v6, v4);
  v7 = v1;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5904();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 112);
    v25 = *(v0 + 120);
    v23 = *(v0 + 160);
    v24 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = *(*(v0 + 48) - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = sub_24B2D53C4();
    v16 = v15;

    v17 = sub_24AFF321C(v14, v16, &v26);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_24AFD2000, v8, v9, "PeopleLocationsProvider: loadingStateTaskBySubscription was cancelled - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v10 + 8))(v25, v24);
  }

  else
  {
    v19 = *(v0 + 112);
    v18 = *(v0 + 120);
    v20 = *(v0 + 104);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24B1F9AB8(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v4 = sub_24B2D1574();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  v12 = (*(v1 + 176))(v9);
  v14 = v13;
  sub_24B1F81C4(1, a1);
  v15 = sub_24B2D56D4();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  (*(v5 + 16))(v7, a1, v4);
  v16 = sub_24B1FC530(&qword_27EFCE438, type metadata accessor for PeopleLocationsProvider, &protocol conformance descriptor for PeopleLocationsProvider);
  v17 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v2;
  *(v18 + 3) = v16;
  *(v18 + 4) = v12;
  *(v18 + 5) = v14;
  *(v18 + 6) = v2;
  (*(v5 + 32))(&v18[v17], v7, v4);
  swift_retain_n();
  v19 = sub_24B00A9A4(0, 0, v11, &unk_24B2F0E80, v18);
  v20 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_loadingStateResetTaskBySubscription;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v2 + v20);
  *(v2 + v20) = 0x8000000000000000;
  sub_24B1CA814(v19, v24, isUniquelyReferenced_nonNull_native);
  *(v2 + v20) = v25;
  return swift_endAccess();
}

uint64_t sub_24B1F9D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v9 = sub_24B2D3184();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  v10 = sub_24B2D5D64();
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1F9E88, a6, 0);
}

uint64_t sub_24B1F9E88(uint64_t a1)
{
  sub_24B2D6084();
  v2 = swift_task_alloc();
  v1[19] = v2;
  *v2 = v1;
  v2[1] = sub_24B1F9F48;
  v4 = v1[9];
  v3 = v1[10];

  return sub_24B09A030(v4, v3, 0, 0, 1);
}

uint64_t sub_24B1F9F48()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_24B1FA148;
  }

  else
  {
    v7 = sub_24B1FA0D0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24B1FA0D0()
{
  sub_24B1F81C4(0, *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1FA148()
{
  v27 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v3 + 16))(v2, v5 + v6, v4);
  v7 = v1;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5904();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 112);
    v25 = *(v0 + 120);
    v23 = *(v0 + 160);
    v24 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = *(*(v0 + 48) - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = sub_24B2D53C4();
    v16 = v15;

    v17 = sub_24AFF321C(v14, v16, &v26);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_24AFD2000, v8, v9, "PeopleLocationsProvider: loadingStateResetTaskBySubscription was cancelled - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v10 + 8))(v25, v24);
  }

  else
  {
    v19 = *(v0 + 112);
    v18 = *(v0 + 120);
    v20 = *(v0 + 104);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24B1FA3E8(uint64_t a1, char a2)
{
  *(v3 + 192) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  v4 = sub_24B2D1574();
  *(v3 + 112) = v4;
  v5 = *(v4 - 8);
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 + 64);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = *(type metadata accessor for PeopleLocationsProvider.Subscription(0) - 8);
  *(v3 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1FA574, v2, 0);
}

void sub_24B1FA574()
{
  v63 = v0 + 2;
  v69 = v0[20];
  v1 = v0[9];
  v79 = v0[10];
  v2 = v1 + 56;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_loadingStateResetTaskBySubscription;
  v7 = (63 - v4) >> 6;
  v77 = v0[15];
  v64 = (v77 + 8);
  v68 = v0[9];

  v8 = 0;
  v65 = v7;
  v66 = v2;
  v76 = v0;
  v67 = v6;
  while (v5)
  {
LABEL_11:
    v13 = v0[21];
    v14 = v0[18];
    v15 = v0[19];
    v74 = v0[17];
    v16 = v0[14];
    v78 = v0[13];
    v75 = v0[12];
    v71 = v76[10];
    sub_24B1FBCE0(*(v68 + 48) + *(v69 + 72) * (__clz(__rbit64(v5)) | (v8 << 6)), v13, type metadata accessor for PeopleLocationsProvider.Subscription);
    v17 = *(v77 + 16);
    v17(v15, v13, v16);
    v18 = sub_24B1FBA64(v13);
    v19 = (*(v79 + 176))(v18);
    v72 = v20;
    v73 = v19;
    sub_24B1F81C4(1, v15);
    v17(v14, v15, v16);
    v21 = sub_24B2D56D4();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v78, 1, 1, v21);
    v70 = v17;
    v17(v74, v15, v16);
    v23 = sub_24B1FC530(&qword_27EFCE438, type metadata accessor for PeopleLocationsProvider, &protocol conformance descriptor for PeopleLocationsProvider);
    v24 = (*(v77 + 80) + 56) & ~*(v77 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = v71;
    *(v25 + 3) = v23;
    *(v25 + 4) = v73;
    *(v25 + 5) = v72;
    *(v25 + 6) = v71;
    (*(v77 + 32))(&v25[v24], v74, v16);
    sub_24B008890(v78, v75, &qword_27EFC8580, &qword_24B2E0010);
    LODWORD(v24) = (*(v22 + 48))(v75, 1, v21);
    v0 = v76;
    swift_retain_n();

    v26 = v76[12];
    if (v24 == 1)
    {
      sub_24AFF8258(v76[12], &qword_27EFC8580, &qword_24B2E0010);
    }

    else
    {
      sub_24B2D56C4();
      (*(v22 + 8))(v26, v21);
    }

    v27 = *(v25 + 2);
    swift_unknownObjectRetain();

    if (v27)
    {
      swift_getObjectType();
      v28 = sub_24B2D5604();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    sub_24AFF8258(v76[13], &qword_27EFC8580, &qword_24B2E0010);
    v31 = swift_allocObject();
    *(v31 + 16) = &unk_24B2F0C28;
    *(v31 + 24) = v25;
    if (v30 | v28)
    {
      *v63 = 0;
      v63[1] = 0;
      v76[4] = v28;
      v76[5] = v30;
    }

    v32 = v76[18];
    v33 = swift_task_create();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v79 + v67);
    *(v79 + v67) = 0x8000000000000000;
    v36 = sub_24B18146C(v32);
    v38 = v35[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return;
    }

    v42 = v37;
    if (v35[3] < v41)
    {
      v43 = v76[18];
      sub_24B1C5F44(v41, isUniquelyReferenced_nonNull_native);
      v36 = sub_24B18146C(v43);
      if ((v42 & 1) != (v44 & 1))
      {

        sub_24B2D6054();
        return;
      }

LABEL_24:
      if (v42)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v50 = v36;
    sub_24B1CE380();
    v36 = v50;
    if (v42)
    {
LABEL_4:
      *(v35[7] + 8 * v36) = v33;

      goto LABEL_5;
    }

LABEL_25:
    v45 = v76[18];
    v46 = v76[14];
    v35[(v36 >> 6) + 8] |= 1 << v36;
    v47 = v36;
    v70(v35[6] + *(v77 + 72) * v36, v45, v46);
    *(v35[7] + 8 * v47) = v33;
    v48 = v35[2];
    v40 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v40)
    {
      goto LABEL_41;
    }

    v35[2] = v49;
LABEL_5:
    v5 &= v5 - 1;
    v9 = v76[19];
    v10 = v76[14];
    v11 = *v64;
    (*v64)(v76[18], v10);
    *(v79 + v67) = v35;
    swift_endAccess();
    v11(v9, v10);
    v7 = v65;
    v2 = v66;
  }

  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v12 >= v7)
    {
      break;
    }

    v5 = *(v2 + 8 * v12);
    ++v8;
    if (v5)
    {
      v8 = v12;
      goto LABEL_11;
    }
  }

  v51 = v0[10];
  v52 = v0[11];
  v53 = *(v0 + 192);
  v54 = v0[9];

  v55 = sub_24B1F3B68(v54);
  v56 = sub_24B1D0FC4(v55);

  v57 = sub_24B2D56D4();
  (*(*(v57 - 8) + 56))(v52, 1, 1, v57);
  v58 = sub_24B1FC530(&qword_27EFCE438, type metadata accessor for PeopleLocationsProvider, &protocol conformance descriptor for PeopleLocationsProvider);
  v59 = swift_allocObject();
  *(v59 + 16) = v51;
  *(v59 + 24) = v58;
  *(v59 + 32) = v51;
  *(v59 + 40) = v56;
  *(v59 + 48) = 1;
  swift_retain_n();
  sub_24B00A9A4(0, 0, v52, &unk_24B2F0C40, v59);

  if (v53 == 1)
  {
    v60 = swift_task_alloc();
    v0[22] = v60;
    *v60 = v0;
    v60[1] = sub_24B1DD3B4;

    sub_24B1F4FCC();
  }

  else
  {
    v80 = (*(v0[10] + 144) + **(v0[10] + 144));
    v61 = swift_task_alloc();
    v0[23] = v61;
    *v61 = v0;
    v61[1] = sub_24B1DD644;
    v62 = v0[9];

    v80(v62);
  }
}

uint64_t sub_24B1FADF4(uint64_t a1, char a2)
{
  *(v3 + 184) = a2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCCA8, &unk_24B2F03C0);
  *(v3 + 120) = swift_task_alloc();
  v4 = sub_24B2D1574();
  *(v3 + 128) = v4;
  *(v3 + 136) = *(v4 - 8);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = *(type metadata accessor for PeopleLocationsProvider.Subscription(0) - 8);
  *(v3 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1FAF54, v2, 0);
}

uint64_t sub_24B1FAF54()
{
  v4 = (*(v0[14] + 160) + **(v0[14] + 160));
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_24B1FB048;
  v2 = v0[13];

  return v4(v2);
}

uint64_t sub_24B1FB048()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 112);

    return MEMORY[0x2822009F8](sub_24B1FB1AC, v6, 0);
  }
}

void sub_24B1FB1AC()
{
  if (*(v0 + 184) == 1)
  {
    sub_24B1F6958();
  }

  v55 = *(v0 + 160);
  v1 = *(v0 + 104);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = *(v0 + 136);
  v6 = -1 << *(*(v0 + 104) + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v2;
  v9 = *(v0 + 112) + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  v54 = *(v0 + 104);

  v53 = v9;
  swift_beginAccess();
  v10 = 0;
  v11 = (63 - v6) >> 6;
  v56 = (v5 + 16);
  v52 = (v5 + 8);
  v46 = (v0 + 48);
  v47 = v0 + 16;
  v45 = v3;
  while (v8)
  {
    v14 = v10;
LABEL_13:
    v15 = *(v0 + 168);
    v16 = *(v0 + 152);
    v17 = *(v0 + 128);
    sub_24B1FBCE0(*(v54 + 48) + *(v55 + 72) * (__clz(__rbit64(v8)) | (v14 << 6)), v15, type metadata accessor for PeopleLocationsProvider.Subscription);
    v50 = *v56;
    (*v56)(v16, v15, v17);
    sub_24B1FBA64(v15);
    sub_24B1F8D00(v16);
    v18 = *(v53 + 24);
    if (!*(v18 + 16))
    {
      v21 = *(v0 + 120);
LABEL_18:
      v24 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
      (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
      goto LABEL_19;
    }

    v19 = *(v0 + 152);

    v20 = sub_24B18146C(v19);
    v21 = *(v0 + 120);
    if ((v22 & 1) == 0)
    {

      goto LABEL_18;
    }

    v23 = v20;
    v48 = *(v18 + 56);
    v24 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
    v25 = v21;
    v26 = *(v24 - 8);
    sub_24B1FBCE0(v48 + *(v26 + 72) * v23, v25, type metadata accessor for PeopleLocationsProvider.LocationState);

    v27 = v25;
    v3 = v45;
    (*(v26 + 56))(v27, 0, 1, v24);
LABEL_19:
    v8 &= v8 - 1;
    v28 = *(v0 + 120);
    type metadata accessor for PeopleLocationsProvider.LocationState(0);
    v29 = *(*(v24 - 8) + 48);
    if (v29(v28, 1, v24))
    {
      v12 = *(v0 + 152);
      v13 = *(v0 + 128);
      sub_24AFF8258(v28, &qword_27EFCCCA8, &unk_24B2F03C0);
      (*v52)(v12, v13);
      v10 = v14;
    }

    else
    {
      v30 = *(v28 + *(v24 + 20));
      sub_24AFF8258(v28, &qword_27EFCCCA8, &unk_24B2F03C0);
      if (v30)
      {
        v50(*(v0 + 144), *(v0 + 152), *(v0 + 128));
        v31 = sub_24B1F4C84(v47);
        v49 = v32;
        v51 = v31;
        v57 = *(v32 + 24);

        v42 = sub_24B1D6E88(v46);
        v34 = v33;
        v35 = v29(v33, 1, v24);
        v36 = *(v0 + 144);
        v44 = *(v0 + 152);
        v37 = *(v0 + 128);
        if (v35)
        {
          (v42)(v46, 0);
          v43 = *v52;
          (*v52)(v36, v37);
          v38 = *(v49 + 24);
          *(v49 + 24) = v57;
          sub_24B1D5E44(v38);

          (v51)(v47, 0);
          v43(v44, v37);
        }

        else
        {
          *(v34 + *(v24 + 20)) = 0;
          (v42)(v46, 0);
          v39 = *v52;
          (*v52)(v36, v37);
          v40 = *(v49 + 24);
          *(v49 + 24) = v57;
          sub_24B1D5E44(v40);

          (v51)(v47, 0);
          v39(v44, v37);
        }

        v10 = v14;
      }

      else
      {
        (*v52)(*(v0 + 152), *(v0 + 128));
        v10 = v14;
      }
    }
  }

  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return;
    }

    if (v14 >= v11)
    {
      break;
    }

    v8 = *(v3 + 8 * v14);
    ++v10;
    if (v8)
    {
      goto LABEL_13;
    }
  }

  v41 = *(v0 + 8);

  v41();
}

void *PeopleLocationsProvider.deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage, &qword_27EFCC7D0, &qword_24B2EC040);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PeopleLocationsProvider.__deallocating_deinit()
{
  PeopleLocationsProvider.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24B1FB8BC(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFD370;

  return sub_24B1FA3E8(a1, a2);
}

uint64_t sub_24B1FB960(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFDE44;

  return sub_24B1FADF4(a1, a2);
}

uint64_t sub_24B1FBA64(uint64_t a1)
{
  v2 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PeopleLocationsProvider(uint64_t a1)
{
  result = qword_27EFCE468;
  if (!qword_27EFCE468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B1FBB0C(uint64_t a1)
{
  v4 = *(sub_24B2D1574() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B1F9D64(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24B1FBC18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B1F6A44(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24B1FBCE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1FBD48(uint64_t a1)
{
  *(a1 + 8) = sub_24B1FC530(&qword_27EFCE440, type metadata accessor for PeopleLocationsProvider, &protocol conformance descriptor for PeopleLocationsProvider);
  result = sub_24B1FC530(&qword_27EFCE448, type metadata accessor for PeopleLocationsProvider, &protocol conformance descriptor for PeopleLocationsProvider);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24B1FBE18()
{
  result = qword_27EFCE450;
  if (!qword_27EFCE450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCE458, &qword_24B2F0CD8);
    sub_24B1FC530(&qword_27EFCE460, type metadata accessor for PeopleLocationsProvider.LocationState, &protocol conformance descriptor for PeopleLocationsProvider.LocationState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE450);
  }

  return result;
}

void sub_24B1FBED4(uint64_t a1)
{
  sub_24B1FC30C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PeopleLocationsProvider.didAddNewUniqueSubscriptions(addedSubscriptions:wasEmpty:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 344) + **(*v2 + 344));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFD370;

  return v8(a1, a2);
}

uint64_t dispatch thunk of PeopleLocationsProvider.didRemoveUniqueSubscriptions(removedSubscriptions:isEmpty:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 352) + **(*v2 + 352));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFDE44;

  return v8(a1, a2);
}

void sub_24B1FC30C(uint64_t a1)
{
  if (!qword_27EFCE478)
  {
    v2 = type metadata accessor for PeopleLocationsProvider.Subscription(255);
    v3 = sub_24B1FC530(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription, &protocol conformance descriptor for PeopleLocationsProvider.Subscription);
    v5 = type metadata accessor for SubscriptionManagerStorage(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27EFCE478);
    }
  }
}

uint64_t sub_24B1FC3A0(uint64_t a1)
{
  v4 = *(sub_24B2D1574() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B1F9438(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24B1FC4AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B1FC530(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B1FC578(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00, &qword_24B2F02B0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AFFD370;

  return sub_24B18D88C(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_24B1FC6B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFDE44;

  return sub_24B1F56FC(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_24B1FC778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE480, &qword_24B2F0E58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_27()
{
  v1 = sub_24B2D1574();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

__n128 PeopleLocationsProvider.Dependencies.init<A>(fetchLocations:observeLocationsChanges:addSubscriptions:removeSubscriptions:loadingStateResetDuration:loadingStateFallbackDuration:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  v20 = swift_allocObject();
  v20[2] = a13;
  v20[3] = a14;
  v20[4] = a3;
  v20[5] = a4;
  a9[1].n128_u64[0] = &unk_24B2F0E90;
  a9[1].n128_u64[1] = v20;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

uint64_t sub_24B1FC974(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFD370;

  return sub_24B183450(a1, v7, v6, v4, v5);
}

uint64_t sub_24B1FCA50(uint64_t a1)
{
  v57 = sub_24B2D1A14();
  v3 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = v38 - v6;
  v54 = sub_24B2D1574();
  v7 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v50 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_24B2D1A24();
  MEMORY[0x28223BE20](v49);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v38[1] = v1;
  v62 = MEMORY[0x277D84F90];
  v58 = v11;
  sub_24B007B04(0, v14, 0);
  v15 = v62;
  v16 = a1 + 56;
  result = sub_24B2D5B54();
  v18 = result;
  v19 = 0;
  v47 = (v7 + 16);
  v46 = *MEMORY[0x277D08D18];
  v45 = (v3 + 104);
  v44 = (v3 + 32);
  v43 = *MEMORY[0x277D08D20];
  v42 = v58 + 32;
  v39 = a1 + 64;
  v40 = v14;
  v48 = a1 + 56;
  v41 = a1;
  while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a1 + 32))
  {
    v21 = v18 >> 6;
    if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_24;
    }

    v22 = *(a1 + 36);
    v59 = v19;
    v60 = v22;
    v23 = v50;
    sub_24B1FF128(*(a1 + 48) + *(v51 + 72) * v18, v50);
    v24 = *v47;
    v61 = v15;
    v24(v53, v23, v54);
    if (*(v23 + *(v52 + 20)))
    {
      v25 = v43;
    }

    else
    {
      v25 = v46;
    }

    v26 = v56;
    v27 = v13;
    v28 = v57;
    (*v45)(v56, v25, v57);
    (*v44)(v55, v26, v28);
    v15 = v61;
    sub_24B2D1A04();
    sub_24B1FBA64(v23);
    v62 = v15;
    v30 = *(v15 + 16);
    v29 = *(v15 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_24B007B04((v29 > 1), v30 + 1, 1);
      v15 = v62;
    }

    *(v15 + 16) = v30 + 1;
    result = (*(v58 + 32))(v15 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v30, v27, v49);
    a1 = v41;
    v20 = 1 << *(v41 + 32);
    v16 = v48;
    if (v18 >= v20)
    {
      goto LABEL_25;
    }

    v31 = *(v48 + 8 * v21);
    if ((v31 & (1 << v18)) == 0)
    {
      goto LABEL_26;
    }

    if (v60 != *(v41 + 36))
    {
      goto LABEL_27;
    }

    v13 = v27;
    v32 = v31 & (-2 << (v18 & 0x3F));
    if (v32)
    {
      v20 = __clz(__rbit64(v32)) | v18 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v33 = v21 << 6;
      v34 = v21 + 1;
      v35 = (v39 + 8 * v21);
      while (v34 < (v20 + 63) >> 6)
      {
        v37 = *v35++;
        v36 = v37;
        v33 += 64;
        ++v34;
        if (v37)
        {
          result = sub_24B040A60(v18, v60, 0);
          v20 = __clz(__rbit64(v36)) + v33;
          goto LABEL_4;
        }
      }

      result = sub_24B040A60(v18, v60, 0);
    }

LABEL_4:
    v19 = v59 + 1;
    v18 = v20;
    if (v59 + 1 == v40)
    {
      return v15;
    }
  }

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

uint64_t sub_24B1FCFD4(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE498, &qword_24B2F0F40);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[5] = v5;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_24B1FD140;

  return v8(v5);
}

uint64_t sub_24B1FD140()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v6 = v2[4];
    v5 = v2[5];
    v9 = v2 + 2;
    v7 = v2[2];
    v8 = v9[1];
    v7[3] = v8;
    v7[4] = sub_24B039184(&qword_27EFCE4A0, &qword_27EFCE498, &qword_24B2F0F40, MEMORY[0x277D85990]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v8);
  }

  v4 = v3[1];

  return v4();
}

uint64_t static PeopleLocationsProvider.Dependencies.liveDaemon()@<X0>(void *a1@<X8>)
{
  v2 = sub_24B2D2674();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D3184();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  sub_24B2D3174();
  sub_24B2D2AE4();
  (*(v3 + 104))(v5, *MEMORY[0x277D09048], v2);
  v13 = sub_24B2D2954();
  (*(v3 + 8))(v5, v2);
  v14 = *(v7 + 32);
  v14(v9, v12, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v14((v16 + v15), v9, v6);
  *a1 = &unk_24B2F0EF8;
  a1[1] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_24B2F0F08;
  *(v17 + 24) = v13;
  a1[2] = &unk_24B2F0F38;
  a1[3] = v17;
  a1[4] = &unk_24B2F0F18;
  a1[5] = v13;
  a1[6] = &unk_24B2F0F28;
  a1[7] = v13;
  a1[8] = sub_24B1FEF20;
  a1[9] = 0;
  a1[10] = sub_24B1FEF34;
  a1[11] = 0;
  return swift_retain_n();
}

uint64_t sub_24B1FD5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_24B2D19F4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1FD66C, 0, 0);
}

uint64_t sub_24B1FD66C()
{
  v1 = *(v0 + 48);
  **(v0 + 56) = *(v0 + 16);
  (*(v1 + 104))();

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_24B1FD740;
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);

  return MEMORY[0x28215F4D0](v3, v4);
}

uint64_t sub_24B1FD740(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_24B1FDA7C;
  }

  else
  {
    v7 = sub_24B1FD8B4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24B1FD8B4()
{
  v12 = v0;

  v1 = sub_24B2D3164();
  v2 = sub_24B2D5904();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_24AFF321C(0x6D6561446576696CLL, 0xEC00000029286E6FLL, &v11);
    *(v3 + 12) = 2080;
    sub_24B2D1574();
    sub_24B2D1944();
    sub_24B1FF18C();
    v5 = sub_24B2D51F4();
    v7 = sub_24AFF321C(v5, v6, &v11);

    *(v3 + 14) = v7;
    _os_log_impl(&dword_24AFD2000, v1, v2, "%s - result %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v8 = *(v0 + 8);
  v9 = *(v0 + 72);

  return v8(v9);
}

uint64_t sub_24B1FDA7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1FDAE0(uint64_t a1)
{
  v4 = *(sub_24B2D3184() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24B0384BC;

  return sub_24B1FD5A8(a1, v6, v1 + v5);
}

uint64_t sub_24B1FDBC0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24B2D2654();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8968, &qword_24B2E16A8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1FDCBC, 0, 0);
}

uint64_t sub_24B1FDCBC()
{
  (*(v0[5] + 104))(v0[6], *MEMORY[0x277D08FE0], v0[4]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_24B1FDD8C;
  v2 = v0[8];
  v3 = v0[6];
  v4 = MEMORY[0x277D84F90];

  return MEMORY[0x28215FB18](v2, v4, v3, 1);
}

uint64_t sub_24B1FDD8C()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24B1FDFFC;
  }

  else
  {
    v5 = sub_24B1FDEFC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24B1FDEFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE4A8, &qword_24B2F0F50);
  sub_24B039184(&qword_27EFC8990, &qword_27EFC8968, &qword_24B2E16A8, MEMORY[0x277D857C0]);
  sub_24B2D5D84();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1FDFFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1FE06C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AFFD370;

  return sub_24B1FDBC0(a1, v1);
}

uint64_t sub_24B1FE108(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE348, &qword_24B2F09E0);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v3 = sub_24B2D1574();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_24B2D28E4();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = sub_24B2D2C04();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v6 = sub_24B2D2794();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1FE338, 0, 0);
}

uint64_t sub_24B1FE338()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D09130])
  {
    v5 = v0[19];
    v6 = v0[16];
    v7 = v0[14];
    v8 = v0[15];
    v9 = v0[13];
    v10 = v0[11];
    v54 = v0[10];
    v11 = v0[7];
    v56 = v0[6];
    v12 = v0[5];
    (*(v0[18] + 96))(v5, v0[17]);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC89C0, &qword_24B2E1720) + 48);
    (*(v8 + 32))(v6, v5, v7);
    (*(v10 + 32))(v9, v5 + v13, v54);
    sub_24B2D2894();
    v14 = (*(v11 + 48))(v12, 1, v56);
    v16 = v0[15];
    v15 = v0[16];
    v18 = v0[13];
    v17 = v0[14];
    v20 = v0[10];
    v19 = v0[11];
    if (v14 == 1)
    {
      v21 = v0[2];
      sub_24AFF8258(v0[5], &qword_27EFCE348, &qword_24B2F09E0);
      (*(v19 + 8))(v18, v20);
      (*(v16 + 8))(v15, v17);
      *v21 = MEMORY[0x277D84F90];
    }

    else
    {
      v57 = v0[14];
      v36 = v0[7];
      v51 = v0[6];
      v53 = v0[13];
      v55 = v0[2];
      v37 = v0[9];
      (*(v36 + 32))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE4B0, &qword_24B2F0F58);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_24B2DE430;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE4B8, &qword_24B2F0F60);
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE98, &qword_24B2EF878) - 8);
      v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_24B2DE430;
      v41 = v40 + v39;
      (*(v36 + 16))(v41, v37, v51);
      sub_24B2D2B44();
      v42 = sub_24B195218(v40);
      swift_setDeallocating();
      sub_24AFF8258(v41, &qword_27EFCDE98, &qword_24B2EF878);
      swift_deallocClassInstance();
      *(v52 + 32) = v42;
      *(v52 + 40) = 1;
      (*(v36 + 8))(v37, v51);
      (*(v19 + 8))(v53, v20);
      (*(v16 + 8))(v15, v57);
      *v55 = v52;
    }
  }

  else
  {
    v22 = v0[18];
    v23 = v0[19];
    v24 = v0[17];
    if (v4 == *MEMORY[0x277D09128])
    {
      v26 = v0[11];
      v25 = v0[12];
      v27 = v0[10];
      v28 = v0[6];
      v29 = v0[7];
      v30 = v0[4];
      (*(v22 + 96))(v0[19], v24);
      (*(v26 + 32))(v25, v23, v27);
      sub_24B2D2894();
      v31 = (*(v29 + 48))(v30, 1, v28);
      v33 = v0[11];
      v32 = v0[12];
      v34 = v0[10];
      if (v31 == 1)
      {
        v35 = v0[2];
        sub_24AFF8258(v0[4], &qword_27EFCE348, &qword_24B2F09E0);
        (*(v33 + 8))(v32, v34);
        *v35 = MEMORY[0x277D84F90];
      }

      else
      {
        v44 = v0[7];
        v43 = v0[8];
        v45 = v0[6];
        v58 = v0[2];
        (*(v44 + 32))(v43, v0[4], v45);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE4B0, &qword_24B2F0F58);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_24B2DE430;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80A0, &qword_24B2DFD00);
        v47 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_24B2DE430;
        (*(v44 + 16))(v48 + v47, v43, v45);
        *(v46 + 32) = v48;
        *(v46 + 40) = 2;
        (*(v44 + 8))(v43, v45);
        (*(v33 + 8))(v32, v34);
        *v58 = v46;
      }
    }

    else
    {
      *v0[2] = MEMORY[0x277D84F90];
      (*(v22 + 8))(v23, v24);
    }
  }

  v49 = v0[1];

  return v49();
}

uint64_t sub_24B1FE94C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24B1FE96C, 0, 0);
}

uint64_t sub_24B1FE96C()
{
  v1 = sub_24B1FCA50(v0[2]);
  v2 = sub_24B1D1160(v1);
  v0[4] = v2;

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_24B1FEA30;

  return MEMORY[0x28215F4C0](v2);
}

uint64_t sub_24B1FEA30()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24B1FEB6C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24B1FEB6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1FEBD0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AFFDE44;

  return sub_24B1FE94C(a1, v1);
}

uint64_t sub_24B1FEC68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24B1FEC88, 0, 0);
}

uint64_t sub_24B1FEC88()
{
  v1 = sub_24B1FCA50(v0[2]);
  v2 = sub_24B1D1160(v1);
  v0[4] = v2;

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_24B1FED4C;

  return MEMORY[0x28215F4C8](v2);
}

uint64_t sub_24B1FED4C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24B1FF1E4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24B1FEE88(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AFFDE44;

  return sub_24B1FEC68(a1, v1);
}

unint64_t sub_24B1FEF34(uint64_t a1)
{
  v2 = sub_24B2D18D4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x277D08CC8])
  {
    return 0xA055690D9DB80000;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_24B1FF070(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFDE44;

  return sub_24B1FCFD4(a1, v4);
}

uint64_t sub_24B1FF128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B1FF18C()
{
  result = qword_27EFCC6C0;
  if (!qword_27EFCC6C0)
  {
    sub_24B2D1574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC6C0);
  }

  return result;
}

uint64_t PeopleLocationsProvider.Subscription.init(identifier:priority:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_24B2D1574();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t PeopleLocationsProvider.Subscription.priority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t PeopleLocationsProvider.Subscription.Priority.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_24B2D5E14();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t PeopleLocationsProvider.Subscription.Priority.rawValue.getter()
{
  if (*v0)
  {
    return 0x776F6C6C616873;
  }

  else
  {
    return 1702259052;
  }
}

uint64_t sub_24B1FF368(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x776F6C6C616873;
  }

  else
  {
    v3 = 1702259052;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x776F6C6C616873;
  }

  else
  {
    v5 = 1702259052;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B2D6004();
  }

  return v8 & 1;
}

uint64_t sub_24B1FF408()
{
  sub_24B2D60E4();
  sub_24B2D5404();

  return sub_24B2D6124();
}

uint64_t sub_24B1FF484(uint64_t a1)
{
  sub_24B2D5404();
}

uint64_t sub_24B1FF4EC(uint64_t a1)
{
  sub_24B2D60E4();
  sub_24B2D5404();

  return sub_24B2D6124();
}

uint64_t sub_24B1FF564@<X0>(char *a2@<X8>)
{
  v3 = sub_24B2D5E14();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24B1FF5C4(uint64_t *a1@<X8>)
{
  v2 = 1702259052;
  if (*v1)
  {
    v2 = 0x776F6C6C616873;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t PeopleLocationsProvider.Subscription.debugDescription.getter()
{
  sub_24B2D5C34();

  strcpy(v8, "Subscription(");
  HIWORD(v8[1]) = -4864;
  v1 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v2 = *(v0 + *(v1 + 20)) == 0;
  if (*(v0 + *(v1 + 20)))
  {
    v3 = 0x776F6C6C616873;
  }

  else
  {
    v3 = 1702259052;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  MEMORY[0x24C23BC10](v3, v4);

  v5 = MEMORY[0x24C23BC10](58, 0xE100000000000000);
  v6 = MEMORY[0x24C237D40](v5);
  MEMORY[0x24C23BC10](v6);

  MEMORY[0x24C23BC10](41, 0xE100000000000000);
  return v8[0];
}

uint64_t PeopleLocationsProvider.Subscription.hash(into:)(uint64_t a1)
{
  sub_24B2D1574();
  sub_24B200868(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
  sub_24B2D5254();
  type metadata accessor for PeopleLocationsProvider.Subscription(0);
  sub_24B2D5404();
}

uint64_t PeopleLocationsProvider.Subscription.hashValue.getter()
{
  sub_24B2D60E4();
  sub_24B2D1574();
  sub_24B200868(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
  sub_24B2D5254();
  type metadata accessor for PeopleLocationsProvider.Subscription(0);
  sub_24B2D5404();

  return sub_24B2D6124();
}

uint64_t sub_24B1FF8AC(uint64_t a1)
{
  sub_24B2D60E4();
  sub_24B2D1574();
  sub_24B200868(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
  sub_24B2D5254();
  sub_24B2D5404();

  return sub_24B2D6124();
}

uint64_t sub_24B1FF988(uint64_t a1, uint64_t a2)
{
  sub_24B2D1574();
  sub_24B200868(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
  sub_24B2D5254();
  sub_24B2D5404();
}

uint64_t sub_24B1FFA58(uint64_t a1, uint64_t a2)
{
  sub_24B2D60E4();
  sub_24B2D1574();
  sub_24B200868(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
  sub_24B2D5254();
  sub_24B2D5404();

  return sub_24B2D6124();
}

uint64_t sub_24B1FFCB4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t PeopleLocationsProvider.LocationState.Request.timestamp.setter(uint64_t a1)
{
  v3 = sub_24B2D24A4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PeopleLocationsProvider.LocationState.Result.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PeopleLocationsProvider.LocationState.Result(0) + 20);

  return sub_24B1418C4(v3, a1);
}

uint64_t PeopleLocationsProvider.LocationState.Result.location.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PeopleLocationsProvider.LocationState.Result(0) + 20);

  return sub_24B1E71FC(a1, v3);
}

uint64_t _s12FindMyUICore23PeopleLocationsProviderC12SubscriptionV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_24B2D1574();
  sub_24B200868(&qword_27EFCC6D8, MEMORY[0x277D08B50], MEMORY[0x277D08B68]);
  sub_24B2D54E4();
  sub_24B2D54E4();
  if (v18 == v16 && v19 == v17)
  {
  }

  else
  {
    v5 = sub_24B2D6004();

    v6 = 0;
    if ((v5 & 1) == 0)
    {
      return v6 & 1;
    }
  }

  v7 = *(type metadata accessor for PeopleLocationsProvider.Subscription(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8)
  {
    v10 = 0x776F6C6C616873;
  }

  else
  {
    v10 = 1702259052;
  }

  if (v8)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v9)
  {
    v12 = 0x776F6C6C616873;
  }

  else
  {
    v12 = 1702259052;
  }

  if (v9)
  {
    v13 = 0xE700000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_24B2D6004();
  }

  return v6 & 1;
}

uint64_t sub_24B200084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B20010C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

BOOL _s12FindMyUICore23PeopleLocationsProviderC13LocationStateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC660, &unk_24B2EC990);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for PeopleLocationsProvider.LocationState(0) + 20);
  v15 = (a1 + v14);
  v16 = a2 + v14;
  if (*v15 != *(a2 + v14))
  {
    return 0;
  }

  v17 = *(type metadata accessor for PeopleLocationsProvider.LocationState.Result(0) + 20);
  v18 = *(v11 + 48);
  sub_24B1418C4(&v15[v17], v13);
  sub_24B1418C4(v16 + v17, &v13[v18]);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_24AFF8258(v13, &qword_27EFCB288, &unk_24B2EBD20);
      return 1;
    }

    goto LABEL_8;
  }

  sub_24B1418C4(v13, v10);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_24AFF8258(v13, &qword_27EFCC660, &unk_24B2EC990);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v18], v4);
  sub_24B200868(&qword_27EFCC670, MEMORY[0x277D08CD0], MEMORY[0x277D08CE0]);
  v21 = sub_24B2D52A4();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  sub_24AFF8258(v13, &qword_27EFCB288, &unk_24B2EBD20);
  return (v21 & 1) != 0;
}

BOOL _s12FindMyUICore23PeopleLocationsProviderC13LocationStateV6ResultV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_24B2D1944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC660, &unk_24B2EC990);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v14 = *(type metadata accessor for PeopleLocationsProvider.LocationState.Result(0) + 20);
  v15 = *(v11 + 48);
  sub_24B1418C4(&a1[v14], v13);
  sub_24B1418C4(&a2[v14], &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_24AFF8258(v13, &qword_27EFCB288, &unk_24B2EBD20);
      return 1;
    }

    goto LABEL_7;
  }

  sub_24B1418C4(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_24AFF8258(v13, &qword_27EFCC660, &unk_24B2EC990);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_24B200868(&qword_27EFCC670, MEMORY[0x277D08CD0], MEMORY[0x277D08CE0]);
  v18 = sub_24B2D52A4();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_24AFF8258(v13, &qword_27EFCB288, &unk_24B2EBD20);
  return (v18 & 1) != 0;
}

unint64_t sub_24B2007CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCE4C0;
  if (!qword_27EFCE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE4C0);
  }

  return result;
}

uint64_t sub_24B200868(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B2008D8(uint64_t a1)
{
  result = sub_24B2D1574();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B200984(uint64_t a1)
{
  result = type metadata accessor for PeopleLocationsProvider.LocationState.Request(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PeopleLocationsProvider.LocationState.Result(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B200B0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  sub_24B008890(a1, &v18 - v13, a5, a6);
  v15 = *a2;
  v16 = *a7;
  swift_beginAccess();
  sub_24B068E10(v14, v15 + v16, a5, a6);
  return swift_endAccess();
}

uint64_t sub_24B200C00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_24B008890(v4 + v8, a4, a2, a3);
}

uint64_t sub_24B200C88(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_24B068E10(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t UserLocationProvider.__allocating_init(dependencies:)(__int128 *a1)
{
  v2 = swift_allocObject();
  UserLocationProvider.init(dependencies:)(a1);
  return v2;
}

uint64_t UserLocationProvider.init(dependencies:)(__int128 *a1)
{
  v3 = sub_24B2D2504();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB58, &unk_24B2F1240);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590, &unk_24B2EC160);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  swift_defaultActor_initialize();
  v10 = v1 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_subscriptionsStorage;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC838, &unk_24B2F1230);
  v12 = v11[9];
  v13 = MEMORY[0x277D84F90];
  *(v10 + v12) = sub_24B193C80(MEMORY[0x277D84F90]);
  *(v10 + v11[10]) = MEMORY[0x277D84FA0];
  *(v10 + v11[11]) = 0;
  sub_24B2D3174();
  v14 = v1 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_dataStorage;
  v15 = sub_24B2D1C44();
  v16 = *(*(v15 - 8) + 56);
  v17 = *a1;
  v24 = a1[1];
  v25 = v17;
  v16(v9, 1, 1, v15);
  *(v14 + 16) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880, &qword_24B2EC170);
  v19 = *(v18 + 52);
  *(v14 + v19) = sub_24B1933E8(v13);
  sub_24B202A90(v9, v14 + *(v18 + 48));
  *v14 = 0xD00000000000001BLL;
  *(v14 + 8) = 0x800000024B2DCB90;
  v20 = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_taskQueue;
  sub_24B2D12D4();
  v21 = sub_24B2D1294();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  sub_24B2D24F4();
  *(v1 + v20) = sub_24B2D12B4();
  *(v1 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_valuePublisher) = 0;
  v22 = v24;
  *(v1 + 112) = v25;
  *(v1 + 128) = v22;
  return v1;
}

double sub_24B2010E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_valuePublisher;
  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_valuePublisher))
  {

    sub_24B2D5764();
  }

  *(v0 + v4) = 0;

  v5 = sub_24B2D56D4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  *(v0 + v4) = sub_24B00A9A4(0, 0, v3, &unk_24B2F1370, v7);

  return result;
}

uint64_t sub_24B201264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a4;
  v5 = sub_24B2D3184();
  v4[35] = v5;
  v4[36] = *(v5 - 8);
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC838, &unk_24B2F1230);
  v4[38] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590, &unk_24B2EC160);
  v4[39] = v6;
  v4[40] = *(v6 - 8);
  v4[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE558, &qword_24B2F1378);
  v4[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B2013FC, 0, 0);
}

uint64_t sub_24B2013FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 112);
    v0[43] = *(Strong + 120);

    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[44] = v3;
    *v3 = v0;
    v3[1] = sub_24B20158C;

    return v6(v0 + 7);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_24B20158C()
{

  return MEMORY[0x2822009F8](sub_24B2016A4, 0, 0);
}

uint64_t sub_24B2016A4()
{
  sub_24B07F7D0((v0 + 56), v0 + 16);
  v1 = *(v0 + 40);
  v2 = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  *(v0 + 120) = swift_getAssociatedTypeWitness();
  *(v0 + 128) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0((v0 + 96));
  sub_24B2D57B4();

  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, *(v0 + 120));
  v5 = swift_task_alloc();
  *(v0 + 360) = v5;
  *v5 = v0;
  v5[1] = sub_24B201884;
  v6 = *(v0 + 336);

  return MEMORY[0x282200310](v6, 0, 0);
}

uint64_t sub_24B201884()
{

  if (v0)
  {
    v1 = sub_24B201CB4;
  }

  else
  {
    v1 = sub_24B201994;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24B201994()
{
  v1 = v0[42];
  if ((*(v0[40] + 48))(v1, 1, v0[39]) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_24B202A90(v1, v0[41]);
    Strong = swift_weakLoadStrong();
    v0[46] = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](sub_24B201B60, Strong, 0);
    }

    else
    {
      sub_24AFF8258(v0[41], &qword_27EFCE590, &unk_24B2EC160);
      __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v0[15]);
      v5 = swift_task_alloc();
      v0[45] = v5;
      *v5 = v0;
      v5[1] = sub_24B201884;
      v6 = v0[42];

      return MEMORY[0x282200310](v6, 0, 0);
    }
  }
}

uint64_t sub_24B201B60()
{
  sub_24B202160(*(v0 + 328));

  return MEMORY[0x2822009F8](sub_24B201BD4, 0, 0);
}

uint64_t sub_24B201BD4()
{
  sub_24AFF8258(v0[41], &qword_27EFCE590, &unk_24B2EC160);
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v0[15]);
  v1 = swift_task_alloc();
  v0[45] = v1;
  *v1 = v0;
  v1[1] = sub_24B201884;
  v2 = v0[42];

  return MEMORY[0x282200310](v2, 0, 0);
}

uint64_t sub_24B201CB4()
{
  v1 = v0[32];
  v0[47] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[48] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24B201DBC, Strong, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_24B201DBC()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 304);
  v3 = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_subscriptionsStorage;
  swift_beginAccess();
  sub_24B008890(v1 + v3, v2, &qword_27EFCC838, &unk_24B2F1230);

  return MEMORY[0x2822009F8](sub_24B201E6C, 0, 0);
}

uint64_t sub_24B201E6C()
{
  v23 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 304);
  (*(*(v0 + 288) + 16))(*(v0 + 296), v2, *(v0 + 280));
  sub_24AFF8258(v2, &qword_27EFCC838, &unk_24B2F1230);
  v3 = v1;
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5914();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 288);
    v21 = *(v0 + 296);
    v19 = *(v0 + 376);
    v20 = *(v0 + 280);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AFF321C(0x7274537472617473, 0xED000029286D6165, &v22);
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v9 = *(*(v0 + 240) - 8);
    swift_task_alloc();
    (*(v9 + 16))();
    v10 = sub_24B2D53C4();
    v12 = v11;

    v13 = sub_24AFF321C(v10, v12, &v22);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_24AFD2000, v4, v5, "UserLocationProvider: %s - Error %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);

    (*(v6 + 8))(v21, v20);
  }

  else
  {
    v15 = *(v0 + 288);
    v14 = *(v0 + 296);
    v16 = *(v0 + 280);

    (*(v15 + 8))(v14, v16);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24B202160(uint64_t a1)
{
  v2 = v1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590, &unk_24B2EC160);
  MEMORY[0x28223BE20](v35);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = sub_24B2D3184();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_subscriptionsStorage;
  swift_beginAccess();
  v17 = *(v13 + 16);
  v36 = v12;
  v17(v15, v2 + v16, v12);
  v37 = a1;
  sub_24B008890(a1, v11, &qword_27EFCE590, &unk_24B2EC160);
  v18 = sub_24B2D3164();
  v19 = sub_24B2D5934();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = v2;
    v21 = v20;
    v33 = swift_slowAlloc();
    v38[0] = v33;
    *v21 = 136315394;
    *(v21 + 4) = sub_24AFF321C(0xD00000000000001FLL, 0x800000024B2DCC20, v38);
    *(v21 + 12) = 2080;
    sub_24B008890(v11, v8, &qword_27EFCE590, &unk_24B2EC160);
    v22 = v5;
    v23 = sub_24B2D53C4();
    v25 = v24;
    sub_24AFF8258(v11, &qword_27EFCE590, &unk_24B2EC160);
    v26 = sub_24AFF321C(v23, v25, v38);

    *(v21 + 14) = v26;
    v5 = v22;
    _os_log_impl(&dword_24AFD2000, v18, v19, "UserLocationProvider: %s - %s", v21, 0x16u);
    v27 = v33;
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v27, -1, -1);
    v28 = v21;
    v2 = v34;
    MEMORY[0x24C23D530](v28, -1, -1);
  }

  else
  {

    sub_24AFF8258(v11, &qword_27EFCE590, &unk_24B2EC160);
  }

  (*(v13 + 8))(v15, v36);
  sub_24B008890(v37, v8, &qword_27EFCE590, &unk_24B2EC160);
  v29 = v2 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_dataStorage;
  swift_beginAccess();
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880, &qword_24B2EC170) + 48);
  sub_24B008890(v29 + v30, v5, &qword_27EFCE590, &unk_24B2EC160);
  sub_24B203090(v8, v29 + v30);
  sub_24B1D6300(v5);
  sub_24AFF8258(v5, &qword_27EFCE590, &unk_24B2EC160);
  sub_24AFF8258(v8, &qword_27EFCE590, &unk_24B2EC160);
  return swift_endAccess();
}

double sub_24B202558(uint64_t a1, char a2)
{
  if (a2)
  {
    return sub_24B2010E4();
  }

  return result;
}

double sub_24B202564(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_valuePublisher;
    if (*(v2 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_valuePublisher))
    {

      sub_24B2D5764();
    }

    *(v2 + v3) = 0;
  }

  return result;
}

uint64_t UserLocationProvider.deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_subscriptionsStorage, &qword_27EFCC838, &unk_24B2F1230);
  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_dataStorage, &qword_27EFCC880, &qword_24B2EC170);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t UserLocationProvider.__deallocating_deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_subscriptionsStorage, &qword_27EFCC838, &unk_24B2F1230);
  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_dataStorage, &qword_27EFCC880, &qword_24B2EC170);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24B202798(uint64_t a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24B2027BC, v2, 0);
}

uint64_t sub_24B2027BC(__n128 a1)
{
  if (*(v1 + 24) == 1)
  {
    a1.n128_f64[0] = sub_24B2010E4();
  }

  v2 = *(v1 + 8);

  return v2(a1);
}

uint64_t sub_24B20282C(uint64_t a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24B202850, v2, 0);
}

uint64_t sub_24B202850(__n128 a1)
{
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 16);
    v3 = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_valuePublisher;
    if (*(v2 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_valuePublisher))
    {

      sub_24B2D5764();
    }

    *(v2 + v3) = 0;
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_24B202934@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_24B008890(v4 + v8, a4, a2, a3);
}

uint64_t sub_24B2029BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *a4;
  swift_beginAccess();
  sub_24B068E10(a1, v6 + v10, a5, a6);
  return swift_endAccess();
}

uint64_t sub_24B202A90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590, &unk_24B2EC160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B202B00(uint64_t a1)
{
  *(a1 + 8) = sub_24B202C98(&qword_27EFCE518, type metadata accessor for UserLocationProvider, &protocol conformance descriptor for UserLocationProvider);
  result = sub_24B202C98(&qword_27EFCE520, type metadata accessor for UserLocationProvider, &protocol conformance descriptor for UserLocationProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for UserLocationProvider(uint64_t a1)
{
  result = qword_27EFCE538;
  if (!qword_27EFCE538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B202BE4()
{
  result = qword_27EFCE530;
  if (!qword_27EFCE530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCE590, &unk_24B2EC160);
    sub_24B202C98(&qword_27EFCE220, MEMORY[0x277D08DB8], MEMORY[0x277D08DC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE530);
  }

  return result;
}

uint64_t sub_24B202C98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return sub_24B008890(v8 + v9, a5, a3, a4);
}

void sub_24B202D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B202FBC(319, a2, a3);
  if (v3 <= 0x3F)
  {
    sub_24B203018(319);
    if (v4 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24B202FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27EFCE548)
  {
    v4 = sub_24B137F64(0, a2, a3);
    v6 = type metadata accessor for SubscriptionManagerStorage(a1, &type metadata for UserLocationProvider.Subscription, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27EFCE548);
    }
  }
}

void sub_24B203018(uint64_t a1)
{
  if (!qword_27EFCE550)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCE590, &unk_24B2EC160);
    v3 = sub_24B202BE4();
    v4 = type metadata accessor for DataObservableStorage(a1, v2, &protocol witness table for A?, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_27EFCE550);
    }
  }
}

uint64_t sub_24B203090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590, &unk_24B2EC160);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B203100(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFD370;

  return sub_24B201264(a1, v4, v5, v6);
}

uint64_t UserLocationProvider.Dependencies.thisDeviceLocationStream.getter()
{
  v1 = *v0;

  return v1;
}

void UserLocationProvider.Dependencies.thisDeviceLocationStream.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void sub_24B203240(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 16) = sub_24B203354;
  *(a2 + 24) = v5;
}

uint64_t UserLocationProvider.Dependencies.isLocationUseAuthorized.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void UserLocationProvider.Dependencies.isLocationUseAuthorized.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t UserLocationProvider.Dependencies.init(thisDeviceLocationStream:isLocationUseAuthorized:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_24B20338C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

void static UserLocationProvider.Dependencies.live(customEffectiveBundleIdentifier:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v50 = a1;
  v47 = a3;
  v46 = sub_24B2D5194();
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D3184();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v45 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  sub_24B2D3174();
  v15 = sub_24B2D3164();
  v16 = sub_24B2D5934();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24AFD2000, v15, v16, "UserLocationProvider.Dependencies.Live: Will initialize CLLocationManager", v17, 2u);
    MEMORY[0x24C23D530](v17, -1, -1);
  }

  if (a2)
  {
    v18 = objc_opt_self();

    v19 = [v18 mainBundle];
    v20 = [v19 bundleIdentifier];

    if (!v20)
    {

      goto LABEL_12;
    }

    v21 = sub_24B2D5394();
    v23 = v22;

    if (v21 == v50 && v23 == a2)
    {
    }

    else
    {
      v24 = sub_24B2D6004();

      if ((v24 & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  v25 = [objc_opt_self() sharedManager];
  if (v25)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_12:
  v26 = [objc_allocWithZone(_s20CoreLocationDelegateCMa()) init];
  sub_24B204324();
  v27 = v46;
  (*(v4 + 104))(v6, *MEMORY[0x277D851C8], v46);
  v28 = sub_24B2D59D4();
  (*(v4 + 8))(v6, v27);
  v29 = objc_allocWithZone(MEMORY[0x277CBFC10]);
  v30 = sub_24B2D5374();
  v31 = [v29 initWithEffectiveBundleIdentifier:v30 delegate:v26 onQueue:v28];

  if (!v31)
  {
    __break(1u);
    return;
  }

  v25 = v31;
LABEL_14:
  v50 = v25;
  v32 = sub_24B2D3164();
  v33 = sub_24B2D5904();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_24AFD2000, v32, v33, "UserLocationProvider.Dependencies.Live: Will initialize CLLocationManager", v34, 2u);
    MEMORY[0x24C23D530](v34, -1, -1);
  }

  v35 = v48;
  (*(v8 + 16))(v48, v14, v7);
  v36 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v37 = (v9 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = *(v8 + 32);
  v39(v38 + v36, v35, v7);
  v40 = v49;
  *(v38 + v37) = v50;
  v39(v40, v14, v7);
  v41 = swift_allocObject();
  v39(v41 + v36, v40, v7);
  v42 = v50;
  *(v41 + v37) = v50;
  v43 = v47;
  *v47 = &unk_24B2F1408;
  v43[1] = v38;
  v43[2] = sub_24B204234;
  v43[3] = v41;

  v44 = v42;
}

uint64_t sub_24B203940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_24B2D25F4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = sub_24B2D2604();
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE560, &qword_24B2F1428);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE568, &qword_24B2F1430);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B203AD8, 0, 0);
}

uint64_t sub_24B203AD8()
{
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24AFD2000, v1, v2, "UserLocationProvider.Dependencies.Live: Will start thisDeviceLocationStream", v3, 2u);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[7];
  v13 = v0[10];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];
  v10 = v0[2];

  [v9 requestWhenInUseAuthorization];
  (*(v8 + 104))(v6, *MEMORY[0x277D850A0], v7);
  sub_24B2D25E4();
  (*(v8 + 8))(v6, v7);
  sub_24B204370();
  sub_24B2D5E04();
  sub_24B039184(&qword_27EFCE578, &qword_27EFCE560, &qword_24B2F1428, MEMORY[0x277D859A0]);
  sub_24B2D57D4();
  (*(v5 + 8))(v4, v13);
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE580, &qword_24B2F1448);
  v10[4] = sub_24B039184(&qword_27EFCE588, &qword_27EFCE580, &qword_24B2F1448, MEMORY[0x277D85990]);
  __swift_allocate_boxed_opaque_existential_0(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590, &unk_24B2EC160);
  sub_24B039184(&qword_27EFCE598, &qword_27EFCE568, &qword_24B2F1430, MEMORY[0x277CEF6C0]);
  sub_24B2D5D84();

  v11 = v0[1];

  return v11();
}

uint64_t sub_24B203DD8(uint64_t a1)
{
  v4 = *(sub_24B2D3184() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFD370;

  return sub_24B203940(a1, v1 + v5, v6);
}

uint64_t sub_24B203F04(uint64_t a1)
{
  v2 = sub_24B2D2614();
  v3 = v2;
  if (v2)
  {
  }

  v4 = *(v1 + 8);

  return v4(v3 != 0);
}

uint64_t sub_24B203F78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24B203F98, 0, 0);
}

uint64_t sub_24B203F98(uint64_t a1)
{
  if (sub_24B2D2614())
  {
    sub_24B2D1BC4();
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v1 + 16);
  v4 = sub_24B2D1C44();
  (*(*(v4 - 8) + 56))(v3, v2, 1, v4);
  v5 = *(v1 + 8);

  return v5();
}

BOOL sub_24B204054(uint64_t a1, void *a2)
{
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5904();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24AFD2000, v3, v4, "UserLocationProvider.Dependencies.Live: Will check authorization status", v5, 2u);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  v6 = [a2 authorizationStatus];
  v8 = dword_285E48EE0 == v6 || unk_285E48EE4 == v6;
  v9 = sub_24B2D3164();
  v10 = sub_24B2D5904();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v8;
    _os_log_impl(&dword_24AFD2000, v9, v10, "UserLocationProvider.Dependencies.Live: Authorization status %{BOOL}d", v11, 8u);
    MEMORY[0x24C23D530](v11, -1, -1);
  }

  return v8;
}

uint64_t objectdestroyTm_28()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

BOOL sub_24B204234()
{
  v1 = *(sub_24B2D3184() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24B204054(v0 + v2, v3);
}

unint64_t sub_24B204324()
{
  result = qword_27EFC8540;
  if (!qword_27EFC8540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFC8540);
  }

  return result;
}

unint64_t sub_24B204370()
{
  result = qword_27EFCE570;
  if (!qword_27EFCE570)
  {
    sub_24B2D2604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE570);
  }

  return result;
}

uint64_t UserLocationProvider.Subscription.hashValue.getter()
{
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](0);
  return sub_24B2D6124();
}

unint64_t sub_24B204440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCE5A0;
  if (!qword_27EFCE5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE5A0);
  }

  return result;
}

uint64_t sub_24B2044A4(uint64_t a1)
{
  v3 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D1704();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v30 = v1;
  v42 = MEMORY[0x277D84F90];
  sub_24B0076F4(0, v9, 0);
  v10 = v42;
  v11 = a1 + 64;
  result = sub_24B2D5B54();
  v13 = v6;
  v14 = result;
  v15 = 0;
  v36 = (v13 + 16);
  v37 = v13;
  v34 = a1;
  v35 = v13 + 32;
  v31 = a1 + 72;
  v32 = v9;
  v33 = a1 + 64;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 36);
    v40 = v15;
    v41 = v18;
    v19 = v38;
    sub_24B215C50(*(a1 + 48) + *(v39 + 72) * v14, v38, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    (*v36)(v8, v19, v5);
    sub_24B215CB8(v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    v42 = v10;
    v20 = v5;
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_24B0076F4((v21 > 1), v22 + 1, 1);
      v10 = v42;
    }

    *(v10 + 16) = v22 + 1;
    result = (*(v37 + 32))(v10 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v22, v8, v20);
    v16 = 1 << *(v34 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v11 = v33;
    v23 = *(v33 + 8 * v17);
    if ((v23 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    v5 = v20;
    a1 = v34;
    if (v41 != *(v34 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v14 & 0x3F));
    if (v24)
    {
      v16 = __clz(__rbit64(v24)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v17 << 6;
      v26 = v17 + 1;
      v27 = (v31 + 8 * v17);
      while (v26 < (v16 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_24B040A60(v14, v41, 0);
          v16 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_24B040A60(v14, v41, 0);
    }

LABEL_4:
    v15 = v40 + 1;
    v14 = v16;
    if (v40 + 1 == v32)
    {
      return v10;
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

uint64_t sub_24B20486C()
{
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
  sub_24B2D2584();

  v1 = *(v0 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__state);
  sub_24B21547C(v1, *(v0 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__state + 8));
  return v1;
}

double sub_24B20492C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
  sub_24B2D2584();

  v4 = *(v3 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__state);
  v5 = *(v3 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__state + 8);
  *a2 = v4;
  a2[1] = v5;
  return sub_24B21547C(v4, v5);
}

double sub_24B2049E4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
  sub_24B2D2574();

  return result;
}

uint64_t sub_24B204AB4()
{
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
  sub_24B2D2584();

  return *(v0 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__sort);
}

void sub_24B204B5C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__sort);
}

double sub_24B204C0C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
  sub_24B2D2574();

  return result;
}

double sub_24B204CDC(uint64_t a1, char a2)
{
  *(a1 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__sort) = a2;
  sub_24B207314();
  v3 = v2;
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
  sub_24B2D2574();
  sub_24B207228(v3);

  return result;
}

uint64_t sub_24B204DDC()
{
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
  sub_24B2D2584();

  v1 = *(v0 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__search);

  return v1;
}

double sub_24B204E98@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
  sub_24B2D2584();

  v4 = *(v3 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__search + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__search);
  a2[1] = v4;

  return result;
}

void sub_24B204F50(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__search);
  v6 = *(v2 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__search) == a1 && *(v2 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__search + 8) == a2;
  if (v6 || (sub_24B2D6004() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;

    sub_24B207314();
    v8 = v7;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
    sub_24B2D2574();
    sub_24B207228(v8);
  }

  else
  {
    v10 = swift_getKeyPath();
    MEMORY[0x28223BE20](v10);
    sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
    sub_24B2D2574();
  }
}

double sub_24B205168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__search);
  *v3 = a2;
  v3[1] = a3;

  sub_24B207314();
  v5 = v4;
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
  sub_24B2D2574();
  sub_24B207228(v5);

  return result;
}

uint64_t sub_24B2052A8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
  sub_24B2D2584();

  return *(v2 + *a2);
}

void sub_24B205348(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
  sub_24B2D2584();

  *a4 = *(v6 + *a3);
}

double sub_24B2053FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(v5 + *a2) == a1)
  {
    sub_24B207314();
    v7 = v6;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
    sub_24B2D2574();
    sub_24B207228(v7);
  }

  else
  {
    v9 = swift_getKeyPath();
    MEMORY[0x28223BE20](v9);
    sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
    sub_24B2D2574();
  }

  return result;
}

double sub_24B2055C0(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  *(a1 + *a3) = a2;
  sub_24B207314();
  v5 = v4;
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
  sub_24B2D2574();
  sub_24B207228(v5);

  return result;
}

void sub_24B2056BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85B8, &qword_24B2F15B0);
  MEMORY[0x28223BE20](v1 - 8);
  v148 = &v123 - v2;
  v3 = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  MEMORY[0x28223BE20](v3 - 8);
  v129 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE5F0, &qword_24B2F15B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v123 - v9;
  v136 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v146 = &v123 - v13;
  v152 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  v150 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v147 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v149 = &v123 - v16;
  v17 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  MEMORY[0x28223BE20](v17 - 8);
  v130 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE5F8, &unk_24B2F15C0);
  MEMORY[0x28223BE20](v19 - 8);
  v141 = (&v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v140 = &v123 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880, &unk_24B2DE440);
  MEMORY[0x28223BE20](v23 - 8);
  v133 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v142 = &v123 - v26;
  v27 = sub_24B2D1704();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v124 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v151 = &v123 - v31;
  MEMORY[0x28223BE20](v32);
  v154 = (&v123 - v33);
  MEMORY[0x28223BE20](v34);
  v125 = &v123 - v35;
  v139 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = &v123 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v153 = &v123 - v38;
  sub_24B2D2564();
  v39 = v162;
  v40 = v163;
  swift_getKeyPath();
  v157 = v0;
  v158 = v39;
  v159 = v40;
  v161 = v0;
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
  sub_24B2D2574();
  sub_24B207228(v39);

  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController_isAutomaticLocationsSubscriptionEnabled) == 1)
  {
    v131 = v10;
    v132 = v7;
    v126 = v0;
    v41 = *(v0 + 32);
    swift_getKeyPath();
    v162 = v41;
    sub_24B215C08(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider, &protocol conformance descriptor for SettingsPeopleRelationshipsProvider);
    sub_24B2D2584();

    v42 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__data;
    swift_beginAccess();
    v43 = *(v41 + v42);
    v44 = v43 + 64;
    v45 = 1 << *(v43 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & *(v43 + 64);
    v48 = (v45 + 63) >> 6;
    v155 = (v28 + 32);
    v145 = (v28 + 56);
    v128 = v28;
    v144 = (v28 + 48);
    v143 = v43;
    swift_bridgeObjectRetain_n();
    v49 = 0;
    v50 = &qword_27EFCE5F8;
    v127 = MEMORY[0x277D84F90];
    v156 = v27;
    while (1)
    {
      v51 = v49;
      if (!v47)
      {
        break;
      }

LABEL_9:
      v52 = v50;
      sub_24B215C50(*(v143 + 56) + *(v138 + 72) * (__clz(__rbit64(v47)) | (v49 << 6)), v153, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      sub_24B2D5694();
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v53 = v137;
      sub_24B215578(v153, v137, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v55 = v141;
      if (EnumCaseMultiPayload == 1)
      {
        sub_24B215578(v53, v141, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v56 = 0;
      }

      else
      {
        v56 = 1;
      }

      v57 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
      v58 = *(v57 - 8);
      (*(v58 + 56))(v55, v56, 1, v57);
      v59 = v55;
      v60 = v140;
      v50 = v52;
      sub_24B0391CC(v59, v140, v52, &unk_24B2F15C0);
      if ((*(v58 + 48))(v60, 1, v57) == 1)
      {
        sub_24AFF8258(v60, v52, &unk_24B2F15C0);
        v61 = 1;
        v62 = v142;
        v63 = v156;
      }

      else
      {
        v64 = v130;
        sub_24B215C50(v60, v130, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        sub_24B215CB8(v60, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v63 = v156;
        v62 = v142;
        (*v155)(v142, v64, v156);
        v61 = 0;
      }

      v47 &= v47 - 1;
      (*v145)(v62, v61, 1, v63);

      if ((*v144)(v62, 1, v63) == 1)
      {
        sub_24AFF8258(v62, &qword_27EFC7880, &unk_24B2DE440);
      }

      else
      {
        v65 = *v155;
        (*v155)(v125, v62, v63);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = sub_24B006728(0, *(v127 + 2) + 1, 1, v127);
        }

        v66 = v128;
        v68 = *(v127 + 2);
        v67 = *(v127 + 3);
        if (v68 >= v67 >> 1)
        {
          v70 = sub_24B006728((v67 > 1), v68 + 1, 1, v127);
          v66 = v128;
          v127 = v70;
        }

        v69 = v127;
        *(v127 + 2) = v68 + 1;
        v65(&v69[((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v68], v125, v63);
      }
    }

    while (1)
    {
      v49 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        goto LABEL_74;
      }

      if (v49 >= v48)
      {
        break;
      }

      v47 = *(v44 + 8 * v49);
      ++v51;
      if (v47)
      {
        goto LABEL_9;
      }
    }

    v71 = v127;
    v72 = *(v127 + 2);
    if (v72)
    {
      v161 = MEMORY[0x277D84F90];
      sub_24B007B8C(0, v72, 0);
      sub_24B2D5694();
      v153 = v161;
      v73 = *(v128 + 16);
      v74 = v71 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
      v75 = *(v128 + 72);
      do
      {
        v73(v154, v74, v156);
        sub_24B2D5684();
        sub_24B2D5604();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v76 = v149;
        (*v155)(v149, v154, v156);
        swift_storeEnumTagMultiPayload();

        v77 = v153;
        v161 = v153;
        v79 = *(v153 + 16);
        v78 = *(v153 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_24B007B8C((v78 > 1), v79 + 1, 1);
          v77 = v161;
        }

        *(v77 + 16) = v79 + 1;
        v80 = (*(v150 + 80) + 32) & ~*(v150 + 80);
        v153 = v77;
        sub_24B215578(v76, v77 + v80 + *(v150 + 72) * v79, type metadata accessor for SettingsContactsProvider.Subscription);
        v74 += v75;
        --v72;
      }

      while (v72);
    }

    else
    {

      v153 = MEMORY[0x277D84F90];
    }

    v81 = *(v126 + 40);
    swift_getKeyPath();
    v161 = v81;
    sub_24B215C08(&qword_27EFCE610, type metadata accessor for SettingsFamilyRelationshipsProvider, &protocol conformance descriptor for SettingsFamilyRelationshipsProvider);
    sub_24B2D2584();

    v82 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__data;
    swift_beginAccess();
    v83 = *(v81 + v82);
    v84 = v83 + 64;
    v85 = 1 << v83[32];
    v86 = -1;
    if (v85 < 64)
    {
      v86 = ~(-1 << v85);
    }

    v87 = v86 & *(v83 + 8);
    v88 = (v85 + 63) >> 6;
    v154 = (v128 + 16);
    swift_bridgeObjectRetain_n();
    v89 = 0;
    v141 = MEMORY[0x277D84F90];
    v90 = &qword_27EFCE5F0;
    v142 = v83;
    while (v87)
    {
      v91 = v89;
LABEL_41:
      sub_24B215C50(*(v83 + 7) + *(v135 + 72) * (__clz(__rbit64(v87)) | (v91 << 6)), v146, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      sub_24B2D5694();
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v92 = v90;
      v93 = v134;
      sub_24B215578(v146, v134, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v94 = v132;
        sub_24B215578(v93, v132, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
        v95 = 0;
      }

      else
      {
        v95 = 1;
        v94 = v132;
      }

      v96 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState(0);
      v97 = *(v96 - 8);
      (*(v97 + 56))(v94, v95, 1, v96);
      v98 = v94;
      v99 = v131;
      v90 = v92;
      sub_24B0391CC(v98, v131, v92, &qword_24B2F15B8);
      if ((*(v97 + 48))(v99, 1, v96) == 1)
      {
        sub_24AFF8258(v99, v92, &qword_24B2F15B8);
        v100 = 1;
        v101 = v156;
        v102 = v133;
      }

      else
      {
        v103 = v129;
        sub_24B215C50(v99, v129, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
        sub_24B215CB8(v99, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
        v102 = v133;
        v101 = v156;
        (*v154)(v133, v103, v156);
        sub_24B215CB8(v103, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
        v100 = 0;
      }

      v83 = v142;
      v87 &= v87 - 1;
      (*v145)(v102, v100, 1, v101);

      if ((*v144)(v102, 1, v101) == 1)
      {
        sub_24AFF8258(v102, &qword_27EFC7880, &unk_24B2DE440);
        v89 = v91;
      }

      else
      {
        v104 = *v155;
        (*v155)(v124, v102, v156);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v141 = sub_24B006728(0, v141[2] + 1, 1, v141);
        }

        v105 = v128;
        v107 = v141[2];
        v106 = v141[3];
        if (v107 >= v106 >> 1)
        {
          v109 = sub_24B006728((v106 > 1), v107 + 1, 1, v141);
          v105 = v128;
          v141 = v109;
        }

        v108 = v141;
        v141[2] = v107 + 1;
        v104(&v108[((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v107], v124, v156);
        v89 = v91;
      }
    }

    while (1)
    {
      v91 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        break;
      }

      if (v91 >= v88)
      {

        v110 = v141;
        v111 = v141[2];
        if (v111)
        {
          sub_24B2D5694();
          v112 = v110 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
          v113 = *(v128 + 72);
          v149 = *(v128 + 16);
          v114 = (v150 + 56);
          v115 = (v150 + 48);
          v116 = MEMORY[0x277D84F90];
          (v149)(v151, v112, v156);
          while (1)
          {
            sub_24B2D5684();
            sub_24B2D5604();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            v117 = v148;
            (*v155)(v148, v151, v156);
            v118 = v152;
            swift_storeEnumTagMultiPayload();
            (*v114)(v117, 0, 1, v118);

            if ((*v115)(v117, 1, v118) == 1)
            {
              sub_24AFF8258(v117, &qword_27EFC85B8, &qword_24B2F15B0);
            }

            else
            {
              sub_24B215578(v117, v147, type metadata accessor for SettingsContactsProvider.Subscription);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v116 = sub_24B006EAC(0, v116[2] + 1, 1, v116);
              }

              v120 = v116[2];
              v119 = v116[3];
              if (v120 >= v119 >> 1)
              {
                v116 = sub_24B006EAC((v119 > 1), v120 + 1, 1, v116);
              }

              v116[2] = v120 + 1;
              sub_24B215578(v147, v116 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v120, type metadata accessor for SettingsContactsProvider.Subscription);
            }

            v112 += v113;
            if (!--v111)
            {
              break;
            }

            (v149)(v151, v112, v156);
          }
        }

        else
        {

          v116 = MEMORY[0x277D84F90];
        }

        v160 = v153;
        sub_24B03339C(v116);
        v121 = v126;
        v122 = sub_24B1D1498(v160);

        sub_24B20A7A0(v122, *(v121 + 16), *(v121 + 24));

        return;
      }

      v87 = *&v84[8 * v91];
      ++v89;
      if (v87)
      {
        goto LABEL_41;
      }
    }

LABEL_74:
    __break(1u);
  }
}

char *sub_24B206C2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_24B2D56D4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v7 = v0[2];
  v6 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[6];
  sub_24B2D5694();

  v11 = sub_24B2D5684();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v8;
  v12[5] = v7;
  v12[6] = v6;
  v12[7] = v9;
  v12[8] = v10;
  sub_24B00A9A4(0, 0, v4, &unk_24B2F15A8, v12);

  v14 = OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController_logger;
  v15 = sub_24B2D3184();
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  sub_24B207228(*(v1 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__state));

  v16 = OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController___observationRegistrar;
  v17 = sub_24B2D25C4();
  (*(*(v17 - 8) + 8))(v1 + v16, v17);
  return v1;
}

uint64_t sub_24B206E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_24B2D5694();
  v8[7] = sub_24B2D5684();
  v10 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B206EFC, v10, v9);
}

uint64_t sub_24B206EFC()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_24B25AC90(v2, v1);
  sub_24B25AFA8(v2, v1);
  sub_24B25B2C0(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_24B206FA0()
{
  sub_24B206C2C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SettingsPeopleListController(uint64_t a1)
{
  result = qword_27EFCE5E0;
  if (!qword_27EFCE5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B20704C(uint64_t a1)
{
  result = sub_24B2D3184();
  if (v2 <= 0x3F)
  {
    result = sub_24B2D25C4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24B20714C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B206E5C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24B207228(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_24B207268(uint64_t *a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B207314();
  v3 = v2;
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
}

void sub_24B207314()
{
  v308 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState(0);
  MEMORY[0x28223BE20](v308);
  v297 = &v283 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v284 = &v283 - v3;
  MEMORY[0x28223BE20](v4);
  v298 = &v283 - v5;
  MEMORY[0x28223BE20](v6);
  v286 = &v283 - v7;
  v307 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState(0);
  MEMORY[0x28223BE20](v307);
  v287 = &v283 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v283 = &v283 - v10;
  MEMORY[0x28223BE20](v11);
  v288 = &v283 - v12;
  MEMORY[0x28223BE20](v13);
  v285 = &v283 - v14;
  v320 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  MEMORY[0x28223BE20](v320);
  v16 = &v283 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v306 = &v283 - v18;
  MEMORY[0x28223BE20](v19);
  v305 = &v283 - v20;
  MEMORY[0x28223BE20](v21);
  v318 = &v283 - v22;
  MEMORY[0x28223BE20](v23);
  v313 = &v283 - v24;
  MEMORY[0x28223BE20](v25);
  v312 = &v283 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE5F8, &unk_24B2F15C0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v283 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v283 - v31;
  MEMORY[0x28223BE20](v33);
  v303 = &v283 - v34;
  MEMORY[0x28223BE20](v35);
  v302 = &v283 - v36;
  MEMORY[0x28223BE20](v37);
  v301 = &v283 - v38;
  MEMORY[0x28223BE20](v39);
  v325 = &v283 - v40;
  MEMORY[0x28223BE20](v41);
  v317 = &v283 - v42;
  MEMORY[0x28223BE20](v43);
  v311 = (&v283 - v44);
  MEMORY[0x28223BE20](v45);
  v316 = &v283 - v46;
  MEMORY[0x28223BE20](v47);
  v310 = (&v283 - v48);
  MEMORY[0x28223BE20](v49);
  v309 = &v283 - v50;
  MEMORY[0x28223BE20](v51);
  v331 = (&v283 - v52);
  v326 = sub_24B2D21C4();
  v299 = *(v326 - 8);
  MEMORY[0x28223BE20](v326);
  v334 = &v283 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v335 = &v283 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE640, &unk_24B2F1690);
  MEMORY[0x28223BE20](v56 - 8);
  v327 = &v283 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v348 = &v283 - v59;
  v343 = type metadata accessor for SettingsPersonInfo(0);
  v346 = *(v343 - 8);
  MEMORY[0x28223BE20](v343);
  v337 = &v283 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v341 = &v283 - v62;
  MEMORY[0x28223BE20](v63);
  v323 = &v283 - v64;
  MEMORY[0x28223BE20](v65);
  v344 = &v283 - v66;
  MEMORY[0x28223BE20](v67);
  v338 = &v283 - v68;
  MEMORY[0x28223BE20](v69);
  v342 = &v283 - v70;
  MEMORY[0x28223BE20](v71);
  v324 = &v283 - v72;
  MEMORY[0x28223BE20](v73);
  v336 = &v283 - v74;
  MEMORY[0x28223BE20](v75);
  v329 = &v283 - v76;
  MEMORY[0x28223BE20](v77);
  v321 = &v283 - v78;
  MEMORY[0x28223BE20](v79);
  v296 = &v283 - v80;
  MEMORY[0x28223BE20](v81);
  v295 = &v283 - v82;
  v322 = sub_24B2D1704();
  v83 = *(v322 - 1);
  MEMORY[0x28223BE20](v322);
  v328 = &v283 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE298, &qword_24B2F0390);
  MEMORY[0x28223BE20](v347);
  v330 = &v283 - v85;
  v349 = v0;
  v86 = *(v0 + 32);
  swift_getKeyPath();
  v356[0] = v86;
  sub_24B215C08(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider, &protocol conformance descriptor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v87 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__data;
  swift_beginAccess();
  v88 = *(v86 + v87);
  swift_bridgeObjectRetain_n();
  v89 = 0;
  v90 = sub_24B2044A4(v88);
  v339 = v88;

  v91 = sub_24B1D12FC(v90);

  v92 = *(v91 + 16);
  v304 = v32;
  if (v92)
  {
    v93 = sub_24B007564(v92, 0);
    sub_24B0363DC(v356, (v93 + ((*(v83 + 80) + 32) & ~*(v83 + 80))), v92, v91);
    v345 = v94;
    v95 = v356[0];
    v89 = v356[2];
    v340 = v356[3];
    v333 = v356[4];

    sub_24B0363BC(v95);
    if (v345 != v92)
    {
LABEL_196:
      __break(1u);

      (*v93)(v83, v95);

      __break(1u);

      __break(1u);
      return;
    }

    v89 = 0;
  }

  else
  {
    v93 = MEMORY[0x277D84F90];
  }

  v315 = v29;
  v300 = v16;
  v356[0] = v93;
  sub_24B213D84(v356);

  v332 = v356[0];
  v96 = v349;
  v97 = *(v349 + 40);
  swift_getKeyPath();
  v356[0] = v97;
  sub_24B215C08(&qword_27EFCE610, type metadata accessor for SettingsFamilyRelationshipsProvider, &protocol conformance descriptor for SettingsFamilyRelationshipsProvider);
  sub_24B2D2584();

  v98 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__data;
  swift_beginAccess();
  v99 = *(v97 + v98);
  v100 = *(v96 + 48);
  swift_getKeyPath();
  v355[1] = v100;
  sub_24B215C08(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);

  sub_24B2D2584();

  v101 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__data;
  swift_beginAccess();
  v102 = *&v100[v101];
  v93 = v99 + 64;
  v103 = 1 << *(v99 + 32);
  v104 = -1;
  if (v103 < 64)
  {
    v104 = ~(-1 << v103);
  }

  v105 = v104 & *(v99 + 64);
  v95 = (v103 + 63) >> 6;
  v106 = (v346 + 48);
  v340 = v99;

  v333 = v102;

  v107 = 0;
  v345 = MEMORY[0x277D84F90];
  v314 = MEMORY[0x277D84F90];
  v108 = v327;
  v319 = v106;
  if (v105)
  {
    while (1)
    {
      v109 = v107;
LABEL_12:
      v110 = __clz(__rbit64(v105));
      v105 &= v105 - 1;
      v111 = v110 | (v109 << 6);
      v112 = v340;
      v113 = *(v340 + 48);
      v114 = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
      v115 = v330;
      sub_24B215C50(v113 + *(*(v114 - 8) + 72) * v111, v330, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
      v116 = *(v112 + 56);
      v117 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
      sub_24B215C50(v116 + *(*(v117 - 8) + 72) * v111, v115 + *(v347 + 48), type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      v118 = v348;
      sub_24B211344(v115, v339, v333, v112, v348);
      sub_24AFF8258(v115, &qword_27EFCE298, &qword_24B2F0390);
      v106 = v319;
      if ((*v319)(v118, 1, v343) == 1)
      {
        sub_24AFF8258(v118, &qword_27EFCE640, &unk_24B2F1690);
      }

      else
      {
        v119 = v295;
        sub_24B215578(v118, v295, type metadata accessor for SettingsPersonInfo);
        sub_24B215578(v119, v296, type metadata accessor for SettingsPersonInfo);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v314 = sub_24B006E84(0, v314[2] + 1, 1, v314);
        }

        v121 = v314[2];
        v120 = v314[3];
        if (v121 >= v120 >> 1)
        {
          v314 = sub_24B006E84((v120 > 1), v121 + 1, 1, v314);
        }

        v122 = v314;
        v314[2] = v121 + 1;
        sub_24B215578(v296, v122 + ((*(v346 + 80) + 32) & ~*(v346 + 80)) + *(v346 + 72) * v121, type metadata accessor for SettingsPersonInfo);
      }

      v107 = v109;
      v108 = v327;
      if (!v105)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v109 = v107 + 1;
    if (__OFADD__(v107, 1))
    {
      __break(1u);
      goto LABEL_191;
    }

    if (v109 >= v95)
    {
      break;
    }

    v105 = *(v93 + 8 * v109);
    ++v107;
    if (v105)
    {
      goto LABEL_12;
    }
  }

  v352 = v314;
  swift_getKeyPath();
  v123 = OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController___observationRegistrar;
  v124 = v349;
  v350 = v349;
  v347 = sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController, &unk_24B2F1578);
  v348 = v123;
  sub_24B2D2584();

  v294 = OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__sort;
  v296 = sub_24B2165C8(*(v124 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__sort));
  v350 = v296;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE648, &qword_24B2F16F0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE650, &qword_24B2F16F8);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8048, &qword_24B2F1700);
  v128 = MEMORY[0x277D83970];
  v93 = sub_24B039184(&qword_27EFCE658, &qword_27EFCE648, &qword_24B2F16F0, MEMORY[0x277D83970]);
  v129 = sub_24B039184(&qword_27EFCE660, &qword_27EFCE650, &qword_24B2F16F8, v128);
  v130 = sub_24B039184(&qword_27EFCE668, &qword_27EFC8048, &qword_24B2F1700, MEMORY[0x277CC8A08]);
  v295 = v125;
  v293 = v126;
  v292 = v127;
  v291 = v93;
  v290 = v129;
  v289 = v130;
  v330 = sub_24B2D54C4();

  v355[0] = MEMORY[0x277D84F90];
  v131 = v332;
  v132 = *(v332 + 16);
  if (v132)
  {
    v133 = 0;
    v93 = v83 + 8;
    v345 = MEMORY[0x277D84F90];
    v95 = v322;
    while (v133 < *(v131 + 16))
    {
      v134 = v131 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v133;
      v135 = v83;
      v136 = *(v83 + 16);
      v137 = v328;
      v136(v328, v134, v95);
      sub_24B212158(v137, v339, v333, v349, v355, v340, v108);
      (*v93)(v137, v95);
      if ((*v106)(v108, 1, v343) == 1)
      {
        sub_24AFF8258(v108, &qword_27EFCE640, &unk_24B2F1690);
        v83 = v135;
        v131 = v332;
      }

      else
      {
        v138 = v108;
        v139 = v321;
        sub_24B215578(v138, v321, type metadata accessor for SettingsPersonInfo);
        sub_24B215578(v139, v329, type metadata accessor for SettingsPersonInfo);
        v140 = v345;
        v83 = v135;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = sub_24B006E84(0, v140[2] + 1, 1, v140);
        }

        v131 = v332;
        v345 = v140;
        v142 = v140[2];
        v141 = v140[3];
        if (v142 >= v141 >> 1)
        {
          v345 = sub_24B006E84((v141 > 1), v142 + 1, 1, v345);
        }

        v143 = v345;
        v345[2] = v142 + 1;
        sub_24B215578(v329, v143 + ((*(v346 + 80) + 32) & ~*(v346 + 80)) + *(v346 + 72) * v142, type metadata accessor for SettingsPersonInfo);
        v108 = v327;
        v95 = v322;
      }

      if (v132 == ++v133)
      {
        goto LABEL_32;
      }
    }

LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

LABEL_32:

  v352 = v345;
  swift_getKeyPath();
  v144 = v349;
  v350 = v349;
  sub_24B2D2584();

  v350 = sub_24B2165C8(*(v144 + v294));
  v95 = sub_24B2D54C4();

  v345 = (v144 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__search);
  v145 = *(v95 + 16);
  v340 = v95;
  v329 = v145;
  if (v145)
  {
    v146 = 0;
    v328 = *MEMORY[0x277CBD078];
    v327 = *MEMORY[0x277CBD000];
    v322 = (v299 + 8);
    v321 = *MEMORY[0x277CBCFF8];
    v89 = MEMORY[0x277D84F90];
    v83 = v324;
    v147 = v336;
    while (1)
    {
      if (v146 >= *(v95 + 16))
      {
        goto LABEL_192;
      }

      v149 = ((*(v346 + 80) + 32) & ~*(v346 + 80));
      v339 = *(v346 + 72);
      sub_24B215C50(v149 + v95 + v339 * v146, v147, type metadata accessor for SettingsPersonInfo);
      sub_24B2D5694();
      v150 = sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_getKeyPath();
      v352 = v349;
      sub_24B2D2584();

      v151 = *v345;
      v93 = v345[1];
      v152 = HIBYTE(v93) & 0xF;
      if ((v93 & 0x2000000000000000) == 0)
      {
        v152 = v151 & 0xFFFFFFFFFFFFLL;
      }

      if (!v152)
      {

LABEL_56:
        v147 = v336;
        sub_24B215578(v336, v83, type metadata accessor for SettingsPersonInfo);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v354 = v89;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24B007B48(0, v89[2] + 1, 1);
          v89 = v354;
        }

        v93 = v89[2];
        v173 = v89[3];
        if (v93 >= v173 >> 1)
        {
          sub_24B007B48((v173 > 1), v93 + 1, 1);
          v89 = v354;
        }

        v89[2] = v93 + 1;
        sub_24B215578(v83, v149 + v89 + v93 * v339, type metadata accessor for SettingsPersonInfo);
        goto LABEL_35;
      }

      v153 = *(v147 + *(v343 + 24));
      v333 = v149;
      v332 = v150;
      if (!v153)
      {
        break;
      }

      sub_24B2D21B4();
      if ([v153 isKeyAvailable_])
      {
        v154 = [v153 nickname];
        sub_24B2D5394();

        sub_24B2D21A4();
      }

      if ([v153 isKeyAvailable_])
      {
        v155 = [v153 givenName];
        sub_24B2D5394();

        sub_24B2D2174();
      }

      if ([v153 isKeyAvailable_])
      {
        v156 = [v153 familyName];
        sub_24B2D5394();

        sub_24B2D2184();
      }

      v157 = objc_opt_self();
      v158 = v335;
      v159 = sub_24B2D2194();
      v160 = [v157 localizedStringFromPersonNameComponents:v159 style:2 options:0];

      sub_24B2D5394();
      (*v322)(v158, v326);
      v161 = sub_24B2D52C4();
      v163 = v162;

      if (!v163)
      {
        goto LABEL_53;
      }

      v167 = v89;
LABEL_54:
      v352 = v161;
      v353 = v163;
      v350 = v151;
      v351 = v93;
      sub_24AFFE0A4(v164, v165, v166);
      v169 = sub_24B2D5AE4();

      v352 = sub_24B2D16F4();
      v353 = v170;
      v350 = v151;
      v351 = v93;
      v171 = sub_24B2D5AE4();

      v83 = v324;
      v89 = v167;
      v149 = v333;
      if (v169 & 1) != 0 || (v171)
      {
        goto LABEL_56;
      }

      v147 = v336;
      sub_24B215CB8(v336, type metadata accessor for SettingsPersonInfo);
LABEL_35:
      v95 = v340;
      v148 = v331;
      if (v329 == ++v146)
      {
        goto LABEL_62;
      }
    }

LABEL_53:
    v167 = v89;
    v161 = sub_24B2D16D4();
    v163 = v168;

    goto LABEL_54;
  }

  v89 = MEMORY[0x277D84F90];
  v148 = v331;
LABEL_62:
  v336 = v89[2];
  if (v336)
  {
    v174 = 0;
    v333 = v148 + 1;
    v93 = MEMORY[0x277D84F90];
    v335 = OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__filterStorage;
    while (1)
    {
      if (v174 >= v89[2])
      {
        goto LABEL_193;
      }

      v175 = (*(v346 + 80) + 32) & ~*(v346 + 80);
      v83 = *(v346 + 72);
      sub_24B215C50(v89 + v175 + v83 * v174, v342, type metadata accessor for SettingsPersonInfo);
      sub_24B2D5694();
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_getKeyPath();
      v350 = v349;
      v95 = v349 + v348;
      sub_24B2D2584();

      v176 = v345[1];
      v177 = *v345 & 0xFFFFFFFFFFFFLL;
      if ((v176 & 0x2000000000000000) != 0)
      {
        v177 = HIBYTE(v176) & 0xF;
      }

      if (v177)
      {
        goto LABEL_74;
      }

      swift_getKeyPath();
      v181 = v349;
      v350 = v349;
      v95 = v349 + v348;
      sub_24B2D2584();

      v182 = v335[v181];
      if (v182 <= 1)
      {
        if (!v335[v181])
        {
          goto LABEL_74;
        }

        goto LABEL_65;
      }

      v339 = v93;
      if (v182 != 2)
      {
        break;
      }

      v188 = v312;
      sub_24B215C50(v342 + *(v343 + 20), v312, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v189 = v309;
        sub_24B215578(v188, v309, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v190 = 0;
      }

      else
      {
        v190 = 1;
        v189 = v309;
      }

      v95 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
      v193 = *(v95 - 8);
      (*(v193 + 56))(v189, v190, 1, v95);
      v194 = v189;
      v195 = v331;
      sub_24B0391CC(v194, v331, &qword_27EFCE5F8, &unk_24B2F15C0);
      if ((*(v193 + 48))(v195, 1, v95) == 1)
      {
        goto LABEL_64;
      }

      v196 = *(v333 + *(v95 + 32));
      sub_24B215CB8(v195, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);

      v93 = v339;
      if ((v196 & 1) == 0)
      {
        goto LABEL_75;
      }

LABEL_66:
      sub_24B215CB8(v342, type metadata accessor for SettingsPersonInfo);
LABEL_67:
      if (v336 == ++v174)
      {
        goto LABEL_110;
      }
    }

    v183 = v318;
    v184 = v317;
    v185 = v316;
    if (v182 == 3)
    {
      v186 = v313;
      sub_24B215C50(v342 + *(v343 + 20), v313, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_24B215578(v186, v185, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v187 = 0;
      }

      else
      {
        v187 = 1;
      }

      v95 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
      v197 = *(v95 - 8);
      (*(v197 + 56))(v185, v187, 1, v95);
      v198 = v185;
      v195 = v310;
      sub_24B0391CC(v198, v310, &qword_27EFCE5F8, &unk_24B2F15C0);
      if ((*(v197 + 48))(v195, 1, v95) != 1)
      {
        v199 = v285;
        sub_24B215C50(v195 + *(v95 + 28), v285, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
        sub_24B215CB8(v195, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v95 = v288;
        sub_24B215578(v199, v288, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v93 = v339;
        if (!EnumCaseMultiPayload)
        {
          goto LABEL_105;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v201 = &v320;
          goto LABEL_108;
        }

LABEL_65:

        goto LABEL_66;
      }
    }

    else
    {
      sub_24B215C50(v342 + *(v343 + 20), v318, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      v191 = swift_getEnumCaseMultiPayload();
      if (v191 == 1)
      {
        sub_24B215578(v183, v184, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v192 = 0;
      }

      else
      {
        v192 = 1;
      }

      v202 = v184;
      v95 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
      v203 = *(v95 - 8);
      (*(v203 + 56))(v202, v192, 1, v95);
      v204 = v202;
      v195 = v311;
      sub_24B0391CC(v204, v311, &qword_27EFCE5F8, &unk_24B2F15C0);
      if ((*(v203 + 48))(v195, 1, v95) != 1)
      {
        v205 = v286;
        sub_24B215C50(v195 + *(v95 + 24), v286, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
        sub_24B215CB8(v195, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v95 = v298;
        sub_24B215578(v205, v298, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
        v206 = swift_getEnumCaseMultiPayload();
        if (v206 > 1)
        {
          v93 = v339;
          if (v206 == 2)
          {
            goto LABEL_107;
          }
        }

        else
        {
          v93 = v339;
          if (!v206)
          {
LABEL_105:
            v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458, &qword_24B2F1760);
            sub_24AFF8258(v95 + *(v207 + 48), &qword_27EFC8450, &qword_24B2DE7A0);
            sub_24AFF8258(v95, &qword_27EFC8450, &qword_24B2DE7A0);
LABEL_74:

LABEL_75:
            sub_24B215578(v342, v338, type metadata accessor for SettingsPersonInfo);
            v178 = swift_isUniquelyReferenced_nonNull_native();
            v352 = v93;
            if ((v178 & 1) == 0)
            {
              v95 = &v352;
              sub_24B007B48(0, *(v93 + 16) + 1, 1);
              v93 = v352;
            }

            v180 = *(v93 + 16);
            v179 = *(v93 + 24);
            if (v180 >= v179 >> 1)
            {
              v95 = &v352;
              sub_24B007B48((v179 > 1), v180 + 1, 1);
              v93 = v352;
            }

            *(v93 + 16) = v180 + 1;
            sub_24B215578(v338, v93 + v175 + v180 * v83, type metadata accessor for SettingsPersonInfo);
            goto LABEL_67;
          }

LABEL_107:
          v201 = &v330;
LABEL_108:
          sub_24AFF8258(*(v201 - 32), &qword_27EFC8450, &qword_24B2DE7A0);
        }

        goto LABEL_65;
      }
    }

LABEL_64:
    sub_24AFF8258(v195, &qword_27EFCE5F8, &unk_24B2F15C0);
    v93 = v339;
    goto LABEL_65;
  }

  v93 = MEMORY[0x277D84F90];
LABEL_110:

  v208 = v330;
  v335 = *(v330 + 16);
  v339 = v93;
  if (v335)
  {
    v93 = 0;
    v333 = *MEMORY[0x277CBD078];
    v332 = *MEMORY[0x277CBD000];
    v331 = (v299 + 8);
    v329 = *MEMORY[0x277CBCFF8];
    v209 = MEMORY[0x277D84F90];
    v210 = v325;
    v211 = v323;
    v212 = v344;
    while (1)
    {
      if (v93 >= *(v208 + 16))
      {
        goto LABEL_194;
      }

      v214 = (*(v346 + 80) + 32) & ~*(v346 + 80);
      v215 = *(v346 + 72);
      sub_24B215C50(v208 + v214 + v215 * v93, v212, type metadata accessor for SettingsPersonInfo);
      sub_24B2D5694();
      v216 = sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_getKeyPath();
      v352 = v349;
      v95 = v349 + v348;
      sub_24B2D2584();

      v89 = *v345;
      v217 = v345[1];
      v218 = HIBYTE(v217) & 0xF;
      if ((v217 & 0x2000000000000000) == 0)
      {
        v218 = v89 & 0xFFFFFFFFFFFFLL;
      }

      v342 = v215;
      if (!v218)
      {

LABEL_134:
        sub_24B215578(v344, v211, type metadata accessor for SettingsPersonInfo);
        v236 = swift_isUniquelyReferenced_nonNull_native();
        v354 = v209;
        if ((v236 & 1) == 0)
        {
          v95 = &v354;
          sub_24B007B48(0, *(v209 + 16) + 1, 1);
          v209 = v354;
        }

        v237 = v342;
        v89 = *(v209 + 16);
        v238 = *(v209 + 24);
        v83 = v89 + 1;
        if (v89 >= v238 >> 1)
        {
          v95 = &v354;
          sub_24B007B48((v238 > 1), v89 + 1, 1);
          v209 = v354;
        }

        *(v209 + 16) = v83;
        sub_24B215578(v211, v209 + v214 + v89 * v237, type metadata accessor for SettingsPersonInfo);
        v212 = v344;
        goto LABEL_113;
      }

      v219 = *(v344 + *(v343 + 24));
      v338 = v214;
      v336 = v216;
      if (!v219)
      {
        break;
      }

      sub_24B2D21B4();
      if ([v219 isKeyAvailable_])
      {
        v220 = [v219 nickname];
        sub_24B2D5394();

        sub_24B2D21A4();
      }

      if ([v219 isKeyAvailable_])
      {
        v221 = [v219 givenName];
        sub_24B2D5394();

        sub_24B2D2174();
      }

      if ([v219 isKeyAvailable_])
      {
        v222 = [v219 familyName];
        sub_24B2D5394();

        sub_24B2D2184();
      }

      v223 = objc_opt_self();
      v224 = v334;
      v225 = sub_24B2D2194();
      v226 = [v223 localizedStringFromPersonNameComponents:v225 style:2 options:0];

      sub_24B2D5394();
      (*v331)(v224, v326);
      v227 = sub_24B2D52C4();
      v229 = v228;

      if (!v229)
      {
        goto LABEL_131;
      }

      v83 = v209;
LABEL_132:
      v352 = v227;
      v353 = v229;
      v350 = v89;
      v351 = v217;
      sub_24AFFE0A4(v230, v231, v232);
      v234 = sub_24B2D5AE4();

      v352 = sub_24B2D16F4();
      v353 = v235;
      v350 = v89;
      v351 = v217;
      v95 = sub_24B2D5AE4();

      v210 = v325;
      v211 = v323;
      v209 = v83;
      v214 = v338;
      if (v234 & 1) != 0 || (v95)
      {
        goto LABEL_134;
      }

      v213 = v344;
      sub_24B215CB8(v344, type metadata accessor for SettingsPersonInfo);
      v212 = v213;
LABEL_113:
      v208 = v330;
      if (v335 == ++v93)
      {
        goto LABEL_140;
      }
    }

LABEL_131:
    v83 = v209;
    v227 = sub_24B2D16D4();
    v229 = v233;

    goto LABEL_132;
  }

  v209 = MEMORY[0x277D84F90];
  v210 = v325;
LABEL_140:

  v95 = v339;
  v342 = *(v209 + 16);
  if (v342)
  {
    v83 = 0;
    v336 = v210 + 8;
    v239 = MEMORY[0x277D84F90];
    v338 = OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__familyFilterStorage;
    v240 = &qword_27EFCE5F8;
    while (1)
    {
      if (v83 >= *(v209 + 16))
      {
        goto LABEL_195;
      }

      v89 = v240;
      v344 = (*(v346 + 80) + 32) & ~*(v346 + 80);
      v93 = *(v346 + 72);
      sub_24B215C50(v209 + v344 + v93 * v83, v341, type metadata accessor for SettingsPersonInfo);
      sub_24B2D5694();
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_getKeyPath();
      v350 = v349;
      sub_24B2D2584();

      v244 = v345[1];
      v245 = *v345 & 0xFFFFFFFFFFFFLL;
      if ((v244 & 0x2000000000000000) != 0)
      {
        v245 = HIBYTE(v244) & 0xF;
      }

      if (v245)
      {
        goto LABEL_153;
      }

      swift_getKeyPath();
      v249 = v349;
      v350 = v349;
      sub_24B2D2584();

      v250 = *(v249 + v338);
      if (v250 <= 1)
      {
        if (!*(v249 + v338))
        {
          goto LABEL_153;
        }

        goto LABEL_144;
      }

      if (v250 != 2)
      {
        break;
      }

      v255 = v305;
      sub_24B215C50(v341 + *(v343 + 20), v305, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      v256 = swift_getEnumCaseMultiPayload();
      v257 = v301;
      if (v256 == 1)
      {
        sub_24B215578(v255, v301, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v258 = 0;
      }

      else
      {
        v258 = 1;
      }

      v262 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
      v263 = *(v262 - 8);
      (*(v263 + 56))(v257, v258, 1, v262);
      v264 = v257;
      v265 = v325;
      v240 = v89;
      v266 = v89;
      v89 = &unk_24B2F15C0;
      sub_24B0391CC(v264, v325, v266, &unk_24B2F15C0);
      if ((*(v263 + 48))(v265, 1, v262) == 1)
      {
        goto LABEL_142;
      }

      v267 = *(v336 + *(v262 + 32));
      sub_24B215CB8(v265, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);

      if ((v267 & 1) == 0)
      {
        goto LABEL_154;
      }

LABEL_145:
      sub_24B215CB8(v341, type metadata accessor for SettingsPersonInfo);
LABEL_146:
      ++v83;
      v95 = v339;
      if (v342 == v83)
      {
        goto LABEL_189;
      }
    }

    v251 = v315;
    if (v250 == 3)
    {
      v252 = v306;
      sub_24B215C50(v341 + *(v343 + 20), v306, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v253 = v303;
        sub_24B215578(v252, v303, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v254 = 0;
      }

      else
      {
        v254 = 1;
        v253 = v303;
      }

      v268 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
      v269 = *(v268 - 8);
      (*(v269 + 56))(v253, v254, 1, v268);
      v270 = v253;
      v265 = v302;
      v240 = v89;
      v271 = v89;
      v89 = &unk_24B2F15C0;
      sub_24B0391CC(v270, v302, v271, &unk_24B2F15C0);
      if ((*(v269 + 48))(v265, 1, v268) != 1)
      {
        v272 = v283;
        sub_24B215C50(v265 + *(v268 + 28), v283, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
        sub_24B215CB8(v265, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v273 = v287;
        sub_24B215578(v272, v287, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
        v274 = swift_getEnumCaseMultiPayload();
        if (!v274)
        {
          goto LABEL_184;
        }

        if (v274 == 1)
        {
          v275 = &v319;
          goto LABEL_187;
        }

        goto LABEL_144;
      }
    }

    else
    {
      v259 = v300;
      sub_24B215C50(v341 + *(v343 + 20), v300, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      v260 = swift_getEnumCaseMultiPayload();
      if (v260 == 1)
      {
        sub_24B215578(v259, v251, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v261 = 0;
      }

      else
      {
        v261 = 1;
      }

      v276 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
      v277 = *(v276 - 8);
      (*(v277 + 56))(v251, v261, 1, v276);
      v278 = v251;
      v265 = v304;
      v240 = v89;
      v279 = v89;
      v89 = &unk_24B2F15C0;
      sub_24B0391CC(v278, v304, v279, &unk_24B2F15C0);
      if ((*(v277 + 48))(v265, 1, v276) != 1)
      {
        v280 = v284;
        sub_24B215C50(v265 + *(v276 + 24), v284, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
        sub_24B215CB8(v265, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v273 = v297;
        sub_24B215578(v280, v297, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
        v281 = swift_getEnumCaseMultiPayload();
        if (v281 > 1)
        {
          if (v281 == 2)
          {
            goto LABEL_186;
          }
        }

        else
        {
          if (!v281)
          {
LABEL_184:
            v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458, &qword_24B2F1760);
            v89 = &qword_24B2DE7A0;
            sub_24AFF8258(v273 + *(v282 + 48), &qword_27EFC8450, &qword_24B2DE7A0);
            sub_24AFF8258(v273, &qword_27EFC8450, &qword_24B2DE7A0);
LABEL_153:

LABEL_154:
            sub_24B215578(v341, v337, type metadata accessor for SettingsPersonInfo);
            v246 = swift_isUniquelyReferenced_nonNull_native();
            v352 = v239;
            if ((v246 & 1) == 0)
            {
              sub_24B007B48(0, *(v239 + 16) + 1, 1);
              v239 = v352;
            }

            v248 = *(v239 + 16);
            v247 = *(v239 + 24);
            if (v248 >= v247 >> 1)
            {
              sub_24B007B48((v247 > 1), v248 + 1, 1);
              v239 = v352;
            }

            *(v239 + 16) = v248 + 1;
            sub_24B215578(v337, v239 + v344 + v248 * v93, type metadata accessor for SettingsPersonInfo);
            goto LABEL_146;
          }

LABEL_186:
          v275 = &v329;
LABEL_187:
          v241 = *(v275 - 32);
          v242 = &qword_27EFC8450;
          v243 = &qword_24B2DE7A0;
LABEL_143:
          sub_24AFF8258(v241, v242, v243);
        }

LABEL_144:

        goto LABEL_145;
      }
    }

LABEL_142:
    v241 = v265;
    v242 = v240;
    v243 = &unk_24B2F15C0;
    goto LABEL_143;
  }

  v239 = MEMORY[0x277D84F90];
LABEL_189:

  v352 = v95;
  sub_24B032C70(v239);
}

double sub_24B20A480(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_24B2D56D4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_24B2D5694();

  v6 = sub_24B2D5684();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  sub_24B00A9A4(0, 0, v3, &unk_24B2F1688, v7);

  return result;
}

uint64_t sub_24B20A600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_24B2D5694();
  *(v4 + 48) = sub_24B2D5684();
  v6 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B20A698, v6, v5);
}

uint64_t sub_24B20A698()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24B2056BC();
  }

  v1 = *(v0 + 8);

  return v1();
}

double (*sub_24B20A730())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_24B2154BC;
}

void sub_24B20A7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v159 = a3;
  v160 = a2;
  v5 = *v3;
  v6 = sub_24B2D3184();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v146 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v148 = &v141 - v10;
  MEMORY[0x28223BE20](v11);
  v147 = &v141 - v12;
  MEMORY[0x28223BE20](v13);
  v143 = &v141 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v141 - v16;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE618, &unk_24B2F1C60);
  MEMORY[0x28223BE20](v161);
  v145 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v142 = &v141 - v20;
  MEMORY[0x28223BE20](v21);
  v144 = &v141 - v22;
  MEMORY[0x28223BE20](v23);
  v141 = &v141 - v24;
  MEMORY[0x28223BE20](v25);
  v155 = &v141 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v141 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v141 - v31;
  v33 = sub_24B215C08(&qword_27EFCE620, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
  v34 = v33 + 24;
  v35 = *(v33 + 24);
  v157 = v3;
  v164 = v33;
  v165 = v5;
  v36 = v5;
  v37 = v159;
  v162 = v35;
  v163 = v34;
  (v35)(v36);
  v38 = *(v7 + 16);
  v156 = v6;
  v152 = v38;
  v153 = v7 + 16;
  v38(v17, v32, v6);
  v39 = a1;
  sub_24AFF8258(v32, &qword_27EFCE618, &unk_24B2F1C60);

  v40 = sub_24B2D3164();
  v41 = sub_24B2D5934();

  v42 = os_log_type_enabled(v40, v41);
  v158 = a1;
  v149 = v7;
  v150 = v29;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v166 = v44;
    *v43 = 136315394;
    type metadata accessor for SettingsContactsProvider.Subscription(0);
    sub_24B215C08(&qword_27EFCE0C8, type metadata accessor for SettingsContactsProvider.Subscription, &protocol conformance descriptor for SettingsContactsProvider.Subscription);
    v45 = sub_24B2D57F4();
    v47 = v7;
    v48 = sub_24AFF321C(v45, v46, &v166);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2080;
    v167 = v160;
    v168 = v37;

    v49 = sub_24B2D53C4();
    v51 = sub_24AFF321C(v49, v50, &v166);

    *(v43 + 14) = v51;
    _os_log_impl(&dword_24AFD2000, v40, v41, "SettingsProviderProtocol: subscriptions\n- subscriptions: %s\n- subscriber: %s", v43, 0x16u);
    swift_arrayDestroy();
    v52 = v44;
    v39 = v158;
    MEMORY[0x24C23D530](v52, -1, -1);
    MEMORY[0x24C23D530](v43, -1, -1);

    v53 = v47;
    v29 = v150;
    v154 = *(v53 + 8);
  }

  else
  {

    v154 = *(v7 + 8);
  }

  v154(v17, v156);
  v54 = v157;
  v162(v165, v164);
  v55 = v161;
  v151 = *&v29[*(v161 + 40)];

  sub_24AFF8258(v29, &qword_27EFCE618, &unk_24B2F1C60);
  v56 = v39;
  v57 = *(v39 + 16);
  swift_getKeyPath();
  v167 = v54;
  sub_24B215C08(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);

  if (v57)
  {

    sub_24B2D2584();

    v167 = v54;
    swift_getKeyPath();
    sub_24B2D25A4();

    v58 = v54 + OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__storage;
    swift_beginAccess();
    v59 = *(v161 + 36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v166 = *(v58 + v59);
    *(v58 + v59) = 0x8000000000000000;
    sub_24B1CB3E8(v56, v160, v37, isUniquelyReferenced_nonNull_native);

    *(v58 + v59) = v166;
    v55 = v161;
  }

  else
  {
    sub_24B2D2584();

    v167 = v54;
    swift_getKeyPath();
    sub_24B2D25A4();

    swift_beginAccess();
    sub_24B18CF60(0, v160, v37);
  }

  sub_24B213510(&qword_27EFCE618, &unk_24B2F1C60, &qword_27EFCE630, &qword_24B2F1678);
  swift_endAccess();
  v167 = v54;
  swift_getKeyPath();
  sub_24B2D2594();

  v61 = v155;
  v162(v165, v164);
  v62 = *(v61 + *(v55 + 36));
  v167 = MEMORY[0x277D84F90];
  v63 = 1 << *(v62 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & *(v62 + 64);
  v66 = (v63 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v67 = 0;
  while (v65)
  {
LABEL_16:
    v69 = *(*(v62 + 56) + ((v67 << 9) | (8 * __clz(__rbit64(v65)))));
    sub_24B2D5694();

    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v65 &= v65 - 1;

    sub_24B032C9C(v69);
  }

  while (1)
  {
    v68 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      __break(1u);
      return;
    }

    if (v68 >= v66)
    {
      break;
    }

    v65 = *(v62 + 64 + 8 * v68);
    ++v67;
    if (v65)
    {
      v67 = v68;
      goto LABEL_16;
    }
  }

  v70 = v167;
  sub_24AFF8258(v155, &qword_27EFCE618, &unk_24B2F1C60);
  v71 = sub_24B1D1498(v70);

  swift_getKeyPath();
  v72 = v157;
  v167 = v157;
  sub_24B215C08(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);

  sub_24B2D2584();

  v167 = v72;
  swift_getKeyPath();
  sub_24B2D25A4();

  v73 = v72 + OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__storage;
  swift_beginAccess();
  *(v73 + *(v161 + 40)) = v71;

  sub_24B213724();
  swift_endAccess();
  v167 = v72;
  swift_getKeyPath();
  sub_24B2D2594();

  v74 = v151;
  v75 = v158;
  if (*(v151 + 16) <= *(v158 + 16) >> 3)
  {
    v167 = v158;

    sub_24B2A468C(v74);
    v155 = v167;
  }

  else
  {

    v155 = sub_24B2AECDC(v74, v75);
  }

  v76 = v159;
  v77 = v156;
  v78 = v147;
  if (*(v71 + 16) <= *(v74 + 16) >> 3)
  {
    v167 = v74;

    sub_24B2A468C(v71);
    if (*(v167 + 16))
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (*(sub_24B2AECDC(v71, v74) + 16))
    {
LABEL_23:
      v79 = v144;
      v162(v165, v164);
      v152(v78, v79, v77);
      sub_24AFF8258(v79, &qword_27EFCE618, &unk_24B2F1C60);

      v80 = sub_24B2D3164();
      v81 = sub_24B2D5934();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v166 = v83;
        *v82 = 136315651;
        type metadata accessor for SettingsContactsProvider.Subscription(0);
        sub_24B215C08(&qword_27EFCE0C8, type metadata accessor for SettingsContactsProvider.Subscription, &protocol conformance descriptor for SettingsContactsProvider.Subscription);
        v84 = sub_24B2D57F4();
        v86 = sub_24AFF321C(v84, v85, &v166);

        *(v82 + 4) = v86;
        *(v82 + 12) = 2160;
        *(v82 + 14) = 1752392040;
        *(v82 + 22) = 2081;
        v167 = v160;
        v168 = v159;

        v87 = sub_24B2D53C4();
        v89 = sub_24AFF321C(v87, v88, &v166);
        v76 = v159;

        *(v82 + 24) = v89;
        _os_log_impl(&dword_24AFD2000, v80, v81, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- SubscriptionsThatDoNotExistAnymore: %s\n- SettingsSubscriber: %{private,mask.hash}s", v82, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v83, -1, -1);
        v90 = v82;
        v77 = v156;
        MEMORY[0x24C23D530](v90, -1, -1);
      }

      v154(v78, v77);
      v91 = v148;
      v92 = *(v71 + 16);

      sub_24B21BB88(v92 == 0);
      goto LABEL_31;
    }
  }

  v93 = v141;
  v162(v165, v164);
  v94 = v143;
  v152(v143, v93, v77);
  sub_24AFF8258(v93, &qword_27EFCE618, &unk_24B2F1C60);

  v95 = sub_24B2D3164();
  v96 = v77;
  v97 = sub_24B2D5934();

  if (os_log_type_enabled(v95, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v166 = v99;
    *v98 = 136315651;
    type metadata accessor for SettingsContactsProvider.Subscription(0);
    sub_24B215C08(&qword_27EFCE0C8, type metadata accessor for SettingsContactsProvider.Subscription, &protocol conformance descriptor for SettingsContactsProvider.Subscription);
    v100 = sub_24B2D57F4();
    v102 = sub_24AFF321C(v100, v101, &v166);

    *(v98 + 4) = v102;
    *(v98 + 12) = 2160;
    *(v98 + 14) = 1752392040;
    *(v98 + 22) = 2081;
    v167 = v160;
    v168 = v76;

    v103 = sub_24B2D53C4();
    v105 = sub_24AFF321C(v103, v104, &v166);

    *(v98 + 24) = v105;
    _os_log_impl(&dword_24AFD2000, v95, v97, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v98, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v99, -1, -1);
    MEMORY[0x24C23D530](v98, -1, -1);

    v106 = v143;
  }

  else
  {

    v106 = v94;
  }

  v154(v106, v96);
  v77 = v96;
  v91 = v148;
LABEL_31:
  v107 = v155;
  if (*(v155 + 16))
  {

    v108 = v145;
    v162(v165, v164);
    v109 = v146;
    v152(v146, v108, v77);
    sub_24AFF8258(v108, &qword_27EFCE618, &unk_24B2F1C60);

    v110 = sub_24B2D3164();
    v111 = v77;
    v112 = sub_24B2D5934();

    if (os_log_type_enabled(v110, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v166 = v114;
      *v113 = 136315394;
      type metadata accessor for SettingsContactsProvider.Subscription(0);
      sub_24B215C08(&qword_27EFCE0C8, type metadata accessor for SettingsContactsProvider.Subscription, &protocol conformance descriptor for SettingsContactsProvider.Subscription);
      v115 = sub_24B2D57F4();
      v117 = sub_24AFF321C(v115, v116, &v166);

      *(v113 + 4) = v117;
      *(v113 + 12) = 2080;
      v167 = v160;
      v168 = v76;

      v118 = sub_24B2D53C4();
      v120 = sub_24AFF321C(v118, v119, &v166);
      v107 = v155;

      *(v113 + 14) = v120;
      _os_log_impl(&dword_24AFD2000, v110, v112, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- subscriptionsThatDidNotExistBefore: %s\n- subscriber: %s", v113, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v114, -1, -1);
      MEMORY[0x24C23D530](v113, -1, -1);

      v121 = v146;
    }

    else
    {

      v121 = v109;
    }

    v154(v121, v111);
    v136 = v158;
    v137 = *(v151 + 16);

    SettingsContactsProvider.didAddNewUniqueSubscriptions(addedSubscriptions:wasEmpty:)(v107, v137 == 0);

    v138 = v161;
  }

  else
  {

    v122 = v142;
    v162(v165, v164);
    v152(v91, v122, v77);
    sub_24AFF8258(v122, &qword_27EFCE618, &unk_24B2F1C60);

    v123 = sub_24B2D3164();
    v124 = sub_24B2D5934();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v166 = v126;
      *v125 = 136315651;
      type metadata accessor for SettingsContactsProvider.Subscription(0);
      sub_24B215C08(&qword_27EFCE0C8, type metadata accessor for SettingsContactsProvider.Subscription, &protocol conformance descriptor for SettingsContactsProvider.Subscription);
      v127 = sub_24B2D57F4();
      v129 = v128;

      v130 = sub_24AFF321C(v127, v129, &v166);

      *(v125 + 4) = v130;
      *(v125 + 12) = 2160;
      *(v125 + 14) = 1752392040;
      *(v125 + 22) = 2081;
      v167 = v160;
      v168 = v159;

      v131 = sub_24B2D53C4();
      v133 = sub_24AFF321C(v131, v132, &v166);

      *(v125 + 24) = v133;
      _os_log_impl(&dword_24AFD2000, v123, v124, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v125, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v126, -1, -1);
      v76 = v159;
      MEMORY[0x24C23D530](v125, -1, -1);

      v134 = v91;
      v135 = v156;
    }

    else
    {

      v134 = v91;
      v135 = v77;
    }

    v154(v134, v135);
    v138 = v161;
    v136 = v158;
  }

  v139 = v150;
  v162(v165, v164);
  v140 = *(v139 + *(v138 + 48));

  sub_24AFF8258(v139, &qword_27EFCE618, &unk_24B2F1C60);
  v167 = v160;
  v168 = v76;
  v140(v136, &v167);
}

void sub_24B20BCF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v186 = a2;
  v6 = *v3;
  v7 = sub_24B2D3184();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v173 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v169 = &v163 - v11;
  MEMORY[0x28223BE20](v12);
  v166 = &v163 - v13;
  MEMORY[0x28223BE20](v14);
  v175 = &v163 - v15;
  MEMORY[0x28223BE20](v16);
  v165 = &v163 - v17;
  v172 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v163 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6C0, &qword_24B2F1F30);
  MEMORY[0x28223BE20](v22);
  v168 = &v163 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v164 = &v163 - v25;
  MEMORY[0x28223BE20](v26);
  v167 = &v163 - v27;
  MEMORY[0x28223BE20](v28);
  v163 = &v163 - v29;
  MEMORY[0x28223BE20](v30);
  v179 = &v163 - v31;
  MEMORY[0x28223BE20](v32);
  v180 = &v163 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v163 - v35;
  v37 = sub_24B215C08(&qword_27EFCE6C8, type metadata accessor for SettingsFamilyRelationshipsProvider, &protocol conformance descriptor for SettingsFamilyRelationshipsProvider);
  v38 = *(v37 + 24);
  v183 = v3;
  v190 = v37;
  v191 = v6;
  v188 = v38;
  v189 = v37 + 24;
  (v38)(v6);
  v182 = v8;
  v184 = *(v8 + 16);
  v185 = v8 + 16;
  v184(v21, v36, v7);
  sub_24AFF8258(v36, &qword_27EFCE6C0, &qword_24B2F1F30);

  v39 = sub_24B2D3164();
  v40 = sub_24B2D5934();

  v41 = os_log_type_enabled(v39, v40);
  v187 = v22;
  v174 = v7;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v192 = v43;
    *v42 = 136315394;
    sub_24B1D2434(v43, v44, v45);
    v46 = sub_24B2D57F4();
    v48 = v7;
    v49 = sub_24AFF321C(v46, v47, &v192);

    *(v42 + 4) = v49;
    *(v42 + 12) = 2080;
    v193 = v186;
    v194 = a3;

    v50 = sub_24B2D53C4();
    v52 = sub_24AFF321C(v50, v51, &v192);

    *(v42 + 14) = v52;
    _os_log_impl(&dword_24AFD2000, v39, v40, "SettingsProviderProtocol: subscriptions\n- subscriptions: %s\n- subscriber: %s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v43, -1, -1);
    MEMORY[0x24C23D530](v42, -1, -1);

    v53 = *(v182 + 8);
    v54 = v21;
    v55 = v48;
    v22 = v187;
  }

  else
  {

    v53 = *(v182 + 8);
    v54 = v21;
    v55 = v7;
  }

  v177 = v53;
  v53(v54, v55);
  v56 = v180;
  v57 = v183;
  v188(v191, v190);
  v176 = *(v56 + *(v22 + 40));

  sub_24AFF8258(v56, &qword_27EFCE6C0, &qword_24B2F1F30);
  v58 = *(a1 + 16);
  swift_getKeyPath();
  v181 = a3;
  v178 = a1;
  v193 = v57;
  sub_24B215C08(&qword_27EFCE610, type metadata accessor for SettingsFamilyRelationshipsProvider, &protocol conformance descriptor for SettingsFamilyRelationshipsProvider);

  if (v58)
  {

    sub_24B2D2584();

    v193 = v57;
    swift_getKeyPath();
    sub_24B2D25A4();

    v59 = v57 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__storage;
    swift_beginAccess();
    v60 = a3;
    v61 = v187[9];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v192 = *(v59 + v61);
    *(v59 + v61) = 0x8000000000000000;
    sub_24B1CB418(a1, v186, v60, isUniquelyReferenced_nonNull_native);
    v22 = v187;

    *(v59 + v61) = v192;
  }

  else
  {
    sub_24B2D2584();

    v193 = v57;
    swift_getKeyPath();
    sub_24B2D25A4();

    swift_beginAccess();
    sub_24B18CFA0(0, v186, a3);
  }

  sub_24B213510(&qword_27EFCE6C0, &qword_24B2F1F30, &qword_27EFCE6D0, &qword_24B2F1888);
  swift_endAccess();
  v193 = v57;
  swift_getKeyPath();
  sub_24B2D2594();

  v63 = v179;
  v188(v191, v190);
  v64 = *(v63 + *(v22 + 36));
  v193 = MEMORY[0x277D84F90];
  v65 = 1 << *(v64 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & *(v64 + 64);
  v68 = (v65 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v69 = 0;
  while (v67)
  {
LABEL_16:
    v71 = *(*(v64 + 56) + ((v69 << 9) | (8 * __clz(__rbit64(v67)))));
    sub_24B2D5694();

    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v67 &= v67 - 1;

    sub_24B03350C(v71);
  }

  while (1)
  {
    v70 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

    if (v70 >= v68)
    {

      v72 = v193;
      sub_24AFF8258(v179, &qword_27EFCE6C0, &qword_24B2F1F30);
      v75 = sub_24B1D1628(v72, v73, v74);

      swift_getKeyPath();
      v76 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider___observationRegistrar;
      v77 = v183;
      v193 = v183;
      v78 = sub_24B215C08(&qword_27EFCE610, type metadata accessor for SettingsFamilyRelationshipsProvider, &protocol conformance descriptor for SettingsFamilyRelationshipsProvider);

      sub_24B2D2584();

      v193 = v77;
      swift_getKeyPath();
      sub_24B2D25A4();

      v79 = v77 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__storage;
      swift_beginAccess();
      *(v79 + v187[10]) = v75;

      sub_24B213B84(&qword_27EFCE6C0, &qword_24B2F1F30, sub_24B1D2434, &type metadata for SettingsFamilyRelationshipsProvider.Subscription);
      swift_endAccess();
      v193 = v77;
      swift_getKeyPath();
      v171 = v76;
      v170 = v78;
      sub_24B2D2594();

      v80 = v176;
      v81 = v178;
      if (*(v176 + 16) <= *(v178 + 16) >> 3)
      {
        v193 = v178;

        sub_24B2A4894(v80);
        v179 = v193;
      }

      else
      {

        v179 = sub_24B2B00F8(v80, v81);
      }

      v82 = v181;
      v83 = v174;
      v84 = v175;
      if (*(v75 + 16) <= *(v80 + 16) >> 3)
      {
        v193 = v80;

        sub_24B2A4894(v75);
        if (!*(v193 + 16))
        {
          goto LABEL_27;
        }

LABEL_23:
        v85 = v167;
        v188(v191, v190);
        v184(v84, v85, v83);
        sub_24AFF8258(v85, &qword_27EFCE6C0, &qword_24B2F1F30);

        v86 = sub_24B2D3164();
        v87 = sub_24B2D5934();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = v82;
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v192 = v90;
          *v89 = 136315651;
          sub_24B1D2434(v90, v91, v92);
          v93 = sub_24B2D57F4();
          v95 = sub_24AFF321C(v93, v94, &v192);

          *(v89 + 4) = v95;
          *(v89 + 12) = 2160;
          *(v89 + 14) = 1752392040;
          *(v89 + 22) = 2081;
          v193 = v186;
          v194 = v88;

          v96 = sub_24B2D53C4();
          v98 = sub_24AFF321C(v96, v97, &v192);

          *(v89 + 24) = v98;
          _os_log_impl(&dword_24AFD2000, v86, v87, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- SubscriptionsThatDoNotExistAnymore: %s\n- SettingsSubscriber: %{private,mask.hash}s", v89, 0x20u);
          swift_arrayDestroy();
          v99 = v90;
          v77 = v183;
          MEMORY[0x24C23D530](v99, -1, -1);
          v100 = v89;
          v83 = v174;
          MEMORY[0x24C23D530](v100, -1, -1);
        }

        v101 = v182;
        v177(v175, v83);
        v102 = *(v75 + 16);

        v103 = v102 == 0;
        swift_getKeyPath();
        v193 = v77;
        sub_24B2D2584();

        v104 = v173;
        v184(v173, v79, v83);
        v105 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = v103;
        *(v106 + 24) = v77;
        (*(v101 + 32))(v106 + v105, v104, v83);

        sub_24B2D12C4();

        v82 = v181;
      }

      else
      {

        if (*(sub_24B2B00F8(v75, v80) + 16))
        {
          goto LABEL_23;
        }

LABEL_27:

        v107 = v163;
        v188(v191, v190);
        v108 = v165;
        v184(v165, v107, v83);
        sub_24AFF8258(v107, &qword_27EFCE6C0, &qword_24B2F1F30);

        v109 = sub_24B2D3164();
        v110 = sub_24B2D5934();

        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v192 = v112;
          *v111 = 136315651;
          sub_24B1D2434(v112, v113, v114);
          v115 = sub_24B2D57F4();
          v117 = v83;
          v118 = sub_24AFF321C(v115, v116, &v192);

          *(v111 + 4) = v118;
          *(v111 + 12) = 2160;
          *(v111 + 14) = 1752392040;
          *(v111 + 22) = 2081;
          v193 = v186;
          v194 = v82;

          v119 = sub_24B2D53C4();
          v121 = sub_24AFF321C(v119, v120, &v192);

          *(v111 + 24) = v121;
          v83 = v117;
          _os_log_impl(&dword_24AFD2000, v109, v110, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v111, 0x20u);
          swift_arrayDestroy();
          v122 = v112;
          v77 = v183;
          MEMORY[0x24C23D530](v122, -1, -1);
          MEMORY[0x24C23D530](v111, -1, -1);

          v101 = v182;
          v123 = v165;
          v124 = v117;
        }

        else
        {

          v101 = v182;
          v123 = v108;
          v124 = v83;
        }

        v177(v123, v124);
      }

      v125 = v169;
      v126 = v179;
      if (*(v179 + 16))
      {

        v127 = v168;
        v188(v191, v190);
        v184(v125, v127, v83);
        sub_24AFF8258(v127, &qword_27EFCE6C0, &qword_24B2F1F30);

        v128 = sub_24B2D3164();
        v129 = sub_24B2D5934();

        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          v192 = v131;
          *v130 = 136315394;
          sub_24B1D2434(v131, v132, v133);
          v134 = sub_24B2D57F4();
          v136 = sub_24AFF321C(v134, v135, &v192);

          *(v130 + 4) = v136;
          *(v130 + 12) = 2080;
          v193 = v186;
          v194 = v82;

          v137 = sub_24B2D53C4();
          v139 = sub_24AFF321C(v137, v138, &v192);
          v101 = v182;

          *(v130 + 14) = v139;
          v77 = v183;
          _os_log_impl(&dword_24AFD2000, v128, v129, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- subscriptionsThatDidNotExistBefore: %s\n- subscriber: %s", v130, 0x16u);
          swift_arrayDestroy();
          v140 = v131;
          v126 = v179;
          MEMORY[0x24C23D530](v140, -1, -1);
          MEMORY[0x24C23D530](v130, -1, -1);
        }

        v177(v125, v83);
        v141 = *(v176 + 16);

        swift_getKeyPath();
        v193 = v77;
        sub_24B2D2584();

        v142 = v173;
        v184(v173, v79, v83);
        v143 = (*(v101 + 80) + 40) & ~*(v101 + 80);
        v144 = swift_allocObject();
        *(v144 + 16) = v141 == 0;
        *(v144 + 24) = v77;
        *(v144 + 32) = v126;
        (*(v101 + 32))(v144 + v143, v142, v83);

        sub_24B2D12C4();

        v82 = v181;
LABEL_38:
        v157 = v186;
      }

      else
      {

        v145 = v164;
        v188(v191, v190);
        v146 = v166;
        v184(v166, v145, v83);
        sub_24AFF8258(v145, &qword_27EFCE6C0, &qword_24B2F1F30);

        v147 = sub_24B2D3164();
        v148 = sub_24B2D5934();

        if (!os_log_type_enabled(v147, v148))
        {

          v177(v146, v83);
          goto LABEL_38;
        }

        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v192 = v150;
        *v149 = 136315651;
        sub_24B1D2434(v150, v151, v152);
        v153 = sub_24B2D57F4();
        v155 = v154;

        v156 = sub_24AFF321C(v153, v155, &v192);

        *(v149 + 4) = v156;
        *(v149 + 12) = 2160;
        *(v149 + 14) = 1752392040;
        *(v149 + 22) = 2081;
        v157 = v186;
        v193 = v186;
        v194 = v82;

        v158 = sub_24B2D53C4();
        v160 = sub_24AFF321C(v158, v159, &v192);

        *(v149 + 24) = v160;
        _os_log_impl(&dword_24AFD2000, v147, v148, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v149, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v150, -1, -1);
        MEMORY[0x24C23D530](v149, -1, -1);

        v177(v166, v83);
      }

      v161 = v180;
      v188(v191, v190);
      v162 = *(v161 + v187[12]);

      sub_24AFF8258(v161, &qword_27EFCE6C0, &qword_24B2F1F30);
      v193 = v157;
      v194 = v82;
      v162(v178, &v193);

      return;
    }

    v67 = *(v64 + 64 + 8 * v70);
    ++v69;
    if (v67)
    {
      v69 = v70;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_24B20D2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v160 = a3;
  v161 = a2;
  v5 = *v3;
  v6 = sub_24B2D3184();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v147 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v149 = &v142 - v10;
  MEMORY[0x28223BE20](v11);
  v148 = &v142 - v12;
  MEMORY[0x28223BE20](v13);
  v144 = &v142 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v142 - v16;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6D8, &qword_24B2F1890);
  MEMORY[0x28223BE20](v162);
  v146 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v143 = &v142 - v20;
  MEMORY[0x28223BE20](v21);
  v145 = &v142 - v22;
  MEMORY[0x28223BE20](v23);
  v142 = &v142 - v24;
  MEMORY[0x28223BE20](v25);
  v156 = &v142 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v142 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v142 - v31;
  v33 = sub_24B215C08(&qword_27EFCE6E0, type metadata accessor for SettingsPeopleRelationshipsProvider, &protocol conformance descriptor for SettingsPeopleRelationshipsProvider);
  v34 = v33 + 24;
  v35 = *(v33 + 24);
  v158 = v3;
  v165 = v33;
  v166 = v5;
  v36 = v5;
  v37 = v160;
  v163 = v35;
  v164 = v34;
  (v35)(v36);
  v38 = *(v7 + 16);
  v157 = v6;
  v153 = v38;
  v154 = v7 + 16;
  v38(v17, v32, v6);
  v39 = a1;
  sub_24AFF8258(v32, &qword_27EFCE6D8, &qword_24B2F1890);

  v40 = sub_24B2D3164();
  v41 = sub_24B2D5934();

  v42 = os_log_type_enabled(v40, v41);
  v159 = a1;
  v150 = v7;
  v151 = v29;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v167 = v44;
    *v43 = 136315394;
    type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
    sub_24B215C08(&qword_27EFCE0F0, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription, &protocol conformance descriptor for SettingsPeopleRelationshipsProvider.Subscription);
    v45 = sub_24B2D57F4();
    v47 = v7;
    v48 = sub_24AFF321C(v45, v46, &v167);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2080;
    v168 = v161;
    v169 = v37;

    v49 = sub_24B2D53C4();
    v51 = sub_24AFF321C(v49, v50, &v167);

    *(v43 + 14) = v51;
    _os_log_impl(&dword_24AFD2000, v40, v41, "SettingsProviderProtocol: subscriptions\n- subscriptions: %s\n- subscriber: %s", v43, 0x16u);
    swift_arrayDestroy();
    v52 = v44;
    v39 = v159;
    MEMORY[0x24C23D530](v52, -1, -1);
    MEMORY[0x24C23D530](v43, -1, -1);

    v53 = v47;
    v29 = v151;
    v155 = *(v53 + 8);
  }

  else
  {

    v155 = *(v7 + 8);
  }

  v155(v17, v157);
  v54 = v158;
  v163(v166, v165);
  v55 = v162;
  v152 = *&v29[*(v162 + 40)];

  sub_24AFF8258(v29, &qword_27EFCE6D8, &qword_24B2F1890);
  v56 = v39;
  v57 = *(v39 + 16);
  swift_getKeyPath();
  v168 = v54;
  sub_24B215C08(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider, &protocol conformance descriptor for SettingsPeopleRelationshipsProvider);

  if (v57)
  {

    sub_24B2D2584();

    v168 = v54;
    swift_getKeyPath();
    sub_24B2D25A4();

    v58 = v54 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__storage;
    swift_beginAccess();
    v59 = *(v162 + 36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167 = *(v58 + v59);
    *(v58 + v59) = 0x8000000000000000;
    sub_24B1CB448(v56, v161, v37, isUniquelyReferenced_nonNull_native);

    *(v58 + v59) = v167;
    v55 = v162;
  }

  else
  {
    sub_24B2D2584();

    v168 = v54;
    swift_getKeyPath();
    sub_24B2D25A4();

    swift_beginAccess();
    sub_24B18CFE0(0, v161, v37);
  }

  sub_24B213510(&qword_27EFCE6D8, &qword_24B2F1890, &qword_27EFCE6E8, &qword_24B2F18C0);
  swift_endAccess();
  v168 = v54;
  swift_getKeyPath();
  sub_24B2D2594();

  v61 = v156;
  v163(v166, v165);
  v62 = *(v61 + *(v55 + 36));
  v168 = MEMORY[0x277D84F90];
  v63 = 1 << *(v62 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & *(v62 + 64);
  v66 = (v63 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v67 = 0;
  while (v65)
  {
LABEL_16:
    v69 = *(*(v62 + 56) + ((v67 << 9) | (8 * __clz(__rbit64(v65)))));
    sub_24B2D5694();

    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v65 &= v65 - 1;

    sub_24B033790(v69);
  }

  while (1)
  {
    v68 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      __break(1u);
      return;
    }

    if (v68 >= v66)
    {
      break;
    }

    v65 = *(v62 + 64 + 8 * v68);
    ++v67;
    if (v65)
    {
      v67 = v68;
      goto LABEL_16;
    }
  }

  v70 = v168;
  sub_24AFF8258(v156, &qword_27EFCE6D8, &qword_24B2F1890);
  v71 = sub_24B1D169C(v70);

  swift_getKeyPath();
  v72 = v158;
  v168 = v158;
  sub_24B215C08(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider, &protocol conformance descriptor for SettingsPeopleRelationshipsProvider);

  sub_24B2D2584();

  v168 = v72;
  swift_getKeyPath();
  sub_24B2D25A4();

  v73 = v72 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__storage;
  swift_beginAccess();
  *(v73 + *(v162 + 40)) = v71;

  sub_24B213954();
  swift_endAccess();
  v168 = v72;
  swift_getKeyPath();
  sub_24B2D2594();

  v74 = v152;
  v75 = v159;
  if (*(v152 + 16) <= *(v159 + 16) >> 3)
  {
    v168 = v159;

    sub_24B2A4998(v74);
    v156 = v168;
  }

  else
  {

    v156 = sub_24B2B0588(v74, v75);
  }

  v76 = v160;
  v77 = v157;
  v78 = v148;
  if (*(v71 + 16) <= *(v74 + 16) >> 3)
  {
    v168 = v74;

    sub_24B2A4998(v71);
    v79 = v168;
    if (*(v168 + 16))
    {
      goto LABEL_23;
    }
  }

  else
  {

    v79 = sub_24B2B0588(v71, v74);
    if (*(v79 + 16))
    {
LABEL_23:
      v80 = v145;
      v163(v166, v165);
      v153(v78, v80, v77);
      sub_24AFF8258(v80, &qword_27EFCE6D8, &qword_24B2F1890);

      v81 = sub_24B2D3164();
      v82 = sub_24B2D5934();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v167 = v84;
        *v83 = 136315651;
        type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
        sub_24B215C08(&qword_27EFCE0F0, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription, &protocol conformance descriptor for SettingsPeopleRelationshipsProvider.Subscription);
        v85 = sub_24B2D57F4();
        v87 = sub_24AFF321C(v85, v86, &v167);

        *(v83 + 4) = v87;
        *(v83 + 12) = 2160;
        *(v83 + 14) = 1752392040;
        *(v83 + 22) = 2081;
        v168 = v161;
        v169 = v160;

        v88 = sub_24B2D53C4();
        v90 = sub_24AFF321C(v88, v89, &v167);
        v76 = v160;

        *(v83 + 24) = v90;
        _os_log_impl(&dword_24AFD2000, v81, v82, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- SubscriptionsThatDoNotExistAnymore: %s\n- SettingsSubscriber: %{private,mask.hash}s", v83, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v84, -1, -1);
        v91 = v83;
        v77 = v157;
        MEMORY[0x24C23D530](v91, -1, -1);
      }

      v155(v78, v77);
      v92 = v149;
      v93 = *(v71 + 16);

      SettingsPeopleRelationshipsProvider.didRemoveUniqueSubscriptions(removedSubscriptions:isEmpty:)(v79, v93 == 0);
      goto LABEL_31;
    }
  }

  v94 = v142;
  v163(v166, v165);
  v95 = v144;
  v153(v144, v94, v77);
  sub_24AFF8258(v94, &qword_27EFCE6D8, &qword_24B2F1890);

  v96 = sub_24B2D3164();
  v97 = v77;
  v98 = sub_24B2D5934();

  if (os_log_type_enabled(v96, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v167 = v100;
    *v99 = 136315651;
    type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
    sub_24B215C08(&qword_27EFCE0F0, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription, &protocol conformance descriptor for SettingsPeopleRelationshipsProvider.Subscription);
    v101 = sub_24B2D57F4();
    v103 = sub_24AFF321C(v101, v102, &v167);

    *(v99 + 4) = v103;
    *(v99 + 12) = 2160;
    *(v99 + 14) = 1752392040;
    *(v99 + 22) = 2081;
    v168 = v161;
    v169 = v76;

    v104 = sub_24B2D53C4();
    v106 = sub_24AFF321C(v104, v105, &v167);

    *(v99 + 24) = v106;
    _os_log_impl(&dword_24AFD2000, v96, v98, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v99, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v100, -1, -1);
    MEMORY[0x24C23D530](v99, -1, -1);

    v107 = v144;
  }

  else
  {

    v107 = v95;
  }

  v155(v107, v97);
  v77 = v97;
  v92 = v149;
LABEL_31:
  v108 = v156;
  if (*(v156 + 16))
  {

    v109 = v146;
    v163(v166, v165);
    v110 = v147;
    v153(v147, v109, v77);
    sub_24AFF8258(v109, &qword_27EFCE6D8, &qword_24B2F1890);

    v111 = sub_24B2D3164();
    v112 = v77;
    v113 = sub_24B2D5934();

    if (os_log_type_enabled(v111, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v167 = v115;
      *v114 = 136315394;
      type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
      sub_24B215C08(&qword_27EFCE0F0, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription, &protocol conformance descriptor for SettingsPeopleRelationshipsProvider.Subscription);
      v116 = sub_24B2D57F4();
      v118 = sub_24AFF321C(v116, v117, &v167);

      *(v114 + 4) = v118;
      *(v114 + 12) = 2080;
      v168 = v161;
      v169 = v76;

      v119 = sub_24B2D53C4();
      v121 = sub_24AFF321C(v119, v120, &v167);
      v108 = v156;

      *(v114 + 14) = v121;
      _os_log_impl(&dword_24AFD2000, v111, v113, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- subscriptionsThatDidNotExistBefore: %s\n- subscriber: %s", v114, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v115, -1, -1);
      MEMORY[0x24C23D530](v114, -1, -1);

      v122 = v147;
    }

    else
    {

      v122 = v110;
    }

    v155(v122, v112);
    v137 = v159;
    v138 = *(v152 + 16);

    SettingsPeopleRelationshipsProvider.didAddNewUniqueSubscriptions(addedSubscriptions:wasEmpty:)(v108, v138 == 0);

    v139 = v162;
  }

  else
  {

    v123 = v143;
    v163(v166, v165);
    v153(v92, v123, v77);
    sub_24AFF8258(v123, &qword_27EFCE6D8, &qword_24B2F1890);

    v124 = sub_24B2D3164();
    v125 = sub_24B2D5934();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v167 = v127;
      *v126 = 136315651;
      type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
      sub_24B215C08(&qword_27EFCE0F0, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription, &protocol conformance descriptor for SettingsPeopleRelationshipsProvider.Subscription);
      v128 = sub_24B2D57F4();
      v130 = v129;

      v131 = sub_24AFF321C(v128, v130, &v167);

      *(v126 + 4) = v131;
      *(v126 + 12) = 2160;
      *(v126 + 14) = 1752392040;
      *(v126 + 22) = 2081;
      v168 = v161;
      v169 = v160;

      v132 = sub_24B2D53C4();
      v134 = sub_24AFF321C(v132, v133, &v167);

      *(v126 + 24) = v134;
      _os_log_impl(&dword_24AFD2000, v124, v125, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v126, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v127, -1, -1);
      v76 = v160;
      MEMORY[0x24C23D530](v126, -1, -1);

      v135 = v92;
      v136 = v157;
    }

    else
    {

      v135 = v92;
      v136 = v77;
    }

    v155(v135, v136);
    v139 = v162;
    v137 = v159;
  }

  v140 = v151;
  v163(v166, v165);
  v141 = *(v140 + *(v139 + 48));

  sub_24AFF8258(v140, &qword_27EFCE6D8, &qword_24B2F1890);
  v168 = v161;
  v169 = v76;
  v141(v137, &v168);
}

void sub_24B20E854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v184 = a2;
  v6 = *v3;
  v7 = sub_24B2D3184();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v170 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v171 = &v161 - v11;
  MEMORY[0x28223BE20](v12);
  v164 = &v161 - v13;
  MEMORY[0x28223BE20](v14);
  v172 = &v161 - v15;
  MEMORY[0x28223BE20](v16);
  v162 = &v161 - v17;
  v169 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v161 - v20;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE680, &qword_24B2F17B8);
  MEMORY[0x28223BE20](v185);
  v168 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v163 = &v161 - v24;
  MEMORY[0x28223BE20](v25);
  v167 = &v161 - v26;
  MEMORY[0x28223BE20](v27);
  v161 = &v161 - v28;
  MEMORY[0x28223BE20](v29);
  v176 = &v161 - v30;
  MEMORY[0x28223BE20](v31);
  v177 = &v161 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v161 - v34;
  v36 = sub_24B215C08(&qword_27EFCE688, type metadata accessor for SettingsFindMyServiceProvider, &protocol conformance descriptor for SettingsFindMyServiceProvider);
  v37 = v36 + 24;
  v38 = *(v36 + 24);
  v183 = v3;
  v188 = v36;
  v189 = v6;
  v39 = v6;
  v40 = a1;
  v186 = v38;
  v187 = v37;
  (v38)(v39);
  v41 = *(v8 + 16);
  v181 = v8 + 16;
  v182 = v7;
  v180 = v41;
  v41(v21, v35, v7);
  sub_24AFF8258(v35, &qword_27EFCE680, &qword_24B2F17B8);

  v42 = sub_24B2D3164();
  v43 = sub_24B2D5934();

  v44 = os_log_type_enabled(v42, v43);
  v179 = a1;
  v175 = v8;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v190 = v46;
    *v45 = 136315394;
    sub_24B1D238C(v46, v47, v48);
    v49 = sub_24B2D57F4();
    v51 = sub_24AFF321C(v49, v50, &v190);

    *(v45 + 4) = v51;
    *(v45 + 12) = 2080;
    v191 = v184;
    v192 = a3;

    v52 = sub_24B2D53C4();
    v54 = sub_24AFF321C(v52, v53, &v190);
    v40 = v179;

    *(v45 + 14) = v54;
    _os_log_impl(&dword_24AFD2000, v42, v43, "SettingsProviderProtocol: subscriptions\n- subscriptions: %s\n- subscriber: %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v46, -1, -1);
    MEMORY[0x24C23D530](v45, -1, -1);
  }

  v174 = *(v8 + 8);
  v174(v21, v182);
  v55 = v177;
  v56 = v183;
  v186(v189, v188);
  v57 = v185;
  v173 = *(v55 + v185[10]);

  sub_24AFF8258(v55, &qword_27EFCE680, &qword_24B2F17B8);
  v58 = *(v40 + 16);
  swift_getKeyPath();
  v178 = a3;
  v191 = v56;
  sub_24B215C08(&qword_27EFCE690, type metadata accessor for SettingsFindMyServiceProvider, &protocol conformance descriptor for SettingsFindMyServiceProvider);

  if (v58)
  {

    sub_24B2D2584();

    v191 = v56;
    swift_getKeyPath();
    sub_24B2D25A4();

    v59 = v56 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__storage;
    swift_beginAccess();
    v60 = v185[9];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v190 = *(v59 + v60);
    *(v59 + v60) = 0x8000000000000000;
    sub_24B1CB478(v40, v184, a3, isUniquelyReferenced_nonNull_native);

    *(v59 + v60) = v190;
    v57 = v185;
  }

  else
  {
    sub_24B2D2584();

    v191 = v56;
    swift_getKeyPath();
    sub_24B2D25A4();

    swift_beginAccess();
    sub_24B18D020(0, v184, a3);
  }

  sub_24B213510(&qword_27EFCE680, &qword_24B2F17B8, &qword_27EFCE698, &qword_24B2F17F8);
  swift_endAccess();
  v191 = v56;
  swift_getKeyPath();
  sub_24B2D2594();

  v62 = v176;
  v186(v189, v188);
  v63 = *(v62 + v57[9]);
  v191 = MEMORY[0x277D84F90];
  v64 = 1 << *(v63 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & *(v63 + 64);
  v67 = (v64 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v68 = 0;
  while (v66)
  {
LABEL_15:
    v70 = *(*(v63 + 56) + ((v68 << 9) | (8 * __clz(__rbit64(v66)))));
    sub_24B2D5694();

    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v66 &= v66 - 1;

    sub_24B033E90(v70);
  }

  while (1)
  {
    v69 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v69 >= v67)
    {

      v71 = v191;
      sub_24AFF8258(v176, &qword_27EFCE680, &qword_24B2F17B8);
      v72 = sub_24B1D182C(v71);

      swift_getKeyPath();
      v73 = OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider___observationRegistrar;
      v74 = v183;
      v191 = v183;
      v75 = sub_24B215C08(&qword_27EFCE690, type metadata accessor for SettingsFindMyServiceProvider, &protocol conformance descriptor for SettingsFindMyServiceProvider);

      sub_24B2D2584();

      v191 = v74;
      swift_getKeyPath();
      sub_24B2D25A4();

      v76 = v74 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__storage;
      swift_beginAccess();
      *(v76 + v185[10]) = v72;

      v165 = v76;
      sub_24B213B84(&qword_27EFCE680, &qword_24B2F17B8, sub_24B1D238C, &type metadata for SettingsFindMyServiceProvider.Subscription);
      swift_endAccess();
      v191 = v74;
      swift_getKeyPath();
      v176 = v73;
      v166 = v75;
      sub_24B2D2594();

      v77 = v173;
      v78 = v179;
      if (*(v173 + 16) <= *(v179 + 16) >> 3)
      {
        v191 = v179;

        sub_24B2A4BA0(v77, v81);
        v80 = v191;
      }

      else
      {

        v80 = sub_24B2B1810(v77, v78, v79);
      }

      v82 = v178;
      v83 = v182;
      v84 = v172;
      if (*(v72 + 16) <= *(v77 + 16) >> 3)
      {
        v191 = v77;

        sub_24B2A4BA0(v72, v102);
        if (!*(v191 + 16))
        {
          goto LABEL_25;
        }

LABEL_22:
        v86 = v167;
        v186(v189, v188);
        v180(v84, v86, v83);
        sub_24AFF8258(v86, &qword_27EFCE680, &qword_24B2F17B8);

        v87 = sub_24B2D3164();
        v88 = sub_24B2D5934();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = v82;
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v190 = v91;
          *v90 = 136315651;
          sub_24B1D238C(v91, v92, v93);
          v94 = sub_24B2D57F4();
          v96 = sub_24AFF321C(v94, v95, &v190);

          *(v90 + 4) = v96;
          *(v90 + 12) = 2160;
          *(v90 + 14) = 1752392040;
          *(v90 + 22) = 2081;
          v191 = v184;
          v192 = v89;

          v97 = sub_24B2D53C4();
          v99 = sub_24AFF321C(v97, v98, &v190);

          *(v90 + 24) = v99;
          _os_log_impl(&dword_24AFD2000, v87, v88, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- SubscriptionsThatDoNotExistAnymore: %s\n- SettingsSubscriber: %{private,mask.hash}s", v90, 0x20u);
          swift_arrayDestroy();
          v100 = v91;
          v83 = v182;
          MEMORY[0x24C23D530](v100, -1, -1);
          MEMORY[0x24C23D530](v90, -1, -1);

          v101 = v172;
        }

        else
        {

          v101 = v84;
        }

        v174(v101, v83);
        v118 = v171;
        v136 = *(v72 + 16);

        v74 = v183;
        v137 = swift_allocObject();
        *(v137 + 16) = v136 == 0;
        *(v137 + 24) = v74;

        sub_24B2D12C4();

        v82 = v178;
        if (*(v80 + 16))
        {
          goto LABEL_32;
        }

LABEL_28:

        v119 = v163;
        v186(v189, v188);
        v120 = v164;
        v180(v164, v119, v83);
        sub_24AFF8258(v119, &qword_27EFCE680, &qword_24B2F17B8);

        v121 = sub_24B2D3164();
        v122 = sub_24B2D5934();

        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v124 = v83;
          v125 = swift_slowAlloc();
          v190 = v125;
          *v123 = 136315651;
          sub_24B1D238C(v125, v126, v127);
          v128 = sub_24B2D57F4();
          v130 = v129;

          v131 = sub_24AFF321C(v128, v130, &v190);

          *(v123 + 4) = v131;
          *(v123 + 12) = 2160;
          *(v123 + 14) = 1752392040;
          *(v123 + 22) = 2081;
          v132 = v184;
          v191 = v184;
          v192 = v82;

          v133 = sub_24B2D53C4();
          v135 = sub_24AFF321C(v133, v134, &v190);

          *(v123 + 24) = v135;
          _os_log_impl(&dword_24AFD2000, v121, v122, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v123, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C23D530](v125, -1, -1);
          MEMORY[0x24C23D530](v123, -1, -1);

          v174(v164, v124);
        }

        else
        {

          v174(v120, v83);
          v132 = v184;
        }

        v155 = v179;
      }

      else
      {

        if (*(sub_24B2B1810(v72, v77, v85) + 16))
        {
          goto LABEL_22;
        }

LABEL_25:

        v103 = v161;
        v186(v189, v188);
        v104 = v162;
        v180(v162, v103, v83);
        sub_24AFF8258(v103, &qword_27EFCE680, &qword_24B2F17B8);

        v105 = sub_24B2D3164();
        v106 = sub_24B2D5934();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v172 = v108;
          v190 = v108;
          *v107 = 136315651;
          sub_24B1D238C(v108, v109, v110);
          v111 = sub_24B2D57F4();
          v113 = sub_24AFF321C(v111, v112, &v190);

          *(v107 + 4) = v113;
          *(v107 + 12) = 2160;
          *(v107 + 14) = 1752392040;
          *(v107 + 22) = 2081;
          v191 = v184;
          v192 = v82;

          v114 = sub_24B2D53C4();
          v116 = sub_24AFF321C(v114, v115, &v190);
          v83 = v182;

          *(v107 + 24) = v116;
          _os_log_impl(&dword_24AFD2000, v105, v106, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v107, 0x20u);
          v117 = v172;
          swift_arrayDestroy();
          MEMORY[0x24C23D530](v117, -1, -1);
          MEMORY[0x24C23D530](v107, -1, -1);
        }

        v174(v104, v83);
        v118 = v171;
        if (!*(v80 + 16))
        {
          goto LABEL_28;
        }

LABEL_32:

        v138 = v168;
        v186(v189, v188);
        v180(v118, v138, v83);
        sub_24AFF8258(v138, &qword_27EFCE680, &qword_24B2F17B8);

        v139 = sub_24B2D3164();
        v140 = sub_24B2D5934();

        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v190 = v142;
          *v141 = 136315394;
          sub_24B1D238C(v142, v143, v144);
          v145 = sub_24B2D57F4();
          v147 = v146;

          v148 = sub_24AFF321C(v145, v147, &v190);

          *(v141 + 4) = v148;
          *(v141 + 12) = 2080;
          v191 = v184;
          v192 = v82;

          v149 = sub_24B2D53C4();
          v151 = sub_24AFF321C(v149, v150, &v190);

          *(v141 + 14) = v151;
          _os_log_impl(&dword_24AFD2000, v139, v140, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- subscriptionsThatDidNotExistBefore: %s\n- subscriber: %s", v141, 0x16u);
          swift_arrayDestroy();
          v152 = v142;
          v83 = v182;
          MEMORY[0x24C23D530](v152, -1, -1);
          MEMORY[0x24C23D530](v141, -1, -1);
        }

        else
        {
        }

        v153 = v175;
        v174(v118, v83);
        v154 = v170;
        v155 = v179;
        v156 = *(v173 + 16);

        swift_getKeyPath();
        v191 = v74;
        sub_24B2D2584();

        v180(v154, v165, v83);
        v157 = (*(v153 + 80) + 32) & ~*(v153 + 80);
        v158 = swift_allocObject();
        *(v158 + 16) = v156 == 0;
        *(v158 + 24) = v74;
        (*(v153 + 32))(v158 + v157, v154, v83);

        sub_24B2D12C4();

        v82 = v178;
        v132 = v184;
      }

      v159 = v177;
      v186(v189, v188);
      v160 = *(v159 + v185[12]);

      sub_24AFF8258(v159, &qword_27EFCE680, &qword_24B2F17B8);
      v191 = v132;
      v192 = v82;
      v160(v155, &v191);

      return;
    }

    v66 = *(v63 + 64 + 8 * v69);
    ++v68;
    if (v66)
    {
      v68 = v69;
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_24B20FDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v182 = a2;
  v6 = *v3;
  v7 = sub_24B2D3184();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v168 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v169 = &v159 - v11;
  MEMORY[0x28223BE20](v12);
  v162 = &v159 - v13;
  MEMORY[0x28223BE20](v14);
  v170 = &v159 - v15;
  MEMORY[0x28223BE20](v16);
  v160 = &v159 - v17;
  v167 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v159 - v20;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6A0, &qword_24B2F1800);
  MEMORY[0x28223BE20](v183);
  v166 = &v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v161 = &v159 - v24;
  MEMORY[0x28223BE20](v25);
  v165 = &v159 - v26;
  MEMORY[0x28223BE20](v27);
  v159 = &v159 - v28;
  MEMORY[0x28223BE20](v29);
  v174 = &v159 - v30;
  MEMORY[0x28223BE20](v31);
  v175 = &v159 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v159 - v34;
  v36 = sub_24B215C08(&qword_27EFCE6A8, type metadata accessor for SettingsProvider, &protocol conformance descriptor for SettingsProvider);
  v37 = v36 + 24;
  v38 = *(v36 + 24);
  v181 = v3;
  v186 = v36;
  v187 = v6;
  v39 = v6;
  v40 = a1;
  v184 = v38;
  v185 = v37;
  (v38)(v39);
  v41 = *(v8 + 16);
  v179 = v8 + 16;
  v180 = v7;
  v178 = v41;
  v41(v21, v35, v7);
  sub_24AFF8258(v35, &qword_27EFCE6A0, &qword_24B2F1800);

  v42 = sub_24B2D3164();
  v43 = sub_24B2D5934();

  v44 = os_log_type_enabled(v42, v43);
  v177 = a1;
  v173 = v8;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v188 = v46;
    *v45 = 136315394;
    sub_24B1D23E0(v46, v47, v48);
    v49 = sub_24B2D57F4();
    v51 = sub_24AFF321C(v49, v50, &v188);

    *(v45 + 4) = v51;
    *(v45 + 12) = 2080;
    v189 = v182;
    v190 = a3;

    v52 = sub_24B2D53C4();
    v54 = sub_24AFF321C(v52, v53, &v188);
    v40 = v177;

    *(v45 + 14) = v54;
    _os_log_impl(&dword_24AFD2000, v42, v43, "SettingsProviderProtocol: subscriptions\n- subscriptions: %s\n- subscriber: %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v46, -1, -1);
    MEMORY[0x24C23D530](v45, -1, -1);
  }

  v172 = *(v8 + 8);
  v172(v21, v180);
  v55 = v175;
  v56 = v181;
  v184(v187, v186);
  v57 = v183;
  v171 = *(v55 + v183[10]);

  sub_24AFF8258(v55, &qword_27EFCE6A0, &qword_24B2F1800);
  v58 = *(v40 + 16);
  swift_getKeyPath();
  v176 = a3;
  v189 = v56;
  sub_24B215C08(&qword_27EFCE6B0, type metadata accessor for SettingsProvider, &protocol conformance descriptor for SettingsProvider);

  if (v58)
  {

    sub_24B2D2584();

    v189 = v56;
    swift_getKeyPath();
    sub_24B2D25A4();

    v59 = v56 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__storage;
    swift_beginAccess();
    v60 = v183[9];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v188 = *(v59 + v60);
    *(v59 + v60) = 0x8000000000000000;
    sub_24B1CB4A8(v40, v182, a3, isUniquelyReferenced_nonNull_native);

    *(v59 + v60) = v188;
    v57 = v183;
  }

  else
  {
    sub_24B2D2584();

    v189 = v56;
    swift_getKeyPath();
    sub_24B2D25A4();

    swift_beginAccess();
    sub_24B18D060(0, v182, a3);
  }

  sub_24B213510(&qword_27EFCE6A0, &qword_24B2F1800, &qword_27EFCE6B8, &unk_24B2F1840);
  swift_endAccess();
  v189 = v56;
  swift_getKeyPath();
  sub_24B2D2594();

  v62 = v174;
  v184(v187, v186);
  v63 = *(v62 + v57[9]);
  v189 = MEMORY[0x277D84F90];
  v64 = 1 << *(v63 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & *(v63 + 64);
  v67 = (v64 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v68 = 0;
  while (v66)
  {
LABEL_15:
    v70 = *(*(v63 + 56) + ((v68 << 9) | (8 * __clz(__rbit64(v66)))));
    sub_24B2D5694();

    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v66 &= v66 - 1;

    sub_24B0340D0(v70);
  }

  while (1)
  {
    v69 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v69 >= v67)
    {

      v71 = v189;
      sub_24AFF8258(v174, &qword_27EFCE6A0, &qword_24B2F1800);
      v72 = sub_24B1D185C(v71);

      swift_getKeyPath();
      v73 = OBJC_IVAR____TtC12FindMyUICore16SettingsProvider___observationRegistrar;
      v74 = v181;
      v189 = v181;
      v75 = sub_24B215C08(&qword_27EFCE6B0, type metadata accessor for SettingsProvider, &protocol conformance descriptor for SettingsProvider);

      sub_24B2D2584();

      v189 = v74;
      swift_getKeyPath();
      sub_24B2D25A4();

      v76 = v74 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__storage;
      swift_beginAccess();
      *(v76 + v183[10]) = v72;

      v163 = v76;
      sub_24B213B84(&qword_27EFCE6A0, &qword_24B2F1800, sub_24B1D23E0, &type metadata for SettingsProvider.Subscription);
      swift_endAccess();
      v189 = v74;
      swift_getKeyPath();
      v174 = v73;
      v164 = v75;
      sub_24B2D2594();

      v77 = v171;
      v78 = v177;
      if (*(v171 + 16) <= *(v177 + 16) >> 3)
      {
        v189 = v177;

        sub_24B2A4D44(v77);
        v80 = v189;
      }

      else
      {

        v80 = sub_24B2B1878(v77, v78, v79);
      }

      v81 = v176;
      v82 = v180;
      v83 = v170;
      if (*(v72 + 16) <= *(v77 + 16) >> 3)
      {
        v189 = v77;

        sub_24B2A4D44(v72);
        if (!*(v189 + 16))
        {
          goto LABEL_25;
        }

LABEL_22:
        v85 = v165;
        v184(v187, v186);
        v178(v83, v85, v82);
        sub_24AFF8258(v85, &qword_27EFCE6A0, &qword_24B2F1800);

        v86 = sub_24B2D3164();
        v87 = sub_24B2D5934();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = v81;
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v188 = v90;
          *v89 = 136315651;
          sub_24B1D23E0(v90, v91, v92);
          v93 = sub_24B2D57F4();
          v95 = sub_24AFF321C(v93, v94, &v188);

          *(v89 + 4) = v95;
          *(v89 + 12) = 2160;
          *(v89 + 14) = 1752392040;
          *(v89 + 22) = 2081;
          v189 = v182;
          v190 = v88;

          v96 = sub_24B2D53C4();
          v98 = sub_24AFF321C(v96, v97, &v188);

          *(v89 + 24) = v98;
          _os_log_impl(&dword_24AFD2000, v86, v87, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- SubscriptionsThatDoNotExistAnymore: %s\n- SettingsSubscriber: %{private,mask.hash}s", v89, 0x20u);
          swift_arrayDestroy();
          v99 = v90;
          v82 = v180;
          MEMORY[0x24C23D530](v99, -1, -1);
          MEMORY[0x24C23D530](v89, -1, -1);

          v100 = v170;
        }

        else
        {

          v100 = v83;
        }

        v172(v100, v82);
        v116 = v169;
        v134 = *(v72 + 16);

        v74 = v181;
        v135 = swift_allocObject();
        *(v135 + 16) = v134 == 0;
        *(v135 + 24) = v74;

        sub_24B2D12C4();

        v81 = v176;
        if (*(v80 + 16))
        {
          goto LABEL_32;
        }

LABEL_28:

        v117 = v161;
        v184(v187, v186);
        v118 = v162;
        v178(v162, v117, v82);
        sub_24AFF8258(v117, &qword_27EFCE6A0, &qword_24B2F1800);

        v119 = sub_24B2D3164();
        v120 = sub_24B2D5934();

        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = v82;
          v123 = swift_slowAlloc();
          v188 = v123;
          *v121 = 136315651;
          sub_24B1D23E0(v123, v124, v125);
          v126 = sub_24B2D57F4();
          v128 = v127;

          v129 = sub_24AFF321C(v126, v128, &v188);

          *(v121 + 4) = v129;
          *(v121 + 12) = 2160;
          *(v121 + 14) = 1752392040;
          *(v121 + 22) = 2081;
          v130 = v182;
          v189 = v182;
          v190 = v81;

          v131 = sub_24B2D53C4();
          v133 = sub_24AFF321C(v131, v132, &v188);

          *(v121 + 24) = v133;
          _os_log_impl(&dword_24AFD2000, v119, v120, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v121, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C23D530](v123, -1, -1);
          MEMORY[0x24C23D530](v121, -1, -1);

          v172(v162, v122);
        }

        else
        {

          v172(v118, v82);
          v130 = v182;
        }

        v153 = v177;
      }

      else
      {

        if (*(sub_24B2B1878(v72, v77, v84) + 16))
        {
          goto LABEL_22;
        }

LABEL_25:

        v101 = v159;
        v184(v187, v186);
        v102 = v160;
        v178(v160, v101, v82);
        sub_24AFF8258(v101, &qword_27EFCE6A0, &qword_24B2F1800);

        v103 = sub_24B2D3164();
        v104 = sub_24B2D5934();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v170 = v106;
          v188 = v106;
          *v105 = 136315651;
          sub_24B1D23E0(v106, v107, v108);
          v109 = sub_24B2D57F4();
          v111 = sub_24AFF321C(v109, v110, &v188);

          *(v105 + 4) = v111;
          *(v105 + 12) = 2160;
          *(v105 + 14) = 1752392040;
          *(v105 + 22) = 2081;
          v189 = v182;
          v190 = v81;

          v112 = sub_24B2D53C4();
          v114 = sub_24AFF321C(v112, v113, &v188);
          v82 = v180;

          *(v105 + 24) = v114;
          _os_log_impl(&dword_24AFD2000, v103, v104, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v105, 0x20u);
          v115 = v170;
          swift_arrayDestroy();
          MEMORY[0x24C23D530](v115, -1, -1);
          MEMORY[0x24C23D530](v105, -1, -1);
        }

        v172(v102, v82);
        v116 = v169;
        if (!*(v80 + 16))
        {
          goto LABEL_28;
        }

LABEL_32:

        v136 = v166;
        v184(v187, v186);
        v178(v116, v136, v82);
        sub_24AFF8258(v136, &qword_27EFCE6A0, &qword_24B2F1800);

        v137 = sub_24B2D3164();
        v138 = sub_24B2D5934();

        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v188 = v140;
          *v139 = 136315394;
          sub_24B1D23E0(v140, v141, v142);
          v143 = sub_24B2D57F4();
          v145 = v144;

          v146 = sub_24AFF321C(v143, v145, &v188);

          *(v139 + 4) = v146;
          *(v139 + 12) = 2080;
          v189 = v182;
          v190 = v81;

          v147 = sub_24B2D53C4();
          v149 = sub_24AFF321C(v147, v148, &v188);

          *(v139 + 14) = v149;
          _os_log_impl(&dword_24AFD2000, v137, v138, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- subscriptionsThatDidNotExistBefore: %s\n- subscriber: %s", v139, 0x16u);
          swift_arrayDestroy();
          v150 = v140;
          v82 = v180;
          MEMORY[0x24C23D530](v150, -1, -1);
          MEMORY[0x24C23D530](v139, -1, -1);
        }

        else
        {
        }

        v151 = v173;
        v172(v116, v82);
        v152 = v168;
        v153 = v177;
        v154 = *(v171 + 16);

        swift_getKeyPath();
        v189 = v74;
        sub_24B2D2584();

        v178(v152, v163, v82);
        v155 = (*(v151 + 80) + 32) & ~*(v151 + 80);
        v156 = swift_allocObject();
        *(v156 + 16) = v154 == 0;
        *(v156 + 24) = v74;
        (*(v151 + 32))(v156 + v155, v152, v82);

        sub_24B2D12C4();

        v81 = v176;
        v130 = v182;
      }

      v157 = v175;
      v184(v187, v186);
      v158 = *(v157 + v183[12]);

      sub_24AFF8258(v157, &qword_27EFCE6A0, &qword_24B2F1800);
      v189 = v130;
      v190 = v81;
      v158(v153, &v189);

      return;
    }

    v66 = *(v63 + 64 + 8 * v69);
    ++v68;
    if (v66)
    {
      v68 = v69;
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_24B211344(uint64_t a1@<X0>, _BYTE *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v111 = a4;
  v110 = a3;
  v132 = a2;
  v122 = a1;
  v118 = a5;
  v117 = sub_24B2D1704();
  v121 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE670, &unk_24B2F17A0);
  MEMORY[0x28223BE20](v6 - 8);
  v120 = &v104 - v7;
  v108 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v108);
  v109 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE28, &qword_24B2F28B0);
  MEMORY[0x28223BE20](v9 - 8);
  v114 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = &v104 - v12;
  v131 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  v13 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v115 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v104 - v16;
  MEMORY[0x28223BE20](v17);
  v128 = &v104 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE5F8, &unk_24B2F15C0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v126 = &v104 - v23;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE260, &qword_24B2F17B0);
  v106 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v130 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v125 = &v104 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE258, &unk_24B2F0350);
  MEMORY[0x28223BE20](v27 - 8);
  v105 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v107 = &v104 - v30;
  v31 = sub_24B2D5694();
  v112 = sub_24B2D5684();
  v124 = v31;
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v32 = v132 + 64;
  v33 = 1 << v132[32];
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v132 + 8);
  v36 = (v33 + 63) >> 6;

  v37 = 0;
  v127 = v21;
  v38 = v130;
  v123 = v13;
  while (v35)
  {
LABEL_14:
    v40 = __clz(__rbit64(v35)) | (v37 << 6);
    v41 = v132;
    v42 = *(v132 + 6);
    v43 = v42 + *(*(type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0) - 8) + 72) * v40;
    v44 = v125;
    sub_24B215C50(v43, v125, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    v45 = *(v41 + 7) + *(v13 + 72) * v40;
    v46 = v129;
    sub_24B215C50(v45, v44 + *(v129 + 48), type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    sub_24B0391CC(v44, v38, &qword_27EFCE260, &qword_24B2F17B0);
    v47 = *(v46 + 48);
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v48 = v128;
    sub_24B215C50(v38 + v47, v128, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v49 = v127;
      sub_24B215578(v48, v127, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
      v50 = 0;
    }

    else
    {
      v50 = 1;
      v49 = v127;
    }

    v51 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
    v52 = *(v51 - 8);
    (*(v52 + 56))(v49, v50, 1, v51);
    v53 = v49;
    v54 = v126;
    sub_24B0391CC(v53, v126, &qword_27EFCE5F8, &unk_24B2F15C0);
    if ((*(v52 + 48))(v54, 1, v51) == 1)
    {
      sub_24AFF8258(v54, &qword_27EFCE5F8, &unk_24B2F15C0);
      v13 = v123;
LABEL_7:

      v38 = v130;
      goto LABEL_8;
    }

    v55 = (v54 + *(v51 + 20));
    v56 = *v55;
    v57 = v55[1];

    sub_24B215CB8(v54, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
    v58 = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
    v13 = v123;
    if (!v57)
    {
      goto LABEL_7;
    }

    v59 = (v122 + *(v58 + 20));
    v38 = v130;
    if (v56 == *v59 && v57 == v59[1])
    {

      goto LABEL_43;
    }

    v60 = sub_24B2D6004();

    if (v60)
    {

LABEL_43:
      v63 = v107;
      sub_24B0391CC(v38, v107, &qword_27EFCE260, &qword_24B2F17B0);
      v61 = v106;
      v62 = *(v106 + 56);
      v64 = v63;
      v65 = 0;
LABEL_26:
      v66 = v129;
      v62(v64, v65, 1, v129);
      v67 = v117;
      v68 = v120;
      v69 = v121;
      v70 = v131;
      v71 = v110;
      v72 = v105;
      sub_24B2156F0(v63, v105);
      if ((*(v61 + 48))(v72, 1, v66) == 1)
      {
        sub_24AFF8258(v72, &qword_27EFCE258, &unk_24B2F0350);
        (*(v13 + 56))(v119, 1, 1, v70);
      }

      else
      {
        v73 = v72 + *(v66 + 48);
        v74 = v119;
        sub_24B215578(v73, v119, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
        (*(v13 + 56))(v74, 0, 1, v70);
        sub_24B215CB8(v72, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      }

      v75 = v109;
      v76 = *(v69 + 16);
      v76(v109, v122, v67);
      swift_storeEnumTagMultiPayload();
      v77 = v111;
      if (*(v71 + 16) && (v78 = sub_24B18186C(v75), (v79 & 1) != 0))
      {
        v132 = *(*(v71 + 56) + 8 * v78);
        sub_24B215CB8(v75, type metadata accessor for SettingsContactsProvider.Subscription);
        if (!*(v77 + 16))
        {
          goto LABEL_32;
        }

LABEL_34:
        v80 = v13;
        v81 = sub_24B181A88(v122);
        if (v82)
        {
          v83 = v81;
          v84 = *(v77 + 56);
          v85 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
          v86 = *(v85 - 8);
          sub_24B215C50(v84 + *(v86 + 72) * v83, v68, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
          sub_24AFF8258(v63, &qword_27EFCE258, &unk_24B2F0350);
          (*(v86 + 56))(v68, 0, 1, v85);
LABEL_37:
          v88 = v113;
          v89 = v122;
          v76(v113, v122, v67);
          v90 = (v89 + *(type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0) + 20));
          v92 = *v90;
          v91 = v90[1];
          v93 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
          type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState(0);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState(0);
          swift_storeEnumTagMultiPayload();
          v94 = (v88 + *(v93 + 20));
          *v94 = v92;
          v94[1] = v91;
          v95 = v88 + *(v93 + 32);
          *v95 = 0;
          *(v95 + 8) = 1;
          v96 = v131;
          swift_storeEnumTagMultiPayload();
          v97 = v116;
          v76(v116, v89, v67);
          v98 = v114;
          sub_24B0391CC(v119, v114, &qword_27EFCDE28, &qword_24B2F28B0);
          v99 = *(v80 + 48);
          if (v99(v98, 1, v96) == 1)
          {
            v100 = v115;
            sub_24B215578(v88, v115, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
            v101 = v99(v98, 1, v96);

            if (v101 != 1)
            {
              sub_24AFF8258(v98, &qword_27EFCDE28, &qword_24B2F28B0);
            }
          }

          else
          {

            sub_24B215CB8(v88, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
            v100 = v115;
            sub_24B215578(v98, v115, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
          }

          v102 = v118;
          (*(v121 + 32))(v118, v97, v67);
          v103 = type metadata accessor for SettingsPersonInfo(0);
          sub_24B215578(v100, v102 + v103[5], type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
          *(v102 + v103[6]) = v132;
          sub_24B0391CC(v120, v102 + v103[7], &qword_27EFCE670, &unk_24B2F17A0);
          (*(*(v103 - 1) + 56))(v102, 0, 1, v103);

          return;
        }
      }

      else
      {
        sub_24B215CB8(v75, type metadata accessor for SettingsContactsProvider.Subscription);
        v132 = 0;
        if (*(v77 + 16))
        {
          goto LABEL_34;
        }

LABEL_32:
        v80 = v13;
      }

      sub_24AFF8258(v63, &qword_27EFCE258, &unk_24B2F0350);
      v87 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
      (*(*(v87 - 8) + 56))(v68, 1, 1, v87);
      goto LABEL_37;
    }

LABEL_8:
    v35 &= v35 - 1;
    sub_24AFF8258(v38, &qword_27EFCE260, &qword_24B2F17B0);
  }

  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v39 >= v36)
    {

      v61 = v106;
      v62 = *(v106 + 56);
      v63 = v107;
      v64 = v107;
      v65 = 1;
      goto LABEL_26;
    }

    v35 = *&v32[8 * v39];
    ++v37;
    if (v35)
    {
      v37 = v39;
      goto LABEL_14;
    }
  }

  __break(1u);
}